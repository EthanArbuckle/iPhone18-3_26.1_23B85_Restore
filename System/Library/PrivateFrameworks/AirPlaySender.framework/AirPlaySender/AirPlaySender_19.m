uint64_t endpointAggregate_handleSubEndpointFeatureActivationStateChanged(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (a2)
  {
    result = CFDictionaryContainsKey(*(DerivedStorage + 8), a2);
    if (!result)
    {
      return result;
    }
  }

  else if (!*(DerivedStorage + 458))
  {

    return APSLogErrorAt();
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4()))
  {
    v11 = "+";
    if (!a3)
    {
      v11 = "-";
    }

    v87 = a1;
    v89 = a2;
    v90 = v11;
    v91 = a4;
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
    if (!a3)
    {
      goto LABEL_14;
    }

LABEL_13:
    v12 = *(v9 + 48);
    if (v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a3)
  {
    goto LABEL_13;
  }

LABEL_14:
  v12 = *(v9 + 56);
LABEL_15:
  if (a4 & v12)
  {
    endpointAggregate_fireStreamsChangedNotification(a1, a3, 1);
  }

  endpointAggregate_updateURLPlaybackSupportedState(a1);
  AllAudioFeatures = APEndpointGetAllAudioFeatures(v12);
  result = APEndpointGetAllAudioFeatures(a4);
  v14 = result & AllAudioFeatures;
  if (gLogCategory_APEndpointAggregate <= 30)
  {
    if (gLogCategory_APEndpointAggregate != -1 || (result = _LogCategory_Initialize(), result))
    {
      v17 = v9 + 48;
      v15 = *(v9 + 48);
      v16 = *(v17 + 8);
      APEndpointGetAllAudioFeatures(a4);
      v90 = v16;
      v91 = v15;
      v87 = a1;
      v89 = AllAudioFeatures;
      result = LogPrintF();
    }
  }

  if (v14)
  {
    v18 = MEMORY[0x277CBECE8];
    v19 = MEMORY[0x277CBED28];
    v20 = OUTLINED_FUNCTION_12_2();
    if (!a3)
    {
      endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures(v20, v21, v22, 0);
      v23 = OUTLINED_FUNCTION_12_2();
      endpointAggregate_notifyStreamObservers(v23, v24);
      LODWORD(value) = 0;
      v25 = CMBaseObjectGetDerivedStorage();
      v26 = CFDictionaryCopyKeys();
      Count = CFArrayGetCount(v26);
      if (Count < 1)
      {
        v30 = 0;
      }

      else
      {
        v28 = Count;
        v29 = 0;
        v30 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v26, v29);
          if (!CFDictionaryContainsKey(*(v25 + 136), ValueAtIndex))
          {
            v30 |= APEndpointGetFeatureFromStreamType(ValueAtIndex);
          }

          ++v29;
        }

        while (v28 != v29);
        if (v30)
        {
          endpointAggregate_destroyAggregateStreams(a1, v30);
          v32 = CMBaseObjectGetDerivedStorage();
          cf = 0;
          if (*(v32 + 408) != 3 && (v33 = v32, v34 = MEMORY[0x277CBED28], *(v32 + 80)) && *(v32 + 112))
          {
            Mutable = CFDictionaryCreateMutable(*v18, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v36 = Mutable;
            if (!Mutable || (CFDictionarySetValue(Mutable, @"IsSharedAudioEngine", *v34), APEndpointCreateAudioOptions(v30, *(v33 + 80), v36, 0, &cf)))
            {
              APSLogErrorAt();
            }

            else
            {
              CFDictionaryMergeDictionary();
              if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4()))
              {
                OUTLINED_FUNCTION_2_0();
                LogPrintF();
              }
            }
          }

          else
          {
            APSLogErrorAt();
            v36 = 0;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v36)
          {
            CFRelease(v36);
          }
        }
      }

      if (v26)
      {
        CFRelease(v26);
      }

      endpointAggregate_fireStreamsChangedNotification(a1, 0, v30);
      v84 = OUTLINED_FUNCTION_17_0();
      return endpointAggregate_fireStreamsChangedNotification(v84, v85, v86);
    }

    endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures(v20, v21, v22, 1);
    v37 = CMBaseObjectGetDerivedStorage();
    value = 0;
    cf = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    if (!*(v37 + 112) || (v38 = v37, *(v37 + 40) != 2))
    {
      APSLogErrorAt();
      LOBYTE(v39) = 0;
LABEL_135:
      endpointAggregate_destroyAggregateStreams(a1, v39);
      goto LABEL_109;
    }

    if ((v14 & 2) != 0)
    {
      v39 = 2 * (CFDictionaryContainsKey(*(v37 + 128), *MEMORY[0x277CC1960]) == 0);
    }

    else
    {
      v39 = 0;
    }

    if ((v14 & 8) != 0 && !CFDictionaryContainsKey(*(v38 + 128), *MEMORY[0x277CC1968]))
    {
      v39 |= 8uLL;
    }

    v40 = MEMORY[0x277CC1970];
    if (a2 && (v14 & 0x20) != 0 && ((v41 = *(CMBaseObjectGetDerivedStorage() + 472)) != 0 ? (v42 = v41 == *v19) : (v42 = APSIsMemberOfHTGroup()), v42 && !CFDictionaryContainsKey(*(v38 + 128), *v40)))
    {
      LOBYTE(v39) = v39 | 0x20;
    }

    else if (!v39)
    {
LABEL_109:
      if (value)
      {
        CFRelease(value);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v97)
      {
        CFRelease(v97);
      }

      if (v96)
      {
        CFRelease(v96);
      }

      if (v95)
      {
        CFRelease(v95);
      }

      v82 = OUTLINED_FUNCTION_12_2();
      endpointAggregate_notifyStreamObservers(v82, v83);
      v84 = OUTLINED_FUNCTION_17_0();
      v86 = v14;
      return endpointAggregate_fireStreamsChangedNotification(v84, v85, v86);
    }

    Int64 = CFDictionaryGetInt64();
    v43 = CFDictionaryGetInt64();
    v94 = CFDictionaryGetValue(*(v38 + 112), *MEMORY[0x277CC09D8]);
    v44 = *v18;
    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v46)
    {
      v46(CMBaseObject, *MEMORY[0x277CEA260], v44, &v96);
    }

    endpointAggregate_copyPropertyFromAnySubEndpoint(a1, *MEMORY[0x277CC15A8], v44, &v95);
    CFGetDouble();
    APSVolumeConvertSliderValueToDB();
    if ((v39 & 2) != 0)
    {
      v47 = *MEMORY[0x277CC1960];
      v48 = OUTLINED_FUNCTION_9_2();
      if (endpointAggregate_createAndInitAudioStream(v48, v49, v50, v51, v52, v53, v54, 0, v87, v89, v90, v91))
      {
        goto LABEL_134;
      }

      CFDictionarySetValue(*(v38 + 128), v47, value);
      endpointAggregate_addObserverInternal(a1, value);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_6_2();
      FigNotificationCenterAddWeakListener();
    }

    if ((v39 & 8) == 0)
    {
LABEL_67:
      if ((v39 & 2) != 0 && !v43 && !Int64)
      {
        if (*(v38 + 408) == 2)
        {
          v64 = FigCFEqual();
          v65 = kAPHALAudioDeviceCreationOptionDeviceType_Screen;
          v66 = *(v38 + 424);
          if (!v64)
          {
            v65 = kAPHALAudioDeviceCreationOptionDeviceType_Audio;
          }

          v67 = *v65;
          if (v64)
          {
            v68 = 75;
          }

          else
          {
            v68 = 0;
          }

          v93 = v68;
        }

        else
        {
          v93 = 0;
          v66 = @"AirPlay";
          v67 = @"AggrAudio";
        }

        if (gLogCategory_APEndpointAggregate >= 51)
        {
          v69 = v67 != @"AggrAudio";
        }

        else
        {
          if (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4())
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          v69 = v67 != @"AggrAudio";
          if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4()))
          {
            APSVolumeConvertDBToSliderValue();
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }
        }

        if (APSSettingsIsFeatureEnabled())
        {
          if (FigCFEqual())
          {
            v70 = 0;
          }

          else
          {
            v70 = cf;
          }
        }

        else
        {
          v70 = 0;
        }

        if (*(v38 + 440))
        {
          v71 = *(v38 + 440);
        }

        else
        {
          v71 = a1;
        }

        APEndpointTriggerAudioHALDeviceCreationEx(v71, value, v70, v66, v67, v96, v93, v69, 0);
      }

      if ((v39 & 0x20) == 0 || !*(v38 + 456))
      {
        goto LABEL_108;
      }

      v72 = *MEMORY[0x277CC1970];
      v88 = *MEMORY[0x277CC1970];
      OUTLINED_FUNCTION_6_2();
      if (!endpointAggregate_createAndInitAudioStream(v73, v74, v75, v76, v77, v78, v79, 0, v88, v94, 1, &v97))
      {
        if (Int64)
        {
LABEL_107:
          CFDictionarySetValue(*(v38 + 128), v72, v97);
          endpointAggregate_addObserverInternal(a1, v97);
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_1_9();
          OUTLINED_FUNCTION_6_2();
          FigNotificationCenterAddWeakListener();
LABEL_108:
          endpointAggregate_updateEngagedState();
          goto LABEL_109;
        }

        v80 = CFStringCreateF();
        if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        v81 = *(v38 + 440);
        if (v81)
        {
          APEndpointTriggerAudioHALDeviceCreation(v81, v97, v80, @"LowLatencyAudio", v96, 0, 0, 0);
          if (v80)
          {
            CFRelease(v80);
          }

          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

    v55 = *MEMORY[0x277CC1968];
    v56 = OUTLINED_FUNCTION_9_2();
    if (!endpointAggregate_createAndInitAudioStream(v56, v57, v58, v59, v60, v61, v62, v63, v87, v89, v90, v91))
    {
      CFDictionarySetValue(*(v38 + 128), v55, cf);
      endpointAggregate_addObserverInternal(a1, cf);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_6_2();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_2();
      FigNotificationCenterAddWeakListener();
      endpointAggregate_handleBufferedAudioCapabilitiesChanged();
      goto LABEL_67;
    }

LABEL_134:
    APSLogErrorAt();
    goto LABEL_135;
  }

  return result;
}

uint64_t endpointAggregate_fireStreamsChangedNotification(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a3)
  {
    return 0;
  }

  v7 = DerivedStorage;
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  v8 = CFGetAllocator(a1);
  StreamsChangedNotificationPayload = APEndpointCreateStreamsChangedNotificationPayload(v8, a3, *(v7 + 120), a2, &cf);
  if (StreamsChangedNotificationPayload)
  {
    APSLogErrorAt();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v10 = FigDispatchAsyncPostNotification();
    if (v10)
    {
      v12 = v10;
      APSLogErrorAt();
      StreamsChangedNotificationPayload = v12;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return StreamsChangedNotificationPayload;
}

void endpointAggregate_updateURLPlaybackSupportedState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = *(DerivedStorage + 408);
  if (v3 != 3)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 40) != 2)
    {
      goto LABEL_30;
    }

    v5 = *(DerivedStorage + 48);
    if (v5)
    {
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((*(DerivedStorage + 56) & 4) == 0)
    {
      goto LABEL_13;
    }

    if (v3 == 2 || !v3 && endpointAggregate_getSubEndpointCount(a1, 2) == 1)
    {
      FirstSubEndpointActivatedForFeatures = endpointAggregate_getFirstSubEndpointActivatedForFeatures(a1, 4);
      if (FirstSubEndpointActivatedForFeatures && (CMBaseObject = FigEndpointGetCMBaseObject(), (v8 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
      {
        v8(CMBaseObject, *MEMORY[0x277CC1570], *MEMORY[0x277CBECE8], &cf);
        v9 = cf;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_15;
    }

LABEL_13:
    v9 = 0;
    FirstSubEndpointActivatedForFeatures = 0;
LABEL_15:
    if (*(v4 + 152) == FirstSubEndpointActivatedForFeatures)
    {
      if (FigCFEqual())
      {
        goto LABEL_17;
      }

      v9 = cf;
    }

    v10 = *(v4 + 144);
    *(v4 + 144) = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(v4 + 152);
    *(v4 + 152) = FirstSubEndpointActivatedForFeatures;
    if (FirstSubEndpointActivatedForFeatures)
    {
      CFRetain(FirstSubEndpointActivatedForFeatures);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (!endpointAggregate_fireStreamsChangedNotification(a1, FirstSubEndpointActivatedForFeatures != 0, 4))
    {
      goto LABEL_17;
    }

LABEL_30:
    APSLogErrorAt();
LABEL_17:
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t endpointAggregate_notifyStreamObservers(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    return CFDictionaryApplyBlock();
  }

  return result;
}

void endpointAggregate_updateEngagedState()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 408) == 3)
  {
    return;
  }

  v1 = DerivedStorage;
  v2 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v2) < 1)
  {
    v5 = 0;
LABEL_8:
    v6 = 0;
  }

  else
  {
    v3 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v2, v3);
      v4 = APSGetFBOPropertyInt64();
      v5 = v4 != 0;
      if (v4)
      {
        break;
      }

      if (++v3 >= CFArrayGetCount(v2))
      {
        goto LABEL_8;
      }
    }

    v6 = 1;
  }

  if (*(v1 + 45) != v6)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      if (!v2)
      {
        return;
      }

      goto LABEL_20;
    }

    v8 = Mutable;
    *(v1 + 45) = v6;
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    v9 = MEMORY[0x277CBED10];
    if (v5)
    {
      v9 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(v8, @"IsEngaged", *v9);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v8);
  }

  if (!v2)
  {
    return;
  }

LABEL_20:

  CFRelease(v2);
}

BOOL endpointAggregate_isUpdateUGLRCServerNeeded()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  return *(DerivedStorage + 465) && !*(DerivedStorage + 408) && APSGetFBOPropertyInt64() != 0;
}

uint64_t endpointAggregate_handleSubEndpointStreamsChanged(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  Int64 = CFDictionaryGetInt64();
  v7 = CFDictionaryGetInt64();
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  FigSimpleMutexLock();
  endpointAggregate_handleSubEndpointFeatureActivationStateChanged(a2, a4, Int64 != 0, v7);

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_updateClusterCompositionPropertiesFromSubEndpoint(uint64_t a1, const void *a2, int a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 408) != 2)
  {
    return result;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFHash(a2);
    Int64 = CFNumberCreateInt64();
    CFDictionaryRemoveValue(*(DerivedStorage + 376), Int64);
    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_3();
      LogPrintF();
    }

    if (!Int64)
    {
      goto LABEL_46;
    }

    v25 = Int64;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    cf = 0;
    value = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_25;
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v11 || v11(CMBaseObject, *MEMORY[0x277CC1368], v8, &v36))
    {
      goto LABEL_25;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CC0AD8], v36);
    v12 = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, *MEMORY[0x277CC1450], v8, &v35);
    }

    FigCFDictionarySetValue();
    v14 = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15 && !v15(v14, *MEMORY[0x277CC14F0], v8, &value))
    {
      v16 = *MEMORY[0x277CC0AE0];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC0AE0], value);
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v17 = OUTLINED_FUNCTION_15_0();
        v18(v17);
      }

      FigCFDictionarySetValue();
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v19 = OUTLINED_FUNCTION_15_0();
        v20(v19);
      }

      FigCFDictionarySetValue();
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v21 = OUTLINED_FUNCTION_15_0();
        v22(v21);
      }

      FigCFDictionarySetValue();
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v23 = OUTLINED_FUNCTION_15_0();
        v24(v23);
      }

      FigCFDictionarySetValue();
      v27 = FigEndpointGetCMBaseObject();
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v28)
      {
        v28(v27, *MEMORY[0x277CC1550], v8, &v29);
        if (v29)
        {
          FigCFDictionarySetValue();
          CFDictionarySetValue(Mutable, v16, *MEMORY[0x277CC19B8]);
        }
      }

      CFHash(a2);
      v26 = CFNumberCreateInt64();
      CFDictionarySetValue(*(DerivedStorage + 376), v26, Mutable);
      if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_3();
        LogPrintF();
      }
    }

    else
    {
LABEL_25:
      APSLogErrorAt();
      v26 = 0;
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (value)
    {
      CFRelease(value);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    v25 = v29;
    if (!v29)
    {
      goto LABEL_46;
    }
  }

  CFRelease(v25);
LABEL_46:
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_18();
  CMNotificationCenterGetDefaultLocalCenter();
  return OUTLINED_FUNCTION_18();
}

void endpointAggregate_deactivateSubEndpointCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v9 = v8;
    if (CFArrayGetCount(*(v8 + 32)) >= 1)
    {
      v10 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 32), v10);
        CFRetain(ValueAtIndex);
        CFRetain(a1);
        APSDispatchAsyncFHelper();
        ++v10;
      }

      while (v10 < CFArrayGetCount(*(v9 + 32)));
    }
  }

  if (*(DerivedStorage + 408) != 3)
  {
    endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(*a5);
    endpointAggregate_updateIsVolumeControlSupported();
    endpointAggregate_updateVolumeControlType();
    endpointAggregate_updateIsMuteControlSupported();
    endpointAggregate_updateVideoPlaybackIsActive(*a5);
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  endpointAggregate_scheduleAddOrRemoveSubEndpointCompletionCallback(*a5, a1);
  FigSimpleMutexUnlock();
  CFRelease(*a5);
  free(a5);
}

uint64_t endpointAggregate_CopySubEndpointProperty(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v11 = 0;
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (!endpointAggregate_getSubEndpointWithID(a1, a2, &v11))
  {
    v6 = 4294949689;
    goto LABEL_21;
  }

  FigEndpointGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v4 = OUTLINED_FUNCTION_16();
    v6 = v5(v4);
  }

  else
  {
    v6 = 4294954514;
  }

  if (v11 && v6)
  {
    FigEndpointGetCMBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = 4294954514;
LABEL_20:
      APSLogErrorAt();
      goto LABEL_21;
    }

    v7 = OUTLINED_FUNCTION_16();
    v6 = v8(v7);
  }

  v9 = v6 == -12784 || v6 == -6727;
  if (!v9 && v6)
  {
    goto LABEL_20;
  }

LABEL_21:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t endpointAggregate_SetSubEndpointProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v15 = 0;
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (!endpointAggregate_getSubEndpointWithID(a1, a2, &v15))
  {
    v10 = 4294949689;
    goto LABEL_27;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v9)
  {
    v10 = v9(CMBaseObject, a3, a4);
  }

  else
  {
    v10 = 4294954514;
  }

  if (v15)
  {
    if (!v10 && (CFEqual(a3, *MEMORY[0x277CC15A8]) || CFEqual(a3, *MEMORY[0x277CC15C0]) || CFEqual(a3, @"HALVolumeDB") || CFEqual(a3, *MEMORY[0x277CC13D0]) || CFEqual(a3, @"IsHALMuted")))
    {
      v10 = 0;
      goto LABEL_27;
    }

    v11 = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v12)
    {
      v10 = 4294954514;
LABEL_20:
      APSLogErrorAt();
      goto LABEL_27;
    }

    v10 = v12(v11, a3, a4);
  }

  v13 = v10 == -12784 || v10 == -6727;
  if (!v13 && v10)
  {
    goto LABEL_20;
  }

LABEL_27:
  FigSimpleMutexUnlock();
  return v10;
}

const void *endpointAggregate_getSubEndpointWithID(uint64_t a1, uint64_t a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_11_1();
  if (v6 ^ v7 | v5 && (v4 != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  if (a3)
  {
    *a3 = 0;
  }

  v8 = FigCFDictionaryCopyArrayOfKeys();
  Count = CFArrayGetCount(v8);
  if (Count < 1)
  {
    v32 = 0;
    if (!v8)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v10 = Count;
  v11 = 0;
  v32 = 0;
  v31 = *MEMORY[0x277CC1368];
  v12 = *MEMORY[0x277CBECE8];
  v30 = *MEMORY[0x277CC1550];
  v13 = -1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
    v33 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(CMBaseObject, v31, v12, &v33);
    }

    v17 = FigCFEqual();
    OUTLINED_FUNCTION_11_1();
    if (v6 ^ v7 | v5 && (v18 != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_3();
      LogPrintF();
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (v17)
    {
      break;
    }

    v19 = FigEndpointGetCMBaseObject();
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(v19, v30, v12, &v33);
    }

    v21 = FigCFEqual();
    OUTLINED_FUNCTION_11_1();
    if (v6 ^ v7 | v5 && (v22 != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_3();
      LogPrintF();
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (v21)
    {
      v23 = APSGetFBOPropertyInt64() != 0;
      v24 = v23 | (2 * (APSGetFBOPropertyInt64() != 0));
      v25 = v24 | (4 * (APSGetFBOPropertyInt64() != 0));
      OUTLINED_FUNCTION_11_1();
      if (v6 ^ v7 | v5 && (v26 != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_3();
        LogPrintF();
      }

      if (v25 <= v13)
      {
        if (a3)
        {
          *a3 = ValueAtIndex;
        }
      }

      else
      {
        if (a3)
        {
          *a3 = v32;
        }

        OUTLINED_FUNCTION_11_1();
        if (v6 ^ v7 | v5 && (v27 != -1 || OUTLINED_FUNCTION_10()))
        {
          OUTLINED_FUNCTION_3();
          LogPrintF();
        }

        if (!a3 && v25 == 3)
        {
          break;
        }

        v32 = ValueAtIndex;
        v13 = v25;
      }
    }

    if (v10 == ++v11)
    {
      goto LABEL_51;
    }
  }

  v32 = ValueAtIndex;
LABEL_51:
  if (v8)
  {
LABEL_52:
    CFRelease(v8);
  }

LABEL_53:
  OUTLINED_FUNCTION_11_1();
  if (v6 ^ v7 | v5 && (v28 != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  return v32;
}

void endpointAggregate_clearActivationState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  endpointAggregate_updateURLPlaybackSupportedState(a1);
  *(DerivedStorage + 160) = 0;
  endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(a1);
  *(DerivedStorage + 40) = 0;
  AllAudioFeatures = APEndpointGetAllAudioFeatures(*(DerivedStorage + 48) | *(DerivedStorage + 56));
  endpointAggregate_destroyAggregateStreams(a1, AllAudioFeatures);
  endpointAggregate_unregisterCommChannelsForSubEndpointAndNotifyClientIfNeeded();
  v4 = CMBaseObjectGetDerivedStorage();
  CFArrayRemoveAllValues(*(v4 + 32));
  *(DerivedStorage + 96) = 0;
  *(DerivedStorage + 48) = 0;
  *(DerivedStorage + 56) = 0;
  CFDictionaryRemoveAllValues(*(DerivedStorage + 136));
  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  v6 = *(DerivedStorage + 72);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 72) = 0;
  }

  v7 = *(DerivedStorage + 80);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 80) = 0;
  }

  v8 = *(DerivedStorage + 88);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 88) = 0;
  }

  CFDictionaryRemoveAllValues(*(DerivedStorage + 104));
  v9 = *(DerivedStorage + 112);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 112) = 0;
  }
}

uint64_t endpointAggregate_CloseCommChannel(uint64_t a1, const void *a2)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v4 = endpointAggregate_copySubEndpointExtendedForRelayCommChannel(FigEndpoint, a2);
  if (!v4)
  {
    return 4294950571;
  }

  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 104);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    goto LABEL_7;
  }

  v7 = v6(v5, a2);
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:
  CFRelease(v5);
  return v7;
}

uint64_t endpointAggregate_createInternal_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t endpointAggregate_copyPropertyInternal_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72255;
  if (gLogCategory_APEndpointAggregate <= 30)
  {
    if (gLogCategory_APEndpointAggregate != -1 || (result = OUTLINED_FUNCTION_10(), result))
    {
      OUTLINED_FUNCTION_3();

      return LogPrintF();
    }
  }

  return result;
}

uint64_t endpointAggregate_copyPropertyInternal_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

_DWORD *endpointAggregate_copyPropertyInternal_cold_9(_DWORD *result)
{
  *result = -17606;
  if (gLogCategory_APEndpointAggregate <= 60)
  {
    if (gLogCategory_APEndpointAggregate != -1)
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

uint64_t endpointAggregate_copyPropertyInternal_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16760;
  return result;
}

uint64_t endpointAggregate_isMuted_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72257;
  return result;
}

uint64_t endpointAggregate_isMuted_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16720;
  return result;
}

uint64_t endpointAggregate_copyClusterActivatedCompositionAsArray_cold_3(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -16721;
  return result;
}

uint64_t endpointAggregate_copyClusterActivatedCompositionAsArray_cold_4(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -16721;
  return result;
}

uint64_t endpointAggregate_addEndpointInternal_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15580;
  return result;
}

uint64_t endpointAggregate_addEndpointInternal_cold_7()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_2();
  return APSLogErrorAt();
}

uint64_t endpointAggregate_addObserverInternal_cold_1()
{
  APSLogErrorAt();

  return APSSignalErrorAt();
}

void endpointAggregate_destroyAggregateStreams_cold_1(const __CFArray *a1, CFArrayRef *a2, uint64_t a3, uint64_t a4)
{
  if (CFArrayGetCount(a1) > 0)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v6);
      Value = CFDictionaryGetValue(*(a4 + 128), ValueAtIndex);
      if (Value)
      {
        v9 = Value;
        if (gLogCategory_APEndpointAggregate < 51 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v10)
        {
          v10(v9);
        }

        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (CFArrayGetCount(*(DerivedStorage + 32)) >= 1)
        {
          v12 = 0;
          while (1)
          {
            v13 = CFArrayGetValueAtIndex(*(DerivedStorage + 32), v12);
            if (CFEqual(v9, v13))
            {
              break;
            }

            if (++v12 >= CFArrayGetCount(*(DerivedStorage + 32)))
            {
              goto LABEL_16;
            }
          }

          CFArrayRemoveValueAtIndex(*(DerivedStorage + 32), v12);
        }

LABEL_16:
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_9();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_7_1();
        FigNotificationCenterRemoveWeakListener();
        if (FigCFEqual())
        {
          endpointAggregate_handleBufferedAudioCapabilitiesChanged();
        }

        CFDictionaryRemoveValue(*(a4 + 128), ValueAtIndex);
        APEndpointGetFeatureFromStreamType(ValueAtIndex);
      }

      ++v6;
    }

    while (v6 < CFArrayGetCount(*a2));
  }

  endpointAggregate_updateEngagedState();
}

uint64_t endpointAggregate_activateSubEndpointCallback_cold_1(const void **a1, const void *a2)
{
  v3 = *a1;
  CMBaseObjectGetDerivedStorage();
  endpointAggregate_updateURLPlaybackSupportedState(v3);
  endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(v3);
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7();
  v4 = APSGetFBOPropertyInt64();
  if (v4)
  {
    endpointAggregate_handleSubEndpointFeatureActivationStateChanged(v3, a2, 1, v4);
  }

  endpointAggregate_updateIsVolumeControlSupported();
  endpointAggregate_updateVolumeControlType();
  endpointAggregate_updateIsMuteControlSupported();
  endpointAggregate_updateVideoPlaybackIsActive(v3);

  return endpointAggregate_updateClusterCompositionPropertiesFromSubEndpoint(v3, a2, 0);
}

uint64_t endpointAggregate_handleFailedInternal_cold_2()
{
  APSLogErrorAt();

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_updateFeaturesInternalWithContext_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

void __carAudioStream_setVocoderInfo_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 176))
  {
    return;
  }

  AudioType = APCarPlayAudioFormatInfoGetAudioType(*(v1 + 192));
  if (!AudioType)
  {
    goto LABEL_20;
  }

  v4 = AudioType;
  StreamType = APCarPlayAudioFormatInfoGetStreamType(*(*(a1 + 32) + 192));
  if (StreamType != 100)
  {
    if (StreamType)
    {
      return;
    }

LABEL_20:

    APSLogErrorAt();
    return;
  }

  if (CFEqual(v4, @"telephony"))
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v6)
    {
      v7 = v6;
      v8 = CFGetAllocator(*(a1 + 40));
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v10 = Mutable;
        FigCFDictionarySetInt64();
        FigCFDictionarySetValue();
        if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_10()))
        {
          OUTLINED_FUNCTION_4_1();
        }

        v11 = *(*(CMBaseObjectGetVTable() + 24) + 72);
        if (v11)
        {
          v11(v7, @"updateVocoderInfo", v10, 0, 0);
        }

        CFRelease(v10);
      }

      else
      {
        APSLogErrorAt();
      }

      CFRelease(v7);
    }
  }
}

void carAudioStream_handleOutputControlMessage(const void *a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1634168383)
  {
    v9 = DerivedStorage;
    CFRetain(a1);
    CFRetain(a3);
    CFRetain(a4);
    OUTLINED_FUNCTION_4_7();
    v11[1] = 0x40000000;
    v11[2] = __carAudioStream_handleOutputControlMessage_block_invoke;
    v11[3] = &__block_descriptor_tmp_168;
    v11[4] = v9;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a1;
    dispatch_async(v10, v11);
  }
}

void __carAudioStream_sendMainHighMessage_block_invoke()
{
  OUTLINED_FUNCTION_13_2();
  if (v2)
  {
    carAudioStream_MarkPacket(*(v1 + 192));
    v3 = *(v0 + 40);
    v4 = *(*(v0 + 32) + 464);
    v5 = *(v0 + 56);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v6)
    {
      v6(v4, v5, v3);
    }
  }

  CFRelease(*(v0 + 40));
  v7 = *(v0 + 48);

  CFRelease(v7);
}

void __carAudioStream_handleOutputControlMessage_block_invoke(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  if (*(*(a1 + 32) + 176))
  {
    if (APSTransportMessageGetRetransmitRequest())
    {
      APSLogErrorAt();
    }

    else
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_4_1();
      }

      --HIWORD(v3);
    }
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 56));
  if (v2)
  {
    CFRelease(v2);
  }
}

void __carAudioStream_handleOutputControlMessage_block_invoke_2(uint64_t a1)
{
  v10 = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 176))
  {
    v3 = *(v2 + 456);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v4 || v4(v3, 4, &v10) || APSTransportMessageSetRetransmitResponseFutile() || (v5 = *(*(a1 + 32) + 456), v6 = v10, (v7 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) || v7(v5, 560031598, v6))
    {
      APSLogErrorAt();
    }

    else if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_4_1();
    }
  }

  *(*(a1 + 32) + 536) += *(a1 + 48);
  if (v10 && *(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    v8 = OUTLINED_FUNCTION_18_0();
    v9(v8);
  }

  CFRelease(*(a1 + 40));
}

void __carAudioStream_handleOutputControlMessage_block_invoke_3()
{
  OUTLINED_FUNCTION_13_2();
  if (v2)
  {
    v3 = *(v1 + 456);
    v4 = v0[5];
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v5)
    {
      v5(v3, 1634168352, v4);
    }
  }

  v6 = v0[5];
  ++*(v0[4] + 528);
  CFRelease(v6);
  v7 = v0[6];

  CFRelease(v7);
}

uint64_t __carAudioStream_flush_block_invoke_cold_2(uint64_t a1, uint64_t a2, CMTime *a3)
{
  time = *a3;
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_4_1();
}

uint64_t APSenderSessionShouldEstablishNetworkClockLink(int a1, uint64_t a2)
{
  v8 = 0;
  if (a1 - 1) < 8 && ((0xE1u >> (a1 - 1)))
  {
    v4 = 0;
  }

  else
  {
    if (APSSettingsGetInt64() || !FigCFEqual() || !APSGetFBOPropertyInt64() || !apsession_isClusterSession(a1, a2, 0, &v8 + 1, &v8))
    {
      goto LABEL_13;
    }

    v5 = (HIBYTE(v8) | v8) != 0;
    if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_10()))
    {
      apsession_isTightSyncBuddyConnection(a2);
      OUTLINED_FUNCTION_3();
      LogPrintF();
    }

    if (!v5)
    {
      v4 = 0;
    }

    else
    {
LABEL_13:
      v4 = 1;
    }
  }

  if (gLogCategory_APSenderSessionAirPlay <= 50)
  {
    OUTLINED_FUNCTION_24();
    if (v6 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }

  return v4;
}

BOOL APSenderSessionShouldPerformNetworkClockSETPEERS(int a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  if (a1 - 1) < 8 && ((0xE1u >> (a1 - 1)))
  {
    return 0;
  }

  if (APSIsPortMatchingOverrideEnabled() || APSGetFBOPropertyInt64())
  {
    return 1;
  }

  if (APSGetFBOPropertyInt64())
  {
    return 0;
  }

  isClusterSession = apsession_isClusterSession(a1, a2, &v6, &v7 + 1, &v7);
  result = 0;
  if (isClusterSession && v6 == 1)
  {
    return (HIBYTE(v7) | v7) == 0;
  }

  return result;
}

void apsession_handleTransportSessionDisconnected(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5 && (v9 = CFGetTypeID(a5), v9 == CFDictionaryGetTypeID()))
  {
    if (CFDictionaryContainsKey(a5, *MEMORY[0x277CE4F40]) || *(DerivedStorage + 72) == 5 && CFDictionaryContainsKey(a5, *MEMORY[0x277CE4F38]))
    {
      Int64 = CFDictionaryGetInt64();
    }

    else
    {
      Int64 = -16613;
    }

    if (CFDictionaryContainsKey(a5, *MEMORY[0x277CE4F48]))
    {
      v11 = CFDictionaryGetInt64() == 1702260340;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    Int64 = -16613;
  }

  apsession_recordActivationMessageTiming(a2);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 320) == a4)
  {
    if (*(DerivedStorage + 311))
    {
      v12 = *(DerivedStorage + 309) != 0 && v11;
      if (!*(DerivedStorage + 316))
      {
        if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        if (!v12)
        {
          apsession_invalidateAndClearTransportStreams(a2);
        }

        apsession_dispatchPostFailedNotification(a2);
      }
    }

    else
    {
      *(DerivedStorage + 312) = Int64;
      if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }
    }

    FigSimpleMutexUnlock();
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    CFRetain(a2);
    CFRetain(a4);
    v13 = *(DerivedStorage + 184);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __apsession_handleTransportSessionDisconnected_block_invoke;
    block[3] = &__block_descriptor_tmp_75_0;
    block[4] = a4;
    block[5] = DerivedStorage;
    block[6] = a2;
    dispatch_async(v13, block);
  }

  else
  {
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    FigSimpleMutexUnlock();
  }
}

uint64_t apsession_stopSenderNetworkClockIfNeeded(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (!*(result + 80) || !*(result + 194))
  {
    goto LABEL_21;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(v3 + 217) || *(v3 + 24) != @"PTP")
  {
    goto LABEL_5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 264) || (v6 = DerivedStorage, (TimingPeerIdentifier = apsession_getTimingPeerIdentifier()) == 0))
  {
    APSLogErrorAt();
    goto LABEL_5;
  }

  v8 = TimingPeerIdentifier;
  v9 = *(v6 + 80);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v10 && !v10(v9, a1, v8, 0, 0))
  {
    v4 = gLogCategory_APSenderSessionAirPlay;
    if (gLogCategory_APSenderSessionAirPlay > 30)
    {
      goto LABEL_6;
    }

    if (gLogCategory_APSenderSessionAirPlay == -1 && !OUTLINED_FUNCTION_10())
    {
LABEL_5:
      v4 = gLogCategory_APSenderSessionAirPlay;
LABEL_6:
      if (v4 <= 40 && (v4 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3();
LABEL_17:
    LogPrintF();
    goto LABEL_5;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 90)
  {
    if (gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_18:
  v11 = *(v3 + 80);
  VTable = CMBaseObjectGetVTable();
  v13 = *(VTable + 16);
  result = VTable + 16;
  v14 = *(v13 + 88);
  if (v14)
  {
    result = v14(v11, a1);
  }

  *(v3 + 194) = 0;
LABEL_21:
  *(v3 + 272) = 0;
  return result;
}

void apsession_ensureDisconnected(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  apsession_copyTransportSession(a1, &cf);
  if (*(DerivedStorage + 216))
  {
    v3 = cf;
    if (cf)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v4)
      {
        v4(v3);
      }
    }

    *(DerivedStorage + 216) = 0;
  }

  apsession_recordActivationMessageTiming(a1);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 304))
  {
    v5 = *(DerivedStorage + 305) != 0;
  }

  else
  {
    v5 = 0;
  }

  apsession_invalidateAndClearTransportStreams(a1);
  if (*(DerivedStorage + 320))
  {
    CMBaseObject = FigTransportSessionGetCMBaseObject();
    if (CMBaseObject)
    {
      v7 = CMBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    apsession_setTransportSession(a1, 0);
  }

  FigSimpleMutexUnlock();
  if (v5)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }
}

void apsession_handlePeerListChangedNotification(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  TimingPeerIdentifier = apsession_getTimingPeerIdentifier();
  if (*DerivedStorage)
  {
    OUTLINED_FUNCTION_8_3();
    if (v11 ^ v12 | v10 && (v29 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    goto LABEL_12;
  }

  v5 = TimingPeerIdentifier;
  if (!APSenderSessionShouldPerformNetworkClockSETPEERS(*(DerivedStorage + 72), *(DerivedStorage + 56)) || *(DerivedStorage + 24) != @"PTP")
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v6 = APSGetFBOPropertyInt64();
  v7 = *(DerivedStorage + 80);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8 || v8(v7, a2, v5, v6 != 0, &theArray))
  {
    APSLogErrorAt();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_3();
  if (v11 ^ v12 | v10 && (v9 != -1 || OUTLINED_FUNCTION_4()))
  {
    CFArrayGetCount(theArray);
    if (gLogCategory_APSenderSessionAirPlay == -1)
    {
      _LogCategory_Initialize();
    }

    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  v14 = theArray;
  cf = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  if (!theArray || apsession_isCancelled() || (apsession_copyTransportControlStream(a2, &v34), (v15 = v34) == 0))
  {
    APSLogErrorAt();
LABEL_66:
    v13 = 0;
    v21 = 0;
    goto LABEL_42;
  }

  Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], v14, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    APSLogErrorAt();
    CFRelease(v15);
    goto LABEL_66;
  }

  v17 = Data;
  OUTLINED_FUNCTION_19_1();
  if (FigCreateBlockBufferWithCFDataNoCopy())
  {
    goto LABEL_39;
  }

  v18 = v6 ? 1936027768 : 1936027749;
  v19 = cf;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v20 || v20(v15, v18, v19, &v32) || apsession_isCancelled())
  {
    goto LABEL_39;
  }

  v13 = 0;
  if (!v6)
  {
    v21 = 0;
    goto LABEL_41;
  }

  v21 = 0;
  if (v32)
  {
    OUTLINED_FUNCTION_19_1();
    if (!FigCreateCFDataWithBlockBufferNoCopy())
    {
      OUTLINED_FUNCTION_19_1();
      v26 = CFPropertyListCreateWithData(v22, v23, v24, v25, 0);
      v21 = v26;
      if (!v26 || (v27 = CFGetTypeID(v26), v27 != CFDictionaryGetTypeID()))
      {
        APSLogErrorAt();
        v13 = 0;
        goto LABEL_41;
      }

      v13 = v21;
      goto LABEL_40;
    }

LABEL_39:
    APSLogErrorAt();
    v13 = 0;
LABEL_40:
    v21 = 0;
  }

LABEL_41:
  CFRelease(v15);
  CFRelease(v17);
LABEL_42:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  OUTLINED_FUNCTION_8_3();
  if (v11 ^ v12 | v10 && (v28 != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (v13 && APSIsPortMatchingOverrideEnabled() && APSNetworkClockAddOrUpdatePeerFromSerializablePeerDictionary())
  {
    APSLogErrorAt();
  }

LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

uint64_t apsession_updateSenderSessionMetricsForRTCStats()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  if (!APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx())
  {
    CFDictionarySetInt64();
  }

  if (!APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx())
  {
    CFDictionarySetInt64();
  }

  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  if (APSEventRecorderGetEventTimeRecursive())
  {
    APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  }

  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 168);
  if (result)
  {
    result = CFArrayGetCount(result);
    v2 = result - 1;
    if (result >= 1)
    {
      v3 = result;
      CFArrayGetValueAtIndex(*(DerivedStorage + 168), 0);
      CFArrayGetValueAtIndex(*(DerivedStorage + 168), v2);
      if (APSEventRecorderGetEventTime())
      {
        result = APSEventRecorderGetTimeBetweenEventsInMilliSecond();
        if (!result)
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = APSEventRecorderGetTimeSinceEventInMilliSecond();
        v2 = v3;
        if (!result)
        {
LABEL_16:
          if (v2)
          {
            return CFDictionarySetInt64();
          }

          return result;
        }
      }

      result = CFDictionarySetInt64();
      goto LABEL_16;
    }
  }

  return result;
}

CFMutableArrayRef apsession_copyActiveStreamConnectionIDs()
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    FigCFDictionaryApplyBlock();
  }

  return Mutable;
}

uint64_t apsession_ensureKeyHolderSetUp()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 224))
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = APSGetFBOPropertyInt64();
  v4 = v3;
  if (*(v2 + 114) && !v3)
  {
    if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v12 = 0;
    v6 = 0;
    v8 = 0;
LABEL_24:
    if (cf)
    {
      CFRelease(cf);
    }

    v13 = 0;
    if (v6)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  FigSimpleMutexLock();
  v5 = *(v2 + 416);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v2 + 408);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  v9 = *MEMORY[0x277CBECE8];
  if (!v4)
  {
    v11 = APKeyHolderLegacyCreate(v9, v6, v8, &cf);
    if (!v11)
    {
      if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
      {
        goto LABEL_21;
      }

      goto LABEL_41;
    }

    v12 = v11;
LABEL_48:
    APSLogErrorAt();
    goto LABEL_24;
  }

  v10 = APKeyHolderCoreUtilsCreate(v9, v6, &cf);
  if (v10)
  {
    v12 = v10;
    goto LABEL_48;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
  {
LABEL_21:
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

LABEL_41:
  v12 = 0;
  v13 = cf;
  cf = 0;
  if (v6)
  {
LABEL_27:
    CFRelease(v6);
  }

LABEL_28:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v12)
  {
    APSLogErrorAt();
    if (!v13)
    {
      return v12;
    }

    goto LABEL_36;
  }

  v14 = *(v1 + 224);
  *(v1 + 224) = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
LABEL_36:
    CFRelease(v13);
  }

  return v12;
}

uint64_t apsession_ensureControlStreamSetup(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, void *a5, void *a6)
{
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  if (*(DerivedStorage + 193))
  {
    goto LABEL_36;
  }

  v23 = apsession_requestControlSetupWithResponse(a1, a2, 0, &cf);
  if (v23)
  {
    APSLogErrorAt();
LABEL_36:
    TypedValue = 0;
    goto LABEL_30;
  }

  Int64 = CFDictionaryGetInt64();
  if (!v23)
  {
    *a3 = Int64;
  }

  v23 = 0;
  v14 = CFDictionaryGetInt64();
  if (!v23)
  {
    *a4 = v14;
  }

  v23 = 0;
  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!v23)
  {
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v16 = CFRetain(TypedValue);
    TypedValue = 0;
    *a5 = v16;
  }

  v23 = 0;
  if (*(DerivedStorage + 72) == 5)
  {
    CFArrayGetTypeID();
    v17 = CFDictionaryGetTypedValue();
    if (v23 == -6727)
    {
      v23 = 0;
    }

    else
    {
      if (v23)
      {
        APSLogErrorAt();
        goto LABEL_30;
      }

      if (a6)
      {
        if (v17)
        {
          v17 = CFRetain(v17);
        }

        *a6 = v17;
      }
    }
  }

  v18 = CFDictionaryGetInt64();
  if (!v23)
  {
    v19 = v18;
    FigSimpleMutexLock();
    v20 = MEMORY[0x277CBED28];
    if (!v19)
    {
      v20 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(DerivedStorage + 496), @"uiPreloaded", *v20);
    FigSimpleMutexUnlock();
  }

  v23 = 0;
  *(DerivedStorage + 193) = 1;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (TypedValue)
  {
    CFRelease(TypedValue);
  }

  return v23;
}

uint64_t apsession_ensureLowPowerKeepAliveStreamSetup(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v5 = DerivedStorage;
  FigSimpleMutexLock();
  v6 = *(v5 + 376);
  if (v6)
  {
    v7 = CFRetain(v6);
    FigSimpleMutexUnlock();
    if (v7)
    {
      v8 = 0;
LABEL_29:
      CFRelease(v7);
      return v8;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  cf = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v7 = 0;
    v8 = 4294895476;
    goto LABEL_28;
  }

  v10 = Mutable;
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v11)
  {
    v12 = v11(a1, 1802529910, v10, &cf);
    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v8 = APSSetFBOPropertyInt64();
      if (!v8)
      {
        v7 = cf;
        cf = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = 4294954514;
  }

  APSLogErrorAt();
  v7 = 0;
LABEL_13:
  CFRelease(v10);
  if (cf)
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v14 = CMBaseObject;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v15)
      {
        v15(v14);
      }
    }

    CFRelease(cf);
  }

  if (!v8)
  {
    FigSimpleMutexLock();
    v16 = *(v5 + 376);
    *(v5 + 376) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    FigSimpleMutexUnlock();
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v17)
    {
      v8 = v17(v7);
      if (!v8)
      {
        if (!v7)
        {
          return v8;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v8 = 4294954514;
    }
  }

LABEL_28:
  APSLogErrorAt();
  if (v7)
  {
    goto LABEL_29;
  }

  return v8;
}

uint64_t apsession_ensureUsableLocalNetworkAddresses()
{
  v6 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 560))
  {
    goto LABEL_13;
  }

  if (!*(DerivedStorage + 264))
  {
    APSLogErrorAt();
LABEL_13:
    v4 = 0;
    goto LABEL_7;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v2 = CFStringCopyUTF8CString();
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      UsableInterfaceList = CreateUsableInterfaceList();
      if (!UsableInterfaceList)
      {
        v4 = 0;
        *(DerivedStorage + 560) = Mutable;
LABEL_7:
        Mutable = 0;
        goto LABEL_8;
      }

      v4 = UsableInterfaceList;
    }

    APSLogErrorAt();
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294950575;
  }

LABEL_8:
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v4;
}

uint64_t apsession_determineTransportAvailabilityAndWaitIfNeeded(uint64_t a1, int a2, int a3, _DWORD *a4, int a5, int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    APSLogErrorAt();
LABEL_40:
    v15 = 0;
LABEL_41:
    v20 = 0;
    if (!a6)
    {
      return v15;
    }

    goto LABEL_32;
  }

  v13 = DerivedStorage;
  if (apsession_isCancelled())
  {
    APSLogErrorAt();
    v15 = 0;
    v20 = -71832;
    if (!a6)
    {
      return v15;
    }

    goto LABEL_32;
  }

  if ((a2 & ~a3) != 0)
  {
    goto LABEL_40;
  }

  v22 = a6;
  isTransportTypeAvailable = apsession_isTransportTypeAvailable(a1, a2);
  v15 = isTransportTypeAvailable;
  if (a5 && !isTransportTypeAvailable)
  {
    if (a2 == 2)
    {
      v16 = 10;
    }

    else if (a2 == 4)
    {
      if ((*(v13 + 72) & 0xFFFFFFF7) == 3)
      {
        v16 = 20;
      }

      else
      {
        v16 = 10;
      }
    }

    else
    {
      v16 = 0;
    }

    if (((a2 - 2) & 0xFFFFFFFD) != 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = 500000;
    }

    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
      if (v16)
      {
LABEL_21:
        v18 = 1;
        while (!apsession_isCancelled())
        {
          usleep(v17);
          v15 = apsession_isTransportTypeAvailable(a1, a2);
          if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          if (!v15 && v18++ < v16)
          {
            continue;
          }

          goto LABEL_30;
        }

        APSLogErrorAt();
        v15 = 0;
        v20 = -71832;
LABEL_36:
        a6 = v22;
        if (!v22)
        {
          return v15;
        }

        goto LABEL_32;
      }
    }

    else if (v16)
    {
      goto LABEL_21;
    }

    v15 = 0;
    v20 = 0;
    goto LABEL_36;
  }

LABEL_30:
  a6 = v22;
  if (!v15)
  {
    goto LABEL_41;
  }

  v20 = 0;
  *a4 |= a2;
  if (v22)
  {
LABEL_32:
    *a6 = v20;
  }

  return v15;
}

uint64_t apsession_fetchInfo(const void *a1, int a2, int a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v60 = 0;
  theString1 = 0;
  v58 = 0;
  if (*(DerivedStorage + 72) == 10)
  {
    v32 = 0;
    v43 = 0;
  }

  else
  {
    v9 = DerivedStorage;
    apsession_copyTransportControlStream(a1, &v58);
    v10 = v58;
    if (v58)
    {
      v11 = *MEMORY[0x277CBECE8];
      if (a4 && *(v9 + 72) == 5)
      {
        v12 = OUTLINED_FUNCTION_18_1();
        MutableCopy = CFDictionaryCreateMutableCopy(v12, v13, a4);
      }

      else
      {
        v15 = OUTLINED_FUNCTION_18_1();
        MutableCopy = CFDictionaryCreateMutable(v15, v16, v17, v18);
      }

      v19 = MutableCopy;
      if (MutableCopy)
      {
        if (a2)
        {
          CFArrayEnsureCreatedAndAppend();
        }

        if (a3)
        {
          CFArrayEnsureCreatedAndAppend();
        }

        if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        FigCFDictionarySetValue();
        CFDictionaryGetCount(v19);
        v20 = APTransportStreamSendPlistMessageCreatingPlistReply();
        if (v20)
        {
          v43 = v20;
        }

        else
        {
          if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (cf)
          {
            v21 = CFGetTypeID(cf);
            if (v21 == CFDictionaryGetTypeID())
            {
              Value = CFDictionaryGetValue(cf, @"deviceID");
              CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v9 + 56));
              v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v24)
              {
                v24(CMBaseObject, @"DeviceID", v11, &theString1);
              }

              if (Value && theString1 && CFStringCompare(theString1, @"FF:FF:FF:FF:FF:FF", 1uLL) && CFStringCompare(Value, theString1, 1uLL) && gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              if (a3)
              {
                v25 = CFDictionaryGetValue(cf, @"displayCapabilities");
                OUTLINED_FUNCTION_8_3();
                if (v28 ^ v29 | v27 && (v26 != -1 || OUTLINED_FUNCTION_4()))
                {
                  OUTLINED_FUNCTION_2_0();
                  LogPrintF();
                }

                v30 = *(v9 + 200);
                *(v9 + 200) = v25;
                if (v25)
                {
                  CFRetain(v25);
                }

                if (v30)
                {
                  CFRelease(v30);
                }
              }

              if (*(v9 + 72) == 1)
              {
                InfoResponseWithUGLAddressesUpdatedFromTransportStream = APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(v10, cf, &gLogCategory_APSenderSessionAirPlay);
                v32 = InfoResponseWithUGLAddressesUpdatedFromTransportStream;
                v33 = cf;
                cf = InfoResponseWithUGLAddressesUpdatedFromTransportStream;
                if (InfoResponseWithUGLAddressesUpdatedFromTransportStream)
                {
                  CFRetain(InfoResponseWithUGLAddressesUpdatedFromTransportStream);
                }

                if (v33)
                {
                  CFRelease(v33);
                }
              }

              else
              {
                FigCFDictionaryGetValue();
                v32 = FigCFDictionaryGetValue();
                if (v32)
                {
                  OUTLINED_FUNCTION_8_3();
                  if (v28 ^ v29 | v27 && (v34 != -1 || OUTLINED_FUNCTION_4()))
                  {
                    OUTLINED_FUNCTION_2_0();
                    LogPrintF();
                  }

                  v32 = 0;
                }
              }

              v35 = *(v9 + 56);
              v36 = cf;
              v37 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v37)
              {
                v38 = v37(v35, v36);
                if (!v38)
                {
                  if (CFDictionaryContainsKey(cf, @"initialVolume"))
                  {
                    CFDictionaryGetDouble();
                    v40 = v39;
                    v41 = CFDictionaryGetInt64() != 0;
                    OUTLINED_FUNCTION_8_3();
                    if (v28 ^ v29 | v27 && (v42 != -1 || OUTLINED_FUNCTION_4()))
                    {
                      OUTLINED_FUNCTION_2_0();
                      LogPrintF();
                    }

                    FigSimpleMutexLock();
                    *(v9 + 400) = v40;
                    *(v9 + 404) = v41;
                    FigSimpleMutexUnlock();
                    *(v9 + 195) = 1;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_8_3();
                    if (v28 ^ v29 | v27 && (v44 != -1 || OUTLINED_FUNCTION_4()))
                    {
                      OUTLINED_FUNCTION_2_0();
                      LogPrintF();
                    }
                  }

                  v45 = cf;
                  v62 = 0;
                  v46 = CMBaseObjectGetDerivedStorage();
                  v47 = *(v46 + 232);
                  if (v47 && (APPairingClientCoreUtilsPairedPeerDescriptionHasWoLInfo(v47) || v45 && CFDictionaryContainsKey(v45, @"WoLInfo")))
                  {
                    if (APPairingClientCoreUtilsPairedPeerDescriptionHasWoLInfo(*(v46 + 232)))
                    {
                      goto LABEL_80;
                    }

                    v48 = CFDictionaryGetValue(v45, @"WoLInfo");
                    v61 = 0;
                    APPairingClientCoreUtilsCreatePatchedPairedPeerWithPeerInfo(*(v46 + 232), v48, &v61);
                    v49 = v61;
                    if (v61)
                    {
                      v50 = *(v46 + 232);
                      *(v46 + 232) = v61;
                      CFRetain(v49);
                      if (v50)
                      {
                        CFRelease(v50);
                      }

                      CFRelease(v61);
                    }

                    if (APPairingClientCoreUtilsPairedPeerDescriptionHasWoLInfo(*(v46 + 232)))
                    {
LABEL_80:
                      v51 = *(v46 + 56);
                      v52 = CFGetAllocator(a1);
                      v53 = APEndpointDescriptionGetCMBaseObject(v51);
                      v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v54)
                      {
                        v54(v53, @"TransportDevice", v52, &v62);
                        if (v62)
                        {
                          OUTLINED_FUNCTION_8_3();
                          if (v28 ^ v29 | v27 && (v55 != -1 || OUTLINED_FUNCTION_4()))
                          {
                            OUTLINED_FUNCTION_2_0();
                            LogPrintF();
                          }

                          APTransportDeviceTriggerWoLCachingIfNeeded();
                          if (v62)
                          {
                            CFRelease(v62);
                          }
                        }
                      }
                    }
                  }

                  v43 = 0;
                  goto LABEL_90;
                }

                v43 = v38;
              }

              else
              {
                v43 = 4294954514;
              }

              APSLogErrorAt();
LABEL_90:
              CFRelease(v10);
              CFRelease(v19);
              goto LABEL_91;
            }
          }

          v43 = 4294895475;
        }

        APSLogErrorAt();
        v32 = 0;
        goto LABEL_90;
      }

      APSLogErrorAt();
      CFRelease(v10);
      v32 = 0;
      v43 = 4294895476;
    }

    else
    {
      v43 = 4294895475;
      APSLogErrorAt();
      v32 = 0;
    }
  }

LABEL_91:
  if (v60)
  {
    CFRelease(v60);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (theString1)
  {
    CFRelease(theString1);
  }

  return v43;
}

uint64_t apsession_getTransportsRequiringBroker()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 56));
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v2(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
  if (!cf)
  {
    return 0;
  }

  TransportsRequiringBroker = APTransportDeviceGetTransportsRequiringBroker();
  if (cf)
  {
    CFRelease(cf);
  }

  return TransportsRequiringBroker;
}

void apsession_copyAPPairingGroupInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (APSIsPairingGroupEnabled())
  {
    FigSimpleMutexLock();
    isBrokerAssistedConnection = apsession_isBrokerAssistedConnection();
    FigSimpleMutexUnlock();
    if (isBrokerAssistedConnection)
    {
      CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 56));
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v3)
      {
        v3(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
        if (cf)
        {
          APTransportDeviceCopyBrokeredReceiverInfo();
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }
  }
}

uint64_t apsession_isBrokerAssistedConnection()
{
  result = *(CMBaseObjectGetDerivedStorage() + 328);
  if (result)
  {
    v1 = APSGetFBOPropertyInt64();
    return (apsession_getTransportsRequiringBroker() & v1) != 0;
  }

  return result;
}

uint64_t apsession_ensureStoppedInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    APSLogErrorAt();
    return 4294954511;
  }

  else
  {
    FigSimpleMutexLock();
    CFDictionaryRemoveAllValues(*(DerivedStorage + 576));
    FigSimpleMutexUnlock();
    if (apsession_IsConnected())
    {
      v3 = apsession_sendTeardownWithStreamDescArray(a1, 0);
      if (v3)
      {
        v4 = v3;
        APSLogErrorAt();
        return v4;
      }

      apsession_disconnectControlStream(a1);
      if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    return 0;
  }
}

uint64_t apsession_invalidateTransportStreams_cold_1()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t apsession_invalidateTransportStreams_cold_2()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t apsession_invalidateTransportStreams_cold_3()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t __apsession_copyActiveStreamConnectionIDs_block_invoke_cold_1()
{
  result = APSLogErrorAt();
  if (gLogCategory_APSenderSessionAirPlay <= 30)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1 || (result = OUTLINED_FUNCTION_10(), result))
    {
      OUTLINED_FUNCTION_3();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t apsession_CreateTransportStream_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t apsession_CreateTransportStreamWithID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t apsession_ensureConnectedInternal_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t apsession_broadcastKeysForDiagnosticsDataInternal_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6700;
  return result;
}

void apsession_createPairingClient_cold_2(_DWORD *a1, const void *a2)
{
  APSLogErrorAt();
  *a1 = -71820;
  CFRelease(a2);
}

void apsession_requestControlSetupWithResponse_cold_3(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t apsession_appendControlSetupRequest_cold_3()
{
  if (gLogCategory_APSenderSessionAirPlay <= 90)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1)
    {
      return OUTLINED_FUNCTION_4_0();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t apsession_appendControlSetupRequest_cold_4(CFArrayRef *a1)
{
  CFArrayGetCount(*a1);
  if (gLogCategory_APSenderSessionAirPlay == -1)
  {
    _LogCategory_Initialize();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t apsession_appendControlSetupRequest_cold_6()
{
  FigCFDictionaryGetValue();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t apsession_appendControlSetupRequest_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t apsession_appendControlSetupRequest_cold_9()
{
  dlerror();
  v0 = abort_report_np();
  return apsession_appendControlSetupRequest_cold_10(v0);
}

uint64_t apsession_appendControlSetupRequest_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t apsession_appendControlSetupRequest_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t apsession_eventStreamMessageCallback_cold_1()
{
  if (gLogCategory_APSenderSessionAirPlay <= 30)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1 || (result = OUTLINED_FUNCTION_10(), result))
    {
      OUTLINED_FUNCTION_3();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sharedMemSinkRemote_Suspend()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    APSLogErrorAt();
    return 4294960578;
  }

  v1 = DerivedStorage;
  if (!*(DerivedStorage + 24))
  {
    return 0;
  }

  *DerivedStorage = 0;
  v2 = FigXPCCreateBasicMessage();
  if (v2)
  {
    v5 = v2;
LABEL_12:
    APSLogErrorAt();
    return v5;
  }

  v3 = FigXPCRemoteClientSendSyncMessage();
  if (v3)
  {
    v5 = v3;
    goto LABEL_12;
  }

  v4 = *(v1 + 32);
  if (!v4)
  {
    return 0;
  }

  CFRelease(v4);
  v5 = 0;
  *(v1 + 32) = 0;
  return v5;
}

uint64_t sharedMemSinkRemote_ReadPackets(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, int *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    APSLogErrorAt();
    return 4294960578;
  }

  v15 = DerivedStorage;
  if (!*(DerivedStorage + 24) || !*DerivedStorage)
  {
    APSLogErrorAt();
    return 4294960587;
  }

  if (!a7 || !a8)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  if (*(DerivedStorage + 120))
  {
    DataFromSharedRing = sharedMemSinkRemote_readDataFromSharedRing(a1, DerivedStorage + 124, 4);
    if (DataFromSharedRing)
    {
      return DataFromSharedRing;
    }

    *(v15 + 120) = 0;
  }

  if (*(v15 + 124) > a4)
  {
    APSLogErrorAt();
    return 4294960533;
  }

  if (*(v15 + 88) != 1819304813)
  {
    v23 = sharedMemSinkRemote_readDataFromSharedRing(a1, a3, *(v15 + 124));
    if (!v23)
    {
      v24 = *(v15 + 124);
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 12) = v24;
      v20 = 1;
      goto LABEL_17;
    }

    v19 = v23;
LABEL_31:
    APSLogErrorAt();
    return v19;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  if (!*(v16 + 16))
  {
    APSLogErrorAt();
    v19 = 4294960578;
    goto LABEL_31;
  }

  v17 = v16;
  if (!*(v16 + 24))
  {
    APSLogErrorAt();
    v19 = 4294960587;
    goto LABEL_31;
  }

  if (!APSSharedRingBuffer_IsDataAvailable())
  {
    APSLogErrorAt();
    v19 = 4294960531;
    goto LABEL_31;
  }

  if (((*(v17 + 92) ^ *(v17 + 52)) & 2) != 0)
  {
    DataWithEndiannessConversion = APSSharedRingBuffer_ReadDataWithEndiannessConversion();
  }

  else
  {
    DataWithEndiannessConversion = APSSharedRingBuffer_ReadData();
  }

  v19 = DataWithEndiannessConversion;
  if (DataWithEndiannessConversion)
  {
    APSLogErrorAt();
    goto LABEL_31;
  }

  v20 = *(v15 + 124) / *(v15 + 104);
LABEL_17:
  v19 = 0;
  *a8 = v20;
  *a7 = *(v15 + 124);
  *(v15 + 120) = 1;
  *(v15 + 124) = 0;
  return v19;
}

uint64_t sharedMemSinkRemote_readDataFromSharedRing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 24))
    {
      if (APSSharedRingBuffer_IsDataAvailable())
      {
        Data = APSSharedRingBuffer_ReadData();
        if (Data)
        {
          v6 = Data;
          APSLogErrorAt();
        }

        else if (a3 == a3)
        {
          return 0;
        }

        else
        {
          APSLogErrorAt();
          return 4294960550;
        }
      }

      else
      {
        return 4294960531;
      }
    }

    else
    {
      APSLogErrorAt();
      return 4294960587;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960578;
  }

  return v6;
}

uint64_t __APGetEndpointManagerCarPlay_block_invoke_cold_5(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  return APSLogErrorAt();
}

void manager_asyncRegisterAirPlayHALDriverInternal()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 1))
  {
    v0 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v1 = AudioServerPlugInRegisterRemote();
    if (v1)
    {
      v2 = 60;
    }

    else
    {
      v2 = 50;
    }

    if (v2 >= gLogCategory_APEndpointManager && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!v1)
    {
      if (!v0)
      {
        return;
      }

      goto LABEL_11;
    }

    if (gLogCategory_APEndpointManager <= 60 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    manager_AudioServerPluginInterruptionHandler(v0);
    if (v0)
    {
LABEL_11:
      CFRelease(v0);
    }
  }
}

uint64_t manager_createUGLRCServer()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 400))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v1 = Mutable;
    v2 = APSFeaturesCreateMutable();
    if (v2)
    {
      v3 = v2;
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      v4 = APSFeaturesSetFeature();
      OUTLINED_FUNCTION_24_0(v4, *MEMORY[0x277CE9E90]);
      CFRelease(v3);
      OUTLINED_FUNCTION_24_0(v5, *MEMORY[0x277CE9EB0]);
      v6 = *MEMORY[0x277CBED10];
      CFDictionarySetValue(v1, *MEMORY[0x277CE9ED8], *MEMORY[0x277CBED10]);
      OUTLINED_FUNCTION_24_0(v7, *MEMORY[0x277CE9ED0]);
      CFDictionarySetValue(v1, *MEMORY[0x277CE9EA8], v6);
      OUTLINED_FUNCTION_24_0(v8, *MEMORY[0x277CE9EB8]);
      v9 = AirPlayReceiverServerCreate();
      if (v9)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      APSLogErrorAt();
      v9 = 4294960568;
    }

    CFRelease(v1);
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return v9;
}

void manager_invalidateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1))
  {
    v3 = DerivedStorage;
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    *(v3 + 1) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*(v3 + 320))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(v3 + 328))
    {
      APBrokerManagerInvalidate();
    }

    if (*(v3 + 296))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_12();
      FigNotificationCenterRemoveWeakListener();
    }

    AirPlayDebugIPCDisableForEndpointManager(a1);
    v4 = *(v3 + 56);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(v3 + 56);
      if (v5)
      {
        dispatch_release(v5);
        *(v3 + 56) = 0;
      }
    }

    v6 = *(v3 + 16);
    if (v6 != -1)
    {
      notify_cancel(v6);
      *(v3 + 16) = -1;
    }

    v7 = *(v3 + 24);
    if (v7 != -1)
    {
      notify_cancel(v7);
      *(v3 + 24) = -1;
    }

    v8 = *(v3 + 20);
    if (v8 != -1)
    {
      notify_cancel(v8);
      *(v3 + 20) = -1;
    }

    v9 = *(v3 + 28);
    if (v9 != -1)
    {
      notify_cancel(v9);
      *(v3 + 28) = -1;
    }

    FigSimpleMutexLock();
    CFArrayGetCount(*(v3 + 192));
    CFArrayApplyBlock();
    v10 = *(v3 + 200);
    if (v10)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v11)
      {
        v11(v10);
      }

      v12 = *(v3 + 200);
      if (v12)
      {
        CFRelease(v12);
        *(v3 + 200) = 0;
      }
    }

    v13 = FigCFDictionaryCopyArrayOfValues();
    CFArrayGetCount(v13);
    CFArrayApplyBlock();
    CFDictionaryApplyBlock();
    manager_startOrStopUGLRCServer(a1, 0);
    manager_removeAllEndpointsIfNeeded();
    manager_updateExposedLocalEndpoint(a1, 0);
    FigSimpleMutexUnlock();
    v14 = *(v3 + 312);
    if (v14 && APBrowserControllerInvalidate(v14))
    {
      APSLogErrorAt();
      if (!v13)
      {
        return;
      }

      goto LABEL_33;
    }

    v15 = *(v3 + 352);
    if (v15)
    {
      dispatch_source_cancel(v15);
    }

    if (v13)
    {
LABEL_33:
      CFRelease(v13);
    }
  }
}

void manager_startOrStopUGLRCServer(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 400))
  {
    v4 = DerivedStorage;
    if (a2)
    {
      if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(v4 + 280);
      if (v5)
      {
        CFRelease(v5);
        *(v4 + 280) = 0;
      }

      AirPlayReceiverServerGetDispatchQueue();
      if (OUTLINED_FUNCTION_5_4())
      {

        APSLogErrorAt();
      }

      else
      {
        *(v4 + 280) = AirPlayReceiverServerCopyProperty();
        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
        {
          FigCFDictionaryGetValue();
LABEL_23:
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }
      }
    }

    else
    {
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
      {
        FigCFDictionaryGetValue();
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      AirPlayReceiverServerGetDispatchQueue();
      OUTLINED_FUNCTION_5_4();
      v6 = *(v4 + 280);
      if (v6)
      {
        CFRelease(v6);
        *(v4 + 280) = 0;
      }

      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
      {
        goto LABEL_23;
      }
    }
  }
}

uint64_t manager_handleClusterSubEndpointFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(a5, @"SubEndpoint");
  if (Value)
  {
    v8 = Value;
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    if (manager_updateEndpointClusterMembershipIfNeeded(a2, v8, 1, 0) || (manager_removeEndpointIfNeeded(a2, v8, 0), OUTLINED_FUNCTION_8_4(), !APSGetFBOPropertyInt64()) && manager_updateEndpointClusterMembershipIfNeeded(a2, v8, 0, 0))
    {
      APSLogErrorAt();
    }
  }

  return FigSimpleMutexUnlock();
}

void manager_handleClusterDiscoveryModeCriteriaChanged(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  cf = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 2))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
    }

    APSGetFBOPropertyInt64();
    if (gLogCategory_APEndpointManager <= 50)
    {
      OUTLINED_FUNCTION_22_0();
      if (!v5 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }

    if (APEndpointManagerUpdateInternalClientNeedingDiscovery(a2, cf))
    {
      APSLogErrorAt();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t manager_removeEndpointFromCluster()
{
  OUTLINED_FUNCTION_16_2();
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 2))
  {
    CFDictionaryRemoveValue(*(result + 232), v0);
    result = APSGetFBOPropertyInt64();
    if (!result)
    {
      APEndpointClusterRemoveSubEndpoint(v1, v0);
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_10(DefaultLocalCenter);
      OUTLINED_FUNCTION_6_2();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_6_2();

      return FigNotificationCenterAddWeakListener();
    }
  }

  return result;
}

uint64_t manager_removeShadowEndpointFromUGLWrapper()
{
  OUTLINED_FUNCTION_16_2();
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_2_0();
      result = LogPrintF();
    }
  }

  if (v1 && v0)
  {
    APEndpointUGLWrapperRemoveShadowEndpoint(v0, v1);
    CFDictionaryRemoveValue(*(v3 + 216), v1);
    v4 = OUTLINED_FUNCTION_12_4();

    return manager_removeUGLWrapperEndpointIfEmpty(v4);
  }

  return result;
}

void manager_removeAllEndpointsForDictIfNeeded()
{
  OUTLINED_FUNCTION_3_7();
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFDictionaryCopyArrayOfKeys();
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        manager_removeEndpointForTransportDeviceIfNeeded(v1, ValueAtIndex, v0, 1);
        ++v4;
      }

      while (v4 < CFArrayGetCount(v3));
    }

    CFRelease(v3);
  }
}

const __CFDictionary *manager_AppendEndpointShowInfo(const __CFDictionary *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    CFDictionaryGetValue(result, @"EndpointHash");
    DataBuffer_AppendF();
    CFDictionaryGetValue(v5, @"Name");
    DataBuffer_AppendF();
    OUTLINED_FUNCTION_8_4();
    Int64 = CFDictionaryGetInt64();
    OUTLINED_FUNCTION_8_4();
    if (CFDictionaryGetInt64())
    {
      CFDictionaryGetValue(v5, @"PersistentGroupType");
      CFDictionaryGetValue(v5, @"PersistentGroupUUID");
      OUTLINED_FUNCTION_8_4();
      CFDictionaryGetInt64Ranged();
      Value = CFDictionaryGetValue(v5, @"SubEndpointShowInfoDicts");
      if (Value)
      {
        v8 = Value;
        Count = CFArrayGetCount(Value);
        result = DataBuffer_AppendF();
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
            DataBuffer_AppendF();
            result = manager_AppendEndpointShowInfo(ValueAtIndex, a2, a3);
          }
        }
      }

      else
      {
        return DataBuffer_AppendF();
      }
    }

    else
    {
      if (CFDictionaryGetValue(v5, @"DiscoveryID"))
      {
        DataBuffer_AppendF();
      }

      CFDictionaryGetValue(v5, @"DeviceID");
      DataBuffer_AppendF();
      CFDictionaryGetValue(v5, @"Model");
      DataBuffer_AppendF();
      CFDictionaryGetValue(v5, @"SourceVersion");
      DataBuffer_AppendF();
      CFDictionaryGetValue(v5, @"Hidden");
      OUTLINED_FUNCTION_21_0();
      DataBuffer_AppendF();
      CFDictionaryGetValue(v5, @"AirPlayFeatures");
      APSFeaturesCopyStringRepresentation();
      DataBuffer_AppendF();
      OUTLINED_FUNCTION_8_4();
      CFDictionaryGetInt64();
      DataBuffer_AppendF();
      CFDictionaryGetValue(v5, @"Started");
      DataBuffer_AppendF();
      OUTLINED_FUNCTION_8_4();
      CFDictionaryGetInt64();
      DataBuffer_AppendF();
      CFDictionaryGetValue(v5, @"IsRemoteControlEndpoint");
      DataBuffer_AppendF();
      CFDictionaryGetValue(v5, @"IsClusterLeader");
      DataBuffer_AppendF();
      OUTLINED_FUNCTION_8_4();
      CFDictionaryGetInt64Ranged();
      DataBuffer_AppendF();
      OUTLINED_FUNCTION_8_4();
      CFDictionaryGetInt64Ranged();
      DataBuffer_AppendF();
      if (Int64)
      {
        DataBuffer_AppendF();
      }

      v12 = CFDictionaryGetValue(v5, @"SenderSessionInfo");
      if (v12)
      {
        v13 = CFDictionaryGetValue(v12, @"TransportSessionInfo");
        if (v13)
        {
          if (CFDictionaryGetValue(v13, *MEMORY[0x277CE4FB8]))
          {
            DataBuffer_AppendF();
          }
        }
      }

      result = DataBuffer_AppendF();
      if (a2)
      {
        v14 = CFDictionaryGetValue(v5, @"StreamInfo_Screen");
        manager_AppendEndpointStreamShowInfo(v14);
        v15 = CFDictionaryGetValue(v5, @"StreamInfo_RealTimeAudio");
        manager_AppendEndpointStreamShowInfo(v15);
        v16 = CFDictionaryGetValue(v5, @"StreamInfo_BufferedAudio");
        manager_AppendEndpointStreamShowInfo(v16);
        v17 = CFDictionaryGetValue(v5, @"StreamInfo_LowLatencyAudio");
        return manager_AppendEndpointStreamShowInfo(v17);
      }
    }
  }

  return result;
}

uint64_t manager_AppendEndpointStreamShowInfo(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3_7();
    CFDictionaryGetInt64();
    OUTLINED_FUNCTION_21_0();
    DataBuffer_AppendF();
    CFDictionaryGetInt64();
    OUTLINED_FUNCTION_21_0();
    DataBuffer_AppendF();
    CFDictionaryGetValue(v1, @"Type");
    DataBuffer_AppendF();
    value = CFDictionaryGetValue(v1, @"Subtype");
    if (value)
    {
      DataBuffer_AppendF();
    }

    CFDictionaryGetValue(v1, @"Name");
    DataBuffer_AppendF();
    if (CFDictionaryGetValueIfPresent(v1, @"ScreenInfo", &value))
    {
      v2 = FigCFCopyCompactDescription();
      DataBuffer_AppendF();
      if (v2)
      {
        CFRelease(v2);
      }
    }

    return DataBuffer_AppendF();
  }

  return result;
}

void manager_updatePSGInfoOnEndpoint()
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v1)
  {
    v1(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
    if (cf)
    {
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        v3 = Value;
        if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10()))
        {
          OUTLINED_FUNCTION_3();
          LogPrintF();
        }

        v4 = FigEndpointGetCMBaseObject();
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v5)
        {
          v5(v4, @"PermanentSpeakerGroupingInfo", v3);
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

BOOL manager_exposedLocalEndpointIsPersistentlyConnectedCluster()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 296))
  {
    return 0;
  }

  v1 = DerivedStorage;
  if (FigCFEqual())
  {
LABEL_9:
    v6 = 0;
    goto LABEL_11;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x277CC12C8], *MEMORY[0x277CBECE8], &cf);
    v4 = cf;
  }

  else
  {
    v4 = 0;
  }

  v5 = APEndpointFigEndpointClusterTypeToAPSClusterType(v4);
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      v6 = *(v1 + 396) == 4;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = 1;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void manager_AudioServerPluginInterruptionHandler(const void *a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v5 = dispatch_time(0, 1000000000);
    v6 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __manager_AudioServerPluginInterruptionHandler_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_after(v5, v6, block);
    CFRelease(v3);
  }
}

void __manager_initAndStartDeviceMetricsTimer_block_invoke()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APSRTCReportingAgentCreate())
  {
    APSLogErrorAt();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v2 = Mutable;
      FigSimpleMutexLock();
      v3 = *(DerivedStorage + 264);
      if (v3)
      {
        Count = CFSetGetCount(v3);
        v5 = -6;
        v6 = &dword_22229831C;
        do
        {
          if (!v5)
          {
            break;
          }

          v7 = *v6--;
          ++v5;
        }

        while (v7 > Count);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CFDictionarySetValue(v2, @"sessionType", @"Discovery");
        APSRTCReportingAgentSendEvent();
        if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10()))
        {
          OUTLINED_FUNCTION_3();
          LogPrintF();
        }

        CFSetRemoveAllValues(*(DerivedStorage + 264));
        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(DerivedStorage + 360) = 0;
      }

      FigSimpleMutexUnlock();
      CFRelease(v2);
    }
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t manager_updateLocalInfoDict(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (gLogCategory_APEndpointManager <= 30)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_10(), result))
    {
      OUTLINED_FUNCTION_3();
      result = LogPrintF();
    }
  }

  if (a2 && *(v4 + 296))
  {
    FigCFDictionaryGetValue();
    if (FigCFDictionaryGetValue())
    {
      if (gLogCategory_APEndpointManager <= 50)
      {
        OUTLINED_FUNCTION_22_0();
        if (!v5 || _LogCategory_Initialize())
        {
          LogPrintF();
        }
      }
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 8);
    result = VTable + 8;
    v9 = *(v8 + 56);
    if (v9)
    {

      return v9(CMBaseObject, @"EndpointInfo", a2);
    }
  }

  return result;
}

uint64_t manager_create_cold_3()
{
  APSIsProximitySenderEnabled();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t manager_create_cold_7()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void manager_create_cold_12()
{
  if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_0();
  }
}

uint64_t manager_create_cold_20()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void manager_create_cold_21(CFTypeRef *a1, uint64_t a2, uint64_t a3)
{
  APSLogErrorAt();
  v5 = *(a3 + 352);
  if (v5)
  {
    dispatch_source_cancel(*(a3 + 352));
    dispatch_release(v5);
    *(a3 + 352) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }
}

uint64_t manager_create_cold_34()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t manager_handleDevicePresenceChanged_cold_1()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t manager_handleBrowserAddOrUpdateEvent_cold_6()
{
  APTransportDeviceGetDiscoveryID();
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t manager_handleBrowserAddOrUpdateEvent_cold_8()
{
  if (gLogCategory_APEndpointManager <= 30)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_10(), result))
    {
      OUTLINED_FUNCTION_3();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t manager_handleDiscoveryBrokerRequest_cold_3()
{
  OUTLINED_FUNCTION_16_2();
  if (v0)
  {
    IsAppleInternalBuild();
  }

  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t manager_handleDiscoveryBrokerRequest_cold_5()
{
  OUTLINED_FUNCTION_3_7();
  if (v0)
  {
    IsAppleInternalBuild();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t manager_introspector_listEndpoints_cold_2()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_listEndpoints_cold_3()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_copyProperty_cold_2()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_setProperty_cold_1()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_copySubEndpointProperty_cold_1()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_setSubEndpointProperty_cold_1()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_sendCommand_cold_1()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_activateEndpoint_cold_1()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_deactivateEndpoint_cold_1()
{
  FPrintF();
  FPrintF();

  return manager_introspector_printRWUsage();
}

uint64_t manager_introspector_deactivateEndpoint_cold_2()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_setDiscoveryMode_cold_1()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_getGroupID_cold_1()
{
  APSLogErrorAt();

  return FPrintF();
}

uint64_t manager_introspector_sendUGLreceiverCommand_cold_1()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  FPrintF();

  return FigSimpleMutexUnlock();
}

uint64_t manager_removeCluster_cold_1(uint64_t a1, const void **a2)
{
  APEndpointFigEndpointClusterTypeToAPSClusterType(*a2);
  APSClusterTypeToDescriptionString();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t manager_removeUGLWrapperEndpointIfEmpty_cold_1()
{
  if (gLogCategory_APEndpointManager > 50)
  {
    return 1;
  }

  if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_4(), result))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t manager_copyPropertyInternal_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16711;
  return result;
}

uint64_t manager_copyPropertyInternal_cold_5(uint64_t a1, uint64_t *a2, int *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 256) && (v6 = result, result = manager_isEndpointLocalAndSuppressed(), !result) && (result = CFRetain(*(v6 + 256))) != 0)
  {
    v7 = 0;
    *a2 = result;
  }

  else
  {
    v7 = -16713;
  }

  *a3 = v7;
  return result;
}

void manager_copyEndpoints_cold_2(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t __manager_copyShowInfo_block_invoke_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*(a1 + 32) + 8) + 24) = -6728;
  return result;
}

uint64_t manager_SetDiscoveryMode_cold_2(uint64_t result)
{
  v1 = result;
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      OUTLINED_FUNCTION_2_0();
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

uint64_t manager_handleShadowEndpointEvent_cold_2()
{
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_2_0();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t manager_handleShadowEndpointEvent_cold_3(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  return APSLogErrorAt();
}

void manager_handleShadowEndpointEvent_cold_4()
{
  if (gLogCategory_APEndpointManager <= 50)
  {
    OUTLINED_FUNCTION_3_7();
    if (v0 != -1 || OUTLINED_FUNCTION_4())
    {
      APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }
  }
}

uint64_t manager_handleClusterChangeDeactivationFinish_cold_1(int a1)
{
  if (a1 != -1 || (result = OUTLINED_FUNCTION_4(), result))
  {
    OUTLINED_FUNCTION_2_0();
    return LogPrintF();
  }

  return result;
}

uint64_t __manager_registerForNotifications_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void manager_updateAllowedDevices_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t __manager_handleDiscoveryBrokerRequest_block_invoke_cold_2()
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointManager <= 90)
  {
    if (gLogCategory_APEndpointManager != -1)
    {
      return OUTLINED_FUNCTION_4_0();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t __manager_handleDiscoveryBrokerRequest_block_invoke_2_cold_2()
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointManager <= 90)
  {
    if (gLogCategory_APEndpointManager != -1)
    {
      return OUTLINED_FUNCTION_4_0();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t airPlayDebugIPC_handleEvent(const __CFDictionary *a1, CFMutableDictionaryRef *a2)
{
  v2 = 4294895275;
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  v76 = 0;
  v77 = 0;
  cf = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  if (!_MergedGlobals_4)
  {
    OUTLINED_FUNCTION_7_4();
    APSLogErrorAt();
LABEL_79:
    v2 = APSSignalErrorAt();
    goto LABEL_55;
  }

  DataBuffer_Init();
  Value = CFDictionaryGetValue(a1, @"command");
  if (!Value)
  {
    goto LABEL_55;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFStringGetTypeID())
  {
    goto LABEL_110;
  }

  if (CFEqual(v6, @"logging"))
  {
    v8 = CFDictionaryGetValue(a1, @"value");
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = CFGetTypeID(v8);
    if (v9 == CFStringGetTypeID())
    {
      v10 = LogControlCF();
      if (v10)
      {
        v2 = v10;
        goto LABEL_120;
      }

LABEL_8:
      v11 = LogShow();
      if (v11)
      {
        v2 = v11;
        goto LABEL_120;
      }

      v12 = OUTLINED_FUNCTION_6_5();
      if (v12)
      {
        v2 = v12;
LABEL_120:
        APSLogErrorAt();
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    goto LABEL_110;
  }

  if (CFEqual(v6, @"show"))
  {
    v68 = v6;
    v69 = a2;
    Count = CFArrayGetCount(_MergedGlobals_4);
    if (Count >= 1)
    {
      v14 = Count;
      v15 = 0;
      v16 = *MEMORY[0x277CBECE8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(_MergedGlobals_4, v15);
        FigCFDictionaryGetValue();
        DataBuffer_AppendF();
        DataBuffer_AppendF();
        DataBuffer_AppendF();
        theDict[0] = 0;
        if (ValueAtIndex && (v18 = CFGetTypeID(ValueAtIndex), v18 == FigEndpointManagerGetTypeID()))
        {
          CMBaseObject = FigEndpointManagerGetCMBaseObject();
          v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v20 && !v20(CMBaseObject, @"ShowInfo", v16, theDict) && CFDictionaryGetValue(theDict[0], @"DetailedDescription"))
          {
            DataBuffer_AppendF();
          }

          else
          {
            APSLogErrorAt();
          }
        }

        else
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_3_10();
          APSSignalErrorAt();
        }

        if (theDict[0])
        {
          CFRelease(theDict[0]);
        }

        DataBuffer_AppendF();
        ++v15;
      }

      while (v14 != v15);
    }

    DataBuffer_AppendF();
    v21 = OUTLINED_FUNCTION_4_9();
    if (v21)
    {
      v2 = v21;
      goto LABEL_120;
    }

    v22 = OUTLINED_FUNCTION_6_5();
    v6 = v68;
    a2 = v69;
    if (v22)
    {
      v2 = v22;
      goto LABEL_120;
    }

    goto LABEL_51;
  }

  if (CFEqual(v6, @"hierarchy"))
  {
    v70 = a2;
    v23 = CFArrayGetCount(_MergedGlobals_4);
    if (v23 >= 1)
    {
      v24 = v23;
      v25 = 0;
      v26 = *MEMORY[0x277CBECE8];
      do
      {
        v27 = CFArrayGetValueAtIndex(_MergedGlobals_4, v25);
        v28 = v80;
        theDict[0] = 0;
        if (v27 && (v29 = CFGetTypeID(v27), v29 == FigEndpointManagerGetTypeID()))
        {
          v30 = FigEndpointManagerGetCMBaseObject();
          v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v31 || v31(v30, @"HierarchyDump", v26, theDict))
          {
            APSLogErrorAt();
            v32 = 0;
          }

          else
          {
            DataBuffer_AppendF();
            v32 = 1;
          }
        }

        else
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_3_10();
          v32 = APSSignalErrorAt() == 0;
        }

        if (theDict[0])
        {
          CFRelease(theDict[0]);
        }

        if (v28 < v80 && v32)
        {
          DataBuffer_AppendF();
        }

        ++v25;
      }

      while (v24 != v25);
    }

    v34 = OUTLINED_FUNCTION_4_9();
    if (v34)
    {
      v2 = v34;
      goto LABEL_120;
    }

    v35 = OUTLINED_FUNCTION_6_5();
    a2 = v70;
    if (v35)
    {
      v2 = v35;
      goto LABEL_120;
    }

    goto LABEL_51;
  }

  if (CFEqual(v6, @"activate"))
  {
    v38 = a2;
    v39 = CFDictionaryGetValue(a1, @"value");
    Int64 = CFDictionaryGetInt64();
    if (!v39)
    {
LABEL_110:
      OUTLINED_FUNCTION_7_4();
LABEL_111:
      APSLogErrorAt();
      OUTLINED_FUNCTION_3_10();
      goto LABEL_79;
    }

    v41 = Int64;
    v42 = CFArrayGetCount(_MergedGlobals_4);
    if (v42 >= 1)
    {
      v43 = v42;
      v44 = 0;
      while (1)
      {
        v66 = CFArrayGetValueAtIndex(_MergedGlobals_4, v44);
        DataBuffer_AppendF();
        v45 = airPlayDebugIPC_copyEndpointWithID(v66, v39, &cf);
        if (v45)
        {
          v2 = v45;
          goto LABEL_120;
        }

        if (cf)
        {
          break;
        }

        if (v43 == ++v44)
        {
          goto LABEL_77;
        }
      }

      DataBuffer_AppendF();
      EndpointActivationDictionary = airPlayDebugIPC_createEndpointActivationDictionary(&v73);
      if (EndpointActivationDictionary)
      {
        v2 = EndpointActivationDictionary;
      }

      else
      {
        if (!v41)
        {
          DataBuffer_AppendF();
          goto LABEL_78;
        }

        a2 = v38;
        v53 = v73;
        v54 = FigEndpointActivateSync();
        if (v54)
        {
          v2 = v54;
        }

        else
        {
          if (v53)
          {
            CFRelease(v53);
            v73 = 0;
          }

          DataBuffer_AppendF();
          v55 = OUTLINED_FUNCTION_4_9();
          if (v55)
          {
            v2 = v55;
          }

          else
          {
            OUTLINED_FUNCTION_1_13();
            v56 = OUTLINED_FUNCTION_6_5();
            if (!v56)
            {
              goto LABEL_51;
            }

            v2 = v56;
          }
        }
      }

      goto LABEL_120;
    }

LABEL_77:
    DataBuffer_AppendF();
LABEL_78:
    OUTLINED_FUNCTION_3_10();
    goto LABEL_79;
  }

  if (CFEqual(v6, @"deactivate"))
  {
    v46 = CFDictionaryGetValue(a1, @"value");
    if (!v46)
    {
      goto LABEL_111;
    }

    v47 = v46;
    v48 = CFArrayGetCount(_MergedGlobals_4);
    if (v48 >= 1)
    {
      v49 = v48;
      v50 = 0;
      while (1)
      {
        v67 = CFArrayGetValueAtIndex(_MergedGlobals_4, v50);
        DataBuffer_AppendF();
        v51 = airPlayDebugIPC_copyEndpointWithID(v67, v47, &cf);
        if (v51)
        {
          v2 = v51;
          goto LABEL_120;
        }

        if (cf)
        {
          break;
        }

        if (v49 == ++v50)
        {
          goto LABEL_77;
        }
      }

      DataBuffer_AppendF();
      v59 = FigEndpointDeactivate();
      if (v59)
      {
        v2 = v59;
      }

      else
      {
        DataBuffer_AppendF();
        v60 = OUTLINED_FUNCTION_4_9();
        if (v60)
        {
          v2 = v60;
        }

        else
        {
          OUTLINED_FUNCTION_1_13();
          v61 = OUTLINED_FUNCTION_6_5();
          if (!v61)
          {
            goto LABEL_51;
          }

          v2 = v61;
        }
      }

      goto LABEL_120;
    }

    goto LABEL_77;
  }

  if (CFEqual(v6, @"disable"))
  {
    v57 = CFDictionaryGetValue(a1, *MEMORY[0x277CC0C50]);
    if (v57)
    {
      v58 = 0;
LABEL_99:
      airPlayDebugIPC_overrideEndpointManagerEnabled(v57, v58);
      goto LABEL_51;
    }

    goto LABEL_51;
  }

  if (CFEqual(v6, @"enable"))
  {
    v57 = CFDictionaryGetValue(a1, *MEMORY[0x277CC0C50]);
    if (v57)
    {
      v58 = 1;
      goto LABEL_99;
    }

LABEL_51:
    if (v75)
    {
      CFDictionarySetValue(v75, @"responseType", v6);
      v36 = v75;
    }

    else
    {
      v36 = 0;
    }

    v2 = 0;
    *a2 = v36;
    v75 = 0;
    goto LABEL_55;
  }

  if (CFEqual(v6, @"stats"))
  {
    v62 = CFDictionaryGetValue(a1, @"value");
    v63 = CFDictionaryGetValue(a1, @"filePath");
    v64 = airPlayDebugIPC_showStats(v62, v63);
    if (v64)
    {
      v2 = v64;
      goto LABEL_120;
    }

    v65 = OUTLINED_FUNCTION_6_5();
    if (v65)
    {
      v2 = v65;
      goto LABEL_120;
    }

    goto LABEL_51;
  }

  v2 = 4294895272;
  if (gLogCategory_AirPlayDebugIPCUtilities <= 50 && (gLogCategory_AirPlayDebugIPCUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_55:
  DataBuffer_Free();
  if (v75)
  {
    CFRelease(v75);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  free(v72);
  return v2;
}

uint64_t AirPlayDebugIPCEnableForEndpointManager_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCEnableForEndpointManager_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCEnableForEndpointManager_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCEnableForEndpointManager_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_10();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCDisableForEndpointManager_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_10();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCDisableForEndpointManager_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCDisableForEndpointManager_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCDisableForEndpointManager_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_10();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t airPlayDebugIPC_createEndpointActivationDictionary_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t APMessageRingGetMessageAtSequenceNumber(void *a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  FigSimpleMutexLock();
  v8 = *(a1[5] + 8 * (a2 % a1[4]));
  if (!v8)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_12;
  }

  AudioDataSequenceNumber = APSTransportMessageGetAudioDataSequenceNumber();
  if (AudioDataSequenceNumber)
  {
    v10 = AudioDataSequenceNumber;
    APSLogErrorAt();
  }

  else
  {
    if (!a2)
    {
      if (a3)
      {
        v10 = 0;
        v11 = a1[9] + 24 * (a2 % a1[4]);
        v12 = *v11;
        *(a3 + 16) = *(v11 + 16);
        *a3 = v12;
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    if (gLogCategory_APMessageRing <= 30 && (gLogCategory_APMessageRing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = 0;
    v8 = 0;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  if (a4)
  {
    *a4 = v10;
  }

  return v8;
}

uint64_t APMessageRingFlush(uint64_t a1, _WORD *a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (gLogCategory_APMessageRing <= 50 && (gLogCategory_APMessageRing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(a1 + 26);
    *(a1 + 24) = v4;
    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
      v4 = *(a1 + 26);
    }

    *a2 = v4;
    FigSimpleMutexUnlock();
  }

  return 0;
}

_BYTE *spmanager_invalidateInternal(void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v3 = result;
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    AirPlayDebugIPCDisableForEndpointManager(a1);
    v4 = *(v3 + 4);
    if (v4 != -1)
    {
      notify_cancel(v4);
      *(v3 + 4) = -1;
    }

    FigSimpleMutexLock();
    v5 = *(v3 + 12);
    if (v5)
    {
      CFRelease(v5);
    }

    *(v3 + 12) = CFSetCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF158]);
    spmanager_checkHubbedDevices(a1, 0);
    FigSimpleMutexUnlock();
    *v3 = 1;
    SPHubbedDevicesProviderRemoveListener(*(v3 + 13), a1);
    CMBaseObject = SPHubbedDevicesProviderGetCMBaseObject(*(v3 + 13));
    if (CMBaseObject)
    {
      v7 = CMBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    result = *(v3 + 19);
    if (result)
    {
      v9 = APBrowserGetCMBaseObject();
      if (!v9 || (v10 = v9, (v11 = *(*(CMBaseObjectGetVTable() + 8) + 24)) == 0) || (result = v11(v10), result))
      {
        result = APSLogErrorAt();
      }
    }
  }

  if (gLogCategory_SPEndpointManager <= 50)
  {
    if (gLogCategory_SPEndpointManager != -1)
    {
      return OUTLINED_FUNCTION_2();
    }

    result = OUTLINED_FUNCTION_4();
    if (result)
    {
      return OUTLINED_FUNCTION_2();
    }
  }

  return result;
}

uint64_t spmanager_removeEndpointForTransportDeviceIfNeeded(uint64_t a1, const void *a2, const __CFDictionary *a3, int a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    result = APSLogErrorAt();
    goto LABEL_16;
  }

  v11 = DerivedStorage;
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (a4 && !CFSetContainsValue(*(v11 + 56), a2))
  {
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || OUTLINED_FUNCTION_4()))
    {
      APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_2();
    }

    CFSetAddValue(*(v11 + 56), a2);
  }

  result = CFDictionaryGetValue(a3, a2);
  if (!result || (result = APSGetFBOPropertyInt64()) != 0 || (result = CFSetContainsValue(*(v11 + 56), a2), !result))
  {
LABEL_16:
    v13 = 0;
    if (!a5)
    {
      return result;
    }

    goto LABEL_17;
  }

  result = spmanager_removeEndpointForTransportDevice(a1, a3, a2);
  v13 = 1;
  if (a5)
  {
LABEL_17:
    *a5 = v13;
  }

  return result;
}

const void *spmanager_removeEndpointForTransportDevice(uint64_t a1, const __CFDictionary *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetValue(a2, a3);
  if (result)
  {
    v7 = result;
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || OUTLINED_FUNCTION_4()))
    {
      APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_2();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v8)
    {
      v8(v7);
    }

    CFDictionaryRemoveValue(a2, a3);

    return spmanager_checkHubbedDevices(a1, 0);
  }

  return result;
}

const __CFDictionary *spmanager_AppendEndpointShowInfo(const __CFDictionary *result, int a2)
{
  if (result)
  {
    v3 = result;
    CFDictionaryGetValue(result, @"EndpointHash");
    DataBuffer_AppendF();
    CFDictionaryGetValue(v3, @"Name");
    DataBuffer_AppendF();
    if (CFDictionaryGetValue(v3, @"DiscoveryID"))
    {
      DataBuffer_AppendF();
    }

    CFDictionaryGetValue(v3, @"DeviceID");
    DataBuffer_AppendF();
    CFDictionaryGetValue(v3, @"Model");
    DataBuffer_AppendF();
    CFDictionaryGetValue(v3, @"SourceVersion");
    DataBuffer_AppendF();
    CFDictionaryGetValue(v3, @"AirPlayFeatures");
    APSFeaturesCopyStringRepresentation();
    DataBuffer_AppendF();
    CFDictionaryGetInt64();
    DataBuffer_AppendF();
    CFDictionaryGetInt64();
    DataBuffer_AppendF();
    Value = CFDictionaryGetValue(v3, @"SenderSessionInfo");
    if (Value)
    {
      v5 = CFDictionaryGetValue(Value, @"TransportSessionInfo");
      if (v5)
      {
        if (CFDictionaryGetValue(v5, *MEMORY[0x277CE4FB8]))
        {
          DataBuffer_AppendF();
        }
      }
    }

    result = DataBuffer_AppendF();
    if (a2)
    {
      result = CFDictionaryGetValue(v3, @"StreamInfo_BufferedAudio");
      if (result)
      {
        v6 = result;
        CFDictionaryGetInt64();
        DataBuffer_AppendF();
        CFDictionaryGetInt64();
        DataBuffer_AppendF();
        CFDictionaryGetValue(v6, @"Type");
        DataBuffer_AppendF();
        if (CFDictionaryGetValue(v6, @"Subtype"))
        {
          DataBuffer_AppendF();
        }

        CFDictionaryGetValue(v6, @"Name");
        DataBuffer_AppendF();
        return DataBuffer_AppendF();
      }
    }
  }

  return result;
}

BOOL spmanager_deviceIsAllowlisted(uint64_t a1, _BOOL8 a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  cf = 0;
  if (!a2)
  {
    APSLogErrorAt();
    goto LABEL_24;
  }

  v4 = DerivedStorage;
  if (!*(DerivedStorage + 40))
  {
    a2 = 1;
    goto LABEL_24;
  }

  v5 = *MEMORY[0x277CBECE8];
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(a2);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, @"DeviceID", v5, &cf);
  }

  v8 = APEndpointDescriptionGetCMBaseObject(a2);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, @"Name", v5, &v20);
  }

  v10 = OUTLINED_FUNCTION_4_10();
  v11 = *(v4 + 40);
  if (!v11 || !v10)
  {
    goto LABEL_22;
  }

  v12 = CFGetTypeID(v11);
  if (v12 != CFArrayGetTypeID())
  {
    a2 = v10 == OUTLINED_FUNCTION_4_10();
    goto LABEL_24;
  }

  Count = CFArrayGetCount(*(v4 + 40));
  v14 = Count - 1;
  if (Count >= 1)
  {
    v15 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 40), v15);
      v17 = OUTLINED_FUNCTION_4_10();
      if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        CFGetTypeID(ValueAtIndex);
        CFGetTypeID(cf);
        OUTLINED_FUNCTION_3();
        LogPrintF();
      }

      v18 = v17 == v10;
      a2 = v17 == v10;
      v18 = v18 || v14 == v15++;
    }

    while (!v18);
  }

  else
  {
LABEL_22:
    a2 = 0;
  }

LABEL_24:
  if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return a2;
}

CFStringRef spmanager_browserEventHandler_cold_14(CFAllocatorRef alloc, CFStringRef *a2)
{
  if (gLogCategory_SPEndpointManager <= 90 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = CFStringCreateWithFormat(alloc, 0, @"%@ ('%@')", 0, 0);
  *a2 = result;
  return result;
}

void spmanager_handlePreferencesChanged_cold_2(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t spmanager_removeEndpointIfNeeded_cold_1(void *a1)
{
  if (*a1)
  {
    APTransportDeviceGetDiscoveryID();
  }

  return OUTLINED_FUNCTION_2();
}

uint64_t spmanager_setDiscoveryMode_cold_1()
{
  APBrowserGetModeString();
  APBrowserGetModeString();
  return OUTLINED_FUNCTION_2();
}

CFIndex spmanager_setDiscoveryMode_cold_3(CFArrayRef theArray, uint64_t a2, const __CFDictionary *a3)
{
  v6 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    spmanager_removeEndpointForTransportDeviceIfNeeded(a2, ValueAtIndex, a3, 1, 0);
    ++v6;
    result = CFArrayGetCount(theArray);
  }

  while (v6 < result);
  return result;
}

void screenstreamudp_handleResumed(const void *a1, uint64_t a2, int a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    screenstreamudp_setResumedAndNotifyObservers(a1, 1);
  }

  v6 = *a2;
  v7 = *(a2 + 16);
  screenstreamudp_dispatchCallback(a1, &v6, a3);
}

const __CFDictionary *screenstreamudp_getDisplayHDRMode(uint64_t a1)
{
  if (APSHasHDRSenderSupport())
  {
    result = *(a1 + 208);
    if (result)
    {
      result = CFDictionaryGetValue(result, *MEMORY[0x277CD6540]);
    }
  }

  else
  {
    result = 0;
  }

  if (!result)
  {
    return *MEMORY[0x277CD6538];
  }

  return result;
}

void screenstreamudp_dissociateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 25))
    {
      if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      if (*(v3 + 26))
      {
        v4 = *(v3 + 40);
        memset(v7, 0, sizeof(v7));
        [v4 stopWithCompletion:v7];
        screenstreamudp_teardownStream();
      }

      *(v3 + 26) = 0;
      *(v3 + 24) = 1;
      CFRetain(a1);
      v5 = *(v3 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __screenstreamudp_dissociateInternal_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(v5, block);
    }
  }
}

uint64_t APEndpointStreamScreenUDPCreate_cold_7(int a1, _DWORD *a2)
{
  APSLogErrorAt();
  *a2 = a1;
  return APSLogErrorAt();
}

void APEndpointStreamScreenUDPCreate_cold_16()
{
  APSLogErrorAt();
  if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  OUTLINED_FUNCTION_3_0();
}

uint64_t APEndpointStreamScreenUDPCreate_cold_25(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

void screenstreamudp_handleClearScreen_cold_2(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  CFRelease(a2);
}

void AVConferenceLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *AVConferenceLibrary(void)") description:{@"APEndpointStreamScreenUDP.m", 53, @"%s", *a1}];
  __break(1u);
}

void __getAVCMediaStreamNegotiatorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAVCMediaStreamNegotiatorClass(void)_block_invoke") description:{@"APEndpointStreamScreenUDP.m", 59, @"Unable to find class %s", "AVCMediaStreamNegotiator"}];
  __break(1u);
}

void __getAVCScreenCaptureConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAVCScreenCaptureConfigurationClass(void)_block_invoke") description:{@"APEndpointStreamScreenUDP.m", 63, @"Unable to find class %s", "AVCScreenCaptureConfiguration"}];
  __break(1u);
}

void __getAVCScreenCaptureClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAVCScreenCaptureClass(void)_block_invoke") description:{@"APEndpointStreamScreenUDP.m", 65, @"Unable to find class %s", "AVCScreenCapture"}];
  __break(1u);
}

void __getAVCVideoStreamClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAVCVideoStreamClass(void)_block_invoke") description:{@"APEndpointStreamScreenUDP.m", 55, @"Unable to find class %s", "AVCVideoStream"}];
  __break(1u);
}

void __getAVCDaemonProcessInfoClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAVCDaemonProcessInfoClass(void)_block_invoke") description:{@"APEndpointStreamScreenUDP.m", 61, @"Unable to find class %s", "AVCDaemonProcessInfo"}];
  __break(1u);
}

void apPlaybackUtil_convertRangeSecondsToCMTime(__CFDictionary *a1, const void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    Count = CFArrayGetCount(TypedValue);
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v8 = Mutable;
      v18 = a1;
      v19 = a2;
      if (Count < 1)
      {
LABEL_10:
        CFDictionarySetValue(v18, v19, v8);
      }

      else
      {
        v9 = 0;
        v10 = *MEMORY[0x277CC11A0];
        v11 = *MEMORY[0x277CC1198];
        while (1)
        {
          CFDictionaryGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
          if (!TypedValueAtIndex || (v13 = TypedValueAtIndex, (v14 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0))
          {
            APSLogErrorAt();
            goto LABEL_11;
          }

          v15 = v14;
          apPlaybackUtil_getCMTimeFromRangeForKeys(v13, @"startCMTime", v10, &v20);
          OUTLINED_FUNCTION_2_11();
          if ((v16 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_1_16();
          FigCFDictionarySetCMTime();
          apPlaybackUtil_getCMTimeFromRangeForKeys(v13, @"durationCMTime", v11, &v20);
          OUTLINED_FUNCTION_2_11();
          if ((v17 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_1_16();
          FigCFDictionarySetCMTime();
          CFArrayAppendValue(v8, v15);
          CFRelease(v15);
          if (Count == ++v9)
          {
            goto LABEL_10;
          }
        }

        APSLogErrorAt();
        CFRelease(v15);
      }

LABEL_11:
      CFRelease(v8);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

uint64_t apPlaybackUtil_convertSecondsToCMTime()
{
  v3 = 0;
  CFDictionaryGetDouble();
  CMTimeMakeWithSeconds(&v2, v0, 1000);
  result = FigCFDictionarySetCMTime();
  v3 = result;
  if (result)
  {
    return APSLogErrorAt();
  }

  return result;
}

void APEndpointPlaybackSessionStatsDestroy(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(v1 + 32);
    if (v3)
    {
      CFRelease(v3);
      *(*a1 + 32) = 0;
      v1 = *a1;
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      CFRelease(v4);
      *(*a1 + 8) = 0;
    }

    FigSimpleMutexDestroy();
    v5 = *a1;
    if (!*(*a1 + 40) || (CFRelease(*(*a1 + 40)), *(*a1 + 40) = 0, (v5 = *a1) != 0))
    {
      *a1 = 0;

      free(v5);
    }
  }
}

uint64_t sharedMemSink_Resume()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v1 = DerivedStorage;
  if (gLogCategory_APAudioSinkSharedMem <= 30 && (gLogCategory_APAudioSinkSharedMem != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  if (*(v1 + 4) == *(v1 + 14))
  {
    v2 = APSSharedRingBuffer_Create();
    if (v2)
    {
      APSLogErrorAt();
    }

    else
    {
      APSSharedRingBuffer_ClearDataInBuffer();
      *v1 = 1;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960587;
  }

  return v2;
}

uint64_t sharedMemSink_Suspend()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    return 4294950503;
  }

  v1 = DerivedStorage;
  if (gLogCategory_APAudioSinkSharedMem <= 30 && (gLogCategory_APAudioSinkSharedMem != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  *v1 = 0;
  result = *(v1 + 12);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(v1 + 12) = 0;
  }

  return result;
}

uint64_t APDemoManagerIsDemoSession(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  cf = 0;
  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_59);
  }

  v4 = 0;
  if (a2 && a1 && qword_280FB1A80)
  {
    if (APSGetFBOPropertyInt64() && !APSGetFBOPropertyInt64())
    {
      CMBaseObject = APSenderSessionGetCMBaseObject(a2);
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v7 = *MEMORY[0x277CBECE8];
        if (!v6(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf))
        {
          if (cf)
          {
            v8 = FigTransportStreamGetCMBaseObject();
            v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v9)
            {
              v9(v8, *MEMORY[0x277CE4ED8], v7, &v11);
              if (v11)
              {
                v4 = APSIsDirectLinkInterface();
                goto LABEL_16;
              }
            }
          }
        }
      }

      APSLogErrorAt();
    }

    v4 = 0;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v4;
}

uint64_t __APDemoManagerStart_block_invoke_cold_2()
{
  APSLogErrorAt();
  result = SCError();
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = 1001;
  }

  if (gLogCategory_APDemoManager <= 90)
  {
    if (gLogCategory_APDemoManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      SCErrorString(v1);
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t demoManagerActivateEndpointIfNeeded_cold_6(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APDemoManager <= 90)
  {
    if (gLogCategory_APDemoManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_4_0();
    }
  }

  *a3 = a2;
  return result;
}

void demoManagerActivateEndpointIfNeeded_cold_11(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t demoManagerActivateEndpointIfNeeded_cold_12(uint64_t result)
{
  v1 = result;
  if (gLogCategory_APDemoManager <= 50)
  {
    if (gLogCategory_APDemoManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_2();
    }
  }

  *v1 = 0;
  return result;
}

uint64_t apEndpointRemoteControlSession_Teardown(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (!apEndpointRemoteControlSession_isInvalidated())
  {
    CFRetain(a1);
    v3 = *(DerivedStorage + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __apEndpointRemoteControlSession_Teardown_block_invoke;
    block[3] = &__block_descriptor_tmp_68;
    block[4] = a1;
    dispatch_async(v3, block);
  }

  return 0;
}

void __apEndpointRemoteControlSession_teardownInternal_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!apEndpointRemoteControlSession_isInvalidated())
  {
    if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_2();
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v4 = Mutable;
      CFDictionarySetInt64();
      v5 = *(DerivedStorage + 16);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v6)
      {
        v6(v5, 130, v4);
      }

      CFRelease(v4);
    }

    else
    {
      APSLogErrorAt();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  CFRelease(*(a1 + 32));
  v7 = *(a1 + 40);

  dispatch_release(v7);
}

uint64_t apEndpointRemoteControlSession_startMessageHandling(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  cf = 0;
  if (a1 != 1684628836 && a1 != 1668116068)
  {
    return 0;
  }

  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    v12 = 0;
    v10 = 4294949863;
    goto LABEL_29;
  }

  if (a1 != 1684628836)
  {
    CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
    if (CFDataWithBlockBufferNoCopy)
    {
      v10 = CFDataWithBlockBufferNoCopy;
      APSLogErrorAt();
      goto LABEL_28;
    }

    if (*(DerivedStorage + 136))
    {
      v12 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (!v12)
      {
        if (gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_3_11();
        }

        goto LABEL_27;
      }
    }

    else
    {
      v12 = 0;
    }

    *&v23 = CFRetain(v8);
    v13 = *(DerivedStorage + 128);
    *(&v23 + 1) = cf;
    *&v24 = v13;
    if (v12)
    {
      v14 = CFRetain(v12);
    }

    else
    {
      v14 = 0;
    }

    *(&v24 + 1) = v14;
    LOBYTE(v25) = a4 == 0;
    APSDispatchAsyncFHelper();
    v10 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_29;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_3_11();
  }

  CFRetain(v8);
  OUTLINED_FUNCTION_1_17();
  v18 = 0x40000000;
  v19 = __apEndpointRemoteControlSession_startMessageHandling_block_invoke;
  v20 = &__block_descriptor_tmp_95_0;
  v21 = v8;
  dispatch_async(v15, block);
LABEL_27:
  v10 = 0;
LABEL_28:
  v12 = 0;
LABEL_29:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v8);
  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

uint64_t apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17431;
  return result;
}

uint64_t apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17431;
  return result;
}

uint64_t apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_14(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17431;
  return result;
}

uint64_t apEndpointRemoteControlSession_handleMessageInternal_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17430;
  return result;
}

uint64_t apEndpointRemoteControlSession_handleMessageInternal_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17430;
  return result;
}

uint64_t apEndpointRemoteControlSession_handleMessageInternal_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17430;
  return result;
}

BOOL APVirtualDisplayTestSinkCreate_cold_3(const void *a1, uint64_t a2, _DWORD *a3)
{
  APSLogErrorAt();
  v5 = FigSignalErrorAtGM();
  *a3 = v5;
  CFRelease(a1);
  return v5 == 0;
}

uint64_t vdsink_ShouldDropFrame_cold_1(CMTime *a1)
{
  time = *a1;
  CMTimeGetSeconds(&time);
  return LogPrintF();
}

uint64_t vdsink_networkThread_cold_9(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (gLogCategory_APVirtualDisplayTestSink < 91)
  {
    if (gLogCategory_APVirtualDisplayTestSink != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a4 = a3;
  return result;
}

void audioStream_handleEndpointDescriptionChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    if (!DerivedStorage[114])
    {
      if (audioStream_createSupportedAudioFormatList(a2, &v7))
      {
        APSLogErrorAt();
        v5 = v7;
        if (!v7)
        {
          return;
        }

        goto LABEL_27;
      }

      FigSimpleMutexLock();
      v5 = v7;
      if (!FigCFEqual())
      {
        if (gLogCategory_APEndpointStreamBufferedAudio < 51)
        {
          if (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize())
          {
            APSAudioFormatDescriptionListCopyDebugString();
            if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
            {
              OUTLINED_FUNCTION_2();
            }
          }

          if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
          {
            APSAudioFormatDescriptionListCopyDebugString();
            if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
            {
              OUTLINED_FUNCTION_2();
            }
          }
        }

        v6 = *(v4 + 23);
        *(v4 + 23) = v5;
        if (v5)
        {
          CFRetain(v5);
        }

        if (v6)
        {
          CFRelease(v6);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
      }

      FigSimpleMutexUnlock();
      if (v5)
      {
LABEL_27:
        CFRelease(v5);
      }
    }
  }
}

_BYTE *audioStream_dissociateInternal()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v1 = result;
    audioStream_invalidateTransportMDCStream();
    APSDispatchSyncTask();
    APSDispatchSyncFlush();
    audioStream_invalidateTransportAudioDataStream();
    FigSimpleMutexLock();
    v2 = v1[24];
    if (v2)
    {
      CFRelease(v2);
      v1[24] = 0;
    }

    v3 = v1[25];
    if (v3)
    {
      CFRelease(v3);
      v1[25] = 0;
    }

    v4 = v1[29];
    if (v4)
    {
      CFRelease(v4);
      v1[29] = 0;
    }

    v5 = v1[40];
    if (v5)
    {
      CFRelease(v5);
      v1[40] = 0;
    }

    v6 = v1[37];
    if (v6)
    {
      CFRelease(v6);
      v1[37] = 0;
    }

    v7 = v1[38];
    if (v7)
    {
      CFRelease(v7);
      v1[38] = 0;
    }

    result = FigSimpleMutexUnlock();
    if (v1[1])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_13_4();

      return FigDispatchAsyncPostNotification();
    }
  }

  return result;
}

uint64_t audioStream_suspendInternal(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*DerivedStorage)
  {
    return 0;
  }

  if (APSGetFBOPropertyInt64())
  {
    v5 = *(DerivedStorage + 408);
    if (v5)
    {
      APCarPlayAnalyticsStopCollections(v5);
      APCarPlayAnalyticsSubmitToCarPlay(*(DerivedStorage + 408));
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_4_11();
    FigNotificationCenterRemoveWeakListener();
  }

  v6 = CMBaseObjectGetDerivedStorage();
  if (!*v6)
  {
    v7 = v6;
    if (*(v6 + 208))
    {
      if (*(v6 + 400))
      {
        if (APSThreadSafeDictionaryCopyValueIfPresent() && APSThreadSafeDictionaryGetInt64IfPresent())
        {
          APSThreadSafeDictionaryGetInt32IfPresent();
          mach_absolute_time();
          UpTicksToSeconds();
          APSThreadSafeDictionarySetInt32();
          APSThreadSafeDictionaryRemoveValue();
        }

        v8 = *(v7 + 400);
        if (v8)
        {
          CFRelease(v8);
          *(v7 + 400) = 0;
        }
      }
    }
  }

  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 248);
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(DerivedStorage + 330);
  FigSimpleMutexUnlock();
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"HoseRegistrar");
    if (v10)
    {
      if (Value && !CFEqual(v10, Value))
      {
        if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2();
        }

        v34 = 0;
        goto LABEL_67;
      }
    }
  }

  if (*(DerivedStorage + 120))
  {
    FigPKDStopAirPlaySenderSession();
    *(DerivedStorage + 120) = 0;
    v13 = *(DerivedStorage + 128);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 128) = 0;
    }
  }

  v14 = *(DerivedStorage + 136);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 136) = 0;
  }

  v15 = *(DerivedStorage + 144);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 144) = 0;
  }

  v16 = *(DerivedStorage + 152);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 152) = 0;
  }

  audioStream_invalidateTransportMDCStream();
  audioStream_invalidateTransportAudioDataStream();
  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    if (ProtocolVTable)
    {
      v18 = *(ProtocolVTable + 16);
      if (v18)
      {
        if (*(v18 + 48))
        {
LABEL_42:
          v20 = OUTLINED_FUNCTION_21_1();
          v21(v20);
        }
      }
    }
  }

  else if (ProtocolVTable)
  {
    v19 = *(ProtocolVTable + 16);
    if (v19)
    {
      if (*(v19 + 32))
      {
        goto LABEL_42;
      }
    }
  }

  if (*(DerivedStorage + 331))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      v34 = 4294950535;
      if (!v10)
      {
        return v34;
      }

      goto LABEL_67;
    }

    v23 = Mutable;
    CFDictionarySetInt64();
    v24 = *(DerivedStorage + 88);
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v25)
    {
      v25(v24, 103, v23);
    }
  }

  else
  {
    v23 = 0;
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 176) = 0;
  *(DerivedStorage + 331) = 0;
  v26 = *(DerivedStorage + 192);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 192) = 0;
  }

  v27 = *(DerivedStorage + 200);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 200) = 0;
  }

  *(DerivedStorage + 208) = 0;
  *(DerivedStorage + 224) = 0;
  v28 = *(DerivedStorage + 232);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 232) = 0;
  }

  v29 = *(DerivedStorage + 248);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 248) = 0;
  }

  v30 = *(DerivedStorage + 272);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 272) = 0;
  }

  v31 = *(DerivedStorage + 288);
  if (v31)
  {
    CFRelease(v31);
    *(DerivedStorage + 288) = 0;
  }

  v32 = *(DerivedStorage + 296);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 296) = 0;
  }

  v33 = *(DerivedStorage + 304);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 304) = 0;
  }

  *(DerivedStorage + 344) = 0;
  audioStream_updateIsPlayingAndPostNotification(a1, 0);
  FigSimpleMutexUnlock();
  APSEventRecorderRecordEvent();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_13_4();
  FigDispatchAsyncPostNotification();
  if (v23)
  {
    CFRelease(v23);
  }

  v34 = 0;
  if (v10)
  {
LABEL_67:
    CFRelease(v10);
  }

  return v34;
}

uint64_t audioStream_setIsCritical(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 328) != a2 && *(DerivedStorage + 192))
  {
    if (gLogCategory_APEndpointStreamBufferedAudio >= 51)
    {
      OUTLINED_FUNCTION_22_1();
    }

    else
    {
      if (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4())
      {
        OUTLINED_FUNCTION_2();
      }

      OUTLINED_FUNCTION_22_1();
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    CFRetain(v4);
LABEL_10:
    APSDispatchAsyncFHelper();
  }

  return FigSimpleMutexUnlock();
}

void audioStream_setAudioModeInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 104);
  v4 = *(a1 + 8);
  *(DerivedStorage + 104) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  AudioModeForEndpointStream = APSenderSessionUtilityGetAudioModeForEndpointStream();
  if (*(DerivedStorage + 208))
  {
    v6 = AudioModeForEndpointStream;
    RequestDictionary = audioStream_createRequestDictionary(*a1);
    if (RequestDictionary)
    {
      v8 = RequestDictionary;
      CFDictionarySetValue(RequestDictionary, @"audioMode", v6);
      if (*(DerivedStorage + 113))
      {
        v9 = *(DerivedStorage + 200);
        if (v9)
        {
          v10 = CFRetain(v9);
          if (v10)
          {
            v11 = v10;
            if (APTransportStreamSendPlistMessageCreatingPlistReply())
            {
              APSLogErrorAt();
            }

            CFRelease(v11);
            goto LABEL_16;
          }
        }
      }

      else
      {
        v12 = *(DerivedStorage + 88);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v13 && !v13(v12, v8))
        {
          goto LABEL_16;
        }
      }

      APSLogErrorAt();
LABEL_16:
      CFRelease(v8);
      goto LABEL_17;
    }

    APSLogErrorAt();
  }

LABEL_17:
  audioStream_releaseAsync(*a1);
  v14 = *(a1 + 8);
  if (v14)
  {

    CFRelease(v14);
  }
}

uint64_t audioStream_Dissociate()
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    audioStream_dissociateInternal();
  }

  return 0;
}

void audioStream_suspendAsync(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  audioStream_suspendInternal(*a1, *(a1 + 8));
  if (*(a1 + 16))
  {
    CFRetain(*a1);
    OUTLINED_FUNCTION_3_12();
    APSDispatchAsyncFHelper();
  }

  audioStream_releaseAsync(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }
}

void audioStream_resumeAsync_0(uint64_t *a1)
{
  CMBaseObjectGetDerivedStorage();
  v4 = a1[1];
  v170 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v176 = 0;
  v177 = 0;
  v174 = 0;
  v175 = 0;
  v172 = 0;
  v173 = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_2();
  }

  if (*DerivedStorage || *(DerivedStorage + 208))
  {
    OUTLINED_FUNCTION_2_12();
    v18 = 0;
    v8 = 0;
    v4 = 0;
    v7 = 0;
    v19 = 0;
    goto LABEL_376;
  }

  v169 = a1;
  if (v4)
  {
    v6 = CFDictionaryGetValue(v4, @"HoseRegistrar");
    theData = CFDictionaryGetValue(v4, @"EncryptionKey");
    CFDictionaryGetValue(v4, @"InitialTransportAudioFormatDescription");
    v7 = CFDictionaryGetInt64() == 0;
    v8 = CFDictionaryGetInt64() == 0;
    if (*(DerivedStorage + 115))
    {
      v167 = CFDictionaryGetValue(v4, @"AudioSessionID");
      CFDictionaryGetValue(v4, @"AudioSessionCategory");
      CFDictionaryGetValue(v4, @"AudioSessionMode");
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }
    }

    else
    {
      v167 = 0;
    }

    v9 = CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    *v182 = 0;
    v180 = 0;
    *buf = 0;
    v178 = 0;
    v179 = 0;
    if (!*v9)
    {
      v2 = v9;
      if (!v9[208])
      {
        v10 = FigCFDictionaryGetValue();
        if (v10)
        {
          v11 = v10;
          if (APSThreadSafeDictionaryCopyValueIfPresent())
          {
            v4 = @"AudioStreamLastStartTime";
            mach_absolute_time();
            APSThreadSafeDictionarySetInt64();
            CMBaseObject = *(v2 + 400);
            *(v2 + 400) = v11;
            CFRetain(v11);
            if (CMBaseObject)
            {
              CFRelease(CMBaseObject);
            }
          }

          else
          {
            APSThreadSafeDictionaryCreate();
            APSLogErrorAt();
          }
        }
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (*v182)
    {
      CFRelease(*v182);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    if (v180)
    {
      CFRelease(v180);
    }

    if (v179)
    {
      CFRelease(v179);
    }

    if (v178)
    {
      CFRelease(v178);
    }
  }

  else
  {
    v167 = 0;
    v6 = 0;
    theData = 0;
    v7 = 1;
    v8 = 1;
  }

  v12 = APSGetFBOPropertyInt64();
  v168 = v12;
  if (v8)
  {
    if (v7)
    {
      v2 = 0;
      v13 = 1651861089;
      goto LABEL_42;
    }

    if (*(DerivedStorage + 96))
    {
      v13 = 1634754914;
      v2 = 1;
LABEL_42:
      FigSimpleMutexLock();
      v14 = *(DerivedStorage + 184);
      if (v14)
      {
        v7 = CFRetain(v14);
      }

      else
      {
        v7 = 0;
      }

      v15 = *(DerivedStorage + 320);
      if (v15)
      {
        v4 = CFRetain(v15);
      }

      else
      {
        v4 = 0;
      }

      FigSimpleMutexUnlock();
      if (!APSAudioFormatDescriptionListContainsFormat())
      {
        goto LABEL_154;
      }

      CMBaseObject = APSenderSessionGetCMBaseObject(*(DerivedStorage + 88));
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v16)
      {
        allocator = *MEMORY[0x277CBECE8];
        v17 = v16(CMBaseObject, @"KeyHolder");
        if (!v17)
        {
          if (*(DerivedStorage + 114) != 0 || v8)
          {
            Int64 = 0;
            goto LABEL_63;
          }

          if (v177)
          {
            v20 = RandomBytes();
            if (!v20)
            {
              v21 = v2;
              Int64 = CFNumberCreateInt64();
              if (!Int64)
              {
                APSLogErrorAt();
                OUTLINED_FUNCTION_2_12();
                v8 = 0;
                v19 = 0;
                v18 = -16761;
                goto LABEL_375;
              }

              v2 = v176;
              CMBaseObject = v177;
              v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v22)
              {
                v23 = v22(v177, v176, 32, &v175, 32, &v174);
                if (!v23)
                {
                  v2 = v21;
LABEL_63:
                  if (!*(DerivedStorage + 113) || (v24 = RandomBytes()) == 0)
                  {
                    value = v4;
                    v159 = v2;
                    v156 = APSGetFBOPropertyInt64();
                    if (v8)
                    {
                      v154 = 1601463152;
                      v25 = v13;
                      if (APSSettingsIsFeatureEnabled())
                      {
                        v26 = *(DerivedStorage + 80);
                        v27 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                        if (v27)
                        {
                          if (v27(v26, 84))
                          {
                            v154 = 1903520099;
                          }
                        }
                      }
                    }

                    else
                    {
                      v154 = 1601528944;
                      v25 = v13;
                    }

                    v157 = *(DerivedStorage + 88);
                    v160 = *(DerivedStorage + 112);
                    v158 = *(DerivedStorage + 114);
                    v155 = *(DerivedStorage + 113);
                    v28 = *(DerivedStorage + 128);
                    *v182 = 0;
                    cf[0] = 0;
                    OUTLINED_FUNCTION_16_3();
                    OUTLINED_FUNCTION_6_7();
                    v29 = LogCategoryCopyOSLogHandle();
                    if (v29)
                    {
                      v30 = v29;
                    }

                    else
                    {
                      v30 = MEMORY[0x277D86220];
                    }

                    v31 = CUObfuscatedPtr();
                    if (v31)
                    {
                      v32 = v31;
                      if (os_signpost_enabled(v30))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_221FFA000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v32, "AIRPLAY_SIGNPOST_BUFFERED_EPS_SETUP_AUDIOSTREAM_INTERVAL", &unk_2222A918B, buf, 2u);
                      }
                    }

                    v166 = v6;
                    v162 = v7;
                    if (v25 == 1651861089)
                    {
                      v153 = v28;
                      v33 = kAPEndpointStreamConnectionType_RTP;
                    }

                    else
                    {
                      v153 = v28;
                      if (v25 == 1634754932)
                      {
                        v33 = kAPEndpointStreamConnectionType_APAT;
                      }

                      else
                      {
                        v33 = kAPEndpointStreamConnectionType_APAP;
                      }
                    }

                    cf1 = *v33;
                    AudioModeForEndpointStream = APSenderSessionUtilityGetAudioModeForEndpointStream();
                    APSAudioFormatDescriptionGetCompressionType();
                    LegacyFormatMask = APSAudioFormatDescriptionGetLegacyFormatMask();
                    AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
                    v38 = OUTLINED_FUNCTION_17_1(AudioFormatIndex, v37, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    v39 = v38;
                    if (!v38)
                    {
                      APSLogErrorAt();
                      *v182 = -6728;
                      goto LABEL_134;
                    }

                    v40 = *MEMORY[0x277CBED28];
                    CFDictionarySetValue(v38, @"supportsDynamicStreamID", *MEMORY[0x277CBED28]);
                    CFDictionarySetInt64();
                    APSAudioFormatDescriptionGetFramesPerPacket();
                    CFDictionarySetInt64();
                    CFDictionarySetInt64();
                    CFDictionarySetInt64();
                    if (v168)
                    {
                      CFDictionarySetValue(v39, @"audioType", @"media");
                      if (CFEqual(cf1, @"streamConnectionTypeAPAP"))
                      {
                        v41 = v40;
                      }

                      else
                      {
                        v41 = *MEMORY[0x277CBED10];
                      }

                      CFDictionarySetValue(v39, @"packetFormatAPAP", v41);
                    }

                    CFDictionarySetValue(v39, @"audioMode", AudioModeForEndpointStream);
                    FigCFDictionarySetValue();
                    FigCFDictionarySetValue();
                    v42 = FigCFDictionarySetValue();
                    if (theData)
                    {
                      CFDataGetBytePtr(theData);
                      CFDataGetLength(theData);
                      v42 = CFDictionarySetData();
                    }

                    if (v156)
                    {
                      AudioModeForEndpointStream = OUTLINED_FUNCTION_17_1(v42, v43, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      if (!AudioModeForEndpointStream)
                      {
                        APSLogErrorAt();
                        LegacyFormatMask = 0;
                        goto LABEL_178;
                      }

                      CFDictionarySetInt64();
                      CFDictionarySetValue(v39, @"soundCheckMediaKind", AudioModeForEndpointStream);
                    }

                    else
                    {
                      AudioModeForEndpointStream = 0;
                    }

                    if (!v160)
                    {
                      LegacyFormatMask = 0;
                      goto LABEL_117;
                    }

                    v44 = OUTLINED_FUNCTION_17_1(v42, v43, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    LegacyFormatMask = v44;
                    if (v44)
                    {
                      if (v158)
                      {
LABEL_112:
                        if (!v155)
                        {
LABEL_116:
                          CFDictionarySetValue(v39, @"streamConnections", LegacyFormatMask);
LABEL_117:
                          if (value)
                          {
                            CFDictionarySetValue(v39, @"clientID", value);
                          }

                          if (v153)
                          {
                            CFDictionarySetValue(v39, @"pkdDeviceContext", v153);
                          }

                          v51 = 0;
                          v53 = 0;
                          if (LegacyFormatMask)
                          {
                            goto LABEL_122;
                          }

                          goto LABEL_123;
                        }

                        v51 = OUTLINED_FUNCTION_17_1(v44, v45, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                        if (v51)
                        {
                          v52 = CFDictionarySetInt64();
                          if (!v52)
                          {
                            CFDictionarySetValue(LegacyFormatMask, @"streamConnectionTypeMediaDataControl", v51);
                            CFRelease(v51);
                            goto LABEL_116;
                          }

                          v53 = v52;
                          APSLogErrorAt();
LABEL_180:
                          CFRelease(v39);
                          v39 = 0;
                          if (LegacyFormatMask)
                          {
LABEL_122:
                            CFRelease(LegacyFormatMask);
                          }

LABEL_123:
                          if (v51)
                          {
                            CFRelease(v51);
                          }

                          if (AudioModeForEndpointStream)
                          {
                            CFRelease(AudioModeForEndpointStream);
                          }

                          *v182 = v53;
                          if (!v53)
                          {
                            mach_absolute_time();
                            v54 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                            if (v54)
                            {
                              *v182 = v54(v157, 103, v39, cf, 0, 0);
                              if (!*v182)
                              {
                                mach_absolute_time();
                                if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
                                {
                                  UpTicksToMilliseconds();
                                  OUTLINED_FUNCTION_11_3();
                                  OUTLINED_FUNCTION_2();
                                }

                                AudioModeForEndpointStream = CFDictionaryGetInt64();
                                LegacyFormatMask = CFDictionaryGetInt64();
                                if (v160)
                                {
                                  CFDictionaryGetTypeID();
                                  CFDictionaryGetTypedValue();
                                  if (*v182)
                                  {
                                    goto LABEL_184;
                                  }

                                  if (!v158)
                                  {
                                    CFDictionaryGetTypeID();
                                    CFDictionaryGetTypedValue();
                                    if (*v182)
                                    {
                                      goto LABEL_184;
                                    }

                                    CFDictionaryGetInt64();
                                    if (*v182)
                                    {
                                      goto LABEL_184;
                                    }
                                  }

                                  if (v155)
                                  {
                                    CFDictionaryGetTypeID();
                                    CFDictionaryGetTypedValue();
                                    if (*v182)
                                    {
                                      goto LABEL_184;
                                    }

                                    CFDictionaryGetInt64();
                                    if (*v182)
                                    {
                                      goto LABEL_184;
                                    }
                                  }
                                }

                                else
                                {
                                  CFDictionaryGetInt64();
                                  if (*v182)
                                  {
                                    goto LABEL_184;
                                  }
                                }

                                if (v158)
                                {
                                  *(DerivedStorage + 64) = 5000000;
                                  goto LABEL_150;
                                }

                                *(DerivedStorage + 64) = CFDictionaryGetInt64();
                                if (!*v182)
                                {
LABEL_150:
                                  if (v153)
                                  {
                                    v56 = CFDictionaryGetValue(cf[0], @"pkdDeviceContext");
                                    if (v56)
                                    {
                                      v167 = CFRetain(v56);
                                    }

                                    else
                                    {
                                      APSLogErrorAt();
                                      v167 = 0;
                                      *v182 = -16765;
                                    }

                                    goto LABEL_186;
                                  }

LABEL_185:
                                  v167 = 0;
LABEL_186:
                                  v55 = 1;
LABEL_187:
                                  OUTLINED_FUNCTION_16_3();
                                  OUTLINED_FUNCTION_7_5();
                                  OUTLINED_FUNCTION_6_7();
                                  v57 = LogCategoryCopyOSLogHandle();
                                  v2 = v57;
                                  if (v57)
                                  {
                                    CMBaseObject = v57;
                                  }

                                  else
                                  {
                                    CMBaseObject = MEMORY[0x277D86220];
                                  }

                                  v58 = CUObfuscatedPtr();
                                  if (v58)
                                  {
                                    v59 = v58;
                                    if (os_signpost_enabled(CMBaseObject))
                                    {
                                      *buf = 0;
                                      _os_signpost_emit_with_name_impl(&dword_221FFA000, CMBaseObject, OS_SIGNPOST_INTERVAL_END, v59, "AIRPLAY_SIGNPOST_BUFFERED_EPS_SETUP_AUDIOSTREAM_INTERVAL", &unk_2222A918B, buf, 2u);
                                    }
                                  }

                                  if (v2)
                                  {
                                    os_release(v2);
                                  }

                                  if (v39)
                                  {
                                    CFRelease(v39);
                                  }

                                  if (cf[0])
                                  {
                                    CFRelease(cf[0]);
                                  }

                                  v18 = *v182;
                                  FigSimpleMutexLock();
                                  *(DerivedStorage + 176) = AudioModeForEndpointStream;
                                  *(DerivedStorage + 331) = v55;
                                  FigSimpleMutexUnlock();
                                  if (v18)
                                  {
                                    APSLogErrorAt();
                                    OUTLINED_FUNCTION_2_12();
                                    v4 = value;
                                    v7 = v162;
                                    goto LABEL_374;
                                  }

                                  v7 = v162;
                                  if (!v168)
                                  {
LABEL_224:
                                    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
                                    {
                                      OUTLINED_FUNCTION_11_3();
                                      OUTLINED_FUNCTION_2();
                                    }

                                    v62 = v6;
                                    if (*(DerivedStorage + 114))
                                    {
                                      CMBaseObject = 0;
                                      goto LABEL_285;
                                    }

                                    v63 = *(DerivedStorage + 88);
                                    cf[0] = 0;
                                    v64 = APTransportStreamIDMakeWithPort();
                                    if (gLogCategory_APEndpointStreamBufferedAudio <= 30)
                                    {
                                      if (gLogCategory_APEndpointStreamBufferedAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
                                      {
                                        OUTLINED_FUNCTION_8();
                                        LogPrintF();
                                      }
                                    }

                                    OUTLINED_FUNCTION_16_3();
                                    OUTLINED_FUNCTION_6_7();
                                    v65 = LogCategoryCopyOSLogHandle();
                                    if (v65)
                                    {
                                      v66 = v65;
                                    }

                                    else
                                    {
                                      v66 = MEMORY[0x277D86220];
                                    }

                                    v67 = CUObfuscatedPtr();
                                    if (v67)
                                    {
                                      v68 = v67;
                                      if (os_signpost_enabled(v66))
                                      {
                                        *v182 = 0;
                                        _os_signpost_emit_with_name_impl(&dword_221FFA000, v66, OS_SIGNPOST_INTERVAL_BEGIN, v68, "AIRPLAY_SIGNPOST_BUFFERED_EPS_TRANSPORT_AUDIO_INTERVAL", &unk_2222A918B, v182, 2u);
                                      }
                                    }

                                    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                    if (!Mutable)
                                    {
                                      APSLogErrorAt();
                                      CMBaseObject = 0;
                                      v72 = 0;
                                      v18 = -71820;
                                      goto LABEL_262;
                                    }

                                    CFDictionarySetInt64();
                                    CFDictionarySetInt64();
                                    CFDictionarySetValue(Mutable, @"AllowMessageAggregation", *MEMORY[0x277CBED28]);
                                    CFDictionarySetInt64();
                                    FigCFDictionarySetUInt32();
                                    v70 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                                    if (v70)
                                    {
                                      v71 = v70(v63, v64, Mutable, cf);
                                      if (!v71)
                                      {
                                        v72 = CFNumberCreateInt64();
                                        if (!v72)
                                        {
                                          APSLogErrorAt();
                                          CMBaseObject = 0;
                                          v18 = -6728;
                                          goto LABEL_262;
                                        }

                                        FigTransportStreamGetCMBaseObject();
                                        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                                        {
                                          v73 = OUTLINED_FUNCTION_12_5();
                                          v75 = v74(v73);
                                          if (v75)
                                          {
                                            v18 = v75;
                                            goto LABEL_261;
                                          }

                                          v76 = cf[0];
                                          v77 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                                          if (!v77)
                                          {
                                            v18 = -12782;
                                            goto LABEL_261;
                                          }

                                          v78 = v77(v76, audioStream_receivedAudioDataMessage, 0, v170);
                                          if (v78)
                                          {
                                            v18 = v78;
                                            goto LABEL_261;
                                          }

                                          v79 = cf[0];
                                          v80 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                          if (!v80)
                                          {
                                            v18 = -12782;
                                            goto LABEL_261;
                                          }

                                          v81 = v80(v79);
                                          if (v81)
                                          {
                                            v18 = v81;
                                            goto LABEL_261;
                                          }

                                          v82 = cf[0];
                                          v83 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                                          if (!v83)
                                          {
                                            v18 = -12782;
                                            goto LABEL_261;
                                          }

                                          v84 = v83(v82);
                                          if (v84)
                                          {
                                            v18 = v84;
                                            goto LABEL_261;
                                          }

                                          if (APSSettingsIsFeatureEnabled())
                                          {
                                            v85 = FigTransportStreamSetReadyToSendBatchCallback(cf[0], audioStream_audioDataBatchCallback, v170);
                                            if (v85)
                                            {
                                              v18 = v85;
LABEL_261:
                                              APSLogErrorAt();
                                              CMBaseObject = 0;
                                              goto LABEL_262;
                                            }
                                          }

                                          else
                                          {
                                            v151 = FigTransportStreamSetReadyToSendCallback(cf[0], audioStream_audioDataCallback, v170);
                                            if (v151)
                                            {
                                              v18 = v151;
                                              goto LABEL_261;
                                            }
                                          }

                                          v18 = 0;
                                          CMBaseObject = cf[0];
                                          cf[0] = 0;
                                          goto LABEL_262;
                                        }

                                        v18 = -12782;
                                        goto LABEL_261;
                                      }

                                      v18 = v71;
                                    }

                                    else
                                    {
                                      v18 = -12782;
                                    }

                                    APSLogErrorAt();
                                    CMBaseObject = 0;
                                    v72 = 0;
LABEL_262:
                                    OUTLINED_FUNCTION_16_3();
                                    OUTLINED_FUNCTION_7_5();
                                    OUTLINED_FUNCTION_6_7();
                                    v86 = LogCategoryCopyOSLogHandle();
                                    v87 = v86;
                                    if (v86)
                                    {
                                      v88 = v86;
                                    }

                                    else
                                    {
                                      v88 = MEMORY[0x277D86220];
                                    }

                                    v89 = CUObfuscatedPtr();
                                    if (v89)
                                    {
                                      v90 = v89;
                                      if (os_signpost_enabled(v88))
                                      {
                                        *v182 = 0;
                                        _os_signpost_emit_with_name_impl(&dword_221FFA000, v88, OS_SIGNPOST_INTERVAL_END, v90, "AIRPLAY_SIGNPOST_BUFFERED_EPS_TRANSPORT_AUDIO_INTERVAL", &unk_2222A918B, v182, 2u);
                                      }
                                    }

                                    if (v87)
                                    {
                                      os_release(v87);
                                    }

                                    v7 = v162;
                                    if (v72)
                                    {
                                      CFRelease(v72);
                                    }

                                    v62 = v6;
                                    if (Mutable)
                                    {
                                      CFRelease(Mutable);
                                    }

                                    if (cf[0])
                                    {
                                      v91 = FigTransportStreamGetCMBaseObject();
                                      if (v91)
                                      {
                                        v92 = v91;
                                        v93 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                                        if (v93)
                                        {
                                          v93(v92);
                                        }
                                      }

                                      CFRelease(cf[0]);
                                    }

                                    if (v18)
                                    {
                                      APSLogErrorAt();
                                      v2 = 0;
                                      goto LABEL_416;
                                    }

                                    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
                                    {
                                      OUTLINED_FUNCTION_18_3();
                                      OUTLINED_FUNCTION_2();
                                    }

LABEL_285:
                                    if (!*(DerivedStorage + 113))
                                    {
                                      v2 = 0;
                                      goto LABEL_338;
                                    }

                                    v94 = *(DerivedStorage + 88);
                                    v95 = v177;
                                    v96 = v173;
                                    cf[0] = 0;
                                    v97 = APTransportStreamIDMakeWithPort();
                                    OUTLINED_FUNCTION_16_3();
                                    OUTLINED_FUNCTION_7_5();
                                    OUTLINED_FUNCTION_6_7();
                                    v98 = LogCategoryCopyOSLogHandle();
                                    if (v98)
                                    {
                                      v99 = v98;
                                    }

                                    else
                                    {
                                      v99 = MEMORY[0x277D86220];
                                    }

                                    v100 = CUObfuscatedPtr();
                                    if (v100)
                                    {
                                      v102 = v100;
                                      v100 = os_signpost_enabled(v99);
                                      if (v100)
                                      {
                                        *v182 = 0;
                                        _os_signpost_emit_with_name_impl(&dword_221FFA000, v99, OS_SIGNPOST_INTERVAL_BEGIN, v102, "AIRPLAY_SIGNPOST_BUFFERED_EPS_TRANSPORT_CONTROL_INTERVAL", &unk_2222A918B, v182, 2u);
                                      }
                                    }

                                    if (!v95)
                                    {
                                      APSLogErrorAt();
                                      v18 = APSSignalErrorAt();
                                      v2 = 0;
                                      v107 = 0;
                                      v103 = 0;
                                      goto LABEL_316;
                                    }

                                    v103 = OUTLINED_FUNCTION_17_1(v100, v101, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                    if (v103)
                                    {
                                      CFDictionarySetInt64();
                                      CFDictionarySetInt64();
                                      CFDictionarySetInt64();
                                      v104 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                                      if (v104)
                                      {
                                        v105 = v104(v94, v97, v103, cf);
                                        if (v105)
                                        {
                                          v18 = v105;
                                        }

                                        else
                                        {
                                          v106 = APSSetFBOPropertyInt64();
                                          if (!v106)
                                          {
                                            v107 = APKeyHolderCoreUtilsEncryptionContextDataStreamCreateWithSeed(allocator, v96);
                                            if (v107)
                                            {
                                              v108 = cf[0];
                                              v109 = *(*(CMBaseObjectGetVTable() + 16) + 80);
                                              if (v109)
                                              {
                                                v110 = v109(v108, v95, v107);
                                                if (v110)
                                                {
                                                  v18 = v110;
                                                }

                                                else
                                                {
                                                  v111 = APSSetFBOPropertyInt64();
                                                  if (v111)
                                                  {
                                                    v18 = v111;
                                                  }

                                                  else
                                                  {
                                                    v112 = cf[0];
                                                    v113 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                                                    if (v113)
                                                    {
                                                      v114 = v113(v112, audioStream_receivedMediaDataEventMessage, 0, v170);
                                                      if (v114)
                                                      {
                                                        v18 = v114;
                                                      }

                                                      else
                                                      {
                                                        v115 = cf[0];
                                                        v116 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                                        if (v116)
                                                        {
                                                          v117 = v116(v115);
                                                          if (v117)
                                                          {
                                                            v18 = v117;
                                                          }

                                                          else
                                                          {
                                                            v118 = cf[0];
                                                            v119 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                                                            if (v119)
                                                            {
                                                              v18 = v119(v118);
                                                              if (!v18)
                                                              {
                                                                v2 = cf[0];
                                                                cf[0] = 0;
LABEL_316:
                                                                OUTLINED_FUNCTION_16_3();
                                                                OUTLINED_FUNCTION_7_5();
                                                                OUTLINED_FUNCTION_6_7();
                                                                v120 = LogCategoryCopyOSLogHandle();
                                                                v121 = v120;
                                                                if (v120)
                                                                {
                                                                  v122 = v120;
                                                                }

                                                                else
                                                                {
                                                                  v122 = MEMORY[0x277D86220];
                                                                }

                                                                v123 = CUObfuscatedPtr();
                                                                if (v123)
                                                                {
                                                                  v124 = v123;
                                                                  if (os_signpost_enabled(v122))
                                                                  {
                                                                    *v182 = 0;
                                                                    _os_signpost_emit_with_name_impl(&dword_221FFA000, v122, OS_SIGNPOST_INTERVAL_END, v124, "AIRPLAY_SIGNPOST_BUFFERED_EPS_TRANSPORT_CONTROL_INTERVAL", &unk_2222A918B, v182, 2u);
                                                                  }
                                                                }

                                                                if (v121)
                                                                {
                                                                  os_release(v121);
                                                                }

                                                                v62 = v166;
                                                                if (cf[0])
                                                                {
                                                                  v125 = FigTransportStreamGetCMBaseObject();
                                                                  if (v125)
                                                                  {
                                                                    v126 = v125;
                                                                    v127 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                                                                    if (v127)
                                                                    {
                                                                      v127(v126);
                                                                    }
                                                                  }

                                                                  CFRelease(cf[0]);
                                                                  cf[0] = 0;
                                                                }

                                                                if (v103)
                                                                {
                                                                  CFRelease(v103);
                                                                }

                                                                v7 = v162;
                                                                if (v107)
                                                                {
                                                                  CFRelease(v107);
                                                                }

                                                                if (!v18)
                                                                {
                                                                  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
                                                                  {
                                                                    OUTLINED_FUNCTION_2();
                                                                  }

LABEL_338:
                                                                  FigSimpleMutexLock();
                                                                  *(DerivedStorage + 329) = v159;
                                                                  *(DerivedStorage + 330) = !v8;
                                                                  *(DerivedStorage + 192) = CMBaseObject;
                                                                  *(DerivedStorage + 200) = v2;
                                                                  v128 = *(DerivedStorage + 296);
                                                                  v129 = v175;
                                                                  *(DerivedStorage + 296) = v175;
                                                                  if (v129)
                                                                  {
                                                                    CFRetain(v129);
                                                                  }

                                                                  v4 = value;
                                                                  if (v128)
                                                                  {
                                                                    CFRelease(v128);
                                                                  }

                                                                  v130 = *(DerivedStorage + 304);
                                                                  v131 = v174;
                                                                  *(DerivedStorage + 304) = v174;
                                                                  if (v131)
                                                                  {
                                                                    CFRetain(v131);
                                                                  }

                                                                  if (v130)
                                                                  {
                                                                    CFRelease(v130);
                                                                  }

                                                                  FigSimpleMutexUnlock();
                                                                  CMBaseObject = *(DerivedStorage + 330);
                                                                  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
                                                                  ProtocolVTable = CMBaseObjectGetProtocolVTable();
                                                                  if (CMBaseObject)
                                                                  {
                                                                    if (!ProtocolVTable || (v133 = *(ProtocolVTable + 16)) == 0)
                                                                    {
                                                                      v18 = -12788;
                                                                      goto LABEL_352;
                                                                    }

                                                                    if (!*(v133 + 40))
                                                                    {
                                                                      v18 = -12782;
                                                                      goto LABEL_352;
                                                                    }

                                                                    v134 = OUTLINED_FUNCTION_19_2();
                                                                    v18 = v135(v134);
                                                                  }

                                                                  else
                                                                  {
                                                                    if (ProtocolVTable && (v136 = *(ProtocolVTable + 16)) != 0)
                                                                    {
                                                                      if (*(v136 + 24))
                                                                      {
                                                                        v137 = OUTLINED_FUNCTION_19_2();
                                                                        v18 = v138(v137);
                                                                      }

                                                                      else
                                                                      {
                                                                        v18 = -12782;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v18 = -12788;
                                                                    }

                                                                    if (!*(v172 + 8))
                                                                    {
                                                                      APSLogErrorAt();
                                                                      OUTLINED_FUNCTION_2_12();
                                                                      v18 = -16760;
LABEL_374:
                                                                      v8 = Int64;
                                                                      v19 = v167;
                                                                      goto LABEL_375;
                                                                    }
                                                                  }

                                                                  if (!v18)
                                                                  {
                                                                    FigSimpleMutexLock();
                                                                    CMBaseObject = *(DerivedStorage + 352);
                                                                    if (!CMBaseObject || !*(DerivedStorage + 192))
                                                                    {
                                                                      goto LABEL_364;
                                                                    }

                                                                    v2 = FigTransportStreamGetCMBaseObject();
                                                                    v139 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                                                    if (v139)
                                                                    {
                                                                      v140 = v139(v2, *MEMORY[0x277CE5000], CMBaseObject);
                                                                      if (!v140)
                                                                      {
LABEL_364:
                                                                        v141 = *(DerivedStorage + 248);
                                                                        *(DerivedStorage + 248) = v62;
                                                                        if (v62)
                                                                        {
                                                                          CFRetain(v62);
                                                                        }

                                                                        if (v141)
                                                                        {
                                                                          CFRelease(v141);
                                                                        }

                                                                        *(DerivedStorage + 256) = v172;
                                                                        *(DerivedStorage + 208) = 1;
                                                                        FigSimpleMutexUnlock();
                                                                        v18 = APSEventRecorderRecordEvent();
                                                                        CMBaseObject = *(DerivedStorage + 8);
                                                                        CMNotificationCenterGetDefaultLocalCenter();
                                                                        OUTLINED_FUNCTION_13_4();
                                                                        FigDispatchAsyncPostNotification();
                                                                        audioStream_audioHoseNotifyAudioAvailableInternal(v170);
                                                                        goto LABEL_373;
                                                                      }

                                                                      v18 = v140;
                                                                    }

                                                                    else
                                                                    {
                                                                      v18 = -12782;
                                                                    }

                                                                    APSLogErrorAt();
                                                                    FigSimpleMutexUnlock();
LABEL_373:
                                                                    OUTLINED_FUNCTION_2_12();
                                                                    goto LABEL_374;
                                                                  }

LABEL_352:
                                                                  APSLogErrorAt();
                                                                  goto LABEL_373;
                                                                }

                                                                APSLogErrorAt();
LABEL_416:
                                                                v4 = value;
                                                                goto LABEL_374;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v18 = -12782;
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v18 = -12782;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v18 = -12782;
                                                    }
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v18 = -12782;
                                              }

                                              APSLogErrorAt();
                                              v2 = 0;
                                              goto LABEL_316;
                                            }

                                            APSLogErrorAt();
                                            v2 = 0;
LABEL_419:
                                            v18 = -6728;
                                            goto LABEL_316;
                                          }

                                          v18 = v106;
                                        }
                                      }

                                      else
                                      {
                                        v18 = -12782;
                                      }

                                      APSLogErrorAt();
                                      v2 = 0;
                                      v107 = 0;
                                      goto LABEL_316;
                                    }

                                    APSLogErrorAt();
                                    v2 = 0;
                                    v107 = 0;
                                    goto LABEL_419;
                                  }

                                  if (APSGetFBOPropertyInt64())
                                  {
                                    if (gLogCategory_APEndpointStreamBufferedAudio > 60)
                                    {
                                      goto LABEL_213;
                                    }

                                    if (gLogCategory_APEndpointStreamBufferedAudio == -1)
                                    {
                                      OUTLINED_FUNCTION_8();
                                      if (!_LogCategory_Initialize())
                                      {
                                        goto LABEL_213;
                                      }
                                    }

                                    OUTLINED_FUNCTION_11_3();
                                  }

                                  else
                                  {
                                    v60 = *(DerivedStorage + 408);
                                    APSAudioFormatDescriptionGetSampleRate();
                                    if (!APCarPlayAnalyticsInitASRCollection(v60, v61))
                                    {
                                      goto LABEL_213;
                                    }

                                    if (gLogCategory_APEndpointStreamBufferedAudio > 60)
                                    {
                                      goto LABEL_213;
                                    }

                                    if (gLogCategory_APEndpointStreamBufferedAudio == -1)
                                    {
                                      OUTLINED_FUNCTION_8();
                                      if (!_LogCategory_Initialize())
                                      {
                                        goto LABEL_213;
                                      }
                                    }

                                    APSAudioFormatDescriptionGetSampleRate();
                                    OUTLINED_FUNCTION_18_3();
                                  }

                                  OUTLINED_FUNCTION_8();
                                  LogPrintF();
LABEL_213:
                                  if (APCarPlayAnalyticsInitAudioAnomaliesCollection(*(DerivedStorage + 408)))
                                  {
                                    if (gLogCategory_APEndpointStreamBufferedAudio <= 60)
                                    {
                                      if (gLogCategory_APEndpointStreamBufferedAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
                                      {
                                        OUTLINED_FUNCTION_18_3();
                                        OUTLINED_FUNCTION_8();
                                        LogPrintF();
                                      }
                                    }
                                  }

                                  if (APCarPlayAnalyticsInitAudioFormatsCollection(*(DerivedStorage + 408)))
                                  {
                                    if (gLogCategory_APEndpointStreamBufferedAudio <= 60)
                                    {
                                      if (gLogCategory_APEndpointStreamBufferedAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
                                      {
                                        OUTLINED_FUNCTION_18_3();
                                        OUTLINED_FUNCTION_8();
                                        LogPrintF();
                                      }
                                    }
                                  }

                                  APCarPlayAnalyticsStartCollections(*(DerivedStorage + 408), 103, LegacyFormatMask, 0);
                                  CMNotificationCenterGetDefaultLocalCenter();
                                  OUTLINED_FUNCTION_4_11();
                                  FigNotificationCenterAddWeakListener();
                                  goto LABEL_224;
                                }

LABEL_184:
                                APSLogErrorAt();
                                goto LABEL_185;
                              }
                            }

                            else
                            {
                              *v182 = -12782;
                            }
                          }

LABEL_134:
                          APSLogErrorAt();
                          OUTLINED_FUNCTION_20_0();
                          v55 = 0;
                          goto LABEL_187;
                        }

                        APSLogErrorAt();
LABEL_179:
                        v53 = -6728;
                        goto LABEL_180;
                      }

                      v46 = OUTLINED_FUNCTION_17_1(v44, v45, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      if (v46)
                      {
                        v47 = v46;
                        v48 = Int64;
                        if (Int64)
                        {
                          v49 = @"streamConnectionKeyEncryptionSeed";
                        }

                        else
                        {
                          if (!theData)
                          {
                            goto LABEL_106;
                          }

                          v49 = @"streamConnectionKeyUseStreamEncryptionKey";
                          v48 = v40;
                        }

                        CFDictionarySetValue(v46, v49, v48);
LABEL_106:
                        if (v154 == 1601528944)
                        {
                          v50 = kAPEndpointStreamConnectionTransportProtocol_UDP;
                        }

                        else
                        {
                          if (v154 != 1903520099)
                          {
LABEL_111:
                            CFDictionarySetValue(LegacyFormatMask, cf1, v47);
                            CFRelease(v47);
                            goto LABEL_112;
                          }

                          v50 = kAPEndpointStreamConnectionTransportProtocol_QUIC;
                        }

                        CFDictionarySetValue(v47, @"streamConnectionKeyTransportProtocol", *v50);
                        goto LABEL_111;
                      }
                    }

                    APSLogErrorAt();
LABEL_178:
                    v51 = 0;
                    goto LABEL_179;
                  }

                  v18 = v24;
                  APSLogErrorAt();
                  OUTLINED_FUNCTION_2_12();
                  v19 = 0;
                  v8 = Int64;
LABEL_375:
                  a1 = v169;
                  goto LABEL_376;
                }

                v18 = v23;
              }

              else
              {
                v18 = -12782;
              }

              APSLogErrorAt();
              OUTLINED_FUNCTION_2_12();
              v19 = 0;
              v8 = Int64;
              goto LABEL_375;
            }

            v18 = v20;
            goto LABEL_54;
          }

LABEL_154:
          CMBaseObject = "audioStream_resumeInternal";
          APSLogErrorAt();
          v18 = APSSignalErrorAt();
          goto LABEL_55;
        }

        v18 = v17;
      }

      else
      {
        v18 = -12782;
      }

LABEL_54:
      APSLogErrorAt();
LABEL_55:
      OUTLINED_FUNCTION_2_12();
      v8 = 0;
LABEL_56:
      v19 = 0;
      goto LABEL_375;
    }

    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_2();
    }

    goto LABEL_183;
  }

  if (v12)
  {
    CMBaseObject = "audioStream_resumeInternal";
    APSLogErrorAt();
    v18 = APSSignalErrorAt();
    OUTLINED_FUNCTION_1_18();
    goto LABEL_56;
  }

  if (*(DerivedStorage + 97))
  {
    v2 = 0;
    v13 = 1634754932;
    goto LABEL_42;
  }

  if (gLogCategory_APEndpointStreamBufferedAudio > 50)
  {
LABEL_183:
    OUTLINED_FUNCTION_1_18();
    v19 = 0;
    v18 = -6735;
    goto LABEL_375;
  }

  a1 = v169;
  if (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_2();
  }

  OUTLINED_FUNCTION_1_18();
  v19 = 0;
  v18 = -6735;
LABEL_376:
  if (v177)
  {
    CFRelease(v177);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v175)
  {
    CFRelease(v175);
  }

  if (v174)
  {
    CFRelease(v174);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (CMBaseObject)
  {
    v142 = FigTransportStreamGetCMBaseObject();
    if (v142)
    {
      v143 = v142;
      v144 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v144)
      {
        v144(v143);
      }
    }

    CFRelease(CMBaseObject);
  }

  if (v2)
  {
    v145 = FigTransportStreamGetCMBaseObject();
    if (v145)
    {
      v146 = v145;
      v147 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v147)
      {
        v147(v146);
      }
    }

    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v18)
  {
    audioStream_suspendInternal(v170, 0);
  }

  v148 = a1[2];
  if (v148)
  {
    cf[0] = *a1;
    cf[1] = v18;
    v149 = a1[3];
    cf[2] = v148;
    cf[3] = v149;
    CFRetain(cf[0]);
    OUTLINED_FUNCTION_3_12();
    APSDispatchAsyncFHelper();
  }

  audioStream_releaseAsync(*a1);
  v150 = a1[1];
  if (v150)
  {
    CFRelease(v150);
  }
}

uint64_t APEndpointStreamBufferedAudioCreate_cold_4(int a1, _DWORD *a2)
{
  APSLogErrorAt();
  *a2 = a1;
  return APSLogErrorAt();
}

void APEndpointStreamBufferedAudioCreate_cold_8(uint64_t a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t audioStream_audioHoseApplyVolumeFadeInternal_cold_2(uint64_t a1)
{
  APSGetVolumeFadeTypeName();
  time = *(a1 + 12);
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_2();
}

void audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_4(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t audioStream_receivedAudioDataMessage_cold_1(uint64_t a1, void *a2)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamBufferedAudio != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_4_0();
    }
  }

  *a2 = 0;
  return result;
}

uint64_t audioStream_receivedAudioDataMessage_cold_3(uint64_t a1, void *a2)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamBufferedAudio != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_4_0();
    }
  }

  *a2 = 0;
  return result;
}

void audioStream_isPassthroughSupportedForFormatDescription_cold_3(uint64_t a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 10 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t APMessageRingBufferedGetMessageAtIndex()
{
  OUTLINED_FUNCTION_2_13();
  v6 = *(v5 + 16);
  if (v6 == -1)
  {
    if (gLogCategory_APMessageRingBuffered <= 30 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 0;
  }

  else
  {
    v7 = v0;
    result = *v5;
    if (*v5)
    {
      if (v1)
      {
        *v1 = v6;
      }

      if (v2)
      {
        v9 = *(v5 + 1);
        *(v2 + 16) = v5[4];
        *v2 = v9;
      }

      if (v3)
      {
        v10 = *(v7 + 32) + 80 * (v4 % *(v7 + 24));
        v11 = *(v10 + 40);
        *(v3 + 16) = *(v10 + 56);
        *v3 = v11;
      }
    }
  }

  return result;
}

uint64_t APMessageRingBufferedFlush(uint64_t a1, _WORD *a2, _DWORD *a3)
{
  if (a1)
  {
    if (gLogCategory_APMessageRingBuffered <= 50 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = *(a1 + 16);
    if (v6 != *(a1 + 18))
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
      do
      {
        v9 = v6;
        v10 = v6 % v7;
        v11 = v8 + 80 * v10;
        *(v11 + 64) = -1;
        if (*v11)
        {
          CFRelease(*v11);
          v7 = *(a1 + 24);
          v8 = *(a1 + 32);
          v10 = v9 % v7;
          *(v8 + 80 * (v9 % v7)) = 0;
        }

        v12 = *(v8 + 80 * v10 + 8);
        if (v12)
        {
          CFRelease(v12);
          v7 = *(a1 + 24);
          v8 = *(a1 + 32);
          *(v8 + 80 * (v9 % v7) + 8) = 0;
        }

        LOWORD(v6) = v9 + 1;
      }

      while (*(a1 + 18) != (v9 + 1));
    }

    *(a1 + 16) = v6;
    if (a2)
    {
      *a2 = v6;
    }

    if (a3)
    {
      *a3 = *(a1 + 20);
    }
  }

  return 0;
}

void APMessageRingBufferedCreate_cold_3(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

CFDictionaryRef __APSenderStatsCollectorCopySystemStats_block_invoke(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = a1[6];
  v4 = mach_absolute_time();
  v5 = MEMORY[0x277CBECE8];
  if (*(v2 + 112))
  {
    v6 = v4;
    v7 = v4 - *(v2 + 40);
    if (v7 > *(v2 + 32))
    {
      *(v2 + 40) = v4;
      v8 = v7 / *(v2 + 64);
      bzero(&v25, 0x90uLL);
      if (getrusage(0, &v25))
      {
        APSLogErrorAt();
      }

      else
      {
        v9 = v25.ru_utime.tv_usec / 1000000.0 + v25.ru_utime.tv_sec + v25.ru_stime.tv_usec / 1000000.0 + v25.ru_stime.tv_sec;
        v10 = v9 - *(v2 + 96);
        *(v2 + 96) = v9;
        v11 = v10 / v8;
        if (*(v2 + 88))
        {
          *(v2 + 80) = *(v2 + 80) + *(v2 + 72) * (v11 - *(v2 + 80));
        }

        else
        {
          *(v2 + 80) = v11;
          *(v2 + 88) = 1;
        }
      }

      FigCFDictionarySetDouble();
      v26 = 0;
      v25.ru_utime.tv_sec = 0;
      v25.ru_utime.tv_usec = 0;
      Statistics = CARenderServerGetStatistics();
      tv_sec = v26;
      if (v26)
      {
        v14 = Statistics;
        if (Statistics >= 3)
        {
          v15 = 3;
        }

        else
        {
          v15 = Statistics;
        }

        if (Statistics >= 1)
        {
          v23 = v6;
          v16 = 0;
          do
          {
            LODWORD(cf) = 0;
            v17 = strchr(v26[v16], 10);
            if (v17 && sscanf(v17 + 1, " Total Frames: %d", &cf) == 1)
            {
              *(&v25.ru_utime.tv_sec + v16) = cf;
            }

            free(v26[v16++]);
          }

          while (v15 != v16);
          v5 = MEMORY[0x277CBECE8];
          v6 = v23;
          if (v14 >= 4)
          {
            v18 = 3;
            do
            {
              free(v26[v18++]);
            }

            while (v14 != v18);
          }
        }

        free(v26);
        tv_sec = v25.ru_utime.tv_sec;
        v19 = *(&v25.ru_utime.tv_sec + (v15 - (v14 > 0)));
      }

      else
      {
        v19 = 0;
      }

      *(v2 + 104) = tv_sec;
      *(v2 + 108) = v19;
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (v6 - *(v2 + 56) > *(v2 + 48))
      {
        cf = 0;
        APTransportGetSharedTransport();
        CMBaseObject = FigTransportGetCMBaseObject();
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v21 || v21(CMBaseObject, *MEMORY[0x277CE4F30], *v5, &cf))
        {
          if (gLogCategory_APSenderStatsCollector <= 50 && (gLogCategory_APSenderStatsCollector != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        else
        {
          APTransportTrafficRegistrarGetRegistration();
          if (!CFPropertyListCreateFormatted())
          {
            CFDictionarySetValue(*(v2 + 24), @"trafficRegistration", 0);
          }

          if (!APTransportTrafficRegistrarGetRSSI())
          {
            FigCFDictionarySetInt32();
          }

          if (!APTransportTrafficRegistrarGetWifiChannel())
          {
            FigCFDictionarySetInt32();
          }

          APTransportTrafficRegistrarGetAWDLChannelSequence();
          CFDictionaryRemoveValue(*(v2 + 24), @"awdlChannelLength");
          CFDictionaryRemoveValue(*(v2 + 24), @"awdlChannelSeq");
          CFDictionaryRemoveValue(*(v2 + 24), @"awdlChannelFlags");
        }

        if (cf)
        {
          CFRelease(cf);
        }

        *(v2 + 56) = v6;
      }

      if (gLogCategory_APSenderStatsCollector <= 20 && (gLogCategory_APSenderStatsCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  result = CFDictionaryCreateCopy(*v5, *(v2 + 24));
  *v3 = result;
  *(*(a1[4] + 8) + 24) = 0;
  return result;
}

uint64_t APSenderStatsCollectorCopySystemStats_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6705;
  return result;
}

uint64_t APSenderStatsCollectorCopySystemStats_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6705;
  return result;
}

uint64_t audioEngineAVC_audioSourceWriteDataCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  result = FigSimpleMutexTryLock();
  if (result)
  {
    v5 = *(a3 + 48);
    v6 = *(a3 + 64);
    for (i = *(*(CMBaseObjectGetVTable() + 16) + 32); i; i = *(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      if (!i(v5, v6))
      {
        break;
      }

      v34 = 0;
      v8 = *(a3 + 48);
      v9 = *(a3 + 72);
      v10 = *(a3 + 64);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v11 || v11(v8, v9, v10, &v34, &v36, &v41, a3 + 8) || !v34)
      {
        break;
      }

      v12 = *(a3 + 96);
      if (v12 == 0.0)
      {
        v13 = mach_absolute_time();
        *(&v37 + 1) = v13;
        v14 = UpTicksPerSecond();
        v15 = CMTimeMake(&v33, v13, v14);
        v35 = *&v33.timescale;
        OUTLINED_FUNCTION_2_14(v15, *(a3 + 8), v16, *&v33.timescale, v17, v18, v19, v20, v21, v30, v33.value, v31, v32, v33.value);
        value = v33.value;
        v35 = *&v33.timescale;
        *&v37 = v33.value;
      }

      else
      {
        *&v37 = *(a3 + 96);
        CMTimeMake(&v33, v12, *(a3 + 8));
        value = v33.value;
        v35 = *&v33.timescale;
      }

      v23 = UpTicksPerSecond();
      OUTLINED_FUNCTION_2_14(v23, v23, v24, v35, v25, v26, v27, v28, v29, v30, value, v31, v32, v33.value);
      *(&v37 + 1) = v33.value;
      *(a3 + 96) = *&v37 + v36;
      DWORD2(v40) = 3;
      if (FigHALAudioConduitDeviceHALSendAudio())
      {
        break;
      }

      v5 = *(a3 + 48);
      v6 = *(a3 + 64);
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t audioEngineAVC_Resume_cold_4(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t audioEngineAVC_Resume_cold_5(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t audioEngineAVC_Suspend_cold_2()
{
  mach_absolute_time();
  UpTicksPerSecond();
  return OUTLINED_FUNCTION_2();
}

void endpointUGLWrapper_setWrappedEndpoint(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  if (v4 != a2)
  {
    v5 = DerivedStorage;
    if (gLogCategory_APEndpointUGLWrapper <= 50)
    {
      if (gLogCategory_APEndpointUGLWrapper != -1 || OUTLINED_FUNCTION_4())
      {
        OUTLINED_FUNCTION_2();
      }

      v4 = *(v5 + 40);
    }

    if (v4)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_20();
      FigNotificationCenterRemoveWeakListener();
      v6 = *(v5 + 40);
    }

    else
    {
      v6 = 0;
    }

    *(v5 + 40) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (*(v5 + 40))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_20();

      FigNotificationCenterAddWeakListener();
    }
  }
}

uint64_t APEndpointUGLWrapperUpdateWithTransportDevice(uint64_t a1, const void *a2, int a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || OUTLINED_FUNCTION_4()))
  {
    APTransportDeviceGetDiscoveryID();
    OUTLINED_FUNCTION_2();
  }

  if (!a1 || CMBaseObjectGetVTable() != &kAPEndpointUGLWrapperVTable)
  {
    APSLogErrorAt();
    return 4294950576;
  }

  if (a3)
  {
    v7 = epp_copyInner();
    if (!v7)
    {
      return 4294949690;
    }

    goto LABEL_12;
  }

  v7 = endpointUGLWrapper_copyShadowEndpoint();
  if (v7)
  {
LABEL_12:
    v8 = v7;
    v9 = APEndpointUpdateWithTransportDevice(v7, a2);
    CFRelease(v8);
    return v9;
  }

  APSLogErrorAt();
  return 4294950571;
}

void uglWrapper_handleFailedInternal(const void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  v9 = *(DerivedStorage + 68);
  if (!v9)
  {
    return;
  }

  if (*(DerivedStorage + 96))
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v10)
    {
      if (gLogCategory_APEndpointUGLWrapper <= 60 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return;
    }
  }

  else
  {
    v10 = 0;
  }

  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  if (v10)
  {
    CFRetain(v10);
  }

  v11 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __uglWrapper_handleFailedInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_69_0;
  block[4] = a4;
  block[5] = a3;
  block[6] = v9;
  block[7] = a2;
  block[8] = v10;
  block[9] = a1;
  dispatch_async(v11, block);
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t APEndpointUGLWrapperCreate_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17606;
  return result;
}

uint64_t APEndpointUGLWrapperCreate_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16720;
  return result;
}

uint64_t endpointUGLWrapper_updateMXDescriptor_cold_1(int a1)
{
  if (a1 != -1)
  {
    return LogPrintF();
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return LogPrintF();
  }

  return result;
}

void endpointUGLWrapper_createMXDescriptor_cold_1(__CFDictionary *a1, void *value, const void **a3)
{
  CFDictionarySetValue(a1, *MEMORY[0x277D26EA0], value);
  v5 = *a3;
  *a3 = a1;
  CFRetain(a1);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t endpointUGLWrapper_activateInternal_cold_8()
{
  if (gLogCategory_APEndpointUGLWrapper <= 50)
  {
    if (gLogCategory_APEndpointUGLWrapper != -1)
    {
      return OUTLINED_FUNCTION_2();
    }

    result = OUTLINED_FUNCTION_4();
    if (result)
    {
      return OUTLINED_FUNCTION_2();
    }
  }

  return result;
}

uint64_t endpointUGLWrapper_copyUGLServerInfo_cold_1()
{
  if (gLogCategory_APEndpointUGLWrapper > 50)
  {
    return 1;
  }

  if (gLogCategory_APEndpointUGLWrapper != -1 || (result = OUTLINED_FUNCTION_4(), result))
  {
    OUTLINED_FUNCTION_2();
    return 0;
  }

  return result;
}

_BYTE *carManager_invalidateInternal(const void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v3 = result;
    if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_4_1();
    }

    *v3 = 1;
    v4 = v3 + 96;
    AirPlayDebugIPCDisableForEndpointManager(a1);
    for (i = 0; i != 216; i += 72)
    {
      result = *&v4[i];
      if (result)
      {
        result = APBrowserGetCMBaseObject();
        if (result)
        {
          v6 = result;
          VTable = CMBaseObjectGetVTable();
          v8 = *(VTable + 8);
          result = (VTable + 8);
          v9 = *(v8 + 24);
          if (v9)
          {
            result = v9(v6);
          }
        }
      }
    }
  }

  return result;
}

const __CFDictionary *carManager_appendEndpointStreamShowInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    value = CFDictionaryGetValue(result, @"Subtype");
    CFDictionaryGetValue(v1, @"Type");
    CFDictionaryGetInt64();
    CFStringAppendF();
    if (CFDictionaryGetValueIfPresent(v1, @"ScreenInfo", &value) && value)
    {
      v2 = FigCFCopyCompactDescription();
      CFStringAppendF();
      if (v2)
      {
        CFRelease(v2);
      }
    }

    return CFStringAppendF();
  }

  return result;
}

void APEndpointManagerCarPlayCreate_cold_9()
{
  if (gLogCategory_APEndpointManagerCarPlay <= 90 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t __APEndpointManagerCarPlayCreate_block_invoke_cold_1(int a1, uint64_t a2, _DWORD *a3)
{
  APSLogErrorAt();
  *a3 = a1;
  return APSLogErrorAt();
}

void __APEndpointManagerCarPlayCreate_block_invoke_cold_11(_DWORD *a1, const void *a2)
{
  APSLogErrorAt();
  *a1 = -6728;
  CFRelease(a2);
}

uint64_t __APEndpointManagerCarPlayCreate_block_invoke_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16711;
  return result;
}

uint64_t __APEndpointManagerCarPlayCreate_block_invoke_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6762;
  return result;
}

uint64_t __APEndpointManagerCarPlayCreate_block_invoke_cold_14(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16711;
  return result;
}

CFTypeRef __carManager_copyProperty_block_invoke_cold_5(const void *a1)
{
  APSLogErrorAt();

  return CFRetain(a1);
}

uint64_t __carManager_setProperty_block_invoke_cold_3(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*(a1 + 32) + 8) + 24) = -16710;
  return result;
}

void __getCRSSessionControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCRSSessionControllerClass(void)_block_invoke") description:{@"APEndpointManagerCarPlay.m", 77, @"Unable to find class %s", "CRSSessionController"}];
  __break(1u);
}

void __getCRSSessionControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarPlayServicesLibrary(void)") description:{@"APEndpointManagerCarPlay.m", 73, @"%s", *a1}];
  __break(1u);
}

void APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_3(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t sdpsession_stopNetworkClock(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 49))
  {
    v3 = result;
    *(result + 64) = 0;
    v4 = *(result + 32);
    if (v4)
    {
      if (gLogCategory_APSenderSessionSDP <= 40)
      {
        if (gLogCategory_APSenderSessionSDP != -1 || (v5 = _LogCategory_Initialize(), v4 = *(v3 + 32), v5))
        {
          OUTLINED_FUNCTION_6();
          v4 = *(v3 + 32);
        }
      }

      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 16);
      result = VTable + 16;
      v8 = *(v7 + 88);
      if (v8)
      {
        result = v8(v4, a1);
      }

      *(v3 + 49) = 0;
    }

    else
    {

      return APSLogErrorAt();
    }
  }

  return result;
}

uint64_t sdpsession_ensureTransportControlStreamResumedSync(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 132);
  FigSimpleMutexUnlock();
  if (v3)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v4 = sdpsession_ensureTransportControlStreamCreated(a1);
  if (!v4)
  {
    v6 = *(DerivedStorage + 88);
    if (v6)
    {
      v7 = CFRetain(v6);
      FigSimpleMutexUnlock();
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v8)
        {
          v9 = v8(v7);
          if (v9)
          {
            v5 = v9;
          }

          else
          {
            v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v10)
            {
              v5 = v10(v7);
              if (!v5)
              {
                FigSimpleMutexLock();
                *(DerivedStorage + 132) = 1;
                CMNotificationCenterGetDefaultLocalCenter();
                FigNotificationCenterAddWeakListener();
                FigSimpleMutexUnlock();
                CMNotificationCenterGetDefaultLocalCenter();
                FigDispatchAsyncPostNotification();
LABEL_16:
                CFRelease(v7);
                return v5;
              }
            }

            else
            {
              v5 = 4294954514;
            }
          }
        }

        else
        {
          v5 = 4294954514;
        }

        APSLogErrorAt();
        goto LABEL_16;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    APSLogErrorAt();
    return 4294895475;
  }

  v5 = v4;
  FigSimpleMutexUnlock();
  APSLogErrorAt();
  return v5;
}