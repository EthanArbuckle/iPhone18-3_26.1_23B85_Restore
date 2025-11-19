uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetCornerRadius(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 144);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetCornerRadius(const void *a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetCornerRadius_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  *&v10[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 152);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetWindowOpacity(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 160);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetWindowOpacity(const void *a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetWindowOpacity_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  *&v10[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 168);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_AddAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) addAnimation:a2 forKey:a3];
  [MEMORY[0x1E6979518] commit];
  v6 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v9 = *(v8 + 176);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v6, a2, a3);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetOptions(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetOptions_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  block[5] = a3;
  block[6] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v7 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v10 = *(v9 + 184);
  if (v10)
  {
    return v10(v7, a2, a3);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetSeparated(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetSeparated_block_invoke;
  v10[3] = &__block_descriptor_41_e5_v8__0l;
  v10[4] = a1;
  v11 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 192);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetPCTContextData(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetPCTContextData_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  v10[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 200);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetPCTContextData(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_DumpInfo()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v3 = *(v2 + 216);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t RegisterFigCaptionRendererCALayerOutputNodeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t sbcdq_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 40))
  {
    v2 = *DerivedStorage;
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v3)
    {
      v3(v2);
    }
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    dispatch_release(v5);
    *(v1 + 48) = 0;
  }

  if (*v1)
  {
    CFRelease(*v1);
    *v1 = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *sbcdq_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigSampleBufferConsumerForDataQueue (%p) dataQueue(%p) LWM:<Callback:(%p), RefCon:(%p)>", a1, *DerivedStorage, DerivedStorage[2], DerivedStorage[3]);
  return Mutable;
}

uint64_t sbcdq_SendSampleBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

BOOL sbcdq_IsQueueAtOrAboveHighWater()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  return v1 && v1(v0) == 3;
}

BOOL sbcdq_IsQueueBelowLowWater()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  return v1 && v1(v0) == 2;
}

uint64_t sbcdq_Flush()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v1)
  {
    return 4294954514;
  }

  return v1(v0);
}

void sbcdq_LowWaterTriggerCallbackAsync()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v3 = *(DerivedStorage + 16);
    if (v3)
    {
      v3(*(DerivedStorage + 24));
    }

    FigSimpleMutexUnlock();

    CFRelease(v1);
  }
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared()
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_block_invoke;
  block[3] = &unk_1E7495458;
  block[4] = v3;
  if (FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_onceToken != -1)
  {
    dispatch_once(&FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_onceToken, block);
  }

  v0 = FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_sGlobalRoutingRegistry;
  _Block_object_dispose(v3, 8);
  return v0;
}

void __FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  FigBufferedAirPlayGlobalRoutingRegistryGetClassID();
  *(*(*(a1 + 32) + 8) + 24) = CMDerivedObjectCreate();
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FigBufferedAirPlayGlobalRoutingRegistryServerDied");
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
    FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_sGlobalRoutingRegistry = 0;
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_xpcClient;
  DerivedStorage[1] = FigBufferedAirPlayClientRoutingRegistryGetSharedInstance();
  v8 = dispatch_queue_create("com.apple.coremedia.globalroutingregistryremote.notification", 0);
  DerivedStorage[2] = v8;
  if (v8)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    goto LABEL_9;
  }

  *(*(*(a1 + 32) + 8) + 24) = -17721;
}

uint64_t remoteGlobalRoutingRegistry_bufferedClientUpdateNotificationCallback()
{
  CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CMNotificationCenterGetDefaultLocalCenter();
  return FigDispatchAsyncPostNotification();
}

void remoteGlobalRoutingRegistry_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 16) = 0;
  }

  FigBytePumpRelease(*(DerivedStorage + 8));
  __break(1u);
}

CFStringRef remoteGlobalRoutingRegistry_CopyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<remoteGlobalRoutingRegistry: %p retainCount: %ld>", a1, v3);
}

uint64_t remoteGlobalRoutingRegistry_registerClient(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 4294949576;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_7;
  }

  if (!*DerivedStorage)
  {
    v7 = 4294951137;
    goto LABEL_7;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8)
  {
    v7 = v8;
    goto LABEL_7;
  }

  CFStringGetCString(a3, buffer, 64, 0x600u);
  xpc_dictionary_set_string(0, "RoutingContextUUID", buffer);
  xpc_dictionary_set_uint64(0, "ClientID", a2);
  xpc_dictionary_set_uint64(0, "RemoteClientID", a1);
  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t remoteGlobalRoutingRegistry_getCountOfRunningClientsForRoutingContext(uint64_t a1, const __CFString *a2, uint64_t *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 4294949576;
  if (!a1 || !a2)
  {
    goto LABEL_11;
  }

  if (!*DerivedStorage)
  {
    v7 = 4294951137;
    goto LABEL_11;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8 || (CFStringGetCString(a2, buffer, 64, 0x600u), xpc_dictionary_set_string(0, "RoutingContextUUID", buffer), xpc_dictionary_set_uint64(0, "RemoteClientID", a1), v8 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v8))
  {
    v7 = v8;
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  uint64 = xpc_dictionary_get_uint64(0, "ClientCount");
  v7 = 0;
  if (a3)
  {
    *a3 = uint64;
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t FigCaptionRendererNotificationInputCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a4)
  {
    FigCaptionRendererNotificationInputCreate_cold_2(__str);
    return *__str;
  }

  if (!a6)
  {
    FigCaptionRendererNotificationInputCreate_cold_1(__str);
    return *__str;
  }

  *a6 = 0;
  FigCaptionRendererInputGetClassID();
  v11 = CMDerivedObjectCreate();
  if (!v11)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[2] = a1;
    DerivedStorage[3] = a2;
    DerivedStorage[4] = a3;
    DerivedStorage[5] = a4;
    DerivedStorage[6] = 0;
    v11 = FigCaptionSerializerCreate();
    if (!v11)
    {
      snprintf(__str, 0x100uLL, "com.apple.coremedia.ckmediainput.messagequeue<%p>", 0);
      v13 = dispatch_queue_create(__str, 0);
      *DerivedStorage = v13;
      v11 = 0;
      if (v13)
      {
        *a6 = 0;
      }
    }
  }

  return v11;
}

uint64_t FigCaptionRendererNotificationInputSetPlayer(uint64_t a1, uint64_t a2)
{
  v4[0] = CMBaseObjectGetDerivedStorage();
  v4[1] = a2;
  if (*v4[0])
  {
    dispatch_sync_f(*v4[0], v4, setPlayerDo);
  }

  return 0;
}

void setPlayerDo(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  theDict = 0;
  cf = 0;
  v7 = 0;
  if (*(v1 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = *(v1 + 8);
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 8) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*(v1 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    FigBaseObject = FigPlayerGetFigBaseObject(*(v1 + 8));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(FigBaseObject, @"LastSentSubtitleSample", *MEMORY[0x1E695E480], &cf);
      if (!cf)
      {
        goto LABEL_18;
      }

      if (!FigSubtitleSampleCreateFromPropertyListAndInsertInfoForRenderer(cf, &theDict, &v7, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)))
      {
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, @"SubtitleContent");
          if (Value)
          {
            if (CFArrayGetCount(Value) >= 1)
            {
              digestSubtitleSample_0(1, v1, cf);
            }
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_18:
  if (theDict)
  {
    CFRelease(theDict);
  }
}

uint64_t FigCaptionRendererNotificationInputAddSample(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  digestSubtitleSample_0(0, DerivedStorage, a2);
  return 0;
}

void digestSubtitleSample_0(int a1, dispatch_queue_t *a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6[0] = a2;
  v6[1] = cf;
  if (a1)
  {
    digestSubtitleSampleDo_1(v6);
  }

  else if (*a2)
  {
    dispatch_sync_f(*a2, v6, digestSubtitleSampleDo_1);
  }
}

void figFCRNotificationInput_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v1 = *(DerivedStorage + 8);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 8) = 0;
    }
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 48) = 0;
  }

  *(DerivedStorage + 40) = 0;
}

__CFString *figFCRNotificationInput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererNotificationInput %p>", a1);
  return Mutable;
}

void subtitleChangedCallback_0(int a1, dispatch_queue_t *a2, int a3, int a4, CFTypeRef cf)
{
  if (cf)
  {
    digestSubtitleSample_0(0, a2, cf);
  }
}

uint64_t OUTLINED_FUNCTION_7_93()
{

  return FigGeometryDimensionMake();
}

uint64_t FigSpeedRampTimer_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigSpeedRampTimerID = result;
  return result;
}

uint64_t FigSpeedRampTimerScheduleForL2Time(uint64_t a1, __n128 *a2, uint32_t a3)
{
  FigSimpleMutexLock();
  v13 = *a2;
  v14 = a2[1].n128_u64[0];
  FPSTimelineConverterL2TimeToL3(&v13, &fireTime);
  *(a1 + 112) = fireTime;
  *(a1 + 160) = a3;
  if (*(a1 + 64))
  {
    fig_log_get_emitter();
    v12 = FigSignalErrorAtGM();
    if (!v12)
    {
      goto LABEL_3;
    }

    v9 = v12;
LABEL_8:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    goto LABEL_4;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  fireTime = *(a1 + 112);
  v8 = CMTimebaseSetTimerDispatchSourceNextFireTime(v6, v7, &fireTime, a3);
  if (v8)
  {
    v9 = v8;
    FigSpeedRampTimerScheduleForL2Time_cold_1(v8, &fireTime);
    goto LABEL_8;
  }

LABEL_3:
  v9 = 0;
  v10 = *a2;
  *(a1 + 104) = a2[1].n128_u64[0];
  *(a1 + 88) = v10;
  *(a1 + 160) = a3;
LABEL_4:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigSpeedRampTimerScheduleToFireImmediately(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 64))
  {
    FigSpeedRampTimerScheduleToFireImmediately_cold_1(&v7);
    value_low = LODWORD(v7.value);
  }

  else
  {
    CMTimebaseGetTime(&v7, *(a1 + 32));
    *(a1 + 112) = *&v7.value;
    epoch = v7.epoch;
    *(a1 + 128) = v7.epoch;
    v5 = *(a1 + 112);
    v6 = epoch;
    FPSTimelineConverterL3TimeToL2(&v5, &v7);
    *(a1 + 88) = v7;
    value_low = CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 32), *(a1 + 40));
    if (value_low)
    {
      FigSpeedRampTimerScheduleToFireImmediately_cold_2();
    }
  }

  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigSpeedRampTimerCancel(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 64))
  {
    fig_log_get_emitter();
    v2 = FigSignalErrorAtGM();
  }

  else
  {
    *(a1 + 64) = 1;
    dispatch_source_cancel(*(a1 + 40));
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigSpeedRampTimerCreate(uint64_t a1, const void *a2, void *a3, uintptr_t a4, NSObject *a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (!a2)
  {
    FigSpeedRampTimerCreate_cold_8(&v28);
    return v28;
  }

  if (!a3)
  {
    FigSpeedRampTimerCreate_cold_7(&v28);
    return v28;
  }

  if (!a5)
  {
    FigSpeedRampTimerCreate_cold_6(&v28);
    return v28;
  }

  if (!a7)
  {
    FigSpeedRampTimerCreate_cold_5(&v28);
    return v28;
  }

  if (!a9)
  {
    FigSpeedRampTimerCreate_cold_4(&v28);
    return v28;
  }

  MEMORY[0x19A8D3660](&FigSpeedRampTimerGetTypeID_sFigSpeedRampTimerRegisterOnce, FigSpeedRampTimer_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigSpeedRampTimerCreate_cold_3(&v28);
    return v28;
  }

  v17 = Instance;
  *(Instance + 56) = FigSimpleMutexCreate();
  v18 = MEMORY[0x1E6960C70];
  v19 = *MEMORY[0x1E6960C70];
  *(v17 + 88) = *MEMORY[0x1E6960C70];
  v20 = *(v18 + 16);
  *(v17 + 104) = v20;
  *(v17 + 112) = v19;
  *(v17 + 128) = v20;
  *(v17 + 136) = v19;
  *(v17 + 152) = v20;
  *(v17 + 64) = 0;
  *(v17 + 16) = CFRetain(a2);
  *(v17 + 32) = CFRetain(a3);
  CMNotificationCenterGetDefaultLocalCenter();
  v21 = FigNotificationCenterAddWeakListener();
  if (v21)
  {
    v26 = v21;
LABEL_27:
    CFRelease(v17);
    return v26;
  }

  v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, a4, a5);
  *(v17 + 40) = v22;
  if (!v22)
  {
    FigSpeedRampTimerCreate_cold_2(&v28);
    v26 = v28;
    goto LABEL_27;
  }

  dispatch_retain(a5);
  *(v17 + 48) = a5;
  if (a6)
  {
    v23 = CFRetain(a6);
  }

  else
  {
    v23 = 0;
  }

  *(v17 + 24) = v23;
  v24 = *(v17 + 40);
  v25 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  dispatch_set_context(v24, v25);
  dispatch_set_finalizer_f(*(v17 + 40), speedramptimer_finalizerHandler);
  *(v17 + 72) = a7;
  dispatch_source_set_event_handler_f(*(v17 + 40), speedramptimer_eventHandler);
  if (a8)
  {
    *(v17 + 80) = a8;
    dispatch_source_set_cancel_handler_f(*(v17 + 40), speedramptimer_cancelHandler);
  }

  v26 = CMTimebaseAddTimerDispatchSource(a3, *(v17 + 40));
  if (v26)
  {
    FigSpeedRampTimerCreate_cold_1();
    goto LABEL_27;
  }

  dispatch_resume(*(v17 + 40));
  *a9 = v17;
  return v26;
}

uint64_t speedramptimer_handleL2L3TimelineMappingChangedNotification(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v11 = 0uLL;
  v12 = 0;
  time1 = *(a2 + 88);
  FPSTimelineConverterL2TimeToL3(&time1, &v11);
  *v10 = v11;
  *&v10[16] = v12;
  v3 = *(a2 + 124);
  if ((v3 & 0x1D) != 1)
  {
    return FigSimpleMutexUnlock();
  }

  if (*(a2 + 148))
  {
    v13 = *(a2 + 136);
    v16 = *(a2 + 112);
    v17 = *(a2 + 120);
    v4 = *(a2 + 128);
    Rate = CMTimebaseGetRate(*(a2 + 32));
    if (Rate >= 0.0)
    {
      time1.value = v16;
      time1.timescale = v17;
      time1.flags = v3;
      time1.epoch = v4;
      time2 = v13;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        return FigSimpleMutexUnlock();
      }
    }

    if (Rate < 0.0)
    {
      time1 = v13;
      time2.value = v16;
      time2.timescale = v17;
      time2.flags = v3;
      time2.epoch = v4;
      if (CMTimeCompare(&time1, &time2) < 1)
      {
        return FigSimpleMutexUnlock();
      }
    }
  }

  *(a2 + 112) = *v10;
  *(a2 + 128) = *&v10[16];
  if (*(a2 + 64))
  {
    fig_log_get_emitter();
    if (!FigSignalErrorAtGM())
    {
      return FigSimpleMutexUnlock();
    }
  }

  else
  {
    v6 = *(a2 + 32);
    v7 = *(a2 + 40);
    time1 = *v10;
    v8 = CMTimebaseSetTimerDispatchSourceNextFireTime(v6, v7, &time1, *(a2 + 160));
    if (!v8)
    {
      return FigSimpleMutexUnlock();
    }

    FigSpeedRampTimerScheduleForL2Time_cold_1(v8, &time1);
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM();
  FigSimpleMutexUnlock();
  fig_log_get_emitter();
  return FigSignalErrorAtGM();
}

double speedramptimer_init(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t speedramptimer_finalize(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 72) = 0;
    if (!*(a1 + 65))
    {
      *(a1 + 64) = 257;
      v3 = *(a1 + 80);
      if (v3)
      {
        *(a1 + 80) = 0;
        v4 = *(a1 + 24);
        *(a1 + 24) = 0;
        v5 = malloc_type_malloc(0x10uLL, 0xC00406BCC2924uLL);
        if (v5)
        {
          *v5 = v3;
          v5[1] = v4;
          dispatch_async_f(*(a1 + 48), v5, speedramptimer_finalize_func);
        }
      }

      dispatch_source_cancel(*(a1 + 40));
      v2 = *(a1 + 40);
    }

    CMTimebaseRemoveTimerDispatchSource(*(a1 + 32), v2);
    dispatch_release(*(a1 + 40));
    *(a1 + 40) = 0;
  }

  dispatch_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 32) = 0;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 24) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }

  result = FigSimpleMutexDestroy();
  *(a1 + 56) = 0;
  return result;
}

__CFString *speedramptimer_copyFormattingDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  FigSimpleMutexLock();
  v4 = CFCopyDescription(*(a1 + 32));
  CFStringAppendFormat(Mutable, 0, @"<FigSpeedRampTimer %p timebase: %@, dispatch_source: %p, context: %p", a1, v4, *(a1 + 40), *(a1 + 24));
  if (v4)
  {
    CFRelease(v4);
  }

  time = *(a1 + 88);
  v5 = CMTimeCopyDescription(v2, &time);
  CFStringAppendFormat(Mutable, 0, @", scheduledL2Time: %@", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  time = *(a1 + 112);
  v6 = CMTimeCopyDescription(v2, &time);
  CFStringAppendFormat(Mutable, 0, @", scheduledL3Time: %@", v6);
  if (v6)
  {
    CFRelease(v6);
  }

  time = *(a1 + 136);
  v7 = CMTimeCopyDescription(v2, &time);
  v8 = v7;
  v9 = "true";
  if (!*(a1 + 64) && !*(a1 + 65))
  {
    v9 = "false";
  }

  CFStringAppendFormat(Mutable, 0, @", lastFiredTimeL3: %@, cancelled: %s>", v7, v9);
  if (v8)
  {
    CFRelease(v8);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

void speedramptimer_finalize_func(void *a1)
{
  (*a1)(a1[1]);
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t ccu_getUnitTypesForCodecType(int a1)
{
  result = 807937827;
  v3 = 403047945;
  if (a1 > 1751479856)
  {
    if (a1 <= 1902405680)
    {
      if (a1 <= 1869117026)
      {
        if (a1 == 1751479857 || a1 == 1752589105)
        {
          return result;
        }

        v5 = 1836415073;
        goto LABEL_34;
      }

      if (a1 == 1869117027)
      {
        return result;
      }

      if (a1 == 1902212707)
      {
        return v3;
      }

      v4 = 1902212709;
    }

    else
    {
      if (a1 <= 1902667125)
      {
        if (a1 == 1902405681 || a1 == 1902405733)
        {
          return result;
        }

        v5 = 1902407032;
        goto LABEL_34;
      }

      if (a1 <= 1902998903)
      {
        if (a1 == 1902667126)
        {
          return result;
        }

        v5 = 1902671459;
        goto LABEL_34;
      }

      if (a1 == 1902998904)
      {
        return result;
      }

      v4 = 2053207651;
    }

LABEL_38:
    if (a1 == v4)
    {
      return v3;
    }

    return 0;
  }

  if (a1 <= 1685220712)
  {
    if (a1 > 1667524656)
    {
      if (a1 == 1667524657 || a1 == 1667790435)
      {
        return result;
      }

      v5 = 1684895096;
      goto LABEL_34;
    }

    if (a1 == 1635148593 || a1 == 1635148595)
    {
      return v3;
    }

    v4 = 1667331683;
    goto LABEL_38;
  }

  if (a1 <= 1700886114)
  {
    if (a1 == 1685220713)
    {
      return v3;
    }

    if (a1 != 1685481521)
    {
      v5 = 1685481573;
      goto LABEL_34;
    }
  }

  else
  {
    if (a1 <= 1718908519)
    {
      if (a1 != 1700886115)
      {
        v4 = 1718908515;
        goto LABEL_38;
      }

      return v3;
    }

    if (a1 != 1718908520)
    {
      v5 = 1718908528;
LABEL_34:
      if (a1 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ccu_appendCaptionBuffer(int a1, void *a2, CMBlockBufferRef theBuffer, __int16 a4)
{
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (DataLength >= 9)
  {
    v9 = DataLength;
    v10 = 0;
    if (a2)
    {
      v11 = theBuffer == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    v24 = v12;
    v23 = HIBYTE(a4);
    v22 = a4 & 1 | 0x4E;
    v13 = *MEMORY[0x1E695E498];
    while (1)
    {
      memset(destination, 0, 7);
      result = CMBlockBufferCopyDataBytes(theBuffer, v10, 7uLL, destination);
      if (result)
      {
        return result;
      }

      if (destination[0] == 876167495 && LOBYTE(destination[1]) == 3)
      {
        break;
      }

      v16 = 1;
LABEL_67:
      v10 += v16;
      if (v10 + 8 >= v9)
      {
        return 0;
      }
    }

    v17 = 3 * (BYTE1(destination[1]) & 0x1F);
    v16 = v17 + 8;
    if (v9 - v10 < v17 + 8)
    {
      return result;
    }

    destinationBuffer = 0;
    sourceBytes = 0;
    v26 = 0;
    if (v24)
    {
      goto LABEL_65;
    }

    if (a1 > 1751479856)
    {
      if (a1 > 1902405680)
      {
        if (a1 <= 1902667125)
        {
          if (a1 != 1902405681 && a1 != 1902405733)
          {
            v19 = 1902407032;
            goto LABEL_54;
          }
        }

        else
        {
          if (a1 > 1902998903)
          {
            if (a1 == 2053207651)
            {
              goto LABEL_56;
            }

            v19 = 1902998904;
            goto LABEL_54;
          }

          if (a1 != 1902667126)
          {
            v19 = 1902671459;
            goto LABEL_54;
          }
        }

        goto LABEL_55;
      }

      if (a1 <= 1869117026)
      {
        if (a1 != 1751479857 && a1 != 1752589105)
        {
          v19 = 1836415073;
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      if (a1 == 1869117027)
      {
        goto LABEL_55;
      }

      if (a1 == 1902212707)
      {
        goto LABEL_56;
      }

      v18 = 1902212709;
    }

    else
    {
      if (a1 > 1685220712)
      {
        if (a1 <= 1700886114)
        {
          if (a1 == 1685220713)
          {
            goto LABEL_56;
          }

          if (a1 != 1685481521)
          {
            v19 = 1685481573;
            goto LABEL_54;
          }
        }

        else
        {
          if (a1 <= 1718908519)
          {
            if (a1 != 1700886115)
            {
              v18 = 1718908515;
              goto LABEL_48;
            }

LABEL_56:
            v27[0] = 6;
            v20 = 1;
            goto LABEL_57;
          }

          if (a1 != 1718908520)
          {
            v19 = 1718908528;
LABEL_54:
            if (a1 != v19)
            {
              goto LABEL_69;
            }

            goto LABEL_55;
          }
        }

        goto LABEL_55;
      }

      if (a1 > 1667524656)
      {
        if (a1 != 1667524657 && a1 != 1667790435)
        {
          v19 = 1684895096;
          goto LABEL_54;
        }

LABEL_55:
        v27[0] = v22;
        v27[1] = v23;
        v20 = 2;
LABEL_57:
        v21 = CFGetAllocator(a2);
        if (!CMBlockBufferCreateWithMemoryBlock(v21, 0, v20 + 9, 0, 0, 0, v20 + 9, 1u, &destinationBuffer))
        {
          sourceBytes = bswap32(v20 + 5 + v16 + 1);
          if (!CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL) && !CMBlockBufferReplaceDataBytes(v27, destinationBuffer, 4uLL, v20) && !CMBlockBufferReplaceDataBytes(&ccu_appendSEIUnitWithCCData_kSEI_ITUt35_ATSC_Header, destinationBuffer, v20 | 4, 5uLL))
          {
            v26 = v17 + 11;
            if (!CMBlockBufferReplaceDataBytes(&v26, destinationBuffer, v20 + 5, 1uLL) && !CMBlockBufferAppendBufferReference(a2, destinationBuffer, 0, 0, 0) && !CMBlockBufferAppendBufferReference(a2, theBuffer, v10, v17 + 8, 0))
            {
              CMBlockBufferAppendMemoryBlock(a2, &ccu_appendSEIUnitWithCCData_kRBSPTrailingBits, 1uLL, v13, 0, 0, 1uLL, 0);
            }
          }
        }

        goto LABEL_65;
      }

      if (a1 == 1635148593 || a1 == 1635148595)
      {
        goto LABEL_56;
      }

      v18 = 1667331683;
    }

LABEL_48:
    if (a1 != v18)
    {
LABEL_69:
      fig_log_get_emitter();
      if (!FigSignalErrorAtGM())
      {
        v20 = 0;
        goto LABEL_57;
      }

LABEL_65:
      if (destinationBuffer)
      {
        CFRelease(destinationBuffer);
      }

      goto LABEL_67;
    }

    goto LABEL_56;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_3_139(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CMBlockBufferRef a17)
{

  return ccu_createOrAppendFromBuffer(&a17, v17, v18, a4);
}

uint64_t OUTLINED_FUNCTION_4_136(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char destination)
{
  v12 = *(a1 + 48);

  return CMBlockBufferCopyDataBytes(v12, v10, 4uLL, &destination);
}

uint64_t OUTLINED_FUNCTION_6_109(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char destination)
{
  v17 = *(v14 + 32);

  return CMBlockBufferCopyDataBytes(v17, v15, 1uLL, &destination);
}

double figVideoReceiverConnectionHelperInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figVideoReceiverConnectionHelperFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    a1[3] = 0;
    xpc_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[4] = 0;
    xpc_release(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[5] = 0;

    xpc_release(v5);
  }
}

CFMutableStringRef figVideoReceiverConnectionHelperCopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateMutable(v1, 0);
}

uint64_t __FigVideoReceiverConnectionHelperGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  sFigVideoReceiverConnectionHelperID = result;
  return result;
}

uint64_t FigVideoReceiverConnectionHelperCopyBootstrapEndpoint(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      if (*(a1 + 40))
      {
        FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_1(&v8);
        return v8;
      }

      else
      {
        v5 = xpc_endpoint_create(v3);
        *(a1 + 40) = v5;
        v6 = xpc_retain(v5);
        result = 0;
        *a2 = v6;
      }
    }

    else
    {
      FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t FigVideoReceiverConnectionHelperCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FigVideoReceiverConnectionHelperCreate_onceToken != -1)
  {
    FigVideoReceiverConnectionHelperCreate_cold_1();
  }

  if (FigVideoReceiverConnectionHelperGetTypeID_onceToken != -1)
  {
    FigVideoReceiverConnectionHelperCreate_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    *(Instance + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v6 = xpc_connection_create(0, FigVideoReceiverConnectionHelperCreate_sharedBootstrapQueue);
    v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    xpc_connection_set_context(v6, v7);
    xpc_connection_set_finalizer_f(v6, sharedConnectionFinalize);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __FigVideoReceiverConnectionHelperCreate_block_invoke_2;
    v10[3] = &__block_descriptor_tmp_31_1;
    v10[4] = v6;
    xpc_connection_set_event_handler(v6, v10);
    xpc_connection_activate(v6);
    v8 = 0;
    *(v5 + 24) = v6;
    *a3 = v5;
  }

  else
  {
    FigVideoReceiverConnectionHelperCreate_cold_3(&v11);
    v8 = v11;
  }

  FigXPCRelease();
  return v8;
}

dispatch_queue_t __FigVideoReceiverConnectionHelperCreate_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.videoreceiver.bootstrap", 0);
  FigVideoReceiverConnectionHelperCreate_sharedBootstrapQueue = result;
  return result;
}

void sharedConnectionFinalize(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void __FigVideoReceiverConnectionHelperCreate_block_invoke_2(uint64_t a1, _xpc_connection_s *a2)
{
  if (MEMORY[0x19A8D7060](a2) == MEMORY[0x1E69E9E68])
  {
    context = xpc_connection_get_context(*(a1 + 32));
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    xpc_connection_set_context(a2, context);
    CFRetain(context);
    xpc_connection_set_finalizer_f(a2, sharedConnectionFinalize);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __connectionHelper_handleNewBootstrapConnection_block_invoke;
    handler[3] = &__block_descriptor_tmp_32_2;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    if (v5)
    {
      v6 = v5[4];
      if (v6)
      {
        v5[4] = 0;
        xpc_release(v6);
      }

      v5[4] = FigXPCRetain();
    }

    if (a2)
    {
      xpc_connection_activate(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t __connectionHelper_handleNewBootstrapConnection_block_invoke(uint64_t a1, void *a2)
{
  result = MEMORY[0x19A8D7060](a2);
  if (result != MEMORY[0x1E69E9E80])
  {
    return result;
  }

  v5 = *(a1 + 32);
  v46 = 0;
  xpc_connection_get_context(v5);
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  reply = xpc_dictionary_create_reply(a2);
  v45 = 0;
  cf = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  if (!v6)
  {
    __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_7(&value);
    v30 = 0;
    v8 = 0;
LABEL_60:
    v31 = value;
    goto LABEL_23;
  }

  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v8)
  {
    __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_6(&value);
LABEL_59:
    v30 = 0;
    goto LABEL_60;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 24) + 136);
  if (v9)
  {
    v10 = v9(v8, &v45);
    if (v10)
    {
      goto LABEL_61;
    }

    v11 = CFGetAllocator(v8);
    CMBaseObject = FigVideoReceiverGetCMBaseObject(v8);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v10 = v13(CMBaseObject, @"LoggingIdentifier", v11, &cf);
      if (v10)
      {
        goto LABEL_61;
      }

      v14 = CFGetAllocator(v8);
      v15 = FigVideoReceiverGetCMBaseObject(v8);
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v16)
      {
        v10 = v16(v15, 0x1F0B32AB8, v14, &v42);
        if (v10)
        {
          goto LABEL_61;
        }

        v17 = CFGetAllocator(v8);
        v18 = FigVideoReceiverGetCMBaseObject(v8);
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v10 = v19(v18, 0x1F0B51EF8, v17, &v41);
          if (v10)
          {
            goto LABEL_61;
          }

          v20 = v41;
          v21 = CFGetAllocator(v8);
          v10 = FigDataChannelGroupsArrayCopyAsDictionary(v20, v21, &v40);
          if (v10)
          {
            goto LABEL_61;
          }

          v22 = CFGetAllocator(v8);
          v23 = FigVideoReceiverGetCMBaseObject(v8);
          v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v24)
          {
            v10 = v24(v23, 0x1F0B51F18, v22, &v39);
            if (!v10)
            {
              v10 = FigVideoReceiverDataChannelSettingsCopySerializable(v39, &v38);
              if (!v10)
              {
                v25 = CFGetAllocator(v8);
                v26 = FigVideoReceiverGetCMBaseObject(v8);
                v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v27)
                {
                  v27(v26, 0x1F0B51E18, v25, &v37);
                }

                pid = xpc_connection_get_pid(v5);
                if (figVideoReceiverGetXPCServerForRemoteClient_onceToken == -1)
                {
                  if (pid)
                  {
LABEL_20:
                    FigSimpleMutexLock();
                    value = CFDictionaryGetValue(figVideoReceiverGetXPCServerForRemoteClient_serverDictionary, pid);
                    if (value)
                    {
                      v29 = 0;
LABEL_48:
                      value = 0;
                      FigSimpleMutexUnlock();
                      if (v29)
                      {
                        v31 = 0;
                        goto LABEL_50;
                      }

LABEL_51:
                      v10 = FigXPCServerCopyXPCEndpoint();
                      if (!v10)
                      {
                        xpc_dictionary_set_value(reply, kFigVideoReceiverEndpoint, v44);
                        v34 = kFigVideoReceiverServerPID;
                        v35 = getpid();
                        xpc_dictionary_set_uint64(reply, v34, v35);
                        v30 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
                        if (v30 || __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_5(&value))
                        {
                          v36 = FigXPCServerAssociateObjectWithNeighborProcess();
                          if (v36)
                          {
                            v31 = v36;
                          }

                          else
                          {
                            *v30 = CFRetain(v8);
                            xpc_dictionary_set_uint64(reply, *MEMORY[0x1E69615A0], v46);
                            FigXPCMessageSetUInt32();
                            FigXPCMessageSetCFString();
                            FigXPCMessageSetCFBoolean();
                            FigXPCMessageSetCFDictionary();
                            FigXPCMessageSetCFArray();
                            if (v37)
                            {
                              FigXPCMessageSetCFDictionary();
                            }

                            v30 = 0;
                            v31 = 0;
                          }

                          goto LABEL_23;
                        }

                        goto LABEL_59;
                      }

                      goto LABEL_61;
                    }

                    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (Mutable)
                    {
                      v29 = Mutable;
                      FigCFDictionarySetInt32();
                      CFDictionarySetValue(v29, *MEMORY[0x1E6963408], *MEMORY[0x1E695E4D0]);
                      v33 = FigXPCServerStartWithNewXPCEndpoint();
                      if (v33)
                      {
                        v31 = v33;
                        __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_2();
LABEL_50:
                        CFRelease(v29);
                        if (v31)
                        {
LABEL_62:
                          v30 = 0;
                          goto LABEL_23;
                        }

                        goto LABEL_51;
                      }

                      CFDictionarySetValue(figVideoReceiverGetXPCServerForRemoteClient_serverDictionary, pid, value);
                      goto LABEL_48;
                    }

                    __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_3(&v48);
LABEL_69:
                    v31 = v48;
                    if (v48)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_51;
                  }
                }

                else
                {
                  __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_1();
                  if (pid)
                  {
                    goto LABEL_20;
                  }
                }

                __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_4(&v48);
                goto LABEL_69;
              }
            }

LABEL_61:
            v31 = v10;
            goto LABEL_62;
          }
        }
      }
    }
  }

  v30 = 0;
  v31 = -12782;
LABEL_23:
  if (reply)
  {
    xpc_dictionary_set_int64(reply, *MEMORY[0x1E6961590], v31);
    xpc_connection_send_message(v5, reply);
  }

  DisposeServedVideoReceiverState(v30);
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  FigXPCRelease();
  return FigXPCRelease();
}

void DisposeServedVideoReceiverState(CFTypeRef *a1)
{
  if (a1)
  {
    if (*a1)
    {
      cf = 0;
      FigDataChannelConfigurationCreate(*MEMORY[0x1E695E480], 0, &cf);
      v2 = cf;
      if (cf)
      {
        v3 = *a1;
        v4 = *(*(CMBaseObjectGetVTable() + 24) + 8);
        if (v4)
        {
          v6 = *MEMORY[0x1E6960C70];
          v7 = *(MEMORY[0x1E6960C70] + 16);
          v4(v3, v2, 1, &v6);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (*a1)
      {
        CFRelease(*a1);
      }
    }

    free(a1);
  }
}

CFMutableDictionaryRef __figVideoReceiverGetXPCServerForRemoteClient_block_invoke()
{
  figVideoReceiverGetXPCServerForRemoteClient_serverMutex = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  figVideoReceiverGetXPCServerForRemoteClient_serverDictionary = result;
  return result;
}

uint64_t videoReceiverServer_releaseImageQueue(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "ImageQueueID");
  if (uint64)
  {
    v4 = uint64;
    v5 = *(*(CMBaseObjectGetVTable() + 24) + 24);
    if (v5)
    {

      return v5(a1, v4);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    videoReceiverServer_releaseImageQueue_cold_1(&v7);
    return v7;
  }
}

uint64_t videoReceiverServer_setImageQueueMessage(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "ImageQueueID");
  if (uint64)
  {
    v5 = uint64;
    value = xpc_dictionary_get_value(xdict, "ImageQueueMessage");
    if (value)
    {
      v7 = value;
      v8 = *(*(CMBaseObjectGetVTable() + 24) + 32);
      if (v8)
      {

        return v8(a1, v5, v7);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      videoReceiverServer_setImageQueueMessage_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    videoReceiverServer_setImageQueueMessage_cold_2(&v11);
    return v11;
  }
}

uint64_t FigVideoReceiverRemoteGetCAImageQueueSlotForImageQueueForTesting(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurations(a1, a2, &v5);
  v2 = v5;
  if (!v5)
  {
    return 0;
  }

  SlotID = FigImageQueueSlotGetSlotID(v5);
  CFRelease(v2);
  return SlotID;
}

BOOL videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurations(uint64_t a1, uint64_t a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurationsWhileHoldingConfigurationLock(a1, a2, a3);
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigVideoReceiverCreateRemote(const __CFAllocator *a1, void *a2, uint64_t a3, void *a4)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    v28 = 2941;
LABEL_35:
    FigVideoReceiverCreateRemote_cold_3(v28, v38);
    v25 = LODWORD(v38[0]);
    goto LABEL_29;
  }

  if (!a2)
  {
    v28 = 2942;
    goto LABEL_35;
  }

  value = xpc_dictionary_get_value(a2, kFigVideoReceiverEndpoint);
  if (!value)
  {
    v28 = 2945;
    goto LABEL_35;
  }

  v9 = value;
  if (MEMORY[0x19A8D7060]() != MEMORY[0x1E69E9E90])
  {
    v28 = 2946;
    goto LABEL_35;
  }

  v10 = xpc_connection_create_from_endpoint(v9);
  xpc_connection_set_event_handler(v10, &__block_literal_global_109);
  xpc_connection_activate(v10);
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = xpc_connection_send_message_with_reply_sync(v10, v11);
  v13 = vr_handleConnectionEstablishedResponseCommon(v12, &v30);
  if (v13)
  {
LABEL_25:
    v25 = v13;
    goto LABEL_26;
  }

  v29 = a4;
  v14 = a1;
  v15 = a3;
  v16 = *(&v31 + 1);
  v17 = *(&v30 + 1);
  v37 = 0;
  if (*(&v30 + 1))
  {
    v18 = remoteVideoReceiver_createXPCRemoteClientOptions(0, &v37);
    v19 = v37;
    if (v18)
    {
      v25 = v18;
      a3 = v15;
      a1 = v14;
      a4 = v29;
    }

    else
    {
      v20 = dispatch_time(0, 10000000000);
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
      if (remoteConnectionEstablisher_establishConnectionSync_timeoutMutexCreateOnceToken != -1)
      {
        FigVideoReceiverCreateRemote_cold_1();
      }

      v21 = dispatch_group_create();
      dispatch_retain(v21);
      dispatch_group_enter(v21);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 0x40000000;
      v38[2] = __remoteConnectionEstablisher_establishConnectionSync_block_invoke_2;
      v38[3] = &unk_1E7495628;
      v38[4] = &v47;
      v38[5] = &v39;
      v38[6] = &v43;
      v38[7] = v21;
      remoteConnectionEstablisher_establishConnectionAsync(v17, v16, v19, v38);
      if (dispatch_group_wait(v21, v20))
      {
        FigSimpleMutexLock();
        *(v40 + 24) = 1;
        FigSimpleMutexUnlock();
        v22 = FigSignalErrorAtGM();
        *(v48 + 6) = v22;
      }

      else
      {
        v22 = *(v48 + 6);
      }

      a3 = v15;
      a1 = v14;
      if (v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = v44[3];
        v44[3] = 0;
      }

      a4 = v29;
      if (v21)
      {
        dispatch_release(v21);
      }

      v24 = v44[3];
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = *(v48 + 6);
      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v47, 8);
      if (v25)
      {
        if (v23)
        {
          CFRelease(v23);
        }
      }

      else
      {
        *&v31 = v23;
      }
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (!v25)
    {
      goto LABEL_24;
    }
  }

  else
  {
    FigVideoReceiverCreateRemote_cold_2(v38);
    v25 = LODWORD(v38[0]);
    a3 = v15;
    a1 = v14;
    a4 = v29;
    if (!LODWORD(v38[0]))
    {
LABEL_24:
      v13 = FigXPCRemoteClientCopyMemoryOrigin();
      goto LABEL_25;
    }
  }

LABEL_26:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  if (v25)
  {
LABEL_29:
    BootstrapConnectionResponseDeinit(&v30);
    return v25;
  }

  v25 = videoReceiverCreateRemoteCommon(a1, a3, &v30, &v36);
  v26 = v36;
  if (!v25)
  {
    *a4 = v36;
    goto LABEL_29;
  }

  BootstrapConnectionResponseDeinit(&v30);
  if (v26)
  {
    CFRelease(v26);
  }

  return v25;
}

uint64_t videoReceiverCreateRemoteCommon(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  if ((v7 & 4) == 0 && (v7 & 2) == 0)
  {
    videoReceiverCreateRemoteCommon_cold_8(v25);
    return v25[0];
  }

  FigVideoReceiverGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigXPCRemoteClientAssociateObject();
  if (v8)
  {
    return v8;
  }

  v10 = *(a3 + 16);
  if (v10)
  {
    v10 = CFRetain(v10);
  }

  *(DerivedStorage + 8) = v10;
  *(DerivedStorage + 16) = *(a3 + 24);
  *DerivedStorage = *(a3 + 32);
  CFStringGetCString(*(a3 + 64), (DerivedStorage + 160), 16, 0x600u);
  v11 = *(a3 + 48);
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  *(DerivedStorage + 96) = v11;
  v12 = *(a3 + 56);
  if (v12)
  {
    v12 = CFRetain(v12);
  }

  *(DerivedStorage + 104) = v12;
  *(DerivedStorage + 26) = *(a3 + 80);
  FigCFDictionaryGetBooleanIfPresent();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(DerivedStorage + 128) = Value;
  v14 = FigSimpleMutexCreate();
  *(DerivedStorage + 136) = v14;
  if (!v14)
  {
    videoReceiverCreateRemoteCommon_cold_7(v25);
    return v25[0];
  }

  v15 = FigSimpleMutexCreate();
  *(DerivedStorage + 112) = v15;
  if (!v15)
  {
    videoReceiverCreateRemoteCommon_cold_6(v25);
    return v25[0];
  }

  v16 = FigSimpleMutexCreate();
  *(DerivedStorage + 32) = v16;
  if (!v16)
  {
    videoReceiverCreateRemoteCommon_cold_5(v25);
    return v25[0];
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 56) = Mutable;
  if (!Mutable)
  {
    videoReceiverCreateRemoteCommon_cold_4(v25);
    return v25[0];
  }

  v18 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 64) = v18;
  if (!v18)
  {
    videoReceiverCreateRemoteCommon_cold_3(v25);
    return v25[0];
  }

  v19 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 72) = v19;
  if (!v19)
  {
    videoReceiverCreateRemoteCommon_cold_2(v25);
    return v25[0];
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (*(DerivedStorage + 25) && dword_1ED4CBE90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v21 = *(a3 + 88);
  if (v21)
  {
    v21 = CFRetain(v21);
  }

  *(DerivedStorage + 144) = v21;
  *(DerivedStorage + 176) = -1;
  v22 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 184) = v22;
  if (!v22)
  {
    videoReceiverCreateRemoteCommon_cold_1(v25);
    return v25[0];
  }

  v23 = 0;
  *a4 = 0;
  return v23;
}

void BootstrapConnectionResponseDeinit(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    xpc_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
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

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[11];
  if (v8)
  {
    CFRelease(v8);
    a1[11] = 0;
  }
}

uint64_t FigVideoReceiverCreateRemoteAsync(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    FigVideoReceiverCreateRemoteAsync_cold_4(handler);
    return LODWORD(handler[0]);
  }

  if (!a2)
  {
    FigVideoReceiverCreateRemoteAsync_cold_3(handler);
    return LODWORD(handler[0]);
  }

  value = xpc_dictionary_get_value(a2, kFigVideoReceiverEndpoint);
  if (!value)
  {
    FigVideoReceiverCreateRemoteAsync_cold_2(handler);
    return LODWORD(handler[0]);
  }

  v9 = value;
  if (MEMORY[0x19A8D7060]() != MEMORY[0x1E69E9E90])
  {
    FigVideoReceiverCreateRemoteAsync_cold_1(handler);
    return LODWORD(handler[0]);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __FigVideoReceiverCreateRemoteAsync_block_invoke;
  v13[3] = &unk_1E74955C0;
  v13[5] = a1;
  v13[6] = a3;
  v13[4] = a4;
  v10 = xpc_connection_create_from_endpoint(v9);
  xpc_connection_set_event_handler(v10, &__block_literal_global_33_1);
  xpc_connection_activate(v10);
  v11 = xpc_dictionary_create(0, 0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __vr_establishFigXPCConnectionForBootstrapEndpointAsync_block_invoke_2;
  handler[3] = &unk_1E7495690;
  handler[4] = v13;
  handler[5] = v10;
  xpc_connection_send_message_with_reply(v10, v11, 0, handler);
  FigXPCRelease();
  FigXPCRelease();
  return 0;
}

BOOL videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurationsWhileHoldingConfigurationLock(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual() || (Value = FigCFDictionaryGetValue()) == 0)
  {
    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 64);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 64), i);
      if (!FigCFEqual())
      {
        Value = FigCFDictionaryGetValue();
        if (Value)
        {
          goto LABEL_11;
        }
      }
    }

    v8 = 0;
  }

  else
  {
LABEL_11:
    v8 = CFRetain(Value);
  }

  *a3 = v8;
  return v8 != 0;
}

uint64_t remoteVideoReceiver_createXPCRemoteClientOptions(int a1, CFMutableDictionaryRef *a2)
{
  keyExistsAndHasValidFormat = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    FigCFDictionarySetInt32();
    CFPreferencesGetAppBooleanValue(@"fvr_enforce_disallow_snyc_messages", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
    if (a1)
    {
      if (keyExistsAndHasValidFormat)
      {
        FigCFDictionarySetBoolean();
      }
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    remoteVideoReceiver_createXPCRemoteClientOptions_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t __remoteConnectionEstablisher_establishConnectionSync_block_invoke()
{
  result = FigSimpleMutexCreate();
  remoteConnectionEstablisher_establishConnectionSync_sTimeoutMutex = result;
  return result;
}

void remoteConnectionEstablisher_establishConnectionAsync(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  if (_MergedGlobals_126 != -1)
  {
    remoteConnectionEstablisher_establishConnectionAsync_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_17:
    remoteConnectionEstablisher_establishConnectionAsync_cold_3(&v11);
    goto LABEL_19;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (qword_1ED4CB9F8)
  {
    FigSimpleMutexLock();
    if (CFDictionaryContainsKey(*(qword_1ED4CB9F8 + 8), a2))
    {
      Value = CFDictionaryGetValue(*(qword_1ED4CB9F8 + 8), a2);
      if (Value)
      {
        v8 = CFRetain(Value);
        v9 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v10 = CFDictionaryContainsKey(*(qword_1ED4CB9F8 + 16), a2);
      remoteConnectionEstablisher_addPendingClientHanlderForServerPID(qword_1ED4CB9F8, a4, a2);
      if (!v10)
      {
        v9 = FigXPCRemoteClientCreateWithXPCEndpointAsync();
        goto LABEL_10;
      }
    }

    v9 = 0;
LABEL_10:
    v8 = 0;
LABEL_11:
    FigSimpleMutexUnlock();
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  remoteConnectionEstablisher_establishConnectionAsync_cold_2(&v11);
LABEL_19:
  v8 = 0;
  v9 = v11;
  if (!v11)
  {
LABEL_12:
    if (!v8)
    {
      return;
    }
  }

LABEL_13:
  (a4)[2](a4, v9, v8);
  if (v8)
  {
    CFRelease(v8);
  }
}

void __remoteConnectionEstablisher_establishConnectionSync_block_invoke_2(uint64_t a1, int a2, const void *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  FigSimpleMutexLock();
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = v5;
  }

  FigSimpleMutexUnlock();
  dispatch_group_leave(*(a1 + 56));
  v6 = *(a1 + 56);

  dispatch_release(v6);
}

void remoteConnectionEstablisherCreateOnce(uint64_t **a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (v2)
  {
    v3 = v2;
    v4 = FigSimpleMutexCreate();
    *v3 = v4;
    if (v4 && (v5 = *MEMORY[0x1E695E480], Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]), (v3[1] = Mutable) != 0) && (v7 = CFDictionaryCreateMutable(v5, 0, 0, MEMORY[0x1E695E9E8]), (v3[2] = v7) != 0))
    {
      *a1 = v3;
    }

    else if (FigSignalErrorAtGM())
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (*v3)
      {
        FigSimpleMutexDestroy();
        *v3 = 0;
      }

      v9 = v3[2];
      if (v9)
      {
        CFRelease(v9);
        v3[2] = 0;
      }

      v10 = v3[1];
      if (v10)
      {
        CFRelease(v10);
      }

      free(v3);
    }
  }

  else
  {
    remoteConnectionEstablisherCreateOnce_cold_1();
  }
}

void remoteConnectionEstablisher_addPendingClientHanlderForServerPID(uint64_t a1, const void *a2, void *key)
{
  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (!Value)
  {
    Value = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(*(a1 + 16), key, Value);
    CFRelease(Value);
  }

  v7 = _Block_copy(a2);
  CFArrayAppendValue(Value, v7);

  _Block_release(v7);
}

void __remoteConnectionEstablisher_establishConnectionAsync_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = qword_1ED4CB9F8;
  v6 = *(a1 + 32);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(v5 + 16), v6);
  if (Value)
  {
    v8 = CFRetain(Value);
  }

  else
  {
    v8 = 0;
  }

  CFDictionaryRemoveValue(*(v5 + 16), v6);
  if (!a2)
  {
    if (dword_1ED4CBE90)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFDictionarySetValue(*(v5 + 8), v6, a3);
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    if (CFArrayGetCount(v8) >= 1)
    {
      v10 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v10);
        ValueAtIndex[2](ValueAtIndex, a2, a3);
        ++v10;
      }

      while (v10 < CFArrayGetCount(v8));
    }

    CFRelease(v8);
  }
}

uint64_t remoteVideoReceiver_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigVideoReceiverGetTypeID())
  {
    result = CMBaseObjectGetDerivedStorage();
    *(result + 24) = 1;
  }

  else
  {
    v4 = CFGetTypeID(a1);
    result = FigDataChannelResourceGetTypeID();
    if (v4 == result)
    {

      return FigDataChannelResourceRemoteHandleDeadConnection(a1);
    }
  }

  return result;
}

uint64_t remoteVideoReceiver_NotificationFilter(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"DataChannelConfigurationBecameActive"))
  {
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      return 0;
    }

    v5 = CMBaseObjectGetDerivedStorage();
    idx = -1;
    FigSimpleMutexLock();
    videoReceiverRemote_findIndexOfPendingConfigurationWithActivationID(a1, 0, &idx);
    v6 = idx;
    if (idx != -1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 56), idx);
      v8 = CFArrayGetValueAtIndex(*(v5 + 64), v6);
      v9 = CFArrayGetValueAtIndex(*(v5 + 72), v6);
      CMTimeMakeFromDictionary(&v25, v9);
      v10 = *(v5 + 40);
      if (ValueAtIndex)
      {
        v11 = CFRetain(ValueAtIndex);
      }

      else
      {
        v11 = 0;
      }

      v14 = *(v5 + 48);
      *(v5 + 40) = v11;
      *(v5 + 48) = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v10)
      {
        videoReceiverRemote_removeWeakListenersFromConfigurationImageQueuesUnlessRequiredByAnotherConfiguration(a1, v10);
      }

      if (v8 && (v15 = CFGetTypeID(v8), v15 == CFDictionaryGetTypeID()) && CFDictionaryGetCount(v8) >= 1 && *(v5 + 176) >= 1)
      {
        SInt32 = FigCFNumberCreateSInt32();
        if (SInt32)
        {
          CFDictionaryApplyFunction(v8, videoReceiverRemote_setImageQueueResponsibleProcessID, SInt32);
        }

        else
        {
          remoteVideoReceiver_NotificationFilter_cold_1();
        }
      }

      else
      {
        SInt32 = 0;
      }

      FigSimpleMutexUnlock();
      if (v10)
      {
        CFRelease(v10);
      }

      if (SInt32)
      {
        CFRelease(SInt32);
      }

      return 0;
    }

LABEL_35:
    FigSimpleMutexUnlock();
    return 0;
  }

  if (CFEqual(a2, @"DataChannelConfigurationWasRemoved"))
  {
    LODWORD(idx) = 0;
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      return 0;
    }

    CMBaseObjectGetDerivedStorage();
    v25.value = -1;
    FigSimpleMutexLock();
    videoReceiverRemote_findIndexOfPendingConfigurationWithActivationID(a1, idx, &v25.value);
    if (v25.value == -1)
    {
      FigSignalErrorAtGM();
    }

    else
    {
      videoReceiverRemote_removePendingConfigurationAtIndex(a1, v25.value);
    }

    goto LABEL_35;
  }

  if (CFEqual(a2, @"RefreshRateChanged"))
  {
    Value = FigCFDictionaryGetValue();
    FigSimpleMutexLock();
    v13 = *(DerivedStorage + 80);
    *(DerivedStorage + 80) = Value;
    if (!Value)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (CFEqual(a2, @"DesiredPixelCountChanged"))
  {
    Value = FigCFDictionaryGetValue();
    FigSimpleMutexLock();
    v13 = *(DerivedStorage + 88);
    *(DerivedStorage + 88) = Value;
    if (!Value)
    {
LABEL_13:
      if (v13)
      {
        CFRelease(v13);
      }

      goto LABEL_35;
    }

LABEL_12:
    CFRetain(Value);
    goto LABEL_13;
  }

  if (CFEqual(a2, @"PreferredDataChannelGroupsChanged"))
  {
    v25.value = 0;
    v18 = FigCFDictionaryGetValue();
    if (v18)
    {
      v19 = v18;
      v20 = CFGetAllocator(a1);
      if (!FigDataChannelGroupsArrayCreateFromDictionary(v20, v19, &v25))
      {
        remoteVideoReceiver_NotificationFilter_cold_3(DerivedStorage, &v25);
      }
    }

    else
    {
      remoteVideoReceiver_NotificationFilter_cold_2();
    }
  }

  else
  {
    if (!CFEqual(a2, @"DataChannelSettingsChanged"))
    {
      if (CFEqual(a2, @"PlaybackStartupPreventionAssertionAcquired"))
      {
        v22 = FigCFDictionaryGetValue();
        FigSimpleMutexLock();
        *(DerivedStorage + 120) = 1;
        v23 = *(DerivedStorage + 128);
        *(DerivedStorage + 128) = v22;
        if (v22)
        {
          CFRetain(v22);
        }

        if (v23)
        {
          CFRelease(v23);
        }
      }

      else
      {
        if (!CFEqual(a2, @"PlaybackStartupPreventionAssertionReleased"))
        {
          return 0;
        }

        FigSimpleMutexLock();
        *(DerivedStorage + 120) = 0;
        v24 = *(DerivedStorage + 128);
        if (v24)
        {
          CFRelease(v24);
          *(DerivedStorage + 128) = 0;
        }
      }

      goto LABEL_35;
    }

    v25.value = 0;
    v21 = FigCFDictionaryGetValue();
    if (v21)
    {
      if (!FigVideoReceiverDataChannelSettingsCopyDeserialized(v21, &v25))
      {
        remoteVideoReceiver_NotificationFilter_cold_5(DerivedStorage, &v25);
      }
    }

    else
    {
      remoteVideoReceiver_NotificationFilter_cold_4();
    }
  }

  return 0;
}

CFIndex videoReceiverRemote_findIndexOfPendingConfigurationWithActivationID(uint64_t a1, int a2, CFIndex *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 56));
  if (result < 1)
  {
LABEL_5:
    v7 = -1;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v7);
      result = FigDataChannelConfigurationGetActivationID(ValueAtIndex);
      if (result == a2)
      {
        break;
      }

      ++v7;
      result = CFArrayGetCount(*(DerivedStorage + 56));
      if (v7 >= result)
      {
        goto LABEL_5;
      }
    }
  }

  *a3 = v7;
  return result;
}

void videoReceiverRemote_removeWeakListenersFromConfigurationImageQueuesUnlessRequiredByAnotherConfiguration(const void *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  if (!FigVideoReceiverCommonCopyImageQueuesFromConfiguration(a2, &theArray))
  {
    if (!theArray)
    {
      return;
    }

    if (CFArrayGetCount(theArray) >= 1)
    {
      v4 = videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues(a1, &cf);
      v5 = cf;
      if (!v4)
      {
        for (i = 0; ; ++i)
        {
          Count = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          if (i >= Count)
          {
            break;
          }

          CFArrayGetValueAtIndex(theArray, i);
          if (!FigCFArrayContainsValue())
          {
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListeners();
          }
        }
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

uint64_t videoReceiverRemote_setImageQueueResponsibleProcessID(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a3)
    {
      FigBaseObject = FigImageQueueGetFigBaseObject(result);
      VTable = CMBaseObjectGetVTable();
      v6 = *(VTable + 8);
      result = VTable + 8;
      v7 = *(v6 + 56);
      if (v7)
      {

        return v7(FigBaseObject, @"ResponsibleProcessID", a3);
      }
    }
  }

  return result;
}

uint64_t videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues(const void *a1, CFMutableArrayRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = *(DerivedStorage + 40);
    if (v8)
    {
      cf = 0;
      FigVideoReceiverCommonCopyImageQueuesFromConfiguration(v8, &cf);
      FigCFArrayAppendArray();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 56);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), i);
      cf = 0;
      FigVideoReceiverCommonCopyImageQueuesFromConfiguration(ValueAtIndex, &cf);
      FigCFArrayAppendArray();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    result = 0;
    *a2 = v7;
  }

  else
  {
    videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues_cold_1(&cf);
    return cf;
  }

  return result;
}

void videoReceiverRemote_informServerAboutImageQueueSlotEventForImageQueue(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v2 = videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurations(a1, a2, &cf);
  v3 = cf;
  if (v2)
  {
    FigImageQueueSlotGetSlotID(cf);
    videoReceiverRemote_handleImageQueueSlotEvent();
    if (!v3)
    {
      return;
    }
  }

  else if (!cf)
  {
    return;
  }

  CFRelease(v3);
}

uint64_t videoReceiverRemote_GetClientAndObjectID(uint64_t a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      if (*(DerivedStorage + 24))
      {
        videoReceiverRemote_GetClientAndObjectID_cold_1(&v10);
        return v10;
      }

      else
      {
        result = 0;
        v9 = v6;
        v8 = *v6;
        *a2 = v9[1];
        *a3 = v8;
      }
    }

    else
    {
      videoReceiverRemote_GetClientAndObjectID_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    videoReceiverRemote_GetClientAndObjectID_cold_3(&v12);
    return v12;
  }

  return result;
}

void videoReceiverRemote_removePendingConfigurationAtIndex(const void *a1, CFIndex a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 < 0 || (v5 = DerivedStorage, CFArrayGetCount(*(DerivedStorage + 56)) <= a2))
  {
    videoReceiverRemote_removePendingConfigurationAtIndex_cold_1();
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5[7], a2);
    v7 = CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(v5[7], a2);
    CFArrayRemoveValueAtIndex(v5[9], a2);
    CFArrayRemoveValueAtIndex(v5[8], a2);
    CMBaseObjectGetDerivedStorage();
    videoReceiverRemote_removeWeakListenersFromConfigurationImageQueuesUnlessRequiredByAnotherConfiguration(a1, v7);
    if (v7)
    {

      CFRelease(v7);
    }
  }
}

uint64_t remoteVideoReceiver_HandleDeadServerConnection()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 24) = 1;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = qword_1ED4CB9F8;
    if (qword_1ED4CB9F8)
    {
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(*(v3 + 8), v1);
      result = FigSimpleMutexUnlock();
    }

    *(v2 + 16) = 0;
  }

  return result;
}

void videoReceiverRemote_Finalize(const void *a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray[0] = 0;
  videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues(a1, theArray);
  v3 = theArray[0];
  if (theArray[0])
  {
    Count = CFArrayGetCount(theArray[0]);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        CFArrayGetValueAtIndex(v3, i);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
      }
    }

    CFRelease(v3);
  }

  if (DerivedStorage[4])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[4] = 0;
  }

  v7 = DerivedStorage[9];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[9] = 0;
  }

  v8 = DerivedStorage[7];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[7] = 0;
  }

  v9 = DerivedStorage[8];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[8] = 0;
  }

  v10 = DerivedStorage[5];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[5] = 0;
  }

  v11 = DerivedStorage[6];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[6] = 0;
  }

  v12 = DerivedStorage[18];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[18] = 0;
  }

  v13 = DerivedStorage[19];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[19] = 0;
  }

  v14 = DerivedStorage[11];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[11] = 0;
  }

  v15 = DerivedStorage[10];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[10] = 0;
  }

  v16 = DerivedStorage[12];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[12] = 0;
  }

  v17 = DerivedStorage[13];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[13] = 0;
  }

  if (DerivedStorage[14])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[14] = 0;
  }

  v18 = DerivedStorage[16];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[16] = 0;
  }

  if (DerivedStorage[17])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[17] = 0;
  }

  if (DerivedStorage[1])
  {
    for (j = 0; ; ++j)
    {
      v21 = DerivedStorage[23];
      if (v21)
      {
        v21 = CFArrayGetCount(v21);
      }

      if (j >= v21)
      {
        break;
      }

      FigCFArrayGetInt64AtIndex();
    }

    FigVideoReceiverRemoteDisassociateAndDisposeObjectID();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v22 = DerivedStorage[1];
    if (v22)
    {
      CFRelease(v22);
      DerivedStorage[1] = 0;
    }
  }

  v19 = DerivedStorage[23];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[23] = 0;
  }
}

__CFString *videoReceiverRemote_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v11 = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 136);
  if (v5)
  {
    v5(a1, &v11);
    LOBYTE(v5) = v11;
  }

  v6 = "CALayer";
  if ((v5 & 4) == 0)
  {
    v6 = "Unknown";
  }

  if ((v5 & 2) != 0)
  {
    v7 = "BufferDelivery";
  }

  else
  {
    v7 = v6;
  }

  v8 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 24))
  {
    v9 = " SERVER DIED";
  }

  else
  {
    v9 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigVideoReceiverRemoteFor%s(XPC) %p retainCount: %ld objectID: %016llx%s>", v7, a1, v8, *DerivedStorage, v9);
  return Mutable;
}

uint64_t videoReceiverRemote_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = 0;
  if (!a2)
  {
    videoReceiverRemote_SetProperty_cold_5(&v21);
    return v21;
  }

  if (!a3)
  {
    videoReceiverRemote_SetProperty_cold_4(&v21);
    return v21;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"ResponsibleProcessID"))
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFNumberGetTypeID())
    {
      SInt32 = FigCFNumberGetSInt32();
      if (SInt32 > 0)
      {
        v10 = *(v7 + 176);
        *(v7 + 176) = SInt32;
        if (v10 != SInt32)
        {
          v11 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          v12 = *(v11 + 48);
          if (v12)
          {
            v13 = CFGetTypeID(v12);
            if (v13 == CFDictionaryGetTypeID() && CFDictionaryGetCount(*(v11 + 48)) >= 1 && *(v11 + 176) >= 1)
            {
              v14 = FigCFNumberCreateSInt32();
              if (v14)
              {
                v15 = v14;
                CFDictionaryApplyFunction(*(v11 + 48), videoReceiverRemote_setImageQueueResponsibleProcessID, v14);
                FigSimpleMutexUnlock();
                CFRelease(v15);
                return 0;
              }

              videoReceiverRemote_SetProperty_cold_2();
            }
          }

          FigSimpleMutexUnlock();
        }

        return 0;
      }

      videoReceiverRemote_SetProperty_cold_3(&v21);
    }

    else
    {
      videoReceiverRemote_SetProperty_cold_1(&v21);
    }

    return v21;
  }

  if (!*(v7 + 25))
  {
    ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v19, &v20);
    v18 = v19;
    if (!ClientAndObjectID)
    {
      ClientAndObjectID = FigXPCSendStdSetPropertyMessage();
      v18 = v19;
    }

    if (v18)
    {
      FigXPCRemoteClientKillServerOnTimeout();
    }

    return ClientAndObjectID;
  }

  return FigSignalErrorAtGM();
}

uint64_t videoReceiverRemote_AddDataChannelConfiguration(const void *a1, uint64_t a2, int a3, CMTime *a4)
{
  CMBaseObjectGetDerivedStorage();
  v57 = 0;
  xdict = 0;
  v56 = 0;
  if (!a2)
  {
    videoReceiverRemote_AddDataChannelConfiguration_cold_7(&cf);
    value_low = LODWORD(cf.value);
    goto LABEL_99;
  }

  v54 = a3;
  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  cf.value = 0;
  theArray.value = 0;
  v8 = FigVideoReceiverCommonCopyImageQueuesFromConfiguration(a2, &theArray);
  if (v8)
  {
    value_low = v8;
  }

  else
  {
    if (!theArray.value)
    {
      goto LABEL_16;
    }

    if (CFArrayGetCount(theArray.value) < 1)
    {
      value_low = 0;
    }

    else
    {
      v9 = videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues(a1, &cf);
      if (v9)
      {
        value_low = v9;
        v11 = cf.value;
        if (cf.value)
        {
LABEL_12:
          CFRelease(v11);
        }
      }

      else
      {
        Count = CFArrayGetCount(theArray.value);
        v11 = cf.value;
        if (Count >= 1)
        {
          v12 = 0;
          do
          {
            CFArrayGetValueAtIndex(theArray.value, v12);
            if (!FigCFArrayContainsValue())
            {
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListeners();
            }

            ++v12;
          }

          while (v12 < CFArrayGetCount(theArray.value));
        }

        value_low = 0;
        if (v11)
        {
          goto LABEL_12;
        }
      }
    }
  }

  if (theArray.value)
  {
    CFRelease(theArray.value);
  }

  if (!value_low)
  {
LABEL_16:
    value = 0;
    v60 = 0;
    v14 = CFGetAllocator(a1);
    Copy = FigDataChannelConfigurationCreateCopy(v14, a2, &v60);
    if (Copy)
    {
      value_low = Copy;
      v43 = 0;
      Mutable = 0;
    }

    else
    {
      ChannelCount = FigDataChannelConfigurationGetChannelCount(v60);
      if (ChannelCount >= 1)
      {
        v17 = ChannelCount;
        Mutable = 0;
        v19 = 0;
        allocator = *MEMORY[0x1E695E480];
        while (1)
        {
          OutputQueueTypeAtIndex = FigDataChannelConfigurationGetOutputQueueTypeAtIndex(v60, v19);
          if (OutputQueueTypeAtIndex == 1)
          {
            break;
          }

          if (OutputQueueTypeAtIndex == 2)
          {
            cf.value = 0;
            FigDataQueueAtIndex = FigDataChannelConfigurationGetFigDataQueueAtIndex(v60, v19);
            if (!FigDataQueueAtIndex)
            {
              videoReceiverRemote_AddDataChannelConfiguration_cold_5(&theArray);
              goto LABEL_109;
            }

            ObjectID = FigDataQueueRemoteGetObjectID(FigDataQueueAtIndex, &cf);
            if (ObjectID || (ObjectID = FigDataChannelConfigurationSetFigDataQueueObjectIDAtIndex(v60, v19), ObjectID))
            {
LABEL_102:
              value_low = ObjectID;
              goto LABEL_103;
            }
          }

LABEL_56:
          if (v17 == ++v19)
          {
            goto LABEL_63;
          }
        }

        FigImageQueueAtIndex = FigDataChannelConfigurationGetFigImageQueueAtIndex(v60, v19);
        if (!FigImageQueueAtIndex)
        {
          videoReceiverRemote_AddDataChannelConfiguration_cold_4(&cf);
          value_low = LODWORD(cf.value);
          goto LABEL_103;
        }

        v24 = FigImageQueueAtIndex;
        LODWORD(cf.value) = 0;
        v25 = *(*(CMBaseObjectGetVTable() + 24) + 136);
        if (!v25 || (v25(a1, &cf), (cf.value & 4) == 0))
        {
LABEL_52:
          cf.value = 0;
          v35 = CFGetAllocator(a1);
          FigBaseObject = FigImageQueueGetFigBaseObject(v24);
          v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v37)
          {
            v37(FigBaseObject, @"FigImageQueueProperty_FirstImageEnqueued", v35, &cf);
          }

          if (cf.value)
          {
            v38 = v60;
            CFBooleanGetValue(cf.value);
            FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex(v38, v19);
            CFRelease(cf.value);
          }

          goto LABEL_56;
        }

        if (videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurationsWhileHoldingConfigurationLock(a1, v24, &value))
        {
LABEL_47:
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              videoReceiverRemote_AddDataChannelConfiguration_cold_3(&cf);
              v43 = 0;
              value_low = LODWORD(cf.value);
              goto LABEL_70;
            }
          }

          CFDictionarySetValue(Mutable, v24, value);
          v32 = value;
          v33 = v60;
          FigImageQueueSlotGetSlotID(value);
          v34 = FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex(v33, v19);
          if (v34)
          {
            value_low = v34;
            goto LABEL_104;
          }

          if (v32)
          {
            CFRelease(v32);
            value = 0;
          }

          goto LABEL_52;
        }

        cf.value = 0;
        theArray.value = 0;
        v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v26)
        {
          v27 = *(*(CMBaseObjectGetVTable() + 16) + 120);
          if (!v27)
          {
            value_low = 4294954514;
            goto LABEL_40;
          }

          v28 = v27(v24, videoReceiverRemote_slotWasDestroyedCallback, v26, &cf);
          if (v28)
          {
            value_low = v28;
            goto LABEL_40;
          }

          v29 = CFGetAllocator(a1);
          v26 = CFDictionaryCreateMutable(v29, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v26)
          {
            v52 = CFGetAllocator(a1);
            v30 = FigImageQueueGetFigBaseObject(v24);
            v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v31)
            {
              v31(v30, @"FigImageQueueProperty_FirstImageEnqueued", v52, &theArray);
            }

            FigCFDictionarySetValue();
            FigImageQueueSlotGetSlotID(cf.value);
            value_low = videoReceiverRemote_handleImageQueueSlotEvent();
            if (!value_low)
            {
              value = cf.value;
              cf.value = 0;
            }

            CFRelease(v26);
            v26 = 0;
LABEL_40:
            if (cf.value)
            {
              CFRelease(cf.value);
            }

            if (theArray.value)
            {
              CFRelease(theArray.value);
            }

            if (v26)
            {
              CFRelease(v26);
            }

            if (value_low)
            {
              goto LABEL_103;
            }

            goto LABEL_47;
          }

          videoReceiverRemote_AddDataChannelConfiguration_cold_1(&v62);
        }

        else
        {
          videoReceiverRemote_AddDataChannelConfiguration_cold_2(&v62);
        }

        value_low = v62;
        goto LABEL_40;
      }

      Mutable = 0;
LABEL_63:
      ResourceCount = FigDataChannelConfigurationGetResourceCount(v60);
      if (ResourceCount < 1)
      {
LABEL_69:
        value_low = 0;
        v43 = v60;
        v60 = 0;
      }

      else
      {
        v40 = ResourceCount;
        v41 = 0;
        while (1)
        {
          cf.value = 0;
          FigDataChannelResourceAtIndex = FigDataChannelConfigurationGetFigDataChannelResourceAtIndex(v60, v41);
          if (!FigDataChannelResourceAtIndex)
          {
            break;
          }

          ObjectID = FigDataChannelResourceRemoteGetObjectID(FigDataChannelResourceAtIndex, &cf);
          if (ObjectID)
          {
            goto LABEL_102;
          }

          ObjectID = FigDataChannelConfigurationSetFigDataChannelResourceObjectIDAtIndex(v60, v41);
          if (ObjectID)
          {
            goto LABEL_102;
          }

          if (v40 == ++v41)
          {
            goto LABEL_69;
          }
        }

        videoReceiverRemote_AddDataChannelConfiguration_cold_6(&theArray);
LABEL_109:
        value_low = LODWORD(theArray.value);
LABEL_103:
        if (Mutable)
        {
LABEL_104:
          CFRelease(Mutable);
          v43 = 0;
          Mutable = 0;
        }

        else
        {
          v43 = 0;
        }
      }

LABEL_70:
      if (value)
      {
        CFRelease(value);
      }
    }

    if (v60)
    {
      CFRelease(v60);
    }

    if (value_low)
    {
      goto LABEL_94;
    }

    theArray = *a4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v45 = CFGetAllocator(a1);
    cf = theArray;
    v46 = CMTimeCopyAsDictionary(&cf, v45);
    CFArrayAppendValue(DerivedStorage[7], v43);
    CFArrayAppendValue(DerivedStorage[9], v46);
    if (Mutable)
    {
      v47 = Mutable;
    }

    else
    {
      v47 = *MEMORY[0x1E695E738];
    }

    CFArrayAppendValue(DerivedStorage[8], v47);
    CMBaseObjectGetDerivedStorage();
    if (v46)
    {
      CFRelease(v46);
    }

    FigSimpleMutexUnlock();
    ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v56, &v57);
    if (!ClientAndObjectID)
    {
      ClientAndObjectID = FigXPCCreateBasicMessage();
      if (!ClientAndObjectID)
      {
        cf.value = 0;
        value_low = FigDataChannelConfigurationCopyAsDictionaryWithoutOutputQueues(v43, *MEMORY[0x1E695E480], &cf);
        if (!value_low)
        {
          FigXPCMessageSetCFDictionary();
        }

        if (cf.value)
        {
          CFRelease(cf.value);
        }

        if (value_low)
        {
          goto LABEL_92;
        }

        xpc_dictionary_set_BOOL(xdict, "Immediate", v54 != 0);
        cf = *a4;
        ClientAndObjectID = FigXPCMessageSetCMTime();
        if (!ClientAndObjectID)
        {
          if (*(CMBaseObjectGetDerivedStorage() + 25))
          {
            v49 = FigXPCRemoteClientSendAsyncMessage();
          }

          else
          {
            v49 = FigXPCRemoteClientSendSyncMessage();
          }

          value_low = v49;
          if (!v49)
          {
            goto LABEL_95;
          }

          goto LABEL_92;
        }
      }
    }

    value_low = ClientAndObjectID;
LABEL_92:
    FigSimpleMutexLock();
    LastIndexOfValue = FigCFArrayGetLastIndexOfValue();
    if (LastIndexOfValue != -1)
    {
      videoReceiverRemote_removePendingConfigurationAtIndex(a1, LastIndexOfValue);
    }

    goto LABEL_94;
  }

  v43 = 0;
  Mutable = 0;
LABEL_94:
  FigSimpleMutexUnlock();
LABEL_95:
  if (v43)
  {
    CFRelease(v43);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_99:
  FigXPCRelease();
  if (v56)
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return value_low;
}

uint64_t videoReceiverForCALayerRemote_GetInstanceType(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 5;
    }

    else
    {
      videoReceiverForCALayerRemote_GetInstanceType_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    videoReceiverForCALayerRemote_GetInstanceType_cold_2(&v4);
    return v4;
  }

  return result;
}

void videoReceiverRemote_slotWasDestroyedCallback(int a1, const void *a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v5 = v4;
  if (a1 && v4)
  {
    videoReceiverRemote_handleImageQueueSlotEvent();
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  CFRelease(v5);
LABEL_6:
  if (a2)
  {

    CFRelease(a2);
  }
}

uint64_t videoReceiverForBufferDeliveryRemote_GetInstanceType(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 3;
    }

    else
    {
      videoReceiverForBufferDeliveryRemote_GetInstanceType_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    videoReceiverForBufferDeliveryRemote_GetInstanceType_cold_2(&v4);
    return v4;
  }

  return result;
}

void __vr_establishFigXPCConnectionForBootstrapEndpointAsync_block_invoke_2(uint64_t a1, void *a2)
{
  v39[5] = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19A8D7060](a2) == MEMORY[0x1E69E9E98])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    LODWORD(v26) = FigSignalErrorAtGM();
    LODWORD(cf) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    (*(*(a1 + 32) + 16))(*(a1 + 32), &v26, v13, v14, v15, v16, v17, v18);
    return;
  }

  v4 = *(a1 + 32);
  v5 = malloc_type_calloc(1uLL, 0x60uLL, 0x106004091ADB532uLL);
  if (!v5)
  {
    v25 = FigSignalErrorAtGM();
    if (!v25)
    {
      return;
    }

LABEL_14:
    v33 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    LODWORD(v33) = v25;
    (*(*(a1 + 32) + 16))(*(a1 + 32), &v33, v19, v20, v21, v22, v23, v24);
    return;
  }

  v6 = v5;
  v7 = vr_handleConnectionEstablishedResponseCommon(a2, v5);
  if (v7)
  {
    v25 = v7;
    free(v6);
    goto LABEL_14;
  }

  v8 = v6[3];
  v9 = v6[1];
  *&v33 = MEMORY[0x1E69E9820];
  *(&v33 + 1) = 0x40000000;
  *&v34 = __vr_handleConnectionEstablishedResponseAsync_block_invoke;
  *(&v34 + 1) = &unk_1E74956B8;
  *&v35 = v4;
  *(&v35 + 1) = v6;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 0x40000000;
  v39[2] = __vr_establishRemoteXPCClientAndMemoryOriginAsync_block_invoke;
  v39[3] = &unk_1E7495708;
  v39[4] = &v33;
  cf = 0;
  if (v9)
  {
    XPCRemoteClientOptions = remoteVideoReceiver_createXPCRemoteClientOptions(1, &cf);
    v11 = cf;
    if (!XPCRemoteClientOptions)
    {
      *&v26 = MEMORY[0x1E69E9820];
      *(&v26 + 1) = 0x40000000;
      *&v27 = __remoteVideoReceiver_establishFigXPCConnectionWithEndpointAsync_block_invoke;
      *(&v27 + 1) = &unk_1E7495730;
      DWORD2(v28) = 0;
      *&v28 = v39;
      remoteConnectionEstablisher_establishConnectionAsync(v9, v8, cf, &v26);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    __vr_establishFigXPCConnectionForBootstrapEndpointAsync_block_invoke_2_cold_1();
  }
}

void __vr_handleConnectionEstablishedResponseAsync_block_invoke(uint64_t a1, int a2, CFTypeRef cf, const void *a4)
{
  if (a2)
  {
    **(a1 + 40) = a2;
  }

  else
  {
    if (cf)
    {
      v6 = CFRetain(cf);
    }

    else
    {
      v6 = 0;
    }

    *(*(a1 + 40) + 16) = v6;
    if (a4)
    {
      v7 = CFRetain(a4);
    }

    else
    {
      v7 = 0;
    }

    *(*(a1 + 40) + 88) = v7;
  }

  (*(*(a1 + 32) + 16))();
  BootstrapConnectionResponseDeinit(*(a1 + 40));
  v8 = *(a1 + 40);

  free(v8);
}

uint64_t __vr_establishRemoteXPCClientAndMemoryOriginAsync_block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    return FigXPCRemoteClientCopyMemoryOriginAsync();
  }
}

void __vr_establishRemoteXPCClientAndMemoryOriginAsync_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __remoteVideoReceiver_establishFigXPCConnectionWithEndpointAsync_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
}

uint64_t OUTLINED_FUNCTION_4_137()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_8_79(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a9 = 0;
  a10 = 0;

  return videoReceiverRemote_GetClientAndObjectID(a1, &a10, &a9);
}

uint64_t FigTTMLDocumentWriterCreateForIMSC(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  v12 = 0;
  if (!a2)
  {
    FigTTMLDocumentWriterCreateForIMSC_cold_2(&v13);
LABEL_9:
    v7 = v13;
    goto LABEL_13;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateForIMSC_cold_1(&v13);
    goto LABEL_9;
  }

  FigTTMLDocumentWriterGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = FigTTMLDocumentWriterStateCreate(a1, &cf);
    if (!v7)
    {
      FigTTMLDocumentWriterGetCMBaseObject(v12);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = CFRetain(a2);
      v9 = v12;
      DerivedStorage[1] = cf;
      *a3 = v9;
      return v7;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

LABEL_13:
  if (v12)
  {
    CFRelease(v12);
  }

  return v7;
}

void figTTMLDocumentWriterForIMSC_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterForIMSC_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

void initAttributeValidatorDict_0()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"begin", 0);
  CFDictionaryAddValue(Mutable, @"dur", 0);
  CFDictionaryAddValue(Mutable, @"end", 0);
  CFDictionaryAddValue(Mutable, @"region", 0);
  CFDictionaryAddValue(Mutable, @"timeContainer", 0);
  CFDictionaryAddValue(Mutable, @"style", 0);
  CFDictionaryAddValue(Mutable, @"use", prohibited_0);
  CFDictionaryAddValue(Mutable, @"value", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/XML/1998/namespace id", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/XML/1998/namespace space", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/XML/1998/namespace lang", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/XML/1998/namespace base", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter clockMode", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter dropMode", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter frameRate", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter frameRateMultiplier", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter markerMode", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter pixelAspectRatio", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter profile", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter subFrameRate", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter tickRate", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter timeBase", validateTimeBase_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter cellResolution", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter aspectRatio", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter activeArea", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling backgroundColor", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling color", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling direction", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling display", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling displayAlign", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling extent", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontFamily", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontSize", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontStyle", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontWeight", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling lineHeight", validateLineHeight);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling opacity", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling origin", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling overflow", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling padding", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling showBackground", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textAlign", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textDecoration", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textOutline", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling unicodeBidi", validateUnicodeBidi_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling visibility", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling wrapOption", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling writingMode", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling zIndex", 0);
  CFDictionaryAddValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind", 0);
  CFDictionaryAddValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby position", 0);
  CFDictionaryAddValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby align", 0);
  CFDictionaryAddValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical combine", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling fillLineGap", 0);
  CFDictionaryAddValue(Mutable, @"urn:ebu:tt:style linePadding", 0);
  CFDictionaryAddValue(Mutable, @"urn:ebu:tt:style multiRowAlign", 0);
  sAttributeValidatorDict_0 = Mutable;
}

uint64_t EC_GetCurrentRangeIndex(uint64_t result)
{
  if (result)
  {
    if (*(result + 32))
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t EncryptionConfigGetTypeID()
{
  if (sRegisterEncryptionConfigTypeOnce != -1)
  {
    EncryptionConfigGetTypeID_cold_1();
  }

  return sEncryptionConfigID;
}

uint64_t RegisterEncryptionConfigType()
{
  result = _CFRuntimeRegisterClass();
  sEncryptionConfigID = result;
  return result;
}

uint64_t EncryptionConfigCreate(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *MEMORY[0x1E695E480];
  if (sRegisterEncryptionConfigTypeOnce != -1)
  {
    EncryptionConfigGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = Instance;
    *(Instance + 16) = a2;
    *(Instance + 24) = 0;
    Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    result = 0;
    *(v7 + 32) = Mutable;
    *(v7 + 40) = 0;
    *a3 = v7;
  }

  else
  {
    EncryptionConfigCreate_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t ec_CFDictionaryGetStringIfPresent(const void *a1)
{
  if (a1 && (v1 = CFGetTypeID(a1), v1 == CFDictionaryGetTypeID()))
  {
    FigCFDictionaryGetValueIfPresent();
    return 0;
  }

  else
  {
    ec_CFDictionaryGetStringIfPresent_cold_1();
    return 0;
  }
}

uint64_t RegisterEncryptionRangeType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CBA08 = result;
  return result;
}

double er_EncryptionRangeInit(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void er_EncryptionRangeFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    if (*v4)
    {
      CFRelease(*v4);
      v4 = a1[7];
    }

    free(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    if (*v5)
    {
      CFRelease(*v5);
      v5 = a1[8];
    }

    if (v5[1])
    {
      CFRelease(v5[1]);
      v5 = a1[8];
    }

    free(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    if (*v6)
    {
      CFRelease(*v6);
      v6 = a1[9];
    }

    if (v6[1])
    {
      CFRelease(v6[1]);
      v6 = a1[9];
    }

    free(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    if (*v7)
    {
      CFRelease(*v7);
      v7 = a1[6];
    }

    free(v7);
  }
}

__CFString *er_EncryptionRangeCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  v5 = "true";
  if (*(a1 + 16))
  {
    v6 = "true";
  }

  else
  {
    v6 = "false";
  }

  if (!*(a1 + 32))
  {
    v5 = "false";
  }

  CFStringAppendFormat(Mutable, 0, @"<EncryptionRange %p> encrypted: %s segmentCount: %lld key: %p IV: %p keepIVConstant: %s legacyConfigInfo: %p fairPlayInfo: %p playReadyInfo: %p widevineInfo: %p", a1, v6, *(a1 + 80), *(a1 + 40), *(a1 + 24), v5, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  return v4;
}

double ec_EncryptionConfigInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void ec_EncryptionConfigFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *ec_CopyDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = (a1 + 32);
  CFStringAppendFormat(Mutable, 0, @"<EncryptionConfig %p> scheme %d encryptionRangeList %p", a1, *(a1 + 16), a1 + 32);
  CFStringAppendFormat(Mutable, 0, @" allowed-cpc %@", *(a1 + 24));
  if (CFArrayGetCount(*(a1 + 32)) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*v4, v5);
      v7 = er_EncryptionRangeCopyDebugDesc(ValueAtIndex);
      CFStringAppendFormat(Mutable, 0, @"\n\t%@", v7);
      if (v7)
      {
        CFRelease(v7);
      }

      ++v5;
    }

    while (v5 < CFArrayGetCount(*v4));
  }

  return Mutable;
}

void *OUTLINED_FUNCTION_2_169()
{

  return malloc_type_calloc(1uLL, 8uLL, 0x6004044C4A2DFuLL);
}

const void *OUTLINED_FUNCTION_7_94()
{
  v2 = *(v0 + 40);

  return ec_GetEncryptionRange(v0, v2);
}

uint64_t manifoldFactory_createManifold(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, unsigned int a3, CMTime *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v20 = 0;
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = 0;
    if (a8 > 3)
    {
      switch(a8)
      {
        case 4:
          result = FigManifoldCreateRemoteForMPEG2(a1, a2, a6, a7, 0, a9, &v20);
          break;
        case 8:
          result = FigManifoldCreateRemoteForMovieFragmentStream(a1, a2, a6, 0, a9, a3, &v20);
          break;
        case 16:
          result = FigManifoldCreateRemoteForICY();
          break;
      }

      goto LABEL_23;
    }

    if (a8 != 1)
    {
      if (a8 == 2)
      {
        result = FigManifoldCreateRemoteForWebVTT();
      }

      goto LABEL_23;
    }

LABEL_18:
    v19 = *a4;
    result = FigManifoldCreateForGap(a1, a2, &v19, a5, a6, 0, a9, &v20);
    goto LABEL_23;
  }

  if (a8 <= 3)
  {
    if (a8 == 1)
    {
      goto LABEL_18;
    }

    if (a8 == 2)
    {
      result = FigManifoldCreateForWebVTT(a1, a2, a6, 0, a9, &v20);
    }
  }

  else
  {
    switch(a8)
    {
      case 4:
        result = FigManifoldCreateForMPEG2(a1, a2, a6, a7, 0, a9, &v20);
        break;
      case 8:
        result = FigManifoldCreateForMovieFragmentStream(a1, a2, a6, 0, a9, a3, &v20);
        break;
      case 16:
        result = FigManifoldCreateForICY(a1, a2, a6, 0, a9, &v20);
        break;
    }
  }

LABEL_23:
  *a10 = v20;
  return result;
}

uint64_t RegisterFigVirtualFramebufferType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVirtualFramebufferGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVirtualFramebufferGetClassID_sRegisterFigVirtualFramebufferTypeOnce, RegisterFigVirtualFramebufferType);

  return CMBaseClassGetCFTypeID();
}

uint64_t activityOnDispatchQueue_sharedCreate(void *a1)
{
  if (a1)
  {
    FigActivitySchedulerGetClassID();
    v2 = CMDerivedObjectCreate();
    if (!v2)
    {
      *a1 = 0;
    }
  }

  else
  {
    activityOnDispatchQueue_sharedCreate_cold_1(&v4);
    return v4;
  }

  return v2;
}

uint64_t FigActivitySchedulerCreateForExistingDispatchQueue(uint64_t a1, NSObject *a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    v5 = activityOnDispatchQueue_sharedCreate(&cf);
    if (v5)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *(CMBaseObjectGetDerivedStorage() + 8) = a2;
      dispatch_retain(a2);
      *a3 = cf;
    }
  }

  else
  {
    FigActivitySchedulerCreateForExistingDispatchQueue_cold_1(&v8);
    return v8;
  }

  return v5;
}

uint64_t activityOnDispatchQueue_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 1;
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    dispatch_sync_f(v1, 0, activityOnDispatchQueue_NoOp);
    dispatch_release(*(DerivedStorage + 8));
    *(DerivedStorage + 8) = 0;
  }

  return 0;
}

uint64_t activityOnDispatchQueue_finalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    v4 = *(v3 + 24);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

__CFString *activityOnDispatchQueue_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigActivityScheduler_OnNewDispatchQueue %p>", a1);
  return Mutable;
}

uint64_t activityOnDispatchQueue_setProcessingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a1;
  context[1] = a3;
  context[2] = a2;
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    dispatch_sync_f(*(DerivedStorage + 8), context, activityOnDispatchQueue_setProcessingCallbackInternal);
    return 0;
  }
}

uint64_t activityOnDispatchQueue_triggerScheduling(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    dispatch_async_f(*(DerivedStorage + 8), a1, activityOnDispatchQueue_triggerSchedulingInternal);
    return 0;
  }
}

__n128 activityOnDispatchQueue_setProcessingCallbackInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(a1 + 8);
  DerivedStorage[1] = result;
  return result;
}

uint64_t activityOnDispatchQueue_triggerSchedulingInternal()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 16);

    return v1(v2);
  }

  return result;
}

uint64_t FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(uint64_t a1, int a2, __CFString *a3, CFTypeRef cf, uint64_t *a5)
{
  cfa = 0;
  v21 = 0;
  if (!a1)
  {
    goto LABEL_12;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(a1, @"FHRP_ErrorReturned", AllocatorForMedia, &v21);
    CFError = v21;
    if (v21)
    {
      goto LABEL_18;
    }
  }

  v13 = FigGetAllocatorForMedia();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v19 = 4294954514;
    goto LABEL_19;
  }

  v15 = v14(a1, @"FHRP_ErrorComment", v13, &cfa);
  if (v15)
  {
    v16 = v15 == -12783;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v19 = v15;
    goto LABEL_19;
  }

  CFError = v21;
  if (v21)
  {
    goto LABEL_18;
  }

  a3 = @"CoreMediaErrorDomain";
  v17 = cfa;
  if (!cfa)
  {
LABEL_12:
    if (cf)
    {
      v17 = CFRetain(cf);
    }

    else
    {
      v17 = 0;
    }

    cfa = v17;
  }

  CFError = FigCreateCFError(a3, a2, v17, 0, 0, 0, 0);
  v21 = CFError;
  if (CFError)
  {
LABEL_18:
    v19 = 0;
    *a5 = CFError;
    goto LABEL_19;
  }

  FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable_cold_1(&v22);
  v19 = v22;
LABEL_19:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v19;
}

uint64_t FigStreamingNetworkErrorGetRecommendedAction(__CFError *a1, uint64_t *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  Code = CFErrorGetCode(a1);
  CFErrorGetDomain(a1);
  v7 = CFErrorCopyUserInfo(a1);
  if (!Code)
  {
    FigStreamingNetworkErrorGetRecommendedAction_cold_1(v14);
    Int32IfPresent = v14[0];
    if (!v7)
    {
      return Int32IfPresent;
    }

    goto LABEL_34;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual() || FigCFEqual())
    {
      v8 = 4;
      v9 = 2;
      if (Code <= -1010)
      {
        if ((Code + 1206) >= 7)
        {
          goto LABEL_29;
        }

        goto LABEL_13;
      }

      if (Code != -1009 && Code != -1005)
      {
        if (Code != 2)
        {
          goto LABEL_29;
        }

        v14[0] = 0;
        Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
        v9 = 2;
        if (Int32IfPresent)
        {
          goto LABEL_33;
        }

        v8 = 4;
        if (!a2)
        {
          goto LABEL_31;
        }

LABEL_30:
        *a2 = v9;
        goto LABEL_31;
      }

      v8 = 2;
    }

    else
    {
      if (FigCFEqual())
      {
        if ((Code + 9829) <= 0x16 && ((1 << (Code + 101)) & 0x410011) != 0)
        {
LABEL_13:
          v8 = 5;
LABEL_28:
          v9 = 2;
LABEL_29:
          if (!a2)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      else
      {
        if (!FigCFEqual())
        {
          v8 = 0;
          goto LABEL_28;
        }

        if (Code == 61)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v8 = 4;
          goto LABEL_28;
        }
      }

      v8 = 4;
    }

    v9 = 3;
    if (!a2)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v8 = 3;
  v9 = 2;
  if (Code > -12939)
  {
    if (Code <= -12669)
    {
      if (Code == -12938)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (Code != -12660)
    {
      if (Code == -12661)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v10 = Code - 44;
    if ((Code + 16852) > 0xC)
    {
      goto LABEL_27;
    }

    if (((1 << v10) & 0x3D) != 0)
    {
      goto LABEL_29;
    }

    if (((1 << v10) & 0xB00) != 0 || ((1 << v10) & 0x1400) == 0)
    {
LABEL_27:
      v8 = 1;
      goto LABEL_28;
    }
  }

  v9 = 1;
  v8 = 1;
  if (a2)
  {
    goto LABEL_30;
  }

LABEL_31:
  Int32IfPresent = 0;
  if (a3)
  {
    *a3 = v8;
  }

LABEL_33:
  if (v7)
  {
LABEL_34:
    CFRelease(v7);
  }

  return Int32IfPresent;
}

__CFString *FigStreamingNetworkErrorGetStringForErrorAction(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown action";
  }

  else
  {
    return off_1E7495770[a1];
  }
}

uint64_t OVCGLObjectCacheGetObjectForSurfaceAndPlane(uint64_t *a1, int a2, uint64_t a3, int a4, _DWORD *a5, BOOL *a6)
{
  if (a2)
  {
    return ovcgloc_getObjectForSurfaceOrAttributes(a1, a2, 0, 0, 0, a3, a4, a5, a6);
  }

  OVCGLObjectCacheGetObjectForSurfaceAndPlane_cold_1(&v7);
  return v7;
}

uint64_t ovcgloc_getObjectForSurfaceOrAttributes(uint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, _DWORD *a8, BOOL *a9)
{
  if (a1)
  {
    v9 = a8;
    if (a8)
    {
      FigSimpleMutexLock();
      if (*a1)
      {
        v16 = v9;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = a1[2];
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        v22 = 1;
        v23 = *a1;
        while (1)
        {
          if (*(v20 + 56))
          {
            if (*v20 == a2 && *(v20 + 32) == a6 && *(v20 + 24) == a3 && *(v20 + 8) == a4 && *(v20 + 16) == a5 && *(v20 + 40) == a7)
            {
              *v16 = *(v20 + 44);
              *(v20 + 48) = mach_absolute_time();
              v25 = a9;
              if (a9)
              {
                goto LABEL_28;
              }

              goto LABEL_29;
            }

            if (*(v20 + 48) < v21)
            {
              v21 = *(v20 + 48);
              v19 = v20;
            }
          }

          else if (!v18)
          {
            v18 = v20;
          }

          v17 = v22++ >= *a1;
          v20 += 64;
          if (!--v23)
          {
            v9 = v16;
            if (v18)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }
      }

      v19 = 0;
LABEL_21:
      ots_destroyCacheEntry(v19);
      --a1[1];
      v18 = v19;
LABEL_22:
      *(v18 + 48) = mach_absolute_time();
      *(v18 + 56) = 1;
      *v18 = a2;
      *(v18 + 24) = a3;
      *(v18 + 8) = a4;
      *(v18 + 16) = a5;
      *(v18 + 32) = a6;
      *(v18 + 40) = a7;
      if (a7 == 36160)
      {
        glGenFramebuffers(1, (v18 + 44));
      }

      else
      {
        v24 = (v18 + 44);
        if (a7 == 36161)
        {
          glGenRenderbuffers(1, v24);
        }

        else
        {
          glGenTextures(1, v24);
        }
      }

      v25 = a9;
      ++a1[1];
      *v9 = *(v18 + 44);
      v17 = 1;
      if (a9)
      {
LABEL_28:
        *v25 = v17;
      }

LABEL_29:
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      ovcgloc_getObjectForSurfaceOrAttributes_cold_1(&v28);
      return v28;
    }
  }

  else
  {
    ovcgloc_getObjectForSurfaceOrAttributes_cold_2(&v29);
    return v29;
  }
}

uint64_t OVCGLObjectCacheGetObjectForAttributesAndPlane(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, _DWORD *a7, BOOL *a8)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        return ovcgloc_getObjectForSurfaceOrAttributes(a1, 0, a2, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_3(&v11);
    return v11;
  }
}

uint64_t OVCGLObjectCacheCreate(int64_t a1, void *a2)
{
  if (!a2)
  {
    OVCGLObjectCacheCreate_cold_5(&v10);
LABEL_10:
    v5 = 0;
LABEL_14:
    v8 = v10;
    goto LABEL_7;
  }

  if (a1 <= 0)
  {
    OVCGLObjectCacheCreate_cold_4(&v10);
    goto LABEL_10;
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040AB73632BuLL);
  v5 = v4;
  if (!v4)
  {
    OVCGLObjectCacheCreate_cold_3(&v10);
    goto LABEL_14;
  }

  *v4 = a1;
  v6 = malloc_type_calloc(a1, 0x40uLL, 0x100004084D3BC0BuLL);
  v5[2] = v6;
  if (!v6)
  {
    OVCGLObjectCacheCreate_cold_2(&v10);
    goto LABEL_14;
  }

  v7 = FigSimpleMutexCreate();
  v5[3] = v7;
  if (!v7)
  {
    OVCGLObjectCacheCreate_cold_1(&v10);
    goto LABEL_14;
  }

  v8 = 0;
  *a2 = v5;
  v5 = 0;
LABEL_7:
  OVCGLObjectCacheDestroy(v5);
  return v8;
}

void OVCGLObjectCacheDestroy(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = 0;
      v3 = 0;
      do
      {
        ots_destroyCacheEntry(*(a1 + 2) + v2);
        ++v3;
        v2 += 64;
      }

      while (v3 < *a1);
    }

    *(a1 + 1) = 0;
    FigSimpleMutexDestroy();
    free(*(a1 + 2));

    free(a1);
  }
}

uint64_t OVCGLObjectCacheFlushObjectsForSurface(unint64_t *a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      v4 = *a1;
      if (*a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[2] + v5;
          if (*(v7 + 56))
          {
            if (*v7 == a2)
            {
              ots_destroyCacheEntry(v7);
              v4 = *a1;
              --a1[1];
            }
          }

          ++v6;
          v5 += 64;
        }

        while (v6 < v4);
      }

      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      OVCGLObjectCacheFlushObjectsForSurface_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    OVCGLObjectCacheFlushObjectsForSurface_cold_2(&v10);
    return v10;
  }
}

double ots_destroyCacheEntry(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(a1 + 40);
    if (v2 == 36160)
    {
      glDeleteFramebuffers(1, (a1 + 44));
    }

    else
    {
      v3 = (a1 + 44);
      if (v2 == 36161)
      {
        glDeleteRenderbuffers(1, v3);
      }

      else
      {
        glDeleteTextures(1, v3);
      }
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

__CFString *FigCaptionDataGetCaptionText(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return &stru_1F0B1AFB8;
  }

  return v2(a1);
}

CFDictionaryRef fcctx_BuildCaptionPropertyInfoDictionary()
{
  values[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6961220];
  values[0] = *MEMORY[0x1E6961208];
  values[1] = v0;
  v1 = *MEMORY[0x1E6961230];
  values[2] = *MEMORY[0x1E6961228];
  values[3] = v1;
  v2 = *MEMORY[0x1E6961278];
  values[4] = *MEMORY[0x1E6961238];
  values[5] = v2;
  values[6] = *MEMORY[0x1E6961258];
  v3 = *MEMORY[0x1E6961460];
  v25[0] = *MEMORY[0x1E6961458];
  v25[1] = v3;
  v4 = *MEMORY[0x1E69614A0];
  v25[2] = *MEMORY[0x1E6961478];
  v25[3] = v4;
  v5 = *MEMORY[0x1E6961470];
  v25[4] = *MEMORY[0x1E6961480];
  v25[5] = v5;
  v6 = *MEMORY[0x1E69614B8];
  v25[6] = *MEMORY[0x1E69614D0];
  v25[7] = v6;
  v7 = *MEMORY[0x1E69614D8];
  v25[8] = *MEMORY[0x1E69614C0];
  v25[9] = v7;
  v8 = *MEMORY[0x1E6961530];
  v25[10] = *MEMORY[0x1E69614E8];
  v25[11] = v8;
  v9 = *MEMORY[0x1E6961528];
  v25[12] = *MEMORY[0x1E6961468];
  v25[13] = v9;
  v25[14] = *MEMORY[0x1E6961538];
  v10 = *MEMORY[0x1E69612F0];
  v24[0] = *MEMORY[0x1E69612E8];
  v24[1] = v10;
  v11 = *MEMORY[0x1E6961308];
  v24[2] = *MEMORY[0x1E6961300];
  v24[3] = v11;
  v12 = *MEMORY[0x1E6961390];
  v24[4] = *MEMORY[0x1E6961320];
  v24[5] = v12;
  v13 = *MEMORY[0x1E6961328];
  v24[6] = *MEMORY[0x1E69613B0];
  v24[7] = v13;
  v14 = *MEMORY[0x1E6961338];
  v24[8] = *MEMORY[0x1E6961330];
  v24[9] = v14;
  v15 = *MEMORY[0x1E69612F8];
  v24[10] = *MEMORY[0x1E6961370];
  v24[11] = v15;
  v16 = *MEMORY[0x1E69613A0];
  v24[12] = *MEMORY[0x1E6961310];
  v24[13] = v16;
  v17 = *MEMORY[0x1E6961388];
  v24[14] = *MEMORY[0x1E6961380];
  v24[15] = v17;
  v18 = *MEMORY[0x1E69613B8];
  v24[16] = *MEMORY[0x1E69612D8];
  v24[17] = v18;
  v24[18] = *MEMORY[0x1E69613C0];
  keys[0] = @"caption";
  v19 = *MEMORY[0x1E695E480];
  v20 = MEMORY[0x1E695E9C0];
  v22[0] = CFArrayCreate(*MEMORY[0x1E695E480], values, 7, MEMORY[0x1E695E9C0]);
  keys[1] = @"style";
  v22[1] = CFArrayCreate(v19, v25, 15, v20);
  keys[2] = @"region";
  v22[2] = CFArrayCreate(v19, v24, 19, v20);
  result = CFDictionaryCreate(v19, keys, v22, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sCAPRPCaptionPropertyInfoDictionary = result;
  return result;
}

uint64_t fcctx_createColorRGBAFromColorStyleDynamicProperty(uint64_t a1, uint64_t *a2)
{
  result = FigCaptionDynamicStyleGetInitialValue();
  if (result)
  {
    v4 = result;
    TypeID = CGColorGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      ARGBColorArrayFromCGColor = FigTextMarkupCreateARGBColorArrayFromCGColor();
      result = 0;
      *a2 = ARGBColorArrayFromCGColor;
    }

    else
    {
      fcctx_createColorRGBAFromColorStyleDynamicProperty_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void addOneKeyAndValueApplyFunction(void *key, void *value, CFMutableDictionaryRef *a3)
{
  if (a3)
  {
    if (*a3)
    {
      CFDictionaryAddValue(*a3, key, value);
    }
  }
}

void OUTLINED_FUNCTION_2_170()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_9_71(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x358];

  return MEMORY[0x1EEDBD230](v4, a1, a2);
}

__n128 OUTLINED_FUNCTION_14_60()
{
  result = *&STACK[0x380];
  v2 = *&STACK[0x390];
  *(v0 - 128) = *&STACK[0x380];
  *(v0 - 112) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_53()
{

  return FigTextMarkupDimensionCopyAsSimplifiedDictionary();
}

uint64_t OUTLINED_FUNCTION_16_49()
{

  return FigTextMarkupDimensionCopyAsSimplifiedDictionary();
}

uint64_t FigVideoCompositorCreateOpenGL(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  memset(&v22, 0, sizeof(v22));
  FigVideoCompositorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v17 = v5;
    goto LABEL_51;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 516) = 1065353216;
  *(DerivedStorage + 384) = 1;
  *(DerivedStorage + 760) = 0x7FFFFFFFLL;
  *(DerivedStorage + 792) = 0x7FFFFFFFLL;
  *(DerivedStorage + 592) = 0;
  *(DerivedStorage + 596) = 1;
  v22.version = 0;
  v22.retain = ovc_cloneInFlightEntry;
  v22.copyDescription = 0;
  v22.equal = 0;
  v22.release = ovc_freeInFlightEntry;
  v7 = CFDictionaryCreateMutable(a1, 0, 0, &v22);
  *(DerivedStorage + 600) = v7;
  if (!v7)
  {
    v21 = 4267;
LABEL_50:
    FigVideoCompositorCreateOpenGL_cold_1(v21, &v26);
    v17 = v26;
    goto LABEL_51;
  }

  v8 = FigSemaphoreCreate();
  *(DerivedStorage + 608) = v8;
  if (!v8)
  {
    v21 = 4270;
    goto LABEL_50;
  }

  *(DerivedStorage + 616) = 0;
  v9 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 632) = v9;
  if (!v9)
  {
    v21 = 4274;
    goto LABEL_50;
  }

  v10 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 640) = v10;
  if (!v10)
  {
    v21 = 4277;
    goto LABEL_50;
  }

  v11 = cf;
  v12 = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  v13 = OVCCreateOpenGLContext(&v24);
  if (v13)
  {
    goto LABEL_44;
  }

  v13 = OVCSetCurrentOpenGLContext(v24);
  if (v13)
  {
    goto LABEL_44;
  }

  String = glGetString(0x1F03u);
  if (String)
  {
    v15 = strstr(String, "GL_EXT_texture_rg") != 0;
  }

  else
  {
    v15 = 0;
  }

  *(v12 + 521) = v15;
  v28[0] = 0;
  v26 = 0u;
  v27 = 0u;
  *shader = 0;
  v16 = OVCCreateShader("uniform mat3 affine_transform; \n \t\n \tattribute vec2 vertex_coord; \nattribute vec2 texture_coord0; \n\nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tvec3 position_2D = affine_transform * vec3( vertex_coord, 1.0); \n \t\tgl_Position = vec4( position_2D.xy, 0.0, 1.0); \nfragment_texture_coord0 = texture_coord0; \n}", 0x8B31u, shader);
  if (!v16)
  {
    v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nvarying vec2 fragment_texture_coord0; \nuniform float opacity; \n \t\n \tvarying vec2 fragment_texture_coord; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 local_color = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\tgl_FragColor = local_color * opacity;\t\t\t// color components are premultiplied \n \t}", 0x8B30u, &v26);
    if (!v16)
    {
      v16 = ovc_createAndConfigureGLProgram((v12 + 24), shader[0], v26);
      if (!v16)
      {
        v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nuniform sampler2D source_buffer_plane1 ; \nvarying vec2 fragment_texture_coord0; \nuniform mat4 color_matrix; \n \tuniform float opacity; \n \tuniform int g_index; // can be 1 or 3 depending on the texture format \n \t\n \tvoid main() \n \t{ \n \t\tvec4 local_color_y = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\tvec4 local_color_uv = texture2D( source_buffer_plane1, fragment_texture_coord0); \n \t\tvec4 local_color_yuv = vec4( local_color_y.r, local_color_uv.r, local_color_uv[g_index], 1.0); \n \t\t\n \t\tvec4 local_color_rgba = color_matrix * local_color_yuv; \n \t\t\n \t\tgl_FragColor = local_color_rgba * opacity;\t\t\t// color components are premultiplied \n \t}", 0x8B30u, &v26 + 1);
        if (!v16)
        {
          v16 = ovc_createAndConfigureGLProgram((v12 + 60), shader[0], DWORD1(v26));
          if (!v16)
          {
            if (!*(v12 + 521))
            {
              v17 = 0;
              goto LABEL_35;
            }

            v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nuniform sampler2D source_buffer_plane1 ; \nvarying vec2 fragment_texture_coord0; \nuniform mat4 color_matrix; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 color_vector = vec4( color_matrix[0][0], color_matrix[1][0], color_matrix[2][0], color_matrix[3][0]);\n \t\tvec4 local_color_y = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\tvec4 local_color_uv = texture2D( source_buffer_plane1, fragment_texture_coord0); \n \t\tvec4 local_color_yuv = vec4( local_color_y.r, local_color_uv.r, local_color_uv.g, 1.0); \n \t\t\n \t\tgl_FragColor.r = dot( local_color_yuv, color_vector); \n \t}", 0x8B30u, &v26 + 2);
            if (!v16)
            {
              v16 = ovc_createAndConfigureGLProgram((v12 + 96), shader[0], DWORD2(v26));
              if (!v16)
              {
                v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nuniform sampler2D source_buffer_plane1 ; \nvarying vec2 fragment_texture_coord0; \nuniform mat4 color_matrix; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 color_vector_u = vec4( color_matrix[0][1], color_matrix[1][1], color_matrix[2][1], color_matrix[3][1]);\n \t\tvec4 color_vector_v = vec4( color_matrix[0][2], color_matrix[1][2], color_matrix[2][2], color_matrix[3][2]);\n \t\tvec4 local_color_y = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\tvec4 local_color_uv = texture2D( source_buffer_plane1, fragment_texture_coord0); \n \t\tvec4 local_color_yuv = vec4( local_color_y.r, local_color_uv.r, local_color_uv.g, 1.0); \n \t\t\n \t\tgl_FragColor.r = dot( local_color_yuv, color_vector_u); \n \t\tgl_FragColor.g = dot( local_color_yuv, color_vector_v); \n \t}", 0x8B30u, (&v26 | 0xC));
                if (!v16)
                {
                  v16 = ovc_createAndConfigureGLProgram((v12 + 132), shader[0], HIDWORD(v26));
                  if (!v16)
                  {
                    v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tgl_FragColor.r = texture2D( source_buffer_plane0, fragment_texture_coord0).r; \n \t}", 0x8B30u, &v27);
                    if (!v16)
                    {
                      v16 = ovc_createAndConfigureGLProgram((v12 + 168), shader[0], v27);
                      if (!v16)
                      {
                        v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane1 ; \nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tgl_FragColor.rg = texture2D( source_buffer_plane1, fragment_texture_coord0).rg; \n \t\t\n \t}", 0x8B30u, &v27 + 1);
                        if (!v16)
                        {
                          v16 = ovc_createAndConfigureGLProgram((v12 + 204), shader[0], DWORD1(v27));
                          if (!v16)
                          {
                            v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nvarying vec2 fragment_texture_coord0; \nuniform mat4 color_matrix; \n \tuniform float opacity; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 color_vector = vec4( color_matrix[0][0], color_matrix[1][0], color_matrix[2][0], color_matrix[3][0]);\n \t\tvec4 local_color_rgba = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\t\n \t\tgl_FragColor.r = dot( vec4( local_color_rgba.rgb, 1.0), color_vector); // no premultiplication here  \n \t\tgl_FragColor.a = local_color_rgba.a * opacity; \n \t}", 0x8B30u, &v27 + 2);
                            if (!v16)
                            {
                              v16 = ovc_createAndConfigureGLProgram((v12 + 240), shader[0], DWORD2(v27));
                              if (!v16)
                              {
                                v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nvarying vec2 fragment_texture_coord0; \nuniform mat4 color_matrix; \n \tuniform float opacity; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 color_vector_u = vec4( color_matrix[0][1], color_matrix[1][1], color_matrix[2][1], color_matrix[3][1]);\n \t\tvec4 color_vector_v = vec4( color_matrix[0][2], color_matrix[1][2], color_matrix[2][2], color_matrix[3][2]);\n \t\tvec4 local_color_rgba = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\tvec4 local_color_rgb = vec4( local_color_rgba.rgb, 1.0); \n \t\t\n \t\tgl_FragColor.r = dot( vec4( local_color_rgba.rgb, 1.0), color_vector_u); // no premultiplication here  \n \t\tgl_FragColor.g = dot( vec4( local_color_rgba.rgb, 1.0), color_vector_v); // no premultiplication here  \n \t\tgl_FragColor.a = local_color_rgba.a * opacity; \n \t}", 0x8B30u, &v27 + 3);
                                if (!v16)
                                {
                                  v16 = ovc_createAndConfigureGLProgram((v12 + 276), shader[0], HIDWORD(v27));
                                  if (!v16)
                                  {
                                    v16 = OVCCreateShader("attribute vec2 vertex_coord; \nattribute vec2 texture_coord0; \n\nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tgl_Position = vec4( vertex_coord.xy, 0.0, 1.0); \nfragment_texture_coord0 = texture_coord0; \n}", 0x8B31u, &shader[1]);
                                    if (!v16)
                                    {
                                      v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tgl_FragColor.r = texture2D( source_buffer_plane0, fragment_texture_coord0).r; \n \t}", 0x8B30u, v28);
                                      if (!v16)
                                      {
                                        v16 = ovc_createAndConfigureGLProgram((v12 + 312), shader[1], v28[0]);
                                        if (!v16)
                                        {
                                          v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane1 ; \nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tgl_FragColor.rg = texture2D( source_buffer_plane1, fragment_texture_coord0).rg; \n \t}", 0x8B30u, v28 + 1);
                                          if (!v16)
                                          {
                                            v16 = ovc_createAndConfigureGLProgram((v12 + 348), shader[1], HIDWORD(v28[0]));
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v17 = v16;
LABEL_35:
  glDeleteShader(shader[0]);
  glDeleteShader(shader[1]);
  for (i = 0; i != 40; i += 4)
  {
    glDeleteShader(*(&v26 + i));
  }

  if (v17)
  {
    goto LABEL_41;
  }

  v13 = OVCGLObjectCacheCreate(60, (v12 + 576));
  if (v13)
  {
LABEL_44:
    v17 = v13;
    goto LABEL_41;
  }

  v19 = CFGetAllocator(v11);
  v17 = FigOVCGLObjectCacheWrapperCreate(v19, *(v12 + 576), (v12 + 584));
  if (!v17)
  {
    *v12 = v24;
    v24 = 0;
  }

LABEL_41:
  OVCDestroyOpenGLContext(v24);
  OVCSetCurrentOpenGLContext(0);
  if (!v17)
  {
    *a3 = cf;
    return v17;
  }

LABEL_51:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t ovc_cloneInFlightEntry(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 24, 0x1060040078847BFLL, 0);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  if (*v3)
  {
    CFRetain(*v3);
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    CFRetain(v5);
  }

  return v3;
}

void ovc_freeInFlightEntry(CFAllocatorRef allocator, CFTypeRef *ptr)
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

void openglVideoCompositor_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v2 = *(v1 + 640);
  if (v2)
  {
    if (*(v1 + 608))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __openglVideoCompositor_flush_block_invoke;
      block[3] = &unk_1E7482510;
      block[4] = &v22;
      block[5] = v1;
      dispatch_sync(v2, block);
      if (v23[3] >= 1)
      {
        do
        {
          FigSemaphoreWaitRelative();
          v3 = *(v1 + 640);
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __openglVideoCompositor_flush_block_invoke_2;
          v20[3] = &unk_1E7482510;
          v20[4] = &v22;
          v20[5] = v1;
          dispatch_sync(v3, v20);
        }

        while (v23[3] > 0);
      }
    }
  }

  _Block_object_dispose(&v22, 8);
  v4 = *(DerivedStorage + 632);
  if (v4)
  {
    dispatch_sync(v4, &__block_literal_global_110);
    v5 = *(DerivedStorage + 632);
    if (v5)
    {
      dispatch_release(v5);
    }

    *(DerivedStorage + 632) = 0;
  }

  v6 = *(DerivedStorage + 640);
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_12_1);
    v7 = *(DerivedStorage + 640);
    if (v7)
    {
      dispatch_release(v7);
    }

    *(DerivedStorage + 640) = 0;
  }

  if (*(DerivedStorage + 608))
  {
    FigSemaphoreDestroy();
    *(DerivedStorage + 608) = 0;
  }

  if (OVCSetCurrentOpenGLContext(*DerivedStorage))
  {
    glBindFramebuffer(0x8D40u, 0);
    glDeleteFramebuffers(2, (DerivedStorage + 16));
    glDeleteTextures(2, (DerivedStorage + 388));
    for (i = 24; i != 384; i += 36)
    {
      glDeleteProgram(*(DerivedStorage + i));
    }

    glFinish();
  }

  OVCBicubicPrescalerDestroy(*(DerivedStorage + 8));
  FigOVCGLObjectCacheWrapperInvalidate(*(DerivedStorage + 584));
  OVCGLObjectCacheDestroy(*(DerivedStorage + 576));
  v9 = *(DerivedStorage + 584);
  if (v9)
  {
    CFRelease(v9);
  }

  OVCSetCurrentOpenGLContext(0);
  OVCDestroyOpenGLContext(*DerivedStorage);
  v10 = *(DerivedStorage + 568);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 552);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 528);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 536);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 544);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 488);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 496);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(DerivedStorage + 504);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 560);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 600);
  if (v19)
  {
    CFRelease(v19);
  }

  ovc_releaseLayerArrays();
}

void sub_1967E46F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *openglVideoCompositor_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  cf = 0;
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositor_OpenGL %p retainCount: %ld allocator: %p ", a1, v4, v5);
  ovc_copyPerformanceDictionary(a1, &cf);
  if (cf)
  {
    CFStringAppendFormat(Mutable, 0, @", performanceDictionary %@", cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t openglVideoCompositor_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"RenderDimensions"))
  {
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 424));
LABEL_3:
    *a4 = DictionaryRepresentation;
    return 0;
  }

  if (CFEqual(a2, @"RenderPixelAspectRatio"))
  {
    v10 = *(DerivedStorage + 496);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"RenderEdgeProcessingPixels"))
  {
    v10 = *(DerivedStorage + 504);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredAttributes"))
  {
    v10 = *(DerivedStorage + 552);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredYCbCrMatrix"))
  {
    v10 = *(DerivedStorage + 528);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredColorPrimaries"))
  {
    v10 = *(DerivedStorage + 544);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredTransferFunction"))
  {
    v10 = *(DerivedStorage + 536);
LABEL_16:
    *a4 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    return 0;
  }

  if (CFEqual(a2, @"SourcePixelBufferAttributes"))
  {

    return ovc_createPixelBufferAttributesDictionary(a3, a4);
  }

  if (CFEqual(a2, @"RenderScale"))
  {
    DictionaryRepresentation = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (DerivedStorage + 516));
    goto LABEL_3;
  }

  if (CFEqual(a2, @"CanApplyRenderScale"))
  {
    v12 = MEMORY[0x1E695E4D0];
    goto LABEL_33;
  }

  if (CFEqual(a2, @"HighQualityRendering"))
  {
    v12 = MEMORY[0x1E695E4D0];
    v13 = *(DerivedStorage + 520);
    goto LABEL_31;
  }

  if (CFEqual(a2, @"WaitForBufferCompletion"))
  {
    v12 = MEMORY[0x1E695E4D0];
    v13 = *(DerivedStorage + 592);
LABEL_31:
    if (!v13)
    {
      v12 = MEMORY[0x1E695E4C0];
    }

LABEL_33:
    DictionaryRepresentation = *v12;
    if (!*v12)
    {
      goto LABEL_3;
    }

LABEL_34:
    DictionaryRepresentation = CFRetain(DictionaryRepresentation);
    goto LABEL_3;
  }

  if (CFEqual(a2, @"PixelBufferPoolSharingID"))
  {
    DictionaryRepresentation = *(DerivedStorage + 560);
    if (!DictionaryRepresentation)
    {
      goto LABEL_3;
    }

    goto LABEL_34;
  }

  if (CFEqual(a2, @"LoopTimeRange"))
  {
    v14 = *MEMORY[0x1E695E480];
    v15 = *(DerivedStorage + 712);
    *&v16.start.value = *(DerivedStorage + 696);
    *&v16.start.epoch = v15;
    *&v16.duration.timescale = *(DerivedStorage + 728);
    DictionaryRepresentation = CMTimeRangeCopyAsDictionary(&v16, v14);
    goto LABEL_3;
  }

  if (CFEqual(a2, @"PerformanceDictionary"))
  {
    ovc_copyPerformanceDictionary(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"SourceColorConformanceCapabilityLevel"))
  {
    DictionaryRepresentation = FigCFNumberCreateUInt32();
    goto LABEL_3;
  }

  if (CFEqual(a2, @"SupportsSpatialSourceBuffers"))
  {
    *a4 = *MEMORY[0x1E695E4C0];
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t openglVideoCompositor_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"RenderDimensions", a2))
  {
    size.start.value = 0;
    *&size.start.timescale = 0;
    if (a3)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(a3) && CGSizeMakeWithDictionaryRepresentation(a3, &size) && *&size.start.value > 0.0 && *&size.start.timescale > 0.0)
      {
        *(DerivedStorage + 424) = *&size.start.value;
LABEL_42:
        v21 = *(DerivedStorage + 488);
        if (v21)
        {
          CFRelease(v21);
          *(DerivedStorage + 488) = 0;
        }

        v22 = *(DerivedStorage + 496);
        v23 = *(DerivedStorage + 504);
        v24 = *(DerivedStorage + 516);
LABEL_45:
        v14 = FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture(v22, v23, (DerivedStorage + 408), (DerivedStorage + 416), DerivedStorage + 440, (DerivedStorage + 488), *(DerivedStorage + 424), *(DerivedStorage + 432), v24);
        *(DerivedStorage + 384) = 1;
        v25 = *(DerivedStorage + 568);
        if (v25)
        {
          CFRelease(v25);
          *(DerivedStorage + 568) = 0;
        }

        return v14;
      }
    }

    goto LABEL_19;
  }

  if (CFEqual(@"RenderPixelAspectRatio", a2))
  {
    if (!a3)
    {
      v13 = *(DerivedStorage + 496);
      *(DerivedStorage + 496) = 0;
      if (!v13)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v7 = CFDictionaryGetTypeID();
    if (v7 != CFGetTypeID(a3) || (Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6965EF0]), v9 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965F00]), LODWORD(size.start.value) = 0, valuePtr = 0, !Value) || (v10 = v9, v11 = CFNumberGetTypeID(), v11 != CFGetTypeID(Value)) || (CFNumberGetValue(Value, kCFNumberIntType, &size), SLODWORD(size.start.value) < 1) || !v10 || (v12 = CFNumberGetTypeID(), v12 != CFGetTypeID(v10)) || (CFNumberGetValue(v10, kCFNumberIntType, &valuePtr), valuePtr < 1))
    {
LABEL_19:
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    v13 = *(DerivedStorage + 496);
    *(DerivedStorage + 496) = a3;
    goto LABEL_35;
  }

  if (CFEqual(@"RenderEdgeProcessingPixels", a2))
  {
    if (a3)
    {
      v16 = CFArrayGetTypeID();
      if (v16 == CFGetTypeID(a3) && CFArrayGetCount(a3) == 4)
      {
        v17 = 0;
        while (1)
        {
          v18 = CFNumberGetTypeID();
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v17);
          if (v18 != CFGetTypeID(ValueAtIndex))
          {
            break;
          }

          if (++v17 == 4)
          {
            v13 = *(DerivedStorage + 504);
            *(DerivedStorage + 504) = a3;
            goto LABEL_35;
          }
        }
      }

      goto LABEL_37;
    }

    v13 = *(DerivedStorage + 504);
    *(DerivedStorage + 504) = 0;
    if (!v13)
    {
      goto LABEL_42;
    }

LABEL_41:
    CFRelease(v13);
    goto LABEL_42;
  }

  if (!CFEqual(@"DestinationPixelBufferDesiredAttributes", a2))
  {
    if (CFEqual(@"DestinationPixelBufferDesiredYCbCrMatrix", a2))
    {
      if (!a3)
      {
        v14 = *(DerivedStorage + 528);
        *(DerivedStorage + 528) = 0;
LABEL_73:
        if (!v14)
        {
          return v14;
        }

        CFRelease(v14);
        return 0;
      }

      v26 = CFStringGetTypeID();
      if (v26 != CFGetTypeID(a3))
      {
        goto LABEL_37;
      }

      v14 = *(DerivedStorage + 528);
      *(DerivedStorage + 528) = a3;
LABEL_64:
      CFRetain(a3);
      goto LABEL_73;
    }

    if (CFEqual(@"DestinationPixelBufferDesiredColorPrimaries", a2))
    {
      if (!a3)
      {
        v14 = *(DerivedStorage + 544);
        *(DerivedStorage + 544) = 0;
        goto LABEL_73;
      }

      v27 = CFStringGetTypeID();
      if (v27 != CFGetTypeID(a3))
      {
        goto LABEL_37;
      }

      v14 = *(DerivedStorage + 544);
      *(DerivedStorage + 544) = a3;
      goto LABEL_64;
    }

    if (CFEqual(@"DestinationPixelBufferDesiredTransferFunction", a2))
    {
      if (!a3)
      {
        v14 = *(DerivedStorage + 536);
        *(DerivedStorage + 536) = 0;
        goto LABEL_73;
      }

      v28 = CFStringGetTypeID();
      if (v28 != CFGetTypeID(a3))
      {
        goto LABEL_37;
      }

      v14 = *(DerivedStorage + 536);
      *(DerivedStorage + 536) = a3;
      goto LABEL_64;
    }

    if (CFEqual(@"RenderScale", a2))
    {
      LODWORD(size.start.value) = 1065353216;
      if (!a3)
      {
        v24 = 1.0;
        goto LABEL_87;
      }

      v29 = CFGetTypeID(a3);
      if (v29 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberFloatType, &size);
        v24 = *&size.start.value;
        if (*&size.start.value > 0.0)
        {
          goto LABEL_87;
        }

        fig_log_get_emitter();
      }

      else
      {
        fig_log_get_emitter();
      }

      v14 = FigSignalErrorAtGM();
      if (v14)
      {
        return v14;
      }

      v24 = *&size.start.value;
LABEL_87:
      *(DerivedStorage + 516) = v24;
      v32 = *(DerivedStorage + 488);
      if (v32)
      {
        CFRelease(v32);
        *(DerivedStorage + 488) = 0;
        v24 = *(DerivedStorage + 516);
      }

      v22 = *(DerivedStorage + 496);
      v23 = *(DerivedStorage + 504);
      goto LABEL_45;
    }

    if (CFEqual(@"HighQualityRendering", a2))
    {
      if (!a3)
      {
        v14 = 0;
        *(DerivedStorage + 520) = 0;
        return v14;
      }

      v30 = CFBooleanGetTypeID();
      if (v30 == CFGetTypeID(a3))
      {
        v31 = CFBooleanGetValue(a3);
        if (!v31 || *(DerivedStorage + 521))
        {
          v14 = 0;
          *(DerivedStorage + 520) = v31;
          return v14;
        }
      }

      goto LABEL_37;
    }

    if (CFEqual(@"ThrottleForBackground", a2))
    {
      if (a3)
      {
        v33 = CFGetTypeID(a3);
        if (v33 != CFBooleanGetTypeID())
        {
          return 0;
        }

        v34 = CFBooleanGetValue(a3);
      }

      else
      {
        v34 = 0;
      }

      *(DerivedStorage + 624) = v34;
      openglVideoCompositor_setOpenGLContextPriority();
      return 0;
    }

    if (CFEqual(@"ClientPID", a2))
    {
      if (!a3)
      {
        *(DerivedStorage + 620) = 0;
        goto LABEL_115;
      }

      v35 = CFGetTypeID(a3);
      if (v35 != CFNumberGetTypeID())
      {
        return 0;
      }

      v36 = (DerivedStorage + 620);
    }

    else
    {
      if (!CFEqual(@"WorkerThreadPriority", a2))
      {
        if (CFEqual(@"WaitForBufferCompletion", a2))
        {
          if (!a3 || (v38 = CFBooleanGetTypeID(), v38 == CFGetTypeID(a3)))
          {
            v14 = 0;
            if (FigCFEqual())
            {
              *(DerivedStorage + 592) = 1;
            }

            else
            {
              *(DerivedStorage + 592) = 0;
            }

            return v14;
          }

          goto LABEL_37;
        }

        if (!CFEqual(@"PixelBufferPoolSharingID", a2))
        {
          if (CFEqual(@"LoopTimeRange", a2))
          {
            if (!a3)
            {
              v14 = 0;
              v42 = MEMORY[0x1E6960C98];
              v43 = *(MEMORY[0x1E6960C98] + 16);
              *(DerivedStorage + 696) = *MEMORY[0x1E6960C98];
              *(DerivedStorage + 712) = v43;
              *(DerivedStorage + 728) = *(v42 + 32);
              return v14;
            }

            v39 = CFGetTypeID(a3);
            if (v39 == CFDictionaryGetTypeID())
            {
              v40 = (DerivedStorage + 696);
              CMTimeRangeMakeFromDictionary(&size, a3);
              v14 = 0;
              v41 = *&size.start.epoch;
              *v40 = *&size.start.value;
              v40[1] = v41;
              v40[2] = *&size.duration.timescale;
              return v14;
            }
          }

          goto LABEL_37;
        }

        v14 = *(DerivedStorage + 560);
        *(DerivedStorage + 560) = a3;
        if (!a3)
        {
          goto LABEL_73;
        }

        goto LABEL_64;
      }

      if (!a3)
      {
        *(DerivedStorage + 616) = 0;
        goto LABEL_115;
      }

      v37 = CFGetTypeID(a3);
      if (v37 != CFNumberGetTypeID())
      {
        return 0;
      }

      v36 = (DerivedStorage + 616);
    }

    CFNumberGetValue(a3, kCFNumberSInt32Type, v36);
LABEL_115:
    openglVideoCompositor_setDispatchQueueClientPidAndThreadPriority();
    return 0;
  }

  if (!a3)
  {
    v13 = *(DerivedStorage + 552);
    *(DerivedStorage + 552) = 0;
    if (!v13)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v20 = CFDictionaryGetTypeID();
  if (v20 == CFGetTypeID(a3))
  {
    v13 = *(DerivedStorage + 552);
    *(DerivedStorage + 552) = a3;
LABEL_35:
    CFRetain(a3);
    if (!v13)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_37:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void ovc_releaseLayerArrays()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 664);
  if (v2)
  {
    v3 = *(DerivedStorage + 672);
    do
    {
      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }

      ++v3;
      --v2;
    }

    while (v2);
    v4 = *(v1 + 664);
    if (v4)
    {
      v5 = *(v1 + 680);
      do
      {
        if (*v5)
        {
          CFRelease(*v5);
          *v5 = 0;
        }

        ++v5;
        --v4;
      }

      while (v4);
      v6 = *(v1 + 664);
      if (v6)
      {
        v7 = *(v1 + 688);
        do
        {
          if (*v7)
          {
            CFRelease(*v7);
            *v7 = 0;
          }

          ++v7;
          --v6;
        }

        while (v6);
      }
    }
  }

  free(*(v1 + 672));
  *(v1 + 672) = 0;
  free(*(v1 + 680));
  *(v1 + 680) = 0;
  free(*(v1 + 688));
  *(v1 + 688) = 0;
  *(v1 + 664) = 0;
}

CFIndex __openglVideoCompositor_flush_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 600));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFIndex __openglVideoCompositor_flush_block_invoke_2(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 600));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ovc_copyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v27 = 0;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v8 = 0.0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    valuePtr = *(DerivedStorage + 816) - *(DerivedStorage + 756);
    keys[0] = @"NumberOfSinglePassCompositions";
    v4 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    keys[1] = @"NumberOfMultiPassCompositions";
    values[1] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 756));
    keys[2] = @"NumberOfSourceFramesPassedThrough";
    values[2] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 744));
    keys[3] = @"TotalNumberOfLayers";
    values[3] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 748));
    keys[4] = @"TotalNumberOfPreProcessedLayers";
    values[4] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 752));
    if (*(DerivedStorage + 784) < 1)
    {
      v5 = 5;
    }

    else
    {
      v8 = (*(DerivedStorage + 760) / 1000000.0);
      *&v20 = 0x1F0B4DA98;
      *&v11 = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v8 = (*(DerivedStorage + 768) / 1000000.0);
      *(&v20 + 1) = 0x1F0B4DAB8;
      *(&v11 + 1) = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v8 = (*(DerivedStorage + 776) / (*(DerivedStorage + 784) * 1000000.0));
      *&v21 = 0x1F0B4DAD8;
      *&v12 = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v5 = 8;
    }

    if (*(DerivedStorage + 816) >= 1)
    {
      v8 = (*(DerivedStorage + 792) / 1000000.0);
      keys[v5] = @"MinProcessingTime";
      values[v5] = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v8 = (*(DerivedStorage + 800) / 1000000.0);
      keys[v5 + 1] = @"MaxProcessingTime";
      values[v5 + 1] = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v8 = (*(DerivedStorage + 808) / (*(DerivedStorage + 816) * 1000000.0));
      keys[v5 | 2] = @"AverageProcessingTime";
      values[v5 | 2] = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v5 += 3;
    }

    v6 = v5;
    v7 = values;
    *a2 = CFDictionaryCreate(v4, keys, values, v6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    do
    {
      if (*v7)
      {
        CFRelease(*v7);
      }

      ++v7;
      --v6;
    }

    while (v6);
  }
}

uint64_t ovc_createPixelBufferAttributesDictionary(const __CFAllocator *a1, void *a2)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  qmemcpy(valuePtr, "v024f024ARGB", 12);
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v5 = Mutable;
  v6 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (v6)
  {
    v7 = v6;
    v8 = *MEMORY[0x1E695E480];
    v9 = valuePtr;
    v10 = 3;
    do
    {
      v11 = CFNumberCreate(v8, kCFNumberSInt32Type, v9);
      if (!v11)
      {
        CFRelease(v5);
        PixelBufferAttributesWithIOSurfaceSupport = 4294954510;
        v5 = v7;
        goto LABEL_11;
      }

      v12 = v11;
      CFArrayAppendValue(v7, v11);
      CFRelease(v12);
      v9 = (v9 + 4);
      --v10;
    }

    while (v10);
    CFDictionaryAddValue(v5, *MEMORY[0x1E6966130], v7);
    CFRelease(v7);
    FigGetAlignmentForIOSurfaceOutput();
    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    if (!PixelBufferAttributesWithIOSurfaceSupport)
    {
      *a2 = 0;
    }
  }

  else
  {
    PixelBufferAttributesWithIOSurfaceSupport = 4294954510;
  }

LABEL_11:
  CFRelease(v5);
  return PixelBufferAttributesWithIOSurfaceSupport;
}

void ovc_CFDictionarySetInt(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t openglVideoCompositor_setOpenGLContextPriority()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 624) == 0;
  v2 = *DerivedStorage;

  return OVCSetOpenGLContextPriority(v2, v1);
}

uint64_t openglVideoCompositor_setDispatchQueueClientPidAndThreadPriority()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 632))
  {
    FigDispatchQueueSetPriorityAndClientPID();
  }

  result = *(DerivedStorage + 640);
  if (result)
  {

    return FigDispatchQueueSetPriorityAndClientPID();
  }

  return result;
}

uint64_t openglVideoCompositor_RenderFrame(const void *a1, int a2, uint64_t a3, __CVBuffer **a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, CGFloat a18)
{
  v308 = *MEMORY[0x1E69E9840];
  v294 = 0;
  v295 = &v294;
  v296 = 0x2020000000;
  v297 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  pixelBufferOut = 0;
  v301 = xmmword_196E75ED0;
  memset(&v292, 0, sizeof(v292));
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v11 = *(DerivedStorage + 632);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __openglVideoCompositor_RenderFrame_block_invoke;
  block[3] = &unk_1E7482510;
  block[4] = &v294;
  block[5] = DerivedStorage;
  dispatch_sync(v11, block);
  if (*(v295 + 6))
  {
    goto LABEL_364;
  }

  if (*(DerivedStorage + 424) <= 0.0 || *(DerivedStorage + 432) <= 0.0)
  {
    fig_log_get_emitter();
    ColorMatrixForPixelFormatConversion = FigSignalErrorAtGM();
    v125 = 0;
    v273 = 0;
    v274 = 0;
    valuea = 0;
    v280 = 0;
    goto LABEL_359;
  }

  v12 = OVCSetCurrentOpenGLContext(*DerivedStorage);
  *(v295 + 6) = v12;
  if (v12)
  {
LABEL_364:
    v125 = 0;
    v273 = 0;
    v274 = 0;
    valuea = 0;
    v280 = 0;
    goto LABEL_318;
  }

  FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings(*(DerivedStorage + 584));
  if (*(DerivedStorage + 568))
  {
    goto LABEL_27;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  v303.a = 0.0;
  t1.a = 0.0;
  ptr.a = 0.0;
  v299 = 0;
  v298 = 0;
  v14 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  LODWORD(valuePtr.origin.x) = *(v13 + 408);
  v16 = *MEMORY[0x1E695E480];
  v17 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966208], v17);
  CFRelease(v17);
  LODWORD(v290) = *(v13 + 416);
  v18 = CFNumberCreate(v16, kCFNumberSInt32Type, &v290);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660B8], v18);
  CFRelease(v18);
  v19 = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
  v20 = v19;
  if (v19)
  {
    v21 = *(v13 + 521);
    if (v21)
    {
      appended = ovc_appendIntToArray(v19, 875704438);
      if (appended)
      {
        goto LABEL_16;
      }

      v21 = 1;
    }

    *(v13 + 512) = v21;
    appended = ovc_appendIntToArray(v20, 1111970369);
    if (!appended)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6966130], v20);
      FigGetAlignmentForIOSurfaceOutput();
      ovc_CFDictionarySetInt(Mutable, *MEMORY[0x1E6966140], SHIDWORD(v299));
      ovc_CFDictionarySetInt(Mutable, *MEMORY[0x1E6966020], v299);
      appended = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
      if (!appended)
      {
        appended = VTCreatePixelBufferPoolAttributesWithName();
        if (!appended)
        {
          CFGetAllocator(a1);
          v23 = (v13 + 568);
          appended = VTBuildPixelBufferPools2();
          if (!appended)
          {
            appended = 0;
            if (!*v23)
            {
              *v23 = ptr.a;
              LOBYTE(v298) = HIBYTE(v298);
              ptr.a = 0.0;
            }
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    appended = FigSignalErrorAtGM();
  }

LABEL_16:
  if (*&v303.a)
  {
    CFRelease(*&v303.a);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (*&ptr.a)
  {
    CFRelease(*&ptr.a);
  }

  if (*&t1.a)
  {
    CFRelease(*&t1.a);
  }

  *(v295 + 6) = appended;
  if (appended)
  {
    goto LABEL_364;
  }

LABEL_27:
  v24 = CMBaseObjectGetDerivedStorage();
  t1.a = 0.0;
  *&t1.b = &t1;
  *&t1.c = 0x2020000000;
  t1.d = 0.0;
  v25 = *(v24 + 640);
  *&v303.a = MEMORY[0x1E69E9820];
  *&v303.b = 3221225472;
  *&v303.c = __ovc_adjustMaxInFlightBuffers_block_invoke;
  *&v303.d = &unk_1E7482510;
  *&v303.tx = &t1;
  *&v303.ty = v24;
  dispatch_sync(v25, &v303);
  v26 = 0;
  if (!*(v24 + 592))
  {
    v27 = *(*&t1.b + 24);
    v28 = 1;
    if (v27 >= 0)
    {
      v28 = v27 + 1;
    }

    v29 = v27 < 3;
    v26 = 3;
    if (v29)
    {
      v26 = v28;
    }
  }

  *(*&t1.b + 24) = v26;
  if (v26 < *(v24 + 596))
  {
    *(v24 + 596) = v26;
  }

  _Block_object_dispose(&t1, 8);
  *(v295 + 6) = 0;
  v30 = CFDictionaryGetValue(a8, @"ContainsTweening");
  v31 = *MEMORY[0x1E695E4D0];
  v32 = 0.0;
  if (*MEMORY[0x1E695E4D0] == v30)
  {
    *&v303.a = *a17;
    v303.c = *(a17 + 16);
    FigVideoCompositionInstructionGetNormalizedTime(a8, &v303);
    v32 = v33;
  }

  CGAffineTransformMakeTranslation(&v292, -1.0, -1.0);
  v34 = *(DerivedStorage + 516) + *(DerivedStorage + 516);
  t1 = v292;
  CGAffineTransformScale(&v303, &t1, v34 / *(DerivedStorage + 408), v34 / *(DerivedStorage + 416));
  v292 = v303;
  v35 = CFDictionaryGetValue(a8, @"LayerStack");
  if (v35 && (v36 = CFArrayGetTypeID(), v36 == CFGetTypeID(v35)))
  {
    count = CFArrayGetCount(v35);
    v280 = malloc_type_calloc(count, 0xD8uLL, 0x102004000196C1CuLL);
    if (!v280)
    {
      v125 = 0;
      v273 = 0;
      v274 = 0;
      valuea = 0;
      v280 = 0;
      *(v295 + 6) = -12786;
      goto LABEL_318;
    }

    if (count >= 1)
    {
      v37 = 0;
      v38 = 0;
      v276 = *MEMORY[0x1E6965EF8];
      v39 = 0;
      v275 = *MEMORY[0x1E6965D70];
      v40 = v280;
      while (1)
      {
        LODWORD(v290) = 0;
        valuePtr.origin = v39;
        valuePtr.size = v39;
        v299 = 0;
        value = v38;
        ValueAtIndex = CFArrayGetValueAtIndex(v35, v38);
        if (!ValueAtIndex)
        {
          break;
        }

        TypeID = CFDictionaryGetTypeID();
        if (TypeID != CFGetTypeID(ValueAtIndex))
        {
          break;
        }

        v43 = CFDictionaryGetValue(ValueAtIndex, @"SourceVideoTrackID");
        if (!v43)
        {
          break;
        }

        v44 = CFNumberGetTypeID();
        if (v44 != CFGetTypeID(v43))
        {
          break;
        }

        CFNumberGetValue(v43, kCFNumberSInt32Type, &v290);
        v39 = 0;
        if (a2 < 1)
        {
          break;
        }

        v45 = 0;
        while (*(a3 + 4 * v45) != v290)
        {
          if (a2 == ++v45)
          {
            goto LABEL_127;
          }
        }

        v46 = a4[v45];
        *v40 = v46;
        *(v40 + 1) = v45;
        if (v46)
        {
          v47 = MEMORY[0x1E695EFD0];
          v48 = *(MEMORY[0x1E695EFD0] + 16);
          *(v40 + 24) = *MEMORY[0x1E695EFD0];
          *(v40 + 40) = v48;
          *(v40 + 56) = *(v47 + 32);
          *(v40 + 4) = 1065353216;
          v49 = *(MEMORY[0x1E695F040] + 16);
          *(v40 + 5) = *MEMORY[0x1E695F040];
          *(v40 + 6) = v49;
          v50 = CFDictionaryGetValue(ValueAtIndex, @"ConstantAffineMatrix");
          if (v50)
          {
            v51 = CFArrayGetTypeID();
            if (v51 != CFGetTypeID(v50))
            {
              break;
            }

            FigGetCGAffineTransformFrom3x2MatrixArray(v50, &v303.a);
            v53 = *&v303.c;
            v52 = *&v303.tx;
            *(v40 + 24) = *&v303.a;
            *(v40 + 40) = v53;
            *(v40 + 56) = v52;
          }

          v54 = CFDictionaryGetValue(ValueAtIndex, @"ConstantOpacity");
          if (v54)
          {
            v55 = CFNumberGetTypeID();
            if (v55 == CFGetTypeID(v54))
            {
              LODWORD(v303.a) = 0;
              CFNumberGetValue(v54, kCFNumberFloat32Type, &v303);
              *(v40 + 4) = LODWORD(v303.a);
            }
          }

          v56 = CFDictionaryGetValue(ValueAtIndex, @"ConstantCropRectangle");
          if (v56)
          {
            v57 = CFDictionaryGetTypeID();
            if (v57 == CFGetTypeID(v56) && !CGRectMakeWithDictionaryRepresentation(v56, (v40 + 80)))
            {
              break;
            }
          }

          if (v31 == v30)
          {
            v75 = CFDictionaryGetValue(ValueAtIndex, @"TweenedAffineMatrix");
            if (v75)
            {
              v76 = CFArrayGetTypeID();
              if (v76 == CFGetTypeID(v75))
              {
                FigVideoCompositionInstructionEvaluateTweenedAffineMatrix(v75, &v303, v32);
                v78 = *&v303.c;
                v77 = *&v303.tx;
                *(v40 + 24) = *&v303.a;
                *(v40 + 40) = v78;
                *(v40 + 56) = v77;
                v40[72] = 1;
              }
            }

            v79 = CFDictionaryGetValue(ValueAtIndex, @"TweenedOpacity");
            if (v79)
            {
              v80 = CFArrayGetTypeID();
              if (v80 == CFGetTypeID(v79))
              {
                *(v40 + 4) = FigVideoCompositionInstructionEvaluateTweenedOpacity(v79, v32);
              }
            }

            v81 = CFDictionaryGetValue(ValueAtIndex, @"TweenedCropRectangle");
            if (v81)
            {
              v82 = CFArrayGetTypeID();
              if (v82 == CFGetTypeID(v81))
              {
                FigVideoCompositionInstructionEvaluateTweenedCropRectangle(v81, v32);
                *(v40 + 10) = v83;
                *(v40 + 11) = v84;
                *(v40 + 12) = v85;
                *(v40 + 13) = v86;
              }
            }
          }

          v58 = CVBufferCopyAttachment(*v40, v276, 0);
          FigVideoCompositorUtilityGetPixelAspectRatio(v58, &v299 + 1, &v299);
          if (v58)
          {
            CFRelease(v58);
          }

          v59 = CVBufferCopyAttachment(*v40, v275, 0);
          Width = CVPixelBufferGetWidth(*v40);
          Height = CVPixelBufferGetHeight(*v40);
          bvc_getCleanApertureRect(v59, Width, Height, &valuePtr.origin.x);
          *(v295 + 6) = v62;
          if (v59)
          {
            CFRelease(v59);
            v62 = *(v295 + 6);
          }

          if (v62)
          {
            goto LABEL_128;
          }

          v313.origin.x = *(v40 + 10) + valuePtr.origin.x;
          v313.origin.y = *(v40 + 11) + valuePtr.origin.y;
          v313.size.width = *(v40 + 12);
          v313.size.height = *(v40 + 13);
          *(v40 + 112) = CGRectIntersection(valuePtr, v313);
          v63 = *(v40 + 40);
          *&t1.a = *(v40 + 24);
          *&t1.c = v63;
          *&t1.tx = *(v40 + 56);
          CGAffineTransformScale(&v303, &t1, SHIDWORD(v299) / v299, 1.0);
          v65 = *&v303.c;
          v64 = *&v303.tx;
          *(v40 + 24) = *&v303.a;
          *(v40 + 40) = v65;
          *(v40 + 56) = v64;
          v66 = *(v40 + 40);
          *&t1.a = *(v40 + 24);
          *&t1.c = v66;
          *&t1.tx = *(v40 + 56);
          CGAffineTransformTranslate(&v303, &t1, -valuePtr.origin.x, -valuePtr.origin.y);
          v68 = *&v303.c;
          v67 = *&v303.tx;
          *(v40 + 24) = *&v303.a;
          *(v40 + 40) = v68;
          *(v40 + 56) = v67;
          v69 = *(v40 + 40);
          *&t1.a = *(v40 + 24);
          *&t1.c = v69;
          *&t1.tx = *(v40 + 56);
          v70 = *(DerivedStorage + 456);
          *&ptr.a = *(DerivedStorage + 440);
          *&ptr.c = v70;
          *&ptr.tx = *(DerivedStorage + 472);
          CGAffineTransformConcat(&v303, &t1, &ptr);
          v72 = *&v303.c;
          v71 = *&v303.tx;
          *(v40 + 24) = *&v303.a;
          *(v40 + 40) = v72;
          *(v40 + 56) = v71;
          v73 = *(v40 + 40);
          *&v303.a = *(v40 + 24);
          *&v303.c = v73;
          *&v303.tx = *(v40 + 56);
          if (OVCIsAffineTransformInvertible(&v303.a))
          {
            if (*(DerivedStorage + 520) && !v40[72])
            {
              memset(&t1, 0, 32);
              bvc_getCleanApertureRect(*(DerivedStorage + 488), *(DerivedStorage + 408), *(DerivedStorage + 416), &t1.a);
              *(v295 + 6) = v87;
              if (v87)
              {
                goto LABEL_128;
              }

              v88 = *(DerivedStorage + 516);
              CGAffineTransformMakeScale(&v303, (1.0 / v88), (1.0 / v88));
              v309.origin.x = t1.a;
              v309.origin.y = t1.b;
              v309.size.width = t1.c;
              v309.size.height = t1.d;
              v310 = CGRectApplyAffineTransform(v309, &v303);
              x = v310.origin.x;
              y = v310.origin.y;
              v91 = v310.size.width;
              v92 = v310.size.height;
              t1.a = v310.origin.x;
              t1.b = v310.origin.y;
              t1.c = v310.size.width;
              t1.d = v310.size.height;
              v93 = *v40;
              v311 = *(v40 + 112);
              v94 = *(v40 + 40);
              *&v303.a = *(v40 + 24);
              *&v303.c = v94;
              *&v303.tx = *(v40 + 56);
              ovc_getPrescalingParameters(v93, &v303, v40 + 208, v40 + 18, v40 + 22, v40 + 14, v40 + 24, v40 + 24, v311.origin.x, v311.origin.y, v311.size.width, v311.size.height, x, y, v91, v92, v88);
              *(v295 + 6) = 0;
            }

            else
            {
              *(v40 + 24) = CVPixelBufferGetWidth(*v40);
              *(v40 + 25) = CVPixelBufferGetHeight(*v40);
            }

            v74 = value;
            v95 = *(v40 + 4);
            v96 = 0.0;
            if (v95 <= 0.0 || (v96 = 1.0, v95 >= 1.0))
            {
              *(v40 + 4) = v96;
            }

            ++v37;
            v40 += 216;
          }

          else
          {
            v74 = value;
          }

          v39 = 0;
        }

        else
        {
          v74 = value;
        }

        v38 = v74 + 1;
        if (v38 == count)
        {
          goto LABEL_91;
        }
      }

LABEL_127:
      fig_log_get_emitter();
      *(v295 + 6) = FigSignalErrorAtGM();
      goto LABEL_128;
    }

    v37 = 0;
  }

  else
  {
    count = 0;
    v37 = 0;
    v280 = 0;
  }

LABEL_91:
  v97 = DerivedStorage;
  if (*(DerivedStorage + 520))
  {
    if (count != *(DerivedStorage + 664))
    {
      ovc_releaseLayerArrays();
      v98 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL);
      *(DerivedStorage + 672) = v98;
      if (!v98 || (v99 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL), (*(DerivedStorage + 688) = v99) == 0) || (v100 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL), v97 = DerivedStorage, (*(DerivedStorage + 680) = v100) == 0))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        goto LABEL_128;
      }

      *(DerivedStorage + 664) = count;
    }

    v102 = *(v97 + 8);
    v101 = (v97 + 8);
    if (!v102)
    {
      v103 = OVCBicubicPrescalerCreate(0, *(DerivedStorage + 576), *(DerivedStorage + 584), v101);
      *(v295 + 6) = v103;
      if (v103)
      {
        goto LABEL_128;
      }
    }
  }

  else
  {
    v104 = *(DerivedStorage + 8);
    if (v104)
    {
      OVCBicubicPrescalerDestroy(v104);
      *(DerivedStorage + 8) = 0;
      ovc_releaseLayerArrays();
    }
  }

  if (v37 < 1)
  {
    goto LABEL_106;
  }

  v105 = 0;
  v106 = 0;
  v107 = v37;
  while (1)
  {
    v108 = &v280[v106];
    if (*&v280[v106 + 16] != 0.0)
    {
      break;
    }

    v106 += 216;
    v105 += 8;
    if (!--v107)
    {
      goto LABEL_106;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(*v108);
  v123 = 0;
  if (PixelFormatType > 875704421)
  {
    if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
    {
      goto LABEL_338;
    }

    if (PixelFormatType != 1111970369)
    {
      goto LABEL_335;
    }

    goto LABEL_337;
  }

  if (PixelFormatType == 32)
  {
LABEL_337:
    v123 = 1;
    goto LABEL_338;
  }

  if (PixelFormatType == 846624121)
  {
LABEL_338:
    *(v295 + 6) = 0;
    goto LABEL_339;
  }

LABEL_335:
  fig_log_get_emitter();
  v244 = FigSignalErrorAtGM();
  *(v295 + 6) = v244;
  if (v244)
  {
    goto LABEL_128;
  }

  v123 = 0;
LABEL_339:
  if ((v123 & 1) != 0 || v108[4] != 1.0 || (v245 = &v280[v106], v246 = *&v280[v106 + 24], v247 = *&v280[v106 + 56], *&v303.c = *&v280[v106 + 40], *&v303.tx = v247, *&v303.a = v246, !CGAffineTransformIsIdentity(&v303)) || (v248 = *(DerivedStorage + 488), v250 = *(v245 + 24), v249 = *(v245 + 25), v251 = v245[14], v252 = v245[15], v253 = v245[16], v254 = v245[17], v256 = *(DerivedStorage + 408), v255 = *(DerivedStorage + 416), memset(&v303, 0, 32), bvc_getCleanApertureRect(v248, v256, v255, &v303.a), v257) || v250 != v256 || v249 != v255 || (v314.origin.x = v303.a, v314.origin.y = v303.b, v314.size.width = v303.c, v314.size.height = v303.d, v312.origin.x = v251, v312.origin.y = v252, v312.size.width = v253, v312.size.height = v254, !CGRectEqualToRect(v312, v314)))
  {
LABEL_106:
    v270 = 1;
    v109 = pixelBufferOut;
    goto LABEL_107;
  }

  if (v280[v106 + 208])
  {
    v258 = DerivedStorage;
    v259 = *(*(DerivedStorage + 680) + v105);
    if (v259)
    {
      CFRelease(v259);
      v258 = DerivedStorage;
      *(*(DerivedStorage + 680) + v105) = 0;
    }

    ++*(v258 + 752);
    v260 = *&v280[v106];
    v261 = CVPixelBufferGetWidth(v260);
    v262 = CVPixelBufferGetHeight(*&v280[v106]);
    v263 = ovc_preScaleBuffer(v260, *(v245 + 24), *(v245 + 25), *(DerivedStorage + 8), (*(DerivedStorage + 672) + v105), (*(DerivedStorage + 680) + v105), 0.0, 0.0, v261, v262);
    *(v295 + 6) = v263;
    if (v263)
    {
      goto LABEL_128;
    }

    v264 = *(DerivedStorage + 688);
    v265 = *(v264 + v105);
    v266 = *&v280[v106];
    *(v264 + v105) = v266;
    if (v266)
    {
      CFRetain(v266);
    }

    if (v265)
    {
      CFRelease(v265);
    }

    v267 = DerivedStorage;
    v268 = *(*(DerivedStorage + 680) + v105);
    *&v280[v106] = v268;
  }

  else
  {
    v268 = *&v280[v106];
    v267 = DerivedStorage;
  }

  ++*(v267 + 744);
  v109 = CFRetain(v268);
  v270 = 0;
  pixelBufferOut = v109;
LABEL_107:
  if (v109)
  {
    v273 = 0;
    v274 = 0;
    valuea = 0;
    goto LABEL_315;
  }

  v110 = CFGetAllocator(a1);
  v111 = CVPixelBufferPoolCreatePixelBuffer(v110, *(DerivedStorage + 568), &pixelBufferOut);
  *(v295 + 6) = v111;
  if (!v111)
  {
    v112 = CVPixelBufferGetPixelFormatType(pixelBufferOut);
    if (v37 < 1)
    {
      v277 = 1;
      if (a2 < 1)
      {
        v126 = 0;
        goto LABEL_133;
      }

      v121 = a4;
    }

    else
    {
      v113 = 0;
      v114 = v280 + 24;
      v115 = v37;
      do
      {
        v116 = *v114;
        v117 = v114[2];
        *&t1.c = v114[1];
        *&t1.tx = v117;
        *&t1.a = v116;
        ptr = v292;
        CGAffineTransformConcat(&v303, &t1, &ptr);
        v118 = *&v303.a;
        v119 = *&v303.tx;
        v114[1] = *&v303.c;
        v114[2] = v119;
        *v114 = v118;
        if (CVPixelBufferGetPixelFormatType(*(v114 - 3)) == 1111970369 && v112 == 875704438)
        {
          v113 = 1;
        }

        v114 = (v114 + 216);
        --v115;
      }

      while (v115);
      v277 = v113 == 0;
      v121 = &v280[216 * v37 - 216];
    }

    v126 = *v121;
LABEL_133:
    v127 = *(DerivedStorage + 528);
    v128 = MEMORY[0x1E6965F98];
    if (!v127 || (valuea = CFRetain(v127)) == 0)
    {
      valuea = CVBufferCopyAttachment(v126, *v128, 0);
      if (!valuea)
      {
        valuea = CFRetain(*MEMORY[0x1E6965FD0]);
      }
    }

    v129 = *(DerivedStorage + 544);
    v130 = MEMORY[0x1E6965D88];
    if (!v129 || (v274 = CFRetain(v129)) == 0)
    {
      v274 = CVBufferCopyAttachment(v126, *v130, 0);
      if (!v274)
      {
        v274 = CFRetain(*MEMORY[0x1E6965DB8]);
      }
    }

    v131 = *(DerivedStorage + 536);
    v132 = MEMORY[0x1E6965F30];
    if (!v131 || (v273 = CFRetain(v131)) == 0)
    {
      v273 = CVBufferCopyAttachment(v126, *v132, 0);
      if (!v273)
      {
        v273 = CFRetain(*MEMORY[0x1E6965F50]);
      }
    }

    key = *v128;
    CVBufferSetAttachment(pixelBufferOut, *v128, valuea, kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *v130, v274, kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *v132, v273, kCVAttachmentMode_ShouldPropagate);
    if (*(DerivedStorage + 520) && count >= 1)
    {
      v133 = count + 1;
      v134 = 8 * count - 8;
      v135 = 216 * count;
      do
      {
        v136 = &v280[v135];
        if (v280[v135 - 8])
        {
          v137 = *(v136 - 27);
          if (v137 != *(*(DerivedStorage + 688) + v134))
          {
            v138 = *(DerivedStorage + 680);
            if (*(v138 + v134))
            {
              CFRelease(*(v138 + v134));
              v139 = DerivedStorage;
              *(*(DerivedStorage + 680) + v134) = 0;
              v137 = *(v136 - 27);
              v138 = *(DerivedStorage + 680);
            }

            else
            {
              v139 = DerivedStorage;
            }

            ++*(v139 + 752);
            v140 = ovc_preScaleBuffer(v137, *&v280[v135 - 40], *&v280[v135 - 32], *(v139 + 8), (*(v139 + 672) + v134), (v138 + v134), *&v280[v135 - 72], *&v280[v135 - 64], *&v280[v135 - 56], *&v280[v135 - 48]);
            *(v295 + 6) = v140;
            if (v140)
            {
              goto LABEL_317;
            }

            v141 = *(DerivedStorage + 688);
            v142 = *(v141 + v134);
            v143 = *(v136 - 27);
            *(v141 + v134) = v143;
            if (v143)
            {
              CFRetain(v143);
            }

            if (v142)
            {
              CFRelease(v142);
            }
          }

          *(v136 - 27) = *(*(DerivedStorage + 680) + v134);
        }

        --v133;
        v134 -= 8;
        v135 -= 216;
      }

      while (v133 > 1);
    }

    v144 = CFDictionaryGetValue(a8, @"BackgroundColorARGB");
    if (v144)
    {
      v145 = CFArrayGetTypeID();
      if (v145 == CFGetTypeID(v144))
      {
        v146 = 0;
        v147 = &v301;
        do
        {
          v148 = CFArrayGetValueAtIndex(v144, v146);
          if (v148)
          {
            v149 = CFNumberGetTypeID();
            if (v149 == CFGetTypeID(v148))
            {
              CFNumberGetValue(v148, kCFNumberFloat32Type, v147);
            }
          }

          ++v146;
          v147 = (v147 + 4);
        }

        while (v146 != 4);
      }
    }

    if (*(DerivedStorage + 384))
    {
      v150 = pixelBufferOut;
      v151 = CMBaseObjectGetDerivedStorage();
      PlaneCount = CVPixelBufferGetPlaneCount(v150);
      if (PlaneCount <= 1)
      {
        v153 = 1;
      }

      else
      {
        v153 = PlaneCount;
      }

      *(v151 + 400) = v153;
      glDeleteFramebuffers(2, (v151 + 16));
      glDeleteTextures(2, (v151 + 388));
      *(v151 + 16) = 0;
      *(v151 + 388) = 0;
      if (*(v151 + 512))
      {
        glGenFramebuffers(v153, (v151 + 16));
        glGenTextures(v153, (v151 + 388));
      }

      for (i = 0; i != v153; ++i)
      {
        WidthOfPlane = OVCCVPixelBufferGetWidthOfPlane(v150, i);
        HeightOfPlane = OVCCVPixelBufferGetHeightOfPlane(v150, i);
        if (*(v151 + 512))
        {
          v157 = HeightOfPlane;
          v158 = v151 + 4 * i;
          glBindTexture(0xDE1u, *(v158 + 388));
          glTexParameteri(0xDE1u, 0x2802u, 33071);
          glTexParameteri(0xDE1u, 0x2803u, 33071);
          glTexParameteri(0xDE1u, 0x2800u, 9728);
          glTexParameteri(0xDE1u, 0x2801u, 9728);
          glTexImage2D(0xDE1u, 0, 6408, WidthOfPlane, v157, 0, 0x80E1u, 0x1401u, 0);
          glBindFramebuffer(0x8D40u, *(v158 + 16));
          glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(v158 + 388), 0);
        }
      }

      *(DerivedStorage + 384) = 0;
    }

    v159 = CVPixelBufferGetPlaneCount(pixelBufferOut);
    v160 = 0;
    if (v159 <= 1)
    {
      v161 = 1;
    }

    else
    {
      v161 = v159;
    }

    v278 = v161;
    theDicta = v112;
    while (1)
    {
      valuePtr.origin = xmmword_196E79480;
      v303.a = 0.0;
      ColorMatrixForPixelFormatConversion = ovc_getColorMatrixForPixelFormatConversion(1111970369, 0, v112, valuea, &v303);
      if (ColorMatrixForPixelFormatConversion)
      {
LABEL_358:
        v125 = 0;
LABEL_359:
        *(v295 + 6) = ColorMatrixForPixelFormatConversion;
        goto LABEL_318;
      }

      v163 = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(*(*&v303.a + 16), *(&v301 + 2)), **&v303.a, *(&v301 + 1)), *(*&v303.a + 32), *(&v301 + 3)), *(*&v303.a + 48));
      v164 = *(*&v303.a + 56) + (((*(&v301 + 2) * *(*&v303.a + 24)) + (*(&v301 + 1) * *(*&v303.a + 8))) + (*(&v301 + 3) * *(*&v303.a + 40)));
      if (v112 == 875704438)
      {
        if (v160 == 1)
        {
          *&valuePtr.origin.x = __PAIR64__(LODWORD(v164), v163.u32[1]);
          LODWORD(valuePtr.origin.y) = v163.i32[1];
          goto LABEL_191;
        }

        if (!v160)
        {
          *&valuePtr.origin.x = vdup_lane_s32(v163, 0);
          LODWORD(valuePtr.origin.y) = v163.i32[0];
          v164 = *v163.i32;
          goto LABEL_191;
        }
      }

      else if (v112 == 1111970369)
      {
        *&valuePtr.origin.x = v163;
        *&valuePtr.origin.y = v164;
        LODWORD(v164) = v301;
LABEL_191:
        *(&valuePtr.origin.y + 1) = v164;
        *(v295 + 6) = 0;
        goto LABEL_193;
      }

      fig_log_get_emitter();
      v165 = FigSignalErrorAtGM();
      *(v295 + 6) = v165;
      if (v165)
      {
        goto LABEL_317;
      }

LABEL_193:
      v166 = pixelBufferOut;
      v281 = v160;
      if (v277)
      {
        v167 = CMBaseObjectGetDerivedStorage();
        v168 = OVCCVPixelBufferGetWidthOfPlane(v166, v160);
        v169 = OVCCVPixelBufferGetHeightOfPlane(v166, v160);
        glEnable(0xBE2u);
        ColorMatrixForPixelFormatConversion = OVCRegisterPixelBufferAsRenderTarget(*v167, *(v167 + 584), v166, v160);
        if (ColorMatrixForPixelFormatConversion)
        {
          goto LABEL_358;
        }

        ColorMatrixForPixelFormatConversion = ovc_setupViewPortAndClear(a1, v168, v169, &valuePtr);
        if (ColorMatrixForPixelFormatConversion)
        {
          goto LABEL_358;
        }

        if (glCheckFramebufferStatus(0x8D40u) == 36053)
        {
LABEL_200:
          *(v295 + 6) = 0;
          goto LABEL_202;
        }
      }

      else
      {
        v170 = OVCCVPixelBufferGetWidthOfPlane(pixelBufferOut, v160);
        v171 = OVCCVPixelBufferGetHeightOfPlane(pixelBufferOut, v160);
        v172 = CMBaseObjectGetDerivedStorage();
        glBindFramebuffer(0x8D40u, *(v172 + 4 * v160 + 16));
        glEnable(0xBE2u);
        ColorMatrixForPixelFormatConversion = ovc_setupViewPortAndClear(a1, v170, v171, &valuePtr);
        if (ColorMatrixForPixelFormatConversion)
        {
          goto LABEL_358;
        }

        if (glCheckFramebufferStatus(0x8D40u) == 36053)
        {
          goto LABEL_200;
        }
      }

      fig_log_get_emitter();
      v173 = FigSignalErrorAtGM();
      *(v295 + 6) = v173;
      if (v173)
      {
        goto LABEL_317;
      }

LABEL_202:
      if (count >= 1)
      {
        v174 = &v280[216 * count - 216];
        v175 = count + 1;
        while (1)
        {
          memset(&v303, 0, 36);
          v290 = 0;
          if (*v174)
          {
            if (*(v174 + 16) >= 0.002)
            {
              break;
            }
          }

LABEL_271:
          --v175;
          v174 -= 216;
          if (v175 <= 1)
          {
            goto LABEL_272;
          }
        }

        v177 = *(v174 + 112);
        v176 = *(v174 + 120);
        v179 = *(v174 + 128);
        v178 = *(v174 + 136);
        v125 = CVBufferCopyAttachment(*v174, key, 0);
        v180 = CVPixelBufferGetWidth(*v174);
        v181 = CVPixelBufferGetHeight(*v174);
        v182 = CVPixelBufferGetPixelFormatType(*v174);
        v183 = CVPixelBufferGetPlaneCount(*v174);
        if (theDicta == 1111970369)
        {
          v187 = 772;
        }

        else
        {
          if (theDicta != 875704438)
          {
            goto LABEL_220;
          }

          v184 = *(v174 + 16);
          if (v182 == 875704422)
          {
            goto LABEL_211;
          }

          if (v182 != 1111970369)
          {
            if (v182 == 875704438)
            {
LABEL_211:
              if (v184 >= 0.998)
              {
                v185 = 0;
                v186 = 1;
              }

              else
              {
                glBlendColor(0.0, 0.0, 0.0, v184);
                v185 = 32772;
                v186 = 32771;
              }

              glBlendFunc(v186, v185);
LABEL_219:
              glBlendEquation(0x8006u);
              *(v295 + 6) = 0;
LABEL_221:
              v189 = CMBaseObjectGetDerivedStorage();
              v190 = CVPixelBufferGetPixelFormatType(*v174);
              v191 = CVBufferCopyAttachment(*v174, key, 0);
              if (theDicta == 875704438)
              {
                switch(v190)
                {
                  case 0x34323066u:
                    if (v281)
                    {
                      if (v281 != 1)
                      {
                        goto LABEL_251;
                      }

                      v192 = 132;
                    }

                    else
                    {
                      v192 = 96;
                    }

                    break;
                  case 0x34323076u:
                    if (v281 == 1)
                    {
                      v193 = FigCFEqual() == 0;
                      v192 = 132;
                      v194 = 204;
                    }

                    else
                    {
                      if (v281)
                      {
                        goto LABEL_251;
                      }

                      v193 = FigCFEqual() == 0;
                      v192 = 96;
                      v194 = 168;
                    }

                    if (!v193)
                    {
                      v192 = v194;
                    }

                    break;
                  case 0x42475241u:
                    if (v281)
                    {
                      if (v281 != 1)
                      {
                        goto LABEL_251;
                      }

                      v192 = 276;
                    }

                    else
                    {
                      v192 = 240;
                    }

                    break;
                  default:
                    goto LABEL_251;
                }
              }

              else
              {
                if (theDicta != 1111970369)
                {
                  goto LABEL_251;
                }

                if (v190 == 875704422)
                {
                  goto LABEL_226;
                }

                if (v190 != 1111970369)
                {
                  if (v190 == 875704438)
                  {
LABEL_226:
                    v192 = 60;
                    goto LABEL_249;
                  }

LABEL_251:
                  fig_log_get_emitter();
                  v195 = FigSignalErrorAtGM();
                  v196 = 0;
                  if (v191)
                  {
LABEL_252:
                    CFRelease(v191);
                  }

LABEL_253:
                  *(v295 + 6) = v195;
                  if (v195)
                  {
                    goto LABEL_318;
                  }

                  glUseProgram(*v196);
                  if ((v196[4] & 0x80000000) == 0)
                  {
                    glActiveTexture(0x84C0u);
                    glUniform1i(v196[4], 0);
                    v197 = OVCRegisterPixelBufferAsTexture(*DerivedStorage, *(DerivedStorage + 584), *v174, 0, *(DerivedStorage + 521) != 0);
                    *(v295 + 6) = v197;
                    if (v197)
                    {
                      goto LABEL_318;
                    }

                    glTexParameteri(0xDE1u, 0x2800u, 9729);
                    glTexParameteri(0xDE1u, 0x2801u, 9729);
                    glTexParameteri(0xDE1u, 0x2802u, 33071);
                    glTexParameteri(0xDE1u, 0x2803u, 33071);
                  }

                  if (v183 >= 2 && (v196[5] & 0x80000000) == 0)
                  {
                    glActiveTexture(0x84C1u);
                    glUniform1i(v196[5], 1);
                    v198 = OVCRegisterPixelBufferAsTexture(*DerivedStorage, *(DerivedStorage + 584), *v174, 1uLL, *(DerivedStorage + 521) != 0);
                    *(v295 + 6) = v198;
                    if (v198)
                    {
                      goto LABEL_318;
                    }

                    glTexParameteri(0xDE1u, 0x2800u, 9729);
                    glTexParameteri(0xDE1u, 0x2801u, 9729);
                    glTexParameteri(0xDE1u, 0x2802u, 33071);
                    glTexParameteri(0xDE1u, 0x2803u, 33071);
                  }

                  v199 = v196[1];
                  if ((v199 & 0x80000000) == 0)
                  {
                    if (*(DerivedStorage + 521))
                    {
                      v200 = 1;
                    }

                    else
                    {
                      v200 = 3;
                    }

                    glUniform1i(v199, v200);
                  }

                  glUniform1f(v196[3], *(v174 + 16));
                  *&v303.a = vcvt_f32_f64(*(v174 + 24));
                  LODWORD(v303.b) = 0;
                  *(&v303.b + 4) = vcvt_f32_f64(*(v174 + 40));
                  HIDWORD(v303.c) = 0;
                  *&v303.d = vcvt_f32_f64(*(v174 + 56));
                  LODWORD(v303.tx) = 1065353216;
                  glUniformMatrix3fv(v196[2], 1, 0, &v303);
                  if ((v196[6] & 0x80000000) == 0)
                  {
                    v201 = ovc_getColorMatrixForPixelFormatConversion(v182, v125, theDicta, valuea, &v290);
                    *(v295 + 6) = v201;
                    if (v201)
                    {
                      goto LABEL_318;
                    }

                    glUniformMatrix4fv(v196[6], 1, 0, v290);
                  }

                  *&v202 = v177;
                  *&v203 = v176;
                  *&t1.a = __PAIR64__(v203, v202);
                  *&v204 = v177 + v179;
                  *&t1.b = __PAIR64__(v203, v204);
                  *&v205 = v176 + v178;
                  *&t1.c = __PAIR64__(v205, v202);
                  *&t1.d = __PAIR64__(v205, v204);
                  *&v206 = v177 / v180;
                  *&v207 = v176 / v181;
                  *&ptr.a = __PAIR64__(v207, v206);
                  *&v208 = (v177 + v179) / v180;
                  *&ptr.b = __PAIR64__(v207, v208);
                  *&v209 = (v176 + v178) / v181;
                  *&ptr.c = __PAIR64__(v209, v206);
                  *&ptr.d = __PAIR64__(v209, v208);
                  glVertexAttribPointer(v196[7], 2, 0x1406u, 0, 0, &t1);
                  glEnableVertexAttribArray(v196[7]);
                  glVertexAttribPointer(v196[8], 2, 0x1406u, 0, 0, &ptr);
                  glEnableVertexAttribArray(v196[8]);
                  ++*(DerivedStorage + 748);
                  glDrawArrays(5u, 0, 4);
                  if (v125)
                  {
                    CFRelease(v125);
                  }

                  goto LABEL_271;
                }

                v192 = 24;
              }

LABEL_249:
              v195 = 0;
              v196 = (v189 + v192);
              if (v191)
              {
                goto LABEL_252;
              }

              goto LABEL_253;
            }

LABEL_220:
            fig_log_get_emitter();
            v188 = FigSignalErrorAtGM();
            *(v295 + 6) = v188;
            if (v188)
            {
              goto LABEL_318;
            }

            goto LABEL_221;
          }

          glBlendColor(0.0, 0.0, 0.0, v184);
          v187 = 770;
        }

        glBlendFuncSeparate(v187, 0x303u, 0, 1u);
        goto LABEL_219;
      }

LABEL_272:
      v160 = v281 + 1;
      v112 = theDicta;
      if ((v281 + 1) == v278)
      {
        if (v277)
        {
LABEL_295:
          v221 = pixelBufferOut;
          v222 = CMBaseObjectGetDerivedStorage();
          v223 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          if (v223)
          {
            v224 = a4;
            if (a2)
            {
              v225 = a2;
              do
              {
                v226 = v224;
                if (*v224)
                {
                  CFArrayAppendValue(v223, *v224);
                }

                v224 = v226 + 1;
                --v225;
              }

              while (v225);
            }

            v227 = v222[80];
            *&v303.a = MEMORY[0x1E69E9820];
            *&v303.b = 3221225472;
            *&v303.c = __ovc_setNewInFlightEntry_block_invoke;
            *&v303.d = &__block_descriptor_72_e5_v8__0l;
            *&v303.tx = v222;
            v303.ty = a18;
            v304 = v221;
            v305 = UpTimeNanoseconds;
            v306 = v223;
            dispatch_sync(v227, &v303);
            v228 = *v222;
            v229 = v222[79];
            *&t1.a = MEMORY[0x1E69E9820];
            *&t1.b = 3221225472;
            *&t1.c = __ovc_setNewInFlightEntry_block_invoke_2;
            *&t1.d = &__block_descriptor_48_e5_v8__0l;
            *&t1.tx = a1;
            t1.ty = a18;
            v230 = OVCRegisterFenceBlock(v228, v229, &t1);
            if (v230)
            {
              v231 = v222[80];
              *&ptr.a = MEMORY[0x1E69E9820];
              *&ptr.b = 3221225472;
              *&ptr.c = __ovc_setNewInFlightEntry_block_invoke_3;
              *&ptr.d = &__block_descriptor_48_e5_v8__0l;
              *&ptr.tx = v222;
              ptr.ty = a18;
              dispatch_sync(v231, &ptr);
            }

            CFRelease(v223);
          }

          else
          {
            fig_log_get_emitter();
            v230 = FigSignalErrorAtGM();
          }

          *(v295 + 6) = v230;
          if (v230)
          {
            goto LABEL_317;
          }

          glFlush();
          CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965D70], *(DerivedStorage + 488), kCVAttachmentMode_ShouldPropagate);
          CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965EF8], *(DerivedStorage + 496), kCVAttachmentMode_ShouldPropagate);
          v232 = FigGetUpTimeNanoseconds();
          v233 = CMBaseObjectGetDerivedStorage();
          ptr.a = 0.0;
          *&ptr.b = &ptr;
          *&ptr.c = 0x2020000000;
          ptr.d = 0.0;
          v234 = *(v233 + 640);
          *&v303.a = MEMORY[0x1E69E9820];
          *&v303.b = 3221225472;
          *&v303.c = __ovc_enforceMaxInFlightBufferCount_block_invoke;
          *&v303.d = &unk_1E7482510;
          *&v303.tx = &ptr;
          *&v303.ty = v233;
          dispatch_sync(v234, &v303);
          if (*(*&ptr.b + 24) > *(v233 + 596))
          {
            do
            {
              FigSemaphoreWaitRelative();
              v235 = *(v233 + 640);
              *&t1.a = MEMORY[0x1E69E9820];
              *&t1.b = 3221225472;
              *&t1.c = __ovc_enforceMaxInFlightBufferCount_block_invoke_2;
              *&t1.d = &unk_1E7482510;
              *&t1.tx = &ptr;
              *&t1.ty = v233;
              dispatch_sync(v235, &t1);
              v236 = *(v233 + 596);
            }

            while (*(*&ptr.b + 24) > v236);
            if (v236 <= 2 && !*(v233 + 592))
            {
              *(v233 + 596) = v236 + 1;
            }
          }

          _Block_object_dispose(&ptr, 8);
          *(v295 + 6) = 0;
          v237 = FigGetUpTimeNanoseconds();
          v238 = (v237 - v232) / 1000;
          ++*(DerivedStorage + 784);
          *(DerivedStorage + 776) += v238;
          v239 = *(DerivedStorage + 760);
          if (v239 >= v238)
          {
            v239 = (v237 - v232) / 1000;
          }

          *(DerivedStorage + 760) = v239;
          if (*(DerivedStorage + 768) > v238)
          {
            v238 = *(DerivedStorage + 768);
          }

          *(DerivedStorage + 768) = v238;
          FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings(*(DerivedStorage + 584));
LABEL_315:
          if ((v270 & 1) == 0)
          {
            v240 = *(DerivedStorage + 632);
            v289[0] = MEMORY[0x1E69E9820];
            v289[1] = 3221225472;
            v289[2] = __openglVideoCompositor_RenderFrame_block_invoke_2;
            v289[3] = &__block_descriptor_64_e5_v8__0l;
            v289[4] = DerivedStorage;
            v289[5] = UpTimeNanoseconds;
            *&v289[6] = a18;
            v289[7] = pixelBufferOut;
            dispatch_sync(v240, v289);
          }

LABEL_317:
          v125 = 0;
          goto LABEL_318;
        }

        v210 = 0;
        ++*(DerivedStorage + 756);
        while (2)
        {
          v211 = pixelBufferOut;
          v212 = CMBaseObjectGetDerivedStorage();
          ptr.b = 0.0;
          ptr.a = 0.0;
          v213 = OVCCVPixelBufferGetWidthOfPlane(v211, v210);
          v214 = OVCCVPixelBufferGetHeightOfPlane(v211, v210);
          glDisable(0xBE2u);
          v215 = OVCRegisterPixelBufferAsRenderTarget(*v212, *(v212 + 584), v211, v210);
          if (v215 || (v215 = ovc_setupViewPortAndClear(a1, v213, v214, &ptr)) != 0)
          {
            *(v295 + 6) = v215;
            goto LABEL_317;
          }

          if (glCheckFramebufferStatus(0x8D40u) == 36053)
          {
            *(v295 + 6) = 0;
          }

          else
          {
            fig_log_get_emitter();
            v216 = FigSignalErrorAtGM();
            *(v295 + 6) = v216;
            if (v216)
            {
              goto LABEL_317;
            }
          }

          v217 = CMBaseObjectGetDerivedStorage();
          if (theDicta != 875704438)
          {
            goto LABEL_287;
          }

          if (v210)
          {
            if (v210 == 1)
            {
              v218 = 348;
              goto LABEL_286;
            }

LABEL_287:
            fig_log_get_emitter();
            v220 = FigSignalErrorAtGM();
            *(v295 + 6) = v220;
            if (v220)
            {
              goto LABEL_317;
            }

            v219 = 0;
          }

          else
          {
            v218 = 312;
LABEL_286:
            v219 = v217 + v218;
            *(v295 + 6) = 0;
          }

          glUseProgram(*v219);
          *&t1.a = xmmword_196E79440;
          *&t1.c = xmmword_196E79450;
          if ((*(v219 + 16) & 0x80000000) == 0)
          {
            glActiveTexture(0x84C0u);
            glUniform1i(*(v219 + 16), 0);
            glBindTexture(0xDE1u, *(DerivedStorage + 388));
          }

          if (*(DerivedStorage + 400) >= 2uLL && (*(v219 + 20) & 0x80000000) == 0)
          {
            glActiveTexture(0x84C1u);
            glUniform1i(*(v219 + 20), 1);
            glBindTexture(0xDE1u, *(DerivedStorage + 392));
          }

          *&v303.a = xmmword_196E79460;
          *&v303.c = xmmword_196E79470;
          glVertexAttribPointer(*(v219 + 28), 2, 0x1406u, 0, 0, &v303);
          glEnableVertexAttribArray(*(v219 + 28));
          glVertexAttribPointer(*(v219 + 32), 2, 0x1406u, 0, 0, &t1);
          glEnableVertexAttribArray(*(v219 + 32));
          ++*(DerivedStorage + 748);
          glDrawArrays(5u, 0, 4);
          if (v278 == ++v210)
          {
            goto LABEL_295;
          }

          continue;
        }
      }
    }
  }

LABEL_128:
  v125 = 0;
  v273 = 0;
  v274 = 0;
  valuea = 0;
LABEL_318:
  OVCSetCurrentOpenGLContext(0);
  if (*(DerivedStorage + 520) && *(DerivedStorage + 664))
  {
    v241 = 0;
    do
    {
      CVPixelBufferPoolFlush(*(*(DerivedStorage + 672) + 8 * v241++), 0);
    }

    while (v241 < *(DerivedStorage + 664));
  }

  CVPixelBufferPoolFlush(*(DerivedStorage + 568), 0);
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  free(v280);
  if (valuea)
  {
    CFRelease(valuea);
  }

  if (v274)
  {
    CFRelease(v274);
  }

  if (v273)
  {
    CFRelease(v273);
  }

  if (v125)
  {
    CFRelease(v125);
  }

  v242 = *(v295 + 6);
  _Block_object_dispose(&v294, 8);
  return v242;
}

uint64_t openglVideoCompositor_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 632);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __openglVideoCompositor_SetOutputCallback_block_invoke;
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

void sub_1967E88F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ovc_getPrescalingParameters(__CVBuffer *a1, _OWORD *a2, char *a3, double *a4, unint64_t *a5, double *a6, size_t *a7, _OWORD *a8, double a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, float a17)
{
  memset(&v68, 0, sizeof(v68));
  v66 = 0.0;
  v67 = 0.0;
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        if (a6)
        {
          if (a7)
          {
            if (a8)
            {
              v31 = a2[1];
              *&v65.a = *a2;
              *&v65.c = v31;
              *&v65.tx = a2[2];
              FigVideoCompositionInstructionCGAffineTransformDecompose(&v65, 0, 0, &v68, &v67, &v66, 0);
              b = 0.0;
              a = 0.0;
              if (fabs(v68.a) >= 0.00001)
              {
                a = 1.0;
                if (fabs(v68.a + -1.0) >= 0.00001)
                {
                  a = v68.a;
                  if (fabs(v68.a + 1.0) < 0.00001)
                  {
                    a = -1.0;
                  }
                }
              }

              v68.a = a;
              if (fabs(v68.b) >= 0.00001)
              {
                b = 1.0;
                if (fabs(v68.b + -1.0) >= 0.00001)
                {
                  b = v68.b;
                  if (fabs(v68.b + 1.0) < 0.00001)
                  {
                    b = -1.0;
                  }
                }
              }

              v68.b = b;
              d = 0.0;
              c = 0.0;
              if (fabs(v68.c) >= 0.00001)
              {
                c = 1.0;
                if (fabs(v68.c + -1.0) >= 0.00001)
                {
                  c = v68.c;
                  if (fabs(v68.c + 1.0) < 0.00001)
                  {
                    c = -1.0;
                  }
                }
              }

              v68.c = c;
              if (fabs(v68.d) >= 0.00001)
              {
                d = 1.0;
                if (fabs(v68.d + -1.0) >= 0.00001)
                {
                  d = v68.d;
                  if (fabs(v68.d + 1.0) < 0.00001)
                  {
                    d = -1.0;
                  }
                }
              }

              v68.d = d;
              v66 = v66 * a17;
              v67 = v67 * a17;
              Width = CVPixelBufferGetWidth(a1);
              Height = CVPixelBufferGetHeight(a1);
              v38 = Height;
              v39 = v67;
              if (fabs(v67 + -1.0) < 0.00001)
              {
                v67 = 1.0;
                v39 = 1.0;
              }

              v40 = v66;
              if (fabs(v66 + -1.0) < 0.00001)
              {
                v66 = 1.0;
                v40 = 1.0;
              }

              if (v39 == 1.0 && v40 == 1.0)
              {
                v41 = 0;
                v42 = 0;
                v43 = 0;
                v44 = 0.0;
                v45 = 0.0;
                y = 0.0;
                x = 0.0;
                v48 = a9;
              }

              else
              {
                v49 = Height;
                v50 = a2[1];
                *&v64.a = *a2;
                *&v64.c = v50;
                *&v64.tx = a2[2];
                CGAffineTransformInvert(&v65, &v64);
                v69.origin.x = a13;
                v69.origin.y = a14;
                v69.size.width = a15;
                v69.size.height = a16;
                v74 = CGRectApplyAffineTransform(v69, &v65);
                v70.origin.x = 0.0;
                v70.origin.y = 0.0;
                v70.size.width = Width;
                v58 = Width;
                v70.size.height = v38;
                v71 = CGRectIntersection(v70, v74);
                x = v71.origin.x;
                y = v71.origin.y;
                v45 = v71.size.width;
                v59 = v71.size.height;
                v60 = a10;
                v51 = v67;
                v43 = (v71.size.width * v67 + 0.5);
                v61 = a11;
                v52 = v66;
                v42 = (v71.size.height * v66 + 0.5);
                Width = (Width * v67 + 0.5);
                v38 = (v49 * v66 + 0.5);
                v64 = v68;
                CGAffineTransformScale(&v65, &v64, (1.0 / a17), (1.0 / a17));
                v68 = v65;
                v64 = v65;
                CGAffineTransformTranslate(&v65, &v64, v51 * x, y * v52);
                v68 = v65;
                v53 = v38 / v49;
                v44 = v59;
                CGAffineTransformMakeScale(&v65, Width / v58, v53);
                v72.size.height = a12;
                v72.origin.x = a9 - x;
                v72.size.width = v61;
                v72.origin.y = v60 - y;
                v75.origin.x = 0.0;
                v75.origin.y = 0.0;
                v75.size.width = v45;
                v75.size.height = v59;
                v73 = CGRectIntersection(v72, v75);
                v64 = v65;
                *&v48 = CGRectApplyAffineTransform(v73, &v64);
                a10 = v54;
                a11 = v55;
                a12 = v56;
                v41 = 1;
              }

              *a4 = x;
              a4[1] = y;
              a4[2] = v45;
              a4[3] = v44;
              *a7 = Width;
              a7[1] = v38;
              *a5 = v43;
              a5[1] = v42;
              v57 = *&v68.c;
              *a8 = *&v68.a;
              a8[1] = v57;
              a8[2] = *&v68.tx;
              *a6 = v48;
              a6[1] = a10;
              a6[2] = a11;
              a6[3] = a12;
              *a3 = v41;
            }

            else
            {
              ovc_getPrescalingParameters_cold_1();
            }
          }

          else
          {
            ovc_getPrescalingParameters_cold_2();
          }
        }

        else
        {
          ovc_getPrescalingParameters_cold_3();
        }
      }

      else
      {
        ovc_getPrescalingParameters_cold_4();
      }
    }

    else
    {
      ovc_getPrescalingParameters_cold_5();
    }
  }

  else
  {
    ovc_getPrescalingParameters_cold_6();
  }
}

uint64_t ovc_getColorMatrixForPixelFormatConversion(int a1, CFTypeRef cf1, int a3, CFTypeRef a4, void *a5)
{
  if (a1 == 875704422)
  {
    if (a3 != 875704438)
    {
      if (a3 == 1111970369)
      {
        if (a4 && CFEqual(a4, *MEMORY[0x1E6965FD0]))
        {
          v7 = &kOVCColorMatrix_YUV709f_32BGRA;
        }

        else
        {
          v7 = &kOVCColorMatrix_YUV601f_32BGRA;
        }

        goto LABEL_44;
      }

      goto LABEL_30;
    }

    if (cf1 && (v9 = *MEMORY[0x1E6965FD0], CFEqual(cf1, *MEMORY[0x1E6965FD0])))
    {
      if (!a4 || !CFEqual(a4, v9))
      {
        v7 = &kOVCColorMatrix_YUV709f_YUV601;
        goto LABEL_44;
      }
    }

    else if (a4 && CFEqual(a4, *MEMORY[0x1E6965FD0]))
    {
      v7 = &kOVCColorMatrix_YUV601f_YUV709;
      goto LABEL_44;
    }

    v7 = &kOVCColorMatrix_YUVf_YUV;
    goto LABEL_44;
  }

  if (a1 == 875704438)
  {
    if (a3 != 875704438)
    {
      if (a3 == 1111970369)
      {
        if (a4 && CFEqual(a4, *MEMORY[0x1E6965FD0]))
        {
          v7 = &kOVCColorMatrix_YUV709_32BGRA;
        }

        else
        {
          v7 = &kOVCColorMatrix_YUV601_32BGRA;
        }

        goto LABEL_44;
      }

      goto LABEL_30;
    }

    if (cf1 && (v8 = *MEMORY[0x1E6965FD0], CFEqual(cf1, *MEMORY[0x1E6965FD0])))
    {
      if (!a4 || !CFEqual(a4, v8))
      {
        v7 = &kOVCColorMatrix_YUV709_YUV601;
LABEL_44:
        *a5 = v7;
        return 0;
      }
    }

    else if (a4 && CFEqual(a4, *MEMORY[0x1E6965FD0]))
    {
      v7 = &kOVCColorMatrix_YUV601_YUV709;
      goto LABEL_44;
    }

LABEL_37:
    v7 = &kOVCColorMatrixIdentity;
    goto LABEL_44;
  }

  if (a1 != 1111970369)
  {
    goto LABEL_30;
  }

  if (a3 == 1111970369)
  {
    goto LABEL_37;
  }

  if (a3 == 875704438)
  {
    if (a4 && CFEqual(a4, *MEMORY[0x1E6965FD0]))
    {
      v7 = &kOVCColorMatrix_32BGRA_YUV709;
    }

    else
    {
      v7 = &kOVCColorMatrix_32BGRA_YUV601;
    }

    goto LABEL_44;
  }

LABEL_30:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t ovc_appendIntToArray(__CFArray *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(a1, v3);
    CFRelease(v4);
    return 0;
  }

  else
  {
    ovc_appendIntToArray_cold_1(&v7);
    return v7;
  }
}

CFIndex __ovc_adjustMaxInFlightBuffers_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 600));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __ovc_setNewInFlightEntry_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 600), v1);
  v4 = Value;
  if (Value)
  {
    v5 = Value[1];
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v7 = (UpTimeNanoseconds - v5) / 1000;
    ++*(DerivedStorage + 816);
    *(DerivedStorage + 808) += v7;
    v8 = *(DerivedStorage + 792);
    if (v8 >= v7)
    {
      v8 = (UpTimeNanoseconds - v5) / 1000;
    }

    *(DerivedStorage + 792) = v8;
    if (*(DerivedStorage + 800) > v7)
    {
      v7 = *(DerivedStorage + 800);
    }

    *(DerivedStorage + 800) = v7;
    if (*v4)
    {
      v4 = CFRetain(*v4);
    }

    else
    {
      v4 = 0;
    }

    v9 = 0;
  }

  else
  {
    __ovc_setNewInFlightEntry_block_invoke_2_cold_1(v12);
    v9 = LODWORD(v12[0]);
  }

  v10 = *(DerivedStorage + 640);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __ovc_glFenceCallback_block_invoke;
  v12[3] = &__block_descriptor_48_e5_v8__0l;
  v12[4] = DerivedStorage;
  v12[5] = v1;
  dispatch_async(v10, v12);
  v11 = *(DerivedStorage + 648);
  if (v11)
  {
    v11(*(DerivedStorage + 656), v1, v9, v4, 0);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t __ovc_glFenceCallback_block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(*(*(a1 + 32) + 600), *(a1 + 40));

  return FigSemaphoreSignal();
}

CFIndex __ovc_enforceMaxInFlightBufferCount_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 600));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFIndex __ovc_enforceMaxInFlightBufferCount_block_invoke_2(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 600));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ovc_createAndConfigureGLProgram(GLuint *a1, GLuint a2, GLuint a3)
{
  v4 = OVCCreateGLProgram(a2, a3, a1);
  if (v4)
  {
    v19 = v4;
    if (!a1)
    {
      return v19;
    }

    goto LABEL_29;
  }

  UniformLocation = glGetUniformLocation(*a1, "g_index");
  if (UniformLocation < 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = UniformLocation;
  }

  a1[1] = v6;
  v7 = glGetUniformLocation(*a1, "affine_transform");
  if (v7 < 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  a1[2] = v8;
  v9 = glGetUniformLocation(*a1, "opacity");
  if (v9 < 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9;
  }

  a1[3] = v10;
  v11 = glGetUniformLocation(*a1, "source_buffer_plane0");
  if (v11 < 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = v11;
  }

  a1[4] = v12;
  v13 = glGetUniformLocation(*a1, "source_buffer_plane1");
  if (v13 < 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13;
  }

  a1[5] = v14;
  v15 = glGetUniformLocation(*a1, "color_matrix");
  if (v15 < 0)
  {
    v16 = -1;
  }

  else
  {
    v16 = v15;
  }

  a1[6] = v16;
  AttribLocation = glGetAttribLocation(*a1, "vertex_coord");
  if (AttribLocation < 0)
  {
    v21 = 3956;
LABEL_28:
    ovc_createAndConfigureGLProgram_cold_1(v21, &v22);
    v19 = v22;
LABEL_29:
    glDeleteProgram(*a1);
    return v19;
  }

  a1[7] = AttribLocation;
  v18 = glGetAttribLocation(*a1, "texture_coord0");
  if (v18 < 0)
  {
    v21 = 3960;
    goto LABEL_28;
  }

  v19 = 0;
  a1[8] = v18;
  return v19;
}

CFNumberRef OUTLINED_FUNCTION_3_144(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char valuePtr)
{

  return CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
}

uint64_t FigTTMLBrCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v7 = CMDerivedObjectCreate();
    if (!v7)
    {
      FigBytePumpGetFigBaseObject(0);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
      if (v9)
      {
        return v9;
      }

      else
      {
        v7 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
        if (!v7)
        {
          *a3 = 0;
          *(a3 + 8) = 0;
          FigTTMLParseNode(a2, figTTMLBrConsumeChildNode, a3);
          v7 = v10;
          if (!v10)
          {
            *a4 = 0;
          }
        }
      }
    }
  }

  else
  {
    FigTTMLBrCreate_cold_1(&v12);
    return v12;
  }

  return v7;
}

uint64_t figTTMLBrConsumeChildNode(uint64_t a1, uint64_t *a2, void *a3)
{
  FigBytePumpGetFigBaseObject(*a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (a3)
  {
    if (!result)
    {
      *a3 = 0;
    }
  }

  return result;
}

void figTTMLBr_Finalize(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLBr_CopyDebugDesc(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"br: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLBr_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2)
{
  if (a2)
  {
    v3 = CFGetAllocator(a1);
    *a2 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  }

  else
  {
    figTTMLBr_CopyChildNodeArray_cold_1();
  }

  return 0;
}

uint64_t figTTMLBr_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 6;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLBr_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figTTMLSerializer_RegisterFigTTMLSerializerBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLSerializerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTTMLSerializerGetClassID_sRegisterFigTTMLSerializerBaseTypeOnce, figTTMLSerializer_RegisterFigTTMLSerializerBaseType);

  return CMBaseClassGetCFTypeID();
}