CFStringRef videoReceiverForCA_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = (DerivedStorage + 8);
  }

  else
  {
    v4 = "";
  }

  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigVideoReceiverForCALayer [%p|%s] retainCount: %d>", a1, v4, v5);
}

uint64_t videoReceiverForCA_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90 >= 3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    videoReceiverForCA_CopyProperty_cold_2();
    return 0;
  }

  if (!a4)
  {
    videoReceiverForCA_CopyProperty_cold_1();
    return 0;
  }

  if (CFEqual(a2, @"LoggingIdentifier"))
  {
    v9 = CFStringCreateWithCString(a3, (DerivedStorage + 8), 0x600u);
LABEL_7:
    v10 = v9;
LABEL_8:
    result = 0;
    *a4 = v10;
    return result;
  }

  if (CFEqual(a2, @"ClientPreferredDataChannelGroups"))
  {
    FigSimpleMutexLock();
    v12 = *(DerivedStorage + 144);
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *a4 = v12;
LABEL_17:
    FigSimpleMutexUnlock();
    return 0;
  }

  if (CFEqual(a2, @"ClientDataChannelSettings"))
  {
    FigSimpleMutexLock();
    v13 = *(DerivedStorage + 176);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    *a4 = v13;
    goto LABEL_17;
  }

  if (CFEqual(a2, @"ConnectionHelper"))
  {
    ValueAtIndex = *DerivedStorage;
    if (!*DerivedStorage)
    {
      goto LABEL_28;
    }

LABEL_24:
    v9 = CFRetain(ValueAtIndex);
    goto LABEL_7;
  }

  if (CFEqual(a2, @"VideoLayer"))
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (ValueAtIndex)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, @"DisplayName"))
  {
    FirstValue = FigCFArrayGetFirstValue();
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 0;
    }

    ValueAtIndex = [FirstValue layerDisplayName];
    if (ValueAtIndex)
    {
      goto LABEL_24;
    }

LABEL_28:
    v10 = 0;
    goto LABEL_8;
  }

  if (CFEqual(a2, @"STSLabel"))
  {
    FigSimpleMutexLock();
    v16 = *(DerivedStorage + 288);
    if (v16)
    {
      v17 = CFRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    FigSimpleMutexUnlock();
    result = 0;
    *a4 = v17;
  }

  else
  {
    if (CFEqual(a2, @"AirPlayVideoScrubbingContextID"))
    {
      FigSimpleMutexLock();
      v18 = *(DerivedStorage + 272);
      if (v18)
      {
        v18 = CFRetain(v18);
      }

      *a4 = v18;
      goto LABEL_17;
    }

    if (CFEqual(a2, @"LastSampledCVPixelBuffer"))
    {
      return FigSignalErrorAtGM();
    }

    else
    {
      if (CFEqual(a2, @"IsReadyForDisplay"))
      {
        FigSimpleMutexLock();
        v19 = MEMORY[0x1E695E4D0];
        if (!*(DerivedStorage + 80))
        {
          v19 = MEMORY[0x1E695E4C0];
        }

        *a4 = CFRetain(*v19);
        goto LABEL_17;
      }

      if (CFEqual(a2, @"RequiresCPUToReadVideo"))
      {
        ValueAtIndex = *MEMORY[0x1E695E4C0];
        goto LABEL_24;
      }

      return 4294954509;
    }
  }

  return result;
}

uint64_t videoReceiverForCA_SetProperty(const void *a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    videoReceiverForCA_SetProperty_cold_4();
    return 0;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionHelper"))
  {
    v8 = *v7;
    if (a3)
    {
      if (v8)
      {
        CFEqual(a3, *v7);
        v8 = *v7;
      }

      *v7 = a3;
      CFRetain(a3);
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      *v7 = 0;
      if (!v8)
      {
        return 0;
      }
    }

    CFRelease(v8);
    return 0;
  }

  if (CFEqual(a2, @"STSLabel"))
  {
    if (a3 && (v9 = CFGetTypeID(a3), v9 != CFStringGetTypeID()))
    {
      videoReceiverForCA_SetProperty_cold_1(&v15);
      return v15;
    }

    else
    {
      v10 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      v11 = *(v10 + 288);
      if (v11)
      {
        CFRelease(v11);
        *(v10 + 288) = 0;
      }

      if (a3)
      {
        v12 = CFGetAllocator(a1);
        *(v10 + 288) = CFStringCreateCopy(v12, a3);
      }

      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();

      return CMNotificationCenterPostNotification();
    }
  }

  else if (CFEqual(a2, @"AirPlayVideoScrubbingContextID"))
  {
    if (a3 && (v14 = CFGetTypeID(a3), v14 == CFNumberGetTypeID()))
    {
      videoReceiverForCA_SetProperty_cold_2(a1, a3, &v16);
      return v16;
    }

    else
    {
      videoReceiverForCA_SetProperty_cold_3(&v17);
      return v17;
    }
  }

  else
  {
    return 4294954509;
  }
}

uint64_t videoReceiverForCA_handleVideoLayerNotification(int a1, int a2, CFTypeRef cf1)
{
  result = CFEqual(cf1, @"LayerIsBeingServicedStatusChanged");
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t videoReceiverForCA_appendDeferredTransactionChangeForAddingAirPlaySublayerToVideoLayer(const void *a1, void *a2, void *a3, const void *a4, char a5)
{
  v10 = malloc_type_malloc(0x20uLL, 0x10E00404F53F4E5uLL);
  if (!v10)
  {
    return videoReceiverForCA_appendDeferredTransactionChangeForAddingAirPlaySublayerToVideoLayer_cold_1();
  }

  v11 = v10;
  v12 = a2;
  v13 = a3;
  if (a4)
  {
    v14 = CFRetain(a4);
  }

  else
  {
    v14 = 0;
  }

  *v11 = v12;
  *(v11 + 8) = v13;
  *(v11 + 16) = v14;
  *(v11 + 24) = a5;

  return FigDeferredTransactionAppendChangeWithCallback(a1, 1, "videoReceiverForCA_reevaluateAirPlayHostLayer", v11, disposeAddAirPlayLayerHostToVideoLayerContext, copyDescriptionForAddingAirPlayLayerHostToVideoLayer, addAirPlayLayerHostToVideoLayerCallback);
}

void disposeAddAirPlayLayerHostToVideoLayerContext(const void **a1)
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
    CFRelease(v4);
  }

  free(a1);
}

CFStringRef copyDescriptionForAddingAirPlayLayerHostToVideoLayer(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = "YES";
  }

  else
  {
    v1 = "NO";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Adding AirPlay layerHost (%p) to videoLayer (%p) AirPlayScrubbingContext: (%@) shouldRemoveAirPlayLayerHostFromSuperLayer: %s", *(a1 + 8), *a1, *(a1 + 16), v1);
}

uint64_t addAirPlayLayerHostToVideoLayerCallback(uint64_t a1)
{
  if (*(a1 + 24))
  {
    [*(a1 + 8) removeFromSuperlayer];
  }

  if (*(a1 + 8))
  {
    if (!*(a1 + 16) || ([*(a1 + 8) setContextId:FigCFNumberGetUInt32()], *(a1 + 8)))
    {
      if (*a1)
      {
        [*a1 addSublayer:?];
      }
    }
  }

  return 0;
}

uint64_t videoReceiverForCA_SetActiveConfigurationChangedHandler(uint64_t a1, void *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      a2 = _Block_copy(a2);
    }

    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 208);
    *(DerivedStorage + 208) = a2;
    FigSimpleMutexUnlock();
    if (v4)
    {
      _Block_release(v4);
    }

    return 0;
  }

  else
  {
    videoReceiverForCA_SetActiveConfigurationChangedHandler_cold_1(&v6);
    return v6;
  }
}

uint64_t videoReceiverForCA_SetActiveConfigurationChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    v8 = *(v7 + 224);
    if (a3)
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      v9 = 0;
    }

    *(v7 + 216) = a2;
    *(v7 + 224) = v9;
    FigSimpleMutexUnlock();
    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  else
  {
    videoReceiverForCA_SetActiveConfigurationChangedCallback_cold_1(&v11);
    return v11;
  }
}

uint64_t videoReceiverForCA_postPreferencesChangedNotification(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v5, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    if (a2)
    {
      v8 = 192;
    }

    else
    {
      v8 = 160;
    }

    FigSimpleMutexLock();
    v9 = *(DerivedStorage + v8);
    FigSimpleMutexUnlock();
    FigCFDictionarySetValue();
    if (v9)
    {
      FigCFDictionarySetUInt32();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v10 = CMNotificationCenterPostNotification();
    CFRelease(v7);
    return v10;
  }

  else
  {
    videoReceiverForCA_postPreferencesChangedNotification_cold_1(&v12);
    return v12;
  }
}

uint64_t videoReceiverForCA_AddLayersToLayerSynchronizerConfiguration(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2 && (v4 = CFGetTypeID(a2), v4 == FigLayerSynchronizerConfigurationGetTypeID()))
    {

      return FigLayerSynchronizerConfigurationAddLayersSubjectToImageQueueTiming(a2);
    }

    else
    {
      videoReceiverForCA_AddLayersToLayerSynchronizerConfiguration_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    videoReceiverForCA_AddLayersToLayerSynchronizerConfiguration_cold_2(&v7);
    return v7;
  }
}

uint64_t videoReceiverForCA_SetBoundsChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    v8 = *(v7 + 248);
    if (a3)
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      v9 = 0;
    }

    *(v7 + 240) = a2;
    *(v7 + 248) = v9;
    FigSimpleMutexUnlock();
    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  else
  {
    videoReceiverForCA_SetBoundsChangedCallback_cold_1(&v11);
    return v11;
  }
}

uint64_t videoReceiverForCA_HandleImageQueueSlotEvent(const void *a1, int a2, const void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    videoReceiverForCA_HandleImageQueueSlotEvent_cold_4(&v28);
    return v28;
  }

  if (!a2)
  {
    videoReceiverForCA_HandleImageQueueSlotEvent_cold_3(&v28);
    return v28;
  }

  if (!a3)
  {
    videoReceiverForCA_HandleImageQueueSlotEvent_cold_2(&v28);
    return v28;
  }

  UInt32 = FigCFNumberCreateUInt32();
  if (!UInt32)
  {
    videoReceiverForCA_HandleImageQueueSlotEvent_cold_1(&v28);
    return v28;
  }

  v6 = UInt32;
  if (CFEqual(@"SynchronousFrameEnqueued", a3))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ImageQueueOrSlotInConfig = videoReceiverForCA_findImageQueueOrSlotInConfig(*(DerivedStorage + 88), v6, 0);
    FigSimpleMutexUnlock();
    if (ImageQueueOrSlotInConfig)
    {
      ImageQueueOrSlotInConfig = videoReceiverForCA_InformRendererThatContentsChanged();
    }

    goto LABEL_12;
  }

  if (CFEqual(@"FirstFrameEnqueued", a3))
  {
    v11 = CMBaseObjectGetDerivedStorage();
    v26 = 0;
    theArray = 0;
    v24 = *MEMORY[0x1E6960C70];
    v25 = *(MEMORY[0x1E6960C70] + 16);
    idx = -1;
    if (dword_1ED4CBE90)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    videoReceiverForCA_updateImageQueueSlotInRegistry(a1, v6);
    FigSimpleMutexLock();
    v13 = *(v11 + 80);
    if (videoReceiverForCA_findImageQueueOrSlotInConfig(*(v11 + 88), v6, &idx))
    {
      FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex(*(v11 + 88), idx);
      if (!v13)
      {
        *(v11 + 80) = 1;
      }
    }

    v14 = videoReceiverForCA_findImageQueueOrSlotInConfig(*(v11 + 96), v6, &idx);
    if (v14)
    {
      FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex(*(v11 + 96), idx);
    }

    v15 = *(v11 + 48);
    v16 = CFGetAllocator(a1);
    v17 = FigVideoReceiverConfigurationSchedulerCopyAllConfigurations(v15, v16, &theArray);
    if (v17)
    {
      ImageQueueOrSlotInConfig = v17;
      FigSimpleMutexUnlock();
      v21 = 0;
      goto LABEL_38;
    }

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

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (videoReceiverForCA_findImageQueueOrSlotInConfig(ValueAtIndex, v6, &idx))
      {
        FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex(ValueAtIndex, idx);
      }
    }

    if (v14)
    {
      videoReceiverForCA_activatePendingConfigurationIfReadyAndCopyNewlyActivatedConfig(a1, &v26, &v24);
      v21 = v26;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v11 + 80);
    FigSimpleMutexUnlock();
    if (v21)
    {
      v28 = v24;
      v29 = v25;
      ImageQueueOrSlotInConfig = videoReceiverForCA_notifyActiveConfigurationWasReplaced(a1, v21, &v28);
      if (ImageQueueOrSlotInConfig || v13 == v22)
      {
        goto LABEL_38;
      }
    }

    else if (v13 == v22)
    {
      v21 = 0;
      ImageQueueOrSlotInConfig = 0;
      goto LABEL_38;
    }

    ImageQueueOrSlotInConfig = videoReceiverForCA_postReadyForDisplayChanged(a1);
LABEL_38:
    if (theArray)
    {
      CFRelease(theArray);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    goto LABEL_12;
  }

  if (CFEqual(@"SlotCreated", a3))
  {
    FigCFDictionaryGetBooleanValue();
    videoReceiverForCA_updateImageQueueSlotInRegistry(a1, v6);
  }

  else
  {
    if (!CFEqual(@"SlotDestroyed", a3))
    {
      ImageQueueOrSlotInConfig = 4294951724;
      goto LABEL_12;
    }

    v7 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(*(v7 + 128), v6);
    FigSimpleMutexUnlock();
  }

  ImageQueueOrSlotInConfig = 0;
LABEL_12:
  CFRelease(v6);
  return ImageQueueOrSlotInConfig;
}

uint64_t videoReceiverForCALayer_GetInstanceType(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 4;
    }

    else
    {
      videoReceiverForCALayer_GetInstanceType_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    videoReceiverForCALayer_GetInstanceType_cold_2(&v4);
    return v4;
  }

  return result;
}

uint64_t videoReceiverForCA_setPendingConfigurationAndAttemptToMakeActive(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = *MEMORY[0x1E6960C70];
  *&v16.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v16.epoch = v5;
  v17 = 0;
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 80);
  v7 = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual() || (*&time1.value = v15, time1.epoch = v5, time2 = *(v7 + 104), CMTimeCompare(&time1, &time2)))
  {
    v8 = *(v7 + 96);
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    *(v7 + 96) = v9;
    *(v7 + 104) = v15;
    *(v7 + 120) = v5;
    videoReceiverForCA_appendPostCommitChangeToAnnounceRemovalOfConfiguration(a1, 0, v8, "videoReceiverForCA_setPendingConfiguration");
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v10 = videoReceiverForCA_activatePendingConfigurationIfReadyAndCopyNewlyActivatedConfig(a1, &v17, &v16);
  if (v10)
  {
    active = v10;
    FigSimpleMutexUnlock();
    v12 = v17;
    if (!v17)
    {
      return active;
    }

    goto LABEL_12;
  }

  v11 = *(DerivedStorage + 80);
  FigSimpleMutexUnlock();
  v12 = v17;
  if (v17)
  {
    time1 = v16;
    active = videoReceiverForCA_notifyActiveConfigurationWasReplaced(a1, v17, &time1);
    if (active || v6 == v11)
    {
      goto LABEL_12;
    }
  }

  else if (v6 == v11)
  {
    return 0;
  }

  active = videoReceiverForCA_postReadyForDisplayChanged(a1);
  if (v12)
  {
LABEL_12:
    CFRelease(v12);
  }

  return active;
}

uint64_t videoReceiverForCA_postReadyForDisplayChanged(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    FigCFDictionarySetBoolean();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v3);
    return 0;
  }

  else
  {
    videoReceiverForCA_postReadyForDisplayChanged_cold_1(&v5);
    return v5;
  }
}

void disposeAnnounceRemovalOfConfigurationContext(const void **a1)
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
  }

  free(a1);
}

uint64_t videoReceiverForCA_updateImageQueueSlotInRegistry(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  FigSimpleMutexLock();
  CFDictionaryGetValueIfPresent(*(DerivedStorage + 128), a2, &value);
  FigCFDictionarySetBoolean();
  return FigSimpleMutexUnlock();
}

uint64_t OUTLINED_FUNCTION_5_42()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t fs_CreateDirectoryAtPath(CFStringRef URLString)
{
  v1 = CFURLCreateWithString(*MEMORY[0x1E695E480], URLString, 0);
  if (!v1)
  {
    return 4294954669;
  }

  v2 = v1;
  v3 = FigCFURLCreateDirectory();
  CFRelease(v2);
  return v3;
}

uint64_t fs_CopyRepositoryByParent(const __CFString *a1, int a2, void **a3)
{
  FigSimpleMutexLock();
  v6 = CFDictionaryGetValue(sDiskCacheList, a1);
  value = v6;
  if (v6)
  {
    v7 = v6;
    if (!a2 || FigDiskCacheRepositoryExists(v6))
    {
      CFRetain(v7);
      v8 = 0;
      goto LABEL_10;
    }

    CFDictionaryRemoveValue(sDiskCacheList, a1);
    value = 0;
  }

  v9 = CFURLCreateWithString(*MEMORY[0x1E695E480], a1, 0);
  if (v9)
  {
    v10 = v9;
    v8 = FigDiskCacheRepositoryCreate(v9, 52428800, 41943040, &value);
    CFRelease(v10);
    if (!v8)
    {
      CFDictionarySetValue(sDiskCacheList, a1, value);
    }
  }

  else
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
  }

LABEL_10:
  FigSimpleMutexUnlock();
  *a3 = value;
  return v8;
}

uint64_t FigShared_DeleteFromDiskCache(const __CFString *cf, const __CFString *a2)
{
  v3 = cf;
  v8 = 0;
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
    if (sDiskCacheIsRemote)
    {
      DirectoryAtPath = fs_CreateDirectoryAtPath(v3);
      goto LABEL_6;
    }

LABEL_12:
    v6 = FigSharedRemote_DeleteFromDiskCache(v3, a2);
    goto LABEL_13;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    goto LABEL_12;
  }

  DirectoryAtPath = FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(&cfa, 0);
LABEL_6:
  v5 = DirectoryAtPath;
  if (DirectoryAtPath)
  {
    goto LABEL_14;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    v3 = cfa;
    goto LABEL_12;
  }

  MEMORY[0x19A8D3660](&fmp_EnsureDiskCache_sInitDiskCacheOnce, InitDiskCache);
  v5 = sDiskInitStatus;
  if (!sDiskInitStatus)
  {
    v5 = fs_CopyRepositoryByParent(cfa, 1, &v8);
    if (!v5)
    {
      v6 = FigDiskCacheRepositoryDelete(v8, a2);
LABEL_13:
      v5 = v6;
    }
  }

LABEL_14:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

uint64_t FigShared_ReserveDiskCacheBacking(const void *a1, const void *a2, uint64_t a3)
{
  v9 = 0;
  cf = a1;
  if (a1)
  {
    v5 = a1;
    CFRetain(a1);
    if (sDiskCacheIsRemote)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = FigSharedRemote_ReserveDiskCacheBacking(v5, a2, a3);
    goto LABEL_12;
  }

  if (sDiskCacheIsRemote != 1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(&cf, 0);
  if (v7)
  {
    goto LABEL_12;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    v5 = cf;
    goto LABEL_11;
  }

LABEL_3:
  MEMORY[0x19A8D3660](&fmp_EnsureDiskCache_sInitDiskCacheOnce, InitDiskCache);
  v6 = sDiskInitStatus;
  if (sDiskInitStatus)
  {
    goto LABEL_13;
  }

  v7 = fs_CopyRepositoryByParent(cf, 0, &v9);
  if (!v7)
  {
    v7 = FigDiskCacheRepositoryReserveBacking(v9, a2, a3);
  }

LABEL_12:
  v6 = v7;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t FigShared_CopyDiskCacheCheckedInIDs(const __CFString *cf, CFMutableArrayRef *a2)
{
  v3 = cf;
  v8 = 0;
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
    if (sDiskCacheIsRemote)
    {
      DirectoryAtPath = fs_CreateDirectoryAtPath(v3);
      goto LABEL_6;
    }

LABEL_12:
    v6 = FigSharedRemote_CopyDiskCacheCheckedInIDs(v3, a2);
    goto LABEL_13;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    goto LABEL_12;
  }

  DirectoryAtPath = FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(&cfa, 0);
LABEL_6:
  v5 = DirectoryAtPath;
  if (DirectoryAtPath)
  {
    goto LABEL_14;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    v3 = cfa;
    goto LABEL_12;
  }

  MEMORY[0x19A8D3660](&fmp_EnsureDiskCache_sInitDiskCacheOnce, InitDiskCache);
  v5 = sDiskInitStatus;
  if (!sDiskInitStatus)
  {
    v5 = fs_CopyRepositoryByParent(cfa, 1, &v8);
    if (!v5)
    {
      v6 = FigDiskCacheRepositoryCopyCheckedInIDs(v8, a2);
LABEL_13:
      v5 = v6;
    }
  }

LABEL_14:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

uint64_t FigShared_CopyCacheProperty(const __CFString *cf, const void *a2, const void *a3, const __CFAllocator *a4, CFNumberRef *a5, int a6, int a7, int a8)
{
  v12 = cf;
  v17 = 0;
  cfa[0] = cf;
  if (cf)
  {
    CFRetain(cf);
    if (sDiskCacheIsRemote)
    {
      DirectoryAtPath = fs_CreateDirectoryAtPath(v12);
      goto LABEL_6;
    }

LABEL_12:
    FigSharedRemote_CopyCacheProperty(v12, a2, a3, a4, a5, a6, a7, a8, v17, cfa[0], cfa[1], cfa[2], cfa[3], cfa[4], cfa[5], cfa[6], cfa[7], cfa[8]);
    goto LABEL_13;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    goto LABEL_12;
  }

  DirectoryAtPath = FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(cfa, 0);
LABEL_6:
  v14 = DirectoryAtPath;
  if (DirectoryAtPath)
  {
    goto LABEL_14;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    LODWORD(v12) = cfa[0];
    goto LABEL_12;
  }

  MEMORY[0x19A8D3660](&fmp_EnsureDiskCache_sInitDiskCacheOnce, InitDiskCache);
  v14 = sDiskInitStatus;
  if (!sDiskInitStatus)
  {
    v14 = fs_CopyRepositoryByParent(cfa[0], 1, &v17);
    if (!v14)
    {
      v15 = FigDiskCacheRepositoryCopyProperty(v17, a2, a3, a4, a5);
LABEL_13:
      v14 = v15;
    }
  }

LABEL_14:
  if (cfa[0])
  {
    CFRelease(cfa[0]);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v14;
}

uint64_t FigShared_DisableRemoteDiskCache()
{
  if ((sDiskCacheIsRemote & 1) == 0)
  {
    sDiskCacheIsRemote = 1;
    return FigShared_CopyDiskCacheParams(0);
  }

  return result;
}

void sub_1965674C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1965677F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1965679E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_196567BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_196567DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_19656838C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

id _animationByTransformingValues(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a1 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 fromValue];
    v5 = [v3 toValue];
    v6 = [v3 byValue];
    if (v4)
    {
      [v3 setFromValue:{(*(a2 + 16))(a2, v4)}];
    }

    if (v5)
    {
      [v3 setToValue:{(*(a2 + 16))(a2, v5)}];
    }

    if (v6)
    {
      [v3 setByValue:{(*(a2 + 16))(a2, v6)}];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 values];
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v8);
              }

              [v9 addObject:{(*(a2 + 16))(a2, *(*(&v15 + 1) + 8 * v13++))}];
            }

            while (v11 != v13);
            v11 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v11);
        }

        [v3 setValues:v9];
      }
    }
  }

  return v3;
}

uint64_t sharedplayer_enableOverlapPlayer()
{
  v0 = *MEMORY[0x1E695E4D0];
  if (v0 == FigCFDictionaryGetValue())
  {
    return 1;
  }

  else
  {
    return _os_feature_enabled_impl();
  }
}

uint64_t OUTLINED_FUNCTION_1_57@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return FigSharedPlayerCreateWithOptions(v8, a1 & v6, v7, va);
}

const void *getContentIDDo(void **a1)
{
  result = CFDictionaryGetValue((*a1)[7], *MEMORY[0x1E6960AF8]);
  *a1[1] = result;
  return result;
}

void updateRegionDisplay(id *a1)
{
  v2 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __updateRegionDisplay_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void setRendererDo(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

__n128 setViewportDo(uint64_t *a1)
{
  result.n128_u64[0] = a1[3];
  if (result.n128_f64[0] >= 0.0)
  {
    result.n128_u64[0] = a1[4];
    if (result.n128_f64[0] >= 0.0)
    {
      v2 = *a1;
      result = *(a1 + 1);
      *(v2 + 40) = *(a1 + 3);
      *(v2 + 24) = result;
      *(v2 + 72) = 1;
    }
  }

  return result;
}

void __updateRegionDisplay_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [*v2 setNeedsLayout];
  [*v2 setNeedsDisplay];
  [MEMORY[0x1E6979518] commit];
  v3 = **(a1 + 32);
}

uint64_t FigVisualContextGetClassID()
{
  if (FigVisualContextGetClassID_sRegisterFigVisualContextBaseTypeOnce != -1)
  {
    FigVisualContextGetClassID_cold_1();
  }

  return sFigVisualContextClassID;
}

uint64_t RegisterFigVisualContextBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVisualContextGetTypeID()
{
  if (FigVisualContextGetClassID_sRegisterFigVisualContextBaseTypeOnce != -1)
  {
    FigVisualContextGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigVisualContextRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void FigVisualContextRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigVisualContextGetEarliestSequentialImageTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  v10 = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  return v8(a1, a2, &v10, a3, a4);
}

uint64_t FigCreateNullPixelBuffer(const __CFAllocator *a1, CVPixelBufferRef *pixelBufferOut)
{
  v3 = CVPixelBufferCreate(a1, 1uLL, 1uLL, 0x20u, 0, pixelBufferOut);
  if (!v3)
  {
    CVBufferSetAttachment(*pixelBufferOut, @"QTNull", @"QTNull", kCVAttachmentMode_ShouldNotPropagate);
  }

  return v3;
}

BOOL FigIsNullPixelBuffer(__CVBuffer *a1)
{
  v2 = CVBufferCopyAttachment(a1, @"QTNull", 0);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  if (a1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return !v4;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties(void *a1, int a2, uint64_t a3, void *a4)
{
  v5 = a1;
  v198 = 0;
  v199 = 0;
  v196 = 0;
  v197 = 0;
  v194 = 0;
  v195 = 0;
  v193 = 0;
  v191 = 0;
  v192 = 0;
  v190 = 0;
  v189 = 0;
  valuePtr = 0;
  if (!a1)
  {
    FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_13(&v209);
    Mutable = 0;
    v113 = 0;
    v119 = 0;
    v17 = 0;
    inserted = v209;
    goto LABEL_297;
  }

  v6 = *MEMORY[0x1E695E480];
  FigBaseObject = FigFormatReaderGetFigBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(FigBaseObject, @"AlternateGroupAssignmentsArray", v6, &v199);
  }

  v9 = FigFormatReaderGetFigBaseObject(v5);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(v9, @"TrackReferenceDictionary", v6, &v198);
  }

  if (v198)
  {
    Value = CFDictionaryGetValue(v198, @"forc");
    v172 = CFDictionaryGetValue(v198, @"folw");
    v174 = CFDictionaryGetValue(v198, @"fall");
  }

  else
  {
    v174 = 0;
    v172 = 0;
    Value = 0;
  }

  v178 = v5;
  v161 = a4;
  if (!v199 || (Count = CFArrayGetCount(v199), Count < 1))
  {
    v11 = 0;
    v165 = 0;
    Mutable = 0;
    v160 = -1;
    v14 = -1;
LABEL_275:
    FPSupport_GetDefaultTrackIDForMediaType(v5, 1668047728, &v193, 0);
    if (v193 && (v112 = *(*(CMBaseObjectGetVTable() + 16) + 64)) != 0 && v112(v5, 1, 1668047728, 0, 0) == -12843)
    {
      LODWORD(v207) = 0;
      v209 = 0;
      v113 = CFNumberCreate(v6, kCFNumberSInt32Type, &v193);
      if (!v113)
      {
        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_9(&values);
        inserted = values;
        goto LABEL_375;
      }

      v114 = v193;
      v115 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v115)
      {
        inserted = 4294954514;
        goto LABEL_375;
      }

      MediaSelectionGroupWithOptions = v115(v5, v114, &v189, &v207);
      if (MediaSelectionGroupWithOptions)
      {
        goto LABEL_369;
      }

      if (!TrackIsAMemberOfAnyAlternateTrackGroup(v189))
      {
        MediaSelectionGroupWithOptions = CopyReferencedTrackIDs(v113, v172, &v209);
        if (MediaSelectionGroupWithOptions)
        {
          goto LABEL_369;
        }

        v117 = v209;
        inserted = CreateMediaSelectionOptionDictionary(v189, v113, 0, 0, 1668047728, 0, 0, 0, v209, 0, 0, &v191);
        if (v117)
        {
          CFRelease(v117);
        }

        if (inserted)
        {
          goto LABEL_375;
        }
      }

      if (v189)
      {
        CFRelease(v189);
        v189 = 0;
      }
    }

    else
    {
LABEL_288:
      v113 = 0;
    }

    if (v14 == -1)
    {
      v126 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v126)
      {
        if (!v126(v5, 0, 1935832172, &v190, &valuePtr))
        {
          v127 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (v127 && v127(v5, 1, 1935832172, 0, 0) == -12843)
          {
            LODWORD(v207) = 0;
            values = 0;
            v209 = 0;
            v128 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            if (v128)
            {
              v129 = 0;
              v130 = 1;
              v131 = 1;
              do
              {
                v132 = v130;
                if (v128(v178, v129, 1952807028, 0, &v207))
                {
                  break;
                }

                if (v131)
                {
                  FCSupport_GetListOfChapterTitleTrackIDs(v178, &values, &v209, 0);
                }

                v133 = values;
                v5 = v178;
                if (values < 1)
                {
LABEL_388:
                  free(v209);
                  goto LABEL_389;
                }

                v134 = v209;
                while (1)
                {
                  v135 = *v134++;
                  if (v135 == v207)
                  {
                    break;
                  }

                  if (!--v133)
                  {
                    goto LABEL_388;
                  }
                }

                ++v130;
                v131 = 0;
                v128 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                v129 = v132;
              }

              while (v128);
            }

            free(v209);
            v5 = v178;
            if (!TrackIsAMemberOfAnyAlternateTrackGroup(v190))
            {
              MediaSelectionGroupWithOptions = SynthesizeOptionsForSoloSubtitleTrack(v190, valuePtr, Value, v172, &v192);
              if (MediaSelectionGroupWithOptions)
              {
                goto LABEL_369;
              }
            }
          }

LABEL_389:
          if (v190)
          {
            CFRelease(v190);
            v190 = 0;
          }
        }
      }
    }

    v118 = v192;
    if (!a3 && !v191 && !v192)
    {
      if (!Mutable)
      {
        goto LABEL_318;
      }

      goto LABEL_313;
    }

    if (v14 < 0)
    {
      v165 = CFRetain(@"SynthesizedLegibleGroup");
      Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_10(&v209);
        goto LABEL_413;
      }

      v14 = v11;
      if (a3)
      {
LABEL_302:
        ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
        if (ConcatenationOfTwoArrays)
        {
          v121 = ConcatenationOfTwoArrays;
          MutableCopy = FigCFArrayCreateMutableCopy();
          v5 = MutableCopy;
          if (MutableCopy)
          {
            CFRetain(MutableCopy);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v5)
          {
            CFRelease(v5);
            CFRelease(v121);
            v118 = v192;
            if (!v192)
            {
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_14(v121, &v209);
          Mutable = 0;
LABEL_385:
          v17 = 0;
          inserted = v209;
          goto LABEL_386;
        }

        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_12(&v209);
LABEL_413:
        v5 = 0;
        goto LABEL_385;
      }
    }

    else if (a3)
    {
      goto LABEL_302;
    }

    v5 = Mutable;
    if (!v118)
    {
LABEL_310:
      if (v191)
      {
        CFArrayAppendValue(v5, v191);
      }

      Mutable = v5;
      v5 = v178;
      if (!Mutable)
      {
        goto LABEL_318;
      }

LABEL_313:
      v209 = 0;
      MediaSelectionGroupWithOptions = CreateMediaSelectionGroupWithOptions(v165, *MEMORY[0x1E695E4D0], @"public.legible", Mutable, &v209);
      if (!MediaSelectionGroupWithOptions)
      {
        v123 = v209;
        inserted = InsertGroupIntoMediaSelectionArray(&v197, v14, v209);
        if (v123)
        {
          CFRelease(v123);
        }

        if (inserted)
        {
          goto LABEL_375;
        }

        ++v11;
LABEL_318:
        v17 = 0;
        inserted = 0;
        if (v14 < 0 || v160 != -1)
        {
          v5 = 0;
          a4 = v161;
          goto LABEL_324;
        }

        v124 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        a4 = v161;
        if (!v124 || v124(v5, 0, 1936684398, &v190, &valuePtr))
        {
          inserted = 0;
          v17 = 0;
          v5 = 0;
LABEL_324:
          v119 = v165;
          goto LABEL_325;
        }

        v136 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v136 || v136(v5, 1, 1936684398, 0, 0) != -12843 || TrackIsAMemberOfAnyAlternateTrackGroup(v190))
        {
          v5 = 0;
          v119 = v165;
LABEL_380:
          if (v190)
          {
            CFRelease(v190);
            inserted = 0;
            v17 = 0;
            v190 = 0;
          }

          else
          {
            inserted = 0;
            v17 = 0;
          }

          goto LABEL_325;
        }

        values = 0;
        v209 = 0;
        v207 = 0;
        v137 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
        v5 = v137;
        if (v137)
        {
          v138 = CopyReferencedTrackIDs(v137, v172, &v209);
          if (v138)
          {
            inserted = v138;
            goto LABEL_419;
          }

          v139 = v209;
          inserted = CreateMediaSelectionOptionDictionary(v190, v5, 0, 0, 1936684398, 1, 0, 0, v209, 0, 0, &values);
          if (v139)
          {
            CFRelease(v139);
          }

          if (inserted)
          {
            goto LABEL_419;
          }

          v140 = CFArrayCreate(v6, &values, 1, MEMORY[0x1E695E9C0]);
          if (values)
          {
            CFRelease(values);
          }

          if (v140)
          {
            inserted = CreateMediaSelectionGroupWithOptions(@"SoloAudioGroup", *MEMORY[0x1E695E4D0], @"public.audible", v140, &v207);
            CFRelease(v140);
            if (!inserted)
            {
              v141 = v207;
              inserted = InsertGroupIntoMediaSelectionArray(&v197, v11, v207);
              if (v141)
              {
                CFRelease(v141);
              }

              v119 = v165;
              if (inserted)
              {
                v17 = 0;
                goto LABEL_297;
              }

              goto LABEL_380;
            }

LABEL_419:
            v17 = 0;
            goto LABEL_387;
          }

          v143 = v165;
          v144 = 1871;
        }

        else
        {
          v143 = v165;
          v144 = 1860;
        }

        v165 = v143;
        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_11(v144, displayFlagsOut);
        inserted = displayFlagsOut[0];
        goto LABEL_419;
      }

LABEL_369:
      inserted = MediaSelectionGroupWithOptions;
LABEL_375:
      v5 = 0;
      v17 = 0;
      goto LABEL_386;
    }

LABEL_309:
    v211.length = CFArrayGetCount(v118);
    v211.location = 0;
    CFArrayAppendArray(v5, v118, v211);
    goto LABEL_310;
  }

  v11 = 0;
  v165 = 0;
  v12 = 0;
  v170 = 0;
  Mutable = 0;
  v153 = *MEMORY[0x1E695E4D0];
  v160 = -1;
  v14 = -1;
  v169 = v6;
  while (2)
  {
    v159 = v14;
    v162 = v12;
    v163 = v11;
    theArray = CFArrayGetValueAtIndex(v199, v12);
    v15 = CFArrayGetCount(theArray);
    v16 = v15;
    if (v15 < 1)
    {
      v180 = 0;
      v181 = v15;
      v171 = 0;
      v166 = 0;
      v17 = 0;
      goto LABEL_240;
    }

    v17 = 0;
    v166 = 0;
    v171 = 0;
    v180 = 0;
    v181 = v15;
    v173 = 0;
    v18 = 0;
    v179 = 0;
    v19 = 1;
    v157 = Mutable;
    do
    {
      v187 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v18);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      v21 = valuePtr;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v22)
      {
        v22(v5, v21, &v190, &v187);
      }

      if (!v190)
      {
        --v181;
        goto LABEL_90;
      }

      if (v19)
      {
        v23 = FigTrackReaderGetFigBaseObject(v190);
        v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v24)
        {
          inserted = 4294954514;
          goto LABEL_296;
        }

        v25 = v24(v23, @"AlternateGroupID", v6, &v196);
        if (v25)
        {
          goto LABEL_405;
        }

        v17 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
        if (!v17)
        {
          FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_1(&v209);
          inserted = v209;
          goto LABEL_296;
        }
      }

      FigMediaCharacteristicsGetMajorIntrinsicCharacteristicForMediaType(v187);
      if (!a2)
      {
        LOBYTE(v26) = 0;
        if (v173)
        {
          v27 = 0;
          v179 = 0;
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      if (IsFallbackTrackOfTrackInGroup(v5, theArray, valuePtr, v174))
      {
        v184 = 0;
        goto LABEL_78;
      }

      v182 = FigCFEqual();
      values = ValueAtIndex;
      v26 = CFArrayCreate(v6, &values, 1, MEMORY[0x1E695E9C0]);
      *v176 = ValueAtIndex;
      if (!v26)
      {
        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_3();
        v27 = 0;
        goto LABEL_62;
      }

      v167 = v17;
      v28 = FigCFArrayCreateMutableCopy();
      if (!v28)
      {
        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_2();
        goto LABEL_31;
      }

      v29 = v28;
      AppendFallbacksOfTracks(v26, v174, v28);
      if (CFArrayGetCount(v29) == 1)
      {
        CFRelease(v29);
LABEL_31:
        CFRelease(v26);
        LOBYTE(v26) = 0;
        v27 = 0;
        goto LABEL_61;
      }

      v30 = CFArrayGetCount(v29);
      if (v30 < 1)
      {
        CFRelease(v26);
        CFRelease(v29);
        LOBYTE(v26) = 0;
        v27 = 0;
        v17 = v167;
        goto LABEL_62;
      }

      v31 = v30;
      cf = v26;
      v27 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      v32 = 0;
      v185 = 0;
      v33 = 0;
      do
      {
        LODWORD(v204) = 0;
        v207 = 0;
        values = CFArrayGetValueAtIndex(v29, v32);
        CFNumberGetValue(values, kCFNumberSInt32Type, &v204);
        v34 = v204;
        v35 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v35)
        {
          v35(v5, v34, &v207, 0);
        }

        if (v207)
        {
          IsEnabled = TrackIsEnabled(v207);
          v37 = v207;
          if (!v182)
          {
LABEL_49:
            v33 |= IsEnabled;
            CFRelease(v37);
            CFArrayAppendValue(v27, values);
            goto LABEL_50;
          }

          v38 = v18;
          v39 = v27;
          v40 = v16;
          v209 = 0;
          v41 = FigTrackReaderGetFigBaseObject(v207);
          v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v42)
          {
            goto LABEL_44;
          }

          v42(v41, @"TrackFormatDescriptionArray", v169, &v209);
          if (!v209)
          {
            v47 = 0;
            v16 = v40;
LABEL_48:
            v27 = v39;
            v185 |= v47;
            v37 = v207;
            v5 = v178;
            v18 = v38;
            goto LABEL_49;
          }

          v43 = CFArrayGetCount(v209);
          if (v43 >= 1)
          {
            v44 = v43;
            v45 = 0;
            while (1)
            {
              v46 = CFArrayGetValueAtIndex(v209, v45);
              displayFlagsOut[0] = 0;
              if (!CMTextFormatDescriptionGetDisplayFlags(v46, displayFlagsOut))
              {
                break;
              }

              if (v44 == ++v45)
              {
                goto LABEL_44;
              }
            }

            v47 = 1;
          }

          else
          {
LABEL_44:
            v47 = 0;
          }

          v16 = v40;
          if (v209)
          {
            CFRelease(v209);
          }

          goto LABEL_48;
        }

LABEL_50:
        ++v32;
      }

      while (v32 != v31);
      CFRelease(cf);
      CFRelease(v29);
      if (v27)
      {
        if (v182)
        {
          LOBYTE(v26) = v185;
        }

        else
        {
          LOBYTE(v26) = 0;
        }

        v179 = v33;
      }

      else
      {
        LOBYTE(v26) = 0;
      }

      Mutable = v157;
      v6 = v169;
LABEL_61:
      v17 = v167;
LABEL_62:
      if (v173)
      {
        v179 = 0;
        ValueAtIndex = *v176;
        goto LABEL_66;
      }

      v173 = v179;
      ValueAtIndex = *v176;
      if (!v27)
      {
LABEL_65:
        v27 = 0;
        v179 = TrackIsEnabled(v190);
        v173 = v179;
      }

LABEL_66:
      v184 = v27;
      if (v187 == 1935832172)
      {
        v25 = AddOptionsForSubtitleTrack(v190, ValueAtIndex, Value, v172, v179, v27, v17);
        if (!v25)
        {
          goto LABEL_78;
        }

LABEL_405:
        inserted = v25;
        goto LABEL_296;
      }

      v177 = ValueAtIndex;
      if (v187 != 1936684398)
      {
        v209 = 0;
        v48 = v170;
        if (v187 == 1668047728)
        {
          v48 = 1;
        }

        v170 = v48;
        v49 = CopyReferencedTrackIDs(ValueAtIndex, v172, &v209);
        if (v49)
        {
          inserted = v49;
          v142 = v184;
          if (!v184)
          {
            goto LABEL_296;
          }
        }

        else
        {
          inserted = CreateMediaSelectionOptionDictionary(v190, ValueAtIndex, 0, 0, v187, v179, v26, 0, v209, v27, 0, &v194);
          if (v209)
          {
            CFRelease(v209);
          }

          if (!inserted)
          {
            CFArrayAppendValue(v17, v194);
            if (v194)
            {
              CFRelease(v194);
              v194 = 0;
            }

            goto LABEL_78;
          }

          v142 = v184;
          if (!v184)
          {
            goto LABEL_296;
          }
        }

        CFRelease(v142);
        goto LABEL_296;
      }

      v54 = v190;
      v200 = 0;
      v55 = CopyAudioCompatibleCompositionPresetArrayOfTrack(v190, &v200);
      v56 = v200;
      if (v55)
      {
        inserted = v55;
        if (v200)
        {
          goto LABEL_224;
        }

        goto LABEL_225;
      }

      v203 = 0;
      v204 = 0;
      v202 = 0;
      v57 = CopyReferencedTrackIDs(v177, v172, &v204);
      if (v57)
      {
        inserted = v57;
LABEL_205:
        v168 = 0;
        v100 = 0;
        v101 = 0;
        goto LABEL_211;
      }

      if (!v56 || (v58 = CFArrayGetCount(v56)) == 0)
      {
        inserted = CreateMediaSelectionOptionDictionary(v54, v177, 0, 0, 1936684398, v179, 0, 0, v204, v27, 0, &v203);
        if (!inserted)
        {
          CFArrayAppendValue(v17, v203);
        }

        goto LABEL_205;
      }

      if (v58 < 1)
      {
        v168 = 0;
        v100 = 0;
        v101 = 0;
        inserted = 0;
        goto LABEL_211;
      }

      v59 = 0;
      v145 = v58;
      v146 = v54;
      while (2)
      {
        v150 = v59;
        FigCFArrayGetValueAtIndex();
        v201 = -1;
        cfa = FigCFDictionaryGetDictionaryValue();
        if (!cfa)
        {
          FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_8(&v209);
LABEL_234:
          v168 = 0;
          v100 = 0;
          v101 = 0;
          inserted = v209;
          break;
        }

        number = FigCFDictionaryGetNumberValue();
        if (!number)
        {
          FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_7(&v209);
          goto LABEL_234;
        }

        StringValue = FigCFDictionaryGetStringValue();
        if (StringValue)
        {
          v61 = StringValue;
        }

        else
        {
          v61 = @"und";
        }

        v209 = 0;
        v62 = v6;
        if (!v204 || (v63 = CFArrayGetCount(v204), v63 < 1))
        {
          v183 = 0;
          goto LABEL_115;
        }

        v64 = v63;
        v65 = 0;
        v183 = 0;
        while (2)
        {
          LODWORD(values) = 0;
          FigCFArrayGetInt32AtIndex();
          v66 = values;
          v67 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v67)
          {
            inserted = 4294954514;
LABEL_207:
            v6 = v62;
            if (v183)
            {
              CFRelease(v183);
            }

            v168 = 0;
            v100 = 0;
            v101 = 0;
            v5 = v178;
            goto LABEL_211;
          }

          v68 = v67(v178, v66, &v209, 0);
          if (v68)
          {
            inserted = v68;
            goto LABEL_207;
          }

          if (!TrackMatchesPrimaryLanguage(v209, v61))
          {
            goto LABEL_112;
          }

          v69 = v183;
          if (v183 || (v69 = CFArrayCreateMutable(v62, 0, MEMORY[0x1E695E9C0])) != 0)
          {
            v183 = v69;
            FigCFArrayAppendInt32();
LABEL_112:
            if (v64 == ++v65)
            {
              goto LABEL_115;
            }

            continue;
          }

          break;
        }

        fig_log_get_emitter();
        v102 = FigSignalErrorAtGM();
        v183 = 0;
        if (v102)
        {
          inserted = v102;
          v101 = 0;
          v168 = 0;
          v100 = 0;
          v6 = v62;
          v5 = v178;
          break;
        }

LABEL_115:
        v6 = v62;
        v70 = FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription(v62, cfa, &v202);
        if (v70)
        {
          inserted = v70;
          v168 = 0;
          v100 = 0;
          v5 = v178;
          v101 = v183;
          break;
        }

        v147 = v202;
        *displayFlagsOut = 0;
        v207 = 0;
        v5 = v178;
        v71 = v184;
        if (!v184)
        {
          v93 = 0;
          v94 = v146;
          goto LABEL_179;
        }

        v152 = CFArrayGetCount(v184);
        if (v152 < 1)
        {
          inserted = 0;
          v71 = 0;
          v168 = 0;
          v96 = v146;
          goto LABEL_176;
        }

        theString2 = v61;
        v72 = 0;
        v151 = 0;
        v168 = 0;
        while (2)
        {
          v205 = 0;
          FigCFArrayGetInt32AtIndex();
          v73 = HIDWORD(v205);
          v74 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v74)
          {
            inserted = 4294954514;
            goto LABEL_168;
          }

          v75 = v74(v5, v73, &v207, &v205);
          if (v75)
          {
            goto LABEL_200;
          }

          if (v205 != 1936684398)
          {
            goto LABEL_122;
          }

          v75 = CopyAudioCompatibleCompositionPresetArrayOfTrack(v207, displayFlagsOut);
          if (v75)
          {
LABEL_200:
            inserted = v75;
LABEL_168:
            v95 = v168;
            if (!v168)
            {
              goto LABEL_170;
            }

            goto LABEL_169;
          }

          v76 = *displayFlagsOut;
          if (!*displayFlagsOut || !CFArrayGetCount(*displayFlagsOut))
          {
            if (TrackMatchesPrimaryLanguage(v207, theString2) && !FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_6(&v207, v6, v147))
            {
              v91 = v168;
              goto LABEL_154;
            }

LABEL_160:
            if (v76)
            {
              CFRelease(v76);
              *displayFlagsOut = 0;
            }

LABEL_122:
            if (v207)
            {
              CFRelease(v207);
              v207 = 0;
            }

            if (++v72 == v152)
            {
              inserted = 0;
              v96 = v146;
              v71 = v151;
              goto LABEL_174;
            }

            continue;
          }

          break;
        }

        v77 = -1;
        values = -1;
        v209 = 0;
        v78 = CFArrayGetCount(v76);
        if (v78 < 1)
        {
          v81 = v76;
          inserted = 0;
        }

        else
        {
          v79 = v78;
          v80 = 0;
          while (1)
          {
            v81 = v76;
            FigCFArrayGetValueAtIndex();
            DictionaryValue = FigCFDictionaryGetDictionaryValue();
            if (!DictionaryValue)
            {
              FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_5(v210);
              inserted = v210[0];
              goto LABEL_143;
            }

            v83 = DictionaryValue;
            v84 = v16;
            v85 = v17;
            NumberValue = FigCFDictionaryGetNumberValue();
            if (!NumberValue)
            {
              FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_4(v210);
              inserted = v210[0];
              goto LABEL_165;
            }

            v87 = NumberValue;
            v88 = FigCFDictionaryGetStringValue();
            v89 = FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription(v169, v83, &v209);
            if (v89)
            {
              break;
            }

            if (v88)
            {
              v90 = v88;
            }

            else
            {
              v90 = @"und";
            }

            if (CFStringCompare(v90, theString2, 1uLL) == kCFCompareEqualTo && MediaCharacteristicsArraysMatch(v209, v147))
            {
              CFNumberGetValue(v87, kCFNumberCFIndexType, &values);
              inserted = 0;
              v77 = values;
              goto LABEL_149;
            }

            if (v209)
            {
              CFRelease(v209);
              v209 = 0;
            }

            ++v80;
            v17 = v85;
            v16 = v84;
            v76 = v81;
            if (v79 == v80)
            {
              inserted = 0;
LABEL_143:
              v77 = -1;
              v5 = v178;
              goto LABEL_150;
            }
          }

          inserted = v89;
LABEL_165:
          v77 = -1;
LABEL_149:
          v5 = v178;
          v17 = v85;
          v16 = v84;
        }

LABEL_150:
        v6 = v169;
        if (v209)
        {
          CFRelease(v209);
        }

        if (inserted)
        {
          goto LABEL_168;
        }

        v91 = v168;
        if (v77 == -1)
        {
          v76 = v81;
          goto LABEL_160;
        }

LABEL_154:
        if (v91 || (v91 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0])) != 0)
        {
          v92 = v151;
          v168 = v91;
          if (v151 || (v92 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0])) != 0)
          {
            FigCFArrayAppendInt32();
            v151 = v92;
            FigCFArrayAppendCFIndex();
            v76 = *displayFlagsOut;
            goto LABEL_160;
          }

          fig_log_get_emitter();
          inserted = FigSignalErrorAtGM();
          v95 = v168;
          v151 = 0;
LABEL_169:
          CFRelease(v95);
          goto LABEL_170;
        }

        fig_log_get_emitter();
        inserted = FigSignalErrorAtGM();
LABEL_170:
        v96 = v146;
        if (v151)
        {
          CFRelease(v151);
        }

        v168 = 0;
        v71 = 0;
LABEL_174:
        if (*displayFlagsOut)
        {
          CFRelease(*displayFlagsOut);
        }

LABEL_176:
        v94 = v96;
        if (v207)
        {
          CFRelease(v207);
        }

        v93 = v168;
        if (inserted)
        {
          v101 = v183;
          v100 = v71;
          break;
        }

LABEL_179:
        CFNumberGetValue(number, kCFNumberCFIndexType, &v201);
        if (v179)
        {
          v97 = v201 == 0;
        }

        else
        {
          v97 = 0;
        }

        v98 = v97;
        v168 = v93;
        v99 = CreateMediaSelectionOptionDictionary(v94, v177, cfa, number, 1936684398, v98, 0, 0, v183, v93, v71, &v203);
        if (v99)
        {
          inserted = v99;
          v101 = v183;
          v100 = v71;
          break;
        }

        CFArrayAppendValue(v17, v203);
        if (v203)
        {
          CFRelease(v203);
          v203 = 0;
        }

        if (v71)
        {
          CFRelease(v71);
        }

        if (v93)
        {
          CFRelease(v93);
        }

        if (v202)
        {
          CFRelease(v202);
          v202 = 0;
        }

        if (v183)
        {
          CFRelease(v183);
        }

        v168 = 0;
        v100 = 0;
        v101 = 0;
        inserted = 0;
        v59 = v150 + 1;
        if (v150 + 1 != v145)
        {
          continue;
        }

        break;
      }

LABEL_211:
      v103 = v101;
      if (v203)
      {
        CFRelease(v203);
      }

      Mutable = v157;
      if (v103)
      {
        CFRelease(v103);
      }

      if (v100)
      {
        CFRelease(v100);
      }

      if (v168)
      {
        CFRelease(v168);
      }

      if (v202)
      {
        CFRelease(v202);
      }

      if (v204)
      {
        CFRelease(v204);
      }

      v56 = v200;
      if (v200)
      {
LABEL_224:
        CFRelease(v56);
      }

LABEL_225:
      if (inserted)
      {
LABEL_296:
        a4 = v161;
        v119 = v165;
        v113 = 0;
        v5 = 0;
        goto LABEL_297;
      }

LABEL_78:
      if (FigCFEqual())
      {
        ++v180;
        v51 = v184;
      }

      else
      {
        v51 = v184;
        if (FigCFEqual())
        {
          ++v171;
        }

        else
        {
          v52 = FigCFEqual();
          v53 = v166;
          if (v52)
          {
            v53 = v166 + 1;
          }

          v166 = v53;
        }
      }

      if (v190)
      {
        CFRelease(v190);
        v190 = 0;
      }

      if (v51)
      {
        CFRelease(v51);
      }

      v19 = 0;
LABEL_90:
      ++v18;
    }

    while (v18 != v16);
LABEL_240:
    if (v171 == v181 && v165 == 0 && Mutable == 0)
    {
      v106 = v162;
      v11 = v163;
      if (v196)
      {
        v165 = CFRetain(v196);
        if (v17)
        {
LABEL_253:
          Mutable = CFRetain(v17);
          goto LABEL_265;
        }
      }

      else
      {
        v165 = 0;
        if (v17)
        {
          goto LABEL_253;
        }
      }

      Mutable = 0;
LABEL_265:
      v111 = v195;
      v14 = v163;
      if (!v195)
      {
        goto LABEL_267;
      }

LABEL_266:
      CFRelease(v111);
      v195 = 0;
      goto LABEL_267;
    }

    v106 = v162;
    if (v180 == v181)
    {
      v107 = v160;
      if (v160 == -1)
      {
        v107 = v162;
      }

      v160 = v107;
      v108 = @"public.audible";
    }

    else
    {
      v109 = @"public.visual";
      if (v166 != v181)
      {
        v109 = 0;
      }

      if (v171 == v181)
      {
        v108 = @"public.legible";
      }

      else
      {
        v108 = v109;
      }
    }

    v14 = v159;
    v110 = CreateMediaSelectionGroupWithOptions(v196, v153, v108, v17, &v195);
    if (!v110)
    {
      v111 = v195;
      v110 = InsertGroupIntoMediaSelectionArray(&v197, v163, v195);
      if (!v110)
      {
        v11 = v163 + 1;
        if (v111)
        {
          goto LABEL_266;
        }

LABEL_267:
        if (v196)
        {
          CFRelease(v196);
          v196 = 0;
        }

        if (v17)
        {
          CFRelease(v17);
        }

        v12 = v106 + 1;
        if (v12 == Count)
        {
          if (!v170)
          {
            goto LABEL_275;
          }

          goto LABEL_288;
        }

        continue;
      }
    }

    break;
  }

  inserted = v110;
  v113 = 0;
  v5 = 0;
LABEL_386:
  a4 = v161;
LABEL_387:
  v119 = v165;
LABEL_297:
  if (inserted && v197)
  {
    CFRelease(v197);
    v197 = 0;
  }

LABEL_325:
  if (v119)
  {
    CFRelease(v119);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v192)
  {
    CFRelease(v192);
  }

  if (v191)
  {
    CFRelease(v191);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v195)
  {
    CFRelease(v195);
  }

  if (v196)
  {
    CFRelease(v196);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v198)
  {
    CFRelease(v198);
  }

  if (v199)
  {
    CFRelease(v199);
  }

  if (v190)
  {
    CFRelease(v190);
  }

  if (v189)
  {
    CFRelease(v189);
  }

  *a4 = v197;
  return inserted;
}

uint64_t IsFallbackTrackOfTrackInGroup(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = CFGetTypeID(a4);
  if (v5 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a4);
    if (Count >= 2)
    {
      v7 = Count;
      v8 = 1;
      do
      {
        v9 = v8 - 1;
        FigCFArrayGetInt32AtIndex();
        v8 += 2;
      }

      while (v9 + 3 < v7);
    }
  }

  return 0;
}

uint64_t TrackIsEnabled(uint64_t a1)
{
  cf = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  if (v2(FigBaseObject, @"TrackEnabled", *MEMORY[0x1E695E480], &cf))
  {
    v3 = 0;
  }

  else
  {
    v3 = cf == *MEMORY[0x1E695E4D0];
  }

  v4 = v3;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t AddOptionsForSubtitleTrack(uint64_t a1, const void *a2, const __CFArray *a3, const __CFArray *a4, int a5, const __CFArray *a6, __CFArray *a7)
{
  cf = 0;
  v41 = 0;
  v39 = 0;
  theArray = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    v26 = 0;
    MediaSelectionOptionDictionary = 4294954514;
    goto LABEL_25;
  }

  v16 = v15(FigBaseObject, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  if (v16)
  {
    MediaSelectionOptionDictionary = v16;
    goto LABEL_24;
  }

  if (!theArray)
  {
    v35 = CopyReferencedTrackIDs(a2, a4, &v41);
    if (v35)
    {
LABEL_47:
      MediaSelectionOptionDictionary = v35;
LABEL_50:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v39)
      {
        CFRelease(v39);
        v39 = 0;
      }

      goto LABEL_54;
    }

    goto LABEL_49;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    MediaSelectionOptionDictionary = 0;
LABEL_24:
    v26 = 0;
LABEL_25:
    if (theArray)
    {
      CFRelease(theArray);
    }

    if (MediaSelectionOptionDictionary)
    {
      goto LABEL_50;
    }

    v35 = CopyReferencedTrackIDs(a2, a4, &v41);
    if (v35)
    {
      goto LABEL_47;
    }

    if (v26)
    {
      goto LABEL_30;
    }

LABEL_49:
    v36 = v41;
    MediaSelectionOptionDictionary = CreateMediaSelectionOptionDictionary(a1, a2, 0, 0, 1935832172, a5, 0, 0, v41, a6, 0, &cf);
    if (!MediaSelectionOptionDictionary)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

  v18 = Count;
  v38 = a7;
  v19 = 0;
  v20 = 1;
  while (1)
  {
    displayFlagsOut = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
    DisplayFlags = CMTextFormatDescriptionGetDisplayFlags(ValueAtIndex, &displayFlagsOut);
    MediaSelectionOptionDictionary = DisplayFlags;
    v24 = displayFlagsOut > -1 && DisplayFlags == 0;
    v25 = ~(displayFlagsOut >> 31) & 7;
    if (v24)
    {
      v20 = 0;
    }

    if (DisplayFlags)
    {
      v25 = 4;
    }

    if (v25)
    {
      break;
    }

    if (v18 == ++v19)
    {
      goto LABEL_22;
    }
  }

  if (v25 == 4 || v25 == 7)
  {
LABEL_22:
    v26 = v20 == 0;
    a7 = v38;
    goto LABEL_25;
  }

  v35 = CopyReferencedTrackIDs(a2, a4, &v41);
  a7 = v38;
  if (v35)
  {
    goto LABEL_47;
  }

LABEL_30:
  if (a3 && (v28 = CFArrayGetCount(a3), v28 >= 1))
  {
    v29 = v28;
    v30 = 0;
    while (1)
    {
      v31 = CFArrayGetValueAtIndex(a3, v30);
      if (v31)
      {
        if (CFEqual(a2, v31))
        {
          break;
        }
      }

      v30 += 2;
      if (v30 >= v29)
      {
        goto LABEL_36;
      }
    }

    v33 = 0;
    v32 = 1;
  }

  else
  {
LABEL_36:
    v32 = 0;
    v33 = 1;
  }

  if (a5)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  v35 = CreateMediaSelectionOptionDictionary(a1, a2, 0, 0, 1935832172, v34, 0, 1, v41, a6, 0, &cf);
  if (v35)
  {
    goto LABEL_47;
  }

  if (v33)
  {
    MediaSelectionOptionDictionary = CreateMediaSelectionOptionDictionary(a1, a2, 0, 0, 1935832172, a5, 0, 0, 0, a6, 0, &v39);
    if (MediaSelectionOptionDictionary)
    {
      goto LABEL_50;
    }
  }

  else
  {
    MediaSelectionOptionDictionary = 0;
  }

LABEL_54:
  v36 = v41;
LABEL_55:
  if (v36)
  {
    CFRelease(v36);
  }

  if (cf)
  {
    CFArrayAppendValue(a7, cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v39)
  {
    CFArrayAppendValue(a7, v39);
    if (v39)
    {
      CFRelease(v39);
    }
  }

  return MediaSelectionOptionDictionary;
}

uint64_t CopyReferencedTrackIDs(const void *a1, CFArrayRef theArray, __CFArray **a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 2)
    {
      v7 = Count;
      Mutable = 0;
      v9 = *MEMORY[0x1E695E480];
      v10 = 1;
      v11 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v12 = v10 - 1;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10 - 1);
        if (ValueAtIndex && CFEqual(a1, ValueAtIndex))
        {
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(v9, 0, v11);
            if (!Mutable)
            {
              CopyReferencedTrackIDs_cold_1(&v16);
              result = v16;
              goto LABEL_12;
            }
          }

          v14 = CFArrayGetValueAtIndex(theArray, v10);
          CFArrayAppendValue(Mutable, v14);
        }

        v10 += 2;
        if (v12 + 3 >= v7)
        {
          result = 0;
          goto LABEL_12;
        }
      }
    }
  }

  result = 0;
  Mutable = 0;
LABEL_12:
  *a3 = Mutable;
  return result;
}

CFStringRef CreateMediaSelectionOptionDictionary(uint64_t a1, const void *ValueAtIndex, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, const __CFArray *a10, uint64_t a11, __CFDictionary **a12)
{
  v92 = *MEMORY[0x1E69E9840];
  v89 = 0u;
  memset(v90, 0, sizeof(v90));
  v88[0] = @"MediaSelectionOptionsPersistentID";
  v88[1] = @"MediaSelectionOptionsMediaType";
  v91 = 0;
  v88[2] = @"MediaSelectionOptionsIsDefault";
  memset(v87, 0, sizeof(v87));
  localeIdentifier = 0;
  v86 = 0;
  theArray = 0;
  cf = 0;
  v82 = 0;
  if (!a12)
  {
    CreateMediaSelectionOptionDictionary_cold_6(&valuePtr);
    v55 = 0;
    v35 = 0;
    v57 = 0;
    v56 = valuePtr;
LABEL_115:
    v74 = a12;
    goto LABEL_116;
  }

  if (a10)
  {
    Count = CFArrayGetCount(a10);
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a10, Count - 1);
      valuePtr = -1;
      a4 = 0;
      if (a11)
      {
        FigCFArrayGetCFIndexAtIndex();
      }
    }
  }

  *&v87[0] = ValueAtIndex;
  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
  v19 = *MEMORY[0x1E695E4D0];
  v20 = *MEMORY[0x1E695E4C0];
  if (a6)
  {
    v21 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v21 = *MEMORY[0x1E695E4C0];
  }

  *(&v87[0] + 1) = CFStringForOSTypeValue;
  *&v87[1] = v21;
  if (a3)
  {
    StringValue = FigCFDictionaryGetStringValue();
    if (StringValue)
    {
      v23 = StringValue;
    }

    else
    {
      v23 = @"und";
    }

    PackedISO639_2TFromLocaleIdentifier = FigMetadataGetPackedISO639_2TFromLocaleIdentifier(v23);
    v25 = *MEMORY[0x1E695E480];
    StringForLanguageCode = FigCreateStringForLanguageCode(*MEMORY[0x1E695E480], PackedISO639_2TFromLocaleIdentifier, 1);
    localeIdentifier = StringForLanguageCode;
  }

  else
  {
    v25 = *MEMORY[0x1E695E480];
    FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v28)
    {
      v28(FigBaseObject, @"TrackLanguageCode", v25, &localeIdentifier);
    }

    v23 = 0;
    StringForLanguageCode = localeIdentifier;
  }

  if (StringForLanguageCode)
  {
    v29 = &v87[2] + 8;
    v30 = v90;
    *&v89 = @"MediaSelectionOptionsLanguageCode";
    *(&v87[1] + 1) = StringForLanguageCode;
    CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v25, StringForLanguageCode);
    *(&v89 + 1) = @"MediaSelectionOptionsUnicodeLanguageCode";
    v78 = CanonicalLanguageIdentifierFromString;
    *&v87[2] = CanonicalLanguageIdentifierFromString;
    v32 = 5;
    if (a3)
    {
LABEL_19:
      v86 = CFRetain(v23);
      goto LABEL_20;
    }
  }

  else
  {
    v78 = 0;
    v30 = &v89;
    v29 = &v87[1] + 8;
    v32 = 3;
    if (a3)
    {
      goto LABEL_19;
    }
  }

  v37 = FigTrackReaderGetFigBaseObject(a1);
  v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v38)
  {
    v38(v37, @"ExtendedLanguageTagString", v25, &v86);
  }

LABEL_20:
  v33 = v86;
  if (!v86 && localeIdentifier)
  {
    ISO639_1FromISO639_2T = FigMetadataGetISO639_1FromISO639_2T(localeIdentifier);
    if (!ISO639_1FromISO639_2T)
    {
      ISO639_1FromISO639_2T = localeIdentifier;
    }

    v33 = CFRetain(ISO639_1FromISO639_2T);
    v86 = v33;
  }

  if (v33)
  {
    *v30 = @"MediaSelectionOptionsExtendedLanguageTag";
    *v29 = v33;
    v35 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v25, v33);
    v36 = 8 * v32 + 8;
    *(v88 + v36) = @"MediaSelectionOptionsUnicodeLanguageIdentifier";
    *(v87 + v36) = v35;
    v32 += 2;
  }

  else
  {
    v35 = 0;
  }

  if (a4)
  {
    v88[v32] = @"MediaSelectionOptionsAudioCompositionPresetIndex";
    *(v87 + v32++) = a4;
  }

  if (a3)
  {
    FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription(v25, a3, &cf);
  }

  else
  {
    FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForTrackReader(v25, a1, &cf);
  }

  v39 = cf;
  if (a5 == 1668047728)
  {
    MutableCopy = FigCFArrayCreateMutableCopy();
    if (!MutableCopy)
    {
      CreateMediaSelectionOptionDictionary_cold_5(&valuePtr);
      goto LABEL_138;
    }

    v39 = MutableCopy;
    if (!FigCFArrayContainsValue())
    {
      CFArrayAppendValue(v39, @"public.accessibility.transcribes-spoken-dialog");
    }

    if (!FigCFArrayContainsValue())
    {
      CFArrayAppendValue(v39, @"public.accessibility.describes-music-and-sound");
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = v39;
  }

  else if (!cf)
  {
    goto LABEL_47;
  }

  v88[v32] = @"MediaSelectionOptionsTaggedMediaCharacteristics";
  *(v87 + v32++) = v39;
LABEL_47:
  v41 = FigTrackReaderGetFigBaseObject(a1);
  v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v42)
  {
    v42(v41, @"TrackExcludeFromAutoSelection", v25, &v82);
  }

  if (v82 == v19 || FigCFArrayContainsValue())
  {
    v88[v32] = @"MediaSelectionOptionsIsAuxiliaryContent";
    *(v87 + v32++) = v19;
  }

  if (a5 == 1935832172 || a7)
  {
    v88[v32] = @"MediaSelectionOptionsDisplaysNonForcedSubtitles";
    if (a7)
    {
      if (FigCFArrayContainsValue())
      {
        *(v87 + v32) = v20;
        v47 = v20;
      }

      else
      {
        *(v87 + v32) = v19;
        v47 = v19;
      }
    }

    else
    {
      if (a8)
      {
        v47 = v19;
      }

      else
      {
        v47 = v20;
      }

      *(v87 + v32) = v47;
    }

    v46 = v32 + 1;
    v88[v32 + 1] = @"MediaSelectionOptionsDisplaysForcedSubtitlesOnly";
    if (v47 == v20)
    {
      v44 = v19;
    }

    else
    {
      v44 = v20;
    }

    v45 = 2;
    goto LABEL_71;
  }

  if (a5 == 1952807028)
  {
    v43 = FigCFArrayContainsValue();
    v88[v32] = @"MediaSelectionOptionsDisplaysForcedSubtitlesOnly";
    if (v43)
    {
      v44 = v19;
    }

    else
    {
      v44 = v20;
    }

    v45 = 1;
    v46 = v32;
LABEL_71:
    *(v87 + v46) = v44;
    v32 += v45;
  }

  if (a9)
  {
    v88[v32] = @"MediaSelectionOptionsAssociatedPersistentIDs";
    *(v87 + v32++) = a9;
  }

  if (a10)
  {
    v88[v32] = @"MediaSelectionOptionsFallbackIDs";
    *(v87 + v32++) = a10;
  }

  if (a11)
  {
    v88[v32] = @"MediaSelectionOptionsAudioCompositionPresetIndexesForFallbackIDs";
    *(v87 + v32++) = a11;
  }

  v48 = FigTrackReaderGetFigBaseObject(a1);
  v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v49)
  {
    v49(v48, @"TrackFormatDescriptionArray", v25, &theArray);
  }

  if (!theArray)
  {
    v52 = 0;
    v54 = 0;
    goto LABEL_105;
  }

  v50 = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(v25, v50, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v52 = Mutable;
    if (a5 == 1936684398)
    {
      v53 = CFArrayGetCount(theArray);
      v54 = CFArrayCreateMutable(v25, v53, MEMORY[0x1E695E9C0]);
      if (!v54)
      {
        CreateMediaSelectionOptionDictionary_cold_2(&valuePtr);
        v55 = 0;
        v56 = valuePtr;
        v57 = v78;
        goto LABEL_112;
      }
    }

    else
    {
      v54 = 0;
    }

    v80 = v35;
    v58 = CFArrayGetCount(theArray);
    if (v58 >= 1)
    {
      v59 = 0;
      v60 = v58 & 0x7FFFFFFF;
      do
      {
        v61 = CFArrayGetValueAtIndex(theArray, v59);
        CMFormatDescriptionGetMediaSubType(v61);
        FigCFArrayAppendInt32();
        if (a5 == 1936684398)
        {
          valuePtr = 0;
          ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(v61, &valuePtr);
          v63 = valuePtr;
          if (ChannelLayout)
          {
            v64 = valuePtr == 0;
          }

          else
          {
            v64 = 1;
          }

          if (v64)
          {
            v63 = 0;
            valuePtr = 0;
          }

          else
          {
            v65 = 20 * ChannelLayout->mNumberChannelDescriptions + 12;
            if (v65 < valuePtr)
            {
              valuePtr = 20 * ChannelLayout->mNumberChannelDescriptions + 12;
              v63 = v65;
            }
          }

          v66 = CFDataCreate(v25, ChannelLayout, v63);
          if (v66)
          {
            v67 = v66;
            CFArrayAppendValue(v54, v66);
            CFRelease(v67);
          }
        }

        ++v59;
      }

      while (v60 != v59);
    }

    v88[v32] = @"MediaSelectionOptionsMediaSubTypes";
    *(v87 + v32) = v52;
    v68 = v32 + 1;
    if (a5 == 1936684398)
    {
      v88[v68] = @"MediaSelectionOptionsAudioChannelLayouts";
      *(v87 + v68) = v54;
      v32 += 2;
    }

    else
    {
      ++v32;
    }

    v35 = v80;
LABEL_105:
    v55 = CFDictionaryCreateMutable(v25, v32 + 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v55)
    {
      if (v32 >= 1)
      {
        v69 = v87;
        v70 = v88;
        do
        {
          v72 = *v70++;
          v71 = v72;
          v73 = *v69++;
          CFDictionaryAddValue(v55, v71, v73);
          --v32;
        }

        while (v32);
      }

      v56 = FigCopyGMLoggingDescriptionForOption(v55);
      CFDictionaryAddValue(v55, @"MediaSelectionOptionsDebugDescription", v56);
      v57 = v78;
      if (v56)
      {
        CFRelease(v56);
        v56 = 0;
      }

      if (!v52)
      {
        goto LABEL_113;
      }
    }

    else
    {
      CreateMediaSelectionOptionDictionary_cold_4(&valuePtr);
      v56 = valuePtr;
      v57 = v78;
      if (!v52)
      {
LABEL_113:
        if (v54)
        {
          CFRelease(v54);
        }

        goto LABEL_115;
      }
    }

LABEL_112:
    CFRelease(v52);
    goto LABEL_113;
  }

  CreateMediaSelectionOptionDictionary_cold_3(&valuePtr);
LABEL_138:
  v55 = 0;
  v56 = valuePtr;
  v74 = a12;
  v57 = v78;
LABEL_116:
  if (localeIdentifier)
  {
    CFRelease(localeIdentifier);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v74)
  {
    *v74 = v55;
  }

  return v56;
}

uint64_t CreateMediaSelectionGroupWithOptions(void *a1, void *a2, void *a3, void *a4, CFDictionaryRef *a5)
{
  keys[4] = *MEMORY[0x1E69E9840];
  values = a3;
  keys[0] = @"MediaSelectionGroupID";
  keys[1] = @"MediaSelectionGroupAllowEmptySelection";
  keys[2] = @"MediaSelectionGroupOptions";
  keys[3] = @"MediaSelectionGroupMediaCharacteristics";
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a4;
  v16 = 0;
  v6 = *MEMORY[0x1E695E480];
  if (a3)
  {
    v7 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    if (!v7)
    {
      CreateMediaSelectionGroupWithOptions_cold_1(a5, &v14);
      return v14;
    }

    v8 = v7;
    v16 = v7;
    v9 = 4;
  }

  else
  {
    v8 = 0;
    v9 = 3;
  }

  v10 = CFDictionaryCreate(v6, keys, v15, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    CreateMediaSelectionGroupWithOptions_cold_2(&v14);
    v11 = v14;
  }

  *a5 = v10;
  if (v8)
  {
    CFRelease(v8);
  }

  return v11;
}

uint64_t InsertGroupIntoMediaSelectionArray(CFMutableArrayRef *a1, CFIndex a2, const void *a3)
{
  Mutable = *a1;
  if (Mutable || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*a1 = Mutable) != 0))
  {
    if (CFArrayGetCount(Mutable) < a2)
    {
      InsertGroupIntoMediaSelectionArray_cold_1(&v8);
      return v8;
    }

    else
    {
      CFArrayInsertValueAtIndex(*a1, a2, a3);
      return 0;
    }
  }

  else
  {
    InsertGroupIntoMediaSelectionArray_cold_2(&v9);
    return v9;
  }
}

uint64_t SynthesizeOptionsForSoloSubtitleTrack(uint64_t a1, int a2, const __CFArray *a3, const __CFArray *a4, __CFArray **a5)
{
  valuePtr = a2;
  cf = 0;
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    SynthesizeOptionsForSoloSubtitleTrack_cold_2(&v19);
    v11 = 0;
    v15 = v19;
    goto LABEL_9;
  }

  v11 = CFNumberCreate(v9, kCFNumberSInt32Type, &valuePtr);
  if (v11)
  {
    FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v14 = v13(FigBaseObject, @"TrackEnabled", v9, &cf);
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = AddOptionsForSubtitleTrack(a1, v11, a3, a4, cf == *MEMORY[0x1E695E4D0], 0, Mutable);
        if (!v15)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v15 = 4294954514;
    }

LABEL_8:
    CFRelease(Mutable);
    Mutable = 0;
    goto LABEL_9;
  }

  SynthesizeOptionsForSoloSubtitleTrack_cold_1(&v19);
  v15 = v19;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  *a5 = Mutable;
  return v15;
}

uint64_t FigMediaSelectionGroupsMatchToMediaSelectionArray(const __CFArray *a1, const __CFArray *a2)
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
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    if (!ValueAtIndex)
    {
      break;
    }

    v8 = ValueAtIndex;
    v9 = CFGetTypeID(ValueAtIndex);
    if (v9 != CFDictionaryGetTypeID())
    {
      break;
    }

    MatchingSelection = FigMediaSelectionGroupsCreateMatchingSelection(a2, v8);
    CFArraySetValueAtIndex(a1, v6, MatchingSelection);
    if (MatchingSelection)
    {
      CFRelease(MatchingSelection);
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMediaSelectionGroupsAddCrossDeviceInfoToSelectedMediaArray(CFArrayRef theArray, const __CFArray *a2)
{
  result = 0;
  if (a2 && theArray)
  {
    v5 = v2;
    v6 = a2;
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        if (!ValueAtIndex)
        {
          break;
        }

        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 != CFDictionaryGetTypeID())
        {
          break;
        }

        MutableCopy = FigCFDictionaryCreateMutableCopy();
        Value = FigCFDictionaryGetValue();
        v14 = FigCFDictionaryGetValue();
        FigCFDictionaryGetValue();
        FigCFDictionaryGetValue();
        FigCFDictionaryGetValue();
        FigCFDictionaryGetValue();
        if (Value)
        {
          v19 = v6;
          v20 = v5;
          v21 = 0;
          FindMediaTypeInMediaArray(v6, v14, &v21);
          v15 = FigCFDictionaryGetValue();
          if (v15)
          {
            v16 = CFArrayGetCount(v15);
            if (v16 >= 1)
            {
              v17 = v16;
              v18 = 0;
              while (1)
              {
                FigCFArrayGetValueAtIndex();
                FigCFDictionaryGetValue();
                if (FigCFEqual())
                {
                  break;
                }

                if (v17 == ++v18)
                {
                  goto LABEL_19;
                }
              }

              FigCFDictionaryGetValue();
              FigCFDictionaryGetValue();
              FigCFDictionaryGetValue();
              FigCFDictionaryGetValue();
              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
            }
          }

LABEL_19:
          v6 = v19;
          v5 = v20;
        }

        CFArraySetValueAtIndex(theArray, v9, MutableCopy);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (++v9 == v8)
        {
          return 0;
        }
      }

      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

void AppendFallbacksOfTracks(const __CFArray *a1, const __CFArray *a2, __CFArray *a3)
{
  if (a1)
  {
    v5 = a1;
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      Mutable = 0;
      v9 = 0;
      v18 = v5;
      allocator = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        theArray = 0;
        if (CopyReferencedTrackIDs(ValueAtIndex, a2, &theArray))
        {
          break;
        }

        v11 = theArray;
        if (theArray)
        {
          v12 = CFArrayGetCount(theArray);
          if (v12 >= 1)
          {
            v13 = v12;
            v14 = v7;
            v15 = 0;
            for (i = 0; i != v13; ++i)
            {
              v17 = CFArrayGetValueAtIndex(v11, i);
              if (!FigCFArrayContainsValue() && !FigCFArrayContainsValue())
              {
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                  if (!Mutable)
                  {
                    AppendFallbacksOfTracks_cold_1();
                    return;
                  }
                }

                ++v15;
                CFArrayAppendValue(Mutable, v17);
              }
            }

            if (v15 >= 1)
            {
              v22.location = 0;
              v22.length = v15;
              CFArrayAppendArray(a3, Mutable, v22);
              AppendFallbacksOfTracks(Mutable, a2, a3);
            }

            v7 = v14;
            v5 = v18;
          }

          CFRelease(v11);
        }

        ++v9;
      }

      while (v9 != v7);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }
}

BOOL TrackMatchesPrimaryLanguage(uint64_t a1, const __CFString *a2)
{
  theString1 = 0;
  v4 = *MEMORY[0x1E695E480];
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(FigBaseObject, @"ExtendedLanguageTagString", v4, &theString1);
    if (theString1)
    {
      v7 = CFStringCompare(theString1, a2, 1uLL) == kCFCompareEqualTo;
      v8 = theString1;
      if (!theString1)
      {
        return v7;
      }

LABEL_8:
      CFRelease(v8);
      return v7;
    }
  }

  cf = 0;
  v9 = FigTrackReaderGetFigBaseObject(a1);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    return 0;
  }

  v10(v9, @"TrackLanguageCode", v4, &cf);
  if (!cf)
  {
    return 0;
  }

  PackedISO639_2T = FigMetadataGetPackedISO639_2T(cf);
  v7 = PackedISO639_2T == FigMetadataGetPackedISO639_2TFromLocaleIdentifier(a2);
  v8 = cf;
  if (cf)
  {
    goto LABEL_8;
  }

  return v7;
}

uint64_t MediaCharacteristicsArraysMatch(CFArrayRef theArray, const __CFArray *a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a2)
    {
LABEL_3:
      v4 = CFArrayGetCount(a2);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
LABEL_6:
  if (Count != v4)
  {
    return 0;
  }

  if (Count < 1)
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v8.location = 0;
    v8.length = Count;
    result = CFArrayContainsValue(a2, v8, ValueAtIndex);
    if (!result)
    {
      break;
    }

    if (Count == ++v5)
    {
      return 1;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_58(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  CFStringAppendFormat(v3, 0, a3);
}

uint64_t FigAlternateFilterTreeInsertLeaf(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 8);
  if (v6 && *(v6 + 8) >= a3)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 16);
    }

    while (v6 && *(v6 + 8) >= a3);
  }

  else
  {
    v7 = 0;
  }

  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A004041F259BEuLL);
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *v9 = v10;
    v9[2] = a3;
    v11 = 0;
    if (v7)
    {
      v13 = *(v7 + 16);
      v12 = (v7 + 16);
      *(v9 + 2) = v13;
      v14 = (v13 + 24);
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = (DerivedStorage + 16);
      }

      *v15 = v9 + 4;
      *v12 = v9;
      *(v9 + 3) = v12;
    }

    else
    {
      v16 = *(DerivedStorage + 8);
      *(v9 + 2) = v16;
      if (v16)
      {
        v17 = (v16 + 24);
      }

      else
      {
        v17 = (DerivedStorage + 16);
      }

      *v17 = v9 + 4;
      *(DerivedStorage + 8) = v9;
      *(v9 + 3) = DerivedStorage + 8;
    }
  }

  else
  {
    FigAlternateFilterTreeInsertLeaf_cold_1(&v19);
    v11 = v19;
  }

  FigSimpleMutexUnlock();
  return v11;
}

uint64_t FigAlternateFilterTreeRemoveLeaf()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    while (1)
    {
      v2 = *v1;
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v3)
      {
        v3(v2);
      }

      v4 = FigCFEqual();
      v5 = *(v1 + 16);
      if (v4)
      {
        break;
      }

      v1 = *(v1 + 16);
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    v6 = *(v1 + 24);
    v7 = (DerivedStorage + 16);
    if (v5)
    {
      v7 = (v5 + 24);
    }

    *v7 = v6;
    *v6 = v5;
    ftree_freeLeaf(v1);
  }

LABEL_10:
  FigSimpleMutexUnlock();
  return 0;
}

void ftree_freeLeaf(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t FigAlternateFilterTreeSetFallbackBranch(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
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

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateFilterTreeCreateFilter(const void *a1, const __CFString *a2, int a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ArrayFromLeaves = ftree_createArrayFromLeaves(a1);
  if (!ArrayFromLeaves)
  {
    FigAlternateFilterTreeCreateFilter_cold_2(DerivedStorage, &cf);
    return cf;
  }

  v10 = ArrayFromLeaves;
  v11 = CFGetAllocator(a1);
  v12 = *(DerivedStorage + 24);
  cf = 0;
  FigAlternateFilterGetClassID();
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    v16 = v13;
    goto LABEL_16;
  }

  v14 = CMBaseObjectGetDerivedStorage();
  *v14 = CFStringCreateCopy(v11, a2);
  *(v14 + 8) = a3;
  *(v14 + 16) = CFArrayCreateCopy(v11, v10);
  if (v12)
  {
    v15 = CFRetain(v12);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 24) = v15;
  if (!*v14)
  {
    v18 = 612;
LABEL_15:
    FigAlternateFilterTreeCreateFilter_cold_1(v18, &v20);
    v16 = v20;
LABEL_16:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_9;
  }

  if (!*(v14 + 16))
  {
    v18 = 613;
    goto LABEL_15;
  }

  v16 = 0;
  *a4 = cf;
LABEL_9:
  FigSimpleMutexUnlock();
  CFRelease(v10);
  return v16;
}

uint64_t FigAlternateFilterTreeCopyLeaves(const void *a1, __CFArray **a2)
{
  if (a2)
  {
    ArrayFromLeaves = ftree_createArrayFromLeaves(a1);
    *a2 = ArrayFromLeaves;
    if (ArrayFromLeaves)
    {
      return 0;
    }

    else
    {
      FigAlternateFilterTreeCopyLeaves_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigAlternateFilterTreeCopyLeaves_cold_2(&v6);
    return v6;
  }
}

uint64_t FigAlternateFilterTreeCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigAlternateFilterTreeGetClassID_sRegisterFigAlternateFilterTreeBaseTypeOnce, RegisterFigAlternateFilterTreeBaseType);
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = FigSimpleMutexCreate();
      DerivedStorage[1] = 0;
      DerivedStorage[2] = DerivedStorage + 1;
      *a2 = 0;
    }
  }

  else
  {
    FigAlternateFilterTreeCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

CFDataRef FigAlternateFilterApplyInfoCreate(const __CFAllocator *a1, const __CFArray *a2, uint64_t a3, const void *a4, const void *a5)
{
  Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 0;
  }

  v11 = Mutable;
  if (a2)
  {
    v12.length = CFArrayGetCount(a2);
  }

  else
  {
    v12.length = 0;
  }

  v12.location = 0;
  CFArrayApplyFunction(a2, v12, fafinfo_populateAlternatesBitVectorFn, v11);
  v20 = *byte_1F0AE1E50;
  if (a4)
  {
    v13 = malloc_type_calloc(1uLL, 0x28uLL, 0x1060040E4149F06uLL);
    *v13 = CFRetain(a4);
    v13[1] = a3;
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = 0;
    }

    v13[2] = Count;
    v13[3] = CFRetain(v11);
    if (a5)
    {
      v15 = CFRetain(a5);
    }

    else
    {
      v15 = 0;
    }

    v13[4] = v15;
    v20.info = v13;
    v16 = CFAllocatorCreate(a1, &v20);
    if (v16)
    {
      v17 = v16;
      v18 = CFDataCreateWithBytesNoCopy(a1, v13, 40, v16);
      if (!v18)
      {
        fafinfo_deallocate(0, v13);
      }

      CFRelease(v17);
      goto LABEL_16;
    }

    fafinfo_deallocate(0, v13);
  }

  v18 = 0;
LABEL_16:
  CFRelease(v11);
  return v18;
}

void fafinfo_deallocate(int a1, CFTypeRef *a2)
{
  v3 = a2[3];
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  v4 = a2[4];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a2);
}

void FigAlternateFilterApplyInfoGetStorage(const __CFData *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (CFDataGetLength(a1) > 0x27)
  {
    v4.length = 40;
  }

  else
  {
    v4.length = CFDataGetLength(a1);
  }

  v4.location = 0;

  CFDataGetBytes(a1, v4, a2);
}

uint64_t ftree_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[1];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      do
      {
        v3 = v2;
        v4 = *(v1 + 24);
        *(v3 + 24) = v4;
        *v4 = v3;
        ftree_freeLeaf(v1);
        v2 = *(v3 + 16);
        v1 = v3;
      }

      while (v2);
    }

    else
    {
      v3 = DerivedStorage[1];
    }

    v5 = *(v3 + 24);
    DerivedStorage[2] = v5;
    *v5 = 0;
    ftree_freeLeaf(v3);
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    CFRelease(v6);
  }

  return FigSimpleMutexDestroy();
}

uint64_t RegisterFigAlternateFilterTreeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t ftreefilter_equal()
{
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  result = FigCFEqual();
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      return FigCFEqual() != 0;
    }
  }

  return result;
}

void ftreefilter_finalize()
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

  v2 = *(DerivedStorage + 24);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t ftreefilter_copyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  if (!a2)
  {
    ftreefilter_copyProperty_cold_3(&context);
    return context;
  }

  if (!a4)
  {
    ftreefilter_copyProperty_cold_2(&context);
    return context;
  }

  result = CFEqual(@"FAFProperty_CountOfChildFilters", a2);
  if (!result)
  {
    return result;
  }

  context = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 16);
  if (v8)
  {
    v9.length = CFArrayGetCount(*(DerivedStorage + 16));
  }

  else
  {
    v9.length = 0;
  }

  v9.location = 0;
  CFArrayApplyFunction(v8, v9, ftreefilter_countLeafFiltersAndTheirChildrenFn, &context);
  v10 = *(v7 + 24);
  if (v10)
  {
    v11 = ftreefilter_countLeafFilterAndItsChildren(v10);
    v12 = context + v11;
  }

  else
  {
    v12 = context;
  }

  v14 = v12;
  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &v14);
  *a4 = v13;
  if (!v13)
  {
    ftreefilter_copyProperty_cold_1(&context);
    return context;
  }

  return 0;
}

uint64_t ftreefilter_countLeafFiltersAndTheirChildrenFn(const void *a1, void *a2)
{
  result = ftreefilter_countLeafFilterAndItsChildren(a1);
  *a2 += result;
  return result;
}

uint64_t ftreefilter_countLeafFilterAndItsChildren(const void *a1)
{
  v8 = 0;
  number = 0;
  v2 = CFGetAllocator(a1);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 1;
  }

  v4 = v3(a1, @"FAFProperty_CountOfChildFilters", v2, &number);
  v5 = number;
  if (v4)
  {
    v6 = 1;
    if (!number)
    {
      return v6;
    }

    goto LABEL_4;
  }

  CFNumberGetValue(number, kCFNumberLongType, &v8);
  v5 = number;
  v6 = v8 + 1;
  if (number)
  {
LABEL_4:
    CFRelease(v5);
  }

  return v6;
}

uint64_t ftreefilter_appendAndReleaseLeafInfo(const void *a1, uint64_t a2, CFMutableArrayRef theArray, const __CFArray *Count, const __CFArray *a5, CFTypeRef *a6)
{
  v9 = *a6;
  if (*a6)
  {
    goto LABEL_8;
  }

  v12 = CFGetAllocator(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  v14 = v13 ? v13(a2) : &stru_1F0B1AFB8;
  v9 = FigAlternateFilterApplyInfoCreate(v12, a5, Count, v14, 0);
  *a6 = v9;
  if (v9)
  {
LABEL_8:
    CFArrayAppendValue(theArray, v9);
    v15 = 0;
  }

  else
  {
    ftreefilter_appendAndReleaseLeafInfo_cold_1(&v17);
    v15 = v17;
  }

  if (*a6)
  {
    CFRelease(*a6);
    *a6 = 0;
  }

  return v15;
}

uint64_t ftreefilter_appendEmptyLeafInfosForLeafFilterAndItsChildren(const void *a1, const void *a2, __CFArray *a3)
{
  v6 = ftreefilter_countLeafFilterAndItsChildren(a2);
  v7 = CFGetAllocator(a1);
  v8 = CFArrayCreate(v7, 0, 0, MEMORY[0x1E695E9C0]);
  v13 = 0;
  if (v8)
  {
    v9 = v8;
    if (v6 < 1)
    {
LABEL_5:
      v11 = 0;
    }

    else
    {
      while (1)
      {
        v10 = ftreefilter_appendAndReleaseLeafInfo(a1, a2, a3, v9, v9, &v13);
        if (v10)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_5;
        }
      }

      v11 = v10;
    }

    CFRelease(v9);
  }

  else
  {
    ftreefilter_appendEmptyLeafInfosForLeafFilterAndItsChildren_cold_1(&v14);
    return v14;
  }

  return v11;
}

void fafinfo_populateAlternatesBitVectorFn(uint64_t a1, const __CFBitVector *a2)
{
  ZeroIndexedAlternateIndex = FigAlternateGetZeroIndexedAlternateIndex(a1);
  v5 = 8 * (ZeroIndexedAlternateIndex / 8) - (ZeroIndexedAlternateIndex - (v4 & 0xFFFFFFF8)) + 7;
  Count = CFBitVectorGetCount(a2);
  v7 = v5;
  if (v5 <= Count)
  {
    v7 = CFBitVectorGetCount(a2);
  }

  v8 = v7 - 1;
  if (v7 < 1)
  {
    v8 = v7 + 6;
  }

  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 > CFBitVectorGetCount(a2))
  {
    CFBitVectorSetCount(a2, v9);
  }

  CFBitVectorSetBitAtIndex(a2, v5, 1u);
}

uint64_t FigCMCDHeaderVendorSetAllowedKeys(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = a2 | 0x20000;
  if (!a2)
  {
    v4 = 0;
  }

  *(DerivedStorage + 8) = v4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorGetAllowedKeys(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetLoadedTimeRange(uint64_t a1, int a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    while (*v6 != a2)
    {
      v6 = *(v6 + 7);
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040BABC55ACuLL);
    if (!v6)
    {
      FigCMCDHeaderVendorSetLoadedTimeRange_cold_1(&v11);
      v7 = v11;
      goto LABEL_7;
    }

    *v6 = a2;
    *(v6 + 7) = 0;
    **(DerivedStorage + 104) = v6;
    *(DerivedStorage + 104) = v6 + 56;
  }

  v7 = 0;
  v8 = *a3;
  v9 = a3[1];
  *(v6 + 36) = a3[2];
  *(v6 + 20) = v9;
  *(v6 + 4) = v8;
LABEL_7:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigCMCDHeaderVendorSetBufferDidStarve(uint64_t a1, unsigned int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 >= 5)
  {
    FigCMCDHeaderVendorSetBufferDidStarve_cold_2(&v9);
    return v9;
  }

  v4 = DerivedStorage;
  FigSimpleMutexLock();
  v5 = *(v4 + 112);
  if (v5)
  {
    while (*v5 != a2)
    {
      v5 = v5[1];
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040093ED670uLL);
    if (!v5)
    {
      FigCMCDHeaderVendorSetBufferDidStarve_cold_1(&v8);
      v6 = v8;
      goto LABEL_8;
    }

    *v5 = a2;
    v5[1] = 0;
    **(v4 + 120) = v5;
    *(v4 + 120) = v5 + 1;
  }

  v6 = 0;
  *(v5 + 4) = 1;
LABEL_8:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigCMCDHeaderVendorSetTimebase(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetTimelineConverter(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetNetworkHistory(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 40);
  *(DerivedStorage + 40) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetStreamType(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 72) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetStreamingFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 80) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetIsLikelyToKeepUp(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 88) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorCreate(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  MEMORY[0x19A8D3660](&FigCMCDHeaderVendorGetClassID_sRegisterFigCMCDHeaderVendorBaseTypeOnce, RegisterFigCMCDHeaderVendorBaseType);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = FigSimpleMutexCreate();
  DerivedStorage[12] = 0;
  *DerivedStorage = v10;
  DerivedStorage[13] = DerivedStorage + 12;
  DerivedStorage[14] = 0;
  DerivedStorage[15] = DerivedStorage + 14;
  if (a2)
  {
    v11 = CFRetain(a2);
    DerivedStorage[4] = v11;
    v12 = (DerivedStorage + 4);
    if (v11)
    {
      v13 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    DerivedStorage[4] = 0;
    v12 = (DerivedStorage + 4);
  }

  v14 = CFGetAllocator(0);
  v15 = CFUUIDCreate(v14);
  if (!v15)
  {
    FigCMCDHeaderVendorCreate_cold_2(&v22);
    return v22;
  }

  v13 = v15;
  v16 = CFGetAllocator(0);
  v17 = CFUUIDCreateString(v16, v13);
  *v12 = v17;
  if (!v17)
  {
    FigCMCDHeaderVendorCreate_cold_1(&v22);
    v19 = v22;
    goto LABEL_9;
  }

LABEL_8:
  v18 = FigRCLGetLongNumberWithDefault(a4, @"allowedCMCDKeys");
  v19 = 0;
  v20 = 0;
  DerivedStorage[2] = v18;
  *a5 = 0;
  if (v13)
  {
LABEL_9:
    CFRelease(v13);
    return v19;
  }

  return v20;
}

__n128 cmcd_getBufferLengthForObjectType@<Q0>(int a1@<W1>, CMTime *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v7 = *(DerivedStorage + 56);
  if (v7)
  {
    CMTimebaseGetTime(&v16.start, v7);
    v17 = *&v16.start.value;
    epoch = v16.start.epoch;
    FPSTimelineConverterL3TimeToL2(&v17, &time);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    v9 = time.epoch;
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    v9 = *(MEMORY[0x1E6960C70] + 16);
  }

  v10 = *(DerivedStorage + 96);
  if (v10)
  {
    while (*v10 != a1)
    {
      v10 = *(v10 + 56);
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    if ((flags & 1) != 0 && (v12 = *(v10 + 4), v13 = *(v10 + 36), *&v16.start.epoch = *(v10 + 20), *&v16.duration.timescale = v13, *&v16.start.value = v12, time.value = value, time.timescale = timescale, time.flags = flags, time.epoch = v9, CMTimeRangeContainsTime(&v16, &time)))
    {
      v14 = *(v10 + 4);
      v15 = *(v10 + 36);
      *&v16.start.epoch = *(v10 + 20);
      *&v16.duration.timescale = v15;
      *&v16.start.value = v14;
      CMTimeRangeGetEnd(&time, &v16);
      v16.start.value = value;
      v16.start.timescale = timescale;
      v16.start.flags = flags;
      v16.start.epoch = v9;
      CMTimeSubtract(a2, &time, &v16.start);
    }

    else
    {
      result = *(v10 + 28);
      a2->epoch = *(v10 + 44);
      *&a2->value = result;
    }
  }

  else
  {
LABEL_7:
    result = *v5;
    *&a2->value = *v5;
    a2->epoch = v6;
  }

  return result;
}

uint64_t cmcd_appendHeaderKeyAndTimeValue(const void *a1, CFMutableStringRef *a2, uint64_t a3, CMTime *a4, int a5)
{
  v16 = *a4;
  v10 = (CMTimeGetSeconds(&v16) * 1000.0);
  v16 = *a4;
  v11 = (CMTimeGetSeconds(&v16) * 1000.0);
  if (a5)
  {
    v12 = 100;
  }

  else
  {
    v12 = 1;
  }

  v13 = v10 + v11 / v12 * v12 - v11;
  v16 = *a4;
  if ((CMTimeGetSeconds(&v16) * 1000.0) % v12 <= v12 >> 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  return cmcd_appendHeaderKeyAndIntegerValue(a1, a2, a3, v13 + v14);
}

uint64_t cmcd_ensureOrSuffixHeadersString(const void *a1, CFMutableStringRef *a2)
{
  if (*a2)
  {
    if (CFStringGetLength(*a2) >= 1)
    {
      CFStringAppend(*a2, @",");
    }
  }

  else
  {
    v3 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v3, 0);
    *a2 = Mutable;
    if (!Mutable)
    {
      cmcd_ensureOrSuffixHeadersString_cold_1(&v6);
      return v6;
    }
  }

  return 0;
}

uint64_t cmcd_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage + 12;
  v1 = DerivedStorage[12];
  if (v1)
  {
    do
    {
      v3 = v1[7];
      *v2 = v3;
      if (!v3)
      {
        DerivedStorage[13] = v2;
      }

      free(v1);
      v1 = *v2;
    }

    while (*v2);
  }

  v5 = DerivedStorage + 14;
  v4 = DerivedStorage[14];
  if (v4)
  {
    do
    {
      v6 = v4[1];
      *v5 = v6;
      if (!v6)
      {
        DerivedStorage[15] = v5;
      }

      free(v4);
      v4 = *v5;
    }

    while (*v5);
  }

  v7 = DerivedStorage[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[8];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[6];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[5];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[4];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[3];
  if (v12)
  {
    CFRelease(v12);
  }

  return FigSimpleMutexDestroy();
}

uint64_t RegisterFigCMCDHeaderVendorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

double OUTLINED_FUNCTION_3_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a23 = 0;
  a24 = 0;
  a25 = 0;

  *&result = cmcd_getBufferLengthForObjectType(v25, &a23).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return cmcd_appendHeaderKeyAndTimeValue(a13, va, a3, (v16 - 208), 1);
}

uint64_t FigGetClosestRandomAccessPointInAudioSBuf(CMSampleBufferRef sbuf, CMTime *a2, int a3, CMTime *a4, CMItemIndex *a5)
{
  if (!a4)
  {
    FigGetClosestRandomAccessPointInAudioSBuf_cold_6();
    return 0;
  }

  if (!sbuf)
  {
    FigGetClosestRandomAccessPointInAudioSBuf_cold_5();
    return 0;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  if (!FormatDescription)
  {
    FigGetClosestRandomAccessPointInAudioSBuf_cold_4();
    return 0;
  }

  if (CMFormatDescriptionGetMediaType(FormatDescription) != 1936684398)
  {
    FigGetClosestRandomAccessPointInAudioSBuf_cold_1();
    return 0;
  }

  if (!FigAudioFormatDescriptionEmploysDependentPackets())
  {
    *&v30.value = *&a2->value;
    v30.epoch = a2->epoch;
    NumSamples = CMSampleBufferGetNumSamples(sbuf);
    if (NumSamples < 1)
    {
      FigGetClosestRandomAccessPointInAudioSBuf_cold_3();
      return 0;
    }

    v19 = NumSamples;
    v20 = 0;
    while (1)
    {
      memset(&timingInfoOut, 0, sizeof(timingInfoOut));
      if (CMSampleBufferGetSampleTimingInfo(sbuf, v20, &timingInfoOut))
      {
        return 0;
      }

      time1 = timingInfoOut.presentationTimeStamp;
      time2 = v30;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        time2 = timingInfoOut.presentationTimeStamp;
        rhs = timingInfoOut.duration;
        CMTimeAdd(&time1, &time2, &rhs);
        time2 = v30;
        if (CMTimeCompare(&time2, &time1) < 1)
        {
          break;
        }
      }

      if (v19 == ++v20)
      {
        return 0;
      }
    }

    time1 = timingInfoOut.presentationTimeStamp;
    v23 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], sbuf, 1u);
    LOWORD(timingInfoOut.duration.value) = 0;
    Int16IfPresent = FigCFDictionaryGetInt16IfPresent();
    v25 = -SLOWORD(timingInfoOut.duration.value);
    if (v23)
    {
      CFRelease(v23);
    }

    if (!Int16IfPresent)
    {
      v26 = CMSampleBufferGetFormatDescription(sbuf);
      MediaSubType = CMFormatDescriptionGetMediaSubType(v26);
      v25 = 1;
      if (MediaSubType > 1667326831)
      {
        if (MediaSubType > 1902207847)
        {
          if (MediaSubType > 2053202791)
          {
            if (MediaSubType == 2053202792)
            {
              goto LABEL_38;
            }

            v28 = 2053202800;
          }

          else
          {
            if (MediaSubType == 1902207848)
            {
              goto LABEL_38;
            }

            v28 = 1902207856;
          }
        }

        else
        {
          if (MediaSubType > 1885430631)
          {
            if (MediaSubType == 1885430632)
            {
              goto LABEL_38;
            }

            v29 = 25456;
          }

          else
          {
            if (MediaSubType == 1667326832)
            {
              goto LABEL_38;
            }

            v29 = 24931;
          }

          v28 = v29 | 0x70610000;
        }
      }

      else if (MediaSubType <= 1633772388)
      {
        if (MediaSubType == 1633771875)
        {
          goto LABEL_38;
        }

        v28 = 1633772320;
      }

      else
      {
        if ((MediaSubType - 1633772389) <= 0xB && ((1 << (MediaSubType - 101)) & 0x80F) != 0)
        {
          goto LABEL_38;
        }

        v28 = 1667326824;
      }

      if (MediaSubType != v28)
      {
        v25 = MediaSubType == 778924083;
      }
    }

LABEL_38:
    *a4 = time1;
    a4[1].value = v25;
    if (a5)
    {
      *a5 = v20;
    }

    return 1;
  }

  rhs = *a2;
  v11 = CMSampleBufferGetNumSamples(sbuf);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (!SampleAttachmentsArray)
  {
    FigGetClosestRandomAccessPointInAudioSBuf_cold_2();
    return 0;
  }

  v13 = SampleAttachmentsArray;
  if (a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 - 1;
  }

  Count = CFArrayGetCount(SampleAttachmentsArray);
  result = 0;
  if ((v14 & 0x8000000000000000) == 0 && v14 < v11)
  {
    if (a3)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }

    do
    {
      memset(&timingInfoOut, 0, sizeof(timingInfoOut));
      if (CMSampleBufferGetSampleTimingInfo(sbuf, v14, &timingInfoOut))
      {
        return 0;
      }

      if (a3)
      {
        time1 = timingInfoOut.presentationTimeStamp;
        time2 = rhs;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        time1 = timingInfoOut.presentationTimeStamp;
        time2 = rhs;
        if (CMTimeCompare(&time1, &time2) > 0)
        {
          goto LABEL_23;
        }
      }

      if (v14 < Count)
      {
        CFArrayGetValueAtIndex(v13, v14);
      }

      LOWORD(time2.value) = 0;
      if (FigCFDictionaryGetInt16IfPresent())
      {
        time1 = timingInfoOut.presentationTimeStamp;
        epoch = timingInfoOut.presentationTimeStamp.epoch;
        value_low = SLOWORD(time2.value);
        *&a4->value = *&timingInfoOut.presentationTimeStamp.value;
        a4->epoch = epoch;
        a4[1].value = value_low;
        if (a5)
        {
          *a5 = v14;
        }

        return 1;
      }

LABEL_23:
      result = 0;
      v14 += v17;
    }

    while (v14 >= 0 && v14 < v11);
  }

  return result;
}

double FigDecodeTimeForAudioRandomAccessInBufferQueue@<D0>(uint64_t a1@<X8>)
{
  FigBufferQueueCallForEachBufferLastToFirst();
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0;
  return result;
}

uint64_t FigFindAudioRandomAccessPointInBufferAtOrBeforeTime(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  v11 = *a2;
  memset(&v10, 0, sizeof(v10));
  CMSampleBufferGetPresentationTimeStamp(&v10, a1);
  time1 = v10;
  time2 = v11;
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    return 0;
  }

  while (1)
  {
    time1 = v11;
    result = FigGetClosestRandomAccessPointInAudioSBuf(a1, &time1, 0, a2 + 1, 0);
    if (!result)
    {
      break;
    }

    FormatDescription = CMSampleBufferGetFormatDescription(a1);
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
    memset(&time1, 0, sizeof(time1));
    CMTimeMake(&time2, a2[2].value * StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
    v7 = a2[1];
    CMTimeAdd(&time1, &v7, &time2);
    time2 = time1;
    v7 = v11;
    if (CMTimeCompare(&time2, &v7) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    CMTimeMake(&time2, StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
    v7 = a2[1];
    CMTimeSubtract(&v11, &v7, &time2);
  }

  return result;
}

BOOL fsbqs_ValidateSampleBufferForSeam(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  NumSamples = CMSampleBufferGetNumSamples(a1);
  if (CMGetAttachment(a1, *(a2 + 16), 0))
  {
    if (*a2)
    {
      v10 = 3;
      goto LABEL_30;
    }

    *a2 = 1;
  }

  if (NumSamples >= 1)
  {
    memset(&v21, 0, sizeof(v21));
    CMSampleBufferGetDuration(&v21, a1);
    v5 = *MEMORY[0x1E6960CC0];
    *&v20.value = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    v20.epoch = v6;
    v19 = **&MEMORY[0x1E6960C70];
    if (*a2 == 1)
    {
      v13 = v5;
      CountOfSequentialSamplesWithSeamIdentifier = FigGetCountOfSequentialSamplesWithSeamIdentifier(a1, *(a2 + 8), 1, &v20);
      lhs = v21;
      rhs = v20;
      CMTimeSubtract(&time1, &lhs, &rhs);
      v21 = time1;
      if (faq_getFigTimeAttachment(a1, *MEMORY[0x1E6960560], &v19))
      {
        time1 = v19;
        lhs = v20;
        if (CMTimeCompare(&time1, &lhs) >= 1)
        {
          v10 = 7;
          goto LABEL_30;
        }

        lhs = *(a2 + 64);
        rhs = v19;
        CMTimeAdd(&time1, &lhs, &rhs);
        *(a2 + 64) = time1;
      }

      time1 = v21;
      *&lhs.value = v13;
      lhs.epoch = v6;
      if (CMTimeCompare(&time1, &lhs) >= 1 && faq_getFigTimeAttachment(a1, *MEMORY[0x1E6960558], &v19) && (time1 = v19, lhs = v21, CMTimeCompare(&time1, &lhs) >= 1))
      {
        v10 = 8;
      }

      else
      {
        *(a2 + 32) += CountOfSequentialSamplesWithSeamIdentifier;
        if (CountOfSequentialSamplesWithSeamIdentifier >= NumSamples)
        {
          return *a2 == 2;
        }

        memset(&time1, 0, sizeof(time1));
        CMTimeMake(&time1, 1, *(a2 + 48));
        memset(&lhs, 0, sizeof(lhs));
        if (*(a2 + 32) == *(a2 + 24))
        {
          time2 = *(a2 + 40);
          v14 = *(a2 + 64);
          CMTimeSubtract(&rhs, &time2, &v14);
          CMTimeAbsoluteValue(&lhs, &rhs);
          rhs = lhs;
          time2 = time1;
          if (CMTimeCompare(&rhs, &time2) < 1)
          {
            *(a2 + 88) = 0;
LABEL_28:
            *a2 = 2;
            return *a2 == 2;
          }

          v10 = 10;
        }

        else
        {
          v10 = 9;
        }
      }

LABEL_30:
      *(a2 + 88) = v10;
      goto LABEL_28;
    }

    if (*a2)
    {
      return *a2 == 2;
    }

    v12 = v5;
    v8 = FigGetCountOfSequentialSamplesWithSeamIdentifier(a1, *(a2 + 8), 0, &v20);
    lhs = v21;
    rhs = v20;
    CMTimeSubtract(&time1, &lhs, &rhs);
    v21 = time1;
    if (v8 <= 0)
    {
      *(a2 + 88) = 2;
      goto LABEL_28;
    }

    v9 = *(a2 + 24);
    if (v9 >= 1 && v8 != NumSamples)
    {
      v10 = 4;
      goto LABEL_30;
    }

    *(a2 + 24) = v9 + v8;
    lhs = *(a2 + 40);
    rhs = v20;
    CMTimeAdd(&time1, &lhs, &rhs);
    *(a2 + 40) = time1;
    if (faq_getFigTimeAttachment(a1, *MEMORY[0x1E6960558], &v19))
    {
      time1 = v19;
      lhs = v20;
      if (CMTimeCompare(&time1, &lhs) >= 1)
      {
        v10 = 6;
        goto LABEL_30;
      }

      lhs = *(a2 + 40);
      rhs = v19;
      CMTimeSubtract(&time1, &lhs, &rhs);
      *(a2 + 40) = time1;
    }

    time1 = v21;
    *&lhs.value = v12;
    lhs.epoch = v6;
    if (CMTimeCompare(&time1, &lhs) >= 1)
    {
      if (faq_getFigTimeAttachment(a1, *MEMORY[0x1E6960560], &v19))
      {
        time1 = v19;
        lhs = v21;
        if (CMTimeCompare(&time1, &lhs) >= 1)
        {
          v10 = 5;
          goto LABEL_30;
        }
      }
    }
  }

  return *a2 == 2;
}

uint64_t FigBandwidthPeriodicReporterSetReportingAgent(const void *a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (v4)
  {
    v5 = v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      v7 = CFRetain(a1);
    }

    else
    {
      v7 = 0;
    }

    *v5 = v7;
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    v5[1] = v8;
    dispatch_async_f(*(DerivedStorage + 72), v5, bpr_setReportingAgentDispatch);
    return 0;
  }

  else
  {
    FigBandwidthPeriodicReporterSetReportingAgent_cold_1(&v10);
    return v10;
  }
}

void bpr_setReportingAgentDispatch(uint64_t a1)
{
  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  *DerivedStorage = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t RegisterFigBandwidthPeriodicReportingBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t bpr_invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  dispatch_async_f(*(DerivedStorage + 72), a1, bpr_invalidateDispatch);
  return 0;
}

void bpr_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bpr_invalidateOnQueue(a1);
  v3 = *(DerivedStorage + 72);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 72) = 0;
  }
}

void bpr_invalidateDispatch(const void *a1)
{
  bpr_invalidateOnQueue(a1);
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t bpr_logBandwidth(uint64_t a1)
{
  v8[24] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8[0] = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  result = bpr_obtainObservedBandwidthForPreviousInterval(a1, UpTimeNanoseconds - *(DerivedStorage + 104), v8, &v7);
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = dword_1EAF16F80 == 0;
  }

  if (!v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 104) = UpTimeNanoseconds;
  return result;
}

void bpr_timerCallback()
{
  v38 = 0;
  v39 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 64))
    {
      bpr_timerCallback_cold_1();
    }

    else
    {
      v4 = DerivedStorage;
      bpr_logBandwidth(v2);
      v5 = UpTimeNanoseconds - *(v4 + 96);
      if ((v5 + 1000000000) >= *(v4 + 8))
      {
        if (FigCFDictionaryGetCount() >= 1 && !bpr_obtainObservedBandwidthForPreviousInterval(v2, v5, &v39, &v38))
        {
          v20 = v38;
          v19 = v39;
          v21 = CMBaseObjectGetDerivedStorage();
          if (*v21)
          {
            if (!bpr_timerCallback_cold_2(*v21, v21, &v41, cf))
            {
              v22 = v41;
              v23 = cf[0];
              cf[0] = v2;
              cf[1] = v19;
              cf[2] = v20;
              CFDictionaryApplyFunction(*v23, bpr_reportPredictionApplier, cf);
              v24 = *v21;
              if (*v21)
              {
                v25 = v21[1];
                v26 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                if (v26)
                {
                  v26(v24, v22, 0x1F0B64E38, v25 / 0x3B9ACA00, 0);
                }
              }

              v27 = *v21;
              if (*v21)
              {
                v28 = v21[2];
                v29 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                if (v29)
                {
                  v29(v27, v22, 0x1F0B64E58, v28 / 0xF4240, 0);
                }
              }

              v30 = *v21;
              if (*v21)
              {
                v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                if (v31)
                {
                  v31(v30, v22, 0x1F0B64E78, v19, 0);
                }

                v32 = *v21;
                if (*v21)
                {
                  v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v33)
                  {
                    v33(v32, v22, 0x1F0B64E98, v20 / 0xF4240, 0);
                  }
                }
              }

              v34 = CMBaseObjectGetDerivedStorage();
              v35 = (v34 + 14);
              FigNetworkWirelessReportingReportWiFiStats(*v34, v34[14]);
              if (*v35)
              {
                CFRelease(*v35);
                *v35 = 0;
              }

              FigNetworkWirelessReportingInterfaceCopyWifiStats(v35);
              v36 = *v21;
              if (v36)
              {
                v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v37)
                {
                  v37(v36, v22, 113, 0, 0);
                }
              }
            }
          }
        }

        v6 = CMBaseObjectGetDerivedStorage();
        cf[0] = 0;
        FigNetworkWirelessReportingInterfaceCopyWTEPredictionStats(cf);
        if (cf[0])
        {
          FigNetworkWirelessReportingReportWTEPredictions(*v6, cf[0]);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        v7 = CMBaseObjectGetDerivedStorage();
        v8 = (v7 + 40);
        if (*(v7 + 40))
        {
          v9 = v7;
          v10 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v10)
          {
            v11 = v10;
            v12 = CFGetAllocator(v2);
            Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (Mutable)
            {
              v14 = Mutable;
              if ((*v8)(v11, Mutable))
              {
                bpr_timerCallback_cold_3();
                v17 = 0;
              }

              else
              {
                v15 = CFGetAllocator(v2);
                Copy = CFDictionaryCreateCopy(v15, v14);
                v17 = Copy;
                if (Copy)
                {
                  v18 = *(v9 + 88);
                  *(v9 + 88) = Copy;
                  CFRetain(Copy);
                  if (v18)
                  {
                    CFRelease(v18);
                  }

                  *(v9 + 96) = FigGetUpTimeNanoseconds();
                }

                else
                {
                  bpr_timerCallback_cold_4();
                }
              }

              CFRelease(v11);
              CFRelease(v14);
              if (v17)
              {
                CFRelease(v17);
              }
            }

            else
            {
              bpr_timerCallback_cold_5(v11);
            }
          }

          else
          {
            bpr_timerCallback_cold_6();
          }
        }

        else
        {
          bpr_timerCallback_cold_7();
        }
      }
    }

    CFRelease(v2);
  }

  else
  {
    bpr_timerCallback_cold_8();
  }
}

void bpr_timerCancellationCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopyKeyRequestParams(void *a1, CFTypeRef *a2)
{
  v14 = 0;
  v15 = 0;
  cf = 0;
  v13 = 0;
  if (a2)
  {
    v4 = FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifier(a1, &cf);
    if (v4 || (xpc_dictionary_get_int64(a1, ".ks_KeySystem"), xpc_dictionary_get_int64(a1, ".ks_EncryptionMethod"), v5 = xpc_dictionary_get_BOOL(a1, ".ks_SupportsOfflineKey"), xpc_dictionary_get_BOOL(a1, ".ks_IsPreload"), v4 = FigXPCMessageCopyCFString(), v4) || (v4 = FigXPCMessageCopyCFArray(), v4))
    {
      v10 = v4;
    }

    else
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v8 = Mutable;
        FigCFDictionarySetBoolean();
        v9 = FigGetAllocatorForMedia();
        v10 = FigContentKeyRequestParamsCreate(v9, cf, 0, 0, 0, 0, 0, 0, 0, v5, v8, &v13);
        if (!v10)
        {
          *a2 = v13;
          v13 = 0;
        }

        CFRelease(v8);
      }

      else
      {
        FigContentKeyBossClientServerXPC_DeserializeAndCopyKeyRequestParams_cold_1(&v16);
        v10 = v16;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    FigContentKeyBossClientServerXPC_DeserializeAndCopyKeyRequestParams_cold_2(&v16);
    v10 = v16;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v10;
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifiers(void *a1, __CFArray **a2)
{
  value = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    count = xpc_array_get_count(a1);
    if (count < 1)
    {
LABEL_8:
      v12 = 0;
      *a2 = v6;
    }

    else
    {
      v8 = count;
      v9 = 0;
      while (1)
      {
        v10 = xpc_array_get_value(a1, v9);
        v11 = FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifier(v10, &value);
        if (v11)
        {
          break;
        }

        CFArrayAppendValue(v6, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        if (v8 == ++v9)
        {
          goto LABEL_8;
        }
      }

      v12 = v11;
      if (value)
      {
        CFRelease(value);
      }

      CFRelease(v6);
    }
  }

  else
  {
    FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifiers_cold_1(&v15);
    return v15;
  }

  return v12;
}

uint64_t FigNeroidStartServer()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return FigXPCServerStart();
}

uint64_t neroidServer_handleRemoteMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (!OpCode)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    cf = 0;
    OpCode = FigXPCServerLookupAndRetainAssociatedObject();
    if (!OpCode)
    {
      neroidServer_handleRemoteMessage_cold_1(&v5);
      OpCode = v5;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (!OpCode)
    {
      return 4294950606;
    }
  }

  return OpCode;
}

uint64_t FigNeroidStart(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

__CFString *bapspPassthrough_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayAudioChainSubPipet %p>", a1);
  return Mutable;
}

uint64_t bapspPassthrough_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SourceSampleBufferConsumer"))
  {
    v7 = *(DerivedStorage + 40);
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"IsStarted"))
  {
    v8 = MEMORY[0x1E695E4D0];
    if (!*(DerivedStorage + 32))
    {
      v8 = MEMORY[0x1E695E4C0];
    }
  }

  else if (CFEqual(a2, @"SubPipeType"))
  {
    v8 = kFigBufferedAirPlayAudioChainSubPipeSubPipeType_Passthrough;
  }

  else if (CFEqual(a2, @"SpatializationEnabled"))
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  else
  {
    if (CFEqual(a2, @"CurrentFormatDescription"))
    {
      v7 = *(DerivedStorage + 80);
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (!CFEqual(a2, @"IsAudioChainAssembled"))
    {
      if (!CFEqual(a2, @"RemainingInputBufferDuration"))
      {
        return 4294954512;
      }

      v12 = *MEMORY[0x1E695E480];
      v13 = **&MEMORY[0x1E6960CC0];
      v7 = CMTimeCopyAsDictionary(&v13, v12);
      goto LABEL_14;
    }

    v11 = bapspPassthrough_audioChainAssembled();
    v8 = MEMORY[0x1E695E4D0];
    if (!v11)
    {
      v8 = MEMORY[0x1E695E4C0];
    }
  }

  v7 = *v8;
  if (*v8)
  {
LABEL_13:
    v7 = CFRetain(v7);
  }

LABEL_14:
  v9 = 0;
  *a4 = v7;
  return v9;
}

uint64_t bapspPassthrough_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"LoudnessInfo", a2))
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFDictionaryGetTypeID())
      {
        v7 = *(DerivedStorage + 64);
        if (v7)
        {
          CFRelease(v7);
          *(DerivedStorage + 64) = 0;
        }

        *(DerivedStorage + 64) = CFRetain(a3);
        v8 = CMBaseObjectGetDerivedStorage();
        target = 0;
        if (*(v8 + 64))
        {
          v9 = v8;
          v10 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
          if (!v10)
          {
            CMSetAttachment(target, *MEMORY[0x1E6962DF0], *(v9 + 64), 0);
            v11 = *(v9 + 56);
            v12 = target;
            v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v13)
            {
              v14 = 4294954514;
LABEL_25:
              if (target)
              {
                CFRelease(target);
              }

              return v14;
            }

            v10 = v13(v11, v12);
          }

          v14 = v10;
          goto LABEL_25;
        }

        return 0;
      }
    }
  }

  else if (CFEqual(@"AudioProcessingTap", a2) || CFEqual(@"ThreadPriority", a2) || CFEqual(@"TimelineMilestone", a2) || CFEqual(@"AudioProcessingUnits", a2) || CFEqual(@"AudioCurves", a2) || CFEqual(@"SecondaryAudioCurves", a2) || CFEqual(@"ExpectScaledEdits", a2) || CFEqual(@"ApplyTrimAtEndAfterPTS", a2) || CFEqual(@"TimePitchAlgorithm", a2))
  {
    return 0;
  }

  return FigSignalErrorAtGM();
}

uint64_t bapspPassthrough_breakAudioChain()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16FA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *(DerivedStorage + 40);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    return v3(v2, @"DownstreamConsumer", 0);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t bapspPassthrough_audioChainAssembled()
{
  cf = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 40);
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v1)
  {
    return 0;
  }

  if (v1(v0, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf))
  {
    v2 = 1;
  }

  else
  {
    v2 = cf == 0;
  }

  v3 = !v2;
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t bapspPassthrough_startAudioChain()
{
  cf[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  if (dword_1EAF16FA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *(DerivedStorage + 40);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 4294954514;
  }

  v4 = v3(v2, @"DownstreamConsumer", *MEMORY[0x1E695E480], cf);
  v5 = cf[0];
  if (v4)
  {
    goto LABEL_11;
  }

  if (!cf[0])
  {
    v4 = FigSignalErrorAtGM();
    v5 = cf[0];
LABEL_11:
    if (!v5)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  *(DerivedStorage + 32) = 1;
LABEL_7:
  CFRelease(v5);
  return v4;
}

uint64_t bapspPassthrough_assembleAudioChain()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 40);
  v1 = *(DerivedStorage + 48);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v2, @"DownstreamConsumer", v1);
}

uint64_t bapspPassthrough_prepareToFinish(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v4 = *(DerivedStorage + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v4, a2);
}

void bapspPassthrough_postNotification(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v5 = *(DerivedStorage + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __bapspPassthrough_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_35;
  block[4] = a2;
  block[5] = a1;
  block[6] = 0;
  dispatch_async(v5, block);
}

void __bapspPassthrough_postNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 48);
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

uint64_t OUTLINED_FUNCTION_0_65()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_1_62()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t MoviePSSHData_GetPlayReadyProtectionSystemData(__CFString *a1, CFIndex a2, void *a3, _DWORD *a4)
{
  v78 = *MEMORY[0x1E69E9840];
  v70 = 0;
  bzero(__src, 0x800uLL);
  v68 = 0;
  theString = 0;
  if (!a1)
  {
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_7(&v71);
LABEL_36:
    v59 = v71;
    goto LABEL_23;
  }

  if (EC_GetEncryptionScheme(a1, &v70))
  {
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_1(&v71);
    goto LABEL_33;
  }

  if (v70 == 3)
  {
    goto LABEL_6;
  }

  if (!v70)
  {
    fig_log_get_emitter();
    v59 = FigSignalErrorAtGM();
    a1 = 0;
    goto LABEL_23;
  }

  if (EC_HasLegacyConfigInfo(a1))
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  if (EC_HasLegacyConfigInfo(a1))
  {
    LegacyConfigKeyIdentifier = EC_GetLegacyConfigKeyIdentifier(a1);
    if (LegacyConfigKeyIdentifier)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

  LegacyConfigKeyIdentifier = EC_GetPlayReadyKeyIdentifierForRange(a1, a2);
  if (!LegacyConfigKeyIdentifier)
  {
LABEL_29:
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_6(&v71);
LABEL_33:
    a1 = 0;
    goto LABEL_36;
  }

LABEL_9:
  BytePtr = CFDataGetBytePtr(LegacyConfigKeyIdentifier);
  a1 = BytePtr;
  if (!BytePtr)
  {
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_5(&v71);
    goto LABEL_36;
  }

  __src[1] = 65537;
  if ((v8 & 1) == 0)
  {
    strcpy(v77, "<WRMHEADER xmlns=http://schemas.microsoft.com/DRM/2007/03/PlayReadyHeader version=4.0.0.0><DATA><PROTECTINFO><KEYLEN>16</KEYLEN><ALGID>AESCTR</ALGID></PROTECTINFO><KID>");
    v71 = bswap32(*BytePtr);
    v72 = bswap32(*(BytePtr + 2)) >> 16;
    v73 = bswap32(*(BytePtr + 3)) >> 16;
    info = *(BytePtr + 1);
    v17 = *MEMORY[0x1E695E480];
    if (!FigCreateBase64EncodedStringFromBytes())
    {
      v67 = 0;
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      snprintf(&v77[172], 0x74AuLL, "%s", CStringPtrAndBufferToFree);
      free(0);
      Length = CFStringGetLength(theString);
      snprintf(__src + (Length + 182), (1866 - Length), "</KID>");
      snprintf(__src + (Length + 188), (1860 - Length), "</DATA>");
      snprintf(__src + (Length + 195), (1853 - Length), "</WRMHEADER>");
      v55 = Length + 207;
      goto LABEL_18;
    }

    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_2(&v67);
LABEL_40:
    a1 = 0;
    goto LABEL_41;
  }

  v16 = safe_snprintf(v77, 0x7F6uLL, "<WRMHEADER xmlns=http://schemas.microsoft.com/DRM/2007/03/PlayReadyHeader version=4.3.0.0>", v11, v12, v13, v14, v15, usedBufLen);
  snprintf(__src + (v16 + 10), (2038 - v16), "<DATA>");
  v71 = bswap32(a1->isa);
  v72 = bswap32(WORD2(a1->isa)) >> 16;
  v73 = bswap32(HIWORD(a1->isa)) >> 16;
  info = a1->info;
  v17 = *MEMORY[0x1E695E480];
  if (FigCreateBase64EncodedStringFromBytes())
  {
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_3(&v67);
    goto LABEL_40;
  }

  v67 = 0;
  FigCFStringGetCStringPtrAndBufferToFree();
  v23 = safe_snprintf(__src + (v16 + 16), (2032 - v16), "<PROTECTINFO>", v18, v19, v20, v21, v22, usedBufLena) + v16 + 16;
  v34 = v23 + safe_snprintf(__src + v23, (2048 - v23), "<KIDS>", v24, v25, v26, v27, v28, usedBufLenb);
  if (v70 == 3)
  {
    v35 = "AESCTR";
  }

  else
  {
    v35 = "AESCBC";
  }

  v36 = safe_snprintf(__src + v34, (2048 - v34), "<KID ALGID=%s VALUE=%s>", v29, v30, v31, v32, v33, v35) + v34;
  free(v67);
  v42 = safe_snprintf(__src + v36, (2048 - v36), "</KID>", v37, v38, v39, v40, v41, usedBufLenc) + v36;
  v48 = v42 + safe_snprintf(__src + v42, (2048 - v42), "</KIDS>", v43, v44, v45, v46, v47, usedBufLend);
  v54 = v48 + safe_snprintf(__src + v48, (2048 - v48), "</PROTECTINFO>", v49, v50, v51, v52, v53, usedBufLene);
  snprintf(__src + v54, (2048 - v54), "</DATA>");
  snprintf(__src + (v54 + 7), (2041 - v54), "</WRMHEADER>");
  v55 = v54 + 19;
LABEL_18:
  a1 = CFStringCreateWithCString(v17, v77, 0x8000100u);
  v79.length = CFStringGetLength(a1);
  v79.location = 0;
  CFStringGetBytes(a1, v79, 0x100u, 0x3Fu, 0, v77, (2 * v55 - 19), &v68);
  if (HIDWORD(v68))
  {
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_4(&v67);
LABEL_41:
    v59 = v67;
    goto LABEL_23;
  }

  v58 = v68 + 10;
  __src[0] = v68 + 10;
  v76 = v68;
  if (a3)
  {
    memcpy(a3, __src, (v68 + 10));
  }

  v59 = 0;
  if (a4)
  {
    *a4 = v58;
  }

LABEL_23:
  if (theString)
  {
    CFRelease(theString);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  return v59;
}

size_t safe_snprintf(char *a1, size_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  LODWORD(result) = vsnprintf(a1, a2, a3, &a9);
  if (a2 - 1 >= result)
  {
    return result;
  }

  else
  {
    return a2 - 1;
  }
}

void *OUTLINED_FUNCTION_3_46()
{

  return malloc_type_malloc(0xAuLL, 0x100004077774924uLL);
}

uint64_t FigPlayerCentralCreateWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  theString = 0;
  cf = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a4)
  {
    FigPlayerGetClassID();
    v5 = CMDerivedObjectCreate();
    FigSignalErrorAtGM();
    return v5;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t __FigPlayerCentralCreateWithOptions_block_invoke()
{
  result = notify_register_check("com.apple.springboard.lockstate", &gFigPlayerCentralDeviceLockedStateNotifyToken);
  if (!result)
  {
    gFigPlayerCentralDeviceLockedStateNotifyTokenIsValid = 1;
  }

  return result;
}

void playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManager(const void *a1, uint64_t a2, const __CFDictionary *a3, void *a4, void (*a5)(void *, int, unsigned __int8))
{
  v41 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  number = 0;
  v38 = 0;
  valuePtr = 0;
  if (*(DerivedStorage + 8))
  {
    playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManager();
  }

  else
  {
    v10 = DerivedStorage;
    if (*(DerivedStorage + 24))
    {
      if (!*(DerivedStorage + 192))
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        FigBaseObject = FigPlayerGetFigBaseObject(a1);
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          v14 = *MEMORY[0x1E695E480];
          if (!v13(FigBaseObject, @"AllowsAirPlayVideo", *MEMORY[0x1E695E480], &v38))
          {
            v31 = FigGetUpTimeNanoseconds();
            v15 = CMBaseObjectGetDerivedStorage();
            v40 = 0;
            cf = 0;
            v16 = *(v15 + 24);
            if (!v16)
            {
              goto LABEL_15;
            }

            v17 = *(CMBaseObjectGetVTable() + 16);
            if (v17)
            {
              v18 = *(v17 + 48);
              if (v18)
              {
                if (!v18(v16, *MEMORY[0x1E69B0098], v14, &cf))
                {
                  v19 = cf;
                  if (cf != *MEMORY[0x1E695E4D0])
                  {
                    goto LABEL_13;
                  }

                  playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManager();
                }
              }
            }

            v19 = cf;
LABEL_13:
            if (v19)
            {
              CFRelease(v19);
            }

LABEL_15:
            v20 = v40;
            v21 = *(v10 + 24);
            if (!v21 || (v22 = *(CMBaseObjectGetVTable() + 16)) != 0 && (v23 = *(v22 + 48)) != 0 && !v23(v21, *MEMORY[0x1E69B0020], v14, &number))
            {
              if (number)
              {
                CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
                v24 = valuePtr;
              }

              else
              {
                v24 = 0;
              }

              v30 = FigGetUpTimeNanoseconds();
              if (v20 && v38 == *MEMORY[0x1E695E4D0] && v24 != 32 && v24 != 16)
              {
                if (dword_1EAF16FC0)
                {
                  v35 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                *(v10 + 192) = 1;
                if (a1)
                {
                  CFRetain(a1);
                }

                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 3221225472;
                aBlock[2] = ___ZL78playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManagerPKviPK14__CFDictionaryPvPFvS4_ihE_block_invoke;
                aBlock[3] = &__block_descriptor_84_e8_v12__0i8l;
                aBlock[4] = a1;
                aBlock[5] = v31;
                aBlock[6] = UpTimeNanoseconds;
                aBlock[7] = v30;
                aBlock[8] = a5;
                aBlock[9] = a4;
                v33 = a2;
                v28 = _Block_copy(aBlock);
                v29 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v29)
                {
                  v29(v20, playercentral_invokeAndReleaseCallbackBlock, v28);
                }

                else if (v28)
                {
                  v28[2](v28, 4294954514);
                  _Block_release(v28);
                }

LABEL_31:
                CFRelease(v20);
                goto LABEL_42;
              }

              if (dword_1EAF16FC0)
              {
                v35 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              FigGetUpTimeNanoseconds();
              if (dword_1EAF16FC0)
              {
                v35 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            a5(a4, a2, 1u);
            if (!v20)
            {
              goto LABEL_42;
            }

            goto LABEL_31;
          }
        }
      }
    }
  }

  a5(a4, a2, 1u);
LABEL_42:
  if (v38)
  {
    CFRelease(v38);
  }

  if (number)
  {
    CFRelease(number);
  }
}

uint64_t playercentral_reflectSubPlayerNotification(uint64_t a1, OpaqueFigPlayer *a2, const void *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  result = CMBaseObjectGetDerivedStorage();
  if (!result)
  {
    return result;
  }

  v6 = result;
  if (*(result + 8))
  {
    return result;
  }

  if (CFEqual(a3, @"RateDidChange"))
  {
    LODWORD(cf[0]) = 0;
    if (FigCFDictionaryGetFloat32IfPresent() || (v24 = *(*(CMBaseObjectGetVTable() + 16) + 48)) != 0 && !v24(a2, cf))
    {
      *(v6 + 212) = cf[0];
    }

    if (*(v6 + 212) == 0.0)
    {
      *(v6 + 192) = 0;
    }

    goto LABEL_54;
  }

  if (CFEqual(a3, @"IsNeroPlaybackActiveDidChange"))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (!*(DerivedStorage + 112))
    {
      v14 = 0;
LABEL_31:
      if (dword_1EAF16FC0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v19 = *(v8 + 24);
      if (!v19)
      {
        goto LABEL_36;
      }

      if (*(v8 + 113) != v14)
      {
        if (v14)
        {
          v21 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v21 = MEMORY[0x1E695E4C0];
        }

        v22 = *(CMBaseObjectGetVTable() + 16);
        if (v22)
        {
          v23 = *(v22 + 56);
          if (v23)
          {
            v23(v19, *MEMORY[0x1E69B0148], *v21);
          }
        }

        *(v8 + 113) = v14;
        goto LABEL_51;
      }

      if (dword_1EAF16FC0)
      {
LABEL_36:
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_51:
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }

    cf[0] = 0;
    BOOLean = 0;
    v9 = *(DerivedStorage + 16);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = v10(v9, 0, cf);
    v12 = cf[0];
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = cf[0] == 0;
    }

    if (v13)
    {
      v14 = 0;
      goto LABEL_29;
    }

    FigBaseObject = FigPlayerGetFigBaseObject(*(v8 + 16));
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17 && (v17(FigBaseObject, @"IsNeroPlaybackActive", 0, &BOOLean), BOOLean))
    {
      v14 = CFBooleanGetValue(BOOLean) != 0;
      if (BOOLean)
      {
        CFRelease(BOOLean);
      }
    }

    else
    {
LABEL_27:
      v14 = 0;
    }

    v12 = cf[0];
LABEL_29:
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_31;
  }

  if (CFEqual(a3, @"CurrentItemDidChange"))
  {
    playercentral_establishIfPlayerIsSilentAndTellMXSession(a2, 0);
LABEL_54:
    playercentral_updateCMSessionIsPlayingState(a2);
    playercentral_updateVideoPlaybackAssertion(a2);
    goto LABEL_51;
  }

  if (CFEqual(a3, @"IsBufferedAirPlayActiveDidChange"))
  {
    LOBYTE(cf[0]) = 0;
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      *(v6 + 114) = cf[0];
      playercentral_updateSessionMutePriority(a2);
    }

    goto LABEL_51;
  }

  if (!CFEqual(a3, @"AudioHardwareFormatChanged"))
  {
    goto LABEL_51;
  }

  FigCFDictionaryGetStringValue();
  result = FigCFEqual();
  v15 = result != 0;
  if (*(v6 + 115) != v15)
  {
    *(v6 + 115) = v15;

    return playercentral_updateSessionMutePriority(a2);
  }

  return result;
}

uint64_t playercentral_Invalidate(OpaqueFigPlayer *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v3 = DerivedStorage;
    *(DerivedStorage + 8) = 1;
    if (dword_1EAF16FC0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v3 + 16))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigBaseObject = FigPlayerGetFigBaseObject(*(v3 + 16));
      v6 = *(CMBaseObjectGetVTable() + 8);
      if (*v6 >= 2uLL)
      {
        v7 = v6[8];
        if (v7)
        {
          v7(FigBaseObject);
        }
      }
    }

    if (*(v3 + 24))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      if (*(v3 + 72))
      {
        if (dword_1EAF16FC0)
        {
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v9 = *(v3 + 24);
        if (v9)
        {
          v10 = *(CMBaseObjectGetVTable() + 16);
          if (v10)
          {
            v11 = *(v10 + 56);
            if (v11)
            {
              v11(v9, *MEMORY[0x1E69B04A0], 0);
            }
          }

          v12 = *(v3 + 24);
          if (v12)
          {
            v13 = *(CMBaseObjectGetVTable() + 16);
            if (v13)
            {
              v14 = *(v13 + 56);
              if (v14)
              {
                v14(v12, *MEMORY[0x1E69B04A8], *MEMORY[0x1E695E4C0]);
              }
            }
          }
        }

        *(v3 + 72) = 0;
      }
    }

    v15 = *(v3 + 48);
    if (v15)
    {
      CFRelease(v15);
      *(v3 + 48) = 0;
    }

    if (*(v3 + 64))
    {
      FigCFWeakReferenceTableCopyValues();
    }

    v16 = *(v3 + 16);
    if (v16)
    {
      v17 = *(v3 + 184);
      if (v17)
      {
        v18 = *(*(CMBaseObjectGetVTable() + 16) + 136);
        if (v18)
        {
          v18(v16, v17);
        }

        v19 = *(v3 + 184);
        if (v19)
        {
          CFRelease(v19);
          *(v3 + 184) = 0;
        }
      }

      v20 = FigPlayerGetFigBaseObject(*(v3 + 16));
      if (v20)
      {
        v21 = v20;
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v22)
        {
          v22(v21);
        }
      }
    }

    v23 = *(v3 + 24);
    if (v23)
    {
      if (*(v3 + 113))
      {
        if (!dword_1EAF16FC0 || (v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v23 = *(v3 + 24)) != 0))
        {
          v25 = *(CMBaseObjectGetVTable() + 16);
          if (v25)
          {
            v26 = *(v25 + 56);
            if (v26)
            {
              v26(v23, *MEMORY[0x1E69B0148], *MEMORY[0x1E695E4C0]);
            }
          }
        }
      }

      if (*(v3 + 168) == 2 || *(v3 + 172) == 2)
      {
        v27 = *(v3 + 24);
        if (v27)
        {
          v28 = *(CMBaseObjectGetVTable() + 16);
          if (v28)
          {
            v29 = *(v28 + 56);
            if (v29)
            {
              v29(v27, *MEMORY[0x1E69B0130], *MEMORY[0x1E69AFA38]);
            }
          }
        }
      }

      if (*(v3 + 97) == 1)
      {
        playercentral_updateAndSetAudioSessionPlayingState(a1, 0);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v30 = *(v3 + 24);
      if (v30)
      {
        CFRelease(v30);
        *(v3 + 24) = 0;
      }
    }

    v31 = *(v3 + 80);
    if (v31)
    {
      CFRelease(v31);
      *(v3 + 80) = 0;
    }

    if (*(v3 + 88))
    {
      FigSimpleMutexDestroy();
      *(v3 + 88) = 0;
    }
  }

  return 0;
}

void playercentral_Finalize(OpaqueFigPlayer *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  playercentral_Invalidate(a1);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 160);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 160) = 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  v6 = *(DerivedStorage + 200);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 200) = 0;
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v8 = *(DerivedStorage + 104);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 104) = 0;
  }

  v9 = *(DerivedStorage + 128);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 128) = 0;
  }

  v10 = *(DerivedStorage + 144);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 144) = 0;
  }
}

uint64_t playercentral_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || !a4)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v9 = DerivedStorage;
    if (CFEqual(a2, @"IsValid"))
    {
      v10 = MEMORY[0x1E695E4D0];
LABEL_17:
      v12 = *v10;
      goto LABEL_18;
    }

    if (CFEqual(a2, @"AllowsNeroPlayback"))
    {
      v10 = MEMORY[0x1E695E4D0];
      v11 = *(v9 + 98);
      goto LABEL_15;
    }

    if (CFEqual(a2, @"UsesNeroWhileNeroPlayIsActive"))
    {
      v10 = MEMORY[0x1E695E4D0];
      v11 = *(v9 + 99);
      goto LABEL_15;
    }

    if (CFEqual(a2, @"PreventAutomaticBackgroundingDuringVideoPlayback"))
    {
      v10 = MEMORY[0x1E695E4D0];
      v11 = *(v9 + 136);
LABEL_15:
      if (!v11)
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_17;
    }

    if (CFEqual(a2, @"ItemsToPrebuffer"))
    {
      v12 = *(v9 + 200);
      if (!v12)
      {
        v13 = 0;
        goto LABEL_19;
      }

LABEL_18:
      v13 = CFRetain(v12);
LABEL_19:
      result = 0;
      *a4 = v13;
      return result;
    }

    if (CFEqual(a2, @"Topology"))
    {
      v14 = *(v9 + 16);

      return FPSupport_CreatePlayerTopology(a3, @"Central", v14, a4);
    }

    else
    {
      v15 = *(v9 + 16);
      if (v15)
      {
        FigBaseObject = FigPlayerGetFigBaseObject(v15);

        return CMBaseObjectCopyProperty(FigBaseObject, a2, a3, a4);
      }

      else
      {
        return 4294954513;
      }
    }
  }
}

void playercentral_preferredVolumeChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AED78]);
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{Value, @"AVController_Volume", CFDictionaryGetValue(a5, *MEMORY[0x1E69AED70]), *MEMORY[0x1E69AED70], 0}];
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
}

void playercentral_activeNeroVisualStreamInfoChangedNotificationCallback(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = DerivedStorage;
    if (!*(DerivedStorage + 8))
    {
      v5 = *(DerivedStorage + 104);
      if (v5)
      {
        if (a2)
        {
          CFRetain(a2);
          v5 = *(v4 + 104);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZL67playercentral_activeNeroVisualStreamInfoChangedNotificationCallbackP26opaqueCMNotificationCenterPKvPK10__CFStringS2_S2__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a2;
        dispatch_async(v5, block);
      }
    }
  }
}

uint64_t playercentral_InvalidateItem(const void *a1, const void *a2, void *a3)
{
  result = FigPlaybackItemGetFigBaseObject(a2);
  if (result)
  {
    v4 = result;
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 8);
    result = VTable + 8;
    v7 = *(v6 + 24);
    if (v7)
    {

      return v7(v4);
    }
  }

  return result;
}

uint64_t playercentral_updateAndSetAudioSessionPlayingState(OpaqueFigPlayer *a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 97) = a2;
  v4 = *(result + 24);
  if (v4)
  {
    v5 = (a2 ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = VTable + 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 56);
      if (v9)
      {
        v10 = *MEMORY[0x1E69B00C0];
        v11 = *v5;

        return v9(v4, v10, v11);
      }
    }
  }

  return result;
}

void playercentral_mutePriorityChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 24) == a4)
  {
    FigCFDictionaryGetBooleanIfPresent();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    if (dword_1EAF16FC0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    playercentral_mutePriorityChangedNotification();
  }
}

void ___ZL67playercentral_activeNeroVisualStreamInfoChangedNotificationCallbackP26opaqueCMNotificationCenterPKvPK10__CFStringS2_S2__block_invoke(uint64_t a1)
{
  playercentral_updateNeroStatusBasedOnRouteAndSetting(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void playercentral_updateNeroStatusBasedOnRouteAndSetting(OpaqueFigPlayer *a1)
{
  v23[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  theDict = 0;
  if (!*(DerivedStorage + 8))
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 24);
    if (v4)
    {
      v5 = *MEMORY[0x1E695E480];
      v6 = *(CMBaseObjectGetVTable() + 16);
      if (v6 && (v7 = *(v6 + 8)) != 0 && (v7(v4, @"FAS_NeroRouteInformation", v5, &theDict), theDict))
      {
        FigCFDictionaryGetBooleanIfPresent();
        if (!v22)
        {
          goto LABEL_24;
        }

        Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962560]);
        if (Value)
        {
          v9 = Value;
          v10 = *(v3 + 16);
          if (v10)
          {
            FigBaseObject = FigPlayerGetFigBaseObject(v10);
            v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v12)
            {
              v12(FigBaseObject, @"NeroDisplaySize", v9);
            }
          }
        }

        v13 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962588]);
      }

      else
      {
        v13 = 0;
      }

      if (v22)
      {
        v14 = *(v3 + 112);
        if (!*(v3 + 112))
        {
          v15 = CMBaseObjectGetDerivedStorage();
          if (v15[98] && v15[99] && v15[100] && (!*(v3 + 56) || gFigPlayerCentralDeviceLockedStateNotifyTokenIsValid == 1 && SBSGetScreenLockStatus()))
          {
            if (dword_1EAF16FC0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(v3 + 112) = 1;
            if (*(v3 + 16))
            {
              v23[0] = 0;
              fpc_createSendToNeroSettingsDictionary(v5, v22, v13, v23);
              v18 = *(v3 + 16);
              v19 = v23[0];
              v20 = FigPlayerGetFigBaseObject(v18);
              CMBaseObjectSetProperty(v20, @"SendToNero", v19);
              if (v19)
              {
                CFRelease(v19);
              }
            }

            goto LABEL_35;
          }

          v14 = *(v3 + 112);
        }

        if (v14 == 1)
        {
          v17 = CMBaseObjectGetDerivedStorage();
          if (!v17[98] || !v17[99] || !v17[100] || *(v3 + 56) && (gFigPlayerCentralDeviceLockedStateNotifyTokenIsValid != 1 || !SBSGetScreenLockStatus()))
          {
            goto LABEL_34;
          }
        }

        goto LABEL_35;
      }

LABEL_24:
      if (*(v3 + 112) == 1)
      {
LABEL_34:
        playercentral_turnOffNeroPlayback(a1);
      }

LABEL_35:
      if (theDict)
      {
        CFRelease(theDict);
      }
    }
  }
}

void fpc_createSendToNeroSettingsDictionary(const __CFAllocator *a1, int a2, const void *a3, __CFDictionary **a4)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    if (a2)
    {
      v9 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v9 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"Visuals", v9);
    if (a3)
    {
      CFDictionarySetValue(v8, @"NeroTransport", a3);
    }

    *a4 = v8;
  }

  else
  {

    FigSignalErrorAtGM();
  }
}

void playercentral_turnOffNeroPlayback(OpaqueFigPlayer *a1)
{
  v7[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16FC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 112) = 0;
  if (*(DerivedStorage + 16))
  {
    v7[0] = 0;
    fpc_createSendToNeroSettingsDictionary(*MEMORY[0x1E695E480], 0, 0, v7);
    v3 = *(DerivedStorage + 16);
    v4 = v7[0];
    FigBaseObject = FigPlayerGetFigBaseObject(v3);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, @"SendToNero", v4);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke(uint64_t a1)
{
  playercentral_updateNeroStatusBasedOnRouteAndSetting(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_22(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v4 + 98) = v2;
  playercentral_updateNeroStatusBasedOnRouteAndSetting(v3);
  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v4 + 99) = v2;
  playercentral_updateNeroStatusBasedOnRouteAndSetting(v3);
  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v4 + 100) = v2;
  playercentral_updateNeroStatusBasedOnRouteAndSetting(v3);
  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_4(uint64_t a1)
{
  playercentral_updateNeroStatusBasedOnRouteAndSetting(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void playercentral_updateVideoPlaybackAssertion(OpaqueFigPlayer *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    playercentral_updateVideoPlaybackAssertion();
  }

  else
  {
    v3 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    v4 = *(v3 + 128);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZL42playercentral_updateVideoPlaybackAssertionP15OpaqueFigPlayer_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_async(v4, v5);
  }
}

uint64_t FigPlayerCopyPlayQueueItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 32);
  if (v9)
  {

    return v9(a1, a2, a3);
  }

  return result;
}

uint64_t ___ZL29fpc_neroVideoPlaybackDisabledv_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_42 = result != 0;
  return result;
}

uint64_t itemcentral_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    v4 = DerivedStorage;
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    v6 = CMBaseObjectGetDerivedStorage();
    *(v4 + 16) = 1;
    if (*(v4 + 8))
    {
      if (v6)
      {
        FigCFWeakReferenceTableRemoveValue();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v4 + 8));
      v8 = *(CMBaseObjectGetVTable() + 8);
      if (*v8 >= 2uLL)
      {
        v9 = v8[8];
        if (v9)
        {
          v9(FigBaseObject);
        }
      }

      v10 = FigPlaybackItemGetFigBaseObject(*(v4 + 8));
      if (v10)
      {
        v11 = v10;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v12)
        {
          v3 = v12(v11);
          if (!v5)
          {
            return v3;
          }
        }

        else
        {
          v3 = 4294954514;
          if (!v5)
          {
            return v3;
          }
        }
      }

      else
      {
        v3 = 4294954516;
        if (!v5)
        {
          return v3;
        }
      }
    }

    else
    {
      v3 = 0;
      if (!v5)
      {
        return v3;
      }
    }

    playercentral_removeItemFromPlayQueueWithoutInformingSubPlayer(v5, a1);
    CFRelease(v5);
    return v3;
  }

  return 0;
}

void itemcentral_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemcentral_Invalidate(a1);
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t itemcentral_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyProperty(&v12);
    return v12;
  }

  else if (a4)
  {
    v8 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v8 + 8));
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {

        return v10(FigBaseObject, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_CopyProperty(&v13);
      return v13;
    }
  }

  else
  {
    itemcentral_CopyProperty(&v14);
    return v14;
  }
}

void itemcentral_reflectSubItemNotification(uint64_t a1, CFTypeRef a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!*(DerivedStorage + 16))
    {
      v9 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v9)
      {
        v10 = v9;
        if (CFEqual(a3, @"ItemWasRemovedFromPlayQueue"))
        {
          if (!a5 || (v11 = *MEMORY[0x1E695E4D0], v11 != CFDictionaryGetValue(a5, @"AsRequested")))
          {
            playercentral_removeItemFromPlayQueueWithoutInformingSubPlayer(v10, a2);
          }

          goto LABEL_10;
        }

        if (CFEqual(a3, @"HasEnabledVideoChanged"))
        {
          playercentral_updateVideoPlaybackAssertion(v10);
        }

        else if (CFEqual(a3, @"HasEnabledAudioChanged"))
        {
          cf = 0;
          FigPlayerCopyPlayQueueItem(v10, 0, &cf);
          v12 = cf;
          if (cf == a2)
          {
            v16 = 0;
            v13 = *MEMORY[0x1E695E480];
            FigBaseObject = FigPlaybackItemGetFigBaseObject(cf);
            CMBaseObjectCopyProperty(FigBaseObject, @"HasEnabledAudio", v13, &v16);
            if (v16 == *MEMORY[0x1E695E4D0])
            {
              v15 = 5;
            }

            else
            {
              v15 = 6;
            }

            playercentral_establishIfPlayerIsSilentAndTellMXSession(v10, v15);
            if (v16)
            {
              CFRelease(v16);
            }

            v12 = cf;
            if (!cf)
            {
              goto LABEL_10;
            }
          }

          else if (!cf)
          {
            goto LABEL_10;
          }

          CFRelease(v12);
        }

LABEL_10:
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v10);
      }
    }
  }
}

uint64_t itemcentral_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  if (*(CMBaseObjectGetDerivedStorage() + 16))
  {
    itemcentral_handleSetProperty(&v15);
    return v15;
  }

  else if (itemcentral_isParentPlayerValid())
  {
    *a5 = 0;
    if (a3)
    {
      v12 = CFRetain(a3);
    }

    else
    {
      v12 = 0;
    }

    *a6 = v12;
    if (a4)
    {
      v13 = CFRetain(a4);
    }

    else
    {
      v13 = 0;
    }

    result = 0;
    *a7 = v13;
  }

  else
  {
    itemcentral_handleSetProperty(&v16);
    return v16;
  }

  return result;
}

uint64_t itemcentral_GetDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_GetDuration(&v8);
    return v8;
  }

  else
  {
    v4 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v5 = *(v4 + 8);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v6)
      {

        return v6(v5, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_GetDuration(&v9);
      return v9;
    }
  }
}

uint64_t itemcentral_SetCurrentTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_SetCurrentTime(&v12);
    return v12;
  }

  v6 = DerivedStorage;
  if (!itemcentral_isParentPlayerValid())
  {
    itemcentral_SetCurrentTime(&v12);
    return v12;
  }

  v7 = *(v6 + 8);
  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3);
}

uint64_t itemcentral_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_GetCurrentTime(&v8);
    return v8;
  }

  else
  {
    v4 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v5 = *(v4 + 8);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v6)
      {

        return v6(v5, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_GetCurrentTime(&v9);
      return v9;
    }
  }
}

uint64_t itemcentral_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyTrackProperty(&v14);
    return v14;
  }

  else if (a5)
  {
    v10 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v11 = *(v10 + 8);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
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
      itemcentral_CopyTrackProperty(&v15);
      return v15;
    }
  }

  else
  {
    itemcentral_CopyTrackProperty(&v16);
    return v16;
  }
}

uint64_t itemcentral_CopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyCommonMetadata(&v12);
    return v12;
  }

  else
  {
    v8 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v9 = *(v8 + 8);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
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
      itemcentral_CopyCommonMetadata(&v13);
      return v13;
    }
  }
}

uint64_t itemcentral_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyChapterImageData(&v12);
    return v12;
  }

  else
  {
    v8 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v9 = *(v8 + 8);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 72);
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
      itemcentral_CopyChapterImageData(&v13);
      return v13;
    }
  }
}

uint64_t itemcentral_GetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_GetNextThumbnailTime(&v14);
    return v14;
  }

  v8 = DerivedStorage;
  if (!itemcentral_isParentPlayerValid())
  {
    itemcentral_GetNextThumbnailTime(&v14);
    return v14;
  }

  v9 = *(v8 + 8);
  v12 = *a2;
  v13 = *(a2 + 2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v10)
  {
    return 4294954514;
  }

  v14 = v12;
  v15 = v13;
  return v10(v9, &v14, a3, a4);
}

uint64_t itemcentral_SetCurrentTimeWithRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = *(a2 + 16);
  v8 = *a4;
  v9 = *(a4 + 16);
  v6 = *a5;
  v7 = *(a5 + 16);
  return itemcentral_SetCurrentTimeWithRangeAndID(a1, &v10, a3, &v8, &v6, 0);
}

uint64_t itemcentral_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_SetTrackProperty(&v12);
    return v12;
  }

  else
  {
    v8 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v9 = *(v8 + 8);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 112);
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
      itemcentral_SetTrackProperty(&v13);
      return v13;
    }
  }
}

uint64_t itemcentral_CopyFormatReader(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyFormatReader(&v8);
    return v8;
  }

  else
  {
    v4 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v5 = *(v4 + 8);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v6)
      {

        return v6(v5, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_CopyFormatReader(&v9);
      return v9;
    }
  }
}

uint64_t itemcentral_SeekToDateWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 16))
    {
      itemcentral_SeekToDateWithID(&v10);
      return v10;
    }

    else if (itemcentral_isParentPlayerValid())
    {
      v8 = *(v7 + 8);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (v9)
      {

        return v9(v8, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_SeekToDateWithID(&v11);
      return v11;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t itemcentral_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_SetCurrentTimeWithRangeAndID(&v26);
    return v26;
  }

  v12 = DerivedStorage;
  if (!itemcentral_isParentPlayerValid())
  {
    itemcentral_SetCurrentTimeWithRangeAndID(&v26);
    return v26;
  }

  v13 = *(v12 + 8);
  v20 = *a2;
  v21 = *(a2 + 2);
  v18 = *a4;
  v19 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 2);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v14)
  {
    return 4294954514;
  }

  v26 = v20;
  v27 = v21;
  v24 = v18;
  v25 = v19;
  v22 = v16;
  v23 = v17;
  return v14(v13, &v26, a3, &v24, &v22, a6);
}

uint64_t itemcentral_CopyAsset(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyAsset(&v8);
    return v8;
  }

  else
  {
    v4 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v5 = *(v4 + 8);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (v6)
      {

        return v6(v5, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_CopyAsset(&v9);
      return v9;
    }
  }
}

uint64_t itemcentral_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_ExtractAndRetainNextSampleBuffer(&v12);
    return v12;
  }

  else
  {
    v8 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v9 = *(v8 + 8);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 168);
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
      itemcentral_ExtractAndRetainNextSampleBuffer(&v13);
      return v13;
    }
  }
}

uint64_t itemcentral_SetCurrentTimeWithOptions(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_SetCurrentTimeWithOptions(&v12);
    return v12;
  }

  v6 = DerivedStorage;
  if (!itemcentral_isParentPlayerValid())
  {
    itemcentral_SetCurrentTimeWithOptions(&v12);
    return v12;
  }

  v7 = *(v6 + 8);
  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3);
}

uint64_t playercentral_GetRate(OpaqueFigPlayer *a1, float *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || (v5 = *(DerivedStorage + 16)) == 0)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v6)
    {

      return v6(v5, a2);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t playercentral_StartPreroll(OpaqueFigPlayer *a1, float a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || (v7 = *(DerivedStorage + 16)) == 0)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v8)
    {
      v9.n128_f32[0] = a2;

      return v8(v7, a3, v9);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t playercentral_StepByCount(OpaqueFigPlayer *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || (v5 = *(DerivedStorage + 16)) == 0)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v6)
    {

      return v6(v5, a2);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t playercentral_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5 || !*(DerivedStorage + 16))
  {
    return FigSignalErrorAtGM();
  }

  CFGetAllocator(a1);
  FigPlaybackItemGetClassID();
  v8 = CMDerivedObjectCreate();
  FigSignalErrorAtGM();
  return v8;
}

uint64_t playercentral_ReevaluateRouteConfiguration(OpaqueFigPlayer *a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFCopyCompactDescription();
  v5 = *(DerivedStorage + 16);
  if (!v5)
  {
    v6 = 0;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_3;
  }

  v6 = FigPlayerReevaluateRouteConfigurationForReason(v5, a2, @" -> central sub-player");
  if (v4)
  {
LABEL_3:
    CFRelease(v4);
  }

  return v6;
}

uint64_t playercentral_AddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v4)
    {

      return v4(v3, a2);
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

uint64_t playercentral_RemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v4)
    {

      return v4(v3, a2);
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

uint64_t playercentral_CopyDisplayedCVPixelBuffer(OpaqueFigPlayer *a1, const __CFDictionary *a2, __CVBuffer **a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v6)
    {

      return v6(v5, a2, a3);
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

uint64_t playercentral_BeginInterruption(OpaqueFigPlayer *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || (v3 = *(DerivedStorage + 16)) == 0)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v4 = *(CMBaseObjectGetVTable() + 24);
    if (v4 && (v5 = *(v4 + 8)) != 0)
    {

      return v5(v3);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t playercentral_EndInterruption(OpaqueFigPlayer *a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || (v5 = *(DerivedStorage + 16)) == 0)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v6 = *(CMBaseObjectGetVTable() + 24);
    if (v6 && (v7 = *(v6 + 16)) != 0)
    {

      return v7(v5, a2);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t playercentral_SetConnectionActive(OpaqueFigPlayer *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {

    return FigSignalErrorAtGM();
  }

  v5 = DerivedStorage;
  if (a2)
  {
    v6 = *(DerivedStorage + 16);
    if (!v6)
    {
LABEL_10:
      result = 0;
      *(v5 + 96) = 1;
      return result;
    }

    v7 = *(CMBaseObjectGetVTable() + 24);
    if (v7)
    {
      v8 = *(v7 + 24);
      if (v8)
      {
        result = v8(v6, a2);
        if (result)
        {
          return result;
        }

        goto LABEL_10;
      }
    }

    return 4294954514;
  }

  *(DerivedStorage + 96) = 0;
  v9 = *(DerivedStorage + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = *(CMBaseObjectGetVTable() + 24);
  if (!v10)
  {
    return 4294954514;
  }

  v11 = *(v10 + 24);
  if (!v11)
  {
    return 4294954514;
  }

  return v11(v9, 0);
}

uint64_t playercentral_DuckVolume(OpaqueFigPlayer *a1, uint64_t a2, float a3, float a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = *(CMBaseObjectGetVTable() + 32);
  if (!v8)
  {
    return 4294954514;
  }

  v11 = *(v8 + 8);
  if (!v11)
  {
    return 4294954514;
  }

  v9.n128_f32[0] = a3;
  v10.n128_f32[0] = a4;

  return v11(v7, a2, v9, v10);
}

uint64_t playercentral_SilentMute(OpaqueFigPlayer *a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(CMBaseObjectGetVTable() + 32);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v3, a2);
}

void playercentral_invokeAndReleaseCallbackBlock(void (**a1)(void))
{
  if (a1)
  {
    a1[2]();

    _Block_release(a1);
  }
}

void ___ZL78playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManagerPKviPK14__CFDictionaryPvPFvS4_ihE_block_invoke(uint64_t a1)
{
  if (dword_1EAF16FC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigGetUpTimeNanoseconds();
  if (dword_1EAF16FC0)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  (*(a1 + 64))(*(a1 + 72), *(a1 + 80), 1);
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t OUTLINED_FUNCTION_13_14()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFTypeID OUTLINED_FUNCTION_30_9()
{

  return CFGetTypeID(v0);
}

uint64_t OUTLINED_FUNCTION_31_9()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t FigTTMLCaptionGroupConverterFromSampleBufferCreate(void *a1, uint64_t a2, void *a3)
{
  cf = 0;
  v11 = 0;
  if (!a1)
  {
    FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_3(&v12);
LABEL_11:
    v6 = v12;
    goto LABEL_15;
  }

  if (!a3)
  {
    FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_2(&v12);
    goto LABEL_11;
  }

  if (!*a1)
  {
    FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_1(&v12);
    goto LABEL_11;
  }

  FigCaptionGroupConverterFromSampleBufferGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = TTMLParserCreate(v11, fcgcfs_ttml_DeliverFigCaptionSampleBuffer, 0, &cf);
    if (!v6)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = *a1;
      v8 = v11;
      *(DerivedStorage + 16) = cf;
      *a3 = v8;
      return v6;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

LABEL_15:
  if (v11)
  {
    CFRelease(v11);
  }

  return v6;
}

uint64_t fcgcfs_ttml_DeliverFigCaptionSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fcgcfs_ttml_DeliverFigCaptionSampleBuffer_cold_2(&v10);
    return LODWORD(v10.start.value);
  }

  v4 = DerivedStorage;
  CaptionGroup = FigSampleBufferGetCaptionGroup();
  if (!CaptionGroup)
  {
    fcgcfs_ttml_DeliverFigCaptionSampleBuffer_cold_1(&v10);
    return LODWORD(v10.start.value);
  }

  v6 = CaptionGroup;
  memset(&v16, 0, sizeof(v16));
  CMSampleBufferGetPresentationTimeStamp(&v16, *(v4 + 24));
  memset(&v15, 0, sizeof(v15));
  CMSampleBufferGetOutputPresentationTimeStamp(&v15, *(v4 + 24));
  memset(&v14, 0, sizeof(v14));
  v10.start = v16;
  rhs = v15;
  CMTimeSubtract(&v14, &v10.start, &rhs);
  memset(&v12, 0, sizeof(v12));
  CMSampleBufferGetPresentationTimeStamp(&v10.start, a2);
  rhs = v14;
  CMTimeSubtract(&v12, &v10.start, &rhs);
  memset(&v11, 0, sizeof(v11));
  CMSampleBufferGetOutputDuration(&v10.start, a2);
  rhs = v12;
  CMTimeRangeMake(&v11, &rhs, &v10.start);
  v8 = *v4;
  v7 = *(v4 + 8);
  v10 = v11;
  return v8(v6, &v10, v7);
}

void fcgcfs_ttml_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *fcgcfs_ttml_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTTMLCaptionGroupConverterFromSampleBufferf %p>", a1);
  return Mutable;
}

uint64_t FigXPCVideoTargetServerCopyVideoTargetForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == FigVideoTargetGetTypeID())
    {
      return 0;
    }

    FigXPCVideoTargetServerCopyVideoTargetForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}