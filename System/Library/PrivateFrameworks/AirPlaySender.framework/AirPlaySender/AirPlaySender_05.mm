uint64_t APEndpointDescriptionSetEndpointInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t APEndpointDescriptionSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, a2, a3);
}

uint64_t endpointLocal_writePSGInfoIntoPrefs()
{
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  APSSettingsSynchronize();

  return notify_post("com.apple.airplay.psgInfoChanged");
}

uint64_t endpointLocal_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = (*(a5 + 16))(a5, a3, "Endpoint:[%{ptr}] (Local) %''@ DeviceID:%@ Parent:[%{ptr}]\n", a1, *(DerivedStorage + 32), *(DerivedStorage + 24), a2);
  if (v10)
  {
    endpointLocal_DumpHierarchy_cold_1();
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t endpointLocal_Activate(void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 56) + 1;
  *(DerivedStorage + 56) = v9;
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 40))
  {
    v10 = 4294950569;
LABEL_11:
    APSLogErrorAt();
    goto LABEL_8;
  }

  if (*(DerivedStorage + 41))
  {
    v10 = 4294950573;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_8:
  endpointLocal_activateInternal(a1, v10, v9, 1, a2, a3, a4);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t endpointLocal_Deactivate(void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    endpointLocal_Deactivate_cold_1();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 41))
  {
    endpointLocal_Deactivate_cold_2();
    v6 = 0;
    v7 = 4294950573;
  }

  else
  {
    v6 = *(DerivedStorage + 152);
    endpointLocal_suspendAndDissociateStreams(a1);
    endpointLocal_resetActivationState();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    endpointLocal_updateIsVolumeAndMuteControlSupported();
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      endpointLocal_Deactivate_cold_3();
    }

    v7 = 0;
  }

  FigSimpleMutexUnlock();
  if (a3)
  {
    CFRetain(a1);
    APSDispatchAsyncFHelper();
  }

  if (v6)
  {
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      endpointLocal_Deactivate_cold_4();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  return v7;
}

uint64_t endpointLocal_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 41))
  {
    endpointLocal_SetDelegateRouting_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(DerivedStorage + 136);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 136) = 0;
    }

    if (a2)
    {
      v5 = *a2;
      v6 = *(a2 + 16);
      *(DerivedStorage + 128) = *(a2 + 32);
      *(DerivedStorage + 96) = v5;
      *(DerivedStorage + 112) = v6;
      a2 = 0;
      *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 128) = 0;
      *(DerivedStorage + 96) = 0u;
      *(DerivedStorage + 112) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

void endpointLocal_activateInternal(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    endpointLocal_activateInternal_cold_1();
    v19 = 0;
LABEL_78:
    v25 = 0;
    a5 = 0;
    if (!a7)
    {
      goto LABEL_61;
    }

LABEL_60:
    CFRetain(a1);
    APSDispatchAsyncFHelper();
    goto LABEL_61;
  }

  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (!*(DerivedStorage + 42))
  {
    endpointLocal_activateInternal_cold_9();
    v19 = 0;
    goto LABEL_73;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v14 = CMBaseObjectGetDerivedStorage();
  if (a6)
  {
    v15 = v14;
    v16 = *MEMORY[0x277CC09F8];
    if (CFDictionaryContainsKey(a6, *MEMORY[0x277CC09F8]))
    {
      v17 = *(v15 + 72);
      Value = CFDictionaryGetValue(a6, v16);
      *(v15 + 72) = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    if (FigCFDictionaryGetBooleanIfPresent() && gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      endpointLocal_activateInternal_cold_2();
    }
  }

  if (APSIsEndpointClusteringEnabled() && APSIsFBOPropertyNonNull() && !*(DerivedStorage + 43))
  {
    endpointLocal_activateInternal_cold_3();
    v19 = 0;
    goto LABEL_73;
  }

  if (*(DerivedStorage + 40))
  {
    v19 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v19 = Mutable;
    if (!Mutable)
    {
      endpointLocal_activateInternal_cold_8();
      goto LABEL_73;
    }

    CFDictionarySetValue(Mutable, @"PreferredNetworkClockType", *MEMORY[0x277CEA278]);
    if (APEndpointCopyFromActivationOptionsOrCreateSharedContext(a6, a5, v19, DerivedStorage + 88, 0, 0))
    {
      endpointLocal_activateInternal_cold_4();
      goto LABEL_73;
    }
  }

  v21 = *(DerivedStorage + 64);
  if (v21)
  {
    if (a5)
    {
      if (v21 == a5)
      {
        if (gLogCategory_APEndpointLocal <= 90)
        {
          if (gLogCategory_APEndpointLocal == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_73;
          }

LABEL_45:
          LogPrintF();
          goto LABEL_73;
        }

LABEL_77:
        endpointLocal_resetActivationState();
        goto LABEL_78;
      }

      if (gLogCategory_APEndpointLocal > 90)
      {
        goto LABEL_77;
      }

      if (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize())
      {
        goto LABEL_45;
      }

LABEL_73:
      if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_77;
    }

    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      endpointLocal_activateInternal_cold_5();
    }

    endpointLocal_suspendAndDissociateStreams(a1);
    CFDictionaryRemoveAllValues(*(DerivedStorage + 80));
    v24 = *(DerivedStorage + 64);
    if (v24)
    {
      endpointLocal_postStreamsChangedNotification(a1, v24, a3, 0);
    }

    a5 = 0;
    goto LABEL_42;
  }

  if (a5)
  {
    v22 = *(DerivedStorage + 44);
    v23 = CMBaseObjectGetDerivedStorage();
    if ((a5 & 2) != 0)
    {
      if (endpointLocal_setUpAudioStream(a1, *MEMORY[0x277CC1960], v22))
      {
        endpointLocal_activateInternal_cold_6();
        goto LABEL_88;
      }

      if ((a5 & 8) == 0)
      {
        v25 = 1;
        a5 = 2;
        goto LABEL_55;
      }

      a5 = 10;
    }

    else
    {
      if ((a5 & 8) == 0)
      {
        if (gLogCategory_APEndpointLocal > 90)
        {
          goto LABEL_77;
        }

        if (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize())
        {
          goto LABEL_45;
        }

        goto LABEL_73;
      }

      a5 = 8;
    }

    v26 = *MEMORY[0x277CC1968];
    if (!endpointLocal_setUpAudioStream(a1, *MEMORY[0x277CC1968], v22))
    {
      CFDictionaryGetValue(*(v23 + 80), v26);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      endpointLocal_handleBufferedAudioCapabilitiesChanged();
      v25 = 1;
      goto LABEL_55;
    }

    endpointLocal_activateInternal_cold_7();
LABEL_88:
    APSLogErrorAt();
    goto LABEL_73;
  }

LABEL_42:
  v25 = 0;
LABEL_55:
  *(DerivedStorage + 64) = a5;
  *(DerivedStorage + 40) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  endpointLocal_updateIsVolumeAndMuteControlSupported();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a7)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (v25)
  {
    endpointLocal_postStreamsChangedNotification(a1, a5, a3, 1);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

void endpointLocal_suspendAndDissociateStreams(void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, endpointLocal_suspendAndDissociateStreamsDictionaryEntry, a1);
  }

  endpoint_handleIdleStateChanged(a1, 0);
}

void endpointLocal_postStreamsChangedNotification(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  v8 = CFGetAllocator(a1);
  if (APEndpointCreateStreamsChangedNotificationPayload(v8, a2, a3, a4, &cf))
  {
    endpointLocal_postStreamsChangedNotification_cold_1();
  }

  else
  {
    if (gLogCategory_APEndpointLocal <= 30 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t endpointLocal_updateIsVolumeAndMuteControlSupported()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = result;
  if (*(result + 40))
  {
    v2 = *(result + 156) != 0;
  }

  else
  {
    v2 = 0;
  }

  if (*(result + 160) != v2)
  {
    *(result + 160) = v2;
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    result = FigDispatchAsyncPostNotification();
  }

  if (*(v1 + 172) != v2)
  {
    *(v1 + 172) = v2;
    if (gLogCategory_APEndpointLocal <= 50)
    {
      if (gLogCategory_APEndpointLocal != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    if (*(v1 + 8))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigDispatchAsyncPostNotification();
    }
  }

  return result;
}

void endpointLocal_resetActivationState()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 42) = 0;
  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 44) = 0;
  CFDictionaryRemoveAllValues(*(DerivedStorage + 80));
  v1 = *(DerivedStorage + 88);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 88) = 0;
  }

  v2 = *(DerivedStorage + 72);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 72) = 0;
  }
}

uint64_t endpointLocal_setUpAudioStream(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (!a2)
  {
    endpointLocal_setUpAudioStream_cold_5();
    return 4294950576;
  }

  v7 = DerivedStorage;
  v8 = *MEMORY[0x277CC1960];
  if (CFEqual(a2, *MEMORY[0x277CC1960]) || CFEqual(a2, *MEMORY[0x277CC1968]))
  {
    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = Mutable;
    if (Mutable)
    {
      if (a3)
      {
        CFDictionarySetValue(Mutable, @"ForEchoCancellationReference", *MEMORY[0x277CBED28]);
      }

      v23 = 0;
      cf = 0;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v12 = *(CMBaseObjectGetDerivedStorage() + 16);
      if (v12)
      {
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v13 || (v13(v12, &cf, &v23, &v22, 0, &v21, &v20, 0), !cf))
        {
          v12 = 0;
LABEL_14:
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

          if (v20)
          {
            CFRelease(v20);
          }

          FigCFDictionarySetValue();
          v14 = *(v7 + 88);
          v15 = CFEqual(a2, v8);
          v16 = APEndpointStreamLocalCreate(v9, @"Local Playback Stream", a2, v11, v14, v15, &value);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          v17 = APSGetFBOPropertyInt64() != 0;
          endpoint_handleIdleStateChanged(a1, v17);
          CFDictionarySetValue(*(v7 + 80), a2, value);
          if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_28;
        }

        v12 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v12)
        {
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
        }

        else
        {
          endpointLocal_setUpAudioStream_cold_1();
        }
      }

      else
      {
        endpointLocal_setUpAudioStream_cold_2();
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_14;
    }

    endpointLocal_setUpAudioStream_cold_3();
    v16 = 4294950575;
  }

  else
  {
    endpointLocal_setUpAudioStream_cold_4();
    v11 = 0;
    v16 = 4294950576;
  }

LABEL_28:
  if (value)
  {
    CFRelease(value);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v16;
}

uint64_t endpointLocal_handleBufferedAudioCapabilitiesChanged()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    endpointLocal_handleBufferedAudioCapabilitiesChanged_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t endpointLocal_handleStreamIsPlayingDidChange(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = CFDictionaryGetInt64() != 0;
  FigSimpleMutexLock();
  endpoint_handleIdleStateChanged(a2, v3);

  return FigSimpleMutexUnlock();
}

void endpoint_handleIdleStateChanged(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 45);
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v6 = *(CMBaseObjectGetDerivedStorage() + 80);
    if (v6)
    {
      endpoint_handleIdleStateChanged_cold_1(v6, &v11);
      v7 = v11;
    }

    else
    {
      v7 = 1;
    }

    v5 = v7 == 0;
  }

  if (v4 != v5)
  {
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(DerivedStorage + 45) = v5;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v9 = Mutable;
    v10 = MEMORY[0x277CBED10];
    if (v5)
    {
      v10 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsEngaged", *v10);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v9)
    {

      CFRelease(v9);
    }
  }
}

uint64_t endpointLocal_suspendAndDissociateStreamsDictionaryEntry(const void *a1, uint64_t a2)
{
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (CFEqual(a1, *MEMORY[0x277CC1968]))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    endpointLocal_handleBufferedAudioCapabilitiesChanged();
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v4(a2, 0, 0, 0);
  }

  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16);
  result = VTable + 16;
  v8 = *(v7 + 32);
  if (v8)
  {

    return v8(a2);
  }

  return result;
}

uint64_t endpointLocal_DuckAudio()
{
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t endpointLocal_AcquireAndCopyResource(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 40))
  {
    if (FigCFEqual())
    {
      v7 = CMBaseObjectGetDerivedStorage();
      if (a3)
      {
        v8 = v7;
        Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC09A8]);
        if (Value)
        {
          v10 = Value;
          if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v12 = *(v8 + 80);
          if (v12)
          {
            v13 = CFDictionaryGetValue(v12, v10);
            if (v13)
            {
              v14 = CFRetain(v13);
              if (v14)
              {
                v11 = 0;
                *a4 = v14;
                goto LABEL_23;
              }
            }

            endpointLocal_AcquireAndCopyResource_cold_1();
          }

          else
          {
            endpointLocal_AcquireAndCopyResource_cold_2();
          }

          v11 = 4294950571;
          goto LABEL_23;
        }

        endpointLocal_AcquireAndCopyResource_cold_3();
      }

      else
      {
        endpointLocal_AcquireAndCopyResource_cold_4();
      }

      v11 = 4294950576;
      goto LABEL_23;
    }

    if (gLogCategory_APEndpointLocal <= 90 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = 4294950570;
  }

  else
  {
    v11 = 4294949690;
  }

LABEL_23:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t endpointLocal_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 40))
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

void endpointLocal_callDelegateHandleFailed(uint64_t a1)
{
  (*(a1 + 24))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
  CFRelease(*a1);
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t APAuthenticationClientMFiMutualAuthCreate(uint64_t a1, const void *a2, const void *a3, const __CFData *a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v17 = 4294895495;
    APAuthenticationClientMFiMutualAuthCreate_cold_9();
    return v17;
  }

  if (!a3)
  {
    v17 = 4294895495;
    APAuthenticationClientMFiMutualAuthCreate_cold_8();
    return v17;
  }

  if (!a4)
  {
    v17 = 4294895495;
    APAuthenticationClientMFiMutualAuthCreate_cold_7();
    return v17;
  }

  APAuthenticationClientGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v17 = v9;
    APAuthenticationClientMFiMutualAuthCreate_cold_1();
    return v17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF();
  DerivedStorage[12] = dispatch_queue_create(label, 0);
  *DerivedStorage = CFRetain(a2);
  v11 = CFRetain(a3);
  DerivedStorage[2] = v11;
  v12 = APAccTransportClientConnectionCopyEndpoint(v11, "com.apple.AccTransportClientEndpointMFi4Authentication", (DerivedStorage + 1));
  if (v12)
  {
    v17 = v12;
    APAuthenticationClientMFiMutualAuthCreate_cold_2();
    return v17;
  }

  if (CFDataGetLength(a4) != 64)
  {
    v17 = 4294895495;
    APAuthenticationClientMFiMutualAuthCreate_cold_3();
    return v17;
  }

  BytePtr = CFDataGetBytePtr(a4);
  Length = CFDataGetLength(a4);
  memcpy(DerivedStorage + 3, BytePtr, Length);
  v15 = FigSimpleMutexCreate();
  DerivedStorage[13] = v15;
  if (!v15)
  {
    APAuthenticationClientMFiMutualAuthCreate_cold_6();
    return 4294895496;
  }

  v16 = dispatch_semaphore_create(0);
  DerivedStorage[11] = v16;
  if (!v16)
  {
    APAuthenticationClientMFiMutualAuthCreate_cold_5();
    return 4294895496;
  }

  DerivedStorage[15] = 0;
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    APAuthenticationClientMFiMutualAuthCreate_cold_4();
  }

  v17 = 0;
  *a5 = 0;
  return v17;
}

uint64_t mfiMutualAuth_createTransformedMessage(uint64_t a1, int a2, const __CFData *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    mfiMutualAuth_createTransformedMessage_cold_5();
    goto LABEL_30;
  }

  if (!a4)
  {
    mfiMutualAuth_createTransformedMessage_cold_4();
    goto LABEL_30;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 120) != 3 || *(DerivedStorage + 124))
  {
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      mfiMutualAuth_getSecureTunnelStateString(*(DerivedStorage + 124));
      LogPrintF();
    }

    FigSimpleMutexUnlock();
    goto LABEL_29;
  }

  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 30 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    CFDataGetLength(a3);
    LogPrintF();
  }

  if (a2)
  {
    mfiMutualAuth_setAndLogSecureTunnelState(a1, 3u);
    v9 = APAccTransportClientEndpointForwardData(*(DerivedStorage + 8), a3);
  }

  else
  {
    mfiMutualAuth_setAndLogSecureTunnelState(a1, 1u);
    v9 = APAccTransportClientEndpointSecureTunnelDataSend(*(DerivedStorage + 8), a3);
  }

  v10 = v9;
  FigSimpleMutexUnlock();
  if (v10)
  {
LABEL_29:
    mfiMutualAuth_createTransformedMessage_cold_1();
    goto LABEL_30;
  }

  dispatch_semaphore_wait(*(DerivedStorage + 88), 0xFFFFFFFFFFFFFFFFLL);
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    mfiMutualAuth_createTransformedMessage_cold_2();
  }

  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 124);
  if (v11 == 4 || v11 == 2)
  {
    v12 = *(DerivedStorage + 112);
    if (v12)
    {
      *a4 = CFRetain(v12);
      v13 = *(DerivedStorage + 112);
      if (v13)
      {
        CFRelease(v13);
        v14 = 0;
        v15 = 0;
        *(DerivedStorage + 112) = 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      goto LABEL_34;
    }

    mfiMutualAuth_createTransformedMessage_cold_3();
  }

  else
  {
    FigSimpleMutexUnlock();
  }

LABEL_30:
  v15 = 4294896151;
  FigSimpleMutexLock();
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    mfiMutualAuth_createTransformedMessage_cold_6(DerivedStorage);
  }

  v14 = 7;
LABEL_34:
  mfiMutualAuth_setAndLogSecureTunnelState(a1, v14);
  FigSimpleMutexUnlock();
  return v15;
}

void mfiMutualAuth_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    mfiMutualAuth_Finalize_cold_1();
  }

  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v1)
  {
    APAccTransportClientEndpointDeactivate(v1);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 112);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 112) = 0;
  }

  APAccTransportClientConnectionInvalidateEndpoint(*(DerivedStorage + 16), *(DerivedStorage + 8));
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexDestroy();
  v5 = *(DerivedStorage + 88);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 88) = 0;
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 96) = 0;
  }
}

__CFString *mfiMutualAuth_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAuthenticationClientMFiMutualAuth %p>", a1);
  return Mutable;
}

uint64_t mfiMutualAuth_AuthenticateEndpoint(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 96);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __mfiMutualAuth_AuthenticateEndpoint_block_invoke;
  v5[3] = &unk_27849A6D8;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t mfiMutualAuth_sendMessageMFi4(uint64_t a1, const void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      snprintf(__str, 0x20uLL, "%d", 32);
      CFDictionarySetCString();
      if (a3)
      {
        CFDictionaryApplyBlock();
      }

      CFDictionarySetValue(v6, *MEMORY[0x277CEA360], a2);
      if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 20 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v7 = APTransportStreamSendPlistMessageCreatingReply();
      CFRelease(v6);
    }

    else
    {
      mfiMutualAuth_sendMessageMFi4_cold_1();
      return 4294895496;
    }
  }

  else
  {
    v7 = 4294895495;
    mfiMutualAuth_sendMessageMFi4_cold_2();
  }

  return v7;
}

uint64_t mfiMutualAuth_setAndLogAuthState(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 40)
  {
    if (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = mfiMutualAuth_setAndLogAuthState_cold_1();
    }
  }

  *(v4 + 120) = a2;
  return result;
}

uint64_t __mfiMutualAuth_initMFi4_block_invoke(uint64_t a1, const void *a2)
{
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_initMFi4_block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 120);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (v5 == 3)
  {
    v7 = *(DerivedStorage + 124);
    if (v7 == 5)
    {
      v8 = v4;
      v9 = 6;
    }

    else
    {
      if (v7 != 1)
      {
        mfiMutualAuth_setAndLogSecureTunnelState(v4, 7u);
        if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
        {
          __mfiMutualAuth_initMFi4_block_invoke_cold_3();
        }

LABEL_16:
        if (*(DerivedStorage + 124) == 7)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }

      v8 = v4;
      v9 = 2;
    }

    mfiMutualAuth_setAndLogSecureTunnelState(v8, v9);
    goto LABEL_16;
  }

  if (*(DerivedStorage + 120) == 1)
  {
    mfiMutualAuth_setAndLogAuthState(v4, 2);
LABEL_17:
    v10 = *(DerivedStorage + 112);
    *(DerivedStorage + 112) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    dispatch_semaphore_signal(*(DerivedStorage + 88));
    goto LABEL_22;
  }

  mfiMutualAuth_setAndLogAuthState(v4, 4);
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_initMFi4_block_invoke_cold_2();
  }

LABEL_22:

  return FigSimpleMutexUnlock();
}

uint64_t __mfiMutualAuth_initMFi4_block_invoke_2(uint64_t a1, int a2)
{
  FigSimpleMutexLock();
  if (*(*(a1 + 32) + 120) == 1)
  {
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_initMFi4_block_invoke_2_cold_2();
    }

    mfiMutualAuth_setAndLogAuthState(*(a1 + 40), 2);
    if (a2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }

    mfiMutualAuth_setAndLogAuthState(*(a1 + 40), v4);
    dispatch_semaphore_signal(*(*(a1 + 32) + 88));
  }

  else
  {
    mfiMutualAuth_setAndLogAuthState(*(a1 + 40), 4);
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_initMFi4_block_invoke_2_cold_1();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t __mfiMutualAuth_initMFi4_block_invoke_3(uint64_t a1, const void *a2)
{
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_initMFi4_block_invoke_3_cold_1();
  }

  FigSimpleMutexLock();
  v4 = *(a1 + 32);
  if (*(*(a1 + 40) + 124) == 3)
  {
    mfiMutualAuth_setAndLogSecureTunnelState(v4, 4u);
    v5 = *(a1 + 40);
    v6 = *(v5 + 112);
    *(v5 + 112) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    dispatch_semaphore_signal(*(*(a1 + 40) + 88));
  }

  else
  {
    mfiMutualAuth_setAndLogSecureTunnelState(v4, 7u);
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_initMFi4_block_invoke_3_cold_2();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t mfiMutualAuth_setAndLogSecureTunnelState(uint64_t a1, unsigned int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 40)
  {
    if (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = mfiMutualAuth_setAndLogSecureTunnelState_cold_1(v4, a2);
    }
  }

  *(v4 + 124) = a2;
  return result;
}

const char *mfiMutualAuth_getSecureTunnelStateString(unsigned int a1)
{
  if (a1 > 7)
  {
    return "UnknownState";
  }

  else
  {
    return off_27849A7A0[a1];
  }
}

uint64_t APKeyHolderCoreUtilsCreate(uint64_t a1, const void *a2, void *a3)
{
  APSKeyHolderGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v8 = v5;
    APKeyHolderCoreUtilsCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v7 = APSCreateSecureMemAllocator();
    DerivedStorage[1] = v7;
    if (v7)
    {
      if (gLogCategory_APKeyHolderCoreUtils <= 30 && (gLogCategory_APKeyHolderCoreUtils != -1 || _LogCategory_Initialize()))
      {
        APKeyHolderCoreUtilsCreate_cold_2();
      }

      v8 = 0;
      *a3 = 0;
    }

    else
    {
      APKeyHolderCoreUtilsCreate_cold_3();
      return 4294895576;
    }
  }

  return v8;
}

void coreUtilsKeyHolder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APKeyHolderCoreUtils <= 30 && (gLogCategory_APKeyHolderCoreUtils != -1 || _LogCategory_Initialize()))
  {
    coreUtilsKeyHolder_Finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *coreUtilsKeyHolder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APKeyHolderCoreUtils %p>", a1);
  return Mutable;
}

uint64_t coreUtilsKeyHolder_CopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (gLogCategory_APKeyHolderCoreUtils <= 10 && (gLogCategory_APKeyHolderCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(cf1, @"HasPairingClient"))
  {
    v6 = CFRetain(*MEMORY[0x277CBED28]);
    result = 0;
    *a4 = v6;
  }

  else
  {
    if (gLogCategory_APKeyHolderCoreUtils <= 90 && (gLogCategory_APKeyHolderCoreUtils != -1 || _LogCategory_Initialize()))
    {
      coreUtilsKeyHolder_CopyProperty_cold_1();
    }

    return 4294954512;
  }

  return result;
}

uint64_t coreUtilsKeyHolder_CreateEncryptionKeysForContext(uint64_t a1, CFStringRef theString1, CFIndex a3, __CFData **a4, CFIndex a5, __CFData **a6)
{
  v28 = 0;
  cf = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = 32;
  }

  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 32;
  }

  if (CFStringCompare(theString1, @"Ctrl", 0))
  {
    if (CFStringCompare(theString1, @"Events", 0))
    {
      v32 = 0;
      v33 = 0;
      v30 = 0;
      v31 = 0;
      if (CFStringGetOrCopyCStringUTF8())
      {
        coreUtilsKeyHolder_CreateEncryptionKeysForContext_cold_1();
        v14 = 0;
        v13 = 1;
      }

      else
      {
        v12 = SNScanF();
        v13 = v12 != 1;
        if (v12 == 1)
        {
          v14 = v30;
        }

        else
        {
          v14 = 0;
        }
      }

      if (v13)
      {
        EncryptionKeysForStream = 4294895575;
      }

      else
      {
        EncryptionKeysForStream = coreUtilsKeyHolder_CreateEncryptionKeysForStream(a1, v14, v10, a4, v11, a6);
      }

      goto LABEL_29;
    }

    v27 = a6;
    v16 = "Events-Write-Encryption-Key";
    v17 = "Events-Read-Encryption-Key";
    v18 = 27;
    v19 = 26;
    v20 = 11;
    v21 = "Events-Salt";
  }

  else
  {
    v27 = a6;
    v16 = "Control-Write-Encryption-Key";
    v17 = "Control-Read-Encryption-Key";
    v18 = 28;
    v19 = 27;
    v20 = 12;
    v21 = "Control-Salt";
  }

  v22 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v22)
  {
    EncryptionKeysForStream = 4294954514;
LABEL_28:
    APSLogErrorAt();
    goto LABEL_29;
  }

  v23 = v22(a1, v21, v20, v17, v19, v10, &cf);
  if (v23)
  {
    EncryptionKeysForStream = v23;
    goto LABEL_28;
  }

  v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v24)
  {
    EncryptionKeysForStream = 4294954514;
    goto LABEL_28;
  }

  v25 = v24(a1, v21, v20, v16, v18, v11, &v28);
  if (v25)
  {
    EncryptionKeysForStream = v25;
    goto LABEL_28;
  }

  if (a4)
  {
    *a4 = cf;
    cf = 0;
  }

  EncryptionKeysForStream = 0;
  if (v27)
  {
    *v27 = v28;
    v28 = 0;
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return EncryptionKeysForStream;
}

uint64_t metadataSource_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMetadataSourceCreateWithNowPlayingAppPID(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v5 = [objc_alloc(getMRClientClass()) initWithProcessIdentifier:a2 bundleIdentifier:0];
  if (!v5)
  {
    APMetadataSourceCreateWithNowPlayingAppPID_cold_4();
    v10 = 0;
    v7 = 0;
LABEL_17:
    v8 = 0;
LABEL_19:
    v11 = 4294960568;
    goto LABEL_11;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy_;
  v6 = getMRPlayerPathClass_softClass;
  v19 = __Block_byref_object_dispose_;
  v20 = getMRPlayerPathClass_softClass;
  if (!getMRPlayerPathClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getMRPlayerPathClass_block_invoke;
    v14[3] = &unk_27849ACC8;
    v14[4] = &v15;
    __getMRPlayerPathClass_block_invoke(v14);
    v6 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  v7 = [[v6 alloc] initWithOrigin:0 client:v5 player:0];
  if (!v7)
  {
    APMetadataSourceCreateWithNowPlayingAppPID_cold_3();
    v10 = 0;
    goto LABEL_17;
  }

  v8 = [objc_alloc(getMRDestinationClass()) initWithPlayerPath:v7];
  if (!v8)
  {
    APMetadataSourceCreateWithNowPlayingAppPID_cold_2();
    v10 = 0;
    goto LABEL_19;
  }

  v9 = metadataSource_createWithMRDestination(a1, v8, &v13);
  if (v9)
  {
    v11 = v9;
    APSLogErrorAt();
    v10 = v13;
  }

  else
  {
    if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      APMetadataSourceCreateWithNowPlayingAppPID_cold_1(&v13, v7);
    }

    v10 = 0;
    v11 = 0;
    *a3 = v13;
  }

LABEL_11:

  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

void sub_222085DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMRClientClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getMRClientClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getMRClientClass_softClass;
  if (!getMRClientClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMRClientClass_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getMRClientClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_222085EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMRDestinationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getMRDestinationClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getMRDestinationClass_softClass;
  if (!getMRDestinationClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMRDestinationClass_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getMRDestinationClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_222085FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t metadataSource_createWithMRDestination(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  *label = 0u;
  v19 = 0u;
  if (_MergedGlobals_1 != -1)
  {
    metadataSource_createWithMRDestination_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    *(Instance + 128) = 0;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    if (a2)
    {
      *(Instance + 120) = a2;
      SNPrintF();
      v7 = dispatch_queue_create(label, 0);
      v6[2] = v7;
      if (v7)
      {
        SNPrintF();
        v8 = dispatch_queue_create(label, 0);
        v6[12] = v8;
        if (v8)
        {
          v9 = *MEMORY[0x277CBECE8];
          v10 = 3;
          v11 = MEMORY[0x277CBF138];
          v12 = MEMORY[0x277CBF150];
          do
          {
            Mutable = CFDictionaryCreateMutable(v9, 0, v11, v12);
            v6[v10] = Mutable;
            if (!Mutable)
            {
              metadataSource_createWithMRDestination_cold_4();
              goto LABEL_15;
            }

            ++v10;
          }

          while (v10 != 7);
          v14 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v6[7] = v14;
          if (v14)
          {
            v15 = CFDictionaryCreateMutable(v9, 0, 0, 0);
            v6[14] = v15;
            if (v15)
            {
              v16 = 0;
              *a3 = v6;
              return v16;
            }

            metadataSource_createWithMRDestination_cold_2();
          }

          else
          {
            metadataSource_createWithMRDestination_cold_3();
          }
        }

        else
        {
          metadataSource_createWithMRDestination_cold_5();
        }
      }

      else
      {
        metadataSource_createWithMRDestination_cold_6();
      }

LABEL_15:
      v16 = 4294960568;
    }

    else
    {
      metadataSource_createWithMRDestination_cold_7();
      v16 = 4294960591;
    }

    CFRelease(v6);
  }

  else
  {
    metadataSource_createWithMRDestination_cold_8();
    return 4294960568;
  }

  return v16;
}

uint64_t APMetadataSourceCreateWithRoutingContextUUID(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  v5 = [objc_alloc(getMRDestinationClass()) initWithOutputContextUID:a2];
  if (v5)
  {
    v6 = metadataSource_createWithMRDestination(a1, v5, &v10);
    if (v6)
    {
      v7 = v6;
      APSLogErrorAt();
      v9 = v10;

      if (v9)
      {
        CFRelease(v9);
      }
    }

    else
    {
      if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *a3 = v10;

      return 0;
    }
  }

  else
  {
    APMetadataSourceCreateWithRoutingContextUUID_cold_1(0);
    return 4294960568;
  }

  return v7;
}

uint64_t APMetadataSourceAddEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  context[0] = a1;
  context[1] = v5;
  context[2] = a3;
  context[3] = &v8;
  dispatch_sync_f(*(a1 + 96), context, metadataSource_addEventCallbackInternal);
  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

uint64_t metadataSource_addEventCallbackInternal(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  v3 = a1[1];
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  v4 = a1[2];
  *v2 = v3;
  v2[1] = v4;
  v5 = *(*a1 + 112);
  v6 = (*(*a1 + 104) + 1);
  *(*a1 + 104) = v6;
  CFDictionarySetValue(v5, v6, v2);
  CFRetain(*a1);
  v7 = a1[1];
  if (v7)
  {
    CFRetain(v7);
  }

  result = APSDispatchAsyncFHelper();
  *a1[3] = *(*a1 + 104);
  return result;
}

void APMetadataSourceRemoveEventCallback(uint64_t a1, uint64_t a2)
{
  v2[0] = a1;
  v2[1] = a2;
  dispatch_sync_f(*(a1 + 96), v2, metadataSource_removeEventCallbackInternal);
}

void metadataSource_removeEventCallbackInternal(const void **a1)
{
  Value = CFDictionaryGetValue(*(*a1 + 14), a1[1]);
  if (Value)
  {
    v3 = Value;
    v4 = *Value;
    if (v4)
    {
      CFRelease(v4);
    }

    CFDictionaryRemoveValue(*(*a1 + 14), a1[1]);

    free(v3);
  }
}

void APMetadataSourceStart(uint64_t a1)
{
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APMetadataSourceStart_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v1, block);
}

uint64_t __APMetadataSourceStart_block_invoke(uint64_t result)
{
  v1 = (result + 32);
  if (*(*(result + 32) + 128))
  {
    return result;
  }

  v2 = [[APMRNowPlayingControllerDelegate alloc] initWithMetadataSource:*v1];
  v3 = *v1;
  *(*v1 + 128) = v2;
  if (gLogCategory_APMetadataSource <= 50)
  {
    if (gLogCategory_APMetadataSource == -1)
    {
      v4 = _LogCategory_Initialize();
      v3 = *v1;
      if (!v4)
      {
        goto LABEL_6;
      }

      v2 = *(v3 + 128);
    }

    v5 = v3;
    v6 = v2;
    LogPrintF();
    v3 = *v1;
  }

LABEL_6:
  result = [*(v3 + 128) start];
  if (gLogCategory_APMetadataSource <= 50)
  {
    if (gLogCategory_APMetadataSource != -1)
    {
      return __APMetadataSourceStart_block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __APMetadataSourceStart_block_invoke_cold_1();
    }
  }

  return result;
}

void APMetadataSourceStop(uint64_t a1)
{
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APMetadataSourceStop_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void __APMetadataSourceStop_block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 128) stop];

  *(*(a1 + 32) + 128) = 0;
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t APMetadataSourceSetMetadata(const void *a1, const void *a2)
{
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  return APSDispatchAsyncFHelper();
}

void metadataSource_setMetadataCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = 0; i != 3; ++i)
  {
    Value = CFDictionaryGetValue(v3, off_27849ADC0[i]);
    if (Value)
    {
      v7 = Value;
      metadataSource_updateMetadata(v2, i, Value);
      CFDictionaryApplyFunction(v7, metadataSource_appendDictionaryInternal, Mutable);
    }
  }

  if (CFDictionaryGetCount(Mutable) >= 1)
  {
    metadataSource_updateMetadata(v2, 3, Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFRelease(*a1);
  v8 = *(a1 + 8);
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t APMetadataSourceCopyMetadata(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a2 && a3)
  {
    v4 = *(a1 + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __APMetadataSourceCopyMetadata_block_invoke;
    v8[3] = &unk_27849ABE0;
    v8[6] = a2;
    v8[7] = a1;
    v8[4] = &v9;
    v8[5] = &v13;
    dispatch_sync(v4, v8);
    v5 = v10;
    *a3 = v10[3];
    v5[3] = 0;
    v6 = *(v14 + 6);
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294960591;
    *(v14 + 6) = -6705;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void sub_222086A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

const void *__APMetadataSourceCopyMetadata_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 48), @"APNowPlayingInfoArtwork"))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *(*(a1 + 56) + 24);
LABEL_11:
    result = CFDictionaryCreateCopy(v2, v3);
LABEL_12:
    *(*(*(a1 + 32) + 8) + 24) = result;
    return result;
  }

  if (CFEqual(*(a1 + 48), @"APNowPlayingInfoProgress"))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *(*(a1 + 56) + 32);
    goto LABEL_11;
  }

  if (CFEqual(*(a1 + 48), @"APNowPlayingInfoText"))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *(*(a1 + 56) + 40);
    goto LABEL_11;
  }

  if (CFEqual(*(a1 + 48), @"APNowPlayingInfoCoalesced"))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *(*(a1 + 56) + 48);
    goto LABEL_11;
  }

  if (CFEqual(*(a1 + 48), @"MRNowPlayingInfo"))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *(*(a1 + 56) + 56);
    goto LABEL_11;
  }

  if (CFEqual(*(a1 + 48), @"MRSupportedCommands"))
  {
    result = *(*(a1 + 56) + 64);
    if (!result)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (CFEqual(*(a1 + 48), @"MRPlaybackState"))
  {
    result = *(*(a1 + 56) + 72);
    if (!result)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  result = CFEqual(*(a1 + 48), @"MRNowPlayingClient");
  if (result)
  {
    result = *(*(a1 + 56) + 80);
    if (!result)
    {
      goto LABEL_12;
    }

LABEL_21:
    result = CFRetain(result);
    goto LABEL_12;
  }

  *(*(*(a1 + 40) + 8) + 24) = -6735;
  return result;
}

void sub_222086EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void metadataSource_handleNowPlayingInfoChangedInternal(void *a1, const __CFDictionary *a2, const void *a3, char a4)
{
  if (!a2)
  {
    return;
  }

  v8 = gLogCategory_APMetadataSource;
  if (gLogCategory_APMetadataSource <= 10)
  {
    if (gLogCategory_APMetadataSource != -1)
    {
LABEL_4:
      if (v8 != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      goto LABEL_12;
    }

    v9 = _LogCategory_Initialize();
    v8 = gLogCategory_APMetadataSource;
    if (v9)
    {
      if (gLogCategory_APMetadataSource > 10)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }
  }

  if (v8 <= 40 && (v8 != -1 || _LogCategory_Initialize()))
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_1();
  }

LABEL_12:
  if (CFDictionaryGetCount(a2) == 2)
  {
    v126 = 0;
    v127 = &v126;
    v128 = 0x2020000000;
    v10 = getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_ptr;
    v129 = getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_ptr;
    if (!getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_ptr)
    {
      v121 = MEMORY[0x277D85DD0];
      v122 = 3221225472;
      v123 = __getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_block_invoke;
      v124 = &unk_27849ACC8;
      v125 = &v126;
      v11 = MediaRemoteLibrary();
      v127[3] = dlsym(v11, "kMRMediaRemoteNowPlayingInfoIsMusicApp");
      getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_ptr = *(v125[1] + 24);
      v10 = v127[3];
    }

    _Block_object_dispose(&v126, 8);
    if (!v10)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_45();
    }

    if (CFDictionaryGetValue(a2, *v10) == *MEMORY[0x277CBED28])
    {
      v101 = getkMRMediaRemoteNowPlayingInfoTimestamp();
      if (CFDictionaryGetValue(a2, v101))
      {
        if (gLogCategory_APMetadataSource <= 40 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
        {
          metadataSource_handleNowPlayingInfoChangedInternal_cold_2();
        }

        return;
      }
    }
  }

  v12 = MEMORY[0x277CBECE8];
  if (a3)
  {
    v13 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
    if (MutableCopy)
    {
      v15 = MutableCopy;
      v16 = getkMRMediaRemoteNowPlayingInfoUniqueIdentifier();
      if (CFDictionaryContainsKey(v15, v16))
      {
        v126 = 0;
        v127 = &v126;
        v128 = 0x2020000000;
        v17 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr;
        v129 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr;
        if (!getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr)
        {
          v121 = MEMORY[0x277D85DD0];
          v122 = 3221225472;
          v123 = __getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_block_invoke;
          v124 = &unk_27849ACC8;
          v125 = &v126;
          v18 = MediaRemoteLibrary();
          v127[3] = dlsym(v18, "kMRMediaRemoteNowPlayingInfoMediaType");
          getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr = *(v125[1] + 24);
          v17 = v127[3];
        }

        _Block_object_dispose(&v126, 8);
        if (!v17)
        {
          metadataSource_handleNowPlayingInfoChangedInternal_cold_4();
        }

        v19 = *v17;
        v126 = 0;
        v127 = &v126;
        v128 = 0x2020000000;
        v20 = getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr;
        v129 = getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr;
        if (!getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr)
        {
          v121 = MEMORY[0x277D85DD0];
          v122 = 3221225472;
          v123 = __getkMRMediaRemoteMediaTypeMusicSymbolLoc_block_invoke;
          v124 = &unk_27849ACC8;
          v125 = &v126;
          v21 = MediaRemoteLibrary();
          v127[3] = dlsym(v21, "kMRMediaRemoteMediaTypeMusic");
          getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr = *(v125[1] + 24);
          v20 = v127[3];
        }

        _Block_object_dispose(&v126, 8);
        if (!v20)
        {
          metadataSource_handleNowPlayingInfoChangedInternal_cold_3();
        }

        CFDictionaryAddValue(v15, v19, *v20);
      }

      v126 = 0;
      v127 = &v126;
      v128 = 0x2020000000;
      v22 = getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_ptr;
      v129 = getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_ptr;
      if (!getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_ptr)
      {
        v121 = MEMORY[0x277D85DD0];
        v122 = 3221225472;
        v123 = __getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_block_invoke;
        v124 = &unk_27849ACC8;
        v125 = &v126;
        v23 = MediaRemoteLibrary();
        v127[3] = dlsym(v23, "kMRMediaRemoteNowPlayingInfoAssetURL");
        getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_ptr = *(v125[1] + 24);
        v22 = v127[3];
      }

      _Block_object_dispose(&v126, 8);
      if (!v22)
      {
        metadataSource_handleNowPlayingInfoChangedInternal_cold_5();
      }

      CFDictionaryRemoveValue(v15, *v22);
      if (CFEqual(a3, @"replace"))
      {
        v24 = a1[7];
        a1[7] = v15;
        CFRetain(v15);
        if (v24)
        {
          CFRelease(v24);
        }

        goto LABEL_35;
      }

      if (CFEqual(a3, @"update"))
      {
        CFDictionaryMergeDictionary();
LABEL_35:
        CFRelease(v15);
        metadataSource_notifyMetadataChange(a1, 1852860704, a2, a3, a4);
        goto LABEL_36;
      }

      if (gLogCategory_APMetadataSource <= 60 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFRelease(v15);
    }

    else
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_6();
    }
  }

  else
  {
    APSLogErrorAt();
    v13 = *v12;
  }

  APSLogErrorAt();
LABEL_36:
  v25 = a1[7];
  updated = 0;
  v118 = 0;
  cf = 0;
  v116 = 0;
  v117 = 0;
  v114 = 0;
  v115 = 0;
  v112 = 0;
  value = 0;
  Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_44();
LABEL_149:
    if (gLogCategory_APMetadataSource <= 90 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return;
  }

  v27 = Mutable;
  v28 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v28)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_43(&updated, v27);
    goto LABEL_149;
  }

  v29 = v28;
  v30 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v30)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_42();
    v31 = 0;
    goto LABEL_144;
  }

  v31 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v31)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_41();
    goto LABEL_144;
  }

  v32 = getkMRMediaRemoteNowPlayingInfoArtworkData();
  TypeID = CFDataGetTypeID();
  v34 = *MEMORY[0x277CBEEE8];
  updated = metadataSource_cloneValue(v25, v32, TypeID, *MEMORY[0x277CBEEE8], v27, @"artworkData", 0);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_7();
    goto LABEL_144;
  }

  v35 = CFDictionaryGetValue(v27, @"artworkData");
  if (CFEqual(v35, v34))
  {
    CFDictionarySetValue(v27, @"artworkMIMEType", @"image/none");
  }

  else
  {
    v36 = getkMRMediaRemoteNowPlayingInfoArtworkMIMEType();
    v37 = CFStringGetTypeID();
    updated = metadataSource_cloneValue(v25, v36, v37, @"image/jpeg", v27, @"artworkMIMEType", 0);
    if (updated)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_8();
      goto LABEL_144;
    }

    v38 = CFDictionaryGetValue(v27, @"artworkMIMEType");
    if (CFEqual(v38, @"image/none"))
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_9(&updated);
      goto LABEL_144;
    }
  }

  v39 = getkMRMediaRemoteNowPlayingInfoTimestamp();
  v40 = CFDateGetTypeID();
  updated = metadataSource_cloneValue(v25, v39, v40, 0, v29, @"timestamp", &cf);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_10();
    goto LABEL_144;
  }

  if (!cf)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v42 = CFDateCreate(0, Current);
    cf = v42;
    if (!v42)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_40();
      goto LABEL_144;
    }

    CFDictionarySetValue(v29, @"timestamp", v42);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v43 = getkMRMediaRemoteNowPlayingInfoAlbum();
  v44 = CFStringGetTypeID();
  updated = metadataSource_cloneValue(v25, v43, v44, &stru_283570B70, v30, @"album", &v118);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_11();
    goto LABEL_144;
  }

  v45 = getkMRMediaRemoteNowPlayingInfoArtist();
  v46 = CFStringGetTypeID();
  updated = metadataSource_cloneValue(v25, v45, v46, &stru_283570B70, v30, @"artist", &v117);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_12();
    goto LABEL_144;
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v47 = getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v48 = MediaRemoteLibrary();
    v49 = dlsym(v48, "kMRMediaRemoteNowPlayingInfoComposer");
    *(v125[1] + 24) = v49;
    getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_ptr = *(v125[1] + 24);
    v47 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v47)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_39();
  }

  v50 = *v47;
  v51 = CFStringGetTypeID();
  updated = metadataSource_cloneValue(v25, v50, v51, &stru_283570B70, v30, @"composer", 0);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_13();
    goto LABEL_144;
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v52 = getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v53 = MediaRemoteLibrary();
    v54 = dlsym(v53, "kMRMediaRemoteNowPlayingInfoGenre");
    *(v125[1] + 24) = v54;
    getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_ptr = *(v125[1] + 24);
    v52 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v52)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_38();
  }

  v55 = *v52;
  v56 = CFStringGetTypeID();
  updated = metadataSource_cloneValue(v25, v55, v56, &stru_283570B70, v30, @"genre", 0);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_14();
    goto LABEL_144;
  }

  v57 = getkMRMediaRemoteNowPlayingInfoTitle();
  v58 = CFStringGetTypeID();
  updated = metadataSource_cloneValue(v25, v57, v58, &stru_283570B70, v30, @"title", &v116);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_15();
    goto LABEL_144;
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v59 = getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v60 = MediaRemoteLibrary();
    v61 = dlsym(v60, "kMRMediaRemoteNowPlayingInfoQueueIndex");
    *(v125[1] + 24) = v61;
    getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_ptr = *(v125[1] + 24);
    v59 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v59)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_37();
  }

  v115 = CFDictionaryGetValue(v25, *v59);
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v62 = getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v63 = MediaRemoteLibrary();
    v64 = dlsym(v63, "kMRMediaRemoteNowPlayingInfoTotalQueueCount");
    *(v125[1] + 24) = v64;
    getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_ptr = *(v125[1] + 24);
    v62 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v62)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_36();
  }

  v114 = CFDictionaryGetValue(v25, *v62);
  if (v115 && (v65 = CFGetTypeID(v115), v65 == CFNumberGetTypeID()) && v114 && (v66 = CFGetTypeID(v114), v66 == CFNumberGetTypeID()))
  {
    CFGetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(v30, @"totalTracks", v114);
  }

  else
  {
    v67 = getkMRMediaRemoteNowPlayingInfoTrackNumber();
    v68 = CFNumberGetTypeID();
    updated = metadataSource_cloneValue(v25, v67, v68, 0, v30, @"trackNumber", &v115);
    if (updated)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_16();
      goto LABEL_144;
    }

    v69 = getkMRMediaRemoteNowPlayingInfoTotalTrackCount();
    v70 = CFNumberGetTypeID();
    updated = metadataSource_cloneValue(v25, v69, v70, 0, v30, @"totalTracks", &v114);
    if (updated)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_17();
      goto LABEL_144;
    }
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v71 = getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v72 = MediaRemoteLibrary();
    v73 = dlsym(v72, "kMRMediaRemoteNowPlayingInfoDiscNumber");
    *(v125[1] + 24) = v73;
    getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_ptr = *(v125[1] + 24);
    v71 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v71)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_35();
  }

  v74 = *v71;
  v75 = CFNumberGetTypeID();
  updated = metadataSource_cloneValue(v25, v74, v75, 0, v30, @"discNumber", 0);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_18();
    goto LABEL_144;
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v76 = getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v77 = MediaRemoteLibrary();
    v78 = dlsym(v77, "kMRMediaRemoteNowPlayingInfoTotalDiscCount");
    *(v125[1] + 24) = v78;
    getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_ptr = *(v125[1] + 24);
    v76 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v76)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_34();
  }

  v79 = *v76;
  v80 = CFNumberGetTypeID();
  updated = metadataSource_cloneValue(v25, v79, v80, 0, v30, @"totalDiscs", 0);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_19();
    goto LABEL_144;
  }

  v81 = getkMRMediaRemoteNowPlayingInfoElapsedTime();
  v82 = CFNumberGetTypeID();
  updated = metadataSource_cloneValue(v25, v81, v82, 0, v29, @"elapsedTime", 0);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_20();
    goto LABEL_144;
  }

  v83 = getkMRMediaRemoteNowPlayingInfoDuration();
  v84 = CFNumberGetTypeID();
  updated = metadataSource_cloneValue(v25, v83, v84, 0, v29, @"duration", &value);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_21();
    goto LABEL_144;
  }

  if (value)
  {
    CFDictionarySetValue(v30, @"duration", value);
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v85 = getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v86 = MediaRemoteLibrary();
    v87 = dlsym(v86, "kMRMediaRemoteNowPlayingInfoIsExplicitTrack");
    *(v125[1] + 24) = v87;
    getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_ptr = *(v125[1] + 24);
    v85 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v85)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_33();
  }

  v88 = *v85;
  v89 = CFBooleanGetTypeID();
  v90 = *MEMORY[0x277CBED10];
  updated = metadataSource_cloneValue(v25, v88, v89, *MEMORY[0x277CBED10], v30, @"isExplicitTrack", 0);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_22();
    goto LABEL_144;
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v91 = getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v92 = MediaRemoteLibrary();
    v93 = dlsym(v92, "kMRMediaRemoteNowPlayingInfoIsAlwaysLive");
    *(v125[1] + 24) = v93;
    getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_ptr = *(v125[1] + 24);
    v91 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v91)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_32();
  }

  v94 = *v91;
  v95 = CFBooleanGetTypeID();
  updated = metadataSource_cloneValue(v25, v94, v95, v90, v30, @"isStream", 0);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_23();
    goto LABEL_144;
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v96 = getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v97 = MediaRemoteLibrary();
    v98 = dlsym(v97, "kMRMediaRemoteNowPlayingInfoPlaybackRate");
    *(v125[1] + 24) = v98;
    getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_ptr = *(v125[1] + 24);
    v96 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v96)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_31();
  }

  CFDictionaryGetDouble();
  CFDictionarySetDouble();
  CFDictionarySetDouble();
  v99 = getkMRMediaRemoteNowPlayingInfoUniqueIdentifier();
  v100 = CFNumberGetTypeID();
  updated = metadataSource_cloneValue(v25, v99, v100, 0, v30, @"uniqueID", &v112);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_24();
    goto LABEL_144;
  }

  if (!v112)
  {
    if (v118)
    {
      CFHash(v118);
    }

    if (v117)
    {
      CFHash(v117);
    }

    if (v116)
    {
      CFHash(v116);
    }

    if (v115)
    {
      CFHash(v115);
    }

    CFDictionarySetInt64();
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v102 = getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v103 = MediaRemoteLibrary();
    v104 = dlsym(v103, "kMRMediaRemoteNowPlayingInfoRepeatMode");
    *(v125[1] + 24) = v104;
    getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_ptr = *(v125[1] + 24);
    v102 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v102)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_30();
  }

  Int64 = CFDictionaryGetInt64();
  if (Int64 < 2)
  {
    v106 = @"none";
    goto LABEL_125;
  }

  if (Int64 == 2)
  {
    v106 = @"one";
    goto LABEL_125;
  }

  if (Int64 == 3)
  {
    v106 = @"all";
LABEL_125:
    CFDictionarySetValue(v31, @"repeatMode", v106);
    goto LABEL_126;
  }

  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_126:
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v107 = getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_ptr;
  v129 = getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_ptr)
  {
    v121 = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_block_invoke;
    v124 = &unk_27849ACC8;
    v125 = &v126;
    v108 = MediaRemoteLibrary();
    v109 = dlsym(v108, "kMRMediaRemoteNowPlayingInfoShuffleMode");
    *(v125[1] + 24) = v109;
    getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_ptr = *(v125[1] + 24);
    v107 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v107)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_29();
  }

  v110 = CFDictionaryGetInt64();
  if (v110 < 2)
  {
    v111 = @"off";
  }

  else if (v110 == 2)
  {
    v111 = @"albums";
  }

  else
  {
    if (v110 != 3)
    {
      if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_139;
    }

    v111 = @"songs";
  }

  CFDictionarySetValue(v31, @"shuffleMode", v111);
LABEL_139:
  mach_absolute_time();
  CFDictionarySetInt64();
  updated = metadataSource_updateMetadata(a1, 2, v30);
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_25();
  }

  else
  {
    updated = metadataSource_updateMetadata(a1, 1, v29);
    if (updated)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_26();
    }

    else
    {
      updated = metadataSource_updateMetadata(a1, 0, v27);
      if (updated)
      {
        metadataSource_handleNowPlayingInfoChangedInternal_cold_27();
      }

      else
      {
        CFDictionaryApplyFunction(v27, metadataSource_appendDictionaryInternal, v31);
        CFDictionaryApplyFunction(v30, metadataSource_appendDictionaryInternal, v31);
        CFDictionaryApplyFunction(v29, metadataSource_appendDictionaryInternal, v31);
        updated = metadataSource_updateMetadata(a1, 3, v31);
        if (updated)
        {
          metadataSource_handleNowPlayingInfoChangedInternal_cold_28();
        }
      }
    }
  }

LABEL_144:
  CFRelease(v27);
  CFRelease(v29);
  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (updated)
  {
    goto LABEL_149;
  }
}

void metadataSource_handleMRPlaybackStateChangedInternal(void *a1)
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  UInt32 = FigCFNumberCreateUInt32();
  if (UInt32)
  {
    v3 = UInt32;
    v4 = a1[9];
    a1[9] = UInt32;
    CFRetain(UInt32);
    if (v4)
    {
      CFRelease(v4);
    }

    metadataSource_notifyMetadataChange(a1, 1836216435, v3, @"notApplicable", 1);

    CFRelease(v3);
  }

  else
  {
    metadataSource_handleMRPlaybackStateChangedInternal_cold_1();
  }
}

void metadataSource_handleMRSupportedCommandsChangedInternal(void *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    metadataSource_handleMRSupportedCommandsChangedInternal_cold_4();
LABEL_15:
    APSLogErrorAt();
    return;
  }

  Count = CFArrayGetCount(theArray);
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    metadataSource_handleMRSupportedCommandsChangedInternal_cold_3();
    goto LABEL_15;
  }

  v7 = Mutable;
  if (Count >= 1)
  {
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v10 = getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_ptr;
      v18 = getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_ptr;
      if (!getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_ptr)
      {
        v11 = MediaRemoteLibrary();
        v16[3] = dlsym(v11, "MRMediaRemoteCommandInfoCreateExternalRepresentation");
        getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_ptr = v16[3];
        v10 = v16[3];
      }

      _Block_object_dispose(&v15, 8);
      if (!v10)
      {
        metadataSource_handleMRSupportedCommandsChangedInternal_cold_2();
      }

      v12 = v10(v5, ValueAtIndex);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      CFArrayAppendValue(v7, v12);
      CFRelease(v13);
      if (Count == ++v8)
      {
        goto LABEL_10;
      }
    }

    metadataSource_handleMRSupportedCommandsChangedInternal_cold_1(v7);
    goto LABEL_15;
  }

LABEL_10:
  v14 = a1[8];
  a1[8] = v7;
  CFRetain(v7);
  if (v14)
  {
    CFRelease(v14);
  }

  metadataSource_notifyMetadataChange(a1, 1836217187, v7, @"notApplicable", 0);
  CFRelease(v7);
}

void sub_222088D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void metadataSource_handleNowPlayingClientChangedInternal(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v4 = getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_ptr;
    v10 = getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_ptr;
    if (!getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_ptr)
    {
      v5 = MediaRemoteLibrary();
      v8[3] = dlsym(v5, "MRNowPlayingClientCreateExternalRepresentation");
      getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_ptr = v8[3];
      v4 = v8[3];
    }

    _Block_object_dispose(&v7, 8);
    if (!v4)
    {
      metadataSource_handleNowPlayingClientChangedInternal_cold_2();
    }

    v6 = v4(a2);
    if (v6)
    {
      metadataSource_handleNowPlayingClientChangedInternal_cold_3(a1, v6);
    }

    else
    {
      metadataSource_handleNowPlayingClientChangedInternal_cold_1();
    }
  }
}

void sub_222088EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void metadataSource_Finalize(uint64_t a1)
{
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    metadataSource_Finalize_cold_1();
  }

  if (*(a1 + 128))
  {
    if (gLogCategory_APMetadataSource <= 100 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      metadataSource_Finalize_cold_2();
    }

    __break(1u);
  }

  else
  {
    v2 = 0;
    v3 = a1 + 24;
    do
    {
      v4 = *(v3 + v2);
      if (v4)
      {
        CFDictionaryRemoveAllValues(v4);
        v5 = *(v3 + v2);
        if (v5)
        {
          CFRelease(v5);
          *(v3 + v2) = 0;
        }
      }

      v2 += 8;
    }

    while (v2 != 32);

    *(a1 + 120) = 0;
    v6 = *(a1 + 56);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 56) = 0;
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 64) = 0;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }

    v9 = *(a1 + 80);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 80) = 0;
    }

    v10 = *(a1 + 88);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 88) = 0;
    }

    v11 = *(a1 + 112);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 112) = 0;
    }

    v12 = *(a1 + 96);
    if (v12)
    {
      dispatch_release(v12);
      *(a1 + 96) = 0;
    }

    v13 = *(a1 + 16);
    if (v13)
    {
      dispatch_release(v13);
      *(a1 + 16) = 0;
    }
  }
}

Class __getMRClientClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRClientClass_block_invoke_cold_1();
  }

  getMRClientClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t MediaRemoteLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MediaRemoteLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27849ACE8;
    v4 = 0;
    MediaRemoteLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaRemoteLibraryCore_frameworkLibrary;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    MediaRemoteLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __MediaRemoteLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMRPlayerPathClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRPlayerPath");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRPlayerPathClass_block_invoke_cold_1();
  }

  getMRPlayerPathClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMRDestinationClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRDestination");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRDestinationClass_block_invoke_cold_1();
  }

  getMRDestinationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void metadataSource_notifyListenerAboutCurrentMetadata(uint64_t *a1)
{
  if (a1[1])
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (a1[1])
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      metadataSource_notifyListenerAboutCurrentMetadata_cold_1();
      goto LABEL_22;
    }

    v4 = v2;
    v10 = v2 == 0;
  }

  else
  {
    v4 = 0;
    v10 = 1;
  }

  v5 = &off_27849AD10;
  v6 = 8;
  do
  {
    cf = 0;
    v7 = *(v5 - 4);
    v8 = *v5;
    if (APMetadataSourceCopyMetadata(*a1, *(v5 - 1), &cf))
    {
      metadataSource_notifyListenerAboutCurrentMetadata_cold_2();
    }

    else
    {
      if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      (a1[2])(*a1, v4, v7, cf, v8, 0);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v5 += 3;
    --v6;
  }

  while (v6);
  if (!v10)
  {
    CFRelease(v4);
  }

LABEL_22:
  v9 = a1[1];
  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(*a1);
}

uint64_t metadataSource_updateMetadata(void *a1, signed int a2, const __CFDictionary *a3)
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10[0] = a1[a2 + 3];
  v10[1] = Mutable;
  if (Mutable)
  {
    MutableCopy = Mutable;
    CFDictionaryApplyFunction(a3, metadataSource_updateMetadataApplier, v10);
    if (CFDictionaryGetCount(MutableCopy) < 1)
    {
      goto LABEL_6;
    }

    if (a2 <= 1)
    {
      CFRelease(MutableCopy);
      MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a1[a2 + 3]);
    }

    metadataSource_notifyMetadataChange(a1, kAPMetadataSourceEventTypes[a2], MutableCopy, @"notApplicable", 0);
    if (MutableCopy)
    {
LABEL_6:
      CFRelease(MutableCopy);
    }

    return 0;
  }

  else
  {
    metadataSource_updateMetadata_cold_1();
    return 4294960568;
  }
}

void metadataSource_updateMetadataApplier(void *key, const void *a2, CFDictionaryRef *a3)
{
  CFDictionaryGetValue(*a3, key);
  if (*MEMORY[0x277CBEEE8] == a2)
  {
    v6 = *a3;

    CFDictionaryRemoveValue(v6, key);
  }

  else if (!FigCFEqual())
  {
    CFDictionarySetValue(*a3, key, a2);
    v7 = a3[1];

    CFDictionarySetValue(v7, key, a2);
  }
}

void metadataSource_notifyMetadataChange(void *a1, int a2, const void *a3, const void *a4, char a5)
{
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  CFRetain(a4);
  v10 = a1[12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __metadataSource_notifyMetadataChange_block_invoke;
  v11[3] = &__block_descriptor_61_e5_v8__0l;
  v12 = a2;
  v11[4] = a1;
  v11[5] = a3;
  v11[6] = a4;
  v13 = a5;
  dispatch_async(v10, v11);
}

void __metadataSource_notifyMetadataChange_block_invoke(uint64_t a1)
{
  CFDictionaryApplyBlock();
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(*(a1 + 48));
}

Class __getMRNowPlayingControllerConfigurationClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRNowPlayingControllerConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRNowPlayingControllerConfigurationClass_block_invoke_cold_1();
  }

  getMRNowPlayingControllerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMRPlaybackQueueRequestClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRPlaybackQueueRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRPlaybackQueueRequestClass_block_invoke_cold_1();
  }

  getMRPlaybackQueueRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMRNowPlayingControllerClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRNowPlayingController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRNowPlayingControllerClass_block_invoke_cold_1();
  }

  getMRNowPlayingControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoArtworkData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTrackNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTotalTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoElapsedTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoArtworkMIMEType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoIsMusicApp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTimestamp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoUniqueIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoMediaType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteMediaTypeMusicSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteMediaTypeMusic");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoAssetURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t metadataSource_cloneValue(const __CFDictionary *a1, const void *a2, uint64_t a3, const void *a4, __CFDictionary *a5, const void *a6, void *a7)
{
  Value = CFDictionaryGetValue(a1, a2);
  v13 = Value;
  if (Value)
  {
    a4 = Value;
    if (CFGetTypeID(Value) != a3)
    {
      metadataSource_cloneValue_cold_1();
      return 4294960540;
    }
  }

  else if (!a4)
  {
    goto LABEL_6;
  }

  CFDictionarySetValue(a5, a6, a4);
LABEL_6:
  result = 0;
  if (a7)
  {
    *a7 = v13;
  }

  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoQueueIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTotalQueueCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoDiscNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTotalDiscCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoIsExplicitTrack");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoIsAlwaysLive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoPlaybackRate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoRepeatMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoShuffleMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRMediaRemoteCommandInfoCreateExternalRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRNowPlayingClientCreateExternalRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APEndpointPlaybackSessionMCCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, const __CFDictionary *a5, void *a6)
{
  if (!a2)
  {
    APEndpointPlaybackSessionMCCreate_cold_5();
    return 4294950556;
  }

  if (!a3)
  {
    APEndpointPlaybackSessionMCCreate_cold_4();
    return 4294950556;
  }

  FigEndpointPlaybackSessionGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v20 = v12;
    APEndpointPlaybackSessionMCCreate_cold_1();
    return v20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = dispatch_queue_create("APEndpointPlaybackSessionMC", 0);
  DerivedStorage[2] = v14;
  if (!v14)
  {
    APEndpointPlaybackSessionMCCreate_cold_3();
    return 4294950555;
  }

  v15 = dispatch_queue_create("APEndpointPlaybackSessionMC.notifications", 0);
  DerivedStorage[3] = v15;
  if (!v15)
  {
    return 4294950555;
  }

  if (a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = @"unnamed";
  }

  DerivedStorage[5] = v16;
  CFRetain(v16);
  v17 = *MEMORY[0x277CC1038];
  DerivedStorage[6] = *MEMORY[0x277CC1038];
  if (v17)
  {
    CFRetain(v17);
  }

  if (CFDictionaryContainsKey(a5, @"VolumeDB"))
  {
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    mcs_SetProperty(0, @"VolumeDB", TypedValue);
  }

  DerivedStorage[10] = CFRetain(a3);
  DerivedStorage[9] = CFRetain(a2);
  if (a4)
  {
    v19 = CFRetain(a4);
  }

  else
  {
    v19 = 0;
  }

  DerivedStorage[11] = v19;
  v20 = APEndpointPlaybackSessionStatsCreate(@"MC", a1, a5, DerivedStorage + 16);
  if (v20)
  {
    APEndpointPlaybackSessionMCCreate_cold_2();
  }

  else
  {
    *a6 = 0;
  }

  return v20;
}

uint64_t mcs_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"VolumeDB"))
  {
    CFGetDouble();
    APSVolumeConvertDBToSliderValue();
    *&valuePtr.value = v6;
    v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
    v8 = AirPlaySetProperty();
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC10D0]))
    {
      Value = CFBooleanGetValue(a3);
      APEndpointPlaybackSessionSetIsParticipatingInCoordinatedPlayback(*(DerivedStorage + 128), Value);
    }

    else if (CFEqual(a2, *MEMORY[0x277CC1108]))
    {
      memset(&valuePtr, 0, sizeof(valuePtr));
      CMTimeMakeFromDictionary(&valuePtr, a3);
      v10 = *(DerivedStorage + 128);
      v12 = valuePtr;
      APEndpointPlaybackSessionSetVideoSyncTime(v10, &v12);
    }

    return 0;
  }

  return v8;
}

uint64_t mcs_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 16), a1, mcs_InvalidateInternal);
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return 0;
}

void mcs_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
    {
      mcs_Finalize_cold_1();
    }

    mcs_InvalidateInternal(a1);
    v4 = v3[4];
    if (v4)
    {
      CFRelease(v4);
      v3[4] = 0;
    }

    v5 = v3[5];
    if (v5)
    {
      CFRelease(v5);
      v3[5] = 0;
    }

    v6 = v3[6];
    if (v6)
    {
      CFRelease(v6);
      v3[6] = 0;
    }

    v7 = v3[9];
    if (v7)
    {
      CFRelease(v7);
      v3[9] = 0;
    }

    v8 = v3[10];
    if (v8)
    {
      CFRelease(v8);
      v3[10] = 0;
    }

    v9 = v3[11];
    if (v9)
    {
      CFRelease(v9);
      v3[11] = 0;
    }

    v10 = v3[15];
    if (v10)
    {
      CFRelease(v10);
      v3[15] = 0;
    }

    v11 = v3[8];
    if (v11)
    {
      CFRelease(v11);
      v3[8] = 0;
    }

    v12 = v3[2];
    if (v12)
    {
      dispatch_release(v12);
      v3[2] = 0;
    }

    v13 = v3[3];
    if (v13)
    {
      dispatch_release(v13);
      v3[3] = 0;
    }

    APEndpointPlaybackSessionStatsDestroy(v3 + 16);
  }
}

CFStringRef mcs_CopyDebugDesc()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = *(DerivedStorage + 40);
  }

  else
  {
    v1 = @"?";
  }

  return CFStringCreateWithFormat(0, 0, @"[APEndpointPlaybackSessionMC %@]", v1);
}

uint64_t mcs_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDictionaryRef *a4)
{
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"RTCStats"))
  {
    APEndpointPlaybackSessionCopyRTCStats(*(DerivedStorage + 128), a4);
    if (!*a4)
    {
      mcs_CopyProperty_cold_1(&v20);
    }

    return v20;
  }

  if (*(DerivedStorage + 8))
  {
    mcs_CopyProperty_cold_2(&v20);
    return v20;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10E0]))
  {
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1100]))
  {
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 80));
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      return v10(CMBaseObject, @"SupportsAirPlayVideoPausedStart", a3, a4);
    }

    else
    {
      return -12782;
    }
  }

  if (CFEqual(a2, *MEMORY[0x277CC10F8]))
  {
    goto LABEL_15;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10E8]))
  {
    if (*(DerivedStorage + 80))
    {
      if (APSGetFBOPropertyInt64())
      {
        v13 = v20 == 0;
      }

      else
      {
        v13 = 0;
      }

      v8 = MEMORY[0x277CBED28];
      if (!v13)
      {
        v8 = MEMORY[0x277CBED10];
      }

      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10D8]))
  {
LABEL_15:
    v8 = MEMORY[0x277CBED10];
    goto LABEL_7;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC10F0]))
  {
    if (CFEqual(a2, @"Activated"))
    {
      v8 = MEMORY[0x277CBED28];
      v17 = *(DerivedStorage + 56);
    }

    else
    {
      if (!CFEqual(a2, @"IsPlaying"))
      {
        return -12787;
      }

      v8 = MEMORY[0x277CBED28];
      v17 = *(DerivedStorage + 57);
    }

    if (!v17)
    {
      v8 = MEMORY[0x277CBED10];
    }

    goto LABEL_7;
  }

  if (!*(DerivedStorage + 80) || (v14 = APSGetFBOPropertyInt64(), v14 <= 2206799))
  {
    if (gLogCategory_EndpointPlaybackSessionMC <= 20 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
    {
      mcs_CopyProperty_cold_3();
    }

    goto LABEL_15;
  }

  if (v14 > 0x24D2F3)
  {
LABEL_6:
    v8 = MEMORY[0x277CBED28];
LABEL_7:
    *a4 = CFRetain(*v8);
    return v20;
  }

  theString = 0;
  v15 = APEndpointDescriptionCopyProperty(*(DerivedStorage + 80), @"OSVersion", *MEMORY[0x277CBECE8], &theString);
  v16 = 0;
  v20 = v15;
  if (!v15 && theString)
  {
    v16 = CFStringGetLength(theString) > 0;
  }

  if (gLogCategory_EndpointPlaybackSessionMC <= 20 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v18 = MEMORY[0x277CBED28];
  if (!v16)
  {
    v18 = MEMORY[0x277CBED10];
  }

  *a4 = CFRetain(*v18);
  if (theString)
  {
    CFRelease(theString);
  }

  return 0;
}

void mcs_InvalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v3 = DerivedStorage;
    APEndpointPlaybackSessionStatsUpdateAtInvalidate(*(DerivedStorage + 128));
    v4 = CMBaseObjectGetDerivedStorage();
    if (!*(v4 + 8) && *(v4 + 32))
    {
      mcs_InvalidateInternal_cold_1(v4, a1);
    }

    *(v3 + 8) = 1;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    if (*v3)
    {
      os_release(*v3);
      *v3 = 0;
    }
  }
}

void mcs_postConnectedStateChangedNotification(uint64_t a1, int a2, int a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = *MEMORY[0x277CBED28];
    v10 = *MEMORY[0x277CBED10];
    if (a2)
    {
      v11 = *MEMORY[0x277CBED28];
    }

    else
    {
      v11 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"APEndpointPlaybackSessionMCNotificationPayloadKey_IsConnected", v11);
    if (a3)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    CFDictionarySetValue(v8, @"APEndpointPlaybackSessionMCNotificationPayloadKey_IsConnectedOnP2P", v12);
    if (a4)
    {
      CFDictionarySetValue(v8, @"APEndpointPlaybackSessionMCNotificationPayloadKey_EventStatus", a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v8);
  }

  else
  {
    mcs_postConnectedStateChangedNotification_cold_1();
  }
}

uint64_t mcs_updatePassword()
{
  v1 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 72))
  {
    APSGetFBOPropertyCString();
    v1 = MediaControlClient_SetPassword();
    if (v1)
    {
      mcs_updatePassword_cold_2();
    }
  }

  return v1;
}

uint64_t APEndpointDescriptionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t mcs_AuthorizeItem(const void *a1, const void *a2, const void *a3, void (*a4)(void, void, uint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    mcs_AuthorizeItem_cold_1();
  }

  if (*(DerivedStorage + 8))
  {
    v11 = 4294950554;
    if (a4)
    {
      a4(0, 0, 4294950554, a5);
    }
  }

  else
  {
    CFRetain(a2);
    if (a3)
    {
      CFRetain(a3);
    }

    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v11;
}

uint64_t mcs_Play(const void *a1, __CFDictionary *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = a2;
  v14 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(DerivedStorage + 8))
  {
    CFDictionaryGetValueIfPresent(v6, *MEMORY[0x277CC0F68], &value);
    v9 = value;
    if (value)
    {
      v10 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = value;
    }

    else
    {
      v9 = *MEMORY[0x277CC1038];
      value = v9;
      v10 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = v9;
      if (!v9)
      {
LABEL_10:
        if (v10)
        {
          CFRelease(v10);
          v6 = v14;
        }

        APEndpointPlaybackSessionStatsUpdateAtPlay(*(DerivedStorage + 128), v6);
        APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds(v6, &v14);
        CFRetain(a1);
        APSDispatchAsyncFHelper();
        return 0;
      }
    }

    CFRetain(v9);
    goto LABEL_10;
  }

  v11 = 4294950554;
  if (a3)
  {
    a3(4294950554, a4);
  }

  return v11;
}

uint64_t mcs_InsertPlayQueueItem(const void *a1, __CFDictionary *a2, const void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v16 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 8))
  {
    v13 = 4294950554;
    if (a4)
    {
      a4(4294950554, a5);
    }
  }

  else
  {
    APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds(a2, &v16);
    if (a3)
    {
      CFRetain(a3);
    }

    CFRetain(a1);
    CFDictionaryGetValueIfPresent(v16, *MEMORY[0x277CC0F68], &value);
    if (!value)
    {
      value = *MEMORY[0x277CC1038];
    }

    if (!FigCFEqual())
    {
      v11 = value;
      v12 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = value;
      if (v11)
      {
        CFRetain(v11);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    APSDispatchAsyncFHelper();
    return 0;
  }

  return v13;
}

uint64_t mcs_RemovePlayQueueItem(const void *a1, const void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 8))
  {
    v9 = 4294950554;
    if (a3)
    {
      a3(4294950554, a4);
    }
  }

  else
  {
    if (a2)
    {
      CFRetain(a2);
    }

    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v9;
}

uint64_t mcs_Stop(const void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 8))
  {
    APSLogErrorAt();
    v7 = 4294950554;
    if (a2)
    {
      a2(4294950554, a3);
    }
  }

  else
  {
    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v7;
}

uint64_t mcs_GetPlaybackInfo(const void *a1, void (*a2)(void, uint64_t, uint64_t), uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 8))
  {
    v7 = 4294950554;
    if (a2)
    {
      a2(0, 4294950554, a3);
    }
  }

  else
  {
    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v7;
}

uint64_t mcs_SeekToTime(const void *a1, CMTime *a2, const void *a3, void (*a4)(void, uint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    mcs_SeekToTime_cold_1(DerivedStorage, a2);
  }

  if (*(DerivedStorage + 8))
  {
    v11 = 4294950554;
    if (a4)
    {
      a4(0, 4294950554, a5);
    }
  }

  else
  {
    if (a3)
    {
      CFRetain(a3);
    }

    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v11;
}

uint64_t mcs_SeekToDate(const void *a1, const void *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 8))
  {
    v10 = 4294950554;
    if (a4)
    {
      a4(0, 4294950554, a5);
    }
  }

  else
  {
    CFRetain(a1);
    if (a2)
    {
      CFRetain(a2);
    }

    APSDispatchAsyncFHelper();
    return 0;
  }

  return v10;
}

uint64_t mcs_SetRate(const void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 8))
  {
    v8 = 4294950554;
    if (a3)
    {
      a3(4294950554, a4);
    }
  }

  else
  {
    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v8;
}

uint64_t mcs_GetProxiedProperty(const void *a1, const void *a2, uint64_t a3, void (*a4)(const void *, void, uint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (FigCFEqual())
  {
    Value = FigCFDictionaryGetValue();
  }

  else
  {
    if (FigCFEqual())
    {
      v11 = 4294954509;
      if (!a4)
      {
        return v11;
      }

LABEL_14:
      a4(a2, 0, v11, a5);
      return v11;
    }

    Value = 0;
  }

  if (*(DerivedStorage + 8))
  {
    v11 = 4294950554;
    if (!a4)
    {
      return v11;
    }

    goto LABEL_14;
  }

  CFRetain(a2);
  if (Value)
  {
    CFRetain(Value);
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t mcs_PerformRemoteAction(const void *a1, const void *a2, const void *a3, void (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v10 = 4294950554;
    if (a4)
    {
      a4(4294950554, 0, a5);
    }
  }

  else
  {
    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v10;
}

uint64_t mcs_BroadcastCoordinatedPlaybackState()
{
  if (gLogCategory_EndpointPlaybackSessionMC <= 90 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    mcs_BroadcastCoordinatedPlaybackState_cold_1();
  }

  return 4294954514;
}

void mcs_updateIsPlayingAndPostNotification(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 57) != a2)
  {
    v4 = DerivedStorage;
    APSWiFiTransactionUpdateTransaction();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = Mutable;
    v7 = MEMORY[0x277CBED10];
    if (a2)
    {
      v7 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"Playing", *v7);
    *(v4 + 57) = a2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v6);
  }
}

void mcs_invokeEventHandlerCallback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    mcs_invokeEventHandlerCallback_cold_1();
  }

  if (!*(DerivedStorage + 8))
  {
    v3 = *(DerivedStorage + 104);
    if (v3)
    {
      v3(*a1, *(a1 + 8), *(DerivedStorage + 112), *(DerivedStorage + 120));
    }
  }

  CFRelease(*(a1 + 8));
  v4 = *a1;

  CFRelease(v4);
}

void mcs_PlayInternal(uint64_t *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v16 = -16742;
  }

  else
  {
    v3 = DerivedStorage;
    v16 = mcs_EnsureConnectedInternal(*a1);
    if (!v16)
    {
      if (!*v3)
      {
        SNPrintF();
        *v3 = os_transaction_create();
      }

      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      if (v16 || (CFStringCopyUTF8CString(), !v15))
      {
        v4 = MediaControlClient_DoPlayRemote();
        v16 = v4;
        if (!v4)
        {
LABEL_12:
          *(v3 + 136) = 1;
LABEL_25:
          v16 = 0;
          *(v3 + 56) = 1;
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          mcs_updateIsPlayingAndPostNotification(*a1, 1);
          goto LABEL_26;
        }
      }

      else
      {
        v16 = MediaControlClient_DoPlayLocal();
        free(v15);
        v4 = v16;
        if (!v16)
        {
          goto LABEL_12;
        }
      }

      if (gLogCategory_EndpointPlaybackSessionMC <= 90)
      {
        if (gLogCategory_EndpointPlaybackSessionMC != -1 || (v5 = _LogCategory_Initialize(), v4 = v16, v5))
        {
          LogPrintF();
          v4 = v16;
        }
      }

      if (v4 == 200453 && *(v3 + 136))
      {
        v11 = *a1;
        v13 = 0;
        v14 = 0;
        v12 = 0;
        v6 = v11;
        if (gLogCategory_EndpointPlaybackSessionMC <= 50)
        {
          if (gLogCategory_EndpointPlaybackSessionMC != -1 || (v7 = _LogCategory_Initialize(), v6 = *a1, v7))
          {
            LogPrintF();
            v6 = *a1;
          }
        }

        if (v6)
        {
          CFRetain(v6);
        }

        v8 = a1[1];
        if (v8)
        {
          CFRetain(v8);
        }

        mcs_InsertPlayQueueItemInternal(&v11);
      }

      goto LABEL_25;
    }

    mcs_PlayInternal_cold_1();
  }

LABEL_26:
  v9 = a1[2];
  if (v9)
  {
    v9(v16, a1[3]);
  }

  v10 = a1[1];
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(*a1);
}

void mcs_InsertPlayQueueItemInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    inserted = 4294950554;
  }

  else if (*(DerivedStorage + 32))
  {
    inserted = MediaControlClient_DoInsertPlaylistItem();
    if (!inserted)
    {
      goto LABEL_4;
    }

    mcs_InsertPlayQueueItemInternal_cold_1();
  }

  else
  {
    inserted = 4294950553;
  }

  if (gLogCategory_EndpointPlaybackSessionMC <= 90 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_4:
  v4 = *(a1 + 24);
  if (v4)
  {
    v4(inserted, *(a1 + 32));
  }

  CFRelease(*(a1 + 8));
  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *a1;

  CFRelease(v6);
}

void mcs_StopInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    mcs_StopInternal_cold_1();
    v4 = 4294950554;
  }

  else
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 32))
    {
      v4 = MediaControlClient_DoStop();
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 56) = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v5(v4, *(a1 + 16));
  }

  v6 = *a1;

  CFRelease(v6);
}

void mcs_GetProxiedPropertyInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (*(DerivedStorage + 8))
  {
    v3 = 0;
    v6 = -16742;
  }

  else
  {
    if (*(DerivedStorage + 32))
    {
      v3 = MediaControlClient_CopyProperty();
      goto LABEL_4;
    }

    v3 = 0;
    v6 = -16743;
  }

  v7 = v6;
LABEL_4:
  v4 = *(a1 + 24);
  if (v4)
  {
    v4(*(a1 + 8), v3, v7, *(a1 + 32));
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(*(a1 + 8));
  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*a1);
}

uint64_t APMulticastProbeSenderCreate(void *a1)
{
  if (APMulticastProbeSenderGetShared_once != -1)
  {
    APMulticastProbeSenderCreate_cold_1();
  }

  v2 = APMulticastProbeSenderGetShared_multicastProbeSender;
  if (APMulticastProbeSenderGetShared_multicastProbeSender)
  {
    v2 = CFRetain(APMulticastProbeSenderGetShared_multicastProbeSender);
  }

  *a1 = v2;
  return gCreationErr;
}

uint64_t APMulticastProbeSenderGetShared()
{
  if (APMulticastProbeSenderGetShared_once != -1)
  {
    APMulticastProbeSenderCreate_cold_1();
  }

  return APMulticastProbeSenderGetShared_multicastProbeSender;
}

void __APMulticastProbeSenderGetShared_block_invoke()
{
  LogSetAppID();
  IsFeatureEnabled = APSSettingsIsFeatureEnabled();
  multicastProbeSender_create_isMC2UCDetectionEnabled = IsFeatureEnabled;
  if (gLogCategory_APMulticastProbeSender <= 50)
  {
    if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    IsFeatureEnabled = multicastProbeSender_create_isMC2UCDetectionEnabled;
  }

  if (!IsFeatureEnabled)
  {
    v2 = 0;
    goto LABEL_30;
  }

  if (multicastProbeSender_GetClassID_onceToken != -1)
  {
    __APMulticastProbeSenderGetShared_block_invoke_cold_1();
  }

  v1 = CMDerivedObjectCreate();
  if (v1)
  {
    v2 = v1;
    if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      __APMulticastProbeSenderGetShared_block_invoke_cold_2(v2);
    }

    goto LABEL_30;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigSimpleMutexCreate();
  DerivedStorage[15] = v4;
  if (!v4)
  {
    __APMulticastProbeSenderGetShared_block_invoke_cold_8();
LABEL_35:
    v2 = -6728;
    goto LABEL_30;
  }

  v5 = dispatch_queue_create("AirPlayMulticastProbeSenderQueue", 0);
  DerivedStorage[6] = v5;
  if (!v5)
  {
    __APMulticastProbeSenderGetShared_block_invoke_cold_7();
    goto LABEL_35;
  }

  DerivedStorage[13] = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    __APMulticastProbeSenderGetShared_block_invoke_cold_3();
  }

  v6 = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (!*(v6 + 56))
  {
    v7 = v6;
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v6 + 48));
    *(v7 + 56) = v8;
    if (v8)
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v16[3] = v9;
      if (v9)
      {
        CFRetain(v9);
        v10 = *(v7 + 56);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 0x40000000;
        handler[2] = __multicastProbeSender_createMC2UCProbingTimer_block_invoke;
        handler[3] = &unk_27849AE98;
        handler[4] = &v15;
        dispatch_source_set_event_handler(v10, handler);
        v11 = *(v7 + 56);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 0x40000000;
        v13[2] = __multicastProbeSender_createMC2UCProbingTimer_block_invoke_2;
        v13[3] = &unk_27849AEC0;
        v13[4] = &v15;
        dispatch_source_set_cancel_handler(v11, v13);
        dispatch_source_set_timer(*(v7 + 56), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        dispatch_activate(*(v7 + 56));
        if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
        {
          __APMulticastProbeSenderGetShared_block_invoke_cold_4();
        }
      }

      else
      {
        __APMulticastProbeSenderGetShared_block_invoke_cold_5();
      }
    }

    else
    {
      __APMulticastProbeSenderGetShared_block_invoke_cold_6();
    }
  }

  v12 = v16[3];
  if (v12)
  {
    CFRelease(v12);
  }

  _Block_object_dispose(&v15, 8);
  v2 = 0;
  APMulticastProbeSenderGetShared_multicastProbeSender = 0;
LABEL_30:
  gCreationErr = v2;
}

uint64_t multicastProbeSender_registerDeviceForAddressFamily(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 64))
  {
    multicastProbeSender_registerDeviceForAddressFamily_cold_1();
    v14 = 4294896148;
  }

  else
  {
    v7 = CFStringGetOrCopyCStringUTF8();
    if (v7)
    {
      v14 = v7;
      multicastProbeSender_registerDeviceForAddressFamily_cold_2();
    }

    else
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s_%u", 0, a4);
      if (v8)
      {
        v9 = v8;
        if (CFDictionaryContainsKey(*(DerivedStorage + 104), v8))
        {
          Value = CFDictionaryGetValue(*(DerivedStorage + 104), v9);
          if (a4 != 2 && !Value)
          {
            if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v14 = 0;
            goto LABEL_27;
          }

          if (!Value)
          {
            multicastProbeSender_registerDeviceForAddressFamily_cold_9();
            goto LABEL_52;
          }

          v11 = CFDictionaryContainsKey(*(DerivedStorage + 96), a2);
          if (v11)
          {
            v12 = CFDictionaryGetValue(*(DerivedStorage + 96), a2);
            if (!v12)
            {
              multicastProbeSender_registerDeviceForAddressFamily_cold_3();
LABEL_52:
              v14 = 4294960587;
              goto LABEL_27;
            }
          }

          else
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!Mutable)
            {
              multicastProbeSender_registerDeviceForAddressFamily_cold_8();
              v14 = 4294960568;
              goto LABEL_27;
            }

            v12 = Mutable;
            FigCFDictionarySetValue();
            CFDictionarySetValue(*(DerivedStorage + 96), a2, v12);
          }

          if (a4 == 2 || a4 == 30)
          {
            FigCFDictionarySetUInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetUInt32();
            if (APMulticastProbeSenderGetShared_once != -1)
            {
              multicastProbeSender_registerDeviceForAddressFamily_cold_4();
            }

            if (multicastProbeSender_probeForMC2UC(APMulticastProbeSenderGetShared_multicastProbeSender, a4) && gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
            {
              multicastProbeSender_registerDeviceForAddressFamily_cold_5();
            }

            v16 = multicastProbeSender_incrementRefCountForSSMGroupInfo();
            if (v16)
            {
              v14 = v16;
              multicastProbeSender_registerDeviceForAddressFamily_cold_6();
            }

            else
            {
              if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
              {
                multicastProbeSender_registerDeviceForAddressFamily_cold_7();
              }

              v14 = 0;
            }
          }

          else
          {
            if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v14 = 4294960591;
          }

          if (!v11)
          {
            CFRelease(v12);
          }

LABEL_27:
          free(0);
          CFRelease(v9);
          if (!v14)
          {
            return v14;
          }

          goto LABEL_28;
        }

        multicastProbeSender_registerDeviceForAddressFamily_cold_10();
        goto LABEL_52;
      }

      multicastProbeSender_registerDeviceForAddressFamily_cold_11();
      v14 = 4294960568;
    }
  }

  free(0);
LABEL_28:
  if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    multicastProbeSender_registerDeviceForAddressFamily_cold_12();
  }

  return v14;
}

uint64_t APMulticastProbeSenderReleaseSSMGroupInfo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APMulticastProbeSender <= 30 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 64))
  {
    APMulticastProbeSenderReleaseSSMGroupInfo_cold_1();
    v4 = 4294896148;
  }

  else if (*(DerivedStorage + 104))
  {
    v3 = CFStringGetOrCopyCStringUTF8();
    if (v3)
    {
      v4 = v3;
      APMulticastProbeSenderReleaseSSMGroupInfo_cold_2();
    }

    else
    {
      multicastProbeSender_decrementRefCountForSSMGroupInfo(a1, 0, 2);
      v4 = multicastProbeSender_decrementRefCountForSSMGroupInfo(a1, 0, 30);
      if (v4)
      {
        APMulticastProbeSenderReleaseSSMGroupInfo_cold_3();
      }
    }
  }

  else
  {
    APMulticastProbeSenderReleaseSSMGroupInfo_cold_4();
    v4 = 4294960591;
  }

  FigSimpleMutexUnlock();
  free(0);
  if (v4 && gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    APMulticastProbeSenderReleaseSSMGroupInfo_cold_5();
  }

  return v4;
}

uint64_t multicastProbeSender_decrementRefCountForSSMGroupInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 64))
  {
    multicastProbeSender_decrementRefCountForSSMGroupInfo_cold_1();
    return 4294896148;
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s_%u", a2, a3);
  if (!v6)
  {
    multicastProbeSender_decrementRefCountForSSMGroupInfo_cold_4();
    return 4294960568;
  }

  v7 = v6;
  Value = CFDictionaryGetValue(*(DerivedStorage + 104), v6);
  if (a3 != 30)
  {
    if (a3 != 2)
    {
      if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v11 = 4294960591;
      goto LABEL_22;
    }

    if (!Value)
    {
      multicastProbeSender_decrementRefCountForSSMGroupInfo_cold_3();
      goto LABEL_27;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged <= 0)
    {
      multicastProbeSender_decrementRefCountForSSMGroupInfo_cold_2();
LABEL_27:
      v11 = 4294960587;
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if (Value)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged >= 1)
    {
LABEL_10:
      v10 = Int64Ranged - 1;
      if (gLogCategory_APMulticastProbeSender <= 30 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      FigCFDictionarySetInt32();
      if (!v10)
      {
        FigCFDictionaryGetIntIfPresent();
        CFDictionaryRemoveValue(*(DerivedStorage + 104), v7);
      }
    }
  }

  v11 = 0;
LABEL_22:
  CFRelease(v7);
  return v11;
}

uint64_t APMulticastProbeSenderUnregister(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  mach_absolute_time();
  if (gLogCategory_APMulticastProbeSender <= 10 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 64))
  {
    v14 = 4294896148;
LABEL_103:
    APSLogErrorAt();
    goto LABEL_104;
  }

  v6 = *(DerivedStorage + 96);
  if (!v6)
  {
    v14 = 4294960591;
    goto LABEL_103;
  }

  Value = CFDictionaryGetValue(v6, a2);
  if (!Value)
  {
    v14 = 4294960569;
LABEL_104:
    FigSimpleMutexUnlock();
LABEL_78:
    if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      APMulticastProbeSenderUnregister_cold_19();
    }

    return v14;
  }

  v8 = Value;
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64();
  CFDictionaryGetInt64();
  CFDictionaryGetInt64();
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetValue(v8, @"MC2UCInterface");
  if (gLogCategory_APMulticastProbeSender <= 50)
  {
    if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (gLogCategory_APMulticastProbeSender <= 50)
    {
      if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
      {
        APMulticastProbeSenderUnregister_cold_1();
      }

      if (gLogCategory_APMulticastProbeSender <= 50)
      {
        if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
        {
          APMulticastProbeSenderUnregister_cold_2();
        }

        if (gLogCategory_APMulticastProbeSender <= 50)
        {
          if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
          {
            APMulticastProbeSenderUnregister_cold_3();
          }

          if (gLogCategory_APMulticastProbeSender <= 50)
          {
            if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
            {
              APMulticastProbeSenderUnregister_cold_4();
            }

            if (gLogCategory_APMulticastProbeSender <= 50)
            {
              if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
              {
                APMulticastProbeSenderUnregister_cold_5();
              }

              if (gLogCategory_APMulticastProbeSender <= 50)
              {
                if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
                {
                  APMulticastProbeSenderUnregister_cold_6();
                }

                if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
                {
                  APMulticastProbeSenderUnregister_cold_7();
                }
              }
            }
          }
        }
      }
    }
  }

  if (!a3)
  {
    v10 = 0;
    if (!CFDictionaryGetInt64Ranged())
    {
      goto LABEL_63;
    }

    goto LABEL_39;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v14 = 4294960568;
    goto LABEL_103;
  }

  v10 = Mutable;
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if (!CFDictionaryGetInt64Ranged())
  {
    goto LABEL_62;
  }

LABEL_39:
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64();
  CFDictionaryGetInt64();
  CFDictionaryGetInt64();
  CFDictionaryGetInt64Ranged();
  if (gLogCategory_APMulticastProbeSender <= 50)
  {
    if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
    {
      APMulticastProbeSenderUnregister_cold_8();
    }

    if (gLogCategory_APMulticastProbeSender <= 50)
    {
      if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
      {
        APMulticastProbeSenderUnregister_cold_9();
      }

      if (gLogCategory_APMulticastProbeSender <= 50)
      {
        if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
        {
          APMulticastProbeSenderUnregister_cold_10();
        }

        if (gLogCategory_APMulticastProbeSender <= 50)
        {
          if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
          {
            APMulticastProbeSenderUnregister_cold_11();
          }

          if (gLogCategory_APMulticastProbeSender <= 50)
          {
            if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
            {
              APMulticastProbeSenderUnregister_cold_12();
            }

            if (gLogCategory_APMulticastProbeSender <= 50)
            {
              if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
              {
                APMulticastProbeSenderUnregister_cold_13();
              }

              if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
              {
                APMulticastProbeSenderUnregister_cold_14();
              }
            }
          }
        }
      }
    }
  }

  if (a3)
  {
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
LABEL_62:
    *a3 = CFRetain(v10);
  }

LABEL_63:
  v11 = CFStringGetOrCopyCStringUTF8();
  if (v11)
  {
    v14 = v11;
    APMulticastProbeSenderUnregister_cold_15();
  }

  else
  {
    v12 = multicastProbeSender_decrementRefCountForSSMGroupInfo(a1, 0, 2);
    if (v12)
    {
      v14 = v12;
      APMulticastProbeSenderUnregister_cold_16();
    }

    else
    {
      v13 = multicastProbeSender_decrementRefCountForSSMGroupInfo(a1, 0, 30);
      if (v13)
      {
        v14 = v13;
        APMulticastProbeSenderUnregister_cold_17();
      }

      else
      {
        CFDictionaryRemoveValue(*(DerivedStorage + 96), a2);
        if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (!FigCFDictionaryGetCount())
        {
          dispatch_source_set_timer(*(DerivedStorage + 56), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
          *(DerivedStorage + 112) = 0;
          if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
          {
            APMulticastProbeSenderUnregister_cold_18();
          }
        }

        v14 = 0;
      }
    }
  }

  FigSimpleMutexUnlock();
  if (v10)
  {
    CFRelease(v10);
  }

  free(0);
  if (v14)
  {
    goto LABEL_78;
  }

  return v14;
}

void __multicastProbeSender_createMC2UCProbingTimer_block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __multicastProbeSender_updateTxProbePacketsForClients_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 60);
  if (v2 == 30)
  {
    if (!CFDictionaryGetInt64Ranged())
    {
      FigCFDictionarySetUInt64();
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    if (!CFDictionaryGetInt64Ranged())
    {
      FigCFDictionarySetUInt64();
    }

LABEL_8:
    result = FigCFDictionarySetInt32();
    goto LABEL_14;
  }

  if (gLogCategory_APMulticastProbeSender <= 90)
  {
    if (gLogCategory_APMulticastProbeSender != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *(*(*(v1 + 32) + 8) + 24) = -6705;
LABEL_14:
  if (!*(*(*(v1 + 32) + 8) + 24) && gLogCategory_APMulticastProbeSender <= 50)
  {
    if (gLogCategory_APMulticastProbeSender != -1)
    {
      return __multicastProbeSender_updateTxProbePacketsForClients_block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __multicastProbeSender_updateTxProbePacketsForClients_block_invoke_cold_1();
    }
  }

  return result;
}

uint64_t multicastProbeSender_incrementRefCountForSSMGroupInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 64))
  {
    multicastProbeSender_incrementRefCountForSSMGroupInfo_cold_1();
    return 4294896148;
  }

  else if ((CFDictionaryGetInt64Ranged() & 0x80000000) != 0)
  {
    multicastProbeSender_incrementRefCountForSSMGroupInfo_cold_2();
    return 4294960587;
  }

  else
  {
    if (gLogCategory_APMulticastProbeSender <= 30 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    FigCFDictionarySetInt32();
    return 0;
  }
}

uint64_t multicastProbeSender_constructMulticastGroupInfoForAddressFamily(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v43.sa_len = 0;
  *&v43.sa_data[6] = 0;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  cf = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 64))
  {
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_1();
    v19 = 0;
    v9 = 0;
    v14 = 0;
    v21 = 4294896148;
LABEL_154:
    v18 = -1;
    goto LABEL_89;
  }

  v7 = CFStringGetOrCopyCStringUTF8();
  if (v7)
  {
    v21 = v7;
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_2();
    v19 = 0;
    v9 = 0;
    v14 = 0;
    goto LABEL_154;
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s_%u", 0, a3);
  if (!v9)
  {
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_16();
    v19 = 0;
    v14 = 0;
    v21 = 4294960568;
    goto LABEL_154;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 104), v9);
  v11 = Value;
  if (Value)
  {
    CFRetain(Value);
    v12 = CFDictionaryGetValue(v11, @"MC2UCSSMGroupInfo");
    if (v12)
    {
      v13 = CFRetain(v12);
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v18 = -1;
    v19 = v11;
    goto LABEL_16;
  }

  v15 = CMBaseObjectGetDerivedStorage();
  v39 = a4;
  allocator = v8;
  if (a3 == 30)
  {
    if (IsAppleInternalBuild() && (CFStringGetTypeID(), (v23 = APSSettingsCopyValueEx()) != 0))
    {
      v24 = v23;
      if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      APSCFStringToSockAddr();
      CFRelease(v24);
    }

    else
    {
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 40) = 0;
      *(v15 + 32) = 0;
      *(v15 + 16) = 572661276;
      *(v15 + 24) = 13311;
      v25 = arc4random();
      *(v15 + 36) = HIBYTE(v25) | 0x80;
      *(v15 + 37) = BYTE2(v25);
      *(v15 + 38) = BYTE1(v25);
      *(v15 + 39) = v25;
    }

    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_48;
    }
  }

  else if (a3 == 2)
  {
    if (IsAppleInternalBuild() && (CFStringGetTypeID(), (v16 = APSSettingsCopyValueEx()) != 0))
    {
      v17 = v16;
      if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      APSCFStringToSockAddr();
      CFRelease(v17);
    }

    else
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *v15 = 572654096;
      *(v15 + 4) = bswap32(arc4random() % 0xFFFF00 - 402652928);
    }

    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_48;
    }
  }

  else if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
LABEL_48:
    LogPrintF();
  }

  v18 = socket(a3, 2, 17);
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

  if (!*__error())
  {
    v21 = 4294960596;
    goto LABEL_62;
  }

  v21 = *__error();
  if (v21)
  {
LABEL_62:
    if (gLogCategory_APMulticastProbeSender > 90 || gLogCategory_APMulticastProbeSender == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_52:
  if_nametoindex(0);
  v26 = SocketSetMulticastInterface();
  if (v26)
  {
    v21 = v26;
    if (gLogCategory_APMulticastProbeSender > 90 || gLogCategory_APMulticastProbeSender == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v27 = v39;
  if (a3 == 2)
  {
    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!connect(v18, DerivedStorage, 0x10u))
    {
      goto LABEL_74;
    }

LABEL_72:
    if (*__error())
    {
      v21 = *__error();
      if (!v21)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v21 = 4294960596;
    }

    if (gLogCategory_APMulticastProbeSender > 90 || gLogCategory_APMulticastProbeSender == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  if (a3 == 30)
  {
    *(DerivedStorage + 40) = if_nametoindex(0);
    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v27 = v39;
    if (connect(v18, (DerivedStorage + 16), 0x1Cu))
    {
      goto LABEL_72;
    }
  }

LABEL_74:
  v42 = 28;
  if (getsockname(v18, &v43, &v42))
  {
    if (*__error())
    {
      v21 = *__error();
      if (!v21)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v21 = 4294960596;
    }

    if (gLogCategory_APMulticastProbeSender > 90 || gLogCategory_APMulticastProbeSender == -1 && !_LogCategory_Initialize())
    {
LABEL_88:
      v19 = 0;
      v14 = 0;
      goto LABEL_89;
    }

LABEL_87:
    LogPrintF();
    goto LABEL_88;
  }

LABEL_77:
  if (gLogCategory_APMulticastProbeSender <= 30 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_15();
    v19 = 0;
    v14 = 0;
    v21 = 4294960568;
    goto LABEL_89;
  }

  v13 = Mutable;
  if (a3 == 2)
  {
    v30 = APSCFDictionarySetSockAddr();
    if (v30)
    {
      v21 = v30;
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_5();
      goto LABEL_170;
    }

    v31 = APSCFDictionarySetSockAddr();
    if (v31)
    {
      v21 = v31;
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_6();
LABEL_170:
      v19 = 0;
      v14 = 0;
      goto LABEL_25;
    }
  }

  else if (a3 == 30)
  {
    v32 = APSCFDictionarySetSockAddr();
    if (v32)
    {
      v21 = v32;
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_3();
      goto LABEL_170;
    }

    v33 = APSCFDictionarySetSockAddr();
    if (v33)
    {
      v21 = v33;
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_4();
      goto LABEL_170;
    }
  }

  if (*v27 && CFDictionaryContainsKey(*v27, @"groupEncryptionKey"))
  {
    CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v14 = CFRetain(TypedValue);
      v35 = 0;
    }

    else
    {
      v35 = 0;
      v14 = 0;
    }
  }

  else
  {
    v46 = 0;
    RandomBytes();
    v36 = CFDataCreate(allocator, bytes, 32);
    v21 = APSCryptorChaCha20Poly1305Create();
    if (v21)
    {
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_7();
      v35 = 0;
      v14 = 0;
    }

    else
    {
      if (gLogCategory_APMulticastProbeSender <= 30 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_8();
      }

      v35 = v46;
      cf = v46;
      v46 = 0;
      v14 = v36;
      v36 = 0;
    }

    for (i = 0; i != 32; ++i)
    {
      bytes[i] = 0;
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v21)
    {
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_9();
      v19 = 0;
      goto LABEL_24;
    }

    FigCFDictionarySetValue();
  }

  v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v19)
  {
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_14();
    goto LABEL_161;
  }

  FigCFDictionarySetInt();
  if (gLogCategory_APMulticastProbeSender <= 10 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigCFDictionarySetInt32();
  FigCFDictionarySetValue();
  if (!v35)
  {
    if (v14)
    {
      v38 = APSCryptorChaCha20Poly1305Create();
      if (v38)
      {
        v21 = v38;
        multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_10();
        goto LABEL_24;
      }
    }
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (gLogCategory_APMulticastProbeSender > 50)
  {
    a4 = v39;
  }

  else
  {
    a4 = v39;
    if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }

LABEL_16:
  if (*a4)
  {
    v20 = CFDictionaryMergeDictionary();
    if (v20)
    {
      v21 = v20;
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_11();
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  *a4 = MutableCopy;
  if (!MutableCopy)
  {
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_13();
LABEL_161:
    v21 = 4294960568;
    goto LABEL_24;
  }

LABEL_20:
  if (v11)
  {
    v21 = multicastProbeSender_incrementRefCountForSSMGroupInfo();
    if (v21)
    {
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_12();
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_24:
  if (v13)
  {
LABEL_25:
    CFRelease(v13);
  }

LABEL_89:
  free(0);
  if ((v18 & 0x80000000) == 0 && v21 && close(v18) && *__error())
  {
    __error();
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return FigCFDictionarySetUInt64();
}

uint64_t handleTestEchoCommand(int a1, CFTypeRef cf, void *a3)
{
  if (cf)
  {
    v4 = CFRetain(cf);
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 0;
}

uint64_t AirPlayDiscoveryBrokerXPCServicesServerStart()
{
  if (!APSSettingsIsFeatureEnabled() || !FigGetCFPreferenceNumberWithDefault())
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA3A0], @"com.apple.airplay.discoverybroker.allow");
  v1 = APSXPCServerStart();
  if (v1)
  {
    AirPlayDiscoveryBrokerXPCServicesServerStart_cold_1();
    if (!Mutable)
    {
      return v1;
    }

    goto LABEL_7;
  }

  if (IsAppleInternalBuild())
  {
    APSXPCServerAddCommandHandler();
  }

  if (Mutable)
  {
LABEL_7:
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t AirPlayStartAlwaysOnModules()
{
  APDemoManagerStart();

  return APSRegisterReceiverAppLauncher();
}

uint64_t AirPlayXPCServicesStart()
{
  v0 = MEMORY[0x223DAEBE0]();
  if (FigEndpointStreamAudioEngineStartServer())
  {
    AirPlayXPCServicesStart_cold_1();
  }

  else if (FigSampleBufferConsumerStartServer())
  {
    AirPlayXPCServicesStart_cold_2();
  }

  else if (FigEndpointPlaybackSessionStartServer())
  {
    AirPlayXPCServicesStart_cold_3();
  }

  else if (FigEndpointRemoteControlSessionStartServer())
  {
    AirPlayXPCServicesStart_cold_4();
  }

  else if (FigEndpointStreamStartServer())
  {
    AirPlayXPCServicesStart_cold_5();
  }

  else if (AirPlayDiscoveryBrokerXPCServicesServerStart())
  {
    AirPlayXPCServicesStart_cold_6();
  }

  else if (FigBufferedAirPlayGlobalRoutingRegistryStartServer())
  {
    AirPlayXPCServicesStart_cold_7();
  }

  else if (FigClusterSynchronizationManager_OneTimeInitialization())
  {
    AirPlayXPCServicesStart_cold_8();
  }

  else
  {
    if (MTAudioProcessingTapServerStart() && gLogCategory_AirPlayServices <= 90 && (gLogCategory_AirPlayServices != -1 || _LogCategory_Initialize()))
    {
      AirPlayXPCServicesStart_cold_9();
    }

    v1 = APCarPlayAVVCServerInit();
    if (v1)
    {
      v4 = v1;
      AirPlayXPCServicesStart_cold_10();
      return v4;
    }

    started = AirPlayStartEndpointXPCService();
    if (started)
    {
      v4 = started;
      AirPlayXPCServicesStart_cold_11();
      return v4;
    }

    v3 = AirPlayStartEndpointManagerXPCServiceIfNeeded();
    if (v3)
    {
      v4 = v3;
      AirPlayXPCServicesStart_cold_12();
      return v4;
    }

    AirPlayXPCServicesStart_cold_13(v0, &v6);
  }

  return v6;
}

uint64_t AirPlayStartServicesInMXProcess()
{
  if (MEMORY[0x223DAEBE0]())
  {
    APDemoManagerStart();
    if (APAirPlayAgentServicesServerStart())
    {
      AirPlayStartServicesInMXProcess_cold_1();
      return v1;
    }
  }

  else
  {
    AirPlayXPCServicesStart();
    APDemoManagerStart();
  }

  APSRegisterReceiverAppLauncher();
  result = SPHubbedDevicesProviderStartService(0);
  if (result)
  {
    AirPlayStartServicesInMXProcess_cold_2(result, &v2);
    return v2;
  }

  return result;
}

uint64_t APAudioSourceCompressionCreate(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    APAudioSourceCompressionCreate_cold_3();
    return 4294950525;
  }

  if (!a3)
  {
    APAudioSourceCompressionCreate_cold_2();
    return 4294950525;
  }

  if (!a4)
  {
    APAudioSourceCompressionCreate_cold_1();
    return 4294950525;
  }

  FigEndpointAudioSourceGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v11 = v7;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = *(a3 + 32);
    v10 = *(a3 + 16);
    *(DerivedStorage + 8) = *a3;
    *(DerivedStorage + 24) = v10;
    *(DerivedStorage + 40) = v9;
    *(DerivedStorage + 48) = CFRetain(a2);
    *(DerivedStorage + 136) = 0;
    *(DerivedStorage + 144) = -1;
    *(DerivedStorage + 148) = 0;
    if (gLogCategory_APAudioSourceCompression <= 30 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = 0;
    *a4 = 0;
  }

  return v11;
}

__CFString *compsource_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioSourceCompression %p>", a1);
  return Mutable;
}

uint64_t compsource_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"PacketSizeLimit"))
  {
    v8 = CFNumberCreate(a3, kCFNumberSInt64Type, DerivedStorage + 12);
    *a4 = v8;
    if (!v8)
    {
      compsource_CopyProperty_cold_1();
      return 4294950526;
    }
  }

  else if (CFEqual(a2, @"VBRBitRate"))
  {
    v9 = CFNumberCreate(a3, kCFNumberSInt64Type, DerivedStorage + 17);
    *a4 = v9;
    if (!v9)
    {
      compsource_CopyProperty_cold_2();
      return 4294950526;
    }
  }

  else if (CFEqual(a2, @"AlgorithmicLatency"))
  {
    outPropertyData = 0;
    v10 = DerivedStorage[13];
    if (!v10)
    {
      compsource_CopyProperty_cold_5();
      return 4294950524;
    }

    ioPropertyDataSize = 8;
    Property = AudioConverterGetProperty(v10, 0x7072696Du, &ioPropertyDataSize, &outPropertyData);
    if (Property)
    {
      v15 = Property;
      compsource_CopyProperty_cold_3();
      return v15;
    }

    v12 = CFNumberCreate(a3, kCFNumberSInt32Type, &outPropertyData);
    *a4 = v12;
    if (!v12)
    {
      compsource_CopyProperty_cold_4();
      return 4294950526;
    }
  }

  else
  {
    if (!CFEqual(a2, @"MaximumOutputPacketSize"))
    {
      return 4294954512;
    }

    ioPropertyDataSize = 4;
    LODWORD(outPropertyData) = 0;
    v13 = AudioConverterGetProperty(DerivedStorage[13], 0x786F7073u, &ioPropertyDataSize, &outPropertyData);
    if (v13)
    {
      v15 = v13;
      compsource_CopyProperty_cold_6();
      return v15;
    }

    v14 = CFNumberCreate(a3, kCFNumberSInt32Type, &outPropertyData);
    *a4 = v14;
    if (!v14)
    {
      compsource_CopyProperty_cold_7();
      return 4294950526;
    }
  }

  return 0;
}

uint64_t compsource_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"PacketSizeLimit"))
  {
    v9 = ASBDToAPAudioFormat();
    if (v9)
    {
      compsource_SetProperty_cold_1();
    }

    else if (APAudioFormatSupportsVBR())
    {
      *(DerivedStorage + 96) = CFGetInt64();
    }

    else if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      compsource_SetProperty_cold_3();
    }

    return v9;
  }

  if (!CFEqual(a2, @"VBRBitRate"))
  {
    if (CFEqual(a2, @"CodecQuality"))
    {
      v9 = ASBDToAPAudioFormat();
      if (v9)
      {
        compsource_SetProperty_cold_7();
        return v9;
      }

      if (!APAudioFormatSupportsVBR())
      {
        if (gLogCategory_APAudioSourceCompression > 50 || gLogCategory_APAudioSourceCompression == -1 && !_LogCategory_Initialize())
        {
          return v9;
        }

LABEL_21:
        compsource_SetProperty_cold_6();
        return v9;
      }

      if (CFEqual(a3, @"CodecQualityMode_Max"))
      {
        v6 = 127;
LABEL_34:
        *(DerivedStorage + 144) = v6;
        return v9;
      }

      if (CFEqual(a3, @"CodecQualityMode_High"))
      {
        v6 = 96;
        goto LABEL_34;
      }

      if (CFEqual(a3, @"CodecQualityMode_Medium"))
      {
        v6 = 64;
        goto LABEL_34;
      }

      if (CFEqual(a3, @"CodecQualityMode_Low"))
      {
        v6 = 32;
        goto LABEL_34;
      }

      if (CFEqual(a3, @"CodecQualityMode_Min"))
      {
        *(DerivedStorage + 144) = 0;
        return v9;
      }

      *(DerivedStorage + 144) = -1;
      if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return -16771;
    }

    else
    {
      return -12784;
    }
  }

  v9 = ASBDToAPAudioFormat();
  if (v9)
  {
    compsource_SetProperty_cold_4();
    return v9;
  }

  if (APAudioFormatSupportsVBR())
  {
    *(DerivedStorage + 136) = CFGetInt64();
    return v9;
  }

  if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_21;
  }

  return v9;
}

void compsource_ensureAudioConverterDestroyed()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 104);
  if (v1)
  {
    AudioConverterDispose(v1);
    *(DerivedStorage + 104) = 0;
  }

  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 72) = 0u;
  *(DerivedStorage + 56) = 0u;
  if (*(DerivedStorage + 112))
  {
    DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
    CFAllocatorDeallocate(DefaultAirPlayMallocZoneCFAllocator, *(DerivedStorage + 112));
    *(DerivedStorage + 112) = 0;
  }

  *(DerivedStorage + 120) = 0;
}

uint64_t compsource_Suspend()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceCompression <= 30 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
  {
    compsource_Suspend_cold_1();
  }

  v1 = *(DerivedStorage + 48);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v2)
  {
    v2(v1);
  }

  compsource_ensureAudioConverterDestroyed();
  return 0;
}

uint64_t compsource_Flush()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceCompression <= 30 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
  {
    compsource_Flush_cold_1();
  }

  v1 = *(DerivedStorage + 104);
  if (v1)
  {
    v2 = AudioConverterReset(v1);
    if (v2)
    {
      v5 = v2;
      compsource_Flush_cold_2();
      return v5;
    }
  }

  v3 = *(DerivedStorage + 48);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    v5 = 4294954514;
    goto LABEL_10;
  }

  v5 = v4(v3);
  if (v5)
  {
LABEL_10:
    APSLogErrorAt();
    return v5;
  }

  *(DerivedStorage + 128) = 0;
  return v5;
}

uint64_t compsource_CanProduceBytes(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 48);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 0;
  }

  return v4(v3, a2);
}

uint64_t compsource_GetAudioFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceCompression <= 30 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
  {
    compsource_GetAudioFormat_cold_1();
  }

  v4 = *(DerivedStorage + 8);
  v5 = *(DerivedStorage + 24);
  *(a2 + 32) = *(DerivedStorage + 40);
  *a2 = v4;
  *(a2 + 16) = v5;
  return 0;
}

uint64_t compsource_CanProducePackets(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 28);
  v5 = *(DerivedStorage + 80);
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = *(DerivedStorage + 48);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 0;
  }

  return v8(v7, v6 * (v5 * v4));
}

uint64_t compsource_FillComplexBuffer(uint64_t a1, void *a2, UInt32 a3, AudioStreamPacketDescription *a4, uint64_t a5, void *a6, uint64_t *a7, void *a8, uint64_t a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&outOutputData.mNumberBuffers = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = *(DerivedStorage + 128);
  inInputDataProcUserData = a1;
  v19 = *(DerivedStorage + 48);
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v20)
  {
    v21 = v20(v19, &v32 + 8);
  }

  else
  {
    v21 = 0;
  }

  *&v32 = v21;
  LOBYTE(v33) = 1;
  DWORD1(v33) = 0;
  ioOutputDataPacketSize = a5;
  v22 = *(DerivedStorage + 36);
  outOutputData.mNumberBuffers = 1;
  outOutputData.mBuffers[0].mNumberChannels = v22;
  outOutputData.mBuffers[0].mDataByteSize = a3;
  outOutputData.mBuffers[0].mData = a2;
  bzero(a4, 16 * a5);
  v23 = AudioConverterFillComplexBuffer(*(DerivedStorage + 104), compsource_audioConverterInputCallBack, &inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, a4);
  v24 = v23;
  if (v32)
  {
    *(v32 + 24) += DWORD1(v33);
  }

  v25 = ioOutputDataPacketSize;
  *(DerivedStorage + 128) -= *(DerivedStorage + 28) * ioOutputDataPacketSize;
  *(DerivedStorage + 148) = 0;
  if (v23 != -16774)
  {
    if (v23)
    {
      APSLogErrorAt();
      return v24;
    }

    if (!outOutputData.mBuffers[0].mDataByteSize)
    {
      compsource_FillComplexBuffer_cold_1();
      return 4294950524;
    }
  }

  *a7 = v25;
  *a6 = 0;
  if (v25)
  {
    v26 = 0;
    v27 = v25;
    do
    {
      v26 += a4[--v27].mDataByteSize;
    }

    while (v27 * 16);
    *a6 = v26;
  }

  if (a8)
  {
    *a8 = *(&v32 + 1) - v18;
  }

  if (a9)
  {
    v28 = *(DerivedStorage + 8);
    v29 = *(DerivedStorage + 24);
    *(a9 + 32) = *(DerivedStorage + 40);
    *a9 = v28;
    *(a9 + 16) = v29;
  }

  return v24;
}

uint64_t compsource_SetWriteHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 48);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_5:
    APSLogErrorAt();
    return v7;
  }

  v7 = v6(v5, a2, a3);
  if (v7)
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t compsource_PrepareForFlush()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 48);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v1)
  {
    v2 = 4294954514;
LABEL_5:
    APSLogErrorAt();
    return v2;
  }

  v2 = v1(v0);
  if (v2)
  {
    goto LABEL_5;
  }

  return v2;
}

uint64_t compsource_audioConverterInputCallBack(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  v30 = 0;
  *(a3 + 16) = 0;
  v10 = *(DerivedStorage + 80);
  *(a3 + 8) = *(DerivedStorage + 84);
  *(a3 + 12) = 0;
  v11 = v10 * *a2;
  v12 = *(a5 + 8);
  if (v12)
  {
    v13 = *(a5 + 28);
    v14 = *(v12 + 24);
    if (v13)
    {
      v14 += v13;
      *(v12 + 24) = v14;
      *(a5 + 28) = 0;
    }

    v15 = *(v12 + 28) - v14;
    if (v15)
    {
      if (v15 >= v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = v15;
      }

      *(a3 + 16) = *v12 + (*(v12 + 20) & v14);
      *(a3 + 12) = v16;
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v19 = (DerivedStorage + 48);
  v20 = *(DerivedStorage + 48);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v21 || !v21(v20, 0))
  {
LABEL_18:
    *a2 = 0;
LABEL_19:
    v17 = 4294950522;
    if (*(a5 + 28))
    {
      if (*(v9 + 148))
      {
        return 0;
      }

      else
      {
        return 4294950522;
      }
    }

    return v17;
  }

  if (*(v9 + 120) >= v11)
  {
    v23 = *(v9 + 112);
  }

  else
  {
    v22 = (v11 + *MEMORY[0x277D85FA0] - 1) / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
    if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
    v25 = MEMORY[0x223DAFDE0](DefaultAirPlayMallocZoneCFAllocator, *(v9 + 112), v22, 131598848, 0);
    if (!v25)
    {
      APSLogErrorAt();
      v17 = APSSignalErrorAt();
      if (!v17)
      {
        v16 = 0;
        v10 = *(v9 + 80);
        goto LABEL_10;
      }

LABEL_45:
      *a2 = 0;
      if (v17 != -16774)
      {
        return v17;
      }

      goto LABEL_19;
    }

    v23 = v25;
    *(v9 + 112) = v25;
    *(v9 + 120) = v22;
  }

  v29 = 0;
  if (!v11)
  {
LABEL_47:
    compsource_audioConverterInputCallBack_cold_1(a5, v9 + 48, &v31);
    v17 = v31;
    goto LABEL_45;
  }

  v16 = 0;
  while (1)
  {
    v26 = *v19;
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v27)
    {
      v17 = 4294954514;
      goto LABEL_40;
    }

    v28 = v27(v26, v23, v11, &v29, 0, &v30, a5 + 32);
    if (v28)
    {
      break;
    }

    if (v29)
    {
      v23 += v29;
      v16 += v29;
      LODWORD(v11) = v11 - v29;
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  v17 = v28;
  if (v28 != -16774)
  {
LABEL_40:
    if (gLogCategory_APAudioSourceCompression <= 90 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    APSLogErrorAt();
    goto LABEL_45;
  }

LABEL_36:
  if (!v16)
  {
    goto LABEL_47;
  }

  if (!*(a5 + 24))
  {
    *(a5 + 16) = v30;
    *(a5 + 24) = 1;
  }

  *(a3 + 16) = *(v9 + 112);
  *(a3 + 12) = v16;
  v10 = *(v9 + 80);
LABEL_9:
  *(a5 + 28) = v16;
  *(v9 + 128) += v16 / v10;
LABEL_10:
  v17 = 0;
  *a2 = v16 / v10;
  return v17;
}

uint64_t APEndpointPlusCreateWithBonjourInfo(int a1, const __CFDictionary *a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  v16 = 0;
  if (!a2)
  {
    APEndpointPlusCreateWithBonjourInfo_cold_6();
LABEL_15:
    v12 = 4294954516;
    goto LABEL_19;
  }

  if (!a4)
  {
    APEndpointPlusCreateWithBonjourInfo_cold_5();
    goto LABEL_15;
  }

  v8 = APEndpointPlusCreate(a1, a3, &v16);
  if (v8)
  {
    v12 = v8;
    APEndpointPlusCreateWithBonjourInfo_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1 == 2)
    {
      v10 = APEndpointPlusCreateWithBonjourInfo(1, a2, a3, &cf);
      if (!v10)
      {
        v11 = APEndpointPlusAddSubEndpoint(v16, cf);
        if (v11)
        {
          v12 = v11;
          APEndpointPlusCreateWithBonjourInfo_cold_4();
          goto LABEL_19;
        }

LABEL_9:
        v12 = 0;
        *a4 = v16;
        v16 = 0;
        goto LABEL_10;
      }

      v12 = v10;
      APEndpointPlusCreateWithBonjourInfo_cold_3();
    }

    else
    {
      v13 = APEndpointDescriptionAirPlayCreateWithBonjourInfo(*MEMORY[0x277CBECE8], a2, 0, (DerivedStorage + 48));
      if (!v13)
      {
        goto LABEL_9;
      }

      v12 = v13;
      APEndpointPlusCreateWithBonjourInfo_cold_2();
    }
  }

LABEL_19:
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t APEndpointPlusCopySubEndpoint(uint64_t a1, const void *a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = epp_copySubEndpoint(a1, a2, a3);
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t epp_copySubEndpoint(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    epp_copySubEndpoint_cold_4();
    return 4294950576;
  }

  if (!a3)
  {
    epp_copySubEndpoint_cold_3();
    return 4294950576;
  }

  if (*DerivedStorage != 2)
  {
    epp_copySubEndpoint_cold_1();
    return 4294950576;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 80), a2);
  if (Value && (v7 = CFRetain(Value)) != 0)
  {
    v8 = v7;
    result = 0;
    *a3 = v8;
  }

  else
  {
    epp_copySubEndpoint_cold_2();
    return 4294960569;
  }

  return result;
}

uint64_t APEndpointPlusRemoveSubEndpoint(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    APEndpointPlusRemoveSubEndpoint_cold_4();
LABEL_13:
    updated = 4294950576;
    goto LABEL_10;
  }

  v5 = DerivedStorage;
  if (*DerivedStorage != 2)
  {
    APEndpointPlusRemoveSubEndpoint_cold_1();
    goto LABEL_13;
  }

  if (CFDictionaryGetValue(*(DerivedStorage + 80), a2))
  {
    if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFDictionaryRemoveValue(*(v5 + 80), a2);
    updated = epp_updateDescription(a1);
    if (updated)
    {
      APEndpointPlusRemoveSubEndpoint_cold_2();
    }

    else
    {
      epp_postNotificationAsync(a1, *MEMORY[0x277CC0D48], 0);
    }
  }

  else
  {
    APEndpointPlusRemoveSubEndpoint_cold_3();
    updated = 4294960569;
  }

LABEL_10:
  FigSimpleMutexUnlock();
  return updated;
}

CFIndex APEndpointPlusGetSubEndpointCount()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage == 2)
  {
    Count = CFDictionaryGetCount(*(DerivedStorage + 80));
  }

  else
  {
    Count = 0;
  }

  FigSimpleMutexUnlock();
  return Count;
}

CFStringRef APEndpointPlusUtils_CopyDeviceIDFromEndpointDescription(uint64_t a1)
{
  theString = 0;
  v2 = *MEMORY[0x277CBECE8];
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(CMBaseObject, @"PairingPeerCUSystemIdentifier", v2, &theString);
    v6 = theString;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = theString == 0;
    }

    if (!v7)
    {
      if (!CFStringHasPrefix(theString, @"00000000-0000-0000-0000"))
      {
        return theString;
      }

      v6 = theString;
    }

    if (v6)
    {
      CFRelease(v6);
      theString = 0;
    }
  }

  v8 = APEndpointDescriptionGetCMBaseObject(a1);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9 || v9(v8, @"DeviceID", v2, &theString))
  {
    APEndpointPlusUtils_CopyDeviceIDFromEndpointDescription_cold_1();
  }

  return theString;
}

CFStringRef epp_CopyDebugDescription()
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  *cStr = 0u;
  v2 = 0u;
  CMBaseObjectGetDerivedStorage();
  SNPrintF();
  return CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
}

uint64_t epp_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInner();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2)
  {
    v8 = 4294950576;
    if (epp_SetProperty_cold_1(v5))
    {
      return v8;
    }

    goto LABEL_10;
  }

  if (v5)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v8 = v7(CMBaseObject, a2, a3);
    }

    else
    {
      v8 = 4294954514;
    }

LABEL_10:
    CFRelease(v5);
    return v8;
  }

  if (gLogCategory_APEndpointPlus <= 90 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294950570;
}

uint64_t epp_copyCachedProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CC1568]))
  {
    v10 = MEMORY[0x277CC1A18];
LABEL_6:
    v11 = *v10;
LABEL_7:
    Int64 = CFRetain(v11);
LABEL_8:
    v13 = 0;
    *a4 = Int64;
    return v13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13A0]) || CFEqual(a2, *MEMORY[0x277CC1370]))
  {
    v10 = MEMORY[0x277CBED10];
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13F0]))
  {
    v10 = MEMORY[0x277CBED28];
    v15 = MEMORY[0x277CBED10];
    v16 = *v9 == 3;
    goto LABEL_14;
  }

  if (CFEqual(a2, @"IsClusterEndpoint"))
  {
    v10 = MEMORY[0x277CBED28];
    v15 = MEMORY[0x277CBED10];
    v16 = *v9 == 2;
LABEL_14:
    if (!v16)
    {
      v10 = v15;
    }

    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11E8]))
  {
    Int64 = CFNumberCreateInt64();
    goto LABEL_8;
  }

  v17 = *MEMORY[0x277CC1400];
  if (CFEqual(a2, *MEMORY[0x277CC1400]))
  {
    v10 = MEMORY[0x277CBED28];
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1270]))
  {
    v10 = MEMORY[0x277CC0A70];
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1498]))
  {
    v10 = MEMORY[0x277CC11D8];
    goto LABEL_6;
  }

  if (CFEqual(a2, @"EndpointDescription"))
  {
    v11 = *(DerivedStorage + 48);
    if (!v11)
    {
      epp_copyCachedProperty_cold_1();
      return 4294960587;
    }

    goto LABEL_7;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC12D8]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC13C0]))
    {
      v10 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 56))
      {
        v10 = MEMORY[0x277CBED10];
      }

      goto LABEL_6;
    }

    if (*DerivedStorage == 2)
    {
      v41 = epp_copyCachedClusterProperty(a1, a2, a3, a4);
      v13 = v41;
      if (!v41 || v41 == -12784)
      {
        return v13;
      }
    }

    else
    {
      v42 = epp_copyCachedDescriptionProperty(a1, a2, a3, a4);
      v13 = v42;
      if (!v42 || v42 == -12784)
      {
        return v13;
      }
    }

    APSLogErrorAt();
    return v13;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  theDict = 0;
  v19 = *(v18 + 48);
  if (v19)
  {
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(v19);
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v22 = *MEMORY[0x277CBECE8];
      v23 = v21(CMBaseObject, @"Descriptor", *MEMORY[0x277CBECE8], &theDict);
      if (!v23)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(a3, 0, theDict);
        if (MutableCopy)
        {
          v25 = MutableCopy;
          v26 = *MEMORY[0x277CC1368];
          cf = 0;
          v27 = epp_copyCachedProperty(a1, v26, v22, &cf);
          v28 = cf;
          if (!v27)
          {
            FigCFDictionarySetValue();
          }

          if (v28)
          {
            CFRelease(v28);
          }

          v29 = *MEMORY[0x277CC1450];
          cf = 0;
          v30 = epp_copyCachedProperty(a1, v29, v22, &cf);
          v31 = cf;
          if (!v30)
          {
            FigCFDictionarySetValue();
          }

          if (v31)
          {
            CFRelease(v31);
          }

          v32 = *MEMORY[0x277CC1440];
          cf = 0;
          v33 = epp_copyCachedProperty(a1, v32, v22, &cf);
          v34 = cf;
          if (!v33)
          {
            FigCFDictionarySetValue();
          }

          if (v34)
          {
            CFRelease(v34);
          }

          v35 = *MEMORY[0x277CC13C0];
          cf = 0;
          v36 = epp_copyCachedProperty(a1, v35, v22, &cf);
          v37 = cf;
          if (!v36)
          {
            FigCFDictionarySetValue();
          }

          if (v37)
          {
            CFRelease(v37);
          }

          cf = 0;
          v38 = epp_copyCachedProperty(a1, v17, v22, &cf);
          v39 = cf;
          if (!v38)
          {
            FigCFDictionarySetValue();
          }

          if (v39)
          {
            CFRelease(v39);
          }

          FigCFDictionarySetBoolean();
          if (*v18 == 2)
          {
            APEndpointAPSClusterTypeToFigEndpointClusterType(*(v18 + 72));
            FigCFDictionarySetValue();
          }

          v40 = 0;
          *a4 = v25;
        }

        else
        {
          epp_copyCachedProperty_cold_2();
          v40 = 4294960568;
        }

        goto LABEL_58;
      }

      v40 = v23;
    }

    else
    {
      v40 = 4294954514;
    }

    APSLogErrorAt();
  }

  else
  {
    epp_copyCachedProperty_cold_3();
    v40 = 4294960587;
  }

LABEL_58:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (!v40)
  {
    return 0;
  }

  v13 = v40;
  epp_copyCachedProperty_cold_4();
  return v13;
}

uint64_t epp_copyCachedClusterProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage != 2)
  {
    epp_copyCachedClusterProperty_cold_1();
    return 4294950576;
  }

  v9 = DerivedStorage;
  if (!*(DerivedStorage + 48))
  {
    epp_copyCachedClusterProperty_cold_10();
    v10 = 4294960587;
    goto LABEL_40;
  }

  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, *MEMORY[0x277CC12A8]))
  {
    cf = FigCFArrayCreateCopy();
    if (!cf)
    {
      epp_copyCachedClusterProperty_cold_2();
      return 4294954512;
    }

    goto LABEL_49;
  }

  if (CFEqual(a2, *MEMORY[0x277CC12B0]))
  {
    cf = FigCFArrayCreateCopy();
    if (!cf)
    {
      epp_copyCachedClusterProperty_cold_3();
      return 4294954512;
    }

LABEL_49:
    v10 = 0;
    *a4 = cf;
    return v10;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC14E8]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC1428]))
    {
      TextToHardwareAddress();
      cf = CFDataCreate(a3, bytes, 6);
      if (cf)
      {
        goto LABEL_49;
      }

      epp_copyCachedClusterProperty_cold_5();
      v10 = 4294960568;
      goto LABEL_40;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14F0]))
    {
      v12 = MEMORY[0x277CC19B8];
      v13 = MEMORY[0x277CC19B0];
      v14 = *(v9 + 72);
      if (v14 != 2)
      {
        v13 = MEMORY[0x277CC19A8];
      }

      if (v14 != 1)
      {
        v12 = v13;
      }

      if (*v12)
      {
        cf = CFRetain(*v12);
        if (cf)
        {
          goto LABEL_49;
        }
      }

      else
      {
        cf = 0;
      }

      epp_copyCachedClusterProperty_cold_6();
      v10 = 4294960534;
      goto LABEL_40;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14F8]))
    {
      epp_getCachedClusterSupportedFeatures();
      cf = FigCFNumberCreateUInt64();
      if (!cf)
      {
        epp_copyCachedClusterProperty_cold_7();
        return 4294960568;
      }

      goto LABEL_49;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1440]))
    {
      v15 = APSGetClusterModelNameForClusterTypeAndModel();
      if (!v15)
      {
        goto LABEL_48;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x277CC1430]))
    {
      v15 = @"Apple";
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CC1258]))
      {
        v16 = MEMORY[0x277CBED10];
      }

      else
      {
        if (!CFEqual(a2, *MEMORY[0x277CC1558]))
        {
          if (epp_getClusterDescriptionKeyMap_onceToken != -1)
          {
            epp_copyCachedClusterProperty_cold_8();
          }

          Value = CFDictionaryGetValue(epp_getClusterDescriptionKeyMap_keyMap, a2);
          if (Value)
          {
            v19 = APEndpointDescriptionCopyProperty(*(v9 + 48), Value, a3, &cf);
            if (!v19)
            {
              goto LABEL_49;
            }

            v10 = v19;
            epp_copyCachedClusterProperty_cold_9();
          }

          else
          {
            if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v10 = 4294954512;
          }

          goto LABEL_40;
        }

        v16 = MEMORY[0x277CC1A10];
      }

      v15 = *v16;
    }

    v15 = CFRetain(v15);
LABEL_48:
    cf = v15;
    goto LABEL_49;
  }

  v11 = epp_copySubEndpointsArray(a1, &cf);
  if (!v11)
  {
    goto LABEL_49;
  }

  v10 = v11;
  epp_copyCachedClusterProperty_cold_4();
LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t epp_getCachedClusterSupportedFeatures()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DeviceClass = GestaltGetDeviceClass();
  if (*DerivedStorage == 2)
  {
    v2 = DeviceClass;
    v3 = *(DerivedStorage + 72);
    if (v3 == 1)
    {
      result = 10;
    }

    else
    {
      result = 0;
    }

    if (v3 == 2)
    {
      if (v2 == 7)
      {
        return 10;
      }

      else if (v2 == 4)
      {
        if (*(DerivedStorage + 56))
        {
          return 42;
        }

        else
        {
          return 10;
        }
      }

      else
      {
        return 15;
      }
    }
  }

  else
  {
    epp_getCachedClusterSupportedFeatures_cold_1();
    return 0;
  }

  return result;
}

CFDictionaryRef __epp_getClusterDescriptionKeyMap_block_invoke()
{
  v8[10] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC1450];
  v7[0] = *MEMORY[0x277CC1368];
  v7[1] = v0;
  v8[0] = @"ClusterUUID";
  v8[1] = @"GroupPublicName";
  v1 = *MEMORY[0x277CC12C8];
  v7[2] = *MEMORY[0x277CC12C0];
  v7[3] = v1;
  v8[2] = @"ClusterSize";
  v8[3] = @"ClusterType";
  v2 = *MEMORY[0x277CC1540];
  v7[4] = *MEMORY[0x277CC1340];
  v7[5] = v2;
  v8[4] = @"GroupID";
  v8[5] = @"StatusFlags";
  v3 = *MEMORY[0x277CC1208];
  v7[6] = *MEMORY[0x277CC1238];
  v7[7] = v3;
  v8[6] = @"VodkaVersion";
  v8[7] = @"SupportsAirPlayFromCloud";
  v4 = *MEMORY[0x277CC1550];
  v7[8] = *MEMORY[0x277CC1490];
  v7[9] = v4;
  v5 = *MEMORY[0x277CBECE8];
  v8[8] = @"ClusterUUID";
  v8[9] = @"TightSyncUUID";
  result = CFDictionaryCreateCopy(v5, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:10]);
  epp_getClusterDescriptionKeyMap_keyMap = result;
  return result;
}

CFDictionaryRef __epp_getDescriptionKeyMap_block_invoke()
{
  v19[44] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBECE8];
  v1 = *MEMORY[0x277CC1440];
  v18[0] = *MEMORY[0x277CC1450];
  v18[1] = v1;
  v19[0] = @"Name";
  v19[1] = @"Model";
  v2 = *MEMORY[0x277CC14F0];
  v18[2] = *MEMORY[0x277CC1428];
  v18[3] = v2;
  v19[2] = @"MACAddress";
  v19[3] = @"SubType";
  v3 = *MEMORY[0x277CC12C0];
  v18[4] = *MEMORY[0x277CC1340];
  v18[5] = v3;
  v19[4] = @"GroupID";
  v19[5] = @"ClusterSize";
  v4 = *MEMORY[0x277CC14C0];
  v18[6] = *MEMORY[0x277CC1540];
  v18[7] = v4;
  v19[6] = @"StatusFlags";
  v19[7] = @"SerialNumber";
  v5 = *MEMORY[0x277CC1550];
  v18[8] = *MEMORY[0x277CC1430];
  v18[9] = v5;
  v19[8] = @"Manufacturer";
  v19[9] = @"TightSyncUUID";
  v6 = *MEMORY[0x277CC14C8];
  v18[10] = *MEMORY[0x277CC1538];
  v18[11] = v6;
  v19[10] = @"DeviceSupportsRelay";
  v19[11] = @"SilentPrimary";
  v7 = *MEMORY[0x277CC1328];
  v18[12] = *MEMORY[0x277CC13B0];
  v18[13] = v7;
  v19[12] = @"IsGroupLeader";
  v19[13] = @"FirmwareVersion";
  v8 = *MEMORY[0x277CC1390];
  v18[14] = *MEMORY[0x277CC1210];
  v18[15] = v8;
  v19[14] = @"AirPlaySecurity";
  v19[15] = @"IsClusterLeader";
  v9 = *MEMORY[0x277CC1238];
  v18[16] = *MEMORY[0x277CC1298];
  v18[17] = v9;
  v19[16] = @"CloudLibraryIsOn";
  v19[17] = @"VodkaVersion";
  v10 = *MEMORY[0x277CC11F8];
  v18[18] = *MEMORY[0x277CC1490];
  v18[19] = v10;
  v19[18] = @"ClusterUUID";
  v19[19] = @"AdvertisesHAPSupport";
  v11 = *MEMORY[0x277CC1548];
  v18[20] = *MEMORY[0x277CC1350];
  v18[21] = v11;
  v19[20] = @"HKAccessControlLevel";
  v19[21] = @"TightSyncIsGroupLeader";
  v12 = *MEMORY[0x277CC1230];
  v18[22] = *MEMORY[0x277CC1378];
  v18[23] = v12;
  v19[22] = @"IsAppleMusicSubscriber";
  v19[23] = @"SupportsAirPlayVideoV2";
  v13 = *MEMORY[0x277CC13B8];
  v18[24] = *MEMORY[0x277CC1338];
  v18[25] = v13;
  v19[24] = @"GroupContainsDiscoverableLeader";
  v19[25] = @"IsHKAccessControlEnabled";
  v14 = *MEMORY[0x277CC12D0];
  v18[26] = *MEMORY[0x277CC1208];
  v18[27] = v14;
  v19[26] = @"SupportsAirPlayFromCloud";
  v19[27] = @"IsThirdPartyTVFamily";
  v15 = *MEMORY[0x277CC12F8];
  v18[28] = *MEMORY[0x277CC1510];
  v18[29] = v15;
  v19[28] = @"SupportsExtendedWHA";
  v19[29] = @"ExternalPlaybackCapabilities";
  v16 = *MEMORY[0x277CC1308];
  v18[30] = *MEMORY[0x277CC1218];
  v18[31] = v16;
  v19[30] = @"SupportsAirPlayVideoPlayQueue";
  v19[31] = @"DoesNotRequireVodkaForHLS";
  v18[32] = @"RoomUUID";
  v18[33] = @"RoomName";
  v19[32] = @"RoomUUID";
  v19[33] = @"RoomName";
  v18[34] = @"StatusFlags";
  v18[35] = @"EndpointInfo";
  v19[34] = @"StatusFlags";
  v19[35] = @"EndpointInfo";
  v18[36] = @"ClusterModel";
  v18[37] = @"SourceVersion";
  v19[36] = @"ClusterModel";
  v19[37] = @"SourceVersion";
  v18[38] = @"GroupPublicName";
  v18[39] = @"TransportDevice";
  v19[38] = @"GroupPublicName";
  v19[39] = @"TransportDevice";
  v18[40] = @"TightSyncClusterInfo";
  v18[41] = @"AirPlayClusterCompatibleEndpointProperties";
  v19[40] = @"TightSyncClusterInfo";
  v19[41] = @"AirPlayClusterCompatibleEndpointProperties";
  v18[42] = *MEMORY[0x277CC1330];
  v18[43] = @"IsScreenDemoReceiver";
  v19[42] = @"IsScreenDemoMode";
  v19[43] = @"IsScreenDemoMode";
  result = CFDictionaryCreateCopy(v0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:44]);
  epp_getDescriptionKeyMap_keyMap = result;
  return result;
}

uint64_t epp_ActivateForFeaturesWithCompletionCallback(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 64);
  if (v11)
  {
    dispatch_semaphore_signal(v11);
  }

  FigSimpleMutexUnlock();
  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v12 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v12[1] = CFRetain(a1);
  v12[2] = a4;
  v12[3] = a5;
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v13 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __epp_ActivateForFeaturesWithCompletionCallback_block_invoke;
  block[3] = &__block_descriptor_72_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = a4;
  block[8] = v12;
  dispatch_async(v13, block);
  return 0;
}

uint64_t epp_DeactivateWithCompletionCallback(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 64);
  if (v9)
  {
    dispatch_semaphore_signal(v9);
  }

  FigSimpleMutexUnlock();
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v10 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v10[1] = CFRetain(a1);
  v10[2] = a3;
  v10[3] = a4;
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v11 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __epp_DeactivateWithCompletionCallback_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  block[5] = v10;
  block[6] = a2;
  dispatch_async(v11, block);
  return 0;
}

uint64_t epp_EnsureAuthorizedWithCompletionCallback(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = epp_copyInner();
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v10 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v10[1] = CFRetain(a1);
  v10[2] = a3;
  v10[3] = a4;
  if (v9)
  {
    CFRetain(a1);
    CFRetain(v9);
    if (a2)
    {
      CFRetain(a2);
    }

    v11 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __epp_EnsureAuthorizedWithCompletionCallback_block_invoke;
    block[3] = &__block_descriptor_64_e5_v8__0l;
    block[4] = a1;
    block[5] = v9;
    block[6] = v10;
    block[7] = a2;
    dispatch_async(v11, block);
    CFRelease(v9);
    return 0;
  }

  else
  {
    epp_EnsureAuthorizedWithCompletionCallback_cold_1(DerivedStorage, v13);
    return 4294949690;
  }
}

uint64_t epp_Dissociate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_Dissociate_cold_1();
  }

  CFRetain(a1);
  v3 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __epp_Dissociate_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v3, block);
  return 0;
}

uint64_t epp_SetDelegate(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = epp_copyInner();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  if (a2)
  {
    v20 = *(a2 + 32);
    v6 = *(a2 + 16);
    v18 = *a2;
    v19 = v6;
    *&v17[0] = v18;
    *(&v17[1] + 1) = *(a2 + 56);
    v7 = *(a2 + 40);
    v8 = DerivedStorage + 104;
    a2 = DerivedStorage + 144;
    v9 = v17;
    v10 = &v18;
    *(v17 + 8) = v7;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
  }

  epp_updateDelegateRouting(a1, v10);
  epp_updateDelegateRemoteControl(a1, v9);
  if (!v5)
  {
    return 0;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v11)
  {
    v12 = v11(v5, v8);
  }

  else
  {
    v12 = -12782;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v13)
  {
    v14 = v13(v5, a2);
  }

  else
  {
    v14 = -12782;
  }

  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (v12 && v12 != -16723 || v14 != -16723 && v14)
  {
    APSLogErrorAt();
  }

  CFRelease(v5);
  return v15;
}

uint64_t epp_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = epp_copyInner();
  epp_updateDelegateRouting(a1, a2);
  if (!v5)
  {
    return 0;
  }

  if (a2)
  {
    v6 = DerivedStorage + 104;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v7)
  {
    v8 = v7(v5, v6);
    v9 = v8;
    if (v8 == -16723 || v8 == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  APSLogErrorAt();
LABEL_13:
  CFRelease(v5);
  return v9;
}

uint64_t epp_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = epp_copyInner();
  epp_updateDelegateRemoteControl(a1, a2);
  if (!v5)
  {
    return 0;
  }

  if (a2)
  {
    v6 = DerivedStorage + 144;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v8 = v7(v5, v6);
    v9 = v8;
    if (v8 == -16723 || v8 == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  APSLogErrorAt();
LABEL_13:
  CFRelease(v5);
  return v9;
}

uint64_t epp_SetDelegateVolumeAndMute(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = epp_copyInner();
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5[38] = 0;
  v5[39] = 0;
  v5[37] = 0;
  v6 = v5[40];
  if (v6)
  {
    CFRelease(v6);
    v5[40] = 0;
  }

  if (a2)
  {
    *(v5 + 19) = *(a2 + 8);
    if (*a2)
    {
      v5[40] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }
  }

  FigSimpleMutexUnlock();
  if (!v4)
  {
    return 0;
  }

  if (a2)
  {
    v7 = DerivedStorage + 176;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v9 = v8(v4, v7);
    v10 = v9;
    if (v9 == -16723 || v9 == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 4294954514;
  }

  APSLogErrorAt();
LABEL_18:
  CFRelease(v4);
  return v10;
}

uint64_t epp_CreatePlaybackSession(uint64_t a1, uint64_t a2)
{
  v3 = epp_copyInner();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CreatePlaybackSession_cold_1();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CreatePlaybackSession_cold_2();
    return 4294949690;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v4)
  {
    v5 = v4(v3, a2);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v3);
  return v5;
}

uint64_t epp_UpdateFeaturesWithCompletionCallback(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v11 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v11[1] = CFRetain(a1);
  v11[2] = a4;
  v11[3] = a5;
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v12 = *(DerivedStorage + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __epp_UpdateFeaturesWithCompletionCallback_block_invoke;
  v14[3] = &__block_descriptor_64_e5_v8__0l;
  v14[4] = a1;
  v14[5] = v11;
  v14[6] = a2;
  v14[7] = a3;
  dispatch_async(v12, v14);
  return 0;
}

uint64_t epp_toggleInnerEndpointDiscovery(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = epp_copyInner();
  v5 = v4;
  if (a2 && v4)
  {
    updated = 0;
LABEL_17:
    CFRelease(v5);
    return updated;
  }

  if (!*(DerivedStorage + 16))
  {
    epp_toggleInnerEndpointDiscovery_cold_2();
    updated = 4294949690;
    goto LABEL_14;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    updated = 4294954514;
LABEL_10:
    APSLogErrorAt();
    goto LABEL_14;
  }

  v8 = v7(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
  if (v8)
  {
    updated = v8;
    goto LABEL_10;
  }

  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  updated = APEndpointManagerUpdateInternalClientNeedingDiscovery(*(DerivedStorage + 16), cf);
  if (updated)
  {
    epp_toggleInnerEndpointDiscovery_cold_1();
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    goto LABEL_17;
  }

  return updated;
}

void epp_postNotificationAsync(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3)
{
  if (a2)
  {
    CFRetain(a2);
  }

  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __epp_postNotificationAsync_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = cf;
  block[5] = a2;
  block[6] = a3;
  global_queue = dispatch_get_global_queue(25, 0);
  dispatch_async(global_queue, block);
}

void __epp_postNotificationAsync_block_invoke(void *a1)
{
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    __epp_postNotificationAsync_block_invoke_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t epp_updateDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 208) = 0u;
  *(DerivedStorage + 224) = 0u;
  *(DerivedStorage + 240) = 0;
  v4 = *(DerivedStorage + 248);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 248) = 0;
  }

  if (a2)
  {
    *(DerivedStorage + 216) = *(a2 + 8);
    *(DerivedStorage + 232) = *(a2 + 24);
    if (*a2)
    {
      *(DerivedStorage + 248) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t epp_updateDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 256) = 0u;
  *(DerivedStorage + 272) = 0u;
  v4 = *(DerivedStorage + 288);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 288) = 0;
  }

  if (a2)
  {
    *(DerivedStorage + 280) = *(a2 + 24);
    *(DerivedStorage + 264) = *(a2 + 8);
    if (*a2)
    {
      *(DerivedStorage + 288) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t epp_RequestCarUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_RequestCarUI_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_RequestCarUI_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t epp_BorrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_BorrowScreen_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_BorrowScreen_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t epp_UnborrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_UnborrowScreen_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_UnborrowScreen_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t epp_TakeScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_TakeScreen_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_TakeScreen_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t epp_DisableBluetooth(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_DisableBluetooth_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_DisableBluetooth_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t epp_DuckAudio(uint64_t a1, uint64_t a2)
{
  v3 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_DuckAudio_cold_1();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_DuckAudio_cold_2();
    return 4294949690;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  v4 = *(*(CMBaseObjectGetVTable() + 24) + 48);
  if (v4)
  {
    v5 = v4(v3, a2);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v3);
  return v5;
}

uint64_t epp_SetHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_SetHIDInputMode_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_SetHIDInputMode_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 56);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t epp_CopyHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CopyHIDInputMode_cold_1();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CopyHIDInputMode_cold_2();
    return 4294949690;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_5:
  v8 = *(*(CMBaseObjectGetVTable() + 24) + 64);
  if (v8)
  {
    v9 = v8(v7, a2, a3, a4);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v7);
  return v9;
}

uint64_t epp_SendCommand(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = epp_copyInnerExtended();
  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v12 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v12[1] = CFRetain(a1);
  v12[2] = a4;
  v12[3] = a5;
  if (v11)
  {
    CFRetain(a1);
    CFRetain(v11);
    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v13 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __epp_SendCommand_block_invoke;
    block[3] = &__block_descriptor_72_e5_v8__0l;
    block[4] = a1;
    block[5] = v11;
    block[6] = v12;
    block[7] = a2;
    block[8] = a3;
    dispatch_async(v13, block);
    CFRelease(v11);
    return 0;
  }

  else
  {
    epp_SendCommand_cold_1(DerivedStorage, v15);
    return 4294949690;
  }
}

uint64_t epp_CreateRemoteControlSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CreateRemoteControlSession_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CreateRemoteControlSession_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 80);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t epp_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CreateCommChannel_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CreateCommChannel_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 88);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t epp_SendData(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = epp_copyInnerExtended();
  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v12 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v12[1] = CFRetain(a1);
  v12[2] = a4;
  v12[3] = a5;
  if (!a2)
  {
    v16 = epp_SendData_cold_1(v11);
    v14 = 4294950576;
    v17 = v11;
    if (v16)
    {
LABEL_12:
      v18 = *(DerivedStorage + 8);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __epp_SendData_block_invoke_2;
      v19[3] = &__block_descriptor_60_e5_v8__0l;
      v19[4] = v11;
      v19[5] = a2;
      v20 = v14;
      v19[6] = v12;
      dispatch_async(v18, v19);
      if (!v11)
      {
        return v14;
      }

      goto LABEL_6;
    }

LABEL_11:
    CFRetain(v17);
    goto LABEL_12;
  }

  if (!v11)
  {
    v14 = 4294949690;
    v17 = a2;
    goto LABEL_11;
  }

  CFRetain(a1);
  CFRetain(v11);
  CFRetain(a2);
  if (a3)
  {
    CFRetain(a3);
  }

  v13 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __epp_SendData_block_invoke;
  block[3] = &__block_descriptor_72_e5_v8__0l;
  block[4] = a1;
  block[5] = v11;
  block[6] = v12;
  block[7] = a2;
  block[8] = a3;
  dispatch_async(v13, block);
  v14 = 0;
LABEL_6:
  CFRelease(v11);
  return v14;
}

uint64_t epp_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v3 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CloseCommChannel_cold_1();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CloseCommChannel_cold_2();
    return 4294949690;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  v4 = *(*(CMBaseObjectGetVTable() + 24) + 104);
  if (v4)
  {
    v5 = v4(v3, a2);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v3);
  return v5;
}

uint64_t epp_RequestViewArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_RequestViewArea_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_RequestViewArea_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 112);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t epp_CopyCurrentViewArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CopyCurrentViewArea_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CopyCurrentViewArea_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 120);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t epp_AcquireAndCopyResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_AcquireAndCopyResource_cold_1();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_AcquireAndCopyResource_cold_2();
    return 4294949690;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_5:
  v8 = *(*(CMBaseObjectGetVTable() + 24) + 128);
  if (v8)
  {
    v9 = v8(v7, a2, a3, a4);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v7);
  return v9;
}

uint64_t epp_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_RelinquishResource_cold_1();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_RelinquishResource_cold_2();
    return 4294949690;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 136);
  if (v6)
  {
    v7 = v6(v5, a2, a3);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

void epp_CloseAllCommChannels()
{
  v0 = epp_copyInnerExtended();
  if (v0)
  {
    v1 = v0;
    v2 = *(*(CMBaseObjectGetVTable() + 24) + 144);
    if (v2)
    {
      v2(v1);
    }

    CFRelease(v1);
  }
}

CFTypeRef epp_copyInnerExtended()
{
  FigEndpointExtendedGetFigEndpoint();
  v0 = epp_copyInner();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  FigEndpointExtendedGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    return 0;
  }

  return v1;
}

void epp_delegate_handleFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    v12 = *(v8 + 224);
    v9 = *(v8 + 248);
    FigSimpleMutexUnlock();
    if (v12)
    {
      if (v9)
      {
        v10 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v10)
        {
          v11 = v10;
          v12(a4, a2, a3, v10);

          CFRelease(v11);
        }

        else
        {
          epp_delegate_handleFailed_cold_1();
        }
      }

      else
      {

        v12(a4, a2, a3, 0);
      }
    }

    else
    {
      epp_delegate_handleFailed_cold_2();
    }
  }

  else
  {
    epp_delegate_handleFailed_cold_3();
  }
}

void epp_delegate_handleAuthRequired(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, void (*a6)(uint64_t, void, uint64_t, uint64_t), uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  if (!a4)
  {
    epp_delegate_handleAuthRequired_cold_9();
    return;
  }

  if (!a6)
  {
    epp_delegate_handleAuthRequired_cold_8();
    goto LABEL_24;
  }

  v15 = DerivedStorage;
  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_delegate_handleAuthRequired_cold_1();
  }

  FigSimpleMutexLock();
  v16 = *(v15 + 216);
  v17 = *(v15 + 248);
  FigSimpleMutexUnlock();
  if (!v16)
  {
    epp_delegate_handleAuthRequired_cold_7();
    goto LABEL_24;
  }

  if (v17)
  {
    v17 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v17)
    {
      epp_delegate_handleAuthRequired_cold_2();
      goto LABEL_24;
    }
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  FigSimpleMutexLock();
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage() != 2)
  {
    epp_delegate_handleAuthRequired_cold_3();
    v21 = 4294950576;
    goto LABEL_33;
  }

  if (APSGetFBOPropertyInt64())
  {
    epp_delegate_handleAuthRequired_cold_4();
    v21 = 4294950576;
    goto LABEL_18;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
    v21 = 4294954514;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_18;
  }

  v20 = v19(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
  if (v20)
  {
    v21 = v20;
    goto LABEL_17;
  }

  v21 = epp_copySubEndpoint(a4, cf, &v23);
  if (v21)
  {
    epp_delegate_handleAuthRequired_cold_5();
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  FigSimpleMutexUnlock();
  if (!v21)
  {
    if (v23)
    {
LABEL_22:
      v22 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
      *v22 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
      v22[1] = CFRetain(a4);
      v22[2] = a6;
      v22[3] = a7;
      v16(a4, v23, a3, v17, a5, epp_delegate_handleAuthRequiredCallback, v22);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    epp_delegate_handleAuthRequired_cold_6();
    v21 = 4294960587;
    goto LABEL_36;
  }

LABEL_33:
  APSLogErrorAt();
LABEL_36:
  a6(a1, 0, v21, a7);
  if (v17)
  {
LABEL_23:
    CFRelease(v17);
  }

LABEL_24:
  if (v23)
  {
    CFRelease(v23);
  }
}