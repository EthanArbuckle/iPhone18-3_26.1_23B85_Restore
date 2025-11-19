uint64_t streamAggregateAudio_supportedAudioFormatsChangedNotificationListener(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  streamAggregateAudio_updateDynamicProperties(a2, 0);

  return FigSimpleMutexUnlock();
}

uint64_t streamAggregateAudio_activeConfigurationDidBecomeInvalidNotificationListener(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  streamAggregateAudio_updateDynamicProperties(a2, 0);

  return FigSimpleMutexUnlock();
}

uint64_t streamAggregateAudio_subStreamNotificationForwarder()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t streamAggregateAudio_setPropertyForSubStreamsIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigEndpointStreamSetProperty(a2, *a3, *(a3 + 8));
  if (result)
  {
    *(a3 + 16) = result;
  }

  return result;
}

__CFString *streamAggregateAudio_subEndpointAddRemoveObservingProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamAggregateAudio <APSubEndpointAddRemoveObservingProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t streamAggregateAudio_NotifySubEndpointAdded()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  streamAggregateAudio_addSubStreamFromEndpoint();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t streamAggregateAudio_NotifySubEndpointRemoved(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 32), a2);
  if (Value)
  {
    v6 = *(DerivedStorage + 40);
    v13.length = CFArrayGetCount(v6);
    v13.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v13, Value);
    if (FirstIndexOfValue != -1)
    {
      v8 = FirstIndexOfValue;
      FigEndpointStreamSuspend();
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 40), v8);
      if (gLogCategory_APEndpointStreamAggregateAudio > 50)
      {
        goto LABEL_11;
      }

      if (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_11:
  CFDictionaryRemoveValue(*(DerivedStorage + 32), a2);
  streamAggregateAudio_removeSubStreamNotificationListeners();
  if (CFDictionaryGetCount(*(DerivedStorage + 32)) >= 1)
  {
    streamAggregateAudio_updateDynamicProperties(a1, 0);
  }

  v9 = *(DerivedStorage + 128);
  if (Value == v9 && v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 128) = 0;
  }

  if (!*(DerivedStorage + 153) || streamAggregateAudio_getTotalNumberOfAudioStreams() > 2)
  {
    goto LABEL_25;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    streamAggregateAudio_NotifySubEndpointRemoved_cold_2();
LABEL_25:
    FigSimpleMutexUnlock();
    return 0;
  }

  v11 = Mutable;
  FigCFDictionarySetBoolean();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_NotifySubEndpointRemoved_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  FigSimpleMutexUnlock();
  CFRelease(v11);
  return 0;
}

uint64_t streamAggregateAudio_Suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040B3C43913uLL);
  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040EDCEB4C7uLL);
  cf = 0;
  FigSimpleMutexLock();
  *v9 = CFRetain(a1);
  if (a2)
  {
    v11 = CFRetain(a2);
  }

  else
  {
    v11 = 0;
  }

  v9[1] = v11;
  *(v9 + 14) = 0;
  v9[8] = a4;
  v9[9] = a3;
  v12 = APSWrapperCreate();
  v13 = v12;
  if (v12)
  {
    streamAggregateAudio_Suspend_cold_1(v12, &cf);
  }

  else
  {
    v14 = cf;
    if (cf)
    {
      v14 = CFRetain(cf);
    }

    v10[1] = v14;
    *(v10 + 4) = 1;
    if (FigCFDictionaryGetValue())
    {
      CFDictionaryGetInt64Ranged();
      CFDictionarySetInt64();
    }

    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMSimpleQueueEnqueue(*(DerivedStorage + 88), v10);
    streamAggregateAudio_triggerSuspendOrResumeIfNecessary(*v9);
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t streamAggregateAudio_Resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040B3C43913uLL);
  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040EDCEB4C7uLL);
  cf = 0;
  FigSimpleMutexLock();
  *v9 = CFRetain(a1);
  if (a2)
  {
    v11 = CFRetain(a2);
  }

  else
  {
    v11 = 0;
  }

  *(v9 + 1) = v11;
  *(v9 + 4) = 1;
  *(v9 + 41) = 0;
  *(v9 + 14) = 0;
  *(v9 + 8) = a4;
  *(v9 + 9) = a3;
  v12 = APSWrapperCreate();
  if (v12)
  {
    v20 = v12;
    streamAggregateAudio_Resume_cold_1(v12, &cf);
LABEL_20:
    FigSimpleMutexUnlock();
    goto LABEL_15;
  }

  v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v13)
  {
    streamAggregateAudio_Resume_cold_2();
    v20 = 4294950535;
    goto LABEL_20;
  }

  v14 = v13;
  if (*(DerivedStorage + 148))
  {
    v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(DerivedStorage + 96));
    *(v9 + 6) = v15;
    v16 = CFRetain(v14);
    dispatch_set_context(v15, v16);
    dispatch_source_set_event_handler_f(*(v9 + 6), streamAggregateAudio_resumeTimerCallback);
    dispatch_source_set_cancel_handler_f(*(v9 + 6), streamAggregateAudio_resumerTimerCancelled);
    v17 = *(v9 + 6);
    v18 = dispatch_time(0, 1000000 * *(DerivedStorage + 148));
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v9 + 6));
  }

  v19 = cf;
  if (cf)
  {
    v19 = CFRetain(cf);
  }

  v10[1] = v19;
  *(v10 + 4) = 2;
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMSimpleQueueEnqueue(*(DerivedStorage + 88), v10);
  streamAggregateAudio_triggerSuspendOrResumeIfNecessary(*v9);
  FigSimpleMutexUnlock();
  CFRelease(v14);
  v20 = 0;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t streamAggregateAudio_Dissociate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_Dissociate_cold_1();
  }

  v1 = *(DerivedStorage + 40);
  if (v1 && CFArrayGetCount(v1) >= 1 && gLogCategory_APEndpointStreamAggregateAudio <= 90 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_Dissociate_cold_2();
  }

  v2 = *(DerivedStorage + 64);
  if (v2)
  {
    APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(v2);
    v3 = *(DerivedStorage + 64);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 64) = 0;
    }
  }

  *(DerivedStorage + 52) = 1;
  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 208))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  return 0;
}

uint64_t streamAggregateAudio_Control(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    context[0] = a2;
    context[1] = a3;
    CFDictionaryApplyFunction(*(DerivedStorage + 32), streamAggregateAudio_genericCoreCaptureIterator, context);
    return 0;
  }

  else
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 90 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294950536;
  }
}

void streamAggregateAudio_finalizeSharedContextWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_release(v5);
  }

  free(a1);
}

uint64_t streamAggregateAudio_triggerSuspendOrResumeIfNecessary(const void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if ((*(result + 48) | 2) == 2)
  {
    result = CMSimpleQueueGetHead(*(result + 88));
    if (result)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      return APSDispatchAsyncFHelper();
    }
  }

  return result;
}

void streamAggregateAudio_triggerSuspendOrResume(CFTypeRef *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if ((*(DerivedStorage + 48) | 2) != 2)
  {
    goto LABEL_94;
  }

  v3 = CMSimpleQueueDequeue(*(DerivedStorage + 88));
  if (!v3)
  {
    goto LABEL_94;
  }

  v4 = v3;
  v5 = *a1;
  CMBaseObjectGetDerivedStorage();
  APSWrapperGetValue();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = v4[4];
  if (v6 == 1)
  {
    v13 = *(v4 + 1);
    v14 = CMBaseObjectGetDerivedStorage();
    Value = APSWrapperGetValue();
    *bytes = 0;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(Value + 24) = FigCFDictionaryGetCount();
    v16 = *(v14 + 48);
    if (v16)
    {
      v17 = *MEMORY[0x277CBECE8];
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v19 = MutableCopy;
        contexta = v13;
        v20 = CFDictionaryGetValue(MutableCopy, @"HoseRegistrar");
        CFDictionaryGetInt64();
        v21 = *(v14 + 80);
        if (v21 && v20 && !CFEqual(v21, v20))
        {
          streamAggregateAudio_triggerSuspendOrResume_cold_2(v5, &v59);
          v50 = v59;
        }

        else
        {
          streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(v5, 1u);
          if (*(v14 + 52))
          {
            streamAggregateAudio_triggerSuspendOrResume_cold_1();
            v50 = -16762;
          }

          else
          {
            v22 = *(v14 + 64);
            if (v22)
            {
              v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v23)
              {
                v23(v22, @"PrimaryPacketDropCount", v17, bytes);
              }

              CFGetInt64();
              APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(*(v14 + 64));
              v24 = *(v14 + 64);
              if (v24)
              {
                CFRelease(v24);
                *(v14 + 64) = 0;
              }
            }

            CFDictionarySetInt64();
            v25 = *(Value + 8);
            *(Value + 8) = v19;
            CFRetain(v19);
            if (v25)
            {
              CFRelease(v25);
            }

            *(v14 + 16) = 0;
            if (*(Value + 24) >= 1)
            {
              CFDictionaryApplyFunction(*(v14 + 32), streamAggregateAudio_suspendSubStreamIterator, contexta);
              goto LABEL_39;
            }

            v50 = 0;
          }
        }

        *(Value + 56) = v50;
        streamAggregateAudio_suspendCompletion();
LABEL_39:
        CFRelease(v19);
        v26 = *bytes;
        if (!*bytes)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      streamAggregateAudio_triggerSuspendOrResume_cold_3();
      v16 = -16761;
    }

    *(Value + 56) = v16;
    streamAggregateAudio_suspendCompletion();
    goto LABEL_91;
  }

  if (v6 != 2)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 90 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_triggerSuspendOrResume_cold_12();
    }

    streamAggregateAudio_triggerSuspendOrResumeIfNecessary(v5);
    goto LABEL_91;
  }

  v7 = *(v4 + 1);
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = APSWrapperGetValue();
  context = v9;
  cf = 0;
  if (*(v8 + 48) == 2)
  {
    v45 = 0;
    Mutable = 0;
    v11 = 0;
LABEL_118:
    v49 = 0;
    goto LABEL_128;
  }

  v10 = v9;
  streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(v5, 3u);
  allocator = *MEMORY[0x277CBECE8];
  v11 = FigCFDictionaryCreateMutableCopy();
  v51 = CFDictionaryGetValue(v11, @"HoseRegistrar");
  if (v51)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
  }

  else
  {
    Int64Ranged = 0;
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Int64 = CFDictionaryGetInt64();
  if (Int64 && !*(v8 + 18))
  {
    streamAggregateAudio_triggerSuspendOrResume_cold_11(v5);
LABEL_127:
    v45 = 0;
    Mutable = 0;
    v49 = -6735;
LABEL_128:
    context[14] = v49;
    streamAggregateAudio_resumeCallClientCallback();
    streamAggregateAudio_resumeCompletion(v7);
    if (!v11)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  *(v8 + 16) = Int64 != 0;
  v28 = CFDictionaryGetInt64();
  if (v28 && !*(v8 + 19))
  {
    streamAggregateAudio_triggerSuspendOrResume_cold_10(v5);
    goto LABEL_127;
  }

  *(v8 + 17) = v28 != 0;
  if (Int64Ranged)
  {
    v45 = 0;
    Mutable = 0;
    goto LABEL_118;
  }

  *(v10 + 24) = FigCFDictionaryGetCount();
  *(v10 + 32) = 1;
  if (*(v8 + 52))
  {
    streamAggregateAudio_triggerSuspendOrResume_cold_4();
    v45 = 0;
    Mutable = 0;
    v49 = -16762;
    goto LABEL_128;
  }

  v59 = 0;
  RandomBytes();
  v29 = CFDataCreate(allocator, bytes, 32);
  v30 = APSCryptorChaCha20Poly1305Create();
  if (v30)
  {
    v49 = v30;
    streamAggregateAudio_triggerSuspendOrResume_cold_5(v30, v29, &v59);
    v45 = 0;
    Mutable = 0;
    goto LABEL_128;
  }

  v54 = v29;
  theDict = v11;
  v53 = v7;
  if (gLogCategory_APEndpointStreamAggregateAudio <= 40 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_triggerSuspendOrResume_cold_6();
  }

  v31 = CMBaseObjectGetDerivedStorage();
  v32 = *MEMORY[0x277CC1960];
  v33 = FigCFEqual();
  v34 = *MEMORY[0x277CC1968];
  v35 = FigCFEqual();
  v36 = FigCFEqual();
  if (*(v31 + 200) && *(v31 + 201) && (v33 || v35 && !v36) && gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v37 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(*(v37 + 192), v32) || CFEqual(*(v37 + 192), v34))
  {
    Mutable = 0;
    v11 = theDict;
    v7 = v53;
LABEL_64:
    v39 = context;
    goto LABEL_65;
  }

  v39 = context;
  if (CFEqual(*(v37 + 192), *MEMORY[0x277CC1970]) && *(v37 + 203) && APSSettingsGetIntWithDefault() && APSSettingsGetIntWithDefault() && !APSGetAllowPersistentGroupsOnInfra() && !APSIsVirtualMachine())
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      streamAggregateAudio_triggerSuspendOrResume_cold_9();
      v49 = -16761;
      v11 = theDict;
      v7 = v53;
      goto LABEL_124;
    }

    v11 = theDict;
    CFDictionaryGetValue(theDict, @"BBufBackingProvider");
    FigCFDictionarySetValue();
    v47 = APEndpointStreamAudioHoseAggregateCreate(allocator, v51, Mutable, &cf);
    v7 = v53;
    if (v47)
    {
      v49 = v47;
      streamAggregateAudio_triggerSuspendOrResume_cold_7();
      goto LABEL_124;
    }

    v48 = APEndpointStreamAudioHoseAggregateRegisterWithParentRegistrar(cf);
    if (v48)
    {
      v49 = v48;
      streamAggregateAudio_triggerSuspendOrResume_cold_8();
      goto LABEL_124;
    }

    CFDictionarySetValue(theDict, @"IsAudioDataAggregated", *MEMORY[0x277CBED28]);
    CFDictionarySetValue(theDict, @"HoseRegistrar", cf);
    *(v8 + 64) = cf;
    cf = 0;
    goto LABEL_64;
  }

  Mutable = 0;
  v11 = theDict;
  v7 = v53;
LABEL_65:
  v40 = *(v8 + 56);
  *(v8 + 56) = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  v41 = v39[1];
  v39[1] = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  v42 = v39[2];
  v43 = *(v8 + 136);
  v39[2] = v43;
  if (v43)
  {
    CFRetain(v43);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  v44 = *(v8 + 72);
  *(v8 + 72) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v39[3] < 1)
  {
    v49 = 0;
LABEL_124:
    v45 = v54;
    goto LABEL_128;
  }

  CFDictionaryApplyFunction(*(v8 + 32), streamAggregateAudio_resumeSubStreamIterator, v7);
  v45 = v54;
  if (v11)
  {
LABEL_83:
    CFRelease(v11);
  }

LABEL_84:
  if (v45)
  {
    CFRelease(v45);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!Mutable)
  {
    goto LABEL_91;
  }

  v26 = Mutable;
LABEL_90:
  CFRelease(v26);
LABEL_91:
  v46 = *(v4 + 1);
  if (v46)
  {
    CFRelease(v46);
  }

  free(v4);
LABEL_94:
  FigSimpleMutexUnlock();
  if (*a1)
  {
    CFRelease(*a1);
  }
}

void streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(uint64_t a1, unsigned int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = streamAggregateAudio_isInUse(a2);
  v5 = streamAggregateAudio_isInUse(*(DerivedStorage + 48));
  if (*(DerivedStorage + 48) == 3 && (a2 == 4 || a2 == 2))
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 30 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_setResumptionStageAndNotifyIfNeeded_cold_1();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  if (v5 == v4)
  {
    goto LABEL_17;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = MEMORY[0x277CBED10];
    if (v4)
    {
      v8 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsInUse", *v8);
    if (gLogCategory_APEndpointStreamAggregateAudio <= 30 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v7);
LABEL_17:
    *(DerivedStorage + 48) = a2;
    return;
  }

  streamAggregateAudio_setResumptionStageAndNotifyIfNeeded_cold_2();
}

uint64_t streamAggregateAudio_resumeSubStreamIterator(uint64_t a1, uint64_t a2, CFTypeRef a3)
{
  Value = APSWrapperGetValue();
  v6 = *(Value + 16);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v8(CMBaseObject, *MEMORY[0x277CC1868], v6);
  }

  v9 = *(Value + 8);
  if (a3)
  {
    a3 = CFRetain(a3);
  }

  VTable = CMBaseObjectGetVTable();
  v12 = *(VTable + 16);
  result = VTable + 16;
  v13 = *(v12 + 16);
  if (v13)
  {

    return v13(a2, v9, streamAggregateAudio_resumeSubStreamCallback, a3);
  }

  return result;
}

void streamAggregateAudio_resumeCallClientCallback()
{
  Value = APSWrapperGetValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_resumeCallClientCallback_cold_1();
  }

  v2 = *(DerivedStorage + 56);
  if (v2)
  {
    v3 = *(DerivedStorage + 80);
    v4 = CFDictionaryGetValue(v2, @"HoseRegistrar");
    *(DerivedStorage + 80) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  CFRetain(*Value);
  APSDispatchAsyncFHelper();
  streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(*Value, 4u);
}

void streamAggregateAudio_resumeCompletion()
{
  Value = APSWrapperGetValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(Value + 56))
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = *(DerivedStorage + 64);
    if (v3 && (APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(v3), (v4 = *(DerivedStorage + 64)) != 0))
    {
      CFRelease(v4);
      v2 = 0;
      *(DerivedStorage + 64) = 0;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_resumeCompletion_cold_1();
    }

    v2 = 2;
  }

  streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(*Value, v2);
  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 72) = 0;
  }

  streamAggregateAudio_triggerSuspendOrResumeIfNecessary(*Value);
  v6 = *(Value + 48);
  if (v6)
  {
    dispatch_source_cancel(*(Value + 48));
    dispatch_release(v6);
    *(Value + 48) = 0;
  }
}

void streamAggregateAudio_resumeSubStreamCallback(const void *a1, int a2, const void *a3)
{
  Value = APSWrapperGetValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  *(Value + 24) = vaddq_s64(*(Value + 24), v8);
  if (a2)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio > 90 || gLogCategory_APEndpointStreamAggregateAudio == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v9 = *(DerivedStorage + 40);
  v11.length = CFArrayGetCount(v9);
  v11.location = 0;
  if (CFArrayGetFirstIndexOfValue(v9, v11, a1) != -1)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio > 50 || gLogCategory_APEndpointStreamAggregateAudio == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_13;
    }

LABEL_8:
    LogPrintF();
    goto LABEL_13;
  }

  CFArrayAppendValue(*(DerivedStorage + 40), a1);
LABEL_13:
  if (*(Value + 41) && *(Value + 32) < 1 || *(Value + 24) <= 0)
  {
    if (!*(Value + 40))
    {
      streamAggregateAudio_resumeCallClientCallback();
      *(Value + 40) = 1;
    }

    if (*(Value + 24) <= 0)
    {
      streamAggregateAudio_resumeCompletion();
    }
  }

  FigSimpleMutexUnlock();
  if (a3)
  {

    CFRelease(a3);
  }
}

void streamAggregateAudio_streamNotificationQueueCallback(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v2(*a1, *(a1 + 8), *(a1 + 16));
  }

  v3 = *a1;

  CFRelease(v3);
}

uint64_t streamAggregateAudio_suspendSubStreamIterator(uint64_t a1, uint64_t a2, CFTypeRef a3)
{
  v5 = *(APSWrapperGetValue() + 8);
  if (a3)
  {
    a3 = CFRetain(a3);
  }

  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 8);
  if (v9)
  {

    return v9(a2, v5, streamAggregateAudio_suspendSubStreamCallback, a3);
  }

  return result;
}

uint64_t streamAggregateAudio_suspendCompletion()
{
  Value = APSWrapperGetValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_suspendCompletion_cold_1();
  }

  if (*(DerivedStorage + 48) == 1)
  {
    streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(*Value, 0);
    v2 = *(DerivedStorage + 56);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 56) = 0;
    }

    v3 = *(DerivedStorage + 80);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 80) = 0;
    }
  }

  CFRetain(*Value);
  APSDispatchAsyncFHelper();
  if (!*(DerivedStorage + 48) && !*(Value + 14))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v4 = FigCFDictionaryGetValue();
  if (v4)
  {
    v5 = v4;
    if (CFDictionaryGetInt64Ranged() > 1)
    {
      CFDictionarySetInt64();
    }

    else
    {
      CFDictionaryRemoveValue(*(DerivedStorage + 104), v5);
    }
  }

  return streamAggregateAudio_triggerSuspendOrResumeIfNecessary(*Value);
}

void streamAggregateAudio_suspendSubStreamCallback(const void *a1, int a2, const void *a3)
{
  Value = APSWrapperGetValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  --*(Value + 24);
  v8 = *(DerivedStorage + 40);
  v11.length = CFArrayGetCount(v8);
  v11.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v11, a1);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 40), FirstIndexOfValue);
  }

  if (a2 != -16762)
  {
    *(Value + 56) = a2;
  }

  if (*(Value + 24) <= 0)
  {
    streamAggregateAudio_suspendCompletion();
  }

  FigSimpleMutexUnlock();
  if (a3)
  {

    CFRelease(a3);
  }
}

void streamAggregateAudio_resumerTimerCancelled(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t streamAggregateAudio_genericCoreCaptureIterator(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 40);
  if (v9)
  {

    return v9(a2, v4, v5);
  }

  return result;
}

uint64_t streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStream = FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a3)
  {
    FigSimpleMutexLock();
    if (CFEqual(*(DerivedStorage + 192), *MEMORY[0x277CC1968]))
    {
      v6 = streamAggregateAudio_copySupportedAudioFormatForBufferAudio(FigEndpointStream, &cf);
      if (v6)
      {
        v11 = v6;
        streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_1();
      }

      else if (*(DerivedStorage + 153) && streamAggregateAudio_getTotalNumberOfAudioStreams() >= 3)
      {
        v7 = APSAudioFormatDescriptionListCreate();
        if (v7)
        {
          v11 = v7;
          streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_2();
        }

        else
        {
          v8 = APSAudioFormatDescriptionListAddSupportedFormatsForALACToList();
          if (v8)
          {
            v11 = v8;
            streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_3();
          }

          else
          {
            v9 = APSAudioFormatDescriptionListAddSupportedEncryptedALACFormatsForPassthrough();
            if (v9)
            {
              v11 = v9;
              streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_4();
            }

            else
            {
              RelativeComplementList = APSAudioFormatDescriptionListCreateRelativeComplementList();
              if (RelativeComplementList)
              {
                v11 = RelativeComplementList;
                streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_5();
              }

              else
              {
                if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
                {
                  streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_6();
                }

                v11 = APSAudioFormatDescriptionListCopyTransportFormatDescriptionForSourceFormatDescription();
                if (v11)
                {
                  streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_7();
                }
              }
            }
          }
        }
      }

      else
      {
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_8();
        }

        v11 = APSAudioFormatDescriptionListCopyTransportFormatDescriptionForSourceFormatDescription();
        if (v11)
        {
          streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_9();
        }
      }
    }

    else
    {
      streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_10();
      v11 = 4294954514;
    }
  }

  else
  {
    streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_11();
    v11 = 4294950536;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t streamAggregateAudio_isPassthroughSupportedForFormatDescription(uint64_t a1, uint64_t a2, char *a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  CMBaseObjectGetDerivedStorage();
  v12 = 1;
  FigSimpleMutexLock();
  if (a3)
  {
    v5 = FigCFDictionaryCopyArrayOfValues();
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        FigEndpointStreamAirPlayGetClassID();
        if (!CMBaseObjectIsMemberOfClass() || !ValueAtIndex)
        {
          break;
        }

        v10 = *(*(CMBaseObjectGetVTable() + 24) + 32);
        if (!v10 || v10(ValueAtIndex, a2, &v12))
        {
          if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v12 = 0;
LABEL_20:
          if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_27;
        }

        if (!v12)
        {
          goto LABEL_20;
        }

        if (v7 == ++v8)
        {
          goto LABEL_27;
        }
      }

      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v12 = 0;
    }

LABEL_27:
    *a3 = v12;
    FigSimpleMutexUnlock();
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    streamAggregateAudio_isPassthroughSupportedForFormatDescription_cold_1();
    return 4294950536;
  }
}

void __streamAggregateAudio_registerForAirPlayPrefsChangedNotification_block_invoke(uint64_t a1)
{
  dispatch_get_context(*(a1 + 32));
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      __streamAggregateAudio_registerForAirPlayPrefsChangedNotification_block_invoke_cold_1();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v2);
  }
}

void streamAggregateAudio_addSubStream(void *a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v18 = 0;
  if (CFDictionaryContainsKey(*(DerivedStorage + 32), a2))
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 30 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_addSubStream_cold_1();
    }

    return;
  }

  if (APSGetFBOPropertyInt64())
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_addSubStream_cold_2();
    }

    v7 = *(DerivedStorage + 128);
    if (v7 && gLogCategory_APEndpointStreamAggregateAudio <= 90)
    {
      if (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      v7 = *(DerivedStorage + 128);
    }

    *(DerivedStorage + 128) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    CFDictionaryApplyFunction(*(DerivedStorage + 120), streamAggregateAudio_setPropertyForLocalSubStreamIterator, a1);
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigCFDictionarySetValue();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  streamAggregateAudio_updateDynamicProperties(a1, &v18);
  CFDictionaryApplyFunction(*(DerivedStorage + 112), streamAggregateAudio_setPropertiesForSubStreamIterator, a3);
  if (*(DerivedStorage + 153) && streamAggregateAudio_getTotalNumberOfAudioStreams() >= 3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      streamAggregateAudio_addSubStream_cold_4();
      goto LABEL_58;
    }

    v9 = Mutable;
    FigCFDictionarySetBoolean();
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_addSubStream_cold_3();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(DerivedStorage + 48);
  if (v10 != 2 || v18)
  {
    if ((v10 - 3) > 1)
    {
      return;
    }

    v14 = *(DerivedStorage + 72);
    if (v14)
    {
      v14 = CFRetain(v14);
    }

    cf = v14;
    Value = APSWrapperGetValue();
    ++Value[3];
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50)
    {
      if (gLogCategory_APEndpointStreamAggregateAudio != -1 || (Value = _LogCategory_Initialize(), Value))
      {
        Value = LogPrintF();
      }
    }

LABEL_54:
    if (cf)
    {
      streamAggregateAudio_resumeSubStreamIterator(Value, a3, cf);
    }

    if (!v9)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040B3C43913uLL);
  *v11 = CFRetain(a1);
  v12 = *(DerivedStorage + 56);
  if (v12)
  {
    v12 = CFRetain(v12);
  }

  v11[1] = v12;
  v13 = *(DerivedStorage + 136);
  if (v13)
  {
    v13 = CFRetain(v13);
  }

  v11[2] = v13;
  v11[3] = 1;
  *(v11 + 14) = 0;
  v11[8] = 0;
  v11[9] = 0;
  streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(a1, 4u);
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v16 = APSWrapperCreate();
  if (!v16)
  {
    v17 = *(DerivedStorage + 72);
    Value = cf;
    *(DerivedStorage + 72) = cf;
    if (Value)
    {
      Value = CFRetain(Value);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    goto LABEL_54;
  }

  streamAggregateAudio_addSubStream_cold_5(v16, &cf);
  if (v9)
  {
LABEL_57:
    CFRelease(v9);
  }

LABEL_58:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t streamAggregateAudio_setPropertiesForSubStreamIterator(uint64_t a1, uint64_t a2)
{
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 56);
  if (v8)
  {

    return v8(CMBaseObject, a1, a2);
  }

  return result;
}

uint64_t APEndpointManagerPlusCreate(int a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a2)
  {
    APEndpointManagerPlusCreate_cold_4();
    return 4294950586;
  }

  if (!a3)
  {
    APEndpointManagerPlusCreate_cold_3();
    return 4294950586;
  }

  v6 = *MEMORY[0x277CBECE8];
  FigEndpointManagerGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v12 = v7;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = a1;
    *(DerivedStorage + 8) = CFRetain(a2);
    *(DerivedStorage + 112) = dispatch_get_global_queue(0, 0);
    *(DerivedStorage + 120) = FigSimpleMutexCreate();
    *(DerivedStorage + 24) = FigSimpleMutexCreate();
    v9 = MEMORY[0x277CBF138];
    v10 = MEMORY[0x277CBF150];
    *(DerivedStorage + 56) = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 64) = CFDictionaryCreateMutable(v6, 0, v9, v10);
    *(DerivedStorage + 72) = CFDictionaryCreateMutable(v6, 0, v9, v10);
    *(DerivedStorage + 80) = CFSetCreateMutable(v6, 0, MEMORY[0x277CBF158]);
    *(DerivedStorage + 88) = CFDictionaryCreateMutable(v6, 0, v9, v10);
    if (a1 == 1)
    {
      APEndpointManagerPlusCreate_cold_1(&cf);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v11 = cf;
    APSIntrospectorAddCommand();
    AirPlayDebugIPCEnableForEndpointManager(v11);
    if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
    {
      APEndpointManagerPlusCreate_cold_2();
    }

    v12 = 0;
    *a3 = cf;
  }

  return v12;
}

uint64_t emp_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    emp_Invalidate_cold_1();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 32))
  {
    emp_Invalidate_cold_2();
  }

  else
  {
    *(DerivedStorage + 32) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    [*(DerivedStorage + 16) setCachedDeviceFoundHandler:0];
    [*(DerivedStorage + 16) setCachedDeviceLostHandler:0];
    [*(DerivedStorage + 16) invalidate];
    CFDictionaryRemoveAllValues(*(DerivedStorage + 56));
    CFDictionaryRemoveAllValues(*(DerivedStorage + 64));
    CFDictionaryRemoveAllValues(*(DerivedStorage + 72));
    CFSetRemoveAllValues(*(DerivedStorage + 80));
    CFDictionaryRemoveAllValues(*(DerivedStorage + 88));
    v3 = *(DerivedStorage + 128);
    if (v3)
    {
      dispatch_source_cancel(*(DerivedStorage + 128));
      dispatch_release(v3);
      *(DerivedStorage + 128) = 0;
    }

    v4 = *(DerivedStorage + 96);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 96) = 0;
    }

    v5 = *(DerivedStorage + 104);
    if (v5)
    {
      dispatch_source_cancel(*(DerivedStorage + 104));
      dispatch_release(v5);
      *(DerivedStorage + 104) = 0;
    }

    AirPlayDebugIPCDisableForEndpointManager(a1);
  }

  FigSimpleMutexUnlock();
  v6 = *(DerivedStorage + 8);
  if (!v6)
  {
    return 4294954516;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6);
}

void emp_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    emp_Finalize_cold_1();
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  *(DerivedStorage + 16) = 0;
  FigSimpleMutexDestroy();
  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 40) = 0;
  }

  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 56) = 0;
  }

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

  v9 = *(DerivedStorage + 96);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 96) = 0;
  }

  v10 = *(DerivedStorage + 104);
  if (v10)
  {
    dispatch_source_cancel(*(DerivedStorage + 104));
    dispatch_release(v10);
    *(DerivedStorage + 104) = 0;
  }

  v11 = *(DerivedStorage + 112);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 112) = 0;
  }

  FigSimpleMutexDestroy();

  *(DerivedStorage + 136) = 0;
}

uint64_t emp_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 30 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, a2, a3);
}

uint64_t FigEndpointManagerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t emp_forEachEndpoint(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25[0] = &unk_283584430;
  v25[1] = &unk_283584448;
  v26 = *(DerivedStorage + 56);
  v25[2] = &unk_283584460;
  v27 = *(DerivedStorage + 72);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:v25 count:3];
  result = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  v13 = result;
  if (result)
  {
    v12 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{objc_msgSend(obj, "objectForKeyedSubscript:", v6)}];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v16;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(v7);
              }

              (*(a2 + 16))(a2, [v6 unsignedIntValue], *(*(&v15 + 1) + 8 * i), objc_msgSend(v7, "objectForKeyedSubscript:", *(*(&v15 + 1) + 8 * i)));
            }

            v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v13);
      result = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      v13 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __emp_getAllowCachedEndpointsAlways_block_invoke()
{
  result = APSSettingsGetBooleanIfPresent();
  if (dword_280FB1478 <= 50)
  {
    if (dword_280FB1478 != -1)
    {
      return __emp_getAllowCachedEndpointsAlways_block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __emp_getAllowCachedEndpointsAlways_block_invoke_cold_1();
    }
  }

  return result;
}

id emp_introspector_copyDescription(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"[0x%04X] APEndpointManagerPlus", CUObfuscatedPtr()];
  if (*(DerivedStorage + 32))
  {
    [v3 appendString:@" INVALIDATED"];
  }

  [v3 appendString:@"\n"];
  if (*DerivedStorage == 1)
  {
    v5 = *MEMORY[0x277CC0C68];
  }

  else
  {
    v5 = 0;
  }

  [v3 appendFormat:@"Type:                %@\n", v5];
  [v3 appendFormat:@"Inner:               [0x%04X]\n", CUObfuscatedPtr()];
  [v3 appendFormat:@"Local ID:            %@\n", *(DerivedStorage + 40)];
  [v3 appendFormat:@"Local Cluster ID:    %@\n", *(DerivedStorage + 48)];
  [v3 appendFormat:@"Discovery Mode:      %@\n", *(DerivedStorage + 96)];
  [v3 appendString:@"\n"];
  [v3 appendString:@"Available Endpoints:\n"];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __emp_introspector_copyDescription_block_invoke;
  v48[3] = &unk_27849DDE8;
  v48[4] = v3;
  emp_forEachEndpoint(a1, v48);
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"Cacheable Device IDs: %lu\n", CFSetGetCount(*(DerivedStorage + 80))];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = *(DerivedStorage + 80);
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v3 appendFormat:@"    %@\n", *(*(&v44 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v8);
  }

  [v3 appendString:@"\n"];
  v31 = DerivedStorage;
  v11 = *(DerivedStorage + 88);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v40 + 1) + 8 * j);
        v17 = [v11 objectForKeyedSubscript:v16];
        v18 = [v4 objectForKeyedSubscript:v17];
        if (!v18)
        {
          v18 = [MEMORY[0x277CBEB18] array];
          [v4 setObject:v18 forKeyedSubscript:v17];
        }

        [v18 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v13);
  }

  [v3 appendFormat:@"Cacheable Cluster IDs: %lu\n", objc_msgSend(v4, "count")];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = [v4 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v4);
        }

        v23 = *(*(&v36 + 1) + 8 * k);
        [v3 appendFormat:@"    %@\n", v23];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v24 = [v4 objectForKeyedSubscript:v23];
        v25 = [v24 countByEnumeratingWithState:&v32 objects:v49 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v33;
          do
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v33 != v27)
              {
                objc_enumerationMutation(v24);
              }

              [v3 appendFormat:@"        %@\n", *(*(&v32 + 1) + 8 * m)];
            }

            v26 = [v24 countByEnumeratingWithState:&v32 objects:v49 count:16];
          }

          while (v26);
        }
      }

      v20 = [v4 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v20);
  }

  [v3 appendString:@"\n"];
  v29 = [*(v31 + 16) copyDescription];
  [v3 appendFormat:@"%@\n", v29];

  return v3;
}

uint64_t __emp_introspector_copyDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v22 = 0;
  v20 = 0;
  cf = 0;
  EndpointType = APEndpointPlusUtils_GetEndpointType();
  TypeString = APEndpointPlusUtils_GetTypeString(EndpointType);
  v19 = 0;
  APEndpointPlusCopyInner(a4, &v19);
  v8 = *MEMORY[0x277CBECE8];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, *MEMORY[0x277CC1368], v8, &v22);
  }

  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x277CC1450], v8, &cf);
  }

  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, *MEMORY[0x277CC1440], v8, &v20);
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = CUObfuscatedPtr();
  v17 = [v15 stringWithFormat:@"[0x%04X]->[0x%04X] %s %@ '%@' %@", v16, CUObfuscatedPtr(), TypeString, v22, cf, v20];
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return [v5 appendFormat:@"    %@\n", v17];
}

uint64_t emp_CreateAggregateEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 30 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(DerivedStorage + 8);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t emp_CopyRemoteControlDepotEndpoint(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 30 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    emp_CopyRemoteControlDepotEndpoint_cold_1();
  }

  v4 = *(DerivedStorage + 8);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v4, a2);
}

uint64_t __emp_restartCachePromotionDeadlineIfNecessary_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 40 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    __emp_restartCachePromotionDeadlineIfNecessary_block_invoke_cold_1();
  }

  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __emp_evictAllCachedEndpoints_block_invoke;
  v3[3] = &__block_descriptor_40_e47_v28__0i8____CFString__12__OpaqueFigEndpoint__20l;
  v3[4] = v1;
  emp_forEachEndpoint(v1, v3);
  return FigSimpleMutexUnlock();
}

uint64_t __emp_getCachePromotionDeadlineDuration_block_invoke()
{
  result = APSSettingsGetUInt64IfPresent();
  if (dword_280FB1478 <= 50)
  {
    if (dword_280FB1478 != -1)
    {
      return __emp_getCachePromotionDeadlineDuration_block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __emp_getCachePromotionDeadlineDuration_block_invoke_cold_1();
    }
  }

  return result;
}

void __emp_evictAllCachedEndpoints_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (APSGetFBOPropertyInt64())
  {
    v6 = *(a1 + 32);

    emp_evictCachedEndpoint(v6, a4);
  }
}

void emp_evictCachedEndpoint(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  EndpointType = APEndpointPlusUtils_GetEndpointType();
  v32 = 0;
  cf = 0;
  if (EndpointType == 2)
  {
    v31 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x277CC14E8], *MEMORY[0x277CBECE8], &v31);
      v8 = v31;
    }

    else
    {
      v8 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v8);
          }

          emp_evictCachedEndpoint(a1, *(*(&v27 + 1) + 8 * i));
        }

        v17 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v17);
    }

    v20 = v31;
    if (!v31)
    {
      goto LABEL_24;
    }

LABEL_23:
    CFRelease(v20);
    goto LABEL_24;
  }

  v9 = EndpointType;
  v10 = *MEMORY[0x277CBECE8];
  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x277CC1368], v10, &cf);
  }

  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, *MEMORY[0x277CC1450], v10, &v32);
  }

  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    TypeString = APEndpointPlusUtils_GetTypeString(v9);
    v25 = cf;
    v26 = v32;
    v23 = TypeString;
    v24 = a2;
    v21 = a1;
    v22 = "EVICT";
    LogPrintF();
  }

  [*(DerivedStorage + 16) evictCachedDeviceWithID:{cf, v21, v22, v23, v24, v25, v26}];
  v20 = cf;
  if (cf)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v32)
  {
    CFRelease(v32);
  }
}

void __emp_setupCache_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(a2);
  if (v5)
  {
    v6 = v5;
    CFSetRemoveValue(*(DerivedStorage + 80), v5);
    v7 = APEndpointPlusUtils_CopyClusterIDFromBonjourInfo();
    if (v7)
    {
      emp_removeCachedEndpointWithType(v3, a2, v7, 2);
    }

    Value = CFDictionaryGetValue(*(DerivedStorage + 88), v6);
    if (Value)
    {
      v9 = CFRetain(Value);
      if (v9)
      {
        CFDictionaryRemoveValue(*(DerivedStorage + 88), v6);
        emp_removeCachedEndpointWithType(v3, a2, v9, 2);
      }
    }

    else
    {
      v9 = 0;
    }

    emp_removeCachedEndpointWithType(v3, a2, v6, 1);
    emp_removeCachedEndpointWithType(v3, a2, v6, 3);
    FigSimpleMutexUnlock();
    CFRelease(v6);
    if (v7)
    {
      CFRelease(v7);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }

  else
  {
    __emp_setupCache_block_invoke_2_cold_1();
  }
}

uint64_t __emp_setupCache_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (dword_280FB1478 <= 90)
    {
      if (dword_280FB1478 != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  return result;
}

uint64_t emp_removeCachedEndpointWithType(uint64_t a1, const __CFDictionary *a2, const void *a3, int a4)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 56;
  if (a4 == 3)
  {
    v9 = 64;
  }

  if (a4 == 2)
  {
    v9 = 72;
  }

  v10 = *(DerivedStorage + v9);
  v11 = APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(a2);
  if (v11)
  {
    v12 = v11;
    Value = CFDictionaryGetValue(v10, a3);
    if (Value && (v14 = CFRetain(Value)) != 0)
    {
      v15 = v14;
      if (a4 == 2)
      {
        v21 = 0;
        cf = 0;
        v16 = APEndpointPlusCopySubEndpoint(v14, v12, &v21);
        if (v16)
        {
          if (v16 != -6727)
          {
            APSLogErrorAt();
          }
        }

        else if (APSGetFBOPropertyInt64())
        {
          if (APEndpointPlusRemoveSubEndpoint(v15, v12))
          {
            emp_removeCachedEndpointWithType_cold_1();
          }

          else
          {
            CMBaseObject = FigEndpointGetCMBaseObject();
            v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v18)
            {
              v18(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
            }

            if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }

      if (APSGetFBOPropertyInt64())
      {
        v19 = emp_removeEndpoint(a1, a3, a4);
        if (v19)
        {
          emp_removeCachedEndpointWithType_cold_2();
        }

        else
        {
          emp_postDelayedAvailableEndpointsChanged(a1, &unk_2835843B8);
        }
      }

      else
      {
        v19 = 4294960587;
      }

      CFRelease(v12);
      CFRelease(v15);
    }

    else
    {
      CFRelease(v12);
      return 0;
    }
  }

  else
  {
    emp_removeCachedEndpointWithType_cold_3();
    return 4294960591;
  }

  return v19;
}

void __emp_postDelayedAvailableEndpointsChanged_block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    v8[0] = @"Private";
    v8[1] = @"Reason";
    v9[0] = MEMORY[0x277CBEC38];
    v9[1] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

    *(DerivedStorage + 136) = 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 128);
  if (v5)
  {
    dispatch_source_cancel(*(DerivedStorage + 128));
    dispatch_release(v5);
    *(DerivedStorage + 128) = 0;
  }

  FigSimpleMutexUnlock();
  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v4);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  emp_postNotification(DefaultLocalCenter, *MEMORY[0x277CC0C20], *(a1 + 32), Copy);
  if (Copy)
  {
    CFRelease(Copy);
  }
}

uint64_t __emp_shouldAllowCacheableType_block_invoke()
{
  if (APSSettingsGetBooleanIfPresent())
  {
    emp_shouldAllowCacheableType_allowAirPlay = 0;
  }

  if (APSSettingsGetBooleanIfPresent())
  {
    emp_shouldAllowCacheableType_allowCluster = 0;
  }

  if (IsAppleInternalBuild())
  {
    APSSettingsGetBooleanIfPresent();
  }

  result = APSSettingsGetBooleanIfPresent();
  if (result)
  {
    emp_shouldAllowCacheableType_allowRemoteControl = 0;
  }

  return result;
}

void emp_introspector_showManagerPlus(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = emp_introspector_copyDescription(a1);
  FigSimpleMutexUnlock();
  FPrintF();
}

uint64_t APCarPlayAnalyticsGetTypeID()
{
  if (gAPCarPlayAnalyticsInitOnce != -1)
  {
    APCarPlayAnalyticsGetTypeID_cold_1();
  }

  return gAPCarPlayAnalyticsTypeID;
}

uint64_t _APCarPlayAnalyticsGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPCarPlayAnalyticsTypeID = result;
  return result;
}

uint64_t APCarPlayAnalyticsCreate(uint64_t a1, uint64_t *a2)
{
  if (gAPCarPlayAnalyticsInitOnce != -1)
  {
    APCarPlayAnalyticsGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    *(Instance + 400) = 0;
    *(Instance + 368) = 0u;
    *(Instance + 384) = 0u;
    *(Instance + 336) = 0u;
    *(Instance + 352) = 0u;
    *(Instance + 304) = 0u;
    *(Instance + 320) = 0u;
    *(Instance + 272) = 0u;
    *(Instance + 288) = 0u;
    *(Instance + 240) = 0u;
    *(Instance + 256) = 0u;
    *(Instance + 208) = 0u;
    *(Instance + 224) = 0u;
    *(Instance + 176) = 0u;
    *(Instance + 192) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 160) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 16) = dispatch_queue_create("com.apple.APCarPlayAnalytics", 0);
    if (gLogCategory_APCarPlayAnalytics <= 40 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
    {
      APCarPlayAnalyticsCreate_cold_2();
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    APCarPlayAnalyticsCreate_cold_3();
    return 4294960568;
  }

  return result;
}

uint64_t APCarPlayAnalyticsInitAudioFormatsCollection(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (gLogCategory_APCarPlayAnalytics <= 50 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAnalyticsInitAudioFormatsCollection_cold_1();
  }

  v2 = *(a1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __APCarPlayAnalyticsInitAudioFormatsCollection_block_invoke;
  v5[3] = &unk_27849DF18;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APCarPlayAnalyticsInitAudioFormatsCollection_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 28))
  {
    __APCarPlayAnalyticsInitAudioFormatsCollection_block_invoke_cold_1();
    v4 = -6709;
  }

  else
  {
    *(v2 + 392) = 1;
    Mutable = *(v2 + 400);
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
      *(v2 + 400) = Mutable;
    }

    CFSetRemoveAllValues(Mutable);
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

void _APCarPlayAnalyticsFinalize(uint64_t a1)
{
  if (gLogCategory_APCarPlayAnalytics <= 40 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
  {
    _APCarPlayAnalyticsFinalize_cold_1(a1);
  }

  v2 = *(a1 + 400);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 400) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }
}

uint64_t APEndpointStreamInterruptibleWrapperCreate(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    APEndpointStreamInterruptibleWrapperCreate_cold_5();
    return 4294950536;
  }

  if (!a3)
  {
    APEndpointStreamInterruptibleWrapperCreate_cold_4();
    return 4294950536;
  }

  FigEndpointStreamAirPlayGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v11 = v7;
    APEndpointStreamInterruptibleWrapperCreate_cold_1();
    return v11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a2);
  SNPrintF();
  v9 = dispatch_queue_create(label, 0);
  DerivedStorage[2] = v9;
  if (!v9)
  {
    APEndpointStreamInterruptibleWrapperCreate_cold_3();
    return 4294950535;
  }

  SNPrintF();
  v10 = dispatch_queue_create(label, 0);
  DerivedStorage[1] = v10;
  if (!v10)
  {
    APEndpointStreamInterruptibleWrapperCreate_cold_2();
    return 4294950535;
  }

  if (*CMBaseObjectGetDerivedStorage())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  DerivedStorage[5] = CFRetain(a3);
  CMNotificationCenterGetDefaultLocalCenter();
  FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
  FigNotificationCenterAddWeakListener();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = 0;
  *a4 = 0;
  return v11;
}

uint64_t APEndpointStreamInterruptibleWrapperBeginInterruption()
{
  CMBaseObjectGetDerivedStorage();
  v0 = *(CMBaseObjectGetVTable() + 16);
  if (v0 && v0 == &kAPEndpointStreamInterruptibleWrapper_FigEndpointStreamClassWrapper)
  {
    return APSDispatchSyncTask();
  }

  APEndpointStreamInterruptibleWrapperBeginInterruption_cold_1();
  return 4294954514;
}

uint64_t interruptibleStreamWrapper_beginInterruptionSync()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_beginInterruptionSync_cold_1();
  }

  *(DerivedStorage + 32) = 1;
  v1 = interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary();
  if (v1)
  {
    APSLogErrorAt();
    *(DerivedStorage + 32) = 0;
  }

  return v1;
}

uint64_t APEndpointStreamInterruptibleWrapperEndInterruption()
{
  CMBaseObjectGetDerivedStorage();
  v0 = *(CMBaseObjectGetVTable() + 16);
  if (v0 && v0 == &kAPEndpointStreamInterruptibleWrapper_FigEndpointStreamClassWrapper)
  {
    return APSDispatchSyncTask();
  }

  APEndpointStreamInterruptibleWrapperEndInterruption_cold_1();
  return 4294954514;
}

uint64_t interruptibleStreamWrapper_endInterruptionSync()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_endInterruptionSync_cold_1();
  }

  *(DerivedStorage + 32) = 0;
  v1 = interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary();
  if (v1)
  {
    APSLogErrorAt();
    *(DerivedStorage + 32) = 1;
  }

  return v1;
}

CFStringRef interruptibleStreamWrapper_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v3, 0, @"<APEndpointStreamInterruptibleWrapper %p; sub: %p>", a1, *DerivedStorage);
}

uint64_t interruptibleStreamWrapper_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v8 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 48))
      {
        v8 = MEMORY[0x277CBED10];
      }

      v9 = CFRetain(*v8);
      result = 0;
      *a4 = v9;
    }

    else
    {
      interruptibleStreamWrapper_CopyProperty_cold_1();
      return 4294950536;
    }
  }

  else
  {
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {

      return v12(CMBaseObject, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t interruptibleStreamWrapper_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 48) && FigCFEqual())
  {

    return APSSignalErrorAt();
  }

  else
  {
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {

      return v8(CMBaseObject, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t interruptibleStreamWrapper_subStreamNotificationCallback()
{
  result = FigCFEqual();
  if (!result)
  {
    result = FigCFEqual();
    if (!result)
    {
      if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CMNotificationCenterGetDefaultLocalCenter();

      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

__CFString *interruptibleStreamWrapper_subEndpointAddRemoveObservingProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamInterruptibleWrapper <APSubEndpointAddRemoveObservingProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t interruptibleStreamWrapper_NotifySubEndpointAdded(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *DerivedStorage;
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
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

  v7 = *(v6 + 8);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v4, a2);
}

uint64_t interruptibleStreamWrapper_NotifySubEndpointRemoved(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *DerivedStorage;
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
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

  v7 = *(v6 + 16);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v4, a2);
}

uint64_t interruptibleStreamWrapper_Suspend(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_Suspend_cold_1();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t interruptibleStreamWrapper_Resume(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_Resume_cold_1();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t interruptibleStreamWrapper_Dissociate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_Dissociate_cold_1();
  }

  v1 = *DerivedStorage;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

void interruptibleStreamWrapper_completionCallback(uint64_t a1)
{
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_completionCallback_cold_1();
  }

  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24));
  v2 = *a1;

  CFRelease(v2);
}

uint64_t interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
  v3 = *(v1 + 40);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4 || v4(SharedInstance, v3, &v8))
  {
    interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_3();
  }

  else
  {
    v5 = !*(v1 + 32) && v8 <= 0 && *(v1 + 48);
    if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!v5)
    {
      if (*(DerivedStorage + 49))
      {
        if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
        {
          interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_1();
        }

        v6 = FigEndpointStreamSuspendSync();
        if (v6)
        {
          interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_2();
        }

        else
        {
          *(DerivedStorage + 49) = 0;
        }

        return v6;
      }

      if (gLogCategory_APEndpointStreamInterruptibleWrapper > 50 || gLogCategory_APEndpointStreamInterruptibleWrapper == -1 && !_LogCategory_Initialize())
      {
        return 0;
      }

LABEL_34:
      LogPrintF();
      return 0;
    }
  }

  if (*(DerivedStorage + 49))
  {
    if (gLogCategory_APEndpointStreamInterruptibleWrapper > 50 || gLogCategory_APEndpointStreamInterruptibleWrapper == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

    goto LABEL_34;
  }

  if (!*(DerivedStorage + 48))
  {
    return 0;
  }

  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_4();
  }

  v6 = FigEndpointStreamResumeSync();
  if (v6)
  {
    interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_5();
  }

  else
  {
    *(DerivedStorage + 49) = 1;
  }

  return v6;
}

uint64_t interruptibleStreamWrapper_flushSync(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_flushSync_cold_1();
  }

  v4 = *DerivedStorage;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v4, v1, v2);
}

uint64_t interruptibleStreamWrapper_FlushAudioDataWithinSampleRange()
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  CMBaseObjectGetDerivedStorage();
  v0 = APSDispatchSyncTask();
  if (v0)
  {
    interruptibleStreamWrapper_FlushAudioDataWithinSampleRange_cold_1();
  }

  return v0;
}

uint64_t interruptibleStreamWrapper_SetRateAndAnchorTimeWithCompletionCallback(const void *a1)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_SetRateAndAnchorTimeWithCompletionCallback_cold_1();
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t interruptibleStreamWrapper_copyTransportFormatDescriptionForSourceContentFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_1();
  }

  v6 = *DerivedStorage;
  FigEndpointStreamAirPlayGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t interruptibleStreamWrapper_isPassthroughSupportedForFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_isPassthroughSupportedForFormatDescription_cold_1();
  }

  v6 = *DerivedStorage;
  FigEndpointStreamAirPlayGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t interruptibleStreamWrapper_flushAudioDataWithinSampleRangeSync(uint64_t a1)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_flushAudioDataWithinSampleRangeSync_cold_1();
  }

  v2 = *DerivedStorage;
  v3 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v3)
  {
    return 4294954514;
  }

  v8[0] = v5;
  v8[1] = v6;
  v8[2] = v7;
  return v3(v2, v8);
}

void interruptibleStreamWrapper_setRateAndAnchorTimeWithCompletionCallbackAsync(uint64_t a1)
{
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_setRateAndAnchorTimeWithCompletionCallbackAsync_cold_1();
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v10 = *(a1 + 64);
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_setRateAndAnchorTimeWithCompletionCallbackAsync_cold_2();
    if (v2)
    {
      goto LABEL_8;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_8:
  v6 = CFRetain(v2);
LABEL_12:
  *v5 = v6;
  *(v5 + 8) = v10;
  v7 = *DerivedStorage;
  v8 = *(CMBaseObjectGetVTable() + 24);
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v17 = v13;
      v18 = v14;
      v15 = v11;
      v16 = v12;
      v9(v7, &v17, &v15, interruptibleStreamWrapper_setRateCompletionCallback, v5, v3);
    }
  }

  CFRelease(*a1);
}

void interruptibleStreamWrapper_setRateCompletionCallback(double a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_setRateCompletionCallback_cold_1();
  }

  v11 = *a6;
  v12 = *(a6 + 8);
  v13 = *(a6 + 16);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  v12(v11, a3, &v16, &v14, v13, a1);
  CFRelease(*a6);
  free(a6);
}

uint64_t APSenderSessionFactoryGetTypeID()
{
  if (gAPSenderSessionFactoryInitOnce != -1)
  {
    APSenderSessionFactoryGetTypeID_cold_1();
  }

  return gAPSenderSessionFactoryTypeID;
}

uint64_t _APSenderSessionFactoryGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSenderSessionFactoryTypeID = result;
  return result;
}

uint64_t APSenderSessionFactoryCreate(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (!a1)
  {
    v12 = -6705;
    v13 = 65;
LABEL_17:
    APSenderSessionFactoryCreate_cold_2(v12, v13, &v14);
    return v14;
  }

  if (!a4)
  {
    v12 = -6705;
    v13 = 66;
    goto LABEL_17;
  }

  if (gAPSenderSessionFactoryInitOnce != -1)
  {
    APSenderSessionFactoryGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v12 = -6728;
    v13 = 68;
    goto LABEL_17;
  }

  v9 = Instance;
  Instance[2] = 0;
  Instance[3] = 0;
  Instance[4] = 0;
  if (gLogCategory_APSenderSessionFactory <= 50 && (gLogCategory_APSenderSessionFactory != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9[2] = a1;
  v9[3] = a2;
  if (a3)
  {
    v10 = CFRetain(a3);
  }

  else
  {
    v10 = 0;
  }

  result = 0;
  v9[4] = v10;
  *a4 = v9;
  return result;
}

uint64_t APSenderSessionFactoryCreateAirPlaySession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  if (a1)
  {
    v19 = a2;
    v22 = a17;
    v21 = a18;
    v23 = a16;
    v25 = a14;
    v24 = a15;
    v26 = a13;
    v27 = a12;
    v28 = a11;
    v29 = a10;
    if (gLogCategory_APSenderSessionFactory <= 50)
    {
      if (gLogCategory_APSenderSessionFactory != -1 || (v49 = a8, v30 = a7, v31 = a6, v32 = a5, v33 = a4, v34 = a3, v35 = _LogCategory_Initialize(), v28 = a11, v27 = a12, v26 = a13, v25 = a14, v24 = a15, v23 = a16, a3 = v34, a8 = v49, v19 = a2, v29 = a10, v21 = a18, v22 = a17, a4 = v33, a5 = v32, a6 = v31, a7 = v30, v35))
      {
        v44 = v27;
        v45 = v25;
        v46 = v24;
        v47 = v23;
        v48 = a3;
        v38 = a8;
        v39 = a7;
        v40 = a6;
        v41 = a5;
        v42 = a4;
        APSenderSessionFactoryCreateAirPlaySession_cold_1();
        v28 = a11;
        v27 = v44;
        v26 = a13;
        v25 = v45;
        v24 = v46;
        v23 = v47;
        a3 = v48;
        a4 = v42;
        a5 = v41;
        a6 = v40;
        a7 = v39;
        a8 = v38;
      }
    }

    BYTE2(v43) = v27;
    BYTE1(v43) = v28;
    LOBYTE(v43) = v29;
    v36 = (*(a1 + 16))(*(a1 + 32), v19, a3, a4, a5, a6, a7, a8, a9, v43, v26, v25, v24, v23, v22, v21);
    if (v36)
    {
      APSenderSessionFactoryCreateAirPlaySession_cold_2();
    }
  }

  else
  {
    APSenderSessionFactoryCreateAirPlaySession_cold_3();
    return 4294960591;
  }

  return v36;
}

void _APSenderSessionFactoryFinalize(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }

  if (gLogCategory_APSenderSessionFactory <= 50 && (gLogCategory_APSenderSessionFactory != -1 || _LogCategory_Initialize()))
  {
    _APSenderSessionFactoryFinalize_cold_1();
  }
}

uint64_t APEndpointStreamCarPlayAudioRemote_ServerDied()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 16) = 0;
  return result;
}

uint64_t APEndpointStreamCarPlayAudioRemoteCreate(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  FigEndpointStreamGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v12 = v7;
    APEndpointStreamCarPlayAudioRemoteCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = 0;
    *(DerivedStorage + 24) = CFRetain(a3);
    CMBaseObjectGetDerivedStorage();
    xdict = 0;
    v16 = 0;
    cf1 = 0;
    cf = 0;
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v12 = v9;
      APEndpointStreamCarPlayAudioRemoteCreate_cold_2();
    }

    else
    {
      v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v10)
      {
        v12 = v10;
        if (v10 != -6720)
        {
          APSLogErrorAt();
        }
      }

      else
      {
        APEndpointStreamCarPlayAudioRemoteCreate_cold_5();
        v12 = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (cf1)
    {
      CFRelease(cf1);
    }

    if (v12)
    {
      if (v12 != -6720)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      if (gLogCategory_APEndpointStreamCarPlayAudioRemote <= 50 && (gLogCategory_APEndpointStreamCarPlayAudioRemote != -1 || _LogCategory_Initialize()))
      {
        APEndpointStreamCarPlayAudioRemoteCreate_cold_6();
      }

      v12 = 0;
      *a4 = 0;
    }
  }

  return v12;
}

void carRemoteAudioStream_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamCarPlayAudioRemote <= 30 && (gLogCategory_APEndpointStreamCarPlayAudioRemote != -1 || _LogCategory_Initialize()))
  {
    carRemoteAudioStream_finalize_cold_1();
  }

  v1 = DerivedStorage[3];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[3] = 0;
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[4] = 0;
  }

  if (*DerivedStorage)
  {
    v3 = CMBaseObjectGetDerivedStorage();
    if (*(v3 + 16))
    {
      if (FigXPCCreateBasicMessage())
      {
        carRemoteAudioStream_finalize_cold_2();
      }

      else
      {
        if (!FigXPCRemoteClientSendSyncMessage())
        {
          goto LABEL_12;
        }

        carRemoteAudioStream_finalize_cold_3();
      }

      *(v3 + 16) = 0;
      APSLogErrorAt();
      return;
    }

LABEL_12:
    FigXPCRemoteClientDisassociateObject();
    *(v3 + 16) = 0;
    *DerivedStorage = 0;
  }
}

CFMutableStringRef carRemoteAudioStream_copyDebugDescription()
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendF();
  CFStringAppendF();
  CFStringAppendF();
  return Mutable;
}

uint64_t carRemoteAudioStream_copyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 16))
    {
      if (CFEqual(@"CarPlayAudioFormats", a2))
      {
        v8 = 0;
        *a4 = CFRetain(*(v7 + 32));
      }

      else
      {
        v8 = FigXPCSendStdCopyPropertyMessage();
        if (v8)
        {
          carRemoteAudioStream_copyProperty_cold_1();
        }
      }
    }

    else
    {
      carRemoteAudioStream_copyProperty_cold_2();
      return 4294960587;
    }
  }

  else
  {
    carRemoteAudioStream_copyProperty_cold_3();
    return 4294960578;
  }

  return v8;
}

uint64_t carRemoteAudioStream_setProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    carRemoteAudioStream_setProperty_cold_12();
    return 4294960578;
  }

  if (!*(DerivedStorage + 16))
  {
    carRemoteAudioStream_setProperty_cold_11();
    return 4294960587;
  }

  if (CFEqual(*MEMORY[0x277CC1858], a2))
  {
    v6 = CMBaseObjectGetDerivedStorage();
    if (*v6)
    {
      if (*(v6 + 16))
      {
        if (a3)
        {
          ObjectID = APAudioSinkSharedMemRemote_GetObjectID();
        }

        else
        {
          ObjectID = 0;
        }

        v13 = FigXPCCreateBasicMessage();
        if (v13)
        {
          v12 = v13;
          carRemoteAudioStream_setProperty_cold_1();
        }

        else
        {
          xpc_dictionary_set_uint64(0, kAPCarPlayAVVCMsgParam_XPCSinkObjectID[0], ObjectID);
          v12 = FigXPCRemoteClientSendSyncMessage();
          if (!v12)
          {
            return v12;
          }

          carRemoteAudioStream_setProperty_cold_2();
        }
      }

      else
      {
        carRemoteAudioStream_setProperty_cold_3();
        v12 = 4294960587;
      }
    }

    else
    {
      carRemoteAudioStream_setProperty_cold_4();
      v12 = 4294960578;
    }

LABEL_32:
    APSLogErrorAt();
    return v12;
  }

  if (CFEqual(@"AudioFormatInfo", a2))
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (!*v8)
    {
      carRemoteAudioStream_setProperty_cold_9();
      v12 = 4294960578;
      goto LABEL_32;
    }

    if (!*(v8 + 16))
    {
      carRemoteAudioStream_setProperty_cold_8();
      v12 = 4294960587;
      goto LABEL_32;
    }

    Description = APCarPlayAudioFormatInfoGetDescription(a3);
    if (!Description)
    {
      carRemoteAudioStream_setProperty_cold_7();
      v12 = 4294960591;
      goto LABEL_32;
    }

    v10 = Description;
    v11 = FigXPCCreateBasicMessage();
    if (v11)
    {
      v12 = v11;
      carRemoteAudioStream_setProperty_cold_5();
      goto LABEL_32;
    }

    xpc_dictionary_set_data(0, kAPCarPlayAVVCMsgParam_Format[0], v10, 0x28uLL);
    v12 = FigXPCRemoteClientSendSyncMessage();
    if (v12)
    {
      carRemoteAudioStream_setProperty_cold_6();
      goto LABEL_32;
    }
  }

  else
  {
    v12 = FigXPCSendStdSetPropertyMessage();
    if (v12)
    {
      carRemoteAudioStream_setProperty_cold_10();
    }
  }

  return v12;
}

uint64_t carRemoteAudioStream_resume(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (*(DerivedStorage + 16))
    {
      v8 = FigXPCCreateBasicMessage();
      if (v8)
      {
        v11 = v8;
        carRemoteAudioStream_resume_cold_1();
      }

      else
      {
        v9 = FigXPCMessageSetCFDictionary();
        if (v9)
        {
          v11 = v9;
          carRemoteAudioStream_resume_cold_2();
        }

        else
        {
          v10 = FigXPCRemoteClientSendSyncMessage();
          if (v10)
          {
            v11 = v10;
            carRemoteAudioStream_resume_cold_3();
          }

          else
          {
            if (a3)
            {
              a3(a1, 0, a4);
            }

            return 0;
          }
        }
      }
    }

    else
    {
      carRemoteAudioStream_resume_cold_4();
      return 4294960587;
    }
  }

  else
  {
    carRemoteAudioStream_resume_cold_5();
    return 4294960578;
  }

  return v11;
}

uint64_t APCarPlayAudioFormatInfoGetTypeID()
{
  if (APCarPlayAudioFormatInfoGetTypeID_initOnce != -1)
  {
    APCarPlayAudioFormatInfoGetTypeID_cold_1();
  }

  return APCarPlayAudioFormatInfoGetTypeID_typeID;
}

uint64_t __APCarPlayAudioFormatInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APCarPlayAudioFormatInfoGetTypeID_typeID = result;
  return result;
}

void _APCarPlayAudioFormatInfoFinalize(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 112) = 0;
  }
}

uint64_t APCarPlayAudioFormatsCopyFormatsForAudioType(_BYTE *a1, int a2, const __CFString *a3, unint64_t *a4, CFMutableArrayRef *a5, char *a6)
{
  if (!a2)
  {
    APCarPlayAudioFormatsCopyFormatsForAudioType_cold_10();
LABEL_77:
    v28 = 0;
    Copy = 0;
    goto LABEL_59;
  }

  if (!a3)
  {
    APCarPlayAudioFormatsCopyFormatsForAudioType_cold_9();
    goto LABEL_77;
  }

  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    APCarPlayAudioFormatsCopyFormatsForAudioType_cold_8();
    goto LABEL_77;
  }

  v35 = a5;
  v12 = a3;
  Count = CFArrayGetCount(TypedValue);
  v34 = a6;
  if (Count < 1)
  {
    Copy = 0;
    Int64 = 0;
    v20 = 0;
    v22 = v35;
    v23 = a4;
    goto LABEL_33;
  }

  v14 = Count;
  v15 = 0;
  Int64 = 0;
  while (1)
  {
    CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    if (CFDictionaryGetInt64() == a2)
    {
      break;
    }

LABEL_11:
    if (v14 == ++v15)
    {
      v19 = 0;
      v20 = 0;
      Copy = 0;
      v22 = v35;
      goto LABEL_24;
    }
  }

  CFStringGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  if (v18 && CFStringCompare(v12, v18, 0))
  {
    if (FigCFEqual())
    {
      carPlayAudioFormat_getFormatsKeyForAudioType(a2, @"default");
      Int64 = CFDictionaryGetInt64();
    }

    goto LABEL_11;
  }

  carPlayAudioFormat_getFormatsKeyForAudioType(a2, v12);
  v19 = CFDictionaryGetInt64();
  if (v18)
  {
    v20 = 0;
    v22 = v35;
  }

  else
  {
    v22 = a5;
    if (gLogCategory_APCarPlayAudioFormat <= 30 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
    {
      APCarPlayAudioFormatsCopyFormatsForAudioType_cold_4();
    }

    v20 = 1;
  }

  if (CFDictionaryContainsKey(TypedValueAtIndex, @"audioOutputFormatsExtended"))
  {
    CFArrayGetTypeID();
    v24 = CFDictionaryGetTypedValue();
    v25 = CFGetAllocator(a1);
    Copy = CFArrayCreateCopy(v25, v24);
    if (v19)
    {
LABEL_30:
      Int64 = v19;
LABEL_32:
      v23 = a4;
      goto LABEL_33;
    }
  }

  else
  {
    Copy = 0;
    if (v19)
    {
      goto LABEL_30;
    }
  }

LABEL_24:
  if (!Int64)
  {
    goto LABEL_30;
  }

  CFStringGetTypeID();
  v26 = CFDictionaryGetTypedValue();
  if (!CFStringHasPrefix(v26, @"Apple"))
  {
    Int64 = 0;
    goto LABEL_32;
  }

  v23 = a4;
  if (gLogCategory_APCarPlayAudioFormat <= 30 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAudioFormatsCopyFormatsForAudioType_cold_6();
  }

  v20 = 1;
LABEL_33:
  if (!a1[28])
  {
    v32 = 0x41F04000C3FFFCLL;
    if (!a1[31])
    {
      v32 = 0x1F0400003FFFCLL;
    }

    v27 = v32 & Int64;
    if (!v27)
    {
      goto LABEL_65;
    }

LABEL_35:
    if (a1[30] && FigCFEqual())
    {
      v27 &= 0x80014000114uLL;
    }

    if (a2 == 103 && APSSettingsGetIntWithDefault())
    {
      v28 = 0;
      if (v23)
      {
        v27 &= ~0x800000uLL;
      }

      if (v22 && Copy)
      {
        v29 = *MEMORY[0x277CBECE8];
        v30 = CFArrayGetCount(Copy);
        MutableCopy = CFArrayCreateMutableCopy(v29, v30, Copy);
        FigCFNumberCreateUInt64();
          ;
        }

        if (MutableCopy)
        {
          CFRetain(MutableCopy);
        }

        CFRelease(Copy);
        v28 = MutableCopy;
        goto LABEL_51;
      }
    }

    else
    {
      v28 = 0;
    }

    MutableCopy = Copy;
LABEL_51:
    if (v23)
    {
      *v23 = v27;
    }

    if (v22 && MutableCopy)
    {
      *v22 = MutableCopy;
      MutableCopy = 0;
    }

    if (v34)
    {
      *v34 = v20;
    }

    Copy = MutableCopy;
    goto LABEL_67;
  }

  v27 = Int64 & 0xF7FE0F8FFFFC0000;
  if (v27)
  {
    goto LABEL_35;
  }

LABEL_65:
  APCarPlayAudioFormatsCopyFormatsForAudioType_cold_7();
  v28 = 0;
LABEL_59:
  if (gLogCategory_APCarPlayAudioFormat <= 50 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_67:
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return 0;
}

__CFString *carPlayAudioFormat_getFormatsKeyForAudioType(int a1, CFTypeRef cf1)
{
  if (a1 == 107)
  {
    return @"audioInputFormats";
  }

  if (a1 != 100)
  {
    return @"audioOutputFormats";
  }

  if (CFEqual(cf1, @"default"))
  {
    return @"audioInputFormats";
  }

  v3 = @"audioInputFormats";
  if (!CFEqual(cf1, @"telephony") && !CFEqual(cf1, @"speechRecognition"))
  {
    return @"audioOutputFormats";
  }

  return v3;
}

uint64_t APCarPlayAudioFormatsGetTypeID()
{
  if (APCarPlayAudioFormatsGetTypeID_initOnce != -1)
  {
    APCarPlayAudioFormatsGetTypeID_cold_1();
  }

  return APCarPlayAudioFormatsGetTypeID_typeID;
}

uint64_t __APCarPlayAudioFormatsGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APCarPlayAudioFormatsGetTypeID_typeID = result;
  return result;
}

void _APCarPlayAudioFormatsFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
    a1[9] = 0;
  }
}

CFStringRef _APCarPlayAudioFormatsCopyFormattingDesc(const void *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  AppendPrintF();
  CFDictionaryApplyBlock();
  AppendPrintF();
  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithCString(v2, v6[3], 0x8000100u);
  free(v6[3]);
  _Block_object_dispose(&v5, 8);
  return v3;
}

void sub_222119A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlayAudioFormatsCreate(const __CFAllocator *a1, const void *a2, int a3, char a4, char a5, int a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v34 = 0u;
  if (!a2)
  {
    APCarPlayAudioFormatsCreate_cold_14();
LABEL_99:
    v10 = 0;
    goto LABEL_28;
  }

  if (APCarPlayAudioFormatsGetTypeID_initOnce != -1)
  {
    APCarPlayAudioFormatsGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APCarPlayAudioFormatsCreate_cold_13();
    goto LABEL_99;
  }

  v10 = Instance;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  *(Instance + 2) = CFRetain(a2);
  *(v10 + 28) = a3;
  *(v10 + 29) = a4;
  *(v10 + 31) = a5;
  CFDictionaryGetCString();
  *(v10 + 24) = TextToSourceVersion();
  if (!*(v10 + 28))
  {
    if (APSSettingsGetInt64())
    {
      if (a6)
      {
        if (gLogCategory_APCarPlayAudioFormat <= 50 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
        {
          APCarPlayAudioFormatsCreate_cold_3();
        }

        *(v10 + 30) = 1;
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v36 = 0;
      v37 = &v36;
      v38 = 0x3052000000;
      v39 = __Block_byref_object_copy__4;
      v20 = getEAAccessoryManagerClass_softClass;
      v40 = __Block_byref_object_dispose__4;
      v41 = getEAAccessoryManagerClass_softClass;
      if (!getEAAccessoryManagerClass_softClass)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __getEAAccessoryManagerClass_block_invoke;
        v33[3] = &unk_27849ACC8;
        v33[4] = &v36;
        __getEAAccessoryManagerClass_block_invoke(v33);
        v20 = v37[5];
      }

      _Block_object_dispose(&v36, 8);
      v21 = [objc_msgSend(v20 "sharedAccessoryManager")];
      v22 = [v21 countByEnumeratingWithState:&v29 objects:&v36 count:16];
      if (v22)
      {
        v23 = *v30;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v29 + 1) + 8 * i);
            if ([v25 supportsCarPlay]
              && (![objc_msgSend(v25 "manufacturer")] && !objc_msgSend(objc_msgSend(v25, "modelNumber"), "compare:options:", @"172611123", 1) && (!objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"010600", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"011400", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"2012800", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"2013400", 1))
               || ![objc_msgSend(v25 "manufacturer")] && !objc_msgSend(objc_msgSend(v25, "modelNumber"), "compare:options:", @"172611251", 1) && (!objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"010600", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"011400", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"200700", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"200960", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"201100", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"2012800", 1))
               || ![objc_msgSend(v25 "manufacturer")] && !objc_msgSend(objc_msgSend(v25, "modelNumber"), "compare:options:", @"172611252", 1) && (!objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"2000700", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"2000960", 1))
               || ![objc_msgSend(v25 "manufacturer")] && (!objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"1.0.2", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"1.0.3", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"19.1.18", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"19.4.18", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"19.8.29", 1))
               || ![objc_msgSend(v25 "manufacturer")] && (!objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"M19.18.26.03", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"M19.18.32.01", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"M19.18.42.01", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"M19.19.02.01", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"M19.19.03.00", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"M20.19.20.01", 1) || !objc_msgSend(objc_msgSend(v25, "firmwareRevision"), "compare:options:", @"M20.19.39.00", 1))))
            {
              if (gLogCategory_APCarPlayAudioFormat <= 50 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
              {
                APCarPlayAudioFormatsCreate_cold_4(v25);
              }

              *(v10 + 30) = 1;
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v29 objects:&v36 count:16];
        }

        while (v22);
      }
    }
  }

  if (a3)
  {
    *(v10 + 32) = FigGetCFPreferenceNumberWithDefault();
    *(v10 + 36) = FigGetCFPreferenceNumberWithDefault();
  }

  else
  {
    *(v10 + 32) = FigGetCFPreferenceNumberWithDefault();
  }

  if (gLogCategory_APCarPlayAudioFormat <= 50 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v10 + 56) = Mutable;
  if (!Mutable)
  {
    APCarPlayAudioFormatsCreate_cold_12();
LABEL_98:
    CFRelease(v10);
    goto LABEL_99;
  }

  v12 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v10 + 64) = v12;
  if (!v12)
  {
    APCarPlayAudioFormatsCreate_cold_11();
    goto LABEL_98;
  }

  v13 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v10 + 72) = v13;
  if (!v13)
  {
    APCarPlayAudioFormatsCreate_cold_10();
    goto LABEL_98;
  }

  if (carPlayAudioFormat_repackageFormatsForStream(v10, 100, &kMainAudioTypes, 5uLL))
  {
    APCarPlayAudioFormatsCreate_cold_5();
    goto LABEL_97;
  }

  if (carPlayAudioFormat_repackageFormatsForStream(v10, 101, &kAltAudioTypes, 1uLL))
  {
    APCarPlayAudioFormatsCreate_cold_6();
    goto LABEL_97;
  }

  if (*(v10 + 29))
  {
    if (carPlayAudioFormat_repackageFormatsForStream(v10, 106, &kAuxAudioTypes, 1uLL))
    {
      APCarPlayAudioFormatsCreate_cold_7();
    }

    else
    {
      if (!carPlayAudioFormat_repackageFormatsForStream(v10, 107, &kOutOfBandAVVCAudioTypes, 1uLL))
      {
        goto LABEL_26;
      }

      APCarPlayAudioFormatsCreate_cold_8();
    }

LABEL_97:
    APSLogErrorAt();
    goto LABEL_98;
  }

LABEL_26:
  if (*(v10 + 31))
  {
    if (carPlayAudioFormat_repackageFormatsForStream(v10, 103, &kMainBufferedAudioTypes, 1uLL))
    {
      APCarPlayAudioFormatsCreate_cold_9();
      goto LABEL_97;
    }
  }

LABEL_28:
  if (gLogCategory_APCarPlayAudioFormat <= 30 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v10;
}

uint64_t APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2 > 1937010029)
  {
    if (a2 == 1937010030)
    {
      v5 = @"main";
    }

    else
    {
      if (a2 != 1937012579)
      {
        goto LABEL_25;
      }

      v5 = @"oovc";
    }
  }

  else if (a2 == 1937006956)
  {
    v5 = @"alt";
  }

  else
  {
    if (a2 != 1937006968)
    {
      goto LABEL_25;
    }

    v5 = @"auxo";
  }

  if (a3 <= 1635020132)
  {
    if (a3 == 1635017068)
    {
      v6 = @"alert";
      goto LABEL_22;
    }

    if (a3 == 1635017830)
    {
      v6 = @"default";
      goto LABEL_22;
    }

LABEL_25:
    APSLogErrorAt();
    return 4294960591;
  }

  if (a3 == 1635021925)
  {
    v6 = @"telephony";
    goto LABEL_22;
  }

  if (a3 == 1635021682)
  {
    v6 = @"speechRecognition";
    goto LABEL_22;
  }

  if (a3 != 1635020133)
  {
    goto LABEL_25;
  }

  v6 = @"media";
LABEL_22:
  Value = CFDictionaryGetValue(*(a1 + 72), v5);
  if (Value)
  {
    v8 = CFDictionaryGetValue(Value, v6);
    if (v8)
    {
      v9 = CFRetain(v8);
      result = 0;
      *a4 = v9;
      return result;
    }

    APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType_cold_1();
  }

  else
  {
    APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType_cold_2();
  }

  return 4294960569;
}

uint64_t APCarPlayAudioFormatsCopyFormatInfoForHALDescription(uint64_t a1, int a2, int a3, const void *a4, CFTypeRef *a5)
{
  v20 = 0;
  __s1 = 0;
  cf = 0;
  HALDescriptions = APCarPlayAudioFormatsGetHALDescriptions(a1, a2, a3, &__s1, &v20);
  if (HALDescriptions)
  {
    v13 = HALDescriptions;
    APCarPlayAudioFormatsCopyFormatInfoForHALDescription_cold_1();
  }

  else
  {
    v11 = APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType(a1, a2, a3, &cf);
    v12 = v20;
    if (v20 < 1)
    {
      goto LABEL_12;
    }

    v13 = v11;
    ValueAtIndex = 0;
    v15 = 0;
    v16 = __s1;
    v17 = cf;
    do
    {
      if (!memcmp(v16, a4, 0x28uLL))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v17, v15);
      }

      ++v15;
      v16 += 56;
    }

    while (v12 != v15);
    if (ValueAtIndex)
    {
      *a5 = CFRetain(ValueAtIndex);
    }

    else
    {
LABEL_12:
      APCarPlayAudioFormatsCopyFormatInfoForHALDescription_cold_2();
      v13 = 4294960591;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v13;
}

uint64_t APCarPlayAudioFormatsCopyFormatInfoForStreamDescription(uint64_t a1, int a2, int a3, const void *a4, CFTypeRef *a5)
{
  theArray = 0;
  v7 = APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType(a1, a2, a3, &theArray);
  if (v7)
  {
    v15 = v7;
    APSLogErrorAt();
    v8 = theArray;
    if (!theArray)
    {
      return v15;
    }

    goto LABEL_13;
  }

  v8 = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_9;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
    v13 = ValueAtIndex;
    v14 = ValueAtIndex ? ValueAtIndex + 16 : 0;
    if (!memcmp(v14, a4, 0x28uLL))
    {
      break;
    }

    if (v10 == ++v11)
    {
      goto LABEL_9;
    }
  }

  v16 = CFRetain(v13);
  if (!v16)
  {
LABEL_9:
    APCarPlayAudioFormatsCopyFormatInfoForStreamDescription_cold_1();
    v15 = 4294960591;
    if (!v8)
    {
      return v15;
    }

    goto LABEL_13;
  }

  v15 = 0;
  *a5 = CFRetain(v16);
  if (v8)
  {
LABEL_13:
    CFRelease(v8);
  }

  return v15;
}

Class __getEAAccessoryManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ExternalAccessoryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ExternalAccessoryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849E0E8;
    v5 = 0;
    ExternalAccessoryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ExternalAccessoryLibraryCore_frameworkLibrary)
  {
    __getEAAccessoryManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("EAAccessoryManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getEAAccessoryManagerClass_block_invoke_cold_1();
  }

  getEAAccessoryManagerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __ExternalAccessoryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ExternalAccessoryLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t carPlayAudioFormat_repackageFormatsForStream(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 - 100;
  if ((a2 - 100) > 9 || ((0x3CBu >> v4) & 1) == 0)
  {
    APSLogErrorAt();
    return 0;
  }

  v5 = a2;
  v7 = *(&off_27849E1C8 + v4);
  CFRetain(v7);
  v8 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    carPlayAudioFormat_repackageFormatsForStream_cold_23();
    v74 = v7;
    v61 = 4294960568;
    goto LABEL_156;
  }

  v9 = CFGetAllocator(a1);
  v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v10)
  {
    v76 = 855;
LABEL_172:
    carPlayAudioFormat_repackageFormatsForStream_cold_22(v76, v7);
    v73 = 0;
    v61 = 4294960568;
    goto LABEL_148;
  }

  v11 = CFGetAllocator(a1);
  v12 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v12)
  {
    v76 = 859;
    goto LABEL_172;
  }

  theDict = v12;
  cf = v7;
  if (!a4)
  {
    v70 = *(a1 + 28);
LABEL_133:
    v71 = *(a1 + 40);
    if (v70)
    {
      v72 = cf;
      v73 = theDict;
      if (v71 != 1633772389 && v71 != 1869641075)
      {
        APSLogErrorAt();
        goto LABEL_146;
      }

      if (v5 == 103)
      {
        if (*(a1 + 48) != 1633772320)
        {
          carPlayAudioFormat_repackageFormatsForStream_cold_17();
          goto LABEL_146;
        }
      }

      else if (v5 == 100 && *(a1 + 44) != 1633772320)
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_18();
LABEL_146:
        v61 = 4294960591;
        goto LABEL_147;
      }
    }

    else
    {
      v72 = cf;
      v73 = theDict;
      if (v71 != 1819304813)
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_19();
        goto LABEL_146;
      }

      if (v5 == 103)
      {
        if (*(a1 + 48) != 1633772320)
        {
          carPlayAudioFormat_repackageFormatsForStream_cold_20();
          goto LABEL_146;
        }
      }

      else if (v5 == 100 && *(a1 + 44))
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_21();
        goto LABEL_146;
      }
    }

    CFDictionarySetValue(*(a1 + 56), v72, Mutable);
    CFRelease(Mutable);
    CFDictionarySetValue(*(a1 + 64), v72, v10);
    CFRelease(v10);
    CFDictionarySetValue(*(a1 + 72), v72, v73);
    CFRelease(v73);
    v74 = v72;
    v61 = 0;
LABEL_156:
    CFRelease(v74);
    return v61;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v80 = v10;
  v89 = a1;
  v79 = v5;
  while (1)
  {
    v16 = v5;
    if (v5 == 100)
    {
      if (*(a1 + 28))
      {
        if (CFEqual(*(a3 + 16 * v13), @"media"))
        {
          v16 = 102;
        }

        else
        {
          v16 = 100;
        }
      }

      else
      {
        v16 = 100;
      }
    }

    v17 = a3 + 16 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v85 = v17;
    v100 = 0;
    v99 = 0;
    v97 = v18;
    v20 = APCarPlayAudioFormatsCopyFormatsForAudioType(a1, v16, v18, &v100, 0, &v99);
    if (v20)
    {
      v61 = v20;
      carPlayAudioFormat_repackageFormatsForStream_cold_1();
LABEL_163:
      APSLogErrorAt();
      goto LABEL_164;
    }

    v21 = v99;
    if (v19)
    {
      v22 = v99 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      if ((v100 & v19) == 0)
      {
        goto LABEL_28;
      }

      if (gLogCategory_APCarPlayAudioFormat <= 30 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_2();
      }

      v100 &= v19;
      v21 = v99;
    }

    if (!v21)
    {
      v23 = CFEqual(v97, @"media");
      if ((v16 & 0x6D) == 0x64)
      {
        if (v23)
        {
          v100 &= v19;
        }
      }
    }

LABEL_28:
    v24 = CFGetAllocator(a1);
    v25 = CFDataCreateMutable(v24, 3584);
    if (!v25)
    {
      carPlayAudioFormat_repackageFormatsForStream_cold_16();
LABEL_162:
      v61 = 4294960568;
      goto LABEL_163;
    }

    v26 = v25;
    CFDataSetLength(v25, 3584);
    MutableBytePtr = CFDataGetMutableBytePtr(v26);
    v27 = CFGetAllocator(a1);
    v28 = CFDataCreateMutable(v27, 3584);
    if (!v28)
    {
      carPlayAudioFormat_repackageFormatsForStream_cold_15(v26);
      goto LABEL_162;
    }

    v29 = v28;
    CFDataSetLength(v28, 768);
    v30 = CFDataGetMutableBytePtr(v29);
    v31 = CFGetAllocator(a1);
    theArray = CFArrayCreateMutable(v31, 64, MEMORY[0x277CBF128]);
    if (!theArray)
    {
      carPlayAudioFormat_repackageFormatsForStream_cold_14(v26, v29);
      goto LABEL_162;
    }

    v86 = v29;
    theData = v26;
    v78 = v15;
    v88 = v14;
    v32 = 0;
    v33 = v16;
    v34 = 0;
    v15 = 0;
    v35 = 32;
    if (v33 == 102)
    {
      v35 = 36;
    }

    v90 = v35;
    v36 = !a1 || v97 == 0;
    v91 = v30;
    v37 = v36 || v30 == 0;
    v38 = v37;
    v92 = v38;
    v98 = v33;
    v39 = 1;
    v40 = &unk_27CFF1000;
    do
    {
      if ((v100 & v39) == 0)
      {
        goto LABEL_104;
      }

      if (APAudioFormatToASBD())
      {
        v41 = v40[258];
        if (v41 <= 50 && (v41 != -1 || _LogCategory_Initialize()))
        {
          carPlayAudioFormat_repackageFormatsForStream_cold_3();
        }

        goto LABEL_104;
      }

      v42 = &MutableBytePtr[56 * v32];
      *v42 = 0;
      *(v42 + 2) = 1819304813;
      *(v42 + 4) = 0;
      *(v42 + 5) = 1;
      *(v42 + 6) = 0;
      *(v42 + 7) = 0;
      *(v42 + 4) = 0;
      v43 = v42;
      *(v42 + 3) = 12;
      *(v42 + 5) = 0;
      *(v42 + 6) = 0;
      v101 = 0;
      if (v92)
      {
        APSLogErrorAt();
        v61 = 4294960591;
LABEL_126:
        APSLogErrorAt();
LABEL_129:
        v10 = v80;
        v15 = v78;
        v5 = v79;
        v69 = v88;
        v68 = v86;
        v67 = theData;
        v66 = theArray;
        goto LABEL_111;
      }

      v96 = v32;
      v44 = &v91[12 * v32];
      if (*(a1 + 24) > 0x24D2F3u || (CFDictionaryGetValue(*(a1 + 16), @"manufacturer"), !FigCFEqual()))
      {
        CFArrayGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (v101)
        {
          carPlayAudioFormat_repackageFormatsForStream_cold_6();
        }

        else
        {
          Count = CFArrayGetCount(TypedValue);
          if (Count < 1)
          {
            Int64Ranged = 0;
            v47 = 0;
            v48 = 1;
            a1 = v89;
LABEL_80:
            v40 = &unk_27CFF1000;
            goto LABEL_81;
          }

          v51 = Count;
          v95 = 0;
          v47 = 0;
          Int64Ranged = 0;
          v52 = 0;
          while (1)
          {
            CFDictionaryGetTypeID();
            CFArrayGetTypedValueAtIndex();
            if (v101)
            {
              break;
            }

            Int64 = CFDictionaryGetInt64();
            if (v101 != -6727)
            {
              if (v101)
              {
                goto LABEL_96;
              }

              if (v98 != Int64)
              {
                goto LABEL_76;
              }
            }

            v101 = 0;
            CFStringGetTypeID();
            v54 = CFDictionaryGetTypedValue();
            if (v101 != -6727)
            {
              if (v101)
              {
                goto LABEL_96;
              }

              if (!CFEqual(v97, v54))
              {
                goto LABEL_76;
              }
            }

            v101 = 0;
            v55 = CFDictionaryGetInt64();
            if (v101 != -6727)
            {
              if (v101)
              {
                goto LABEL_96;
              }

              if (v55 != *v43)
              {
                goto LABEL_76;
              }
            }

            v101 = 0;
            v56 = CFDictionaryGetInt64();
            if (v101 != -6727)
            {
              if (v101)
              {
                goto LABEL_96;
              }

              if (v56 != *(v43 + 8))
              {
                goto LABEL_76;
              }
            }

            v101 = 0;
            v57 = CFDictionaryGetInt64();
            if (v101 == -6727)
            {
              goto LABEL_75;
            }

            if (v101)
            {
LABEL_96:
              APSLogErrorAt();
              goto LABEL_97;
            }

            if (v57 == *(v43 + 7))
            {
LABEL_75:
              v101 = 0;
              Int64Ranged = CFDictionaryGetInt64Ranged();
              v47 = CFDictionaryGetInt64Ranged();
              v95 = 1;
            }

            else
            {
LABEL_76:
              v101 = 0;
            }

            if (v51 == ++v52)
            {
              v48 = v95 == 0;
              a1 = v89;
              goto LABEL_80;
            }
          }

          carPlayAudioFormat_repackageFormatsForStream_cold_7();
LABEL_97:
          a1 = v89;
        }

        v40 = &unk_27CFF1000;
        goto LABEL_99;
      }

      v45 = v40[258];
      if (v45 <= 60 && (v45 != -1 || _LogCategory_Initialize()))
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_5();
      }

      Int64Ranged = 0;
      v47 = 0;
      v48 = 1;
LABEL_81:
      v58 = *(a1 + v90);
      *v44 = v58;
      v58 *= 1000;
      v59 = *v43 * (v58 + v47) / 1000000.0;
      *(v44 + 1) = (*v43 * (v58 + Int64Ranged) / 1000000.0);
      *(v44 + 2) = v59;
      v60 = v40[258];
      if (v48)
      {
        if (v60 > 60 || v60 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_99;
        }
      }

      else if (v60 > 30 || v60 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_99;
      }

      LogPrintF();
LABEL_99:
      v61 = v101;
      if (v101)
      {
        goto LABEL_126;
      }

      CFGetAllocator(a1);
      if (APCarPlayAudioFormatInfoGetTypeID_initOnce != -1)
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_8();
      }

      Instance = _CFRuntimeCreateInstance();
      if (!Instance)
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_9();
        v61 = 4294960568;
        goto LABEL_129;
      }

      v63 = Instance;
      *(Instance + 128) = 0;
      *(Instance + 96) = 0u;
      *(Instance + 112) = 0u;
      *(Instance + 64) = 0u;
      *(Instance + 80) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      *(Instance + 104) = v98;
      *(Instance + 112) = CFRetain(v97);
      *(v63 + 16) = 0u;
      *(v63 + 32) = 0u;
      *(v63 + 48) = 0;
      v64 = *(v43 + 4);
      v65 = *(v43 + 1);
      *(v63 + 56) = *v43;
      *(v63 + 72) = v65;
      *(v63 + 88) = v64;
      *(v63 + 96) = v39;
      LODWORD(v64) = *(v44 + 2);
      *(v63 + 120) = *v44;
      *(v63 + 128) = v64;
      CFArrayAppendValue(theArray, v63);
      CFRelease(v63);
      v32 = v96 + 1;
      v15 = 0;
LABEL_104:
      ++v34;
      v39 *= 2;
    }

    while (v34 != 64);
    v66 = theArray;
    if (CFArrayGetCount(theArray) == v32)
    {
      CFDictionarySetValue(theDict, v97, theArray);
      v67 = theData;
      CFDataSetLength(theData, 56 * v32);
      CFDictionarySetValue(Mutable, v97, theData);
      v68 = v86;
      CFDataSetLength(v86, 12 * v32);
      v10 = v80;
      CFDictionarySetValue(v80, v97, v86);
      v61 = 0;
      v5 = v79;
      v69 = v88;
    }

    else
    {
      carPlayAudioFormat_repackageFormatsForStream_cold_10();
      v61 = 4294960534;
      v10 = v80;
      v15 = v78;
      v5 = v79;
      v69 = v88;
      v68 = v86;
      v67 = theData;
    }

LABEL_111:
    CFRelease(v67);
    CFRelease(v68);
    CFRelease(v66);
    if (v61)
    {
      goto LABEL_163;
    }

    v70 = *(a1 + 28);
    if (v5 == 100)
    {
      if (*(a1 + 28))
      {
        break;
      }
    }

    if (v5 == 103 && *v85 == @"media")
    {
      if (*(a1 + 48))
      {
        carPlayAudioFormat_repackageFormatsForStream_cold_11();
        goto LABEL_168;
      }

      *(a1 + 48) = v15;
      goto LABEL_121;
    }

LABEL_119:
    if (*(a1 + 40))
    {
      carPlayAudioFormat_repackageFormatsForStream_cold_12();
      goto LABEL_168;
    }

    *(a1 + 40) = v15;
LABEL_121:
    v13 = (v69 + 1);
    v14 = v69 + 1;
    if (v13 >= a4)
    {
      goto LABEL_133;
    }
  }

  if (*v85 != @"media")
  {
    goto LABEL_119;
  }

  if (!*(a1 + 44))
  {
    *(a1 + 44) = v15;
    goto LABEL_121;
  }

  carPlayAudioFormat_repackageFormatsForStream_cold_13();
LABEL_168:
  v61 = 4294960591;
LABEL_164:
  v73 = theDict;
LABEL_147:
  CFRelease(cf);
LABEL_148:
  CFRelease(Mutable);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v73)
  {
    v74 = v73;
    goto LABEL_156;
  }

  return v61;
}

uint64_t browserController_registerCMBaseClass()
{
  result = _CFRuntimeRegisterClass();
  gAPBrowserControllerTypeID = result;
  return result;
}

uint64_t APBrowserControllerCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APBrowserController <= 30 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    APBrowserControllerCreate_cold_1();
  }

  if (gAPBrowserControllerInitOnce != -1)
  {
    APBrowserControllerCreate_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v20 = 4294895486;
    APBrowserControllerCreate_cold_10();
    return v20;
  }

  v6 = Instance;
  *(Instance + 128) = 0;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  v7 = dispatch_queue_create("com.apple.airplay.APBrowserController.events", 0);
  v6[4] = v7;
  if (!v7)
  {
    v20 = 4294895486;
    APBrowserControllerCreate_cold_9();
    goto LABEL_27;
  }

  v8 = dispatch_queue_create("com.apple.airplay.APBrowserController", 0);
  v6[3] = v8;
  if (!v8)
  {
    v20 = 4294895486;
    APBrowserControllerCreate_cold_8();
    goto LABEL_27;
  }

  v9 = *MEMORY[0x277CC0C08];
  if (*MEMORY[0x277CC0C08])
  {
    v6[7] = CFRetain(*MEMORY[0x277CC0C08]);
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
    v6[7] = 0;
  }

  v6[8] = v10;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  v6[15] = Mutable;
  if (!Mutable)
  {
    v20 = 4294895486;
    APBrowserControllerCreate_cold_7();
    goto LABEL_27;
  }

  v12 = *MEMORY[0x277CBECE8];
  v13 = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  v6[16] = v13;
  if (!v13)
  {
    v20 = 4294895486;
    APBrowserControllerCreate_cold_6();
    goto LABEL_27;
  }

  v14 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v14)
  {
    v20 = 4294895486;
    APBrowserControllerCreate_cold_5();
    goto LABEL_27;
  }

  v15 = v14;
  if (a2)
  {
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
  }

  v16 = APBrowserCreate();
  if (v16)
  {
    v20 = v16;
    APBrowserControllerCreate_cold_3();
    goto LABEL_26;
  }

  v17 = v6[5];
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v18)
  {
    v20 = 4294954514;
LABEL_25:
    APSLogErrorAt();
LABEL_26:
    CFRelease(v15);
LABEL_27:
    CFRelease(v6);
    return v20;
  }

  v19 = v18(v17, browserController_browserEventHandler, v6);
  if (v19)
  {
    v20 = v19;
    goto LABEL_25;
  }

  if (gLogCategory_APBrowserController <= 50 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    APBrowserControllerCreate_cold_4();
  }

  *a3 = v6;
  CFRetain(v6);
  CFRelease(v15);
  return 0;
}

uint64_t APBrowserControllerInvalidate(uint64_t a1)
{
  if (a1)
  {
    v1 = APSDispatchSyncTask();
    APSDispatchSyncFlush();
    return v1;
  }

  else
  {
    APBrowserControllerInvalidate_cold_1(&v3);
    return v3;
  }
}

uint64_t browserController_invalidateInternal(uint64_t a1)
{
  if (gLogCategory_APBrowserController <= 50 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_invalidateInternal_cold_1();
  }

  *(a1 + 16) = 1;
  CMBaseObject = APBrowserGetCMBaseObject();
  if (CMBaseObject)
  {
    v3 = CMBaseObject;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v4)
    {
      v4(v3);
    }
  }

  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  return 0;
}

uint64_t browserController_registerInternalClientNeedsDiscovery(uint64_t *a1)
{
  if (gLogCategory_APBrowserController <= 50 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_registerInternalClientNeedsDiscovery_cold_1();
  }

  v2 = a1[1];
  v3 = *(*a1 + 128);
  if (*(a1 + 16))
  {
    CFSetAddValue(v3, v2);
  }

  else
  {
    CFSetRemoveValue(v3, v2);
  }

  browserController_updateDiscoveryMode(*a1);
  return 0;
}

uint64_t browserController_registerEndpointActivating(uint64_t *a1)
{
  cf = 0;
  v2 = *MEMORY[0x277CBECE8];
  browserController_copyDeviceName(a1[1], &cf);
  DiscoveryID = APTransportDeviceGetDiscoveryID();
  if (*(a1 + 16))
  {
    v4 = "-remote";
  }

  else
  {
    v4 = "";
  }

  v5 = CFStringCreateWithFormat(v2, 0, @"%@%s", DiscoveryID, v4);
  v6 = gLogCategory_APBrowserController;
  if (gLogCategory_APBrowserController <= 40)
  {
    if (gLogCategory_APBrowserController == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v6 = gLogCategory_APBrowserController;
    }

    if (v6 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_12:
  if (CFDictionaryContainsKey(*(*a1 + 120), v5))
  {
    browserController_registerEndpointActivating_cold_1();
  }

  else
  {
    if (*(a1 + 16))
    {
      v7 = @"Presence";
    }

    else
    {
      v7 = @"Detailed";
    }

    CFDictionaryAddValue(*(*a1 + 120), v5, v7);
    browserController_updateDiscoveryMode(*a1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t browserController_copyProperty(uint64_t a1, CFTypeRef cf1, const __CFAllocator *a3, __CFDictionary **a4)
{
  if (!cf1)
  {
    browserController_copyProperty_cold_5();
    return 4294895485;
  }

  if (CFEqual(cf1, @"Browser"))
  {
    v8 = CFRetain(*(a1 + 40));
    v9 = 0;
    *a4 = v8;
    return v9;
  }

  if (!CFEqual(cf1, @"showInfo"))
  {
    return 4294954509;
  }

  theDict = 0;
  Count = CFDictionaryGetCount(*(a1 + 120));
  DiscoveryModeRequiredByEndpoints = browserController_getDiscoveryModeRequiredByEndpoints(a1);
  Mutable = CFStringCreateMutable(a3, 0);
  v13 = Mutable;
  theString = Mutable;
  if (!Mutable)
  {
    v9 = 4294895486;
    browserController_copyProperty_cold_1();
    goto LABEL_21;
  }

  CFStringAppend(Mutable, @"+-+ APBrowserController state +-+\n");
  CFStringAppend(v13, @"\n");
  if (*(a1 + 16))
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  CFStringAppendFormat(v13, 0, @"invalidated=%s ", v14);
  StringForMode = browserController_getStringForMode(*(a1 + 64));
  v16 = browserController_getStringForMode(*(a1 + 56));
  CFStringAppendFormat(v13, 0, @"currentDiscoveryMode=%s requestedDiscoveryMode=%s (seed %llu)\n", StringForMode, v16, *(a1 + 48));
  if (Count <= 0)
  {
    v17 = "no";
  }

  else
  {
    v17 = "yes";
  }

  v18 = browserController_getStringForMode(DiscoveryModeRequiredByEndpoints);
  v19 = CFSetGetCount(*(a1 + 128));
  CFStringAppendFormat(v13, 0, @"forcedMode=%@ endpointsActivated=%s endpointRequiredDiscoveryMode=%s internalClientsRequiringDiscovery=%d\n", 0, v17, v18, v19);
  if (CFDictionaryGetCount(*(a1 + 120)) >= 1)
  {
    context[1] = a3;
    context[2] = 0;
    context[0] = &theString;
    CFStringAppend(v13, @"Active devices:\n");
    CFDictionaryApplyFunction(*(a1 + 120), browserController_copyDescriptionForDevice, context);
    v13 = theString;
  }

  CFStringAppend(v13, @"\n");
  CMBaseObject = APBrowserGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    v9 = 4294954514;
    goto LABEL_18;
  }

  v9 = v21(CMBaseObject, *MEMORY[0x277CE4D20], a3, &theDict);
  if (v9)
  {
LABEL_18:
    APSLogErrorAt();
    if (theString)
    {
      CFRelease(theString);
    }

    v13 = 0;
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CE4D28]);
  CFStringAppendFormat(theString, 0, @"%@", Value);
  v13 = theString;
  theString = 0;
LABEL_21:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v9)
  {
    browserController_copyProperty_cold_2();
  }

  else
  {
    v23 = CFDictionaryCreateMutable(a3, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v23)
    {
      v24 = v23;
      CFDictionaryAddValue(v23, @"detailedDescription", v13);
      v9 = 0;
      *a4 = v24;
    }

    else
    {
      v9 = 4294895486;
      browserController_copyProperty_cold_3();
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    browserController_copyProperty_cold_4();
  }

  return v9;
}

uint64_t APBrowserControllerReconfirmEndpoint(const void *a1, const void *a2)
{
  CFRetain(a1);
  CFRetain(a2);
  return APSDispatchAsyncFHelper();
}

void browserController_reconfirmEndpointInternal(uint64_t a1)
{
  if (gLogCategory_APBrowserController <= 40 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_reconfirmEndpointInternal_cold_1();
  }

  if (APTransportDeviceReconfirm())
  {
    browserController_reconfirmEndpointInternal_cold_2();
  }

  CFRelease(*a1);
  v2 = *(a1 + 8);

  CFRelease(v2);
}

uint64_t APBrowserControllerDiscoverAndInjectEndpoint()
{
  v0 = APBrowserDiscoverAndInjectDevice();
  if (v0)
  {
    APBrowserControllerDiscoverAndInjectEndpoint_cold_1();
  }

  return v0;
}

uint64_t APBrowserControllerRemoveInjectedEndpoint()
{
  APTransportDeviceGetDiscoveryID();
  v0 = APBrowserRemoveInjectedDevice();
  if (v0)
  {
    APBrowserControllerRemoveInjectedEndpoint_cold_1();
  }

  return v0;
}

uint64_t APBrowserControllerSetEventHandlers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11[0] = a2;
  v8 = a5;
  v9 = a4;
  v7 = a6;
  v11[1] = a1 + 80;
  v11[2] = v11;
  v11[3] = 8;
  v11[4] = a1 + 88;
  v11[5] = &v10;
  v11[6] = 8;
  v11[7] = a1 + 96;
  v11[8] = &v9;
  v11[9] = 8;
  v11[10] = a1 + 104;
  v11[11] = &v8;
  v11[12] = 8;
  v11[13] = a1 + 112;
  v11[14] = &v7;
  v11[15] = 8;
  return APSDispatchSyncBatchAssignment();
}

void browserController_Finalize(void *a1)
{
  browserController_invalidateInternal(a1);
  v2 = a1[15];
  if (v2)
  {
    CFRelease(v2);
    a1[15] = 0;
  }

  v3 = a1[16];
  if (v3)
  {
    CFRelease(v3);
    a1[16] = 0;
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

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }

  v7 = a1[3];
  if (v7)
  {
    dispatch_release(v7);
    a1[3] = 0;
  }

  v8 = a1[4];
  if (v8)
  {
    dispatch_release(v8);
    a1[4] = 0;
  }
}

void browserController_browserModeAlreadySet(void *a1)
{
  if (gLogCategory_APBrowserController <= 40 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_browserModeAlreadySet_cold_1();
  }

  v2 = *a1;
  if (!*(*a1 + 16))
  {
    v3 = v2[13];
    if (v3)
    {
      v3(a1[1], a1[2], v2[14]);
      v2 = *a1;
    }
  }

  CFRelease(v2);
  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[3];
  if (v5)
  {

    CFRelease(v5);
  }
}

const char *browserController_getStringForMode(const void *a1)
{
  if (CFEqual(a1, *MEMORY[0x277CC0C08]))
  {
    return "None";
  }

  if (CFEqual(a1, *MEMORY[0x277CC0C10]))
  {
    return "Presence";
  }

  if (CFEqual(a1, *MEMORY[0x277CC0BF8]))
  {
    return "Background";
  }

  if (CFEqual(a1, *MEMORY[0x277CC0C00]))
  {
    return "Detailed";
  }

  if (gLogCategory_APBrowserController <= 60 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_getStringForMode_cold_1();
  }

  return "Unrecognized";
}

void browserController_copyDescriptionForDevice(uint64_t a1, uint64_t a2, CFMutableStringRef **a3)
{
  v4 = *a3;
  CFStringAppendFormat(**a3, 0, @"    %@", a1);
  if (*MEMORY[0x277CBED28] == a2)
  {
    v5 = "- Requires Detailed";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(*v4, 0, @" %s", v5);
  v6 = *v4;

  CFStringAppend(v6, @"\n");
}

void browserController_tickleDetailedMode(const void *a1)
{
  if (APBrowserTickleDetailedMode())
  {
    browserController_tickleDetailedMode_cold_1();
  }

  CFRelease(a1);
}

uint64_t APEndpointCarPlayCreateWithTransportDevice(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  LoggingCaches = 0;
  cf = 0;
  v35 = 0;
  v39 = 0u;
  v40 = 0u;
  *label = 0u;
  v38 = 0u;
  if (!a2)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_18();
    goto LABEL_58;
  }

  if (!a4)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_17();
    goto LABEL_58;
  }

  LoggingCaches = APEndpointDescriptionAirPlayCreateWithTransportDevice(a1, a2, 0, &cf);
  if (LoggingCaches)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_1();
    goto LABEL_58;
  }

  if (!APSGetFBOPropertyInt64())
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_16();
    goto LABEL_58;
  }

  if (!APSGetFBOPropertyInt64() && !APSGetFBOPropertyInt64())
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_15();
    goto LABEL_58;
  }

  FigEndpointExtendedGetClassID();
  LoggingCaches = CMDerivedObjectCreate();
  if (LoggingCaches)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_2();
    goto LABEL_58;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CFRetain(cf);
  *(DerivedStorage + 8) = v8;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(v8);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    LoggingCaches = -12782;
    goto LABEL_64;
  }

  LoggingCaches = v10(CMBaseObject, @"Name", a1, DerivedStorage + 16);
  if (LoggingCaches)
  {
LABEL_64:
    APEndpointCarPlayCreateWithTransportDevice_cold_14();
    goto LABEL_58;
  }

  if (FigCFEqual())
  {
    v11 = *(DerivedStorage + 24);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 24) = 0;
    }

    v12 = *MEMORY[0x277CBECE8];
    v13 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], @"/System/Library/PrivateFrameworks/CarKit.framework", kCFURLPOSIXPathStyle, 1u);
    if (v13)
    {
      v14 = CFBundleCreate(v12, v13);
      v15 = v14;
      if (v14)
      {
        *(DerivedStorage + 24) = CFBundleCopyLocalizedString(v14, @"CARPLAY_LOCKSCREEN_TITLE", @"CARPLAY_LOCKSCREEN_TITLE", @"Localizable");
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
    v13 = 0;
  }

  *(DerivedStorage + 40) = APSGetFBOPropertyInt64() == 0;
  if (LoggingCaches)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_3();
LABEL_78:
    Mutable = 0;
    goto LABEL_52;
  }

  v16 = APSGetFBOPropertyInt64();
  if (LoggingCaches)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_4();
    goto LABEL_78;
  }

  if (v16 == 32)
  {
    *(DerivedStorage + 41) = 1;
  }

  SNPrintF();
  v17 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 168) = v17;
  if (!v17)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_13();
    goto LABEL_78;
  }

  SNPrintF();
  v18 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 528) = v18;
  if (!v18)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_12();
    goto LABEL_78;
  }

  SNPrintF();
  v19 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 512) = v19;
  if (!v19)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_11();
    goto LABEL_78;
  }

  SNPrintF();
  v20 = dispatch_queue_create(label, 0);
  *DerivedStorage = v20;
  if (!v20)
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_10();
    goto LABEL_78;
  }

  CFPrefs_GetInt64();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    CFDictionarySetInt64();
    LoggingCaches = APAudioEngineCarPlayCreate(0, Mutable, (DerivedStorage + 288));
    if (*(DerivedStorage + 288))
    {
      v22 = *(DerivedStorage + 8);
      v23 = CFGetAllocator(v35);
      v24 = APEndpointDescriptionGetCMBaseObject(v22);
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        LoggingCaches = v25(v24, @"DeviceID", v23, DerivedStorage + 32);
        if (!LoggingCaches)
        {
          *(DerivedStorage + 344) = -1;
          *(DerivedStorage + 424) = -1;
          *(DerivedStorage + 432) = -1;
          *(DerivedStorage + 440) = -1;
          if (CFPrefs_GetInt64() <= 0)
          {
            *(DerivedStorage + 360) = 0;
            *(DerivedStorage + 368) = 0;
            if (!a3)
            {
LABEL_45:
              LoggingCaches = APSEventRecorderCreate();
              if (LoggingCaches)
              {
                APEndpointCarPlayCreateWithTransportDevice_cold_5();
              }

              else
              {
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                APSEventRecorderAddSignPostForEvent();
                LoggingCaches = carEndpoint_createLoggingCaches();
                if (LoggingCaches)
                {
                  APEndpointCarPlayCreateWithTransportDevice_cold_6();
                }

                else
                {
                  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  *a4 = v35;
                  v35 = 0;
                }
              }

              goto LABEL_52;
            }
          }

          else
          {
            Int64 = CFPrefs_GetInt64();
            v27 = 60 * Int64 == 0;
            v28 = (60 * Int64) >> 1;
            *(DerivedStorage + 360) = 0;
            *(DerivedStorage + 368) = v28;
            if (!v27)
            {
              *(DerivedStorage + 352) = malloc_type_calloc(v28, 8uLL, 0x6004044C4A2DFuLL);
            }

            if (!a3)
            {
              goto LABEL_45;
            }
          }

          *(DerivedStorage + 160) = CFDictionaryGetInt64() != 0;
          if (CFDictionaryContainsKey(a3, @"sessionHostInfo"))
          {
            v29 = *(DerivedStorage + 48);
            Value = CFDictionaryGetValue(a3, @"sessionHostInfo");
            *(DerivedStorage + 48) = Value;
            if (Value)
            {
              CFRetain(Value);
            }

            if (v29)
            {
              CFRelease(v29);
            }
          }

          v31 = CFDictionaryGetValue(a3, @"EventRecorder");
          v32 = *(DerivedStorage + 544);
          *(DerivedStorage + 544) = v31;
          if (v31)
          {
            CFRetain(v31);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          goto LABEL_45;
        }
      }

      else
      {
        LoggingCaches = -12782;
      }

      APEndpointCarPlayCreateWithTransportDevice_cold_7();
    }

    else
    {
      APEndpointCarPlayCreateWithTransportDevice_cold_8();
    }
  }

  else
  {
    APEndpointCarPlayCreateWithTransportDevice_cold_9();
  }

LABEL_52:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_58:
  if (v35)
  {
    CFRelease(v35);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return LoggingCaches;
}

uint64_t carEndpoint_createLoggingCaches()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  keyExistsAndHasValidFormat = 0;
  v1 = (DerivedStorage + 568);
  *(DerivedStorage + 568) = 20;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"sendCommandCacheSize", @"com.apple.airplay", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    AppIntegerValue = *v1;
  }

  else
  {
    *v1 = AppIntegerValue;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], AppIntegerValue, MEMORY[0x277CBF128]);
  *(DerivedStorage + 560) = Mutable;
  if (!Mutable)
  {
    carEndpoint_createLoggingCaches_cold_4();
    return 4294950575;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_createLoggingCaches_cold_1();
  }

  *(DerivedStorage + 552) = FigSimpleMutexCreate();
  v6 = (DerivedStorage + 584);
  *(DerivedStorage + 584) = 10;
  keyExistsAndHasValidFormat = 0;
  v7 = CFPreferencesGetAppIntegerValue(@"receivedCommandCacheSize", @"com.apple.airplay", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && v7)
  {
    *v6 = v7;
  }

  else
  {
    v7 = *v6;
  }

  v8 = CFArrayCreateMutable(v4, v7, MEMORY[0x277CBF128]);
  *(DerivedStorage + 576) = v8;
  if (!v8)
  {
    carEndpoint_createLoggingCaches_cold_3();
    return 4294950575;
  }

  if (gLogCategory_APEndpointCarPlay > 50)
  {
    return 0;
  }

  if (gLogCategory_APEndpointCarPlay != -1 || (result = _LogCategory_Initialize(), result))
  {
    carEndpoint_createLoggingCaches_cold_2();
    return 0;
  }

  return result;
}

void carEndpoint_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_Finalize_cold_1();
  }

  if (introspector_getCollectionOfActiveCarPlayEndpoints_once != -1)
  {
    carEndpoint_Finalize_cold_2();
  }

  if (introspector_getCollectionOfActiveCarPlayEndpoints_coll)
  {
    v3 = *introspector_getCollectionOfActiveCarPlayEndpoints_coll;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 0x40000000;
    v33[2] = __carEndpoint_Finalize_block_invoke;
    v33[3] = &__block_descriptor_tmp_28;
    v33[4] = introspector_getCollectionOfActiveCarPlayEndpoints_coll;
    v33[5] = a1;
    dispatch_sync(v3, v33);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 8) = 0;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 16) = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 24) = 0;
  }

  v7 = *(DerivedStorage + 32);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 32) = 0;
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 48) = 0;
  }

  v9 = *(DerivedStorage + 544);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 544) = 0;
  }

  v10 = *(DerivedStorage + 536);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 536) = 0;
  }

  FigSimpleMutexDestroy();
  v11 = *(DerivedStorage + 560);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 560) = 0;
  }

  v12 = *(DerivedStorage + 576);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 576) = 0;
  }

  v13 = *(DerivedStorage + 216);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 216) = 0;
  }

  v14 = *(DerivedStorage + 512);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 512) = 0;
  }

  v15 = *(DerivedStorage + 520);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 520) = 0;
  }

  v16 = *(DerivedStorage + 240);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 240) = 0;
  }

  v17 = *(DerivedStorage + 256);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 256) = 0;
  }

  v18 = *(DerivedStorage + 264);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 264) = 0;
  }

  v19 = *(DerivedStorage + 280);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 280) = 0;
  }

  v20 = *(DerivedStorage + 288);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 288) = 0;
  }

  v21 = *(DerivedStorage + 296);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 296) = 0;
  }

  v22 = *(DerivedStorage + 304);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 304) = 0;
  }

  v23 = *(DerivedStorage + 320);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 320) = 0;
  }

  v24 = *(DerivedStorage + 336);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 336) = 0;
  }

  v25 = *(DerivedStorage + 464);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 464) = 0;
  }

  v26 = *(DerivedStorage + 480);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 480) = 0;
  }

  v27 = *(DerivedStorage + 472);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 472) = 0;
  }

  v28 = *(DerivedStorage + 272);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 272) = 0;
  }

  v29 = *(DerivedStorage + 168);
  if (v29)
  {
    dispatch_release(v29);
    *(DerivedStorage + 168) = 0;
  }

  if (*(DerivedStorage + 368))
  {
    v30 = 0;
    do
    {
      v31 = *(*(DerivedStorage + 352) + 8 * v30);
      if (!v31)
      {
        break;
      }

      CFRelease(v31);
      *(*(DerivedStorage + 352) + 8 * v30++) = 0;
    }

    while (v30 < *(DerivedStorage + 368));
  }

  free(*(DerivedStorage + 352));
  v32 = *(DerivedStorage + 528);
  if (v32)
  {
    dispatch_release(v32);
    *(DerivedStorage + 528) = 0;
  }
}

uint64_t carEndpoint_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  Mutable = CFStringCreateMutable(0, 0);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v3 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_CopyDebugDescription_block_invoke;
  block[3] = &unk_27849E388;
  block[5] = &v8;
  block[6] = a1;
  block[4] = &v12;
  dispatch_sync(v3, block);
  v4 = v9[3];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = v13[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

uint64_t __introspector_getCollectionOfActiveCarPlayEndpoints_block_invoke()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    introspector_getCollectionOfActiveCarPlayEndpoints_coll = malloc_type_calloc(1uLL, 0x18uLL, 0x70040EA3A3B56uLL);
    *introspector_getCollectionOfActiveCarPlayEndpoints_coll = dispatch_queue_create("CollectionOfActiveCarPlayEndpoints", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v2 = introspector_getCollectionOfActiveCarPlayEndpoints_coll;
    *(introspector_getCollectionOfActiveCarPlayEndpoints_coll + 8) = Mutable;
    *(v2 + 16) = "ActiveCarPlayEndpoints";

    return APSIntrospectorAddCommand();
  }

  return result;
}

void carEndpoint_copyShowInfoDictionary(uint64_t a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  cf = 0;
  value = 0;
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetValue(Mutable, @"Name", *(DerivedStorage + 16));
    CFDictionarySetValue(v7, @"DeviceID", *(DerivedStorage + 32));
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, @"TransportDevice", a2, &v25);
      if (v25)
      {
        DiscoveryID = APTransportDeviceGetDiscoveryID();
        CFDictionarySetValue(v7, @"DiscoveryID", DiscoveryID);
        if (v25)
        {
          CFRelease(v25);
          v25 = 0;
        }
      }
    }

    v11 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, @"Model", a2, &value);
    }

    CFDictionarySetValue(v7, @"Model", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    v13 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, @"SourceVersion", a2, &value);
    }

    CFDictionarySetValue(v7, @"SourceVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    v15 = *(DerivedStorage + 8);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v16)
    {
      v16(v15, &cf);
      v17 = cf;
    }

    else
    {
      v17 = 0;
    }

    CFDictionarySetValue(v7, @"AirPlayFeatures", v17);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v18 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(v18, @"StatusFlags", a2, &value);
    }

    CFDictionarySetValue(v7, @"StatusFlags", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    v20 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 240))
    {
      v20 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v7, @"Activated", *v20);
    if (*(DerivedStorage + 240))
    {
      v21 = APSenderSessionGetCMBaseObject();
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v22)
      {
        v22(v21, @"ShowInfo", *MEMORY[0x277CBECE8], &value);
      }

      if (value)
      {
        CFDictionarySetValue(v7, @"SenderSessionInfo", value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }
    }

    if (*(DerivedStorage + 264))
    {
      CFArrayGetCount(*(DerivedStorage + 264));
      CFArrayApplyBlock();
    }

    if (*(DerivedStorage + 228))
    {
      CFDictionarySetInt64();
    }

    *a3 = v7;
    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    carEndpoint_copyShowInfoDictionary_cold_1();
  }
}

uint64_t APEndpointDescriptionCopyFeatures(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

void __carEndpoint_copyShowInfoDictionary_block_invoke(uint64_t a1, uint64_t a2)
{
  value = 0;
  v4 = *(a1 + 32);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, @"EndpointStreamShowInfo", v4, &value);
    if (value)
    {
      CFDictionarySetValue(*(a1 + 40), *(a2 + 24), value);
      CFRelease(value);
    }
  }
}

uint64_t carEndpoint_isEndpointConnected()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(DerivedStorage + 168);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __carEndpoint_isEndpointConnected_block_invoke;
  v4[3] = &unk_27849E3D0;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t carEndpoint_copyPropertyForDisplay(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  theArray = 0;
  v8 = *(CMBaseObjectGetDerivedStorage() + 8);
  v9 = CFGetAllocator(a1);
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(v8);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v14 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v12 = v11(CMBaseObject, @"DisplayDescriptionArray", v9, &theArray);
  if (v12)
  {
    v14 = v12;
    goto LABEL_7;
  }

  if (CFArrayGetCount(theArray) <= 0)
  {
    carEndpoint_copyPropertyForDisplay_cold_2();
    v14 = 4294950576;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    v14 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, a2, a3, a4);
    if (v14)
    {
      carEndpoint_copyPropertyForDisplay_cold_1();
    }
  }

LABEL_8:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v14;
}

uint64_t carEndpoint_getSupportedFeatures(uint64_t a1, unint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    carEndpoint_getSupportedFeatures_cold_1();
    return 4294950576;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(v5, &cf);
    if (!v7)
    {
      v8 = APSFeaturesHasFeature() != 0;
      v9 = (APSFeaturesHasFeature() != 0) | (2 * v8);
      if (*(v4 + 58))
      {
        v9 |= 8uLL;
      }

      if (*(v4 + 162))
      {
        v9 |= 4uLL;
      }

      *a2 = v9;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 4294954514;
  }

  APSLogErrorAt();
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t __carEndpoint_copyStateProperty_block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    v3 = APSGetFBOPropertyInt64();
    result = APSGetFBOPropertyInt64();
    if (v3)
    {
      v4 = result == 0;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(v2 + 32) + 8) + 24) |= v5;
  return result;
}

uint64_t carEndpoint_copyStreams(uint64_t a1, const __CFAllocator *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  v7 = v12;
  v12[3] = Mutable;
  if (Mutable)
  {
    v8 = *(DerivedStorage + 264);
    if (v8)
    {
      CFArrayGetCount(v8);
      CFArrayApplyBlock();
      v7 = v12;
      Mutable = v12[3];
    }

    v9 = 0;
    *a3 = Mutable;
    v7[3] = 0;
  }

  else
  {
    carEndpoint_copyStreams_cold_1();
    v9 = v15;
  }

  _Block_object_dispose(&v11, 8);
  return v9;
}

uint64_t carEndpoint_updateDisplayCornerMasks()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 65))
  {
    result = *(result + 464);
    if (result)
    {
      return CFDictionaryApplyBlock();
    }
  }

  return result;
}

void __carEndpoint_updateDisplayCornerMasks_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  values = a3;
  if (!*(a1 + 32) || FigCFEqual())
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    LOBYTE(v31) = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 264))
    {
      CFArrayGetCount(*(DerivedStorage + 264));
      v21 = MEMORY[0x277D85DD0];
      v22 = 0x40000000;
      v23 = __carEndpoint_getStreamIsResumedForDisplayUUID_block_invoke;
      v24 = &unk_27849E538;
      v25 = &v28;
      v26 = a2;
      CFArrayApplyBlock();
    }

    v7 = *(v29 + 24);
    _Block_object_dispose(&v28, 8);
    v8 = *(a1 + 40);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = 0;
    v9 = CMBaseObjectGetDerivedStorage();
    if (*(v9 + 264))
    {
      CFArrayGetCount(*(v9 + 264));
      v21 = MEMORY[0x277D85DD0];
      v22 = 0x40000000;
      v23 = __carEndpoint_copyStreamSubtypeForDisplayUUID_block_invoke;
      v24 = &unk_27849E560;
      v26 = a2;
      v27 = v8;
      v25 = &v28;
      CFArrayApplyBlock();
    }

    v10 = v29[3];
    _Block_object_dispose(&v28, 8);
    ScreenStreamForDisplayUUID = carEndpoint_getScreenStreamForDisplayUUID();
    if (ScreenStreamForDisplayUUID)
    {
      v12 = ScreenStreamForDisplayUUID;
      if (FigCFEqual() && v7)
      {
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v13)
        {
          v13(v12, 0, 0, 0);
        }

        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      if (!a3 || *MEMORY[0x277CBEEE8] == a3)
      {
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        v14 = CFGetAllocator(*(a1 + 40));
        v15 = CFDictionaryCreate(v14, &kAPEndpointStreamCornerMaskKey_TopLeftCornerMask, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v15)
        {
          v16 = v15;
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CMBaseObject = FigEndpointStreamGetCMBaseObject();
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v18)
          {
            v18(CMBaseObject, @"ExtraStreamOptions", v16);
          }

          CFRelease(v16);
        }
      }

      if (FigCFEqual())
      {
        carEndpoint_raiseAltScreenPowerAssertionIfNeeded();
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v19)
        {
          v19(v12, 0, 0, 0);
        }
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }
}

uint64_t __carEndpoint_getStreamIsResumedForDisplayUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 56);
  }

  return result;
}

uint64_t __carEndpoint_copyStreamSubtypeForDisplayUUID_block_invoke(uint64_t a1)
{
  result = FigCFEqual();
  if (result)
  {
    v3 = CFGetAllocator(*(a1 + 48));
    v4 = *(*(a1 + 32) + 8);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    result = VTable + 8;
    v8 = *(v7 + 48);
    if (v8)
    {
      v9 = *MEMORY[0x277CC18B0];

      return v8(CMBaseObject, v9, v3, v4 + 24);
    }
  }

  return result;
}

uint64_t carEndpoint_Activate(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v11 = *(DerivedStorage + 528);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __carEndpoint_Activate_block_invoke;
  v13[3] = &__block_descriptor_tmp_129;
  v13[4] = DerivedStorage;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v13[9] = a5;
  dispatch_async(v11, v13);
  return 0;
}

uint64_t carEndpoint_Deactivate(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  carEndpoint_getSupportedFeatures(a1, &v12);
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v9 = *(DerivedStorage + 528);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_Deactivate_block_invoke;
  block[3] = &__block_descriptor_tmp_1111;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a1;
  block[7] = a3;
  block[8] = v12;
  block[9] = a4;
  dispatch_async(v9, block);
  return 0;
}

uint64_t carEndpoint_Dissociate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v3 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_Dissociate_block_invoke;
  block[3] = &unk_27849F390;
  block[4] = v8;
  block[5] = DerivedStorage;
  dispatch_sync(v3, block);
  CFRetain(a1);
  v4 = *(DerivedStorage + 528);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __carEndpoint_Dissociate_block_invoke_2;
  v6[3] = &unk_27849F3B8;
  v6[4] = v8;
  v6[5] = a1;
  dispatch_async(v4, v6);
  _Block_object_dispose(v8, 8);
  return 0;
}

uint64_t carEndpoint_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 176))
  {
    carEndpoint_SetDelegateRemoteControl_cold_1();
    return 4294950573;
  }

  else
  {
    v4 = DerivedStorage;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = *(v4 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_SetDelegateRemoteControl_block_invoke;
    block[3] = &__block_descriptor_tmp_1119;
    block[4] = v4;
    block[5] = a2;
    dispatch_sync(v5, block);
    return 0;
  }
}

uint64_t carEndpoint_UpdateFeaturesWithCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, void (*a4)(const void *, uint64_t, void, void, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if ((a2 & 4) != 0)
  {
    if (*(DerivedStorage + 60))
    {
      v11 = a2 & 4;
    }

    else
    {
      v11 = 0;
    }

    if (!*(DerivedStorage + 60))
    {
      a2 &= ~4uLL;
    }
  }

  else
  {
    v11 = 0;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = *(v10 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_UpdateFeaturesWithCompletionCallback_block_invoke;
  block[3] = &unk_27849F450;
  block[4] = &v17;
  block[5] = v10;
  dispatch_sync(v12, block);
  if (*(v10 + 162) != v11)
  {
    *(v10 + 162) = v11;
    v13 = *(v18 + 6);
    v21 = 0;
    v14 = CFGetAllocator(a1);
    if (APEndpointCreateStreamsChangedNotificationPayload(v14, 4, v13, v11, &v21))
    {
      carEndpoint_UpdateFeaturesWithCompletionCallback_cold_1();
    }

    else
    {
      carEndpoint_postNotification(a1, *MEMORY[0x277CC0D90], 0, v21);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  if (a4)
  {
    a4(a1, a2, *(v18 + 6), 0, a5);
  }

  _Block_object_dispose(&v17, 8);
  return 0;
}

void carEndpoint_deactivateInternal(const void *a1, int a2, uint64_t a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v70 = 0;
  v71 = &v70;
  v72 = 0x2000000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2000000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2000000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 0;
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  LODWORD(v86[0]) = 0;
  LODWORD(v74[0]) = 0;
  FigSimpleMutexLock();
  v9 = *(v8 + 560);
  if (v9 && CFArrayGetCount(v9) >= 1)
  {
    v39 = a4;
    v40 = a1;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_1();
    }

    if (CFArrayGetCount(*(v8 + 560)) >= 1)
    {
      for (i = 0; i < CFArrayGetCount(*(v8 + 560)); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 560), i);
        CFDictionaryGetValue(ValueAtIndex, @"CarPlaySendCommandCache_Command");
        CFDictionaryGetValue(ValueAtIndex, @"CarPlaySendCommandCache_TimestampBefore");
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        if (LODWORD(v74[0]))
        {
          if (gLogCategory_APEndpointCarPlay > 90 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
          {
            continue;
          }
        }

        else if (gLogCategory_APEndpointCarPlay > 50 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
        {
          continue;
        }

        LogPrintF();
      }
    }

    a4 = v39;
    a1 = v40;
    if (gLogCategory_APEndpointCarPlay < 51 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_2();
    }
  }

  FigSimpleMutexUnlock();
  v12 = CMBaseObjectGetDerivedStorage();
  LODWORD(cf) = 0;
  LODWORD(v86[0]) = 0;
  v13 = *(v12 + 576);
  if (v13 && CFArrayGetCount(v13) >= 1)
  {
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_3();
    }

    if (CFArrayGetCount(*(v12 + 576)) >= 1)
    {
      for (j = 0; j < CFArrayGetCount(*(v12 + 576)); ++j)
      {
        v15 = CFArrayGetValueAtIndex(*(v12 + 576), j);
        CFDictionaryGetValue(v15, @"CarPlayReceivedCommandCache_Command");
        CFDictionaryGetValue(v15, @"CarPlayReceivedCommandCache_Timestamp");
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        if (LODWORD(v86[0]))
        {
          if (gLogCategory_APEndpointCarPlay > 90 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
          {
            continue;
          }
        }

        else if (gLogCategory_APEndpointCarPlay > 50 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
        {
          continue;
        }

        LogPrintF();
      }
    }

    if (gLogCategory_APEndpointCarPlay < 51 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_4();
    }
  }

  v16 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CFArrayRemoveAllValues(*(v16 + 560));
  FigSimpleMutexUnlock();
  CFArrayRemoveAllValues(*(v16 + 576));
  v17 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_deactivateInternal_block_invoke;
  block[3] = &unk_27849F148;
  block[4] = &v70;
  block[5] = DerivedStorage;
  dispatch_sync(v17, block);
  if (*(v71 + 6))
  {
    APSEventRecorderRecordEvent();
    v30 = CMBaseObjectGetDerivedStorage();
    v107[0] = 0;
    v107[1] = v107;
    v107[2] = 0x2000000000;
    v107[3] = 0;
    v105[0] = 0;
    v105[1] = v105;
    v105[2] = 0x2000000000;
    v106 = 0;
    v101 = 0;
    v102 = &v101;
    v103 = 0x2000000000;
    v104 = 0;
    v97 = 0;
    v98 = &v97;
    v99 = 0x2000000000;
    v100 = 0;
    v95[0] = 0;
    v95[1] = v95;
    v95[2] = 0x2000000000;
    v96 = 0;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2000000000;
    v31 = MEMORY[0x277CBF138];
    v32 = MEMORY[0x277CBF150];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v87 = 0;
    v88 = &v87;
    v89 = 0x2000000000;
    v90 = CFDictionaryCreateMutable(0, 0, v31, v32);
    v33 = *(v30 + 168);
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 0x40000000;
    v86[2] = __carEndpoint_postSessionStatistics_block_invoke;
    v86[3] = &unk_27849F238;
    v86[8] = v30;
    v86[4] = v107;
    v86[5] = v105;
    v86[6] = &v91;
    v86[7] = &v101;
    dispatch_sync(v33, v86);
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_5();
    }

    if (v102[3])
    {
      CFArrayGetCount(*(v30 + 264));
      cf = MEMORY[0x277D85DD0];
      v76 = 0x40000000;
      v77 = __carEndpoint_postSessionStatistics_block_invoke_2;
      v78 = &unk_27849F260;
      v79 = v105;
      v80 = &v97;
      v81 = &v91;
      v82 = &v87;
      v85 = v30;
      v84 = a1;
      v83 = v95;
      CFArrayApplyBlock();
      if (*(v30 + 376))
      {
        CFDictionarySetInt64();
      }

      v34 = *(v30 + 168);
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 0x40000000;
      v74[2] = __carEndpoint_postSessionStatistics_block_invoke_3;
      v74[3] = &unk_27849F2B0;
      v74[5] = v30;
      v74[4] = &v91;
      dispatch_sync(v34, v74);
      APCarPlay_AddAnalyticsValues(v92[3], @"SessionEnded");
      if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        carEndpoint_deactivateInternal_cold_6();
      }

      APCarPlay_AddSignPostTimeInfoToTimeStore(@"CARAirPlaySessionEndTimeInfo", v88[3]);
      CFRelease(v102[3]);
    }

    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_deactivateInternal_cold_7();
    }

    free(v98[3]);
    v35 = v92[3];
    if (v35)
    {
      CFRelease(v35);
    }

    v36 = v88[3];
    if (v36)
    {
      CFRelease(v36);
    }

    _Block_object_dispose(&v87, 8);
    _Block_object_dispose(&v91, 8);
    _Block_object_dispose(v95, 8);
    _Block_object_dispose(&v97, 8);
    _Block_object_dispose(&v101, 8);
    _Block_object_dispose(v105, 8);
    _Block_object_dispose(v107, 8);
    carEndpoint_powerLogActivation(a1, 0);
    v37 = CMBaseObjectGetDerivedStorage();
    APSEventRecorderReset();
    v38 = *(v37 + 168);
    cf = MEMORY[0x277D85DD0];
    v76 = 0x40000000;
    v77 = __carEndpoint_resetEventRecorderEventsAndStatistics_block_invoke;
    v78 = &__block_descriptor_tmp_1104;
    v79 = v37;
    dispatch_sync(v38, &cf);
  }

  *(DerivedStorage + 161) = 0;
  v18 = *(DerivedStorage + 168);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 0x40000000;
  v44[2] = __carEndpoint_deactivateInternal_block_invoke_2;
  v44[3] = &unk_27849F170;
  v44[4] = &v46;
  v44[5] = &v66;
  v44[10] = a1;
  v44[11] = DerivedStorage;
  v44[6] = &v62;
  v44[7] = &v58;
  v44[8] = &v50;
  v44[9] = &v54;
  dispatch_sync(v18, v44);
  if (!FigServer_IsAirplayd())
  {
    v19 = *(DerivedStorage + 512);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 0x40000000;
    v43[2] = __carEndpoint_deactivateInternal_block_invoke_3;
    v43[3] = &__block_descriptor_tmp_1040;
    v43[4] = DerivedStorage;
    dispatch_sync(v19, v43);
  }

  v20 = v51[3];
  if (v20)
  {
    APAccTransportClientConnectionInvalidateEndpoint(v55[3], v20);
    CFRelease(v51[3]);
    CFRelease(a1);
  }

  if (v67[3])
  {
    cf = 0;
    APSenderSessionMessageSendTimeout();
    CMBaseObject = APSenderSessionGetCMBaseObject(v67[3]);
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22)
    {
      v22(CMBaseObject, @"TransportControlStream", 0, &cf);
    }

    if (cf)
    {
      APSSetFBOPropertyInt64();
    }

    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v59[3])
  {
    CFArrayGetCount(v59[3]);
    v42[10] = MEMORY[0x277D85DD0];
    v42[11] = 0x40000000;
    v42[12] = __carEndpoint_deactivateInternal_block_invoke_4;
    v42[13] = &__block_descriptor_tmp_1044;
    v42[14] = a1;
    CFArrayApplyBlock();
    v23 = v59[3];
    if (v23)
    {
      CFRelease(v23);
      v59[3] = 0;
    }
  }

  if (*(v47 + 24))
  {
    carEndpoint_postNotification(a1, *MEMORY[0x277CC0D10], *(DerivedStorage + 224), 0);
  }

  v24 = v55[3];
  if (v24)
  {
    APAccTransportClientConnectionClose(v24);
    CFRelease(v55[3]);
  }

  if (v63[3])
  {
    v42[5] = MEMORY[0x277D85DD0];
    v42[6] = 0x40000000;
    v42[7] = __carEndpoint_deactivateInternal_block_invoke_5;
    v42[8] = &__block_descriptor_tmp_1046;
    v42[9] = a1;
    FigCFSetApplyBlock();
    CFSetRemoveAllValues(v63[3]);
    v25 = v63[3];
    if (v25)
    {
      CFRelease(v25);
      v63[3] = 0;
    }
  }

  if (*(DerivedStorage + 60))
  {
    APHTTPProxyMonitorClientUnregisterHTTPProxyMonitor(a1);
  }

  v26 = v67[3];
  if (v26)
  {
    carEndpoint_teardownSenderSession(a1, v26, a2 == 0);
    v27 = v67[3];
    if (v27)
    {
      CFRelease(v27);
    }
  }

  v28 = *(DerivedStorage + 168);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 0x40000000;
  v42[2] = __carEndpoint_deactivateInternal_block_invoke_6;
  v42[3] = &__block_descriptor_tmp_1047;
  v42[4] = DerivedStorage;
  dispatch_sync(v28, v42);
  if (*(DerivedStorage + 57))
  {
    APCarPlayAVVCServerRemoveEndpoint(a1);
  }

  if (a2)
  {
    if (introspector_getCollectionOfActiveCarPlayEndpoints_once != -1)
    {
      __carEndpoint_Activate_block_invoke_cold_46();
    }

    if (introspector_getCollectionOfActiveCarPlayEndpoints_coll)
    {
      v29 = *introspector_getCollectionOfActiveCarPlayEndpoints_coll;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 0x40000000;
      v41[2] = __carEndpoint_deactivateInternal_block_invoke_7;
      v41[3] = &__block_descriptor_tmp_1048;
      v41[4] = introspector_getCollectionOfActiveCarPlayEndpoints_coll;
      v41[5] = a1;
      dispatch_sync(v29, v41);
    }
  }

  carEndpoint_setFeatureFlagsToDefaultValues(a1, 1, *(v71 + 6));
  if (a4)
  {
    *a4 = *(v71 + 6);
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_deactivateInternal_cold_9();
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
}

void carEndpoint_postActivationNotification(const void *a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  carEndpoint_getSupportedFeatures(a1, &v13);
  v7 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt64();
  if (FigCFEqual() || FigCFEqual())
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2000000000;
    v12 = 0;
    v9 = *(DerivedStorage + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_postActivationNotification_block_invoke;
    block[3] = &unk_27849F2F8;
    block[4] = v11;
    block[5] = DerivedStorage;
    dispatch_sync(v9, block);
    FigCFDictionarySetInt64();
    _Block_object_dispose(v11, 8);
  }

  carEndpoint_postNotification(a1, a2, a3, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void carEndpoint_setFeatureFlagsToDefaultValues(const void *a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 57) = 0;
  *(DerivedStorage + 68) = 0;
  *(DerivedStorage + 62) = 0;
  *(DerivedStorage + 66) = 0;
  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 72) = 0;
  }

  *(DerivedStorage + 80) = 0;
  v8 = *(DerivedStorage + 88);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 88) = 0;
  }

  v9 = *(DerivedStorage + 96);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 96) = 0;
  }

  *(DerivedStorage + 104) = 0;
  v10 = *(DerivedStorage + 112);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 112) = 0;
  }

  *(DerivedStorage + 120) = 0;
  *(DerivedStorage + 136) = 0;
  v11 = *(DerivedStorage + 128);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 128) = 0;
  }

  *(DerivedStorage + 58) = 0;
  *(DerivedStorage + 60) = 0;
  v12 = *(DerivedStorage + 144);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 144) = 0;
  }

  v13 = *(DerivedStorage + 152);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 152) = 0;
  }

  if (a2)
  {
    v14 = *MEMORY[0x277CC0D48];

    carEndpoint_postNotification(a1, v14, a3, 0);
  }
}

void __carEndpoint_activateInternal_block_invoke(uint64_t a1)
{
  v3 = a1 + 56;
  v2 = *(a1 + 56);
  if (*(v2 + 176))
  {
    *(*(*(a1 + 32) + 8) + 24) = -16723;
    return;
  }

  if (*(v2 + 177))
  {
    __carEndpoint_activateInternal_block_invoke_cold_1();
    return;
  }

  v4 = *(v2 + 224) + 1;
  *(v2 + 224) = v4;
  *(*(*(a1 + 40) + 8) + 24) = v4;
  *(v2 + 232) = 0;
  if (FigServer_IsAirplayd())
  {
    v5 = *(*v3 + 320);
    if (v5)
    {
      CFRelease(v5);
      *(*v3 + 320) = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = FigStarkModeCopyController();
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_activateInternal_block_invoke_cold_2();
    }

    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carEndpoint_activateInternal_block_invoke_cold_3();
      return;
    }
  }

  v6 = *(*v3 + 320);
  if (!v6)
  {
    __carEndpoint_activateInternal_block_invoke_cold_14();
    return;
  }

  CFRetain(*(a1 + 64));
  dispatch_retain(*(a1 + 72));
  CFRetain(v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_activateInternal_block_invoke_2;
  block[3] = &unk_27849E680;
  v7 = *(a1 + 72);
  v34 = *(a1 + 56);
  v8 = *(v34 + 512);
  v35 = v6;
  block[4] = *(a1 + 32);
  block[5] = v7;
  dispatch_async(v8, block);
  *(*(*(a1 + 32) + 8) + 24) = APSNetworkClockNTPServerCreate();
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    __carEndpoint_activateInternal_block_invoke_cold_4();
    return;
  }

  v9 = *(a1 + 64);
  v10 = *(*(a1 + 56) + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 536))
  {
    v13 = 0;
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = Mutable;
    CFDictionarySetValue(Mutable, @"eventRecorder", *(DerivedStorage + 536));
LABEL_16:
    v14 = APSGetFBOPropertyInt64();
    v15 = IsAppleInternalBuild();
    v16 = MEMORY[0x277CBED28];
    if (v15 || v14 > 0x44AF98 || v14 - 3651004 <= 0xCF463)
    {
      CFDictionarySetValue(v13, @"statsCollectionEnabled", *MEMORY[0x277CBED28]);
      if (gLogCategory_APEndpointCarPlay > 50 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
      {
LABEL_28:
        if (IsAppleInternalBuild() && APSSettingsGetInt64())
        {
          CFDictionarySetValue(v13, @"highFreqStatsCollectionEnabled", *v16);
        }

        v17 = (DerivedStorage + 240);
        v18 = APSenderSessionAirPlayCreate(0.0, 0, *(DerivedStorage + 16), v10, 0, 5, 0, *(DerivedStorage + 512), 0, 0, 0, *(DerivedStorage + 256), 0, 0, 0, v13, 0, 0, (DerivedStorage + 240));
        if (v18)
        {
          v28 = v18;
          __carEndpoint_activateInternal_block_invoke_cold_6();
        }

        else
        {
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v19 = *v17;
          v20 = *(*(CMBaseObjectGetVTable() + 16) + 96);
          if (v20)
          {
            v20(v19, v9, v9, carEndpoint_handleEvent, carEndpoint_handleEventCreatingReply);
          }

          CMNotificationCenterGetDefaultLocalCenter();
          v21 = CMNotificationCenterAddListener();
          if (v21)
          {
            v28 = v21;
            __carEndpoint_activateInternal_block_invoke_cold_7();
          }

          else
          {
            CMNotificationCenterGetDefaultLocalCenter();
            v22 = CMNotificationCenterAddListener();
            if (v22)
            {
              v28 = v22;
              __carEndpoint_activateInternal_block_invoke_cold_8();
            }

            else
            {
              CMNotificationCenterGetDefaultLocalCenter();
              v23 = CMNotificationCenterAddListener();
              if (v23)
              {
                v28 = v23;
                __carEndpoint_activateInternal_block_invoke_cold_9();
              }

              else
              {
                CMNotificationCenterGetDefaultLocalCenter();
                v24 = CMNotificationCenterAddListener();
                if (v24)
                {
                  v28 = v24;
                  __carEndpoint_activateInternal_block_invoke_cold_10();
                }

                else
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  v25 = CMNotificationCenterAddListener();
                  if (v25)
                  {
                    v28 = v25;
                    __carEndpoint_activateInternal_block_invoke_cold_11();
                  }

                  else if (CFPrefs_GetInt64())
                  {
                    CMBaseObject = APSenderSessionGetCMBaseObject(*v17);
                    v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v27)
                    {
                      v28 = v27(CMBaseObject, @"PublishEncryptionKeyDiagnosticMode", *v16);
                      if (!v28)
                      {
                        goto LABEL_50;
                      }
                    }

                    else
                    {
                      v28 = -12782;
                    }

                    APSLogErrorAt();
                  }

                  else
                  {
                    v28 = 0;
                  }
                }
              }
            }
          }
        }

LABEL_50:
        if (v13)
        {
          CFRelease(v13);
        }

        if (!v28)
        {
          goto LABEL_58;
        }

        goto LABEL_53;
      }
    }

    else
    {
      CFDictionarySetValue(v13, @"statsCollectionEnabled", *MEMORY[0x277CBED10]);
      if (gLogCategory_APEndpointCarPlay > 50 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_28;
      }
    }

    LogPrintF();
    goto LABEL_28;
  }

  __carEndpoint_activateInternal_block_invoke_cold_5();
  v28 = -16721;
LABEL_53:
  carEndpoint_teardownSenderSession(v9, *(DerivedStorage + 240), 0);
  v29 = *(DerivedStorage + 240);
  if (v29)
  {
    v30 = APSenderSessionGetCMBaseObject(v29);
    if (v30)
    {
      v31 = v30;
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v32)
      {
        v32(v31);
      }
    }

    CFRelease(*(DerivedStorage + 240));
    *(DerivedStorage + 240) = 0;
  }

LABEL_58:
  *(*(*(a1 + 32) + 8) + 24) = v28;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    __carEndpoint_activateInternal_block_invoke_cold_12();
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = CFRetain(*(*(a1 + 56) + 240));
    if (*(*(a1 + 56) + 41))
    {
      *(*(*(a1 + 32) + 8) + 24) = carEndpoint_createAccConnectionIfNeeded();
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        __carEndpoint_activateInternal_block_invoke_cold_13();
      }
    }
  }
}

void __carEndpoint_activateInternal_block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  v2 = "\n";
  if (*(*(a1 + 48) + 177))
  {
    if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_activateInternal_block_invoke_2_cold_1();
    }

    *(*(a1 + 48) + 520) = CFRetain(*(a1 + 64));
    if (!FigServer_IsAirplayd())
    {
      v19[6] = MEMORY[0x277D85DD0];
      v19[7] = 0x40000000;
      v19[8] = __carEndpoint_activateInternal_block_invoke_3;
      v19[9] = &__block_descriptor_tmp_135_0;
      v19[10] = *(a1 + 56);
      FigStarkModeControllerSetExecuteChangeHandler();
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v30 = 0;
    cf = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    block = 0u;
    v34 = 0u;
    memset(v32, 0, sizeof(v32));
    v20 = 0u;
    v21 = 0u;
    if (!*(DerivedStorage + 520))
    {
      __carEndpoint_activateInternal_block_invoke_2_cold_7();
      v9 = 0;
      goto LABEL_42;
    }

    v4 = APSGetFBOPropertyInt64();
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6 || v6(CMBaseObject, @"InitialMode", 0, &cf))
    {
      v10 = -71960;
      __carEndpoint_activateInternal_block_invoke_2_cold_6();
    }

    else if (cf)
    {
      v7 = APStarkModeChangeRequestMakeFromDictionary(cf, v4 > 0x3567DF, &v26);
      if (v7)
      {
        v10 = v7;
        __carEndpoint_activateInternal_block_invoke_2_cold_2();
      }

      else
      {
        v8 = APStarkModeInitialOwnerRequestMakeFromDictionary(cf, v4 > 0x3567DF, &v24, &v22);
        if (!v8)
        {
          v9 = CFDictionaryCopyCString();
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            APStarkModeChangeRequestToString(&v26, &block);
            APStarkInitialOwnerRequestToString(&v24, &v22, v32);
            v2 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
            LogPrintF();
          }

          v11 = FigStarkModeControllerRequestInitialModeChange();
          v10 = v11;
          if (!v11)
          {
            goto LABEL_48;
          }

          if (v11 == -16739 && v4 < 0x3567E0)
          {
            if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
            {
              __carEndpoint_activateInternal_block_invoke_2_cold_4();
            }

            if (HIDWORD(v26) == 100)
            {
              *(&v27 + 1) = 0x6400000064;
            }

            if (DWORD1(v28) == 100)
            {
              *&v29 = 0x6400000064;
            }

            if (!FigStarkModeControllerRequestInitialModeChange())
            {
              goto LABEL_47;
            }

            __carEndpoint_activateInternal_block_invoke_2_cold_5();
LABEL_42:
            if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
            {
              __carEndpoint_activateInternal_block_invoke_2_cold_8();
            }

            if (*(DerivedStorage + 520))
            {
              v10 = FigStarkModeControllerRequestInitialModeChange();
              goto LABEL_48;
            }

LABEL_47:
            v10 = 0;
            goto LABEL_48;
          }

          if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          APSLogErrorAt();
LABEL_41:
          if (v4 >= 0x3567E0)
          {
LABEL_48:
            if (cf)
            {
              CFRelease(cf);
            }

            free(v9);
            *(*(*(a1 + 32) + 8) + 24) = v10;
            if (*(*(*(a1 + 32) + 8) + 24))
            {
              __carEndpoint_activateInternal_block_invoke_2_cold_9();
            }

            else
            {
              v12 = *(a1 + 56);
              v13 = CMBaseObjectGetDerivedStorage();
              if (CFPreferencesGetAppBooleanValue(@"airPlayCarPlayReceiverLogs", @"com.apple.airplay", 0) || CFPreferencesGetAppBooleanValue(@"dpCarPlayReceiverLogs", @"com.apple.airplay", 0) || CFPreferencesGetAppBooleanValue(@"OEMCarPlayReceiverLogs", @"com.apple.airplay", 0))
              {
                v14 = *(v13 + 512);
                *&block = MEMORY[0x277D85DD0];
                *(&block + 1) = *(v2 + 35);
                *&v34 = __carEndpoint_configureAccessoryLogs_block_invoke;
                *(&v34 + 1) = &__block_descriptor_tmp_247;
                *&v35 = v12;
                dispatch_async(v14, &block);
              }
            }

            goto LABEL_55;
          }

          goto LABEL_42;
        }

        v10 = v8;
        __carEndpoint_activateInternal_block_invoke_2_cold_3();
      }
    }

    else
    {
      v10 = -71960;
      APSLogErrorAt();
    }

    v9 = 0;
    goto LABEL_41;
  }

  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_activateInternal_block_invoke_2_cold_10();
  }

LABEL_55:
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *&block = 0;
    *(&block + 1) = &block;
    *&v34 = 0x2000000000;
    DWORD2(v34) = 0;
    v15 = *(a1 + 48);
    v16 = *(v15 + 168);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = *(v2 + 35);
    v19[2] = __carEndpoint_activateInternal_block_invoke_4;
    v19[3] = &unk_27849E658;
    v19[4] = &block;
    v19[5] = v15;
    dispatch_sync(v16, v19);
    v17 = CFGetAllocator(*(a1 + 56));
    Mutable = CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC0CC8], *MEMORY[0x277CC0CA8]);
    carEndpoint_postNotification(*(a1 + 56), *MEMORY[0x277CC0D50], *(*(&block + 1) + 24), Mutable);
    CFRelease(Mutable);
    _Block_object_dispose(&block, 8);
  }

  CFRelease(*(a1 + 64));
  dispatch_release(*(a1 + 40));
  CFRelease(*(a1 + 56));
}

void __carEndpoint_activateInternal_block_invoke_3(uint64_t a1, _DWORD *a2)
{
  v4 = dispatch_semaphore_create(0);
  v5 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_activateInternal_block_invoke_3_cold_1();
  }

  carEndpoint_takeActionOnModeChanges(v5, a2);
  if (APStarkModeCreateDictionaryRepresentation(a2, &cf))
  {
    __carEndpoint_activateInternal_block_invoke_3_cold_2();
  }

  else if (carEndpoint_sendCommandInternal(v5, @"modesChanged", cf, 1, v4))
  {
    __carEndpoint_activateInternal_block_invoke_3_cold_3();
  }

  else if (gLogCategory_APEndpointCarPlay <= 20 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v6 = dispatch_time(0, 250000000);
  if (dispatch_semaphore_wait(v4, v6) && gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_activateInternal_block_invoke_3_cold_4();
  }

  dispatch_release(v4);
}

uint64_t carEndpoint_createAccConnectionIfNeeded()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 304))
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 48);
  if (v3 && (Value = CFDictionaryGetValue(v3, @"authenticationCertificateSerial")) != 0)
  {
    v5 = Value;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v7 = Mutable;
    if (!Mutable)
    {
      carEndpoint_createAccConnectionIfNeeded_cold_1();
      v1 = 4294960568;
      goto LABEL_16;
    }

    CFDictionarySetValue(Mutable, @"authenticationCertificateSerial", v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = APAccTransportClientConnectionCreate(v7, (v2 + 304));
  if (v8)
  {
    v1 = v8;
    carEndpoint_createAccConnectionIfNeeded_cold_2();
LABEL_16:
    v10 = *(v2 + 304);
    if (v10)
    {
      APAccTransportClientConnectionClose(v10);
      v11 = *(v2 + 304);
      if (v11)
      {
        CFRelease(v11);
        *(v2 + 304) = 0;
      }
    }

    goto LABEL_10;
  }

  v1 = APAccTransportClientConnectionOpen(*(v2 + 304));
  if (v1)
  {
    carEndpoint_createAccConnectionIfNeeded_cold_3();
    goto LABEL_16;
  }

LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }

  return v1;
}

uint64_t __carEndpoint_activateInternal_block_invoke_147(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 176))
  {
    *(*(*(result + 32) + 8) + 24) = -16723;
    return result;
  }

  v3 = result + 32;
  *(*(*(result + 32) + 8) + 24) = APHIDClientCreate(0, *(result + 48), (v2 + 296));
  result = *(*(v1[4] + 8) + 24);
  if (result)
  {
    return __carEndpoint_activateInternal_block_invoke_147_cold_1();
  }

  v4 = v1[5];
  if (!*(v4 + 40))
  {
    goto LABEL_9;
  }

  v5 = v1[7];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AccConnectionIfNeeded = carEndpoint_createAccConnectionIfNeeded();
  if (AccConnectionIfNeeded)
  {
    v8 = AccConnectionIfNeeded;
    __carEndpoint_activateInternal_block_invoke_147_cold_2();
    goto LABEL_7;
  }

  if (CFStringCompare(@"com.apple.APAccClientEndpoint", @"com.apple.APAccClientEndpoint", 0))
  {
    goto LABEL_6;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  if (*(v9 + 136))
  {
    v10 = v9;
    v11 = CFGetAllocator(v5);
    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC0B38], @"E9459FD0-BCAD-4C45-820F-1E72447EF2F2");
    v13 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC1630], *MEMORY[0x277CBED28]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC1638], v13);
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_activateInternal_block_invoke_147_cold_3();
    }

    CommChannelInternal = carEndpoint_createCommChannelInternal(v5, Mutable, (v10 + 496), 0);
    if (CommChannelInternal)
    {
      v8 = CommChannelInternal;
      __carEndpoint_activateInternal_block_invoke_147_cold_4();
      if (!Mutable)
      {
LABEL_26:
        if (v8)
        {
          __carEndpoint_activateInternal_block_invoke_147_cold_5();
          goto LABEL_7;
        }

        goto LABEL_27;
      }

LABEL_25:
      CFRelease(Mutable);
      goto LABEL_26;
    }

    v15 = *(v10 + 496);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v16)
    {
      v8 = v16(v15, carEndpoint_handleiAPChannelEvent, v5);
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v8 = -12782;
    }

    APSLogErrorAt();
LABEL_24:
    if (!Mutable)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_27:
  v17 = APAccTransportClientConnectionCopyEndpoint(DerivedStorage[38], "com.apple.APAccClientEndpoint", (DerivedStorage + 39));
  if (v17)
  {
    v8 = v17;
    __carEndpoint_activateInternal_block_invoke_147_cold_6();
    goto LABEL_7;
  }

  CFRetain(v5);
  v18 = DerivedStorage[39];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 0x40000000;
  v22[2] = __carEndpoint_setUpAPAccClientEndpointForIdType_block_invoke;
  v22[3] = &__block_descriptor_tmp_724;
  v22[4] = v5;
  v22[5] = DerivedStorage;
  v19 = APAccTransportClientEndpointActivate(v18, 0, 0, v22);
  if (v19)
  {
    v8 = v19;
    __carEndpoint_activateInternal_block_invoke_147_cold_7();
    goto LABEL_7;
  }

  v20 = DerivedStorage[62];
  if (v20)
  {
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v21)
    {
      v8 = v21(v20);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = -12782;
    }

    APSLogErrorAt();
    goto LABEL_7;
  }

LABEL_6:
  v8 = 0;
LABEL_7:
  *(*(*v3 + 8) + 24) = v8;
  result = *(*(*v3 + 8) + 24);
  if (result)
  {
    return __carEndpoint_activateInternal_block_invoke_147_cold_8();
  }

  v4 = v1[5];
LABEL_9:
  if (*(v4 + 60) && !*(v4 + 488))
  {
    result = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
    *(v1[5] + 488) = result;
    if (!*(v1[5] + 488))
    {
      return __carEndpoint_activateInternal_block_invoke_147_cold_9((v1 + 4));
    }
  }

  return result;
}

uint64_t __carEndpoint_activateInternal_block_invoke_2_152(uint64_t result)
{
  v1 = result;
  v3 = result + 40;
  v2 = *(result + 40);
  if (*(v2 + 176))
  {
    *(*(*(result + 32) + 8) + 24) = -16723;
  }

  else
  {
    if (*(v2 + 536))
    {
      APSEventRecorderRecordEvent();
    }

    v4 = LogCategoryCopyOSLogHandle();
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v7, OS_SIGNPOST_EVENT, 0x2B8D08B8uLL, "AP_SIGNPOST_CAR_SETUPSTREAMS_START", &unk_2222A918B, buf, 2u);
    }

    if (v5)
    {
      os_release(v5);
    }

    v8 = carEndpoint_setupStreams(*(v1 + 48), *(v1 + 56));
    v9 = *(v1 + 40);
    *(*(*(v1 + 32) + 8) + 24) = v8;
    if (*(v9 + 536))
    {
      APSEventRecorderRecordEvent();
    }

    v10 = LogCategoryCopyOSLogHandle();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    if (os_signpost_enabled(v12))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v12, OS_SIGNPOST_EVENT, 0x2B8D08BCuLL, "AP_SIGNPOST_CAR_SETUPSTREAMS_COMPLETE", &unk_2222A918B, v17, 2u);
    }

    if (v11)
    {
      os_release(v11);
    }

    if (*(*(*(v1 + 32) + 8) + 24))
    {
      return __carEndpoint_activateInternal_block_invoke_2_152_cold_1();
    }

    else
    {
      v13 = *v3;
      CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(*v3 + 8));
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(CMBaseObject, @"VehicleInformation", 0, v13 + 336);
      }

      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        __carEndpoint_activateInternal_block_invoke_2_152_cold_2();
      }

      *(*v3 + 329) = APSGetFBOPropertyInt64() != 0;
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      result = APSGetFBOPropertyInt64();
      v16 = *v3;
      *(*v3 + 330) = result != 0;
      if (gLogCategory_APEndpointCarPlay <= 50)
      {
        if (gLogCategory_APEndpointCarPlay != -1 || (result = _LogCategory_Initialize(), v16 = *v3, result))
        {
          result = LogPrintF();
          v16 = *v3;
        }
      }

      *(v16 + 177) = 1;
    }
  }

  return result;
}

uint64_t carEndpoint_setupStreams(const void *a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 264) = Mutable;
  if (!Mutable)
  {
    carEndpoint_setupStreams_cold_50();
    return 4294950575;
  }

  v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v6)
  {
    carEndpoint_setupStreams_cold_49();
    return 4294950575;
  }

  v7 = v6;
  v8 = *(DerivedStorage + 536);
  if (v8)
  {
    CFDictionarySetValue(v6, @"EventRecorder", v8);
  }

  if (*(DerivedStorage + 68))
  {
    CFDictionarySetValue(v7, @"UseCarPlayHEVC", *MEMORY[0x277CBED28]);
  }

  if (a2)
  {
    v9 = CFDictionaryGetValue(a2, *MEMORY[0x277CC09B0]);
    if (v9)
    {
      CFDictionarySetValue(v7, @"clientPID", v9);
    }

    v10 = CFDictionaryGetValue(a2, @"ScreenSource");
    if (v10)
    {
      CFDictionarySetValue(v7, @"ScreenSource", v10);
    }

    v11 = CFDictionaryGetValue(a2, @"ScreenProcessor");
    if (v11)
    {
      CFDictionarySetValue(v7, @"ScreenProcessor", v11);
    }

    v12 = *MEMORY[0x277CC09E8];
    v13 = CFDictionaryGetValue(a2, *MEMORY[0x277CC09E8]);
    if (v13)
    {
      CFDictionarySetValue(v7, v12, v13);
    }
  }

  if (APSGetFBOPropertyInt64())
  {
    v14 = *MEMORY[0x277CC1960];
    v15 = carEndpoint_setupAudioStream(a1, *MEMORY[0x277CC1960], *MEMORY[0x277CC1938], v7);
    if (v15)
    {
      v27 = v15;
      carEndpoint_setupStreams_cold_1();
      goto LABEL_60;
    }

    if (*(DerivedStorage + 58))
    {
      v16 = carEndpoint_setupAudioStream(a1, *MEMORY[0x277CC1968], *MEMORY[0x277CC1928], v7);
      if (v16)
      {
        v27 = v16;
        carEndpoint_setupStreams_cold_2();
        goto LABEL_60;
      }

      carEndpoint_postNotification(a1, *MEMORY[0x277CC0D10], *(DerivedStorage + 224), 0);
    }

    v17 = carEndpoint_setupAudioStream(a1, v14, *MEMORY[0x277CC1918], v7);
    if (v17)
    {
      v27 = v17;
      carEndpoint_setupStreams_cold_3();
      goto LABEL_60;
    }

    if (*(DerivedStorage + 57))
    {
      v18 = carEndpoint_setupAudioStream(a1, v14, *MEMORY[0x277CC1920], v7);
      if (v18)
      {
        v27 = v18;
        carEndpoint_setupStreams_cold_4();
        goto LABEL_60;
      }

      v19 = carEndpoint_setupAudioStream(a1, *MEMORY[0x277CC1978], *MEMORY[0x277CC1940], v7);
      if (v19)
      {
        v27 = v19;
        carEndpoint_setupStreams_cold_5();
        goto LABEL_60;
      }
    }
  }

  v154 = CMBaseObjectGetDerivedStorage();
  v163 = 0;
  v162 = 0;
  v161[1] = 0;
  v160 = 0;
  v161[0] = 0;
  v20 = CFStringCreateF();
  v21 = CFGetAllocator(a1);
  v22 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v165 = 0;
  v164 = 0;
  v23 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v24 = MEMORY[0x277CBECE8];
  v159 = a1;
  if (!v23)
  {
    carEndpoint_setupStreams_cold_37();
LABEL_382:
    v152 = 0;
    v27 = 4294950575;
    goto LABEL_29;
  }

  v147 = v22;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v22 + 8));
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v26)
  {
    v27 = 4294954514;
LABEL_28:
    APSLogErrorAt();
    v152 = 0;
    goto LABEL_29;
  }

  v33 = v26(CMBaseObject, @"DisplayDescriptionArray", v21, &cf);
  if (v33)
  {
    v27 = v33;
    goto LABEL_28;
  }

  v34 = v147;
  if (cf)
  {
    Count = CFArrayGetCount(cf);
    v152 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v152)
    {
      goto LABEL_389;
    }

    if (Count < 1)
    {
      v35 = 0;
      goto LABEL_172;
    }

    v146 = v23;
    v137 = v20;
    v38 = 0;
    key = *MEMORY[0x277CC16B8];
    v155 = *MEMORY[0x277CC16C0];
    while (1)
    {
      v39 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v38);
      value[0] = 0;
      *&v199 = 0;
      *&v197 = 0;
      *&v195 = 0;
      v41 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v41)
      {
        v42 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, @"PhysicalSize", v21, &v199);
        if (v42)
        {
          v27 = v42;
          carEndpoint_setupStreams_cold_6();
        }

        else
        {
          if (v199)
          {
            CFDictionarySetValue(v41, key, v199);
          }

          v43 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, @"PixelSize", v21, value);
          if (v43)
          {
            v27 = v43;
            carEndpoint_setupStreams_cold_7();
          }

          else
          {
            if (value[0])
            {
              CFDictionarySetValue(v41, v155, value[0]);
            }

            v44 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, @"ViewAreas", v21, &v197);
            if (!v44)
            {
              if (v197)
              {
                CFDictionarySetValue(v41, @"ViewAreas", v197);
              }

              v27 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, @"ZoomFactor", v21, &v195);
              if (v195)
              {
                CFDictionarySetValue(v41, @"ZoomFactor", v195);
              }

              v45 = v41;
              v41 = 0;
              goto LABEL_85;
            }

            v27 = v44;
            carEndpoint_setupStreams_cold_8();
          }
        }

        v45 = 0;
      }

      else
      {
        carEndpoint_setupStreams_cold_9();
        v45 = 0;
        v27 = 4294895546;
      }

LABEL_85:
      if (v197)
      {
        CFRelease(v197);
      }

      if (value[0])
      {
        CFRelease(value[0]);
      }

      if (v199)
      {
        CFRelease(v199);
      }

      if (v41)
      {
        CFRelease(v41);
      }

      if (v195)
      {
        CFRelease(v195);
      }

      if (v27)
      {
        carEndpoint_setupStreams_cold_10();
        goto LABEL_371;
      }

      CFArrayAppendValue(v152, v45);
      if (v45)
      {
        CFRelease(v45);
      }

      ++v38;
      Count = v39;
      if (v39 == v38)
      {
        v35 = 1;
        v20 = v137;
        a1 = v159;
        v24 = MEMORY[0x277CBECE8];
        v34 = v147;
        goto LABEL_172;
      }
    }
  }

  v152 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v152)
  {
LABEL_389:
    carEndpoint_setupStreams_cold_36();
    goto LABEL_382;
  }

  v35 = 0;
  Count = 0;
LABEL_172:
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_setupStreams_cold_11();
  }

  v80 = *(v34 + 240);
  if (!v80)
  {
    carEndpoint_setupStreams_cold_35();
    v27 = 0;
    goto LABEL_29;
  }

  v81 = APSenderSessionGetCMBaseObject(v80);
  v82 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v82)
  {
    v27 = 4294954514;
LABEL_179:
    APSLogErrorAt();
    goto LABEL_29;
  }

  v145 = Count;
  v146 = v23;
  v83 = v82(v81, @"AuthenticationData", *v24, &v164);
  if (v83)
  {
    v27 = v83;
    goto LABEL_179;
  }

  v137 = v20;
  theDict = v7;
  if (APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber(v164, v152, &v165) || !v165)
  {
    v84 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v84)
    {
      carEndpoint_setupStreams_cold_34();
      v27 = 4294950575;
      goto LABEL_372;
    }

    v85 = v84;
    if (v35)
    {
      v86 = 0;
      do
      {
        v87 = CFArrayGetValueAtIndex(v152, v86);
        CFArrayAppendValue(v85, v87);
        ++v86;
      }

      while (Count != v86);
    }

    v165 = v85;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (!v35)
  {
LABEL_363:
    v27 = 0;
    *(v154 + 280) = v23;
    v23 = 0;
    v20 = v137;
    v7 = theDict;
    v24 = MEMORY[0x277CBECE8];
    goto LABEL_29;
  }

  keya = 0;
  v88 = *MEMORY[0x277CBED10];
  v89 = *MEMORY[0x277CBED28];
  v125 = *MEMORY[0x277CC1718];
  v122 = *MEMORY[0x277CC1720];
  v124 = *MEMORY[0x277CC1710];
  v123 = *MEMORY[0x277CC1728];
  v142 = *MEMORY[0x277CC1690];
  v118 = *MEMORY[0x277CC16C8];
  v134 = *MEMORY[0x277CC1680];
  v133 = *MEMORY[0x277CC16B0];
  v132 = *MEMORY[0x277CC16B8];
  v131 = *MEMORY[0x277CC16C0];
  v130 = *MEMORY[0x277CC16D0];
  v141 = *MEMORY[0x277CC16A0];
  v140 = *MEMORY[0x277CC1698];
  v143 = *MEMORY[0x277CBF3A8];
  v119 = *MEMORY[0x277CC1688];
  v129 = *MEMORY[0x277CC16F8];
  v128 = *MEMORY[0x277CC16E8];
  v126 = *MEMORY[0x277CC1700];
  v127 = *MEMORY[0x277CC1708];
  v136 = *MEMORY[0x277CC16D8];
  v135 = *MEMORY[0x277CC1678];
  v121 = *MEMORY[0x277CC16A8];
  v156 = *MEMORY[0x277CBED28];
  v120 = *MEMORY[0x277CBED10];
  while (1)
  {
    v90 = CFArrayGetValueAtIndex(cf, keya);
    v91 = CFArrayGetValueAtIndex(v165, keya);
    v92 = *(v147 + 8);
    v208 = 0;
    v206 = v88;
    v207 = v88;
    v204 = v88;
    v205 = v88;
    v202 = 0;
    v203 = 0;
    v201 = 0;
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0;
    dict = 0;
    size = v143;
    v192 = 0;
    theArray = 0;
    v190 = 0;
    BOOLean = v88;
    v188 = v88;
    theString = 0;
    v186 = v88;
    v93 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v93)
    {
      carEndpoint_setupStreams_cold_32();
      v117 = 0;
      v94 = 0;
LABEL_340:
      v106 = 0;
      v150 = 0;
      DictionaryRepresentation = 0;
      goto LABEL_277;
    }

    v94 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v94)
    {
      carEndpoint_setupStreams_cold_31();
      v117 = 0;
      goto LABEL_340;
    }

    v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"SupportsKnobInput", v21, &v207);
    v150 = v94;
    if (v208)
    {
      carEndpoint_setupStreams_cold_12();
LABEL_350:
      v117 = 0;
      v94 = 0;
      v106 = 0;
      DictionaryRepresentation = 0;
      goto LABEL_277;
    }

    if (v207 == v89)
    {
      CFArrayAppendValue(v94, v125);
    }

    v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"SupportsLowFidelityTouch", v21, &v206);
    if (v208)
    {
      carEndpoint_setupStreams_cold_13();
      goto LABEL_350;
    }

    if (v206 == v89)
    {
      CFArrayAppendValue(v94, v122);
    }

    v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"SupportsHighFidelityTouch", v21, &v205);
    if (v208)
    {
      carEndpoint_setupStreams_cold_14();
      goto LABEL_350;
    }

    if (v205 == v89)
    {
      CFArrayAppendValue(v94, v124);
    }

    v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"SupportsTouchpadInput", v21, &v204);
    if (v208)
    {
      carEndpoint_setupStreams_cold_15();
      goto LABEL_350;
    }

    if (v204 == v89)
    {
      CFArrayAppendValue(v94, v123);
    }

    CFDictionarySetValue(v93, v142, v94);
    v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"PrimaryInputDevice", v21, &v192);
    if (v208)
    {
      carEndpoint_setupStreams_cold_16();
      goto LABEL_350;
    }

    v95 = CFGetInt64();
    if (!v208)
    {
      if (v95 == 1)
      {
        if (v205 == v156)
        {
          v97 = v93;
          v98 = v118;
          v99 = v124;
        }

        else
        {
          if (v206 != v156)
          {
            goto LABEL_209;
          }

          v97 = v93;
          v98 = v118;
          v99 = v122;
        }

        goto LABEL_336;
      }

      if (v95 == 2)
      {
        if (v204 == v156)
        {
          v97 = v93;
          v98 = v118;
          v99 = v123;
          goto LABEL_336;
        }
      }

      else if (v95 == 3 && v207 == v156)
      {
        v97 = v93;
        v98 = v118;
        v99 = v125;
LABEL_336:
        CFDictionarySetValue(v97, v98, v99);
        goto LABEL_209;
      }

      if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

LABEL_209:
    v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"UUID", v21, &v203);
    if (v208)
    {
      carEndpoint_setupStreams_cold_17();
      v117 = 0;
      v94 = 0;
      v106 = 0;
      DictionaryRepresentation = 0;
      goto LABEL_359;
    }

    if (v203)
    {
      CFDictionarySetValue(v93, v134, v203);
    }

    v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"MaxFPS", v21, &v202);
    v89 = v156;
    if (v208)
    {
      carEndpoint_setupStreams_cold_18();
      goto LABEL_350;
    }

    if (v202)
    {
      CFDictionarySetValue(v93, v133, v202);
    }

    v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"PhysicalSize", v21, &dict);
    if (v208)
    {
      carEndpoint_setupStreams_cold_19();
      goto LABEL_350;
    }

    if (dict)
    {
      CFDictionarySetValue(v93, v132, dict);
      CGSizeMakeWithDictionaryRepresentation(dict, &size);
    }

    v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"PixelSize", v21, &v201);
    if (v208)
    {
      carEndpoint_setupStreams_cold_20();
      goto LABEL_350;
    }

    if (v201)
    {
      LODWORD(v184) = 2;
      CFDictionarySetValue(v93, v131, v201);
      CGSizeMakeWithDictionaryRepresentation(v201, &v200);
      v96 = CFDictionaryGetValue(v91, v131);
      CGSizeMakeWithDictionaryRepresentation(v96, &v198);
      FigDisplayModes_ConvertNonSquarePixelSizeToSquarePixelSize();
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v196);
      CFDictionarySetValue(v93, v130, DictionaryRepresentation);
      CFDictionarySetDouble();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionarySetInt32();
    }

    else
    {
      DictionaryRepresentation = 0;
    }

    if (FigCFDictionaryGetValue())
    {
      FigCFDictionarySetValue();
    }

    if (keya)
    {
      v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"IsNightMode", v21, &BOOLean);
      if (v208)
      {
        carEndpoint_setupStreams_cold_21();
      }

      else
      {
        if (CFBooleanGetValue(BOOLean))
        {
          v100 = v156;
        }

        else
        {
          v100 = v88;
        }

        CFDictionarySetValue(v93, v141, v100);
        v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"IsLimitedUI", v21, &v188);
        if (v208)
        {
          carEndpoint_setupStreams_cold_22();
        }

        else
        {
          if (CFBooleanGetValue(v188))
          {
            v101 = v156;
          }

          else
          {
            v101 = v88;
          }

          CFDictionarySetValue(v93, v140, v101);
          v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"LimitedUIElements", v21, &v190);
          if (!v208)
          {
            if (v190)
            {
              CFDictionarySetValue(v93, v121, v190);
            }

            v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"InitialUrl", v21, &theString);
            if (v208)
            {
              carEndpoint_setupStreams_cold_24();
              goto LABEL_331;
            }

            v102 = theString;
            if (!theString)
            {
              if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
              {
                carEndpoint_setupStreams_cold_25();
              }

              v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"Url", v21, &theString);
              if (v208)
              {
                carEndpoint_setupStreams_cold_26();
                goto LABEL_331;
              }

              v102 = theString;
              if (!theString)
              {
                goto LABEL_262;
              }
            }

            if (CFStringGetLength(v102) < 1)
            {
LABEL_262:
              v106 = 0;
              goto LABEL_265;
            }

            v103 = CFURLCreateWithString(0, theString, 0);
            if (!v103)
            {
              v106 = 0;
              goto LABEL_264;
            }

            v104 = v103;
            CFDictionarySetValue(v93, v119, v103);
            v105 = MEMORY[0x277CC1670];
            v106 = v104;
            goto LABEL_261;
          }

          carEndpoint_setupStreams_cold_23();
        }
      }

LABEL_331:
      v117 = 0;
      v94 = 0;
      v106 = 0;
      goto LABEL_277;
    }

    if (APSGetFBOPropertyInt64())
    {
      v107 = v156;
    }

    else
    {
      v107 = v88;
    }

    CFDictionarySetValue(v93, v141, v107);
    if (APSGetFBOPropertyInt64())
    {
      v108 = v156;
    }

    else
    {
      v108 = v88;
    }

    CFDictionarySetValue(v93, v140, v108);
    v109 = APEndpointDescriptionGetCMBaseObject(v92);
    v110 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v110)
    {
      v208 = -12782;
LABEL_330:
      carEndpoint_setupStreams_cold_30();
      goto LABEL_331;
    }

    v208 = v110(v109, @"LimitedUIElements", 0, &v190);
    if (v208)
    {
      v89 = v156;
      goto LABEL_330;
    }

    v106 = 0;
    v104 = v190;
    if (v190)
    {
      v105 = MEMORY[0x277CC16A8];
LABEL_261:
      CFDictionarySetValue(v93, *v105, v104);
    }

LABEL_264:
    v89 = v156;
LABEL_265:
    v111 = CFGetAllocator(a1);
    v94 = CFArrayCreateMutable(v111, 0, MEMORY[0x277CBF128]);
    if (!v94)
    {
      carEndpoint_setupStreams_cold_29();
LABEL_353:
      v117 = 0;
      goto LABEL_277;
    }

    APEndpointDisplayDescriptionCopyProperty(v90, @"ViewAreas", v21, &theArray);
    if (!theArray || !CFArrayGetCount(theArray))
    {
      v184 = 0u;
      v185 = 0u;
      memset(&v183, 0, sizeof(v183));
      CGSizeMakeWithDictionaryRepresentation(v201, &v185);
      FigDisplayModes_ConvertNonSquarePixelSizeToSquarePixelSize();
      v112 = CGRectCreateDictionaryRepresentation(v183);
      v113 = CFGetAllocator(a1);
      v114 = CFDictionaryCreateMutable(v113, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v114)
      {
        v115 = v114;
        CFDictionarySetValue(v114, v129, v112);
        CFDictionarySetValue(v115, v128, v112);
        CFDictionarySetValue(v115, v127, v88);
        CFDictionarySetValue(v115, v126, v88);
        CFDictionarySetInt64();
        CFArrayAppendValue(v94, v115);
        CFRelease(v112);
        CFRelease(v115);
        a1 = v159;
        v89 = v156;
        goto LABEL_272;
      }

      APSLogErrorAt();
      v117 = 0;
      v208 = -16721;
      a1 = v159;
LABEL_359:
      v89 = v156;
      goto LABEL_277;
    }

    v181 = 0u;
    v182 = 0u;
    v177 = 0;
    v178 = &v177;
    v179 = 0x2000000000;
    v180 = 0;
    CGSizeMakeWithDictionaryRepresentation(v201, &v182);
    CFArrayGetCount(theArray);
    value[0] = MEMORY[0x277D85DD0];
    value[1] = 0x40000000;
    v168 = v181;
    v169 = v182;
    v171 = size;
    v172 = v197;
    v174 = v199;
    v175 = v200;
    value[2] = __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke;
    value[3] = &unk_27849F040;
    value[4] = &v177;
    v170 = a1;
    v173 = v198;
    v176 = v94;
    CFArrayApplyBlock();
    if (*(v178 + 6))
    {
      carEndpoint_setupStreams_cold_27();
      v117 = 0;
      v89 = v156;
      v88 = v120;
      goto LABEL_277;
    }

    _Block_object_dispose(&v177, 8);
    v89 = v156;
    v88 = v120;
LABEL_272:
    CFDictionarySetValue(v93, v136, v94);
    v208 = APEndpointDisplayDescriptionCopyProperty(v90, @"cornerMasks", v21, &v186);
    if (v208)
    {
      carEndpoint_setupStreams_cold_28();
      goto LABEL_353;
    }

    v116 = CFBooleanGetValue(v186) ? v89 : v88;
    CFDictionarySetValue(v93, v135, v116);
    v117 = v93;
    v93 = 0;
LABEL_277:
    if (theString)
    {
      CFRelease(theString);
    }

    if (v106)
    {
      CFRelease(v106);
    }

    if (v188)
    {
      CFRelease(v188);
    }

    if (BOOLean)
    {
      CFRelease(BOOLean);
    }

    if (v190)
    {
      CFRelease(v190);
    }

    if (v202)
    {
      CFRelease(v202);
    }

    if (v201)
    {
      CFRelease(v201);
    }

    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }

    if (dict)
    {
      CFRelease(dict);
    }

    if (v203)
    {
      CFRelease(v203);
    }

    if (v192)
    {
      CFRelease(v192);
    }

    if (v207)
    {
      CFRelease(v207);
    }

    if (v206)
    {
      CFRelease(v206);
    }

    if (v205)
    {
      CFRelease(v205);
    }

    if (v204)
    {
      CFRelease(v204);
    }

    if (v150)
    {
      CFRelease(v150);
    }

    if (v93)
    {
      CFRelease(v93);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    if (v186)
    {
      CFRelease(v186);
    }

    if (v94)
    {
      CFRelease(v94);
    }

    v27 = v208;
    if (v208)
    {
      break;
    }

    CFArrayAppendValue(v23, v117);
    if (v117)
    {
      CFRelease(v117);
    }

    if (v145 == ++keya)
    {
      goto LABEL_363;
    }
  }

  carEndpoint_setupStreams_cold_33();
  v7 = theDict;
LABEL_371:
  v20 = v137;
  v24 = MEMORY[0x277CBECE8];
LABEL_372:
  v23 = v146;
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  if (v165)
  {
    CFRelease(v165);
  }

  if (v164)
  {
    CFRelease(v164);
  }

  if (v27)
  {
    carEndpoint_setupStreams_cold_38();
    goto LABEL_43;
  }

  v28 = APEndpointDescriptionGetCMBaseObject(*(v154 + 8));
  v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v29)
  {
    v27 = 4294954514;
    goto LABEL_42;
  }

  v37 = v29(v28, @"DisplayDescriptionArray", *v24, &v163);
  if (v37)
  {
    v27 = v37;
LABEL_42:
    APSLogErrorAt();
LABEL_43:
    v30 = 0;
    v31 = 0;
    goto LABEL_44;
  }

  if (!v163)
  {
LABEL_68:
    carEndpoint_setupStreams_cold_47();
    v30 = 0;
    v31 = 0;
    v27 = 4294950536;
    goto LABEL_44;
  }

  v46 = CFArrayGetCount(v163);
  v138 = v20;
  if (v46 < 2)
  {
    if (v46 != 1)
    {
      goto LABEL_68;
    }

    v47 = 1;
  }

  else if (*(v154 + 63))
  {
    v47 = v46;
  }

  else
  {
    v47 = 1;
  }

  v153 = v47;
  v48 = 0;
  v49 = *MEMORY[0x277CC18B0];
  v149 = *MEMORY[0x277CC1908];
  v148 = *MEMORY[0x277CC0DA8];
  v144 = *MEMORY[0x277CD6700];
  v50 = *MEMORY[0x277CD6658];
  while (2)
  {
    LODWORD(v197) = 0;
    *&v199 = 0;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
    v31 = MutableCopy;
    if (!MutableCopy)
    {
      carEndpoint_setupStreams_cold_46();
      v30 = 0;
      goto LABEL_376;
    }

    if (v48)
    {
      CFDictionaryRemoveValue(MutableCopy, @"EventRecorder");
    }

    CFDictionarySetValue(v31, @"LogPrefix", v138);
    v52 = CMBaseObjectGetDerivedStorage();
    value[0] = 0x3FF0000000000000;
    v53 = CFArrayGetCount(*(v52 + 280));
    if (v53 >= 1)
    {
      v54 = v53;
      v55 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(*(v52 + 280), v55);
        if (v48 == v55)
        {
          break;
        }

        if (v54 == ++v55)
        {
          goto LABEL_121;
        }
      }

      FigCFDictionaryGetDoubleIfPresent();
    }

LABEL_121:
    CFDictionarySetDouble();
    v56 = CMBaseObjectGetDerivedStorage();
    v57 = CFArrayGetCount(*(v56 + 280));
    if (v57 >= 1)
    {
      v58 = v57;
      v59 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(*(v56 + 280), v59);
        if (v48 == v59)
        {
          break;
        }

        if (v58 == ++v59)
        {
          goto LABEL_128;
        }
      }

      if (FigCFDictionaryGetInt32IfPresent())
      {
        FigCFDictionarySetInt32();
      }
    }

LABEL_128:
    v60 = CMBaseObjectGetDerivedStorage();
    v61 = *(v60 + 280);
    if (v61)
    {
      v62 = v154;
      if (CFArrayGetCount(v61) <= v48)
      {
        carEndpoint_setupStreams_cold_39();
      }

      else
      {
        CFArrayGetValueAtIndex(*(v60 + 280), v48);
        if (FigCFDictionaryGetValueIfPresent())
        {
          FigCFDictionarySetValue();
        }
      }
    }

    else
    {
      carEndpoint_setupStreams_cold_40();
      v62 = v154;
    }

    v63 = CFArrayGetValueAtIndex(v163, v48);
    v64 = CFGetAllocator(v159);
    v65 = APEndpointStreamScreenCreate(v64, v31, *(v62 + 16), *(v62 + 240), *(v62 + 8), v63, *(v62 + 256), &v160);
    if (v65)
    {
      v27 = v65;
      carEndpoint_setupStreams_cold_41();
      v30 = 0;
      goto LABEL_367;
    }

    carEndpoint_addEndpointStreamNotificationListeners();
    v66 = FigEndpointStreamGetCMBaseObject();
    v67 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v67)
    {
      v27 = 4294954514;
      goto LABEL_366;
    }

    v68 = v67(v66, v49, 0, v161);
    if (v68)
    {
      v27 = v68;
      goto LABEL_366;
    }

    v69 = v154;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_setupStreams_cold_42();
    }

    if (*(v154 + 62))
    {
      v70 = FigEndpointStreamGetCMBaseObject();
      v71 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v71)
      {
        v72 = v71(v70, v149, 0, &v162);
        if (!v72)
        {
          v69 = v154;
          carEndpoint_postNotification(v159, v148, *(v154 + 224), v162);
          goto LABEL_142;
        }

        v27 = v72;
      }

      else
      {
        v27 = 4294954514;
      }

LABEL_366:
      APSLogErrorAt();
      v30 = 0;
      goto LABEL_367;
    }

LABEL_142:
    if (FigCFEqual())
    {
      v73 = 267386881;
      v74 = 267386880;
    }

    else
    {
      if (!FigCFEqual())
      {
        v30 = 0;
        v27 = 4294960561;
        goto LABEL_367;
      }

      v74 = 0;
      v73 = 0;
    }

    if (*(v69 + 40))
    {
      v75 = @"com.apple.airplay.car.wireless.sessionPercentageWithScreen";
    }

    else
    {
      v75 = @"com.apple.airplay.car.wired.sessionPercentageWithScreen";
    }

    v76 = APEndpointCarPlayStreamInfoCreate(v160, @"StreamInfo_Screen", v74, v73, v75);
    v30 = v76;
    if (v76)
    {
      *(v76 + 32) = v48;
      v77 = FigEndpointStreamGetCMBaseObject();
      v78 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v78)
      {
        v78(v77, v144, 0, &v199);
      }

      if (!v199)
      {
        carEndpoint_setupStreams_cold_44();
        v27 = 4294949690;
        goto LABEL_367;
      }

      v79 = CFDictionaryGetValue(v199, v50);
      if (v79)
      {
        v79 = CFRetain(v79);
      }

      v30[5] = v79;
      CFArrayAppendValue(*(v69 + 264), v30);
      if (v48 && !*(v69 + 65))
      {
        carEndpoint_setupStreams_cold_43(v159, &v160);
      }

      CFRelease(v31);
      if (v160)
      {
        CFRelease(v160);
        v160 = 0;
      }

      CFRelease(v30);
      if (v161[0])
      {
        CFRelease(v161[0]);
        v161[0] = 0;
      }

      if (v199)
      {
        CFRelease(v199);
        *&v199 = 0;
      }

      if (v162)
      {
        CFRelease(v162);
        v162 = 0;
      }

      if (++v48 == v153)
      {
        carEndpoint_updateDisplayCornerMasks();
        v30 = 0;
        v31 = 0;
        v27 = 0;
        goto LABEL_367;
      }

      continue;
    }

    break;
  }

  carEndpoint_setupStreams_cold_45();
LABEL_376:
  v27 = 4294950575;
LABEL_367:
  v20 = v138;
LABEL_44:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v160)
  {
    CFRelease(v160);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v161[0])
  {
    CFRelease(v161[0]);
  }

  if (v162)
  {
    CFRelease(v162);
  }

  if (v163)
  {
    CFRelease(v163);
  }

  if (v27)
  {
    carEndpoint_setupStreams_cold_48();
  }

  else
  {
    carEndpoint_updateActiveStreamConnectionIDs();
  }

LABEL_60:
  CFRelease(v7);
  return v27;
}