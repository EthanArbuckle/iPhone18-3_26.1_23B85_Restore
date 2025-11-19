uint64_t bapspManager_startAudioChainForSubPipe(double a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isSubPipeStarted = bapspManager_isSubPipeStarted();
  result = 0;
  v9 = *(DerivedStorage + 104);
  if (!v9 || isSubPipeStarted)
  {
    return result;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    return 4294954514;
  }

  result = v10(v9);
  if (result)
  {
    return result;
  }

  v11 = *(DerivedStorage + 104);
  if (a1 == 0.0)
  {
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v12)
    {

      return v12(v11, 1);
    }

    return 4294954514;
  }

  OUTLINED_FUNCTION_18_25();
  v15 = *a4;
  v16 = *(a4 + 2);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v13)
  {
    v14 = a1;
    v21 = v17;
    v22 = v18;
    v19 = v15;
    v20 = v16;
    v13(v11, &v21, &v19, 0, 1, 1, v14);
  }

  return 0;
}

void __bapspManager_postNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);

  bapspManager_releaseAsync(v3);
}

uint64_t bapspManager_setLoudnessInfoOnSubPipe()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 104);
  if (result)
  {
    v2 = *(DerivedStorage + 168);
    if (v2)
    {
      CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(result);
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 8);
      result = VTable + 8;
      v6 = *(v5 + 56);
      if (v6)
      {

        return v6(CMBaseObject, @"LoudnessInfo", v2);
      }
    }
  }

  return result;
}

uint64_t bapspManager_setAudioProcessingTapOnSubPipe()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 104);
  if (result)
  {
    v2 = *(DerivedStorage + 64);
    CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(result);
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v6 = *(v5 + 56);
    if (v6)
    {

      return v6(CMBaseObject, @"AudioProcessingTap", v2);
    }
  }

  return result;
}

uint64_t bapspManager_addListenersForSubPipe(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterAddWeakListeners();
}

void __bapspManager_subPipeFinishedProcessingData_block_invoke(uint64_t a1)
{
  if (FigCFEqual())
  {
    bapspManager_postNotification(*(a1 + 48), @"PlayResourceReleased", 0);
  }

  v2 = bapspManager_disconnectSbufBridge(*(a1 + 48));
  OUTLINED_FUNCTION_0_5(v2);
  if (!v3)
  {
    v4 = bapspManager_clearCurrentSubPipe(*(a1 + 48));
    OUTLINED_FUNCTION_0_5(v4);
    if (!v5)
    {
      bapspManager_setSubPipeTerminationInFlight(*(a1 + 48), 0);
      bapspManager_scheduleProcessingDataIfPossible(*(a1 + 48));
    }
  }

  v6 = *(a1 + 48);

  bapspManager_releaseAsync(v6);
}

uint64_t __bapspManager_copyProperty_block_invoke(void *a1)
{
  v2 = a1[6];
  v1 = a1[7];
  v3 = a1[8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 178))
  {
LABEL_15:
    v9 = 0;
    return OUTLINED_FUNCTION_12_7(v9);
  }

  v5 = DerivedStorage;
  if (CFEqual(v2, @"SourceSampleBufferConsumer"))
  {
    v6 = *(v5 + 80);
    if (!v6)
    {
      v8 = 0;
      goto LABEL_9;
    }

    Float64 = CFRetain(v6);
LABEL_7:
    v8 = Float64;
LABEL_9:
    v9 = 0;
    *v3 = v8;
    return OUTLINED_FUNCTION_12_7(v9);
  }

  if (CFEqual(v2, @"CurrentRate"))
  {
    Float64 = FigCFNumberCreateFloat64();
    goto LABEL_7;
  }

  v11 = CFEqual(v2, @"CurrentSubpipeType");
  v9 = *(v5 + 104);
  if (v11)
  {
    if (!v9)
    {
      *v3 = 0;
      return OUTLINED_FUNCTION_12_7(v9);
    }

    CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v9);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(CMBaseObject, @"SubPipeType", v1, v3);
    }

    goto LABEL_15;
  }

  if (v9)
  {
    v14 = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v9);
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v9 = v15(v14, v2, v1, v3);
    }

    else
    {
      v9 = 4294954514;
    }
  }

  return OUTLINED_FUNCTION_12_7(v9);
}

void __bapspManager_setProperty_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 40) + 178))
  {
    if (CFEqual(@"ThreadPriority", *(a1 + 48)))
    {
      v2 = *(a1 + 56);
      if (v2)
      {
        v3 = CFGetTypeID(v2);
        if (v3 == CFNumberGetTypeID())
        {
          v4 = *(*(a1 + 40) + 104);
          if (!v4)
          {
            return;
          }

          v5 = *(a1 + 56);
          CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v4);
          v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v7)
          {
            v8 = v7(CMBaseObject, @"ThreadPriority", v5);
          }

          else
          {
            v8 = 4294954514;
          }

          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }

    if (CFEqual(@"DecodeForPrerollRate", *(a1 + 48)))
    {
      v9 = *(a1 + 56);
      if (!v9)
      {
        goto LABEL_15;
      }

      v10 = CFGetTypeID(v9);
      if (v10 != CFNumberGetTypeID())
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_25_20();
      v11 = *(a1 + 64);

      bapspManager_startDataFlowIfRateIsValid(v11);
    }

    else if (CFEqual(@"PipelineRate", *(a1 + 48)))
    {
      v12 = *(a1 + 56);
      if (v12 && (v13 = CFGetTypeID(v12), v13 == CFNumberGetTypeID()))
      {
        OUTLINED_FUNCTION_25_20();
        if (dword_1EAF17468)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        bapspManager_startDataFlowIfRateIsValid(*(a1 + 64));
      }

      else if (!*(*(*(a1 + 32) + 8) + 24))
      {
        goto LABEL_15;
      }
    }

    else if (CFEqual(@"LoudnessInfo", *(a1 + 48)))
    {
      v15 = *(a1 + 56);
      if (!v15 || (v16 = CFGetTypeID(v15), v16 == CFDictionaryGetTypeID()) || !*(a1 + 56))
      {
        v17 = *(*(a1 + 40) + 168);
        if (v17)
        {
          CFRelease(v17);
          *(*(a1 + 40) + 168) = 0;
        }

        v18 = *(a1 + 56);
        if (v18)
        {
          *(*(a1 + 40) + 168) = CFRetain(v18);
        }

        else
        {
          *(*(a1 + 40) + 168) = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!*(*(a1 + 40) + 168))
          {
            goto LABEL_15;
          }
        }

        bapspManager_setLoudnessInfoOnSubPipe();
        *(*(*(a1 + 32) + 8) + 24) = 0;
        return;
      }

      if (!*(*(*(a1 + 32) + 8) + 24))
      {
LABEL_15:
        OUTLINED_FUNCTION_303();
        v8 = FigSignalErrorAtGM();
LABEL_16:
        OUTLINED_FUNCTION_12_7(v8);
      }
    }

    else
    {
      if (!CFEqual(@"AudioProcessingTap", *(a1 + 48)))
      {
        return;
      }

      if (*(a1 + 56))
      {
        TypeID = MTAudioProcessingTapGetTypeID();
        if (TypeID != CFGetTypeID(*(a1 + 56)))
        {
          return;
        }

        v20 = *(a1 + 56);
        v21 = *(a1 + 40);
        v22 = *(v21 + 64);
        *(v21 + 64) = v20;
        if (v20)
        {
          CFRetain(v20);
        }
      }

      else
      {
        v23 = *(a1 + 40);
        v22 = *(v23 + 64);
        *(v23 + 64) = 0;
      }

      if (v22)
      {
        CFRelease(v22);
      }

      bapspManager_setAudioProcessingTapOnSubPipe();
    }
  }
}

uint64_t bapspManager_setRateAndAnchorTime(const void *a1, double a2, uint64_t a3, __int128 *a4)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 178))
  {
    OUTLINED_FUNCTION_18_25();
    v12 = *a4;
    v13 = *(a4 + 2);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 64, 0x1020040EB82741ALL, 0);
    if (v8)
    {
      v9 = v8;
      if (a1)
      {
        v10 = CFRetain(a1);
      }

      else
      {
        v10 = 0;
      }

      *v9 = v10;
      *(v9 + 7) = a2;
      *(v9 + 8) = v14;
      *(v9 + 3) = v15;
      *(v9 + 2) = v12;
      *(v9 + 6) = v13;
      dispatch_async_f(*(DerivedStorage + 72), v9, bapspManager_setRateAndAnchorTimeDispatch);
    }
  }

  return 0;
}

void bapspManager_setRateAndAnchorTimeDispatch(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 56);
  v16 = *(a1 + 8);
  v17 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 178))
  {
    if ((v5 = DerivedStorage, v6 = CMBaseObjectGetDerivedStorage(), v7 = v6, !*(v6 + 104)) && *(v6 + 56) != -999999.875 || !bapspManager_isSubPipeStarted() && ((v8 = *(v7 + 56), v3 != 0.0) || v8 != -999999.875) && (v3 != 0.0 && v8 == -999999.875 || (v3 != 0.0 || v8 != 0.0) && ((v9 = v3 == 0.0, v8 != 0.0) ? (v10 = 1) : (v9 = 0, v10 = v3 == 0.0), v10 ? (v11 = !v9) : (v11 = 0), !v11)))
    {
      *(v5 + 56) = v3;
      bapspManager_startDataFlowIfRateIsValid(v2);
      v12 = *(v5 + 56);
      v20 = v16;
      v21 = v17;
      v18 = v14;
      v19 = v15;
      bapspManager_startAudioChainForSubPipe(v12, v2, &v20, &v18);
    }
  }

  bapspManager_releaseAsync(*a1);
  v13 = *MEMORY[0x1E695E480];

  CFAllocatorDeallocate(v13, a1);
}

uint64_t __bapspManager_reset_block_invoke(uint64_t result)
{
  if (!*(*(result + 40) + 178))
  {
    v2 = result;
    v3 = bapspManager_disconnectSbufBridge(*(result + 48));
    result = OUTLINED_FUNCTION_0_5(v3);
    if (!v4)
    {
      if (!*(v2 + 56) || (v17 = bapspManager_flushAllSampleBufferConsumers(), result = OUTLINED_FUNCTION_0_5(v17), !v18) && (!*(v2 + 56) || (OUTLINED_FUNCTION_22_21(), !v1) || ((v19 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0 ? (v20 = 4294954514) : (v22 = *MEMORY[0x1E6960CC0], v23 = *(MEMORY[0x1E6960CC0] + 16), v20 = v19(v1, &v22)), result = OUTLINED_FUNCTION_0_5(v20), !v21)))
      {
        OUTLINED_FUNCTION_22_21();
        if (v1)
        {
          v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v5)
          {
            v6 = v5(v1, 1);
          }

          else
          {
            v6 = 4294954514;
          }

          result = OUTLINED_FUNCTION_0_5(v6);
          if (v7)
          {
            return result;
          }

          OUTLINED_FUNCTION_22_21();
          v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          v9 = v8 ? v8(v1, 1) : 4294954514;
          result = OUTLINED_FUNCTION_0_5(v9);
          if (v10)
          {
            return result;
          }

          v11 = bapspManager_removeListenersForSubPipe(*(v2 + 48), *(*(v2 + 40) + 104));
          result = OUTLINED_FUNCTION_0_5(v11);
          if (v12)
          {
            return result;
          }

          CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(*(v2 + 40) + 104));
          if (CMBaseObject)
          {
            v14 = CMBaseObject;
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v15)
            {
              v15(v14);
            }
          }

          v16 = *(*(v2 + 40) + 104);
          if (v16)
          {
            CFRelease(v16);
            *(*(v2 + 40) + 104) = 0;
          }
        }

        return bapspManager_setSubPipeTerminationInFlight(*(v2 + 48), 0);
      }
    }
  }

  return result;
}

uint64_t bapspManager_flushAllSampleBufferConsumers()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 178))
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 80);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v3)
  {
    return 4294954514;
  }

  result = v3(v2);
  if (result)
  {
    return result;
  }

  v5 = *(v1 + 88);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5);
}

void __bapspManager_flush_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 40) + 178))
  {
    v3 = bapspManager_flushAllSampleBufferConsumers();
    OUTLINED_FUNCTION_0_5(v3);
    if (!v4)
    {
      OUTLINED_FUNCTION_22_21();
      if (v1)
      {
        v7 = *(a1 + 56);
        v8 = *(a1 + 72);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v5)
        {
          v9 = v7;
          v10 = v8;
          v6 = v5(v1, &v9);
        }

        else
        {
          v6 = 4294954514;
        }

        OUTLINED_FUNCTION_12_7(v6);
      }
    }
  }
}

void __bapspManager_sourceDataBecameReady_block_invoke(uint64_t a1)
{
  bapspManager_scheduleProcessingDataIfPossible(*(a1 + 32));
  v2 = *(a1 + 32);

  bapspManager_releaseAsync(v2);
}

void __bapspManager_mediatorLowWaterTriggerCallback_block_invoke(uint64_t a1)
{
  bapspManager_scheduleProcessingDataIfPossible(*(a1 + 32));
  v2 = *(a1 + 32);

  bapspManager_releaseAsync(v2);
}

uint64_t FigAlternateFilterMonitorTriggerSetBoss_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorTriggerInvoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorTriggerAddObserver_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorTriggerCreateForNotification_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigCPERemoteInitializeWithOptions()
{
  v0 = remoteXPCCPEClient_EnsureClientEstablished();
  if (v0 || (v0 = FigXPCCreateBasicMessage(), v0) || (v0 = FigXPCMessageSetCFString(), v0) || (v0 = FigXPCMessageSetCFDictionary(), v0))
  {
    v1 = v0;
  }

  else
  {
    v1 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (!v1)
    {
      v1 = FigXPCMessageCopyCFString();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v1;
}

uint64_t FigCPERemoteUninitialize()
{
  v0 = remoteXPCCPEClient_EnsureClientEstablished();
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v1 = FigXPCCreateBasicMessage();
    if (v1 || (v1 = FigXPCMessageSetCFString(), v1) || (v1 = FigXPCMessageSetCFString(), v1))
    {
      v2 = v1;
    }

    else
    {
      v2 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t FigCPERemoteSetStorageLocation()
{
  if (qword_1ED4CAF28 != -1)
  {
    dispatch_once(&qword_1ED4CAF28, &__block_literal_global_57);
  }

  v0 = remoteXPCCPEClient_EnsureClientEstablished();
  if (v0 || (v0 = FigSandboxRegisterURLWithProcessAndCopyRegistration(), v0) || (v0 = FigXPCCreateBasicMessage(), v0) || (v0 = FigXPCMessageSetCFData(), v0) || (v0 = FigXPCMessageSetCFURL(), v0))
  {
    v1 = v0;
  }

  else
  {
    v1 = FigXPCRemoteClientSendSyncMessage();
    if (!v1)
    {
      FigCFDictionarySetValue();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v1;
}

uint64_t FigCPERemoteCopySessionRecords()
{
  v0 = remoteXPCCPEClient_EnsureClientEstablished();
  if (!v0)
  {
    v0 = FigXPCCreateBasicMessage();
    if (!v0)
    {
      v0 = FigXPCMessageSetCFData();
      if (!v0)
      {
        v0 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v0)
        {
          v0 = FigXPCMessageCopyCFDictionary();
        }
      }
    }
  }

  v1 = v0;
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v1;
}

uint64_t FigCPERemoteRemoveSessionRecords()
{
  v0 = remoteXPCCPEClient_EnsureClientEstablished();
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v1 = FigXPCCreateBasicMessage();
    if (v1 || (v1 = FigXPCMessageSetCFData(), v1) || (v1 = FigXPCMessageSetCFArray(), v1))
    {
      v2 = v1;
    }

    else
    {
      v2 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t fasb_addFilterGuts()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v2)
  {
    v2(v0);
  }

  result = fasb_removeFilter();
  if (!result)
  {
    v4 = *(DerivedStorage + 48);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    v6 = v5 ? v5(v0) : -1;
    result = FigAlternateFilterTreeInsertLeaf(v4, v0, v6);
    if (!result)
    {

      return fasb_rebuildFilterTree();
    }
  }

  return result;
}

uint64_t fasb_removeFilter()
{
  OUTLINED_FUNCTION_369();
  CMBaseObjectGetDerivedStorage();
  result = FigAlternateFilterTreeRemoveLeaf();
  if (!result)
  {

    return fasb_rebuildFilterTree();
  }

  return result;
}

uint64_t FigAlternateSelectionBossCopyProperty(uint64_t a1, __CFString *a2, uint64_t a3, const __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"AlternateList"))
  {
    v7 = *(DerivedStorage + 24);
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v7 = CFRetain(v7);
LABEL_14:
    v9 = 0;
    *a4 = v7;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"FilteredAlternateList"))
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if (*(v10 + 24))
    {
      v11 = v10;
      while (*(v11 + 80) && !*(v11 + 122))
      {
        v8 = FigConditionVariableWaitRelative();
        if (v8)
        {
          goto LABEL_4;
        }
      }

      v7 = *(v11 + 32);
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (!CFEqual(a2, @"MediaSelectionArray"))
    {
      if (CFEqual(a2, @"HasHDRAlternates") || CFEqual(a2, @"HasAtmosAlternates") || CFEqual(a2, @"HasMultiChannelAudio") || CFEqual(a2, @"HasPlayableMultiChannelAudio") || CFEqual(a2, @"HighestVideoResolutionAlternateWithMultiChannelAudio") || CFEqual(a2, @"HasLosslessAudio") || CFEqual(a2, @"HasBinauralAudio"))
      {
        fasb_copyInitialAlternateListProperty(*(DerivedStorage + 24), a2, a4);
        v9 = 0;
      }

      else if (CFEqual(a2, @"Paused"))
      {
        v9 = 0;
        if (*(DerivedStorage + 122))
        {
          v13 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v13 = MEMORY[0x1E695E4C0];
        }

        *a4 = *v13;
      }

      else
      {
        v9 = 4294954509;
      }

      goto LABEL_15;
    }

    if (*(DerivedStorage + 24))
    {
      v7 = *(DerivedStorage + 16);
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

LABEL_3:
  v8 = FigSignalErrorAtGM();
LABEL_4:
  v9 = v8;
LABEL_15:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t fasb_monitorStateChangedNotificationHandler(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a5, @"AlternateFilterMonitorParameter_OldFilter");
  v8 = CFDictionaryGetValue(a5, @"AlternateFilterMonitorParameter_NewFilter");
  FigSimpleMutexLock();
  if (v8 != Value)
  {
    if (Value)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10)
      {
        v10(Value);
      }

      fasb_removeFilter();
      if (!v8)
      {
        goto LABEL_4;
      }
    }

    else if (!v8)
    {
LABEL_4:
      fasb_applyFiltersGuts(a2);
      goto LABEL_5;
    }

    fasb_addFilterGuts();
    goto LABEL_4;
  }

LABEL_5:

  return FigSimpleMutexUnlock();
}

void fasb_monitorExpandersAddedNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7 && !v7(a4, @"AlternateFilterMonitorProperty_Expanders", *MEMORY[0x1E695E480], &v13))
  {
    FigSimpleMutexLock();
    if (!fasb_applyExpandersGuts(a2, v13, &cf))
    {
      v10 = a2;
      v11 = cf;
      v8 = *(DerivedStorage + 8);
      if (v8)
      {
        v9.length = CFArrayGetCount(*(DerivedStorage + 8));
      }

      else
      {
        v9.length = 0;
      }

      v9.location = 0;
      CFArrayApplyFunction(v8, v9, fasb_dispatchAlternatesAddedDelegateFn, &v10);
    }

    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

uint64_t fasb_applyExpandersGuts(uint64_t a1, const __CFArray *a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!a3)
  {
    v20 = FigSignalErrorAtGM();
    MutableCopy = 0;
LABEL_25:
    Mutable = 0;
    goto LABEL_27;
  }

  v6 = DerivedStorage;
  v7 = *MEMORY[0x1E695E480];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(DerivedStorage + 24));
  if (!MutableCopy)
  {
    v20 = FigSignalErrorAtGM();
    goto LABEL_25;
  }

  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v10 = FigCFArrayCopyValuesAsCFSet();
    if (!v10)
    {
      v11 = 0;
      if (!a2)
      {
        goto LABEL_7;
      }

LABEL_6:
      for (i = CFArrayGetCount(a2); v11 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v11);
        if (!CFSetContainsValue(0, ValueAtIndex))
        {
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v14)
          {
            v20 = 4294954514;
            goto LABEL_27;
          }

          v10 = v14(ValueAtIndex, MutableCopy, &theArray);
          if (v10)
          {
            goto LABEL_37;
          }

          v15 = theArray;
          if (theArray)
          {
            v16.length = CFArrayGetCount(theArray);
          }

          else
          {
            v16.length = 0;
          }

          v16.location = 0;
          CFArrayAppendArray(MutableCopy, v15, v16);
          v17 = theArray;
          if (theArray)
          {
            v18.length = CFArrayGetCount(theArray);
          }

          else
          {
            v18.length = 0;
          }

          v18.location = 0;
          CFArrayAppendArray(Mutable, v17, v18);
          CFArrayAppendValue(*(v6 + 72), ValueAtIndex);
          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }
        }

        ++v11;
        if (a2)
        {
          goto LABEL_6;
        }

LABEL_7:
        ;
      }

      v19 = *(v6 + 24);
      *(v6 + 24) = MutableCopy;
      CFRetain(MutableCopy);
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = 0;
      *a3 = Mutable;
      goto LABEL_25;
    }
  }

  else
  {
    v10 = FigSignalErrorAtGM();
  }

LABEL_37:
  v20 = v10;
LABEL_27:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v20;
}

void fasb_dispatchMediaSelectionArrayChangedDelegateFn()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(v0 + 16))
  {
    v3 = DerivedStorage;
    v4 = OUTLINED_FUNCTION_3_88();
    v6 = malloc_type_calloc(v4, 0x38uLL, v5);
    if (v6)
    {
      v7 = v6;
      OUTLINED_FUNCTION_1_115();
      __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(v8, (v0 + 8));
      OUTLINED_FUNCTION_2_111();
      fasb_copyDelegateEntryValues(v9, v7 + 1);
      v10 = *(v3 + 16);
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      v7[6] = v10;
      if (v1)
      {
        v11 = CFRetain(v1);
      }

      else
      {
        v11 = 0;
      }

      *v7 = v11;
      dispatch_async_f(*(v0 + 32), v7, fasb_mediaSelectionArrayChangedDispatchFn);
    }
  }
}

uint64_t FigAlternateSelectionBossLockForConfiguration(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    FigSimpleMutexLock();
    ++*(v3 + 80);
    FigSimpleMutexUnlock();
  }

  return 0;
}

const void *FigAlternateSelectionBossUnlockForConfiguration(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    FigSimpleMutexLock();
    v4 = *(v3 + 80);
    if (v4 <= 0)
    {
      v6 = FigSignalErrorAtGM();
    }

    else
    {
      v5 = v4 - 1;
      *(v3 + 80) = v5;
      if (v5)
      {
        a1 = 0;
LABEL_9:
        FigSimpleMutexUnlock();
        return a1;
      }

      if (!*(v3 + 96) || (*(v3 + 96) = 0, v6 = fasb_applyFiltersGuts(a1), !v6))
      {
        v6 = MEMORY[0x19A8D12E0](*(v3 + 88));
      }
    }

    a1 = v6;
    goto LABEL_9;
  }

  return a1;
}

uint64_t fasb_rebuildFilterTree()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = (DerivedStorage + 40);
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    CFRelease(v1);
    *v2 = 0;
  }

  result = FigAlternateFilterTreeCopyLeaves(*(DerivedStorage + 48), v2);
  if (!result)
  {
    v4 = *(DerivedStorage + 56);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 56) = 0;
    }

    v5 = *(DerivedStorage + 48);

    return FigAlternateFilterTreeCreateFilter(v5, @"FigAlternateSelectionBoss", -1, (DerivedStorage + 56));
  }

  return result;
}

BOOL FigAlternateSelectionUtility_AlternateListHasIFrameAlternate(_BOOL8 a1)
{
  v1 = a1;
  cf = 0;
  theArray = 0;
  if (!a1)
  {
    return v1;
  }

  if (FigAlternateIFramesOnlyFilterCreate(*MEMORY[0x1E695E480], &cf) || (v2 = cf, (v3 = *(*(CMBaseObjectGetVTable() + 16) + 24)) == 0))
  {
LABEL_8:
    v1 = 0;
    goto LABEL_9;
  }

  v4 = v3(v2, v1, &theArray);
  v5 = theArray;
  if (!v4)
  {
    if (theArray)
    {
      v1 = CFArrayGetCount(theArray) > 0;
      v5 = theArray;
      if (!theArray)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v1 = 0;
  if (theArray)
  {
LABEL_7:
    CFRelease(v5);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

void fasb_dispatchAlternatesAddedDelegateFn(uint64_t a1)
{
  if (*(a1 + 24))
  {
    OUTLINED_FUNCTION_369();
    v3 = OUTLINED_FUNCTION_3_88();
    v5 = malloc_type_calloc(v3, 0x38uLL, v4);
    if (v5)
    {
      v6 = v5;
      OUTLINED_FUNCTION_1_115();
      __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(v7, (v1 + 8));
      OUTLINED_FUNCTION_2_111();
      fasb_copyDelegateEntryValues(v8, v6 + 1);
      v9 = *(v2 + 8);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      v6[6] = v9;
      v10 = *v2;
      if (*v2)
      {
        v10 = CFRetain(v10);
      }

      *v6 = v10;
      dispatch_async_f(*(v1 + 32), v6, fasb_alternatesAddedDispatchFn);
    }
  }
}

void fasb_alternatesAddedDispatchFn()
{
  v2 = OUTLINED_FUNCTION_5_76();
  if (v2)
  {
    (*(v0 + 32))(*v0, v2, *(v0 + 48));
  }

  if (*v0)
  {
    CFRelease(*v0);
  }

  v3 = *(v0 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  fasb_delegateEntryReleaseAndClearValues(v1);

  free(v0);
}

void fasb_dispatchAlternateChangedDelegateFn()
{
  OUTLINED_FUNCTION_369();
  v3 = *(v2 + 8);
  if (v3 && CFArrayGetCount(*(v2 + 8)))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 16);
    v18 = 0;
    if (v4)
    {
      if (CFEqual(v4, @"OfflinePlayable"))
      {
        v5 = 4294951781;
      }

      else if (CFEqual(v4, @"SupportedAudioFormat"))
      {
        v5 = 4294951780;
      }

      else if (CFEqual(v4, @"NeroSupportedVideoFormat") || CFEqual(v4, @"SupportedVideoRange") || CFEqual(v4, @"AdvisoryDeviceCapabilityFilterTree") || CFEqual(v4, @"VideoRangeAndFrameRateBucket"))
      {
        v5 = 4294950073;
      }

      else if (CFEqual(v4, @"AllowedCPC"))
      {
        v5 = 4294950068;
      }

      else if (CFEqual(v4, @"MediaValidation"))
      {
        v5 = 4294951779;
      }

      else if (CFEqual(v4, @"MediaSelectionAudible"))
      {
        v5 = 4294951778;
      }

      else if (CFEqual(v4, @"NetworkPermanentError") || CFEqual(v4, @"NetworkTemporaryError"))
      {
        v5 = 4294951777;
      }

      else if (CFEqual(v4, @"CombinedAudioPreference"))
      {
        v5 = 4294951486;
      }

      else if (CFEqual(v4, @"PreferBestFormatForVideoRange") || CFEqual(v4, @"DisplaySize") || CFEqual(v4, @"PreferredVideoFormat"))
      {
        v5 = 4294951485;
      }

      else
      {
        v5 = 4294951485;
        if (!CFEqual(v4, @"ResolutionCap"))
        {
          if (CFEqual(v4, @"ResolutionFloor"))
          {
            v5 = 4294951485;
          }

          else
          {
            v5 = 4294954371;
          }
        }
      }

      FigCreateErrorForOSStatus(v5, &v18);
      v4 = v18;
    }
  }

  if (*(v0 + 8) && (v6 = OUTLINED_FUNCTION_3_88(), (v8 = malloc_type_calloc(v6, 0x40uLL, v7)) != 0))
  {
    v9 = v8;
    OUTLINED_FUNCTION_1_115();
    __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(v10, (v0 + 8));
    OUTLINED_FUNCTION_2_111();
    fasb_copyDelegateEntryValues(v11, v9 + 1);
    if (v3)
    {
      v12 = CFRetain(v3);
    }

    else
    {
      v12 = 0;
    }

    v9[6] = v12;
    v14 = *v1;
    if (*v1)
    {
      v14 = CFRetain(v14);
    }

    *v9 = v14;
    v15 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v13 = Mutable;
    v17 = *(v1 + 16);
    if (v17)
    {
      CFDictionarySetValue(Mutable, @"FASBFIK_StoppedAtFilterName", v17);
    }

    if (v4)
    {
      CFDictionarySetValue(v13, @"FASBFIK_StoppedFilterError", v4);
    }

    v9[7] = CFDictionaryCreateCopy(v15, v13);
    dispatch_async_f(*(v0 + 32), v9, fasb_alternateChangedDispatchFn);
    if (v4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v13 = 0;
    if (v4)
    {
LABEL_29:
      CFRelease(v4);
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

CFStringRef fasb_copyNextLineFromString(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringGetLength(a1) - a2;
  if (v4 < 1)
  {
    return 0;
  }

  v7.location = 0;
  v7.length = 0;
  v8.location = a2;
  v8.length = v4;
  if (CFStringFindWithOptions(a1, @"\n", v8, 0, &v7))
  {
    v4 = v7.location - a2 + 1;
  }

  v5 = CFGetAllocator(a1);
  v9.location = a2;
  v9.length = v4;
  return CFStringCreateWithSubstring(v5, a1, v9);
}

void fasb_alternateChangedDispatchFn()
{
  v2 = OUTLINED_FUNCTION_5_76();
  if (v2)
  {
    (*(v0 + 16))(*v0, v2, *(v0 + 48), *(v0 + 56));
  }

  if (*v0)
  {
    CFRelease(*v0);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(v0 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(v0 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  fasb_delegateEntryReleaseAndClearValues(v1);

  free(v0);
}

void fasb_mediaSelectionArrayChangedDispatchFn()
{
  v2 = OUTLINED_FUNCTION_5_76();
  if (v2)
  {
    (*(v0 + 24))(*v0, v2, *(v0 + 48));
  }

  if (*v0)
  {
    CFRelease(*v0);
  }

  v3 = *(v0 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  fasb_delegateEntryReleaseAndClearValues(v1);

  free(v0);
}

void fasb_appendDescriptionApplierFn(CFTypeRef cf, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!cf || (v5 = *a2, v6 = CFGetTypeID(cf), v6 != FigAlternateFilterGetTypeID()))
  {
    MutableCopy = CFCopyDescription(cf);
    if (!MutableCopy)
    {
      return;
    }

    goto LABEL_14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v8 = CFCopyDescription(cf);
  if (v8)
  {
    v9 = v8;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
    if (MutableCopy)
    {
      v11 = *(DerivedStorage + 112);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v12)
      {
        v13 = v12(cf);
      }

      else
      {
        v13 = &stru_1F0B1AFB8;
      }

      Value = CFDictionaryGetValue(v11, v13);
      if (Value)
      {
        FigAlternateFilterApplyInfoGetStorage(Value, &v17);
      }

      v20[0] = v17;
      v20[1] = v18;
      v21 = v19;
      v22 = 0;
      fasb_insertFilteringInfoToDescriptionHelper(v5, MutableCopy, v20, &v22, (a2 + 16), (a2 + 24), 1);
    }

    CFRelease(v9);
    if (MutableCopy)
    {
LABEL_14:
      v15 = FigCFStringCopyWithIndent();
      if (v15)
      {
        v16 = v15;
        CFStringAppendFormat(v3, 0, @"\n%@", v15);
        CFRelease(v16);
      }

      CFRelease(MutableCopy);
    }
  }
}

uint64_t FigAlternateSelectionBossAddFilter_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossRemoveFilter_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossAddMonitor_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fasb_applyFiltersGuts_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossInitializeAlternateList_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossInitializeAlternateList_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossInitializeAlternateList_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossAddDelegate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossAddDelegate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSelectionBossCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fasb_insertFilteringInfoToDescriptionHelper_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerReportOneRTCMessage(int a1, int a2, uint64_t a3)
{
  v16 = 0;
  if ((a1 - 4) < 0xFFFFFFFD || (a2 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  v5 = a2;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    _MergedGlobals_7[0]();
    FigCFDictionarySetValue();
    off_1ED4CA200[0]();
    FigCFDictionarySetValue();
    v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v9)
    {
      v10 = v9;
      off_1ED4CA208[0]();
      FigCFDictionarySetInt();
      off_1ED4CA210[0]();
      arc4random();
      FigCFDictionarySetInt();
      off_1ED4CA218[0]();
      FigCFDictionarySetInt();
      v11 = objc_autoreleasePoolPush();
      v12 = [(objc_class *)off_1ED4CA220() sendOneMessageWithSessionInfo:v10 userInfo:v8 category:v5 type:0 payload:a3 error:&v16];
      v14 = 0;
      if ((v12 & 1) == 0)
      {
        v14 = [v16 code];
      }

      objc_autoreleasePoolPop(v11);
      CFRelease(v8);
      CFRelease(v10);
      return v14;
    }

    fig_log_get_emitter();
    v15 = FigSignalErrorAtGM();
    CFRelease(v8);
    return v15;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigAirPlayRoutePuppetCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayRoutePuppet_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayRoutePuppet_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayRoutePuppet_Activate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayRoutePuppet_ReevaluateCurrentRoute_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayRoutePuppet_ResetRoutingContextIfNeeded_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayRoutePuppet_SuspendAirPlayScreen_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayRoutePuppet_ResumeAirPlayScreen_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_vrot_processSampleBuffer(const void *a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  pixelBufferOut = 0;
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  sampleBufferOut = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  if (!ImageBuffer)
  {
    goto LABEL_27;
  }

  v7 = PixelFormatType;
  OutputSampleTimingInfoArray = CMSampleBufferGetOutputSampleTimingInfoArray(a2, 1, &timingArrayOut, 0);
  if (OutputSampleTimingInfoArray)
  {
    goto LABEL_15;
  }

  if (!*(DerivedStorage + 16))
  {
    sbp_vrot_ensurePoolUpToDate(a1, v7);
  }

  v9 = CFGetAllocator(a1);
  OutputSampleTimingInfoArray = CVPixelBufferPoolCreatePixelBuffer(v9, *(DerivedStorage + 48), &pixelBufferOut);
  if (OutputSampleTimingInfoArray)
  {
    goto LABEL_15;
  }

  if (*(DerivedStorage + 16))
  {
    Width = CVPixelBufferGetWidth(pixelBufferOut);
    Height = CVPixelBufferGetHeight(pixelBufferOut);
    v13 = (DerivedStorage + 24);
    v12 = *(DerivedStorage + 24);
    if (!v12)
    {
      goto LABEL_12;
    }

    v24 = CVPixelBufferGetIOSurface(v12) == 0;
    v14 = CVPixelBufferGetIOSurface(pixelBufferOut) == 0;
    if (CVPixelBufferGetPixelFormatType(*v13) != v7 || CVPixelBufferGetWidth(*v13) != Width || (CVPixelBufferGetHeight(*v13) != Height) | (v24 ^ v14) & 1)
    {
      CFRelease(*v13);
      *v13 = 0;
      goto LABEL_12;
    }

    if (!*v13)
    {
LABEL_12:
      if (Width >> 31 || Height >> 31)
      {
        fig_log_get_emitter();
        OutputSampleTimingInfoArray = FigSignalErrorAtGM();
        goto LABEL_15;
      }

      OutputSampleTimingInfoArray = FigCreateIOSurfaceBackedCVPixelBuffer();
      if (OutputSampleTimingInfoArray)
      {
LABEL_15:
        v15 = OutputSampleTimingInfoArray;
        goto LABEL_30;
      }
    }
  }

  p_pixelBufferOut = &pixelBufferOut;
  if (*(DerivedStorage + 16))
  {
    p_pixelBufferOut = (DerivedStorage + 24);
  }

  OutputSampleTimingInfoArray = MEMORY[0x19A8D4E10](*(DerivedStorage + 8), ImageBuffer, *p_pixelBufferOut);
  if (OutputSampleTimingInfoArray)
  {
    goto LABEL_15;
  }

  v17 = *(DerivedStorage + 16);
  if (v17)
  {
    OutputSampleTimingInfoArray = VTPixelTransferSessionTransferImage(v17, *(DerivedStorage + 24), pixelBufferOut);
    if (OutputSampleTimingInfoArray)
    {
      goto LABEL_15;
    }
  }

  v19 = (DerivedStorage + 64);
  v18 = *(DerivedStorage + 64);
  if (!v18 || !CMVideoFormatDescriptionMatchesImageBuffer(v18, pixelBufferOut))
  {
    FigFormatDescriptionRelease();
    *v19 = 0;
    v20 = CFGetAllocator(a1);
    OutputSampleTimingInfoArray = CMVideoFormatDescriptionCreateForImageBuffer(v20, pixelBufferOut, (DerivedStorage + 64));
    if (OutputSampleTimingInfoArray)
    {
      goto LABEL_15;
    }
  }

  v21 = CFGetAllocator(a1);
  OutputSampleTimingInfoArray = CMSampleBufferCreateForImageBuffer(v21, pixelBufferOut, 1u, 0, 0, *v19, &timingArrayOut, &sampleBufferOut);
  if (OutputSampleTimingInfoArray)
  {
    goto LABEL_15;
  }

  CMPropagateAttachments(a2, sampleBufferOut);
LABEL_27:
  v22 = *(DerivedStorage + 72);
  if (v22)
  {
    v22(*(DerivedStorage + 80), 0, sampleBufferOut);
  }

  v15 = 0;
LABEL_30:
  CVPixelBufferRelease(pixelBufferOut);
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  return v15;
}

uint64_t FigSampleBufferProcessorCreateForVideoRotation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForVideoRotation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForVideoRotation_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForVideoRotation_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForVideoRotation_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForVideoRotation_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForVideoRotation_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForVideoRotation_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSCCParserCreate(const void *a1, _OWORD *a2, uint64_t a3, int a4, const void *a5, void *a6)
{
  if (!a1 || !a2 || !a6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v16 = FigSignalErrorAtGM();
    goto LABEL_10;
  }

  v12 = MEMORY[0x19A8CC720](a5, 184, 0x10F00403C991150, 0);
  v13 = v12;
  if (!v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v16 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  bzero(v12, 0xB8uLL);
  if (a5)
  {
    v14 = CFRetain(a5);
  }

  else
  {
    v14 = 0;
  }

  *v13 = v14;
  v13[2] = CFRetain(a1);
  v15 = a2[1];
  *(v13 + 9) = *a2;
  *(v13 + 10) = v15;
  v13[22] = a3;
  *(v13 + 2) = a4;
  v16 = FigCEA608DataInspectorCreate(a5, v13 + 14);
  if (!v16)
  {
    *a6 = v13;
LABEL_10:
    v13 = 0;
  }

LABEL_11:
  FigSCCParserRelease(v13);
  return v16;
}

void sccParserMalformedDataInfoRelease(CFAllocatorRef allocator, void *ptr)
{
  if (ptr)
  {
    v4 = ptr[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = ptr[2];
    if (v5)
    {
      CFRelease(v5);
    }

    CFAllocatorDeallocate(allocator, ptr);
  }
}

uint64_t FigSCCParserSetFrameDuration(uint64_t a1, __int128 *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a2 + 3) & 0x1D) == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 2);
    v34 = *(a2 + 12);
    v35 = *(a2 + 5);
    v6 = CMTimeMake(&v33, 1001, 30000);
    if (OUTLINED_FUNCTION_5_77(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v31, v33.value, *&v33.timescale, v33.epoch, v34, v35) && (v14 = CMTimeMake(&v33, 100, 2997), OUTLINED_FUNCTION_5_77(v14, v15, v16, v17, v18, v19, v20, v21, v28, v30, v32, v33.value, *&v33.timescale, v33.epoch, v34, v35)))
    {
      LODWORD(v33.value) = 0;
      v22 = modff(v5 / v4, &v33);
      v23 = *&v33.value;
      if (v22 != 0.0 || v23 == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_239();
        result = FigSignalErrorAtGM();
        if (result)
        {
          return result;
        }

        goto LABEL_11;
      }

      if (v23 > 0x1E || ((1 << v23) & 0x43000000) == 0)
      {
LABEL_11:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_239();
        result = FigSignalErrorAtGM();
        if (result)
        {
          return result;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v23 = 30;
    }

    *(a1 + 104) = v23;
LABEL_15:
    result = 0;
    v26 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v26;
    return result;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_239();

  return FigSignalErrorAtGM();
}

uint64_t FigSCCParserParse(uint64_t a1)
{
  v159 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  number = 0;
  v144 = 0;
  if (!a1 || (v3 = a1, (*(a1 + 92) & 1) == 0) || *(a1 + 12))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_76();
LABEL_183:
    v6 = FigSignalErrorAtGM();
LABEL_184:
    v26 = v6;
    v112 = 0;
    goto LABEL_178;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v112 = 0;
    v26 = 4294954514;
    goto LABEL_178;
  }

  v6 = v5(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number);
  if (v6)
  {
    goto LABEL_184;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  if ((valuePtr & 0x8000000000000000) != 0 || (v125 = malloc_type_malloc(valuePtr, 0x2C057407uLL)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_76();
    goto LABEL_183;
  }

  v7 = *(v3 + 16);
  v8 = valuePtr;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9 || v9(v7, v8, 0, v125, &v144) || (v10 = v144, v144 != valuePtr))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_76();
    v100 = FigSignalErrorAtGM();
    goto LABEL_173;
  }

  v11 = 0;
  v12 = 0;
  *(v3 + 24) = v125;
  *(v3 + 72) = 0;
  v13 = &value + 2;
  v14 = MEMORY[0x1E695E4D0];
  v15 = MEMORY[0x1E695E4C0];
  *(v3 + 32) = v10;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  v140 = v3 + 24;
  *(v3 + 64) = 0;
  v124 = *v14;
  v123 = *v15;
  v134 = &v156;
  v143 = v3;
  v126 = &value + 2;
LABEL_12:
  v16 = v10 - v11;
  if (v10 == v11)
  {
    v17 = 0;
    v20 = 0;
  }

  else
  {
    v17 = 0;
    v18 = *v140 + v11;
    while (1)
    {
      v19 = *(v18 + v17);
      if (v19 == 10)
      {
        break;
      }

      if (v19 == 13)
      {
        if (v16 - 1 != v17 && *(v18 + v17 + 1) == 10)
        {
          v20 = 2;
          goto LABEL_23;
        }

        break;
      }

      if (v16 == ++v17)
      {
        v20 = 0;
        v17 = v16;
        goto LABEL_23;
      }
    }

    v20 = 1;
  }

LABEL_23:
  *(v3 + 48) = v11;
  *(v3 + 56) = v11;
  *(v3 + 40) = v17;
  v21 = *(v3 + 64);
  *(v3 + 64) = v21 + 1;
  *(v3 + 72) = v17 + v11 + v20;
  if (v21 <= -2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_76();
    v100 = FigSignalErrorAtGM();
    if (v100)
    {
      goto LABEL_173;
    }

LABEL_26:
    if (!v12)
    {
      memset(&__s1, 0, 19);
      time.value = 0;
      sccLineStreamSkipSpaces(v140);
      sccLineStreamReadData(v140, 0x12uLL, &__s1, &time);
      if (time.value == 18 && !strcmp(&__s1, "Scenarist_SCC V1.0") && !sccLineStreamSkipSpaces(v140) || (fig_log_get_emitter(), OUTLINED_FUNCTION_4_76(), v100 = FigSignalErrorAtGM(), !v100))
      {
        v12 = 1;
        goto LABEL_129;
      }

      goto LABEL_173;
    }

    sccLineStreamSkipSpaces(v140);
    HIDWORD(v141) = *(v3 + 64);
    v23 = *(v3 + 48);
    v22 = *(v3 + 56);
    time.timescale = 0;
    time.value = 0;
    __s1.timescale = 0;
    __s1.value = 0;
    v152 = 0;
    sccLineStreamReadData(v140, 0xBuLL, &__s1, &v152);
    v24 = v152;
    if (v152 != 11)
    {
      v101 = 0;
      v29 = 82;
LABEL_163:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_76();
      v26 = FigSignalErrorAtGM();
      if (v26)
      {
        v119 = v24;
        v102 = v143;
        v103 = OUTLINED_FUNCTION_415_0();
        v104 = HIDWORD(v141);
        sccParserMalformedDataInfoCreateIfNeeded(v103, v105, "The timecode is malformed.", v106, SHIDWORD(v141), v23, v22, v107, v101, v119, 0);
        v45 = 0;
        goto LABEL_166;
      }

      OUTLINED_FUNCTION_8_39();
      v34 = *(v143 + 104);
LABEL_53:
      v35 = 60 * v34;
      v36 = v34 * v29 + v33 + (60 * v26 + flags) * 60 * v34;
      if (v2)
      {
        v37 = 600 * v34;
        v38 = v36 / (600 * v34);
        v39 = -18 * v38;
        v40 = v36 - v38 * v37;
        v41 = v40 / v35;
        if (v40 >= 2 && v41 >= 1)
        {
          v98 = v39 - 2 * v41 + 2;
          v99 = v40 % v35;
          if (v99 < 2)
          {
            v39 = v98 + ~v99;
          }

          else
          {
            v39 = v98 - 2;
          }
        }

        v36 += v39;
      }

      v43 = v143;
      v44 = v36;
      v45 = *(v143 + 132) - v36;
      if (v45 < 1)
      {
        goto LABEL_61;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_76();
      v26 = FigSignalErrorAtGM();
      if (!v26)
      {
        v44 = 0;
        OUTLINED_FUNCTION_8_39();
        v43 = v143;
LABEL_61:
        v46 = *(v43 + 144);
        v47 = v43;
        if (v46)
        {
          v26 = v46(v26, flags, v29, v33, v2, *(v43 + 176));
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_64;
      }

      v102 = v143;
      v104 = HIDWORD(v141);
LABEL_166:
      v120 = strlen(&time);
      v108 = OUTLINED_FUNCTION_415_0();
      sccParserMalformedDataInfoCreateIfNeeded(v108, v109, "The timecode overlaps the previous closed caption data.", v110, v104, v23, v22, v111, 0, v120, v45);
      v44 = 0;
      v47 = v102;
LABEL_64:
      if (*(v47 + 136) && sccParserCallMalformedDataCallback(v47))
      {
        v44 = *(v47 + 132);
      }

      else if (v26)
      {
        goto LABEL_177;
      }

      HIDWORD(v127) = v12;
      v48 = 0;
      v135 = 0;
      v142 = 0;
      value = 0;
      HIDWORD(v139) = *(v47 + 8);
      p_value = &value;
      if ((v139 & 0x100000000) != 0)
      {
        p_value = 0;
      }

      v130 = p_value;
      v50 = 0xFFFFFFFFLL;
      v2 = 0xFFFFFFFFLL;
      for (i = v44; ; ++i)
      {
        HIWORD(v147) = 0;
        __s1 = **&MEMORY[0x1E6960C70];
        sccLineStreamSkipSpaces(v140);
        LODWORD(flags) = *(v143 + 64);
        v53 = *(v143 + 48);
        v52 = *(v143 + 56);
        v151 = 0;
        v150 = 0;
        *__s = 0;
        time.value = 0;
        *&time.timescale = 0;
        v154 = 0;
        __dst = 0;
        v152 = 0;
        v54 = sccLineStreamReadData(v140, 4uLL, &__dst, &v152);
        v62 = v152;
        if (v152 == 2 || v152 == 4)
        {
          v156 = 0;
          v155 = 0;
          v64 = OUTLINED_FUNCTION_11_42(__dst);
          if (v134 == v155)
          {
            v65 = v64;
            if (v62 != 4)
            {
              v67 = 0;
              v68 = 1;
              goto LABEL_83;
            }

            v156 = 0;
            v155 = 0;
            v66 = OUTLINED_FUNCTION_11_42(SHIWORD(__dst));
            if (v134 == v155)
            {
              v67 = v66;
              v68 = 2;
LABEL_83:
              v151 = v65 | (v67 << 8);
              *__s = __dst;
              v150 = v154;
              goto LABEL_84;
            }

            v129 = 2;
          }

          else
          {
            v129 = 0;
          }

          v62 = 2;
        }

        else
        {
          if (!v152)
          {
            if (!v48)
            {
              v26 = 0;
LABEL_124:
              v3 = v143;
              goto LABEL_125;
            }

            OUTLINED_FUNCTION_9_42(v54, v55, v56, v57, v58, v59, v60, v61, v115, v116, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v134, v135);
            v95 = v142;
            *(v48 + 15) = v142;
            v3 = v143;
            v96 = *(v143 + 152);
            v12 = HIDWORD(v127);
            if (v96)
            {
              v97 = v96(v48, *(v143 + 176));
              if (!v97)
              {
                v95 = *(v48 + 15);
                goto LABEL_121;
              }

              v26 = v97;
            }

            else
            {
LABEL_121:
              *(v143 + 132) = *(v48 + 8) + v95;
              sccParserCaptionDataInfoRelease(*v143, v48);
              v48 = 0;
              v26 = 0;
            }

            v13 = v126;
            goto LABEL_126;
          }

          v129 = 0;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_4_76();
        v69 = FigSignalErrorAtGM();
        if (v69)
        {
          v26 = v69;
          v117 = v62;
          v86 = OUTLINED_FUNCTION_415_0();
          v87 = v52;
          sccParserMalformedDataInfoCreateIfNeeded(v86, v88, "The byte characters are malformed.", v89, flags, v53, v52, v90, v129, v117, 0);
LABEL_112:
          v118 = strlen(__s);
          v91 = OUTLINED_FUNCTION_415_0();
          v52 = v87;
          sccParserMalformedDataInfoCreateIfNeeded(v91, v92, "The byte characters are not valid.", v93, flags, v53, v87, v94, 0, v118, 0);
          v68 = 0;
          value_high = 0;
          timescale = 0;
          flags = 0;
          goto LABEL_86;
        }

        v68 = 0;
LABEL_84:
        v70 = FigCEA608DataInspectorInspectBytePair(*(v143 + 112), &v151, v68, &time, v130);
        v26 = v70;
        if (v70)
        {
          v87 = v52;
          goto LABEL_112;
        }

        HIWORD(v147) = v151;
        value_high = HIDWORD(time.value);
        timescale = time.timescale;
        flags = time.flags;
LABEL_86:
        if (*(v143 + 136) && (v70 = sccParserCallMalformedDataCallback(v143), v70))
        {
          timescale = 0xFFFFFFFFLL;
          flags = 0xFFFFFFFFLL;
        }

        else
        {
          if (v26)
          {
            goto LABEL_124;
          }

          if (v50 == timescale && v2 == flags)
          {
            flags = v2;
            timescale = v50;
            v3 = v143;
            if (!v48)
            {
              goto LABEL_139;
            }
          }

          else
          {
            if (v48)
            {
              OUTLINED_FUNCTION_9_42(v70, v71, v72, v73, v74, v75, v76, v77, v115, v116, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v134, v135);
              *(v48 + 15) = v142;
              v3 = v143;
              v81 = *(v143 + 152);
              if (v81)
              {
                v82 = v81(v48, *(v143 + 176));
                if (v82)
                {
                  v26 = v82;
                  goto LABEL_125;
                }
              }

              sccParserCaptionDataInfoRelease(*v143, v48);
              v142 = 0;
            }

            else
            {
              v3 = v143;
            }

            time = *(v140 + 56);
            CMTimeMultiply(&__s1, &time, i);
            v2 = *v3;
            time = __s1;
            v83 = MEMORY[0x19A8CC720](v2, 80, 0x1020040ABEC6194, 0);
            v48 = v83;
            if (!v83 || (v83[3] = 0u, v83[4] = 0u, v83[1] = 0u, v83[2] = 0u, *v83 = 0u, Mutable = CFDataCreateMutable(v2, 0), (*(v48 + 8) = Mutable) == 0) || (v139 & 0x100000000) == 0 && (v85 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]), (*(v48 + 9) = v85) == 0))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_4_76();
              v26 = FigSignalErrorAtGM();
              sccParserCaptionDataInfoRelease(v2, v48);
              if (!v26)
              {
LABEL_139:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_4_76();
                v26 = FigSignalErrorAtGM();
              }

              v48 = 0;
LABEL_125:
              v13 = v126;
              v12 = HIDWORD(v127);
LABEL_126:
              sccParserCaptionDataInfoRelease(*v3, v48);
              if (value)
              {
                CFRelease(value);
              }

              if (v26)
              {
                goto LABEL_177;
              }

LABEL_129:
              v11 = *(v3 + 72);
              v10 = *(v3 + 32);
              goto LABEL_12;
            }

            *v48 = value_high;
            *(v48 + 1) = timescale;
            *(v48 + 2) = flags;
            *(v48 + 2) = v52;
            *(v48 + 8) = i;
            *(v48 + 36) = time;
          }

          CFDataAppendBytes(*(v48 + 8), &v147 + 6, v68);
          if ((v139 & 0x100000000) == 0)
          {
            CFArrayAppendValue(*(v48 + 9), value);
            if (value)
            {
              CFRelease(value);
              value = 0;
            }
          }

          v135 = *(v3 + 56);
          ++v142;
        }

        v50 = timescale;
        v2 = flags;
      }
    }

    OUTLINED_FUNCTION_7_55();
    v25 = OUTLINED_FUNCTION_2_112(__s1.value, v115, v116, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v134, v135, v139, v140, v141, v143, v144, valuePtr, number, v147, value);
    if (v13 != v155)
    {
      v101 = 0;
      v29 = 87;
      goto LABEL_162;
    }

    LOBYTE(v26) = v25;
    if (v25 > 0x63u)
    {
      v101 = 0;
      v29 = 88;
      goto LABEL_162;
    }

    if (BYTE2(__s1.value) == 58)
    {
      OUTLINED_FUNCTION_7_55();
      v27 = OUTLINED_FUNCTION_2_112(*(&__s1.value + 3), v115, v116, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v134, v136, v139, v140, v141, v143, v144, valuePtr, number, v147, value);
      if (v13 == v155)
      {
        LOBYTE(flags) = v27;
        if (v27 <= 0x3Bu)
        {
          if (BYTE5(__s1.value) == 58)
          {
            OUTLINED_FUNCTION_7_55();
            v28 = OUTLINED_FUNCTION_2_112(SHIWORD(__s1.value), v115, v116, v121, v122, v123, v124, v125, v126, v127, v128, v129, v132, v134, v137, v139, v140, v141, v143, v144, valuePtr, number, v147, value);
            if (v13 == v155)
            {
              v29 = v28;
              if (v28 <= 0x3Bu)
              {
                if (LOBYTE(__s1.timescale) - 60 < 0xFFFFFFFE)
                {
                  v29 = 117;
                  goto LABEL_157;
                }

                v2 = LOBYTE(__s1.timescale) == 59;
                v30 = *(v143 + 120);
                if (v30)
                {
                  if (CFBooleanGetValue(v30) != v2)
                  {
                    v29 = 122;
LABEL_157:
                    v101 = 8;
                    goto LABEL_158;
                  }
                }

                else
                {
                  if (LOBYTE(__s1.timescale) == 59)
                  {
                    v31 = v124;
                  }

                  else
                  {
                    v31 = v123;
                  }

                  if (v31)
                  {
                    v31 = CFRetain(v31);
                  }

                  *(v143 + 120) = v31;
                }

                OUTLINED_FUNCTION_7_55();
                v32 = OUTLINED_FUNCTION_2_112(*(&__s1.timescale + 1), v115, v116, v121, v122, v123, v124, v125, v126, v127, v128, v129, v133, v134, v138, v139, v140, v141, v143, v144, valuePtr, number, v147, value);
                if (v13 == v155)
                {
                  v33 = v32;
                  v34 = *(v143 + 104);
                  if (v34 > v32)
                  {
                    time.value = __s1.value;
                    time.timescale = __s1.timescale;
                    goto LABEL_53;
                  }

                  v29 = -127;
                }

                else
                {
                  v29 = 0x80;
                }

                v101 = 9;
LABEL_162:
                v24 = 2;
                goto LABEL_163;
              }

              v29 = 112;
            }

            else
            {
              v29 = 111;
            }

            v101 = 6;
            goto LABEL_162;
          }

          v29 = 105;
          v101 = 5;
LABEL_158:
          v24 = 1;
          goto LABEL_163;
        }

        v29 = 100;
      }

      else
      {
        v29 = 99;
      }

      v101 = 3;
      goto LABEL_162;
    }

    v29 = 93;
    v101 = 2;
    goto LABEL_158;
  }

  if (v17 + v20)
  {
    if (!v17)
    {
      goto LABEL_129;
    }

    goto LABEL_26;
  }

  v113 = *(v3 + 160);
  if (!v113 || (v100 = v113(*(v3 + 176)), !v100))
  {
    v26 = 0;
    *(v3 + 12) = 1;
    goto LABEL_177;
  }

LABEL_173:
  v26 = v100;
LABEL_177:
  v112 = v125;
LABEL_178:
  free(v112);
  if (number)
  {
    CFRelease(number);
  }

  return v26;
}

uint64_t sccParserCallMalformedDataCallback(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    return 1;
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    v4 = v3(*v1, *(v1 + 1), *(v1 + 2), v1[6], *(v1 + 4), *(v1 + 5), *(v1 + 6), v1[14], *(a1 + 176));
    v1 = *(a1 + 136);
  }

  else
  {
    v4 = 1;
  }

  sccParserMalformedDataInfoRelease(*a1, v1);
  *(a1 + 136) = 0;
  return v4;
}

void sccParserMalformedDataInfoCreateIfNeeded(const __CFAllocator **a1, int a2, const char *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CFIndex a10, int a11)
{
  if ((a2 + 16563) >= 0xFFFFFFFE && !a1[17])
  {
    v17 = *a1;
    v18 = MEMORY[0x19A8CC720](*a1, 64, 0x106004080B652F1, 0);
    v19 = v18;
    if (v18 && (v18[2] = 0u, v18[3] = 0u, *v18 = 0u, v18[1] = 0u, v20 = CFStringCreateWithCString(v17, a3, 0x8000100u), (*(v19 + 1) = v20) != 0) && (v21 = CFStringCreateWithBytes(v17, (a4 + a9), a10, 0x8000100u, 0), (*(v19 + 2) = v21) != 0))
    {
      *v19 = a2;
      *(v19 + 6) = a5;
      *(v19 + 4) = a6;
      *(v19 + 5) = a9 + a7;
      *(v19 + 6) = a10;
      *(v19 + 14) = a11;
      a1[17] = v19;
      v19 = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      FigSignalErrorAtGM();
    }

    sccParserMalformedDataInfoRelease(v17, v19);
  }
}

uint64_t FigSCCParserCaptionDataInfoGetChannel_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSCCParserCaptionDataInfoGetFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSCCParserCaptionDataInfoGetDTS_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSCCParserCaptionDataInfoGetCaptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSCCParserCaptionDataInfoGetCaptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vdms_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF174D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vdms_removeFVTNotificationListeners(*(DerivedStorage + 24));
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_0_127();
  if (!FigNotificationCenterRemoveWeakListener())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_0_127();
    FigNotificationCenterRemoveWeakListener();
  }

  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *(v4 + 48);
  if (v5)
  {
    v6 = (v4 + 56);
    do
    {
      v7 = *v5;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_113();
      FigNotificationCenterRemoveWeakListener();
      v8 = *v5;
      v9 = v5[1];
      v10 = (*v5 + 8);
      if (!*v5)
      {
        v10 = v6;
      }

      *v10 = v9;
      *v9 = v8;
      vdms_destroyResourceEntry(v5);
      v5 = v7;
    }

    while (v7);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
  v11 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v12 = v11;
    v13 = *(v11 + 80);
    if (v13)
    {
      CFRelease(v13);
      *(v12 + 80) = 0;
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v14 = *(DerivedStorage + 24);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 24) = 0;
  }

  v15 = *(DerivedStorage + 96);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 96) = 0;
  }

  v16 = *(DerivedStorage + 88);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 88) = 0;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 64));
  if (v17)
  {
    v18 = v17;
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v19)
    {
      v19(v18);
    }
  }

  FigBytePumpRelease(*(DerivedStorage + 64));
  FigRetainProxyRelease();
  *(DerivedStorage + 72) = 0;
  v20 = *(DerivedStorage + 8);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 8) = 0;
  }

  FigSimpleMutexDestroy();
  v21 = *(DerivedStorage + 40);
  if (v21)
  {
    dispatch_release(v21);
    *(DerivedStorage + 40) = 0;
  }
}

uint64_t vdms_setProperty(const void *a1, const void *a2, CFArrayRef Copy)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!CFEqual(@"SMS_VideoTargetArray", a2))
  {
    if (!CFEqual(@"SMS_ReportingAgent", a2))
    {
      v20 = 4294951446;
      goto LABEL_64;
    }

    if (Copy)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v11 = DerivedStorage;
        if (!*(DerivedStorage + 80))
        {
          v12 = CFRetain(Copy);
          *(v11 + 80) = v12;
          if (!v12)
          {
            v20 = 4294955296;
            goto LABEL_64;
          }

          v13 = v12;
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 104);
          if (!v14)
          {
            v20 = 4294954514;
            goto LABEL_64;
          }

          v15 = v14(v13, 0);
LABEL_63:
          v20 = v15;
          goto LABEL_64;
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_73();
        FigSignalErrorAtGM();
      }

      v20 = 0;
      goto LABEL_64;
    }

LABEL_62:
    OUTLINED_FUNCTION_6_73();
    v15 = FigSignalErrorAtGM();
    goto LABEL_63;
  }

  v6 = MEMORY[0x1E695E480];
  if (Copy)
  {
    v7 = CFGetTypeID(Copy);
    if (v7 == CFArrayGetTypeID())
    {
      v8 = CMBaseObjectGetDerivedStorage();
      v9 = *v6;
      Copy = CFArrayCreateCopy(*v6, Copy);
      goto LABEL_13;
    }

    goto LABEL_62;
  }

  v8 = CMBaseObjectGetDerivedStorage();
  v9 = *v6;
LABEL_13:
  v16 = *(v8 + 24);
  Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v18 = Mutable;
    v19 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    if (v19)
    {
      v20 = v19;
      if (!FigCFEqual())
      {
        v21 = 0;
        if (v16)
        {
          goto LABEL_21;
        }

LABEL_22:
        for (i = 0; v21 < i; i = CFArrayGetCount(v16))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v16, v21);
          if (!FigCFArrayContainsValue())
          {
            CFArrayAppendValue(v18, ValueAtIndex);
          }

          ++v21;
          if (!v16)
          {
            goto LABEL_22;
          }

LABEL_21:
          ;
        }

        v24 = 0;
        if (Copy)
        {
          goto LABEL_29;
        }

LABEL_30:
        for (j = 0; v24 < j; j = CFArrayGetCount(Copy))
        {
          v25 = CFArrayGetValueAtIndex(Copy, v24);
          if (!FigCFArrayContainsValue())
          {
            CFArrayAppendValue(v20, v25);
          }

          ++v24;
          if (!Copy)
          {
            goto LABEL_30;
          }

LABEL_29:
          ;
        }
      }

LABEL_32:
      vdms_removeFVTNotificationListeners(v18);
      if (!v20)
      {
        goto LABEL_46;
      }

      if (CFArrayGetCount(v20) >= 1)
      {
        v27 = 0;
        do
        {
          CFArrayGetValueAtIndex(v20, v27);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          ++v27;
        }

        while (v27 < CFArrayGetCount(v20));
      }

      if (!CFArrayGetCount(v20))
      {
        goto LABEL_46;
      }

      v28 = *(v8 + 96);
      if (v28)
      {
        CFRelease(v28);
        *(v8 + 96) = 0;
      }

      Current = CFAbsoluteTimeGetCurrent();
      *(v8 + 96) = CFDateCreate(v9, Current);
      v30 = CMBaseObjectGetDerivedStorage();
      if (a1)
      {
        v31 = v30;
        if (!*(v30 + 80))
        {
LABEL_46:
          v39 = *(v8 + 24);
          *(v8 + 24) = Copy;
          if (Copy)
          {
            CFRetain(Copy);
          }

          if (v39)
          {
            CFRelease(v39);
          }

          v40 = *(v8 + 16) == 6;
          if (a1)
          {
            CFRetain(a1);
          }

          v41 = *(v8 + 40);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __vdms_gracefullySetVideoTargetArray_block_invoke;
          block[3] = &__block_descriptor_tmp_73;
          block[4] = a1;
          block[5] = v8;
          v44 = v40;
          dispatch_async(v41, block);
          if (v18)
          {
            CFRelease(v18);
          }

          if (v20)
          {
            CFRelease(v20);
            v20 = 0;
          }

          goto LABEL_56;
        }

        v32 = CFAbsoluteTimeGetCurrent();
        v33 = CFDateCreate(v9, v32);
        if (v33)
        {
          v34 = v33;
          TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v33, *(v31 + 88));
          v36 = *(v31 + 80);
          if (v36)
          {
            v37 = TimeIntervalSinceDate;
            v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v38)
            {
              v38(v36, 0x1F0B646D8, 0x1F0B67038, (v37 * 1000.0), 0);
            }
          }

          CFRelease(v34);
          goto LABEL_46;
        }
      }

      OUTLINED_FUNCTION_40_0();
      FigSignalErrorAtGM();
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_40_0();
    v20 = FigSignalErrorAtGM();
    CFRelease(v18);
  }

  else
  {
    OUTLINED_FUNCTION_6_73();
    v20 = FigSignalErrorAtGM();
  }

  if (!v20)
  {
    v20 = 0;
    v18 = 0;
    goto LABEL_32;
  }

LABEL_56:
  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_64:
  FigSimpleMutexUnlock();
  return v20;
}

uint64_t vdms_deferredFVTPreferredDataChannelGroupsChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  result = FigCFArrayContainsValue();
  if (result)
  {
    vdms_reevaluateProcessingStateAndNotify(a2, *(DerivedStorage + 16) == 6);

    return FigSimpleMutexUnlock();
  }

  return result;
}

void vdms_RTCReportingUpdatePayloadTransferError(uint64_t a1, __CFError *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2)
    {
      v5 = DerivedStorage;
      if (*(DerivedStorage + 80))
      {
        Domain = CFErrorGetDomain(a2);
        v7 = CFErrorCopyDescription(a2);
        Code = CFErrorGetCode(a2);
        v9 = *(v5 + 80);
        if (v9)
        {
          v10 = Code;
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v11)
          {
            v11(v9, 0x1F0B646D8, 0x1F0B670B8, Domain, 0);
          }

          v12 = *(v5 + 80);
          if (v12)
          {
            v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v13)
            {
              v13(v12, 0x1F0B646D8, 0x1F0B670D8, v7, 0);
            }

            v14 = *(v5 + 80);
            if (v14)
            {
              v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v15)
              {
                v15(v14, 0x1F0B646D8, 0x1F0B670F8, v10, 0);
              }
            }
          }
        }

        if (v7)
        {

          CFRelease(v7);
        }
      }
    }
  }

  else
  {

    FigSignalErrorAtGM();
  }
}

uint64_t vdms_updateResourcesAndTransferMetadata(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = &dword_1EAF17000;
  if ((*(DerivedStorage + 16) - 7) <= 0xFFFFFFFC)
  {
    if (dword_1EAF174D0)
    {
      OUTLINED_FUNCTION_11_43();
      v80 = OUTLINED_FUNCTION_7_56();
      if (os_log_type_enabled(v80, HIBYTE(type)))
      {
        v81 = v88;
      }

      else
      {
        v81 = v88 & 0xFFFFFFFE;
      }

      if (v81)
      {
        CMBaseObjectGetDerivedStorage();
        *cf = 136315906;
        OUTLINED_FUNCTION_8_40();
        v95 = 1024;
        LODWORD(v96) = v82;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_116();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  v85 = v1;
  v5 = *(DerivedStorage + 24);
  v6 = *(CMBaseObjectGetDerivedStorage() + 48);
  v86 = @"FDCR_ProcessingStateDidChange";
  v8 = 0;
  while (v6)
  {
    v9 = v6;
    v6 = *v6;
    if (!vdms_supportsVenueDescriptionDataDelivery(v9[2]) || !FigCFArrayContainsValue())
    {
      CMBaseObjectGetDerivedStorage();
      if (dword_1EAF174D0)
      {
        OUTLINED_FUNCTION_11_43();
        v10 = OUTLINED_FUNCTION_7_56();
        if (os_log_type_enabled(v10, HIBYTE(type)))
        {
          v11 = v88;
        }

        else
        {
          v11 = v88 & 0xFFFFFFFE;
        }

        if (v11)
        {
          CMBaseObjectGetDerivedStorage();
          *cf = 136316162;
          OUTLINED_FUNCTION_3_89();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1_116();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 = &dword_1EAF17000;
      }

      v12 = v9[3];
      if (!v12 || (v13 = *(*(CMBaseObjectGetVTable() + 16) + 48)) != 0 && !v13(v12))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_2_113();
        FigNotificationCenterRemoveWeakListener();
        OUTLINED_FUNCTION_12_37(*v9);
        vdms_destroyResourceEntry(v9);
      }

      v8 = 1;
    }
  }

  v14 = 0;
  v15 = *MEMORY[0x1E695E480];
  v16 = MEMORY[0x1E6963198];
  *&v7 = 136316162;
  *v87 = v7;
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_19:
  for (i = CFArrayGetCount(v5); v14 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v14);
    if (!vdms_supportsVenueDescriptionDataDelivery(ValueAtIndex) || vdms_findDataChannelResourceEntryByTarget())
    {
      goto LABEL_50;
    }

    v19 = CMBaseObjectGetDerivedStorage();
    *cf = 0;
    v88 = 0;
    *theArray = *v16;
    v20 = FigTagCollectionCreate();
    if (v20)
    {
      goto LABEL_52;
    }

    v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v21)
    {
      v20 = v21(ValueAtIndex, 0, 0, cf);
      if (!v20)
      {
        v22 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004003E9C36BuLL);
        if (v22)
        {
          if (ValueAtIndex)
          {
            v23 = CFRetain(ValueAtIndex);
          }

          else
          {
            v23 = 0;
          }

          v22[2] = v23;
          v24 = *cf;
          if (*cf)
          {
            v24 = CFRetain(*cf);
          }

          v8 = 0;
          v22[3] = v24;
          *(v22 + 9) = 0;
        }

        else
        {
          v8 = 4294951444;
        }

        goto LABEL_35;
      }

LABEL_52:
      v8 = v20;
      v22 = 0;
      goto LABEL_35;
    }

    v22 = 0;
    v8 = 4294954514;
LABEL_35:
    if (*cf)
    {
      CFRelease(*cf);
    }

    if (v8)
    {
      if (!v22)
      {
        return v8;
      }

      goto LABEL_131;
    }

    if (v4[308])
    {
      OUTLINED_FUNCTION_11_43();
      v25 = OUTLINED_FUNCTION_7_56();
      if (OUTLINED_FUNCTION_13_31(v25, v26, v27, v28, v29, v30, v31, v32, v83, v84, v85, v86, v87[0], v87[1], 0, 0, type, SWORD2(type), SBYTE6(type), HIBYTE(type)))
      {
        v33 = v4;
      }

      else
      {
        v33 = v4 & 0xFFFFFFFE;
      }

      if (v33)
      {
        CMBaseObjectGetDerivedStorage();
        *cf = v87[0];
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_116();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v4 = &dword_1EAF17000;
    }

    *v22 = 0;
    v34 = *(v19 + 56);
    v22[1] = v34;
    *v34 = v22;
    *(v19 + 56) = v22;
    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_113();
    v35 = FigNotificationCenterAddWeakListener();
    if (v35)
    {
      v8 = v35;
LABEL_131:
      OUTLINED_FUNCTION_12_37(*v22);
      vdms_destroyResourceEntry(v22);
      return v8;
    }

    v36 = v22[3];
    v37 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v37)
    {
      v16 = MEMORY[0x1E6963198];
      if (v37(v36) == 2)
      {
        return 4294951440;
      }

      v8 = 1;
    }

    else
    {
      v8 = 1;
      v16 = MEMORY[0x1E6963198];
    }

LABEL_50:
    ++v14;
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_20:
    ;
  }

  if (!v8)
  {
    return v8;
  }

  theArray[0] = 0;
  v38 = CMBaseObjectGetDerivedStorage();
  if (!v38[8])
  {
    CMBaseObject = FigAssetGetCMBaseObject(*v38);
    v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v40)
    {
      v41 = @"assetProperty_HLSMetadata";
      goto LABEL_60;
    }

    goto LABEL_68;
  }

  CMBaseObject = FigBytePumpGetFigBaseObject(v38[8]);
  v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v40)
  {
LABEL_68:
    v47 = 0;
    v8 = 4294954514;
    goto LABEL_71;
  }

  v41 = @"FBSP_Metadata";
LABEL_60:
  v42 = v40(CMBaseObject, v41, v15, theArray);
  if (v42)
  {
    v8 = v42;
    v47 = 0;
  }

  else
  {
    v43 = 0;
    while (1)
    {
      Count = theArray[0];
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
      }

      if (v43 >= Count)
      {
        break;
      }

      v45 = CFArrayGetValueAtIndex(theArray[0], v43);
      CFDictionaryGetValue(v45, @"key");
      ++v43;
      if (FigCFEqual())
      {
        Value = CFDictionaryGetValue(v45, @"value");
        if (Value)
        {
          v47 = CFRetain(Value);
          goto LABEL_70;
        }

        break;
      }
    }

    v47 = 0;
LABEL_70:
    v8 = 0;
  }

LABEL_71:
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  if (v8)
  {
    goto LABEL_111;
  }

  v48 = CMBaseObjectGetDerivedStorage();
  if (!v47)
  {
    goto LABEL_95;
  }

  v49 = v48;
  theArray[0] = 0;
  v50 = CFGetTypeID(v47);
  if (v50 != CFDataGetTypeID())
  {
    v8 = 4294951441;
    goto LABEL_112;
  }

  CFDataGetLength(v47);
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  v52 = theArray[0];
  if (BlockBufferWithCFDataNoCopy)
  {
    v8 = BlockBufferWithCFDataNoCopy;
    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }

    goto LABEL_112;
  }

  v53 = v15;
  v54 = *(v49 + 48);
  if (!v54)
  {
LABEL_91:
    v8 = 0;
    goto LABEL_92;
  }

  while (2)
  {
    v55 = v54[3];
    if (!v55 || *(v54 + 32))
    {
LABEL_90:
      v54 = *v54;
      if (!v54)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  if (v4[308])
  {
    OUTLINED_FUNCTION_11_43();
    v56 = OUTLINED_FUNCTION_7_56();
    if (OUTLINED_FUNCTION_13_31(v56, v57, v58, v59, v60, v61, v62, v63, v83, v84, v85, v86, v87[0], v87[1], v88, SHIDWORD(v88), type, SWORD2(type), SBYTE6(type), HIBYTE(type)))
    {
      v64 = v4;
    }

    else
    {
      v64 = v4 & 0xFFFFFFFE;
    }

    if (v64)
    {
      CMBaseObjectGetDerivedStorage();
      *cf = v87[0];
      OUTLINED_FUNCTION_8_40();
      v95 = 2112;
      v96 = v65;
      v97 = 2112;
      v98 = v52;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_116();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v55 = v54[3];
    v4 = &dword_1EAF17000;
  }

  v66 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v66)
  {
    v8 = 4294954514;
    goto LABEL_92;
  }

  v67 = v66(v55, v52);
  if (!v67)
  {
    *(v54 + 32) = 1;
    goto LABEL_90;
  }

  v8 = v67;
LABEL_92:
  v15 = v53;
  if (v52)
  {
    CFRelease(v52);
  }

  if (v8)
  {
    goto LABEL_111;
  }

LABEL_95:
  if (v4[308])
  {
    OUTLINED_FUNCTION_11_43();
    v68 = OUTLINED_FUNCTION_7_56();
    if (os_log_type_enabled(v68, HIBYTE(type)))
    {
      v69 = v88;
    }

    else
    {
      v69 = v88 & 0xFFFFFFFE;
    }

    if (v69)
    {
      v70 = *(CMBaseObjectGetDerivedStorage() + 8);
      *cf = 136315650;
      *&cf[4] = "vdms_postTransferNotification";
      v91 = 2048;
      v92 = a1;
      v93 = 2114;
      v94 = v70;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_116();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v71 = CMNotificationCenterPostNotification();
  if (v71)
  {
    v8 = v71;
    if (v47)
    {
      goto LABEL_112;
    }
  }

  else
  {
    v72 = CMBaseObjectGetDerivedStorage();
    if (!a1)
    {
      goto LABEL_127;
    }

    v73 = v72;
    if (!*(v72 + 80))
    {
      goto LABEL_110;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v75 = CFDateCreate(v15, Current);
    if (v75)
    {
      v76 = v75;
      CFDateGetTimeIntervalSinceDate(v75, *(v73 + 96));
      if (*(v73 + 80) && *(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v77 = OUTLINED_FUNCTION_5_78();
        v78(v77);
      }

      CFRelease(v76);
    }

    else
    {
LABEL_127:
      FigSignalErrorAtGM();
    }

LABEL_110:
    v8 = 0;
LABEL_111:
    if (v47)
    {
LABEL_112:
      CFRelease(v47);
    }
  }

  return v8;
}

uint64_t vdms_supportsVenueDescriptionDataDelivery(uint64_t a1)
{
  theArray = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v2 || v2(a1, *MEMORY[0x1E695E480], &theArray))
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = *MEMORY[0x1E6963198];
    v6 = *(MEMORY[0x1E6963198] + 8);
    while (1)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (v3 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
      if (FigDataChannelGroupGetCountOfDataChannels(ValueAtIndex) >= 1)
      {
        v9 = 0;
        while (1)
        {
          DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(ValueAtIndex, v9);
          *&v13.category = v5;
          v13.value = v6;
          if (CMTagCollectionContainsTag(DataChannelByIndex, v13))
          {
            break;
          }

          if (++v9 >= FigDataChannelGroupGetCountOfDataChannels(ValueAtIndex))
          {
            goto LABEL_13;
          }
        }

        v4 = 1;
      }

LABEL_13:
      ++v3;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v4;
}

void FigVenueDescriptionMetadataSupplierCreate_cold_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 16) = 1;
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_0_127();
  if (!FigNotificationCenterAddWeakListener())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_0_127();
    FigNotificationCenterAddWeakListener();
  }

  vdms_reevaluateProcessingStateAndNotify(*a2, 0);
  *a3 = *a2;
  *a2 = 0;
}

uint64_t FigVenueDescriptionMetadataSupplierCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVenueDescriptionMetadataSupplierCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVenueDescriptionMetadataSupplierCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVenueDescriptionMetadataSupplierCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVenueDescriptionMetadataSupplierCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vdms_reevaluateProcessingStateAndNotify_cold_1(uint64_t a1, const __CFDate *a2)
{
  OUTLINED_FUNCTION_14_35(a1, a2);
  if (*v3 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v4 = OUTLINED_FUNCTION_5_78();
    v5(v4);
  }

  CFRelease(v2);
}

void vdms_deferredAssetPropertyLoadedCallback_cold_2(uint64_t a1, const __CFDate *a2)
{
  OUTLINED_FUNCTION_14_35(a1, a2);
  if (*v3 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v4 = OUTLINED_FUNCTION_5_78();
    v5(v4);
  }

  CFRelease(v2);
}

uint64_t vdms_updateDataChannelConfig_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vdms_updateDataChannelConfig_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vdms_updateDataChannelConfig_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateByteStream(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_0_15();
  v6[2] = v3;
  v9 = v4;
  LODWORD(result) = mv_GetValidationType(v4, &v8);
  if (!result)
  {
    LODWORD(result) = mv_ValidateFileFromByteStream(v6, a2);
  }

  if (result | v7)
  {
    return result;
  }

  else
  {
    return 4294954346;
  }
}

uint64_t mv_ValidateFileFromByteStream(uint64_t a1, const void *a2)
{
  v2 = a2;
  v27 = 0;
  v4 = MEMORY[0x1E695E480];
  if (!a2)
  {
    v5 = FigFormatReaderCreateForStream(*(a1 + 16), *MEMORY[0x1E695E480], 0, &v27);
    if (v5)
    {
      goto LABEL_58;
    }

    v2 = v27;
  }

  v30 = 0;
  v31 = 0;
  v5 = mv_CheckIfFormatReaderIsSupported(a1, v2);
  if (v5)
  {
    goto LABEL_58;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
LABEL_30:
    v13 = 4294954514;
    goto LABEL_31;
  }

  v7 = v6(v2, &v31);
  if (v7)
  {
    goto LABEL_60;
  }

  if (v31 <= 0)
  {
    v7 = OUTLINED_FUNCTION_15_4();
LABEL_60:
    v13 = v7;
    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(*(a1 + 112), @"MaxMovieMatrixType");
  if (!Value)
  {
LABEL_18:
    v15 = CFDictionaryGetValue(*(a1 + 112), @"AllowMultipleEdits");
    if (v15)
    {
      v16 = CFEqual(v15, *MEMORY[0x1E695E4C0]) == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v31 < 1)
    {
LABEL_29:
      v13 = 0;
      goto LABEL_31;
    }

    v17 = 0;
    while (1)
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v18)
      {
        goto LABEL_30;
      }

      v7 = v18(v2, v17, &v30, 0, 0);
      if (v7)
      {
        goto LABEL_60;
      }

      v7 = mv_ValidateTrackWithTrackReader(a1, v2, v30, v16, 0, 0);
      if (v7)
      {
        goto LABEL_60;
      }

      if (v30)
      {
        CFRelease(v30);
        v30 = 0;
      }

      if (++v17 >= v31)
      {
        goto LABEL_29;
      }
    }
  }

  v9 = Value;
  cf = 0;
  FigBaseObject = FigFormatReaderGetFigBaseObject(v2);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v12 = v11(FigBaseObject, @"MovieMatrix", *v4, &cf);
  v13 = 0;
  v14 = cf;
  if (!v12 && cf)
  {
    v13 = mv_CheckIfMatrixIsSupported(v9, cf);
LABEL_14:
    v14 = cf;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_31:
  if (v30)
  {
    CFRelease(v30);
  }

  if (!v13)
  {
    if (!*(a1 + 41) || *(a1 + 104) != 1)
    {
LABEL_45:
      cf = 0;
      v22 = FigFormatReaderGetFigBaseObject(v2);
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23 && !v23(v22, @"ImportantResourceLocation", *v4, &cf) && cf)
      {
        valuePtr = 0;
        v24 = CFDictionaryGetValue(cf, @"LocationOffset");
        if (v24)
        {
          CFNumberGetValue(v24, kCFNumberSInt64Type, &valuePtr);
          *(a1 + 24) = valuePtr;
        }

        valuePtr = 0;
        v25 = CFDictionaryGetValue(cf, @"LocationSize");
        if (v25)
        {
          CFNumberGetValue(v25, kCFNumberSInt64Type, &valuePtr);
          *(a1 + 32) = valuePtr;
        }

        CFRelease(cf);
      }

      v13 = 0;
      goto LABEL_54;
    }

    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = CFBooleanGetValue(v19);
      v21 = *(a1 + 48);
      if (v20 == 1)
      {
        if (!v21 || !*(a1 + 56))
        {
LABEL_42:
          v5 = OUTLINED_FUNCTION_15_4();
          if (!v5)
          {
            goto LABEL_43;
          }

LABEL_58:
          v13 = v5;
          goto LABEL_54;
        }
      }

      else if (v21 >= 1)
      {
        goto LABEL_42;
      }
    }

LABEL_43:
    if (*(a1 + 48) >= 1 && !*(a1 + 56))
    {
      v5 = OUTLINED_FUNCTION_15_4();
      if (v5)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_45;
  }

LABEL_54:
  if (v27)
  {
    CFRelease(v27);
  }

  return v13;
}

uint64_t mv_ValidateIndividualTrack(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int a4)
{
  OUTLINED_FUNCTION_0_15();
  v12[14] = v8;
  result = mv_CheckIfFormatReaderIsSupported(v12, a1);
  if (!result)
  {
    Value = CFDictionaryGetValue(a3, @"AllowMultipleEdits");
    if (Value)
    {
      v11 = CFEqual(Value, *MEMORY[0x1E695E4C0]) == 0;
    }

    else
    {
      v11 = 1;
    }

    return mv_ValidateTrackWithTrackReader(v12, a1, a2, v11, 1, a4);
  }

  return result;
}

const void *mv_GetVideoProfileAndLevelConstraints(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  TypeID = CFArrayGetTypeID();
  v16 = OUTLINED_FUNCTION_7_57(TypeID, v15, @"VideoCodecProfiles", @"SupportedProfiles", TypeID, &v34);
  if (!v16)
  {
    if (v34 || (v17 = CFNumberGetTypeID(), v16 = OUTLINED_FUNCTION_7_57(v17, v18, @"VideoCodecProfiles", @"MaxProfile", v17, &v31), !v16))
    {
      v19 = CFDictionaryGetTypeID();
      v16 = OUTLINED_FUNCTION_7_57(v19, v20, @"VideoCodecProfiles", @"PerProfileConstraints", v19, &v32);
      if (!v16)
      {
        v21 = CFArrayGetTypeID();
        v16 = OUTLINED_FUNCTION_7_57(v21, v22, @"VideoCodecProfiles", @"SupportedLevels", v21, &v33);
        if (!v16)
        {
          if (v33 || (v23 = CFNumberGetTypeID(), v16 = OUTLINED_FUNCTION_7_57(v23, v24, @"VideoCodecProfiles", @"MaxLevel", v23, &v30), !v16))
          {
            v25 = CFNumberGetTypeID();
            v16 = OUTLINED_FUNCTION_7_57(v25, v26, @"VideoCodecProfiles", @"MaxTier", v25, &v29);
          }
        }
      }
    }
  }

  v27 = v16;
  if (!v16 && !v31 && !v34)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (a5)
  {
    *a5 = v32;
  }

  if (a3)
  {
    *a3 = v34;
  }

  if (a6)
  {
    *a6 = v31;
  }

  if (a4)
  {
    *a4 = v33;
  }

  if (a7)
  {
    *a7 = v30;
  }

  if (a8)
  {
    *a8 = v29;
  }

  return v27;
}

BOOL mv_EvaluateProfileConstraints(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, double *a5)
{
  v10 = CFGetTypeID(cf);
  if (v10 != CFDictionaryGetTypeID())
  {
    return 1;
  }

  v11 = *MEMORY[0x1E695E480];
  v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a1);
  if (!v12)
  {
    return 1;
  }

  v13 = v12;
  Value = CFDictionaryGetValue(cf, v12);
  if (Value && (v23 = 0, v15 = CFGetTypeID(Value), v15 == CFDictionaryGetTypeID()))
  {
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      goto LABEL_12;
    }

    number = 0;
    v16 = v23 * 1000000.0;
    if (a5)
    {
      *a5 = v16;
    }

    FigBaseObject = FigTrackReaderGetFigBaseObject(a3);
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18 && (v18(FigBaseObject, @"EstimatedDataRate", v11, &number), number))
    {
      valuePtr = 0.0;
      CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
      v19 = (valuePtr * 8.0) <= v16;
      if (number)
      {
        CFRelease(number);
      }
    }

    else
    {
LABEL_12:
      v19 = 1;
    }

    if (a4)
    {
      FigCFDictionaryGetInt32IfPresent();
    }
  }

  else
  {
    v19 = 1;
  }

  CFRelease(v13);
  return v19;
}

uint64_t mv_ComputeDroppableFrameRate(uint64_t a1, CMTime *a2, int a3, double *a4, double *a5)
{
  v40 = 0;
  v41 = **&MEMORY[0x1E6960CC0];
  cf = 0;
  v39 = 0;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    goto LABEL_34;
  }

  v11 = v10(a1, &v40);
  if (v11)
  {
    goto LABEL_46;
  }

  v12 = v40;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v13)
  {
LABEL_34:
    v27 = 4294954514;
    goto LABEL_35;
  }

  v11 = v13(v12, &v39);
  if (!v11)
  {
    v14 = 0;
    v31 = 0;
    v15 = *MEMORY[0x1E695E480];
    v16 = *MEMORY[0x1E6960438];
    v17 = 1;
    while (1)
    {
      v18 = v17;
      memset(&time1, 0, sizeof(time1));
      v36 = 0;
      v35 = 0;
      value = 0;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      FigBaseObject = FigSampleCursorGetFigBaseObject(v39);
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v20 && !v20(FigBaseObject, @"SampleDependencyAttributes", v15, &cf) && cf && (FigBaseObject = CFGetTypeID(cf), FigBaseObject == CFDictionaryGetTypeID()))
      {
        LODWORD(lhs.value) = -1;
        if (a3 == -1 || !CFDictionaryGetValueIfPresent(cf, v16, &value))
        {
          v21 = v35;
        }

        else
        {
          FigCFDictionaryGetIntIfPresent();
          v21 = SLODWORD(lhs.value) > 0;
          v35 = SLODWORD(lhs.value) > 0;
        }

        if (!v21)
        {
          LOBYTE(rhs.value) = 1;
          FigCFDictionaryGetBooleanIfPresent();
          v21 = LOBYTE(rhs.value) == 0;
          v35 = LOBYTE(rhs.value) == 0;
        }
      }

      else
      {
        v22 = *(*(OUTLINED_FUNCTION_8_41() + 16) + 64);
        if (!v22)
        {
          goto LABEL_34;
        }

        v11 = v22(FigBaseObject, 0, 0, 0, &v35);
        if (v11)
        {
          break;
        }

        v21 = v35;
      }

      if (v21)
      {
        ++v14;
      }

      else
      {
        lhs.value = 0;
        if (*(*(CMBaseObjectGetVTable() + 16) + 144))
        {
          v26 = *(*(OUTLINED_FUNCTION_8_41() + 16) + 144);
          if (v26)
          {
            if (!v26(FigBaseObject, 0, &lhs, 0, 0))
            {
              v31 += 8 * lhs.value;
            }
          }
        }
      }

      v23 = *(*(OUTLINED_FUNCTION_8_41() + 16) + 56);
      if (!v23)
      {
        goto LABEL_34;
      }

      v11 = v23(FigBaseObject, &time1);
      if (v11)
      {
        break;
      }

      lhs = v41;
      rhs = time1;
      CMTimeAdd(&v41, &lhs, &rhs);
      v24 = *(*(OUTLINED_FUNCTION_8_41() + 16) + 168);
      if (!v24)
      {
        goto LABEL_34;
      }

      v11 = v24(FigBaseObject, 1, &v36);
      if (v11)
      {
        break;
      }

      if (v36 == 1)
      {
        OUTLINED_FUNCTION_5_79();
        lhs = *a2;
        v25 = CMTimeCompare(&time1, &lhs);
        v17 = v18 + 1;
        if (v25 < 0)
        {
          continue;
        }
      }

      OUTLINED_FUNCTION_5_79();
      Seconds = CMTimeGetSeconds(&time1);
      OUTLINED_FUNCTION_5_79();
      v30 = CMTimeGetSeconds(&time1);
      if (a4)
      {
        *a4 = (v18 - v14) / Seconds;
      }

      v27 = 0;
      if (a5)
      {
        *a5 = v31 / v30;
      }

      goto LABEL_35;
    }
  }

LABEL_46:
  v27 = v11;
LABEL_35:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v27;
}

uint64_t mv_LookupCodecSupport(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  result = 4294954344;
  if (a1)
  {
    if (a2)
    {
      result = OUTLINED_FUNCTION_3_90(4294954344, a2, @"vide");
      if (!result)
      {
        result = OUTLINED_FUNCTION_3_90(result, v4, @"VideoCodecs");
        if (!result)
        {
          result = OUTLINED_FUNCTION_3_90(result, v5, @"soun");
          if (!result)
          {
            result = OUTLINED_FUNCTION_3_90(result, v6, @"AudioCodecs");
            if (!result)
            {
              return 4294954344;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mv_ValidateRFC4281_xvtt_evaluation_fn(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 24);
  __stringp = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  strsep(&__stringp, ".");
  if (__stringp)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v4 = *v3;
    if ((v4 - 114) > 6 || ((1 << (v4 - 114)) & 0x53) == 0)
    {
      break;
    }

    ++v3;
  }

  if (*v3)
  {
LABEL_10:
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
  }

  else
  {
LABEL_9:
    result = 0;
  }

  *a2 = 2021028980;
  return result;
}

uint64_t mv_ValidateVideoProfileLevelTier(const __CFArray *a1, CFNumberRef number, const __CFNumber *a3, const __CFNumber *a4, int a5, int a6, int a7)
{
  if (!(a1 | number))
  {
    return 0;
  }

  valuePtr = 0;
  if (!a1 && number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    v13 = valuePtr;
LABEL_8:
    IsIntInCFArray = v13 >= a5;
    goto LABEL_9;
  }

  if (!a1)
  {
    v13 = 0;
    goto LABEL_8;
  }

  IsIntInCFArray = mv_IsIntInCFArray(a5, a1);
LABEL_9:
  if (!IsIntInCFArray)
  {
    return OUTLINED_FUNCTION_15_4();
  }

  v17 = 0;
  if (a3)
  {
    CFNumberGetValue(a3, kCFNumberSInt32Type, &v17);
    if (v17 < a6)
    {
      return OUTLINED_FUNCTION_15_4();
    }

    if (a1)
    {
      if (!mv_IsIntInCFArray(a5, a1))
      {
        return OUTLINED_FUNCTION_15_4();
      }
    }

    else if (valuePtr < a5)
    {
      return OUTLINED_FUNCTION_15_4();
    }
  }

  v16 = 0;
  if (a4)
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, &v16);
    if (v16 < a7)
    {
      return OUTLINED_FUNCTION_15_4();
    }
  }

  return 0;
}

uint64_t mv_ValidateRFC4281VideoFromCodecType(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(a2);
  if (CFStringFrom4CC)
  {
    v10 = CFStringFrom4CC;
    v11 = OUTLINED_FUNCTION_4_92(CFStringFrom4CC, v4, @"vide", v5, v6, v7, v8, v9, v19, *v21, *&v21[4], 0, 0);
    if (v11 || !HIBYTE(v22) || !BYTE6(v22))
    {
      v2 = OUTLINED_FUNCTION_4_92(v11, v12, @"VideoCodecs", v13, v14, v15, v16, v17, v20, v22, SWORD2(v22), SBYTE6(v22), HIBYTE(v22));
      if (v2)
      {
        goto LABEL_11;
      }

      if (!v24 || !v23)
      {
        v2 = OUTLINED_FUNCTION_15_4();
        goto LABEL_11;
      }
    }

    v2 = 0;
LABEL_11:
    CFRelease(v10);
    return v2;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t mv_ValidateRFC4281AudioFromCodecType(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(a2);
  if (CFStringFrom4CC)
  {
    v10 = CFStringFrom4CC;
    v11 = OUTLINED_FUNCTION_4_92(CFStringFrom4CC, v4, @"soun", v5, v6, v7, v8, v9, v19, *v21, *&v21[4], 0, 0);
    if (v11 || !HIBYTE(v22) || !BYTE6(v22))
    {
      v2 = OUTLINED_FUNCTION_4_92(v11, v12, @"AudioCodecs", v13, v14, v15, v16, v17, v20, v22, SWORD2(v22), SBYTE6(v22), HIBYTE(v22));
      if (v2)
      {
        goto LABEL_11;
      }

      if (!v24 || !v23)
      {
        v2 = OUTLINED_FUNCTION_15_4();
        goto LABEL_11;
      }
    }

    v2 = 0;
LABEL_11:
    CFRelease(v10);
    return v2;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMediaValidatorValidateFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateFormatDescription_cold_2(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateFormatDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_IsValueInArrayInDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_CheckIfVideoPresentable_cold_1(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4();
  *a1 = result;
  return result;
}

uint64_t mv_CheckIfVideoPresentable_cold_5(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4();
  *a1 = result;
  return result;
}

uint64_t mv_CheckIfVideoPresentable_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_CheckIfVideoPresentable_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_CheckIfAudioPlayable_cold_1(uint64_t a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_15_4();
  *a2 = result;
  return result;
}

uint64_t mv_CheckIfAudioPlayable_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void mv_CheckIfAudioPlayable_cold_3(uint64_t a1, _DWORD *a2)
{
  AudioCodecStringFromFormatDescription = FigCreateAudioCodecStringFromFormatDescription();
  if (!AudioCodecStringFromFormatDescription)
  {
    AudioCodecStringFromFormatDescription = mv_ValidateAudioCodecsParameterValue(0);
  }

  *a2 = AudioCodecStringFromFormatDescription;
}

uint64_t mv_CheckIfAudioPlayable_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_CheckIfSubTitlesPlayable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_CheckIfClosedCaptionsPlayable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_CheckIfOtherMediaTypePlayable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateAsyncInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateAsyncInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateAsyncInternal_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateAsyncInternal_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCopySetOfAudioSupportedMIMETypes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCopySetOfAudioSupportedMIMETypes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCopySetOfPlaylistSupportedMIMETypes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCopySetOfPlaylistSupportedMIMETypes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCopySetOfStreamingSupportedMIMETypes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCopySetOfStreamingSupportedMIMETypes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCopySetOfStreamingSupportedUTIs_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCopySetOfStreamingSupportedUTIs_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorCreateMediaValidatorPropertyList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorCreateMediaValidatorPropertyList_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_CheckIfFormatReaderIsSupported_cold_1(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateTrackWithTrackReader_cold_1(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateTrackWithTrackReader_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateTrackWithTrackReader_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateTrackWithTrackReader_cold_5(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateTrackWithTrackReader_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateTrackWithTrackReader_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateTrackWithTrackReader_cold_8(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4();
  *a1 = result;
  return result;
}

uint64_t mv_GetCodecProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_GetCodecProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_GetCodecProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateRFC4281Codecs_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateRFC4281Codecs_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateRFC4281Codecs_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaValidatorValidateRFC4281Codecs_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281IdEvaluationFn_cold_1(_DWORD *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  *a1 = 4;
  return result;
}

uint64_t mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_3()
{
  result = OUTLINED_FUNCTION_0_128();
  *v0 = result;
  return result;
}

BOOL mv_ValidateRFC4281_dvhe_dvh1_evaluation_fn_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t mv_ValidateRFC4281_dav1_evaluation_fn_cold_4(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_mp2v_evaluation_fn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_mp4v_evaluation_fn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_mp4v_evaluation_fn_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_mp4v_evaluation_fn_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_mp4v_evaluation_fn_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_mp4a_evaluation_fn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_mp1a_mp2a_evaluation_fn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_stpp_evaluation_fn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_stpp_evaluation_fn_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_stpp_evaluation_fn_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMDRW_ParseChildAtoms(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = (a3 + 8);
  while (1)
  {
    result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (result)
    {
      return result;
    }

    if (a2 >= 1)
    {
      v11 = 0;
      v12 = v9;
      v13 = v9;
      while (*(v13 - 2))
      {
        ++v11;
        v13 += 2;
        v12 += 4;
        if (a2 == v11)
        {
          goto LABEL_12;
        }
      }

      v14 = 1 << v11;
      if ((*(v13 - 4) & 1) != 0 && (v14 & v8) != 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM();
      }

      v8 |= v14;
      result = (*v13)(a1, a4);
      if (result == 1937010544)
      {
        result = 0;
        goto LABEL_17;
      }

      if (result)
      {
        return result;
      }
    }

LABEL_12:
    LODWORD(result) = FigAtomStreamAdvanceToNextAtom();
    if (result)
    {
      if (result == -12890)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

LABEL_17:
      if (a2 >= 1)
      {
        v15 = 0;
        v16 = (a3 + 4);
        do
        {
          v17 = *v16;
          v16 += 16;
          if ((v17 & 2) != 0 && ((v8 >> v15) & 1) == 0)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            result = FigSignalErrorAtGM();
          }

          ++v15;
        }

        while (a2 != v15);
      }

      return result;
    }
  }
}

uint64_t figMDRW_RewriteMovieHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v3;
  v42 = *MEMORY[0x1E69E9840];
  theBuffer = 0;
  blockBufferOut = 0;
  valuePtr = 0;
  number = 0;
  i = 0;
  DataLength = CMBlockBufferGetDataLength(v13);
  v15 = *MEMORY[0x1E695E480];
  v16 = v9 - DataLength;
  if (v9 > DataLength && v16 >= 8)
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    appended = CMBlockBufferCreateEmpty(v15, 8u, 1u, &blockBufferOut);
    if (appended)
    {
      goto LABEL_38;
    }

    appended = FigAtomWriterInitWithBlockBuffer();
    if (appended)
    {
      goto LABEL_38;
    }

    appended = FigMetadataAppendFreeAtom(v40, v16);
    if (appended)
    {
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_5_80();
    appended = CMBlockBufferCreateWithBufferReference(v18, v19, v20, v21, 0, v22);
    if (appended)
    {
      goto LABEL_38;
    }

    appended = CMBlockBufferAppendBufferReference(theBuffer, blockBufferOut, 0, 0, 0);
    if (appended)
    {
      goto LABEL_38;
    }

    DataLength = CMBlockBufferGetDataLength(theBuffer);
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v24)
  {
    goto LABEL_30;
  }

  appended = v24(CMBaseObject, *MEMORY[0x1E695FF78], v15, &number);
  if (appended)
  {
    goto LABEL_38;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  if (DataLength != v9 && v9 + v11 != valuePtr)
  {
    v34 = 1701147238;
    OUTLINED_FUNCTION_5_80();
    appended = CMByteStreamAppendBlockBuffer();
    if (appended)
    {
      goto LABEL_38;
    }

    v28 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v28)
    {
      appended = v28(v12, 4, v11 + 4, &v34, &i);
      if (!appended)
      {
        bzero(v40, 0x1000uLL);
        v29 = v7 + v11;
        v30 = v11 + 8;
        for (i = 0; v30 < v29; v30 += i)
        {
          v31 = v29 - v30 >= 4096 ? 4096 : v29 - v30;
          v32 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v32)
          {
            goto LABEL_30;
          }

          appended = v32(v12, v31, v30, v40, &i);
          if (appended)
          {
            goto LABEL_38;
          }
        }

        v26 = 1;
LABEL_18:
        v27 = 0;
        *v5 = v26;
        goto LABEL_31;
      }

      goto LABEL_38;
    }

LABEL_30:
    v27 = 4294954514;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_5_80();
  appended = CMByteStreamWriteBlockBuffer();
  if (!appended)
  {
    v26 = 0;
    goto LABEL_18;
  }

LABEL_38:
  v27 = appended;
LABEL_31:
  if (number)
  {
    CFRelease(number);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v27;
}

CFMutableDictionaryRef FigMetadataRewriterDictionaryCreateFromFigMetadataPropertyArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Count >= 1)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      Value = CFDictionaryGetValue(ValueAtIndex, @"format");
      v8 = CFDictionaryGetValue(ValueAtIndex, @"items");
      v9 = v8;
      if (Value)
      {
        v10 = OUTLINED_FUNCTION_8_42();
        v12 = CFDictionaryGetValue(v10, v11);
        if (v12)
        {
          if (!v9)
          {
            goto LABEL_11;
          }

LABEL_10:
          v32.length = CFArrayGetCount(v9);
          v32.location = 0;
          CFArrayAppendArray(v12, v9, v32);
          goto LABEL_11;
        }

        v12 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        v13 = OUTLINED_FUNCTION_8_42();
        CFDictionaryAddValue(v13, v14, v12);
        CFRelease(v12);
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v5 = v8;
      }

LABEL_11:
      if (Count == ++v4)
      {
        if (v5)
        {
          v15 = CFArrayGetCount(v5);
          if (v15 >= 1)
          {
            v16 = v15;
            for (i = 0; i != v16; ++i)
            {
              v18 = CFArrayGetValueAtIndex(v5, i);
              if (v18)
              {
                v19 = v18;
                v20 = CFDictionaryGetValue(v18, @"key");
                if (v20)
                {
                  v21 = v20;
                  v22 = 1;
                  v23 = @"com.apple.quicktime.mdta";
                  while (1)
                  {
                    v24 = v22;
                    if (FigIsCommonKeyMappedToMetadataFormat(v21, v23))
                    {
                      break;
                    }

                    v22 = 0;
                    v23 = @"com.apple.quicktime.udta";
                    if ((v24 & 1) == 0)
                    {
                      goto LABEL_24;
                    }
                  }

                  v25 = OUTLINED_FUNCTION_8_42();
                  v27 = CFDictionaryGetValue(v25, v26);
                  if (!v27)
                  {
                    v27 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                    v28 = OUTLINED_FUNCTION_8_42();
                    CFDictionaryAddValue(v28, v29, v27);
                    CFRelease(v27);
                  }

                  CFArrayAppendValue(v27, v19);
                }
              }

LABEL_24:
              ;
            }
          }
        }

        return Mutable;
      }
    }
  }

  return Mutable;
}

uint64_t GetCompressedMovieAtom(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
    *(a2 + 96) = 1;
    result = FigAtomStreamInitWithParent();
    if (!result)
    {
      return figMDRW_ParseChildAtoms(v4, 2, &GetCompressedMovieAtom_atomDispatch, a2);
    }
  }

  return result;
}

uint64_t GetCompressedMovieDataAtom(uint64_t a1, uint64_t a2)
{
  blockBufferOut = 0;
  cf = 0;
  if (*(a2 + 100) != 2053925218)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    BBuf = FigSignalErrorAtGM();
LABEL_16:
    v14 = BBuf;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_613();
  BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (BBuf)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_613();
  CMBlockBufferGetDataPointer(v4, v5, v6, v7, v8);
  v9 = bswap32(MEMORY[0]);
  BBuf = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v9, *MEMORY[0x1E695E480], 0, 0, v9, 1u, &blockBufferOut);
  if (BBuf)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_613();
  CMBlockBufferGetDataPointer(v10, v11, v12, 0, v13);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  v14 = FigSignalErrorAtGM();
  if (!v14)
  {
    v15 = *(a2 + 104);
    v16 = blockBufferOut;
    *(a2 + 104) = blockBufferOut;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v14 = 0;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v14;
}

uint64_t figMDRW_WriteMetadata(uint64_t a1, const __CFDictionary *a2)
{
  v3 = v2;
  theBuffer = 0;
  v6 = MEMORY[0x1E695E480];
  if (*(a1 + 16))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 40) && (OUTLINED_FUNCTION_613(), v38 = v7(), v38 >= 1))
    {
      Mutable = 0;
      v9 = 0;
      v10 = *v6;
      v37 = a2;
      while (1)
      {
        theDict = 0;
        value = 0;
        cf = 0;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          v34 = 4294954514;
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_613();
        v12 = v11();
        if (v12)
        {
          goto LABEL_53;
        }

        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable)
          {
            break;
          }
        }

        if (theDict)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, theDict);
          if (!MutableCopy)
          {
            break;
          }

          v14 = MutableCopy;
          v15 = CFDictionaryGetValue(MutableCopy, @"key");
          if (v15)
          {
            v16 = v15;
            CFDictionaryAddValue(v14, @"value", value);
            if (CFDictionaryGetValueIfPresent(Mutable, v16, &cf))
            {
              v17 = v6;
              v18 = v3;
              v19 = CFGetTypeID(cf);
              if (v19 == CFArrayGetTypeID())
              {
                CFArrayAppendValue(cf, v14);
              }

              else
              {
                v20 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
                if (!v20)
                {
                  v6 = v17;
                  a2 = v37;
                  break;
                }

                v21 = v20;
                CFArrayAppendValue(v20, cf);
                CFArrayAppendValue(v21, v14);
                CFDictionarySetValue(Mutable, v16, v21);
                CFRelease(v21);
              }

              v3 = v18;
              v6 = v17;
              a2 = v37;
            }

            else
            {
              CFDictionaryAddValue(Mutable, v16, v14);
            }
          }
        }

        else
        {
          v14 = 0;
        }

        if (value)
        {
          CFRelease(value);
        }

        if (theDict)
        {
          CFRelease(theDict);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        if (v38 == ++v9)
        {
          goto LABEL_29;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      v12 = FigSignalErrorAtGM();
      if (v12)
      {
        goto LABEL_53;
      }
    }

    else
    {
      Mutable = 0;
LABEL_29:
      *(a1 + 8) = Mutable;
    }
  }

  if (!*(a1 + 8) && (v22 = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 8) = v22) == 0) || (v23 = CFEqual(*(a1 + 32), @"udta"), v24 = figMDRW_MergeQuickTimeUserDataApplierFunc, !v23) && (v25 = CFEqual(*(a1 + 32), @"mdta"), v24 = figMDRW_MergeQuickTimeMetadataApplierFunc, !v25) && (v26 = CFEqual(*(a1 + 32), @"uiso"), v24 = figMDRW_MergeISOUserDataApplierFunc, !v26))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
    v12 = FigSignalErrorAtGM();
LABEL_53:
    v34 = v12;
    goto LABEL_43;
  }

  CFDictionaryApplyFunction(a2, v24, a1);
  CFDictionaryApplyFunction(*(a1 + 8), figMDRW_WriteMetadataApplierFunc, a1);
  FigMetadataWriter = FigMetadataSerializerGetFigMetadataWriter(*(a1 + 24));
  v28 = CFNumberCreate(*v6, kCFNumberSInt64Type, (a1 + 48));
  FigBaseObject = FigMetadataWriterGetFigBaseObject(FigMetadataWriter);
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v30)
  {
    goto LABEL_41;
  }

  v31 = v30(FigBaseObject, @"minimumSize", v28);
  if (v31)
  {
    goto LABEL_50;
  }

  v32 = *(a1 + 24);
  v33 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v33)
  {
LABEL_41:
    v34 = 4294954514;
    if (!v28)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v31 = v33(v32, &theBuffer);
  if (!v31)
  {
    if (CMBlockBufferGetDataLength(theBuffer) == *(a1 + 48))
    {
      v31 = CMByteStreamWriteBlockBuffer();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      v31 = FigSignalErrorAtGM();
    }
  }

LABEL_50:
  v34 = v31;
  if (v28)
  {
LABEL_42:
    CFRelease(v28);
  }

LABEL_43:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  v35 = *(a1 + 8);
  if (v35)
  {
    CFRelease(v35);
  }

  return v34;
}

void figMDRW_MergeQuickTimeUserDataApplierFunc()
{
  OUTLINED_FUNCTION_7_58();
  if (!FigUserDataCopyOSTypeKeysFromCommonKey(v2, v3))
  {
    figMDRW_MergeUserData(v1, v0, theArray);
  }
}

void figMDRW_MergeISOUserDataApplierFunc()
{
  OUTLINED_FUNCTION_7_58();
  if (!FigISOUserDataCopyOSTypeKeysFromCommonKey(v2, v3))
  {
    figMDRW_MergeUserData(v1, v0, theArray);
  }
}

uint64_t figMDRW_CreateUserDataBBufWithiTunes(CFArrayRef theArray, uint64_t a2, const __CFArray *a3, const void *a4, CFTypeRef *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = 0;
  theBuffer = 0;
  v9 = *MEMORY[0x1E695E480];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    MetadataBBufFromMetadataArray = FigSignalErrorAtGM();
    goto LABEL_44;
  }

  if (!a3)
  {
    goto LABEL_33;
  }

  MetadataBBufFromMetadataArray = figMDRW_CreateMetadataBBufFromMetadataArray(a3, @"com.apple.itunes", 0, &theBuffer);
  if (MetadataBBufFromMetadataArray)
  {
LABEL_44:
    v15 = MetadataBBufFromMetadataArray;
    goto LABEL_37;
  }

  a3 = theBuffer;
  if (!theBuffer)
  {
    goto LABEL_33;
  }

  v24 = a5;
  cf = 0;
  blockBufferOut = 0;
  values = 0;
  v34 = 0;
  v35 = 0;
  keys = 0;
  v31 = 0;
  v32 = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!CMBlockBufferIsRangeContiguous(a3, 0, DataLength) && (CFDataWithBlockBufferNoCopy = CMBlockBufferCreateContiguous(v9, a3, v9, 0, 0, DataLength, 0, &blockBufferOut), CFDataWithBlockBufferNoCopy) || (CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy(), CFDataWithBlockBufferNoCopy))
  {
    v15 = CFDataWithBlockBufferNoCopy;
    a3 = 0;
  }

  else
  {
    keys = @"keyspace";
    if (CFEqual(@"com.apple.quicktime.udta", a4))
    {
      v14 = kFigUserDataKeyspace;
      goto LABEL_12;
    }

    if (CFEqual(@"org.mp4ra", a4))
    {
      v14 = kFigISOUserDataKeyspace;
LABEL_12:
      values = *v14;
      v34 = @"meta";
      v31 = @"key";
      v32 = @"value";
      v35 = cf;
      a3 = CFDictionaryCreate(v9, &keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (a3)
      {
        v15 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        v15 = FigSignalErrorAtGM();
      }

      goto LABEL_14;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v15 = FigSignalErrorAtGM();
    a3 = 0;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  value = a3;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v15)
  {
    goto LABEL_35;
  }

  Count = CFArrayGetCount(MutableCopy);
  if (Count >= 1)
  {
    v17 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v17 - 2);
      v19 = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
      v20 = CFDictionaryGetValue(ValueAtIndex, @"key");
      if (v19)
      {
        v21 = v20;
        if (v20)
        {
          if (CFEqual(@"uiso", v19) && CFEqual(a4, @"org.mp4ra") || CFEqual(@"udta", v19) && CFEqual(a4, @"com.apple.quicktime.udta"))
          {
            if (CFEqual(@"meta", v21) || (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(v21)) && (LODWORD(values) = 0, CFNumberGetValue(v21, kCFNumberSInt32Type, &values), values == 1835365473))
            {
              CFArrayRemoveValueAtIndex(MutableCopy, v17 - 2);
            }
          }
        }
      }

      --v17;
    }

    while (v17 > 1);
  }

  a3 = value;
  CFArrayAppendValue(MutableCopy, value);
  a5 = v24;
LABEL_33:
  v15 = figMDRW_CreateMetadataBBufFromMetadataArray(MutableCopy, a4, a2, &v26);
  if (v15)
  {
    if (v26)
    {
      CFRelease(v26);
    }
  }

  else
  {
    *a5 = v26;
    v26 = 0;
  }

LABEL_35:
  if (a3)
  {
    CFRelease(a3);
  }

LABEL_37:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v15;
}

uint64_t figMDRW_CreateMetadataBBufFromMetadataArray(const __CFArray *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v38 = 0;
  cf = 0;
  if (CFEqual(@"com.apple.quicktime.mdta", a2))
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = OUTLINED_FUNCTION_6_74();
    ForiTunes = FigMetadataSerializerCreateForQuickTimeMetadata(v7, v8);
    if (ForiTunes)
    {
      goto LABEL_37;
    }
  }

  else if (CFEqual(@"com.apple.quicktime.udta", a2))
  {
    v6 = *MEMORY[0x1E695E480];
    v10 = OUTLINED_FUNCTION_6_74();
    ForiTunes = FigMetadataSerializerCreateForQuickTimeUserData(v10, v11);
    if (ForiTunes)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (!CFEqual(@"com.apple.itunes", a2))
    {
      if (CFEqual(@"org.mp4ra", a2))
      {
        v6 = *MEMORY[0x1E695E480];
        v14 = OUTLINED_FUNCTION_6_74();
        ForiTunes = FigMetadataSerializerCreateForISOUserData(v14, v15);
        if (!ForiTunes)
        {
          goto LABEL_12;
        }
      }

      else
      {
        fig_log_get_emitter();
        ForiTunes = FigSignalErrorAtGM();
      }

LABEL_37:
      v32 = ForiTunes;
      goto LABEL_33;
    }

    v6 = *MEMORY[0x1E695E480];
    v12 = OUTLINED_FUNCTION_6_74();
    ForiTunes = FigMetadataSerializerCreateForiTunes(v12, v13);
    if (ForiTunes)
    {
      goto LABEL_37;
    }
  }

LABEL_12:
  v36 = a3;
  Count = CFArrayGetCount(a1);
  FigMetadataWriter = FigMetadataSerializerGetFigMetadataWriter(cf);
  if (Count >= 1)
  {
    v18 = FigMetadataWriter;
    v19 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v19);
      Value = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
      v22 = CFDictionaryGetValue(ValueAtIndex, @"key");
      v23 = CFDictionaryGetValue(ValueAtIndex, @"value");
      if (Value)
      {
        if (v22)
        {
          v24 = v23;
          if (v23)
          {
            v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v25)
            {
              goto LABEL_32;
            }

            ForiTunes = v25(v18, Value, v22, v24, ValueAtIndex);
            if (ForiTunes && ForiTunes != -12583)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

    while (Count != ++v19);
  }

  valuePtr = v36;
  v27 = FigMetadataSerializerGetFigMetadataWriter(cf);
  v28 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
  if (v28)
  {
    v29 = v28;
    FigBaseObject = FigMetadataWriterGetFigBaseObject(v27);
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v31)
    {
      v32 = v31(FigBaseObject, @"minimumSize", v29);
    }

    else
    {
      v32 = 4294954514;
    }

    CFRelease(v29);
    if (v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
    fig_log_get_emitter();
    v32 = FigSignalErrorAtGM();
    if (v32)
    {
      goto LABEL_33;
    }
  }

  v33 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (v33)
  {
    v32 = v33(cf, &v38);
    if (v32)
    {
      if (v38)
      {
        CFRelease(v38);
      }
    }

    else
    {
      *a4 = v38;
      v38 = 0;
    }
  }

  else
  {
LABEL_32:
    v32 = 4294954514;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v32;
}

uint64_t FigRewriteMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRewriteMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRewriteMetadata_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRewriteMetadata_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRewriteMetadata_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMDRW_MergeQuickTimeMetadataApplierFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t figMDRW_MergeQuickTimeMetadataApplierFunc_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t figMDRW_MergeUserData_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t figMDRW_MergeUserData_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t figMDRW_CopyMetadataArrayFromByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figMDRW_CopyMetadataArrayFromByteStream_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();
  CFRelease(a1);
}

uint64_t figMDRW_CopyMetadataArrayFromByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMDRW_CopyMetadataArrayFromByteStream_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigID3MetadataCallbackProc(uint64_t a1, int a2, unsigned int a3, unsigned int a4, char **a5, unsigned int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = DerivedStorage;
  blockBufferOut = 0;
  theBuffer = 0;
  v13 = DerivedStorage[2];
  dataLength = 0;
  if (a2 == 1)
  {
    v14 = DerivedStorage[6];
    if (v14)
    {
      CFRelease(v14);
      DataPointer = 0;
      v12[6] = 0;
    }

    else
    {
      DataPointer = 0;
    }

    goto LABEL_16;
  }

  v16 = DerivedStorage[1];
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v17)
  {
    DataPointer = 4294954514;
    goto LABEL_16;
  }

  v18 = v17(v16, a4, v13 + a3, &theBuffer, &dataLength);
  if (v18)
  {
    goto LABEL_20;
  }

  if (dataLength != a4)
  {
    fig_log_get_emitter();
    v18 = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  if (!CMBlockBufferIsRangeContiguous(theBuffer, 0, a4))
  {
    v18 = CMBlockBufferCreateContiguous(*v12, theBuffer, *v12, 0, 0, dataLength, 0, &blockBufferOut);
    if (!v18)
    {
      CFRelease(theBuffer);
      v19 = blockBufferOut;
      blockBufferOut = 0;
      theBuffer = v19;
      goto LABEL_10;
    }

LABEL_20:
    DataPointer = v18;
    goto LABEL_16;
  }

LABEL_10:
  v20 = v12[6];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = theBuffer;
  v12[6] = theBuffer;
  DataPointer = CMBlockBufferGetDataPointer(v21, 0, 0, 0, a5);
  if (!DataPointer)
  {
    *a6 = a4;
  }

LABEL_16:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return DataPointer;
}

uint64_t FigID3MetadataHasKey(uint64_t a1, const void *a2, const void *a3)
{
  valuePtr = 0;
  v13 = 0;
  if (!CMBaseObjectGetDerivedStorage() || !a3 || !a2)
  {
    goto LABEL_18;
  }

  if (!CFEqual(a2, @"comn"))
  {
    if (!CFEqual(a2, @"org.id3"))
    {
      goto LABEL_18;
    }

    v8 = CFGetTypeID(a3);
    if (v8 == CFStringGetTypeID())
    {
      v9 = OUTLINED_FUNCTION_5_81();
      if (!FigID3MetadataStringKeyToOSTypeKey(v9, v10))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = CFGetTypeID(a3);
      if (v11 != CFNumberGetTypeID())
      {
LABEL_18:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
LABEL_19:
        FigSignalErrorAtGM();
        return 0;
      }

      if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        goto LABEL_19;
      }
    }

LABEL_13:
    OUTLINED_FUNCTION_4_93();
    while (!OUTLINED_FUNCTION_3_91())
    {
      if (v12 == valuePtr)
      {
        return 1;
      }

      ++v13;
      OUTLINED_FUNCTION_4_93();
    }

    return 0;
  }

  v5 = OUTLINED_FUNCTION_5_81();
  result = FigID3MetadataCommonKeyToOSTypeKey(v5, v6);
  if (result)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t FigID3MetadataGetItemCount(uint64_t a1, const void *a2, const void *a3)
{
  valuePtr = 0;
  if (!CMBaseObjectGetDerivedStorage())
  {
    goto LABEL_21;
  }

  if (!a2)
  {
    if (a3)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  if (CFEqual(a2, @"comn"))
  {
    if (a3)
    {
      v5 = OUTLINED_FUNCTION_5_81();
      if (FigID3MetadataCommonKeyToOSTypeKey(v5, v6))
      {
        goto LABEL_6;
      }

      return 0;
    }

    goto LABEL_21;
  }

  if (!CFEqual(a2, @"org.id3"))
  {
    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_11:
    v7 = 0;
    ID3ParserGetProperty();
    return v7;
  }

  v9 = CFGetTypeID(a3);
  if (v9 != CFStringGetTypeID())
  {
    v12 = CFGetTypeID(a3);
    if (v12 == CFNumberGetTypeID())
    {
      if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
LABEL_22:
        FigSignalErrorAtGM();
        return 0;
      }

      goto LABEL_6;
    }

LABEL_21:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_22;
  }

  v10 = OUTLINED_FUNCTION_5_81();
  if (!FigID3MetadataStringKeyToOSTypeKey(v10, v11))
  {
    goto LABEL_21;
  }

LABEL_6:
  v13 = valuePtr;
  OUTLINED_FUNCTION_4_93();
  v7 = 0;
  if (!OUTLINED_FUNCTION_3_91())
  {
    v7 = 0;
    do
    {
      ++HIDWORD(v13);
      ++v7;
      OUTLINED_FUNCTION_4_93();
    }

    while (!OUTLINED_FUNCTION_3_91());
  }

  return v7;
}

uint64_t FigID3MetadataCopyItemWithKeyAndIndex(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFAllocator *a5, CFTypeRef *a6, unint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!(a6 | a7))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    v16 = FigSignalErrorAtGM();
    goto LABEL_95;
  }

  v14 = DerivedStorage;
  if (*(DerivedStorage + 65))
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = a6;
  }

  v61 = 0;
  v60 = 0;
  if (!CMBaseObjectGetDerivedStorage())
  {
    goto LABEL_98;
  }

  if (!a2)
  {
    if (a3)
    {
      goto LABEL_98;
    }

    goto LABEL_12;
  }

  if (!CFEqual(a2, @"comn"))
  {
    if (!CFEqual(a2, @"org.id3"))
    {
      goto LABEL_98;
    }

    if (a3)
    {
      v31 = CFGetTypeID(a3);
      if (v31 == CFStringGetTypeID())
      {
        if (!FigID3MetadataStringKeyToOSTypeKey(a3, &v61))
        {
LABEL_98:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          v16 = FigSignalErrorAtGM();
          LODWORD(a3) = 0;
          goto LABEL_17;
        }
      }

      else
      {
        v34 = CFGetTypeID(a3);
        if (v34 != CFNumberGetTypeID() || !CFNumberGetValue(a3, kCFNumberSInt32Type, &v61))
        {
          goto LABEL_98;
        }
      }

LABEL_10:
      LODWORD(v60) = v61;
    }

LABEL_12:
    v59 = 0;
    for (valuePtr = 0; ; valuePtr = 0)
    {
      v57 = 12;
      if (ID3ParserGetProperty())
      {
        LODWORD(a3) = 0;
        v16 = 0;
        goto LABEL_17;
      }

      if (HIDWORD(v60) == a4)
      {
        break;
      }

      ++HIDWORD(v60);
      v59 = 0;
    }

    if (!p_cf)
    {
      goto LABEL_44;
    }

    v56 = 0;
    v55 = 8;
    if (!ID3ParserGetProperty())
    {
      *p_cf = v56;
LABEL_44:
      v16 = 0;
      LODWORD(a3) = valuePtr;
      goto LABEL_17;
    }

    goto LABEL_98;
  }

  if (a3)
  {
    if (!FigID3MetadataCommonKeyToOSTypeKey(a3, &v61))
    {
      v16 = 4294954691;
      goto LABEL_95;
    }

    goto LABEL_10;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  v16 = FigSignalErrorAtGM();
LABEL_17:
  if (v16)
  {
    goto LABEL_95;
  }

  v17 = MEMORY[0x1E695E480];
  if (!*(v14 + 65))
  {
    LODWORD(valuePtr) = a3;
    if (a7)
    {
      Mutable = CFDictionaryCreateMutable(a5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a7 = Mutable;
      if (!Mutable || (v24 = Mutable, (v25 = CFNumberCreate(*v17, kCFNumberSInt32Type, &valuePtr)) == 0))
      {
LABEL_108:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        v16 = FigSignalErrorAtGM();
        if (!a6)
        {
          goto LABEL_95;
        }

        goto LABEL_91;
      }

      v26 = v25;
      CFDictionaryAddValue(v24, @"key", v25);
      CFRelease(v26);
      CFDictionaryAddValue(v24, @"keyspace", @"org.id3");
    }

    v16 = 0;
    if (!a6)
    {
      goto LABEL_95;
    }

    goto LABEL_91;
  }

  v18 = cf;
  v19 = *(v14 + 40);
  v20 = CFDictionaryCreateMutable(a5, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v20)
  {
    goto LABEL_108;
  }

  v21 = v20;
  if (v19 == 2)
  {
    CFStringFor3CCValue = FigGetCFStringFor3CCValue();
  }

  else
  {
    CFStringFor3CCValue = FigGetCFStringForOSTypeValue();
  }

  v27 = CFStringFor3CCValue;
  if (!CFStringFor3CCValue)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    v16 = FigSignalErrorAtGM();
    goto LABEL_90;
  }

  CFDictionaryAddValue(v21, @"keyspace", @"org.id3");
  CFDictionaryAddValue(v21, @"key", v27);
  if (!v18)
  {
    v30 = 0;
    goto LABEL_80;
  }

  v28 = CFGetTypeID(v18);
  if (v28 != CFDictionaryGetTypeID())
  {
    v30 = CFRetain(v18);
    v32 = 0;
    v33 = 0;
    goto LABEL_65;
  }

  Value = CFDictionaryGetValue(v18, @"data");
  if (Value)
  {
    v30 = Value;
  }

  else
  {
    v30 = CFDictionaryGetValue(v18, @"text");
    if (!v30)
    {
      goto LABEL_50;
    }
  }

  CFRetain(v30);
LABEL_50:
  v35 = CFDictionaryGetValue(v18, @"identifier");
  if (v35)
  {
    CFDictionaryAddValue(v21, @"info", v35);
  }

  v36 = CFDictionaryGetValue(v18, @"language");
  if (!v36)
  {
    goto LABEL_59;
  }

  v37 = v36;
  v38 = CFGetTypeID(v36);
  if (v38 == CFNumberGetTypeID())
  {
    v39 = CFRetain(v37);
    goto LABEL_57;
  }

  v40 = CFGetTypeID(v37);
  if (v40 == CFStringGetTypeID())
  {
    LOWORD(valuePtr) = FigMetadataGetPackedISO639_2T(v37);
    v39 = CFNumberCreate(*v17, kCFNumberSInt16Type, &valuePtr);
LABEL_57:
    v41 = v39;
    if (v39)
    {
      CFDictionaryAddValue(v21, @"languageCode", v39);
      CFRelease(v41);
    }
  }

LABEL_59:
  v33 = CFDictionaryGetValue(v18, @"MIME");
  if (v33)
  {
    CFDictionaryAddValue(v21, @"dataType", v33);
    CFDictionaryAddValue(v21, @"dataTypeNamespace", @"org.iana.media-type");
  }

  v42 = CFDictionaryGetValue(v18, @"picturetype");
  if (v42)
  {
    CFDictionaryAddValue(v21, @"pictureType", v42);
  }

  v32 = CFDictionaryGetValue(v18, @"filename");
  if (v32)
  {
    CFDictionaryAddValue(v21, @"name", v32);
  }

LABEL_65:
  if (v30)
  {
    v43 = CFURLGetTypeID();
    if (v43 != CFGetTypeID(v30))
    {
      TypeID = CFDataGetTypeID();
      if (TypeID != CFGetTypeID(v30))
      {
        goto LABEL_80;
      }

      v49 = CFStringCompare(v27, @"GEOB", 0);
      if (!v33)
      {
        goto LABEL_80;
      }

      if (v49)
      {
        goto LABEL_80;
      }

      v50 = CFStringCompare(v33, @"application/xml", 1uLL);
      if (!v32)
      {
        goto LABEL_80;
      }

      if (v50)
      {
        goto LABEL_80;
      }

      if (!CFStringHasSuffix(v32, @".plist"))
      {
        goto LABEL_80;
      }

      v51 = CFPropertyListCreateWithData(a5, v30, 0, 0, 0);
      if (!v51)
      {
        goto LABEL_80;
      }

      v47 = v51;
      v45 = v51;
      goto LABEL_70;
    }

    v44 = CFURLCopyAbsoluteURL(v30);
    if (v44)
    {
      v45 = v44;
      v46 = CFURLGetString(v44);
      if (!v46)
      {
LABEL_71:
        CFRelease(v45);
        goto LABEL_80;
      }

      v47 = v46;
LABEL_70:
      CFRetain(v47);
      CFRelease(v30);
      v30 = v47;
      goto LABEL_71;
    }
  }

LABEL_80:
  if (a6)
  {
    if (v30)
    {
      v52 = CFRetain(v30);
    }

    else
    {
      v52 = 0;
    }

    *a6 = v52;
  }

  if (a7)
  {
    *a7 = CFRetain(v21);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  v16 = 0;
LABEL_90:
  CFRelease(v21);
  if (!a6)
  {
    goto LABEL_95;
  }

LABEL_91:
  if (!v16)
  {
    if (*a6)
    {
      v16 = 0;
    }

    else
    {
      v16 = 4294954689;
    }
  }

LABEL_95:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t FigMetadataReaderCreateForTimedID3_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigID3MetadataCopyProperty_cold_1(void *a1, void *a2, _DWORD *a3)
{
  v12 = 0;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v8)
  {
    result = v8(v6, v7, &v12);
    if (!result)
    {
      if (v12 >= a1[4])
      {
        v10 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      v11 = CFRetain(*v10);
      result = 0;
      *a2 = v11;
    }
  }

  else
  {
    result = 4294954514;
  }

  *a3 = result;
  return result;
}

uint64_t FigID3MetadataCopyValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigID3MetadataCopyValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigID3MetadataCopyValue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigID3MetadataCopyValue_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigID3MetadataCopyValue_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigID3MetadataCopyValue_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigID3MetadataGetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigID3MetadataGetKeyCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigID3MetadataCopyKeyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigID3MetadataCopyKeyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigID3MetadataCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandlePlayerServerMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v134 = *MEMORY[0x1E69E9840];
  v114 = 0;
  v115 = &v114;
  v116 = 0x2000000000;
  v117 = 0;
  v113 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x2000000000;
  v112 = 0;
  v108 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_222;
  }

  OpCode = FigXPCMessageGetOpCode();
  *(v115 + 6) = OpCode;
  if (OpCode)
  {
    goto LABEL_224;
  }

  v7 = xpc_dictionary_get_BOOL(a2, "IsFigSharedMessage");
  v8 = MEMORY[0x1E695E480];
  if (v7)
  {
    LODWORD(value) = 0;
    v9 = FigXPCMessageGetOpCode();
    if (v9)
    {
      CacheFileSize = v9;
      goto LABEL_205;
    }

    OUTLINED_FUNCTION_13_32();
    if (v10)
    {
      OUTLINED_FUNCTION_4_94();
      v44 = OUTLINED_FUNCTION_14_36();
      if (v44)
      {
        goto LABEL_165;
      }

      if (!__str || (v72 = CFGetTypeID(__str), v72 == CFStringGetTypeID()))
      {
        OUTLINED_FUNCTION_10_41();
        v44 = FigXPCMessageCopyCFString();
        if (v44)
        {
          goto LABEL_165;
        }

        if (*&v128[0])
        {
          v73 = CFGetTypeID(*&v128[0]);
          if (v73 == CFStringGetTypeID())
          {
            v74 = OUTLINED_FUNCTION_11_44();
            CacheFileSize = FigShared_GetCacheFileSize(v74);
            if (!CacheFileSize)
            {
              xpc_dictionary_set_int64(a3, "UsedFileSize", *token.val);
            }

LABEL_166:
            if (__str)
            {
              CFRelease(__str);
            }

            v58 = *&v128[0];
            if (!*&v128[0])
            {
              goto LABEL_205;
            }

            goto LABEL_204;
          }
        }
      }

      goto LABEL_263;
    }

    OUTLINED_FUNCTION_13_32();
    if (!v10)
    {
      OUTLINED_FUNCTION_13_32();
      if (v10)
      {
        OUTLINED_FUNCTION_4_94();
        *v122.val = 0;
        v39 = OUTLINED_FUNCTION_14_36();
        if (v39)
        {
          goto LABEL_179;
        }

        if (!__str || (v40 = CFGetTypeID(__str), v40 == CFStringGetTypeID()))
        {
          OUTLINED_FUNCTION_10_41();
          v39 = FigXPCMessageCopyCFString();
          if (v39)
          {
            goto LABEL_179;
          }

          if (*&v128[0])
          {
            v41 = CFGetTypeID(*&v128[0]);
            if (v41 == CFStringGetTypeID())
            {
              v39 = FigXPCMessageCopyCFURL();
              if (v39)
              {
                goto LABEL_179;
              }

              if (*token.val)
              {
                v42 = CFGetTypeID(*token.val);
                if (v42 == CFURLGetTypeID())
                {
                  v43 = OUTLINED_FUNCTION_11_44();
                  v39 = FigShared_CheckIntoAndOutOfDiskCache(v43);
                  if (!v39)
                  {
LABEL_178:
                    v39 = FigXPCMessageSetCFString();
                  }

LABEL_179:
                  CacheFileSize = v39;
                  if (__str)
                  {
                    CFRelease(__str);
                  }

                  if (*&v128[0])
                  {
                    CFRelease(*&v128[0]);
                  }

                  if (*token.val)
                  {
                    CFRelease(*token.val);
                  }

                  v58 = *v122.val;
                  if (!*v122.val)
                  {
                    goto LABEL_205;
                  }

                  goto LABEL_204;
                }
              }
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_13_32();
        if (!v10)
        {
          OUTLINED_FUNCTION_13_32();
          if (!v10)
          {
            OUTLINED_FUNCTION_13_32();
            if (!v10)
            {
              if (v11 == 1399088739)
              {
                OUTLINED_FUNCTION_7_59();
                v44 = OUTLINED_FUNCTION_14_36();
                if (v44)
                {
                  goto LABEL_165;
                }

                if (!__str || (v67 = CFGetTypeID(__str), v67 == CFStringGetTypeID()))
                {
                  OUTLINED_FUNCTION_10_41();
                  v44 = FigXPCMessageCopyCFString();
                  if (v44)
                  {
                    goto LABEL_165;
                  }

                  if (*&v128[0])
                  {
                    v68 = CFGetTypeID(*&v128[0]);
                    if (v68 == CFStringGetTypeID())
                    {
                      v69 = OUTLINED_FUNCTION_11_44();
                      v44 = FigShared_DeleteFromDiskCache(v69, v70);
                      goto LABEL_165;
                    }
                  }
                }

                goto LABEL_263;
              }

              if (v11 == 1399415923)
              {
                OUTLINED_FUNCTION_7_59();
                v44 = OUTLINED_FUNCTION_14_36();
                if (v44)
                {
                  goto LABEL_165;
                }

                v75 = __str;
                if (__str)
                {
                  v76 = CFGetTypeID(__str);
                  if (v76 != CFStringGetTypeID())
                  {
                    goto LABEL_263;
                  }

                  v75 = __str;
                }

                v44 = FigShared_CopyDiskCacheCheckedInIDs(v75, v128);
                if (!v44)
                {
                  v44 = FigXPCMessageSetCFArray();
                }

                goto LABEL_165;
              }

              if (v11 != 1399679858)
              {
                if (v11 != 1400005474)
                {
                  switch(v11)
                  {
                    case 1400009836:
                      *&v128[0] = 0;
                      *token.val = 0;
                      __str = 0uLL;
                      OUTLINED_FUNCTION_10_41();
                      v59 = FigXPCMessageCopyCFString();
                      if (v59)
                      {
                        goto LABEL_127;
                      }

                      FigIsItOKToLogURLs();
                      v66 = FigCopyRedactedURLFromString();
                      if (v66)
                      {
                        CFRelease(v66);
                      }

                      v59 = ObtainSinfInfoFromMedia(*&v128[0], &token);
                      if (v59)
                      {
                        goto LABEL_127;
                      }

                      CacheFileSize = PPGetRentalInfoFromSinfInfo(*token.val, &__str);
                      if (!CacheFileSize)
                      {
                        xpc_dictionary_set_uint64(a3, "RentalStartTime", __str);
                        xpc_dictionary_set_uint64(a3, "RentalDuration", DWORD1(__str));
                        xpc_dictionary_set_uint64(a3, "PlaybackStartTime", DWORD2(__str));
                        xpc_dictionary_set_uint64(a3, "PlaybackDuration", HIDWORD(__str));
                      }

                      break;
                    case 1400267632:
                      *&v128[0] = 0;
                      *token.val = 0;
                      OUTLINED_FUNCTION_10_41();
                      v59 = FigXPCMessageCopyCFDictionary();
                      if (v59)
                      {
                        goto LABEL_127;
                      }

                      uint64 = xpc_dictionary_get_uint64(a2, "VideoCodecType");
                      int64 = xpc_dictionary_get_int64(a2, "Width");
                      v62 = xpc_dictionary_get_int64(a2, "Height");
                      *&__str = 0;
                      if (int64 <= 0)
                      {
                        v63 = 100;
                      }

                      else
                      {
                        v63 = int64;
                      }

                      if (v62 <= 0)
                      {
                        v64 = 100;
                      }

                      else
                      {
                        v64 = v62;
                      }

                      v65 = VTCompressionSessionCreate(*v8, v63, v64, uint64, 0, 0, *v8, fs_dummyEncodedFrameCallback, 0, &__str);
                      if (!v65)
                      {
                        v65 = VTSessionCopySupportedPropertyDictionary(__str, &token);
                      }

                      CacheFileSize = v65;
                      VTCompressionSessionInvalidate(__str);
                      if (__str)
                      {
                        CFRelease(__str);
                      }

                      if (!CacheFileSize)
                      {
                        v59 = FigXPCMessageSetCFDictionary();
LABEL_127:
                        CacheFileSize = v59;
                      }

                      break;
                    case 1400074337:
                      *&__str = 0;
                      v12 = OUTLINED_FUNCTION_14_36();
                      if (v12)
                      {
                        goto LABEL_23;
                      }

                      if (!__str || (v13 = CFGetTypeID(__str), v13 == CFStringGetTypeID()))
                      {
                        xpc_dictionary_get_int64(a2, "TargetSize");
                        xpc_dictionary_get_int64(a2, "TargetFileSize");
                        xpc_dictionary_get_BOOL(a2, "AutomaticallyManagesSize");
                        v12 = FigShared_SetDiskCacheParams(__str);
LABEL_23:
                        CacheFileSize = v12;
                        goto LABEL_203;
                      }

                      goto LABEL_262;
                    default:
                      CacheFileSize = -16158;
                      goto LABEL_205;
                  }

LABEL_134:
                  if (*&v128[0])
                  {
                    CFRelease(*&v128[0]);
                  }

                  v58 = *token.val;
                  if (!*token.val)
                  {
                    goto LABEL_205;
                  }

                  goto LABEL_204;
                }

                OUTLINED_FUNCTION_7_59();
                v44 = OUTLINED_FUNCTION_14_36();
                if (v44)
                {
                  goto LABEL_165;
                }

                if (!__str || (v45 = CFGetTypeID(__str), v45 == CFStringGetTypeID()))
                {
                  OUTLINED_FUNCTION_10_41();
                  v44 = FigXPCMessageCopyCFString();
                  if (v44)
                  {
LABEL_165:
                    CacheFileSize = v44;
                    goto LABEL_166;
                  }

                  if (*&v128[0])
                  {
                    v46 = CFGetTypeID(*&v128[0]);
                    if (v46 == CFStringGetTypeID())
                    {
                      xpc_dictionary_get_int64(a2, "DesiredByteSize");
                      v47 = OUTLINED_FUNCTION_11_44();
                      v44 = FigShared_ReserveDiskCacheBacking(v47, v48, v49);
                      goto LABEL_165;
                    }
                  }
                }

LABEL_263:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_2_114();
                v44 = FigSignalErrorAtGM();
                goto LABEL_165;
              }

              OUTLINED_FUNCTION_7_59();
              v12 = OUTLINED_FUNCTION_14_36();
              if (v12)
              {
                goto LABEL_23;
              }

              if (__str)
              {
                v71 = CFGetTypeID(__str);
                if (v71 != CFStringGetTypeID())
                {
LABEL_262:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_2_114();
                  v12 = FigSignalErrorAtGM();
                  goto LABEL_23;
                }
              }

              xpc_dictionary_get_BOOL(a2, "AllAvailable");
              CacheFileSize = FigShared_MakeRoomInDiskCache(__str);
              if (!CacheFileSize)
              {
                xpc_dictionary_set_int64(a3, "BytesMadeAvailable", *&v128[0]);
              }

LABEL_203:
              v58 = __str;
              if (__str)
              {
LABEL_204:
                CFRelease(v58);
              }

LABEL_205:
              *(v115 + 6) = CacheFileSize;
              goto LABEL_224;
            }

            OUTLINED_FUNCTION_4_94();
            *v122.val = 0;
            v80 = OUTLINED_FUNCTION_14_36();
            if (v80)
            {
              goto LABEL_266;
            }

            if (__str)
            {
              v81 = CFGetTypeID(__str);
              if (v81 != CFStringGetTypeID())
              {
                goto LABEL_265;
              }
            }

            OUTLINED_FUNCTION_10_41();
            v80 = FigXPCMessageCopyCFString();
            if (!v80)
            {
              if (!*&v128[0] || (v82 = CFGetTypeID(*&v128[0]), v82 != CFStringGetTypeID()))
              {
LABEL_265:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_2_114();
                v80 = FigSignalErrorAtGM();
                goto LABEL_266;
              }

              v80 = FigXPCMessageCopyCFString();
              if (!v80)
              {
                if (*&v128[0])
                {
                  v83 = CFGetTypeID(*&v128[0]);
                  if (v83 == CFStringGetTypeID())
                  {
                    v84 = OUTLINED_FUNCTION_11_44();
                    v89 = FigShared_CopyCacheProperty(v84, v85, *token.val, *v8, &v122, v86, v87, v88);
                    v90 = *v122.val;
                    if (v89)
                    {
                      CacheFileSize = v89;
                      if (!*v122.val)
                      {
                        goto LABEL_199;
                      }
                    }

                    else
                    {
                      CacheFileSize = FigXPCMessageSetCFObject();
                      v90 = *v122.val;
                      if (!*v122.val)
                      {
LABEL_199:
                        if (*token.val)
                        {
                          CFRelease(*token.val);
                        }

                        if (*&v128[0])
                        {
                          CFRelease(*&v128[0]);
                        }

                        goto LABEL_203;
                      }
                    }

                    CFRelease(v90);
                    goto LABEL_199;
                  }
                }

                goto LABEL_265;
              }
            }

LABEL_266:
            CacheFileSize = v80;
            goto LABEL_199;
          }

          OUTLINED_FUNCTION_4_94();
          *v122.val = 0;
          LOBYTE(cf) = 0;
          *bytes.val = 0;
          v55 = OUTLINED_FUNCTION_14_36();
          if (v55)
          {
            goto LABEL_260;
          }

          v56 = __str;
          if (__str)
          {
            v57 = CFGetTypeID(__str);
            if (v57 != CFStringGetTypeID())
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_2_114();
              v55 = FigSignalErrorAtGM();
              goto LABEL_260;
            }

            v56 = __str;
          }

          v55 = FigShared_CopyDiskCacheParams(v56);
          if (!v55)
          {
            CacheFileSize = FigXPCMessageSetCFURL();
            if (!CacheFileSize)
            {
              xpc_dictionary_set_int64(a3, "UsedFileSize", *&v128[0]);
              xpc_dictionary_set_int64(a3, "TargetSize", *token.val);
              xpc_dictionary_set_int64(a3, "TargetFileSize", *v122.val);
              xpc_dictionary_set_BOOL(a3, "AutomaticallyManagesSize", cf != 0);
            }

LABEL_110:
            if (__str)
            {
              CFRelease(__str);
            }

            v58 = *bytes.val;
            if (!*bytes.val)
            {
              goto LABEL_205;
            }

            goto LABEL_204;
          }

LABEL_260:
          CacheFileSize = v55;
          goto LABEL_110;
        }

        OUTLINED_FUNCTION_4_94();
        *v122.val = 0;
        v39 = OUTLINED_FUNCTION_14_36();
        if (v39)
        {
          goto LABEL_179;
        }

        if (!__str || (v77 = CFGetTypeID(__str), v77 == CFStringGetTypeID()))
        {
          OUTLINED_FUNCTION_10_41();
          v39 = FigXPCMessageCopyCFString();
          if (v39)
          {
            goto LABEL_179;
          }

          if (*&v128[0])
          {
            v78 = CFGetTypeID(*&v128[0]);
            if (v78 == CFStringGetTypeID())
            {
              v79 = OUTLINED_FUNCTION_11_44();
              v39 = FigShared_CheckOutOfDiskCache(v79);
              if (!v39)
              {
                v39 = FigXPCMessageSetCFURL();
                if (!v39)
                {
                  goto LABEL_178;
                }
              }

              goto LABEL_179;
            }
          }
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      v39 = FigSignalErrorAtGM();
      goto LABEL_179;
    }

    OUTLINED_FUNCTION_4_94();
    v50 = OUTLINED_FUNCTION_14_36();
    if (!v50)
    {
      if (__str)
      {
        v51 = CFGetTypeID(__str);
        if (v51 != CFStringGetTypeID())
        {
          goto LABEL_258;
        }
      }

      OUTLINED_FUNCTION_10_41();
      v50 = FigXPCMessageCopyCFString();
      if (v50)
      {
        goto LABEL_101;
      }

      if (!*&v128[0])
      {
        goto LABEL_258;
      }

      v52 = CFGetTypeID(*&v128[0]);
      if (v52 != CFStringGetTypeID())
      {
        goto LABEL_258;
      }

      v50 = FigXPCMessageCopyCFURL();
      if (v50)
      {
        goto LABEL_101;
      }

      if (*token.val && (v53 = CFGetTypeID(*token.val), v53 == CFURLGetTypeID()))
      {
        v54 = OUTLINED_FUNCTION_11_44();
        v50 = FigShared_CheckIntoDiskCache(v54);
      }

      else
      {
LABEL_258:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_114();
        v50 = FigSignalErrorAtGM();
      }
    }

LABEL_101:
    CacheFileSize = v50;
    if (__str)
    {
      CFRelease(__str);
    }

    goto LABEL_134;
  }

  if (v113 != 1668441400)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    v30 = FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
    *(v115 + 6) = v30;
    if (v30)
    {
      goto LABEL_224;
    }

    if (FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(v110[3]))
    {
      OUTLINED_FUNCTION_15_33();
      v33 = FigXPCPlaybackCoordinatorServerHandleMessage(v31, v32);
LABEL_223:
      *(v115 + 6) = v33;
      goto LABEL_224;
    }

    v34 = FigXPCImageQueueGaugeServerHandlesMessagesForObject(v110[3]);
    v35 = v110[3];
    if (v34)
    {
      OUTLINED_FUNCTION_15_33();
      v33 = FigXPCImageQueueGaugeServerHandleMessage(v36);
      goto LABEL_223;
    }

    if (v35)
    {
      v91 = CFGetTypeID(v35);
      if (v91 == FigPlayerGetTypeID())
      {
        if (v108)
        {
          v92 = CFGetTypeID(v108);
          if (qword_1ED4CAF58 != -1)
          {
            dispatch_once(&qword_1ED4CAF58, &__block_literal_global_123);
          }

          if (v92 == qword_1ED4CAF60)
          {
            v93 = v108;
            v94 = (v108 + 40);
            goto LABEL_220;
          }
        }
      }

      else
      {
        v95 = v110[3];
        if (v95)
        {
          v96 = CFGetTypeID(v95);
          if (v96 == FigPlaybackItemGetTypeID())
          {
            if (v108)
            {
              v97 = CFGetTypeID(v108);
              if (qword_1ED4CAF68 != -1)
              {
                dispatch_once(&qword_1ED4CAF68, &__block_literal_global_142);
              }

              if (v97 == qword_1ED4CAF70)
              {
                v93 = v108;
                v94 = (v108 + 72);
LABEL_220:
                v98 = *v94;
                if (*v94)
                {
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 0x40000000;
                  block[2] = __HandlePlayerServerMessage_block_invoke;
                  block[3] = &unk_1E748EC60;
                  v107 = v113;
                  block[4] = &v114;
                  block[5] = &v109;
                  block[6] = v93;
                  block[7] = a1;
                  block[8] = a2;
                  block[9] = a3;
                  dispatch_sync(v98, block);
                  goto LABEL_224;
                }
              }
            }
          }
        }
      }
    }

LABEL_222:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
    v33 = FigSignalErrorAtGM();
    goto LABEL_223;
  }

  v123 = 0;
  v124 = 0;
  memset(&v122, 0, sizeof(v122));
  theString = 0;
  v121 = 0;
  v119 = 0;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  __str = 0u;
  memset(v128, 0, sizeof(v128));
  v15 = *MEMORY[0x1E695E480];
  if (qword_1ED4CAF58 != -1)
  {
    dispatch_once(&qword_1ED4CAF58, &__block_literal_global_123);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
    v102 = FigSignalErrorAtGM();
    if (v102)
    {
      v26 = v102;
      v25 = 0;
      v22 = 0;
      goto LABEL_62;
    }
  }

  FigXPCMessageCopyCFDictionary();
  *(Instance + 96) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (Instance + 96), 10, 0x600u);
  }

  snprintf(&__str, 0x50uLL, "com.apple.coremedia.playerserver.invalidation.%s", (Instance + 96));
  if (_MergedGlobals_83 != -1)
  {
    dispatch_once(&_MergedGlobals_83, &__block_literal_global_60);
  }

  v17 = dispatch_queue_create_with_target_V2(&__str, 0, qword_1ED4CAF50);
  *(Instance + 32) = v17;
  if (!v17)
  {
    v22 = 0;
    v25 = 0;
    goto LABEL_242;
  }

  snprintf(&__str, 0x50uLL, "com.apple.coremedia.playerserver.asynccontrol.%s", (Instance + 96));
  TargetingWorkloopWithPriority = FigDispatchQueueCreateTargetingWorkloopWithPriority();
  *(Instance + 40) = TargetingWorkloopWithPriority;
  if (!TargetingWorkloopWithPriority)
  {
    v22 = 0;
    v25 = 0;
    goto LABEL_242;
  }

  xdict = a3;
  v104 = xpc_dictionary_get_uint64(a2, "EngineTopology");
  xpc_dictionary_get_BOOL(a2, "ClientSDKVersion2015AndLater");
  v105 = a1;
  xpc_connection_get_audit_token();
  FigXPCMessageCopyCFString();
  v19 = xpc_dictionary_copy_mach_send();
  bytes = v122;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  cf = 0;
  value = 0;
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_63();
    v26 = FigSignalErrorAtGM();
    v22 = 0;
LABEL_238:
    v25 = v19;
    v27 = v105;
    goto LABEL_45;
  }

  v21 = MutableCopy;
  FigCFDictionarySetBoolean();
  v22 = CFDataCreate(v15, &bytes, 32);
  if (!v22)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_63();
    v26 = FigSignalErrorAtGM();
    CFRelease(v21);
    goto LABEL_238;
  }

  CFDictionarySetValue(v21, @"ClientAuditToken", v22);
  token = bytes;
  FigServer_GetClientPIDFromAuditToken();
  FigCFDictionarySetInt32();
  if ((v19 - 1) <= 0xFFFFFFFD)
  {
    if (FigMachPortHolderCreateWithMachSendRight())
    {
      goto LABEL_239;
    }

    FigCFDictionarySetValue();
  }

  FigCFDictionarySetValue();
  token = bytes;
  v23 = SecTaskCreateWithAuditToken(v15, &token);
  if (v23)
  {
    v24 = v23;
    CFDictionarySetValue(v21, @"ClientSecTask", v23);
    FigCFDictionarySetBoolean();
    v25 = v19;
    if (VTIsSecTaskEntitledForVP9Decode())
    {
      CFDictionarySetValue(v21, @"AllowAlternateDecoderSelection", *MEMORY[0x1E695E4D0]);
    }

    v26 = FigDispatchQueueHolderCreateWithDispatchQueue();
    v27 = v105;
    if (!v26)
    {
      CFDictionarySetValue(v21, @"AsynchronousControlQueueHolder", value);
      CFRelease(v22);
LABEL_44:
      CFRelease(v24);
      v22 = v21;
      goto LABEL_45;
    }

    goto LABEL_240;
  }

LABEL_239:
  v25 = v19;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_63();
  v26 = FigSignalErrorAtGM();
  v24 = 0;
  v27 = v105;
LABEL_240:
  CFRelease(v21);
  CFRelease(v22);
  v21 = 0;
  v22 = 0;
  if (v24)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    goto LABEL_244;
  }

  v28 = FigSharedPlayerCreateWithOptions(v15, v104 | 0x810u, v22, &v123);
  if (v28)
  {
    goto LABEL_243;
  }

  v29 = v123;
  if (v123)
  {
    v29 = CFRetain(v123);
  }

  *(Instance + 24) = v29;
  v28 = FigXPCServerAssociateObjectWithConnection();
  if (v28)
  {
LABEL_243:
    v26 = v28;
LABEL_244:
    CFRelease(Instance);
    goto LABEL_62;
  }

  *(Instance + 72) = FigSimpleMutexCreate();
  *(Instance + 80) = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v37 = v124;
  *(Instance + 16) = v124;
  xpc_dictionary_set_uint64(xdict, *MEMORY[0x1E69615A0], v37);
  if (_os_feature_enabled_impl())
  {
    snprintf(v128, 0x50uLL, "Create %s", (Instance + 96));
    xpc_connection_get_pid(v27);
    v38 = FigOSTransactionCreateWithProcessName();
    *(Instance + 112) = v38;
    if (!v38)
    {
LABEL_242:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      v28 = FigSignalErrorAtGM();
      goto LABEL_243;
    }
  }

  v26 = 0;
LABEL_62:
  if (v123)
  {
    CFRelease(v123);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if ((v25 - 1) <= 0xFFFFFFFD)
  {
    FigMachPortReleaseSendRight_();
  }

  *(v115 + 6) = v26;
LABEL_224:
  v99 = v110[3];
  if (v99)
  {
    CFRelease(v99);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  v100 = *(v115 + 6);
  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(&v114, 8);
  return v100;
}

uint64_t serverXPCItem_HandleCopyImageQueueGaugeMessage(const void *a1, uint64_t a2, _xpc_connection_s *a3, uint64_t a4, void *a5)
{
  cf = 0;
  if (a1 && (v10 = CFGetTypeID(a1), v10 == FigPlaybackItemGetTypeID()) && a4 && a5)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v12)
    {
      v14 = 4294954514;
      goto LABEL_12;
    }

    v13 = v12(FigBaseObject, a2, *MEMORY[0x1E695E480], &cf);
    if (!v13)
    {
      if (!cf || (v13 = FigXPCImageQueueGaugeServerAssociateCopiedNeighborImageQueueGauge(a3), !v13))
      {
        xpc_dictionary_set_uint64(a5, *MEMORY[0x1E69615A0], 0);
        v14 = 0;
        goto LABEL_12;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v13 = FigSignalErrorAtGM();
  }

  v14 = v13;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void servedPlayerState_Finalize(void *a1)
{
  if (a1)
  {
    if (a1[3])
    {
      a1[3] = 0;
      a1[5] = 0;
      OUTLINED_FUNCTION_6_75();
      v12[1] = 0x40000000;
      v12[2] = __servedPlayerState_Finalize_block_invoke;
      v12[3] = &__block_descriptor_tmp_126_1;
      v12[4] = v3;
      v12[5] = v2;
      serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue(v4, v12);
    }

    v5 = a1[4];
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      dispatch_release(v6);
    }

    FigSimpleMutexDestroy();
    v7 = a1[10];
    if (v7)
    {
      CFRelease(v7);
      a1[10] = 0;
    }

    v8 = a1[6];
    if (v8)
    {
      CFRelease(v8);
      a1[6] = 0;
    }

    v9 = a1[7];
    if (v9)
    {
      CFRelease(v9);
      a1[7] = 0;
    }

    v10 = a1[8];
    if (v10)
    {
      CFRelease(v10);
      a1[8] = 0;
    }

    v11 = a1[14];
    if (v11)
    {
      os_release(v11);
      a1[14] = 0;
    }
  }
}

void servedPlaybackItemState_Finalize(void *a1)
{
  if (a1)
  {
    if (a1[10])
    {
      a1[9] = 0;
      a1[10] = 0;
      OUTLINED_FUNCTION_6_75();
      v11[1] = 0x40000000;
      v11[2] = __servedPlaybackItemState_Finalize_block_invoke;
      v11[3] = &__block_descriptor_tmp_145_1;
      v11[4] = v3;
      v11[5] = v2;
      serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue(v4, v11);
    }

    v5 = a1[12];
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[6];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[8];
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = a1[9];
    if (v9)
    {
      dispatch_release(v9);
    }

    FigSimpleMutexDestroy();
    v10 = a1[11];
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

uint64_t serverXPCPlayer_handlePlayerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v22 = 0;
  v20 = 0;
  v21 = 0;
  if (!a1)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_400();
  v10 = CFGetTypeID(v9);
  if (v10 != FigPlayerGetTypeID())
  {
    goto LABEL_24;
  }

  if (FigCFEqual() && a5)
  {
    v11 = CFGetTypeID(a5);
    if (v11 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(a5) >= 1)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (!Mutable || (CFArrayGetValueAtIndex(a5, 0), FigCFNumberGetUInt64(), v13 = FigXPCServerLookupAndRetainAssociatedObject(), !v13))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_4();
          v13 = FigSignalErrorAtGM();
        }

        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_24:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v18 = FigSignalErrorAtGM();
    Mutable = 0;
    goto LABEL_16;
  }

LABEL_10:
  Mutable = 0;
  v13 = FPSupport_HandlePlayerSetPropertyAndCopyModification(0, a4, a5, v6, serverXPCPlayer_handlePlayerSetPropertyGuts, &v22, &v21, &v20);
  if (v13)
  {
LABEL_14:
    v18 = v13;
    goto LABEL_16;
  }

  if (v22)
  {
    v18 = 0;
  }

  else
  {
    v15 = v20;
    v14 = v21;
    FigBaseObject = FigPlayerGetFigBaseObject(v5);
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      v13 = v17(FigBaseObject, v14, v15);
      goto LABEL_14;
    }

    v18 = 4294954514;
  }

LABEL_16:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v18;
}

uint64_t serverXPCItem_handleItemSetPropertyGuts(int a1, uint64_t a2, __CFString *a3, CFTypeRef cf, _BYTE *a5, void *a6, void *a7)
{
  if (cf)
  {
    v13 = CFRetain(cf);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 80);
  v52[0] = 0;
  if (!v14)
  {
    goto LABEL_90;
  }

  v15 = CFGetTypeID(v14);
  if (v15 != FigPlaybackItemGetTypeID())
  {
    goto LABEL_90;
  }

  v16 = FigCFEqual();
  v17 = MEMORY[0x1E695E480];
  if (!v16)
  {
    if (FigCFEqual())
    {
      v50.value = 0;
      if (cf)
      {
        v26 = CFGetTypeID(cf);
        if (v26 == CFNumberGetTypeID())
        {
          v23 = a6;
          v27 = OUTLINED_FUNCTION_12_38();
          CFNumberGetValue(v27, kCFNumberSInt64Type, v28);
          v29 = FigVideoCompositorServerRetainVideoCompositorForID(v50.value, v52);
          if (!v29)
          {
            if (v13)
            {
              CFRelease(v13);
            }

            v22 = v52[0];
            v52[0] = 0;
            v30 = &kFigPlaybackItemProperty_VideoCompositor;
            goto LABEL_30;
          }

LABEL_91:
          v31 = v29;
LABEL_38:
          v22 = 0;
          goto LABEL_39;
        }
      }

LABEL_90:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      v29 = FigSignalErrorAtGM();
      goto LABEL_91;
    }

    if (!FigCFEqual())
    {
      if (CFEqual(@"Server_AudioProcessingTapID", a3))
      {
        v50.value = 0;
        value.value = 0;
        if (cf && (v37 = CFGetTypeID(cf), v37 == CFNumberGetTypeID()))
        {
          v38 = OUTLINED_FUNCTION_12_38();
          CFNumberGetValue(v38, kCFNumberSInt64Type, v39);
          v40 = v50.value;
        }

        else
        {
          v40 = 0;
        }

        v23 = a6;
        MTAudioProcessingTapServerIsObjectIDLocallyServed(v40);
        if (v13)
        {
          CFRelease(v13);
        }

        v22 = value.value;
        v30 = &kFigPlaybackItemProperty_AudioProcessingTap;
        goto LABEL_30;
      }

      if (CFEqual(@"Server_PriorImageQueueGaugeID", a3))
      {
        v23 = a6;
        v50.value = 0;
        value.value = 0;
        if (cf)
        {
          v41 = CFGetTypeID(cf);
          if (v41 == CFNumberGetTypeID())
          {
            v42 = OUTLINED_FUNCTION_12_38();
            CFNumberGetValue(v42, kCFNumberSInt64Type, v43);
          }
        }

        if (v13)
        {
          CFRelease(v13);
        }

        v22 = value.value;
        v30 = &kFigPlaybackItemProperty_PriorImageQueueGauge;
        goto LABEL_30;
      }

      if (CFEqual(@"Server-TransientTimebaseDict", a3))
      {
        if (cf)
        {
          timebaseOut = 0;
          v50 = **&MEMORY[0x1E6960C70];
          value = v50;
          v48 = 0.0;
          OUTLINED_FUNCTION_12_38();
          FigCFDictionaryGetCMTimeIfPresent();
          FigCFDictionaryGetCMTimeIfPresent();
          FigCFDictionaryGetDoubleIfPresent();
          v44 = *v17;
          HostTimeClock = CMClockGetHostTimeClock();
          v29 = CMTimebaseCreateWithSourceClock(v44, HostTimeClock, &timebaseOut);
          if (v29)
          {
            goto LABEL_91;
          }

          if (v13)
          {
            CFRelease(v13);
          }

          v13 = timebaseOut;
          if (v48 == 0.0)
          {
            v29 = CMTimebaseSetRate(timebaseOut, 0.0);
            if (v29)
            {
              goto LABEL_91;
            }

            time = v50;
            v29 = CMTimebaseSetTime(timebaseOut, &time);
            if (v29)
            {
              goto LABEL_91;
            }
          }

          else
          {
            time = v50;
            immediateSourceTime = value;
            v29 = CMTimebaseSetRateAndAnchorTime(timebaseOut, v48, &time, &immediateSourceTime);
            if (v29)
            {
              goto LABEL_91;
            }
          }
        }

        a3 = @"TransientTimebaseForCoordinatedPlaybackSynchronization";
      }

      v22 = v13;
      goto LABEL_31;
    }

    v50.value = 0;
    value.value = 0;
    if (!cf)
    {
      goto LABEL_90;
    }

    v35 = CFGetTypeID(cf);
    if (v35 != CFDictionaryGetTypeID())
    {
      goto LABEL_90;
    }

    OUTLINED_FUNCTION_12_38();
    if (FigCFDictionaryGetInt64IfPresent())
    {
      v29 = FigVideoCompositorServerRetainVideoCompositorForID(v50.value, v52);
      if (v29)
      {
        goto LABEL_91;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(*v17, 0, cf);
      v22 = MutableCopy;
      if (!MutableCopy)
      {
LABEL_97:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        v31 = FigSignalErrorAtGM();
        goto LABEL_39;
      }

      CFDictionaryRemoveValue(MutableCopy, @"Server_VideoCompositorID");
      CFDictionarySetValue(v22, @"VideoCompositor", v52[0]);
    }

    else
    {
      v22 = 0;
    }

    if (!FigCFDictionaryGetValueIfPresent() || FigCFEqual())
    {
      if (v22)
      {
        if (v13)
        {
          CFRelease(v13);
        }
      }

      else
      {
        v22 = v13;
      }

      goto LABEL_31;
    }

    goto LABEL_97;
  }

  v18 = CFGetTypeID(v14);
  if (v18 == FigPlaybackItemGetTypeID() && cf && (v19 = CFGetTypeID(cf), v19 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(cf), (Mutable = CFArrayCreateMutable(*v17, Count, MEMORY[0x1E695E9C0])) != 0))
  {
    v22 = Mutable;
    v23 = a6;
    if (Count < 1)
    {
LABEL_27:
      if (v13)
      {
        CFRelease(v13);
      }

      v30 = &kFigPlaybackItemProperty_VisualContextArray;
LABEL_30:
      a3 = *v30;
      a6 = v23;
LABEL_31:
      *a5 = 0;
      if (a3)
      {
        v32 = CFRetain(a3);
      }

      else
      {
        v32 = 0;
      }

      *a6 = v32;
      if (v22)
      {
        v33 = CFRetain(v22);
      }

      else
      {
        v33 = 0;
      }

      v31 = 0;
      *a7 = v33;
      v13 = v22;
      goto LABEL_38;
    }

    v24 = 0;
    while (1)
    {
      v50.value = 0;
      OUTLINED_FUNCTION_12_38();
      if (!FigCFArrayGetInt64AtIndex())
      {
        break;
      }

      value.value = 0;
      v25 = FigVisualContextServerRetainVisualContextForID(v50.value, &value);
      if (v25)
      {
        goto LABEL_25;
      }

      CFArrayAppendValue(v22, value.value);
      CFRelease(value.value);
      if (Count == ++v24)
      {
        goto LABEL_27;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v25 = FigSignalErrorAtGM();
LABEL_25:
    v31 = v25;
    CFRelease(v22);
  }

  else
  {
    v23 = a6;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v31 = FigSignalErrorAtGM();
  }

  v22 = 0;
  if (!v31)
  {
    goto LABEL_27;
  }

LABEL_39:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v52[0])
  {
    CFRelease(v52[0]);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v31;
}

__CFArray *serverXPCItem_copyTagCollectionArrayFromDataArray(const __CFAllocator *a1, CFArrayRef theArray)
{
  newCollectionOut = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v5 = Count;
      Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_4();
        FigSignalErrorAtGM();
        return Mutable;
      }

      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        if (CMTagCollectionCreateFromData(ValueAtIndex, a1, &newCollectionOut))
        {
          break;
        }

        CFArrayAppendValue(Mutable, newCollectionOut);
        if (newCollectionOut)
        {
          CFRelease(newCollectionOut);
          newCollectionOut = 0;
        }

        if (v5 == ++v7)
        {
          return Mutable;
        }
      }

      if (newCollectionOut)
      {
        CFRelease(newCollectionOut);
      }

      CFRelease(Mutable);
    }
  }

  return 0;
}

uint64_t serverXPCItem_addTimeSyncUpdateToMessage()
{
  OUTLINED_FUNCTION_1_20();
  if (v0 && (v3 = v2, v4 = v1, v5 = v0, v6 = CFGetTypeID(v0), v6 == FigPlaybackItemGetTypeID()) && v3)
  {
    if (*(v4 + 40))
    {
      result = FigTimebaseGetSyncMoment2(*(v4 + 48), v8);
      if (result)
      {
        return result;
      }

      goto LABEL_6;
    }

    result = serverXPCItem_getSyntheticSyncMomentL(v5, v8);
    if (!result)
    {
LABEL_6:
      xpc_dictionary_set_data(v3, "TimeBaseSyncMoment", v8, 0x78uLL);
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fps_addMetadataOutputChangedNotificationPayloadToMessage(void *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"SampleBuffers");
  if (Value && (v4 = Value, v5 = CFGetTypeID(Value), v5 == CFArrayGetTypeID()))
  {
    v6 = fps_addSampleBuffersToMessage(a1, "MetadataOutputSamples", v4);
    if (v6)
    {
      return v6;
    }

    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionaryRemoveValue(MutableCopy, @"SampleBuffers");
    v8 = FigXPCMessageSetCFDictionary();
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    return v8;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM();
  }
}

uint64_t fps_addLegibleOutputChangedNotificationPayloadToMessage()
{
  OUTLINED_FUNCTION_400();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = CFDictionaryGetValue(v1, @"LegibleOutputAttributedString");
  v4 = CFDictionaryGetValue(v1, @"LegibleOutputNativeSamples");
  if (CFArrayGetCount(v3) >= 1)
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
      value = 0;
      if (FigTextMarkupAttributedStringCreatePropertyList(ValueAtIndex, &value))
      {
        goto LABEL_6;
      }

      if (value)
      {
        break;
      }

LABEL_8:
      if (++v5 >= CFArrayGetCount(v3))
      {
        goto LABEL_9;
      }
    }

    CFArrayAppendValue(Mutable, value);
LABEL_6:
    if (value)
    {
      CFRelease(value);
    }

    goto LABEL_8;
  }

LABEL_9:
  if (!v4 || (v7 = CFGetTypeID(v4), v7 != CFArrayGetTypeID()))
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  v8 = fps_addSampleBuffersToMessage(v0, "LegibleOutputSamples", v4);
  if (v8 || (v8 = FigXPCMessageSetCFArray(), v8))
  {
LABEL_19:
    v10 = v8;
    if (!Mutable)
    {
      return v10;
    }

    goto LABEL_16;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryRemoveValue(MutableCopy, @"LegibleOutputAttributedString");
  CFDictionaryRemoveValue(MutableCopy, @"LegibleOutputNativeSamples");
  v10 = FigXPCMessageSetCFDictionary();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Mutable)
  {
LABEL_16:
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t fps_TimebaseSynchronizationUpdate_Callback()
{
  OUTLINED_FUNCTION_400();
  v18 = 0;
  OUTLINED_FUNCTION_1_20();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2 && *v1 == 120)
  {
    v3 = *(v1 + 4);
    if (*(v0 + 24))
    {
      v3 |= 4u;
      *(v1 + 4) = v3;
      *(v0 + 24) = 0;
    }

    v7[0] = 120;
    v7[1] = v3;
    v8 = *(v1 + 8);
    v9 = *(v1 + 16);
    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
    v12 = *(v1 + 56);
    v13 = *(v1 + 64);
    v15 = *(v1 + 88);
    v14 = *(v1 + 72);
    v17 = *(v1 + 112);
    v16 = *(v1 + 96);
    v4 = MEMORY[0x1E695FF58];
    v5 = *MEMORY[0x1E695FF58];
    if ((v3 & 1) != 0 && v5 == 1)
    {
      kdebug_trace();
      v3 = *(v1 + 4);
      v5 = *v4;
    }

    if ((v3 & 2) != 0 && v5 == 1)
    {
      time = *(v1 + 16);
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }

    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_data(v18, "TimeBaseSyncMoment", v7, 0x78uLL);
      xpc_connection_send_message(v2, v18);
    }
  }

  FigXPCRelease();
  return FigXPCRelease();
}

void fps_destroyTimebaseSyncState(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void FigPlayerServerStart_cold_1(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4)
{
  FigCFDictionarySetValue();
  started = FigXPCServerStart();
  if (!started)
  {
    started = FigXPCPlaybackCoordinatorServerStartAsSubserver(gPlayerServer);
    if (!started)
    {
      started = FigXPCImageQueueGaugeServerStartAsSubserver(gPlayerServer);
      if (!started)
      {
        FigXPCServerActivate();
        started = 0;
      }
    }
  }

  *a4 = started;
  CFRelease(a2);
}

uint64_t FigPlayerServerStart_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandlePlayerServerNoReplyMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandlePlayerServerNoReplyMessage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandlePlayerServerNoReplyMessage_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandlePlayerServerNoReplyMessage_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}