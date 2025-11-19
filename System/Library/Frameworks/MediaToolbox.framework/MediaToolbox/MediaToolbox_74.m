uint64_t FigEndpointStreamAudioEngineRemoteXPC_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, void (*a4)(uint64_t, uint64_t, __int128 *, __int128 *, void, uint64_t, double), uint64_t a5, double a6)
{
  v21 = 0;
  xdict = 0;
  v20 = 0;
  ObjectID = remoteXPCAudioEngine_GetObjectID(a1, &v21);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (xpc_dictionary_set_double(xdict, "Rate", a6), v18 = *a2, v19 = *(a2 + 2), ObjectID = FigXPCMessageSetCMTime(), ObjectID) || (v18 = *a3, v19 = *(a3 + 2), ObjectID = FigXPCMessageSetCMTime(), ObjectID) || (ObjectID = FigXPCMessageSetCFDictionary(), ObjectID))
  {
    v14 = ObjectID;
    if (!a4)
    {
      return FigXPCRelease();
    }

    goto LABEL_10;
  }

  v13 = FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, xdict, 4, a4, a5, &v20);
  if (a4)
  {
    v14 = v13;
    if (v13)
    {
      if (FigEndpointStreamAudioEngineRemoteXPC_tryRemoveCallback(a1, v20))
      {
LABEL_10:
        v18 = *MEMORY[0x1E6960C70];
        v19 = *(MEMORY[0x1E6960C70] + 16);
        v16 = v18;
        v17 = v19;
        a4(a1, v14, &v18, &v16, 0, a5, 0.0);
      }
    }
  }

  return FigXPCRelease();
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (a4)
  {
    v13 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
    block[3] = &unk_1E7496F38;
    block[4] = &v21;
    block[5] = a1;
    block[6] = DerivedStorage;
    block[7] = a1;
    v17 = a3;
    v18 = 0;
    v19 = a4;
    v20 = a5;
    dispatch_sync(v13, block);
    xpc_dictionary_set_uint64(a2, "CompletionID", v22[3]);
  }

  v14 = FigXPCRemoteClientSendSyncMessage();
  if (a6)
  {
    *a6 = v22[3];
  }

  FigXPCRemoteClientKillServerOnTimeout();
  _Block_object_dispose(&v21, 8);
  return v14;
}

void *__remoteXPCAudioEngine_getAPAudioSourceSharedMemoryWriterSetMessage_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
  if (result)
  {
    result = dlsym(result, "APAudioSourceSharedMemoryWriterSetMessageParameters");
    remoteXPCAudioEngine_getAPAudioSourceSharedMemoryWriterSetMessage_sAudioSourceSMWriterSetMessage = result;
  }

  return result;
}

void remoteXPCAudioEngine_freeCompletionCallback(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigLayerViewGetClassID()
{
  if (FigLayerViewGetClassID_sRegisterFigLayerViewTypeOnce != -1)
  {
    FigLayerViewGetClassID_cold_1();
  }

  return FigLayerViewGetClassID_sFigLayerViewClassID;
}

uint64_t __FigLayerViewGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigLayerViewGetTypeID()
{
  if (FigLayerViewGetClassID_sRegisterFigLayerViewTypeOnce != -1)
  {
    FigLayerViewGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigPKDMSECPECryptorCreate(const void *a1, void *a2, const void *a3, const __CFAllocator *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v25[0] = 1;
  v25[1] = PersistentKeyUpdatedCallback_0;
  v25[2] = KeyRequestErrorOccurredCallback_0;
  v26 = 0;
  if (FigPKDMSECPECryptorCreate_once != -1)
  {
    FigPKDMSECPECryptorCreate_cold_1();
  }

  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v11 = 4294955146;
  if (!a6 || !a2 || !a1 || !a5)
  {
    goto LABEL_28;
  }

  MEMORY[0x19A8D3660](&FigPKDMSECPECryptorGetClassID_sRegisterFigPKDMSECPECryptorTypeOnce, RegisterFigPKDMSECPECryptorType);
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    goto LABEL_30;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v14 = DerivedStorage, v15 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(v14 + 8) = v15) == 0) || (v16 = FigReadWriteLockCreate(), (*(v14 + 16) = v16) == 0) || (v17 = dispatch_queue_create("AirPlayStreamingNotifications", 0), (*(v14 + 120) = v17) == 0))
  {
    v11 = 4294955145;
    goto LABEL_28;
  }

  *v14 = CFRetain(a1);
  *(v14 + 32) = CFRetain(a2);
  v12 = EnsureUUID_1(v26);
  if (v12)
  {
    goto LABEL_30;
  }

  v18 = *(v14 + 96);
  global_queue = dispatch_get_global_queue(0, 0);
  v12 = PKDKeyManagerInstallCallbacksForKeyID(a2, v18, v26, global_queue, v25);
  if (v12)
  {
    goto LABEL_30;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v12 = FigNotificationCenterAddWeakListener();
  if (v12)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    *(v14 + 56) = CFRetain(a3);
    goto LABEL_19;
  }

  v12 = FigCPEExternalProtectionMonitorCreateForMethods(a4, 4u, 0, 0, (v14 + 56));
  if (v12)
  {
LABEL_30:
    v11 = v12;
    goto LABEL_28;
  }

  *(v14 + 64) = 1;
LABEL_19:
  Value = CFDictionaryGetValue(a5, @"AssetID");
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(v14 + 40) = Value;
  v21 = CFDictionaryGetValue(a5, @"CryptKeyAttributes");
  if (!v21)
  {
    *(v14 + 104) = 0;
    goto LABEL_27;
  }

  v22 = CFRetain(v21);
  *(v14 + 104) = v22;
  if (!v22)
  {
LABEL_27:
    FigPKDMSECPECryptorCreate_cold_2(&v27);
    v11 = v27;
    goto LABEL_28;
  }

  FigCPEExternalProtectionMonitorBeginMonitoring(*(v14 + 56));
  v11 = AddWeakListenerOnExternalProtectionMonitor_0(v26, *(v14 + 56));
  if (!v11)
  {
    *(v14 + 112) = 0;
    *(v14 + 152) = 1;
    *a6 = v26;
    return v11;
  }

LABEL_28:
  if (v26)
  {
    CFRelease(v26);
  }

  return v11;
}

void PersistentKeyUpdatedCallback_0(uint64_t a1, void *a2)
{
  values = a2;
  CMBaseObjectGetDerivedStorage();
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6961080], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    v3 = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v3);
  }

  else
  {
    PersistentKeyUpdatedCallback_cold_1_0();
  }
}

void KeyRequestErrorOccurredCallback_0(uint64_t a1, void *a2)
{
  values = a2;
  CMBaseObjectGetDerivedStorage();
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6961018], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    v3 = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v3);
  }

  else
  {
    KeyRequestErrorOccurredCallback_cold_1();
  }
}

uint64_t DecryptContextInvalidated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    CFDictionaryGetValue(a5, @"AssetID");
    result = FigCFEqual();
    if (result)
    {

      return InvalidateGuts(a2);
    }
  }

  return result;
}

uint64_t AddWeakListenerOnExternalProtectionMonitor_0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterAddWeakListener();
    }

    else
    {
      AddWeakListenerOnExternalProtectionMonitor_cold_1_0(&v3);
      return v3;
    }
  }

  else
  {
    AddWeakListenerOnExternalProtectionMonitor_cold_2_0(&v4);
    return v4;
  }
}

void FigCFRelease_13(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void FigPKDMSECPECryptorFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  InvalidateGuts(a1);
  if (*(DerivedStorage + 16))
  {
    FigReadWriteLockDestroy();
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 120);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 120) = 0;
  }
}

__CFString *FigPKDMSECPECryptorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = Mutable == 0;
  }

  if (!v5)
  {
    FigPKDMSECPECryptorCopyDebugDescription_cold_1(DerivedStorage, a1, Mutable);
  }

  FigReadWriteLockUnlockForRead();
  return Mutable;
}

void InvalidateGuts(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  v3 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = 1;
  StopAndReleaseTimer((DerivedStorage + 88));
  FigReadWriteLockUnlockForWrite();
  if (!v3)
  {
    v4 = *DerivedStorage;
    *DerivedStorage = 0;
    v5 = *(DerivedStorage + 32);
    if (v5)
    {
      PKDKeyManagerRemoveKeyID(v5, *(DerivedStorage + 96));
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    v6 = *(DerivedStorage + 8);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 8) = 0;
    }

    v7 = *(DerivedStorage + 32);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 32) = 0;
    }

    v8 = *(DerivedStorage + 40);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 40) = 0;
    }

    v9 = *(DerivedStorage + 56);
    if (v9)
    {
      RemoveWeakListenerOnExternalProtectionMonitor_0(a1, v9);
      FigCPEExternalProtectionMonitorEndMonitoring(*(DerivedStorage + 56));
      v10 = *(DerivedStorage + 56);
      if (v10)
      {
        CFRelease(v10);
        *(DerivedStorage + 56) = 0;
      }
    }

    if (v4)
    {
      if (FigPKDCPEProtectorCryptorWasInvalidated(v4, a1) == -15844)
      {
        *(DerivedStorage + 25) = 1;
      }

      CFRelease(v4);
    }

    v11 = *(DerivedStorage + 80);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 80) = 0;
    }

    v12 = *(DerivedStorage + 96);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 96) = 0;
    }

    v13 = *(DerivedStorage + 104);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 104) = 0;
    }

    *(DerivedStorage + 112) = 0;
    v14 = *(DerivedStorage + 136);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 136) = 0;
    }

    v15 = *(DerivedStorage + 144);
    if (v15)
    {
      *(DerivedStorage + 144) = 0;

      free(v15);
    }
  }
}

uint64_t RemoveWeakListenerOnExternalProtectionMonitor_0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterRemoveWeakListener();
    }

    else
    {
      RemoveWeakListenerOnExternalProtectionMonitor_cold_1_0(&v3);
      return v3;
    }
  }

  else
  {
    RemoveWeakListenerOnExternalProtectionMonitor_cold_2_0(&v4);
    return v4;
  }
}

uint64_t ExternalProtectionStatusChangedCallback_4()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigPKDMSECPECryptorTestAndSetKeyRequestState(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v14 = 0;
  if (!a2)
  {
    FigPKDMSECPECryptorTestAndSetKeyRequestState_cold_2(v16);
LABEL_18:
    v11 = v16[0];
    goto LABEL_9;
  }

  if (!a3)
  {
    FigPKDMSECPECryptorTestAndSetKeyRequestState_cold_1(v16);
    goto LABEL_18;
  }

  v10 = DerivedStorage;
  FigReadWriteLockLockForWrite();
  if (*(v10 + 24))
  {
    v11 = 4294954511;
  }

  else
  {
    v11 = PKDKeyManagerTestAndSetKeyRequestState(*(v10 + 32), *(v10 + 96), a2, a3, &v15, &v14);
    if (!v11 && a3 == 2 && v15)
    {
      StopAndReleaseTimer((v10 + 88));
      v11 = 0;
    }
  }

  FigReadWriteLockUnlockForWrite();
LABEL_9:
  if (dword_1EAF179B8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    *a4 = v15;
  }

  if (a5)
  {
    *a5 = v14;
  }

  return v11;
}

uint64_t FigPKDMSECPECryptorCreatePackagedPersistentKey(uint64_t a1, uint64_t a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      FigPKDMSECPECryptorCreatePackagedPersistentKey_cold_1(a3, DerivedStorage, a2, &v7);
      return v7;
    }

    else
    {
      FigPKDMSECPECryptorCreatePackagedPersistentKey_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigPKDMSECPECryptorCreatePackagedPersistentKey_cold_3(&v9);
    return v9;
  }
}

uint64_t RegisterFigPKDMSECPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

void OUTLINED_FUNCTION_3_153(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17)
{
  *(v17 - 204) = 4;
  *(v17 - 200) = a17;
  *(v17 - 192) = a16;
  *(v17 - 184) = a14;
  *(v17 - 176) = a16;
  *(v17 - 156) = 0;
}

void OUTLINED_FUNCTION_4_150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 - 144) = 0u;
  *(v10 - 128) = 0u;
  *(v10 - 176) = 0u;
  *(v10 - 160) = 0u;
  *(v10 - 208) = 0u;
  *(v10 - 192) = 0u;
  *(v10 - 240) = 0u;
  *(v10 - 224) = 0u;

  bzero(va, 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_6_117(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CMBlockBufferRef *blockBufferOut, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CMBlockBufferRef a15, size_t dataLength)
{
  v18 = dataLength;
  v19 = dataLength;

  return CMBlockBufferCreateWithMemoryBlock(v16, 0, v18, v16, 0, 0, v19, 1u, &a15);
}

uint64_t OUTLINED_FUNCTION_8_88(CMBlockBufferRef sourceBuffer, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateContiguous(v18, sourceBuffer, v18, 0, 0, 0, 0, &blockBufferOut);
}

uint64_t OUTLINED_FUNCTION_10_76()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void OUTLINED_FUNCTION_11_73(int a1@<W8>)
{
  *(v1 - 232) = a1;
  *(v1 - 228) = 6;
  *(v1 - 224) = 0;
  *(v1 - 216) = 0;
  *(v1 - 208) = 0;
}

CFDataRef OUTLINED_FUNCTION_15_57@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, UInt8 bytes)
{

  return CFDataCreate(v12, &bytes, (24 * a1));
}

uint64_t FigAirPlaySecureStopRouterCreateSecureStopUUID(CFStringRef theString, __CFString **a2)
{
  if (theString)
  {
    if (a2)
    {
      *a2 = 0;
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
      if (MutableCopy)
      {
        v4 = MutableCopy;
        v5 = FigAtomicIncrement32();
        CFStringAppendFormat(v4, 0, @"_%u", v5);
        result = 0;
        *a2 = v4;
      }

      else
      {
        FigAirPlaySecureStopRouterCreateSecureStopUUID_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigAirPlaySecureStopRouterCreateSecureStopUUID_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigAirPlaySecureStopRouterCreateSecureStopUUID_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t FigAirPlaySecureStopRouterRegisterSecureStopManager(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0;
  v10 = 32;
  if (!a1)
  {
    FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_3();
LABEL_9:
    v4 = v11;
    goto LABEL_6;
  }

  if (!a2)
  {
    FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_2();
    goto LABEL_9;
  }

  if (fassr_ensureAirPlayManagerSingletonContext_sFigSecureStopManagerAirPlayOnce != -1)
  {
    FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_1();
  }

  *(v8 + 6) = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __FigAirPlaySecureStopRouterRegisterSecureStopManager_block_invoke;
  v6[3] = &unk_1E7496FE0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  dispatch_sync(sAirPlayManagerSingletonContext_1, v6);
  v4 = *(v8 + 6);
LABEL_6:
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __FigAirPlaySecureStopRouterRegisterSecureStopManager_block_invoke(uint64_t a1)
{
  if (!CFDictionaryContainsKey(sAirPlayManagerSingletonContext_0, *(a1 + 40)))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v3 = Mutable;
      CFDictionarySetValue(Mutable, @"FigAirPlaySSM_SecureStopManager", *(a1 + 48));
      CFDictionarySetValue(sAirPlayManagerSingletonContext_0, *(a1 + 40), v3);

      CFRelease(v3);
    }

    else
    {
      __FigAirPlaySecureStopRouterRegisterSecureStopManager_block_invoke_cold_1(a1);
    }
  }
}

uint64_t FigAirPlaySecureStopRouterUpdateRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0;
  v14 = 32;
  if (!a1)
  {
    FigAirPlaySecureStopRouterUpdateRecord_cold_5();
LABEL_13:
    v8 = v15;
    goto LABEL_8;
  }

  if (!a2)
  {
    FigAirPlaySecureStopRouterUpdateRecord_cold_4();
    goto LABEL_13;
  }

  if (!a3)
  {
    FigAirPlaySecureStopRouterUpdateRecord_cold_3();
    goto LABEL_13;
  }

  if (!a4)
  {
    FigAirPlaySecureStopRouterUpdateRecord_cold_2();
    goto LABEL_13;
  }

  if (fassr_ensureAirPlayManagerSingletonContext_sFigSecureStopManagerAirPlayOnce != -1)
  {
    FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_1();
  }

  *(v12 + 6) = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __FigAirPlaySecureStopRouterUpdateRecord_block_invoke;
  v10[3] = &unk_1E7497008;
  v10[4] = &v11;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;
  v10[8] = a4;
  dispatch_sync(sAirPlayManagerSingletonContext_1, v10);
  v8 = *(v12 + 6);
LABEL_8:
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t FigAirPlaySecureStopRouterCommitToDisk(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (a1)
  {
    if (fassr_ensureAirPlayManagerSingletonContext_sFigSecureStopManagerAirPlayOnce != -1)
    {
      FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_1();
    }

    *(v6 + 6) = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigAirPlaySecureStopRouterCommitToDisk_block_invoke;
    block[3] = &unk_1E7497030;
    block[4] = &v5;
    block[5] = a1;
    dispatch_sync(sAirPlayManagerSingletonContext_1, block);
    v2 = *(v6 + 6);
  }

  else
  {
    FigAirPlaySecureStopRouterCommitToDisk_cold_2();
    v2 = v9;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t FigAirPlaySecureStopRouterFinalizeRecordAndCommitToDisk(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (a1)
  {
    if (fassr_ensureAirPlayManagerSingletonContext_sFigSecureStopManagerAirPlayOnce != -1)
    {
      FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_1();
    }

    *(v6 + 6) = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigAirPlaySecureStopRouterFinalizeRecordAndCommitToDisk_block_invoke;
    block[3] = &unk_1E7497058;
    block[4] = &v5;
    block[5] = a1;
    dispatch_sync(sAirPlayManagerSingletonContext_1, block);
    v2 = *(v6 + 6);
  }

  else
  {
    FigAirPlaySecureStopRouterFinalizeRecordAndCommitToDisk_cold_2();
    v2 = v9;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void __FigAirPlaySecureStopRouterFinalizeRecordAndCommitToDisk_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 40), @"record");
  cf = 0;
  if (!Value)
  {
    __FigAirPlaySecureStopRouterFinalizeRecordAndCommitToDisk_block_invoke_cold_1(a1);
    goto LABEL_14;
  }

  *(*(*(a1 + 32) + 8) + 24) = FigSecureStopRecordCreateFromSerializedData(Value, &cf);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v3 = cf;
  v4 = *(cf + 7);
  if (v4)
  {
    v5 = CFDictionaryGetValue(sAirPlayManagerSingletonContext_0, *(cf + 7));
    if (v5)
    {
      v6 = CFRetain(v5);
      v7 = v6;
      if (v6)
      {
        v8 = CFDictionaryGetValue(v6, @"FigAirPlaySSM_SecureStopManager");
        if (v8)
        {
          v9 = v8;
          v10 = CFDictionaryGetValue(v7, @"FigAirPlaySSM_AppID");
          if (v10)
          {
            v11 = v10;
            v12 = *(cf + 6);
            v13 = *(cf + 7);
            v14 = *(cf + 2);
            v15 = *(cf + 3);
            v16 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            v17 = v16 ? v16(v9, v11, v12, v13, 0, v14, v15) : -12782;
            *(*(*(a1 + 32) + 8) + 24) = v17;
            if (!*(*(*(a1 + 32) + 8) + 24))
            {
              CFDictionaryRemoveValue(sAirPlayManagerSingletonContext_0, v4);
            }
          }
        }
      }

LABEL_15:
      v3 = cf;
      if (!cf)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v7 = 0;
LABEL_16:
  CFRelease(v3);
LABEL_17:
  if (v7)
  {
    CFRelease(v7);
  }
}

dispatch_queue_t __fassr_ensureAirPlayManagerSingletonContext_block_invoke()
{
  sAirPlayManagerSingletonContext_0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!sAirPlayManagerSingletonContext_0)
  {
    return __fassr_ensureAirPlayManagerSingletonContext_block_invoke_cold_1();
  }

  result = dispatch_queue_create("com.apple.coremedia.airplaysecurestopmanager.singletoncontext", 0);
  sAirPlayManagerSingletonContext_1 = result;
  if (!result)
  {
    return __fassr_ensureAirPlayManagerSingletonContext_block_invoke_cold_1();
  }

  return result;
}

uint64_t FigFairPlayOctaviaCPECryptorCreate(const void *a1, const void *a2, int a3, uint64_t a4, const void *a5, void *a6, const void *a7, CFTypeRef *a8)
{
  v66 = *MEMORY[0x1E69E9840];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2000000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  v56 = 0;
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v13 = -12150;
  if (!a1)
  {
    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  if (!a5)
  {
    goto LABEL_18;
  }

  v14 = a1;
  v15 = a6;
  if (!a6 || !a8 || !a7)
  {
    goto LABEL_18;
  }

  v16 = a2;
  MEMORY[0x19A8D3660](&FigFairPlayOctaviaCPECryptorGetClassID_sRegisterFigFairPlayOctaviaCPECryptorTypeOnce, RegisterFigFairPlayOctaviaCPECryptorType);
  v17 = CMDerivedObjectCreate();
  *(v58 + 6) = v17;
  if (v17)
  {
    goto LABEL_27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v13 = -12151;
    goto LABEL_18;
  }

  v19 = DerivedStorage;
  if (a2)
  {
    v20 = CFRetain(a2);
  }

  else
  {
    v20 = 0;
  }

  *v19 = v20;
  *(v19 + 8) = FigFairPlayCopyDisposeStorageAllocator();
  *(v19 + 16) = CFRetain(v14);
  *(v19 + 40) = CFRetain(a5);
  *(v19 + 72) = CFRetain(a7);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2000000000;
  v65 = 0;
  if (gContextAccessInitOnce != -1)
  {
    FigFairPlayOctaviaCPECryptorCreate_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CopyContextAccessQueue_block_invoke_2;
  block[3] = &unk_1E74970E8;
  block[4] = &v62;
  block[5] = a7;
  dispatch_sync(gContextSerialAccessQueue, block);
  v21 = v63[3];
  _Block_object_dispose(&v62, 8);
  *(v19 + 48) = v21;
  if (!v21)
  {
    v13 = -12158;
    goto LABEL_18;
  }

  if ((a3 & 1) == 0)
  {
    v13 = -12161;
LABEL_18:
    *(v58 + 6) = v13;
    goto LABEL_27;
  }

  DPInfoFromSinfExtensions = FigFairPlayGetDPInfoFromSinfExtensions(*(v19 + 40));
  if (!DPInfoFromSinfExtensions)
  {
    LegacySinfFromSinfExtensions = FigFairPlayGetLegacySinfFromSinfExtensions(*(v19 + 40));
    ExtendedSinfFromSinfExtensions = FigFairPlayGetExtendedSinfFromSinfExtensions(*(v19 + 40));
    v24 = ExtendedSinfFromSinfExtensions;
    if (LegacySinfFromSinfExtensions)
    {
      BytePtr = CFDataGetBytePtr(LegacySinfFromSinfExtensions);
      LODWORD(LegacySinfFromSinfExtensions) = CFDataGetLength(LegacySinfFromSinfExtensions);
      if (v24)
      {
LABEL_23:
        v26 = CFDataGetBytePtr(v24);
        Length = CFDataGetLength(v24);
        v25 = 0;
        v24 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      BytePtr = 0;
      if (ExtendedSinfFromSinfExtensions)
      {
        goto LABEL_23;
      }
    }

    v25 = 0;
    v26 = 0;
    Length = 0;
    goto LABEL_26;
  }

  v23 = DPInfoFromSinfExtensions;
  v24 = CFDataGetBytePtr(DPInfoFromSinfExtensions);
  v25 = CFDataGetLength(v23);
  v26 = 0;
  Length = 0;
  BytePtr = 0;
  LODWORD(LegacySinfFromSinfExtensions) = 0;
LABEL_26:
  v31 = *(v19 + 48);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 0x40000000;
  v42[2] = __FigFairPlayOctaviaCPECryptorCreate_block_invoke;
  v42[3] = &unk_1E74970A0;
  v43 = LegacySinfFromSinfExtensions;
  v44 = 0;
  v45 = BytePtr;
  v46 = Length;
  v47 = 0;
  v48 = v26;
  v49 = v25;
  v50 = 0;
  v51 = v24;
  v42[4] = &v57;
  v42[5] = &v53;
  v42[6] = v19;
  dispatch_sync(v31, v42);
  if (!*(v58 + 6))
  {
    v32 = FigCPEOctaviaExternalProtectionMonitorCreate(v16, v15, 0, *(v19 + 72), (v19 + 64));
    *(v58 + 6) = v32;
    if (!v32)
    {
      FigCPEExternalProtectionMonitorBeginMonitoring(*(v19 + 64));
      NeroCryptor = FigCPEOctaviaCreateNeroCryptor(cf, *(v19 + 64), v54[3], *(v19 + 72), (v19 + 24), (v19 + 32));
      *(v58 + 6) = NeroCryptor;
      if (!NeroCryptor)
      {
        *a8 = cf;
        cf = 0;
        goto LABEL_32;
      }
    }
  }

LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_32:
  v34 = v54[3];
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(v58 + 6);
  if (v35 && dword_1EAF176B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v35 = *(v58 + 6);
  }

  v37 = FigFairPlayMapFairPlayErrorToCPEError(v35);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  return v37;
}

BOOL FigFairPlayOctaviaCPECryptorEqual()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && v1)
  {
    return *(DerivedStorage + 56) == *(v1 + 56);
  }

  else
  {
    return (DerivedStorage | v1) == 0;
  }
}

uint64_t FigFairPlayOctaviaCPECryptorInvalidate()
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

    v3 = v1[1];
    if (v3)
    {
      CFRelease(v3);
      v1[1] = 0;
    }

    v4 = v1[5];
    if (v4)
    {
      CFRelease(v4);
      v1[5] = 0;
    }

    FigCPEOctaviaReleaseRemoteCryptor(v1[3]);
    v1[3] = 0;
    if (v1[7])
    {
      t6uy9jukl3();
      FAIRPLAY_CALL_LOG(v5);
      v1[7] = 0;
    }

    v6 = v1[6];
    if (v6)
    {
      dispatch_release(v6);
      v1[6] = 0;
    }

    v7 = v1[8];
    if (v7)
    {
      FigCPEExternalProtectionMonitorEndMonitoring(v7);
      v8 = v1[8];
      if (v8)
      {
        CFRelease(v8);
        v1[8] = 0;
      }
    }

    v9 = v1[2];
    if (v9)
    {
      CFRelease(v9);
      v1[2] = 0;
    }

    v10 = v1[9];
    if (v10)
    {
      CFRelease(v10);
      v1[9] = 0;
    }
  }

  return 0;
}

__CFString *FigFairPlayOctaviaCPECryptorCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v1 = DerivedStorage;
  Mutable = CFStringCreateMutable(*DerivedStorage, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigFPOCPECryptor: protectorParent<%@> >", v1[2]);
  }

  return v3;
}

uint64_t FigFairPlayOctaviaCPECryptorSetProperty()
{
  if (CMBaseObjectGetDerivedStorage())
  {
    return 4294955144;
  }

  else
  {
    return 4294955146;
  }
}

uint64_t RegisterFigFairPlayOctaviaCPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

dispatch_queue_t __CopyContextAccessQueue_block_invoke()
{
  result = dispatch_queue_create("FPDS Context Management", 0);
  gContextSerialAccessQueue = result;
  return result;
}

void __CopyContextAccessQueue_block_invoke_2(uint64_t a1)
{
  v2 = gCurrentContextQueue;
  if (!gCurrentContextQueue)
  {
    gCurrentContextQueue = dispatch_queue_create("FPDS Context Access", 0);
    if (gCurrentContextQueue)
    {
      v10 = 0;
      dataPointerOut = 0;
      v8 = 0;
      lengthAtOffsetOut = 0;
      u8tyhm3ety(&v10);
      if (!FAIRPLAY_CALL_LOG(v3) && !FigCreateBlockBufferCopyingMemoryBlock())
      {
        FigTransportGetRemoteRootObject();
        if (!NeroTransportSendSyncMessageCreatingReply() && !CMBlockBufferGetDataPointer(0, 0, &lengthAtOffsetOut, 0, &dataPointerOut))
        {
          Fhjfdethrte87erhy4();
          FAIRPLAY_CALL_LOG(v4);
        }
      }

      if (v10)
      {
        v5 = jEHf8Xzsv8K(v10);
        FAIRPLAY_CALL_LOG(v5);
        v10 = 0;
      }

      dispatch_release(gCurrentContextQueue);
      v2 = 0;
      gCurrentContextQueue = 0;
    }

    else
    {
      v2 = 0;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    dispatch_retain(v6);
  }
}

uint64_t DestroyFairPlayDSContext()
{
  sv65rt7ugf9si4();

  return FAIRPLAY_CALL_LOG(v0);
}

void AsyncMessageHandler_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1684628836 && gCurrentContextQueue != 0)
  {
    dispatch_release(gCurrentContextQueue);
    gCurrentContextQueue = 0;
  }
}

BOOL HardwareSupportsMetalCompositor()
{
  v1 = 0;
  v2 = 0;
  FigVideoCompositorCopyDeviceSpecificCompositorName(0, &v2);
  FigVideoCompositorCopyDeviceSpecificCompositorName(0, &v1);
  return FigCFEqual() || FigCFEqual() != 0;
}

uint64_t FigVideoCompositorCreateMetal(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  FigVideoCompositorGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigVideoCompositorCreateMetal_cold_2(v11);
    return v11[0];
  }

  v5 = Mutable;
  value = 0;
  strcpy(v11, "v024f024ARGByuv2 ");
  v12 = 0;
  qmemcpy(v13, "024x02fxAhGR", sizeof(v13));
  DesiredSourcePixelBufferAttributes = FigVideoCompositorCreateDesiredSourcePixelBufferAttributes(v11, 8, &value);
  if (!DesiredSourcePixelBufferAttributes)
  {
    CFDictionarySetValue(v5, @"SourcePixelBufferAttributes", value);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (!DesiredSourcePixelBufferAttributes)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = v5;
    v8 = FigDispatchQueueCreateWithPriority();
    DerivedStorage[5] = v8;
    if (v8)
    {
      DesiredSourcePixelBufferAttributes = 0;
      *a2 = 0;
      return DesiredSourcePixelBufferAttributes;
    }

    FigVideoCompositorCreateMetal_cold_1(v11);
    return v11[0];
  }

  return DesiredSourcePixelBufferAttributes;
}

void mvc_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 40) = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {

    CFRelease(v4);
  }
}

__CFString *mvc_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositor_Metal %p>\n", a1);
  CFDictionaryApplyFunction(*DerivedStorage, mvc_appendDebugDescriptionOfProperty, Mutable);
  return Mutable;
}

uint64_t mvc_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    mvc_CopyProperty_cold_1(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      UInt32 = FigCFNumberCreateUInt32();
    }

    else
    {
      if (CFEqual(a2, @"SupportsSpatialSourceBuffers"))
      {
        result = 0;
        v9 = MEMORY[0x1E695E4C0];
        goto LABEL_4;
      }

      Value = CFDictionaryGetValue(*v7, a2);
      if (!Value)
      {
        v10 = 0;
        goto LABEL_8;
      }

      UInt32 = CFRetain(Value);
    }

    v10 = UInt32;
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  result = 0;
  v9 = MEMORY[0x1E695E4D0];
LABEL_4:
  v10 = *v9;
LABEL_9:
  *a4 = v10;
  return result;
}

uint64_t mvc_SetProperty(const void *a1, const void *a2, const void *a3)
{
  v19[5] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a2)
  {
    v7 = DerivedStorage;
    v8 = 0;
    v19[0] = @"RenderDimensions";
    v19[1] = @"RenderPixelAspectRatio";
    v19[2] = @"RenderEdgeProcessingPixels";
    v19[3] = @"DestinationPixelBufferDesiredAttributes";
    v19[4] = @"RenderScale";
    while (!FigCFEqual())
    {
      v8 += 8;
      if (v8 == 40)
      {
        goto LABEL_11;
      }
    }

    CFGetAllocator(a1);
    mvc_CopyProperty(a1, a2, v9, &cf);
    if (!FigCFEqual())
    {
      v10 = *(v7 + 8);
      if (v10)
      {
        CFRelease(v10);
        *(v7 + 8) = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

LABEL_11:
    if (!a3)
    {
      goto LABEL_21;
    }

    CFDictionarySetValue(*v7, a2, a3);
    if (!FigCFEqual())
    {
      goto LABEL_21;
    }

    Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6966130]);
    if (!Value)
    {
      goto LABEL_21;
    }

    v12 = Value;
    v13 = CFGetTypeID(Value);
    if (v13 == CFArrayGetTypeID())
    {
      if (!CFArrayGetValueAtIndex(v12, 0))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = CFGetTypeID(v12);
      if (v14 != CFNumberGetTypeID())
      {
LABEL_21:
        v16 = 0;
        goto LABEL_22;
      }
    }

    FigCFNumberGetUInt64();
    if (!VTMetalTransferSessionIsPixelFormatTypeSupportedOnDestination())
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a3);
      FigCFDictionarySetInt32();
      CFDictionarySetValue(*v7, a2, MutableCopy);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    goto LABEL_21;
  }

  mvc_SetProperty_cold_1(v19);
  v16 = LODWORD(v19[0]);
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t mvc_RenderFrame(const void *a1, int a2, _DWORD *a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8, uint64_t a9, uint64_t a10)
{
  v78 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v74 = 0;
  v73.width = 0.0;
  v73.height = 0.0;
  v72 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v62 = *(MEMORY[0x1E695EFD0] + 16);
  v63 = *MEMORY[0x1E695EFD0];
  *&v67.a = *MEMORY[0x1E695EFD0];
  *&v67.c = v62;
  v61 = *(MEMORY[0x1E695EFD0] + 32);
  *&v67.tx = v61;
  if (!DerivedStorage || (v16 = DerivedStorage, !*(DerivedStorage + 24)))
  {
    fig_log_get_emitter();
    RenderDimensions = FigSignalErrorAtGM();
LABEL_85:
    v59 = 0;
    v60 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_69;
  }

  RenderDimensions = FigVideoCompositorPropertiesGetRenderDimensions(*DerivedStorage, &v73);
  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  *&v76.a = *a9;
  v76.c = *(a9 + 16);
  RenderDimensions = FigVCLayerDefinitionCreateLayerDefinitionArray(a2, a3, a4, a8, v73.width, v73.height, &v76, &v72);
  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (v74)
  {
    *&v76.a = *a9;
    v76.c = *(a9 + 16);
    FigVideoCompositionInstructionGetNormalizedTime(a8, &v76);
  }

  RenderDimensions = FigVideoCompositorCopyDestinationPixelBufferWithoutComposingIfPossible(*v16, v72, v69 + 3);
  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  v18 = v69;
  v19 = v69[3];
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v59 = 0;
    v60 = 0;
LABEL_65:
    CFRetain(v19);
    goto LABEL_66;
  }

  v22 = v72;
  v23 = CMBaseObjectGetDerivedStorage();
  pixelBufferOut.a = 0.0;
  t1.a = 9.38084234e271;
  *&v76.a = *"v024f024ARGB ";
  v76.c = 2.89892896e-57;
  v24 = CMBaseObjectGetDerivedStorage();
  BestBitDepthForCompositorPropertiesAndLayerDefinitions = FigVideoCompositorGetBestBitDepthForCompositorPropertiesAndLayerDefinitions(*v24, v22);
  if (BestBitDepthForCompositorPropertiesAndLayerDefinitions <= 8)
  {
    p_t1 = &v76;
  }

  else
  {
    p_t1 = &t1;
  }

  if (BestBitDepthForCompositorPropertiesAndLayerDefinitions <= 8)
  {
    v27 = 6;
  }

  else
  {
    v27 = 2;
  }

  if (!v22)
  {
    goto LABEL_87;
  }

  if (CFArrayGetCount(v22) > 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
    if (!ValueAtIndex)
    {
      goto LABEL_87;
    }

    SourcePixelBuffer = FigVCLayerDefinitionGetSourcePixelBuffer(ValueAtIndex);
    if (!SourcePixelBuffer)
    {
      goto LABEL_87;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(SourcePixelBuffer);
    v31 = 0;
    while (*(&p_t1->a + v31) != PixelFormatType)
    {
      v31 += 4;
      if (4 * v27 == v31)
      {
        goto LABEL_25;
      }
    }

    *(&p_t1->a + v31) = LODWORD(p_t1->a);
    LODWORD(p_t1->a) = PixelFormatType;
  }

LABEL_25:
  v32 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v32, v27, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
LABEL_87:
    Mutable = 0;
    goto LABEL_27;
  }

  do
  {
    p_t1 = (p_t1 + 4);
    FigCFArrayAppendInt32();
    --v27;
  }

  while (v27);
LABEL_27:
  v34 = (v23 + 8);
  if (*(v23 + 8))
  {
    v35 = FigCFEqual();
    v36 = *v34;
    if (v35)
    {
      if (v36)
      {
        goto LABEL_38;
      }
    }

    else if (v36)
    {
      CFRelease(v36);
      *v34 = 0;
    }
  }

  RenderDimensions = FigVideoCompositorCreateDestinationPixelBufferPool(*v23, @"metal-vc-output", Mutable, (v23 + 8), 1);
  if (RenderDimensions)
  {
    goto LABEL_42;
  }

  v37 = *(v23 + 16);
  *(v23 + 16) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (v37)
  {
    CFRelease(v37);
  }

LABEL_38:
  RenderDimensions = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *v34, &pixelBufferOut);
  a = pixelBufferOut.a;
  if (RenderDimensions || (RenderDimensions = FigVideoCompositorSetDestinationPixelBufferColorProperties(*&pixelBufferOut.a, *v23, v22), a = pixelBufferOut.a, RenderDimensions) || (RenderDimensions = FigVideoCompositorSetDestinationPixelBufferGeometricProperties(*&pixelBufferOut.a, *v23), a = pixelBufferOut.a, RenderDimensions))
  {
    if (a != 0.0)
    {
      CFRelease(*&a);
    }
  }

  else
  {
    v18[3] = *&pixelBufferOut.a;
    pixelBufferOut.a = 0.0;
  }

LABEL_42:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  v77 = xmmword_196E75ED0;
  RenderDimensions = FigVideoCompositionInstructionGetBackgroundColorARGB(a8, &v77);
  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  v66 = vextq_s8(v77, v77, 4uLL);
  RenderDimensions = FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(*v16, 0, &v67, 0);
  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  Count = CFArrayGetCount(v72);
  v20 = malloc_type_calloc(Count, 8uLL, 0x2004093837F09uLL);
  if (Count < 1)
  {
    v21 = 0;
    v59 = 0;
    v60 = 0;
    goto LABEL_61;
  }

  v60 = malloc_type_calloc(Count, 0x30uLL, 0x1000040EED21634uLL);
  if (!v60)
  {
    fig_log_get_emitter();
    RenderDimensions = FigSignalErrorAtGM();
    v60 = 0;
LABEL_90:
    v59 = 0;
LABEL_92:
    v21 = 0;
    goto LABEL_69;
  }

  v59 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
  if (!v59)
  {
    fig_log_get_emitter();
    RenderDimensions = FigSignalErrorAtGM();
    goto LABEL_90;
  }

  v40 = malloc_type_calloc(Count, 0x20uLL, 0x1000040E0EAB150uLL);
  v21 = v40;
  v58 = a1;
  if (!v40)
  {
    fig_log_get_emitter();
    RenderDimensions = FigSignalErrorAtGM();
    goto LABEL_92;
  }

  v41 = 0;
  v42 = v59;
  v43 = v60;
  v44 = v40;
  do
  {
    v45 = CFArrayGetValueAtIndex(v72, v41);
    v46 = v45;
    if (v45)
    {
      v20[v41] = FigVCLayerDefinitionGetSourcePixelBuffer(v45);
      *v43 = v63;
      v43[1] = v62;
      v43[2] = v61;
      RenderDimensions = FigVCLayerDefinitionGetAffineTransform(v46, v43);
      if (RenderDimensions)
      {
        goto LABEL_69;
      }

      v47 = *v43;
      v48 = v43[2];
      *&t1.c = v43[1];
      *&t1.tx = v48;
      *&t1.a = v47;
      pixelBufferOut = v67;
      CGAffineTransformConcat(&v76, &t1, &pixelBufferOut);
      v49 = *&v76.a;
      v50 = *&v76.tx;
      v43[1] = *&v76.c;
      v43[2] = v50;
      *v43 = v49;
      RenderDimensions = FigVCLayerDefinitionGetOpacity(v46, v42);
      if (RenderDimensions)
      {
        goto LABEL_69;
      }

      RenderDimensions = FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(v46, v44);
      if (RenderDimensions)
      {
        goto LABEL_69;
      }
    }

    else
    {
      *v43 = v63;
      v43[1] = v62;
      v43[2] = v61;
      v51 = *v43;
      v52 = v43[2];
      *&t1.c = v43[1];
      *&t1.tx = v52;
      *&t1.a = v51;
      pixelBufferOut = v67;
      CGAffineTransformConcat(&v76, &t1, &pixelBufferOut);
      v53 = *&v76.a;
      v54 = *&v76.tx;
      v43[1] = *&v76.c;
      v43[2] = v54;
      *v43 = v53;
    }

    ++v41;
    ++v44;
    ++v42;
    v43 += 3;
  }

  while (Count != v41);
  a1 = v58;
LABEL_61:
  if (!*(v16 + 48))
  {
    RenderDimensions = VTMetalTransferSessionCreate();
    if (RenderDimensions)
    {
      goto LABEL_69;
    }
  }

  RenderDimensions = VTMetalTransferSessionComposeImageWithAffineMatrix();
  if (RenderDimensions)
  {
    goto LABEL_69;
  }

  v19 = v69[3];
  if (v19)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (a1)
  {
    CFRetain(a1);
  }

  v55 = *(v16 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __mvc_RenderFrame_block_invoke;
  block[3] = &unk_1E748B8C8;
  block[4] = &v68;
  block[5] = v16;
  block[6] = a10;
  block[7] = a1;
  dispatch_sync(v55, block);
  RenderDimensions = 0;
LABEL_69:
  v56 = v69[3];
  if (v56)
  {
    CFRelease(v56);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v21)
  {
    free(v21);
  }

  if (v60)
  {
    free(v60);
  }

  if (v59)
  {
    free(v59);
  }

  if (v20)
  {
    free(v20);
  }

  _Block_object_dispose(&v68, 8);
  return RenderDimensions;
}

uint64_t mvc_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __mvc_SetOutputCallback_block_invoke;
  v9[3] = &unk_1E748B8C8;
  v9[6] = a2;
  v9[7] = a3;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_19682E148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t mvc_CopySourcePixelBufferAttributesForMultiSource(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *"ARGBAhGRAfGRv024f024ARGByuv2 ";
  v4 = 1380410945;
  return FigVideoCompositorCreateDesiredSourcePixelBufferAttributes(&v3, 3, a2);
}

uint64_t FigVirtualDisplaySessionServerStart()
{
  result = FVDUtilsSessionServerEnabled();
  if (result)
  {
    FigVirtualDisplayScreenRecordingPostState();
    return FigXPCServerStart();
  }

  return result;
}

uint64_t fvdss_handleClientMessage()
{
  v5 = *MEMORY[0x1E69E9840];
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v2 = OpCode;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294955226;
  }

  return v2;
}

uint64_t fvdss_verifyConnection(_xpc_connection_s *a1)
{
  xpc_connection_get_pid(a1);
  HasEntitlement = FigXPCConnectionHasEntitlement();
  if (!HasEntitlement)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return HasEntitlement;
}

void fvdss_releaseSession(const void *a1)
{
  if (a1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v2)
    {
      v2(a1);
    }

    CFRelease(a1);
  }
}

void conduitDestroyContext(xpc_object_t *a1)
{
  if (a1)
  {
    xpc_release(*a1);

    free(a1);
  }
}

uint64_t conduitPushFrame(xpc_connection_t *a1, CMSampleBufferRef sbuf, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(bytes, 0, sizeof(bytes));
  if (!sbuf)
  {
    conduitPushFrame_cold_1();
    goto LABEL_11;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (!ImageBuffer)
  {
    goto LABEL_16;
  }

  v23 = ImageBuffer;
  IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
  if (!IOSurface)
  {
    goto LABEL_16;
  }

  v25 = IOSurface;
  if (FigXPCCreateBasicMessage())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_11;
  }

  XPCObject = IOSurfaceCreateXPCObject(v25);
  if (!XPCObject)
  {
LABEL_16:
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  xpc_dictionary_set_value(v41, "FrameSurface", XPCObject);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(bytes, 0, sizeof(bytes));
  CMSampleBufferGetPresentationTimeStamp(bytes, sbuf);
  *&bytes[24] = a4;
  *&v35 = a5;
  *(&v35 + 1) = a6;
  *&v36 = a7;
  *(&v36 + 1) = a8;
  *&v37 = a9;
  *(&v37 + 1) = a10;
  *&v38 = a11;
  DWORD2(v40) = a3;
  HIDWORD(v40) = CMGetAttachment(sbuf, *MEMORY[0x1E6983C38], 0) == *MEMORY[0x1E695E4D0];
  CVPixelBufferGetExtendedPixels(v23, &v38 + 1, &v39, &v39 + 1, &v40);
  xpc_dictionary_set_data(v41, "FrameData", bytes, 0x80uLL);
  v27 = CVBufferCopyAttachments(v23, kCVAttachmentMode_ShouldPropagate);
  if (v27)
  {
    v28 = v27;
    if (FigXPCMessageSetCFDictionary())
    {
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      xpc_connection_send_message(*a1, v41);
    }

    CFRelease(v28);
  }

  else
  {
    xpc_connection_send_message(*a1, v41);
  }

LABEL_11:
  FigXPCRelease();
  return FigXPCRelease();
}

uint64_t conduitClearScreen(xpc_connection_t *a1)
{
  if (FigXPCCreateBasicMessage())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    xpc_connection_send_message(*a1, 0);
  }

  return FigXPCRelease();
}

void __fvdss_handleStart_block_invoke(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  if (FigXPCCreateBasicMessage())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    xpc_dictionary_set_int64(0, "StartStatus", a2);
    xpc_connection_send_message(v4, 0);
  }

  FigXPCRelease();
  xpc_release(*(a1 + 32));
}

uint64_t FigTTMLDocumentWriterCreateRubySpanBuilder(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateRubySpanBuilder_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateRubySpanBuilder_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterRubySpanBuilder_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterRubySpanBuilder_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterRubySpanBuilder_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v1);
}

uint64_t figTTMLDocumentWriterRubySpanBuilder_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v5 = v4(a2);
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v5);
  v45 = 0;
  cf = 0;
  if (!Length)
  {
    return 0;
  }

  v7 = Length;
  v8 = 0;
  v9 = *MEMORY[0x1E69614E0];
  v10 = *MEMORY[0x1E695E480];
  v41 = *MEMORY[0x1E6961248];
  cf2 = *MEMORY[0x1E6961420];
  v37 = *MEMORY[0x1E69613F8];
  v35 = *MEMORY[0x1E6961408];
  v34 = *MEMORY[0x1E6961400];
  v39 = *MEMORY[0x1E6961250];
  v38 = *MEMORY[0x1E6961430];
  v36 = *MEMORY[0x1E6961428];
  while (1)
  {
    v42 = 0;
    v43 = 0;
    if (v45)
    {
      CFRelease(v45);
      v45 = 0;
    }

    v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v11)
    {
      v27 = 4294954514;
      goto LABEL_57;
    }

    started = v11(a2, v8, v9, v10, &v45, &v42);
    if (started)
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    started = FigCaptionDataCopySubrange();
    if (started)
    {
      break;
    }

    v13 = v45;
    v14 = *DerivedStorage;
    v15 = cf;
    if (!v45)
    {
      v27 = FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, cf);
      goto LABEL_51;
    }

    started = FigTTMLDocumentWriterStartElement(*DerivedStorage, 5);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterSetAttribute(v14, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind", @"ruby");
    if (started)
    {
      break;
    }

    v46 = 0;
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v17)
    {
LABEL_35:
      v27 = 4294954514;
      goto LABEL_36;
    }

    v18 = v17(CMBaseObject, v41, v10, &v46);
    if (!v18)
    {
      if (v46)
      {
        InitialValue = FigCaptionDynamicStyleGetInitialValue();
        v20 = CFEqual(InitialValue, cf2);
        v21 = kFigTTML_AttributeValue_ry_align_start;
        if (!v20 && (v22 = CFEqual(InitialValue, v37), v21 = kFigTTML_AttributeValue_ry_align_center, !v22) && (v23 = CFEqual(InitialValue, v35), v21 = kFigTTML_AttributeValue_ry_align_spaceBetween, !v23) && (v24 = CFEqual(InitialValue, v34), v21 = kFigTTML_AttributeValue_ry_align_spaceAround, !v24) || !*v21)
        {
          figTTMLDocumentWriterRubySpanBuilder_AddCaptionData_cold_1(v47);
          goto LABEL_54;
        }

        v18 = FigTTMLDocumentWriterSetAttribute(v14, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby align", *v21);
        if (v18)
        {
          goto LABEL_34;
        }

        if (v46)
        {
          CFRelease(v46);
          v46 = 0;
        }
      }

      v25 = FigCaptionDataGetCMBaseObject();
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v26)
      {
        goto LABEL_35;
      }

      v27 = v26(v25, v39, v10, &v46);
      v28 = v46;
      if (v27 || !v46)
      {
        goto LABEL_37;
      }

      v29 = FigCaptionDynamicStyleGetInitialValue();
      v30 = CFEqual(v29, v38);
      v31 = kFigTTML_AttributeValue_ry_position_before;
      if (!v30 && (v32 = CFEqual(v29, v36), v31 = kFigTTML_AttributeValue_ry_position_after, !v32) || !*v31)
      {
        figTTMLDocumentWriterRubySpanBuilder_AddCaptionData_cold_2(v47);
LABEL_54:
        v27 = v47[0];
        goto LABEL_36;
      }

      v18 = FigTTMLDocumentWriterSetAttribute(v14, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby position", *v31);
    }

LABEL_34:
    v27 = v18;
LABEL_36:
    v28 = v46;
LABEL_37:
    if (v28)
    {
      CFRelease(v28);
    }

    if (v27)
    {
      goto LABEL_57;
    }

    started = FigTTMLDocumentWriterStartElement(v14, 5);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterSetAttribute(v14, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind", @"rb");
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterAddCaptionData(v14, v15);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterEndElement(v14);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterStartElement(v14, 5);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterSetAttribute(v14, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind", @"rt");
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterAddCaptionData(v14, v13);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterEndElement(v14);
    if (started)
    {
      break;
    }

    v27 = FigTTMLDocumentWriterEndElement(v14);
    if (v27)
    {
      goto LABEL_57;
    }

LABEL_51:
    v8 = v43 + v42;
    if (v43 + v42 == v7)
    {
      goto LABEL_57;
    }
  }

  v27 = started;
LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  return v27;
}

uint64_t figTTMLDocumentWriterRubySpanBuilder_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterSetAttribute(v5, a2, a3);
}

uint64_t figTTMLDocumentWriterRubySpanBuilder_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

uint64_t RegisterFigAlternateExpanderType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAlternateExpanderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAlternateExpanderGetClassID_sRegisterFigAlternateExpanderTypeOnce, RegisterFigAlternateExpanderType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigAlternatePathwayCloningExpanderCreate(uint64_t a1, const void *a2, void *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigAlternateExpanderGetClassID_sRegisterFigAlternateExpanderTypeOnce, RegisterFigAlternateExpanderType);
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *DerivedStorage = v7;
    *a3 = 0;
  }

  return v5;
}

CFStringRef FigAlternateExpanderCopyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v4 = v3(a1);
  }

  else
  {
    v4 = &stru_1F0B1AFB8;
  }

  return CFStringCreateWithFormat(v2, 0, @"[FigAlternateExpander <%@:%p>]", v4, a1);
}

uint64_t fapce_equal()
{
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();

  return FigCFEqual();
}

void fapce_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef fapce_copyDebugDescription(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = *MEMORY[0x1E695E480];
  BaseID = FigPathwayCloneGetBaseID();
  ID = FigPathwayCloneGetID();
  return CFStringCreateWithFormat(v2, 0, @"[FigAlternateExpander <%@,%p>, basePathwayID %@, newPathwayID %@]", @"PathwayCloningExpander", a1, BaseID, ID);
}

uint64_t FigDataChannelResourceRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 4))
      {
        FigDataChannelResourceRemoteGetObjectID_cold_1(&v6);
        return v6;
      }

      else
      {
        v4 = DerivedStorage;
        result = 0;
        *a2 = *(v4 + 8);
      }
    }

    else
    {
      FigDataChannelResourceRemoteGetObjectID_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelResourceRemoteGetObjectID_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t FigDataChannelResourceRemoteHandleDeadConnection(uint64_t result)
{
  if (result)
  {
    result = CMBaseObjectGetDerivedStorage();
    *(result + 4) = 1;
  }

  return result;
}

uint64_t FigDataChannelResourceRemoteCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    FigDataChannelResourceRemoteCreate_cold_2(v13);
    return v13[0];
  }

  if (!a5)
  {
    FigDataChannelResourceRemoteCreate_cold_1(v13);
    return v13[0];
  }

  FigDataChannelResourceGetClassID();
  v8 = CMDerivedObjectCreate();
  if (!v8)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = 0;
    *(DerivedStorage + 4) = 0;
    v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(DerivedStorage + 16) = v10;
    if (v10)
    {
      *(DerivedStorage + 8) = a3;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v8 = 0;
      *a5 = 0;
    }

    else
    {
      return FigSignalErrorAtGM();
    }
  }

  return v8;
}

void dataChannelResourceRemote_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF179F8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (DerivedStorage && *(DerivedStorage + 16))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      FigVideoReceiverRemoteDisassociateAndDisposeObjectID();
      CFRelease(v3);
    }

    else
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(DerivedStorage + 16);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 16) = 0;
    }
  }
}

CFStringRef dataChannelResourceRemote_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  if (DerivedStorage)
  {
    return CFStringCreateWithFormat(v3, 0, @"[DataChannelResourceRemote %p]: resourceID: %d objectID: %016llx", a1, *DerivedStorage, *(DerivedStorage + 1));
  }

  else
  {
    return CFStringCreateWithFormat(v3, 0, @"[DataChannelResourceRemote %p]", a1);
  }
}

uint64_t dataChannelResourceRemote_ProvidePayload(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (dword_1EAF179F8 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    dataChannelResourceRemote_ProvidePayload_cold_3(v13);
    return v13[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    dataChannelResourceRemote_ProvidePayload_cold_1(v13);
    return v13[0];
  }

  v6 = DerivedStorage;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    dataChannelResourceRemote_ProvidePayload_cold_2(v13);
    return v13[0];
  }

  v8 = v7;
  v9 = *(v6 + 8);
  v10 = *(*(CMBaseObjectGetVTable() + 24) + 64);
  if (v10)
  {
    v11 = v10(v8, v9, a2);
  }

  else
  {
    v11 = 4294954514;
  }

  CFRelease(v8);
  return v11;
}

uint64_t dataChannelResourceRemote_SetFailedToLoad(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1EAF179F8 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    dataChannelResourceRemote_SetFailedToLoad_cold_3(v11);
    return v11[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    dataChannelResourceRemote_SetFailedToLoad_cold_1(v11);
    return v11[0];
  }

  v4 = DerivedStorage;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    dataChannelResourceRemote_SetFailedToLoad_cold_2(v11);
    return v11[0];
  }

  v6 = v5;
  v7 = *(v4 + 8);
  v8 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v8)
  {
    v9 = v8(v6, v7, 2);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v6);
  return v9;
}

uint64_t dataChannelResourceRemote_SetCancelled(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1EAF179F8 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    dataChannelResourceRemote_SetCancelled_cold_3(v11);
    return v11[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    dataChannelResourceRemote_SetCancelled_cold_1(v11);
    return v11[0];
  }

  v4 = DerivedStorage;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    dataChannelResourceRemote_SetCancelled_cold_2(v11);
    return v11[0];
  }

  v6 = v5;
  v7 = *(v4 + 8);
  v8 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v8)
  {
    v9 = v8(v6, v7, 3);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v6);
  return v9;
}

uint64_t dataChannelResourceRemote_GetProcessingState(uint64_t a1)
{
  v8 = 0;
  if (!a1)
  {
    dataChannelResourceRemote_GetProcessingState_cold_3();
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    dataChannelResourceRemote_GetProcessingState_cold_1();
    return 0;
  }

  v2 = DerivedStorage;
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v3)
  {
    dataChannelResourceRemote_GetProcessingState_cold_2();
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 88);
  if (v6)
  {
    v6(v4, v5, &v8);
  }

  CFRelease(v4);
  return v8;
}

void FigCoreTelephonyMonitorCallbackEntryDoCallback(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = v4;
    CFRetain(v5);
    v4 = v7;
  }

  v6 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCoreTelephonyMonitorCallbackEntryDoCallback_block_invoke;
  block[3] = &__block_descriptor_49_e5_v8__0l;
  v9 = v4;
  v10 = a2;
  dispatch_async(v6, block);
}

uint64_t FigNetworkCostMonitorCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (figNetworkCostMonitorGlobalInitOnce_sFigNetworkCostMonitorInitOnce != -1)
    {
      FigNetworkCostMonitorCreate_cold_1();
    }

    if (sFigNetworkCostMonitorQueue)
    {
      if (sFigNetworkCostMonitorMutex)
      {
        if (sFigNetworkCostMonitorBag)
        {
          if (FigNetworkCostMonitorGetClassID_sRegisterFigNetworkCostMonitorTypeOnce != -1)
          {
            FigNetworkCostMonitorCreate_cold_2();
          }

          v3 = CMDerivedObjectCreate();
          FigNetworkCostMonitorCreate_cold_6(v3, &v6);
        }

        else
        {
          FigNetworkCostMonitorCreate_cold_7(&v6);
        }
      }

      else
      {
        FigNetworkCostMonitorCreate_cold_8(&v6);
      }
    }

    else
    {
      FigNetworkCostMonitorCreate_cold_9(&v6);
    }
  }

  else
  {
    FigNetworkCostMonitorCreate_cold_10(&v6);
  }

  v5 = v6;
  if (v6)
  {
    *a2 = 0;
  }

  return v5;
}

uint64_t figNetworkCostCTCallback(void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 18) = a2;
  figNetworkCostUpdateHighSpeedHighPowerAndCheckForChangesWithMutex(a1);

  return FigSimpleMutexUnlock();
}

uint64_t initValkCTConnectionInvalidatedNotification()
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initValkCTConnectionInvalidatedNotification_cold_1();
  }

  v0 = dlsym(CoreTelephonyLibrary_sLib, "kCTConnectionInvalidatedNotification");
  if (v0)
  {
    result = *v0;
    constantValkCTConnectionInvalidatedNotification = result;
  }

  else
  {
    result = constantValkCTConnectionInvalidatedNotification;
  }

  getkCTConnectionInvalidatedNotification[0] = kCTConnectionInvalidatedNotificationFunction;
  return result;
}

void *__CoreTelephonyLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 2);
  CoreTelephonyLibrary_sLib = result;
  return result;
}

uint64_t init_CTServerConnectionCreateOnTargetQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initValkCTConnectionInvalidatedNotification_cold_1();
  }

  v8 = dlsym(CoreTelephonyLibrary_sLib, "_CTServerConnectionCreateOnTargetQueue");
  softLink_CTServerConnectionCreateOnTargetQueue[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

Class initCoreTelephonyClient()
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initValkCTConnectionInvalidatedNotification_cold_1();
  }

  result = objc_getClass("CoreTelephonyClient");
  classCoreTelephonyClient = result;
  getCoreTelephonyClientClass[0] = CoreTelephonyClientFunction;
  return result;
}

uint64_t init_CTServerConnectionRegisterForNotification(uint64_t a1, uint64_t a2)
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initValkCTConnectionInvalidatedNotification_cold_1();
  }

  v4 = dlsym(CoreTelephonyLibrary_sLib, "_CTServerConnectionRegisterForNotification");
  softLink_CTServerConnectionRegisterForNotification[0] = v4;

  return (v4)(a1, a2);
}

uint64_t init_CTServerConnectionUnregisterForAllNotifications(uint64_t a1)
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initValkCTConnectionInvalidatedNotification_cold_1();
  }

  v2 = dlsym(CoreTelephonyLibrary_sLib, "_CTServerConnectionUnregisterForAllNotifications");
  softLink_CTServerConnectionUnregisterForAllNotifications[0] = v2;

  return (v2)(a1);
}

CFMutableBagRef __figNetworkCostMonitorGlobalInitOnce_block_invoke()
{
  sFigNetworkCostMonitorQueue = FigThreadGetGlobalNetworkBufferingQueue();
  sFigNetworkCostMonitorMutex = FigReentrantMutexCreate();
  result = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D0]);
  sFigNetworkCostMonitorBag = result;
  return result;
}

uint64_t FigNetworkCostMonitorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_autoreleasePoolPush();
  [+[FigCoreTelephonyServiceConnection sharedInstance](FigCoreTelephonyServiceConnection deregisterListener:"deregisterListener:", a1];
  objc_autoreleasePoolPop(v3);
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    CFBagRemoveValue(sFigNetworkCostMonitorBag, *DerivedStorage);
    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }

    FigSimpleMutexUnlock();
    figNetworkCostMonitorUpdateGlobalEstimatedMaximumDemandWithMutex();
    FigSimpleMutexUnlock();
  }

  return FigSimpleMutexDestroy();
}

uint64_t figNetworkCostCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    figNetworkCostCopyProperty_cold_2(&v12);
    return v12;
  }

  if (!a4)
  {
    figNetworkCostCopyProperty_cold_1(&v11);
    return v11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"FNCM_HighSpeedHighPower"))
  {
    v7 = 16;
LABEL_7:
    v8 = 0;
    if (*(DerivedStorage + v7))
    {
      v9 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    *a4 = *v9;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"FNCM_Expensive"))
  {
    v7 = 17;
    goto LABEL_7;
  }

  v8 = 4294954512;
LABEL_11:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t figNetworkCostSetProperty(void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!CFEqual(a2, @"FNCM_ConnectedPhysicalInterface"))
  {
    if (CFEqual(a2, @"FNCM_ConnectionExpensive"))
    {
      if (a3)
      {
        v12 = CFGetTypeID(a3);
        if (v12 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          figNetworkCostUpdateConnectedInterfaceIsExpensiveWithMutex(a1, Value);
          goto LABEL_16;
        }
      }

      goto LABEL_53;
    }

    if (CFEqual(a2, @"FNCM_PlaybackSessionId"))
    {
      if (!a3)
      {
        goto LABEL_53;
      }

      v15 = CFGetTypeID(a3);
      if (v15 != CFStringGetTypeID())
      {
        goto LABEL_53;
      }

      v20 = *(DerivedStorage + 40);
      *(DerivedStorage + 40) = a3;
      CFRetain(a3);
      if (v20)
      {
        CFRelease(v20);
      }
    }

    else if (CFEqual(a2, @"FNCM_MaximumMediaBitrate"))
    {
      if (!a3)
      {
        goto LABEL_53;
      }

      v16 = CFGetTypeID(a3);
      if (v16 != CFNumberGetTypeID())
      {
        goto LABEL_53;
      }

      *(DerivedStorage + 56) = FigCFNumberGetUInt64();
    }

    else if (CFEqual(a2, @"FNCM_BufferingInProgress"))
    {
      if (!a3)
      {
        goto LABEL_53;
      }

      v17 = CFGetTypeID(a3);
      if (v17 != CFBooleanGetTypeID())
      {
        goto LABEL_53;
      }

      v18 = CFBooleanGetValue(a3);
      if (*(DerivedStorage + 64) == v18)
      {
        goto LABEL_16;
      }

      *(DerivedStorage + 64) = v18;
    }

    else if (CFEqual(a2, @"FNCM_FullThrottleDutyCycleRequested"))
    {
      if (!a3)
      {
        goto LABEL_53;
      }

      v19 = CFGetTypeID(a3);
      if (v19 != CFBooleanGetTypeID())
      {
        goto LABEL_53;
      }

      *(DerivedStorage + 65) = CFBooleanGetValue(a3);
    }

    else if (CFEqual(a2, @"FNCM_FullThrottleDutyCycleAllowable"))
    {
      if (!a3)
      {
        goto LABEL_53;
      }

      v21 = CFGetTypeID(a3);
      if (v21 != CFBooleanGetTypeID())
      {
        goto LABEL_53;
      }

      *(DerivedStorage + 66) = CFBooleanGetValue(a3);
    }

    else
    {
      if (!CFEqual(a2, @"FNCM_ItemInactive"))
      {
        if (!CFEqual(a2, @"FNCM_DisableHighSpeedHighPowerBuffering"))
        {
          v14 = 4294954512;
          goto LABEL_54;
        }

        if (a3)
        {
          v23 = CFGetTypeID(a3);
          if (v23 == CFBooleanGetTypeID())
          {
            *(DerivedStorage + 33) = CFBooleanGetValue(a3);
LABEL_10:
            figNetworkCostUpdateHighSpeedHighPowerAndCheckForChangesWithMutex(a1);
            goto LABEL_16;
          }
        }

LABEL_53:
        fig_log_get_emitter();
        v14 = FigSignalErrorAtGM();
        goto LABEL_54;
      }

      if (!a3)
      {
        goto LABEL_53;
      }

      v22 = CFGetTypeID(a3);
      if (v22 != CFBooleanGetTypeID())
      {
        goto LABEL_53;
      }

      *(DerivedStorage + 67) = CFBooleanGetValue(a3);
    }

    figNetworkCostMonitorUpdateEstimatedMaximumDemandWithMutex();
    goto LABEL_16;
  }

  if (!a3)
  {
    goto LABEL_53;
  }

  v7 = CFGetTypeID(a3);
  if (v7 != CFNumberGetTypeID())
  {
    goto LABEL_53;
  }

  UInt64 = FigCFNumberGetUInt64();
  if (*(DerivedStorage + 20) != UInt64)
  {
    *(DerivedStorage + 20) = UInt64;
    v9 = CMBaseObjectGetDerivedStorage();
    v10 = (v9 + 24);
    if (!*(v9 + 24))
    {
      v11 = v9;
      if (FigNetworkInterfaceIsLocal(*(v9 + 20)) && !*v10)
      {
        if (FigNWPathEvaluatorCreate(*MEMORY[0x1E695E480], 0, 0, sFigNetworkCostMonitorQueue, a1, figNetworkCostHandleNetworkPathEvaluatorUpdate, v10))
        {
          figNetworkCostSetProperty_cold_1();
        }

        else
        {
          figNetworkCostSetProperty_cold_2(v10, v11, a1);
        }
      }
    }

    goto LABEL_10;
  }

LABEL_16:
  v14 = 0;
LABEL_54:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t figNetworkCostMonitorUpdateGlobalEstimatedMaximumDemandWithMutex()
{
  cf = 0;
  v2 = 0;
  FigSimpleMutexLock();
  CFBagApplyFunction(sFigNetworkCostMonitorBag, figNetworkCostMonitorUpdateGlobalEstimatedMaximumDemandWithMutexApplierFunc, &cf);
  if (v2 != sFigNetworkCostMonitorGlobalEstimatedMaximumDemand)
  {
    sFigNetworkCostMonitorGlobalEstimatedMaximumDemand = v2;
    FigNetworkInterfaceReporterReportEstimatedMaximumDemand(cf);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  return FigSimpleMutexUnlock();
}

void figNetworkCostUpdateHighSpeedHighPowerAndCheckForChangesWithMutex(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigNetworkInterfaceIsCellular(*(DerivedStorage + 20)))
  {
    v3 = 1;
  }

  else
  {
    v3 = FigNetworkInterfaceIsLocal(*(DerivedStorage + 20)) && *(DerivedStorage + 32) != 0;
  }

  if (*(DerivedStorage + 18))
  {
    v4 = *(DerivedStorage + 33) == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5 & v3;
  if (*(DerivedStorage + 16) != v6)
  {
    *(DerivedStorage + 16) = v6;
    v7 = CMBaseObjectGetDerivedStorage();
    v8 = *(v7 + 8);
    if (v8)
    {
      v9.length = CFArrayGetCount(*(v7 + 8));
    }

    else
    {
      v9.length = 0;
    }

    v9.location = 0;

    CFArrayApplyFunction(v8, v9, figNetworkCostMonitorDispatchHighSpeedHighPowerFn, a1);
  }
}

void figNetworkCostUpdateConnectedInterfaceIsExpensiveWithMutex(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 17) != a2)
  {
    *(DerivedStorage + 17) = a2;
    v5 = *(DerivedStorage + 8);
    if (v5)
    {
      v6.length = CFArrayGetCount(*(DerivedStorage + 8));
    }

    else
    {
      v6.length = 0;
    }

    v6.location = 0;

    CFArrayApplyFunction(v5, v6, figNetworkCostMonitorDispatchIsExpensiveFn, a1);
  }
}

uint64_t __copy_helper_block_e8_48n27_8_8_pa0_42070_0_pa0_24404_8(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  return result;
}

uint64_t figNetworkCostMonitorSetDelegate(const void *a1, uint64_t a2, void *a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CFGetAllocator(a1);
  if (!a2)
  {
    figNetworkCostMonitorSetDelegate_cold_2(&v24);
    return v24;
  }

  v10 = v9;
  v11 = MEMORY[0x19A8CC720](v9, 32, 0xE0040A7658912, 0);
  if (!v11)
  {
    figNetworkCostMonitorSetDelegate_cold_1(&v24);
    return v24;
  }

  v12 = v11;
  v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *v12 = v13;
  if (v13)
  {
    if (a3)
    {
      v12[1] = *a3;
      v12[2] = a3[1];
      if (*a3)
      {
        v15 = 0;
      }

      else
      {
        v15 = a3[1] == 0;
      }

      if (v15)
      {
        a4 = 0;
        v14 = 0;
      }

      else
      {
        if (a4)
        {
          dispatch_retain(a4);
        }

        else
        {
          a4 = FigDispatchQueueCreateWithPriority();
        }

        v14 = 1;
      }
    }

    else
    {
      a4 = 0;
      v14 = 0;
      v12[1] = 0;
      v12[2] = 0;
    }

    v12[3] = a4;
    FigSimpleMutexLock();
    v16 = CMBaseObjectGetDerivedStorage();
    Count = CFArrayGetCount(*(v16 + 8));
    if (Count >= 1)
    {
      v18 = Count + 1;
      do
      {
        CFArrayGetValueAtIndex(*(v16 + 8), v18 - 2);
        v19 = FigCFWeakReferenceHolderCopyReferencedObject();
        v20 = v19;
        if (v19)
        {
          v21 = v19 == a2;
        }

        else
        {
          v21 = 1;
        }

        if (!v21 || (CFArrayRemoveValueAtIndex(*(v16 + 8), v18 - 2), v20))
        {
          CFRelease(v20);
        }

        --v18;
      }

      while (v18 > 1);
    }

    if (v14)
    {
      CFArrayAppendValue(*(DerivedStorage + 8), v12);
      figNetworkCostMonitorDispatchHighSpeedHighPowerFn(v12, a1);
    }

    else
    {
      figNetworkCostMonitorDispatchHighSpeedHighPowerFn(v12, a1);
      fscm_delegateEntryCFArrayReleaseCallBack(v10, v12);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    fig_log_get_emitter();
    v22 = FigSignalErrorAtGM();
    if (v22)
    {
      fscm_delegateEntryCFArrayReleaseCallBack(v10, v12);
    }
  }

  return v22;
}

void fscm_delegateEntryCFArrayReleaseCallBack(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[3];
  if (v4)
  {
    dispatch_release(v4);
    ptr[3] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t __FigNetworkCostMonitorGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigFairPlayMapFairPlayErrorToCPEError(uint64_t result)
{
  if ((result + 49999) >> 6 <= 0x7C)
  {
    if (result <= 0x5B20u)
    {
      if (result - 22939 > 0xD || ((1 << (result + 101)) & 0x3F87) == 0)
      {
        return 4294955130;
      }
    }

    else
    {
      if (result - 23329 < 8 || result - 23431 < 6)
      {
        return 4294955135;
      }

      if (result - 23531 >= 2)
      {
        return 4294955130;
      }
    }
  }

  return result;
}

uint64_t FigContentKeySessionStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigContentKeySessionStartServer_block_invoke;
  block[3] = &unk_1E74972F8;
  block[4] = &v3;
  if (FigContentKeySessionStartServer_sFigContentKeySessionServerSetupOnce != -1)
  {
    dispatch_once(&FigContentKeySessionStartServer_sFigContentKeySessionServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __FigContentKeySessionStartServer_block_invoke(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();
    result = FigXPCServerStart();
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t FigContentKeySessionServerGetIDForSessionByAssociatingWithClientConnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {

        return FigXPCServerAssociateObjectWithNeighborProcess();
      }

      else
      {
        FigContentKeySessionServerGetIDForSessionByAssociatingWithClientConnection_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      FigContentKeySessionServerGetIDForSessionByAssociatingWithClientConnection_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigContentKeySessionServerGetIDForSessionByAssociatingWithClientConnection_cold_3(&v6);
    return v6;
  }
}

void FigCFRelease_14(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void *fcks_server_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fcks_server_finalize(uint64_t a1)
{
  FigXPCRelease();
  v2 = *(a1 + 32);
  if (v2)
  {
    os_release(v2);
    *(a1 + 32) = 0;
  }
}

uint64_t fcks_server_registerServerClassOnce(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_183(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return fcks_server_copySessionByObjectIDForConnection(v10, v11);
}

uint64_t OUTLINED_FUNCTION_5_131()
{

  return fcks_server_copySessionByObjectIDForConnection(v0, v1);
}

const __CFNumber *figIOMF_CFDictionaryGetInt(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      return (*MEMORY[0x1E695E4C0] != v3);
    }

    else if (v4 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *array_dict(const __CFArray *a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (!ValueAtIndex)
  {
    return 0;
  }

  v3 = ValueAtIndex;
  v4 = CFGetTypeID(ValueAtIndex);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return v3;
}

const void *dictionary_dict(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return v3;
}

uint64_t RegisterFigCaptionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCaptionGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCaptionGetClassID_sRegisterFigCaptionBaseTypeOnce, RegisterFigCaptionBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigCaptionCreate(uint64_t a1, __int128 *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a3)
  {
    FigCaptionCreate_cold_2(v18);
LABEL_15:
    v12 = LODWORD(v18[0]);
    goto LABEL_10;
  }

  if (!a4)
  {
    FigCaptionCreate_cold_1(v18);
    goto LABEL_15;
  }

  v7 = FigCaptionCreateMutable(a1, &cf);
  if (v7)
  {
    goto LABEL_16;
  }

  v8 = cf;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v9)
  {
LABEL_9:
    v12 = 4294954514;
    goto LABEL_10;
  }

  v7 = v9(v8, @"CaptionData", a3);
  if (v7)
  {
LABEL_16:
    v12 = v7;
    goto LABEL_10;
  }

  v10 = cf;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v11)
  {
    goto LABEL_9;
  }

  v18[0] = v14;
  v18[1] = v15;
  v18[2] = v16;
  v12 = v11(v10, v18);
  if (!v12)
  {
    *a4 = cf;
    return v12;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t FigCaptionCreateMutableCopy(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (!a2)
  {
    FigCaptionCreateMutableCopy_cold_2(v20);
    return LODWORD(v20[0]);
  }

  if (!a3)
  {
    FigCaptionCreateMutableCopy_cold_1(v20);
    return LODWORD(v20[0]);
  }

  *a3 = 0;
  v6 = FigCaptionCreateMutable(a1, &v18);
  v7 = v18;
  if (v6)
  {
    v13 = v6;
    goto LABEL_26;
  }

  cf = 0;
  v8 = @"TimeRange";
  v9 = *MEMORY[0x1E6961270];
  v20[0] = @"TimeRange";
  v20[1] = v9;
  v20[2] = 0;
  v10 = 1;
  while (1)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v11)
    {
LABEL_14:
      fig_log_get_emitter();
      v16 = FigSignalErrorAtGM();
LABEL_15:
      v13 = v16;
      goto LABEL_17;
    }

    v12 = v11(a2, v8, a1, &cf);
    v13 = v12;
    if (v12 != -12784)
    {
      break;
    }

LABEL_10:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v8 = v20[v10++];
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v14 = cf;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v15)
  {
    v16 = v15(v7, v8, v14);
    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v13 = 4294954514;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  v7 = v18;
  if (!v13)
  {
    *a3 = v18;
    return v13;
  }

LABEL_26:
  if (v7)
  {
    CFRelease(v7);
  }

  return v13;
}

uint64_t FigCaptionCreateCopyWithNewTiming(uint64_t a1, uint64_t a2, __int128 *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a2)
  {
    FigCaptionCreateCopyWithNewTiming_cold_2(v15);
    return LODWORD(v15[0]);
  }

  if (!a4)
  {
    FigCaptionCreateCopyWithNewTiming_cold_1(v15);
    return LODWORD(v15[0]);
  }

  v6 = FigCaptionCreateMutableCopy(a1, a2, &cf);
  v7 = cf;
  if (v6)
  {
    v9 = v6;
    if (!cf)
    {
      return v9;
    }

    goto LABEL_9;
  }

  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    v9 = 4294954514;
    v7 = cf;
LABEL_8:
    if (!v7)
    {
      return v9;
    }

LABEL_9:
    CFRelease(v7);
    return v9;
  }

  v15[0] = v11;
  v15[1] = v12;
  v15[2] = v13;
  v9 = v8(v7, v15);
  v7 = cf;
  if (v9)
  {
    goto LABEL_8;
  }

  *a4 = cf;
  return v9;
}

uint64_t FigRemote_CreateMetadataPropertiesBinaryPListData(void *cf, uint64_t a2, uint64_t a3)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {

    JUMPOUT(0x19A8D2A70);
  }

  v7 = FigRemote_CopyMetadataItemWithLocaleAsCFString(a2, cf);
  v8 = v7;
  if (!v7)
  {
    v7 = cf;
  }

  v9 = MEMORY[0x19A8D2A70](v7, a2, a3);
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void figRemote_ID3ConvertStringToURL(const __CFString *a1, const __CFString *a2, __CFDictionary *a3)
{
  if (CFStringCompare(a1, @"text", 0) == kCFCompareEqualTo && (v6 = CFGetTypeID(a2), v6 == CFStringGetTypeID()) && (v7 = CFURLCreateWithString(*MEMORY[0x1E695E480], a2, 0)) != 0)
  {
    v8 = v7;
    CFDictionaryAddValue(a3, a1, v7);

    CFRelease(v8);
  }

  else
  {

    CFDictionaryAddValue(a3, a1, a2);
  }
}

void figRemote_ID3ConvertURLToString(const __CFString *a1, const void *a2, __CFDictionary *a3)
{
  if (CFStringCompare(a1, @"text", 0) == kCFCompareEqualTo)
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFURLGetTypeID())
    {
      v7 = CFURLCopyAbsoluteURL(a2);
      if (v7)
      {
        v8 = v7;
        v9 = CFURLGetString(v7);
        if (v9)
        {
          v10 = CFRetain(v9);
          CFRelease(v8);
          if (v10)
          {
            CFDictionaryAddValue(a3, a1, v10);

            CFRelease(v10);
            return;
          }
        }

        else
        {
          CFRelease(v8);
        }
      }
    }
  }

  CFDictionaryAddValue(a3, a1, a2);
}

uint64_t FigRemote_CreateMetadataBinaryPListData(const __CFArray *cf, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    FigRemote_CreateMetadataBinaryPListData_cold_1(&v32);
    return v32;
  }

  v4 = cf;
  if (!cf || (v5 = CFGetTypeID(cf), v5 != CFArrayGetTypeID()) || (Count = CFArrayGetCount(v4), v7 = *MEMORY[0x1E695E480], Count <= 0))
  {

    JUMPOUT(0x19A8D2A70);
  }

  v8 = Count;
  v28 = a3;
  v29 = 0;
  Value = 0;
  v10 = 0;
  v11 = 0;
  v30 = Count;
  v31 = v4;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v11);
    v13 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v14 = CFGetTypeID(ValueAtIndex);
      if (v14 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v13, @"items");
      }
    }

    if (!Value)
    {
      goto LABEL_33;
    }

    v15 = CFGetTypeID(Value);
    if (v15 != CFArrayGetTypeID())
    {
      goto LABEL_33;
    }

    v16 = CFArrayGetCount(Value);
    if (v16 < 1)
    {
      goto LABEL_33;
    }

    v17 = v16;
    Mutable = 0;
    for (i = 0; i != v17; ++i)
    {
      v20 = CFArrayGetValueAtIndex(Value, i);
      if (v20 && (v21 = v20, v22 = CFGetTypeID(v20), v22 == CFDictionaryGetTypeID()))
      {
        v10 = FigRemote_CopyMetadataItemWithLocaleAsCFString(v7, v21);
        if (!v10)
        {
          continue;
        }
      }

      else if (!v10)
      {
        continue;
      }

      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
      }

      CFArrayAppendValue(Mutable, v10);
      CFRelease(v10);
    }

    v8 = v30;
    v4 = v31;
    if (Mutable)
    {
      if (CFArrayGetCount(Mutable) < 1)
      {
        v23 = Mutable;
        goto LABEL_32;
      }

      v23 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(v23, @"items", Mutable);
      v24 = CFDictionaryGetValue(v13, @"format");
      if (v24)
      {
        CFDictionaryAddValue(v23, @"format", v24);
      }

      CFRelease(Mutable);
      if (v23)
      {
        v25 = v29;
        if (!v29)
        {
          v25 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
        }

        v29 = v25;
        CFArrayAppendValue(v25, v23);
LABEL_32:
        CFRelease(v23);
      }
    }

LABEL_33:
    ++v11;
  }

  while (v11 != v8);
  v26 = MEMORY[0x19A8D2A70](v29, v7, v28);
  if (v29)
  {
    CFRelease(v29);
  }

  return v26;
}

uint64_t FigRemote_CreateBinaryPListDataFromMetadataItemArray(CFTypeRef cf, void *a2)
{
  v12 = 0;
  if (!a2)
  {
    FigRemote_CreateBinaryPListDataFromMetadataItemArray_cold_3(&v13);
    return v13;
  }

  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFArrayGetTypeID()) || (Count = CFArrayGetCount(cf)) == 0)
  {
    v10 = 0;
    *a2 = 0;
    return v10;
  }

  v6 = Count;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigRemote_CreateBinaryPListDataFromMetadataItemArray_cold_2(&v13);
    return v13;
  }

  v9 = Mutable;
  if (v6 > 0)
  {
    FigRemote_CreateBinaryPListDataFromMetadataItemArray_cold_1(cf, v7, v6, Mutable);
  }

  v10 = MEMORY[0x19A8D2A70](v9, v7, &v12);
  *a2 = v12;
  CFRelease(v9);
  return v10;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_2_184()
{

  return CFDictionaryCreateMutableCopy(v1, 0, v0);
}

CFTypeID OUTLINED_FUNCTION_3_155(int a1, CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t OUTLINED_FUNCTION_5_132(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int valuePtr)
{
  valuePtr = 0;

  return CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
}

void OUTLINED_FUNCTION_6_118(__CFDictionary *a1)
{

  CFDictionaryReplaceValue(a1, v1, v2);
}

const void *OUTLINED_FUNCTION_7_102()
{

  return CFDictionaryGetValue(v0, v1);
}

double figHapticPlayer_CF_init(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void figHapticPlayer_CF_finalize(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {

    dispatch_release(v2);
  }
}

uint64_t __FigHapticPlayerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigHapticPlayerGetTypeID_cfTypeID = result;
  return result;
}

void *figHapticEngine_CF_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figHapticEngine_CF_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {

    dispatch_release(v2);
  }
}

uint64_t __FigHapticEngineGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigHapticEngineGetTypeID_cfTypeID = result;
  return result;
}

uint64_t FigHapticEngineCreate(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v34 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (dword_1EAF17A18)
  {
    v33 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    FigHapticEngineCreate_cold_5(cf);
LABEL_32:
    v22 = LODWORD(cf[0]);
    goto LABEL_24;
  }

  if (FigHapticEngineGetTypeID_nonce != -1)
  {
    FigHapticEngineCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigHapticEngineCreate_cold_4(cf);
    goto LABEL_32;
  }

  v9 = Instance;
  v10 = objc_autoreleasePoolPush();
  v11 = *(CMBaseObjectGetVTable() + 16);
  if (!v11)
  {
    v22 = 4294948075;
LABEL_23:
    objc_autoreleasePoolPop(v10);
    CFRelease(v9);
    goto LABEL_24;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    v22 = 4294948071;
    goto LABEL_23;
  }

  v13 = *MEMORY[0x1E695E480];
  v14 = v12(a2, @"FAS_AudioSessionID", *MEMORY[0x1E695E480], &v34);
  if (v14)
  {
    v22 = v14;
    goto LABEL_23;
  }

  v31 = 0;
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a3)
  {
    FigHapticEngineCreate_cold_2(a3, v15);
  }

  *(v9 + 16) = [objc_alloc(MEMORY[0x1E695F570]) initWithAudioSessionID:FigCFNumberGetSInt32() options:v15 error:&v31];

  if (!*(v9 + 16))
  {
    FigHapticEngineCreate_cold_3(&v31, cf);
    v22 = LODWORD(cf[0]);
    goto LABEL_23;
  }

  cf[0] = 0;
  v16 = *(CMBaseObjectGetVTable() + 16);
  if (!v16)
  {
    goto LABEL_37;
  }

  v17 = *(v16 + 48);
  if (!v17)
  {
    goto LABEL_37;
  }

  if (v17(a2, *MEMORY[0x1E69AFCC0], v13, cf))
  {
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_37;
  }

  v18 = FigCFEqual();
  v19 = cf[0];
  if (v18 || (v20 = FigCFEqual(), v19 = cf[0], v20))
  {
    v21 = 1;
    if (v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v21 = FigCFEqual() != 0;
    v19 = cf[0];
    if (cf[0])
    {
LABEL_19:
      CFRelease(v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }
  }

  if (!v21)
  {
LABEL_37:
    *(v9 + 32) = 0;
    [*(v9 + 16) setAutoShutdownTimeout:{5.0, v28, v29}];
    [*(v9 + 16) setAutoShutdownEnabled:1];
    goto LABEL_38;
  }

LABEL_29:
  [*(v9 + 16) setHighPriority:{1, v28, v29}];
  *(v9 + 32) = 1;
  [*(v9 + 16) setPlaysHapticsOnly:1];
LABEL_38:
  v24 = *(v9 + 16);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __FigHapticEngineCreate_block_invoke;
  v30[3] = &__block_descriptor_40_e8_v16__0q8l;
  v30[4] = v24;
  [v24 setStoppedHandler:v30];
  *(v9 + 24) = dispatch_queue_create("com.coremedia.hapticEngine", 0);
  objc_autoreleasePoolPop(v10);
  if (dword_1EAF17A18)
  {
    v33 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v33;
    if (os_log_type_enabled(v25, type))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      v35 = 136315394;
      v36 = "FigHapticEngineCreate";
      v37 = 2112;
      v38 = v9;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v22 = 0;
  *a4 = v9;
LABEL_24:
  if (v34)
  {
    CFRelease(v34);
  }

  return v22;
}

uint64_t __FigHapticEngineCreate_block_invoke()
{
  if (dword_1EAF17A18)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t FigHapticEngineStart(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigHapticEngineStart_block_invoke;
  v4[3] = &unk_1E7482510;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __FigHapticEngineStart_block_invoke(uint64_t a1)
{
  result = figHapticEngineStartOnActivityQueue(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t figHapticEngineStartOnActivityQueue(uint64_t a1)
{
  v3 = 0;
  dispatch_assert_queue_V2(*(a1 + 24));
  if ([*(a1 + 16) startAndReturnError:&v3])
  {
    return 0;
  }

  else
  {
    return [v3 code];
  }
}

uint64_t FigHapticPlayerCreate(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, uint64_t *a4)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigHapticPlayerCreate_cold_4(&block);
    return LODWORD(block.start.value);
  }

  if (!a3)
  {
    FigHapticPlayerCreate_cold_3(&block);
    return LODWORD(block.start.value);
  }

  if (FigHapticPlayerGetTypeID_nonce != -1)
  {
    FigHapticPlayerCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigHapticPlayerCreate_cold_2(&block);
    return LODWORD(block.start.value);
  }

  v8 = Instance;
  v41[0] = 0;
  start.value = 0;
  *&start.timescale = &start;
  start.epoch = 0x3052000000;
  v38 = __Block_byref_object_copy__13;
  v39 = __Block_byref_object_dispose__13;
  v40 = 0;
  duration.value = 0;
  *&duration.timescale = &duration;
  duration.epoch = 0x3052000000;
  v34 = __Block_byref_object_copy__13;
  v35 = __Block_byref_object_dispose__13;
  v36 = 0;
  v9 = objc_autoreleasePoolPush();
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  if (!FormatDescription)
  {
    goto LABEL_18;
  }

  v12 = DataBuffer;
  if (CMFormatDescriptionGetMediaType(FormatDescription) != 1751216244 || !v12)
  {
    goto LABEL_18;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  if (MediaSubType == 1634230640)
  {
    HapticPatternDictionaryFromAppleHapticBBuf = FigCreateHapticPatternDictionaryFromAppleHapticBBuf(v12, v41, 0);
    goto LABEL_19;
  }

  if (MediaSubType == 1634230642)
  {
    HapticPatternDictionaryFromAppleHapticBBuf = FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf(v12, v41, 0);
    goto LABEL_19;
  }

  if (MediaSubType != 1651866234)
  {
    goto LABEL_18;
  }

  DataLength = CMBlockBufferGetDataLength(v12);
  if (!DataLength)
  {
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v15 = [MEMORY[0x1E695DF88] dataWithLength:DataLength];
  v16 = v15;
  if (!v15)
  {
LABEL_18:
    HapticPatternDictionaryFromAppleHapticBBuf = FigSignalErrorAtGM();
LABEL_19:
    v17 = HapticPatternDictionaryFromAppleHapticBBuf;
    if (HapticPatternDictionaryFromAppleHapticBBuf)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v17 = CMBlockBufferCopyDataBytes(v12, 0, DataLength, [v15 mutableBytes]);
  if (v17)
  {
    goto LABEL_23;
  }

  v18 = v16;
LABEL_21:
  v20 = *(a3 + 24);
  block.start.value = MEMORY[0x1E69E9820];
  *&block.start.timescale = 3221225472;
  block.start.epoch = __createCHHapticPlayer_block_invoke;
  block.duration.value = &unk_1E74973A8;
  p_duration = &duration;
  p_start = &start;
  v32 = a3;
  *&block.duration.timescale = v41[0];
  block.duration.epoch = v18;
  dispatch_sync(v20, &block);
  v21 = *(*&duration.timescale + 40);
  if (v21)
  {
    [v21 code];
    v17 = FigSignalErrorAtGM();
  }

  else
  {
    v17 = 0;
    *(v8 + 88) = *(*&start.timescale + 40);
  }

LABEL_23:
  objc_autoreleasePoolPop(v9);
  _Block_object_dispose(&duration, 8);
  _Block_object_dispose(&start, 8);
  if (v17 || !*(v8 + 88))
  {
    CFRelease(v8);
  }

  else
  {
    v22 = *(a3 + 24);
    if (v22)
    {
      dispatch_retain(v22);
    }

    *(v8 + 96) = v22;
    v23 = CMGetAttachment(a2, *MEMORY[0x1E6960560], 0);
    if (v23)
    {
      CMTimeMakeFromDictionary(&block.start, v23);
      epoch = block.start.epoch;
      *(v8 + 16) = *&block.start.value;
    }

    else
    {
      v25 = MEMORY[0x1E6960CC0];
      *(v8 + 16) = *MEMORY[0x1E6960CC0];
      epoch = *(v25 + 16);
    }

    *(v8 + 32) = epoch;
    CMSampleBufferGetOutputPresentationTimeStamp(&start, a2);
    CMSampleBufferGetOutputDuration(&duration, a2);
    CMTimeRangeMake(&block, &start, &duration);
    v17 = 0;
    v26 = *&block.duration.timescale;
    v27 = *&block.start.epoch;
    *(v8 + 40) = *&block.start.value;
    *(v8 + 56) = v27;
    *(v8 + 72) = v26;
    *a4 = v8;
  }

  return v17;
}

void sub_1968367B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__n128 FigHapticPlayerGetOutputTimeRange@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 16) = v2;
  result = *(a1 + 72);
  *(a2 + 32) = result;
  return result;
}

void FigHapticPlayerSetIsMuted(uint64_t a1, char a2)
{
  v2 = *(a1 + 96);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FigHapticPlayerSetIsMuted_block_invoke;
  v3[3] = &__block_descriptor_41_e5_v8__0l;
  v3[4] = a1;
  v4 = a2;
  dispatch_sync(v2, v3);
}

uint64_t FigHapticPlayerSetVolumeNow(uint64_t a1, float a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(a1 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHapticPlayerSetVolumeNow_block_invoke;
  block[3] = &unk_1E74924C0;
  v6 = a2;
  block[4] = &v7;
  block[5] = a1;
  dispatch_sync(v2, block);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __FigHapticPlayerSetVolumeNow_block_invoke(uint64_t a1)
{
  v4 = 0;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    LODWORD(v3) = *(a1 + 48);
    result = [*(*(a1 + 40) + 88) setVolume:&v4 atTime:v3 error:0.0];
    if ((result & 1) == 0)
    {
      [v4 code];
      result = FigSignalErrorAtGM();
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t FigHapticPlayerSetActiveChannelIndexNow(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHapticPlayerSetActiveChannelIndexNow_block_invoke;
  block[3] = &unk_1E747EC60;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __FigHapticPlayerSetActiveChannelIndexNow_block_invoke(void *a1)
{
  v3 = 0;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [*(a1[5] + 88) activateChannelByIndex:a1[6] atTime:&v3 error:0.0];
    if ((result & 1) == 0)
    {
      [v3 code];
      result = FigSignalErrorAtGM();
      *(*(a1[4] + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t FigHapticEngineStartPlayerAtHostTimeWithOffset(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = *(a2 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHapticEngineStartPlayerAtHostTimeWithOffset_block_invoke;
  block[3] = &unk_1E7497380;
  block[4] = &v13;
  block[5] = a1;
  block[6] = a2;
  v9 = *a3;
  v10 = *(a3 + 2);
  v5 = *a4;
  v12 = *(a4 + 2);
  v11 = v5;
  dispatch_sync(v4, block);
  v6 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v6;
}

uint64_t FigHapticPlayerPauseNow(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 96);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigHapticPlayerPauseNow_block_invoke;
  v4[3] = &unk_1E7482510;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __FigHapticPlayerPauseNow_block_invoke(uint64_t a1)
{
  v3 = 0;
  result = [*(*(a1 + 40) + 88) pauseAtTime:&v3 error:0.0];
  if ((result & 1) == 0)
  {
    result = [v3 code];
    if (result != -4805)
    {
      [v3 code];
      result = FigSignalErrorAtGM();
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t FigHapticEngineStopPlayerNow(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a2 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHapticEngineStopPlayerNow_block_invoke;
  block[3] = &unk_1E747EC60;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __FigHapticEngineStopPlayerNow_block_invoke(uint64_t result)
{
  v1 = result;
  v5[22] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v2 = *(result + 40);
  v3 = *(v2 + 32);
  if (v3)
  {
    if (v3 == 2)
    {
      return result;
    }

    if (v3 == 1)
    {
      *(v2 + 32) = 2;
      result = [*(v2 + 16) stopWithCompletionHandler:&__block_literal_global_20];
      if (dword_1EAF17A18)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return result;
    }

LABEL_9:
    result = FigSignalErrorAtGM();
    *(*(*(v1 + 32) + 8) + 24) = result;
    return result;
  }

  result = [*(*(result + 48) + 88) stopAtTime:v5 error:0.0];
  if ((result & 1) == 0)
  {
    result = [v5[0] code];
    if (result != -4805)
    {
      [v5[0] code];
      goto LABEL_9;
    }
  }

  return result;
}

void FigHapticPlayerSetPlaybackRate(uint64_t a1, double a2)
{
  v2 = *(a1 + 96);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FigHapticPlayerSetPlaybackRate_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = a1;
  *&v3[5] = a2;
  dispatch_sync(v2, v3);
}

uint64_t __FigHapticPlayerSetPlaybackRate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(*(a1 + 32) + 88) setPlaybackRate:v1];
}

void __createCHHapticPlayer_block_invoke(void *a1)
{
  v2 = (a1 + 4);
  if (a1[4])
  {
    v3 = [objc_alloc(MEMORY[0x1E695F5A0]) initWithDictionary:a1[4] error:*(a1[6] + 8) + 40];
    if (v3)
    {
      v4 = v3;
      *(*(a1[7] + 8) + 40) = [*(a1[8] + 16) createAdvancedPlayerWithPattern:v3 error:*(a1[6] + 8) + 40];
    }
  }

  else
  {
    v2 = (a1 + 5);
    v5 = a1[5];
    if (!v5)
    {
      return;
    }

    *(*(a1[7] + 8) + 40) = [*(a1[8] + 16) createAdvancedPlayerWithRingtoneData:v5 error:*(a1[6] + 8) + 40];
  }

  v6 = *v2;
}

uint64_t FigTestSupportHTTPRequestCreateFakeFromDisk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!FigTestSupportIsActive())
  {
    return 4294947486;
  }

  if (!gFigTestSupportFakeFromDiskCallbacks)
  {
    return 4294947485;
  }

  v18 = *(gFigTestSupportFakeFromDiskCallbacks + 8);
  if (!v18)
  {
    return 4294947485;
  }

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t FigTestSupportHTTPRequestUseFakeFromDisk(uint64_t a1)
{
  if (!FigTestSupportIsActive())
  {
    return 0;
  }

  if (!gFigTestSupportFakeFromDiskCallbacks)
  {
    return 0;
  }

  v2 = *(gFigTestSupportFakeFromDiskCallbacks + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigTestSupportHTTPRequestSessionNativeConnectionSendPingFakeFromDisk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!FigTestSupportIsActive())
  {
    return 4294947486;
  }

  if (!gFigTestSupportFakeFromDiskCallbacks)
  {
    return 4294947485;
  }

  v14 = *(gFigTestSupportFakeFromDiskCallbacks + 24);
  if (!v14)
  {
    return 4294947485;
  }

  return v14(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t FigTestSupportNetworkInterfaceGetFakeInterfacePropertiesIfPresent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!FigTestSupportIsActive())
  {
    return 0;
  }

  if (!gFigTestSupportFakeFromDiskCallbacks)
  {
    return 0;
  }

  v6 = *(gFigTestSupportFakeFromDiskCallbacks + 32);
  if (!v6)
  {
    return 0;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTestSupportUnregisterNSHTTPRequestSession(uint64_t a1)
{
  if (!FigTestSupportIsActive())
  {
    return 4294947486;
  }

  if (!gFigTestSupportFakeFromDiskCallbacks)
  {
    return 4294947485;
  }

  v2 = *(gFigTestSupportFakeFromDiskCallbacks + 40);
  if (!v2)
  {
    return 4294947485;
  }

  return v2(a1);
}

uint64_t FigTestSupportInstallFakeFromDiskCallbacks(uint64_t a1)
{
  result = FigTestSupportIsAllowed();
  if (!result)
  {
    result = FigUserCrashWithMessage();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = a1;
LABEL_6:
  gFigTestSupportFakeFromDiskCallbacks = v3;
  return result;
}

uint64_t __FigVirtualDisplayPrefsAllowed_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  FigVirtualDisplayPrefsAllowed_allowed = result;
  return result;
}

CFTypeRef airPlayMediaSelection_copySelectedMediaArray(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 120);
  if (v2)
  {
LABEL_8:
    v5 = CFRetain(v2);
    goto LABEL_9;
  }

  if (!*(a1 + 104) || (v3 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0 || (v4 = v3, FigSimpleMutexUnlock(), v5 = (*(a1 + 104))(v4), FigSimpleMutexLock(), CFRelease(v4), !v5))
  {
    v2 = *(a1 + 128);
    if (!v2)
    {
      if (CFArrayGetCount(*(a1 + 112)) < 1)
      {
        v5 = 0;
        goto LABEL_9;
      }

      v2 = *(a1 + 112);
    }

    goto LABEL_8;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigAirPlayMediaSelectionCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (FigAirPlayMediaSelectionCreate_initFigAirPlayTracOnceCheck != -1)
  {
    FigAirPlayMediaSelectionCreate_cold_1();
  }

  if (FigAirPlayMediaSelectionGetTypeID_sRegisterFigAirPlayMediaSelectionTypeOnce != -1)
  {
    FigAirPlayMediaSelectionCreate_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v9 = Instance;
    FigCFDictionaryGetBooleanIfPresent();
    if (a2)
    {
      v9[12] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v9[14] = Mutable;
    if (Mutable && (v11 = FigSimpleMutexCreate(), (v9[3] = v11) != 0))
    {
      if (a4)
      {
        v9[13] = a4;
      }

      FigCFDictionaryGetDictionaryValue();
      FigCFDictionaryApplyBlock();
      result = 0;
      *a5 = v9;
    }

    else
    {
      CFRelease(v9);
      return 4294954434;
    }
  }

  else
  {
    FigAirPlayMediaSelectionCreate_cold_3(&v13);
    return v13;
  }

  return result;
}

uint64_t __FigAirPlayMediaSelectionCreate_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t __FigAirPlayMediaSelectionCreate_block_invoke_2(uint64_t result, const void *a2, const __CFBoolean *a3)
{
  if (a2)
  {
    if (a3)
    {
      return FigAirPlayMediaSelectionSetProperty(*(result + 32), a2, a3);
    }
  }

  return result;
}

uint64_t airPlayMediaSelection_copyAssetProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v16 = 0;
  v15 = 0;
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v8)
  {
LABEL_12:
    v10 = 4294954514;
    goto LABEL_13;
  }

  v9 = v8(v7, &cf);
  if (v9)
  {
    goto LABEL_21;
  }

  v10 = cf;
  if (!cf)
  {
LABEL_16:
    CFRelease(v7);
    goto LABEL_17;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v11)
  {
    goto LABEL_12;
  }

  v9 = v11(v10, a3, &v16);
  if (v9)
  {
LABEL_21:
    v10 = v9;
    goto LABEL_13;
  }

  if (!v16)
  {
LABEL_20:
    v10 = 0;
    goto LABEL_13;
  }

  CMBaseObject = FigAssetGetCMBaseObject(cf);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    goto LABEL_12;
  }

  v10 = v13(CMBaseObject, a3, a2, &v15);
  if (!v10 && v15)
  {
    v10 = 0;
    *a4 = v15;
    v15 = 0;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v15)
  {
    CFRelease(v15);
  }

  return v10;
}

uint64_t registerFigAirPlayMediaSelectionType()
{
  result = _CFRuntimeRegisterClass();
  sFigAirPlayMediaSelectionTypeID = result;
  return result;
}

double airPlayMediaSelection_Init(uint64_t a1)
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

uint64_t airPlayMediaSelection_Finalize(uint64_t a1)
{
  *(a1 + 16) = 1;
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 112) = 0;
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 128) = 0;
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 96) = 0;
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 80) = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t aptapC_RegisterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

CFDictionaryRef MTAudioProcessingTapCreateCFDictionaryFromPointer(void *a1, uint64_t a2)
{
  valuePtr = a2;
  keys = a1;
  v2 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  v3 = CFDictionaryCreate(v2, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (values)
  {
    CFRelease(values);
  }

  return v3;
}

CFDictionaryRef MTAudioProcessingTapCreateCFDictionaryFromPointerAndTrackID(void *a1, uint64_t a2, void *a3, int a4, void *a5, int a6)
{
  keys[3] = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v9 = a6;
  v10 = a4;
  keys[0] = a1;
  keys[1] = a3;
  keys[2] = a5;
  v6 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  cf = CFNumberCreate(v6, kCFNumberSInt32Type, &v10);
  v14 = CFNumberCreate(v6, kCFNumberSInt32Type, &v9);
  v7 = CFDictionaryCreate(v6, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

CFDictionaryRef MTAudioProcessingTapCreateCFDictionaryFromThreePointers(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  keys[3] = *MEMORY[0x1E69E9840];
  v10 = a4;
  valuePtr = a2;
  v9 = a6;
  keys[0] = a1;
  keys[1] = a3;
  keys[2] = a5;
  v6 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  cf = CFNumberCreate(v6, kCFNumberLongType, &v10);
  v14 = CFNumberCreate(v6, kCFNumberLongType, &v9);
  v7 = CFDictionaryCreate(v6, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

const __CFNumber *MTAudioProcessingTapGetPointerFromCFDictionary(void *key, CFDictionaryRef theDict)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(theDict, key);
  if (result)
  {
    if (CFNumberGetValue(result, kCFNumberLongType, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double MTAudioProcessingTapConvertStreamTimeToMediaTime@<D0>(int64_t value@<X1>, int32_t timescale@<W3>, unsigned int a3@<W0>, int64_t a4@<X2>, uint64_t a5@<X8>, double a6@<D0>, float a7@<S1>, float a8@<S2>)
{
  v15 = MEMORY[0x1E6960C98];
  v16 = *(MEMORY[0x1E6960C98] + 16);
  *a5 = *MEMORY[0x1E6960C98];
  *(a5 + 16) = v16;
  *(a5 + 32) = *(v15 + 32);
  v24 = **&MEMORY[0x1E6960C70];
  v23 = v24;
  memset(&v22, 0, sizeof(v22));
  CMTimeMake(&v22, value, timescale);
  memset(&v21, 0, sizeof(v21));
  CMTimeMake(&v21, a4, timescale);
  CMTimeMake(&v24, (a6 + 0.5), timescale);
  lhs = v24;
  v18 = v21;
  CMTimeSubtract(&v20, &lhs, &v18);
  v24 = v20;
  lhs = v20;
  CMTimeMultiplyByFloat64(&v20, &lhs, (a7 / a8));
  v24 = v20;
  lhs = v20;
  v18 = v22;
  CMTimeAdd(&v20, &lhs, &v18);
  v24 = v20;
  CMTimeMake(&v23, a3, timescale);
  lhs = v23;
  CMTimeMultiplyByFloat64(&v20, &lhs, fabsf(a7) / a8);
  v23 = v20;
  if (a7 < 0.0)
  {
    lhs = v24;
    v18 = v23;
    CMTimeSubtract(&v20, &lhs, &v18);
    v24 = v20;
  }

  *a5 = v24;
  result = *&v23.value;
  *(a5 + 24) = v23;
  return result;
}

CFTypeID MTAudioProcessingTapGetTypeID(void)
{
  MEMORY[0x19A8D3660](&MTAudioProcessingTapGetClassID_sRegisterBaseTypeOnce, aptapC_RegisterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTX3GCaptionGroupConverterFromSampleBufferCreate(void *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    FigTX3GCaptionGroupConverterFromSampleBufferCreate_cold_4(&v7);
    return v7;
  }

  if (!a1)
  {
    FigTX3GCaptionGroupConverterFromSampleBufferCreate_cold_3(&v7);
    return v7;
  }

  if (!*a1)
  {
    FigTX3GCaptionGroupConverterFromSampleBufferCreate_cold_2(&v7);
    return v7;
  }

  if (!a1[1])
  {
    FigTX3GCaptionGroupConverterFromSampleBufferCreate_cold_1(&v7);
    return v7;
  }

  FigCaptionGroupConverterFromSampleBufferGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    *CMBaseObjectGetDerivedStorage() = *a1;
    *a3 = 0;
  }

  return v5;
}

__CFString *fcgcfs_tx3g_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTX3GCaptionGroupConverterFromSampleBufferf %p>", a1);
  return Mutable;
}

uint64_t fcgcfs_tx3g_getFontFamilyNameFromTx3gFontName(const __CFString *a1)
{
  if (CFStringCompare(a1, @"ProportionalSansSerif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611C0];
    return *v4;
  }

  if (CFStringCompare(a1, @"ProportionalSerif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611B8];
    return *v4;
  }

  if (CFStringCompare(a1, @"MonospaceSansSerif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611B0];
    return *v4;
  }

  if (CFStringCompare(a1, @"MonospaceSerif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6960A50];
    return *v4;
  }

  if (CFStringCompare(a1, @"Serif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611D0];
    return *v4;
  }

  if (CFStringCompare(a1, @"SansSerif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611C8];
    return *v4;
  }

  if (CFStringCompare(a1, @"Monospace", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611A0];
    return *v4;
  }

  if (CFStringCompare(a1, @"Casual", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6961180];
    return *v4;
  }

  if (CFStringCompare(a1, @"Cursive", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6961188];
    return *v4;
  }

  if (CFStringCompare(a1, @"Fantasy", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6960A40];
    return *v4;
  }

  v2 = *MEMORY[0x1E6961190];
  if (CFStringCompare(a1, @"SmallCapital", 1uLL))
  {
    return v2;
  }

  else
  {
    return *MEMORY[0x1E6960A80];
  }
}

uint64_t OUTLINED_FUNCTION_4_152()
{

  return FigCaptionDynamicStyleCreate();
}

uint64_t RegisterFigBasicAESCPEProtectorType()
{
  FigCPEProtectorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t ExternalProtectionStatusChangedCallback_5()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigBasicAESCPEProtectorInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (*DerivedStorage)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (*v1)
      {
        CFRelease(*v1);
        *v1 = 0;
      }
    }

    v2 = v1[1];
    if (v2)
    {
      CFRelease(v2);
      v1[1] = 0;
    }
  }

  return 0;
}

__CFString *FigBasicAESCPEProtectorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = Mutable;
  if (DerivedStorage && Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigBasicAESBasicAESCPEProtector>");
  }

  return v5;
}

uint64_t FigTTMLDivCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    FigTTMLDivCreate_cold_2(&v16);
    return v16;
  }

  FigTTMLNodeGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
  if (v8)
  {
    return v8;
  }

  v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (v8)
  {
    return v8;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v15 = 197;
LABEL_14:
    FigTTMLBodyCreate_cold_1(v15, &v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v11;
  if (!v11)
  {
    v15 = 200;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  FigTTMLParseNode(a2, figTTMLDivConsumeChildNode, a3);
  v13 = v12;
  if (!v12)
  {
    *a4 = 0;
  }

  return v13;
}

uint64_t figTTMLDivConsumeChildNode(uint64_t a1, CFTypeRef *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(*a2);
  BlockClassNode = FigTTMLParseAndCreateBlockClassNode();
  if (BlockClassNode)
  {
    return BlockClassNode;
  }

  CFGetAllocator(*a2);
  BlockClassNode = FigTTMLParseAndCreateAnimationClassNode();
  if (BlockClassNode)
  {
    return BlockClassNode;
  }

  v10 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  v8 = v10;
  if (a3 && !v10)
  {
    v8 = 0;
    *a3 = 0;
  }

  return v8;
}

void figTTMLDiv_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLDiv_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"div: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLDiv_CopyChildNodeArray(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
    result = 0;
    *a2 = ConcatenationOfTwoArrays;
  }

  else
  {
    figTTMLDiv_CopyChildNodeArray_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figTTMLDiv_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 3;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLDiv_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

BOOL FigPKDCPESupportsFormatDescription(const opaqueCMFormatDescription *a1)
{
  cf = 0;
  v1 = PKDCopyDecryptFormatTypeFromFormatDescription(a1, &cf);
  v2 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  return !v3;
}

uint64_t RegisterFigBasicAESCPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBasicAESCPESupportsFormatDescription(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  result = 0;
  if (MediaSubType <= 2053202274)
  {
    if (MediaSubType <= 1902207330)
    {
      if (MediaSubType != 1667331683)
      {
        v4 = 1700886115;
        goto LABEL_15;
      }
    }

    else if (MediaSubType != 1902207331 && MediaSubType != 1902212707)
    {
      v4 = 1903587385;
      goto LABEL_15;
    }
  }

  else if (MediaSubType > 2053207650)
  {
    if (MediaSubType != 2053464883)
    {
      v3 = 30307;
      goto LABEL_14;
    }
  }

  else if ((MediaSubType - 2053202739) > 0x3D || ((1 << (MediaSubType - 51)) & 0x2020000000000001) == 0)
  {
    v3 = 24931;
LABEL_14:
    v4 = v3 | 0x7A610000;
LABEL_15:
    if (MediaSubType != v4)
    {
      return result;
    }
  }

  return 1;
}

uint64_t FigBasicAESCPECryptorCreate(const void *a1, const void *a2, const __CFDictionary *a3, uint64_t a4, void *a5)
{
  v5 = 4294955146;
  if (a1 && a2 && a5)
  {
    MEMORY[0x19A8D3660](&FigBasicAESCPECryptorGetClassID_sRegisterFigBasicAESCPECryptorTypeOnce, RegisterFigBasicAESCPECryptorType);
    v10 = CMDerivedObjectCreate();
    if (v10)
    {
      return v10;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      return 4294955145;
    }

    v12 = DerivedStorage;
    v13 = FigSimpleMutexCreate();
    v12[10] = v13;
    if (!v13)
    {
      return 4294955145;
    }

    *v12 = CFRetain(a1);
    v12[5] = CFRetain(*MEMORY[0x1E6960FF8]);
    v14 = CFRetain(a2);
    v12[11] = v14;
    FigCPEExternalProtectionMonitorBeginMonitoring(v14);
    CMNotificationCenterGetDefaultLocalCenter();
    v10 = FigNotificationCenterAddWeakListener();
    if (v10)
    {
      return v10;
    }

    else
    {
      if (a3)
      {
        Value = CFDictionaryGetValue(a3, @"CryptKeyAttributes");
        if (Value)
        {
          Value = CFRetain(Value);
        }

        v12[12] = Value;
      }

      v5 = 0;
      *a5 = 0;
    }
  }

  return v5;
}

uint64_t ExternalProtectionStatusChangedCallback_6()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigBasicAESCPECryptorInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 73) = 1;
  if (*(DerivedStorage + 88))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    FigCPEExternalProtectionMonitorEndMonitoring(*(DerivedStorage + 88));
    v1 = *(DerivedStorage + 88);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 88) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
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

  FigCryptDispose(*(DerivedStorage + 32));
  *(DerivedStorage + 32) = 0;
  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 40) = 0;
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 96) = 0;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigBasicAESCPECryptorFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBasicAESCPECryptorInvalidate();
  v1 = DerivedStorage[6];
  if (v1)
  {
    CFRelease(v1);
  }

  if (DerivedStorage[7])
  {
    FigH264Bridge_HLSfMP4ParsingInfoDestroy();
    DerivedStorage[7] = 0;
  }

  result = DerivedStorage[10];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    DerivedStorage[10] = 0;
  }

  return result;
}

__CFString *FigBasicAESCPECryptorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 73))
  {
    v5 = 1;
  }

  else
  {
    v5 = Mutable == 0;
  }

  if (!v5)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigBasicAESCPECryptor: protectorParent<%@> >", *DerivedStorage);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t FigBasicAESCPECryptorDecryptAAC(uint64_t a1, char *a2, char *a3, size_t a4)
{
  v8 = ADTSGetADTSHeaderSize(a2) + 16;

  return FigBasicAESCPECryptorDecryptAudio(a1, a2, a3, a4, v8);
}

uint64_t FigBasicAESCPECryptorDecryptAudio(uint64_t a1, char *__src, char *__dst, size_t __n, size_t a5)
{
  v5 = __n;
  v6 = __dst;
  v7 = __src;
  v8 = __n - a5;
  if (__n >= a5)
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    if (a5)
    {
      memcpy(__dst, __src, a5);
      v7 += a5;
      v6 += a5;
      v5 = v8;
    }

    v11 = v5 & 0xFFFFFFFFFFFFFFF0;
    if ((v5 & 0xFFFFFFFFFFFFFFF0) != 0)
    {
      v12 = *(a1 + 32);
      BytePtr = CFDataGetBytePtr(*(a1 + 16));
      CFDataGetLength(*(a1 + 16));
      result = FigCryptSetIV(v12, BytePtr);
      if (result)
      {
        return result;
      }

      result = FigCryptDecryptMemory(*(a1 + 32), 1, 0, v7, v5 & 0xFFFFFFFFFFFFFFF0, &v17, v6, v5 & 0xFFFFFFFFFFFFFFF0, &v16, &v15);
      if (result)
      {
        return result;
      }

      if (v11 != v17 || v11 != v16 || v15)
      {
        FigBasicAESCPECryptorDecryptAudio_cold_1(&v18);
        return v18;
      }

      v7 += v11;
      v6 += v11;
    }

    v5 &= 0xFu;
  }

  if (v5)
  {
    memcpy(v6, v7, v5);
  }

  return 0;
}

uint64_t FigBasicAESCPECryptorDecryptEAC3(uint64_t a1, _BYTE *a2, char *a3, unint64_t a4)
{
  if (a4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      FrameSize = DolbyGetFrameSize(a2);
      v8 += FrameSize;
      if (v8 > a4)
      {
        FigBasicAESCPECryptorDecryptEAC3_cold_2(&v21);
        return v21;
      }

      v10 = FrameSize;
      if (FrameSize >= 0x10)
      {
        v20 = 0;
        v21 = 0;
        v19 = 0;
        *a3 = *a2;
        v11 = a2 + 16;
        v12 = a3 + 16;
        v13 = FrameSize & 0xFFFFFFF0;
        v14 = v13 - 16;
        if (v13 != 16)
        {
          if (!v7)
          {
            v17 = *(a1 + 32);
            BytePtr = CFDataGetBytePtr(*(a1 + 16));
            CFDataGetLength(*(a1 + 16));
            result = FigCryptSetIV(v17, BytePtr);
            if (result)
            {
              return result;
            }

            v7 = 1;
          }

          result = FigCryptDecryptMemory(*(a1 + 32), 1, 0, a2 + 16, (v10 & 0xFFFFFFF0) - 16, &v21, a3 + 16, (v10 & 0xFFFFFFF0) - 16, &v20, &v19);
          if (result)
          {
            return result;
          }

          if (v14 != v21 || v14 != v20 || v19)
          {
            FigBasicAESCPECryptorDecryptEAC3_cold_1(&v22);
            return v22;
          }

          v11 = &a2[v13];
          v12 = &a3[v13];
        }

        v10 &= 0xFu;
        a3 = v12;
        a2 = v11;
      }

      if (v10)
      {
        memcpy(a3, a2, v10);
        a2 += v10;
        a3 += v10;
      }
    }

    while (v8 < a4);
  }

  return 0;
}

uint64_t FigBasicAESCPECryptorDecryptH264_FPS(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    FigBasicAESCPECryptorDecryptH264_FPS_cold_1(&v13);
    return v13;
  }

  if (*(a1 + 56))
  {
    return FigBasicAESCPECryptorDecryptHLSfMP4NALs_FPS(a1, a2);
  }

  v11 = 0;
  v12 = 0;
  Extensions = CMFormatDescriptionGetExtensions(v3);
  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
  v7 = CFDictionaryGetValue(Value, @"avcC");
  if (v7)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      CFArrayGetValueAtIndex(v7, 0);
    }
  }

  result = FigH264Bridge_CreateHLSfMP4ParsingInfoFromAVCCData();
  if (!result)
  {
    result = FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV(*(a1 + 48), 0, &v12, &v11, 0, 0);
    if (!result)
    {
      v10 = v11;
      *(a1 + 64) = v12;
      *(a1 + 68) = v10;
      return FigBasicAESCPECryptorDecryptHLSfMP4NALs_FPS(a1, a2);
    }
  }

  return result;
}

uint64_t FigBasicAESCPECryptorDecryptHEVC_FPS(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    FigBasicAESCPECryptorDecryptHEVC_FPS_cold_1(&v15);
    return v15;
  }

  if (*(a1 + 56))
  {
    return FigBasicAESCPECryptorDecryptHLSfMP4NALs_FPS(a1, a2);
  }

  v13 = 0;
  v14 = 0;
  Extensions = CMFormatDescriptionGetExtensions(v3);
  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
  v7 = CFDictionaryGetValue(Value, @"hvcC");
  if (v7)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      CFArrayGetValueAtIndex(v7, 0);
    }
  }

  v9 = CFDictionaryGetValue(Value, @"lhvC");
  if (v9)
  {
    v10 = CFArrayGetTypeID();
    if (v10 == CFGetTypeID(v9))
    {
      CFArrayGetValueAtIndex(v9, 0);
    }
  }

  result = FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData();
  if (!result)
  {
    result = FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV(*(a1 + 48), 0, &v14, &v13, 0, 0);
    if (!result)
    {
      v12 = v13;
      *(a1 + 64) = v14;
      *(a1 + 68) = v12;
      return FigBasicAESCPECryptorDecryptHLSfMP4NALs_FPS(a1, a2);
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_7_103()
{

  return memcpy(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_8_89()
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_9_80(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, size_t *a6, char *a7, uint64_t a8, size_t *a9, _BYTE *a10)
{

  return FigCryptDecryptMemory(a1, 1, 0, a4, v10, a6, a7, v10, a9, a10);
}

uint64_t fnpe_GetInterfaceType(uint64_t result)
{
  if (result)
  {
    type = nw_interface_get_type(result);
    if (type > nw_interface_type_cellular)
    {
      if (type == nw_interface_type_wired)
      {
        return 2;
      }

      else
      {
        return type == nw_interface_type_loopback;
      }
    }

    else if (type == nw_interface_type_wifi)
    {
      if (nw_interface_get_subtype() == 1002)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else if (type == nw_interface_type_cellular)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeID figHTTPRequestStatsGetInterfaceCounts(const void *a1, void *a2, void *a3, void *a4)
{
  v8 = CFGetTypeID(a1);
  result = CFDictionaryGetTypeID();
  if (v8 == result)
  {
    Value = CFDictionaryGetValue(a1, @"_kCFNTimingDataNStatWifiRXPackets");
    v11 = CFDictionaryGetValue(a1, @"_kCFNTimingDataNStatCellRXPackets");
    result = CFDictionaryGetValue(a1, @"_kCFNTimingDataNStatWiredRXPackets");
    v12 = result;
    if (Value)
    {
      valuePtr = 0;
      result = CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
      *a3 = valuePtr;
    }

    if (v11)
    {
      valuePtr = 0;
      result = CFNumberGetValue(v11, kCFNumberLongLongType, &valuePtr);
      *a4 = valuePtr;
    }

    if (v12)
    {
      valuePtr = 0;
      result = CFNumberGetValue(v12, kCFNumberLongLongType, &valuePtr);
      *a2 = valuePtr;
    }
  }

  return result;
}

uint64_t RegisterFigAssetDownloaderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetDownloaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetDownloaderGetClassID_sRegisterFigAssetDownloaderBaseTypeOnce, RegisterFigAssetDownloaderBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigTTMLSynchronicTree()
{
  result = _CFRuntimeRegisterClass();
  sFigTTMLSynchronicTreeID = result;
  return result;
}

uint64_t figTTMLSynchronicTreeCompareDocumentOrderIndex(uint64_t a1, uint64_t a2, int a3)
{
  DocumentOrderIndex = FigTTMLNodeGetDocumentOrderIndex();
  v5 = FigTTMLNodeGetDocumentOrderIndex();
  v6 = DocumentOrderIndex > v5;
  if (DocumentOrderIndex < v5)
  {
    v6 = -1;
  }

  return v6 * a3;
}

uint64_t FigTTMLSynchronicTreeCopyTextNodeArray(uint64_t a1, CFMutableArrayRef *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    CFSetApplyFunction(*(a1 + 56), figTTMLSynchronicTreeCollectTextNode, Mutable);
    v7.length = CFArrayGetCount(Mutable);
    v7.location = 0;
    CFArraySortValues(Mutable, v7, figTTMLSynchronicTreeCompareDocumentOrderIndex, 1);
    v5 = 0;
    *a2 = Mutable;
  }

  else
  {
    fig_log_get_emitter();
    v5 = FigSignalErrorAtGM();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v5;
}

void figTTMLSynchronicTreeCollectTextNode(const void *a1, __CFArray *a2)
{
  v4 = 0;
  if (!FigTTMLNodeGetNodeType(a1, &v4) && v4 == 14)
  {
    CFArrayAppendValue(a2, a1);
  }
}

uint64_t FigTTMLSynchronicTreeCopyCaptionArray(uint64_t a1, __CFArray **a2)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v7 = CFArrayCreateMutable(v4, 0, v5);
  v8 = v7;
  if (!a2)
  {
    FigTTMLSynchronicTreeCopyCaptionArray_cold_4(v18);
    goto LABEL_18;
  }

  if (!Mutable)
  {
    FigTTMLSynchronicTreeCopyCaptionArray_cold_3(v18);
LABEL_18:
    v16 = LODWORD(v18[0]);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    FigTTMLSynchronicTreeCopyCaptionArray_cold_2(v18);
    v16 = LODWORD(v18[0]);
    goto LABEL_15;
  }

  CFSetApplyFunction(*(a1 + 56), figTTMLSynchronicTreeCollectCaptionNode, v7);
  v19.length = CFArrayGetCount(v8);
  v19.location = 0;
  CFArraySortValues(v8, v19, figTTMLSynchronicTreeCompareDocumentOrderIndex, 1);
  Count = CFArrayGetCount(v8);
  if (Count)
  {
    v10 = Count;
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
      if (v12)
      {
        CFRelease(v12);
      }

      v15 = CFArrayCreateMutable(v4, 0, v13);
      if (!v15)
      {
        FigTTMLSynchronicTreeCopyCaptionArray_cold_1(v18);
        goto LABEL_18;
      }

      v12 = v15;
      v18[0] = ValueAtIndex;
      v18[1] = v15;
      CFSetApplyFunction(*(a1 + 56), figTTMLSynchronicTreeCollectDescendantTextNode, v18);
      v20.length = CFArrayGetCount(v12);
      v20.location = 0;
      CFArraySortValues(v12, v20, figTTMLSynchronicTreeCompareDocumentOrderIndex, 1);
      CFArrayAppendValue(Mutable, v12);
      ++v11;
    }

    while (v10 != v11);
    *a2 = Mutable;
    CFRelease(v12);
    v16 = 0;
    Mutable = 0;
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_11:
    if (!Mutable)
    {
      return v16;
    }

    goto LABEL_15;
  }

  v16 = 0;
  *a2 = Mutable;
  Mutable = 0;
LABEL_14:
  CFRelease(v8);
  if (Mutable)
  {
LABEL_15:
    CFRelease(Mutable);
  }

  return v16;
}

void figTTMLSynchronicTreeCollectCaptionNode(const void *a1, __CFArray *a2)
{
  v4 = 0;
  if (!FigTTMLNodeGetNodeType(a1, &v4) && v4 == 4)
  {
    CFArrayAppendValue(a2, a1);
  }
}

uint64_t FigTTMLSynchronicTreeCopyCSS(uint64_t a1, const void *a2, void *a3)
{
  v6 = CFDictionaryGetValue(*(a1 + 72), a2);
  value = v6;
  if (v6)
  {
    v7 = CFRetain(v6);
    result = 0;
LABEL_3:
    *a3 = v7;
    return result;
  }

  v9 = FigTTMLSynchronicTreeCopySSS(a1, a2, &value);
  if (!v9)
  {
    CFDictionaryAddValue(*(a1 + 72), a2, value);
    result = 0;
    v7 = value;
    goto LABEL_3;
  }

  v10 = v9;
  if (value)
  {
    CFRelease(value);
  }

  return v10;
}

void figTTMLSynchronicTreeAppendStyleAttribute(const __CFString *a1, uint64_t a2, __CFDictionary *a3)
{
  if (figTTMLSynchronicTreeIsStyleAttribute(a1))
  {
    FigCaptionDynamicStyleCreateMutable();
    CFDictionaryAddValue(a3, a1, 0);
  }
}

void figTTMLSynchronicTreeInheritStyle(void *key, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  cf = 0;
  v3 = *(a2 + 24);
  if (v3)
  {
    goto LABEL_48;
  }

  if (CFDictionaryContainsKey(*(a2 + 16), key))
  {
LABEL_3:
    v5 = cf;
    goto LABEL_4;
  }

  v29 = 0;
  NodeType = FigTTMLNodeGetNodeType(*(a2 + 8), &v29);
  if (NodeType)
  {
    goto LABEL_47;
  }

  if ((v29 - 3) < 4 || v29 == 14)
  {
    ParentNode = FigTTMLNodeGetParentNode();
    if (!ParentNode)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v29 != 2)
    {
      goto LABEL_3;
    }

    ParentNode = *(*a2 + 48);
    if (!ParentNode)
    {
      goto LABEL_3;
    }
  }

  NodeType = FigTTMLSynchronicTreeCopyCSS(*a2, ParentNode, &cf);
  if (NodeType)
  {
LABEL_47:
    v3 = NodeType;
LABEL_48:
    v14 = 0;
    goto LABEL_49;
  }

  v5 = cf;
  Value = CFDictionaryGetValue(cf, key);
  if (Value)
  {
    v10 = Value;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    NodeType = FigTTMLNodeGetActiveTimeRange(ParentNode, &v23);
    if (!NodeType)
    {
      NodeType = FigTTMLNodeGetActiveTimeRange(*(a2 + 8), &v26);
      if (!NodeType)
      {
        v39 = v25;
        v40 = v26;
        v41 = v27;
        v11 = DWORD1(v28);
        v42 = v28;
        v37 = v23;
        v38 = v24;
        v12 = *(&v28 + 1);
        v35 = 0;
        v36 = 0;
        v13 = CFGetTypeID(v10);
        if (v13 != FigCaptionDynamicStyleGetTypeID() || FigCaptionDynamicStyleGetKeyFrameCount() <= 1)
        {
          v36 = CFRetain(v10);
LABEL_21:
          v3 = 0;
          v14 = v36;
          v36 = 0;
          goto LABEL_22;
        }

        FigCaptionDynamicStyleGetInitialValue();
        Mutable = FigCaptionDynamicStyleCreateMutable();
        if (!Mutable)
        {
          KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
          if (KeyFrameCount < 1)
          {
            goto LABEL_21;
          }

          v17 = KeyFrameCount;
          v18 = 0;
          while (1)
          {
            v34 = 0.0;
            if (v35)
            {
              CFRelease(v35);
            }

            Mutable = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
            if (Mutable)
            {
              break;
            }

            *&lhs.value = v40;
            lhs.epoch = v41;
            *&rhs.value = v37;
            rhs.epoch = v38;
            CMTimeSubtract(&time, &lhs, &rhs);
            Seconds = CMTimeGetSeconds(&time);
            v20 = v34;
            if ((v11 & 0x1D) == 1)
            {
              time.value = *(&v41 + 1);
              time.timescale = v42;
              time.flags = v11;
              time.epoch = v12;
              v21 = CMTimeGetSeconds(&time);
            }

            else
            {
              v21 = INFINITY;
            }

            v22 = v20 - Seconds;
            if (v20 - Seconds < 0.0)
            {
              v22 = 0.0;
            }

            if (v21 >= v22)
            {
              Mutable = FigCaptionDynamicStyleAddKeyFrameValue();
              if (Mutable)
              {
                break;
              }

              if (v17 != ++v18)
              {
                continue;
              }
            }

            goto LABEL_21;
          }
        }

        v3 = Mutable;
        v14 = 0;
LABEL_22:
        if (v35)
        {
          CFRelease(v35);
        }

        if (v36)
        {
          CFRelease(v36);
        }

        if (!v3)
        {
          CFDictionaryAddValue(*(a2 + 16), key, v14);
          if (!v14)
          {
            goto LABEL_3;
          }

LABEL_28:
          CFRelease(v14);
          goto LABEL_3;
        }

LABEL_49:
        *(a2 + 24) = v3;
        if (!v14)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_47;
  }

LABEL_4:
  if (v5)
  {
    CFRelease(v5);
  }
}

CFMutableDictionaryRef figTTMLSynchronicTree_Init(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = CFGetAllocator(a1);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  *(a1 + 64) = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = CFGetAllocator(a1);
  result = CFDictionaryCreateMutable(v5, 0, v3, v4);
  *(a1 + 72) = result;
  return result;
}

void figTTMLSynchronicTree_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
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

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }
}

void figTTMLSynchronicTreeSortTimeline(int a1, CFArrayRef theArray)
{
  v3.length = CFArrayGetCount(theArray);
  v3.location = 0;

  CFArraySortValues(theArray, v3, figTTMLSynchronicTreeSortTimelineComparator, 0);
}

uint64_t figTTMLSynchronicTreeSortTimelineComparator(const __CFArray *a1, const __CFArray *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  v4 = CFArrayGetValueAtIndex(a2, 0);
  memset(&v10, 0, sizeof(v10));
  CMTimeRangeMakeFromDictionary(&v10, ValueAtIndex);
  memset(&v9, 0, sizeof(v9));
  CMTimeRangeMakeFromDictionary(&v9, v4);
  time1 = v10.start;
  start = v9.start;
  v5 = CMTimeCompare(&time1, &start);
  if (v5 < 0)
  {
    return -1;
  }

  else
  {
    return v5 != 0;
  }
}

CFArrayRef figTTMLSynchronicTreeInitializeAnimatableStylesOnce()
{
  values[34] = *MEMORY[0x1E69E9840];
  values[0] = @"http://www.w3.org/ns/ttml#styling backgroundColor";
  values[1] = @"http://www.w3.org/ns/ttml#styling color";
  values[2] = @"http://www.w3.org/ns/ttml#styling direction";
  values[3] = @"http://www.w3.org/ns/ttml#styling display";
  values[4] = @"http://www.w3.org/ns/ttml#styling displayAlign";
  values[5] = @"http://www.w3.org/ns/ttml#styling extent";
  values[6] = @"http://www.w3.org/ns/ttml#styling fontFamily";
  values[7] = @"http://www.w3.org/ns/ttml#styling fontSize";
  values[8] = @"http://www.w3.org/ns/ttml#styling fontStyle";
  values[9] = @"http://www.w3.org/ns/ttml#styling fontWeight";
  values[10] = @"http://www.w3.org/ns/ttml#styling lineHeight";
  values[11] = @"http://www.w3.org/ns/ttml#styling opacity";
  values[12] = @"http://www.w3.org/ns/ttml#styling origin";
  values[13] = @"http://www.w3.org/ns/ttml#styling overflow";
  values[14] = @"http://www.w3.org/ns/ttml#styling padding";
  values[15] = @"http://www.w3.org/ns/ttml#styling position";
  values[16] = @"http://www.w3.org/ns/ttml#styling showBackground";
  values[17] = @"http://www.w3.org/ns/ttml#styling textAlign";
  values[18] = @"http://www.w3.org/ns/ttml#styling textDecoration";
  values[19] = @"http://www.w3.org/ns/ttml#styling textOutline";
  values[20] = @"http://www.w3.org/ns/ttml#styling unicodeBidi";
  values[21] = @"http://www.w3.org/ns/ttml#styling visibility";
  values[22] = @"http://www.w3.org/ns/ttml#styling wrapOption";
  values[23] = @"http://www.w3.org/ns/ttml#styling writingMode";
  values[24] = @"http://www.w3.org/ns/ttml#styling zIndex";
  values[25] = @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay";
  values[26] = @"http://www.w3.org/ns/ttml/profile/imsc1#styling fillLineGap";
  values[27] = @"urn:ebu:tt:style linePadding";
  values[28] = @"urn:ebu:tt:style multiRowAlign";
  values[29] = @"http://www.w3.org/ns/ttml#styling textEmphasis";
  values[30] = @"http://www.w3.org/ns/ttml#styling shear";
  values[31] = @"http://www.w3.org/ns/ttml#styling disparity";
  values[32] = @"http://www.w3.org/ns/ttml#styling luminanceGain";
  values[33] = @"http://www.w3.org/ns/ttml#styling textShadow";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 34, MEMORY[0x1E695E9C0]);
  sAnimatableStyles = result;
  return result;
}

void OUTLINED_FUNCTION_0_207(const __CFDictionary *a1)
{

  CFDictionaryApplyFunction(a1, figTTMLSynchronicTreeMergeStyleset, v1);
}

CMTime *OUTLINED_FUNCTION_2_186(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CMTime *rhs, uint64_t a36, CMTime *lhs, uint64_t a38, CMTime *a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 rhsa, uint64_t rhs_16, uint64_t a45, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a49, uint64_t a50)
{
  rhsa = *(v50 - 256);
  rhs_16 = *(v50 - 240);

  return CMTimeSubtract(&a50, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_4_154()
{

  return FigCaptionDynamicStyleCreate();
}

void FigCaptionRendererCaptionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 40) = 0;
  }

  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }

  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 64) = 0;
  }

  v5 = *(DerivedStorage + 80);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 80) = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *FigCaptionRendererCaptionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCaption: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererCaption_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCaption <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererCaption_FigCaptionRendererIntervalProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCaption <FigCaptionRendererIntervalProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererIntervalProtocol_GetRange(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererIntervalProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererIntervalProtocol_SetRange(double a1, double a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v7(v4, a1, a2);
      }
    }
  }

  return 0;
}

__CFString *FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCaption <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes()
{
  v0 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetViewport(double a1, double a2, double a3, double a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetCGBounds(double a1, double a2, double a3, double a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetCGSize(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetCGOrigin(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_PurgeImageCache()
{
  v0 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetZOrder(double a1)
{
  v2 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_ResetNodeTree()
{
  v0 = *CMBaseObjectGetDerivedStorage();
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

  v3 = *(v2 + 272);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E695F050];
  v6 = *(a2 + 320);
  v5 = *(a2 + 328);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v425.origin = *MEMORY[0x1E695F050];
  v425.size = v7;
  v415 = v7;
  origin = v425.origin;
  v424.origin = v425.origin;
  v424.size = v7;
  v422 = 0;
  data = 0;
  v421 = 0;
  v420 = 0;
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v9 = *(ProtocolVTable + 16);
    if (v9)
    {
      v10 = *(v9 + 48);
      if (v10)
      {
        v10(a1, &v420);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v12 + 72);
      if (v13)
      {
        v13(a1, &v425);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v14 = CMBaseObjectGetProtocolVTable();
  if (v14)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = *(v15 + 104);
      if (v16)
      {
        v16(a1, &v424);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v17 = CMBaseObjectGetProtocolVTable();
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v18 + 208);
      if (v19)
      {
        v19(a1, &data);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v20 = CMBaseObjectGetProtocolVTable();
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v21 + 184);
      if (v22)
      {
        v22(a1, &v422 + 4);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v23 = CMBaseObjectGetProtocolVTable();
  if (v23)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = *(v24 + 192);
      if (v25)
      {
        v25(a1, &v422);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v26 = CMBaseObjectGetProtocolVTable();
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v27 + 224);
      if (v28)
      {
        v28(a1, &v421);
      }
    }
  }

  *(a2 + 757) = 0;
  *(a2 + 757) = CTIsExuberatedLanguage();
  if (!v421)
  {
    goto LABEL_355;
  }

  x = v4->origin.x;
  y = v4->origin.y;
  width = v4->size.width;
  height = v4->size.height;
  v460.origin.x = v4->origin.x;
  v460.origin.y = y;
  v460.size.width = width;
  v460.size.height = height;
  if (CGRectEqualToRect(v425, v460) || v425.size.width <= 0.0 || v425.size.height <= 0.0)
  {
    goto LABEL_355;
  }

  v404 = v5;
  v33 = *MEMORY[0x1E695E480];
  MutableCopy = CFAttributedStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(DerivedStorage + 32));
  values[0] = 0;
  v432.origin = origin;
  v432.size = v415;
  v35 = CMBaseObjectGetDerivedStorage();
  v36 = *(v35 + 40);
  if (v36)
  {
    v37 = CFDictionaryGetValue(v36, @"region") == 0;
  }

  else
  {
    v37 = 1;
  }

  rect2 = width;
  v394 = y;
  v396 = x;
  v418.location = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v38 = CMBaseObjectGetProtocolVTable();
  if (v38)
  {
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = *(v39 + 72);
      if (v40)
      {
        v40(a1, &v432);
      }
    }
  }

  FCRGetVideoPresentationBounds(*(a2 + 376), *(a2 + 384), *(a2 + 344), *(a2 + 352), *(a2 + 360), *(a2 + 368));
  v42 = v41;
  v44 = v43;
  LODWORD(compareOptions) = 0;
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
        v47(a1, &compareOptions);
      }
    }
  }

  alloc = v33;
  if (v37)
  {
    FCRGetOverscanSafeRectForVideo(a2);
    v49 = v48 * 0.15;
    v50 = 3.0;
LABEL_77:
    v76 = v49 / v50;
    *values = v49 / v50;
    goto LABEL_83;
  }

  if (*(v35 + 16) != 7)
  {
    __s1[0].a = 0.0;
    LODWORD(effectiveRange.location) = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v69 = CMBaseObjectGetProtocolVTable();
    if (v69)
    {
      v70 = *(v69 + 16);
      if (v70)
      {
        v71 = *(v70 + 16);
        if (v71)
        {
          v71(a1, __s1);
        }
      }
    }

    a = __s1[0].a;
    FigCaptionRendererRegionProtocolGetProtocolID();
    v73 = CMBaseObjectGetProtocolVTable();
    if (v73)
    {
      v74 = *(v73 + 16);
      if (v74)
      {
        v75 = *(v74 + 48);
        if (v75)
        {
          v75(*&a, &effectiveRange);
        }
      }
    }

    v49 = v432.size.height / SLODWORD(effectiveRange.location);
    v50 = 1.3;
    goto LABEL_77;
  }

  valuePtr = 0.0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v51 = CMBaseObjectGetProtocolVTable();
  if (v51)
  {
    v52 = *(v51 + 16);
    if (v52)
    {
      v53 = *(v52 + 16);
      if (v53)
      {
        v53(a1, &valuePtr);
      }
    }
  }

  aStr = MutableCopy;
  v54 = valuePtr;
  v55 = MEMORY[0x1E695F058];
  v56 = 0;
  if (valuePtr == 0.0)
  {
    v77 = *(MEMORY[0x1E695F058] + 16);
    *&__s1[0].a = *MEMORY[0x1E695F058];
    *&__s1[0].c = v77;
  }

  else
  {
    do
    {
      v57 = v54;
      __s1[0].a = 0.0;
      FigCaptionRendererBaseProtocolGetProtocolID();
      v58 = CMBaseObjectGetProtocolVTable();
      if (v58)
      {
        v59 = *(v58 + 16);
        if (v59)
        {
          v60 = *(v59 + 8);
          if (v60)
          {
            v60(*&v57, __s1);
          }
        }
      }

      v61 = *&valuePtr;
      if (*&__s1[0].a && !strcmp(*&__s1[0].a, "FigCaptionRendererTTMLRegion"))
      {
        v56 = v61;
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v62 = CMBaseObjectGetProtocolVTable();
      if (v62)
      {
        v63 = *(v62 + 16);
        if (v63)
        {
          v64 = *(v63 + 16);
          if (v64)
          {
            v64(v61, &valuePtr);
          }
        }
      }

      v54 = valuePtr;
    }

    while (valuePtr != 0.0);
    v65 = v55[1];
    *&__s1[0].a = *v55;
    *&__s1[0].c = v65;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v66 = CMBaseObjectGetProtocolVTable();
    if (v66)
    {
      v67 = *(v66 + 16);
      v33 = alloc;
      if (v67)
      {
        v68 = *(v67 + 104);
        if (v68)
        {
          v68(*&v57, __s1);
        }
      }
    }

    else
    {
      v33 = alloc;
    }
  }

  effectiveRange = 0;
  v427 = 0u;
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometrySizeMake();
  if (v56)
  {
    FigCaptionRendererTTMLRegionGetCellResolution(v56, &effectiveRange);
  }

  v76 = v44 * 0.041;
  *values = v44 * 0.041;
  MutableCopy = aStr;
LABEL_83:
  if (v44 > v42)
  {
    v76 = v42 / v44 * v76;
    values[0] = *&v76;
  }

  LOBYTE(v428) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  if (!LOBYTE(v428) && (*(a2 + 376) == 0.0 || *(a2 + 384) == 0.0))
  {
    v76 = v76 * 0.9;
    values[0] = *&v76;
  }

  if (compareOptions == 1)
  {
    v78 = *(a2 + 728);
    if (v78 > 0.0)
    {
      v76 = v78 * 0.8;
      *values = v78 * 0.8;
    }
  }

  v79 = *(v35 + 16);
  if (v79 == 3)
  {
    goto LABEL_107;
  }

  effectiveRange.location = 0;
  effectiveRange.length = 0;
  if (v79 != 7)
  {
    Attribute = CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E69631D8], &effectiveRange);
    if (!Attribute)
    {
      v80 = *MEMORY[0x1E6960868];
      goto LABEL_103;
    }

    v82 = Attribute;
    CFRetain(Attribute);
LABEL_101:
    CFNumberGetValue(v82, kCFNumberCGFloatType, values);
    CFRelease(v82);
    v84 = values[0];
    memset(__s1, 0, 48);
    FCRGetTransform(__s1, *(a2 + 376), *(a2 + 384), *(a2 + 360), *(a2 + 368));
    v76 = __s1[0].b + *&v84 * __s1[0].d;
    values[0] = *&v76;
    goto LABEL_107;
  }

  v80 = *MEMORY[0x1E6960868];
  if (CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E6960868], &effectiveRange))
  {
    memset(__s1, 0, 32);
    FigTextMarkupSizeMakeFromSimplifiedDictionary();
    if (LODWORD(__s1[0].b) == 1886679840 || LODWORD(__s1[0].b) == 1886920736)
    {
      FigGeometryDimensionGetCGFloat();
      valuePtr = v81;
      v82 = CFNumberCreate(v33, kCFNumberCGFloatType, &valuePtr);
      if (v82)
      {
        goto LABEL_101;
      }
    }
  }

LABEL_103:
  if (CFAttributedStringGetAttribute(MutableCopy, 0, v80, &effectiveRange))
  {
    memset(__s1, 0, 32);
    FigTextMarkupSizeMakeFromSimplifiedDictionary();
    if (LODWORD(__s1[0].d) == 1986535456 && *(a2 + 56) == 1)
    {
      v85 = v44 * __s1[0].c / 100.0;
      if (v85 > 0.0)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_107:
  v86 = *(a2 + 200);
  if (v86 > 0.0)
  {
    v85 = v76 * v86;
LABEL_109:
    *&v418.location = v85;
    goto LABEL_111;
  }

  *&v418.location = v76;
LABEL_111:
  v87 = CFNumberCreate(v33, kCFNumberCGFloatType, &v418);
  v439.length = CFAttributedStringGetLength(MutableCopy);
  v439.location = 0;
  CFAttributedStringSetAttribute(MutableCopy, v439, @"kFCRSubtitleRenderer_FontSizeToUse", v87);
  if (v87)
  {
    CFRelease(v87);
  }

  rect = *&v418.location;
  *(v35 + 24) = v418.location;
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  v419 = 100.0;
  v88 = CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E69609A0], &effectiveRange);
  if (v88)
  {
    CFNumberGetValue(v88, kCFNumberCGFloatType, &v419);
  }

  v89 = *MEMORY[0x1E6960998];
  v90 = v419 / 100.0;
  v91 = CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E6960998], &effectiveRange);
  v92 = CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E69608F0], &effectiveRange);
  v93 = *MEMORY[0x1E695E4D0];
  if (v92)
  {
    _ZF = v92 == v93;
  }

  else
  {
    _ZF = 0;
  }

  v95 = !_ZF;
  FCRGetOverscanSafeRectForVideo(a2);
  v98 = v96;
  if (v91)
  {
    if (v95)
    {
      if (v90 * v425.size.height >= v97)
      {
        v99 = v97;
      }

      else
      {
        v99 = v90 * v425.size.height;
      }
    }

    else
    {
      v99 = *(MEMORY[0x1E695F040] + 24);
    }
  }

  else
  {
    if (v95)
    {
      if (v90 * v425.size.width >= v96)
      {
        v99 = v96;
      }

      else
      {
        v99 = v90 * v425.size.width;
      }
    }

    else
    {
      v99 = *(MEMORY[0x1E695F040] + 16);
    }

    v98 = v97;
  }

  v418.location = 0;
  v418.length = 0;
  v100 = *MEMORY[0x1E6960930];
  if (CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E6960930], &v418) || CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E6960970], &v418))
  {
    updateCMRubyAttributeForCoreTextRender(DerivedStorage, MutableCopy, 1);
  }

  v101 = *MEMORY[0x1E695F060];
  v102 = *(MEMORY[0x1E695F060] + 8);
  v428 = 0.0;
  compareOptions = 0;
  v403 = v6;
  v389 = v89;
  if (MutableCopy)
  {
    rect1 = v91;
    ckCaptionSetupText(DerivedStorage, MutableCopy, 0, a2, rect);
    v103 = CFAttributedStringCreateMutableCopy(v33, 0, MutableCopy);
    if (!v103)
    {
      FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_1();
      goto LABEL_145;
    }

    v104 = v103;
    v432.origin.y = 0.0;
    v432.origin.x = 0.0;
    v105 = CFAttributedStringGetAttribute(v103, 0, v89, &v432);
    setupHighlight_0(a2, v104);
    if (CFAttributedStringGetLength(v104) < 1)
    {
      attrName = v93;
      v144 = v100;
LABEL_215:
      CFRelease(v104);
      Length = CFAttributedStringGetLength(MutableCopy);
      v165 = CFNumberCreate(v33, kCFNumberCGFloatType, &compareOptions);
      if (v165)
      {
        v166 = v165;
        v442.location = 0;
        v442.length = Length;
        CFAttributedStringSetAttribute(MutableCopy, v442, @"kFCRSubtitleRenderer_SuggestLineHeight", v165);
        CFRelease(v166);
      }

      v167 = CFNumberCreate(v33, kCFNumberCGFloatType, &v428);
      v91 = rect1;
      if (v167)
      {
        v168 = v167;
        v443.location = 0;
        v443.length = Length;
        CFAttributedStringSetAttribute(MutableCopy, v443, @"kFCRSubtitleRenderer_LinePadding", v167);
        CFRelease(v168);
      }

      v100 = v144;
      v93 = attrName;
      goto LABEL_220;
    }

    if (v105 && *(DerivedStorage + 128))
    {
      __s1[0].a = *MEMORY[0x1E6965AA8];
      values[0] = v93;
      v106 = CFDictionaryCreate(v33, __s1, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v106)
      {
        goto LABEL_144;
      }

      v107 = v106;
      v108 = CTTypesetterCreateWithAttributedStringAndOptions(v104, v106);
      if (!v108)
      {
        goto LABEL_144;
      }

      v385 = v107;
      v109 = v108;
      v110 = CTFramesetterCreateWithTypesetter(v108);
      if (!v110)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v110 = CTFramesetterCreateWithAttributedString(v104);
      v385 = 0;
      v109 = 0;
      if (!v110)
      {
LABEL_144:
        CFRelease(v104);
LABEL_145:
        v91 = rect1;
        goto LABEL_220;
      }
    }

    framesetter = v110;
    v382 = v109;
    FrameAttributesDictionary_0 = createFrameAttributesDictionary_0(DerivedStorage, v105);
    v112 = CFAttributedStringGetLength(v104);
    Mutable = CGPathCreateMutable();
    attrName = v93;
    if (Mutable)
    {
      v114 = 0.0;
      v446.origin.x = 0.0;
      v446.origin.y = 0.0;
      v115 = v112;
      v116 = Mutable;
      v446.size.width = v99;
      v446.size.height = v98;
      CGPathAddRect(Mutable, 0, v446);
      v440.location = 0;
      cf = v116;
      v440.length = v115;
      Frame = CTFramesetterCreateFrame(framesetter, v440, v116, FrameAttributesDictionary_0);
      v118 = 0.0;
      if (Frame)
      {
        v119 = Frame;
        theDict = FrameAttributesDictionary_0;
        aStra = MutableCopy;
        Lines = CTFrameGetLines(Frame);
        if (Lines)
        {
          v121 = Lines;
          Count = CFArrayGetCount(Lines);
          if (Count >= 1)
          {
            v123 = Count;
            v371 = v100;
            __s1[0].a = 0.0;
            values[0] = 0;
            valuePtr = 0.0;
            ValueAtIndex = CFArrayGetValueAtIndex(v121, 0);
            CTLineGetTypographicBounds(ValueAtIndex, &__s1[0].a, values, &valuePtr);
            v125 = 0;
            v126 = __s1[0].a;
            v127 = values[0];
            v128 = valuePtr;
            do
            {
              v129 = CFArrayGetValueAtIndex(v121, v125);
              v130 = CTLineGetStringRange(v129);
              if (v125)
              {
                v131 = 112;
              }

              else
              {
                v131 = 96;
              }

              if (v125)
              {
                v132 = 120;
              }

              else
              {
                v132 = 104;
              }

              *(DerivedStorage + v131) = v130.location;
              *(DerivedStorage + v132) = v130.length;
              ++v125;
            }

            while (v123 != v125);
            v133 = v126 + *&v127;
            v430 = 0;
            Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6965A08]);
            if (!Value || (CFNumberGetValue(Value, kCFNumberSInt32Type, &v430), v114 = 0.0, !v430))
            {
              v135 = 0;
              v114 = 0.0;
              do
              {
                v136 = CFArrayGetValueAtIndex(v121, v135);
                v137 = CTLineGetStringRange(v136);
                if (v137.length >= 1)
                {
                  for (i = v137.length + v137.location - 1; ; --i)
                  {
                    String = CFAttributedStringGetString(v104);
                    CharacterAtIndex = CFStringGetCharacterAtIndex(String, i);
                    if (i <= v137.location)
                    {
                      break;
                    }

                    if (CharacterAtIndex != 13 && CharacterAtIndex != 10)
                    {
                      break;
                    }
                  }
                }

                TypographicBounds = CTLineGetTypographicBounds(v136, &__s1[0].a, values, &valuePtr);
                if (v114 < TypographicBounds)
                {
                  v114 = TypographicBounds;
                }

                ++v135;
              }

              while (v135 != v123);
            }

            v118 = v133 + v128;
            v33 = alloc;
            v100 = v371;
          }
        }

        CFRelease(v119);
        MutableCopy = aStra;
        FrameAttributesDictionary_0 = theDict;
      }

      CFRelease(cf);
      v143.location = 0;
      v112 = v115;
    }

    else
    {
      v143.location = 0;
      v114 = 0.0;
      v118 = 0.0;
    }

    compareOptions = *&v118;
    v143.length = v112;
    v445.width = v99;
    v445.height = v98;
    v145 = CTFramesetterSuggestFrameSizeWithConstraints(framesetter, v143, 0, v445, 0);
    if (v145.width >= v114)
    {
      v146 = v145.width;
    }

    else
    {
      v146 = v114;
    }

    if (*(DerivedStorage + 16) == 1)
    {
      v147 = v145.width;
    }

    else
    {
      v147 = v146;
    }

    __s1[0].b = 0.0;
    __s1[0].a = 0.0;
    Attributes = CFAttributedStringGetAttributes(v104, 0, __s1);
    EdgeStyle = getEdgeStyle(*(a2 + 128), *(a2 + 272), Attributes, *MEMORY[0x1E6960818]);
    v150 = FrameAttributesDictionary_0;
    v144 = v100;
    if (EdgeStyle == 4)
    {
      v151 = v118 * 10.0 / 100.0;
    }

    else if (EdgeStyle == 3 || (v151 = 0.0, EdgeStyle == 2))
    {
      if (rect > 60.0)
      {
        v151 = rect * 0.0882352941 / 1.5;
      }

      else
      {
        v151 = rect * 0.0882352941;
      }
    }

    __s1[0].a = v151;
    v152 = CFAttributedStringGetLength(MutableCopy);
    v153 = CFNumberCreate(v33, kCFNumberCGFloatType, __s1);
    if (v153)
    {
      v154 = v153;
      v441.location = 0;
      v441.length = v152;
      CFAttributedStringSetAttribute(MutableCopy, v441, @"kFigSubtitleRenderer_CompensationInTextLayout", v153);
      CFRelease(v154);
    }

    v155 = v118;
    *(DerivedStorage + 20) = v155;
    if (!CFAttributedStringGetAttribute(v104, 0, *MEMORY[0x1E69608C0], &v432))
    {
      v157 = 0.0;
      v158 = v385;
LABEL_208:
      if (v150)
      {
        CFRelease(v150);
      }

      CFRelease(framesetter);
      if (v382)
      {
        CFRelease(v382);
      }

      v163 = v147 + v151 * 2.0;
      if (v158)
      {
        CFRelease(v158);
      }

      v102 = ceil(v145.height + v151 * 2.0);
      v101 = v163 + v157 * 2.0;
      goto LABEL_215;
    }

    FigTextMarkupDimensionMakeFromSimplifiedDictionary();
    v157 = 0.0;
    v158 = v385;
    if (v156 <= 1701650463)
    {
      if (v156 != 622862368)
      {
        if (v156 == 1667591276)
        {
          FigGeometryDimensionGetCGFloat();
          v157 = v160 * *(a2 + 720);
        }

        goto LABEL_207;
      }

      FigGeometryDimensionGetCGFloat();
      v161 = v162 / 100.0;
    }

    else
    {
      if (v156 != 1701650464)
      {
        if (v156 == 1886679840 || v156 == 1886920736)
        {
          FigGeometryDimensionGetCGFloat();
          v157 = v159;
        }

        goto LABEL_207;
      }

      FigGeometryDimensionGetCGFloat();
    }

    v157 = rect * v161;
LABEL_207:
    v428 = v157;
    goto LABEL_208;
  }

LABEL_220:
  if (CFAttributedStringGetAttribute(MutableCopy, 0, v100, &v418))
  {
    updateCMRubyAttributeForCoreTextRender(DerivedStorage, MutableCopy, 0);
  }

  v169 = v420;
  if (FigCFEqual())
  {
    *&v170 = 0.7;
  }

  else if (FigCFEqual())
  {
    *&v170 = 0.59;
  }

  else if (FigCFEqual())
  {
    *&v170 = 0.53;
  }

  else
  {
    v170 = *(&unk_196E7BAE0 + (FigCFEqual() == 0));
  }

  rect1a = *&v170;
  if (FigCFEqual())
  {
    v171.f64[0] = 0.11;
  }

  else if (FigCFEqual())
  {
    v171.f64[0] = 0.07;
  }

  else if (FigCFEqual())
  {
    v171.f64[0] = 0.26;
  }

  else
  {
    v172 = FigCFEqual();
    v171.f64[0] = 0.1;
    if (v172)
    {
      v171.f64[0] = 0.0;
    }
  }

  if (v169 == 1)
  {
    if (rect <= 12.0)
    {
      v101 = ceil(v101);
      v102 = ceil(*(a2 + 728));
    }

    else
    {
      v102 = *(a2 + 728);
    }

    v180 = 0uLL;
    v173 = v102;
    v174 = v101;
  }

  else
  {
    if (*(a2 + 757))
    {
      v171.f64[0] = 0.4;
    }

    if (rect <= 12.0)
    {
      v171.f64[1] = rect1a;
      v101 = ceil(v101);
      v102 = ceil(v102);
      v181 = vcvt_f32_f64(vrndpq_f64(vmulq_n_f64(v171, rect)));
      v174 = v101 + v181.f32[1];
      v173 = v102 + v181.f32[0];
      v179 = vcvtq_f64_f32(vmul_f32(v181, 0x3F0000003F000000));
    }

    else
    {
      v173 = v102 + rect * v171.f64[0];
      v171.f64[1] = rect1a;
      v174 = v101 + rect * rect1a;
      __asm { FMOV            V1.2D, #0.5 }

      v179 = vmulq_f64(vmulq_n_f64(v171, rect), _Q1);
    }

    v180 = vaddq_f64(v179, 0);
  }

  v182 = v180.f64[1];
  v183 = 0.0;
  if (rect <= 12.0)
  {
    v184 = 0.0;
  }

  else
  {
    v447.origin.x = 0.0;
    rectb = v180.f64[0];
    v447.origin.y = 0.0;
    v447.size.width = v174;
    v447.size.height = v173;
    v448 = CGRectIntegral(v447);
    v184 = v448.origin.x;
    v183 = v448.origin.y;
    v174 = v448.size.width;
    v173 = v448.size.height;
    v448.origin.x = v182;
    v448.origin.y = rectb;
    v448.size.width = v101;
    v448.size.height = v102;
    *(&v180 - 8) = CGRectIntegral(v448);
    v182 = v185;
    v101 = v186;
    v102 = v187;
  }

  if (v91)
  {
    v188 = v180.f64[0];
  }

  else
  {
    v188 = v182;
  }

  recta = v188;
  if (v91)
  {
    v189 = v182;
  }

  else
  {
    v189 = v180.f64[0];
  }

  rect1b = v189;
  if (v91)
  {
    v190 = v102;
  }

  else
  {
    v190 = v101;
  }

  framesettera = *&v190;
  if (v91)
  {
    v191 = v183;
  }

  else
  {
    v101 = v102;
    v191 = v184;
  }

  if (v91)
  {
    v192 = v173;
  }

  else
  {
    v184 = v183;
    v192 = v174;
  }

  LODWORD(v33) = vcvtpd_s64_f64(v192);
  if (v91)
  {
    v173 = v174;
  }

  LODWORD(v91) = vcvtpd_s64_f64(v173);
  v422 = __PAIR64__(v33, v91);
  v193 = *(a2 + 340);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v194 = CMBaseObjectGetProtocolVTable();
  if (!v194 || (v195 = *(v194 + 16)) == 0)
  {
    a_low = 4294954508;
    goto LABEL_282;
  }

  v196 = *(v195 + 200);
  if (!v196)
  {
    a_low = 4294954514;
    goto LABEL_282;
  }

  v197 = v196(a1, v33, v91, v193);
  if (v197)
  {
    a_low = v197;
    goto LABEL_282;
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v198 = CMBaseObjectGetProtocolVTable();
  if (v198)
  {
    v199 = *(v198 + 16);
    if (v199)
    {
      v200 = *(v199 + 208);
      if (v200)
      {
        v200(a1, &data);
      }
    }
  }

  aStrb = MutableCopy;
  if (!data)
  {
    FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_8();
    a_low = 0;
    goto LABEL_539;
  }

  attrNamea = v93;
  v201 = *MEMORY[0x1E695F1C0];
  v202 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!v202)
  {
    FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_7(__s1);
    a_low = LODWORD(__s1[0].a);
    goto LABEL_539;
  }

  v203 = v202;
  v204 = CGBitmapContextCreate(data, *(a2 + 340) * HIDWORD(v422), v422 * *(a2 + 340), 8uLL, 4 * *(a2 + 340) * HIDWORD(v422), v202, 0x4001u);
  if (!v204)
  {
    a_low = FigSignalErrorAtGM();
    goto LABEL_535;
  }

  v205 = v204;
  CGContextScaleCTM(v204, *(a2 + 340), *(a2 + 340));
  v206 = FigRECGCommandsContextCreate();
  *v383 = *(MEMORY[0x1E695EFD0] + 16);
  *v386 = *MEMORY[0x1E695EFD0];
  *&__s1[0].a = *MEMORY[0x1E695EFD0];
  *&__s1[0].c = *v383;
  stringRange = *(MEMORY[0x1E695EFD0] + 32);
  *&__s1[0].tx = stringRange;
  CGContextSetTextMatrix(v205, __s1);
  if (v206)
  {
    *&__s1[0].a = *v386;
    *&__s1[0].c = *v383;
    *&__s1[0].tx = stringRange;
    CGContextSetTextMatrix(v206, __s1);
    CGColorSpaceRelease(v203);
    *(a2 + 328) = v206;
    cfa = v206;
  }

  else
  {
    CGColorSpaceRelease(v203);
    cfa = *(a2 + 328);
  }

  *(a2 + 320) = v205;
  v432.origin.y = 0.0;
  v432.origin.x = 0.0;
  valuePtr = 0.0;
  v208 = CFAttributedStringGetAttribute(aStrb, 0, @"kFCRSubtitleRenderer_FontSizeToUse", &v432);
  v4 = MEMORY[0x1E695F050];
  v388 = v206;
  if (!v208 || (CFNumberGetValue(v208, kCFNumberCGFloatType, &valuePtr), valuePtr <= 0.0) || (v449.origin.x = recta, v449.origin.y = rect1b, *&v449.size.width = framesettera, v449.size.height = v101, v461.origin.y = v394, v461.origin.x = v396, v461.size.width = rect2, v461.size.height = height, CGRectEqualToRect(v449, v461)))
  {
    CGColorRelease(0);
    goto LABEL_290;
  }

  v234 = CFAttributedStringGetAttributes(aStrb, 0, &v432);
  v235 = *MEMORY[0x1E69607C0];
  v236 = v101;
  color = copyContentColor_0(*(a2 + 16), *(a2 + 160), *(a2 + 40), v234, *MEMORY[0x1E69607C0], *(a2 + 184));
  if (color)
  {
    values[0] = 0;
    v237 = *(a2 + 744);
    v372 = v234;
    if (v237 && CFDictionaryGetValueIfPresent(v237, @"styleOptions", values))
    {
      Components = CGColorGetComponents(color);
      v239 = CGColorGetComponents(color)[3];
      CGColorFromCFArray = createCGColorFromCFArray(values[0], v235, 0);
      v241 = CGColorGetComponents(CGColorFromCFArray);
      v242 = 0;
      if (v239 > 0.0)
      {
        v243 = v241[3];
        if (v239 < v243)
        {
          *&__s1[0].a = *Components;
          __s1[0].c = Components[2];
          __s1[0].d = v243;
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v242 = DeviceRGB;
          if (DeviceRGB)
          {
            v245 = CGColorCreate(DeviceRGB, &__s1[0].a);
            if (v245)
            {
              v246 = v245;
              CGColorRelease(color);
              color = v246;
            }
          }
        }
      }
    }

    else
    {
      v242 = 0;
      CGColorFromCFArray = 0;
    }

    CGColorSpaceRelease(v242);
    CGColorRelease(CGColorFromCFArray);
    v234 = v372;
  }

  else
  {
    color = 0;
  }

  v250 = valuePtr;
  if (FigCFEqual())
  {
    v251 = 0.35;
  }

  else if (FigCFEqual())
  {
    v251 = 0.15;
  }

  else if (FigCFEqual())
  {
    v251 = 0.26;
  }

  else
  {
    v321 = FigCFEqual();
    v251 = 0.23;
    if (v321)
    {
      v251 = 0.0;
    }
  }

  v322 = ceil(v250 * v251);
  *(DerivedStorage + 136) = v322;
  CGContextSaveGState(v205);
  v323 = cfa;
  if (cfa)
  {
    CGContextSaveGState(cfa);
    CGContextSetFontRenderingStyle();
    CGContextSetFontRenderingStyle();
    CGContextSetShouldSmoothFonts(v205, 0);
    CGContextSetShouldSmoothFonts(cfa, 0);
    CGContextSetShouldAntialias(v205, 1);
    CGContextSetShouldAntialias(cfa, 1);
    CGContextSetInterpolationQuality(v205, kCGInterpolationHigh);
    CGContextSetInterpolationQuality(cfa, kCGInterpolationHigh);
    if (!color)
    {
      goto LABEL_451;
    }

    CGContextSetFillColorWithColor(v205, color);
    CGContextSetFillColorWithColor(cfa, color);
    fillRoundedRect(v205, v191, v184, v192, v173, v322);
    v324 = cfa;
  }

  else
  {
    CGContextSetFontRenderingStyle();
    CGContextSetShouldSmoothFonts(v205, 0);
    CGContextSetShouldAntialias(v205, 1);
    CGContextSetInterpolationQuality(v205, kCGInterpolationHigh);
    if (!color)
    {
      goto LABEL_451;
    }

    CGContextSetFillColorWithColor(v205, color);
    v324 = v205;
  }

  fillRoundedRect(v324, v191, v184, v192, v173, v322);
LABEL_451:
  key = *MEMORY[0x1E6960988];
  if (CFDictionaryContainsKey(v234, *MEMORY[0x1E6960988]))
  {
    if (!CGColorSpaceCreateWithName(v201))
    {
      FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_3();
      v326 = 0;
      Image = 0;
      v340 = 0;
      goto LABEL_543;
    }

    theDicta = CGColorSpaceCreateWithName(v201);
    v325 = CGBitmapContextCreate(0, *(a2 + 340) * v33, *(a2 + 340) * v91, 8uLL, 4 * *(a2 + 340) * v33, theDicta, 0x4001u);
    v326 = v325;
    if (!v325)
    {
      FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_2();
      goto LABEL_542;
    }

    *&__s1[0].a = *v386;
    *&__s1[0].c = *v383;
    *&__s1[0].tx = stringRange;
    CGContextSetTextMatrix(v325, __s1);
    values[0] = 0;
    v327 = CFDictionaryGetValue(v234, key);
    CFNumberGetValue(v327, kCFNumberCGFloatType, values);
    v328 = *values / 100.0;
    if (fabs(*values) > 100.0)
    {
      v328 = 0.0;
    }

    values[0] = *&v328;
    v329 = CFDictionaryContainsKey(v234, v389);
    v330 = values[0];
    v331 = alloc;
    if (v329)
    {
      __s1[0].a = 1.0;
      *&__s1[0].b = values[0];
      *&__s1[0].c = xmmword_196E7BAF0;
      *&__s1[0].tx = 0uLL;
      v454.origin.x = v191;
      v454.origin.y = v184;
      v454.size.width = v192;
      v454.size.height = v173;
      v455 = CGRectApplyAffineTransform(v454, __s1);
      __s1[0].a = 1.0;
      *&__s1[0].b = v330;
      *&__s1[0].c = xmmword_196E7BAF0;
      *&__s1[0].tx = 0uLL;
      v332 = v173 / v455.size.height;
      CGContextConcatCTM(v326, __s1);
      v333 = *(a2 + 340);
      v334 = v332 * v333;
    }

    else
    {
      *&__s1[0].a = xmmword_196E7BB00;
      *&__s1[0].c = values[0];
      __s1[0].d = 1.0;
      *&__s1[0].tx = 0uLL;
      v456.origin.x = v191;
      v456.origin.y = v184;
      v456.size.width = v192;
      v456.size.height = v173;
      v457 = CGRectApplyAffineTransform(v456, __s1);
      *&__s1[0].a = xmmword_196E7BB00;
      *&__s1[0].c = v330;
      __s1[0].d = 1.0;
      *&__s1[0].tx = 0uLL;
      v336 = v192 / v457.size.width;
      CGContextConcatCTM(v326, __s1);
      v334 = *(a2 + 340);
      v333 = v336 * v334;
    }

    CGContextScaleCTM(v326, v333, v334);
    CGContextSetFontRenderingStyle();
    CGContextSetShouldSmoothFonts(v326, 0);
    CGContextSetShouldAntialias(v326, 1);
    CGContextSetInterpolationQuality(v326, kCGInterpolationHigh);
    *(a2 + 320) = v326;
    v335 = v236;
    v323 = cfa;
    if (cfa)
    {
      *(a2 + 328) = v326;
    }
  }

  else
  {
    theDicta = 0;
    v326 = 0;
    v331 = alloc;
    v335 = v236;
  }

  if (attrNamea != CFDictionaryGetValue(*(DerivedStorage + 40), @"FigFCRPreview_DisableTextEdge") && (getEdgeStyle(*(a2 + 128), *(a2 + 272), v234, *MEMORY[0x1E6960818]) - 1) >= 3)
  {
    v341 = CFAttributedStringCreateMutableCopy(v331, 0, aStrb);
    if (v341)
    {
      v342 = v341;
      setupHighlight_0(a2, v341);
      v387 = v342;
      if (ckCaptionSetupText(DerivedStorage, v342, 2, a2, valuePtr) || ckCaptionDrawText(DerivedStorage, v342, a2, 1, 1, valuePtr, recta, rect1b, *&framesettera, v335) || (v368 = CFAttributedStringCreateMutableCopy(v331, 0, aStrb)) == 0)
      {
        Image = 0;
        v343 = v342;
        v340 = theDicta;
        goto LABEL_519;
      }

      v338 = v368;
      v370 = 0;
      goto LABEL_466;
    }

LABEL_542:
    Image = 0;
    v340 = theDicta;
    goto LABEL_543;
  }

  v337 = CFAttributedStringCreateMutableCopy(v331, 0, aStrb);
  if (!v337)
  {
    goto LABEL_542;
  }

  v338 = v337;
  setupHighlight_0(a2, v337);
  v387 = 0;
  v370 = 1;
LABEL_466:
  v390 = v338;
  if (ckCaptionSetupText(DerivedStorage, v338, 1, a2, valuePtr))
  {
    Image = 0;
    v340 = theDicta;
    goto LABEL_518;
  }

  v373 = v234;
  v344 = *(DerivedStorage + 56);
  if (!v344)
  {
    goto LABEL_516;
  }

  v345 = CFArrayGetCount(v344);
  if (v345 < 1)
  {
    goto LABEL_516;
  }

  v346 = v345;
  attrNameb = *MEMORY[0x1E69659D8];
  v397 = *MEMORY[0x1E6965630];
  v347 = 0;
  v369 = v326;
  stringRangea = v345;
  do
  {
    v348 = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v347);
    if (!v348)
    {
      goto LABEL_512;
    }

    v349 = v348;
    if (!CFDictionaryGetValue(v348, @"CMTextHighlightAttributeKey_StringToHighlight"))
    {
      goto LABEL_512;
    }

    v350 = CFAttributedStringGetString(v390);
    v351 = CFDictionaryGetValue(v349, @"CMTextHighlightAttributeKey_CueID");
    if (v351 && CFStringCompare(v350, v351, 0))
    {
      goto LABEL_511;
    }

    rect2a = CFDictionaryGetValue(v349, @"CMTextHighlightAttributeKey_StringToHighlight");
    LODWORD(values[0]) = 0;
    memset(__s1, 0, 32);
    v352 = CFDictionaryGetValue(v349, @"CMTextHighlightAttributeKey_ForegroundColor");
    for (j = 0; j != 4; ++j)
    {
      if (v352)
      {
        if (!FigCFArrayGetFloatAtIndex())
        {
          goto LABEL_511;
        }

        v354 = *values;
      }

      else
      {
        v354 = *(&xmmword_196E7BB58 + j);
      }

      *(&__s1[0].a + j) = v354;
    }

    v355 = createCGColorFromCFArray(0, 0, __s1);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v355, 0.5);
    v356 = CFDictionaryGetValue(v349, @"CMTextHighlightAttributeKey_BackgroundColor");
    v357 = 0;
    v384 = v347;
    while (1)
    {
      if (!v356)
      {
        v358 = dbl_196E7BB78[v357];
        goto LABEL_490;
      }

      if (!FigCFArrayGetFloatAtIndex())
      {
        break;
      }

      v358 = *values;
LABEL_490:
      *(&__s1[0].a + v357++) = v358;
      if (v357 == 4)
      {
        v359 = createCGColorFromCFArray(0, 0, __s1);
        v360 = CGColorCreateCopyWithAlpha(v359, 0.7);
        LODWORD(compareOptions) = 0;
        FigCFDictionaryGetIntIfPresent();
        LODWORD(v428) = -1;
        FigCFDictionaryGetIntIfPresent();
        v444.length = CFStringGetLength(v350);
        v444.location = 0;
        Results = CFStringCreateArrayWithFindResults(alloc, v350, rect2a, v444, compareOptions);
        if (Results)
        {
          v362 = Results;
          rect2b = v360;
          if (CFArrayGetCount(Results) >= 1)
          {
            v363 = 0;
            do
            {
              v364 = CFArrayGetValueAtIndex(v362, v363);
              v365 = v364;
              v366 = v355;
              v367 = v359;
              if (LODWORD(v428) != -1)
              {
                if (v363 + cueHighlightFocusIndexStart == SLODWORD(v428))
                {
                  v366 = v355;
                }

                else
                {
                  v366 = CopyWithAlpha;
                }

                if (v363 + cueHighlightFocusIndexStart == SLODWORD(v428))
                {
                  v367 = v359;
                }

                else
                {
                  v367 = rect2b;
                }
              }

              CFAttributedStringSetAttribute(v390, *v364, attrNameb, v366);
              CFAttributedStringSetAttribute(v390, *v365, v397, v367);
              ++v363;
            }

            while (v363 < CFArrayGetCount(v362));
          }

          cueHighlightFocusIndexStart += CFArrayGetCount(v362);
          CFRelease(v362);
          v360 = rect2b;
        }

        if (v355)
        {
          goto LABEL_504;
        }

        goto LABEL_505;
      }
    }

    v360 = 0;
    v359 = 0;
    if (v355)
    {
LABEL_504:
      CFRelease(v355);
    }

LABEL_505:
    if (CopyWithAlpha)
    {
      CFRelease(CopyWithAlpha);
    }

    v326 = v369;
    if (v359)
    {
      CFRelease(v359);
    }

    v347 = v384;
    if (v360)
    {
      CFRelease(v360);
    }

LABEL_511:
    v323 = cfa;
    v346 = stringRangea;
LABEL_512:
    ++v347;
  }

  while (v347 != v346);
LABEL_516:
  v340 = theDicta;
  if (ckCaptionDrawText(DerivedStorage, v390, a2, 0, v370, valuePtr, recta, rect1b, *&framesettera, v236) || !CFDictionaryContainsKey(v373, key))
  {
    Image = 0;
  }

  else
  {
    *(a2 + 320) = v205;
    if (v323)
    {
      *(a2 + 328) = v323;
    }

    Image = CGBitmapContextCreateImage(v326);
    if (Image)
    {
      v458.origin.x = v191;
      v458.origin.y = v184;
      v458.size.width = v192;
      v458.size.height = v173;
      CGContextDrawImage(v205, v458, Image);
      if (v323)
      {
        v459.origin.x = v191;
        v459.origin.y = v184;
        v459.size.width = v192;
        v459.size.height = v173;
        CGContextDrawImage(v323, v459, Image);
      }
    }

    else
    {
      FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_4();
    }
  }

LABEL_518:
  CFRelease(v390);
  v343 = v387;
  if (v387)
  {
LABEL_519:
    CFRelease(v343);
  }

LABEL_543:
  CGContextRestoreGState(v205);
  if (v323)
  {
    CGContextRestoreGState(v323);
  }

  CGColorRelease(color);
  if (Image)
  {
    CGImageRelease(Image);
  }

  if (v326)
  {
    CGContextRelease(v326);
  }

  v4 = MEMORY[0x1E695F050];
  if (v340)
  {
    CGColorSpaceRelease(v340);
  }

LABEL_290:
  v209 = CGBitmapContextCreateImage(v205);
  if (!v209)
  {
    FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_6(__s1);
    goto LABEL_538;
  }

  v210 = v209;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v211 = CMBaseObjectGetProtocolVTable();
  if (v211)
  {
    v212 = *(v211 + 16);
    if (v212)
    {
      v213 = *(v212 + 168);
      if (v213)
      {
        v213(a1, v210);
      }
    }
  }

  CGImageRelease(v210);
  if (!v388)
  {
LABEL_302:
    FigCaptionRendererNodeProtocolGetProtocolID();
    v219 = CMBaseObjectGetProtocolVTable();
    if (v219)
    {
      v220 = *(v219 + 16);
      if (v220)
      {
        v221 = *(v220 + 216);
        if (v221)
        {
          v221(a1, 0);
        }
      }
    }

    FigCaptionRendererNodeProtocolGetProtocolID();
    v222 = CMBaseObjectGetProtocolVTable();
    if (v222)
    {
      v223 = *(v222 + 16);
      if (v223)
      {
        v224 = *(v223 + 112);
        if (v224)
        {
          v224(a1, v192, v173);
        }
      }
    }

    v225 = v424.origin;
    v424.size.width = v192;
    v424.size.height = v173;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v226 = CMBaseObjectGetProtocolVTable();
    if (v226)
    {
      v227 = *(v226 + 16);
      if (v227)
      {
        v228 = *(v227 + 96);
        if (v228)
        {
          v228(a1, v225.x, v225.y, v192, v173);
        }
      }
    }

    if (*(DerivedStorage + 88))
    {
      v229 = aStrb;
      if (aStrb)
      {
        v229 = CFRetain(aStrb);
      }

      *(DerivedStorage + 80) = v229;
    }

    if (aStrb && *(a2 + 756))
    {
      if (CFAttributedStringGetLength(aStrb))
      {
        *(a2 + 756) = 0;
        if (dword_1EAF17A78)
        {
          LODWORD(values[0]) = 0;
          LOBYTE(valuePtr) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v231 = values[0];
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, LOBYTE(valuePtr)))
          {
            v232 = v231;
          }

          else
          {
            v232 = v231 & 0xFFFFFFFE;
          }

          if (v232)
          {
            LODWORD(v432.origin.x) = 136315394;
            *(&v432.origin.x + 4) = "FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw";
            WORD2(v432.origin.y) = 2112;
            *(&v432.origin.y + 6) = aStrb;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v4 = MEMORY[0x1E695F050];
          if (dword_1EAF17A78)
          {
            LODWORD(values[0]) = 0;
            LOBYTE(valuePtr) = 0;
            v247 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v248 = values[0];
            if (os_log_type_enabled(v247, LOBYTE(valuePtr)))
            {
              v249 = v248;
            }

            else
            {
              v249 = v248 & 0xFFFFFFFE;
            }

            if (v249)
            {
              LODWORD(v432.origin.x) = 136316162;
              *(&v432.origin.x + 4) = "FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw";
              WORD2(v432.origin.y) = 2048;
              *(&v432.origin.y + 6) = v424.origin.x;
              HIWORD(v432.size.width) = 2048;
              v432.size.height = v424.origin.y;
              v433 = 2048;
              v434 = v424.size.width;
              v435 = 2048;
              v436 = v424.size.height;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v4 = MEMORY[0x1E695F050];
          }
        }
      }

      CGContextRelease(v205);
      v6 = v403;
      v233 = aStrb;
    }

    else
    {
      CGContextRelease(v205);
      v6 = v403;
      v233 = aStrb;
      if (!aStrb)
      {
LABEL_353:
        *(a2 + 320) = v6;
        if (v404)
        {
          *(a2 + 328) = v404;
        }

LABEL_355:
        v252 = *DerivedStorage;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v253 = CMBaseObjectGetProtocolVTable();
        if (v253)
        {
          v254 = *(v253 + 16);
          if (v254)
          {
            v255 = *(v254 + 280);
            if (v255)
            {
              v255(v252, a2);
            }
          }
        }

        if (!v6 && !*(a2 + 296))
        {
          return 0;
        }

        a_low = 0;
        if (CGRectEqualToRect(v424, *v4))
        {
          return a_low;
        }

        v256 = v424.size.width;
        if (v424.size.width <= 0.0 || v424.size.height <= 0.0 || !data)
        {
          return a_low;
        }

        if (*(a2 + 296))
        {
          *&__s1[0].a = origin;
          *&__s1[0].c = v415;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v257 = CMBaseObjectGetProtocolVTable();
          if (v257)
          {
            v258 = *(v257 + 16);
            if (v258)
            {
              v259 = *(v258 + 104);
              if (v259)
              {
                v259(a1, __s1);
              }
            }
          }

          v260 = CFDictionaryGetValue(*(a2 + 296), a1);
          if (!*(a2 + 336))
          {
            v261 = *(MEMORY[0x1E695F058] + 16);
            v432.origin = *MEMORY[0x1E695F058];
            v432.size = v261;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v262 = CMBaseObjectGetProtocolVTable();
            if (v262)
            {
              v263 = *(v262 + 16);
              if (v263)
              {
                v264 = *(v263 + 72);
                if (v264)
                {
                  v264(a1, &v432);
                }
              }
            }

            b = __s1[0].b;
            if (v420 == 7)
            {
              v266 = v432.size.height - __s1[0].b - __s1[0].d;
            }

            else
            {
              v271 = __s1[0].a;
              v272 = *&__s1[0].c;
              MidY = CGRectGetMidY(*(&b - 1));
              v274 = CGRectGetMidY(v432);
              v266 = v274 + v274 - MidY + __s1[0].d * -0.5;
            }

            __s1[0].b = v266;
          }

          v275 = *(DerivedStorage + 136);
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v276 = CMBaseObjectGetProtocolVTable();
          if (v276)
          {
            v277 = *(v276 + 16);
            if (v277)
            {
              v278 = *(v277 + 152);
              if (v278)
              {
                v278(v260, v275);
              }
            }
          }

          Alpha = *(a2 + 184);
          v280 = *(DerivedStorage + 32);
          if (v280 && CFAttributedStringGetLength(v280) >= 1)
          {
            v432.origin.y = 0.0;
            v432.origin.x = 0.0;
            v281 = CFAttributedStringGetAttributes(*(DerivedStorage + 32), 0, &v432);
            v282 = copyContentColor_0(*(a2 + 16), *(a2 + 160), *(a2 + 40), v281, *MEMORY[0x1E69607C0], *(a2 + 184));
            v283 = v282;
            if (v282)
            {
              Alpha = CGColorGetAlpha(v282);
            }
          }

          else
          {
            v283 = 0;
          }

          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v284 = CMBaseObjectGetProtocolVTable();
          if (v284)
          {
            v285 = *(v284 + 16);
            if (v285)
            {
              v286 = *(v285 + 168);
              if (v286)
              {
                v286(v260, Alpha);
              }
            }
          }

          v287 = *&__s1[0].c;
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v288 = CMBaseObjectGetProtocolVTable();
          if (v288)
          {
            v289 = *(v288 + 16);
            if (v289)
            {
              v290 = *(v289 + 88);
              if (v290)
              {
                v290(v260, *&v287, *(&v287 + 1));
              }
            }
          }

          v450.origin.x = __s1[0].a;
          v450.origin.y = __s1[0].b;
          v450.size = *&__s1[0].c;
          MidX = CGRectGetMidX(v450);
          v451.origin.x = __s1[0].a;
          v451.origin.y = __s1[0].b;
          v451.size = *&__s1[0].c;
          v292 = CGRectGetMidY(v451);
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v293 = CMBaseObjectGetProtocolVTable();
          if (v293)
          {
            v294 = *(v293 + 16);
            if (v294)
            {
              v295 = *(v294 + 72);
              if (v295)
              {
                v295(v260, MidX, v292);
              }
            }
          }

          v432.origin.x = 0.0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v296 = CMBaseObjectGetProtocolVTable();
          if (v296 && (v297 = *(v296 + 16)) != 0 && (v298 = *(v297 + 176)) != 0)
          {
            v298(a1, &v432);
            v299 = v432.origin.x;
          }

          else
          {
            v299 = 0.0;
          }

          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v300 = CMBaseObjectGetProtocolVTable();
          if (v300)
          {
            v301 = *(v300 + 16);
            if (v301)
            {
              v302 = *(v301 + 120);
              if (v302)
              {
                v302(v260, *&v299);
              }
            }
          }

          effectiveRange.location = 0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v303 = CMBaseObjectGetProtocolVTable();
          if (v303)
          {
            v304 = *(v303 + 16);
            if (v304)
            {
              v305 = *(v304 + 400);
              if (v305)
              {
                v305(a1, &effectiveRange);
                location = effectiveRange.location;
                if (effectiveRange.location)
                {
                  FigCaptionRendererOutputNodeProtocolGetProtocolID();
                  v307 = CMBaseObjectGetProtocolVTable();
                  if (v307)
                  {
                    v308 = *(v307 + 16);
                    if (v308)
                    {
                      v309 = *(v308 + 200);
                      if (v309)
                      {
                        v309(v260, location);
                      }
                    }
                  }
                }
              }
            }
          }

          if (v283)
          {
            CFRelease(v283);
          }

          return 0;
        }

        v267 = (v424.size.height + v424.origin.y);
        v268 = v425.origin.y;
        if (v424.origin.y <= v425.origin.y)
        {
          v270 = 0;
        }

        else
        {
          v269 = v425.origin.y + v425.size.height;
          if (v424.origin.y > v425.origin.y + v425.size.height)
          {
            return 0;
          }

          if (v424.size.height + v424.origin.y <= v269)
          {
            v270 = 0;
          }

          else
          {
            v267 = v269;
            v270 = (v424.size.height - (v269 - v424.origin.y));
          }

          v268 = v424.origin.y;
        }

        v310 = v424.origin.x;
        v311 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        if (!v311)
        {
          FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_11(__s1);
          return LODWORD(__s1[0].a);
        }

        v203 = v311;
        v312 = v267 - v268;
        if (v312 >= v422)
        {
          v313 = v422;
        }

        else
        {
          v313 = v267 - v268;
        }

        if (v313 + v270 <= v422 || v270 <= 0)
        {
          v315 = v270;
        }

        else
        {
          v315 = v422 - v313;
        }

        v316 = CGBitmapContextCreate(data + v315 * *(a2 + 340) * 4 * HIDWORD(v422) * *(a2 + 340), HIDWORD(v422) * *(a2 + 340), *(a2 + 340) * v313, 8uLL, 4 * HIDWORD(v422) * *(a2 + 340), v311, 0x4001u);
        if (v316)
        {
          v205 = v316;
          CGContextScaleCTM(v316, *(a2 + 340), *(a2 + 340));
          v317 = *(MEMORY[0x1E695EFD0] + 16);
          *&__s1[0].a = *MEMORY[0x1E695EFD0];
          *&__s1[0].c = v317;
          *&__s1[0].tx = *(MEMORY[0x1E695EFD0] + 32);
          CGContextSetTextMatrix(v205, __s1);
          CGColorSpaceRelease(v203);
          v318 = CGBitmapContextCreateImage(v205);
          if (!v318)
          {
            FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_9(__s1);
            aStrb = 0;
            goto LABEL_538;
          }

          v319 = v318;
          v452.origin.y = v268;
          v452.size.height = v312;
          v452.origin.x = v310;
          v452.size.width = v256;
          v453 = CGRectIntegral(v452);
          CGContextDrawImage(v6, v453, v319);
          CGImageRelease(v319);
          CGContextRelease(v205);
          return 0;
        }

        FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_10(__s1);
        aStrb = 0;
        a_low = LODWORD(__s1[0].a);
LABEL_535:
        CGColorSpaceRelease(v203);
        goto LABEL_539;
      }
    }

    CFRelease(v233);
    goto LABEL_353;
  }

  v214 = FigRECGCommandsContextCreate();
  if (v214)
  {
    v215 = v214;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v216 = CMBaseObjectGetProtocolVTable();
    if (v216)
    {
      v217 = *(v216 + 16);
      if (v217)
      {
        v218 = *(v217 + 392);
        if (v218)
        {
          v218(a1, v215);
        }
      }
    }

    CFRelease(v215);
    goto LABEL_302;
  }

  FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_5(__s1);
LABEL_538:
  a_low = LODWORD(__s1[0].a);
  CGContextRelease(v205);
LABEL_539:
  MutableCopy = aStrb;
LABEL_282:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return a_low;
}