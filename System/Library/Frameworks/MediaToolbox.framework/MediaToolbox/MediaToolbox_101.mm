uint64_t fcsk_externalProtectionStatusForCryptor(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  cf[26] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v20 = 0;
  v19 = 0;
  if (!a2 || !a4 || !a3)
  {
    v8 = FigSignalErrorAtGM();
    goto LABEL_30;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7(a2, *MEMORY[0x1E6961120], *MEMORY[0x1E695E480], cf);
  if (v8)
  {
LABEL_30:
    v16 = v8;
    goto LABEL_22;
  }

  v9 = cf[0];
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v10)
  {
LABEL_21:
    v16 = 4294954514;
    goto LABEL_22;
  }

  v8 = v10(a2, *MEMORY[0x1E69610C0], v9);
  if (v8)
  {
    goto LABEL_30;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    goto LABEL_21;
  }

  v8 = v11(a2, @"DisplayList", a3);
  if (v8)
  {
    goto LABEL_30;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v12)
  {
    goto LABEL_21;
  }

  v8 = v12(a2, 0, &v20);
  if (v8)
  {
    goto LABEL_30;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 192);
  if (!v13)
  {
    goto LABEL_21;
  }

  v8 = v13(a2, &v19);
  if (v8)
  {
    goto LABEL_30;
  }

  if (v19)
  {
    if (v20 == 1 || v20 == 4)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }
  }

  else
  {
    v15 = 1;
  }

  if (dword_1EAF16B90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = 0;
  *a4 = v15;
LABEL_22:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v16;
}

void fcks_releaseAndClearFigContentKeySessionCallbackContext(CFTypeRef **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (*v2)
      {
        CFRelease(*v2);
        v2 = *a1;
      }

      if (v2[2])
      {
        CFRelease(v2[2]);
        v2 = *a1;
      }

      if (v2[3])
      {
        CFRelease(v2[3]);
        v2 = *a1;
      }

      if (v2[4])
      {
        CFRelease(v2[4]);
        v2 = *a1;
      }

      if (v2[5])
      {
        CFRelease(v2[5]);
        v2 = *a1;
      }

      free(v2);
      *a1 = 0;
    }
  }
}

void fcks_dispatchKeyResponseSuccessfullyProcessedCallback(CFTypeRef *a1)
{
  v2 = a1;
  v1 = a1[8];
  if (v1)
  {
    v1(a1[5], *a1, a1[1]);
  }

  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v2);
}

void fcks_dispatchPersistentKeyUpdatedCallback(uint64_t a1)
{
  v2 = a1;
  v1 = *(a1 + 72);
  if (v1)
  {
    v1(*(a1 + 40), *(a1 + 16), *(a1 + 32));
  }

  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v2);
}

void fcks_dispatchSecureStopDidFinalizeRecordCallback(uint64_t a1)
{
  v2 = a1;
  v1 = *(a1 + 80);
  if (v1)
  {
    v1(*(a1 + 40));
  }

  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v2);
}

void fcks_dispatchExternalProtectionStateChangedCallback(CFTypeRef *a1)
{
  v1 = a1;
  if (a1[10])
  {
    (a1[11])(a1[5], *a1);
  }

  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v1);
}

uint64_t fcks_copyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_setProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_setProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fcks_setProperty_cold_3(const __CFArray *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_8:
    v13 = 0;
  }

  else
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(a1, v10);
      v11 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v11)
      {
        v12 = v11;
        v13 = fcks_setClientAuditTokenForChildSession(a2, v11, a3);
        CFRelease(v12);
        if (v13)
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_8;
      }
    }
  }

  *a4 = v13;

  CFRelease(a1);
}

uint64_t fcks_setProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_setProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_setProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_setProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_setProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_setProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_freeCryptorEntry_cold_1()
{
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_84_0();
  result = FigNotificationCenterRemoveWeakListener();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();
    result = FigNotificationCenterRemoveWeakListener();
    if (!result)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_84_0();
      result = FigNotificationCenterRemoveWeakListener();
      if (!result)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_84_0();

        return FigNotificationCenterRemoveWeakListener();
      }
    }
  }

  return result;
}

uint64_t fcks_addChildSession_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_addChildSession_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_addChildSession_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_addChildSession_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_6(const __CFAllocator *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v7 = FigSignalErrorAtGM();
  *a4 = v7;
  if (!v7)
  {
    return 1;
  }

  CFAllocatorDeallocate(a1, a2);
  return 0;
}

uint64_t fcks_copyCryptor_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyCryptor_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_resetSession_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_setAuthorizationToken_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_setAuthorizationToken_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_setAuthorizationToken_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyAuthorizationToken_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyAuthorizationToken_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_copyAuthorizationToken_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetWriterCreateWithURL(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, const __CFDictionary *a4, const __CFDictionary *a5, void *a6)
{
  CFPreferenceBooleanWithDefault = 0;
  v18 = 0;
  cf = 0;
  FigKTraceInit();
  if (!a2 || !remakerFamily_CFURLSchemeIsFile(a2) || FigFileDoesFileExist() || !a6 || ((FigCFDictionaryGetBooleanIfPresent(), CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault(), v11 = CMByteStreamCreateForFileURL(), v11 != -12204) ? (v12 = v11 == 0) : (v12 = 1), v12 ? (v13 = v11) : (v13 = -12143), v13))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v14 = FigSignalErrorAtGM();
    goto LABEL_22;
  }

  v14 = assetWriter_CreateWithByteStreamOrFormatWriterSegmentCallback(a1, cf, 0, a4, a5, &v18);
  if (v14)
  {
LABEL_22:
    v16 = v14;
    goto LABEL_16;
  }

  v15 = v18;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_197();
    kdebug_trace();
  }

  v16 = 0;
  *a6 = v15;
  v18 = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

uint64_t assetWriter_CreateWithByteStreamOrFormatWriterSegmentCallback(const __CFAllocator *a1, const void *a2, uint64_t a3, const __CFDictionary *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  cf = 0;
  v29 = 0;
  IsServerProcess = FigServer_IsServerProcess();
  if (IsServerProcess)
  {
    v13 = FigOSTransactionCreate();
    if (!v13)
    {
      fig_log_get_emitter();
LABEL_33:
      LoggingIdentifier = FigSignalErrorAtGM();
LABEL_34:
      v26 = LoggingIdentifier;
      goto LABEL_25;
    }
  }

  else
  {
    v13 = 0;
  }

  FigAssetWriterGetClassID();
  LoggingIdentifier = CMDerivedObjectCreate();
  if (LoggingIdentifier)
  {
    goto LABEL_34;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LoggingIdentifier = remakerFamily_generateLoggingIdentifier(87, (DerivedStorage + 41));
  if (LoggingIdentifier)
  {
    goto LABEL_34;
  }

  v16 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 88) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 104) = *(v16 + 16);
  v17 = MEMORY[0x1E6960C88];
  *(DerivedStorage + 112) = *MEMORY[0x1E6960C88];
  *(DerivedStorage + 128) = *(v17 + 16);
  *(DerivedStorage + 456) = -1;
  *(DerivedStorage + 8) = FigReentrantMutexCreate();
  *(DerivedStorage + 64) = FigReentrantMutexCreate();
  if (IsServerProcess)
  {
    *(DerivedStorage + 448) = v13;
    v13 = 0;
  }

  remakerFamily_SetRemakerState(v29, 1, 0);
  *(DerivedStorage + 24) = FigSemaphoreCreate();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt64IfPresent();
  *(DerivedStorage + 56) = FigDispatchQueueCreateWithPriorityAndClientPID();
  FigCFDictionaryGetBooleanIfPresent();
  if (a4)
  {
    Value = CFDictionaryGetValue(a4, @"Remaker_TemporaryDirectoryURL");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 232) = Value;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 80) = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    goto LABEL_33;
  }

  if (a2)
  {
    *(DerivedStorage + 168) = CFRetain(a2);
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21 && (v21(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &cf), cf))
    {
      v22 = CFRetain(cf);
      v23 = cf;
      *(DerivedStorage + 160) = v22;
      if (v23)
      {
        v24 = CFURLCopyAbsoluteURL(v23);
        if (v24)
        {
          v25 = v24;
          *(DerivedStorage + 176) = FigFileIsFileOnExternalStorageDevice();
          CFRelease(v25);
        }
      }
    }

    else
    {
      *(DerivedStorage + 160) = 0;
    }
  }

  else
  {
    *(DerivedStorage + 168) = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  *(DerivedStorage + 360) = -1;
  LoggingIdentifier = remakerFamily_createFormatWriter(v29, a1, 0, a3, a5, (DerivedStorage + 184));
  if (LoggingIdentifier)
  {
    goto LABEL_34;
  }

  *(DerivedStorage + 192) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CMNotificationCenterGetDefaultLocalCenter();
  v26 = FigNotificationCenterAddWeakListeners();
  if (!v26)
  {
    *a6 = v29;
    v29 = 0;
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v13)
  {
    os_release(v13);
  }

  return v26;
}

uint64_t assetWriter_FormatWriterSegmentCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  cf = 0;
  if (*(DerivedStorage + 312) && !*(DerivedStorage + 305) && *(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v11 = *(v6 + 184);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v12)
    {
      v9 = 4294954514;
      goto LABEL_7;
    }

    v8 = v12(v11, 0, &cf);
    if (v8)
    {
      goto LABEL_5;
    }

    v8 = (*(v6 + 312))(cf, *(v6 + 328));
    if (v8)
    {
      goto LABEL_5;
    }

    *(v6 + 305) = 1;
  }

  v7 = *(v6 + 320);
  if (v7)
  {
    v8 = v7(a2, a3, *(v6 + 328));
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t assetWriter_AddNativeTrack(const void *a1, uint64_t a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  if (*DerivedStorage != 1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v8 = FigSignalErrorAtGM();
    goto LABEL_25;
  }

  v7 = DerivedStorage;
  v8 = remakerFamily_createChannel(a1, 0, a2, &v32);
  if (v8)
  {
    goto LABEL_25;
  }

  v9 = *(v7 + 23);
  v10 = v32;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    v19 = 4294954514;
    goto LABEL_23;
  }

  if ((v8 = v11(v9, a2, 0, v10 + 300), v8) || (v8 = remakerFamily_setFormatWriterTrackProperties(a1, *(v32 + 300), 0, 0), v8) || (v8 = remakerFamily_setFormatWriterProperties(a1, 0), v8) || (v12 = *(v7 + 23), v13 = *(v32 + 300), v14 = CFGetAllocator(a1), v15 = *(v32 + 160), (v16 = *(*(CMBaseObjectGetVTable() + 16) + 16)) != 0) && !v16(v12, v13, @"SourceSampleBufferQueue", v14, v15 + 32) && ((v17 = *(v32 + 160), !*(v7 + 32)) ? (v18 = 1) : (v18 = 8), (CMTimeMake(&v31, v18, 1), *(v17 + 40) = *&v31.value, v20 = v32, *(v17 + 56) = v31.epoch, v21 = *(v20 + 160), !*(v7 + 32)) ? (v22 = 2) : (v22 = 10), CMTimeMake(&v31, v22, 1), *(v21 + 64) = *&v31.value, v23 = v32, *(v21 + 80) = v31.epoch, v31 = *(*(v23 + 160) + 40), OUTLINED_FUNCTION_6_10(), v8 = CMBufferQueueInstallTrigger(v24, v25, v26, 2, &v31, v26 + 13), v8))
  {
LABEL_25:
    v19 = v8;
    goto LABEL_23;
  }

  v27 = v32;
  if (*(v32 + 32) == 1936684398)
  {
    v28 = *(v7 + 25);
    if (v28)
    {
      v29 = CFEqual(v28, @"AudioPrimingFormat_Manual");
      v27 = v32;
      if (!v29)
      {
        *(*(v32 + 160) + 192) = 1;
      }
    }
  }

  *a3 = *(v27 + 300);
  remakerFamily_commitChannel(a1, v27);
  v19 = 0;
  v32 = 0;
LABEL_23:
  remakerFamily_discardChannel(a1, v32);
  return v19;
}

uint64_t assetWriter_AddAudioTrackWithCompression(const void *a1, uint64_t a2, size_t a3, const void *a4, const void *a5, const __CFDictionary *a6, _DWORD *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v46 = 0;
  if (*DerivedStorage != 1 || !a2 || !a7)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
LABEL_32:
    v16 = FigSignalErrorAtGM();
    goto LABEL_33;
  }

  v15 = DerivedStorage;
  v16 = remakerFamily_createChannel(a1, 0, 1936684398, &v46);
  if (v16)
  {
    goto LABEL_33;
  }

  v17 = *(v15 + 23);
  v18 = v46;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19)
  {
    v24 = 4294954514;
    goto LABEL_30;
  }

  if ((v16 = v19(v17, 1936684398, 0, v18 + 300), v16) || (v16 = remakerFamily_setFormatWriterTrackProperties(a1, *(v46 + 300), *(a2 + 8), 0), v16) || (v16 = remakerFamily_setFormatWriterProperties(a1, *(a2 + 8)), v16) || (v20 = CFGetAllocator(a1), CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers(), v16 = CMBufferQueueCreate(v20, 0, CallbacksForUnsortedSampleBuffers, (*(v46 + 160) + 32)), v16) || ((v22 = *(v46 + 160), !*(v15 + 32)) ? (v23 = 1) : (v23 = 8), (CMTimeMake(&time, v23, 1), *(v22 + 40) = *&time.value, v25 = v46, *(v22 + 56) = time.epoch, v26 = *(v25 + 160), !*(v15 + 32)) ? (v27 = 2) : (v27 = 10), CMTimeMake(&time, v27, 1), *(v26 + 64) = *&time.value, v28 = v46, *(v26 + 80) = time.epoch, time = *(*(v28 + 160) + 40), OUTLINED_FUNCTION_6_10(), v16 = CMBufferQueueInstallTrigger(v29, v30, v31, 2, &time, v31 + 13), v16))
  {
LABEL_33:
    v24 = v16;
    goto LABEL_30;
  }

  v32 = v46;
  v33 = *(v46 + 160);
  v34 = *(a2 + 32);
  v35 = *(a2 + 16);
  *(v33 + 128) = *a2;
  *(v33 + 144) = v35;
  *(v33 + 160) = v34;
  *(*(v32 + 160) + 168) = a3;
  if (a3 && a4)
  {
    v36 = malloc_type_malloc(a3, 0x50811D91uLL);
    *(*(v46 + 160) + 176) = v36;
    if (!v36)
    {
LABEL_34:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      goto LABEL_32;
    }

    memcpy(v36, a4, a3);
  }

  if (a5)
  {
    v37 = CFRetain(a5);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v46 + 160);
  *(v38 + 184) = v37;
  *(v38 + 120) = 1;
  if (!a6)
  {
    goto LABEL_29;
  }

  Value = CFDictionaryGetValue(a6, @"AssetWriterAudioTrackProcessingOption_SourceAudioFormatDescriptionHint");
  if (!Value)
  {
    goto LABEL_29;
  }

  v40 = Value;
  v41 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v41)
  {
    goto LABEL_34;
  }

  v42 = v41;
  v24 = assetWriter_finishBuildingAudioTrackWithSourceFormatDescription(a1, *(v46 + 160), v40);
  CFRelease(v42);
  if (!v24)
  {
LABEL_29:
    v43 = v46;
    *a7 = *(v46 + 300);
    remakerFamily_commitChannel(a1, v43);
    v24 = 0;
    v46 = 0;
  }

LABEL_30:
  remakerFamily_discardChannel(a1, v46);
  return v24;
}

uint64_t assetWriter_BeginSession(const void *a1, CMTime *a2)
{
  v114 = *MEMORY[0x1E69E9840];
  HIBYTE(v91) = 0;
  if (*CMBaseObjectGetDerivedStorage() < 4u)
  {
    OUTLINED_FUNCTION_29();
    if (v6)
    {
      v7 = v5;
      if (*MEMORY[0x1E695FF58] == 1)
      {
        time = *a2;
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_197();
        kdebug_trace();
      }

      if (*(v7 + 32))
      {
        v64 = a2;
        v66 = v7;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v9 = MEMORY[0x1E6960C70];
        v110 = *MEMORY[0x1E6960C70];
        v111 = *(MEMORY[0x1E6960C70] + 8);
        v10 = *(MEMORY[0x1E6960C70] + 16);
        v108 = v110;
        v109 = v111;
        v79 = *MEMORY[0x1E6960C70];
        *&v94.value = *MEMORY[0x1E6960C70];
        v94.epoch = v10;
        Count = CFArrayGetCount(*(DerivedStorage + 80));
        if (Count >= 2)
        {
          v85 = 0;
          v11 = 0;
          v12 = *(v9 + 12);
          v13 = v10;
          v14 = v10;
          v15 = v12;
          do
          {
            assetWriter_GetInputQueueLengthBeforeFormatWriterForTrackIndex(a1, v11, &time);
            value = time.value;
            flags = time.flags;
            timescale = time.timescale;
            if (time.flags)
            {
              epoch = time.epoch;
              time.value = value;
              time.timescale = timescale;
              time2.value = v110;
              time2.timescale = v111;
              time2.flags = v12;
              time2.epoch = v13;
              if (CMTimeCompare(&time, &time2) < 0)
              {
                v108 = v110;
                v109 = v111;
                v110 = value;
                v85 = v11;
                v111 = timescale;
                v15 = v12;
                v14 = v13;
                v12 = flags;
                v13 = epoch;
              }

              else
              {
                time2.value = v108;
                time2.timescale = v109;
                time2.flags = v15;
                time2.epoch = v14;
                lhs.value = value;
                lhs.timescale = timescale;
                lhs.flags = flags;
                lhs.epoch = epoch;
                CMTimeMinimum(&time, &time2, &lhs);
                v108 = time.value;
                v15 = time.flags;
                v109 = time.timescale;
                v14 = time.epoch;
              }
            }

            ++v11;
          }

          while (Count != v11);
          if (v12)
          {
            *&time.value = v79;
            time.epoch = v10;
            v18 = CMBaseObjectGetDerivedStorage();
            time2.value = 0;
            v19 = *(v18 + 184);
            v20 = CFGetAllocator(a1);
            FigBaseObject = FigFormatWriterGetFigBaseObject(v19);
            v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v22)
            {
              v23 = v22(FigBaseObject, @"InterleavingPeriod", v20, &time2);
              v24 = time2.value;
              if (!v23)
              {
                CMTimeMakeFromDictionary(&time, time2.value);
                v24 = time2.value;
              }

              if (v24)
              {
                CFRelease(v24);
              }
            }

            v96 = time;
            CMTimeMake(&time2, 1, 1);
            lhs.value = v110;
            lhs.timescale = v111;
            lhs.flags = v12;
            lhs.epoch = v13;
            CMTimeSubtract(&time, &lhs, &time2);
            v107 = time.timescale;
            v106 = time.value;
            OUTLINED_FUNCTION_8_5(time.timescale, v61, v2, v64, v66, v68, v70, v73, v76, v79, *(&v79 + 1), v83, v85, Count, v91, *&v92.value, v92.epoch, v93, v94.value, *&v94.timescale, v94.epoch, v95, *&v96.value, v96.epoch, v97, *&lhs.value, lhs.epoch, v99, time2.value);
            v106 = time.value;
            v25 = time.flags;
            v107 = time.timescale;
            v26 = time.epoch;
            CMTimeMake(&time2, 1, 1);
            lhs.value = v108;
            lhs.timescale = v109;
            lhs.flags = v15;
            lhs.epoch = v14;
            CMTimeSubtract(&time, &lhs, &time2);
            v105 = time.timescale;
            v104 = time.value;
            OUTLINED_FUNCTION_8_5(time.timescale, v62, v63, v65, v67, v69, v71, v74, v77, v80, v82, v84, v86, v89, v91, *&v92.value, v92.epoch, v93, v94.value, *&v94.timescale, v94.epoch, v95, *&v96.value, v96.epoch, v97, *&lhs.value, lhs.epoch, v99, time2.value);
            v104 = time.value;
            v27 = time.flags;
            v105 = time.timescale;
            v28 = time.epoch;
            CMTimeMake(&time, 1, 1);
            time2 = v96;
            CMTimeAdd(&v94, &time2, &time);
            v29 = 0;
            v72 = v28;
            v78 = v26;
            v75 = v27;
            while (1)
            {
              v30 = v87 == v29 ? &v104 : &v106;
              v31 = v87 == v29 ? v27 : v25;
              v32 = v87 == v29 ? v28 : v26;
              v102 = *v30;
              v103 = *(v30 + 2);
              if (v31)
              {
                break;
              }

LABEL_46:
              if (v90 == ++v29)
              {
                goto LABEL_47;
              }
            }

            *&time.value = v81;
            v33 = v10;
            time.epoch = v10;
            v34 = CMBaseObjectGetDerivedStorage();
            time2.value = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(*(v34 + 80), v29);
            v36 = *(v34 + 184);
            v37 = ValueAtIndex[75];
            v38 = CFGetAllocator(a1);
            v39 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v39)
            {
              v40 = v39(v36, v37, @"InterleavingAdvance", v38, &time2);
              v41 = time2.value;
              if (!v40)
              {
                CMTimeMakeFromDictionary(&time, time2.value);
                v41 = time2.value;
              }

              if (v41)
              {
                CFRelease(v41);
              }
            }

            time2 = time;
            time.value = v102;
            time.timescale = v103;
            time.flags = v31;
            time.epoch = v32;
            if (CMTimeCompare(&time2, &time) < 1)
            {
LABEL_43:
              v92 = v94;
              v50 = CMBaseObjectGetDerivedStorage();
              *&time.value = v81;
              v10 = v33;
              time.epoch = v33;
              assetWriter_GetInputQueueLengthBeforeFormatWriterForTrackIndex(a1, v29, &time);
              time2 = time;
              lhs = v92;
              if (CMTimeCompare(&time2, &lhs) < 0)
              {
                *(*(CFArrayGetValueAtIndex(*(v50 + 80), v29) + 20) + 64) = v92;
              }

              v26 = v78;
              v27 = v75;
              v28 = v72;
              goto LABEL_46;
            }

            v42 = CMBaseObjectGetDerivedStorage();
            v43 = CFGetAllocator(a1);
            time.value = v102;
            time.timescale = v103;
            time.flags = v31;
            time.epoch = v32;
            v44 = CMTimeCopyAsDictionary(&time, v43);
            v45 = CFArrayGetValueAtIndex(*(v42 + 80), v29);
            v46 = *(v42 + 184);
            v47 = v45[75];
            v48 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v48)
            {
              v49 = v48(v46, v47, @"InterleavingAdvance", v44);
              if (!v44)
              {
LABEL_42:
                if (v49)
                {
                  return v49;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v49 = 4294954514;
              if (!v44)
              {
                goto LABEL_42;
              }
            }

            CFRelease(v44);
            goto LABEL_42;
          }
        }

LABEL_47:
        a2 = v64;
        v7 = v66;
      }

      updated = remakerfamily_updateClientPID();
      if (updated)
      {
        return updated;
      }

      updated = remakerfamily_updateThrottleForBackground(a1);
      if (updated)
      {
        return updated;
      }

      updated = remakerfamily_updateJoinWritingThreadToNewWorkgroup();
      if (updated)
      {
        return updated;
      }

      v52 = *(v7 + 184);
      time2 = *a2;
      v53 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v53)
      {
        time = time2;
        updated = v53(v52, &time);
        if (updated)
        {
          return updated;
        }

        remakerFamily_transferMetadata(a1);
        if (*v7 == 3)
        {
LABEL_54:
          *(v7 + 472) = mach_absolute_time();
          remakerFamily_SetRemakerState(a1, 3, 0);
          return 0;
        }

        updated = remakerFamily_startAllMultiPassTracks(a1, &v91 + 7);
        if (updated)
        {
          return updated;
        }

        if (!HIBYTE(v91))
        {
          updated = remakerFamily_startAllSinglePassTracks(a1);
          if (updated)
          {
            return updated;
          }
        }

        v54 = *(v7 + 336);
        if (!v54)
        {
LABEL_66:
          v59 = CMBaseObjectGetDerivedStorage();
          if (remakerFamily_hasTrackForMediaType(a1, 1986618469) && !*(v59 + 352))
          {
            v60 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"com.apple.coremedia.figassetwriter.writing-video-%d", *(v59 + 36));
            *(v59 + 352) = v60;
            if (v60)
            {
              if (!remakerFamily_registerDarwinNotification(v60, (v59 + 360)) && !remakerFamily_postDarwinNotificationWithState(*(v59 + 352), *(v59 + 360), 1uLL))
              {
                *(v59 + 368) = 1;
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              FigSignalErrorAtGM();
            }
          }

          goto LABEL_54;
        }

        v55 = 224;
        if (!*(v7 + 240))
        {
          v55 = 160;
        }

        v56 = *(v7 + v55);
        v57 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v57)
        {
          updated = v57(v54, v56);
          if (updated)
          {
            return updated;
          }

          goto LABEL_66;
        }
      }

      return 4294954514;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t assetWriter_AddPixelBuffer(const void *a1, int a2, __CVBuffer *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  v34 = 0;
  v33 = 0u;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  if (*DerivedStorage >= 7u)
  {
    goto LABEL_27;
  }

  if (DerivedStorage[5])
  {
    fig_log_get_emitter();
    goto LABEL_28;
  }

  if (*DerivedStorage != 3 || !a3 || (OUTLINED_FUNCTION_29(), !v14) || (ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2)) == 0 || (v10 = ChannelByWriterTrackID, !*(ChannelByWriterTrackID + 16)) || (v11 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
LABEL_27:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
LABEL_28:
    v27 = FigSignalErrorAtGM();
    v12 = 0;
    goto LABEL_30;
  }

  v12 = v11;
  v13 = *(v11 + 32);
  v14 = v13 == 1635088502 || v13 == 1986618469;
  if (!v14)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v28 = FigSignalErrorAtGM();
LABEL_29:
    v27 = v28;
    goto LABEL_30;
  }

  v16 = (v10 + 112);
  v15 = *(v10 + 112);
  if (v15)
  {
    if (CMVideoFormatDescriptionMatchesImageBuffer(v15, a3))
    {
      goto LABEL_20;
    }

    if (*v16)
    {
      CFRelease(*v16);
      *v16 = 0;
    }
  }

  v17 = CFGetAllocator(a1);
  v28 = CMVideoFormatDescriptionCreateForImageBuffer(v17, a3, (v10 + 112));
  if (v28)
  {
    goto LABEL_29;
  }

LABEL_20:
  v31 = *MEMORY[0x1E6960C70];
  *&v32[0] = *(MEMORY[0x1E6960C70] + 16);
  *(v32 + 8) = *a4;
  *(&v32[1] + 1) = *(a4 + 16);
  v33 = v31;
  v34 = *&v32[0];
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_197();
  v28 = CMSampleBufferCreateForImageBuffer(v18, v19, v20, v21, v22, v23, v24, v25);
  if (v28)
  {
    goto LABEL_29;
  }

  if (!*(v10 + 120))
  {
    goto LABEL_26;
  }

  v30 = 0;
  v28 = assetWriter_copyPixelBufferAttributesForHintingEncoder(a3, &v30);
  if (v28)
  {
    goto LABEL_29;
  }

  v26 = v30;
  v27 = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v10, v30);
  if (v26)
  {
    CFRelease(v26);
  }

  if (!v27)
  {
LABEL_26:
    v28 = CMBufferQueueEnqueue(*(v10 + 32), v35);
    goto LABEL_29;
  }

LABEL_30:
  if (v35)
  {
    CFRelease(v35);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v27;
}

uint64_t assetWriter_EndSession(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = *a2;
    CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_197();
    kdebug_trace();
  }

  v4 = *DerivedStorage;
  if (*DerivedStorage >= 7u)
  {
    goto LABEL_22;
  }

  if (*(DerivedStorage + 20))
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  if (v4 >= 5 || v4 <= 2 || (OUTLINED_FUNCTION_29(), !v5))
  {
LABEL_22:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    return FigSignalErrorAtGM();
  }

  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
LABEL_16:
    v13 = *(DerivedStorage + 184);
    *&v15.value = *&a2->value;
    v15.epoch = a2->epoch;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v14)
    {
      time = v15;
      return v14(v13, &time);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), i);
      CMBufferQueueMarkEndOfData(*(ValueAtIndex[20] + 32));
    }

    v10 = 0;
    while (1)
    {
      v11 = *(CFArrayGetValueAtIndex(*(DerivedStorage + 80), v10) + 36);
      if (v11)
      {
        result = FigMediaProcessorFlush(v11);
        if (result)
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t assetWriter_AddTaggedPixelBufferGroup(const void *a1, int a2, OpaqueCMTaggedBufferGroup *a3, __int128 *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  buf = 0;
  if (*DerivedStorage >= 7u)
  {
    goto LABEL_26;
  }

  if (DerivedStorage[5])
  {
    fig_log_get_emitter();
    goto LABEL_27;
  }

  if (*DerivedStorage != 3 || !a3 || (OUTLINED_FUNCTION_29(), !v14) || (ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2)) == 0 || (v10 = ChannelByWriterTrackID, !*(ChannelByWriterTrackID + 16)) || (v11 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
LABEL_26:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
LABEL_27:
    v18 = FigSignalErrorAtGM();
    v12 = 0;
    goto LABEL_29;
  }

  v12 = v11;
  v13 = *(v11 + 32);
  v14 = v13 == 1986618469 || v13 == 1635088502;
  if (!v14)
  {
LABEL_14:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v19 = FigSignalErrorAtGM();
LABEL_28:
    v18 = v19;
    goto LABEL_29;
  }

  if (CMTaggedBufferGroupGetCount(a3) >= 1)
  {
    v15 = 0;
    while (CMTaggedBufferGroupGetCVPixelBufferAtIndex(a3, v15))
    {
      if (++v15 >= CMTaggedBufferGroupGetCount(a3))
      {
        goto LABEL_19;
      }
    }

    goto LABEL_14;
  }

LABEL_19:
  CFGetAllocator(a1);
  v21 = *a4;
  v22 = *(a4 + 2);
  v19 = FigSampleBufferCreateForTaggedBufferGroup();
  if (v19)
  {
    goto LABEL_28;
  }

  if (!*(v10 + 120))
  {
    goto LABEL_25;
  }

  *&v21 = 0;
  CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
  v19 = assetWriter_copyPixelBufferAttributesForHintingEncoder(CVPixelBufferAtIndex, &v21);
  if (v19)
  {
    goto LABEL_28;
  }

  v17 = v21;
  v18 = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v10, v21);
  if (v17)
  {
    CFRelease(v17);
  }

  if (!v18)
  {
LABEL_25:
    v19 = CMBufferQueueEnqueue(*(v10 + 32), buf);
    goto LABEL_28;
  }

LABEL_29:
  if (buf)
  {
    CFRelease(buf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v18;
}

uint64_t assetWriter_finishAsyncDispatch(const void *a1)
{
  if (*CMBaseObjectGetDerivedStorage() != 4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_197();
    kdebug_trace();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage > 6u)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    result = FigSignalErrorAtGM();
    if (result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v3 = DerivedStorage;
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
LABEL_9:
    *(v3 + 384) = 1;
LABEL_10:

    return remakerFamily_performLastStepIfComplete(a1);
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 80), v6);
    result = remakerFamily_MarkEndOfDataForTrack(ValueAtIndex, 1);
    if (result)
    {
      return result;
    }

    if (v5 == ++v6)
    {
      goto LABEL_9;
    }
  }
}

uint64_t FigAssetWriterCreateForWritingFragmentedData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetWriter_SetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetProperty_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddAudioTrackWithPresetCompression_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddAudioTrackWithPresetCompression_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetTrackProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_SetTrackProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_CopyTrackProperty_cold_1(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = *(a1 + 288);
  if (v5 && ((v6 = *(a1 + 32), v6 != 1635088502) ? (v7 = v6 == 1986618469) : (v7 = 1), v7))
  {
    PixelBufferPool = FigMediaProcessorGetPixelBufferPool(v5);
    if (PixelBufferPool)
    {
      v10 = CFRetain(PixelBufferPool);
    }

    else
    {
      v10 = 0;
    }

    result = 0;
    *a2 = v10;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    result = FigSignalErrorAtGM();
  }

  *a3 = result;
  return result;
}

uint64_t assetWriter_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_CopyTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_CopyTrackProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_CopyTrackProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddSampleBuffer_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_IsTrackQueueAboveHighWaterLevel_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetWriter_IsTrackQueueAboveHighWaterLevel_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetWriter_MarkEndOfDataForTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_MarkEndOfDataForTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_MarkEndOfDataForTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_MarkEndOfDataForTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_Finish_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t assetWriter_Finish_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_Finish_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_FinishAsync_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t assetWriter_FinishAsync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_FinishAsync_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_BeginPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_BeginPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_BeginPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_BeginPass_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_BeginPass_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_BeginPass_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_EndPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_EndPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_EndPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_EndPass_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddCaptionTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddCaptionTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_Flush_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t assetWriter_Flush_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_Flush_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_Flush_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriterTrack_reachedLowWater_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetWriterTrack_reachedLowWater_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t assetWriter_IsTrackNativeTrack_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetWriter_copyPixelBufferAttributesForHintingEncoder_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetWriter_copyPixelBufferAttributesForHintingEncoder_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CMTime *fmi_CalculateMPEG2WrapForTime@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  *&a3->value = *MEMORY[0x1E6960C70];
  a3->epoch = *(v4 + 16);
  if ((result->flags & 0x1D) == 1 && (*(a2 + 12) & 0x1D) == 1)
  {
    OUTLINED_FUNCTION_0_18(result->epoch, result->value, *&result->timescale, v10, v12);
    v6 = v13;
    OUTLINED_FUNCTION_0_18(*(a2 + 16), *a2, *(a2 + 8), v11, v13);
    v7 = v6 & 0xFFFFFFFE00000000 | v14 & 0x1FFFFFFFFLL;
    v8 = v6 - v7;
    if ((v6 - v7) < 0 && ((v7 - v6) & 0x100000000) != 0)
    {
      v7 -= 0x200000000;
    }

    else if ((v8 & 0x100000000) != 0 && v8 >= 1)
    {
      v7 += 0x200000000;
    }

    return CMTimeMake(a3, v7 - v14, 90000);
  }

  return result;
}

__n128 FigManifoldAdjustTimestampAndUpdateRefTime(uint64_t a1, CMTime *a2, __n128 *a3)
{
  memset(&v10, 0, sizeof(v10));
  if (a2 && (*(a1 + 12) & 0x1D) == 1 && (a2->flags & 0x1D) == 1)
  {
    lhs = *a2;
    OUTLINED_FUNCTION_1_16();
    CMTimeSubtract(&v10, &lhs, &rhs);
    rhs = v10;
    CMTimeAbsoluteValue(&lhs, &rhs);
    *&rhs.value = FigManifoldAdjustTimestampAndUpdateRefTime_kAlmostHalfWrap;
    rhs.epoch = 0;
    if (CMTimeCompare(&lhs, &rhs) >= 1)
    {
      memset(&lhs, 0, sizeof(lhs));
      OUTLINED_FUNCTION_1_16();
      OUTLINED_FUNCTION_73();
      fmi_CalculateMPEG2WrapForTime(&rhs, &v7, &lhs);
      OUTLINED_FUNCTION_73();
      v6 = lhs;
      CMTimeAdd(&rhs, &v7, &v6);
      result.n128_u64[0] = rhs.value;
      *a2 = rhs;
    }

    if (a3)
    {
      result = *&a2->value;
      a3[1].n128_u64[0] = a2->epoch;
      *a3 = result;
    }
  }

  return result;
}

uint64_t FigAIOClientCreate(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  MEMORY[0x19A8D3660](&unk_1ED4C9F40, figAIOInitOnce);
  if (_MergedGlobals_0)
  {
    return 0;
  }

  v7 = FigSimpleMutexLock();
  if (v7)
  {
    return v7;
  }

  v8 = qword_1EAF189A0;
  if (qword_1EAF189A0)
  {
    while (*v8 != a2 || v8[1] != a3)
    {
      v8 = v8[2];
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v11 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_7:
    v9 = malloc_type_malloc(0x20uLL, 0x10E004028FE4D45uLL);
    if (v9)
    {
      v10 = v9;
      *v9 = a2;
      if (a3)
      {
        CFRetain(a3);
      }

      v11 = 0;
      v10[2] = 0;
      v10[1] = a3;
      *qword_1EAF189A8 = v10;
      qword_1EAF189A8 = (v10 + 2);
      *a4 = v10;
    }

    else
    {
      fig_log_get_emitter();
      v11 = FigSignalErrorAtGM();
    }
  }

  FigSimpleMutexUnlock();
  return v11;
}

void figAIOInitOnce()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69631E8], *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69631F0], @"com.apple.coremedia.asyncio");
  _MergedGlobals_5 = FigReentrantMutexCreate();
  if (_MergedGlobals_5 && (qword_1EAF189A0 = 0, qword_1EAF189A8 = &qword_1EAF189A0, (qword_1EAF18990 = FigReentrantMutexCreate()) != 0))
  {
    qword_1EAF18980 = 0;
    qword_1EAF18988 = 0;
    qword_1EAF18998 = FigSemaphoreCreate();
    v1 = FigThreadCreate();
  }

  else
  {
    v1 = -1;
  }

  _MergedGlobals_0 = v1;
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t FigAIOClientRelease(uint64_t a1)
{
  v2 = FigSimpleMutexLock();
  if (!v2)
  {
    v3 = &qword_1EAF189A0;
    v4 = &qword_1EAF189A0;
    do
    {
      v5 = *v4;
      v4 = (*v4 + 16);
      if (v5)
      {
        v6 = v5 == a1;
      }

      else
      {
        v6 = 1;
      }
    }

    while (!v6);
    if (!v5)
    {
      goto LABEL_16;
    }

    FinalizeClientRequestsOnList(a1, &qword_1EAF18980, 1);
    FinalizeClientRequestsOnList(a1, &qword_1EAF18988, 0);
    v7 = qword_1EAF189A0;
    if (qword_1EAF189A0 == v5)
    {
      qword_1EAF189A0 = *(qword_1EAF189A0 + 16);
      if (qword_1EAF189A0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      do
      {
        v8 = v7;
        v7 = *(v7 + 16);
      }

      while (v7 != v5);
      v9 = *(v7 + 16);
      *(v8 + 16) = v9;
      v3 = (v8 + 16);
      if (v9)
      {
LABEL_13:
        v10 = v5[1];
        if (v10)
        {
          CFRelease(v10);
          v5[1] = 0;
        }

        free(v5);
LABEL_16:
        FigSimpleMutexUnlock();
        return v2;
      }
    }

    qword_1EAF189A8 = v3;
    goto LABEL_13;
  }

  return v2;
}

uint64_t FigAIOIssueRead()
{
  v2 = OUTLINED_FUNCTION_0_19();
  if (!v2)
  {
    return 4294949775;
  }

  v3 = v2;
  DarwinFileDesc = FigFileGetDarwinFileDesc();
  v5 = OUTLINED_FUNCTION_1_17(DarwinFileDesc);
  if (aio_read(v5))
  {
    v6 = *__error();
    free(v3);
  }

  else
  {
    v3[10] = v1;
    AddPendingRequest(v3);
    v6 = 0;
    *v0 = v3;
  }

  return v6;
}

uint64_t FigAIOIssueWrite()
{
  v2 = OUTLINED_FUNCTION_0_19();
  if (!v2)
  {
    return 4294949775;
  }

  v3 = v2;
  DarwinFileDesc = FigFileGetDarwinFileDesc();
  v5 = OUTLINED_FUNCTION_1_17(DarwinFileDesc);
  if (aio_write(v5))
  {
    v6 = *__error();
    free(v3);
  }

  else
  {
    v3[10] = v1;
    AddPendingRequest(v3);
    v6 = 0;
    *v0 = v3;
  }

  return v6;
}

uint64_t figTTMLFeaturesConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  value = 0;
  cf = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    v8 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v13, &cf);
    if (v8)
    {
      goto LABEL_19;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLFeatureCreate(v9, a1, a2, &value);
      if (!v8)
      {
        CFArrayAppendValue(*(DerivedStorage + 144), value);
        goto LABEL_9;
      }

LABEL_19:
      v10 = v8;
      goto LABEL_11;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_9:
  v10 = 0;
  if (a3)
  {
    *a3 = value;
    value = 0;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v10;
}

uint64_t FigTTMLFeaturesCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLFeaturesCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLFeatures_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetImageGeneratorCreateRemoteFromAssetWithOptions(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v14 = 0;
  xdict = 0;
  value = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCAIG_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E74791E0;
  block[4] = &v17;
  if (qword_1ED4CA480 != -1)
  {
    dispatch_once(&qword_1ED4CA480, block);
  }

  started = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  if (started)
  {
    goto LABEL_13;
  }

  ObjectID = FigAssetXPCRemoteGetObjectID(a2, &value);
  if (ObjectID)
  {
    goto LABEL_19;
  }

  if (!a4)
  {
    fig_log_get_emitter();
    ObjectID = FigSignalErrorAtGM();
LABEL_19:
    started = ObjectID;
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  block[0] = 0;
  FigAssetImageGeneratorGetClassID();
  v8 = CMDerivedObjectCreate();
  v9 = block[0];
  if (v8)
  {
    started = v8;
    if (block[0])
    {
      CFRelease(block[0]);
    }

    goto LABEL_13;
  }

  v10 = FigXPCCreateBasicMessage();
  if (!v10)
  {
    xpc_dictionary_set_uint64(xdict, "Asset", value);
    v10 = FigXPCMessageSetCFDictionary();
    if (!v10)
    {
      v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v10)
      {
        uint64 = xpc_dictionary_get_uint64(v14, *MEMORY[0x1E69615A0]);
        *CMBaseObjectGetDerivedStorage() = uint64;
        v10 = FigXPCRemoteClientAssociateObject();
        if (!v10)
        {
          started = FigStartMonitoringMediaServicesProcessDeath();
          if (started)
          {
            goto LABEL_14;
          }

          *a4 = v9;
          goto LABEL_13;
        }
      }
    }
  }

  started = v10;
LABEL_14:
  FigXPCRelease();
  FigXPCRelease();
  if (v9)
  {
    CFRelease(v9);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return started;
}

uint64_t remoteXPCAIG_CopyCGImageFromMessage(void *a1)
{
  length = 0;
  if (!xpc_dictionary_get_data(a1, "ImageParams", &length) || !length || (v2 = MEMORY[0x19A8D2B00](), !v2))
  {
    FigXPCMessageCreateBlockBufferData();
    value = xpc_dictionary_get_value(a1, "IOSurface");
    if (value)
    {
      v4 = IOSurfaceLookupFromXPCObject(value);
      if (v4)
      {
        FigCFDictionaryGetNumberValue();
        CGImageFromIOSurfaceAndAttributes = FigCreateCGImageFromIOSurfaceAndAttributes();
      }

      else
      {
        fig_log_get_emitter();
        CGImageFromIOSurfaceAndAttributes = FigSignalErrorAtGM();
      }

      v6 = CGImageFromIOSurfaceAndAttributes;
      goto LABEL_10;
    }

    fig_log_get_emitter();
    v2 = FigSignalErrorAtGM();
  }

  v6 = v2;
  v4 = 0;
LABEL_10:
  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

uint64_t remoteXPCAIG_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || (v1 = DerivedStorage, FigStopMonitoringMediaServicesProcessDeath(), *(v1 + 8) = 1, FigXPCRemoteClientDisassociateObject(), *(v1 + 9)))
  {
    v2 = 0;
  }

  else
  {
    v3 = FigXPCCreateBasicMessage();
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v2 = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t remoteXPCAIG_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  result = 4294954863;
  if (a2)
  {
    if (a3)
    {
      return remoteXPCAIG_GetObjectID(a1, &v7);
    }
  }

  return result;
}

uint64_t remoteXPCAIG_CopyCGImageAtTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  ObjectID = remoteXPCAIG_GetObjectID(a1, &v11);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (FigXPCMessageSetCMTime(), a3) && (ObjectID = FigXPCMessageSetCFDictionary(), ObjectID))
  {
    v9 = ObjectID;
  }

  else
  {
    v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (!v9)
    {
      v9 = remoteXPCAIG_CopyCGImageFromMessage(v12);
      if (a6)
      {
        if (!v9)
        {
          FigXPCMessageGetCMTime();
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t remoteXPCAIG_RequestCGImageAtTimeAsync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  ObjectID = remoteXPCAIG_GetObjectID(a1, v7);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      FigXPCMessageSetCMTime();
      if (!a3 || (ObjectID = FigXPCMessageSetCFDictionary(), !ObjectID))
      {
        ObjectID = FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  v5 = ObjectID;
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteXPCAIG_CancelAllCGImageAsyncRequests(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  ObjectID = remoteXPCAIG_GetObjectID(a1, v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t remoteXPCAIG_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAIG_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigReportingAgentStatsSetIntValue_0(uint64_t result)
{
  if (result)
  {
    v1 = OUTLINED_FUNCTION_34_3();
    v2 = *(v1 + 16);
    result = v1 + 16;
    if (*(v2 + 56))
    {
      v3 = OUTLINED_FUNCTION_184();

      return v4(v3);
    }
  }

  return result;
}

uint64_t FigReportingAgentStatsAddToCountValue_0(uint64_t result)
{
  if (result)
  {
    v1 = OUTLINED_FUNCTION_34_3();
    v2 = *(v1 + 16);
    result = v1 + 16;
    if (*(v2 + 32))
    {
      v3 = OUTLINED_FUNCTION_184();

      return v4(v3);
    }
  }

  return result;
}

uint64_t crabsReportingIssueIRATEventIfNeeded(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (a2 == 800)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = *(result + 928);
    if (!v5)
    {
      v6 = *(result + 920);
      if (v6)
      {
        VTable = CMBaseObjectGetVTable();
        v8 = *(VTable + 16);
        result = VTable + 16;
        v9 = *(v8 + 56);
        if (v9)
        {
          result = v9(v6, 0x1F0B64598, 0x1F0B66118, 300, 0);
        }
      }
    }

    if (v4 != v5)
    {
      result = crabsReportingIssueEvent(v3, a2);
      *(v3 + 928) = v4;
    }
  }

  return result;
}

uint64_t crabsCreateReadStatsDictionary(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!a3)
  {
    return 4294954516;
  }

  FigBaseObject = FigByteFlumeGetFigBaseObject(*(a1 + 32));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(FigBaseObject, @"FBF_URL", *MEMORY[0x1E695E480], &cf);
  }

  StatsDictionary = FigByteStreamStatsCreateStatsDictionary();
  OUTLINED_FUNCTION_184();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v8 = FigSignalErrorAtGM();
    if (!StatsDictionary)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigRetainProxyUnlockMutex();
    v8 = 4294954511;
    if (!StatsDictionary)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigRetainProxyUnlockMutex();
  v8 = 0;
  *a3 = MutableCopy;
  MutableCopy = 0;
  if (StatsDictionary)
  {
LABEL_9:
    CFRelease(StatsDictionary);
  }

LABEL_10:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t crabsAIOCallback()
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 104))
    {
      v1 = DerivedStorage;
      crabsTaskHints(DerivedStorage, 0);
      OUTLINED_FUNCTION_13_3();
      if (!v2)
      {
        crabsRebalanceWorkingSet(v1);
      }
    }
  }

  return crabsRetainProxyUnlockWithActions();
}

void crabsRebalanceWorkingSet(uint64_t a1)
{
  IsBusy = crabsDiskBackingIsBusy(a1, 0);
  flushPendingReleaseSet(a1);
  v3 = 0;
  if (*(a1 + 504))
  {
    v3 = crabsCompleteLazySync(a1, 0);
  }

  if (*(a1 + 352) < *(a1 + 344) / 2)
  {
    v4 = IsBusy;
    do
    {
      v5 = **(*(a1 + 320) + 8);
      if (!v5)
      {
        return;
      }

      v6 = *(v5 + 8);
      if ((v6 & 8) == 0)
      {
LABEL_7:
        v7 = OUTLINED_FUNCTION_198_0();
        removeFromWorkingSet(v7, v8);
        v10 = OUTLINED_FUNCTION_198_0();
        addToWorkingSet(v10, v11, v12, 1);
        continue;
      }

      if ((v6 & 0x200) != 0)
      {
        if ((v6 >> 8))
        {
          goto LABEL_14;
        }
      }

      else
      {
        OUTLINED_FUNCTION_400_1();
        if (v9)
        {
          goto LABEL_14;
        }
      }

      v13 = OUTLINED_FUNCTION_198_0();
      if (!crabsAllocBacking(v13, v14))
      {
        goto LABEL_7;
      }

      v15 = OUTLINED_FUNCTION_198_0();
      crabsAddBlockToBackedList(v15, v16);
LABEL_14:
      if ((*(a1 + 504) & 1) == 0)
      {
        v17 = *(v5 + 8);
        if ((v17 & 0x200) != 0)
        {
          if (((v17 >> 8) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          OUTLINED_FUNCTION_400_1();
          if (!v18)
          {
LABEL_26:
            if (v3)
            {
              return;
            }

            continue;
          }
        }

        v20 = OUTLINED_FUNCTION_198_0();
        v3 = crabsSyncBlock(v20, v21);
        goto LABEL_26;
      }

      if (*(a1 + 728) || !*(a1 + 720) || *(a1 + 135) | v4)
      {
        return;
      }

      v19 = FigAIOIssueWrite();
      v3 = v19;
      if (v19)
      {
        if (v19 == 35)
        {
          return;
        }
      }

      else
      {
        *(v5 + 8) &= ~8u;
        v22 = OUTLINED_FUNCTION_198_0();
        crabsRetainWorking(v22, v23);
        *(a1 + 728) = v5;
      }
    }

    while (*(a1 + 352) < *(a1 + 344) / 2);
  }
}

uint64_t FigCRABSWrite(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a4)
  {
    goto LABEL_65;
  }

  v10 = DerivedStorage;
  v11 = crabsEnsureInitialized(a1);
  if (v11)
  {
    return v11;
  }

  v12 = *(v10 + 96);
  if (v12 == 0x4000)
  {
    v13 = a3 >> 14;
  }

  else
  {
    v13 = v12 == 0x10000 ? a3 >> 16 : a3 / v12;
  }

  if (v13 >= *(v10 + 88) || !*(v10 + 104))
  {
    goto LABEL_65;
  }

  v14 = v13 * v12;
  if (a3 <= v13 * v12)
  {
    goto LABEL_15;
  }

  if (a3 - v13 * v12 < 0)
  {
LABEL_65:
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }

  v11 = readOrRef(a1, a3 - v13 * v12, v13 * v12, 0, &cf, 0, -1);
  if (v11)
  {
    return v11;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_15:
  v11 = FigRetainProxyLockMutex();
  if (v11)
  {
    return v11;
  }

  if (FigRetainProxyIsInvalidated())
  {
    v15 = 0;
    v40 = 4294954511;
    goto LABEL_56;
  }

  FigSimpleMutexLock();
  if (!a2)
  {
    v40 = 0;
    v15 = 0;
    goto LABEL_56;
  }

  v42 = a5;
  v15 = 0;
  v16 = 0;
  v43 = a4;
  while (v13 < *(v10 + 88))
  {
    v17 = *(*(v10 + 80) + 8 * v13);
    if (!v17)
    {
      if (crabsInitBlock(v10, v13))
      {
        break;
      }

      v17 = *(*(v10 + 80) + 8 * v13);
      if (!v17)
      {
        break;
      }
    }

    v18 = *(v17 + 80);
    if (!v18)
    {
      v19 = OUTLINED_FUNCTION_266();
      if (!crabsReadyBlockForLoad(v19, v20, 1))
      {
        break;
      }

      v18 = *(v17 + 80);
    }

    v21 = a3 - v14;
    if (a2 - v15 >= *(v10 + 96) - (a3 - v14))
    {
      v22 = *(v10 + 96) - (a3 - v14);
    }

    else
    {
      v22 = a2 - v15;
    }

    memcpy((*(v18 + 16) + v21), (a4 + v16), v22);
    v23 = *(v17 + 4);
    v24 = v22 + v21;
    if (v24 > v23)
    {
      v44 = a3;
      v25 = *(v10 + 64) + v24 - v23;
      *(v10 + 64) = v25;
      v26 = *(v10 + 920);
      if (v26)
      {
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v27)
        {
          v27(v26, 0x1F0B64598, 0x1F0B65638, v25, 0);
        }
      }

      *(v17 + 4) = v24;
      v23 = v24;
      a4 = v43;
      a3 = v44;
    }

    v28 = *(v17 + 8);
    v29 = v28 | 8;
    *(v17 + 8) = v28 | 8;
    if ((*(v10 + 504) & 1) == 0 && (v28 & 0x100) != 0)
    {
      v29 = v28 | 0x48;
      *(v17 + 8) = v28 | 0x48;
    }

    if (*(v10 + 96) == v23 || v13 + 1 == *(v10 + 88) && *(v10 + 56) - v14 == v23)
    {
      LOBYTE(v30) = v29 | 4;
      *(v17 + 8) = v29 | 4;
      if (v29)
      {
        v31 = OUTLINED_FUNCTION_266();
        crabsUnhint(v31, v32);
        v30 = *(v17 + 8);
      }

      if ((v30 & 0x20) == 0)
      {
        goto LABEL_42;
      }
    }

    else if ((v29 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    v33 = OUTLINED_FUNCTION_266();
    crabsRetainWorking(v33, v34);
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_29_2();
    crabsReleaseWorking(v35, v36, v37, v38);
LABEL_42:
    a3 += v22;
    *(v10 + 176) |= 1u;
    v39 = *(v10 + 96);
    if (v39 == 0x4000)
    {
      v13 = a3 >> 14;
    }

    else if (v39 == 0x10000)
    {
      v13 = a3 >> 16;
    }

    else
    {
      v13 = a3 / v39;
    }

    v15 += v22;
    v16 += v22;
    v14 = v13 * v39;
    if (v15 >= a2)
    {
      v40 = 0;
      goto LABEL_55;
    }
  }

  OUTLINED_FUNCTION_3_12();
  v40 = FigSignalErrorAtGM();
LABEL_55:
  a5 = v42;
LABEL_56:
  FigSimpleMutexUnlock();
  crabsUnlockWithActions(v10);
  if (a5)
  {
    *a5 = v15;
  }

  return v40;
}

void FigCRABSReadAndCreateBlockBuffer()
{
  OUTLINED_FUNCTION_22_3();
  *v1 = 0;
  FigGetUpTimeNanoseconds();
  v2 = OUTLINED_FUNCTION_26_3();
  readOrRef(v2, v3, v4, 0, v1, v5, -1);
  if (v0)
  {
    *v0 = v6;
  }

  FigGetUpTimeNanoseconds();
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_843();
}

uint64_t FigCRABS_UnhintActiveRanges(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = crabsEnsureInitialized(a1);
  if (!result)
  {
    result = FigRetainProxyLockMutex();
    if (!result)
    {
      if (a2 < 1)
      {
        if (!a2)
        {
          while (1)
          {
            v16 = DerivedStorage[31];
            if (!v16)
            {
              break;
            }

            crabsUnhint(DerivedStorage, v16);
          }
        }
      }

      else
      {
        v8 = 0;
        v9 = DerivedStorage[12];
        do
        {
          v10 = (a3 + 16 * v8);
          v11 = *v10;
          if (v9 == 0x4000)
          {
            v12 = v11 >> 14;
          }

          else if (v9 == 0x10000)
          {
            v12 = v11 >> 16;
          }

          else
          {
            v12 = v11 / v9;
          }

          while (1)
          {
            v14 = v11 + v10[1] - 1;
            if (v9 == 0x4000)
            {
              v15 = v14 >> 14;
            }

            else
            {
              v15 = v9 == 0x10000 ? v14 >> 16 : v14 / v9;
            }

            if (v12 > v15 || v12 >= DerivedStorage[11])
            {
              break;
            }

            v13 = *(DerivedStorage[10] + 8 * v12);
            if (v13)
            {
              if (*(v13 + 8))
              {
                crabsUnhint(DerivedStorage, v13);
                v11 = *v10;
                v9 = DerivedStorage[12];
              }
            }

            ++v12;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      crabsUnlockWithActions(DerivedStorage);
      return 0;
    }
  }

  return result;
}

uint64_t FigCRABS_SyncCache(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = crabsEnsureInitialized(a1);
  if (!result)
  {
    result = FigRetainProxyLockMutex();
    if (!result)
    {
      v4 = crabsSyncCache(DerivedStorage);
      crabsUnlockWithActions(DerivedStorage);
      return v4;
    }
  }

  return result;
}

uint64_t FigCRABS_IterateCache(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 760);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  v44 = 0;
  v43 = 0;
  if (a1)
  {
    CFRetain(a1);
  }

  if (!a4)
  {
    goto LABEL_47;
  }

  v9 = crabsEnsureInitialized(a1);
  if (v9)
  {
    goto LABEL_48;
  }

  v42 = malloc_type_calloc(1uLL, *(DerivedStorage + 96), 0x100004077774924uLL);
  if (!v42)
  {
LABEL_47:
    v9 = FigSignalErrorAtGM();
LABEL_48:
    v27 = v9;
    if (v8)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v10 = FigRetainProxyLockMutex();
  if (v10)
  {
    v27 = v10;
    goto LABEL_41;
  }

  IsBusy = crabsDiskBackingIsBusy(DerivedStorage, 0);
  if (*(DerivedStorage + 88) < 1)
  {
    v27 = 0;
LABEL_40:
    crabsUnlockWithActions(DerivedStorage);
    goto LABEL_41;
  }

  v40 = v8;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v44 = 0;
    v43 = 1;
    v17 = *(*(DerivedStorage + 80) + 8 * v16);
    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = *(v17 + 4);
    if (!v18)
    {
      goto LABEL_17;
    }

    if (*(v17 + 80))
    {
      v19 = OUTLINED_FUNCTION_267_0();
      crabsRetainWorking(v19, v20);
      OUTLINED_FUNCTION_14_3(DerivedStorage, *(*(v17 + 80) + 16), v21, v22, v23, v24, &v43);
      OUTLINED_FUNCTION_13_3();
      if (v26)
      {
        goto LABEL_46;
      }

      v27 = v25;
      v28 = OUTLINED_FUNCTION_267_0();
      crabsReleaseWorking(v28, v29, 1, v30);
      if (v27)
      {
        goto LABEL_36;
      }

      goto LABEL_17;
    }

    v31 = *(v17 + 8);
    if ((v31 & 0x200) != 0)
    {
      if (((v31 >> 8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      OUTLINED_FUNCTION_400_1();
      if (!v32)
      {
        goto LABEL_17;
      }
    }

    if (IsBusy)
    {
      goto LABEL_17;
    }

    if (*(DerivedStorage + 504))
    {
      break;
    }

    if ((v31 & 0x80) == 0 || (v33 = OUTLINED_FUNCTION_2_17(), crabsMakeBackingNonvolatile(v33, v17, v34)))
    {
      OUTLINED_FUNCTION_14_3(DerivedStorage, *(v17 + 88), v11, v12, v13, v14, &v43);
      OUTLINED_FUNCTION_13_3();
      if (v26)
      {
LABEL_46:
        v27 = 4294954511;
        goto LABEL_38;
      }

      v27 = v35;
      if ((v31 & 0x80) != 0 && v43)
      {
        v36 = OUTLINED_FUNCTION_267_0();
        crabsMakeBlockVolatileRelativeToAnchor(v36, v37);
      }

      if (v27)
      {
        goto LABEL_36;
      }
    }

LABEL_17:
    ++v16;
    v15 += *(DerivedStorage + 96);
    if (v16 >= *(DerivedStorage + 88))
    {
      v27 = 0;
LABEL_38:
      v8 = v40;
      goto LABEL_40;
    }
  }

  FigFileForkRead();
  if (v44 != v18)
  {
    goto LABEL_17;
  }

  v38 = OUTLINED_FUNCTION_14_3(DerivedStorage, v42, v11, v12, v13, v14, &v43);
  if (!v38)
  {
    goto LABEL_17;
  }

  v27 = v38;
LABEL_36:
  v8 = v40;
  if (v43)
  {
    goto LABEL_40;
  }

LABEL_41:
  free(v42);
  if (v8)
  {
LABEL_42:
    CFRelease(v8);
  }

LABEL_43:
  if (a1)
  {
    CFRelease(a1);
  }

  return v27;
}

void crabsRestoreCache(uint64_t a1, CFDataRef theData, uint64_t a3, uint64_t a4)
{
  if (!theData)
  {
    goto LABEL_32;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    goto LABEL_32;
  }

  v7 = BytePtr;
  if (*BytePtr != 83886080)
  {
    goto LABEL_32;
  }

  if (*(BytePtr + 1) != 1650553443)
  {
    goto LABEL_32;
  }

  v8 = *(a1 + 96);
  if (bswap32(v8) != *(BytePtr + 2))
  {
    goto LABEL_32;
  }

  v9 = bswap32(*(BytePtr + 3));
  v10 = *(a1 + 920);
  if (v10)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v11)
    {
      v11(v10, 0x1F0B64598, 0x1F0B678B8, v8 * v9, 0);
    }
  }

  if (CFDataGetLength(theData) != 16 * v9 + 16)
  {
LABEL_32:
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_207_0();

    FigSignalErrorAtGM();
    return;
  }

  *(a1 + 16) = a3;
  FigSimpleMutexLock();
  if (v9 < 1)
  {
LABEL_28:
    FigSimpleMutexUnlock();
    goto LABEL_29;
  }

  v12 = (v7 + 24);
  while (1)
  {
    v13 = bswap32(*(v12 - 2));
    if (*(a1 + 88) <= v13 || *(*(a1 + 80) + 8 * v13))
    {
      break;
    }

    if (crabsInitBlock(a1, v13))
    {
      goto LABEL_29;
    }

    v14 = *(*(a1 + 80) + 8 * v13);
    *(v14 + 8) |= 0x100u;
    *(v14 + 96) = bswap64(*v12);
    if (*(a1 + 504))
    {
      crabsAddBlockToBackedList(a1, v14);
      v15 = bswap32(*(v12 - 1));
      *(v14 + 4) = v15;
      *(a1 + 64) += v15;
      if (!*(a1 + 920) || !*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!crabsAllocBacking(a1, v14))
      {
        goto LABEL_23;
      }

      v23 = bswap32(*(v12 - 1));
      FigFileForkRead();
      crabsAddBlockToBackedList(a1, v14);
      *(v14 + 4) = v23;
      *(a1 + 64) += v23;
      if (!*(a1 + 920) || !*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        goto LABEL_23;
      }
    }

    v16 = OUTLINED_FUNCTION_20_1();
    v17(v16);
LABEL_23:
    v18 = *(v14 + 4);
    v19 = *(a1 + 96);
    if (v19 == v18 || v13 + 1 == *(a1 + 88) && a4 - v19 * v13 == v18)
    {
      *(v14 + 8) |= 4u;
    }

    v12 += 2;
    if (!--v9)
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_3_12();
  FigSignalErrorAtGM();
LABEL_29:
  OUTLINED_FUNCTION_207_0();
}

uint64_t crabsFlumeHostUnavailable()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_4();
  if (!FigRetainProxyIsInvalidated())
  {
    if (!*(v0 + 108))
    {
      *(v0 + 108) = 1;
      OUTLINED_FUNCTION_19_3();
    }

    *(v0 + 608) = 0;
  }

  return crabsRetainProxyUnlockWithActions();
}

uint64_t crabsFlumeHostAvailable()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_4();
  if (!FigRetainProxyIsInvalidated())
  {
    *(v0 + 608) = 0;
    if (*(v0 + 108))
    {
      *(v0 + 108) = 0;
      OUTLINED_FUNCTION_19_3();
      crabsStartIdleRead(v0);
    }
  }

  return crabsRetainProxyUnlockWithActions();
}

uint64_t crabsFlumeConnectionToHostLost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_4();
  if (!FigRetainProxyIsInvalidated())
  {
    *(v5 + 108) = 2;
    OUTLINED_FUNCTION_19_3();
    if (a5 && (Value = CFDictionaryGetValue(a5, @"NotePayload_LastError")) != 0)
    {
      v8 = Value;
      v9 = *(v5 + 952);
      *(v5 + 952) = Value;
      CFRetain(Value);
      if (v9)
      {
        CFRelease(v9);
      }

      Code = CFErrorGetCode(v8);
    }

    else
    {
      Code = -1004;
    }

    *(v5 + 944) = Code;
    if ((*(v5 + 504) & 1) == 0 || !crabsIsEntireLengthAvailableInCache(v5))
    {
      *(v5 + 176) |= 0x20u;
    }
  }

  return crabsRetainProxyUnlockWithActions();
}

uint64_t crabsFlumeHostAvailableOnBetterInterface()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_4();
  if (!FigRetainProxyIsInvalidated() && *(v0 + 560) == 1)
  {
    if (*(v0 + 568) < 1)
    {
      crabsCancelRead(v0, v0 + 512, -12932);
      OUTLINED_FUNCTION_13_3();
      if (!v1)
      {
        v2 = *(v0 + 920);
        if (v2)
        {
          v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v3)
          {
            v3(v2, 0x1F0B64598, 0x1F0B3F3D8, 1);
          }
        }

        crabsStartIdleRead(v0);
      }
    }

    else
    {
      *(v0 + 608) = 1;
    }
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t crabsInitialize_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t crabsInitialize_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t crabsInitialize_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t crabsCancelRead_cold_1(uint64_t result, uint64_t a2, int a3, _DWORD *a4)
{
  v7 = result;
  v8 = *(result + 920);
  if (v8)
  {
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 16);
    result = VTable + 16;
    v11 = *(v10 + 32);
    if (v11)
    {
      result = v11(v8, 0x1F0B64598, 0x1F0B655B8, 1);
    }
  }

  v12 = v7 + 512;
  v13 = *(v7 + 920);
  if (v12 == a2)
  {
    if (v13)
    {
      v16 = CMBaseObjectGetVTable();
      v17 = *(v16 + 16);
      result = v16 + 16;
      if (*(v17 + 32))
      {
        goto LABEL_10;
      }
    }
  }

  else if (v13)
  {
    v14 = CMBaseObjectGetVTable();
    v15 = *(v14 + 16);
    result = v14 + 16;
    if (*(v15 + 32))
    {
LABEL_10:
      v18 = OUTLINED_FUNCTION_184();
      result = v19(v18);
    }
  }

  *a4 = a3;
  return result;
}

uint64_t crabsSyncCache_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t crabsSyncCache_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void crabsCleanupOrphan_cold_1(void *a1, int *a2, _WORD *a3)
{
  crabsMarkBlockUnfilled(a1, a2);
  if ((*a3 & 1) == 0)
  {
    v6 = *a2;
    if (a1[45] == v6)
    {
      a1[45] = a1[11];
    }

    *(a1[10] + 8 * v6) = 0;

    free(a2);
  }
}

uint64_t crabsMoveFirehose_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t crabsSelectNextFill_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t crabsInitBlock_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCRABS_GetRangeInCache_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCRABS_GetRangeInCache_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCRABS_GetRangeInCache_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t siocrabsFinishUnlocked(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  if (!a2)
  {
    if (!a3)
    {
      if (*(a1 + 12))
      {
        v21 = *a1;
        v22 = *(*(CMBaseObjectGetVTable() + 24) + 24);
        if (v22)
        {
          v24 = *MEMORY[0x1E6960CC0];
          v25 = *(MEMORY[0x1E6960CC0] + 16);
          v22(v21, &v24);
        }
      }
    }

    v10 = FigSimpleMutexLock();
    if (!v10)
    {
      v11 = 0;
      v12 = (a1 + 24);
      while (1)
      {
        if (v11 == -12871 && v3 == 0)
        {
          v3 = 2;
        }

        v14 = *v12;
        if (!*v12)
        {
          break;
        }

        v15 = *(v14 + 16);
        *v12 = v15;
        if (!v15)
        {
          *(a1 + 32) = v12;
        }

        FigSimpleMutexUnlock();
        v16 = siocrabsFinish(a1, v14, v3, 1);
        v11 = v16;
        if (!v10)
        {
          LODWORD(v10) = v16;
        }

        v17 = FigSimpleMutexLock();
        if (v10)
        {
          v10 = v10;
        }

        else
        {
          v10 = v17;
        }

        if (v17)
        {
          return v10;
        }
      }

      FigSimpleMutexUnlock();
    }

    return v10;
  }

  v6 = FigSimpleMutexLock();
  if (v6)
  {
    return v6;
  }

  v7 = (a1 + 24);
  v8 = *(a1 + 24);
  if (!v8)
  {
LABEL_7:
    FigSimpleMutexUnlock();
    return 0;
  }

  v9 = *(a1 + 24);
  while (*(v9 + 8) != a2)
  {
    v9 = *(v9 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  if (v8 == v9)
  {
    v23 = *(v8 + 16);
    *v7 = v23;
    if (v23)
    {
      goto LABEL_32;
    }
  }

  else
  {
    do
    {
      v19 = v8;
      v8 = *(v8 + 16);
    }

    while (v8 != v9);
    v20 = *(v8 + 16);
    *(v19 + 16) = v20;
    v7 = (v19 + 16);
    if (v20)
    {
      goto LABEL_32;
    }
  }

  *(a1 + 32) = v7;
LABEL_32:
  FigSimpleMutexUnlock();

  return siocrabsFinish(a1, v9, v3, 1);
}

uint64_t FigCRABSScheduledIOGetEOF(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  number = 0;
  *a2 = 0;
  FigCRABSGetByteStream(*DerivedStorage);
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  result = v5(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number);
  if (!result)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, a2);
    CFRelease(number);
    return 0;
  }

  return result;
}

uint64_t FigTTMLFormatReaderCreateFromStream(uint64_t a1, int a2, CFAllocatorRef allocator, CFTypeRef *a4)
{
  cf = 0;
  v29 = 0;
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  v27 = 0;
  url = 0;
  if (!a1 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v12 = FigSignalErrorAtGM();
    goto LABEL_43;
  }

  FigFormatReaderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v17 = v7;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
    goto LABEL_45;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    v15 = 0;
    v16 = 0;
    v17 = 4294954514;
    goto LABEL_27;
  }

  v11 = *MEMORY[0x1E695E480];
  v12 = v10(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &url);
  if (v12)
  {
LABEL_43:
    v17 = v12;
LABEL_45:
    v15 = 0;
    v16 = 0;
    goto LABEL_27;
  }

  if (url)
  {
    v13 = CFURLCopyPathExtension(url);
    v14 = v13;
    if (v13 && CFStringCompare(v13, @"itt", 1uLL) == kCFCompareEqualTo)
    {
      v15 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(v15, @"FixUpiTTLeftRegionOrigin", *MEMORY[0x1E695E4C0]);
      LOBYTE(v25) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      MEMORY[0x19A8D3660](&ttmlFormatReader_isSDKVersionBeforeJazz_sOnce, ttmlFormatReader_initIsSDKVersionBeforeJazz);
      if (sTTMLFormatReader_IsSDKVersionBeforeJazz)
      {
        CFDictionarySetValue(v15, @"ConsolidateiTTRegions", *MEMORY[0x1E695E4D0]);
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v18 = TTMLParserCreate(Mutable, ttmlFormatReader_appendSampleBuffer, v15, &cf);
  if (v18)
  {
    v17 = v18;
    goto LABEL_25;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (v27)
  {
    v16 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
    *&v25 = ttmlFormatReader_reportSkippedSyntaxElement;
    *(&v25 + 1) = ttmlFormatReader_reportUnsupportedFeatures;
    v19 = TTMLParserRegisterReportingCallbacks(cf, v16, &v25);
    if (v19)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = TTMLParserParseStream(cf, a1);
  if (v19)
  {
LABEL_15:
    v17 = v19;
    if (!v14)
    {
      goto LABEL_27;
    }

LABEL_26:
    CFRelease(v14);
    goto LABEL_27;
  }

  if (!CFArrayGetCount(Mutable))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    v19 = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  *&v25 = 0;
  FigTrackReaderGetClassID();
  v20 = CMDerivedObjectCreate();
  if (!v20)
  {
    v21 = CMBaseObjectGetDerivedStorage();
    if (Mutable)
    {
      v22 = CFRetain(Mutable);
    }

    else
    {
      v22 = 0;
    }

    v17 = 0;
    *(v21 + 8) = v22;
    v23 = v25;
    DerivedStorage[1] = Mutable;
    DerivedStorage[2] = v16;
    *DerivedStorage = v23;
    *a4 = v29;
    v29 = 0;
    Mutable = 0;
LABEL_25:
    v16 = 0;
    if (!v14)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v17 = v20;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  FigSignalErrorAtGM();
  if (v14)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (url)
  {
    CFRelease(url);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v17;
}

uint64_t ttmlFormatReader_CopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    return 4294954453;
  }

  if (a3 != 1952807028)
  {
    return 4294954452;
  }

  if (a4)
  {
    v10 = *DerivedStorage;
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a4 = v10;
  }

  result = 0;
  if (a5)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t ttmlCaptionTrackReader_CopyProperty(const void *a1, uint64_t a2, const __CFAllocator *a3, CFArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a4)
  {
    v9 = DerivedStorage;
    if (FigCFEqual() || FigCFEqual())
    {
      v28 = **&MEMORY[0x1E6960CC0];
      if (CFArrayGetCount(v9[1]))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9[1], 0);
        v11 = v9[1];
        Count = CFArrayGetCount(v11);
        v13 = CFArrayGetValueAtIndex(v11, Count - 1);
        memset(&time, 0, sizeof(time));
        CMSampleBufferGetPresentationTimeStamp(&time, ValueAtIndex);
        memset(&v26, 0, sizeof(v26));
        CMSampleBufferGetPresentationTimeStamp(&v26, v13);
        memset(&v25, 0, sizeof(v25));
        CMSampleBufferGetDuration(&v25, v13);
        memset(&v24, 0, sizeof(v24));
        lhs = v26;
        v22 = v25;
        CMTimeAdd(&v24, &lhs, &v22);
        lhs = v24;
        v22 = time;
        CMTimeSubtract(&v28, &lhs, &v22);
      }

      time = v28;
      value = CMTimeCopyAsDictionary(&time, a3);
      goto LABEL_8;
    }

    if (FigCFEqual())
    {
      value = v9[2];
      if (!value)
      {
        v17 = v9[1];
        CFGetAllocator(a1);
        v28.value = 0;
        FigSampleCursorServiceGetClassID();
        v18 = CMDerivedObjectCreate();
        if (v18)
        {
          v15 = v18;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
          FigSignalErrorAtGM();
          return v15;
        }

        v19 = CMBaseObjectGetDerivedStorage();
        *v19 = CFRetain(v17);
        value = v28.value;
        v9[2] = v28.value;
        if (!value)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        return 4294954512;
      }

      value = *v9;
      if (!*v9)
      {
        v20 = CFGetAllocator(a1);
        FormatDescriptionArray = ttmlFormatReader_createFormatDescriptionArray(v20, v9);
        if (FormatDescriptionArray)
        {
          return FormatDescriptionArray;
        }

        value = *v9;
        if (!*v9)
        {
LABEL_8:
          v15 = 0;
          *a4 = value;
          return v15;
        }
      }
    }

    value = CFRetain(value);
    goto LABEL_8;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();

  return FigSignalErrorAtGM();
}

uint64_t ttmlFormatReader_createFormatDescriptionArray(const __CFAllocator *a1, CFArrayRef *a2)
{
  formatDescriptionOut = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
LABEL_10:
    v4 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v4 = CMFormatDescriptionCreate(a1, 0x74657874u, 0x61697474u, 0, &formatDescriptionOut);
  if (!v4)
  {
    v5 = CFArrayCreate(a1, &formatDescriptionOut, 1, MEMORY[0x1E695E9C0]);
    if (v5)
    {
      v6 = 0;
      *a2 = v5;
      goto LABEL_5;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    goto LABEL_10;
  }

LABEL_11:
  v6 = v4;
LABEL_5:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  return v6;
}

uint64_t ttmlSampleCursor_StepAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  Count = CFArrayGetCount(*(DerivedStorage + 8));
  v8 = Count - 1;
  if (Count < 1)
  {
    return 4294954454;
  }

  if (v6 + a2 < Count)
  {
    v8 = (v6 + a2) & ~((v6 + a2) >> 63);
  }

  *DerivedStorage = v8;
  result = 0;
  if (a3)
  {
    *a3 = v8 - v6;
  }

  return result;
}

uint64_t ttmlFormatReader_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ttmlFormatReader_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ttmlFormatReader_CopyTrackByIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ttmlFormatReader_CopyTrackByID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void ttmlSampleCursorCreate_cold_1(int a1, CFTypeRef *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

uint64_t ttmlSampleCursorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ttmlSampleCursor_CopyProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t ttmlSampleCursor_Copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t fpm_timebaseRateChangedCallback()
{
  v0 = *(MEMORY[0x1E6960C98] + 16);
  v5 = *MEMORY[0x1E6960C98];
  v6 = v0;
  v7 = *(MEMORY[0x1E6960C98] + 32);
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    if (CMTimebaseGetRate(*(MutableBytePtr + 3)) != 0.0 && *(MutableBytePtr + 26) == 3)
    {
      *(MutableBytePtr + 13) = 0;
    }

    if (CMTimebaseGetRate(*(MutableBytePtr + 3)) >= 0.0)
    {
      if (MutableBytePtr[8553])
      {
        MutableBytePtr[8553] = 0;
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_8_6();
        FigNotificationCenterRemoveWeakListener();
      }
    }

    else if (!MutableBytePtr[8553])
    {
      MutableBytePtr[8553] = 1;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_8_6();
      FigNotificationCenterAddWeakListener();
    }

    fpm_durationAhead(MutableBytePtr, &v5);
    v4[0] = v5;
    v4[1] = v6;
    v4[2] = v7;
    fpm_updateStreamBufferDurationAhead(MutableBytePtr, v4);
    FigSimpleMutexUnlock();
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t fpm_streamCacheMissCallback()
{
  v53 = *MEMORY[0x1E69E9840];
  memset(&v50, 0, sizeof(v50));
  memset(&v49, 0, sizeof(v49));
  memset(&v48, 0, sizeof(v48));
  v46 = 0uLL;
  v47 = 0;
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    if (*(MutableBytePtr + 26) != 3)
    {
      CMTimeMake(&v48, 2000, 1000);
      CMTimebaseGetTime(&time1, *(MutableBytePtr + 3));
      time2 = **&MEMORY[0x1E6960CC0];
      v33 = *&time2.value;
      epoch = time2.epoch;
      v4 = CMTimeMaximum(&v50, &time1, &time2);
      OUTLINED_FUNCTION_24_2(v4, v5, v6, v7, v8, v9, v10, v11, v29, v31, v33, *(&v33 + 1), v35, v37, v39, v41, v42, v44, v46, *(&v46 + 1), v47, v48.value, *&v48.timescale, v48.epoch, v49.value, *&v49.timescale, v49.epoch, v12, v50.value);
      v13 = OUTLINED_FUNCTION_23_3();
      CMTimeSubtract(v15, v13, v14);
      *&time2.value = v34;
      time2.epoch = epoch;
      CMTimeMaximum(&v49, &time2, &time1);
      time1 = v49;
      if (!fpm_getPlayableDurationFromTime(MutableBytePtr, &time1, &v46, 0, 0, 0))
      {
        time2 = v49;
        v40 = v46;
        v16 = OUTLINED_FUNCTION_23_3();
        v19 = CMTimeAdd(v18, v16, v17);
        OUTLINED_FUNCTION_24_2(v19, v20, v21, v22, v23, v24, v25, v26, v30, v32, v34, *(&v34 + 1), v36, v38, v40, *(&v40 + 1), v43, v45, v46, *(&v46 + 1), v47, v48.value, *&v48.timescale, v48.epoch, time1.value, *&time1.timescale, time1.epoch, *&time1.value, v50.value);
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          *(MutableBytePtr + 13) = 3;
          if (dword_1EAF16BF0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v28 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            if (OUTLINED_FUNCTION_109_0(v28))
            {
              LODWORD(time2.value) = 136315394;
              *(&time2.value + 4) = "fpm_streamCacheMissCallback";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = MutableBytePtr;
              OUTLINED_FUNCTION_18_3();
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRetainProxyRetain();
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_0_20();
          FigDeferNotificationToDispatchQueue();
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t fpm_getPlayableDurationFromTime(uint64_t a1, CMTime *a2, uint64_t a3, _BYTE *a4, void *a5, void *a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v531 = *MEMORY[0x1E69E9840];
  timescale = 0;
  value = 0;
  v528 = 0;
  v527 = 0;
  memset(&v515, 0, sizeof(v515));
  v525 = *MEMORY[0x1E6960C68];
  v11 = *(MEMORY[0x1E6960C68] + 12);
  v526 = *(MEMORY[0x1E6960C68] + 8);
  v12 = *(MEMORY[0x1E6960C68] + 16);
  v13 = MEMORY[0x1E6960CC0];
  v14 = *MEMORY[0x1E6960CC0];
  v523 = *MEMORY[0x1E6960CC0];
  v15 = *(MEMORY[0x1E6960CC0] + 8);
  v16 = *(MEMORY[0x1E6960CC0] + 12);
  v524 = v15;
  v17 = *(MEMORY[0x1E6960CC0] + 16);
  HIWORD(v514) = 0;
  v512 = 0;
  cf = 0;
  v509 = 0u;
  v510 = 0u;
  v507 = 0u;
  v508 = 0u;
  v505 = 0u;
  v506 = 0u;
  v503 = 0;
  dictionaryRepresentation = 0;
  v501 = 0;
  v502 = 0;
  v18 = *(a1 + 80);
  if (v18 < 1)
  {
    v250 = 0;
    v445 = 0x7FFFFFFFFFFFFFFFLL;
    v457 = v17;
    HIDWORD(v469) = v16;
    BYTE4(v409) = 1;
    if (!v18)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v277 = v14;
  HIDWORD(v361) = v11;
  v301 = a3;
  v313 = a4;
  v325 = a5;
  v337 = a6;
  v421 = 0;
  v20 = 0;
  v349 = @"EndPresentationTimeForQueuedSamples";
  v433 = *MEMORY[0x1E695E480];
  v373 = @"EditCursorService";
  p_value = &a2->value;
  v445 = 0x7FFFFFFFFFFFFFFFLL;
  v457 = v17;
  HIDWORD(v409) = 1;
  v21 = v12;
  v289 = v17;
  v265 = __PAIR64__(v15, v16);
  HIDWORD(v469) = v16;
  v397 = v12;
  do
  {
    OUTLINED_FUNCTION_20_2();
    v23 = *(v22 + 32);
    v481 = v21;
    if (v23)
    {
      v24 = CFRetain(v23);
    }

    else
    {
      v24 = 0;
    }

    value = v10->value;
    flags = v10->flags;
    timescale = v10->timescale;
    epoch = v10->epoch;
    ++*(a1 + 64);
    FigSimpleMutexUnlock();
    if (v24)
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(v24);
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v28)
      {
        if (!v28(FigBaseObject, v349, v433, &dictionaryRepresentation))
        {
          CMTimeMakeFromDictionary(&time1, dictionaryRepresentation);
          v527 = time1.value;
          v29 = time1.flags;
          v528 = time1.timescale;
          v30 = time1.epoch;
          if (dictionaryRepresentation)
          {
            CFRelease(dictionaryRepresentation);
          }

          if (v29)
          {
            OUTLINED_FUNCTION_7_7();
            time2.value = v527;
            time2.timescale = v528;
            time2.flags = v29;
            time2.epoch = v30;
            if (CMTimeCompare(&time1, &time2) < 0)
            {
              value = v527;
              timescale = v528;
              flags = v29;
              epoch = v30;
            }
          }
        }
      }
    }

    FigSimpleMutexLock();
    v31 = *(a1 + 64) - 1;
    *(a1 + 64) = v31;
    if (v31)
    {
      if (!v24)
      {
        goto LABEL_17;
      }

LABEL_16:
      CFRelease(v24);
      goto LABEL_17;
    }

    MEMORY[0x19A8D12E0](*(a1 + 72));
    if (v24)
    {
      goto LABEL_16;
    }

LABEL_17:
    OUTLINED_FUNCTION_20_2();
    v33 = *(v32 + 8);
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v34)
    {
      v34(v33, &v501 + 4, &v501);
    }

    OUTLINED_FUNCTION_20_2();
    v36 = FigTrackReaderGetFigBaseObject(*(v35 + 8));
    v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v37)
    {
      v37(v36, v373, v433, &cf);
    }

    v38 = cf;
    if (cf)
    {
      v39 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v39)
      {
        time1 = **&MEMORY[0x1E6960C80];
        v39(v38, &time1, &v512);
      }
    }

    if (v512)
    {
      v519 = value;
      v520 = timescale;
      v518 = 0;
      v517 = 0;
      memset(&time1, 0, sizeof(time1));
      memset(&time2, 0, sizeof(time2));
      v40 = *MEMORY[0x1E6960C68];
      v515.epoch = v12;
      *&v515.value = v40;
      HIBYTE(v514) = 1;
      while (1)
      {
        v41 = v512;
        v42 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v42)
        {
          v249 = 4294954514;
          goto LABEL_95;
        }

        v43 = v42(v41, &v505);
        if (v43)
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_13_4();
        v52 = OUTLINED_FUNCTION_12_5(v44, v45, v46, v47, v48, v49, v50, v51, v253, v265, v277, v289, v301, v313, v325, v337, v349, v361, v373, p_value, v397, v409, v421, v433, v445, v457, v469, v481, *(&v509 + 1), v510, *(&v510 + 1), v494, immediateSourceTime.value);
        CMTimeAdd(v53, v52, &rhs);
        v54 = timebaseTime.value;
        v55 = timebaseTime.timescale;
        v521 = *&timebaseTime.flags;
        epoch_high = HIDWORD(timebaseTime.epoch);
        OUTLINED_FUNCTION_6_11();
        v64 = OUTLINED_FUNCTION_12_5(v56, v57, v58, v59, v60, v61, v62, v63, v254, v266, v278, v290, v302, v314, v326, v338, v350, v362, v374, v386, v398, v410, v422, v434, v446, v458, v470, v482, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value);
        CMTimeConvertScale(v66, v64, v65, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        OUTLINED_FUNCTION_13_4();
        if (CMTimeCompare(&immediateSourceTime, &timebaseTime) <= 0)
        {
          OUTLINED_FUNCTION_6_11();
          v75 = OUTLINED_FUNCTION_12_5(v67, v68, v69, v70, v71, v72, v73, v74, v253, v265, v277, v289, v301, v313, v325, v337, v349, v361, v373, p_value, v397, v409, v421, v433, v445, v457, v469, v481, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value);
          v77 = CMTimeConvertScale(v76, v75, v55, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          immediateSourceTime.timescale = v55;
          *&immediateSourceTime.flags = v521;
          HIDWORD(immediateSourceTime.epoch) = epoch_high;
          v85 = OUTLINED_FUNCTION_17_5(v77, v78, v79, v80, v81, v82, v83, v84, v255, v267, v279, v291, v303, v315, v327, v339, v351, v363, v375, v387, v399, v411, v423, v435, v447, v459, v471, v483, rhs.value, *&rhs.timescale, rhs.epoch, v494, v54, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v496, timebaseTime.value);
          v87 = CMTimeCompare(v85, v86);
          if ((v87 & 0x80000000) != 0)
          {
            break;
          }
        }

LABEL_48:
        v215 = v512;
        VTable = CMBaseObjectGetVTable();
        v225 = *(VTable + 16);
        v224 = (VTable + 16);
        v226 = *(v225 + 16);
        if (v226)
        {
          v224 = v226(v215, 1);
          if (!v224)
          {
            continue;
          }
        }

        goto LABEL_55;
      }

      if (BYTE12(v505))
      {
        *&timebaseTime.timescale = v507;
        v105 = OUTLINED_FUNCTION_17_5(v87, v88, v89, v90, v91, v92, v93, v94, v253, v265, v277, v289, v301, v313, v325, v337, v349, v361, v373, p_value, v397, v409, v421, v433, v445, v457, v469, v481, rhs.value, *&rhs.timescale, rhs.epoch, v494, *(&v509 + 1), v510, *(&v510 + 1), v496, SBYTE8(v506));
        if (CMTimeCompare(v105, v106))
        {
          v107 = *(&v506 + 1) / v507 * v510 / *(&v509 + 1);
        }

        else
        {
          v107 = 1.0;
        }

        v108 = *(a1 + 40);
        *&timebaseTime.value = v505;
        timebaseTime.epoch = v506;
        *&immediateSourceTime.value = v508;
        immediateSourceTime.epoch = v509;
        v43 = CMTimebaseSetRateAndAnchorTime(v108, v107, &timebaseTime, &immediateSourceTime);
        if (v43)
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_2_18();
        OUTLINED_FUNCTION_13_4();
        v117 = OUTLINED_FUNCTION_17_5(v109, v110, v111, v112, v113, v114, v115, v116, v257, v269, v281, v293, v305, v317, v329, v341, v353, v365, v377, v389, v401, v413, v425, v437, v449, v461, v473, v485, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v496, timebaseTime.value);
        v119 = CMTimeCompare(v117, v118);
        if (v119)
        {
          OUTLINED_FUNCTION_2_18();
          v119 = CMSyncConvertTime(&time1, &timebaseTime, v124, v125);
        }

        else
        {
          *&time1.value = v505;
          time1.epoch = v506;
        }

        v43 = OUTLINED_FUNCTION_29_3(v119, v120, &timebaseTime, &time2, &v514 + 6, v121, v122, v123, v258, v270, v282, v294, v306, v318, v330, v342, v354, v366, v378, v390, v402, v414, v426, v438, v450, v462, v474, v486, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v496, time1.value, *&time1.timescale, time1.epoch, v498, time2.value, *&time2.timescale, time2.epoch, v500, v501, v502, v503);
        if (v43)
        {
          goto LABEL_102;
        }

        if (BYTE6(v514))
        {
          v517 = v521;
          v518 = epoch_high;
LABEL_46:
          OUTLINED_FUNCTION_6_11();
          OUTLINED_FUNCTION_15_5();
          v193 = OUTLINED_FUNCTION_12_5(v185, v186, v187, v188, v189, v190, v191, v192, v259, v271, v283, v295, v307, v319, v331, v343, v355, v367, v379, v391, v403, v415, v427, v439, v451, v463, v475, v487, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value);
          v195 = CMTimeAdd(v194, v193, &rhs);
          flags = timebaseTime.flags;
          v520 = timebaseTime.timescale;
          v519 = timebaseTime.value;
          epoch = timebaseTime.epoch;
          *&immediateSourceTime.timescale = *&timebaseTime.timescale;
          immediateSourceTime.epoch = timebaseTime.epoch;
          v203 = OUTLINED_FUNCTION_12_5(v195, v196, v197, v198, v199, v200, v201, v202, v263, v275, v287, v299, v311, v323, v335, v347, v359, v371, v383, v395, v407, v419, v431, v443, v455, v467, v479, v491, rhs.value, *&rhs.timescale, rhs.epoch, v494, timebaseTime.value);
          CMTimeConvertScale(v204, v203, v55, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          OUTLINED_FUNCTION_4_14();
          v213 = OUTLINED_FUNCTION_17_5(v205, v206, v207, v208, v209, v210, v211, v212, v264, v276, v288, v300, v312, v324, v336, v348, v360, v372, v384, v396, v408, v420, v432, v444, v456, v468, v480, v492, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v496, timebaseTime.value);
          if (CMTimeCompare(v213, v214) < 0)
          {
            OUTLINED_FUNCTION_2_18();
            v10 = p_value;
            v246 = OUTLINED_FUNCTION_17_5(v238, v239, v240, v241, v242, v243, v244, v245, v253, v265, v277, v289, v301, v313, v325, v337, v349, v361, v373, p_value, v397, v409, v421, v433, v445, v457, v469, v481, rhs.value, *&rhs.timescale, rhs.epoch, v494, *p_value, p_value[1], p_value[2], v496, timebaseTime.value);
            v224 = CMTimeSubtract(v248, v246, v247);
            HIBYTE(v514) = 0;
            v12 = v397;
            goto LABEL_55;
          }

          v10 = p_value;
          v12 = v397;
          goto LABEL_48;
        }

        CMSyncGetRelativeRate(*(a1 + 32), *(a1 + 40));
        *&immediateSourceTime.timescale = *&time2.timescale;
        immediateSourceTime.epoch = time2.epoch;
        v134 = OUTLINED_FUNCTION_12_5(v126, v127, v128, v129, v130, v131, v132, v133, v259, v271, v283, v295, v307, v319, v331, v343, v355, v367, v379, v391, v403, v415, v427, v439, v451, v463, v475, v487, rhs.value, *&rhs.timescale, rhs.epoch, v494, time2.value);
        v137 = CMTimeMultiplyByFloat64(v135, v134, v136);
        OUTLINED_FUNCTION_16_5(v137, v138, v139, v140, v141, v142, v143, v144, v260, v272, v284, v296, v308, v320, v332, v344, v356, v368, v380, v392, v404, v416, v428, v440, v452, v464, v476, v488, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v496, timebaseTime.value, *&timebaseTime.timescale);
        *&timebaseTime.timescale = *&time2.timescale;
        timebaseTime.epoch = time2.epoch;
        v153 = OUTLINED_FUNCTION_17_5(v145, v146, v147, v148, v149, v150, v151, v152, v261, v273, v285, v297, v309, v321, v333, v345, v357, v369, v381, v393, v405, v417, v429, v441, v453, v465, v477, v489, rhs.value, *&rhs.timescale, rhs.epoch, v494, *(&v506 + 1), v507, *(&v507 + 1), v496, time2.value);
        if (CMTimeCompare(v153, v154))
        {
          OUTLINED_FUNCTION_2_18();
          OUTLINED_FUNCTION_15_5();
          v155 = CMTimeAdd(&immediateSourceTime, &timebaseTime, &rhs);
          v163 = OUTLINED_FUNCTION_12_5(v155, v156, v157, v158, v159, v160, v161, v162, v259, v271, v283, v295, v307, v319, v331, v343, v355, v367, v379, v391, v403, v415, v427, v439, v451, v463, v475, v487, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value);
          CMTimeConvertScale(v164, v163, v55, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          OUTLINED_FUNCTION_4_14();
          v173 = OUTLINED_FUNCTION_17_5(v165, v166, v167, v168, v169, v170, v171, v172, v262, v274, v286, v298, v310, v322, v334, v346, v358, v370, v382, v394, v406, v418, v430, v442, v454, v466, v478, v490, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v496, timebaseTime.value);
          if (CMTimeCompare(v173, v174) < 1)
          {
            goto LABEL_46;
          }
        }

        OUTLINED_FUNCTION_4_14();
        v183 = OUTLINED_FUNCTION_12_5(v175, v176, v177, v178, v179, v180, v181, v182, v259, v271, v283, v295, v307, v319, v331, v343, v355, v367, v379, v391, v403, v415, v427, v439, v451, v463, v475, v487, v519, __SPAIR64__(flags, v520), epoch, v494, immediateSourceTime.value);
        v97 = CMTimeSubtract(v184, v183, &rhs);
      }

      else
      {
        immediateSourceTime.timescale = v55;
        *&immediateSourceTime.flags = v521;
        HIDWORD(immediateSourceTime.epoch) = epoch_high;
        v95 = OUTLINED_FUNCTION_12_5(v87, v88, v89, v90, v91, v92, v93, v94, v253, v265, v277, v289, v301, v313, v325, v337, v349, v361, v373, p_value, v397, v409, v421, v433, v445, v457, v469, v481, v519, __SPAIR64__(flags, v520), epoch, v494, v54);
        v97 = CMTimeSubtract(v96, v95, &rhs);
      }

      OUTLINED_FUNCTION_16_5(v97, v98, v99, v100, v101, v102, v103, v104, v256, v268, v280, v292, v304, v316, v328, v340, v352, v364, v376, v388, v400, v412, v424, v436, v448, v460, v472, v484, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v496, timebaseTime.value, *&timebaseTime.timescale);
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_7_7();
    v43 = OUTLINED_FUNCTION_29_3(v227, v228, &time1, &v515, &v514 + 7, v229, v230, v231, v253, v265, v277, v289, v301, v313, v325, v337, v349, v361, v373, p_value, v397, v409, v421, v433, v445, v457, v469, v481, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v496, timebaseTime.value, *&timebaseTime.timescale, timebaseTime.epoch, v498, time2.value, *&time2.timescale, time2.epoch, v500, v501, v502, v503);
    if (v43)
    {
LABEL_102:
      v249 = v43;
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_7_7();
    timebaseTime = *v10;
    CMTimeSubtract(&time2, &time1, &timebaseTime);
    timebaseTime = v515;
    v224 = CMTimeAdd(&time1, &timebaseTime, &time2);
    v515 = time1;
LABEL_55:
    v21 = v481;
    if (HIBYTE(v514))
    {
      time1.value = v523;
      time1.timescale = v524;
      time1.flags = HIDWORD(v469);
      time1.epoch = v457;
      if ((OUTLINED_FUNCTION_22_4(v224, v217, v218, v219, v220, v221, v222, v223, v253, v265, v277, v289, v301, v313, v325, v337, v349, v361, v373, p_value, v397, v409, v421, v433, v445, v457, v469, v481, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v496, timebaseTime.value, *&timebaseTime.timescale, timebaseTime.epoch, v498, *&time2.value, time2.epoch, v500, v501, v502, v503, dictionaryRepresentation, v505, *(&v505 + 1), v506, *(&v506 + 1), v507, *(&v507 + 1), v508, v509, *(&v509 + 1), v510, *(&v510 + 1), v511, v512, cf, v514, *&v515.value) & 0x80000000) != 0)
      {
        v523 = v515.value;
        HIDWORD(v469) = v515.flags;
        v524 = v515.timescale;
        v457 = v515.epoch;
      }
    }

    else
    {
      v232 = v445;
      v233 = v445 <= v503;
      if (v445 >= v503)
      {
        v232 = v503;
      }

      v445 = v232;
      v234 = v421;
      if (!v233)
      {
        v234 = v502;
      }

      v421 = v234;
      v236 = v501 == 1835365473 || v501 == 1986618469 || v501 == 1936684398;
      if (v236 && (time1.value = v525, time1.timescale = v526, time1.flags = HIDWORD(v361), time1.epoch = v481, OUTLINED_FUNCTION_22_4(v224, v217, v218, v219, v220, v221, v222, v223, v253, v265, v277, v289, v301, v313, v325, v337, v349, v361, v373, p_value, v397, v409, v234, v433, v232, v457, v469, v481, rhs.value, *&rhs.timescale, rhs.epoch, v494, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v496, timebaseTime.value, *&timebaseTime.timescale, timebaseTime.epoch, v498, *&time2.value, time2.epoch, v500, v501, v502, v503, dictionaryRepresentation, v505, *(&v505 + 1), v506, *(&v506 + 1), v507, *(&v507 + 1), v508, v509, *(&v509 + 1), v510, *(&v510 + 1), v511, v512, cf, v514, *&v515.value) >= 1))
      {
        HIDWORD(v409) = 0;
        v525 = v515.value;
        HIDWORD(v361) = v515.flags;
        v526 = v515.timescale;
        v21 = v515.epoch;
      }

      else
      {
        HIDWORD(v409) = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v512)
    {
      CFRelease(v512);
      v512 = 0;
    }

    ++v20;
    v237 = *(a1 + 80);
  }

  while (v20 < v237);
  v12 = v21;
  v7 = v325;
  v6 = v337;
  v9 = v301;
  v8 = v313;
  v250 = v421;
  v11 = HIDWORD(v361);
  v13 = MEMORY[0x1E6960CC0];
  v14 = v277;
  v17 = v289;
  v16 = v265;
  v15 = HIDWORD(v265);
  if (!v237)
  {
LABEL_82:
    v525 = v14;
    v526 = v15;
    v11 = v16;
    v12 = v17;
  }

LABEL_83:
  if ((v11 & 0x1D) != 1)
  {
    v525 = v523;
    v526 = v524;
    v11 = HIDWORD(v469);
    v12 = v457;
  }

  time1 = *v10;
  *&time2.value = *v13;
  time2.epoch = v17;
  if (CMTimeCompare(&time1, &time2))
  {
    v251 = v10->timescale;
    time2.value = v525;
    time2.timescale = v526;
    time2.flags = v11;
    time2.epoch = v12;
    CMTimeConvertScale(&time1, &time2, v251, kCMTimeRoundingMethod_RoundAwayFromZero);
    v525 = time1.value;
    v11 = time1.flags;
    v526 = time1.timescale;
    v12 = time1.epoch;
  }

  if (v9)
  {
    *v9 = v525;
    *(v9 + 8) = v526;
    *(v9 + 12) = v11;
    *(v9 + 16) = v12;
  }

  if (v8)
  {
    *v8 = BYTE4(v409);
  }

  if (v7)
  {
    *v7 = v445;
  }

  v249 = 0;
  if (v6)
  {
    *v6 = v250;
  }

LABEL_95:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v512)
  {
    CFRelease(v512);
  }

  return v249;
}

double fpm_durationAhead(uint64_t a1, _OWORD *a2)
{
  memset(&v8, 0, sizeof(v8));
  if (a2)
  {
    CMTimebaseGetTime(&time1.start, *(a1 + 24));
    time2 = **&MEMORY[0x1E6960CC0];
    CMTimeMaximum(&v8, &time1.start, &time2);
    OUTLINED_FUNCTION_27_3();
    time2 = *(a1 + 216);
    if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0 && (OUTLINED_FUNCTION_27_3(), time2 = *(a1 + 240), CMTimeCompare(&time1.start, &time2) < 0))
    {
      *&time1.start.value = *(a1 + 240);
      time1.start.epoch = *(a1 + 256);
      OUTLINED_FUNCTION_28_4();
      CMTimeSubtract(&time2, &time1.start, &v6);
    }

    else
    {
      CMTimeMake(&time2, 0, 1000000000);
    }

    OUTLINED_FUNCTION_28_4();
    CMTimeRangeMake(&time1, &v6, &time2);
    v4 = *&time1.start.epoch;
    *a2 = *&time1.start.value;
    a2[1] = v4;
    result = *&time1.duration.timescale;
    a2[2] = *&time1.duration.timescale;
  }

  return result;
}

uint64_t fpm_updateStreamBufferDurationAhead(uint64_t result, uint64_t a2)
{
  v9 = 0;
  if (*(result + 8640))
  {
    v2 = result;
    result = *(result + 16);
    if (result)
    {
      CMByteStreamGetCMBaseObject();
      FigCRABSGetClassID();
      result = CMBaseObjectIsMemberOfClass();
      if (result)
      {
        CMBaseObject = CMByteStreamGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v6 = *(VTable + 8);
        result = VTable + 8;
        v7 = *(v6 + 48);
        if (!v7)
        {
          goto LABEL_16;
        }

        result = v7(CMBaseObject, *MEMORY[0x1E695FF80], *MEMORY[0x1E695E480], &v9);
        if (result)
        {
          goto LABEL_16;
        }

        Value = CFBooleanGetValue(v9);
        if (v9)
        {
          CFRelease(v9);
        }

        result = FigNetworkUrgencyMonitorSetStreamFullyAvailable(*(v2 + 8640), Value);
        if (!Value)
        {
LABEL_16:
          if ((*(a2 + 12) & 1) != 0 && (*(a2 + 36) & 1) != 0 && !*(a2 + 40) && (*(a2 + 24) & 0x8000000000000000) == 0)
          {
            return FigNetworkUrgencyMonitorSetPlayableRange(*(v2 + 8640));
          }
        }
      }
    }
  }

  return result;
}

void fpm_likelyToKeepUpUsingLivePlaybackAlgorithm(uint64_t a1, int a2, double a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v47 = **&MEMORY[0x1E6960C70];
  cf = 0;
  BOOLean = 0;
  valuePtr = 0.0;
  number = 0;
  v41 = 0.0;
  v42 = 0.0;
  if (FigFormatReaderUtilityGetDuration(*(a1 + 8), 1, &v47))
  {
    return;
  }

  OUTLINED_FUNCTION_29();
  if (!v6)
  {
    return;
  }

  v7 = MEMORY[0x1E695E480];
  if (*(a1 + 104) != 1)
  {
    CMTimebaseGetTime(&time1, *(a1 + 24));
    time2 = **&MEMORY[0x1E6960CC0];
    CMTimeMaximum(&v40, &time1, &time2);
    value = v40.value;
    timescale = v40.timescale;
    if ((v40.flags & 0x1D) != 1)
    {
      return;
    }

    time1.value = value;
    time1.timescale = timescale;
    time1.flags = v40.flags;
    time1.epoch = v40.epoch;
    Seconds = CMTimeGetSeconds(&time1);
    time1 = v47;
    v9 = CMTimeGetSeconds(&time1);
    v10 = 0.0;
    if (v9 <= Seconds)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v9 - Seconds;
    }

    v12 = *v7;
    if (*(a1 + 104) != 1)
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23 && !v23(CMBaseObject, *MEMORY[0x1E695FF80], v12, &BOOLean))
      {
        v13 = CFBooleanGetValue(BOOLean);
        CFRelease(BOOLean);
      }

      else
      {
        v13 = 0;
      }

      if (v9 <= 0.0 || v13)
      {
LABEL_11:
        v14 = CMByteStreamGetCMBaseObject();
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        v16 = 1.0;
        if (v15 && !v15(v14, *MEMORY[0x1E695FF98], v12, &cf))
        {
          FigCFDictionaryGetDoubleIfPresent();
          FigCFDictionaryGetDoubleIfPresent();
          if (v42 != 0.0)
          {
            v16 = v41 / v42 + 1.0;
          }

          CFRelease(cf);
        }

        if (*(a1 + 104) == 1)
        {
          goto LABEL_40;
        }

        if (v13 || v11 - a3 <= 0.1)
        {
          goto LABEL_24;
        }

        v17 = a3 < 3.33333333;
        if (v10 > v42)
        {
          v17 = 1;
        }

        if (a3 >= 5.0 || !v17 || fpm_isLikelyToKeepUp(a1, 0, Seconds, a3, v42, v16))
        {
LABEL_24:
          itemfig_createDurationDictionary(a3);
          *(a1 + 104) = 0x3F80000000000001;
          if (dword_1EAF16BF0)
          {
            v18 = OUTLINED_FUNCTION_3_13();
            v19 = v40.value;
            if (os_log_type_enabled(v18, type))
            {
              v20 = v19;
            }

            else
            {
              v20 = v19 & 0xFFFFFFFE;
            }

            if (v20)
            {
              LODWORD(time2.value) = 136315650;
              *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLivePlaybackAlgorithm";
              OUTLINED_FUNCTION_10_6();
              HIWORD(time2.epoch) = v21;
              v49 = a3;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_11_6();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
          if (*(a1 + 104) == 2)
          {
LABEL_40:
            if (dword_1EAF16BF0)
            {
              v26 = OUTLINED_FUNCTION_3_13();
              v27 = os_log_type_enabled(v26, type);
              if (OUTLINED_FUNCTION_109_0(v27))
              {
                LODWORD(time2.value) = 136316674;
                *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLivePlaybackAlgorithm";
                OUTLINED_FUNCTION_10_6();
                HIWORD(time2.epoch) = v28;
                v49 = v29;
                v50 = v28;
                v51 = 0.0;
                v52 = v28;
                v53 = v30;
                v54 = v28;
                v55 = v9 - v11;
                v56 = v28;
                v57 = a3;
                OUTLINED_FUNCTION_145();
                OUTLINED_FUNCTION_11_6();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_44;
          }

          *(a1 + 104) = 2;
          if (dword_1EAF16BF0)
          {
            v35 = OUTLINED_FUNCTION_3_13();
            v36 = v40.value;
            if (os_log_type_enabled(v35, type))
            {
              v37 = v36;
            }

            else
            {
              v37 = v36 & 0xFFFFFFFE;
            }

            if (v37)
            {
              LODWORD(time2.value) = 136315906;
              *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLivePlaybackAlgorithm";
              OUTLINED_FUNCTION_10_6();
              HIWORD(time2.epoch) = v38;
              v49 = 0.0;
              v50 = v38;
              v51 = v11;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_11_6();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        FigRetainProxyRetain();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_0_20();
        FigDeferNotificationToDispatchQueue();
        goto LABEL_40;
      }

      v24 = CMByteStreamGetCMBaseObject();
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25 && !v25(v24, *MEMORY[0x1E695FF78], v12, &number))
      {
        CFNumberGetValue(number, kCFNumberFloat64Type, &valuePtr);
        CFRelease(number);
        v13 = 0;
        v10 = valuePtr / v9 * 1.5;
        goto LABEL_11;
      }
    }

    v13 = 0;
    goto LABEL_11;
  }

LABEL_44:
  if (a2)
  {
    if (*(a1 + 104) != 1)
    {
      *(a1 + 104) = 2;
      v31 = *(a1 + 96);
      if (*(a1 + 100) != v31)
      {
        *(a1 + 100) = v31;
        if (dword_1EAF16BF0)
        {
          v32 = OUTLINED_FUNCTION_3_13();
          v33 = v40.value;
          if (os_log_type_enabled(v32, type))
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 & 0xFFFFFFFE;
          }

          if (v34)
          {
            LODWORD(time2.value) = 136315394;
            *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLivePlaybackAlgorithm";
            OUTLINED_FUNCTION_10_6();
            OUTLINED_FUNCTION_145();
            OUTLINED_FUNCTION_11_6();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRetainProxyRetain();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_0_20();
        FigDeferNotificationToDispatchQueue();
      }
    }
  }
}

uint64_t FigPlayabilityMonitorCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayabilityMonitorCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayabilityMonitorCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayabilityMonitorCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayabilityMonitorCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayabilityMonitorCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayabilityMonitorCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayabilityMonitorCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayabilityMonitorCreate_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayabilityMonitorCreate_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpm_prepareDataRateProfile_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpm_prepareDataRateProfile_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLNodeGetActiveTimeRange(uint64_t a1, uint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    memset(&v62, 0, sizeof(v62));
    if ((*(DerivedStorage + 44) & 1) != 0 && (*(DerivedStorage + 68) & 1) != 0 && !*(DerivedStorage + 72) && (*(DerivedStorage + 56) & 0x8000000000000000) == 0)
    {
      result = 0;
      v8 = *(v6 + 32);
      v9 = *(v6 + 64);
      *(a2 + 16) = *(v6 + 48);
      *(a2 + 32) = v9;
      *a2 = v8;
      return result;
    }

    result = figTTMLNodeGetUnclippedTimeRange(a1, &v62);
    if (!result)
    {
      v10 = *CMBaseObjectGetDerivedStorage();
      if (!v10)
      {
        start = **&MEMORY[0x1E6960CC0];
        OUTLINED_FUNCTION_107(MEMORY[0x1E6960C68]);
        v11 = CMTimeRangeMake(&v61[8], &start, &v58.start);
        OUTLINED_FUNCTION_3_14(v11, v12, v13, v14, v15, v16, v17, v18, v58.start.value, *&v58.start.timescale, v58.start.epoch, v58.duration.value, *&v58.duration.timescale, v58.duration.epoch, start.value, *&start.timescale, start.epoch, v60, *(&v60 + 1), *v61, *&v61[8], *&v61[16]);
        v19 = *&v61[32];
        epoch = *&v61[24];
        v21 = *&v61[40];
        v22 = *&v61[44];
        v23 = *&v61[48];
LABEL_10:
        result = 0;
        timescale = otherRange.start.timescale;
        value = otherRange.start.value;
        *(v6 + 32) = otherRange.start.value;
        *(v6 + 40) = timescale;
        *(v6 + 44) = flags;
        *(v6 + 48) = epoch;
        *(v6 + 56) = v19;
        *(v6 + 64) = v21;
        *(v6 + 68) = v22;
        *(v6 + 72) = v23;
        *a2 = value;
        *(a2 + 8) = timescale;
        *(a2 + 12) = flags;
        *(a2 + 16) = epoch;
        *(a2 + 24) = v19;
        *(a2 + 32) = v21;
        *(a2 + 36) = v22;
        *(a2 + 40) = v23;
        return result;
      }

      memset(&v61[8], 0, 48);
      result = FigTTMLNodeGetActiveTimeRange(v10, &v61[8]);
      if (!result)
      {
        v58 = v62;
        otherRange = *&v61[8];
        CMTimeRangeGetIntersection(&start, &v58, &otherRange);
        otherRange.start.value = start.value;
        flags = start.flags;
        otherRange.start.timescale = start.timescale;
        epoch = start.epoch;
        v19 = v60;
        v21 = DWORD2(v60);
        v22 = HIDWORD(v60);
        v23 = *v61;
        if ((start.flags & 1) != 0 && (BYTE12(v60) & 1) != 0 && !*v61 && (v60 & 0x8000000000000000) == 0)
        {
          *&start.value = v60;
          start.epoch = 0;
          OUTLINED_FUNCTION_107(MEMORY[0x1E6960CC0]);
          v26 = CMTimeCompare(&start, &v58.start);
          if (!v26)
          {
            OUTLINED_FUNCTION_4_15(v26, v27, v28, v29, v30, v31, v32, v33, v58.start.value, *&v58.start.timescale, v58.start.epoch, v58.duration.value, *&v58.duration.timescale, v58.duration.epoch, start.value, *&start.timescale, start.epoch, v60, *(&v60 + 1), *v61, *&v61[8], *&v61[16], *&v61[24], *&v61[32], *&v61[40], *&v61[48], *&v62.start.value);
            *&v58.start.value = *&v61[8];
            v58.start.epoch = *&v61[24];
            v34 = CMTimeCompare(&start, &v58.start);
            if (v34 <= 0)
            {
              OUTLINED_FUNCTION_3_14(v34, v35, v36, v37, v38, v39, v40, v41, v58.start.value, *&v58.start.timescale, v58.start.epoch, v58.duration.value, *&v58.duration.timescale, v58.duration.epoch, start.value, *&start.timescale, start.epoch, v60, *(&v60 + 1), *v61, *&v61[8], *&v61[16]);
              epoch = *&v61[24];
            }

            else
            {
              v42 = OUTLINED_FUNCTION_2_19(v34, v35, v36, v37, v38, v39, v40, v41, v58.start.value, *&v58.start.timescale, v58.start.epoch, v58.duration.value, *&v58.duration.timescale, v58.duration.epoch, start.value, *&start.timescale, v60, *v61, *&v61[16], *&v61[24], *&v61[40]);
              OUTLINED_FUNCTION_4_15(v42, v43, v44, v45, v46, v47, v48, v49, v58.start.value, *&v58.start.timescale, v58.start.epoch, v58.duration.value, *&v58.duration.timescale, v58.duration.epoch, start.value, *&start.timescale, start.epoch, v60, *(&v60 + 1), *v61, *&v61[8], *&v61[16], *&v61[24], *&v61[32], *&v61[40], *&v61[48], *&v62.start.value);
              v50 = CMTimeCompare(&v58.start, &start);
              if (v50 < 0)
              {
                OUTLINED_FUNCTION_2_19(v50, v51, v52, v53, v54, v55, v56, v57, v58.start.value, *&v58.start.timescale, v58.start.epoch, v58.duration.value, *&v58.duration.timescale, v58.duration.epoch, start.value, *&start.timescale, v60, *v61, *&v61[16], *&v61[24], *&v61[40]);
                otherRange.start.value = v58.start.value;
                flags = v58.start.flags;
                otherRange.start.timescale = v58.start.timescale;
                epoch = v58.start.epoch;
              }

              else
              {
                otherRange.start.value = v62.start.value;
                flags = v62.start.flags;
                otherRange.start.timescale = v62.start.timescale;
                epoch = v62.start.epoch;
              }
            }
          }
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t figTTMLNodeGetUnclippedTimeRange(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if ((*(DerivedStorage + 92) & 1) != 0 && (*(DerivedStorage + 116) & 1) != 0 && !*(DerivedStorage + 120) && (*(DerivedStorage + 104) & 0x8000000000000000) == 0)
    {
      result = 0;
      v38 = *(v5 + 80);
      v39 = *(v5 + 112);
      *(a2 + 16) = *(v5 + 96);
      *(a2 + 32) = v39;
      *a2 = v38;
      return result;
    }

    v65 = 0;
    v62 = 0u;
    v63 = 0u;
    *v64 = 0u;
    result = FigTTMLNodeGetParameters(a1, &v65);
    if (!result)
    {
      v7 = *(v5 + 24);
      v8 = v65;
      v9 = MEMORY[0x1E6960CC0];
      v59 = *MEMORY[0x1E6960CC0];
      *&v61.start.value = *MEMORY[0x1E6960CC0];
      v10 = *(MEMORY[0x1E6960CC0] + 16);
      v61.start.epoch = v10;
      v58 = *MEMORY[0x1E6960C68];
      *&start.start.value = *MEMORY[0x1E6960C68];
      v11 = *(MEMORY[0x1E6960C68] + 16);
      start.start.epoch = v11;
      value = 0;
      if (!CFDictionaryGetValueIfPresent(v7, @"begin", &value) || (result = FigTTMLParseTimeExpression(v8, value, &v61.start), !result))
      {
        if (!CFDictionaryGetValueIfPresent(v7, @"dur", &value) || (result = FigTTMLParseTimeExpression(v8, value, &start.start), !result))
        {
          if (CFDictionaryGetValueIfPresent(v7, @"end", &value))
          {
            memset(&v67, 0, sizeof(v67));
            result = FigTTMLParseTimeExpression(v8, value, &v67);
            if (result)
            {
              return result;
            }

            lhs = v67;
            rhs = v61.start;
            CMTimeSubtract(&duration, &lhs, &rhs);
            start.start = duration;
          }

          v67 = v61.start;
          rhs.value = start.start.value;
          flags = start.start.flags;
          rhs.timescale = start.start.timescale;
          epoch = start.start.epoch;
          v14 = *CMBaseObjectGetDerivedStorage();
          if (!v14)
          {
            *&start.start.value = v59;
            start.start.epoch = v10;
            *&duration.value = v58;
            duration.epoch = v11;
            v15 = CMTimeRangeMake(&v61, &start.start, &duration);
            v35 = OUTLINED_FUNCTION_0_21(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v58, *(&v58 + 1), v59, *(&v59 + 1), start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v61.start.value, v61.start.timescale, v61.start.epoch, v61.duration.value, *&v61.duration.timescale);
LABEL_15:
            result = 0;
            timescale = duration.timescale;
            v37 = duration.value;
            *(v5 + 80) = duration.value;
            *(v5 + 88) = timescale;
            *(v5 + 92) = v31;
            *(v5 + 96) = v32;
            *(v5 + 104) = v33;
            *(v5 + 112) = v35;
            *(v5 + 120) = v34;
            *a2 = v37;
            *(a2 + 8) = timescale;
            *(a2 + 12) = v31;
            *(a2 + 16) = v32;
            *(a2 + 24) = v33;
            *(a2 + 32) = v35;
            *(a2 + 40) = v34;
            return result;
          }

          value = 0;
          result = figTTMLNodeGetUnclippedTimeRange(v14, &v62);
          if (!result)
          {
            result = FigTTMLNodeGetTimeContainerSemantics(v14, &value);
            if (!result)
            {
              if (CFEqual(value, @"par"))
              {
                goto LABEL_25;
              }

              v40 = *(CMBaseObjectGetDerivedStorage() + 8);
              if ((~flags & 0x11) == 0)
              {
                rhs.value = *v9;
                flags = *(v9 + 12);
                rhs.timescale = *(v9 + 8);
                epoch = v10;
              }

              if (v40 == v14)
              {
LABEL_25:
                *&v61.start.value = v62;
                v61.start.epoch = v63;
                duration = v67;
                CMTimeAdd(&start.start, &v61.start, &duration);
                duration.value = rhs.value;
                duration.timescale = rhs.timescale;
                duration.flags = flags;
                duration.epoch = epoch;
                v41 = CMTimeRangeMake(&v61, &start.start, &duration);
                v35 = OUTLINED_FUNCTION_0_21(v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v58, *(&v58 + 1), v59, *(&v59 + 1), start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v61.start.value, v61.start.timescale, v61.start.epoch, v61.duration.value, *&v61.duration.timescale);
                if ((v31 & 1) == 0)
                {
                  goto LABEL_32;
                }

                goto LABEL_26;
              }

              memset(&v61, 0, sizeof(v61));
              result = figTTMLNodeGetUnclippedTimeRange(v40, &v61);
              if (!result)
              {
                start = v61;
                CMTimeRangeGetEnd(&lhs, &start);
                start.start = v67;
                CMTimeAdd(&duration, &lhs, &start.start);
                lhs.value = rhs.value;
                lhs.timescale = rhs.timescale;
                lhs.flags = flags;
                lhs.epoch = epoch;
                CMTimeRangeMake(&start, &duration, &lhs);
                duration.value = start.start.value;
                v31 = start.start.flags;
                duration.timescale = start.start.timescale;
                v32 = start.start.epoch;
                v33 = start.duration.value;
                v57 = start.duration.epoch;
                v35 = *&start.duration.timescale;
                if ((start.start.flags & 1) == 0)
                {
                  goto LABEL_32;
                }

LABEL_26:
                if ((BYTE4(v35) & 1) != 0 && !v57 && (v33 & 0x8000000000000000) == 0)
                {
                  v34 = 0.0;
                  goto LABEL_15;
                }

LABEL_32:
                duration.value = v62;
                v31 = HIDWORD(v62);
                duration.timescale = DWORD2(v62);
                v33 = *(&v63 + 1);
                v32 = v63;
                v34 = v64[1];
                v35 = v64[0];
                goto LABEL_15;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigTTMLNodeCopyNodeValue(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7 = 0;
    result = FigTTMLNodeGetNodeType(a1, &v7);
    if (!result)
    {
      if (v7 == 19 || v7 == 18)
      {
        Designation = FigTTMLExtensionGetDesignation();
        v6 = Designation;
        if (Designation)
        {
          CFRetain(Designation);
        }

        result = 0;
        *a2 = v6;
      }

      else if (v7 == 14)
      {
        return FigTTMLTextCopyContent(a1, a2);
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigTTMLNodeGetTimeContainerSemantics_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLNodeGetRegionAttributeValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLNodeCopyAttributes_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLNodeCopySkippedElementLocalNames_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateFrameRateParameterInserter_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateFrameRateParameterInserter_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_CopyProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figtimebase_synchronizeToMomentInternal(OpaqueCMTimebase *a1, OpaqueCMTimebase *a2, uint64_t a3)
{
  memset(&v19, 0, sizeof(v19));
  if ((*(a3 + 52) & 1) == 0 || (*(a3 + 28) & 1) == 0)
  {
    return 4294954944;
  }

  v5 = CMTimebaseCopySource(a1);
  v6 = v5;
  if (a2)
  {
    v7 = CMTimebaseCopySource(a2);
    v8 = v7;
  }

  else
  {
    v8 = 0;
    v7 = v5;
  }

  v9 = *(a3 + 64);
  HostTimeClock = CMClockGetHostTimeClock();
  v11 = v9 * CMSyncGetRelativeRate(HostTimeClock, v7);
  if (!a2 || (v12 = CMTimebaseSetRate(a2, v11), !v12))
  {
    if (*(a3 + 4) & 8) != 0 && (*(a3 + 108) & 1) != 0 && (*(a3 + 84))
    {
      v18 = *(a3 + 72);
      v13 = CMClockGetHostTimeClock();
      *&time.value = *(a3 + 96);
      v14 = *(a3 + 112);
    }

    else
    {
      v18 = *(a3 + 16);
      v13 = CMClockGetHostTimeClock();
      *&time.value = *(a3 + 40);
      v14 = *(a3 + 56);
    }

    time.epoch = v14;
    CMSyncConvertTime(&v19, &time, v13, v6);
    time = v18;
    v12 = CMTimebaseSetRateAndAnchorTimeWithFlags();
  }

  v15 = v12;
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v15;
}

void *figSyncMomentSource_getSyncMoment(uint64_t a1, int a2, void *a3)
{
  OUTLINED_FUNCTION_1_20();
  result = figtimebase_getSyncMomentInternal(*(v6 + 64), 1, v8);
  if (!result)
  {
    v8[1] |= *(a1 + 232) & a2;
    return memcpy(a3, v8, 0x78uLL);
  }

  return result;
}

void figSyncMomentSource_sendMomentInternal(uint64_t a1)
{
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  context = a1;
  dispatch_sync_f(*(a1 + 80), &context, figSyncMomentSource_retrievePendingMoment);
  if (!DWORD2(v18))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v2(*(a1 + 48), &v12);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = *(&v12 + 1);
      v4[0] = 72;
      v4[1] = DWORD1(v12) & 0xFFFFFFF7;
      v6 = v13;
      v7 = *&v14[0];
      v8 = *(v14 + 8);
      v9 = *(&v14[1] + 1);
      v10 = v15;
      v3(*(a1 + 48), v4);
    }
  }

  CFRelease(a1);
}

uint64_t figtimebase_getSyncMomentInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figtimebase_getSyncMomentInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSyncMomentSource_createInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSyncMomentSource_createInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSyncMomentSource_createInternal_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSyncMomentSource_createInternal_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSyncMomentSource_createInternal_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSyncMomentSource_createInternal_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSyncMomentSource_createInternal_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSyncMomentSource_createInternal_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSyncMomentSource_retrievePendingMoment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figSyncMomentSource_QueueTimerCallback_cold_1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  a1[14] = 0;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  os_retain(*(a2 + 240));
  voucher_adopt();
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  FigDebugGetAdoptedVoucherProcessIDAndUUIDString();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_1_20();
  if (!figtimebase_getSyncMomentInternal(*(a2 + 64), 1, v5))
  {
    memcpy(a1, v5, 0x78uLL);
  }

  FigSimpleMutexUnlock();
  figSyncMomentSource_SendMoment(a2, a1, 1);
  v4 = voucher_adopt();
  os_release(v4);
}

void FigLayerSynchronizerSynchronizeToTimebaseWithDeferredTransaction(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    v5 = OUTLINED_FUNCTION_3_15();
    if (v5)
    {
      v6 = v5;
      *v5 = v3;
      CFRetain(v3);
      v6[1] = a2;
      CFRetain(a2);
      *(v6 + 22) = v2;
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_4_16();

      FigDeferredTransactionAppendChangeWithCallback(v7, v8, v9, v10, v11, v12, v13);
    }

    else
    {
      OUTLINED_FUNCTION_4_16();

      FigSignalErrorAtGM();
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_16();
  }
}

void figlayersync_setLayerTimingToMomentContext(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (FigTimebaseGetSyncMoment(v2, a1 + 16), !v3))
  {
    v4 = *a1;
    v5 = *(a1 + 88);

    figlayersync_synchronizeToMoment(v4, a1 + 16, v5);
  }
}

void FigLayerSynchronizerSynchronizeToMomentWithDeferredTransaction(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    v5 = OUTLINED_FUNCTION_3_15();
    if (v5)
    {
      v6 = v5;
      *v5 = v3;
      CFRetain(v3);
      memcpy(v6 + 2, a2, 0x48uLL);
      *(v6 + 22) = v2;
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_4_16();

      FigDeferredTransactionAppendChangeWithCallback(v7, v8, v9, v10, v11, v12, v13);
    }

    else
    {
      OUTLINED_FUNCTION_4_16();

      FigSignalErrorAtGM();
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_16();
  }
}

void FigLayerSynchronizerConfigurationCreate_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t FigLayerSynchronizerConfigurationCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLayerSynchronizerConfigurationCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLayerSynchronizerConfigurationAddLayersSubjectToImageQueueTiming_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLayerSynchronizerConfigurationAddLayersNotSubjectToImageQueueTiming_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLayerSynchronizerConfigurationCopyLayers_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLayerSynchronizerCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLayerSynchronizerCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLayerSynchronizerSetConfigurationWithDeferredTransaction_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLayerSynchronizerSetConfigurationWithDeferredTransaction_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTRegionBlockCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTRegionBlock_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTRegionBlock_copyNodeDocumentSerialization_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTRegionBlock_copyNodeDocumentSerialization_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

unint64_t clcpcgctsbCEA608DataGeneratorCallback(const void *a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *a2;
  v11 = *(a2 + 2);
  CCData = clcpcgctsbOutputAndReleaseLastCCData(DerivedStorage, &v10);
  if (!CCData)
  {
    v6 = *a2;
    v7 = a2[2];
    *(DerivedStorage + 112) = a2[1];
    *(DerivedStorage + 128) = v7;
    *(DerivedStorage + 96) = v6;
    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    *(DerivedStorage + 88) = v8;
  }

  return CCData;
}

unint64_t clcpcgctsb_Finish()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = clcpcgctsbAddCaptionDataWithSameTimeRange(DerivedStorage);
  if (!result)
  {
    result = OUTLINED_FUNCTION_4_17(*(DerivedStorage + 8));
    if (!result)
    {
      result = clcpcgctsbOutputAndReleaseLastCCData(DerivedStorage, MEMORY[0x1E6960C68]);
      if (!result)
      {
        *(DerivedStorage + 16) = 2;
      }
    }
  }

  return result;
}

const __CFString *clcpcgctsbDoesCaptioDataHaveText(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    result = &stru_1F0B1AFB8;
    return (CFStringGetLength(result) != 0);
  }

  result = v2(a1);
  if (result)
  {
    return (CFStringGetLength(result) != 0);
  }

  return result;
}

uint64_t clcpcgctsbCopyCaptionAnimationAndRegionInformation(uint64_t a1, uint64_t a2, void *a3, void *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  *v23 = *MEMORY[0x1E695EFF8];
  v22 = 0.0;
  FigCaptionDataGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v12 = OUTLINED_FUNCTION_5_12();
    v14 = v13(v12);
    if (v14)
    {
      return v14;
    }

    FigCaptionDataGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v15 = OUTLINED_FUNCTION_5_12();
      v14 = v16(v15);
      if (!v14)
      {
        v17 = 1.0;
        if (v23[1] < 1.0 || (v17 = 15.0, v23[1] > 15.0))
        {
          v23[1] = v17;
        }

        if (v23[0] >= 1.0)
        {
          v18 = 0x4040000000000000;
          if (v23[0] <= 32.0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v18 = 0x3FF0000000000000;
        }

        *&v23[0] = v18;
LABEL_14:
        if (0.0 >= 2.0)
        {
          if (0.0 <= 4.0)
          {
LABEL_19:
            *a3 = 0;
            v19 = 0;
            *a4 = 0;
            *a5 = v23[1];
            *a6 = v23[0];
            *a7 = v22;
            return v19;
          }

          *&v21 = 4.0;
        }

        else
        {
          *&v21 = 2.0;
        }

        v22 = *&v21;
        goto LABEL_19;
      }

      return v14;
    }
  }

  return 4294954514;
}

uint64_t clcpcgctsbCreateCEA608DataGeneratorAttributedString(uint64_t a1, const __CFAllocator *a2, __CFAttributedString **a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(a1);
  }

  else
  {
    v7 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v7);
  v58 = 0;
  cf = 0;
  Mutable = CFAttributedStringCreateMutable(a2, Length);
  v10 = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    v13 = FigSignalErrorAtGM();
LABEL_77:
    v50 = v13;
    goto LABEL_69;
  }

  CFAttributedStringBeginEditing(Mutable);
  v60.location = 0;
  v60.length = 0;
  CFAttributedStringReplaceString(v10, v60, v7);
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
LABEL_68:
    v50 = 4294954514;
    goto LABEL_69;
  }

  v54 = a3;
  v13 = v12(CMBaseObject, *MEMORY[0x1E6961268], a2, &v58);
  if (v13)
  {
    goto LABEL_77;
  }

  if (v58)
  {
    Count = CFArrayGetCount(v58);
    if (Count >= 1)
    {
      v14 = 0;
      value = *MEMORY[0x1E695E4D0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v58, v14);
        v56[0] = 0;
        v56[1] = 0;
        while (FigCFRangeGetLimit() < Length)
        {
          Limit = FigCFRangeGetLimit();
          v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v17)
          {
            goto LABEL_68;
          }

          v13 = v17(a1, Limit, ValueAtIndex, a2, &cf, v56);
          if (v13)
          {
            goto LABEL_77;
          }

          v18 = cf;
          if (cf)
          {
            CFGetAllocator(v10);
            if (FigCFEqual())
            {
              v19 = CFGetTypeID(v18);
              if (v19 == FigCaptionDynamicStyleGetTypeID())
              {
                if (FigCaptionDynamicStyleGetInitialValue())
                {
                  InitialValue = FigCaptionDynamicStyleGetInitialValue();
                  v21 = CFGetTypeID(InitialValue);
                  if (v21 == CFNumberGetTypeID())
                  {
                    valuePtr[0] = 0;
                    v22 = FigCaptionDynamicStyleGetInitialValue();
                    CFNumberGetValue(v22, kCFNumberSInt32Type, valuePtr);
                    if (valuePtr[0])
                    {
                      v23 = OUTLINED_FUNCTION_1_22();
                      v25 = @"Underline";
LABEL_27:
                      CFAttributedStringSetAttribute(v23, v24, v25, value);
                    }
                  }
                }
              }
            }

            else
            {
              if (!FigCFEqual())
              {
                if (FigCFEqual())
                {
                  v29 = CFGetTypeID(v18);
                  if (v29 != FigCaptionDynamicStyleGetTypeID())
                  {
                    goto LABEL_56;
                  }

                  if (!FigCaptionDynamicStyleGetInitialValue())
                  {
                    goto LABEL_56;
                  }

                  v30 = FigCaptionDynamicStyleGetInitialValue();
                  v31 = CFGetTypeID(v30);
                  if (v31 != CGColorGetTypeID())
                  {
                    goto LABEL_56;
                  }

                  valuePtr[0] = 0;
                  v32 = FigCaptionDynamicStyleGetInitialValue();
                  if (clcpcgctsbGetCEA608DataGeneratorColorFromCGColor(v32, valuePtr))
                  {
                    SInt32 = FigCFNumberCreateSInt32();
                    if (SInt32)
                    {
                      v34 = SInt32;
                      v35 = OUTLINED_FUNCTION_1_22();
                      v37 = @"ForegroundColor";
                      goto LABEL_53;
                    }

LABEL_65:
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_16();
                    v50 = FigSignalErrorAtGM();
LABEL_55:
                    if (v50)
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_56;
                  }
                }

                else
                {
                  if (!FigCFEqual())
                  {
                    goto LABEL_56;
                  }

                  v38 = CFGetTypeID(v18);
                  if (v38 != FigCaptionDynamicStyleGetTypeID())
                  {
                    goto LABEL_56;
                  }

                  if (!FigCaptionDynamicStyleGetInitialValue())
                  {
                    goto LABEL_56;
                  }

                  v39 = FigCaptionDynamicStyleGetInitialValue();
                  v40 = CFGetTypeID(v39);
                  if (v40 != CGColorGetTypeID())
                  {
                    goto LABEL_56;
                  }

                  valuePtr[0] = 0;
                  v41 = FigCaptionDynamicStyleGetInitialValue();
                  if (clcpcgctsbGetCEA608DataGeneratorColorFromCGColor(v41, valuePtr))
                  {
                    v42 = FigCFNumberCreateSInt32();
                    if (!v42)
                    {
                      goto LABEL_65;
                    }

                    v43 = v42;
                    v44 = OUTLINED_FUNCTION_1_22();
                    CFAttributedStringSetAttribute(v44, v61, @"BackgroundColor", v43);
                    CFRelease(v43);
                  }

                  v45 = FigCaptionDynamicStyleGetInitialValue();
                  ColorSpace = CGColorGetColorSpace(v45);
                  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB && CGColorGetNumberOfComponents(v45) == 4)
                  {
                    Alpha = CGColorGetAlpha(v45);
                    v48 = Alpha < 0.0 || Alpha > 0.25;
                    if (v48 && (Alpha <= 0.25 || Alpha >= 0.85))
                    {
                      v50 = 0;
                      if (Alpha < 0.85 || Alpha > 1.0)
                      {
                        goto LABEL_55;
                      }
                    }

                    v49 = FigCFNumberCreateSInt32();
                    if (!v49)
                    {
                      goto LABEL_65;
                    }

                    v34 = v49;
                    v35 = OUTLINED_FUNCTION_1_22();
                    v37 = @"BackgroundTransparency";
LABEL_53:
                    CFAttributedStringSetAttribute(v35, v36, v37, v34);
                    CFRelease(v34);
                  }
                }

                v50 = 0;
                goto LABEL_55;
              }

              v26 = CFGetTypeID(v18);
              if (v26 == FigCaptionDynamicStyleGetTypeID())
              {
                if (FigCaptionDynamicStyleGetInitialValue())
                {
                  v27 = FigCaptionDynamicStyleGetInitialValue();
                  v28 = CFGetTypeID(v27);
                  if (v28 == CFStringGetTypeID())
                  {
                    FigCaptionDynamicStyleGetInitialValue();
                    if (FigCFEqual())
                    {
                      v23 = OUTLINED_FUNCTION_1_22();
                      v25 = @"Italic";
                      goto LABEL_27;
                    }
                  }
                }
              }
            }

LABEL_56:
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }
          }
        }

        ++v14;
      }

      while (v14 != Count);
    }
  }

  CFAttributedStringEndEditing(v10);
  v50 = 0;
  *v54 = v10;
  v10 = 0;
LABEL_69:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v50;
}

uint64_t clcpcgctsbGetCEA608DataGeneratorColorFromCGColor(CGColor *a1, int *a2)
{
  ColorSpace = CGColorGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB && CGColorGetNumberOfComponents(a1) == 4)
  {
    Components = CGColorGetComponents(a1);
    v6 = llround(Components[2]);
    if (!(llround(*Components) | llround(Components[1])) && !v6)
    {
      v7 = 7;
LABEL_21:
      *a2 = v7;
      return 1;
    }

    OUTLINED_FUNCTION_3_16();
    if (v11)
    {
      v7 = 2;
      goto LABEL_21;
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 1;
    }

    v13 = v12;
    if (v13 == 1 && v8 == 0)
    {
      v7 = 4;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_3_16();
    if (v18)
    {
      v7 = 6;
      goto LABEL_21;
    }

    if (v16)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17 == 1;
    }

    v21 = v20;
    if (v21 == 1 && v15 == 0)
    {
      v7 = 1;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_3_16();
    if (v26)
    {
      v7 = 3;
      goto LABEL_21;
    }

    v28 = v24 == 1 && v25 == 1;
    if (v28 && v23 == 0)
    {
      v7 = 5;
      goto LABEL_21;
    }

    v7 = 0;
    if (v23 == 1 && v28)
    {
      goto LABEL_21;
    }
  }

  return 0;
}

uint64_t clcpccv_Finish()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = cclcpccvAppendCaptionDataWithSameTimeRange(DerivedStorage);
  if (!result)
  {
    result = OUTLINED_FUNCTION_4_17(*(DerivedStorage + 8));
    if (!result)
    {
      *(DerivedStorage + 16) = 2;
    }
  }

  return result;
}

uint64_t FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCLCPCaptionConversionValidatorCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCLCPCaptionConversionValidatorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCLCPCaptionConversionValidatorCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgctsb_CopyProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t clcpcgctsb_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgctsb_AddCaptionGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgctsb_AddCaptionGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgctsb_AddCaptionGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgctsbAddCaptionDataWithSameTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgctsbOutputAndReleaseLastCCData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpccv_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpccv_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpccv_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpccv_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpccv_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpccv_AppendAndValidateCaptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpccv_AppendAndValidateCaptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpccv_AppendAndValidateCaptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpccv_AppendAndValidateCaptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cclcpccvAppendCaptionDataWithSameTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL cclcpccvAppendCaptionDataWithSameTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t cclcpccvAppendCaptionDataWithSameTimeRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cclcpccvAppendCaptionDataWithSameTimeRange_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

__n128 cclcpccvAppendCaptionDataWithSameTimeRange_cold_5(uint64_t a1, __n128 *a2)
{
  v2 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *a1 = *MEMORY[0x1E6960CC0];
  v4 = *(v2 + 16);
  *(a1 + 16) = v4;
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  return result;
}

uint64_t RTMStartGeneralRecording(int a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040ED882C02uLL);
  if (!v4)
  {
    return 4294967188;
  }

  v5 = v4;
  if (a1 && (v7 = TakeGeneralMeasurements(v4), v7))
  {
    v8 = v7;
    free(v5);
    return v8;
  }

  else
  {
    GetElapsedTime(v5 + 2);
    result = 0;
    *a2 = v5;
  }

  return result;
}

uint64_t TakeGeneralMeasurements(uint64_t a1)
{
  *task_info_out = 0u;
  v15 = 0u;
  v2 = MEMORY[0x1E69E9A60];
  v3 = *MEMORY[0x1E69E9A60];
  if (!_MergedGlobals_21)
  {
    v4 = malloc_default_zone();
    _MergedGlobals_21 = v4->malloc;
    off_1ED4CA4B8 = v4->calloc;
    off_1ED4CA4C0 = v4->valloc;
    off_1ED4CA4C8 = v4->free;
    off_1ED4CA4D0 = v4->realloc;
    v4->malloc = instrum_malloc;
    v4->calloc = instrum_calloc;
    v4->valloc = instrum_valloc;
    v4->free = instrum_free;
    v4->realloc = instrum_realloc;
  }

  task_info_outCnt = 8;
  result = task_info(v3, 1u, task_info_out, &task_info_outCnt);
  if (!result)
  {
    v6 = *task_info_out;
    v7 = dword_1ED4CA4F4;
    if (!dword_1ED4CA4F4)
    {
      mach_timebase_info(&dword_1ED4CA4F0);
      v7 = dword_1ED4CA4F4;
    }

    v8 = dword_1ED4CA4F0;
    v9 = v7;
    *a1 = v6 * dword_1ED4CA4F0 / v7 / 1000;
    v10 = *&task_info_out[2];
    if (!v7)
    {
      mach_timebase_info(&dword_1ED4CA4F0);
      v8 = dword_1ED4CA4F0;
      v9 = dword_1ED4CA4F4;
    }

    *(a1 + 8) = v10 * v8 / v9 / 1000;
    GetElapsedTime((a1 + 16));
    *(a1 + 24) = 0u;
    *(a1 + 72) = 0;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    result = AddTotalForVMObject(*v2, 0, 0, (a1 + 24), &v16);
    if (result <= 1)
    {
      result = 0;
      v11 = qword_1ED4CA4E0;
      v12 = qword_1ED4CA4E8;
      *(a1 + 80) = qword_1ED4CA4D8;
      *(a1 + 88) = v12;
      *(a1 + 96) = v11;
    }
  }

  return result;
}

uint64_t RTMCopyGeneralMetrics(int64x2_t *a1, const void *a2, __CFDictionary **a3)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = TakeGeneralMeasurements(&v16);
  if (v6)
  {
    return v6;
  }

  v7 = vsubq_s64(v17, a1[1]);
  v16 = vsubq_s64(v16, *a1);
  v17 = v7;
  v8 = vsubq_s64(v18, a1[2]);
  v9 = vsubq_s64(v19, a1[3]);
  v10 = v22 - a1[6].i64[0];
  *&v21 = v21 - a1[5].i64[0];
  v22 = v10;
  v18 = v8;
  v19 = v9;
  v20 = vsubq_s64(v20, a1[4]);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294967188;
  }

  v12 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"Label", a2);
  }

  v13 = FigCFDictionarySetInt64();
  if (v13 || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13))
  {
    v14 = v13;
    goto LABEL_17;
  }

  v14 = FigCFDictionarySetInt64();
  if (v14)
  {
LABEL_17:
    CFRelease(v12);
    return v14;
  }

  *a3 = v12;
  return v14;
}

uint64_t RTMWriteResultsToFile(CFPropertyListRef propertyList, FILE *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 4294967188;
  }

  v4 = Data;
  Length = CFDataGetLength(Data);
  snprintf(__str, 0xAuLL, "0x%8.8lx", Length);
  fwrite(__str, 0xAuLL, 1uLL, a2);
  BytePtr = CFDataGetBytePtr(v4);
  fwrite(BytePtr, Length, 1uLL, a2);
  CFRelease(v4);
  return 0;
}

uint64_t RTMReadResultsFromFile(FILE *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9830];
  do
  {
    while (1)
    {
      v5 = getc(a1);
      v6 = v5;
      if (v5 > 0x7F)
      {
        break;
      }

      if ((*(v4 + 4 * v5 + 60) & 0x4000) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (__maskrune(v5, 0x4000uLL));
LABEL_6:
  ungetc(v6, a1);
  if (fread(__ptr, 1uLL, 0xAuLL, a1) != 10)
  {
    return 4294967090;
  }

  __ptr[10] = 0;
  v7 = strtol(__ptr, 0, 0);
  if (v7 >= 0x10000)
  {
    return 4294967090;
  }

  v8 = v7;
  v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (!v9)
  {
    return 4294967188;
  }

  v10 = v9;
  if (fread(v9, 1uLL, v8, a1) == v8)
  {
    v11 = CFDataCreateWithBytesNoCopy(0, v10, v8, *MEMORY[0x1E695E498]);
    if (v11)
    {
      v12 = v11;
      v13 = CFPropertyListCreateWithData(0, v11, 0, 0, 0);
      *a2 = v13;
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 4294967090;
      }

      CFRelease(v12);
    }

    else
    {
      v14 = 4294967188;
    }
  }

  else
  {
    v14 = 4294967090;
  }

  free(v10);
  return v14;
}

uint64_t TMCCreateWithQueueAndOptions(uint64_t a1, const void *a2, uint64_t a3, void *a4, const void *a5, uint64_t a6, uint64_t *a7)
{
  cf = 0;
  v13 = FigSampleBufferProviderCreateForBufferQueue(*MEMORY[0x1E695E480], a2, &cf);
  v14 = v13;
  v15 = v13;
  if (!v13)
  {
    v18 = *a3;
    v19 = *(a3 + 16);
    v15 = TMCCreateWithCallbacksAndOptions(a1, cf, &v18, a4, a5, a6, a7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    if (v14)
    {
      v16 = a4[3];
      if (v16)
      {
        v16(a4[1]);
      }
    }
  }

  return v15;
}

void tmcPrepareToSendNextSample(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16) && FigAtomicCompareAndSwap32() && !*(a1 + 128))
  {
    v2 = *MEMORY[0x1E6960500];
    v3 = *MEMORY[0x1E69604B0];
    v4 = *MEMORY[0x1E6960410];
    v5 = *MEMORY[0x1E695E4D0];
    key = *MEMORY[0x1E6960480];
    do
    {
      v6 = *(a1 + 48);
      if (!v6)
      {
        return;
      }

      v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v7)
      {
        *(a1 + 128) = 0;
        return;
      }

      v8 = v7(v6);
      *(a1 + 128) = v8;
      if (!v8)
      {
        return;
      }

      if (CMGetAttachment(v8, v2, 0))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      dispatch_sync_f(*(a1 + 32), a1, tmcHandleIgnoreSamplesUntilThisJumpSeed);
      v9 = *(a1 + 128);
      if (v9)
      {
        if (CMSampleBufferGetDataBuffer(v9) || CMGetAttachment(*(a1 + 128), v3, 0) || *(a1 + 188) && FigSampleBufferGetCaptionGroup())
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&v21, *(a1 + 128));
          value = v21.value;
          flags = v21.flags;
          timescale = v21.timescale;
          v11 = *(a1 + 128);
          if ((v21.flags & 0x1D) == 1)
          {
            epoch = v21.epoch;
            if (tmcShouldDisplaySampleImmediately(v11) || (SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(*(a1 + 128), 0)) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) != 0 && v5 == CFDictionaryGetValue(ValueAtIndex, v4) || (v15 = *(a1 + 128), v5 == CMGetAttachment(v15, v3, 0)) && v5 == CMGetAttachment(v15, key, 0))
            {
              if (CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 120), *(a1 + 168)))
              {
                return;
              }
            }

            else
            {
              memset(&v21, 0, sizeof(v21));
              lhs.value = value;
              lhs.timescale = timescale;
              lhs.flags = flags;
              lhs.epoch = epoch;
              rhs = *(a1 + 96);
              CMTimeSubtract(&v21, &lhs, &rhs);
              v16 = *(a1 + 120);
              v17 = *(a1 + 168);
              lhs = v21;
              if (CMTimebaseSetTimerDispatchSourceNextFireTime(v16, v17, &lhs, 1u))
              {
                return;
              }
            }

            continue;
          }
        }

        else
        {
          v11 = *(a1 + 128);
        }

        if (v11)
        {
          CFRelease(v11);
          *(a1 + 128) = 0;
        }
      }
    }

    while (!*(a1 + 128));
  }
}

void tmcPrepareToSendNextSampleAndConsumeTMC(const void *a1)
{
  tmcPrepareToSendNextSample(a1);

  CFRelease(a1);
}

uint64_t TMCCreateWithCallbacksAndOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TMCCreateWithCallbacksAndOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TMCCreateWithCallbacksAndOptions_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TMCCreateWithCallbacksAndOptions_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TMCCreateWithCallbacksAndOptions_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TMCCreateWithCallbacksAndOptions_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t tmcInhibitOutputUntil_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t TMCGetEndPresentationTimeForDecodedSamples_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TMCGetEndPresentationTimeForDecodedSamples_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void tmcResetOutputSerialized_cold_1(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 128) = 0;
  }

  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  *(a1 + 144) = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  *(a1 + 160) = v5;
  v6 = *(a1 + 120);
  v7 = *(a1 + 168);
  *&v9.value = v4;
  v9.epoch = v5;
  CMTimebaseSetTimerDispatchSourceNextFireTime(v6, v7, &v9, 0);
  v8 = *(a1 + 88);
  if (v8)
  {
    v8(*(a1 + 64));
  }

  FigAtomicDecrement32();
  tmcPrepareToSendNextSample(a1);
}

uint64_t FigByteStreamServerCreateByteStreamDetails(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = 0;
  number = 0;
  v37 = 0;
  cf = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  value = 0;
  if (!a3 || !a4)
  {
    goto LABEL_59;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = *MEMORY[0x1E695E480];
  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v8 = OUTLINED_FUNCTION_2_21();
    v9(v8);
  }

  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v10 = OUTLINED_FUNCTION_2_21();
    v11(v10);
  }

  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v12 = OUTLINED_FUNCTION_2_21();
    v13(v12);
  }

  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v14 = OUTLINED_FUNCTION_2_21();
    v15(v14);
  }

  FigXPCMessageSetCFURL();
  v16 = *MEMORY[0x1E695E4D0];
  xpc_dictionary_set_BOOL(v6, "Writable", v37 == *MEMORY[0x1E695E4D0]);
  xpc_dictionary_set_BOOL(v6, "EntireLengthAvailable", cf == v16);
  CMByteStreamGetCMBaseObject();
  FigCRABSGetClassID();
  v17 = CMBaseObjectIsMemberOfClass() != 0;
  xpc_dictionary_set_BOOL(v6, "ReadsMayBlockIndefinitely", v17);
  SInt64 = FigCFNumberGetSInt64();
  xpc_dictionary_set_int64(v6, "EntireLength", SInt64);
  CMByteStreamGetCMBaseObject();
  FigCachedFileByteStreamGetClassID();
  if (CMBaseObjectIsMemberOfClass())
  {
    xpc_dictionary_set_BOOL(v6, "UseFigReadCache", 1);
    CMByteStreamGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v19 = OUTLINED_FUNCTION_2_21();
      v20(v19);
    }

    xpc_dictionary_set_BOOL(v6, "EnableFigReadCache", v36 == v16);
  }

  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v21 = OUTLINED_FUNCTION_2_21();
    v22(v21);
  }

  if (!a1)
  {
LABEL_59:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v31 = FigSignalErrorAtGM();
    Instance = 0;
    v24 = 0;
    goto LABEL_40;
  }

  if (qword_1ED4CA520 != -1)
  {
    dispatch_once(&qword_1ED4CA520, &__block_literal_global_29);
  }

  FigSimpleMutexLock();
  if (qword_1ED4CA518 && (v23 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v24 = v23;
    FigSimpleMutexUnlock();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69628C8], @"FigByteStreamServer");
    v24 = CMMemoryPoolCreate(Mutable);
    v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v27 = v26;
    v28 = qword_1ED4CA518;
    qword_1ED4CA518 = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    FigSimpleMutexUnlock();
    if (!v24)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      BlockBuffer = FigSignalErrorAtGM();
      goto LABEL_64;
    }
  }

  BlockBuffer = FigMemoryPoolCreateBlockBuffer();
  if (BlockBuffer)
  {
    goto LABEL_64;
  }

  BlockBuffer = FigMemoryOriginSetBlockBufferInXPCMessage();
  if (BlockBuffer)
  {
    goto LABEL_64;
  }

  if (qword_1ED4CA528 != -1)
  {
    dispatch_once(&qword_1ED4CA528, &__block_literal_global_33);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[2] = 0;
    Instance[3] = CFRetain(v24);
    goto LABEL_38;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  BlockBuffer = FigSignalErrorAtGM();
  if (BlockBuffer)
  {
LABEL_64:
    v31 = BlockBuffer;
    Instance = 0;
    goto LABEL_40;
  }

LABEL_38:
  v31 = FigXPCServerAssociateObjectWithNeighborProcessByPID();
  if (!v31)
  {
    xpc_dictionary_set_uint64(v6, "ObjectID", value);
    Instance = 0;
    *a4 = v6;
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  FigXPCRelease();
  if (Instance)
  {
    CFRelease(Instance);
  }

  return v31;
}

uint64_t byteStreamServer_HandleMessage(uint64_t a1, void *a2)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    result = FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t FigByteStreamServerCopyByteStreamForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteStreamServerCopyByteStreamForID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSecureStopManagerRemoteCreate(uint64_t a1, CFTypeRef *a2)
{
  xdict = 0;
  v10 = 0;
  cf = 0;
  if (!a2)
  {
    goto LABEL_9;
  }

  *a2 = 0;
  v4 = FigCPERemoteEnsureClientEstablished();
  if (v4)
  {
    goto LABEL_10;
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_22();
  v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v4)
  {
    goto LABEL_10;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
LABEL_9:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v4 = FigSignalErrorAtGM();
LABEL_10:
    v6 = v4;
    goto LABEL_8;
  }

  v6 = fssm_remote_createManagerForID(a1, uint64, &cf);
  if (v6)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
    cf = 0;
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t fssm_remote_createManagerForID(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 && a3)
  {
    *a3 = 0;
    v3 = FigCPERemoteEnsureClientEstablished();
    if (v3)
    {
      return v3;
    }

    FigSecureStopManagerGetClassID();
    v4 = CMDerivedObjectCreate();
    if (!v4)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }

    return v4;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigSecureStopManagerRemoteCopyDefaultRuntimeInstance(uint64_t a1, void *a2)
{
  xdict = 0;
  v12 = 0;
  cf = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

  *a2 = 0;
  v4 = FigCPERemoteEnsureClientEstablished();
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_22();
  v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v4)
  {
    goto LABEL_14;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
LABEL_13:
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM();
LABEL_14:
    v7 = v4;
    goto LABEL_9;
  }

  v6 = uint64;
  v7 = FigXPCRemoteClientRetainCopiedObject();
  v8 = cf;
  if (v7 || !cf && (v7 = fssm_remote_createManagerForID(a1, v6, &cf), v8 = cf, v7))
  {
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v7 = 0;
    *a2 = v8;
    cf = 0;
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t fssm_remote_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!*DerivedStorage && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  return FigXPCRelease();
}

uint64_t fssm_remote_initialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
LABEL_12:
    v9 = ObjectID;
    goto LABEL_10;
  }

  v7 = DerivedStorage;
  ObjectID = fssm_remote_getObjectID(a1, &v11);
  if (ObjectID)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  ObjectID = FigXPCMessageSetCFData();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  ObjectID = FigXPCMessageSetCFURL();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  ObjectID = FigSandboxRegisterURLWithProcessAndCopyRegistration();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  v9 = FigXPCRemoteClientSendSyncMessage();
  if (!v9)
  {
    *(v7 + 16) = 0;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t fssm_remote_copyRecords(uint64_t a1, void *a2)
{
  v5 = 0;
  if (a2)
  {
    *a2 = 0;
    ObjectID = fssm_remote_getObjectID(a1, &v5);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_2_22();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageCopyCFDictionary();
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
  }

  v3 = ObjectID;
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t fssm_remote_removeRecords(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  ObjectID = fssm_remote_getObjectID(a1, &v6);
  if (ObjectID)
  {
LABEL_9:
    v4 = ObjectID;
    goto LABEL_6;
  }

  v3 = FigXPCCreateBasicMessage();
  if (v3 || (v3 = FigXPCMessageSetCFArray(), v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_6:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t fssm_remote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fssm_remote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSTokenWalkerConsumeNextInputToken(uint64_t a1, void *a2, _DWORD *a3)
{
  v10 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_23();
    goto LABEL_17;
  }

  if (*(a1 + 40))
  {
    *(a1 + 40) = 0;
    v5 = *(a1 + 32);
    if (v5 != -1)
    {
      v6 = *(a1 + 24);
      goto LABEL_7;
    }

LABEL_17:

    return FigSignalErrorAtGM();
  }

  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v5 < v6)
  {
    *(a1 + 32) = ++v5;
  }

LABEL_7:
  if (v5 < v6)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v5);
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  ValueAtIndex = *(a1 + 48);
  if (a2)
  {
LABEL_11:
    *a2 = ValueAtIndex;
  }

LABEL_12:
  if (!a3)
  {
    return 0;
  }

  if (ValueAtIndex)
  {
    result = FigCSSTokenGetTokenType(ValueAtIndex, &v10);
    if (result)
    {
      return result;
    }

    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  *a3 = v9;
  return result;
}

uint64_t FigCSSTokenWalkerCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSTokenWalkerCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSTokenWalkerCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSTokenWalkerGetCurrentInputToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSTokenWalkerReconsumeInputToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigNetworkUrgencyMonitorSetTimebase(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (a2)
    {
      if (*(a1 + 16))
      {
        FigReadOnlyTimebaseSetTargetTimebase();
      }

      else
      {
        CMTimebaseCreateReadOnlyTimebase();
        if (!*(a1 + 16))
        {
          goto LABEL_14;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_3_17();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_3_17();
      }
    }

    else
    {
      fnum_releaseReadOnlyTimebase(a1);
    }

    if (*(a1 + 48))
    {
      if (*(a1 + 128))
      {
        v4 = *(a1 + 104);
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        fnum_rescheduleBufferDepletionUpdateTimer(a1, v4 - UpTimeNanoseconds);
      }

      else
      {
        fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(a1);
      }

      goto LABEL_12;
    }

LABEL_14:
    FigSignalErrorAtGM();
LABEL_12:
    FigSimpleMutexUnlock();
    return 0;
  }

  return 4294954516;
}

uint64_t FigNetworkUrgencyMonitorSetStreamFullyAvailable(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  FigSimpleMutexLock();
  if (*(a1 + 129) != a2)
  {
    *(a1 + 129) = a2;
    if (a2)
    {
      FigSimpleMutexLock();
      *(a1 + 120) = 0;
      FigSimpleMutexUnlock();
      fnum_updateExpectedProgressTargets(a1);
      v4 = *(a1 + 48);
      if (v4)
      {
        dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      }
    }

    else if (*(a1 + 128))
    {
      v6 = *(a1 + 104);
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      fnum_rescheduleBufferDepletionUpdateTimer(a1, v6 - UpTimeNanoseconds);
    }

    else
    {
      fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(a1);
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

void fnum_rescheduleBufferDepletionUpdateTimer(uint64_t a1, int64_t a2)
{
  *(a1 + 104) = FigGetUpTimeNanoseconds() + a2;
  if (!*(a1 + 129) && *(a1 + 16) && (v6 = *(a1 + 144), (~v6 & 5) != 0))
  {
    v7 = *(a1 + 48);
    if ((~v6 & 0x11) != 0)
    {
      v5 = dispatch_time(0, a2);
      v4 = v7;
      goto LABEL_4;
    }

    if (!v7)
    {
      return;
    }

    v4 = v7;
  }

  else
  {
    v4 = *(a1 + 48);
    if (!v4)
    {
      return;
    }
  }

  v5 = -1;
LABEL_4:

  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6960C70];
  *&v23.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v23.epoch = v3;
  v4 = sFigNetworkUrgencyMonitorBufferDepletionUpdatePeriodNanoseconds;
  if (!*(a1 + 129))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if ((*(a1 + 68) & 1) != 0 && (*(a1 + 92) & 1) != 0 && !*(a1 + 96))
      {
        v18 = v2;
        if ((*(a1 + 80) & 0x8000000000000000) == 0)
        {
          Rate = CMTimebaseGetRate(v5);
          CMTimebaseGetTime(&v23, *(a1 + 16));
          lhs = v23;
          FPSTimelineConverterL3TimeToL2(&lhs, &range);
          value = range.start.value;
          flags = range.start.flags;
          timescale = range.start.timescale;
          if (range.start.flags)
          {
            epoch = range.start.epoch;
            v21.epoch = v3;
            v9 = *(a1 + 72);
            *&range.start.value = *(a1 + 56);
            *&range.start.epoch = v9;
            *&range.duration.timescale = *(a1 + 88);
            *&v21.value = v18;
            CMTimeRangeGetEnd(&v21, &range);
            range.start = v21;
            CMTimeGetSeconds(&range.start);
            range.start.value = value;
            range.start.timescale = timescale;
            range.start.flags = flags;
            range.start.epoch = epoch;
            CMTimeGetSeconds(&range.start);
            lhs = v21;
            rhs.value = value;
            rhs.timescale = timescale;
            rhs.flags = flags;
            rhs.epoch = epoch;
            CMTimeSubtract(&range.start, &lhs, &rhs);
            Seconds = CMTimeGetSeconds(&range.start);
            v11 = 0;
            if (Rate >= 0.0)
            {
              v12 = *(a1 + 144);
              if ((~v12 & 5) != 0 && (*(a1 + 144) & 0x11) != 0x11)
              {
                if (Rate >= 0.1)
                {
                  v13 = Seconds / Rate;
                }

                else
                {
                  v13 = Seconds;
                }

                if (v12)
                {
                  memset(&range, 0, 24);
                  HostTimeClock = CMClockGetHostTimeClock();
                  CMClockGetTime(&range.start, HostTimeClock);
                  OUTLINED_FUNCTION_2_23();
                  rhs = range.start;
                  if (CMTimeCompare(&lhs, &rhs) < 0)
                  {
                    *(a1 + 132) = v18;
                    *(a1 + 148) = v3;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_2_23();
                    v15 = CMTimeGetSeconds(&lhs);
                    lhs = range.start;
                    v13 = v13 + v15 - CMTimeGetSeconds(&lhs);
                  }
                }

                v16 = *&_MergedGlobals_1;
                if (v13 >= *&_MergedGlobals_1)
                {
                  v11 = 0;
                }

                else
                {
                  v11 = (FigGetContinuousUpTimeNanoseconds() + v13 * 1000000000.0);
                  v16 = *&_MergedGlobals_1;
                }

                v17 = v13 - v16;
                if (v17 <= *&qword_1ED4C9F68)
                {
                  v17 = *&qword_1ED4C9F68;
                }

                v4 = (v17 * 1000000000.0);
              }
            }

            FigSimpleMutexLock();
            *(a1 + 120) = v11;
            FigSimpleMutexUnlock();
            fnum_updateExpectedProgressTargets(a1);
          }
        }
      }
    }
  }

  fnum_rescheduleBufferDepletionUpdateTimer(a1, v4);
}

uint64_t FigNetworkUrgencyMonitorSetPlayableRange(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_0_24();
  v4 = v2[1];
  v3 = v2[2];
  *(v1 + 56) = *v2;
  *(v1 + 72) = v4;
  *(v1 + 88) = v3;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigNetworkUrgencyMonitorSetEstimatedStartTime(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_0_24();
  v3 = *(v2 + 16);
  *(v1 + 132) = *v2;
  *(v1 + 148) = v3;
  if (!*(v1 + 128))
  {
    fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(v1);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigNetworkUrgencyAssertDeadline(uint64_t a1, CMTime *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = FigAtomicIncrement64();
  if (!v4)
  {
    v4 = FigAtomicIncrement64();
  }

  v9 = *a2;
  v5 = (CMTimeGetSeconds(&v9) * 1000000000.0);
  ContinuousUpTimeNanoseconds = FigGetContinuousUpTimeNanoseconds();
  FigSimpleMutexLock();
  if (!fnum_scheduleDeadlineCleanup(a1, v5 + 1000000000))
  {
    v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040B07D1DCCuLL);
    if (v7)
    {
      v7[1] = v4;
      v7[2] = ContinuousUpTimeNanoseconds + v5;
      *v7 = 0;
      **(a1 + 168) = v7;
      *(a1 + 168) = v7;
      fnum_updateExpectedProgressTargets(a1);
    }
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigNetworkUrgencyMonitorCopyExpectedProgressTarget(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v2 = *(a1 + 120);
  FigSimpleMutexUnlock();
  if (!v2)
  {
    return 0;
  }

  return FigCFNumberCreateSInt64();
}

uint64_t FigNetworkUrgencyMonitorAddHTTPRequest(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_0_24();
  FigCFWeakReferenceTableAddValueAndGetKey();
  ExpectedProgressTarget = fnum_createExpectedProgressTarget(v1);
  fnum_setHTTPRequestExpectedProgressTarget(v2, ExpectedProgressTarget);
  FigSimpleMutexUnlock();
  if (ExpectedProgressTarget)
  {
    CFRelease(ExpectedProgressTarget);
  }

  return 0;
}

uint64_t FigNetworkUrgencyMonitorSetTimelineConverter(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_0_24();
  fnum_uninstallTimelineConverter(v1);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v4 = FigNotificationCenterAddWeakListener();
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t fnum_Finalize(void *a1)
{
  fnum_releaseReadOnlyTimebase(a1);
  v2 = a1[6];
  if (v2)
  {
    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v2 = a1[6];
  }

  dispatch_source_cancel(v2);
  v3 = a1[6];
  if (v3)
  {
    dispatch_release(v3);
    a1[6] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  fnum_uninstallTimelineConverter(a1);
  v5 = (a1 + 20);
  v6 = a1[20];
  while (v6)
  {
    v7 = v6;
    v6 = *v6;
    if (*v5 == v7)
    {
      v12 = **v5;
      *v5 = v12;
      v8 = a1 + 20;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      do
      {
        OUTLINED_FUNCTION_1_23();
      }

      while (!v10);
      v11 = *v9;
      *v8 = v11;
      if (v11)
      {
        goto LABEL_13;
      }
    }

    a1[21] = v8;
LABEL_13:
    free(v7);
  }

  if (a1[14])
  {
    FigSimpleMutexDestroy();
  }

  return FigSimpleMutexDestroy();
}

void fnum_bufferDepletionUpdateTimerProc()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    FigSimpleMutexLock();
    v1[128] = 0;
    fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(v1);
    FigSimpleMutexUnlock();

    CFRelease(v1);
  }
}

void __fnum_timebaseRateChangedCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    FigSimpleMutexLock();
    if (!*(v1 + 128))
    {
      fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(*(a1 + 32));
    }

    FigSimpleMutexUnlock();
    v3 = *(a1 + 32);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void __fnum_timebaseJumpedCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    FigSimpleMutexLock();
    if (!*(v1 + 128))
    {
      fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(*(a1 + 32));
    }

    FigSimpleMutexUnlock();
    v3 = *(a1 + 32);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void __fnum_scheduleDeadlineCleanup_block_invoke(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    FigSimpleMutexLock();
    ContinuousUpTimeNanoseconds = FigGetContinuousUpTimeNanoseconds();
    v6 = (v3 + 20);
    v5 = v3[20];
    if (v5)
    {
      v7 = ContinuousUpTimeNanoseconds - 1000000000;
      while (1)
      {
        v8 = *v5;
        v9 = v5[3];
        if (v9 && v9 < v7)
        {
          break;
        }

        if (v5[2] < v7)
        {
          v11 = *v6;
          if (*v6 != v5)
          {
            do
            {
              OUTLINED_FUNCTION_1_23();
            }

            while (!v14);
            goto LABEL_16;
          }

LABEL_21:
          v16 = *v11;
          *v6 = v16;
          v12 = v3 + 20;
          if (!v16)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

LABEL_19:
        v5 = v8;
        if (!v8)
        {
          goto LABEL_23;
        }
      }

      v11 = *v6;
      if (*v6 == v5)
      {
        goto LABEL_21;
      }

      do
      {
        OUTLINED_FUNCTION_1_23();
      }

      while (!v14);
LABEL_16:
      v15 = *v13;
      *v12 = v15;
      if (!v15)
      {
LABEL_17:
        v3[21] = v12;
      }

LABEL_18:
      free(v5);
      goto LABEL_19;
    }

LABEL_23:
    fnum_updateExpectedProgressTargets(v3);
    FigSimpleMutexUnlock();
    CFRelease(v3);
  }

  v17 = *(a1 + 32);
  if (v17)
  {

    CFRelease(v17);
  }
}

void __fnum_handleL2L3TimelineMappingChangedNotification_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    FigSimpleMutexLock();
    if (!*(v1 + 128))
    {
      fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(*(a1 + 32));
    }

    FigSimpleMutexUnlock();
    v3 = *(a1 + 32);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t fnum_scheduleDeadlineCleanup_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigNetworkUrgencyCancelDeadline_cold_1()
{
  OUTLINED_FUNCTION_0_24();
  v2 = *(v0 + 160);
  if (v2)
  {
    while (v2[1] != v1)
    {
      v2 = *v2;
      if (!v2)
      {
        goto LABEL_6;
      }
    }

    v2[3] = FigGetContinuousUpTimeNanoseconds();
    fnum_scheduleDeadlineCleanup(v0, 1000000000);
  }

LABEL_6:

  return FigSimpleMutexUnlock();
}

BOOL FigNetworkUrgencyMonitorCreate_cold_2(uint64_t a1, _DWORD *a2)
{
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t FigNetworkUrgencyMonitorCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VMC2MakeOutputCallbacksForImageQueueArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VMC2MakeOutputCallbacksForImageQueueArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VMC2MakeOutputCallbacksForImageQueueArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VMC2MakeOutputCallbacksForImageQueueArray_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VMC2MakeOutputCallbacksForImageQueueArray_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vmciqa_installOccupancyChangedCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubAudioQueueCreate(char *cf, const opaqueCMFormatDescription *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v209 = *MEMORY[0x1E69E9840];
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  *__str = 0u;
  if (cf[16])
  {
    return 0;
  }

  if (qword_1ED4CA540 != -1)
  {
    dispatch_once_f(&qword_1ED4CA540, 0, subaq_createValidSubAQSetAndLock);
  }

  CFGetAllocator(cf);
  MEMORY[0x19A8D3660](&FigSubAudioQueueGetTypeID_sRegisterFSAQTypeOnce, fsaq_registerFSAQType);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v10 = Instance;
    v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v10 + 24) = v11;
    if (!v11)
    {
      v52 = 4294954355;
      goto LABEL_177;
    }

    Key = FigCFWeakReferenceTableAddValueAndGetKey();
    if (Key)
    {
      goto LABEL_176;
    }

    FigCFWeakReferenceStore();
    Key = subaq_setupForDecode(v10, a2);
    if (Key)
    {
      goto LABEL_176;
    }

    LODWORD(outPropertyData[0].value) = 0;
    ioPropertyDataSize = 4;
    if (AudioFormatGetProperty(0x66646570u, 0x28u, *(v10 + 64), &ioPropertyDataSize, outPropertyData))
    {
      v13 = 1;
    }

    else
    {
      v13 = LODWORD(outPropertyData[0].value) == 0;
    }

    v14 = !v13;
    *(v10 + 104) = v14;
    v15 = FigSimpleMutexCreate();
    *(v10 + 136) = v15;
    if (!v15)
    {
      goto LABEL_175;
    }

    v16 = FigSimpleMutexCreate();
    *(v10 + 336) = v16;
    if (!v16)
    {
      goto LABEL_175;
    }

    *(v10 + 592) = 1;
    v17 = FigSimpleMutexCreate();
    *(v10 + 584) = v17;
    if (!v17)
    {
      goto LABEL_175;
    }

    v18 = FigReadWriteLockCreate();
    *(v10 + 704) = v18;
    if (!v18)
    {
      goto LABEL_175;
    }

    FigReadWriteLockLockForWrite();
    CFSetAddValue(qword_1ED4CA550, v10);
    FigReadWriteLockUnlockForWrite();
    *&v175.value = *a4;
    v175.epoch = *(a4 + 16);
    v176 = 0;
    v19 = (v10 + 40);
    v20 = MEMORY[0x1E6960C70];
    if (*(v10 + 40))
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM();
LABEL_63:
      v53 = OUTLINED_FUNCTION_283();
      Key = faq_connectToOfflineMixer(v53, v54);
      if (Key)
      {
        goto LABEL_176;
      }

      v55 = OUTLINED_FUNCTION_283();
      Key = subaq_ensureClock(v55);
      if (Key)
      {
        goto LABEL_176;
      }

      *(v10 + 676) = *v20;
      *(v10 + 692) = *(v20 + 2);
      snprintf(__str, 0x50uLL, "com.apple.coremedia.subAQ.timerQueue.%s", cf + 800);
      v56 = FigDispatchQueueCreateWithPriority();
      *(v10 + 728) = v56;
      if (v56)
      {
        *(v10 + 744) = 0;
        v57 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v56);
        *(v10 + 736) = v57;
        if (v57)
        {
          v58 = v57;
          v59 = *(v10 + 24);
          if (v59)
          {
            v60 = CFRetain(v59);
          }

          else
          {
            v60 = 0;
          }

          dispatch_set_context(v58, v60);
          dispatch_source_set_event_handler_f(*(v10 + 736), subaq_deferredPerformStartupSync);
          dispatch_source_set_timer(*(v10 + 736), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
          dispatch_resume(*(v10 + 736));
          v52 = 0;
          *a5 = v10;
          return v52;
        }
      }

LABEL_175:
      OUTLINED_FUNCTION_239();
      Key = FigSignalErrorAtGM();
LABEL_176:
      v52 = Key;
      goto LABEL_177;
    }

    if (cf[16])
    {
      goto LABEL_63;
    }

    FigSimpleMutexLock();
    if (cf[16])
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM();
      v52 = 0;
      goto LABEL_61;
    }

    v21 = *(v10 + 64);
    v22 = *(cf + 12);
    if ((v22 & 0x10) == 0 && *(v21 + 8) == 1633771875)
    {
      v24 = (v22 >> 1) & 0x10;
    }

    else
    {
      v24 = (v22 >> 1) & 0x10 | 4;
    }

    v25 = v24 & 0xFFFFFFFE | (v22 >> 2) & 1;
    *(v10 + 100) = (*v21 + 0.5);
    if (dword_1EAF16C30)
    {
      v26 = OUTLINED_FUNCTION_69_1();
      if (os_log_type_enabled(v26, type[0]))
      {
        v27 = v179;
      }

      else
      {
        v27 = v179 & 0xFFFFFFFE;
      }

      if (v27)
      {
        v28 = *(v10 + 64);
        v29 = *(v28 + 2);
        v30 = v29 >> 24;
        v31 = MEMORY[0x1E69E9830];
        if ((v29 & 0x80000000) != 0)
        {
          v32 = OUTLINED_FUNCTION_103_1();
          v28 = *(v10 + 64);
          LODWORD(v29) = *(v28 + 2);
        }

        else
        {
          v32 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000;
        }

        if (v32)
        {
          v33 = v30;
        }

        else
        {
          v33 = 46;
        }

        v34 = BYTE2(v29);
        v172 = v33;
        v35 = v31;
        if (BYTE2(v29) > 0x7Fu)
        {
          v36 = OUTLINED_FUNCTION_103_1();
          v28 = *(v10 + 64);
          LODWORD(v29) = *(v28 + 2);
        }

        else
        {
          v36 = *(v31 + 4 * BYTE2(v29) + 60) & 0x40000;
        }

        if (v36)
        {
          v37 = v34;
        }

        else
        {
          v37 = 46;
        }

        v38 = BYTE1(v29);
        if (BYTE1(v29) > 0x7Fu)
        {
          v39 = OUTLINED_FUNCTION_103_1();
          v28 = *(v10 + 64);
          LOBYTE(v29) = *(v28 + 8);
        }

        else
        {
          v39 = *(v35 + 4 * BYTE1(v29) + 60) & 0x40000;
        }

        if (v39)
        {
          v40 = v38;
        }

        else
        {
          v40 = 46;
        }

        v41 = v29;
        if (v29 > 0x7Fu)
        {
          v42 = OUTLINED_FUNCTION_103_1();
          v28 = *(v10 + 64);
        }

        else
        {
          v42 = *(v35 + 4 * v29 + 60) & 0x40000;
        }

        v43 = *(v28 + 5);
        if (v42)
        {
          v44 = v41;
        }

        else
        {
          v44 = 46;
        }

        v45 = *v28;
        v46 = cf[72];
        ioPropertyDataSize = 136317698;
        v186 = "subaq_buildCAAudioQueue";
        v187 = 2048;
        v188 = cf;
        v189 = 2048;
        v190 = v10;
        v191 = 2082;
        v192 = cf + 800;
        v193 = 1024;
        v194 = v172;
        v195 = 1024;
        v196 = v37;
        v197 = 1024;
        v198 = v40;
        v199 = 1024;
        v200 = v44;
        v201 = 1024;
        v202 = v43;
        v203 = 2048;
        *v204 = v45;
        *&v204[8] = 1024;
        *v205 = v46;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
        v20 = MEMORY[0x1E6960C70];
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19 = (v10 + 40);
    }

    CFRetain(*(v10 + 24));
    v47 = *(v10 + 64);
    v48 = *(v10 + 24);
    v49 = *MEMORY[0x1E695E8D0];
    v50 = *(cf + 33);
    outPropertyData[0] = v175;
    v51 = FigAudioQueueTimingShimNewOutput(v47, subaq_outputBufferBecameReady, v48, 0, v49, v25, v50, &outPropertyData[0].value, v19);
    if (v51)
    {
      v52 = v51;
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM();
      CFRelease(*(v10 + 24));
LABEL_61:
      FigSimpleMutexUnlock();
      goto LABEL_62;
    }

    v179 = a3;
    v173 = a5;
    if (cf[16])
    {
      v81 = v20;
      Mutable = 0;
    }

    else
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (a3)
      {
        FigAudioQueueTimingShimSetProperty(*v19, 0x61716364u, &v179, 8u);
        v168 = v179;
        v63 = OUTLINED_FUNCTION_249();
        CFStringAppendFormat(v63, v64, v65, v168);
      }

      Extensions = CMFormatDescriptionGetExtensions(*(v10 + 56));
      if (Extensions)
      {
        Value = CFDictionaryGetValue(Extensions, @"AudibleGroupID");
        if (Value)
        {
          LODWORD(outPropertyData[0].value) = 0;
          CFNumberGetValue(Value, kCFNumberSInt32Type, outPropertyData);
          v68 = OUTLINED_FUNCTION_53_1();
          FigAudioQueueTimingShimSetProperty(v68, 0x61676964u, v69, 4u);
          value_low = LODWORD(outPropertyData[0].value);
          v70 = OUTLINED_FUNCTION_249();
          CFStringAppendFormat(v70, v71, v72, value_low);
        }
      }

      v73 = *(v10 + 80);
      if (v73 && *(v10 + 88))
      {
        v170 = *v73;
        v171 = *(*(v10 + 64) + 28);
        v74 = OUTLINED_FUNCTION_249();
        CFStringAppendFormat(v74, v75, v76, v170, v171);
        v77 = *(v10 + 88);
        if (HIDWORD(v77))
        {
          *type = 0;
          v177 = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v79 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_28_1(v79))
          {
            ioPropertyDataSize = 136315906;
            v186 = "subaq_setDefaultPropertiesOnAudioQueueAndCopyConfigDescription";
            v187 = 2048;
            v188 = cf;
            v189 = 2048;
            v190 = v10;
            v191 = 2082;
            v192 = cf + 800;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_417();
        }

        else
        {
          FigAudioQueueTimingShimSetProperty(*(v10 + 40), 0x6171636Cu, *(v10 + 80), v77);
        }
      }

      outPropertyData[0].value = 0;
      MagicCookie = CMAudioFormatDescriptionGetMagicCookie(*(v10 + 56), outPropertyData);
      if (MagicCookie && outPropertyData[0].value)
      {
        FigAudioQueueTimingShimSetProperty(*v19, 0x61716D63u, MagicCookie, outPropertyData[0].value);
      }

      v81 = v20;
      Extension = CMFormatDescriptionGetExtension(*(v10 + 56), *MEMORY[0x1E69600A0]);
      outPropertyData[0].value = Extension;
      if (Extension)
      {
        v83 = Extension;
        v84 = CFGetTypeID(Extension);
        if (v84 == CFDictionaryGetTypeID() && CFDictionaryGetCount(v83) >= 1)
        {
          v85 = OUTLINED_FUNCTION_53_1();
          FigAudioQueueTimingShimSetProperty(v85, 0x69736F65u, v86, 8u);
        }
      }

      LODWORD(outPropertyData[0].value) = 0;
      v87 = OUTLINED_FUNCTION_53_1();
      FigAudioQueueTimingShimSetProperty(v87, 0x71726169u, v88, 4u);
      if ((*(cf + 24) & 0x4004) == 0)
      {
        v89 = *(cf + 88);
        LODWORD(outPropertyData[0].value) = 1;
        ioPropertyDataSize = 0;
        *type = v89;
        v90 = OUTLINED_FUNCTION_249();
        CFStringAppendFormat(v90, v91, v92, HIBYTE(v89), BYTE2(v89), BYTE1(v89), v89);
        FigAudioQueueTimingShimSetProperty(*v19, 0x715F7470u, outPropertyData, 4u);
        v93 = faq_scaledEditRateSupportValidator_one32nd_to_32;
        if (v89 != 1987276900 && v89 != 1936745827 && v89 != 1953064047)
        {
          if (v89 == 1819376236)
          {
            v93 = faq_scaledEditRateSupportValidator_lowQualityZeroLatency;
          }

          else
          {
            v93 = faq_scaledEditRateSupportValidator_noScaleAllowed;
          }
        }

        *(cf + 84) = v93;
        FigAudioQueueTimingShimSetProperty(*v19, 0x71747061u, type, 4u);
        FigAudioQueueTimingShimSetProperty(*v19, 0x71747062u, &ioPropertyDataSize, 4u);
      }

      if (cf[680] || *(cf + 197) != 0.0)
      {
        LODWORD(outPropertyData[0].value) = 1;
        v96 = OUTLINED_FUNCTION_249();
        CFStringAppendFormat(v96, v97, v98);
        v99 = OUTLINED_FUNCTION_53_1();
        FigAudioQueueTimingShimSetProperty(v99, 0x71737232u, v100, 4u);
      }

      if (cf[696])
      {
        v101 = OUTLINED_FUNCTION_283();
        subaq_setSweepFilterEnable(v101, v102, v103);
        v104 = OUTLINED_FUNCTION_249();
        CFStringAppendFormat(v104, v105, v106);
      }

      LODWORD(outPropertyData[0].value) = (*(cf + 12) >> 8) & 1;
      v107 = OUTLINED_FUNCTION_53_1();
      FigAudioQueueTimingShimSetProperty(v107, 0x715F7370u, v108, 4u);
      if (LODWORD(outPropertyData[0].value))
      {
        v109 = OUTLINED_FUNCTION_249();
        CFStringAppendFormat(v109, v110, v111);
      }

      if (FigAudioFormatDescriptionGetCinematicAudioEffectEligibility())
      {
        *(v10 + 784) = 1;
      }

      if ((cf[49] & 8) != 0)
      {
        LODWORD(outPropertyData[0].value) = 1;
        v112 = OUTLINED_FUNCTION_53_1();
        FigAudioQueueTimingShimSetProperty(v112, 0x6369616Fu, v113, 4u);
        v114 = OUTLINED_FUNCTION_249();
        CFStringAppendFormat(v114, v115, v116);
      }

      LODWORD(outPropertyData[0].value) = 1;
      v117 = OUTLINED_FUNCTION_53_1();
      FigAudioQueueTimingShimSetProperty(v117, 0x24696E73u, v118, 4u);
      if ((cf[49] & 2) == 0)
      {
        LODWORD(outPropertyData[0].value) = 1;
        FigAudioQueueTimingShimSetProperty(*v19, 0x73747263u, outPropertyData, 4u);
        v119 = OUTLINED_FUNCTION_249();
        CFStringAppendFormat(v119, v120, v121);
      }

      LODWORD(outPropertyData[0].value) = 1;
      FigAudioQueueTimingShimSetProperty(*v19, 0x7066666Cu, outPropertyData, 4u);
      if (CFStringGetLength(Mutable) >= 3)
      {
        v122 = OUTLINED_FUNCTION_249();
        v211.length = 2;
        CFStringDelete(v122, v211);
      }
    }

    v123 = OUTLINED_FUNCTION_283();
    v125 = subaq_buildAudioProcssingUnits(v123, v124);
    if (v125)
    {
      v52 = v125;
      a5 = v173;
      v20 = v81;
    }

    else
    {
      LODWORD(v179) = 0;
      v126 = MEMORY[0x19A8D0E00](v10 + 16);
      v127 = FigUInt32NearestPowerOfTwo();
      if (v127 >= 0x20000)
      {
        v128 = 0x20000;
      }

      else
      {
        v128 = v127;
      }

      v129 = v128 >> 2;
      if (v128 >> 2 >= 0x4000)
      {
        v129 = 0x4000;
      }

      LODWORD(outPropertyData[0].value) = v128;
      ioPropertyDataSize = v129;
      FigAudioQueueTimingShimSetProperty(*(v10 + 40), 0x64636266u, outPropertyData, 4u);
      FigAudioQueueTimingShimSetProperty(*(v10 + 40), 0x6463626Cu, &ioPropertyDataSize, 4u);
      v130 = *(*(v10 + 64) + 8);
      if (v130 == 1633772400 || v130 == 1633772392)
      {
        LODWORD(v179) = ioPropertyDataSize >> 1;
        FigAudioQueueTimingShimSetProperty(*v19, 0x646D6663u, &v179, 4u);
      }

      v20 = v81;
      if (v126)
      {
        CFRelease(v126);
      }

      ioPropertyDataSize = 0;
      LODWORD(v179) = 4;
      v132 = MEMORY[0x19A8D0E00](v10 + 16);
      if (FigAudioQueueTimingShimGetProperty(*(v10 + 40), 0x64636266u, &ioPropertyDataSize, &v179))
      {
        *(v10 + 108) = *v81;
        epoch = *(v81 + 2);
      }

      else
      {
        CMTimeMake(outPropertyData, ioPropertyDataSize, *(v10 + 100));
        *(v10 + 108) = *&outPropertyData[0].value;
        epoch = outPropertyData[0].epoch;
      }

      *(v10 + 124) = epoch;
      if (v132)
      {
        CFRelease(v132);
      }

      v134 = OUTLINED_FUNCTION_283();
      v135 = subaq_setCPECryptorPropertyOnAudioQueue(v134);
      if (v135 || (v136 = *v81, *(v10 + 408) = *v81, v137 = *(v81 + 2), *(v10 + 424) = v137, *(v10 + 432) = v136, *(v10 + 448) = v137, *(v10 + 456) = v136, *(v10 + 472) = v137, *(v10 + 532) = v136, *(v10 + 548) = v137, *(v10 + 572) = v137, *(v10 + 556) = v136, *(v10 + 580) = subaq_getCurrentPlayRate2ParameterValue(v10), v138 = *(v10 + 32), OUTLINED_FUNCTION_0_25(), v135 = FigAudioQueueTimingShimAddPropertyListener(v139, 0x71637665u, v140, v138), v135) || (OUTLINED_FUNCTION_0_25(), v135 = FigAudioQueueTimingShimAddPropertyListener(v141, 0x61747072u, v142, v138), v135) || (OUTLINED_FUNCTION_37_2(), v135 = FigAudioQueueTimingShimAddPropertyListener(v143, 0x6171726Eu, v144, v138), v135) || cf[72] && (OUTLINED_FUNCTION_0_25(), v135 = FigAudioQueueTimingShimAddPropertyListener(v145, 0x666C7368u, v146, v138), v135) || (cf[49] & 2) == 0 && ((OUTLINED_FUNCTION_0_25(), v135 = FigAudioQueueTimingShimAddPropertyListener(v147, 0x72746F72u, v148, v138), v135) || (OUTLINED_FUNCTION_0_25(), v135 = FigAudioQueueTimingShimAddPropertyListener(v150, v149 + 1291, v151, v138), v135)) || (*(v10 + 712) = 0, v176 = 8, FigAudioQueueTimingShimGetProperty(*(v10 + 40), 0x71646C73u, (v10 + 712), &v176), *(v10 + 720) = *(v10 + 712), OUTLINED_FUNCTION_0_25(), v135 = FigAudioQueueTimingShimAddPropertyListener(v152, 0x71646C73u, v153, v138), v135) || (OUTLINED_FUNCTION_0_25(), v135 = FigAudioQueueTimingShimAddPropertyListener(v154, 0x6864666Du, v155, v138), v135))
      {
        v52 = v135;
      }

      else
      {
        v156 = *(cf + 33);
        if (!v156)
        {
          goto LABEL_156;
        }

        outPropertyData[0].value = 0;
        v157 = *(CMBaseObjectGetVTable() + 16);
        if (!v157)
        {
          goto LABEL_156;
        }

        v158 = *(v157 + 16);
        if (!v158 || v158(v156, @"FAS_MXSession", *MEMORY[0x1E695E480], outPropertyData))
        {
          goto LABEL_156;
        }

        v159 = OUTLINED_FUNCTION_53_1();
        v52 = FigAudioQueueTimingShimSetProperty(v159, 0x636D7873u, v160, 8u);
        if (outPropertyData[0].value)
        {
          CFRelease(outPropertyData[0].value);
        }

        if (!v52)
        {
LABEL_156:
          if (dword_1EAF16C30)
          {
            v161 = OUTLINED_FUNCTION_69_1();
            v162 = os_log_type_enabled(v161, type[0]);
            if (OUTLINED_FUNCTION_28_1(v162))
            {
              v163 = *(v10 + 64);
              v164 = *(v163 + 2);
              v165 = *(v163 + 7);
              v166 = *(v163 + 5);
              v167 = *v163;
              ioPropertyDataSize = 136318210;
              v186 = "subaq_buildCAAudioQueue";
              v187 = 2048;
              v188 = cf;
              v189 = 2048;
              v190 = v10;
              v191 = 2082;
              v192 = cf + 800;
              v193 = 1024;
              v194 = HIBYTE(v164);
              v195 = 1024;
              v196 = BYTE2(v164);
              v197 = 1024;
              v198 = BYTE1(v164);
              v199 = 1024;
              v200 = v164;
              v201 = 1024;
              v202 = v164;
              v203 = 1024;
              *v204 = v165;
              *&v204[4] = 1024;
              *&v204[6] = v166;
              *v205 = 2048;
              *&v205[2] = v167;
              v206 = 2114;
              v207 = Mutable;
              OUTLINED_FUNCTION_117();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            a5 = v173;
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417();
            v52 = 0;
            goto LABEL_162;
          }

          v52 = 0;
        }
      }

      a5 = v173;
    }

LABEL_162:
    FigSimpleMutexUnlock();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

LABEL_62:
    if (!v52)
    {
      goto LABEL_63;
    }

LABEL_177:
    CFRelease(v10);
    return v52;
  }

  OUTLINED_FUNCTION_239();

  return FigSignalErrorAtGM();
}