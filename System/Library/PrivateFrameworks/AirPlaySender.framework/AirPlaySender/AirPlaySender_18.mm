uint64_t endpoint_addEndpointStreamNotificationListeners(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 40);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v3)
  {
    v4 = v3(v2, 88) == 0;
  }

  else
  {
    v4 = 1;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v5 = FigNotificationCenterAddWeakListener();
  if (v5)
  {
    v11 = v5;
    endpoint_addEndpointStreamNotificationListeners_cold_1();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v6 = FigNotificationCenterAddWeakListener();
    if (v6)
    {
      v11 = v6;
      endpoint_addEndpointStreamNotificationListeners_cold_2();
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v7 = FigNotificationCenterAddWeakListener();
      if (v7)
      {
        v11 = v7;
        endpoint_addEndpointStreamNotificationListeners_cold_3();
      }

      else
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v8 = FigNotificationCenterAddWeakListener();
        if (v8)
        {
          v11 = v8;
          endpoint_addEndpointStreamNotificationListeners_cold_4();
        }

        else if (v4 || !FigCFEqual())
        {
          return 0;
        }

        else
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v9 = FigNotificationCenterAddWeakListener();
          if (v9)
          {
            v11 = v9;
            endpoint_addEndpointStreamNotificationListeners_cold_5();
          }

          else
          {
            CMNotificationCenterGetDefaultLocalCenter();
            v10 = FigNotificationCenterAddWeakListener();
            v11 = v10;
            if (v10)
            {
              endpoint_addEndpointStreamNotificationListeners_cold_6();
            }

            else
            {
              endpoint_handleStreamBadgingFormatInfoChanged(v10, a1);
            }
          }
        }
      }
    }
  }

  return v11;
}

void endpoint_handleStreamTimelineEstablished(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a2);
  v4 = *(DerivedStorage + 576);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __endpoint_handleStreamTimelineEstablished_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a2;
  dispatch_async(v4, block);
}

uint64_t endpoint_handleStreamIsPlayingDidChange(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = CFDictionaryGetInt64() != 0;
  endpoint_handleIdleStateChanged_0(a2, v3);

  return FigSimpleMutexUnlock();
}

void endpoint_handleStreamBadgingFormatInfoChanged(uint64_t a1, const void *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 40);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v4)
  {
    v4(v3, 89);
  }

  v16 = 0;
  v15 = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v12 = -12782;
LABEL_14:
    APSLogErrorAt();
    goto LABEL_15;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = v6(CMBaseObject, @"ActiveBadgingFormatInfo", *MEMORY[0x277CBECE8], &v16);
  if (v8)
  {
    v12 = v8;
    goto LABEL_14;
  }

  if (v16 && (Enum = APSBadgingFormatInfoTypeGetEnum()) != 0)
  {
    endpoint_handleStreamBadgingFormatInfoChanged_cold_1(Enum, &v16, a2, v14);
    v12 = v14[0];
  }

  else
  {
    v15 = APSBadgingFormatInfoTypeResolve();
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = FigCFDictionarySetUInt32();
      if (v12)
      {
        endpoint_handleStreamBadgingFormatInfoChanged_cold_2();
      }

      else
      {
        if (a2)
        {
          CFRetain(a2);
        }

        CFRetain(v11);
        global_queue = dispatch_get_global_queue(21, 0);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __endpoint_updateBadgingFormatInfo_block_invoke;
        v14[3] = &__block_descriptor_48_e5_v8__0l;
        v14[4] = a2;
        v14[5] = v11;
        dispatch_async(global_queue, v14);
      }

      CFRelease(v11);
    }

    else
    {
      endpoint_handleStreamBadgingFormatInfoChanged_cold_3();
      v12 = -6728;
    }
  }

LABEL_15:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v12)
  {
    endpoint_handleStreamBadgingFormatInfoChanged_cold_4();
  }
}

void __endpoint_handleStreamTimelineEstablished_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 600))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      __endpoint_handleStreamTimelineEstablished_block_invoke_cold_1();
    }

    APMetadataSenderSendInitialMetadata(*(*(a1 + 32) + 600));
  }

  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __endpoint_updateBadgingFormatInfo_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  v4 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v4)
  {
    v4(v2, @"updateBadgingFormatInfo", v3, 0, 0);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t endpoint_invalidateRCS()
{
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = FigEndpointRemoteControlSessionGetCMBaseObject();
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

uint64_t endpoint_isVideoPlaybackSessionActive()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 144) != 2)
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 304);
  if (!v2)
  {
    return 0;
  }

  Count = CFSetGetCount(v2);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  CFSetGetValues(*(v1 + 304), v5);
  v6 = 0;
  while (1)
  {
    v7 = APSGetFBOPropertyInt64();
    v8 = APSGetFBOPropertyInt64();
    if (v7 && v8 == 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      v10 = 0;
      goto LABEL_14;
    }
  }

  v10 = 1;
LABEL_14:
  free(v5);
  return v10;
}

uint64_t endpoint_logEventInterval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return endpoint_logEventInterval_cold_1();
  }

  result = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  if (gLogCategory_APEndpoint <= 40)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void endpoint_logEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    APSEventRecorderGetEventTimeRecursive();
    StringWithEventRecorderTime = APSEventRecorderCreateStringWithEventRecorderTime();
    if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (StringWithEventRecorderTime)
    {

      CFRelease(StringWithEventRecorderTime);
    }
  }

  else
  {
    endpoint_logEvent_cold_1();
  }
}

uint64_t __endpoint_stopListeningToSenderSessionAndStreamsNotifications_block_invoke()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 40);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v1)
  {
    v2 = v1(v0, 88) == 0;
  }

  else
  {
    v2 = 1;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  result = FigNotificationCenterRemoveWeakListener();
  if (!v2)
  {
    result = FigCFEqual();
    if (result)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterRemoveWeakListener();
    }
  }

  return result;
}

uint64_t endpoint_unsubscribeRCS()
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  result = FigNotificationCenterRemoveWeakListener();
  if (gLogCategory_APEndpoint <= 50)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t endpoint_unsubscribePlaybackSession()
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t endpoint_handlePlaybackSessionActivationStateChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpoint_updateCurrentVolumeControlType();
  endpoint_updateIsVolumeAndMuteControlSupported();
  endpoint_updateVideoPlaybackIsActive(a2);

  return FigSimpleMutexUnlock();
}

uint64_t endpoint_handlePlaybackSessionIsPlayingDidChange(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = CFDictionaryGetInt64() != 0;
  endpoint_handleIdleStateChanged_0(a2, v3);

  return FigSimpleMutexUnlock();
}

uint64_t endpoint_handleMediaControlConnectedStateChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_handleMediaControlConnectedStateChanged_cold_1();
    if (a5)
    {
      goto LABEL_5;
    }
  }

  else if (a5)
  {
LABEL_5:
    Int64 = CFDictionaryGetInt64();
    v9 = CFDictionaryGetInt64() != 0;
    FigSimpleMutexLock();
    endpoint_updateStatus(a2, Int64, 1);
    *(DerivedStorage + 312) = v9;
    return FigSimpleMutexUnlock();
  }

  return endpoint_handleMediaControlConnectedStateChanged_cold_3();
}

uint64_t endpoint_createAudioHALDevice(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetValue(*(DerivedStorage + 160), a2);
  if (!result)
  {
    if (gLogCategory_APEndpoint > 90)
    {
      return result;
    }

    if (gLogCategory_APEndpoint == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }
    }

    return LogPrintF();
  }

  v6 = result;
  v7 = *MEMORY[0x277CC1960];
  if (CFEqual(a2, *MEMORY[0x277CC1960]))
  {
    result = FigCFEqual();
    v8 = kAPHALAudioDeviceCreationOptionDeviceType_Screen;
    if (!result)
    {
      v8 = kAPHALAudioDeviceCreationOptionDeviceType_Audio;
    }
  }

  else
  {
    result = CFEqual(a2, *MEMORY[0x277CC1970]);
    if (!result)
    {
LABEL_14:
      if (gLogCategory_APEndpoint > 90)
      {
        return result;
      }

      if (gLogCategory_APEndpoint == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          return result;
        }
      }

      return LogPrintF();
    }

    v8 = kAPHALAudioDeviceCreationOptionDeviceType_LowLatencyAudio;
  }

  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_14;
  }

  v10 = CFEqual(a2, v7);
  if (v10)
  {
    v11 = APSGetFBOPropertyInt64() == 0;
  }

  else
  {
    v11 = 0;
  }

  if (APSSettingsIsFeatureEnabled() && FigCFEqual() && !FigCFEqual())
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 160), *MEMORY[0x277CC1968]);
  }

  else
  {
    Value = 0;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13 = *(DerivedStorage + 440);
  v14 = *(DerivedStorage + 200);
  if (FigCFEqual())
  {
    v15 = 75;
  }

  else
  {
    v15 = 0;
  }

  CMBaseObjectGetDerivedStorage();
  APSVolumeConvertSliderValueToDB();
  result = APEndpointTriggerAudioHALDeviceCreationEx(a1, v6, Value, v13, v9, v14, v15, v10, v11);
  if (result)
  {
    return endpoint_createAudioHALDevice_cold_1();
  }

  return result;
}

uint64_t apEndpoint_BorrowScreen()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 120))
  {
    apEndpoint_BorrowScreen_cold_1();
    Value = 4294950573;
    goto LABEL_13;
  }

  if (*(DerivedStorage + 144) != 2)
  {
    goto LABEL_12;
  }

  if (!*(DerivedStorage + 240))
  {
    goto LABEL_12;
  }

  v1 = *(DerivedStorage + 160);
  if (!v1)
  {
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v1, *MEMORY[0x277CC1980]);
  if (Value)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      v3(Value, 0, 0, 0);
    }

LABEL_12:
    Value = 0;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return Value;
}

uint64_t apEndpoint_UnborrowScreen()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 120))
  {
    apEndpoint_UnborrowScreen_cold_1();
    Value = 4294950573;
    goto LABEL_13;
  }

  if (*(DerivedStorage + 144) != 2)
  {
    goto LABEL_12;
  }

  if (!*(DerivedStorage + 240))
  {
    goto LABEL_12;
  }

  v1 = *(DerivedStorage + 160);
  if (!v1)
  {
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v1, *MEMORY[0x277CC1980]);
  if (Value)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v3)
    {
      v3(Value, 0, 0, 0);
    }

LABEL_12:
    Value = 0;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return Value;
}

uint64_t apEndpoint_DuckAudio()
{
  v6 = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v2 = Mutable;
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (CFEqual(TypedValue, *MEMORY[0x277CC0B98]))
    {
      v4 = @"duckAudio";
    }

    else
    {
      if (!CFEqual(TypedValue, *MEMORY[0x277CC0BA0]))
      {
        v6 = -16720;
        goto LABEL_18;
      }

      v4 = @"unduckAudio";
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v6 = CFDictionarySetDouble();
      if (v6)
      {
        apEndpoint_DuckAudio_cold_2();
        goto LABEL_16;
      }
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v6 = CFDictionarySetDouble();
      if (v6)
      {
        apEndpoint_DuckAudio_cold_3();
        goto LABEL_16;
      }
    }

    if (endpoint_isInLocalCluster())
    {
      FigSimpleMutexLock();
      v6 = apEndpoint_sendCommandInternal(FigEndpoint, v4, v2);
      FigSimpleMutexUnlock();
      if (v6)
      {
        if (gLogCategory_APEndpoint > 90)
        {
          goto LABEL_18;
        }

        if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }
      }

      else
      {
        if (gLogCategory_APEndpoint > 50)
        {
          goto LABEL_16;
        }

        if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
        {
          apEndpoint_DuckAudio_cold_4();
        }
      }
    }

    if (!v6)
    {
LABEL_16:
      CFRelease(v2);
      return v6;
    }

LABEL_18:
    APSLogErrorAt();
    goto LABEL_16;
  }

  apEndpoint_DuckAudio_cold_5();
  return 4294950575;
}

uint64_t apEndpoint_SendData(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    apEndpoint_SendData_cold_4();
    v18 = -16720;
LABEL_16:
    v17 = 1;
    goto LABEL_8;
  }

  v11 = *(DerivedStorage + 328);
  if (!v11)
  {
    apEndpoint_SendData_cold_3();
    v18 = -16726;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v11, a2);
  if (!Value)
  {
    apEndpoint_SendData_cold_2();
    v18 = -16725;
    goto LABEL_16;
  }

  v13 = Value;
  v14 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040139F2759uLL);
  if (!v14)
  {
    apEndpoint_SendData_cold_1();
    v18 = -16721;
    goto LABEL_16;
  }

  v15 = v14;
  *v14 = CFRetain(a1);
  v15[1] = CFRetain(a2);
  v15[2] = a4;
  v15[3] = a5;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v16)
  {
    v16(v13, a3, apEndpoint_rcsSendMessageCompletion, v15);
  }

  v17 = 0;
  v18 = 0;
LABEL_8:
  FigSimpleMutexUnlock();
  if (a4 && v17)
  {
    APEndpointCallRCSendDataCompletionAsync(a1, a2, v18, *DerivedStorage, a4, a5);
  }

  return 0;
}

uint64_t apEndpoint_CloseCommChannel(uint64_t a1, const void *a2)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    apEndpoint_CloseCommChannel_cold_3();
LABEL_16:
    v8 = 4294950576;
    goto LABEL_13;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(DerivedStorage + 328);
  if (!v4)
  {
    apEndpoint_CloseCommChannel_cold_2();
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v4, a2);
  if (!Value)
  {
    apEndpoint_CloseCommChannel_cold_1();
    v8 = 4294950571;
    goto LABEL_13;
  }

  v6 = Value;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    v8 = 4294954514;
LABEL_12:
    APSLogErrorAt();
    goto LABEL_13;
  }

  v8 = v7(v6);
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t apEndpoint_AcquireAndCopyResource(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 144) != 2)
  {
    v12 = 4294949690;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v9 = v8;
      Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC09A8]);
      if (Value)
      {
        v11 = Value;
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v13 = *(v9 + 160);
        if (v13)
        {
          v14 = CFDictionaryGetValue(v13, v11);
          if (v14 && (v15 = CFRetain(v14)) != 0)
          {
            v12 = 0;
            *a4 = v15;
          }

          else
          {
            apEndpoint_AcquireAndCopyResource_cold_1(FigEndpoint, v11, &v17);
            v12 = v17;
          }
        }

        else
        {
          apEndpoint_AcquireAndCopyResource_cold_2();
          v12 = 4294950571;
        }

        goto LABEL_23;
      }

      apEndpoint_AcquireAndCopyResource_cold_3();
    }

    else
    {
      apEndpoint_AcquireAndCopyResource_cold_4();
    }

    v12 = 4294950576;
    goto LABEL_23;
  }

  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = 4294950570;
LABEL_23:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t apEndpoint_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 144) != 2)
  {
    v5 = 4294949690;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_9;
  }

  if (!a3)
  {
    v5 = 4294950576;
    goto LABEL_13;
  }

  if (!FigCFEqual())
  {
    v5 = 4294950570;
    goto LABEL_13;
  }

  v5 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  return v5;
}

void apEndpoint_rcsSendMessageCompletion(int a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(a3 + 16);
  if (v6)
  {
    APEndpointCallRCSendDataCompletionAsync(*a3, *(a3 + 8), a1, *DerivedStorage, v6, *(a3 + 24));
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v7 = *(a3 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  free(a3);
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return FigCFDictionarySetValueFromKeyInDict();
}

void OUTLINED_FUNCTION_35_1(uint64_t a1, const void *a2)
{

  endpoint_setPropertyOnMXDescriptor(v2, a2);
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return APEndpointDescriptionGetCMBaseObject(v0);
}

uint64_t APEndpointStreamScreenCreate(const __CFAllocator *a1, const __CFDictionary *a2, CFTypeRef cf, unint64_t a4, const void *a5, const void *a6, const void *a7, CFTypeRef *a8)
{
  v122 = *MEMORY[0x277D85DE8];
  theArray = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v114 = 0x3FF0000000000000;
  v113 = 0;
  v8 = &unk_27CFF1000;
  if (!cf || (v16 = CFGetTypeID(cf), v16 != CFStringGetTypeID()))
  {
    APEndpointStreamScreenCreate_cold_28();
LABEL_272:
    v31 = 4294950536;
    goto LABEL_32;
  }

  if (!a5 || (v17 = CFGetTypeID(a5), v17 != APEndpointDescriptionGetTypeID()))
  {
    APEndpointStreamScreenCreate_cold_27();
    goto LABEL_272;
  }

  if (!a8)
  {
    APEndpointStreamScreenCreate_cold_26();
    goto LABEL_272;
  }

  if (!a7)
  {
    APEndpointStreamScreenCreate_cold_25();
    goto LABEL_272;
  }

  v110 = a8;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"TransportStream");
    if (Value)
    {
      v19 = Value;
      v20 = CFGetTypeID(Value);
      if (v20 == FigTransportStreamGetTypeID())
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    FigCFDictionaryGetDoubleIfPresent();
    FigCFDictionaryGetInt32IfPresent();
    CFDictionaryGetValue(a2, @"LogPrefix");
  }

  else
  {
    v21 = 0;
  }

  if (!(a4 | v21))
  {
    APEndpointStreamScreenCreate_cold_24();
LABEL_209:
    v31 = 4294950536;
    goto LABEL_31;
  }

  if (a4 && v21)
  {
    APEndpointStreamScreenCreate_cold_1();
    goto LABEL_209;
  }

  FigEndpointStreamGetClassID();
  v22 = CMDerivedObjectCreate();
  if (v22)
  {
    v31 = v22;
    APEndpointStreamScreenCreate_cold_2();
    goto LABEL_31;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF();
  *DerivedStorage = dispatch_queue_create(label, 0);
  *(DerivedStorage + 16) = os_transaction_create();
  *(DerivedStorage + 504) = dispatch_queue_create("APEndpointStreamScreen.stats", 0);
  SNPrintF();
  *(DerivedStorage + 96) = dispatch_queue_create(label, 0);
  *(DerivedStorage + 280) = v114;
  *(DerivedStorage + 288) = v113;
  *(DerivedStorage + 8) = CFRetain(cf);
  *(DerivedStorage + 56) = CFRetain(a5);
  *(DerivedStorage + 40) = CFStringCreateF();
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 56));
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v25)
  {
    v26 = *MEMORY[0x277CBECE8];
    v27 = v25(CMBaseObject, @"DisplayDescriptionArray", *MEMORY[0x277CBECE8], &theArray);
    if (!v27)
    {
      if (theArray && CFArrayGetCount(theArray) > 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (ValueAtIndex)
        {
          v29 = ValueAtIndex;
          if (!a6)
          {
            *(DerivedStorage + 72) = CFRetain(ValueAtIndex);
            v30 = 110;
            goto LABEL_37;
          }

          *(DerivedStorage + 72) = CFRetain(a6);
          APEndpointDisplayDescriptionCopyProperty(v29, @"UUID", v26, &v116);
          if (v116)
          {
            APEndpointDisplayDescriptionCopyProperty(*(DerivedStorage + 72), @"UUID", v26, &v115);
            if (FigCFEqual())
            {
              v30 = 110;
            }

            else
            {
              v30 = 111;
            }

LABEL_37:
            *(DerivedStorage + 88) = v30;
            if (a4)
            {
              v33 = CFRetain(a4);
            }

            else
            {
              v33 = 0;
            }

            *(DerivedStorage + 48) = v33;
            if (v21)
            {
              v34 = CFRetain(v21);
            }

            else
            {
              v34 = 0;
            }

            v35 = v110;
            *(DerivedStorage + 128) = v34;
            v36 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *DerivedStorage);
            *(DerivedStorage + 200) = v36;
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 0x40000000;
            handler[2] = __APEndpointStreamScreenCreate_block_invoke;
            handler[3] = &__block_descriptor_tmp_41;
            handler[4] = v118;
            dispatch_source_set_event_handler(v36, handler);
            dispatch_source_set_timer(*(DerivedStorage + 200), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
            dispatch_resume(*(DerivedStorage + 200));
            *(DerivedStorage + 64) = CFRetain(a7);
            v37 = CMBaseObjectGetDerivedStorage();
            if (a2)
            {
              CFDictionaryGetValue(a2, @"EventRecorder");
            }

            v38 = *(v37 + 1152);
            if (v38)
            {
              CFRelease(v38);
              *(v37 + 1152) = 0;
            }

            v39 = APSEventRecorderCreate();
            if (!v39)
            {
              APSEventRecorderAddSignPostForEvent();
              APSEventRecorderAddSignPostForEvent();
              *(DerivedStorage + 1160) = dispatch_queue_create("APEndpointStreamScreen.%{ptr}.RTC", 0);
              *(DerivedStorage + 1168) = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
              v40 = v118;
              v41 = CMBaseObjectGetDerivedStorage();
              v42 = v41;
              v119 = 0;
              if (v41[24])
              {
                APEndpointStreamScreenCreate_cold_5();
                v31 = 4294950534;
LABEL_293:
                v8 = &unk_27CFF1000;
LABEL_294:
                v109 = v8[1002];
                if (v109 <= 90 && (v109 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                screenstream_cleanup();
                APSLogErrorAt();
                goto LABEL_32;
              }

              v8 = &unk_27CFF1000;
              if (v41[25])
              {
                goto LABEL_264;
              }

              LODWORD(cfa) = 0;
              v41[396] = APSGetFBOPropertyInt64() != 0;
              v43 = *(v42 + 6);
              if (v43)
              {
                LODWORD(v43) = APSGetFBOPropertyInt64();
              }

              *(v42 + 299) = v43;
              v42[394] = APSGetFBOPropertyInt64() != 0;
              v42[408] = APSGetFBOPropertyInt64() != 0;
              v42[409] = APDemoManagerIsDemoSession(*(v42 + 7), *(v42 + 6));
              v42[410] = 0;
              if (v42[394])
              {
                v44 = APSCarPlayScreenLatencyMs();
              }

              else
              {
                v44 = APSScreenLatencyMs();
              }

              *(v42 + 297) = v44;
              v45 = APSScreenMediaPresentationLatencyMs();
              if (v45 <= *(v42 + 297))
              {
                v46 = *(v42 + 297);
              }

              else
              {
                v46 = v45;
              }

              *(v42 + 298) = v46;
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              *(v42 + 120) = MillisecondsToUpTicks();
              *(v42 + 242) = 0;
              v42[972] = 0;
              v42[973] = APSGetFBOPropertyInt64() != 0;
              v42[975] = APSGetFBOPropertyInt64() != 0;
              v42[978] = APSGetFBOPropertyInt64() != 0;
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v42[979] = APSGetFBOPropertyInt64() != 0;
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v47 = *(v42 + 5);
              v42[976] = 0;
              *(v42 + 119) = v47;
              v48 = *MEMORY[0x277CBF3A8];
              *(v42 + 248) = *MEMORY[0x277CBF3A8];
              *(v42 + 264) = v48;
              *(v42 + 216) = xmmword_222298980;
              *(v42 + 232) = v48;
              v49 = APEndpointDescriptionGetCMBaseObject(*(v42 + 7));
              v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v50)
              {
                v51 = v50(v49, @"receiverHDRCapability", v26, v42 + 296);
              }

              else
              {
                v51 = -12782;
              }

              LODWORD(cfa) = v51;
              v42[378] = 0;
              *(v42 + 188) = 0;
              v42[381] = 1;
              v42[382] = APSSettingsGetInt64() == 0;
              v42[336] = 0;
              v42[380] = 1;
              *(v42 + 383) = 256;
              *(v42 + 97) = *(v42 + 298);
              v42[379] = APSGetFBOPropertyInt64() != 0;
              *(v42 + 46) = 0;
              v42[395] = 0;
              v42[974] = v42[394] == 0;
              *(v42 + 50) = 0x1E00000000;
              *(v42 + 296) = APSSettingsGetInt64();
              *(v42 + 424) = xmmword_222298990;
              *(v42 + 55) = 0x418312D000000000;
              *(v42 + 57) = 0;
              *(v42 + 58) = 0x415E848000000000;
              *(v42 + 472) = xmmword_2222989A0;
              *(v42 + 61) = 0;
              *(v42 + 62) = 5 * UpTicksPerSecond();
              LODWORD(cfa) = 0;
              *(v42 + 242) = FigGetCFPreferenceNumberWithDefault();
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v42[972] = FigGetCFPreferenceNumberWithDefault();
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v42[976] = FigGetCFPreferenceNumberWithDefault();
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              IsAppleInternalBuild();
              v42[977] = FigGetCFPreferenceNumberWithDefault();
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v42[380] = FigGetCFPreferenceNumberWithDefault();
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v42[381] = FigGetCFPreferenceNumberWithDefault();
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v42[382] = FigGetCFPreferenceNumberWithDefault();
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              FigGetCFPreferenceDoubleWithDefault();
              *(v42 + 57) = v52;
              if (v52 > 0.0 && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
              *(v42 + 119) = CFPreferenceNumberWithDefault;
              if (CFPreferenceNumberWithDefault >= 1 && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v54 = FigGetCFPreferenceNumberWithDefault();
              *(v42 + 118) = v54;
              if (gLogCategory_APEndpointStreamScreen <= 40)
              {
                if (gLogCategory_APEndpointStreamScreen != -1 || (v55 = _LogCategory_Initialize(), v54 = *(v42 + 118), v55))
                {
                  LogPrintF();
                  v54 = *(v42 + 118);
                }
              }

              *(v42 + 120) = v54;
              *(v42 + 121) = v54;
              FigGetCFPreferenceDoubleWithDefault();
              *(v42 + 54) = v56;
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              FigGetCFPreferenceDoubleWithDefault();
              *(v42 + 55) = v57;
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v42[384] = FigGetCFPreferenceNumberWithDefault();
              if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v58 = FigGetCFPreferenceNumberWithDefault();
              *(v42 + 97) = v58;
              if (v58 >= 1 && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              if (v42[394])
              {
                v59 = FigGetCFPreferenceNumberWithDefault();
                *(v42 + 100) = v59;
                if (v59 >= 1 && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                *(v42 + 101) = FigGetCFPreferenceNumberWithDefault();
                if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }
              }

              v60 = APSSettingsCopyValue();
              v61 = v60;
              if (cfa || !v60)
              {
                if (!v60)
                {
                  goto LABEL_154;
                }
              }

              else
              {
                v62 = CFGetTypeID(v60);
                v63 = v62 == CFStringGetTypeID();
                v8 = &unk_27CFF1000;
                if (v63)
                {
                  v64 = *(v42 + 37);
                  *(v42 + 37) = v61;
                  CFRetain(v61);
                  if (v64)
                  {
                    CFRelease(v64);
                  }

                  v8 = &unk_27CFF1000;
                  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                  {
                    APEndpointStreamScreenCreate_cold_6();
                  }
                }
              }

              CFRelease(v61);
LABEL_154:
              LODWORD(cfa) = 0;
              v65 = FigGetCFPreferenceNumberWithDefault();
              if (v65 != *(v42 + 299))
              {
                *(v42 + 299) = v65;
                v66 = v8[1002];
                if (v66 <= 40 && (v66 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                if (!v42[394])
                {
                  *(v42 + 297) = APSScreenLatencyMs();
                }
              }

              if (IsAppleInternalBuild())
              {
                v67 = APSSettingsCopyValue();
                if (v67)
                {
                  v68 = v67;
                  v69 = CFGetTypeID(v67);
                  if (v69 == CFStringGetTypeID())
                  {
                    v70 = *(v42 + 52);
                    *(v42 + 52) = v68;
                    CFRetain(v68);
                    if (v70)
                    {
                      CFRelease(v70);
                    }

                    if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                    {
                      APEndpointStreamScreenCreate_cold_7();
                    }
                  }

                  CFRelease(v68);
                  v8 = &unk_27CFF1000;
                }
              }

              CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
              v72 = CMBufferQueueCreate(v26, 0, CallbacksForUnsortedSampleBuffers, v42 + 13);
              if (v72)
              {
                v31 = v72;
                APEndpointStreamScreenCreate_cold_8();
                goto LABEL_294;
              }

              v73 = CMBufferQueueInstallTriggerWithIntegerThreshold(*(v42 + 13), screenstream_signalDataAvailable, v42, 11, 0, v42 + 14);
              if (v73)
              {
                v31 = v73;
                APEndpointStreamScreenCreate_cold_9();
                goto LABEL_294;
              }

              if (!a2)
              {
LABEL_225:
                v98 = v119;
                v99 = CMBaseObjectGetDerivedStorage();
                cfa = 0;
                inited = screenstream_initDisplayInfo(v99);
                if (inited)
                {
                  v31 = inited;
                  APSLogErrorAt();
                  v8 = &unk_27CFF1000;
LABEL_282:
                  APSLogErrorAt();
                  goto LABEL_294;
                }

                v101 = *(v99 + 400);
                if (v101 < 1)
                {
                  v102 = APVirtualDisplaySinkCreate(v40, *(v99 + 104), &cfa);
                }

                else
                {
                  v102 = APVirtualDisplayTestSinkCreate(v101, v40, *(v99 + 104), &cfa);
                }

                v31 = v102;
                v35 = v110;
                if (v102)
                {
                  APEndpointStreamScreenCreate_cold_17();
                  v8 = &unk_27CFF1000;
                }

                else
                {
                  if (!*(v99 + 144))
                  {
                    FigVirtualDisplaySourceScreenGetCurrent();
                  }

                  if (v98 && *(v99 + 383))
                  {
                    if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                    {
                      APEndpointStreamScreenCreate_cold_18();
                    }

                    *(v99 + 368) = 1;
                  }

                  VirtualDisplayActivationOptions = screenstream_createVirtualDisplayActivationOptions();
                  v104 = FigVirtualDisplaySessionActivateWithSourceAndSink();
                  *(v99 + 160) = v104;
                  if (v104)
                  {
                    CFRetain(v104);
                    CMNotificationCenterGetDefaultLocalCenter();
                    CMNotificationCenterAddListener();
                    v105 = *(v99 + 160);
                    v106 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                    if (v106)
                    {
                      v31 = v106(v105);
                      v8 = &unk_27CFF1000;
                      if (!v31)
                      {
                        goto LABEL_245;
                      }
                    }

                    else
                    {
                      v31 = 4294954514;
                      v8 = &unk_27CFF1000;
                    }

                    APSLogErrorAt();
LABEL_245:
                    if (!VirtualDisplayActivationOptions)
                    {
                      goto LABEL_247;
                    }

                    goto LABEL_246;
                  }

                  APEndpointStreamScreenCreate_cold_19();
                  v31 = 4294950535;
                  v8 = &unk_27CFF1000;
                  if (VirtualDisplayActivationOptions)
                  {
LABEL_246:
                    CFRelease(VirtualDisplayActivationOptions);
                  }
                }

LABEL_247:
                if (cfa)
                {
                  CFRelease(cfa);
                }

                if (!v31)
                {
                  v42[25] = 1;
                  v107 = v8[1002];
                  if (v107 >= 51)
                  {
LABEL_251:
                    v31 = 0;
                    *v35 = v118;
                    v118 = 0;
                    goto LABEL_252;
                  }

                  if (v107 != -1 || _LogCategory_Initialize())
                  {
                    APEndpointStreamScreenCreate_cold_20();
                  }

LABEL_264:
                  APEndpointStreamScreenCreate_cold_21();
                  goto LABEL_251;
                }

                goto LABEL_282;
              }

              v74 = CFDictionaryGetValue(a2, @"clientPID");
              if (v74)
              {
                v75 = v74;
                v76 = CFGetTypeID(v74);
                if (v76 != CFNumberGetTypeID())
                {
                  APEndpointStreamScreenCreate_cold_10();
                  goto LABEL_292;
                }

                v77 = *(v42 + 24);
                *(v42 + 24) = v75;
                CFRetain(v75);
                if (v77)
                {
                  goto LABEL_176;
                }
              }

              else
              {
                v77 = *(v42 + 24);
                *(v42 + 24) = 0;
                if (v77)
                {
LABEL_176:
                  CFRelease(v77);
                }
              }

              v78 = CFDictionaryGetValue(a2, @"ScreenSource");
              v79 = v78;
              if (v78)
              {
                v80 = CFGetTypeID(v78);
                if (v80 != FigVirtualDisplaySourceGetTypeID())
                {
                  APEndpointStreamScreenCreate_cold_11();
                  goto LABEL_292;
                }

                v81 = *(v42 + 18);
                *(v42 + 18) = v79;
                CFRetain(v79);
                if (v81)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v81 = *(v42 + 18);
                *(v42 + 18) = 0;
                if (v81)
                {
LABEL_180:
                  CFRelease(v81);
                }
              }

              v82 = CFDictionaryGetValue(a2, @"ScreenProcessor");
              v83 = v82;
              if (v82)
              {
                v84 = CFGetTypeID(v82);
                if (v84 != FigVirtualDisplayProcessorGetTypeID())
                {
                  APEndpointStreamScreenCreate_cold_12();
                  goto LABEL_292;
                }

                v85 = *(v42 + 19);
                *(v42 + 19) = v83;
                CFRetain(v83);
                if (!v85)
                {
                  goto LABEL_185;
                }
              }

              else
              {
                v85 = *(v42 + 19);
                *(v42 + 19) = 0;
                if (!v85)
                {
                  goto LABEL_185;
                }
              }

              CFRelease(v85);
LABEL_185:
              v86 = CFDictionaryGetValue(a2, @"ScreenUsageMode");
              if (!v86)
              {
                v89 = *(v42 + 21);
                *(v42 + 21) = 0;
                if (!v89)
                {
                  goto LABEL_189;
                }

                goto LABEL_188;
              }

              v87 = v86;
              v88 = CFGetTypeID(v86);
              if (v88 == CFStringGetTypeID())
              {
                v89 = *(v42 + 21);
                *(v42 + 21) = v87;
                CFRetain(v87);
                if (!v89)
                {
LABEL_189:
                  if (v79 | v83)
                  {
LABEL_211:
                    v94 = CFDictionaryGetValue(a2, @"ScreenOverrides");
                    if (v94 && (v95 = v94, v96 = CFGetTypeID(v94), v96 == CFDictionaryGetTypeID()) && IsAppleInternalBuild())
                    {
                      v97 = *(v42 + 22);
                      *(v42 + 22) = v95;
                      CFRetain(v95);
                    }

                    else
                    {
                      v97 = *(v42 + 22);
                      *(v42 + 22) = 0;
                    }

                    if (v97)
                    {
                      CFRelease(v97);
                    }

                    FigCFDictionaryGetBooleanIfPresent();
                    FigCFDictionaryGetBooleanIfPresent();
                    if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                    {
                      APEndpointStreamScreenCreate_cold_15();
                    }

                    FigCFDictionaryGetBooleanIfPresent();
                    if (FigCFDictionaryGetCGSizeIfPresent() && gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                    {
                      APEndpointStreamScreenCreate_cold_16();
                    }

                    goto LABEL_225;
                  }

                  v90 = CFDictionaryGetValue(a2, @"ProtectionOptions");
                  v91 = v90;
                  if (!v90)
                  {
                    v93 = *(v42 + 41);
                    *(v42 + 41) = 0;
                    if (!v93)
                    {
                      goto LABEL_194;
                    }

                    goto LABEL_193;
                  }

                  v92 = CFGetTypeID(v90);
                  if (v92 == CFDictionaryGetTypeID())
                  {
                    v93 = *(v42 + 41);
                    *(v42 + 41) = v91;
                    CFRetain(v91);
                    if (!v93)
                    {
LABEL_194:
                      if (v91 && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF();
                      }

                      goto LABEL_211;
                    }

LABEL_193:
                    CFRelease(v93);
                    goto LABEL_194;
                  }

                  APEndpointStreamScreenCreate_cold_14();
                  goto LABEL_292;
                }

LABEL_188:
                CFRelease(v89);
                goto LABEL_189;
              }

              APEndpointStreamScreenCreate_cold_13();
LABEL_292:
              v31 = 4294950536;
              goto LABEL_293;
            }

            v31 = v39;
            APEndpointStreamScreenCreate_cold_4();
            goto LABEL_31;
          }

          APEndpointStreamScreenCreate_cold_3();
        }

        else
        {
          APEndpointStreamScreenCreate_cold_22();
        }
      }

      else
      {
        APEndpointStreamScreenCreate_cold_23();
      }

      goto LABEL_209;
    }

    v31 = v27;
  }

  else
  {
    v31 = 4294954514;
  }

  APSLogErrorAt();
LABEL_31:
  v8 = &unk_27CFF1000;
LABEL_32:
  v32 = v8[1002];
  if (v32 <= 90 && (v32 != -1 || _LogCategory_Initialize()))
  {
    APEndpointStreamScreenCreate_cold_29();
  }

LABEL_252:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v115)
  {
    CFRelease(v115);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (v118)
  {
    CFRelease(v118);
  }

  return v31;
}

uint64_t APEndpointStreamScreenRestartBitstream(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1, @"ScreenRestartBitstream", 0);
}

uint64_t APEndpointStreamScreenSetRecordingState(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = @"ScreenSetRecordingStateOn";
  }

  else
  {
    v3 = @"ScreenSetRecordingStateOff";
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, v3, 0);
}

uint64_t APEndpointStreamScreenUpdateDisplayInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, @"UpdateDisplayInfo", a2);
}

uint64_t APEndpointStreamScreenOverrideCanvasSize(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, @"OverrideCanvasSize", a2);
}

void screenstream_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  screenstream_cleanup();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 1152);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 1152) = 0;
  }

  v3 = *(DerivedStorage + 1160);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 1160) = 0;
  }

  v4 = *(DerivedStorage + 1168);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 1168) = 0;
  }

  v5 = *(DerivedStorage + 144);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 144) = 0;
  }

  v6 = *(DerivedStorage + 152);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 152) = 0;
  }

  v7 = *(DerivedStorage + 168);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 168) = 0;
  }

  v8 = *(DerivedStorage + 176);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 176) = 0;
  }

  v9 = *(DerivedStorage + 192);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 192) = 0;
  }

  v10 = *(DerivedStorage + 48);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 48) = 0;
  }

  v11 = *(DerivedStorage + 128);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 128) = 0;
  }

  v12 = *(DerivedStorage + 80);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 80) = 0;
  }

  v13 = *(DerivedStorage + 72);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 72) = 0;
  }

  v14 = *(DerivedStorage + 56);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 56) = 0;
  }

  v15 = *(DerivedStorage + 64);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 64) = 0;
  }

  v16 = *(DerivedStorage + 40);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 40) = 0;
  }

  v17 = *(DerivedStorage + 200);
  if (v17)
  {
    dispatch_source_cancel(*(DerivedStorage + 200));
    dispatch_release(v17);
    *(DerivedStorage + 200) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v18 = *(DerivedStorage + 96);
  if (v18)
  {
    dispatch_release(v18);
    *(DerivedStorage + 96) = 0;
  }

  v19 = *(DerivedStorage + 504);
  if (v19)
  {
    dispatch_release(v19);
    *(DerivedStorage + 504) = 0;
  }

  v20 = *(DerivedStorage + 32);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 32) = 0;
  }

  v21 = *(DerivedStorage + 16);
  if (v21)
  {
    os_release(v21);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *screenstream_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v4 = Mutable;
  v5 = "yes";
  if (*(DerivedStorage + 25))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (!*(DerivedStorage + 26))
  {
    v5 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamScreen %p '%@', activated: %s resumed: %s >", a1, *(DerivedStorage + 8), v6, v5);
  return v4;
}

void screenstream_cleanup()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  screenstream_stopStatsTimer();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  if (*(DerivedStorage + 160))
  {
    FigVirtualDisplaySessionDeactivate();
    v1 = *(DerivedStorage + 160);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 160) = 0;
    }
  }

  screenstream_teardownTransportStream();
  v2 = *(DerivedStorage + 104);
  if (v2)
  {
    v3 = *(DerivedStorage + 112);
    if (!v3 || (CMBufferQueueRemoveTrigger(v2, v3), *(DerivedStorage + 112) = 0, (v2 = *(DerivedStorage + 104)) != 0))
    {
      CFRelease(v2);
      *(DerivedStorage + 104) = 0;
    }
  }

  v4 = *(DerivedStorage + 208);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 208) = 0;
  }

  v5 = *(DerivedStorage + 304);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 304) = 0;
  }

  v6 = *(DerivedStorage + 312);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 312) = 0;
  }

  v7 = *(DerivedStorage + 320);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 320) = 0;
  }

  v8 = *(DerivedStorage + 328);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 328) = 0;
  }

  v9 = *(DerivedStorage + 344);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 344) = 0;
  }

  v10 = *(DerivedStorage + 352);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 352) = 0;
  }

  v11 = *(DerivedStorage + 296);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 296) = 0;
  }

  v12 = *(DerivedStorage + 416);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 416) = 0;
  }

  v13 = *MEMORY[0x277CBF3A8];
  *(DerivedStorage + 216) = *MEMORY[0x277CBF3A8];
  *(DerivedStorage + 248) = v13;
  *(DerivedStorage + 264) = v13;
  v14 = *(DerivedStorage + 120);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 120) = 0;
  }

  v15 = *(DerivedStorage + 504);
  if (v15)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __screenstream_cleanup_block_invoke;
    block[3] = &__block_descriptor_tmp_35;
    block[4] = DerivedStorage;
    dispatch_sync(v15, block);
  }
}

void screenstream_stopStatsTimer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 200))
  {
    v1 = DerivedStorage;
    if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
    {
      screenstream_stopStatsTimer_cold_1();
    }

    v2 = *(v1 + 200);

    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

void screenstream_virtualDisplaySourceTerminated(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    screenstream_virtualDisplaySourceTerminated_cold_1();
  }

  screenstream_handleFatalError(a2, -16768, @"display source terminated");
}

void __screenstream_cleanup_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 512);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 512) = 0;
  }
}

void screenstream_handleFatalError(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenstream_handleFatalError_block_invoke;
  block[3] = &__block_descriptor_tmp_42;
  v11 = a2;
  block[4] = a3;
  block[5] = a1;
  dispatch_async(v7, block);
  CFRetain(a1);
  v8 = *DerivedStorage;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __screenstream_handleFatalError_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_43_1;
  v9[4] = a1;
  dispatch_async(v8, v9);
}

void __screenstream_handleFatalError_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt32();
  v3 = *(a1 + 32);
  if (v3)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC17E0], v3);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);

  CFRelease(v5);
}

void __screenstream_handleFatalError_block_invoke_2(uint64_t a1)
{
  screenstream_dissociateInternal(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __screenstream_dissociateInternal_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __sbpd_logHistograms_block_invoke()
{
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    __sbpd_logHistograms_block_invoke_cold_1();
  }
}

void __sbpd_reportHistograms_block_invoke(uint64_t a1, const void *a2)
{
  v4 = APSStatsHistogramCopyAsRTCString();
  if (v4)
  {
    v5 = v4;
    CFDictionarySetValue(*(a1 + 32), a2, v4);

    CFRelease(v5);
  }
}

CFDictionaryRef screenstream_copyOutputLatency(uint64_t a1)
{
  v5 = **&MEMORY[0x277CC08F0];
  v1 = 1188;
  if (*(a1 + 368) == 1)
  {
    v1 = 1192;
  }

  CMTimeMake(&v5, *(a1 + v1), 1000);
  v2 = *MEMORY[0x277CBECE8];
  v4 = v5;
  return CMTimeCopyAsDictionary(&v4, v2);
}

uint64_t screenstream_Suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v9 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenstream_Suspend_block_invoke;
  block[3] = &__block_descriptor_tmp_103_0;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = DerivedStorage;
  block[8] = a4;
  dispatch_async(v9, block);
  return 0;
}

uint64_t screenstream_Resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v9 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenstream_Resume_block_invoke;
  block[3] = &__block_descriptor_tmp_108_0;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = DerivedStorage;
  block[8] = a4;
  dispatch_async(v9, block);
  return 0;
}

uint64_t screenstream_Dissociate(uint64_t a1)
{
  v2 = *CMBaseObjectGetDerivedStorage();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenstream_Dissociate_block_invoke;
  block[3] = &__block_descriptor_tmp_202_0;
  block[4] = a1;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t screenstream_Control(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = __screenstream_Control_block_invoke;
    v15[3] = &unk_2784A10D8;
    v15[4] = &v16;
    v15[5] = a1;
    v15[6] = a3;
    v7 = v15;
LABEL_13:
    dispatch_sync(v6, v7);
    goto LABEL_14;
  }

  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = __screenstream_Control_block_invoke_2;
    v14[3] = &unk_2784A1100;
    v14[4] = &v16;
    v14[5] = a1;
    v7 = v14;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = __screenstream_Control_block_invoke_3;
    v13[3] = &unk_2784A1128;
    v13[4] = &v16;
    v13[5] = a1;
    v7 = v13;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = __screenstream_Control_block_invoke_4;
    v12[3] = &unk_2784A1150;
    v12[4] = &v16;
    v12[5] = a1;
    v7 = v12;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = __screenstream_Control_block_invoke_5;
    v11[3] = &unk_2784A1178;
    v11[4] = &v16;
    v11[5] = a1;
    v11[6] = a3;
    v7 = v11;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __screenstream_Control_block_invoke_6;
    block[3] = &unk_2784A11A0;
    block[4] = &v16;
    block[5] = a1;
    block[6] = a3;
    v7 = block;
    goto LABEL_13;
  }

  if (gLogCategory_APEndpointStreamScreen <= 90 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(v17 + 6) = -16760;
LABEL_14:
  v8 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v8;
}

void screenStream_setResumedAndNotifiyObservers(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 26);
  *(DerivedStorage + 26) = a2;
  if (*(DerivedStorage + 88) != 111)
  {
    APSEventRecorderRecordEvent();
    if (!a2)
    {
      goto LABEL_17;
    }

    v12 = LogCategoryCopyOSLogHandle();
    v7 = v12;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = MEMORY[0x277D86220];
    }

    if (!os_signpost_enabled(v13))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v9 = "AP_SIGNPOST_SCREEN_DISPLAYING";
    v11 = v13;
    v10 = 722862680;
    goto LABEL_14;
  }

  APSEventRecorderRecordEvent();
  if (!a2)
  {
    goto LABEL_17;
  }

  v6 = LogCategoryCopyOSLogHandle();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    v9 = "AP_SIGNPOST_ALTERNATESCREEN_DISPLAYING";
    v10 = 722862684;
    v11 = v8;
LABEL_14:
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v11, OS_SIGNPOST_EVENT, v10, v9, &unk_2222A918B, buf, 2u);
  }

LABEL_15:
  if (v7)
  {
    os_release(v7);
  }

LABEL_17:
  CFRetain(a1);
  v14 = *(DerivedStorage + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenStream_setResumedAndNotifiyObservers_block_invoke;
  block[3] = &__block_descriptor_tmp_105_0;
  v16 = a2;
  v17 = v5 != a2;
  block[4] = a1;
  block[5] = DerivedStorage;
  dispatch_async(v14, block);
}

void __screenStream_setResumedAndNotifiyObservers_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (*(a1 + 49))
  {
    APSWiFiTransactionUpdateTransaction();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v3 = Mutable;
    v4 = MEMORY[0x277CBED28];
    if (!*(a1 + 48))
    {
      v4 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"IsPlaying", *v4);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v3);
  }

  v5 = *(a1 + 32);

  CFRelease(v5);
}

uint64_t sbpd_createConfigBBuf(uint64_t a1, CMBlockBufferRef *a2)
{
  blockBufferOut = 0;
  v4 = *a1;
  v5 = MEMORY[0x277CBECE8];
  if (v4)
  {
    Length = CFDataGetLength(v4);
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v8 = BlockBufferWithCFDataNoCopy;
      sbpd_createConfigBBuf_cold_1();
      goto LABEL_30;
    }
  }

  else if (*(a1 + 8))
  {
    v9 = APSVideoFormatDescriptionCopyAsBlockBuffer();
    if (v9)
    {
      v8 = v9;
      sbpd_createConfigBBuf_cold_2();
      goto LABEL_30;
    }

    Length = CMBlockBufferGetDataLength(0);
  }

  else
  {
    Length = 0;
  }

  v10 = malloc_type_calloc(1uLL, 0x80uLL, 0x9329C86FuLL);
  v11 = v10;
  *v10 = Length;
  *(v10 + 4) = 1;
  *(v10 + 5) = *(a1 + 96);
  *(v10 + 6) = 18;
  if (*(a1 + 444))
  {
    v12 = 19;
  }

  else
  {
    v12 = 18;
  }

  *(v10 + 6) = v12;
  if (*(a1 + 408))
  {
    v12 |= 4u;
    *(v10 + 6) = v12;
  }

  if (*(a1 + 100))
  {
    v12 |= 0x40u;
    *(v10 + 6) = v12;
  }

  if (*(a1 + 8))
  {
    *(v10 + 6) = v12 | 8;
  }

  *(v10 + 7) = 1;
  v13 = *(a1 + 464);
  v14 = *(a1 + 432);
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v15 = v14 + v13;
  if (v14 + v13)
  {
    v16 = *(a1 + 456);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v17)
    {
      (v17)(v16, v15, &v34);
      v18 = v35;
      v17 = v36;
      goto LABEL_22;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
LABEL_22:
  *(&v19 + 1) = v17;
  *&v19 = v18;
  *(v11 + 1) = v19 >> 32;
  v20 = *(a1 + 16);
  v11[4] = v20;
  v21 = *(a1 + 24);
  v11[5] = v21;
  v22 = *(a1 + 32);
  v11[8] = v22;
  v23 = *(a1 + 40);
  v11[9] = v23;
  v24 = *(a1 + 48);
  v11[10] = v24;
  v25 = *(a1 + 56);
  v11[11] = v25;
  v26 = *(a1 + 64);
  v11[12] = v26;
  v27 = *(a1 + 72);
  v11[13] = v27;
  v28 = *(a1 + 80);
  v11[14] = v28;
  v29 = *(a1 + 88);
  v11[15] = v29;
  v30 = CMBlockBufferCreateWithMemoryBlock(*v5, v11, 0x80uLL, *MEMORY[0x277CBECF0], 0, 0, 0x80uLL, 0, &blockBufferOut);
  if (v30)
  {
    v8 = v30;
    sbpd_createConfigBBuf_cold_3(v30, v11);
  }

  else
  {
    if (*(a1 + 100) && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
    {
      sbpd_createConfigBBuf_cold_4();
      if (!Length)
      {
        goto LABEL_29;
      }
    }

    else if (!Length)
    {
LABEL_29:
      v8 = 0;
      *a2 = blockBufferOut;
      blockBufferOut = 0;
      goto LABEL_30;
    }

    appended = CMBlockBufferAppendBufferReference(blockBufferOut, 0, 0, 0, 0);
    if (!appended)
    {
      goto LABEL_29;
    }

    v8 = appended;
    sbpd_createConfigBBuf_cold_5();
  }

LABEL_30:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v8;
}

uint64_t __shouldDumpCryptorAuxData_block_invoke()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    result = APSSettingsGetIntWithDefault();
    _MergedGlobals_25 = result != 0;
  }

  return result;
}

uint64_t __getRandomDataBlob_block_invoke(uint64_t a1)
{
  qword_280FB1C28 = malloc_type_calloc(1uLL, *(a1 + 32), 0x516F2D17uLL);

  return RandomBytes();
}

uint64_t screenstream_initDisplayInfo(uint64_t a1)
{
  v2 = *(a1 + 72);
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  value = 0;
  v3 = *(a1 + 304);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 304) = 0;
  }

  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(a1 + 56));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v16 = 4294954514;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_97;
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = v5(CMBaseObject, @"Name", *MEMORY[0x277CBECE8], a1 + 304);
  if (v7)
  {
    v16 = v7;
    goto LABEL_21;
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 208) = 0;
  }

  v9 = APEndpointDisplayDescriptionCopyProperty(v2, @"EDID", v6, a1 + 208);
  if (v9)
  {
    v16 = v9;
    screenstream_initDisplayInfo_cold_1();
    goto LABEL_97;
  }

  v10 = APEndpointDisplayDescriptionCopyProperty(v2, @"PixelSize", v6, &v56);
  if (v10)
  {
    v16 = v10;
    screenstream_initDisplayInfo_cold_2();
    goto LABEL_97;
  }

  CGSizeMakeWithDictionaryRepresentation(v56, (a1 + 216));
  if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    screenstream_initDisplayInfo_cold_3();
  }

  v11 = *(a1 + 216);
  v12 = MEMORY[0x277CBF3A8];
  if (*(a1 + 394))
  {
    if (v11 <= 0.0 || *(a1 + 224) <= 0.0)
    {
      screenstream_initDisplayInfo_cold_5();
    }

    else
    {
      v18 = *(a1 + 264);
      v17 = *(a1 + 272);
      if (v18 == *MEMORY[0x277CBF3A8] && v17 == *(MEMORY[0x277CBF3A8] + 8) || v18 > 0.0 && v17 > 0.0)
      {
        goto LABEL_35;
      }

      screenstream_initDisplayInfo_cold_4();
    }

    v16 = 4294950536;
    goto LABEL_97;
  }

  v13 = *(a1 + 224);
  if (v11 >= v13)
  {
    v14 = *(a1 + 224);
  }

  else
  {
    v14 = *(a1 + 216);
  }

  v15 = 720.0;
  if (v14 >= 720.0)
  {
    v15 = *(a1 + 224);
  }

  else if (v14 <= 0.0)
  {
    v11 = 1280.0;
  }

  else
  {
    v11 = v11 * (720.0 / v14);
    v15 = v13 * (720.0 / v14);
  }

  *(a1 + 216) = v11;
  *(a1 + 224) = v15;
  if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_35:
  *(a1 + 248) = *v12;
  if (*(a1 + 380))
  {
    v19 = APEndpointDisplayDescriptionCopyProperty(v2, @"PixelSizeMax", v6, &v55);
    if (v19)
    {
      v16 = v19;
      screenstream_initDisplayInfo_cold_6();
      goto LABEL_97;
    }

    CGSizeMakeWithDictionaryRepresentation(v55, (a1 + 248));
  }

  if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    screenstream_initDisplayInfo_cold_7();
  }

  v20 = vbslq_s8(vcgtq_f64(*(a1 + 248), *(a1 + 216)), *(a1 + 248), *(a1 + 216));
  *(a1 + 248) = v20;
  if (*v20.i64 > 1920.0 || *&v20.i64[1] > 1080.0)
  {
    if (FVDUtilsHEVCEncoderSupports4K60() && APSHasHDRSenderSupport())
    {
      *(a1 + 386) = 1;
      if (!*(a1 + 394))
      {
        APSGetMaxSizePreservingAspectRatio();
        *(a1 + 248) = v35;
        *(a1 + 256) = v36;
      }
    }

    else
    {
      *(a1 + 248) = *(a1 + 216);
    }
  }

  if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v21 = APEndpointDisplayDescriptionCopyProperty(v2, @"PhysicalSize", v6, &v54);
  if (v21)
  {
    v16 = v21;
    screenstream_initDisplayInfo_cold_8();
  }

  else
  {
    CGSizeMakeWithDictionaryRepresentation(v54, (a1 + 264));
    v22 = *(a1 + 312);
    if (v22)
    {
      CFRelease(v22);
      *(a1 + 312) = 0;
    }

    v23 = APEndpointDisplayDescriptionCopyProperty(v2, @"UUID", v6, a1 + 312);
    if (v23)
    {
      v16 = v23;
      screenstream_initDisplayInfo_cold_9();
    }

    else
    {
      v24 = *(a1 + 320);
      if (v24)
      {
        CFRelease(v24);
        *(a1 + 320) = 0;
      }

      if (*(a1 + 381) && (v25 = APEndpointDisplayDescriptionCopyProperty(v2, @"HDRInfo", v6, a1 + 320), v25))
      {
        v16 = v25;
        screenstream_initDisplayInfo_cold_10();
      }

      else
      {
        screenstream_setIsHDR(a1);
        if (*(a1 + 144))
        {
          cf = 0;
          v26 = *MEMORY[0x277CD6758];
          v27 = FigVirtualDisplaySourceGetCMBaseObject();
          CMBaseObjectCopyProperty_0(v27, v26, v6, &cf);
          v28 = FigCFEqual();
          if (cf)
          {
            CFRelease(cf);
          }

          v29 = v28 != 0;
        }

        else
        {
          v29 = 1;
        }

        if (APSHasHDRSenderSupport())
        {
          v30 = *(a1 + 376) != 0 && v29;
        }

        else
        {
          v30 = 0;
        }

        *(a1 + 385) = v30;
        APEndpointDisplayDescriptionCopyProperty(v2, @"receiverSupports444", v6, &v50);
        v31 = *MEMORY[0x277CBED28];
        CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
        v33 = 0;
        *(a1 + 336) = CFPreferenceNumberWithDefault;
        v34 = *(a1 + 409);
        if (*(a1 + 409) && CFPreferenceNumberWithDefault)
        {
          if (FVDUtilsHEVCEncoderSupports4K60())
          {
            v33 = 1;
          }

          else
          {
            v33 = FVDUtilsH264EncoderSupports444() != 0;
          }

          v34 = *(a1 + 409);
        }

        *(a1 + 410) = v33;
        if (v34 && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v37 = *(a1 + 312);
        v38 = *MEMORY[0x277CC1980];
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        *(a1 + 80) = CFStringCreateWithFormat(v6, 0, @"%@-%@-%llx", v37, v38, UpTimeNanoseconds);
        APEndpointDisplayDescriptionCopyProperty(v2, @"MaxFPS", v6, &v53);
        if (v53)
        {
          v40 = CFGetInt64();
          if (v40 >= 1 && *(a1 + 472) > v40)
          {
            *(a1 + 472) = v40;
          }
        }

        APEndpointDisplayDescriptionCopyProperty(v2, @"IsOverscanned", v6, &v52);
        *(a1 + 377) = v52 == v31;
        APEndpointDisplayDescriptionCopyProperty(v2, @"SupportsRotation", v6, &v51);
        *(a1 + 378) = v51 == v31;
        *(a1 + 360) = *(a1 + 216) * *(a1 + 224) * *(a1 + 472);
        if (*(a1 + 394))
        {
          APEndpointDisplayDescriptionCopyProperty(v2, @"ViewAreas", v6, a1 + 344);
          Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *(a1 + 352) = Mutable;
          v42 = *(a1 + 312);
          if (v42)
          {
            CFDictionarySetValue(Mutable, @"uuid", v42);
          }

          APEndpointDisplayDescriptionCopyProperty(v2, @"InitialViewArea", v6, &v47);
          if (v47)
          {
            CFDictionarySetValue(*(a1 + 352), @"viewArea", v47);
          }

          APEndpointDisplayDescriptionCopyProperty(v2, @"AdjacentViewAreas", v6, &value);
          if (value)
          {
            CFDictionarySetValue(*(a1 + 352), @"adjacentViewAreas", value);
          }
        }

        v43 = APEndpointDescriptionGetCMBaseObject(*(a1 + 56));
        CMBaseObjectCopyProperty_0(v43, @"IsThirdPartyTVFamily", v6, &v48);
        *(a1 + 392) = v48 == v31;
        APEndpointDisplayDescriptionCopyProperty(v2, @"receiverSupportsHDRMirroring", v6, &v49);
        *(a1 + 393) = v49 == v31;
        if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (*(a1 + 312))
        {
          v16 = 0;
        }

        else
        {
          screenstream_initDisplayInfo_cold_11(a1, &cf);
          v16 = cf;
        }
      }
    }
  }

LABEL_97:
  if (v47)
  {
    CFRelease(v47);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  return v16;
}

void OUTLINED_FUNCTION_31_2(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v3, a2, v2);
}

void OUTLINED_FUNCTION_32_4(uint64_t a1, uint64_t a2, const void *a3)
{

  CFDictionarySetValue(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return CMBaseObjectGetVTable();
}

uint64_t SPGetEndpointManager(void *a1)
{
  if (SPGetEndpointManager_sCreateOnce != -1)
  {
    SPGetEndpointManager_cold_1();
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    *a1 = qword_280FB1C38;
  }

LABEL_4:
  if (gLogCategory_SPEndpointManagerFactory <= 50 && (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize()))
  {
    SPGetEndpointManager_cold_2();
  }

  return _MergedGlobals_26;
}

void __SPGetEndpointManager_block_invoke()
{
  if (!APSSettingsIsFeatureEnabled() && !APSSettingsGetIntWithDefault())
  {
    v0 = -72390;
    goto LABEL_32;
  }

  if (gLogCategory_SPEndpointManagerFactory <= 50 && (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize()))
  {
    __SPGetEndpointManager_block_invoke_cold_1();
  }

  if (MEMORY[0x223DAEBE0]() && !FigServer_IsAirplayd())
  {
    if (gLogCategory_SPEndpointManagerFactory <= 50 && (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize()))
    {
      __SPGetEndpointManager_block_invoke_cold_2();
    }

    v0 = FigEndpointManagerRemoteCopySidePlayManager();
    if (v0)
    {
      __SPGetEndpointManager_block_invoke_cold_3();
      goto LABEL_32;
    }
  }

  else
  {
    if (gLogCategory_SPEndpointManagerFactory <= 50 && (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize()))
    {
      __SPGetEndpointManager_block_invoke_cold_4();
    }

    cf = 0;
    v0 = SPEndpointManagerCreate(&cf);
    if (v0)
    {
      __SPGetEndpointManager_block_invoke_cold_5();
    }

    else
    {
      if (!APSIsExplicitEndpointManagerInitializationEnabledInMX() && CMSessionMgrRegisterEndpointManager() && gLogCategory_SPEndpointManagerFactory <= 90 && (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize()))
      {
        __SPGetEndpointManager_block_invoke_cold_6();
      }

      qword_280FB1C38 = cf;
      cf = 0;
    }

    if (gLogCategory_SPEndpointManagerFactory <= 50 && (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize()))
    {
      __SPGetEndpointManager_block_invoke_cold_7();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v0)
    {
      __SPGetEndpointManager_block_invoke_cold_8();
LABEL_32:
      if (gLogCategory_SPEndpointManagerFactory <= 90 && (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize()))
      {
        __SPGetEndpointManager_block_invoke_cold_9();
      }
    }
  }

  _MergedGlobals_26 = v0;
}

uint64_t APEndpointPlaybackSessionRemoteControlCreate(uint64_t a1, const void *a2, const void *a3, const __CFDictionary *a4, void *a5)
{
  if (!a2)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_12();
    v21 = 4294950556;
    goto LABEL_21;
  }

  if (!a3)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_11();
LABEL_30:
    v21 = 4294950556;
    goto LABEL_21;
  }

  if (!a5)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_10();
    goto LABEL_30;
  }

  FigEndpointPlaybackSessionGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v21 = v10;
    APEndpointPlaybackSessionRemoteControlCreate_cold_1();
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = @"unnamed APEndpointPlaybackSessionRemoteControl";
  }

  *(DerivedStorage + 8) = v12;
  CFRetain(v12);
  *(DerivedStorage + 40) = CFRetain(a2);
  *(DerivedStorage + 24) = CFRetain(a3);
  *(DerivedStorage + 104) = 0;
  *(DerivedStorage + 88) = 0;
  v13 = FigSimpleMutexCreate();
  *(DerivedStorage + 80) = v13;
  if (!v13)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_9();
LABEL_38:
    v21 = 4294950555;
    goto LABEL_21;
  }

  v14 = FigSimpleMutexCreate();
  *(DerivedStorage + 208) = v14;
  if (!v14)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_8();
    goto LABEL_38;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 200) = Mutable;
  if (!Mutable)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_7();
    goto LABEL_38;
  }

  v16 = dispatch_queue_create("APEndpointPlaybackSessionRemoteControl.event", 0);
  *(DerivedStorage + 160) = v16;
  if (!v16)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_6();
    goto LABEL_38;
  }

  v17 = dispatch_queue_create("APEndpointPlaybackSessionRemoteControl.metadata", 0);
  *(DerivedStorage + 120) = v17;
  if (!v17)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_5();
    goto LABEL_38;
  }

  v18 = dispatch_queue_create("APEndpointPlaybackSessionRemoteControl.notification", 0);
  *(DerivedStorage + 64) = v18;
  if (!v18)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_4();
    goto LABEL_38;
  }

  *(DerivedStorage + 144) = CFDictionaryGetInt64() != 0;
  *(DerivedStorage + 216) = CFDictionaryGetInt64() != 0;
  if (CFDictionaryContainsKey(a4, @"NetworkClock"))
  {
    Value = CFDictionaryGetValue(a4, @"NetworkClock");
    *(DerivedStorage + 48) = CFRetain(Value);
  }

  v20 = APEndpointPlaybackSessionStatsCreate(@"RC", a1, a4, (DerivedStorage + 152));
  if (v20)
  {
    v21 = v20;
    APEndpointPlaybackSessionRemoteControlCreate_cold_2();
  }

  else
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      APEndpointPlaybackSessionRemoteControlCreate_cold_3();
    }

    v21 = 0;
    *a5 = 0;
  }

LABEL_21:
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_13();
  }

  return v21;
}

uint64_t session_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_Invalidate_cold_1();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    *(DerivedStorage + 104) = 1;
    session_unsubscribeMetadataEvents();
    v1 = *(DerivedStorage + 56);
    if (v1)
    {
      APMetadataSourceStop(v1);
    }

    FigSimpleMutexUnlock();
    APEndpointPlaybackSessionStatsUpdateAtInvalidate(*(DerivedStorage + 152));
    FigSimpleMutexLock();
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(DerivedStorage + 200));
    CFDictionaryRemoveAllValues(*(DerivedStorage + 200));
    FigSimpleMutexUnlock();
    dispatch_sync_f(*(DerivedStorage + 160), Copy, session_cleanupPendingRequests);
    v3 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v4)
      {
        v4(v3);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    v5 = *(DerivedStorage + 16);
    if (v5)
    {

      *(DerivedStorage + 16) = 0;
    }
  }

  return 0;
}

void session_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_Finalize_cold_1();
  }

  v1 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v2)
    {
      v2(v1, 0, 0);
    }
  }

  *(DerivedStorage + 168) = 0;
  *(DerivedStorage + 176) = 0;
  APEndpointPlaybackSessionStatsDestroy((DerivedStorage + 152));
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 32) = 0;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  FigSimpleMutexDestroy();
  v8 = *(DerivedStorage + 184);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 184) = 0;
  }

  v9 = *(DerivedStorage + 160);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 160) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v10 = *(DerivedStorage + 200);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 200) = 0;
  }

  FigSimpleMutexDestroy();
  v11 = *(DerivedStorage + 120);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 120) = 0;
  }

  v12 = *(DerivedStorage + 56);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 56) = 0;
  }

  v13 = *(DerivedStorage + 128);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 128) = 0;
  }

  v14 = *(DerivedStorage + 136);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 136) = 0;
  }

  v15 = *(DerivedStorage + 96);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 96) = 0;
  }

  v16 = *(DerivedStorage + 64);
  if (v16)
  {
    dispatch_release(v16);
    *(DerivedStorage + 64) = 0;
  }

  v17 = *(DerivedStorage + 224);
  if (v17)
  {
    APLocalPlaybackServerDestroy(v17);
    *(DerivedStorage + 224) = 0;
  }
}

uint64_t session_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (CFEqual(a2, @"RTCStats"))
  {
    APEndpointPlaybackSessionCopyRTCStats(*(DerivedStorage + 152), a4);
    if (*a4)
    {
      v7 = 0;
    }

    else
    {
      session_CopyProperty_cold_1();
      v7 = 4294950555;
    }
  }

  else if (*(DerivedStorage + 104))
  {
    session_CopyProperty_cold_2();
    v7 = 4294954511;
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC10E0]))
    {
      v8 = MEMORY[0x277CBED10];
    }

    else if (CFEqual(a2, *MEMORY[0x277CC1100]) || CFEqual(a2, *MEMORY[0x277CC10F8]) || CFEqual(a2, *MEMORY[0x277CC10E8]) || CFEqual(a2, *MEMORY[0x277CC10F0]) || CFEqual(a2, *MEMORY[0x277CC10D8]))
    {
      v8 = MEMORY[0x277CBED28];
    }

    else
    {
      if (CFEqual(a2, @"Activated"))
      {
        v8 = MEMORY[0x277CBED28];
        v10 = *(DerivedStorage + 88);
      }

      else
      {
        if (!CFEqual(a2, @"IsPlaying"))
        {
          v7 = 4294954509;
          goto LABEL_18;
        }

        v8 = MEMORY[0x277CBED28];
        v10 = *(DerivedStorage + 89);
      }

      if (!v10)
      {
        v8 = MEMORY[0x277CBED10];
      }
    }

    v7 = 0;
    *a4 = CFRetain(*v8);
  }

LABEL_18:
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_CopyProperty_cold_3();
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t session_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_SetProperty_cold_1();
    v13 = 4294954511;
    goto LABEL_19;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10B8]))
  {
    v7 = FigCFEqual();
    v8 = kAPEndpointPlaybackSessionAudioMode_MoviePlayback;
    if (!v7)
    {
      v8 = kAPEndpointPlaybackSessionAudioMode_Default;
    }

    v9 = *v8;
    v10 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = *v8;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    session_setProxiedPropertyInternal(a1, @"audioMode", 0, v9);
    goto LABEL_18;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10D0]))
  {
    Value = CFBooleanGetValue(a3);
    APEndpointPlaybackSessionSetIsParticipatingInCoordinatedPlayback(*(DerivedStorage + 152), Value);
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1108]))
  {
    memset(&v16, 0, sizeof(v16));
    CMTimeMakeFromDictionary(&v16, a3);
    v12 = *(DerivedStorage + 152);
    v15 = v16;
    APEndpointPlaybackSessionSetVideoSyncTime(v12, &v15);
    goto LABEL_18;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10C8]))
  {
    v13 = 0;
    *(DerivedStorage + 72) = FigCFNumberGetSInt32();
  }

  else
  {
    v13 = 4294954509;
  }

LABEL_19:
  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_SetProperty_cold_2();
  }

  return v13;
}

void session_unsubscribeMetadataEvents()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 56))
  {
    v1 = DerivedStorage;
    if (*(DerivedStorage + 112))
    {
      if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
      {
        session_unsubscribeMetadataEvents_cold_1();
      }

      APMetadataSourceRemoveEventCallback(*(v1 + 56), *(v1 + 112));
      *(v1 + 112) = 0;
    }
  }
}

void session_setProxiedPropertyInternal(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 104))
  {
    session_setProxiedPropertyInternal_cold_1();
LABEL_24:
    Mutable = 0;
    goto LABEL_13;
  }

  v8 = DerivedStorage;
  if (!*DerivedStorage)
  {
    session_setProxiedPropertyInternal_cold_2();
    goto LABEL_24;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"setProperty");
  CFDictionarySetValue(Mutable, @"property", a2);
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"value", a4);
  }

  if (a3)
  {
    APEndpointPlaybackSessionSetV2Item(a3, Mutable);
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
  }

  session_createDataFromDictionary(Mutable, &cf);
  v10 = *v8;
  v11 = cf;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v12)
  {
    v12(v10, v11, 0, 0);
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_setProxiedPropertyInternal_cold_3();
  }
}

void session_createDataFromDictionary(uint64_t a1, void *a2)
{
  if (FigCreateCFDataFromCFPropertyList())
  {
    session_createDataFromDictionary_cold_1();
  }

  else if (a2)
  {
    *a2 = 0;
  }
}

uint64_t session_AuthorizeItem(uint64_t a1, const void *a2, const void *a3, void (*a4)(void, void, void, void), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  cf = 0;
  v20 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_AuthorizeItem_cold_1();
    v14 = 0;
    Mutable = 0;
    v18 = 4294954511;
    goto LABEL_14;
  }

  v11 = session_ensureRemoteControlSessionCreated(a1);
  if (v11)
  {
    v18 = v11;
    session_AuthorizeItem_cold_2();
    v14 = 0;
    Mutable = 0;
    goto LABEL_14;
  }

  if (!*DerivedStorage)
  {
    session_AuthorizeItem_cold_3();
    v14 = 0;
    Mutable = 0;
    v18 = 4294950553;
    goto LABEL_14;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"authorizeItem");
  CFDictionarySetValue(Mutable, @"kind", @"request");
  if (!a3)
  {
    v14 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(v14, @"uuid", a3);
  CFDictionarySetValue(Mutable, @"item", v14);
  if (a2)
  {
LABEL_10:
    CFDictionarySetValue(Mutable, @"PIC-Request", a2);
  }

LABEL_11:
  v20 = a4;
  v21 = a5;
  session_addPendingRequest(a1, Mutable, &v20);
  session_createDataFromDictionary(Mutable, &cf);
  v15 = *DerivedStorage;
  v16 = cf;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v17)
  {
    v17(v15, v16, 0, 0);
  }

  v18 = 0;
LABEL_14:
  FigSimpleMutexUnlock();
  if (a4 && v18)
  {
    a4(0, 0, v18, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_AuthorizeItem_cold_4();
  }

  return 0;
}

const __CFDictionary *session_Play(uint64_t a1, const __CFDictionary *a2, void (*a3)(const __CFDictionary *, uint64_t), uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_Play_cold_1(v14);
    inserted = v14[0];
  }

  else
  {
    if (!*(DerivedStorage + 16))
    {
      SNPrintF();
      *(DerivedStorage + 16) = os_transaction_create();
    }

    APEndpointPlaybackSessionStatsUpdateAtPlay(*(DerivedStorage + 152), a2);
    APMetadataSourceCreateWithNowPlayingAppPID(*MEMORY[0x277CBECE8], *(DerivedStorage + 72), (DerivedStorage + 56));
    v9 = CMBaseObjectGetDerivedStorage();
    if (*(v9 + 56))
    {
      v10 = v9;
      if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
      {
        session_Play_cold_2();
      }

      *(v10 + 112) = APMetadataSourceAddEventCallback(*(v10 + 56), a1, session_handleMetadataEvent);
      *(v10 + 146) = 0;
    }

    v11 = *(DerivedStorage + 56);
    if (v11)
    {
      APMetadataSourceStart(v11);
    }

    inserted = session_insertPlayQueueItemInternal(a1, a2, 0, a3, a4);
    *(DerivedStorage + 88) = 1;
    session_updateIsPlayingAndPostNotification(a1, 1);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  if (a3 && inserted)
  {
    a3(inserted, a4);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_Play_cold_3();
  }

  return inserted;
}

unint64_t session_InsertPlayQueueItem(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, void (*a4)(unint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_InsertPlayQueueItem_cold_1(&v13);
    inserted = v13;
  }

  else if (a2)
  {
    inserted = session_insertPlayQueueItemInternal(a1, a2, a3, a4, a5);
  }

  else
  {
    session_InsertPlayQueueItem_cold_2(&v14);
    inserted = v14;
  }

  FigSimpleMutexUnlock();
  if (a4 && inserted)
  {
    a4(inserted, a5);
  }

  return inserted;
}

uint64_t session_RemovePlayQueueItem(uint64_t a1, const __CFDictionary *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC1020]);
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_RemovePlayQueueItem_cold_1();
    Mutable = 0;
    v16 = 4294954511;
LABEL_31:
    v15 = 1;
    goto LABEL_17;
  }

  if (!*DerivedStorage)
  {
    session_RemovePlayQueueItem_cold_2();
    Mutable = 0;
    v16 = 4294950553;
    goto LABEL_31;
  }

  v9 = *(DerivedStorage + 224);
  if (v9 && Value)
  {
    APLocalPlaybackServerUnRegisterUUID(v9, Value);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"removePlayQueueItem");
  FigCFDictionarySetValueFromKeyInDict();
  CFDictionarySetValue(Mutable, @"item", a2);
  session_createDataFromDictionary(Mutable, &cf);
  v11 = malloc_type_calloc(0x10uLL, 1uLL, 0x2FBF760uLL);
  *v11 = a3;
  v11[1] = a4;
  v12 = *DerivedStorage;
  v13 = cf;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v14(v12, v13, session_standardCompletion, v11);
  }

  v15 = 0;
  v16 = 0;
LABEL_17:
  FigSimpleMutexUnlock();
  if (a3 && v15)
  {
    a3(v16, a4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_RemovePlayQueueItem_cold_3();
  }

  return 0;
}

uint64_t session_Stop(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_Stop_cold_1();
    Mutable = 0;
    v14 = 4294954511;
LABEL_30:
    v13 = 1;
    goto LABEL_16;
  }

  if (!*DerivedStorage)
  {
    session_Stop_cold_3();
    Mutable = 0;
    v14 = 4294950553;
    goto LABEL_30;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize())
    {
      session_Stop_cold_2();
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  session_unsubscribeMetadataEvents();
  v7 = *(DerivedStorage + 56);
  if (v7)
  {
    APMetadataSourceStop(v7);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"stop");
  session_createDataFromDictionary(Mutable, &cf);
  v9 = malloc_type_calloc(0x10uLL, 1uLL, 0x35F6D2B8uLL);
  *v9 = a2;
  v9[1] = a3;
  v10 = *DerivedStorage;
  v11 = cf;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v12)
  {
    v12(v10, v11, session_standardCompletion, v9);
  }

  v13 = 0;
  v14 = 0;
LABEL_16:
  *(DerivedStorage + 88) = 0;
  session_updateIsPlayingAndPostNotification(a1, 0);
  FigSimpleMutexUnlock();
  if (a2 && v13)
  {
    a2(v14, a3);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_Stop_cold_4();
  }

  return 0;
}

uint64_t session_GetPlaybackInfo(uint64_t a1, void (*a2)(void, void, void), uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  cf = 0;
  v14 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_GetPlaybackInfo_cold_1();
    Mutable = 0;
    v12 = 4294954511;
LABEL_24:
    v11 = 1;
    goto LABEL_10;
  }

  if (!*DerivedStorage)
  {
    session_GetPlaybackInfo_cold_2();
    Mutable = 0;
    v12 = 4294950553;
    goto LABEL_24;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"playbackInfo");
  CFDictionarySetValue(Mutable, @"kind", @"request");
  v14 = a2;
  v15 = a3;
  session_addPendingRequest(a1, Mutable, &v14);
  session_createDataFromDictionary(Mutable, &cf);
  v8 = *DerivedStorage;
  v9 = cf;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v10(v8, v9, 0, 0);
  }

  v11 = 0;
  v12 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  if (a2 && v11)
  {
    a2(0, v12, a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_GetPlaybackInfo_cold_3();
  }

  return 0;
}

uint64_t session_SeekToTime(uint64_t a1, CMTime *a2, const __CFDictionary *a3, void (*a4)(void, void, void), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  cf = 0;
  v21 = 0;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_SeekToTime_cold_1();
    MutableCopy = 0;
    v18 = 4294954511;
LABEL_26:
    v17 = 1;
    goto LABEL_10;
  }

  if (!*DerivedStorage)
  {
    session_SeekToTime_cold_2();
    MutableCopy = 0;
    v18 = 4294950553;
    goto LABEL_26;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    time = *a2;
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, a3);
  CFDictionarySetValue(MutableCopy, @"type", @"seek");
  CFDictionarySetValue(MutableCopy, @"kind", @"request");
  time = *a2;
  FigCFDictionarySetCMTime();
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CC1020]);
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValue();
  v21 = a4;
  v22 = a5;
  session_addPendingRequest(a1, MutableCopy, &v21);
  session_createDataFromDictionary(MutableCopy, &cf);
  v14 = *DerivedStorage;
  v15 = cf;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v16)
  {
    v16(v14, v15, 0, 0);
  }

  v17 = 0;
  v18 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  if (a4 && v17)
  {
    a4(0, v18, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_SeekToTime_cold_3();
  }

  return 0;
}

uint64_t session_SeekToDate(uint64_t a1, const void *a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  cf = 0;
  v17 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_SeekToDate_cold_1();
    MutableCopy = 0;
    v15 = 4294954511;
LABEL_24:
    v14 = 1;
    goto LABEL_10;
  }

  if (!*DerivedStorage)
  {
    session_SeekToDate_cold_2();
    MutableCopy = 0;
    v15 = 4294950553;
    goto LABEL_24;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionarySetValue(MutableCopy, @"type", @"seek");
  FigCFDictionarySetValue();
  FigCFDictionarySetValueFromKeyInDict();
  CFDictionarySetValue(MutableCopy, @"date", a2);
  v17 = a4;
  v18 = a5;
  session_addPendingRequest(a1, MutableCopy, &v17);
  session_createDataFromDictionary(MutableCopy, &cf);
  v11 = *DerivedStorage;
  v12 = cf;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v13)
  {
    v13(v11, v12, 0, 0);
  }

  v14 = 0;
  v15 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  if (a4 && v14)
  {
    a4(0, v15, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_SeekToDate_cold_3();
  }

  return 0;
}

uint64_t session_SetRate(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33[0] = 0;
  v32 = **&MEMORY[0x277CC0898];
  v26 = *MEMORY[0x277CEA280];
  *&v31.value = *MEMORY[0x277CEA280];
  v11 = *(MEMORY[0x277CEA280] + 16);
  v31.epoch = v11;
  v30 = v32;
  v29 = v32;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_SetRate_cold_1();
    v13 = 0;
    v15 = 0;
    v24 = 4294954511;
LABEL_51:
    v23 = 1;
    goto LABEL_33;
  }

  if (!*DerivedStorage)
  {
    session_SetRate_cold_4();
    v13 = 0;
    v15 = 0;
LABEL_50:
    v24 = 4294950553;
    goto LABEL_51;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (a2)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v13 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"type", @"setRate");
  FigCFDictionarySetFloat32();
  v14 = *MEMORY[0x277CC0F48];
  if (FigCFDictionaryGetCMTimeIfPresent())
  {
    v15 = *(DerivedStorage + 48);
    if (v15)
    {
      if (v32.flags)
      {
        hostTime = v32;
        v16 = CMClockConvertHostTimeToSystemUnits(&hostTime);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v17 || v17(v15, v16, &v31))
        {
          if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 90 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
          {
            session_SetRate_cold_2();
          }

          *&v31.value = v26;
          v31.epoch = v11;
        }
      }

      hostTime = v31;
      v15 = APSNetworkTimeCopyAsDictionary();
      FigCFDictionarySetValue();
      CFDictionaryRemoveValue(v13, v14);
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v30, HostTimeClock);
      hostTime = v32;
      rhs = v30;
      CMTimeSubtract(&v29, &hostTime, &rhs);
      hostTime = v29;
      FigCFDictionarySetCMTime();
      goto LABEL_26;
    }

    session_SetRate_cold_3();
    goto LABEL_50;
  }

  v15 = 0;
LABEL_26:
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  session_createDataFromDictionary(v13, v33);
  v19 = malloc_type_calloc(0x10uLL, 1uLL, 0xF2C7D3DuLL);
  *v19 = a3;
  v19[1] = a4;
  session_updateIsPlayingAndPostNotification(a1, a5 != 0.0);
  v20 = *DerivedStorage;
  v21 = v33[0];
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v22)
  {
    v22(v20, v21, session_standardCompletion, v19);
  }

  v23 = 0;
  v24 = 0;
LABEL_33:
  FigSimpleMutexUnlock();
  if (a3 && v23)
  {
    a3(v24, a4);
  }

  if (v33[0])
  {
    CFRelease(v33[0]);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_SetRate_cold_5();
  }

  return 0;
}

uint64_t session_GetProxiedProperty(uint64_t a1, const void *a2, uint64_t a3, void (*a4)(void, void, void, void), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  cf = 0;
  v18 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_GetProxiedProperty_cold_1();
    Mutable = 0;
    v16 = 4294954511;
LABEL_26:
    v15 = 1;
    goto LABEL_12;
  }

  if (!*DerivedStorage)
  {
    session_GetProxiedProperty_cold_2();
    Mutable = 0;
    v16 = 4294950553;
    goto LABEL_26;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"property");
  CFDictionarySetValue(Mutable, @"kind", @"request");
  CFDictionarySetValue(Mutable, @"property", a2);
  if (a3)
  {
    APEndpointPlaybackSessionSetV2Item(a3, Mutable);
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
  }

  v18 = a4;
  v19 = a5;
  session_addPendingRequest(a1, Mutable, &v18);
  session_createDataFromDictionary(Mutable, &cf);
  v12 = *DerivedStorage;
  v13 = cf;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v14(v12, v13, 0, 0);
  }

  v15 = 0;
  v16 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  if (a4 && v15)
  {
    a4(a2, 0, v16, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_GetProxiedProperty_cold_3();
  }

  return 0;
}

uint64_t session_SetProxiedProperty(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_SetProxiedProperty_cold_1();
    v9 = 4294954511;
  }

  else if (*DerivedStorage)
  {
    session_setProxiedPropertyInternal(a1, a2, a3, a4);
    v9 = 0;
  }

  else
  {
    session_SetProxiedProperty_cold_2();
    v9 = 4294950553;
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t session_PerformRemoteAction(uint64_t a1, uint64_t a2, const void *a3, void (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_PerformRemoteAction_cold_1();
    Mutable = 0;
    DeepCopy = 0;
    v18 = 4294954511;
LABEL_33:
    v17 = 1;
    goto LABEL_16;
  }

  if (!*DerivedStorage)
  {
    session_PerformRemoteAction_cold_4();
    Mutable = 0;
    DeepCopy = 0;
    v18 = 4294950553;
    goto LABEL_33;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (FigCFEqual())
  {
    CFDictionarySetValue(Mutable, @"type", @"streamingKey");
    CFDictionarySetValue(Mutable, @"kind", @"request");
    FigCFDictionarySetValueFromKeyInDict();
    DeepCopy = CFPropertyListCreateDeepCopy(v9, a3, 2uLL);
    if (DeepCopy)
    {
      CFDictionarySetValue(Mutable, @"params", DeepCopy);
      v21[0] = a4;
      v21[1] = a5;
      session_addPendingRequest(a1, Mutable, v21);
      v12 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    session_PerformRemoteAction_cold_2();
  }

  else
  {
    if (!FigCFEqual())
    {
      FigSignalErrorAtGM();
      v17 = 0;
      v18 = 0;
      DeepCopy = 0;
      goto LABEL_16;
    }

    v12 = malloc_type_calloc(0x10uLL, 1uLL, 0xD42DAEE7uLL);
    *v12 = a4;
    v12[1] = a5;
    CFDictionarySetValue(Mutable, @"type", @"unhandledURL");
    CFDictionarySetValue(Mutable, @"kind", @"response");
    FigCFDictionarySetValueFromKeyInDict();
    DeepCopy = CFPropertyListCreateDeepCopy(v9, a3, 2uLL);
    if (DeepCopy)
    {
      CFDictionarySetValue(Mutable, @"response", DeepCopy);
      v13 = session_performActionUnhandledURLResponseCompletion;
LABEL_13:
      session_createDataFromDictionary(Mutable, &cf);
      v14 = *DerivedStorage;
      v15 = cf;
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v16)
      {
        v16(v14, v15, v13, v12);
      }

      goto LABEL_15;
    }

    session_PerformRemoteAction_cold_3();
  }

LABEL_15:
  v17 = 0;
  v18 = 0;
LABEL_16:
  FigSimpleMutexUnlock();
  if (a4 && v17)
  {
    a4(v18, 0, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (DeepCopy)
  {
    CFRelease(DeepCopy);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_PerformRemoteAction_cold_5();
  }

  return 0;
}

uint64_t session_SetEventHandler(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = malloc_type_calloc(0x20uLL, 1uLL, 0x141A2974uLL);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  if (a1)
  {
    CFRetain(a1);
    a4 = v9[3];
  }

  if (a4)
  {
    CFRetain(a4);
  }

  dispatch_sync_f(*(DerivedStorage + 160), v9, session_setEventHandlerInternal);
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_SetEventHandler_cold_1();
  }

  return 0;
}

uint64_t session_BroadcastCoordinatedPlaybackState(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_BroadcastCoordinatedPlaybackState_cold_1();
    Mutable = 0;
    v8 = 4294954511;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"type", @"playbackCoordinationMedium");
    CFDictionarySetValue(Mutable, @"name", a2);
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    session_createDataFromDictionary(Mutable, &cf);
    v5 = *DerivedStorage;
    v6 = cf;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v7(v5, v6, 0, 0);
    }

    v8 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigSimpleMutexUnlock();
  return v8;
}

void session_addPendingRequest(uint64_t a1, __CFDictionary *a2, const UInt8 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionarySetValue(a2, @"kind", @"request");
  ++*(DerivedStorage + 192);
  v6 = *MEMORY[0x277CBECE8];
  UInt64 = FigCFNumberCreateUInt64();
  if (UInt64)
  {
    v8 = UInt64;
    CFDictionarySetValue(a2, @"messageID", UInt64);
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      FigCFDictionarySetValueFromKeyInDict();
      v11 = CFDataCreate(v6, a3, 16);
      if (v11)
      {
        v12 = v11;
        FigCFDictionarySetValue();
        FigSimpleMutexLock();
        CFDictionarySetValue(*(DerivedStorage + 200), v8, v10);
        FigSimpleMutexUnlock();
        CFRelease(v10);
        CFRelease(v12);
      }

      else
      {
        session_addPendingRequest_cold_1(v10);
      }
    }

    else
    {
      session_addPendingRequest_cold_2();
    }

    CFRelease(v8);
  }

  else
  {
    session_addPendingRequest_cold_3();
  }
}

CFIndex session_createDictionaryFromData(CFDataRef data, void *a2)
{
  err = 0;
  v3 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], data, 1uLL, 0, &err);
  if (err)
  {
    Code = CFErrorGetCode(err);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    session_createDictionaryFromData_cold_1(Code, &v7);
    Code = v7;
    goto LABEL_8;
  }

  Code = 0;
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a2)
  {
    *a2 = v3;
  }

  else
  {
    CFRelease(v3);
  }

LABEL_8:
  if (err)
  {
    CFRelease(err);
  }

  return Code;
}

const __CFDictionary *session_insertPlayQueueItemInternal(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v55 = 0;
  v56 = 0;
  value = 0;
  v54 = 0;
  if (*(DerivedStorage + 104))
  {
    session_insertPlayQueueItemInternal_cold_1(buffer);
LABEL_101:
    MutableCopy = 0;
    v16 = 0;
    v19 = 0;
    goto LABEL_102;
  }

  if (!a2)
  {
    session_insertPlayQueueItemInternal_cold_14(buffer);
    goto LABEL_101;
  }

  v10 = session_ensureRemoteControlSessionCreated(a1);
  if (v10)
  {
    v42 = v10;
    session_insertPlayQueueItemInternal_cold_2();
    v19 = 0;
    v16 = 0;
    MutableCopy = 0;
    goto LABEL_105;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize())
    {
      session_insertPlayQueueItemInternal_cold_3(a2, a3);
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v50 = a4;
  v51 = a5;
  v11 = *MEMORY[0x277CBECE8];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v13 = *MEMORY[0x277CC0FE8];
  CFDictionaryGetValue(a2, *MEMORY[0x277CC0FE8]);
  FigCFDictionarySetValue();
  CFDictionaryRemoveValue(MutableCopy, v13);
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CC0FB0]);
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CC0F70]);
  v14 = *MEMORY[0x277CC0F90];
  if (!CFDictionaryContainsKey(MutableCopy, *MEMORY[0x277CC0F90]))
  {
    v35 = 0;
    v16 = 0;
    v19 = 0;
    goto LABEL_65;
  }

  v15 = CFDictionaryGetValue(MutableCopy, v14);
  v16 = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  v17 = *MEMORY[0x277CC0F78];
  v18 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CC0F78]);
  v19 = v18;
  if (v18)
  {
    CFRetain(v18);
  }

  CFDictionaryRemoveValue(MutableCopy, v14);
  CFDictionaryRemoveValue(MutableCopy, v17);
  v60 = 0;
  v20 = CMBaseObjectGetDerivedStorage();
  memset(buffer, 0, sizeof(buffer));
  v58 = 0;
  v21 = (v20 + 224);
  if (*(v20 + 224))
  {
    v60 = 0;
    goto LABEL_41;
  }

  if (!*(v20 + 216))
  {
    session_insertPlayQueueItemInternal_cold_12(&v60);
    goto LABEL_41;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(v20 + 40));
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v23)
  {
    v60 = v23(CMBaseObject, 0x28357A450, v11, &v58);
    if (!v60)
    {
      v62.location = 0;
      v62.length = 28;
      CFDataGetBytes(v58, v62, buffer);
      v24 = APSGetFBOPropertyInt64() != 0;
      if (v60)
      {
        session_insertPlayQueueItemInternal_cold_4();
        goto LABEL_41;
      }

      v49 = v24;
      v25 = CMBaseObjectGetDerivedStorage();
      cf[0] = 0;
      if (!*(v25 + 216))
      {
        goto LABEL_97;
      }

      v26 = APSenderSessionGetCMBaseObject(*(v25 + 40));
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27)
      {
        LODWORD(v61) = v27(v26, @"KeyHolder", v11, cf);
        if (!v61)
        {
          if (!cf[0])
          {
            goto LABEL_97;
          }

          v28 = APSGetFBOPropertyInt64() != 0;
          if (v61)
          {
            session_insertPlayQueueItemInternal_cold_5();
          }

LABEL_27:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (v28)
          {
            v29 = CMBaseObjectGetDerivedStorage();
            cf[0] = 0;
            v61 = 0;
            v30 = APSenderSessionGetCMBaseObject(*(v29 + 40));
            v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v31 || v31(v30, @"KeyHolder", v11, cf))
            {
              session_insertPlayQueueItemInternal_cold_8();
            }

            else
            {
              v32 = cf[0];
              if (!cf[0])
              {
                goto LABEL_37;
              }

              v33 = *(*(CMBaseObjectGetVTable() + 16) + 48);
              if (!v33 || v33(v32, "Pair-TLS-PSK", 12, 0, 0, 16, &v61))
              {
                session_insertPlayQueueItemInternal_cold_7();
              }
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

LABEL_37:
            v34 = v61;
            if (v61)
            {
              *cf = *buffer;
              *(&cf[1] + 4) = *&buffer[12];
              v60 = APLocalPlaybackServerMake(cf, v49, v61, v21);
              if (v60)
              {
                session_insertPlayQueueItemInternal_cold_9();
              }

              CFRelease(v34);
              goto LABEL_41;
            }
          }

LABEL_97:
          session_insertPlayQueueItemInternal_cold_10(&v60);
          goto LABEL_41;
        }
      }

      else
      {
        LODWORD(v61) = -12782;
      }

      session_insertPlayQueueItemInternal_cold_6();
      v28 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v60 = -12782;
  }

  session_insertPlayQueueItemInternal_cold_11();
LABEL_41:
  if (v58)
  {
    CFRelease(v58);
  }

  if (v60)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v35 = 0;
    goto LABEL_65;
  }

  v36 = *(DerivedStorage + 224);
  v37 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CC1020]);
  v38 = APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL(v36, v37, v16, v19, &v55, &v54);
  if (!v38)
  {
    v35 = CFStringCreateWithFormat(v11, 0, @"https://%@%@", v55, v54);
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (CFDictionaryGetValueIfPresent(MutableCopy, @"Content-Location", &value))
    {
      v39 = @"Offline-HLS-Content-Location";
    }

    else
    {
      v39 = @"Content-Location";
    }

    CFDictionarySetValue(MutableCopy, v39, v35);
    CFDictionarySetValue(MutableCopy, @"IsTLSEnabled", *MEMORY[0x277CBED28]);
LABEL_65:
    v40 = *(DerivedStorage + 32);
    if (v40)
    {
      CFDictionarySetValue(MutableCopy, @"audioMode", v40);
    }

    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"type", @"insertPlayQueueItem");
    FigCFDictionarySetValueFromKeyInDict();
    CFDictionarySetValue(Mutable, @"item", MutableCopy);
    if (a3)
    {
      CFDictionarySetValue(Mutable, @"itemAfter", a3);
    }

    *(DerivedStorage + 145) = 1;
    v42 = *(DerivedStorage + 128);
    if (v42)
    {
      CFRetain(*(DerivedStorage + 128));
      v43 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      session_findDiffVideoV2Metadata(0, v42, v43);
      CFDictionarySetValue(Mutable, @"metadata", v43);
      if (v43)
      {
        CFRelease(v43);
      }
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    session_createDataFromDictionary(Mutable, &v56);
    v44 = malloc_type_calloc(0x10uLL, 1uLL, 0xB532AEB3uLL);
    *v44 = v50;
    v44[1] = v51;
    v45 = *DerivedStorage;
    v46 = v56;
    v47 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v47)
    {
      v47(v45, v46, session_standardCompletion, v44);
    }

    if (v42)
    {
      CFRelease(v42);
      v42 = 0;
    }

    if (MutableCopy)
    {
      goto LABEL_81;
    }

    goto LABEL_82;
  }

  session_insertPlayQueueItemInternal_cold_13(v38, buffer);
LABEL_102:
  v42 = *buffer;
  if (*buffer)
  {
LABEL_105:
    APEndpointPlaybackSessionStatsSetLastError();
  }

  v35 = 0;
  Mutable = 0;
  if (MutableCopy)
  {
LABEL_81:
    CFRelease(MutableCopy);
  }

LABEL_82:
  if (v56)
  {
    CFRelease(v56);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v42;
}

void session_handleMetadataEvent(uint64_t a1, const void *a2, int a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    session_handleMetadataEvent_cold_1();
    return;
  }

  v8 = DerivedStorage;
  if (a3 == 1952807028)
  {
    CFRetain(a2);
    CFRetain(a4);
    v9 = *(v8 + 120);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __session_handleMetadataEvent_block_invoke_2;
    v11[3] = &__block_descriptor_48_e5_v8__0l;
    v11[4] = a2;
    v11[5] = a4;
    v10 = v11;
  }

  else
  {
    if (a3 != 1634890784)
    {
      return;
    }

    CFRetain(a2);
    CFRetain(a4);
    v9 = *(v8 + 120);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __session_handleMetadataEvent_block_invoke;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = a2;
    v12[5] = a4;
    v10 = v12;
  }

  dispatch_async(v9, v10);
}

void __session_handleMetadataEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104) || !*(DerivedStorage + 144))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    session_compareAndStoreIfDifferent(@"artworkData", 0, v3, Mutable, @"ArtworkData", 0);
    session_compareAndStoreIfDifferent(@"artworkMIMEType", 0, v3, Mutable, @"ArtworkMIMEType", 0);
    if (FigCFDictionaryGetCount() < 1)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v8 = *(DerivedStorage + 136);
      if (v8)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, v8);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v11 = MutableCopy;
      CFDictionaryMergeDictionary();
      if (*(DerivedStorage + 145))
      {
        v10 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v12 = *(DerivedStorage + 136);
        Empty = CFDataGetEmpty();
        session_compareAndStoreIfDifferent(@"ArtworkData", v12, v11, v10, @"ArtworkData", Empty);
        session_compareAndStoreIfDifferent(@"ArtworkMIMEType", v12, v11, v10, @"ArtworkMIMEType", 0);
      }

      else
      {
        v10 = 0;
      }

      v14 = *(DerivedStorage + 136);
      *(DerivedStorage + 136) = v11;
      if (v11)
      {
        CFRetain(v11);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    if (FigCFDictionaryGetCount() >= 1)
    {
      v15 = CMBaseObjectGetDerivedStorage();
      v16 = FigCFDictionaryCreateMutableCopy();
      FigCFDictionaryGetValue();
      if (!*(v15 + 104))
      {
        if (!FigCFEqual())
        {
          Value = FigCFDictionaryGetValue();
          if (Value)
          {
            v19 = Value;
            if (CFDataGetLength(Value) >= 1)
            {
              ScaledImageDataWithData = CreateScaledImageDataWithData();
              CFDataGetLength(v19);
              CFDataGetLength(ScaledImageDataWithData);
              v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
              FigCFDictionarySetValue();
              if (ScaledImageDataWithData)
              {
                CFRelease(ScaledImageDataWithData);
              }
            }
          }
        }

        if (*v5 <= 30 && (*v5 != -1 || _LogCategory_Initialize()))
        {
          __session_handleMetadataEvent_block_invoke_cold_1();
        }

        session_setProxiedPropertyInternal(v2, @"metadata", 0, v16);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    FigSimpleMutexUnlock();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  CFRelease(*(a1 + 32));
  v17 = *(a1 + 40);

  CFRelease(v17);
}

void __session_handleMetadataEvent_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    goto LABEL_37;
  }

  if (!*(DerivedStorage + 146))
  {
    *(DerivedStorage + 146) = 1;
    CFDictionaryGetInt64();
    mach_absolute_time();
    UpTicksToSecondsF();
    v6 = v5;
    if (IsAppleInternalBuild())
    {
      APSSettingsGetDouble();
    }

    else
    {
      v7 = 0.1;
    }

    if (v6 > v7)
    {
      __session_handleMetadataEvent_block_invoke_2_cold_1();
LABEL_37:
      FigSimpleMutexUnlock();
      goto LABEL_35;
    }
  }

  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  session_compareAndStoreIfDifferent(@"album", 0, v3, Mutable, @"Album", 0);
  session_compareAndStoreIfDifferent(@"artist", 0, v3, Mutable, @"Artist", 0);
  session_compareAndStoreIfDifferent(@"title", 0, v3, Mutable, @"Title", 0);
  session_compareAndStoreIfDifferent(@"totalTracks", 0, v3, Mutable, @"TotalTrackCount", 0);
  session_compareAndStoreIfDifferent(@"trackNumber", 0, v3, Mutable, @"TrackNumber", 0);
  if (FigCFDictionaryGetCount() < 1)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v10 = *(DerivedStorage + 128);
    if (v10)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v10);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v13 = MutableCopy;
    CFDictionaryMergeDictionary();
    if (*(DerivedStorage + 145))
    {
      v12 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      session_findDiffVideoV2Metadata(*(DerivedStorage + 128), v13, v12);
    }

    else
    {
      v12 = 0;
    }

    v14 = *(DerivedStorage + 128);
    *(DerivedStorage + 128) = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (FigCFDictionaryGetCount() >= 1)
  {
    session_setProxiedPropertyInternal(v2, @"metadata", 0, v12);
  }

  FigSimpleMutexUnlock();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_35:
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
}

void session_compareAndStoreIfDifferent(void *key, CFDictionaryRef theDict, const __CFDictionary *a3, __CFDictionary *a4, const void *a5, const void *a6)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = FigCFEqual();
    v13 = 0;
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_12:
    v12 = a6;
    if (!a6)
    {
      return;
    }

    goto LABEL_13;
  }

  Value = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = CFDictionaryGetValue(a3, key);
  if (FigCFEqual())
  {
    v13 = v12;
LABEL_7:
    if (!a6)
    {
      return;
    }

    if (Value)
    {
      return;
    }

    v12 = a6;
    if (v13)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_13:

  CFDictionarySetValue(a4, a5, v12);
}

void session_findDiffVideoV2Metadata(CFDictionaryRef theDict, const __CFDictionary *a2, __CFDictionary *a3)
{
  session_compareAndStoreIfDifferent(@"Album", theDict, a2, a3, @"Album", &stru_283570B70);
  session_compareAndStoreIfDifferent(@"Artist", theDict, a2, a3, @"Artist", &stru_283570B70);
  session_compareAndStoreIfDifferent(@"Title", theDict, a2, a3, @"Title", &stru_283570B70);
  session_compareAndStoreIfDifferent(@"TotalTrackCount", theDict, a2, a3, @"TotalTrackCount", &stru_283570B70);

  session_compareAndStoreIfDifferent(@"TrackNumber", theDict, a2, a3, @"TrackNumber", &stru_283570B70);
}

void session_setEventHandlerInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_setEventHandlerInternal_cold_1();
  }

  *(DerivedStorage + 168) = *(a1 + 8);
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(DerivedStorage + 184);
    *(DerivedStorage + 184) = v3;
    CFRetain(v3);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void endpointLocal_handleEndpointDescriptionChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v52 = 0;
  theString[0] = 0;
  FigSimpleMutexLock();
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
LABEL_117:
    APSLogErrorAt();
    goto LABEL_108;
  }

  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 16));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, @"PairingPeerCUSystemIdentifier", v8, theString);
    if (theString[0])
    {
      if (CFStringGetLength(theString[0]))
      {
        goto LABEL_9;
      }

      if (theString[0])
      {
        CFRelease(theString[0]);
        theString[0] = 0;
      }
    }
  }

  v12 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 16));
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, @"DeviceID", v8, theString);
  }

LABEL_9:
  if (theString[0] && CFStringGetLength(theString[0]))
  {
    *(DerivedStorage + 153) = 1;
    if (!CFEqual(theString[0], *(DerivedStorage + 24)))
    {
      OUTLINED_FUNCTION_1_1();
      if (v16 ^ v17 | v15 && (v14 != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      v18 = *(DerivedStorage + 24);
      v19 = theString[0];
      *(DerivedStorage + 24) = theString[0];
      if (v19)
      {
        v19 = CFRetain(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      OUTLINED_FUNCTION_8_0(v19, @"IDDidChange");
    }
  }

  else if (gLogCategory_APEndpointLocal <= 90 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v20 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 16));
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v21)
  {
    v21(v20, @"Name", v8, &v52);
  }

  Length = v52;
  if (!v52 || (Length = CFStringGetLength(v52)) == 0)
  {
    if (gLogCategory_APEndpointLocal <= 90)
    {
      if (gLogCategory_APEndpointLocal != -1 || (Length = _LogCategory_Initialize(), Length))
      {
        Length = LogPrintF();
        if (a5)
        {
          goto LABEL_42;
        }

LABEL_63:
        v25 = 1;
        goto LABEL_64;
      }
    }

LABEL_41:
    if (a5)
    {
      goto LABEL_42;
    }

    goto LABEL_63;
  }

  *(DerivedStorage + 154) = 1;
  Length = CFEqual(v52, *(DerivedStorage + 32));
  if (Length)
  {
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_1_1();
  if (v16 ^ v17 | v15 && (v23 != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  v30 = *(DerivedStorage + 32);
  v31 = v52;
  *(DerivedStorage + 32) = v52;
  if (v31)
  {
    v31 = CFRetain(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  OUTLINED_FUNCTION_8_0(v31, @"NameDidChange");
  if (!a5)
  {
    goto LABEL_63;
  }

LABEL_42:
  Int64 = CFDictionaryGetInt64();
  v25 = Int64 == 0;
  if (Int64)
  {
    OUTLINED_FUNCTION_1_1();
    if (v16 ^ v17 | v15)
    {
      if (v27 != -1 || (v26 = OUTLINED_FUNCTION_4(), v26))
      {
        v26 = OUTLINED_FUNCTION_2();
      }
    }

    OUTLINED_FUNCTION_8_0(v26, @"ClusterInfoDidChange");
  }

  if (CFDictionaryGetInt64())
  {
    OUTLINED_FUNCTION_1_1();
    if (v16 ^ v17 | v15)
    {
      if (v29 != -1 || (v28 = OUTLINED_FUNCTION_4(), v28))
      {
        v28 = OUTLINED_FUNCTION_2();
      }
    }

    OUTLINED_FUNCTION_8_0(v28, @"ClusterLeaderDidChange");
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7();
  Length = OUTLINED_FUNCTION_7();
LABEL_64:
  if (*(DerivedStorage + 153) && *(DerivedStorage + 154))
  {
    OUTLINED_FUNCTION_8_0(Length, @"LocalEndpointInfoComplete");
  }

  if (*(DerivedStorage + 9))
  {
    v32 = 3;
  }

  else
  {
    v32 = 0;
  }

  v33 = CMBaseObjectGetDerivedStorage();
  if (*(v33 + 156) != v32)
  {
    OUTLINED_FUNCTION_1_1();
    if (v16 ^ v17 | v15 && (v34 != -1 || OUTLINED_FUNCTION_4()))
    {
      APSGetAPVolumeControlTypeName();
      APSGetAPVolumeControlTypeName();
      OUTLINED_FUNCTION_2();
    }

    *(v33 + 156) = v32;
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_9_0();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (!v25)
  {
    v35 = CMBaseObjectGetDerivedStorage();
    if (*(v35 + 40))
    {
      *(v35 + 152) = 1;
      v36 = CMBaseObjectGetDerivedStorage();
      if (*(v36 + 41))
      {
        goto LABEL_108;
      }

      v37 = v36;
      *(v36 + 48) = -72277;
      v38 = CFGetAllocator(a2);
      v39 = CFDictionaryCreateMutable(v38, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v39)
      {
        v40 = v39;
        v41 = CFGetAllocator(a2);
        v42 = CFDictionaryCreateMutable(v41, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v42)
        {
          APSLogErrorAt();
          goto LABEL_107;
        }

        v43 = v42;
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetValue(v40, *MEMORY[0x277CC0CC8], *MEMORY[0x277CC0CA0]);
        CFDictionarySetValue(v43, *MEMORY[0x277CC0BD8], *MEMORY[0x277CC0BC8]);
        if (!v37[14])
        {
          goto LABEL_102;
        }

        if (v37[17])
        {
          v44 = FigCFWeakReferenceHolderCopyReferencedObject();
          v45 = v44;
          if (v37[17] && !v44)
          {
            if (gLogCategory_APEndpointLocal > 90)
            {
LABEL_106:
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
              CFRelease(v43);
LABEL_107:
              CFRelease(v40);
              goto LABEL_108;
            }

            if (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize())
            {
              LogPrintF();
            }

LABEL_102:
            if (gLogCategory_APEndpointLocal <= 30 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            goto LABEL_106;
          }
        }

        else
        {
          v45 = 0;
        }

        v47 = CFRetain(a2);
        v48 = v37[7];
        theString[1] = v47;
        theString[2] = v48;
        v49 = CFRetain(v43);
        v50 = v37[14];
        theString[3] = v49;
        theString[4] = v50;
        theString[5] = v45;
        OUTLINED_FUNCTION_1_1();
        if (v16 ^ v17 | v15 && (v51 != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2();
        }

        APSDispatchAsyncFHelper();
        goto LABEL_102;
      }

      goto LABEL_117;
    }

    OUTLINED_FUNCTION_1_1();
    if (v16 ^ v17 | v15 && (v46 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_9_0();
  }

LABEL_108:
  FigSimpleMutexUnlock();
  if (theString[0])
  {
    CFRelease(theString[0]);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t endpointLocal_setIsMuted(uint64_t a1, int a2, int a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v7 = result;
    if (gLogCategory_APEndpointLocal <= 50)
    {
      if (gLogCategory_APEndpointLocal != -1 || (result = OUTLINED_FUNCTION_4(), result))
      {
        result = OUTLINED_FUNCTION_2();
      }
    }

    if (*(v7 + 173) != a2)
    {
      *(v7 + 173) = a2;
      if (!*(v7 + 8))
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        APSVolumeConvertDBToSliderValue();
        if (a2 == 1)
        {
          APSVolumeConvertDBToSliderValue();
          v10 = v9;
          v11 = *(DerivedStorage + 164);
        }

        else
        {
          v10 = *(DerivedStorage + 176);
          APSVolumeConvertDBToSliderValue();
        }

        *(DerivedStorage + 176) = v11;
        if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2();
        }

        return endpointLocal_setVolumeSlider(v10, a1, 0);
      }
    }
  }

  return result;
}

uint64_t endpointLocal_Dissociate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 41);
  *(DerivedStorage + 41) = 1;
  FigSimpleMutexUnlock();
  if (!v1)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  return 0;
}

uint64_t endpointLocal_UpdateFeatures(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (!*(DerivedStorage + 40))
  {
    v15 = 4294949691;
    goto LABEL_23;
  }

  if (*(DerivedStorage + 41))
  {
    v15 = 4294950573;
    goto LABEL_23;
  }

  v10 = v9 | a2;
  if ((v9 | a2) == v9 && v10 == a2)
  {
    goto LABEL_18;
  }

  if (v10 == v9 || v10 == a2)
  {
    if (!a3 || (v13 = CFGetTypeID(a3), v13 == CFDictionaryGetTypeID()))
    {
LABEL_18:
      v15 = 0;
      goto LABEL_19;
    }

    v15 = 4294950576;
LABEL_23:
    APSLogErrorAt();
    goto LABEL_19;
  }

  v15 = 4294960591;
LABEL_19:
  endpointLocal_activateInternal(a1, v15, *(DerivedStorage + 56), 0, a2, a3, a4);
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t endpointLocal_SetProperty_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

const void *endpointLocal_copyFromEndpointDescription_cold_2(uint64_t a1, _DWORD *a2, void *a3)
{
  result = APSGetFBOPropertyInt64();
  if (!*a2)
  {
    result = APEndpointAPSClusterTypeToFigEndpointClusterType(result);
    if (result)
    {
      result = CFRetain(result);
    }

    *a3 = result;
  }

  return result;
}

uint64_t endpointLocal_copyFromEndpointDescription_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_3_3(a1);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v2 = OUTLINED_FUNCTION_5_0();
    result = v3(v2);
  }

  else
  {
    result = 4294954514;
  }

  *v1 = result;
  return result;
}

uint64_t endpointLocal_copyFromEndpointDescription_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_3(a1);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v2 = OUTLINED_FUNCTION_5_0();
    result = v3(v2);
  }

  else
  {
    result = 4294954514;
  }

  *v1 = result;
  return result;
}

uint64_t endpointLocal_copyFromEndpointDescription_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_3_3(a1);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v2 = OUTLINED_FUNCTION_5_0();
    result = v3(v2);
  }

  else
  {
    result = 4294954514;
  }

  *v1 = result;
  return result;
}

uint64_t endpointLocal_copyPropertyInternal_cold_10(uint64_t a1, _DWORD *a2)
{
  if (gLogCategory_APEndpointLocal <= 60)
  {
    if (gLogCategory_APEndpointLocal != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = -17606;
  return result;
}

uint64_t endpointLocal_setVolumeSlider_cold_1()
{
  APSVolumeConvertSliderValueToDB();
  APSVolumeConvertSliderValueToDB();
  return OUTLINED_FUNCTION_2();
}

void endpoint_handleIdleStateChanged_cold_1(uint64_t a1, char *a2)
{
  v3 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v3) <= 0)
  {
LABEL_5:
    v5 = 1;
    if (!v3)
    {
      goto LABEL_7;
    }

LABEL_6:
    CFRelease(v3);
    goto LABEL_7;
  }

  v4 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v3, v4);
    if (APSGetFBOPropertyInt64())
    {
      break;
    }

    if (++v4 >= CFArrayGetCount(v3))
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  *a2 = v5;
}

uint64_t mfiMutualAuth_setAndLogSecureTunnelState_cold_1(uint64_t a1, unsigned int a2)
{
  mfiMutualAuth_getSecureTunnelStateString(*(a1 + 124));
  mfiMutualAuth_getSecureTunnelStateString(a2);
  return LogPrintF();
}

void __metadataSource_notifyMetadataChange_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = 0;
  }

  (*(a3 + 8))(*(a1 + 32), v5, *(a1 + 56), *(a1 + 40), *(a1 + 48), *(a1 + 60));
  if (v5)
  {

    CFRelease(v5);
  }
}

void APMetadataSourceCreateWithRoutingContextUUID_cold_1(void *a1)
{
  APSLogErrorAt();
}

const __CFData *metadataSource_handleNowPlayingInfoChangedInternal_cold_1()
{
  v0 = getkMRMediaRemoteNowPlayingInfoArtworkData();
  result = OUTLINED_FUNCTION_2_3(v0);
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    result = CFDataGetTypeID();
    if (v3 == result)
    {
      result = CFDataGetLength(v2);
    }
  }

  if (gLogCategory_APMetadataSource <= 40)
  {
    if (gLogCategory_APMetadataSource != -1 || (result = _LogCategory_Initialize(), result))
    {
      v4 = getkMRMediaRemoteNowPlayingInfoArtist();
      OUTLINED_FUNCTION_2_3(v4);
      v5 = getkMRMediaRemoteNowPlayingInfoAlbum();
      OUTLINED_FUNCTION_2_3(v5);
      v6 = getkMRMediaRemoteNowPlayingInfoTitle();
      OUTLINED_FUNCTION_2_3(v6);
      v7 = getkMRMediaRemoteNowPlayingInfoTrackNumber();
      OUTLINED_FUNCTION_2_3(v7);
      v8 = getkMRMediaRemoteNowPlayingInfoTotalTrackCount();
      OUTLINED_FUNCTION_2_3(v8);
      v9 = getkMRMediaRemoteNowPlayingInfoElapsedTime();
      OUTLINED_FUNCTION_2_3(v9);
      v10 = getkMRMediaRemoteNowPlayingInfoDuration();
      OUTLINED_FUNCTION_2_3(v10);
      v11 = getkMRMediaRemoteNowPlayingInfoArtworkMIMEType();
      OUTLINED_FUNCTION_2_3(v11);
      return OUTLINED_FUNCTION_6();
    }
  }

  return result;
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteMediaTypeMusic(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 137, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoMediaType(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 128, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_5()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoAssetURL(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 68, @"%s", dlerror()}];
  __break(1u);
}

uint64_t metadataSource_handleNowPlayingInfoChangedInternal_cold_9(uint64_t result)
{
  v1 = result;
  if (gLogCategory_APMetadataSource <= 60)
  {
    if (gLogCategory_APMetadataSource != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = -6705;
  return result;
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_29()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoShuffleMode(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 104, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_30()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoRepeatMode(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 101, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_31()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoPlaybackRate(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 95, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_32()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoIsAlwaysLive(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 86, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_33()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoIsExplicitTrack(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 92, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_34()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTotalDiscCount(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 113, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_35()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoDiscNumber(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 74, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_36()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTotalQueueCount(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 116, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_37()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoQueueIndex(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 98, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_38()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoGenre(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 83, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_39()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoComposer(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 71, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_43(_DWORD *a1, const void *a2)
{
  APSLogErrorAt();
  *a1 = -6728;
  CFRelease(a2);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_45()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoIsMusicApp(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 89, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleMRSupportedCommandsChangedInternal_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFDataRef soft_MRMediaRemoteCommandInfoCreateExternalRepresentation(CFAllocatorRef description:{MRMediaRemoteCommandInfoRef)"), @"APSenderMediaRemoteSoftLinking.h", 149, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingClientChangedInternal_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFDataRef soft_MRNowPlayingClientCreateExternalRepresentation(MRNowPlayingClientRef)") description:{@"APSenderMediaRemoteSoftLinking.h", 156, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingClientChangedInternal_cold_3(void *a1, CFTypeRef cf)
{
  v4 = a1[10];
  a1[10] = cf;
  CFRetain(cf);
  if (v4)
  {
    CFRelease(v4);
  }

  metadataSource_notifyMetadataChange(a1, 1836215907, cf, @"notApplicable", 0);
  CFRelease(cf);
}

void __getMRClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRClientClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 33, @"Unable to find class %s", "MRClient"}];
  __break(1u);
}

void MediaRemoteLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *MediaRemoteLibrary(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 29, @"%s", *a1}];
  __break(1u);
}

void __getMRPlayerPathClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRPlayerPathClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 39, @"Unable to find class %s", "MRPlayerPath"}];
  __break(1u);
}

void __getMRDestinationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRDestinationClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 36, @"Unable to find class %s", "MRDestination"}];
  __break(1u);
}

uint64_t metadataSource_notifyListenerAboutCurrentMetadata_cold_2()
{
  result = APSLogErrorAt();
  if (gLogCategory_APMetadataSource <= 90)
  {
    if (gLogCategory_APMetadataSource != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void __getMRNowPlayingControllerConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRNowPlayingControllerConfigurationClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 45, @"Unable to find class %s", "MRNowPlayingControllerConfiguration"}];
  __break(1u);
}

void __getMRPlaybackQueueRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRPlaybackQueueRequestClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 48, @"Unable to find class %s", "MRPlaybackQueueRequest"}];
  __break(1u);
}

void __getMRNowPlayingControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRNowPlayingControllerClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 42, @"Unable to find class %s", "MRNowPlayingController"}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoArtworkData_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoArtworkData(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 59, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoArtist_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoArtist(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 56, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoAlbum_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoAlbum(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 53, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoTitle_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTitle(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 110, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoTrackNumber_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTrackNumber(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 122, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoTotalTrackCount_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTotalTrackCount(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 119, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoElapsedTime_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoElapsedTime(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 80, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoDuration_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoDuration(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 77, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoArtworkMIMEType_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoArtworkMIMEType(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 65, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoTimestamp_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTimestamp(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 107, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoUniqueIdentifier_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoUniqueIdentifier(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 125, @"%s", dlerror()}];
  __break(1u);
}

uint64_t mcs_handlePasswordChangedNotification()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 8))
  {

    return mcs_updatePassword();
  }

  return result;
}

uint64_t mcs_SetProxiedProperty(const void *a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    Value = FigCFDictionaryGetValue();
  }

  else
  {
    Value = 0;
  }

  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  if (*(DerivedStorage + 8))
  {
    return 4294950554;
  }

  CFRetain(a2);
  if (Value)
  {
    CFRetain(Value);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t mcs_SetEventHandler()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  if (*(DerivedStorage + 8))
  {
    return 4294950554;
  }

  APSDispatchSyncTask();
  return 0;
}

void mcs_AuthorizeItemInternal(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v6 = 0;
    v5 = 4294950554;
    goto LABEL_7;
  }

  v2 = mcs_EnsureConnectedInternal(*a1);
  if (v2)
  {
    v5 = v2;
LABEL_19:
    APSLogErrorAt();
    v6 = 0;
    goto LABEL_7;
  }

  CFDataGetBytePtr(*(a1 + 8));
  CFDataGetLength(*(a1 + 8));
  FigCFStringGetCStringPtrAndBufferToFree();
  v3 = MediaControlClient_DoAuthorize();
  if (v3)
  {
    v5 = v3;
    goto LABEL_19;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  v5 = 0;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_283570B70;
  }

LABEL_7:
  v7 = *(a1 + 24);
  if (v7)
  {
    v7(0, v6, v5, *(a1 + 32));
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(*a1);
  free(0);
}

uint64_t mcs_EnsureConnectedInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    return 4294950554;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 32))
  {
    return 0;
  }

  v4 = *(DerivedStorage + 80);
  if (v4)
  {
    APEndpointDescriptionGetDeviceID(v4);
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = MediaControlClient_Create();
  if (v6)
  {
    v32 = v6;
LABEL_71:
    APSLogErrorAt();
    return v32;
  }

  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v3[12] = v7;
  if (!v7)
  {
    APSLogErrorAt();
    return 4294950555;
  }

  MediaControlClient_SetDispatchQueue();
  MediaControlClient_SetEventHandler();
  if (v3[9])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_1_3();
    FigNotificationCenterAddWeakListener();
  }

  updated = mcs_updatePassword();
  if (updated)
  {
    v32 = updated;
    goto LABEL_71;
  }

  if (!v3[10])
  {
    goto LABEL_55;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  v37 = 0;
  if (!*(v9 + 32) || (v10 = v9, !*(v9 + 80)))
  {
    APSLogErrorAt();
    v36 = -6705;
LABEL_74:
    v40 = v36;
    goto LABEL_50;
  }

  Mutable = CFDictionaryCreateMutable(v5, 6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v36 = -6728;
    goto LABEL_74;
  }

  v12 = Mutable;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v10 + 80));
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v40 = -12782;
    goto LABEL_47;
  }

  v14(CMBaseObject, @"Name", v5, &value);
  OUTLINED_FUNCTION_2_4();
  if (!v16 && v15)
  {
    goto LABEL_47;
  }

  if (value)
  {
    CFDictionarySetValue(v12, @"MediaControlClientRouteInfo_Name", value);
  }

  v17 = APEndpointDescriptionGetCMBaseObject(*(v10 + 80));
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    v40 = -12782;
    goto LABEL_47;
  }

  v18(v17, @"TransportDevice", v5, &cf);
  OUTLINED_FUNCTION_2_4();
  if (!v16 && v19)
  {
    goto LABEL_47;
  }

  if (cf)
  {
    CFDictionarySetValue(v12, @"MediaControlClientRouteInfo_TransportDevice", cf);
  }

  v20 = *(v10 + 80);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v21)
  {
    v22 = v21(v20, 27);
    v23 = *MEMORY[0x277CBED28];
    v24 = *MEMORY[0x277CBED10];
    v25 = *MEMORY[0x277CBED28];
    if (v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v23 = *MEMORY[0x277CBED28];
    v24 = *MEMORY[0x277CBED10];
  }

  v25 = v24;
LABEL_33:
  CFDictionarySetValue(v12, @"MediaControlClientRouteInfo_PairingEnabled", v25);
  v26 = APEndpointDescriptionGetCMBaseObject(*(v10 + 80));
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v27)
  {
    v40 = -12782;
LABEL_47:
    APSLogErrorAt();
    goto LABEL_48;
  }

  v27(v26, @"PairingPeerPublicKey", v5, &v37);
  OUTLINED_FUNCTION_2_4();
  if (!v16 && v28)
  {
    goto LABEL_47;
  }

  if (v37)
  {
    CFDictionarySetValue(v12, @"MediaControlClientRouteInfo_PublicKey", v37);
  }

  v29 = APSGetFBOPropertyInt64();
  if (v40 != -12784)
  {
    if (v40)
    {
      goto LABEL_47;
    }
  }

  v30 = APSGetFBOPropertyInt64();
  if (v40 != -12784)
  {
    if (v40)
    {
      goto LABEL_47;
    }
  }

  if (v29 | v30)
  {
    v31 = v23;
  }

  else
  {
    v31 = v24;
  }

  CFDictionarySetValue(v12, @"MediaControlClientRouteInfo_PairPinEnabled", v31);
  MediaControlClient_SetInfo();
  v40 = 0;
LABEL_48:
  CFRelease(v12);
  if (value)
  {
    CFRelease(value);
  }

LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  v32 = v40;
  if (v40)
  {
    goto LABEL_71;
  }

LABEL_55:
  if (v3[11])
  {
    v33 = MediaControlClient_SetConnectionInterfaceManager();
    if (v33)
    {
      v32 = v33;
      goto LABEL_71;
    }
  }

  v32 = MediaControlClient_EnsureConnected();
  if (v32)
  {
    goto LABEL_71;
  }

  IsConnectedOnP2PInterface = MediaControlClient_IsConnectedOnP2PInterface();
  mcs_postConnectedStateChangedNotification(a1, 1, IsConnectedOnP2PInterface, 0);
  return v32;
}

void mcs_EventHandler(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  value = 0;
  if (!a2 || !a3)
  {
    APSLogErrorAt();
    v11 = 0;
    v4 = 0;
    goto LABEL_30;
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    goto LABEL_37;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  if (*(DerivedStorage + 8))
  {
LABEL_37:
    v11 = 0;
    goto LABEL_30;
  }

  v6 = CFDictionaryGetValue(a2, @"state");
  v7 = v6;
  if (v6 == @"disconnected")
  {
    goto LABEL_42;
  }

  if (!v6)
  {
LABEL_28:
    v11 = CFRetain(a2);
    goto LABEL_29;
  }

  if (CFEqual(v6, @"disconnected"))
  {
LABEL_42:
    if (CFDictionaryGetValue(a2, @"error"))
    {
      CFNumberGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      CFDictionaryGetInt64();
      if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      TypedValue = 0;
    }

    mcs_postConnectedStateChangedNotification(v4, 0, 0, TypedValue);
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (CFEqual(v7, @"playing"))
  {
    v9 = 1;
  }

  else
  {
    v9 = CFEqual(v7, @"loading") != 0;
  }

  mcs_updateIsPlayingAndPostNotification(v4, v9);
  if (v7 != @"playing" && !CFEqual(v7, @"playing"))
  {
    goto LABEL_28;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
  v11 = MutableCopy;
  if (MutableCopy)
  {
    v12 = *MEMORY[0x277CC0DD0];
    v13 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CC0DD0]);
    if (!v13)
    {
LABEL_29:
      CFRetain(v4);
      CFRetain(v11);
      APSDispatchAsyncFHelper();
      goto LABEL_30;
    }

    if (!APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime(v13, &value))
    {
      CFDictionarySetValue(v11, v12, value);
      goto LABEL_29;
    }
  }

  APSLogErrorAt();
LABEL_30:
  if (value)
  {
    CFRelease(value);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void mcs_RemovePlayQueueItemInternal()
{
  v1 = OUTLINED_FUNCTION_3_5();
  if (*(v1 + 8))
  {
    v2 = 4294950554;
  }

  else if (*(v1 + 32))
  {
    v2 = MediaControlClient_DoRemovePlaylistItem();
    if (v2)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    v2 = 4294950553;
  }

  v3 = *(v0 + 16);
  if (v3)
  {
    v3(v2, *(v0 + 24));
  }

  v4 = *(v0 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *v0;

  CFRelease(v5);
}

void mcs_GetPlaybackInfoInternal()
{
  v1 = OUTLINED_FUNCTION_3_5();
  v5 = 0;
  cf = 0;
  if (*(v1 + 8))
  {
    PlayPlaybackInfoTimesInCMTime = 4294950554;
  }

  else if (*(v1 + 32))
  {
    v2 = MediaControlClient_CopyPlaybackInfo();
    if (v2)
    {
      PlayPlaybackInfoTimesInCMTime = v2;
    }

    else
    {
      PlayPlaybackInfoTimesInCMTime = APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime(cf, &v5);
      if (!PlayPlaybackInfoTimesInCMTime)
      {
        goto LABEL_5;
      }
    }

    APSLogErrorAt();
  }

  else
  {
    PlayPlaybackInfoTimesInCMTime = 4294950553;
  }

LABEL_5:
  v4 = *(v0 + 8);
  if (v4)
  {
    v4(v5, PlayPlaybackInfoTimesInCMTime, *(v0 + 16));
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*v0);
}

void mcs_SeekToTimeInternal()
{
  v1 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + 8);
  CMTimeGetSeconds(&v5);
  if (*(v1 + 8))
  {
    v2 = 4294950554;
  }

  else if (*(v1 + 32))
  {
    v2 = MediaControlClient_DoScrubSet();
    if (v2)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    v2 = 4294950553;
  }

  v3 = *(v0 + 40);
  if (v3)
  {
    v3(0, v2, *(v0 + 48));
  }

  v4 = *(v0 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(*v0);
}

void mcs_SetProxiedPropertyInternal()
{
  v1 = OUTLINED_FUNCTION_3_5();
  if (*(v1 + 8))
  {
    v2 = 4294950554;
  }

  else if (*(v1 + 32))
  {
    v2 = MediaControlClient_SetProperty();
    if (v2)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    v2 = 4294950553;
  }

  v3 = *(v0 + 32);
  if (v3)
  {
    v3(0, v2, *(v0 + 40));
  }

  CFRelease(*(v0 + 8));
  v4 = *(v0 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v0 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *v0;

  CFRelease(v6);
}

void mcs_SetRateInternal()
{
  v1 = OUTLINED_FUNCTION_3_5();
  if (*(v1 + 8))
  {
    v2 = 4294950554;
  }

  else if (*(v1 + 32))
  {
    v2 = MediaControlClient_DoRate();
    if (v2)
    {
      APSLogErrorAt();
    }

    else
    {
      mcs_updateIsPlayingAndPostNotification(*v0, *(v0 + 8) != 0.0);
    }
  }

  else
  {
    v2 = 4294950553;
  }

  v3 = *(v0 + 16);
  if (v3)
  {
    v3(v2, *(v0 + 24));
  }

  v4 = *v0;

  CFRelease(v4);
}

void mcs_PerformRemoteActionInternal()
{
  v1 = OUTLINED_FUNCTION_3_5();
  v7 = 0;
  if (!*(v1 + 8))
  {
    if (*(v1 + 32))
    {
      v2 = MediaControlClient_DoAction();
      if (v2)
      {
        v6 = v2;
        APSLogErrorAt();
        v7 = v6;
      }
    }
  }

  v3 = *(v0 + 24);
  if (v3)
  {
    v3(v7, 0, *(v0 + 32));
  }

  v4 = *(v0 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v0 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*v0);
}

uint64_t mcs_SetEventHandlerInternal()
{
  v1 = OUTLINED_FUNCTION_3_5();
  if (*(v1 + 8))
  {
    return 4294950554;
  }

  *(v1 + 104) = *(v0 + 8);
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v1 + 120);
    *(v1 + 120) = v2;
    CFRetain(v2);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  return 0;
}

uint64_t mcs_CopyProperty_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16741;
  return result;
}

uint64_t mcs_CopyProperty_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12785;
  return result;
}

void mcs_InvalidateInternal_cold_1(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_1_3();
    FigNotificationCenterRemoveWeakListener();
  }

  MediaControlClient_Cancel();
  MediaControlClient_EnsureDisconnected();
  MediaControlClient_Invalidate();
  v4 = *(a1 + 96);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 96) = 0;
  }

  mcs_postConnectedStateChangedNotification(a2, 0, 0, 0);
}

uint64_t mcs_SeekToTime_cold_1(uint64_t a1, CMTime *a2)
{
  time = *a2;
  CMTimeGetSeconds(&time);
  return LogPrintF();
}

uint64_t APMulticastProbeSenderRegister(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 64))
  {
    APSLogErrorAt();
    v13 = 4294896148;
    goto LABEL_18;
  }

  if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  v7 = APSCopyNetworkInterfaceType();
  if (v7)
  {
    v13 = v7;
LABEL_29:
    APSLogErrorAt();
    goto LABEL_18;
  }

  if (!FigCFEqual())
  {
    v13 = 4294960561;
    goto LABEL_18;
  }

  if (!*(DerivedStorage + 96))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 96) = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      v13 = 4294960568;
      goto LABEL_18;
    }
  }

  v9 = multicastProbeSender_registerDeviceForAddressFamily(a1, a2, a3, 2);
  if (v9)
  {
    v13 = v9;
    goto LABEL_29;
  }

  v10 = multicastProbeSender_registerDeviceForAddressFamily(a1, a2, a3, 30);
  if (v10)
  {
    v13 = v10;
    goto LABEL_29;
  }

  if (!*(DerivedStorage + 112))
  {
    v11 = *(DerivedStorage + 56);
    v12 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v11, v12, 0xDF8475800uLL, 0x47868C00uLL);
    *(DerivedStorage + 112) = 1;
    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }
  }

  v13 = 0;
LABEL_18:
  FigSimpleMutexUnlock();
  if (v13 && gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v13;
}

uint64_t APMulticastProbeSenderUpdateMC2UC(uint64_t a1, const void *a2, int a3, int a4, uint64_t a5, int a6)
{
  mach_absolute_time();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 64))
  {
    APSLogErrorAt();
    v20 = 4294896148;
    goto LABEL_48;
  }

  if (!a2 || !*(DerivedStorage + 96))
  {
    APSLogErrorAt();
    v20 = 4294960591;
    goto LABEL_48;
  }

  if (gLogCategory_APMulticastProbeSender <= 40 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!CFDictionaryContainsKey(*(DerivedStorage + 96), a2))
  {
    APSLogErrorAt();
    v20 = 4294960569;
    goto LABEL_48;
  }

  CFDictionaryGetValue(*(DerivedStorage + 96), a2);
  if (a6 == 6)
  {
    if (!OUTLINED_FUNCTION_4_2())
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_5_1();
    FigCFDictionarySetInt32();
    v16 = OUTLINED_FUNCTION_4_2();
    if (v16 == a4 || *(DerivedStorage + 72) != a3)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_14();
    if (v16)
    {
      CFDictionaryGetInt64();
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_5_1();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_12_0();
      if (!(v14 ^ v15 | v13) || v17 == -1 && !OUTLINED_FUNCTION_4())
      {
        goto LABEL_46;
      }

      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      OUTLINED_FUNCTION_14();
      UpTicksToMilliseconds();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_12_0();
      if (!(v14 ^ v15 | v13) || v19 == -1 && !OUTLINED_FUNCTION_4())
      {
        goto LABEL_46;
      }
    }

    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  else
  {
    if (a6 != 4)
    {
      goto LABEL_47;
    }

    if (!OUTLINED_FUNCTION_4_2())
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_5_1();
    FigCFDictionarySetInt32();
    v11 = OUTLINED_FUNCTION_4_2();
    if (v11 == a4 || *(DerivedStorage + 68) != a3)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_14();
    if (v11)
    {
      CFDictionaryGetInt64();
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_5_1();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_12_0();
      if (!(v14 ^ v15 | v13) || v12 == -1 && !OUTLINED_FUNCTION_4())
      {
        goto LABEL_46;
      }

      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      OUTLINED_FUNCTION_14();
      UpTicksToMilliseconds();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_12_0();
      if (!(v14 ^ v15 | v13) || v18 == -1 && !OUTLINED_FUNCTION_4())
      {
        goto LABEL_46;
      }
    }

    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

LABEL_46:
  FigCFDictionarySetUInt64();
LABEL_47:
  v20 = 0;
LABEL_48:
  FigSimpleMutexUnlock();
  return v20;
}

uint64_t APMulticastProbeSenderCopySSMGroupInfo(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a3)
  {
    goto LABEL_19;
  }

  v7 = 4294896148;
  if (*(DerivedStorage + 64))
  {
    goto LABEL_14;
  }

  v8 = APSCopyNetworkInterfaceType();
  if (v8)
  {
    v7 = v8;
    goto LABEL_14;
  }

  if (!FigCFEqual())
  {
    v7 = 4294960561;
    goto LABEL_14;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(v9 + 64))
  {
    APSLogErrorAt();
    goto LABEL_14;
  }

  if (!a2)
  {
LABEL_19:
    APSLogErrorAt();
    v7 = 4294960591;
    goto LABEL_14;
  }

  v10 = multicastProbeSender_constructMulticastGroupInfoForAddressFamily(a1, a2, 2, &v12);
  if (v10)
  {
    v7 = v10;
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    if (multicastProbeSender_constructMulticastGroupInfoForAddressFamily(a1, a2, 30, &v12) && gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    v7 = 0;
    *a3 = v12;
  }

LABEL_14:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t multicastProbeSender_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 64))
  {
    *(DerivedStorage + 64) = 1;
    dispatch_source_cancel(*(DerivedStorage + 56));
    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t multicastProbeSender_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  multicastProbeSender_Invalidate();
  v1 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CFDictionaryApplyBlock();
  CFDictionaryRemoveAllValues(*(v1 + 104));
  if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  FigSimpleMutexUnlock();
  v2 = DerivedStorage[12];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[13];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[6];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = DerivedStorage[7];
  if (v5)
  {
    dispatch_release(v5);
  }

  result = FigSimpleMutexDestroy();
  if (gLogCategory_APMulticastProbeSender <= 50)
  {
    if (gLogCategory_APMulticastProbeSender != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      OUTLINED_FUNCTION_2_0();

      return LogPrintF();
    }
  }

  return result;
}

void __multicastProbeSender_createMC2UCProbingTimer_block_invoke()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    multicastProbeSender_probeForMC2UC(v1, 2);
    multicastProbeSender_probeForMC2UC(v1, 30);
    FigSimpleMutexUnlock();

    CFRelease(v1);
  }
}

uint64_t multicastProbeSender_probeForMC2UC(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v11[3] = mach_absolute_time();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 64))
  {
    APSLogErrorAt();
    v7 = v13;
    v8 = -71148;
    goto LABEL_23;
  }

  if (FigCFDictionaryGetCount())
  {
    if (a2 == 30)
    {
      ++*(DerivedStorage + 72);
    }

    else
    {
      if (a2 != 2)
      {
        if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_4_0();
        }

        v7 = v13;
        v8 = -6705;
        goto LABEL_23;
      }

      ++*(DerivedStorage + 68);
    }

    if (gLogCategory_APMulticastProbeSender <= 40 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      FigCFDictionarySetUInt32();
      if (gLogCategory_APMulticastProbeSender <= 10 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      Data = CFPropertyListCreateData(0, v5, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      CFRelease(v5);
      if (Data)
      {
        CFDictionaryApplyBlock();
        CFRelease(Data);
        goto LABEL_24;
      }
    }

    else
    {
      APSLogErrorAt();
      if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_4_0();
      }
    }

    APSLogErrorAt();
    v7 = v13;
    v8 = -6700;
LABEL_23:
    *(v7 + 6) = v8;
  }

LABEL_24:
  v9 = *(v13 + 6);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __multicastProbeSender_probeForMC2UC_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = 0;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    goto LABEL_52;
  }

  if (!FigCFDictionaryGetValue())
  {
LABEL_53:
    APSLogErrorAt();
    v9 = 0;
    v32 = *(*(a1 + 32) + 8);
    v33 = -6709;
LABEL_48:
    *(v32 + 24) = v33;
    goto LABEL_49;
  }

  v5 = CFStringGetOrCopyCStringUTF8();
  OUTLINED_FUNCTION_1_4(v5);
  if (*(v6 + 24))
  {
    APSLogErrorAt();
LABEL_52:
    v9 = 0;
    goto LABEL_49;
  }

  FigCFDictionaryGetIntIfPresent();
  if (!CFDictionaryGetValue(a3, @"MC2UCSSMGroupInfo"))
  {
    goto LABEL_53;
  }

  v7 = *(a1 + 84);
  if (v7 == 30)
  {
    SockAddr = APSCFDictionaryGetSockAddr();
    v9 = 0;
    OUTLINED_FUNCTION_1_4(SockAddr);
    goto LABEL_49;
  }

  if (v7 != 2)
  {
    if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = 0;
    v32 = *(*(a1 + 32) + 8);
    v33 = -6705;
    goto LABEL_48;
  }

  v8 = APSCFDictionaryGetSockAddr();
  v9 = 0;
  OUTLINED_FUNCTION_1_4(v8);
  if (*(v10 + 24) || BYTE1(v38) != 2)
  {
    goto LABEL_49;
  }

  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    goto LABEL_53;
  }

  v13 = Value;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v15 = v14(v13);
  }

  else
  {
    v15 = 0;
  }

  Length = CFDataGetLength(*(a1 + 56));
  v9 = malloc_type_malloc(Length + v15, 0x100004077774924uLL);
  if (!v9)
  {
    APSLogErrorAt();
    v32 = *(*(a1 + 32) + 8);
    v33 = -6728;
    goto LABEL_48;
  }

  BytePtr = CFDataGetBytePtr(*(a1 + 56));
  v18 = CFDataGetLength(*(a1 + 56));
  v19 = CFDataGetLength(*(a1 + 56));
  v20 = CFDataGetLength(*(a1 + 56));
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v21)
  {
    v22 = v21(v13, 0, 0, BytePtr, v18, v9, v19, &v9[v20], v15);
  }

  else
  {
    v22 = 4294954514;
  }

  OUTLINED_FUNCTION_1_4(v22);
  if (!*(v23 + 24))
  {
    v24 = 0;
    v25 = 3;
    while (!send(-1, v9, Length + v15, 0))
    {
LABEL_38:
      if (!--v25)
      {
        if (v24)
        {
          v34 = 0;
          v35 = &v34;
          v36 = 0x2000000000;
          v37 = 0;
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexCheckIsLockedOnThisThread();
          if (*(DerivedStorage + 64))
          {
            APSLogErrorAt();
            *(v35 + 6) = -71148;
          }

          else
          {
            CFDictionaryApplyBlock();
          }

          _Block_object_dispose(&v34, 8);
        }

        goto LABEL_49;
      }
    }

    v26 = *(a1 + 84);
    if (v26 == 30)
    {
      if (!v24)
      {
        OUTLINED_FUNCTION_10_0();
        *(v30 + 88) = v29;
      }

      if (gLogCategory_APMulticastProbeSender > 50 || gLogCategory_APMulticastProbeSender == -1 && !OUTLINED_FUNCTION_4())
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v26 != 2)
      {
        goto LABEL_37;
      }

      if (!v24)
      {
        OUTLINED_FUNCTION_10_0();
        *(v28 + 80) = v27;
      }

      if (gLogCategory_APMulticastProbeSender > 50 || gLogCategory_APMulticastProbeSender == -1 && !OUTLINED_FUNCTION_4())
      {
        goto LABEL_37;
      }
    }

    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
LABEL_37:
    ++v24;
    goto LABEL_38;
  }

  APSLogErrorAt();
  if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_49:
  free(v9);
  free(0);
}

uint64_t AirPlayReceiverServicesServerStart()
{
  if (!FigGetCFPreferenceNumberWithDefault())
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA3A0], @"com.apple.airplay.receiverservices");
  v1 = APSXPCServerStart();
  if (v1)
  {
    APSLogErrorAt();
    if (!Mutable)
    {
      return v1;
    }

    goto LABEL_6;
  }

  if (IsAppleInternalBuild())
  {
    OUTLINED_FUNCTION_1_5();
    APSXPCServerAddCommandHandler();
  }

  if (Mutable)
  {
LABEL_6:
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t AirPlayXPCServicesServerStart()
{
  v0 = AirPlayReceiverServicesServerStart();
  if (v0)
  {
    v4 = v0;
LABEL_13:
    APSLogErrorAt();
    return v4;
  }

  v1 = AirPlayDiscoveryBrokerXPCServicesServerStart();
  if (v1)
  {
    v4 = v1;
    goto LABEL_13;
  }

  started = FigBufferedAirPlayGlobalRoutingRegistryStartServer();
  if (started)
  {
    v4 = started;
    goto LABEL_13;
  }

  v3 = APCarPlayAVVCServerInit();
  if (v3)
  {
    v4 = v3;
    goto LABEL_13;
  }

  if (!MEMORY[0x223DAEBE0]())
  {
    APDemoManagerStart();
    APSRegisterReceiverAppLauncher();
  }

  return 0;
}

uint64_t AirPlayStartEndpointManagerXPCServiceIfNeeded()
{
  v6 = 0;
  value = 0;
  v5 = 0;
  if (!FigServer_IsAirplayd())
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 0;
  }

  v1 = Mutable;
  v2 = APGetEndpointManager(&value);
  if (v2)
  {
    started = v2;
    APSLogErrorAt();
  }

  else
  {
    CFDictionarySetValue(v1, *MEMORY[0x277CC0C68], value);
    APGetEndpointManagerCarPlay(&v6);
    FigCFDictionarySetValue();
    SPGetEndpointManager(&v5);
    FigCFDictionarySetValue();
    FigEndpointManagerForNeroGetShared();
    FigCFDictionarySetValue();
    started = FigEndpointManagerStartServerEx();
    if (started)
    {
      APSLogErrorAt();
      if (gLogCategory_AirPlayServices <= 90 && (gLogCategory_AirPlayServices != -1 || OUTLINED_FUNCTION_4_3()))
      {
        OUTLINED_FUNCTION_2_1();
        LogPrintF();
      }
    }
  }

  CFRelease(v1);
  return started;
}

uint64_t AirPlayAutoconnectServicesServerStart()
{
  if (!FigGetCFPreferenceNumberWithDefault())
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA3A0], @"com.apple.airplay.autoconnect.services.allow");
  v1 = APSXPCServerStart();
  if (v1)
  {
    APSLogErrorAt();
    if (!Mutable)
    {
      return v1;
    }

    goto LABEL_6;
  }

  if (IsAppleInternalBuild())
  {
    OUTLINED_FUNCTION_1_5();
    APSXPCServerAddCommandHandler();
  }

  if (Mutable)
  {
LABEL_6:
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t AirPlayStartEndpointXPCService()
{
  v0 = MEMORY[0x223DAEBE0]();
  IsAirplayd = FigServer_IsAirplayd();
  started = 0;
  if (v0)
  {
    if (IsAirplayd)
    {
      started = FigEndpointStartServerEx();
      if (started)
      {
        APSLogErrorAt();
        if (gLogCategory_AirPlayServices <= 90 && (gLogCategory_AirPlayServices != -1 || OUTLINED_FUNCTION_4_3()))
        {
          OUTLINED_FUNCTION_2_1();
          LogPrintF();
        }
      }
    }
  }

  return started;
}

uint64_t AirPlayXPCServicesStart_cold_1()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_2()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_3()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_4()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_5()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_6()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_7()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_8()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_13(char a1, _DWORD *a2)
{
  v4 = AirPlayReceiverServicesServerStart();
  if (v4)
  {
    v7 = v4;
    result = APSLogErrorAt();
    if (gLogCategory_AirPlayServices > 90)
    {
      goto LABEL_20;
    }

    if (gLogCategory_AirPlayServices == -1)
    {
      result = OUTLINED_FUNCTION_4_3();
      if (!result)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    OUTLINED_FUNCTION_2_1();
    result = LogPrintF();
    goto LABEL_20;
  }

  v5 = AirPlayAutoconnectServicesServerStart();
  if (v5)
  {
    v7 = v5;
    result = APSLogErrorAt();
    if (gLogCategory_AirPlayServices > 90)
    {
      goto LABEL_20;
    }

    if (gLogCategory_AirPlayServices == -1)
    {
      result = OUTLINED_FUNCTION_4_3();
      if (!result)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_26;
  }

  if (a1)
  {
    if (gLogCategory_AirPlayServices <= 50 && (gLogCategory_AirPlayServices != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (APAirPlayAgentServicesClientSendCommand() && gLogCategory_AirPlayServices <= 90 && (gLogCategory_AirPlayServices != -1 || OUTLINED_FUNCTION_4_3()))
    {
      OUTLINED_FUNCTION_2_1();
      LogPrintF();
    }
  }

  result = IsAppleTV();
  if (!result)
  {
    goto LABEL_19;
  }

  result = APSLocalAudioCapabilityMonitorGetSharedInstance();
  v7 = result;
  if (result)
  {
    if (gLogCategory_AirPlayServices <= 90)
    {
      if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
      {
        OUTLINED_FUNCTION_2_1();
        result = LogPrintF();
      }
    }

LABEL_19:
    v7 = 0;
  }

LABEL_20:
  *a2 = v7;
  return result;
}

void AirPlayStartServicesInMXProcess_cold_1()
{
  OUTLINED_FUNCTION_3_7();
  if (gLogCategory_AirPlayServices <= 90 && (gLogCategory_AirPlayServices != -1 || OUTLINED_FUNCTION_4_3()))
  {
    OUTLINED_FUNCTION_2_1();
    LogPrintF();
  }

  *v0 = v1;
}

uint64_t AirPlayStartServicesInMXProcess_cold_2(uint64_t result, _DWORD *a2)
{
  v3 = result;
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *a2 = v3;
  return result;
}

uint64_t compsource_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    if (gLogCategory_APAudioSourceCompression <= 30 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *v1 = 1;
    compsource_ensureAudioConverterDestroyed();
    v2 = *(v1 + 6);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 6) = 0;
    }
  }

  return 0;
}

uint64_t compsource_Resume()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceCompression <= 30 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  cf[0] = 0;
  cf[1] = 0;
  v32 = 0;
  v2 = (v1 + 104);
  if (!*(v1 + 104))
  {
    v3 = v1;
    v4 = *(v1 + 48);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (!v5)
    {
      v17 = 4294954514;
      goto LABEL_17;
    }

    v6 = v5(v4, v3 + 56);
    if (v6)
    {
      v17 = v6;
      goto LABEL_17;
    }

    v7 = AudioConverterNew((v3 + 56), (v3 + 8), v2);
    if (v7)
    {
      v17 = v7;
      goto LABEL_17;
    }

    CMBaseObject = FigEndpointAudioSourceGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, *MEMORY[0x277CC0A58], 0, cf);
      if (cf[0])
      {
        RichestDecodableFormatAndChannelLayout = CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
        if (!v34 || RichestDecodableFormatAndChannelLayout)
        {
          if (RichestDecodableFormatAndChannelLayout && gLogCategory_APAudioSourceCompression <= 90 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        else
        {
          v30 = 0u;
          v31 = 0u;
          LODWORD(v30) = *v34;
          v11 = OUTLINED_FUNCTION_2_5();
          v13 = AudioConverterSetProperty(v11, 0x69636C20u, 0x20u, v12);
          if (v13)
          {
            v17 = v13;
            goto LABEL_17;
          }

          v14 = OUTLINED_FUNCTION_2_5();
          v16 = AudioConverterSetProperty(v14, 0x6F636C20u, 0x20u, v15);
          if (v16)
          {
            v17 = v16;
LABEL_17:
            APSLogErrorAt();
            goto LABEL_42;
          }
        }
      }
    }

    if (*(v3 + 96))
    {
      LODWORD(v30) = *(v3 + 96);
      v18 = OUTLINED_FUNCTION_2_5();
      v20 = AudioConverterSetProperty(v18, 0x70616B6Cu, 4u, v19);
      if (v20)
      {
        v17 = v20;
        goto LABEL_17;
      }
    }

    if (*(v3 + 136))
    {
      LODWORD(v30) = *(v3 + 136);
      v21 = OUTLINED_FUNCTION_2_5();
      v23 = AudioConverterSetProperty(v21, 0x76627262u, 4u, v22);
      if (v23)
      {
        v17 = v23;
        goto LABEL_17;
      }

      if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_2();
      }
    }

    if (*(v3 + 144) != -1)
    {
      LODWORD(v30) = *(v3 + 144);
      v24 = OUTLINED_FUNCTION_2_5();
      v26 = AudioConverterSetProperty(v24, 0x63647175u, 4u, v25);
      if (v26)
      {
        v17 = v26;
        goto LABEL_17;
      }

      if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_2();
      }
    }

    if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_2();
    }
  }

  v17 = 0;
LABEL_42:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v17)
  {
    goto LABEL_49;
  }

  v27 = *(DerivedStorage + 48);
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v28)
  {
    v17 = 4294954514;
    goto LABEL_49;
  }

  v17 = v28(v27);
  if (v17)
  {
LABEL_49:
    APSLogErrorAt();
    return v17;
  }

  *(DerivedStorage + 128) = 0;
  return v17;
}

uint64_t compsource_audioConverterInputCallBack_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_APAudioSourceCompression <= 30)
  {
    if (gLogCategory_APAudioSourceCompression != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a3 = -16774;
  return result;
}

uint64_t epp_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = epp_copyInner();
  v10 = (*(a5 + 16))(a5, a3, "EndpointPlus:[%{ptr}] Parent:[%{ptr}]\n", a1, a2);
  if (!v10)
  {
    APSHierarchyReporterProtocolGetProtocolID();
    if (!CMBaseObjectImplementsProtocol())
    {
      v15 = 0;
      goto LABEL_14;
    }

    APSHierarchyReporterProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v12 = *(ProtocolVTable + 16)) != 0)
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        v14 = v13(v9, a1, a3 + 1, 0, a5);
        v15 = v14;
        if (v14 != -12782 && v14 != -12788)
        {
LABEL_13:
          if (!v15)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v15 = 4294954514;
      }
    }

    else
    {
      v15 = 4294954508;
    }

    v15 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v9, 0, " ", 0, 0, v15, a1);
    goto LABEL_13;
  }

  v15 = v10;
LABEL_20:
  APSLogErrorAt();
LABEL_14:
  if (v9)
  {
    CFRelease(v9);
  }

  return v15;
}

void epp_activationCallback(int a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v9 = a5[1];
  v10 = a5[2];
  v11 = a5[3];
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || OUTLINED_FUNCTION_13_0()))
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_6();
  }

  if (v10)
  {
    v10(v9, a2, a3, a4, v11);
  }

  if (*a5)
  {
    CFRelease(*a5);
  }

  v12 = a5[1];
  if (v12)
  {
    CFRelease(v12);
  }

  free(a5);
}

void epp_completionCallback(int a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || OUTLINED_FUNCTION_13_0()))
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_6();
  }

  if (v6)
  {
    v6(v5, a2, v7);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v8 = a3[1];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a3);
}

void epp_sendCommandCallback(int a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v7 = a4[1];
  v8 = a4[2];
  v9 = a4[3];
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || OUTLINED_FUNCTION_13_0()))
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_6();
  }

  if (v8)
  {
    v8(v7, a2, a3, v9);
  }

  if (*a4)
  {
    CFRelease(*a4);
  }

  v10 = a4[1];
  if (v10)
  {
    CFRelease(v10);
  }

  free(a4);
}

void epp_sendDataCallback(int a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v7 = a4[1];
  v8 = a4[2];
  v9 = a4[3];
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || OUTLINED_FUNCTION_13_0()))
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_6();
  }

  if (v8)
  {
    v8(v7, a2, a3, v9);
  }

  if (*a4)
  {
    CFRelease(*a4);
  }

  v10 = a4[1];
  if (v10)
  {
    CFRelease(v10);
  }

  free(a4);
}

uint64_t epp_handleInnerNotification_cold_1()
{
  if (IsAppleInternalBuild() && gLogCategory_APEndpointPlus == -1)
  {
    _LogCategory_Initialize();
  }

  return OUTLINED_FUNCTION_6();
}

void epp_EnsureAuthorizedWithCompletionCallback_cold_1(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_7_0(a1, a2);
  *(v3 + 8) = 3221225472;
  *(v3 + 16) = __epp_EnsureAuthorizedWithCompletionCallback_block_invoke_2;
  *(v3 + 24) = &__block_descriptor_52_e5_v8__0l;
  *(v3 + 48) = -17606;
  *(v3 + 32) = 0;
  *(v3 + 40) = v4;
  dispatch_async(v2, v3);
}

uint64_t __epp_postNotificationAsync_block_invoke_cold_1()
{
  if (IsAppleInternalBuild() && gLogCategory_APEndpointPlus == -1)
  {
    _LogCategory_Initialize();
  }

  return OUTLINED_FUNCTION_6();
}

void epp_SendCommand_cold_1(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_7_0(a1, a2);
  *(v3 + 8) = 3221225472;
  *(v3 + 16) = __epp_SendCommand_block_invoke_2;
  *(v3 + 24) = &__block_descriptor_52_e5_v8__0l;
  *(v3 + 48) = -17606;
  *(v3 + 32) = 0;
  *(v3 + 40) = v4;
  dispatch_async(v2, v3);
}

uint64_t epp_delegate_handleAuthRequired_cold_3()
{
  APSLogErrorAt();

  return FigSimpleMutexUnlock();
}

uint64_t epp_updateDescription_cold_2(uint64_t a1, int *a2)
{
  ClusterLeaderOrAny = epp_getClusterLeaderOrAny();
  if (!ClusterLeaderOrAny)
  {
    v6 = -6709;
    goto LABEL_5;
  }

  result = epp_updateDescriptionFromEndpoint(a1, ClusterLeaderOrAny);
  v6 = result;
  if (result)
  {
LABEL_5:
    result = APSLogErrorAt();
  }

  *a2 = v6;
  return result;
}

uint64_t APEndpointStreamAudioHoseAggregateRegisterWithParentRegistrar(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 56))
  {
    v7 = 0;
    goto LABEL_13;
  }

  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  v3 = *(DerivedStorage + 40);
  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0)
  {
    v7 = 4294954508;
    goto LABEL_12;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    v7 = 4294954514;
    goto LABEL_12;
  }

  v7 = v6(v3, a1, 0, DerivedStorage + 48);
  if (v7)
  {
LABEL_12:
    APSLogErrorAt();
    goto LABEL_13;
  }

  *(DerivedStorage + 56) = 1;
LABEL_13:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    FigSimpleMutexLock();
    if (!*(v3 + 56))
    {
      FigSimpleMutexUnlock();
      return 0;
    }
  }

  else if (!*(DerivedStorage + 56))
  {
    return 0;
  }

  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  v5 = *(v3 + 40);
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  if (v4)
  {
    FigSimpleMutexUnlock();
  }

  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v7 = *(ProtocolVTable + 16);
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v8(v5, a1, 0);
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t hoseAggregate_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    FigSimpleMutexLock();
    if (*v3)
    {
      FigSimpleMutexUnlock();
      return 0;
    }
  }

  else if (*DerivedStorage)
  {
    return 0;
  }

  *v3 = 1;
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(v3 + 24) = 0;
  }

  if (v4)
  {
    FigSimpleMutexUnlock();
  }

  APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(a1);
  return 0;
}

void hoseAggregate_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  hoseAggregate_Invalidate(a1);
  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
  }

  FigSimpleMutexDestroy();
  DerivedStorage[1] = 0;
  v4 = DerivedStorage[2];
  if (v4)
  {
    dispatch_release(v4);
  }

  DerivedStorage[2] = 0;
}

uint64_t hoseAggregate_audioHoseSendAudio()
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 0;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v2 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    return v2;
  }

  v0 = OUTLINED_FUNCTION_1_7();
  v2 = v1(v0);
  if (v2)
  {
    goto LABEL_6;
  }

  return v2;
}

uint64_t hoseAggregate_audioHoseSendAudioBatch()
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 0;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 88))
  {
    v0 = OUTLINED_FUNCTION_1_7();
    v2 = v1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    v2 = FigTransportStreamSendBatchSlow();
  }

  v3 = v2;
  if (v2)
  {
    APSLogErrorAt();
  }

  return v3;
}

uint64_t hoseAggregate_audioHoseRegistrarDeregisterHose(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (*DerivedStorage)
    {
      return 4294954511;
    }

    else
    {
      if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      if (a1)
      {
        CFRetain(a1);
      }

      CFRetain(a2);
      if (a3)
      {
        CFRetain(a3);
      }

      APSDispatchAsyncFHelper();
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294894965;
  }
}

uint64_t hoseAggregate_SetProperty_cold_2()
{
  APSLogErrorAt();
  FigSimpleMutexUnlock();

  return APSLogErrorAt();
}

uint64_t hoseAggregate_audioHoseFlush_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_5();
  *a1 = result;
  return result;
}

uint64_t hoseAggregate_audioHoseRegistrarRegisterHose_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_5();
  *a1 = result;
  return result;
}

uint64_t hoseAggregate_audioHoseRegistrarRegisterHose_cold_4(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_5();
  *a1 = result;
  return result;
}

uint64_t hoseAggregate_audioHoseRegistrarDeregisterHoseDispatchInternal_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50)
  {
    if (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      result = OUTLINED_FUNCTION_2();
    }
  }

  *a3 = -72331;
  return result;
}

void APAudioEngineVendorCreate_cold_2(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  CFRelease(a2);
}

uint64_t endpointAggregate_subEndpointEntryCopyDescriptionCallback(uint64_t result)
{
  if (result)
  {
    result = CFStringCreateF();
    if (!result)
    {
      APSLogErrorAt();
      return 0;
    }
  }

  return result;
}

uint64_t endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 457))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 160) && *(DerivedStorage + 40) == 2)
  {
    if (*(CMBaseObjectGetDerivedStorage() + 162))
    {
      v4 = OUTLINED_FUNCTION_17_0();
      v6 = endpointAggregate_getSubEndpointCount(v4, v5) > 0;
    }

    else
    {
      v6 = 1;
    }

    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_3();
      LogPrintF();
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(v3 + 161))
  {
    v7 = 1;
  }

  else
  {
    v7 = *(CMBaseObjectGetDerivedStorage() + 24) && APSGetFBOPropertyInt64() != 0;
  }

  if (v7 == v6)
  {
    return 0;
  }

  if (!*(v3 + 416))
  {
    v11 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    AllAudioFeatures = APEndpointGetAllAudioFeatures(*(v11 + 56));
    v13 = AllAudioFeatures;
    if (v6)
    {
      endpointAggregate_handleSubEndpointFeatureActivationStateChanged(a1, 0, 1, (AllAudioFeatures & 0xFFFFFFFFFFFFFFDFLL));
      v14 = OUTLINED_FUNCTION_17_0();
      endpointAggregate_setEnableLocalPlaybackOnAggregateStreams(v14, v15, v16);
    }

    else
    {
      endpointAggregate_setEnableLocalPlaybackOnAggregateStreams(a1, 0, AllAudioFeatures & 0xFFFFFFFFFFFFFFDFLL);
      endpointAggregate_handleSubEndpointFeatureActivationStateChanged(a1, 0, 0, (v13 & 0xFFFFFFFFFFFFFFDFLL));
    }

    *(v11 + 161) = v6;
    endpointAggregate_updateIsVolumeControlSupported();
    return 0;
  }

  if (!a1 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    a1 = 0;
  }

  v8 = *(v3 + 416);
  if (v6)
  {
    v9 = endpointAggregate_addEndpointInternal(a1, v8, 0, 0, 0);
    if (v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v9 = endpointAggregate_removeEndpointInternal(a1, v8, 0, 0);
    if (v9)
    {
LABEL_36:
      APSLogErrorAt();
    }
  }

  return v9;
}