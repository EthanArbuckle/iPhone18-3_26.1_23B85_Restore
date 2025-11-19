void sdpsession_teardownTransportControlStream(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sdpsession_stopNetworkClock(a1);
  v3 = *(DerivedStorage + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v4)
  {
    v4(v3);
  }

  sdpsession_invalidateTransportControlStream(a1, 0);
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 96);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 96) = 0;
  }

  *(DerivedStorage + 133) = 0;
  FigSimpleMutexUnlock();
  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  *(DerivedStorage + 48) = 0;
}

uint64_t sdpsession_ensureStartedInternal_cold_4(int a1)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_4_0();
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return OUTLINED_FUNCTION_4_0();
  }

  return result;
}

uint64_t sdpsession_sendPendingSetVolumeCommand_cold_3(uint64_t *a1, uint64_t a2, int *a3)
{
  v5 = *a1;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    v8 = -12782;
LABEL_5:
    result = APSLogErrorAt();
    goto LABEL_6;
  }

  result = v6(a2, 1937141612, v5, 0);
  v8 = result;
  if (result)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a3 = v8;
  return result;
}

uint64_t sdpsession_sendPendingSetVolumeCommand_cold_4(int a1)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_2();
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return OUTLINED_FUNCTION_2();
  }

  return result;
}

void sdpsession_teardownStreamInternal_cold_3(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v4)
  {
    v4(a1, 1953719408, 0, 0);
  }

  v5 = *a2;

  sdpsession_teardownTransportControlStream(v5);
}

uint64_t tokenAuthentication_authenticateEndpointInternal_cold_5(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -71803;
  return result;
}

uint64_t tokenAuthentication_authenticateEndpointInternal_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -71803;
  return result;
}

uint64_t tokenAuthentication_authenticateEndpointInternal_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -71800;
  return result;
}

uint64_t audioEngineCarPlay_SetProperty(const void *a1, const void *a2, const void *a3)
{
  HIDWORD(v22) = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"ForceZeroBasedSampleTimes"))
  {
    if (CFEqual(a2, @"cryptor"))
    {
      if (!a3 || (v8 = CFGetTypeID(a3), v8 == APSCryptorGetTypeID()))
      {
        v28 = 0;
        v29 = &v28;
        OUTLINED_FUNCTION_6_8(COERCE_DOUBLE(0x2000000000));
        OUTLINED_FUNCTION_4_12();
        OUTLINED_FUNCTION_8_5(v9, v10, v19, v20, v21, v22, block[0], 0x40000000, __audioEngineCarPlay_setCryptor_block_invoke, &unk_27849C8B8, v24, v25, v26);
        if (*(v29 + 6))
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_5_7();
          HIDWORD(v22) = a1;
          if (!a1)
          {
            return HIDWORD(v22);
          }

LABEL_29:
          APSLogErrorAt();
          return HIDWORD(v22);
        }

LABEL_18:
        _Block_object_dispose(&v28, 8);
        HIDWORD(v22) = 0;
        return HIDWORD(v22);
      }
    }

    else if (CFEqual(a2, @"audioSource"))
    {
      if (!a3 || (v11 = CFGetTypeID(a3), v11 == FigEndpointAudioSourceGetTypeID()))
      {
        v28 = 0;
        v29 = &v28;
        v12 = OUTLINED_FUNCTION_6_8(COERCE_DOUBLE(0x2000000000));
        CFRetain(a1);
        if (a3)
        {
          CFRetain(a3);
        }

        v13 = *(v12 + 16);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __audioEngineCarPlay_setAudioSource_block_invoke;
        block[3] = &unk_27849C8E0;
        v24 = &v28;
        v25 = v12;
        v26 = a3;
        v27 = a1;
        dispatch_async(v13, block);
        if (*(v29 + 6))
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_5_7();
          HIDWORD(v22) = a1;
          if (!a1)
          {
            return HIDWORD(v22);
          }

          goto LABEL_29;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (!CFEqual(a2, @"messageRingCapacity"))
      {
        v18 = -12784;
LABEL_28:
        HIDWORD(v22) = v18;
        return HIDWORD(v22);
      }

      if (a3)
      {
        v15 = CFGetTypeID(a3);
        if (v15 == CFNumberGetTypeID())
        {
          v28 = 0;
          v29 = &v28;
          OUTLINED_FUNCTION_6_8(COERCE_DOUBLE(0x2000000000));
          OUTLINED_FUNCTION_4_12();
          OUTLINED_FUNCTION_8_5(v16, v17, v19, v20, v21, v22, block[0], 0x40000000, __audioEngineCarPlay_setMessageRingCapacity_block_invoke, &unk_27849C908, v24, v25, v26);
          OUTLINED_FUNCTION_5_7();
          HIDWORD(v22) = a1;
          if (!a1)
          {
            return HIDWORD(v22);
          }

          goto LABEL_29;
        }
      }
    }

    APSLogErrorAt();
    v18 = -72071;
    goto LABEL_28;
  }

  v7 = CFGetInt64() != 0;
  if (*(DerivedStorage + 8) != v7)
  {
    *(DerivedStorage + 8) = v7;
    if (gLogCategory_APAudioEngineCarPlay <= 50 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_2();
    }
  }

  return HIDWORD(v22);
}

uint64_t audioEngineCarPlay_HandleDataReady()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 136))
  {
    v1 = result;
    OUTLINED_FUNCTION_19_1();
    kdebug_trace();
    if (*(v1 + 4))
    {
      v2 = 0;
      while (1)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v50 = 0;
        v51 = 0;
        v48 = 0;
        v49 = 0;
        v46 = 0;
        v47 = 0;
        v45 = 0;
        v44 = 0;
        memset(v43, 0, sizeof(v43));
        memset(v42, 0, sizeof(v42));
        v4 = *(DerivedStorage + 184);
        v5 = *(CMBaseObjectGetVTable() + 16);
        if (*v5 < 2uLL)
        {
          goto LABEL_23;
        }

        v6 = v5[8];
        if (v6)
        {
          if (!v6(v4, 1))
          {
            goto LABEL_23;
          }
        }

        APMessageRingGetNextFreeBacking(*(DerivedStorage + 200));
        if (APSTransportMessageGetAudioDataPointer())
        {
          goto LABEL_22;
        }

        v7 = *(DerivedStorage + 192);
        if (v7 && (v8 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
        {
          v9 = v8(v7);
        }

        else
        {
          v9 = 0;
        }

        v10 = *(DerivedStorage + 184);
        v11 = v49;
        v12 = v50;
        v13 = *(CMBaseObjectGetVTable() + 16);
        if (*v13 < 2uLL)
        {
          goto LABEL_22;
        }

        v14 = v13[9];
        if (!v14)
        {
          goto LABEL_22;
        }

        v15 = v14(v10, v12, v11 - v9, v43, 1, &v49, &v44, v42);
        if (v15 != -16774 && v15 != 0)
        {
          goto LABEL_22;
        }

        if (v44)
        {
          break;
        }

LABEL_23:
        if (v51)
        {
          CFRelease(v51);
        }

        if (v44)
        {
          if (++v2 < *(v1 + 4))
          {
            continue;
          }
        }

        goto LABEL_52;
      }

      *&v43[16] = 0;
      v17 = *v42;
      *&v43[22] = 0;
      if (*(DerivedStorage + 236))
      {
        v18 = *(DerivedStorage + 232);
      }

      else
      {
        if (*(DerivedStorage + 8))
        {
          v18 = *v42;
        }

        else
        {
          v18 = 0;
        }

        *(DerivedStorage + 232) = v18;
        *(DerivedStorage + 236) = 1;
      }

      *&v43[18] = v17 - v18;
      if (!APSTransportMessageSetAudioDataHeader() && !APSTransportMessageCreateReferencingBBufWithAudioDataLength())
      {
        if (!*(DerivedStorage + 192))
        {
          goto LABEL_43;
        }

        if (!APSTransportMessageGetAudioAADPointer())
        {
          OUTLINED_FUNCTION_19_1();
          if (!CMBlockBufferGetDataPointer(v19, v20, v21, v22, v23))
          {
            if (v9)
            {
              OUTLINED_FUNCTION_19_1();
              if (CMBlockBufferGetDataPointer(v24, v25, v26, v27, v28))
              {
                goto LABEL_22;
              }

              v39 = v48;
            }

            else
            {
              v39 = 0;
            }

            v29 = *(DerivedStorage + 192);
            v31 = v46;
            v30 = v47;
            v32 = v45;
            v33 = v49;
            v34 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v34 && !v34(v29, v30, v31, v32, v33, v32, v33, v39, v9))
            {
LABEL_43:
              v35 = *(DerivedStorage + 200);
              v40 = *MEMORY[0x277CC0898];
              v41 = *(MEMORY[0x277CC0898] + 16);
              if (!APMessageRingEnqueueMessageForSending(v35, v51, &v40))
              {
                goto LABEL_23;
              }
            }
          }
        }
      }

LABEL_22:
      APSLogErrorAt();
      goto LABEL_23;
    }

LABEL_52:
    v36 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APAudioEngineCarPlay <= 30 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    NextUnsentMessage = APMessageRingGetNextUnsentMessage(*(v36 + 200), 0);
    if (NextUnsentMessage)
    {
      v38 = NextUnsentMessage;
      do
      {
        (*(v36 + 224))(*(v36 + 208), 1734700576, v38);
        APMessageRingMarkMessageAsSent(*(v36 + 200), v38);
        v38 = APMessageRingGetNextUnsentMessage(*(v36 + 200), 0);
      }

      while (v38);
    }

    if (gLogCategory_APAudioEngineCarPlay <= 30 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    OUTLINED_FUNCTION_19_1();
    return kdebug_trace();
  }

  return result;
}

uint64_t conduitsource_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    if (gLogCategory_APAudioSourceConduit <= 30 && (gLogCategory_APAudioSourceConduit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *v1 = 1;
  }

  return 0;
}

uint64_t conduitsource_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  conduitsource_Invalidate();
  MirroredRingBufferFree();
  DerivedStorage[13] = 0;
  DerivedStorage[14] = 0;
  v1 = DerivedStorage[15];
  if (v1)
  {
    dispatch_release(v1);
    DerivedStorage[15] = 0;
  }

  result = DerivedStorage[26];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    DerivedStorage[26] = 0;
  }

  return result;
}

uint64_t conduitsource_AcquireBuffer(uint64_t a1, unint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = DerivedStorage;
    if (*(DerivedStorage + 1))
    {
      APSLogErrorAt();
      return 4294950524;
    }

    else
    {
      v7 = *(DerivedStorage + 76);
      if (*(DerivedStorage + 64) - v7 + *(DerivedStorage + 72) < a2)
      {
        return 4294950523;
      }

      else
      {
        result = 0;
        *a3 = *(v6 + 48) + (*(v6 + 68) & v7);
      }
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294950525;
  }

  return result;
}

void realTimeAudioEngine_timeAnnounceWithResetSignalHandler()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_2();
    }

    *(DerivedStorage + 304) = 1;
    realTimeAudioEngine_handleTimeAnnounce();

    CFRelease(v1);
  }
}

void __APAudioEngineRealTimeCreate_block_invoke(uint64_t a1, int a2)
{
  specific = dispatch_get_specific(kAPAudioEngineRealTimeDispatchSpecificKey_WeakAudioEngineHolder);
  state64 = 0;
  notify_get_state(a2, &state64);
  if (specific)
  {
    v4 = state64;
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      v7 = v4 / 1000.0;
      CMBaseObjectGetDerivedStorage();
      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      realTimeAudioEngine_setAudioLatency(v7, v6, 1);
      CFRelease(v6);
    }
  }

  else
  {
    APSLogErrorAt();
  }
}

uint64_t realTimeAudioEngine_removeStreamNotificationListeners(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_4_13();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_3_14();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_17();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t realTimeAudioEngine_PerformanceReportNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    result = *(DerivedStorage + 120);
    if (result)
    {
      if (APSDynamicLatencyManagerAddPerformanceReport())
      {

        return APSLogErrorAt();
      }

      else
      {
        return FigCFDictionaryGetBooleanIfPresent();
      }
    }
  }

  else
  {
    result = APSLogErrorAt();
    if (gLogCategory_APAudioEngineRealTime <= 90)
    {
      if (gLogCategory_APAudioEngineRealTime != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
      {
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_2_1();
        return LogPrintF();
      }
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_updateDynamicLatencyIfNeeded(uint64_t a1, int a2)
{
  result = *(CMBaseObjectGetDerivedStorage() + 120);
  if (result)
  {
    if (a2)
    {
      result = APSDynamicLatencyManagerReset();
      if (result)
      {
        return APSLogErrorAt();
      }
    }

    else
    {
      result = APSDynamicLatencyManagerUpdate();
      if (result)
      {
        return APSLogErrorAt();
      }
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_CopyMessageAtSequenceNumber(uint64_t a1, unsigned int a2, void *a3)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    APSLogErrorAt();
    return 4294951815;
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  v7 = *(v6 + 544);
  if (!v7)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v8 = CFRetain(v7);
  FigSimpleMutexUnlock();
  if (!v8)
  {
    return 0;
  }

  MessageAtSequenceNumber = APMessageRingGetMessageAtSequenceNumber(v8, a2, 0, &v12);
  v10 = MessageAtSequenceNumber;
  if (MessageAtSequenceNumber)
  {
    CFRetain(MessageAtSequenceNumber);
  }

  *a3 = v10;
  CFRelease(v8);
  return v12;
}

uint64_t realTimeAudioEngine_handleTimeAnnounce()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47 = **&MEMORY[0x277CC0898];
  v44 = 0;
  v45 = 0;
  v46 = 0;
  cf = 0;
  v43 = 0;
  v41 = 0;
  context = 0u;
  v40 = 0u;
  OUTLINED_FUNCTION_1_22();
  if (!*(DerivedStorage + 8))
  {
    APSAudioFormatDescriptionGetSampleRate();
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v47, HostTimeClock);
    OUTLINED_FUNCTION_7_6();
    time2 = *(DerivedStorage + 280);
    if (CMTimeCompare(&time1, &time2) > 0 || *(DerivedStorage + 304))
    {
      CMTimeMake(&time2, 1, 1);
      lhs = v47;
      CMTimeAdd(&time1, &lhs, &time2);
      *(DerivedStorage + 280) = time1;
    }

    else if (!*(DerivedStorage + 305))
    {
      goto LABEL_36;
    }

    v2 = CMClockGetHostTimeClock();
    v3 = *(DerivedStorage + 272);
    time2 = v47;
    CMSyncConvertTime(&time1, &time2, v2, v3);
    OUTLINED_FUNCTION_15_1(time1.value, blockBufferOut, v26, v28, v30, v32, v34, lhs.value, *&lhs.timescale, lhs.epoch, v37, time2.value, *&time2.timescale, time2.epoch);
    if ((time1.flags & 0x1D) == 1 && (v4 = time1.value, v6 = *(DerivedStorage + 264), v5 = *(DerivedStorage + 272), time2 = time1, CMSyncConvertTime(&time1, &time2, v5, v6), OUTLINED_FUNCTION_15_1(time1.value, blockBufferOuta, v27, v29, v31, v33, v35, lhs.value, *&lhs.timescale, lhs.epoch, v37, time2.value, *&time2.timescale, time2.epoch), (time1.flags & 0x1D) == 1))
    {
      value = time1.value;
      v8 = *(DerivedStorage + 72);
      OUTLINED_FUNCTION_7_6();
      v9 = CMClockConvertHostTimeToSystemUnits(&time1);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v10 || v10(v8, v9, &v44))
      {
        APSLogErrorAt();
        if (gLogCategory_APAudioEngineRealTime <= 90 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        CMBaseObject = APSNetworkClockGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v12)
        {
          goto LABEL_21;
        }

        v13 = *MEMORY[0x277CBECE8];
        if (v12(CMBaseObject, *MEMORY[0x277CEA260], *MEMORY[0x277CBECE8], &cf))
        {
          goto LABEL_21;
        }

        v14 = FigCFEqual();
        v15 = CMBaseObjectGetDerivedStorage();
        if (v14)
        {
          v16 = *(v15 + 304);
          v17 = OUTLINED_FUNCTION_23();
          if (CMBlockBufferCreateWithMemoryBlock(v17, v18, 0x18uLL, v13, 0, 0, 0x18uLL, 1u, &v43) || (v16 ? (v19 = 1951421520) : (v19 = 1953526896), LODWORD(time1.value) = v4, *(&time1.value + 4) = 1000000000 * v46 + ((1000000000 * HIDWORD(v45)) >> 32), time1.flags = value, time1.epoch = v44, APSTransportMessageSetPTPTimeAnnounce()))
          {
LABEL_42:
            APSLogErrorAt();
LABEL_21:
            APSLogErrorAt();
            goto LABEL_36;
          }
        }

        else
        {
          v20 = *(v15 + 304);
          v21 = OUTLINED_FUNCTION_23();
          if (CMBlockBufferCreateWithMemoryBlock(v21, v22, 0x10uLL, v13, 0, 0, 0x10uLL, 1u, &v43))
          {
            goto LABEL_42;
          }

          v19 = v20 ? 1950436942 : 1952542318;
          LODWORD(time1.value) = v4;
          HIDWORD(time1.value) = v46 - 2085978496;
          time1.timescale = HIDWORD(v45);
          time1.flags = value;
          if (APSTransportMessageSetTimeAnnounce())
          {
            goto LABEL_42;
          }
        }

        APSRealTimeWritableRead();
        BYTE4(v41) = *(DerivedStorage + 304);
        *(&v40 + 1) = v43;
        LODWORD(v41) = v19;
        CFSetApplyFunction(*(DerivedStorage + 168), realTimeAudioEngine_timeAnnounceHoseApplier, &context);
        if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_7_6();
          CMTimeGetSeconds(&time1);
          OUTLINED_FUNCTION_2();
        }

        *(DerivedStorage + 304) = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_4();
      APSLogErrorAt();
      APSSignalErrorAt();
    }
  }

LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  return OUTLINED_FUNCTION_1_22();
}

void realTimeAudioEngine_updateArrivalToRenderTicks()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 168);
  if (v1 && CFSetGetCount(v1) >= 1)
  {
    context = -1;
    CFSetApplyFunction(*(DerivedStorage + 168), realTimeAudioEngine_updateArrivalToRenderTicksApplier, &context);
    v2 = context;
  }

  else
  {
    v2 = 0;
  }

  *(DerivedStorage + 632) = v2;
}

void realTimeAudioEngine_updateCryptor()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 40))
  {
    v1 = DerivedStorage;
    v2 = *(DerivedStorage + 200);
    if (v2)
    {
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v4)
      {
        v4(CMBaseObject, @"Cryptor", *MEMORY[0x277CBECE8], &cf);
        v2 = cf;
      }

      else
      {
        v2 = 0;
      }
    }

    v5 = *(v1 + 216);
    if (v5 != v2)
    {
      if (gLogCategory_APAudioEngineRealTime <= 50)
      {
        if (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4())
        {
          OUTLINED_FUNCTION_2();
        }

        v2 = cf;
        v5 = *(v1 + 216);
      }

      *(v1 + 216) = v2;
      if (v2)
      {
        CFRetain(v2);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v6 = cf;
      FigSimpleMutexLock();
      v7 = *(v1 + 728);
      *(v1 + 728) = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      FigSimpleMutexUnlock();
      v2 = cf;
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }
}

uint64_t realTimeAudioEngine_Flush()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = *MEMORY[0x277CC0898];
  if (*(DerivedStorage + 8))
  {
    return 0;
  }

  v1 = DerivedStorage;
  Int64 = CFDictionaryGetInt64();
  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  if (gLogCategory_APAudioEngineRealTime <= 50)
  {
    if (gLogCategory_APAudioEngineRealTime != -1 || (CMTimeIfPresent = OUTLINED_FUNCTION_4(), CMTimeIfPresent))
    {
      OUTLINED_FUNCTION_34();
      CMTimeIfPresent = OUTLINED_FUNCTION_2();
    }
  }

  if (Int64)
  {
    Int64 = *(v1 + 312);
    OUTLINED_FUNCTION_5_6(CMTimeIfPresent, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16);
    if (Int64)
    {
      CFRetain(Int64);
      v11 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_6(0, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16);
  }

  v11 = 1;
LABEL_11:
  if (APSAtomicMessageQueueSendMessage())
  {
    return 0;
  }

  APSLogErrorAt();
  if ((v11 & 1) == 0)
  {
    CFRelease(Int64);
  }

  v12 = 4294951816;
  APSLogErrorAt();
  return v12;
}

void realTimeAudioEngine_resumeInternal(uint64_t a1)
{
  v142 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v128 = 0.0;
  cf = 0;
  if (*(DerivedStorage + 8))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_33();
    LODWORD(v15) = -15487;
    goto LABEL_153;
  }

  if (*(DerivedStorage + 136))
  {
    OUTLINED_FUNCTION_33();
    LODWORD(v15) = 0;
    goto LABEL_153;
  }

  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v6 != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_2();
  }

  v10 = *(a1 + 8);
  if (!v10 || (v11 = COERCE_DOUBLE(CFDictionaryGetValue(v10, *MEMORY[0x277CD6280])), v12 = CFDictionaryGetValue(*(a1 + 8), *MEMORY[0x277CD62A0]), v11 == 0.0))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_33();
    LODWORD(v15) = -15483;
    goto LABEL_153;
  }

  v13 = v12;
  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v14 != -1 || OUTLINED_FUNCTION_4()))
  {
    v117 = *(v5 + 32);
    v119 = v11;
    OUTLINED_FUNCTION_2();
  }

  CMBaseObject = *(v5 + 184);
  *(v5 + 184) = v11;
  CFRetain(*&v11);
  if (CMBaseObject)
  {
    CFRelease(CMBaseObject);
  }

  v16 = *(v5 + 192);
  if (v16)
  {
    CFRelease(v16);
    *(v5 + 192) = 0;
  }

  v17 = MEMORY[0x277CBECE8];
  if (v13 && CFDataGetLength(v13) >= 0x28)
  {
    *&v1 = COERCE_DOUBLE(CFDataGetBytePtr(v13));
    v18 = *v1;
    v19 = *(v1 + 1);
    v141 = *(v1 + 4);
    *bytes = v18;
    v140 = v19;
    v20 = APSAudioFormatDescriptionCreateWithASBD();
    if (v20)
    {
      LODWORD(v15) = v20;
      goto LABEL_81;
    }

    *bytes = 0;
    OUTLINED_FUNCTION_5_8();
    if (v8 ^ v9 | v7 && (v21 != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionCopyDebugString();
      OUTLINED_FUNCTION_5_8();
      if (v8 ^ v9 | v7)
      {
        if (v22 != -1 || OUTLINED_FUNCTION_4())
        {
          v119 = *&v1;
          v121 = *bytes;
          v117 = *(v5 + 32);
          OUTLINED_FUNCTION_2();
        }
      }
    }

    v23 = realTimeAudioEngine_setTransportAudioFormatInternal(*a1, v1);
    if (v23)
    {
      LODWORD(v15) = v23;
      goto LABEL_81;
    }
  }

  if (*(v5 + 40))
  {
    *&v1 = COERCE_DOUBLE(CMBaseObjectGetDerivedStorage());
    value_4.value = 0;
    if (FigCFEqual() && APSSettingsGetIntWithDefault())
    {
      Null = APSCryptorGetNull();
      value_4.value = CFRetain(Null);
      OUTLINED_FUNCTION_5_8();
      if (v8 ^ v9 | v7 && (v25 != -1 || OUTLINED_FUNCTION_4()))
      {
        v117 = *(v1 + 4);
        OUTLINED_FUNCTION_2();
      }

      CMBaseObject = 0;
      v29 = *(v1 + 26);
      *(v1 + 26) = 0;
      if (!v29)
      {
        goto LABEL_55;
      }
    }

    else
    {
      RandomBytes();
      CMBaseObject = CFDataCreate(*v17, bytes, 32);
      v26 = APSCryptorChaCha20Poly1305Create();
      if (v26)
      {
        LODWORD(v15) = v26;
        APSLogErrorAt();
        if (CMBaseObject)
        {
LABEL_60:
          CFRelease(CMBaseObject);
        }

LABEL_61:
        if (value_4.value)
        {
          CFRelease(value_4.value);
        }

        if (v15)
        {
          goto LABEL_81;
        }

        goto LABEL_64;
      }

      OUTLINED_FUNCTION_5_8();
      if (v8 ^ v9 | v7 && (v27 != -1 || OUTLINED_FUNCTION_4()))
      {
        v117 = *(v1 + 4);
        OUTLINED_FUNCTION_2();
      }

      v29 = *(v1 + 26);
      *(v1 + 26) = CMBaseObject;
      if (CMBaseObject)
      {
        CFRetain(CMBaseObject);
      }

      if (!v29)
      {
LABEL_55:
        v15 = *(v1 + 27);
        v30 = value_4.value;
        *(v1 + 27) = value_4.value;
        if (v30)
        {
          CFRetain(v30);
        }

        if (v15)
        {
          CFRelease(v15);
          LODWORD(v15) = 0;
        }

        if (CMBaseObject)
        {
          goto LABEL_60;
        }

        goto LABEL_61;
      }
    }

    CFRelease(v29);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v28 != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_2();
  }

LABEL_64:
  v1 = *v17;
  v31 = APTransportStreamSendBackingProviderCreateWithStreamID();
  if (v31)
  {
    LODWORD(v15) = v31;
    goto LABEL_81;
  }

  v32 = APTransportStreamSendBackingProviderAcquireBBuf();
  if (v32)
  {
    LODWORD(v15) = v32;
    goto LABEL_81;
  }

  AudioDataPointer = APSTransportMessageGetAudioDataPointer();
  if (AudioDataPointer)
  {
    LODWORD(v15) = AudioDataPointer;
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v34 != -1 || OUTLINED_FUNCTION_4()))
  {
    v117 = *(v5 + 32);
    v119 = *(v5 + 240);
    OUTLINED_FUNCTION_2();
  }

  if (!*(v5 + 248))
  {
    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v38)
    {
      LODWORD(v15) = -12782;
      goto LABEL_81;
    }

    v39 = v38(CMBaseObject, *MEMORY[0x277CEA258], v1, v5 + 248);
    if (v39)
    {
      LODWORD(v15) = v39;
      goto LABEL_81;
    }
  }

  CMBaseObject = CMBaseObjectGetDerivedStorage();
  value_4.value = 0;
  v136.value = 0;
  v134.value = 0;
  v35 = arc4random();
  v36 = *(CMBaseObject + 48);
  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v37 != -1 || OUTLINED_FUNCTION_4()))
  {
    v117 = *(CMBaseObject + 32);
    OUTLINED_FUNCTION_2();
  }

  v40 = *(CMBaseObject + 48);
  *bytes = CFRetain(*(CMBaseObject + 232));
  *&bytes[8] = realTimeAudioEngine_apsRTPPacketHandlerCleanUp;
  *&v140 = realTimeAudioEngine_createRedundantAudioDataMessageBBuf;
  *(&v140 + 1) = realTimeAudioEngine_relinquishMessageBacking;
  v41 = APSRTPPacketHandlerCreate(v1, 1, v40 + 1, bytes, &value_4.value);
  if (v41)
  {
    LODWORD(v15) = v41;
LABEL_182:
    APSLogErrorAt();
    goto LABEL_102;
  }

  if (FigCFEqual() && APSSettingsGetIntWithDefault())
  {
    v36 = -1;
  }

  v42 = APMessageRingCreate(v1, *(CMBaseObject + 56), v35, *(CMBaseObject + 232), 1735550308, 0, &v136.value);
  if (v42)
  {
    LODWORD(v15) = v42;
    goto LABEL_182;
  }

  v43 = APMessageRingCreate(v1, *(CMBaseObject + 56), v35, *(CMBaseObject + 232), 1734700576, 0, &v134.value);
  if (v43)
  {
    LODWORD(v15) = v43;
    goto LABEL_182;
  }

  APMessageRingSetMaxPacketRedundancy(v134.value, *(CMBaseObject + 44));
  APMessageRingSetTargetPayloadRedundancy(v134.value, *(CMBaseObject + 44));
  APMessageRingSetMaxPacketRedundancy(v136.value, *(CMBaseObject + 44));
  APMessageRingSetTargetPayloadRedundancy(v136.value, v36);
  v44 = *(CMBaseObject + 224);
  v45 = value_4.value;
  if (value_4.value)
  {
    CFRetain(value_4.value);
  }

  *(CMBaseObject + 224) = v45;
  if (v44)
  {
    CFRelease(v44);
  }

  FigSimpleMutexLock();
  v46 = *(CMBaseObject + 544);
  v47 = v134.value;
  if (v134.value)
  {
    CFRetain(v134.value);
  }

  *(CMBaseObject + 544) = v47;
  if (v46)
  {
    CFRelease(v46);
  }

  v48 = *(CMBaseObject + 552);
  v49 = v136.value;
  if (v136.value)
  {
    CFRetain(v136.value);
  }

  *(CMBaseObject + 552) = v49;
  if (v48)
  {
    CFRelease(v48);
  }

  FigSimpleMutexUnlock();
  LODWORD(v15) = 0;
LABEL_102:
  if (value_4.value)
  {
    CFRelease(value_4.value);
  }

  if (v136.value)
  {
    CFRelease(v136.value);
  }

  if (v134.value)
  {
    CFRelease(v134.value);
  }

  if (v15)
  {
    goto LABEL_81;
  }

  CMBaseObject = *a1;
  v50 = CMBaseObjectGetDerivedStorage();
  *bytes = *MEMORY[0x277CC0898];
  *&v140 = *(MEMORY[0x277CC0898] + 16);
  *&value_4.value = *bytes;
  value_4.epoch = v140;
  value = 0;
  *&v136.value = *bytes;
  v136.epoch = v140;
  if (!*(v50 + 184))
  {
    *&v1 = COERCE_DOUBLE("realTimeAudioEngine_resumeSubPhase2_Internal");
    APSLogErrorAt();
    v116 = APSSignalErrorAt();
    if (!v116)
    {
      goto LABEL_137;
    }

    LODWORD(v15) = v116;
LABEL_81:
    APSLogErrorAt();
    OUTLINED_FUNCTION_33();
    goto LABEL_153;
  }

  v51 = v50;
  RandomBytes();
  APSAudioFormatDescriptionGetSampleRate();
  v53 = v52;
  v54 = *(v51 + 184);
  ASBD = APSAudioFormatDescriptionGetASBD();
  v56 = APAudioSourceCompressionCreate(v1, v54, ASBD, (v51 + 192));
  if (v56)
  {
    LODWORD(v15) = v56;
LABEL_192:
    APSLogErrorAt();
    goto LABEL_81;
  }

  v57 = CFGetAllocator(CMBaseObject);
  v58 = CMTimebaseCreateWithSourceClock(v57, *(v51 + 248), (v51 + 256));
  if (v58)
  {
    LODWORD(v15) = v58;
    goto LABEL_192;
  }

  FigCFDictionaryGetCMTimeIfPresent();
  if ((bytes[12] & 0x1D) != 1)
  {
    APSLogErrorAt();
    LODWORD(v15) = -15481;
    goto LABEL_81;
  }

  v59 = *(v51 + 256);
  HostTimeClock = CMClockGetHostTimeClock();
  v61 = *(v51 + 248);
  *&time.value = *bytes;
  time.epoch = v140;
  CMSyncConvertTime(&v134, &time, HostTimeClock, v61);
  v125 = *MEMORY[0x277CC08F0];
  *&time.value = *MEMORY[0x277CC08F0];
  v62 = *(MEMORY[0x277CC08F0] + 16);
  time.epoch = v62;
  v63 = CMTimebaseSetRateAndAnchorTime(v59, 1.0, &time, &v134);
  if (v63)
  {
    LODWORD(v15) = v63;
    goto LABEL_192;
  }

  v64 = CFGetAllocator(CMBaseObject);
  v65 = CMTimebaseCreateWithSourceClock(v64, *(v51 + 248), (v51 + 264));
  if (v65)
  {
    LODWORD(v15) = v65;
    goto LABEL_192;
  }

  v66 = v53;
  CMTimeMake(&value_4, value, v53);
  v134 = value_4;
  v67 = OUTLINED_FUNCTION_20_1();
  v71 = CMTimebaseSetRateAndAnchorTime(v68, v67, v69, v70);
  if (v71)
  {
    LODWORD(v15) = v71;
    goto LABEL_192;
  }

  *(v51 + 280) = v125;
  *(v51 + 296) = v62;
  *(v51 + 304) = 257;
  *&v72 = (*(v51 + 140) * v66);
  *&v73 = (*(v51 + 148) * v66);
  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v74 != -1 || OUTLINED_FUNCTION_4()))
  {
    v119 = v72;
    v121 = v73;
    v117 = *(v51 + 32);
    OUTLINED_FUNCTION_2();
  }

  CMTimeMake(&v136, SLODWORD(v72), v53);
  CMTimeMake(&time, SLODWORD(v73), v53);
  OUTLINED_FUNCTION_24_1(v75, v76, v77, v78, v79, v80, v81, v82, v117, v119, v121, v123, *&v125, *(&v125 + 1), 0.0, 0.0, *&lhs.value, *&lhs.timescale, *&lhs.epoch, v131, *&time.value, *&time.timescale, *&time.epoch, v133, *&v134.value, *&v134.timescale, *&v134.epoch, v135, *&v136.value);
  CMTimeAdd(v83, &lhs, &time);
  v136 = v134;
  v84 = CFGetAllocator(CMBaseObject);
  v85 = CMTimebaseCreateWithSourceClock(v84, *(v51 + 248), (v51 + 272));
  if (v85)
  {
    LODWORD(v15) = v85;
    goto LABEL_192;
  }

  v93 = *(v51 + 272);
  OUTLINED_FUNCTION_24_1(*&value_4.value, v86, v87, v88, v89, v90, v91, v92, v118, v120, v122, v124, v126, v127, v128, *&cf, *&lhs.value, *&lhs.timescale, *&lhs.epoch, v131, *&value_4.value, *&value_4.timescale, *&value_4.epoch, v133, *&v134.value, *&v134.timescale, *&v134.epoch, v135, *&v136.value);
  CMTimeSubtract(v94, &time, &lhs);
  v95 = OUTLINED_FUNCTION_20_1();
  v98 = CMTimebaseSetRateAndAnchorTime(v93, v95, v96, v97);
  if (v98)
  {
    LODWORD(v15) = v98;
    goto LABEL_192;
  }

  realTimeAudioEngine_updateHostRateAndAnchorTimeRelativeToRemoteRTPTimebase();
  v99 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v51 + 128));
  *(v51 + 320) = v99;
  dispatch_set_context(v99, CMBaseObject);
  dispatch_source_set_event_handler_f(*(v51 + 320), realTimeAudioEngine_periodicTasksTimerEntry);
  dispatch_source_set_timer(*(v51 + 320), 0, 0x3B9ACA00uLL, 0x2FAF080uLL);
  v100 = CMBaseObjectGetDerivedStorage();
  v101 = APSRTCReportingAgentCreate();
  if (v101)
  {
    if (gLogCategory_APAudioEngineRealTime <= 90)
    {
      CMBaseObject = v101;
      if (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }
  }

  else
  {
    if (gLogCategory_APAudioEngineRealTime <= 40 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v100[49] = 0;
    APSThreadSafeDictionaryCreate();
    if (v100[50])
    {
      v102 = OUTLINED_FUNCTION_23();
      v100[51] = CFArrayCreateMutable(v102, v103, v104);
    }
  }

LABEL_137:
  v105 = realTimeAudioEngine_resumeSubPhase3_Internal();
  if (v105)
  {
    LODWORD(v15) = v105;
    goto LABEL_81;
  }

  FigSimpleMutexLock();
  v106 = *(v5 + 544);
  if (v106)
  {
    CMBaseObject = CFRetain(v106);
  }

  else
  {
    CMBaseObject = 0;
  }

  v107 = *(v5 + 552);
  if (v107)
  {
    *&v1 = COERCE_DOUBLE(CFRetain(v107));
  }

  else
  {
    *&v1 = 0.0;
  }

  FigSimpleMutexUnlock();
  v108 = realTimeAudioEngine_tas_Resume(v5 + 560, *(v5 + 176), *(v5 + 192), *(v5 + 216), *(v5 + 248), *(v5 + 256), *(v5 + 264), *(v5 + 224), *(v5 + 232), CMBaseObject, v1);
  if (v108)
  {
    LODWORD(v15) = v108;
    APSLogErrorAt();
  }

  else
  {
    if (*(v5 + 96))
    {
      v109 = *(v5 + 104);
      if (*a1)
      {
        v110 = CFRetain(*a1);
      }

      else
      {
        v110 = 0;
      }

      dispatch_async_f(v109, v110, realTimeAudioEngine_renewAudioIOAssertionDispatch);
    }

    if (FigCFEqual())
    {
      realTimeAudioEngine_NotifyIsPlayingAmbientAudio(1);
    }

    LODWORD(v15) = 0;
    *(v5 + 136) = 1;
  }

LABEL_153:
  if (v128 != 0.0)
  {
    APTransportStreamSendBackingProviderRelinquishBBuf();
  }

  if (v15)
  {
    realTimeAudioEngine_performSuspensionGutsInternal(*a1, 0);
    if (*(CMBaseObjectGetDerivedStorage() + 360))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v115 = Mutable;
        CFDictionarySetValue(Mutable, @"pointOfFailure", @"Session failed to start");
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CFDictionarySetValue(v115, @"sessionType", @"AudioRealTime");
        APSRTCReportingAgentSendEvent();
        CFRelease(v115);
      }
    }
  }

  else
  {
    v111 = CMBaseObjectGetDerivedStorage();
    if (*(v111 + 360))
    {
      v112 = v111;
      v113 = CMClockGetHostTimeClock();
      CMClockGetTime(bytes, v113);
      *(v112 + 368) = *bytes;
      *(v112 + 384) = v140;
    }
  }

  if (CMBaseObject)
  {
    CFRelease(CMBaseObject);
  }

  if (*&v1 != 0.0)
  {
    CFRelease(v1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  *(a1 + 40) = v15;
  dispatch_async_f(*(v5 + 80), a1, realTimeAudioEngine_resumeComplete);
}

void realTimeAudioEngine_renewAudioIOAssertionDispatch(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 96);
  if (v2 && (dispatch_time(0, 1000000000 * v2), APSAudioIOAssertionTimingControllerAssertUntilTime()))
  {
    APSLogErrorAt();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  CFRelease(a1);
}

void realTimeAudioEngine_NotifyIsPlayingAmbientAudio(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = a1 != 0;
  if (IsAppleTV())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __realTimeAudioEngine_NotifyIsPlayingAmbientAudio_block_invoke;
    block[3] = &unk_27849CA70;
    block[4] = &v5;
    if (realTimeAudioEngine_NotifyIsPlayingAmbientAudio_sTokenOnce != -1)
    {
      dispatch_once(&realTimeAudioEngine_NotifyIsPlayingAmbientAudio_sTokenOnce, block);
    }

    if (*(v6 + 6))
    {
      APSLogErrorAt();
      if (gLogCategory_APAudioEngineRealTime <= 90 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4_3()))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v2 = notify_set_state(realTimeAudioEngine_NotifyIsPlayingAmbientAudio_sToken, v1);
      *(v6 + 6) = v2;
      if (v2)
      {
        APSLogErrorAt();
        if (gLogCategory_APAudioEngineRealTime <= 90 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4_3()))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v3 = notify_post("com.apple.airplay.isPlayingAmbientAudioChanged");
        *(v6 + 6) = v3;
        if (!v3)
        {
          if (gLogCategory_APAudioEngineRealTime > 50 || gLogCategory_APAudioEngineRealTime == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_11;
          }

LABEL_9:
          LogPrintF();
          goto LABEL_11;
        }

        APSLogErrorAt();
        if (gLogCategory_APAudioEngineRealTime <= 90 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4_3()))
        {
LABEL_20:
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_2_1();
          goto LABEL_9;
        }
      }
    }
  }

LABEL_11:
  _Block_object_dispose(&v5, 8);
}

void realTimeAudioEngine_performSuspensionGutsInternal(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  realTimeAudioEngine_tas_SuspendInternal(DerivedStorage + 560);
  FigSimpleMutexUnlock();
  v5 = *(DerivedStorage + 320);
  if (v5)
  {
    dispatch_source_cancel(v5);
    if (!*(DerivedStorage + 328))
    {
      dispatch_resume(*(DerivedStorage + 320));
    }

    v6 = *(DerivedStorage + 320);
    if (v6)
    {
      dispatch_source_cancel(*(DerivedStorage + 320));
      dispatch_release(v6);
      *(DerivedStorage + 320) = 0;
    }
  }

  *(DerivedStorage + 328) = 0;
  v7 = MEMORY[0x277CC1970];
  if (a2)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    v87 = **&MEMORY[0x277CC0898];
    v84 = v87;
    if (*(v8 + 360))
    {
      v9 = v8;
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v87, HostTimeClock);
      v79 = v87;
      v72 = *(v9 + 368);
      OUTLINED_FUNCTION_6_9();
      CMTimeSubtract(v13, v11, v12);
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v22 = Mutable;
        OUTLINED_FUNCTION_8_6(Mutable, v15, v16, v17, v18, v19, v20, v21, v62, v64, v66, v68, v70, v72, *(&v72 + 1), v75, v77, *&v79.value, v79.epoch, v82, *&v84.value, v84.epoch);
        FigCFDictionarySetInt64();
        v23 = APSStatsHistogramCopyValuesAsRTCString();
        APSStatsHistogramGetTotalSampleCount();
        FigCFDictionarySetInt64();
        CFDictionarySetValue(v22, @"senderRenderDeadlineHistogram", v23);
        v24 = CMBaseObjectGetDerivedStorage();
        *&v80 = 0;
        LODWORD(v73) = 0;
        if (!*(v24 + 360))
        {
          goto LABEL_19;
        }

        v25 = v24;
        v26 = APSThreadSafeDictionaryCopyMutableDictionary();
        v27 = FigCFDictionaryCopyArrayOfValues();
        if (v27)
        {
          v28 = v27;
          *&v71 = v23;
          *(&v71 + 1) = a1;
          if (CFArrayGetCount(v27) >= 1)
          {
            v29 = 0;
            do
            {
              CFArrayGetValueAtIndex(v28, v29);
              v30 = APSThreadSafeDictionaryCopyMutableDictionary();
              if (!v30)
              {
                break;
              }

              v31 = v30;
              if (FigCFDictionaryGetInt64IfPresent())
              {
                FigCFDictionaryGetInt32IfPresent();
                mach_absolute_time();
                UpTicksToSeconds();
                FigCFDictionarySetInt32();
                CFDictionaryRemoveValue(v31, @"AudioStreamLastStartTime");
              }

              CFArrayAppendValue(*(v25 + 408), v31);
              CFRelease(v31);
              ++v29;
            }

            while (v29 < CFArrayGetCount(v28));
          }

          CFRelease(v28);
          v7 = MEMORY[0x277CC1970];
          if (v26)
          {
            goto LABEL_18;
          }
        }

        else
        {
          APSLogErrorAt();
          if (v26)
          {
LABEL_18:
            CFRelease(v26);
          }
        }

LABEL_19:
        if (CFEqual(*(v9 + 16), *MEMORY[0x277CC1960]))
        {
          FigCFDictionarySetValue();
          FigCFDictionarySetInt64();
        }

        else
        {
          v32 = CFEqual(*(v9 + 16), *v7);
          if (v32)
          {
            if (OUTLINED_FUNCTION_8_6(v32, v33, v34, v35, v36, v37, v38, v39, v63, v65, v67, v69, v71, v73, v74, v76, v78, v80, v81, v83, v85, v86) < 60.0)
            {
              goto LABEL_27;
            }

            FigCFDictionarySetValue();
          }
        }

        FigCFDictionarySetValue();
        CFDictionarySetValue(v22, @"sessionType", @"AudioRealTime");
        FigCFDictionarySetInt32();
        v40 = APSRTCReportingAgentSendEvent();
        if (gLogCategory_APAudioEngineRealTime <= 50)
        {
          if (gLogCategory_APAudioEngineRealTime != -1 || (v40 = OUTLINED_FUNCTION_4(), v40))
          {
            OUTLINED_FUNCTION_8_6(v40, v41, v42, v43, v44, v45, v46, v47, v63, v65, v67, v69, v71, v73, v74, v76, v78, v80, v81, v83, v85, v86);
            OUTLINED_FUNCTION_2();
            if (!v23)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }

LABEL_27:
        if (!v23)
        {
LABEL_29:
          CFRelease(v22);
          goto LABEL_30;
        }

LABEL_28:
        CFRelease(v23);
        goto LABEL_29;
      }
    }
  }

LABEL_30:
  v48 = CMBaseObjectGetDerivedStorage();
  v49 = v48[45];
  if (v49)
  {
    CFRelease(v49);
    v48[45] = 0;
  }

  v50 = v48[50];
  if (v50)
  {
    CFRelease(v50);
    v48[50] = 0;
  }

  v51 = v48[51];
  if (v51)
  {
    CFRelease(v51);
    v48[51] = 0;
  }

  v52 = *(DerivedStorage + 184);
  if (v52)
  {
    CFRelease(v52);
    *(DerivedStorage + 184) = 0;
  }

  v53 = *(DerivedStorage + 192);
  if (v53)
  {
    CFRelease(v53);
    *(DerivedStorage + 192) = 0;
  }

  v54 = *(DerivedStorage + 216);
  if (v54)
  {
    CFRelease(v54);
    *(DerivedStorage + 216) = 0;
  }

  v55 = *(DerivedStorage + 224);
  if (v55)
  {
    CFRelease(v55);
    *(DerivedStorage + 224) = 0;
  }

  v56 = *(DerivedStorage + 232);
  if (v56)
  {
    CFRelease(v56);
    *(DerivedStorage + 232) = 0;
  }

  *(DerivedStorage + 240) = 0;
  FigSimpleMutexLock();
  v57 = *(DerivedStorage + 544);
  if (v57)
  {
    CFRelease(v57);
    *(DerivedStorage + 544) = 0;
  }

  v58 = *(DerivedStorage + 552);
  if (v58)
  {
    CFRelease(v58);
    *(DerivedStorage + 552) = 0;
  }

  FigSimpleMutexUnlock();
  realTimeAudioEngine_serviceRenderDeadlineMessageQueue();
  if (FigCFEqual())
  {
    realTimeAudioEngine_NotifyIsPlayingAmbientAudio(0);
  }

  realTimeAudioEngine_updateDynamicLatencyIfNeeded(a1, 0);
  *(DerivedStorage + 136) = 0;
  v59 = *(DerivedStorage + 256);
  if (v59)
  {
    CFRelease(v59);
    *(DerivedStorage + 256) = 0;
  }

  v60 = *(DerivedStorage + 264);
  if (v60)
  {
    CFRelease(v60);
    *(DerivedStorage + 264) = 0;
  }

  v61 = *(DerivedStorage + 272);
  if (v61)
  {
    CFRelease(v61);
    *(DerivedStorage + 272) = 0;
  }
}

uint64_t realTimeAudioEngine_periodicTasksTimerEntry()
{
  v84 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_1_22();
  if (*(DerivedStorage + 8))
  {
    return OUTLINED_FUNCTION_1_22();
  }

  realTimeAudioEngine_updateCryptor();
  if (!CFSetGetCount(*(DerivedStorage + 168)))
  {
    return OUTLINED_FUNCTION_1_22();
  }

  v1 = CMBaseObjectGetDerivedStorage();
  v2 = MEMORY[0x277CC0898];
  v81 = *(MEMORY[0x277CC0898] + 8);
  v80 = **&MEMORY[0x277CC0898];
  v79 = v80;
  if (*(v1 + 8))
  {
    return OUTLINED_FUNCTION_1_22();
  }

  v3 = v1;
  APSNetworkClockLogCurrentNetworkTime();
  realTimeAudioEngine_handleTimeAnnounce();
  HostTimeClock = CMClockGetHostTimeClock();
  Time = CMClockGetTime(&v79, HostTimeClock);
  OUTLINED_FUNCTION_40(Time, v6, v7, v8, v9, v10, v11, v12, v55, v58, v61, v64, v67, v70, rhs.value, *&rhs.timescale, rhs.epoch, v74, time2.value, *&time2.timescale, time2.epoch, v76, time1.value, *&time1.timescale, time1.epoch, v78, *&v79.value);
  time2 = *(v3 + 456);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v13 = *(v3 + 272);
    APSAudioFormatDescriptionGetSampleRate();
    CMTimebaseGetTimeWithTimeScale(&time1, v13, v14, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    if ((time1.flags & 0x1D) != 1)
    {
      OUTLINED_FUNCTION_7_4();
      APSLogErrorAt();
      APSSignalErrorAt();
      return OUTLINED_FUNCTION_1_22();
    }

    epoch = time1.epoch;
    FramesPerPacket = APSRealTimeWritableRead();
    if (v80.flags)
    {
      time2 = v80;
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      CMTimeSubtract(&time1, &time2, &rhs);
      v27 = time1.value;
      v81 = *&time1.timescale;
      APSAudioFormatDescriptionGetSampleRate();
      time2.value = v27;
      *&time2.timescale = v81;
      CMTimeConvertScale(&time1, &time2, v28, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v26 = time1.value;
      v81 = *&time1.timescale;
      FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
      v25 = v26 / FramesPerPacket;
    }

    else
    {
      v25 = 0;
      v26 = *v2;
    }

    v29 = *(v3 + 56);
    v30 = 0.0;
    if (v29)
    {
      v30 = ((v25 / v29) * 100.0);
    }

    if (gLogCategory_APAudioEngineRealTime > 50)
    {
      goto LABEL_16;
    }

    if (gLogCategory_APAudioEngineRealTime == -1)
    {
      FramesPerPacket = OUTLINED_FUNCTION_4();
      if (!FramesPerPacket)
      {
LABEL_16:
        OUTLINED_FUNCTION_41(FramesPerPacket, v18, v19, v20, v21, v22, v23, v24, v56, v59, v62, v65, Seconds, v71, rhs.value, *&rhs.timescale, rhs.epoch, v74, time2.value, *&time2.timescale, time2.epoch, v76, time1.value, *&time1.timescale, time1.epoch, v78, *&v79.value);
        *&rhs.value = *(v3 + 432);
        OUTLINED_FUNCTION_6_9();
        CMTimeAdd(v34, v32, v33);
        *(v3 + 456) = time1;
        goto LABEL_17;
      }

      v29 = *(v3 + 56);
    }

    v31 = *(v3 + 32);
    time1.value = v26;
    *&time1.timescale = v81;
    v65 = *&v30;
    Seconds = CMTimeGetSeconds(&time1);
    v59 = v25;
    v62 = v29;
    v56 = v31;
    FramesPerPacket = OUTLINED_FUNCTION_2();
    goto LABEL_16;
  }

LABEL_17:
  realTimeAudioEngine_serviceRenderDeadlineMessageQueue();
  realTimeAudioEngine_updateArrivalToRenderTicks();
  updated = realTimeAudioEngine_updateHostRateAndAnchorTimeRelativeToRemoteRTPTimebase();
  OUTLINED_FUNCTION_40(updated, v36, v37, v38, v39, v40, v41, v42, v56, v59, v62, v65, Seconds, v71, rhs.value, *&rhs.timescale, rhs.epoch, v74, time2.value, *&time2.timescale, time2.epoch, v76, time1.value, *&time1.timescale, time1.epoch, v78, *&v79.value);
  time2 = *(v3 + 504);
  v43 = CMTimeCompare(&time1, &time2);
  if (v43 >= 1)
  {
    if (gLogCategory_APAudioEngineRealTime <= 50)
    {
      if (gLogCategory_APAudioEngineRealTime != -1 || (v43 = OUTLINED_FUNCTION_4(), v43))
      {
        v57 = *(v3 + 32);
        v60 = *(v3 + 352);
        v43 = OUTLINED_FUNCTION_2();
      }
    }

    OUTLINED_FUNCTION_41(v43, v44, v45, v46, v47, v48, v49, v50, v57, v60, v63, v66, v69, v72, rhs.value, *&rhs.timescale, rhs.epoch, v74, time2.value, *&time2.timescale, time2.epoch, v76, time1.value, *&time1.timescale, time1.epoch, v78, *&v79.value);
    *&rhs.value = *(v3 + 480);
    OUTLINED_FUNCTION_6_9();
    CMTimeAdd(v53, v51, v52);
    *(v3 + 504) = time1;
  }

  return OUTLINED_FUNCTION_1_22();
}

const void *realTimeAudioEngine_tas_transcodeAndSendTimerEntry(const __CFArray *a1)
{
  result = CFArrayGetValueAtIndex(a1, 0);
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_1_22();

    return realTimeAudioEngine_tas_transcodeAndSendEntry(v2);
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_transcodeAndSendEntry(uint64_t a1)
{
  v139 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_22();
  APSTimeProfilerTaskBegin();
  if (!FigSimpleMutexTryLock())
  {
    goto LABEL_177;
  }

  if (!*(a1 + 96))
  {
    goto LABEL_176;
  }

  __swp(v1, (a1 + 232));
  if ((v1 & 0x8000000000000000) == 0)
  {
    memset(time1, 0, 24);
    APSAudioFormatDescriptionGetSampleRate();
    CMTimeMake(time1, v1, v3);
    *time1 += *(a1 + 240);
    APSRealTimeWritableWrite();
  }

  v119 = *MEMORY[0x277CC0898];
  *time1 = *MEMORY[0x277CC0898];
  v4 = MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC0898] + 16);
  *&time1[16] = v5;
  *&time1[24] = 0;
  while (APSAtomicMessageQueueReadMessage())
  {
    v138.value = *time1;
    v6 = *&time1[12];
    v138.timescale = *&time1[8];
    v7 = *&time1[16];
    v8 = *&time1[24];
    *&time2.value = v119;
    time2.epoch = v5;
    lhs = *v4;
    APSAudioFormatDescriptionGetSampleRate();
    v10 = v9;
    v11 = *(a1 + 160);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v13 = v12(v11);
      if (!v13)
      {
        if ((v6 & 0x1D) == 1)
        {
          v14 = *(a1 + 184);
          v15 = *(a1 + 192);
          time.value = v138.value;
          time.timescale = v138.timescale;
          time.flags = v6;
          time.epoch = v7;
          CMSyncConvertTime(&lhs, &time, v14, v15);
          v130 = lhs;
          CMTimeConvertScale(&time, &v130, v10, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          lhs = time;
          if (gLogCategory_APAudioEngineRealTime <= 40)
          {
            if (gLogCategory_APAudioEngineRealTime != -1 || (OUTLINED_FUNCTION_18_4(), _LogCategory_Initialize()))
            {
              value = lhs.value;
              OUTLINED_FUNCTION_18_4();
              LogPrintF();
            }
          }
        }

        else
        {
          CMTimebaseGetTimeWithTimeScale(&lhs, *(a1 + 192), v10, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        }

        if ((lhs.flags & 0x1D) != 1)
        {
          OUTLINED_FUNCTION_17();
          APSLogErrorAt();
          v16 = APSSignalErrorAt();
          goto LABEL_30;
        }

        lhs.value += *(a1 + 240);
        APSRealTimeWritableRead();
        APSRealTimeWritableWrite();
        v17 = lhs.value;
        v18 = *(a1 + 216);
        v19 = *(a1 + 224);
        LOWORD(time.value) = 0;
        LOWORD(v130.value) = 0;
        if (APMessageRingFlush(v18, &time))
        {
          goto LABEL_35;
        }

        if (!v19)
        {
          goto LABEL_27;
        }

        if (APMessageRingFlush(v19, &v130))
        {
LABEL_35:
          APSLogErrorAt();
          if (v8)
          {
            goto LABEL_28;
          }
        }

        else
        {
          value_low = LOWORD(time.value);
          v21 = LOWORD(v130.value);
          if (LOWORD(time.value) != LOWORD(v130.value) && gLogCategory_APAudioEngineRealTime <= 90)
          {
            if (gLogCategory_APAudioEngineRealTime != -1)
            {
              goto LABEL_23;
            }

            OUTLINED_FUNCTION_18_4();
            if (_LogCategory_Initialize())
            {
              value_low = LOWORD(time.value);
              v21 = LOWORD(v130.value);
LABEL_23:
              v101 = value_low;
              v102 = v21;
              value = *(a1 + 8);
              LogPrintF();
            }
          }

LABEL_27:
          realTimeAudioEngine_tas_flushHoses(a1, time.value, v10 / 8 + v17);
          if (v8)
          {
LABEL_28:
            APSRealTimeSignalRaise();
          }
        }

        v16 = 0;
        goto LABEL_30;
      }

      v16 = v13;
    }

    else
    {
      v16 = -12782;
    }

    APSLogErrorAt();
LABEL_30:
    if (*&time1[24])
    {
      CFRelease(*&time1[24]);
    }

    if (v16)
    {
      APSLogErrorAt();
      goto LABEL_178;
    }
  }

  v22 = *(a1 + 160);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v23 || !v23(v22, 0))
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_1_22();
  if (!*(a1 + 144))
  {
    goto LABEL_137;
  }

  v24 = 0;
  v112 = *MEMORY[0x277CBECE8];
  v113 = *MEMORY[0x277CE4F28];
  while (2)
  {
    if (APMessageRingGetNextFreeBacking(*(a1 + 216)))
    {
      EmptyBBuf = *(a1 + 152);
      v131 = 0;
      v132 = 0;
      *&v130.value = v119;
      v130.epoch = v5;
      v129 = 0uLL;
      v26 = *(a1 + 72);
      WORD4(v128) = 0;
      v127 = 0;
      *&v128 = 0;
      v125 = 0;
      v126 = 0;
      cf = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v28 = *(a1 + 208);
      v27 = *(a1 + 216);
      v29 = *(a1 + 224);
      v120 = 0;
      v30 = mach_absolute_time();
      OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_1_22();
      APSRealTimeWritableRead();
      if (v130.flags)
      {
        v31 = CMTimebaseGetTime(&time2, *(a1 + 192));
        OUTLINED_FUNCTION_14_5(v31, v32, v33, v34, v35, v36, v37, v38, value, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v112, v113, v114, v115, v116, v117, v118, v119, *(&v119 + 1), 0, 0, v122, cf, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), *&v130.value);
        CMTimeSubtract(v41, v39, v40);
        CMTimeMake(&time2, 250, 1000);
        if (CMTimeCompare(time1, &time2) <= 0)
        {
          v118 = v27;
          if (*(*(CMBaseObjectGetVTable() + 16) + 104))
          {
            v42 = OUTLINED_FUNCTION_23();
            if (v43(v42))
            {
              if (v27 && (v44 = APMessageRingGetNextFreeBacking(v27)) != 0)
              {
                v45 = v44;
                if (!APSTransportMessageGetAudioDataPointer())
                {
                  v114 = v29;
                  v115 = v45;
                  v46 = *(a1 + 168);
                  v117 = v28;
                  if (v46 && (v47 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
                  {
                    v116 = v47(v46);
                  }

                  else
                  {
                    v116 = 0;
                  }

                  v48 = *(a1 + 160);
                  v50 = v131;
                  v49 = v132;
                  v51 = *(*(CMBaseObjectGetVTable() + 16) + 112);
                  if (v51)
                  {
                    value = 0;
                    v52 = v51(v48, v49, v50 - v116, &v126, 1, &v131, &v125, 0);
                    v53 = v125;
                    v54 = v53 * APSAudioFormatDescriptionGetFramesPerPacket();
                    if (v52 == -16774)
                    {
                      if (gLogCategory_APAudioEngineRealTime <= 30)
                      {
                        v28 = v117;
                        if (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_10())
                        {
                          OUTLINED_FUNCTION_3();
                          LogPrintF();
                        }

LABEL_79:
                        OUTLINED_FUNCTION_39();
LABEL_111:
                        if (cf)
                        {
                          CFRelease(cf);
                        }

                        if (v122)
                        {
                          CFRelease(v122);
                        }

                        if (v121)
                        {
                          CFRelease(v121);
                        }

                        if (v120)
                        {
                          CFRelease(v120);
                        }

                        if (EmptyBBuf)
                        {
                          APSRTPPacketHandlerReturnComposedBBuf(v28, EmptyBBuf);
                        }

                        if (v30)
                        {
                          APSRTPPacketHandlerReturnBBuf(v28, v30);
                        }

                        if (!v54)
                        {
                          goto LABEL_137;
                        }

                        if (++v24 >= *(a1 + 144))
                        {
                          goto LABEL_137;
                        }

                        continue;
                      }

LABEL_62:
                      OUTLINED_FUNCTION_39();
                      goto LABEL_63;
                    }

                    if (!v52)
                    {
                      if (!v131)
                      {
                        goto LABEL_62;
                      }

                      v138 = v130;
                      *time1 = 0x7FF8000000000000;
                      *&time1[8] = v119;
                      *&time1[24] = v5;
                      *&v137.value = v119;
                      v137.epoch = v5;
                      APSRealTimeReadableRead();
                      if (*time1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (time1[20] & 1) != 0 && (v137.flags)
                      {
                        lhs = v138;
                        time = v137;
                        CMTimeSubtract(&time2, &lhs, &time);
                        CMTimeMultiplyByFloat64(&lhs, &time2, *time1);
                        time = *&time1[8];
                        CMTimeAdd(&time2, &time, &lhs);
                        v55 = CMClockConvertHostTimeToSystemUnits(&time2);
                      }

                      else
                      {
                        v55 = 0;
                      }

                      v56 = v55 - v26;
                      if (v55 < v26 || v55 == 0)
                      {
                        v56 = v113;
                      }

                      v111 = v56;
                      if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_10()))
                      {
                        v108 = v130.value;
                        v109 = *(a1 + 8);
                        timescale = v130.timescale;
                        v107 = UpTicksToMilliseconds();
                        v105 = v107;
                        v106 = UpTicksToMilliseconds();
                        v103 = timescale;
                        v104 = v55;
                        v101 = v30;
                        v102 = v108;
                        value = v109;
                        OUTLINED_FUNCTION_3();
                        LogPrintF();
                      }

                      APSAudioFormatDescriptionGetSampleRate();
                      time2 = v130;
                      CMTimeConvertScale(time1, &time2, v59, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                      v30 = *time1;
                      v129 = *&time1[8];
                      APSAudioFormatDescriptionGetSampleRate();
                      v61 = CMTimeMake(&time2, v54, v60);
                      OUTLINED_FUNCTION_14_5(v61, v62, v63, v64, v65, v66, v67, v68, value, v101, v102, v103, v104, v105, v106, v107, v108, v109, v111, v112, v113, v114, v115, v116, v117, v118, v119, *(&v119 + 1), v120, v121, v122, cf, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), *&v130.value);
                      CMTimeAdd(v71, v69, v70);
                      v130 = *time1;
                      APSRealTimeWritableWrite();
                      if (*(a1 + 168))
                      {
                        LOWORD(v128) = APMessageRingGetNextEnqueueSequenceNumber(v118);
                        v109 = v30;
                        *(&v128 + 2) = v30;
                        *time1 = *&v4->value;
                        *&time1[16] = v4->epoch;
                        time2 = *time1;
                        time.value = 0;
                        v72 = mach_absolute_time();
                        CMClockMakeHostTimeFromSystemUnits(time1, v72);
                        OUTLINED_FUNCTION_32();
                        APSRealTimePTPClockGetEstimatedPTPTimeForHostTime();
                        v30 = v128;
                        OUTLINED_FUNCTION_32();
                        CMTimeGetSeconds(&lhs);
                        lhs = time2;
                        CMTimeGetSeconds(&lhs);
                        OUTLINED_FUNCTION_17_2();
                        kdebug_trace();
                        v28 = v117;
                        if (APSTransportMessageSetAudioDataHeader())
                        {
                          APSLogErrorAt();
                          goto LABEL_79;
                        }

                        NextFreeBacking = APMessageRingGetNextFreeBacking(v114);
                        if (!NextFreeBacking)
                        {
                          v30 = "realTimeAudioEngine_tas_prepareOneMessageForSending";
                          APSLogErrorAt();
                          APSSignalErrorAt();
                          goto LABEL_79;
                        }

                        v74 = NextFreeBacking;
                        EmptyBBuf = APSRTPPacketHandlerGetEmptyBBuf(v117);
                        if (!EmptyBBuf)
                        {
                          goto LABEL_132;
                        }

                        v30 = APSRTPPacketHandlerGetEmptyBBuf(v117);
                        if (!v30 || APSTransportMessageCreateReferencingBBufWithAudioDataLength() || (CMBlockBufferGetDataLength(*(v30 + 16)), OUTLINED_FUNCTION_23(), APSCMBlockBufferReplace()))
                        {
                          APSLogErrorAt();
                          goto LABEL_111;
                        }

                        *v30 = 96;
                        if (APSRTPPacketHandlerComposeRTPPacketWithBBuf(v117, v30, v116, EmptyBBuf, &v124 + 1))
                        {
                          goto LABEL_132;
                        }

                        CMBlockBufferGetDataLength(*(EmptyBBuf + 2));
                        if (APSCMBlockBufferReplace() || APTransportStreamSendBackingProviderCopyPackageForAcquiredBBuf() || APTransportStreamSendBackingProviderCopyPackageForAcquiredBBuf())
                        {
                          goto LABEL_132;
                        }

                        v75 = *(*(CMBaseObjectGetVTable() + 16) + 144);
                        if (v75)
                        {
                          v75(v121, v110);
                        }

                        v76 = *(*(CMBaseObjectGetVTable() + 16) + 144);
                        if (v76)
                        {
                          v76(v120, v110);
                        }

                        OUTLINED_FUNCTION_17_2();
                        OUTLINED_FUNCTION_1_22();
                        DataLength = CMBlockBufferGetDataLength(*(EmptyBBuf + 2));
                        if (realTimeAudioEngine_tas_createAndEncryptAudioDataMessage(v74, DataLength - v116 - 10, HIDWORD(v124) - 10, *(a1 + 168), &v122) || realTimeAudioEngine_tas_createAndEncryptAudioDataMessage(v115, v131, 0, *(a1 + 168), &cf))
                        {
                          goto LABEL_132;
                        }

                        if (gLogCategory_APAudioEngineRealTime <= 10)
                        {
                          if (gLogCategory_APAudioEngineRealTime != -1 || (OUTLINED_FUNCTION_18_4(), _LogCategory_Initialize()))
                          {
                            value = v131;
                            v101 = HIDWORD(v124);
                            LogPrintF();
                          }
                        }

                        *time1 = v109;
                        *&time1[8] = v129;
                        if (APMessageRingEnqueueMessageForSending(v118, cf, time1) || (*time1 = v109, *&time1[8] = v129, APMessageRingEnqueueMessageForSendingWithPayloadCount(v114, v122, time1, v124)))
                        {
LABEL_132:
                          APSLogErrorAt();
                        }

                        else
                        {
                          v30 = 0;
                          v78 = v128;
                          v79 = *(&v128 + 2);
                          v80 = __swp((v128 << 16) | 1, (a1 + 256));
                          if (!*(a1 + 16) || v80)
                          {
                            goto LABEL_111;
                          }

                          realTimeAudioEngine_tas_flushHoses(a1, v78, v79);
                        }

                        v30 = 0;
                        goto LABEL_111;
                      }

                      OUTLINED_FUNCTION_39();
                      LODWORD(v54) = 0;
LABEL_63:
                      v28 = v117;
                      goto LABEL_111;
                    }
                  }

                  else
                  {
                    v30 = v125;
                    LODWORD(v54) = v30 * APSAudioFormatDescriptionGetFramesPerPacket();
                  }

                  APSLogErrorAt();
                  goto LABEL_62;
                }

                APSLogErrorAt();
              }

              else
              {
                v30 = "realTimeAudioEngine_tas_prepareOneMessageForSending";
                APSLogErrorAt();
                APSSignalErrorAt();
              }
            }
          }
        }
      }

      OUTLINED_FUNCTION_39();
      LODWORD(v54) = 0;
      goto LABEL_111;
    }

    break;
  }

  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

LABEL_137:
  v81 = *(a1 + 216);
  v82 = *(a1 + 224);
  lhs.value = 0;
  time.value = 0;
  memset(time1, 0, 24);
  Default = APSRealTimeAllocatorGetDefault();
  v84 = *(a1 + 144);
  MaxPacketRedundancy = APMessageRingGetMaxPacketRedundancy(v81);
  Mutable = CFArrayCreateMutable(Default, (v84 + v84 * MaxPacketRedundancy), MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v90 = 0;
LABEL_182:
    v98 = -72090;
    goto LABEL_168;
  }

  v87 = APSRealTimeAllocatorGetDefault();
  v88 = *(a1 + 144);
  v89 = APMessageRingGetMaxPacketRedundancy(v82);
  v90 = CFArrayCreateMutable(v87, (v88 + v88 * v89), MEMORY[0x277CBF128]);
  if (!v90)
  {
    APSLogErrorAt();
    goto LABEL_182;
  }

  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  if (*(a1 + 144))
  {
    v91 = 0;
    while (APMessageRingGetUsedCount(v81))
    {
      UsedCount = APMessageRingGetUsedCount(v82);
      if (UsedCount != APMessageRingGetUsedCount(v81) && gLogCategory_APAudioEngineRealTime <= 90)
      {
        if (gLogCategory_APAudioEngineRealTime != -1 || (OUTLINED_FUNCTION_18_4(), _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_18_4();
          LogPrintF();
        }
      }

      v93 = APSRealTimeAllocatorGetDefault();
      APMessageRingCopyNextBurst(v81, v93, &lhs);
      v94 = lhs.value;
      if (lhs.value)
      {
        v140.length = CFArrayGetCount(lhs.value);
        v140.location = 0;
        CFArrayAppendArray(Mutable, v94, v140);
        APMessageRingMarkBurstAsSent(v81, lhs.value);
        if (lhs.value)
        {
          CFRelease(lhs.value);
          lhs.value = 0;
        }
      }

      v95 = APSRealTimeAllocatorGetDefault();
      APMessageRingCopyNextBurst(v82, v95, &lhs);
      v96 = lhs.value;
      if (lhs.value)
      {
        v141.length = CFArrayGetCount(lhs.value);
        v141.location = 0;
        CFArrayAppendArray(v90, v96, v141);
        APMessageRingMarkBurstAsSent(v82, lhs.value);
        if (lhs.value)
        {
          CFRelease(lhs.value);
          lhs.value = 0;
        }
      }

      if (++v91 >= *(a1 + 144))
      {
        goto LABEL_163;
      }
    }

    if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_3();
      LogPrintF();
    }
  }

LABEL_163:
  v97 = APSCFRealTimeReadableCopyValue();
  if (v97)
  {
    v98 = v97;
    APSLogErrorAt();
  }

  else
  {
    if (FigCFDictionaryGetCount() >= 1)
    {
      OUTLINED_FUNCTION_1_22();
      *time1 = Mutable;
      *&time1[8] = v90;
      *&time1[16] = 0;
      CFDictionaryApplyFunction(time.value, realTimeAudioEngine_tas_sendAudioDataDictionaryApplierFunction, time1);
      OUTLINED_FUNCTION_1_22();
      if (*&time1[16])
      {
        *&time2.timescale = 0;
        time2.value = mach_absolute_time();
        time2.timescale = *&time1[16];
        APSAtomicMessageQueueSendMessage();
      }
    }

    v98 = 0;
  }

LABEL_168:
  if (lhs.value)
  {
    CFRelease(lhs.value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  APSCFRealTimeRelease();
  if (!v98)
  {
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_1_22();
    goto LABEL_176;
  }

LABEL_178:
  APSLogErrorAt();
LABEL_176:
  FigSimpleMutexUnlock();
LABEL_177:
  APSTimeProfilerTaskEnd();
  OUTLINED_FUNCTION_17_2();
  return OUTLINED_FUNCTION_1_22();
}

uint64_t realTimeAudioEngine_tas_sendAudioDataDictionaryApplierFunction(int a1, CFBooleanRef BOOLean, uint64_t *a3)
{
  if (CFBooleanGetValue(BOOLean))
  {
    v5 = (a3 + 1);
    result = a3[1];
    if (!result)
    {
      return result;
    }

    result = CFArrayGetCount(result);
    if (result < 1)
    {
      return result;
    }

    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v7 = *(ProtocolVTable + 16);
      if (v7)
      {
        if (*(v7 + 64))
        {
          v8 = OUTLINED_FUNCTION_35();
          v9(v8);
        }

        else
        {
          OUTLINED_FUNCTION_35();
          APSEndpointStreamAudioHoseSendAudioBatchSlow();
        }
      }
    }
  }

  else
  {
    result = *a3;
    if (!*a3)
    {
      return result;
    }

    result = CFArrayGetCount(result);
    if (result < 1)
    {
      return result;
    }

    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    v10 = CMBaseObjectGetProtocolVTable();
    v5 = a3;
    if (v10)
    {
      v11 = *(v10 + 16);
      v5 = a3;
      if (v11)
      {
        if (*(v11 + 64))
        {
          v12 = OUTLINED_FUNCTION_36();
          v13(v12);
        }

        else
        {
          OUTLINED_FUNCTION_36();
          APSEndpointStreamAudioHoseSendAudioBatchSlow();
        }

        v5 = a3;
      }
    }
  }

  v14 = *v5;
  Count = CFArrayGetCount(*v5);
  CFArrayGetValueAtIndex(v14, Count - 1);

  return APSTransportMessageGetAudioDataTimestamp();
}

void realTimeAudioEngine_suspendInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (!*(DerivedStorage + 8) && *(DerivedStorage + 136))
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4()))
    {
      CFSetGetCount(*(v3 + 168));
      OUTLINED_FUNCTION_2();
    }

    if (CFSetGetCount(*(v3 + 168)))
    {
      if (gLogCategory_APAudioEngineRealTime <= 60 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_42();
        LogPrintF();
      }

      CFSetApplyFunction(*(v3 + 168), realTimeAudioEngine_deregisterHoseApplier, *a1);
    }

    realTimeAudioEngine_performSuspensionGutsInternal(*a1, 1);
    realTimeAudioEngine_removeStreamNotificationListeners(*a1, *(v3 + 200));
    v4 = *(v3 + 200);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 200) = 0;
    }
  }

  *(a1 + 40) = 0;
  v5 = *(v3 + 80);

  dispatch_async_f(v5, a1, realTimeAudioEngine_suspendComplete);
}

void realTimeAudioEngine_setEndpointStreamInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  number = 0;
  realTimeAudioEngine_removeStreamNotificationListeners(*a1, *(DerivedStorage + 200));
  v3 = *(DerivedStorage + 200);
  v4 = a1[1];
  *(DerivedStorage + 200) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1 && *(DerivedStorage + 200))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_16_4();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_16_4();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_16_4();
  }

  realTimeAudioEngine_updateCryptor();
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, @"DynamicLatencyOffsetM", *MEMORY[0x277CBECE8], &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, (DerivedStorage + 156));
      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }
    }
  }

  dispatch_async_f(*(DerivedStorage + 80), a1, realTimeAudioEngine_setEndpointStreamCallback);
}

CFIndex realTimeAudioEngine_tas_serviceHoseMessageQueue(const __CFArray *a1)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    CFArrayGetValueAtIndex(a1, 0);
    for (result = APSAtomicMessageQueueReadMessage(); result; result = APSAtomicMessageQueueReadMessage())
    {
      if (gLogCategory_APAudioEngineRealTime <= 90 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4_3()))
      {
        OUTLINED_FUNCTION_2_1();
        LogPrintF();
      }
    }
  }

  return result;
}

void APAudioEngineRealTimeCreate_cold_11()
{
  OUTLINED_FUNCTION_26_0();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

uint64_t APAudioEngineRealTimeCreate_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_29();
  *a1 = result;
  return result;
}

uint64_t APAudioEngineRealTimeCreate_cold_25()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t APAudioEngineRealTimeCreate_cold_33(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_29();
  *a1 = result;
  return result;
}

uint64_t APAudioEngineRealTimeCreate_cold_34(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_29();
  *a1 = result;
  return result;
}

uint64_t realTimeAudioEngine_tas_Initialize_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_29();
  *a1 = result;
  return result;
}

uint64_t realTimeAudioEngine_tas_Initialize_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_29();
  *a1 = result;
  return result;
}

uint64_t realTimeAudioEngine_GlitchReportNotificationListener_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

uint64_t realTimeAudioEngine_GlitchReportNotificationListener_cold_12()
{
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineRealTime <= 90)
  {
    if (gLogCategory_APAudioEngineRealTime != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_2_1();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_DynamicLatencyOffsetDidChangeListener_cold_3()
{
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineRealTime <= 90)
  {
    if (gLogCategory_APAudioEngineRealTime != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_2_1();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_1(uint64_t a1)
{
  CFSetGetCount(*(a1 + 168));
  OUTLINED_FUNCTION_30();
  return OUTLINED_FUNCTION_2();
}

uint64_t realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_2()
{
  OUTLINED_FUNCTION_7_4();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_4(uint64_t a1, CFSetRef *a2)
{
  CFSetGetCount(*a2);
  OUTLINED_FUNCTION_30();
  return OUTLINED_FUNCTION_2();
}

uint64_t realTimeAudioEngine_tas_addHoseDispatchInternal_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_1(uint64_t a1)
{
  CFSetGetCount(*(a1 + 168));
  OUTLINED_FUNCTION_30();
  return OUTLINED_FUNCTION_2();
}

uint64_t realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_3(uint64_t a1, CFSetRef *a2)
{
  CFSetGetCount(*a2);
  OUTLINED_FUNCTION_30();
  return OUTLINED_FUNCTION_2();
}

uint64_t realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_4()
{
  if (gLogCategory_APAudioEngineRealTime <= 50)
  {
    if (gLogCategory_APAudioEngineRealTime != -1)
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

uint64_t realTimeAudioEngine_tas_removeHoseDispatchInternal_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void realTimeAudioEngine_Resume_cold_2(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  free(a2);
}

void realTimeAudioEngine_Suspend_cold_2(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  free(a2);
}

void realTimeAudioEngine_SetEndpointStream_cold_1(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  free(a2);
}

void realTimeAudioEngine_resumeSubPhase3_Internal_cold_2()
{
  OUTLINED_FUNCTION_26_0();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_2();
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

void realTimeAudioEngine_resumeSubPhase3_Internal_cold_7()
{
  OUTLINED_FUNCTION_26_0();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_2();
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

void realTimeAudioEngine_createRedundantAudioDataMessageBBuf_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void __getCRCarPlayPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCRCarPlayPreferencesClass(void)_block_invoke") description:{@"APCarPlayPreferences.m", 39, @"Unable to find class %s", "CRCarPlayPreferences"}];
  __break(1u);
}

void __getCRCarPlayPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarKitLibrary(void)") description:{@"APCarPlayPreferences.m", 37, @"%s", *a1}];
  __break(1u);
}

void legacyKeyHolder_CopyMasterAESKeyAndIV_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t airplayAgentServicesServer_handleAirPlaySystemSenderProcessLaunched()
{
  if (gLogCategory_APAirPlayAgentServices <= 50 && (gLogCategory_APAirPlayAgentServices != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  for (i = 0; i != 4; ++i)
  {
    v1 = airplayAgentServicesServer_handleAirPlaySystemSenderProcessLaunched_copyManagerFuncs[i];
    cf = 0;
    v2 = v1(&cf);
    v3 = cf;
    if (!v2)
    {
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v5)
      {
        v5(CMBaseObject, @"UnusedPropertyToForceServerConnection", 0);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      v3 = cf;
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  return 0;
}

uint64_t APAirPlayAgentServicesServerStart_cold_2(uint64_t result, _DWORD *a2)
{
  v3 = result;
  if (gLogCategory_APAirPlayAgentServices <= 90)
  {
    if (gLogCategory_APAirPlayAgentServices != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = v3;
  return result;
}

uint64_t APAirPlayAgentServicesServerStart_cold_3(uint64_t result, _DWORD *a2)
{
  v3 = result;
  if (gLogCategory_APAirPlayAgentServices <= 90)
  {
    if (gLogCategory_APAirPlayAgentServices != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = v3;
  return result;
}

uint64_t APAirPlayAgentServicesClientSendCommand_cold_3()
{
  if (gLogCategory_APAirPlayAgentServices <= 90)
  {
    if (gLogCategory_APAirPlayAgentServices != -1)
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

uint64_t localStream_copyBufferedSupportedAudioFormatList(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetNumberValue();
  if (FigCFNumberGetUInt64() != 2)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    if (IsAppleTV() && !*(v4 + 128))
    {
      APSLocalAudioCapabilityMonitorGetSharedInstance();
    }

    if (*(DerivedStorage + 128))
    {
      APSLocalAudioCapabilityMonitorCopyProperty();
      APSLocalAudioCapabilityMonitorCopyProperty();
    }
  }

  v5 = APSAudioFormatDescriptionListCreateForBufferedReceiverWithAudioCapabilities();
  *a2 = 0;
  return v5;
}

void localStream_dissociateInternal(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    *DerivedStorage = 1;
    if (gLogCategory_APEndpointStreamLocal <= 30 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    localStream_suspendInternal(a1, 0, 0);
    if (*(v5 + 16))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_18();
      FigNotificationCenterRemoveWeakListener();
    }

    if (a2 && *(v5 + 1))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      FigDispatchAsyncPostNotification();
    }
  }
}

void localStream_suspendInternal(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 208))
  {
    goto LABEL_39;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v29 = 0;
  v28 = 0;
  if (*(v7 + 208))
  {
    v8 = v7;
    if (*(v7 + 240))
    {
      if (APSThreadSafeDictionaryCopyValueIfPresent() && APSThreadSafeDictionaryGetInt64IfPresent())
      {
        APSThreadSafeDictionaryGetInt32IfPresent();
        mach_absolute_time();
        UpTicksToSeconds();
        APSThreadSafeDictionarySetInt32();
        APSThreadSafeDictionaryRemoveValue();
      }

      v9 = *(v8 + 240);
      if (v9)
      {
        CFRelease(v9);
        *(v8 + 240) = 0;
      }
    }
  }

  if (v30)
  {
    CFRelease(v30);
  }

  localStream_updateResumed(a1, 0);
  if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 193);
  *(DerivedStorage + 193) = 0;
  FigSimpleMutexUnlock();
  if (!*(DerivedStorage + 216))
  {
    v12 = 0;
LABEL_35:
    v24 = *(DerivedStorage + 232);
    if (v24)
    {
      CFRelease(v24);
      *(DerivedStorage + 232) = 0;
    }

    if (!v12)
    {
LABEL_40:
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    CFRelease(v12);
LABEL_39:
    LODWORD(v12) = 0;
    goto LABEL_40;
  }

  if (!*(DerivedStorage + 57))
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v12 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CEA0E8], *MEMORY[0x277CBED28]);
    if (v10)
    {
LABEL_19:
      APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (!ProtocolVTable || (v14 = *(ProtocolVTable + 16)) == 0 || !*(v14 + 48))
      {
LABEL_33:
        APSEndpointStreamAudioHoseSBARInvalidate();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_23();
        FigNotificationCenterRemoveWeakListener();
        localStream_updateHoseSBARRate(a1, 0);
        v23 = *(DerivedStorage + 216);
        if (v23)
        {
          CFRelease(v23);
          *(DerivedStorage + 216) = 0;
        }

        goto LABEL_35;
      }

LABEL_32:
      v21 = OUTLINED_FUNCTION_9_4();
      v22(v21);
      goto LABEL_33;
    }

LABEL_25:
    v15 = *(DerivedStorage + 216);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    v16 = CMBaseObjectGetProtocolVTable();
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = *(v17 + 56);
        if (v18)
        {
          v18(v15, 0, 0);
        }
      }
    }

    APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
    v19 = CMBaseObjectGetProtocolVTable();
    if (!v19)
    {
      goto LABEL_33;
    }

    v20 = *(v19 + 16);
    if (!v20 || !*(v20 + 32))
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  APSLogErrorAt();
  LODWORD(v12) = -16761;
  if (!a2)
  {
    return;
  }

LABEL_41:
  CFRetain(a1);
  v25 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __localStream_suspendInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_19;
  block[4] = a2;
  block[5] = a1;
  v27 = v12;
  block[6] = a3;
  dispatch_async(v25, block);
}

void localStream_handleFormatInfoChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v4 = localStream_copyBufferedSupportedAudioFormatList(a2, &v6);
  FigSimpleMutexLock();
  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpointStreamLocal < 51)
    {
      if (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize())
      {
        APSAudioFormatDescriptionListCopyDebugString();
        if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2();
        }
      }

      if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
      {
        APSAudioFormatDescriptionListCopyDebugString();
        if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2();
        }
      }
    }

    *(DerivedStorage + 192) = v6;
    v5 = *(DerivedStorage + 184);
    *(DerivedStorage + 184) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t localStream_Dissociate(const void *a1)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    CFRetain(a1);
    APSDispatchAsyncFHelper();
  }

  return 0;
}

void localStream_suspendDispatchInternal(uint64_t a1)
{
  localStream_suspendInternal(*a1, *(a1 + 16), *(a1 + 24));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    CFRelease(v2);
  }
}

void localStream_resumeDispatchInternal(void **a1)
{
  Int64 = a1;
  v76 = *MEMORY[0x277D85DE8];
  v7 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v66 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  v67 = 0;
  v63 = Int64;
  v60 = v8;
  if (*DerivedStorage)
  {
    OUTLINED_FUNCTION_4_14();
    v16 = 0;
    value = 0;
    v17 = -16762;
    goto LABEL_89;
  }

  v11 = *(DerivedStorage + 40);
  if (v11 == *MEMORY[0x277CC1960] || v11 == *MEMORY[0x277CC1968] || v11 == *MEMORY[0x277CC1970])
  {
    if (*(DerivedStorage + 208))
    {
      goto LABEL_124;
    }

    if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    if (!v7)
    {
      v16 = 0;
      goto LABEL_19;
    }

    p_block = &block;
    v57 = CFDictionaryGetValue(v7, @"EncryptionKey");
    v15 = CFDictionaryGetValue(v7, @"InitialTransportAudioFormatDescription");
    if (v15)
    {
      v16 = CFRetain(v15);
    }

    else
    {
      v16 = 0;
    }

    v4 = CFDictionaryGetValue(v7, @"AudioSessionID");
    Int64 = CFDictionaryGetInt64();
    v59 = CFDictionaryGetInt64();
    v18 = CMBaseObjectGetDerivedStorage();
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    block = 0u;
    v69 = 0u;
    v62 = v6;
    v64 = v16;
    if (*v18)
    {
LABEL_41:
      if (v59)
      {
        Null = APSCryptorGetNull();
        v67 = Null;
        if (Null)
        {
          CFRetain(Null);
        }

        v23 = 1;
LABEL_48:
        FigSimpleMutexLock();
        if (v4)
        {
          v25 = CFRetain(v4);
        }

        else
        {
          v25 = 0;
        }

        *(v10 + 144) = v25;
        v26 = *(v10 + 152);
        if (v26)
        {
          Int64 = CFRetain(v26);
        }

        else
        {
          Int64 = 0;
        }

        v27 = *(v10 + 184);
        if (v27)
        {
          v28 = CFRetain(v27);
        }

        else
        {
          v28 = 0;
        }

        v29 = *(v10 + 192);
        *(v10 + 193) = v23;
        FigSimpleMutexUnlock();
        value = v28;
        if (!APSAudioFormatDescriptionListContainsFormat())
        {
          APSLogErrorAt();
          v17 = APSSignalErrorAt();
          v4 = 0;
          v2 = 0;
          v7 = 0;
          goto LABEL_89;
        }

        v30 = *(v10 + 216);
        if (v30)
        {
          CFRelease(v30);
          *(v10 + 216) = 0;
        }

        v31 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v2 = Mutable;
        if (!Mutable)
        {
          APSLogErrorAt();
          v4 = 0;
          v7 = 0;
          v17 = -16761;
          v6 = v62;
          goto LABEL_89;
        }

        v33 = *MEMORY[0x277CBED28];
        v34 = *MEMORY[0x277CBED10];
        if (*(v10 + 56))
        {
          v35 = *MEMORY[0x277CBED28];
        }

        else
        {
          v35 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CEA118], v35);
        CFDictionarySetValue(v2, *MEMORY[0x277CEA120], *(v10 + 32));
        CFDictionarySetValue(v2, *MEMORY[0x277CEA138], v33);
        CFDictionarySetValue(v2, *MEMORY[0x277CEA128], value);
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValueFromKeyInDict();
        if (v29)
        {
          v36 = v33;
        }

        else
        {
          v36 = v34;
        }

        CFDictionarySetValue(v2, *MEMORY[0x277CEA130], v36);
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        if (!CFDictionaryContainsKey(v7, @"HoseRegistrar"))
        {
          APSLogErrorAt();
          v4 = 0;
          v7 = 0;
          v17 = -16760;
          goto LABEL_78;
        }

        v37 = CFDictionaryGetValue(v7, @"HoseRegistrar");
        if (v37)
        {
          v37 = CFRetain(v37);
        }

        *(v10 + 232) = v37;
        v4 = CFStringCreateF();
        v38 = APSEndpointStreamAudioHoseSBARCreate();
        if (v38)
        {
          v17 = v38;
        }

        else
        {
          v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v39)
          {
            v40 = v39(0, *MEMORY[0x277CEA1B8], Int64);
            if (!v40)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              OUTLINED_FUNCTION_1_23();
              FigNotificationCenterAddWeakListener();
              v41 = APSGetFBOPropertyInt64();
              localStream_updateHoseSBARRate(v66, v41);
              if (!*(v10 + 57))
              {
                v7 = 0;
                goto LABEL_81;
              }

              v42 = CFDictionaryCreateMutable(v31, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              v7 = v42;
              if (v42)
              {
                CFDictionarySetValue(v42, *MEMORY[0x277CEA0E8], v33);
LABEL_81:
                v6 = v62;
                APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
                ProtocolVTable = CMBaseObjectGetProtocolVTable();
                if (!v59)
                {
                  if (ProtocolVTable && (v52 = *(ProtocolVTable + 16)) != 0)
                  {
                    if (*(v52 + 24))
                    {
                      OUTLINED_FUNCTION_3_15();
                      v17 = v56(v53, v54, v55);
                    }

                    else
                    {
                      v17 = -12782;
                    }
                  }

                  else
                  {
                    v17 = -12788;
                  }

                  goto LABEL_88;
                }

                if (!ProtocolVTable || (v44 = *(ProtocolVTable + 16)) == 0)
                {
                  v17 = -12788;
                  goto LABEL_88;
                }

                if (!*(v44 + 40))
                {
                  v17 = -12782;
                  goto LABEL_88;
                }

                OUTLINED_FUNCTION_3_15();
                v49 = v48(v45, v46, v47);
                if (v49)
                {
                  v17 = v49;
LABEL_88:
                  v16 = v64;
                  APSLogErrorAt();
                  goto LABEL_89;
                }

                *(v10 + 216) = 0;
                CFDictionaryApplyFunction(*(v10 + 176), localStream_applyCachedPropertyForSBARDictionaryCallback, v66);
                ++*(v10 + 228);
                localStream_updateResumed(v66, 1);
                v17 = 0;
LABEL_79:
                v16 = v64;
                goto LABEL_89;
              }

              APSLogErrorAt();
              v17 = -16761;
LABEL_78:
              v6 = v62;
              goto LABEL_79;
            }

            v17 = v40;
          }

          else
          {
            v17 = -12782;
          }
        }

        APSLogErrorAt();
        v7 = 0;
        goto LABEL_78;
      }

      if (v57)
      {
        v24 = APSCryptorChaCha20Poly1305Create();
        if (!v24)
        {
          v23 = 0;
          goto LABEL_48;
        }

        v17 = v24;
        APSLogErrorAt();
LABEL_20:
        OUTLINED_FUNCTION_4_14();
        value = 0;
        goto LABEL_89;
      }

LABEL_19:
      APSLogErrorAt();
      v17 = APSSignalErrorAt();
      goto LABEL_20;
    }

    v2 = v18;
    if (*(v18 + 208))
    {
      OUTLINED_FUNCTION_5_9();
    }

    else
    {
      v61 = v4;
      v19 = FigCFDictionaryGetValue();
      if (v19)
      {
        v20 = v19;
        v58 = Int64;
        if (APSThreadSafeDictionaryCopyValueIfPresent())
        {
          v6 = 0;
          v1 = 0;
          p_block = 0;
          v3 = 0;
          mach_absolute_time();
          APSThreadSafeDictionarySetInt64();
          v21 = *(v2 + 30);
          *(v2 + 30) = v20;
          CFRetain(v20);
          if (v21)
          {
            CFRelease(v21);
          }

          v2 = 0;
          v4 = v61;
          Int64 = v58;
          goto LABEL_31;
        }

        APSThreadSafeDictionaryCreate();
        APSLogErrorAt();
      }

      OUTLINED_FUNCTION_5_9();
      v4 = v61;
    }

LABEL_31:
    if (v3)
    {
      CFRelease(v3);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v6 = v62;
    if (v1)
    {
      CFRelease(v1);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (p_block)
    {
      CFRelease(p_block);
    }

    goto LABEL_41;
  }

  APSLogErrorAt();
LABEL_124:
  OUTLINED_FUNCTION_4_14();
  v16 = 0;
  value = 0;
  v17 = 0;
LABEL_89:
  if (v6)
  {
    CFRetain(v66);
    v50 = *(v10 + 8);
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 0x40000000;
    *&v69 = __localStream_resumeInternal_block_invoke;
    *(&v69 + 1) = &__block_descriptor_tmp_49_0;
    *&v70 = v6;
    *(&v70 + 1) = v66;
    DWORD2(v71) = v17;
    *&v71 = v60;
    dispatch_async(v50, &block);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Int64)
  {
    CFRelease(Int64);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (*v63)
  {
    CFRelease(*v63);
  }

  v51 = v63[1];
  if (v51)
  {
    CFRelease(v51);
  }
}

void localStream_dissociateDispatchInternal(const void **a1)
{
  localStream_dissociateInternal(*a1, 1);
  v2 = *a1;

  CFRelease(v2);
}

void APEndpointStreamLocalCreate_cold_2(uint64_t a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void localStream_isPassthroughSupportedForFormatDescription_cold_3(uint64_t a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t coreUtilsPairing_performAdminPairingOperation()
{
  v7 = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v0 = PairingSessionExchange();
  if (v0)
  {
LABEL_24:
    v4 = v0;
    goto LABEL_16;
  }

  v1 = *MEMORY[0x277CBECE8];
  while (1)
  {
    CMBaseObjectGetDerivedStorage();
    v9 = 0;
    Mutable = CFDictionaryCreateMutable(v1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      break;
    }

    v3 = Mutable;
    if (!TMIsAutomaticTimeEnabled())
    {
      goto LABEL_7;
    }

    CFAbsoluteTimeGetCurrent();
    ASPrintF();
    if (v9)
    {
      CFDictionarySetCString();
LABEL_7:
      CFDictionarySetData();
      v4 = APTransportStreamSendPlistMessageCreatingReply();
      goto LABEL_8;
    }

    v4 = 4294895526;
    APSLogErrorAt();
LABEL_8:
    CFRelease(v3);
    if (v9)
    {
      free(v9);
    }

    if (v4)
    {
      goto LABEL_16;
    }

    if (v7)
    {
      free(v7);
      v7 = 0;
    }

    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    OUTLINED_FUNCTION_12_6();
    v0 = PairingSessionExchange();
    if (v0)
    {
      goto LABEL_24;
    }
  }

  v4 = 4294895526;
  APSLogErrorAt();
LABEL_16:
  if (v7)
  {
    free(v7);
    v7 = 0;
  }

  if (v4 && gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v4;
}

id *APPairingClientCoreUtilsCopyGroupInfo(uint64_t a1, id **a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result[4])
  {
    result = [*result pairingGroupInfoForPairingGroupID:?];
    *a2 = result;
  }

  return result;
}

void __APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo_block_invoke_2(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (CFEqual(cf1, @"groupID"))
  {
LABEL_25:
    v13 = 0;
    v7 = 0;
    goto LABEL_18;
  }

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:cf1];
  if (!v6)
  {
    if (gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || OUTLINED_FUNCTION_4_3()))
    {
      OUTLINED_FUNCTION_4_0();
    }

    goto LABEL_25;
  }

  v7 = v6;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    if (a3)
    {
      v8 = CFGetTypeID(a3);
      if (v8 == CFDataGetTypeID())
      {
        v13 = objc_alloc_init(MEMORY[0x277D028D8]);
        [v13 setIdentifier:v7];
        [v13 setPublicKey:a3];
        if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
          [*(a1 + 40) addObject:{v13, v13, cf1}];
        }

        else
        {
          [*(a1 + 40) addObject:{v13, v11, v12}];
        }

        goto LABEL_18;
      }
    }

    v9 = CFGetTypeID(a3);
    v10 = CFCopyTypeIDDescription(v9);
    if (gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || OUTLINED_FUNCTION_4_3()))
    {
      OUTLINED_FUNCTION_4_0();
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  v13 = 0;
LABEL_18:
}

BOOL coreUtilsPairing_IsPeerKnown(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 24);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_7(v2, v7);
  if (coreUtilsPairing_createAirPlayPairingSession(a1, 0, 0, 0, &v6))
  {
    APSLogErrorAt();
    v4 = 0;
    v3 = v6;
    if (!v6)
    {
      return v4;
    }

    goto LABEL_4;
  }

  v3 = v6;
  v4 = PairingSessionFindPeer() == 0;
  if (v3)
  {
LABEL_4:
    CFRelease(v3);
  }

  return v4;
}

uint64_t coreUtilsPairing_PerformVerification(uint64_t a1, void *a2)
{
  v62[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[64])
  {
    v4 = DerivedStorage[66] == 0;
  }

  else
  {
    v4 = 0;
  }

  if (DerivedStorage[58])
  {
    return 0;
  }

  if (DerivedStorage[60])
  {
    v5 = 8;
  }

  else if (DerivedStorage[61])
  {
    if (DerivedStorage[62])
    {
      v5 = 7;
    }

    else
    {
      v5 = 6;
    }
  }

  else if (DerivedStorage[57])
  {
    if (DerivedStorage[59])
    {
      v5 = 5;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 2;
  }

  AirPlayPairingSession = 0;
  v6 = CMBaseObjectGetDerivedStorage();
  v45 = 0;
  dataPointerOut = 0;
  *buffer = 0u;
  v51 = 0u;
  lengthAtOffsetOut = 0;
  v43 = 0;
  *v41 = 0;
  cf = 0;
  v8 = (v6 + 8);
  v7 = *(v6 + 8);
  if (v7)
  {
    CFRelease(v7);
    *v8 = 0;
  }

  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    if ((v5 - 6) > 2)
    {
      v9 = "AP";
    }

    else
    {
      v9 = off_27849D2B8[v5 - 6];
    }

    v34 = v9;
    OUTLINED_FUNCTION_1_24();
    LogPrintF();
  }

  if (v5 == 8)
  {
    v10 = OUTLINED_FUNCTION_14_6();
    if (!v10)
    {
      PairingSessionSetFlags();
      PairingSessionSetLogging();
      PairingSessionSetSignBytesHandler_b();
      PairingSessionSetVerifySignatureHandler_b();
LABEL_32:
      *v8 = v52[0];
      AirPlayPairingSession = 0;
      goto LABEL_36;
    }

    v31 = v10;
    APSLogErrorAt();
    if (v52[0])
    {
      CFRelease(v52[0]);
    }

    AirPlayPairingSession = v31;
    goto LABEL_162;
  }

  if ((v5 & 0xE) == 6)
  {
    v11 = OUTLINED_FUNCTION_14_6();
    if (!v11)
    {
      PairingSessionSetFlags();
      PairingSessionSetLogging();
      goto LABEL_32;
    }

    v32 = v11;
    APSLogErrorAt();
    if (v52[0])
    {
      CFRelease(v52[0]);
    }

    AirPlayPairingSession = v32;
LABEL_162:
    APSLogErrorAt();
    v18 = 0;
    goto LABEL_128;
  }

  AirPlayPairingSession = coreUtilsPairing_createAirPlayPairingSession(a1, 3, 0, v4, v8);
  if (AirPlayPairingSession)
  {
    goto LABEL_162;
  }

  CFStringGetCString(*(v6 + 16), buffer, 32, 0x8000100u);
  AirPlayPairingSession = PairingSessionSetIdentifier();
  if (AirPlayPairingSession)
  {
    goto LABEL_162;
  }

  APPairingClientCoreUtilsCopyGroupInfo(a1, v41);
LABEL_36:
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    if ((v5 - 6) > 2)
    {
      v12 = "AP";
    }

    else
    {
      v12 = off_27849D2B8[v5 - 6];
    }

    v34 = v12;
    v35 = *v8;
    OUTLINED_FUNCTION_1_24();
    LogPrintF();
  }

  v13 = *v41;
  if (*v41)
  {
    if (APPairingClientCoreUtilsIsValidPairingGroupInfo(*v41, *(v6 + 24), *(v6 + 40)))
    {
      if (gLogCategory_APPairingClientCoreUtils <= 30 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        v34 = *v8;
        v35 = v13;
        OUTLINED_FUNCTION_1_24();
        LogPrintF();
      }

      AirPlayPairingSession = PairingSessionSetProperty();
      if (AirPlayPairingSession)
      {
        if (gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_1_24();
          LogPrintF();
        }

        v18 = 0;
        goto LABEL_127;
      }
    }

    else
    {
      if (gLogCategory_APPairingClientCoreUtils <= 60 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        Current = a1;
        v34 = *v8;
        LogPrintF();
      }

      CFRelease(v13);
      v13 = 0;
      *v41 = 0;
    }
  }

  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v43 = 0;
  OUTLINED_FUNCTION_13_5();
  AirPlayPairingSession = PairingSessionExchange();
  if (AirPlayPairingSession)
  {
    v18 = 0;
    goto LABEL_126;
  }

  v36 = v6;
  v37 = a2;
  v39 = v5;
  allocator = *MEMORY[0x277CBECE8];
  while (!v43)
  {
    v5 = v6 + 8;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    CMBaseObjectGetDerivedStorage();
    v48 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *v52 = 0u;
    v53 = 0u;
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      v18 = 0;
      OUTLINED_FUNCTION_11_4();
      AirPlayPairingSession = v30;
      goto LABEL_149;
    }

    v15 = Mutable;
    APSGetDeviceNameCString();
    CFDictionarySetCString();
    snprintf(__str, 0x20uLL, "%d", v39);
    CFDictionarySetCString();
    CFDictionarySetValue(v15, @"X-Apple-PD", @"1");
    if (TMIsAutomaticTimeEnabled())
    {
      Current = CFAbsoluteTimeGetCurrent();
      ASPrintF();
      if (!v48)
      {
        v16 = -71770;
        APSLogErrorAt();
        goto LABEL_73;
      }

      CFDictionarySetCString();
    }

    CFDictionarySetData();
    if (gLogCategory_APPairingClientCoreUtils <= 10 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
    {
      Current = a1;
      v34 = v15;
      LogPrintF();
    }

    v16 = APTransportStreamSendPlistMessageCreatingReply();
LABEL_73:
    CFRelease(v15);
    if (v48)
    {
      free(v48);
    }

    AirPlayPairingSession = v16;
    if (v16)
    {
      goto LABEL_148;
    }

    if (v45)
    {
      free(v45);
      v45 = 0;
    }

    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    if (cf)
    {
      AirPlayPairingSession = CMBlockBufferGetDataPointer(cf, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (AirPlayPairingSession)
      {
        APSLogErrorAt();
LABEL_148:
        v18 = 0;
LABEL_149:
        OUTLINED_FUNCTION_5_10();
        goto LABEL_126;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_6();
    }

    OUTLINED_FUNCTION_13_5();
    AirPlayPairingSession = PairingSessionExchange();
    if (AirPlayPairingSession)
    {
      goto LABEL_148;
    }
  }

  v17 = v4;
  if (v4)
  {
    v18 = PairingSessionCopyProperty();
    OUTLINED_FUNCTION_5_10();
    v19 = v37;
    if (v20)
    {
      APSLogErrorAt();
      goto LABEL_126;
    }

    if (([MEMORY[0x277D24E20] isCertificateValidForFeatures:1 certificate:v18] & 1) == 0)
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_11_4();
      AirPlayPairingSession = v21 + 606;
      if (gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_1_24();
        LogPrintF();
      }

      goto LABEL_126;
    }
  }

  else
  {
    v18 = 0;
    OUTLINED_FUNCTION_5_10();
    v19 = v37;
  }

  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    if ((v5 - 6) > 2)
    {
      v22 = "AP";
    }

    else
    {
      v22 = off_27849D2B8[v5 - 6];
    }

    v34 = v22;
    OUTLINED_FUNCTION_1_24();
    LogPrintF();
  }

  *(v36 + 66) = v17;
  CombinedPairingGroupInfo = 0;
  v23 = CMBaseObjectGetDerivedStorage();
  *__str = 0;
  v48 = 0;
  if (*(v23 + 8))
  {
    PairedPeer = PairingSessionGetPairedPeer();
    if (CombinedPairingGroupInfo)
    {
      goto LABEL_157;
    }

    if (!v13)
    {
      goto LABEL_103;
    }

    v61 = @"groupInfo";
    v62[0] = v13;
    PairedPeer = [PairedPeer patchedPairedPeerWithPeerInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v62, &v61, 1)}];
    CombinedPairingGroupInfo = [*v23 savePairedPeer:PairedPeer];
    if (CombinedPairingGroupInfo)
    {
LABEL_157:
      APSLogErrorAt();
LABEL_103:
      v25 = 0;
    }

    else
    {
      v25 = PairingSessionCopyProperty();
      if (v25)
      {
        if (gLogCategory_APPairingClientCoreUtils <= 30 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
        {
          v34 = *(v23 + 8);
          v35 = v25;
          OUTLINED_FUNCTION_1_24();
          LogPrintF();
        }

        CombinedPairingGroupInfo = APPairingClientCoreUtilsCreateCombinedPairingGroupInfo(v13, v25, *(v23 + 24), *(v23 + 40), __str);
        if (CombinedPairingGroupInfo)
        {
          goto LABEL_116;
        }

        if (gLogCategory_APPairingClientCoreUtils <= 30 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
        {
          Current = a1;
          v34 = *__str;
          LogPrintF();
        }

        v26 = [*v23 peersMatchingPairingGroupID:{*(v23 + 32), Current, v34, v35}];
        APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo(*__str, v26, &v48);
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        *&v53 = __coreUtilsPairing_getPairedPeerFromVerificationPairingSession_block_invoke;
        *(&v53 + 1) = &__block_descriptor_48_e29_v32__0__CUPairedPeer_8Q16_B24l;
        *&v54 = a1;
        *(&v54 + 1) = v23;
        [v48 enumerateObjectsUsingBlock:v52];
        CombinedPairingGroupInfo = APPairingClientCoreUtilsUpdateGroupInfo(a1, *__str);
        if (CombinedPairingGroupInfo)
        {
LABEL_116:
          APSLogErrorAt();
        }
      }
    }
  }

  else
  {
    APSLogErrorAt();
    v25 = 0;
    PairedPeer = 0;
  }

  if (*__str)
  {
    CFRelease(*__str);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v19)
  {
    if (PairedPeer)
    {
      v27 = CFRetain(PairedPeer);
    }

    else
    {
      v27 = 0;
    }

    *v19 = v27;
  }

LABEL_126:
  if (v13)
  {
LABEL_127:
    CFRelease(v13);
  }

LABEL_128:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v45)
  {
    free(v45);
    v45 = 0;
  }

  if (!AirPlayPairingSession)
  {
    return 0;
  }

  if (gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_24();
    LogPrintF();
  }

  if (*v8)
  {
    CFRelease(*v8);
    *v8 = 0;
  }

  v28 = AirPlayPairingSession;
  if (AirPlayPairingSession)
  {
    APSLogErrorAt();
  }

  return v28;
}

uint64_t coreUtilsPairing_performSetupInternal(uint64_t a1, const __CFString *a2, int a3, int a4, char *a5, const void *a6, const __CFString **a7, void *a8, void *a9, void *a10)
{
  v54 = *MEMORY[0x277D85DE8];
  DataPointer = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v48 = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v46 = 0;
  memset(v52, 0, 128);
  v44 = 0;
  cf = 0;
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  DataPointer = coreUtilsPairing_createAirPlayPairingSession(a1, 1, a3 == 4, a4, &v44);
  if (DataPointer)
  {
LABEL_64:
    APSLogErrorAt();
LABEL_65:
    Mutable = 0;
    OUTLINED_FUNCTION_10_3();
    goto LABEL_96;
  }

  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  v37 = a7;
  if (a2)
  {
    OUTLINED_FUNCTION_7_7(a2, v52);
    v16 = v44;
    if (LOBYTE(v52[0]))
    {
      DataPointer = PairingSessionSetSetupCode();
      if (DataPointer)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    v16 = v44;
  }

  OUTLINED_FUNCTION_7_7(*(DerivedStorage + 16), v52);
  DataPointer = PairingSessionSetIdentifier();
  if (DataPointer)
  {
    goto LABEL_64;
  }

  v38 = DerivedStorage;
  v39 = a4;
  OUTLINED_FUNCTION_12_6();
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v46 = 0;
  allocator = *MEMORY[0x277CBECE8];
  if (a5)
  {
    v17 = a6 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  a2 = @"X-Apple-HKP";
  a5 = *MEMORY[0x277CEA360];
  while (1)
  {
    v19 = PairingSessionExchange();
    DataPointer = v19;
    v20 = v19 + 71775 < 3 || v19 == -71164;
    if (v20 || v19 == -71145)
    {
      if (gLogCategory_APPairingClientCoreUtils > 90)
      {
        goto LABEL_64;
      }

      if (gLogCategory_APPairingClientCoreUtils != -1 || (OUTLINED_FUNCTION_8(), v23 = _LogCategory_Initialize(), v22 = DataPointer, v23))
      {
        OUTLINED_FUNCTION_8();
        LogPrintF();
        v22 = DataPointer;
      }

      if (v22)
      {
        goto LABEL_64;
      }
    }

    else if (v19)
    {
      Mutable = 0;
      OUTLINED_FUNCTION_10_3();
      v35 = 200401;
      goto LABEL_116;
    }

    if (v46)
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    CMBaseObjectGetDerivedStorage();
    memset(&v52[8], 0, 128);
    v51 = 0;
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_10_3();
      goto LABEL_115;
    }

    APSGetDeviceNameCString();
    CFDictionarySetCString();
    if (TMIsAutomaticTimeEnabled())
    {
      CFAbsoluteTimeGetCurrent();
      ASPrintF();
      if (!v51)
      {
        v25 = -71770;
        APSLogErrorAt();
        goto LABEL_50;
      }

      CFDictionarySetCString();
    }

    if (v18)
    {
      CFDictionarySetValue(Mutable, @"X-Apple-UsingNANDiversifiedPINAsSetupCode", @"1");
      CFDictionarySetValue(Mutable, @"X-Apple-NANMACAddress", a6);
    }

    snprintf(__str, 0x20uLL, "%d", a3);
    CFDictionarySetCString();
    CFDictionarySetData();
    if (gLogCategory_APPairingClientCoreUtils <= 10)
    {
      if (gLogCategory_APPairingClientCoreUtils != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_8();
        LogPrintF();
      }
    }

    v25 = APTransportStreamSendPlistMessageCreatingReply();
LABEL_50:
    CFRelease(Mutable);
    if (v51)
    {
      free(v51);
    }

    DataPointer = v25;
    if (v25)
    {
      goto LABEL_65;
    }

    if (v48)
    {
      free(v48);
      v48 = 0;
    }

    OUTLINED_FUNCTION_12_6();
    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    if (cf)
    {
      DataPointer = CMBlockBufferGetDataPointer(cf, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (DataPointer)
      {
        goto LABEL_64;
      }
    }
  }

  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (a3 == 4)
  {
    v26 = *(v38 + 8);
    *(v38 + 8) = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    OUTLINED_FUNCTION_10_3();
    *(v38 + 58) = 1;
    v28 = a9;
    v27 = a10;
    goto LABEL_79;
  }

  a5 = PairingSessionCopyPeerIdentifier();
  if (DataPointer)
  {
    APSLogErrorAt();
    Mutable = 0;
    a2 = 0;
  }

  else
  {
    v29 = CFStringCreateWithCString(allocator, a5, 0x8000100u);
    a2 = v29;
    if (v29)
    {
      v30 = *(v38 + 24);
      *(v38 + 24) = v29;
      CFRetain(v29);
      if (v30)
      {
        CFRelease(v30);
      }

      v28 = a9;
      v27 = a10;
      if (v37)
      {
        *v37 = a2;
        a2 = 0;
      }

LABEL_79:
      if (a8)
      {
        *a8 = 0;
      }

      if (!v39)
      {
        Mutable = 0;
        goto LABEL_88;
      }

      Mutable = PairingSessionCopyProperty();
      if (DataPointer)
      {
        APSLogErrorAt();
      }

      else
      {
        if ([MEMORY[0x277D24E20] isCertificateValidForFeatures:1 certificate:Mutable])
        {
          if (v28)
          {
            if (Mutable)
            {
              v31 = CFRetain(Mutable);
            }

            else
            {
              v31 = 0;
            }

            *v28 = v31;
            if (v27)
            {
LABEL_92:
              PairedPeer = PairingSessionGetPairedPeer();
              if (PairedPeer)
              {
                PairedPeer = CFRetain(PairedPeer);
              }

              *v27 = PairedPeer;
            }

LABEL_95:
            *(v38 + 66) = v39;
            goto LABEL_96;
          }

LABEL_88:
          if (v27)
          {
            goto LABEL_92;
          }

          goto LABEL_95;
        }

        APSLogErrorAt();
        OUTLINED_FUNCTION_11_4();
        DataPointer = v36 + 606;
        if (gLogCategory_APPairingClientCoreUtils <= 90)
        {
          if (gLogCategory_APPairingClientCoreUtils != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_8();
            LogPrintF();
          }
        }
      }
    }

    else
    {
      APSLogErrorAt();
      Mutable = 0;
LABEL_115:
      OUTLINED_FUNCTION_11_4();
LABEL_116:
      DataPointer = v35;
    }
  }

LABEL_96:
  if (v44)
  {
    CFRelease(v44);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v48)
  {
    free(v48);
    v48 = 0;
  }

  if (a5)
  {
    free(a5);
  }

  result = DataPointer;
  if (DataPointer)
  {
    if (gLogCategory_APPairingClientCoreUtils <= 90)
    {
      if (gLogCategory_APPairingClientCoreUtils != -1 || (OUTLINED_FUNCTION_8(), v34 = _LogCategory_Initialize(), result = DataPointer, v34))
      {
        OUTLINED_FUNCTION_8();
        LogPrintF();
        return DataPointer;
      }
    }
  }

  return result;
}

uint64_t APPairingClientCoreUtilsPerformRemovePairing_cold_2()
{
  OUTLINED_FUNCTION_4_15();
  if (!v0)
  {
    return OUTLINED_FUNCTION_2();
  }

  result = OUTLINED_FUNCTION_4();
  if (result)
  {
    return OUTLINED_FUNCTION_2();
  }

  return result;
}

uint64_t APPairingClientCoreUtilsPerformListPairings_cold_2()
{
  OUTLINED_FUNCTION_4_15();
  if (!v0)
  {
    return OUTLINED_FUNCTION_2();
  }

  result = OUTLINED_FUNCTION_4();
  if (result)
  {
    return OUTLINED_FUNCTION_2();
  }

  return result;
}

void sharedKeyHolder_CopyMasterAESKeyAndIV_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t vdsink_ShouldDropFrame_cold_1_0(uint64_t a1, CMTime *a2)
{
  time = *a2;
  CMTimeGetSeconds(&time);
  return LogPrintF();
}

uint64_t bufferedAudioEngine_handleClockLockStateChanged(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_1_26();
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    CFRetain(a2);

    return APSPriorityDispatcherAsyncF();
  }

  return result;
}

uint64_t bufferedAudioEngine_releaseCryptors(CMTime *a1, int a2)
{
  v42 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC0898];
  v40 = *MEMORY[0x277CC0898];
  v41 = *(MEMORY[0x277CC0898] + 8);
  v6 = *(MEMORY[0x277CC0898] + 16);
  *&v39.value = *MEMORY[0x277CC0898];
  v32 = v6;
  v39.epoch = v6;
  if (*DerivedStorage)
  {
    goto LABEL_28;
  }

  v7 = DerivedStorage;
  Count = CFDictionaryGetCount(*(DerivedStorage + 1216));
  if (Count < 1)
  {
    goto LABEL_28;
  }

  v9 = Count;
  if (a2)
  {
    bufferedAudioEngine_getFirstValidBufferTimestamp(&v35);
    v40 = v35;
    v10 = v37;
    v41 = v36;
    if (v37)
    {
      v32 = v38;
      goto LABEL_7;
    }

    APSLogErrorAt();
LABEL_28:
    v24 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  v10 = *(v5 + 12);
LABEL_7:
  v11 = OUTLINED_FUNCTION_88();
  if (!v11)
  {
    APSLogErrorAt();
    v12 = 0;
LABEL_26:
    v24 = 4294951816;
    goto LABEL_22;
  }

  v12 = OUTLINED_FUNCTION_88();
  if (!v12)
  {
    APSLogErrorAt();
    goto LABEL_26;
  }

  CFDictionaryGetKeysAndValues(*(v7 + 1216), v11, v12);
  v13 = 0;
  while (1)
  {
    v14 = CMTimeMakeFromDictionary(&v39, v12[v13]);
    if (a2 && OUTLINED_FUNCTION_95(v14, v15, v16, v17, v18, v19, v20, v21, v26, v27, v28, CryptorIDForCryptor, v30, v31, v32, v33, v34, v35, __SPAIR64__(v10, v41), v32, *&v39.value, v39.epoch) < 1)
    {
      goto LABEL_17;
    }

    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      v23 = "";
      if (a1)
      {
        v23 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      v30 = v23;
      v31 = *(v7 + 530);
      *(&v28 + 1) = v11[v13];
      CryptorIDForCryptor = bufferedAudioEngine_getCryptorIDForCryptor(*(&v28 + 1));
      v27 = v30;
      *&v28 = v31;
      v26 = a1;
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v22 = FigNotificationCenterRemoveWeakListener();
    if (v22)
    {
      break;
    }

    CFDictionaryRemoveValue(*(v7 + 1216), v11[v13]);
LABEL_17:
    if (v9 == ++v13)
    {
      v24 = 0;
      goto LABEL_22;
    }
  }

  v24 = v22;
  APSLogErrorAt();
LABEL_22:
  free(v11);
  free(v12);
  return v24;
}

uint64_t bufferedAudioEngine_releaseMagicCookies(uint64_t a1, int a2)
{
  v47 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC0898];
  v45 = *MEMORY[0x277CC0898];
  v46 = *(MEMORY[0x277CC0898] + 8);
  v6 = *(MEMORY[0x277CC0898] + 16);
  *&v44.value = *MEMORY[0x277CC0898];
  v44.epoch = v6;
  if (*DerivedStorage || (v7 = DerivedStorage, Count = CFDictionaryGetCount(*(DerivedStorage + 1056)), Count < 1))
  {
    v29 = 0;
    v11 = 0;
LABEL_29:
    v13 = 0;
    goto LABEL_23;
  }

  v9 = Count;
  if (a2)
  {
    bufferedAudioEngine_getFirstValidBufferTimestamp(&v40);
    v45 = v40;
    v10 = v42;
    v46 = v41;
    if ((v42 & 1) == 0)
    {
      v29 = 0;
      v11 = 0;
      goto LABEL_28;
    }

    v6 = v43;
  }

  else
  {
    v10 = *(v5 + 12);
  }

  v11 = OUTLINED_FUNCTION_88();
  if (!v11)
  {
    v29 = 4294951816;
LABEL_28:
    APSLogErrorAt();
    goto LABEL_29;
  }

  v12 = OUTLINED_FUNCTION_88();
  if (!v12)
  {
    v29 = 4294951816;
    goto LABEL_28;
  }

  v13 = v12;
  v37 = a1;
  CFDictionaryGetKeysAndValues(*(v7 + 1056), v11, v12);
  for (i = 0; i != v9; ++i)
  {
    CMTimeMakeFromDictionary(&v44, v13[i]);
    if (a2)
    {
      v15 = FigCFEqual();
      v16 = v15;
      if (OUTLINED_FUNCTION_95(v15, v17, v18, v19, v20, v21, v22, v23, v31, v32, v33, MagicCookieIDForMagicCookieData, v35, v36, v37, v38, v39, v40, __SPAIR64__(v10, v46), v6, *&v44.value, v44.epoch) < 1 || v16)
      {
        continue;
      }
    }

    OUTLINED_FUNCTION_69();
    if (v26 ^ v27 | v25 && (v24 != -1 || OUTLINED_FUNCTION_4()))
    {
      v28 = "";
      if (v37)
      {
        v28 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      v35 = v28;
      v36 = *(v7 + 530);
      *(&v33 + 1) = v11[i];
      MagicCookieIDForMagicCookieData = bufferedAudioEngine_getMagicCookieIDForMagicCookieData(*(&v33 + 1));
      v32 = v35;
      *&v33 = v36;
      v31 = v37;
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    CFDictionaryRemoveValue(*(v7 + 1056), v11[i]);
  }

  v29 = 0;
LABEL_23:
  free(v11);
  free(v13);
  return v29;
}

void bufferedAudioEngine_endpointStreamSuspendedNotification(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5)
{
  if (a2)
  {
    v8 = malloc_type_malloc(0x18uLL, 0x60040149E097CuLL);
    if (v8)
    {
      v9 = v8;
      *v8 = CFRetain(a2);
      if (a4)
      {
        v10 = CFRetain(a4);
      }

      else
      {
        v10 = 0;
      }

      v9[1] = v10;
      if (a5)
      {
        v11 = CFRetain(a5);
      }

      else
      {
        v11 = 0;
      }

      v9[2] = v11;
      CMBaseObjectGetDerivedStorage();
      if (APSDispatchSectionEnterWithPriorityDispatcher())
      {
        APSLogErrorAt();
        if (*v9)
        {
          CFRelease(*v9);
        }

        v12 = v9[1];
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = v9[2];
        if (v13)
        {
          CFRelease(v13);
        }

        free(v9);
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void bufferedAudioEngine_endpointStreamSuspendedNotificationInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = *(DerivedStorage + 592);
  if (!v3 || v3 != *(v1 + 8))
  {
    goto LABEL_12;
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *MEMORY[0x277CBECE8];
  if (v5(CMBaseObject, @"HoseRegistrar", *MEMORY[0x277CBECE8], &cf))
  {
    goto LABEL_11;
  }

  FigCFDictionaryGetValue();
  v7 = *MEMORY[0x277CBED28];
  v8 = FigCFEqual();
  v9 = v8;
  if (cf == *v1 && !v8)
  {
    goto LABEL_12;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  if (FigNotificationCenterRemoveWeakListeners())
  {
LABEL_11:
    APSLogErrorAt();
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (v9)
  {
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      goto LABEL_13;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CD61F8], v7);
  }

  else
  {
    v11 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  v14 = *(DerivedStorage + 592);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 592) = 0;
  }

LABEL_13:
  APSDispatchSectionLeave();
  if (cf)
  {
    CFRelease(cf);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  v12 = *(v1 + 8);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(v1 + 16);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  free(v1);
}

void bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1112) != a2)
  {
    v4 = DerivedStorage;
    *(DerivedStorage + 1112) = a2;
    if (*(DerivedStorage + 1200))
    {
      if (a2)
      {
        v5 = *MEMORY[0x277CBECE8];
        v19 = **&MEMORY[0x277CC08F0];
        v6 = CMTimeCopyAsDictionary(&v19, v5);
        if (v6)
        {
          v7 = v6;
          v8 = *(v4 + 1200);
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v9 && !v9(v8, *MEMORY[0x277CD6470], v7))
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        CMTimeMake(&v19, 10000, 1000);
        v10 = *MEMORY[0x277CBECE8];
        v11 = CMTimeCopyAsDictionary(&v19, *MEMORY[0x277CBECE8]);
        if (v11)
        {
          v7 = v11;
          v12 = *(v4 + 1200);
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v13)
          {
            if (!v13(v12, *MEMORY[0x277CD6470], v7))
            {
              CMTimeMake(&v19, 2000, 1000);
              v14 = CMTimeCopyAsDictionary(&v19, v10);
              if (v14)
              {
                v15 = v14;
                v16 = *(v4 + 1200);
                v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v17 || v17(v16, *MEMORY[0x277CD6478], v15))
                {
                  APSLogErrorAt();
                }

                CFRelease(v7);
                v18 = v15;
                goto LABEL_17;
              }
            }
          }

LABEL_15:
          APSLogErrorAt();
LABEL_16:
          v18 = v7;
LABEL_17:
          CFRelease(v18);
          return;
        }
      }

      APSLogErrorAt();
    }
  }
}

uint64_t bufferedAudioEngine_handleTimedInfoManagerNotification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    bufferedAudioEngine_updateInternalBadgeInfoAndPostNotificationIfNecessary(a2, a5, 1);
    CFRetain(a2);
    if (a5)
    {
      CFRetain(a5);
    }

    return APSPriorityDispatcherAsync();
  }

  return result;
}

uint64_t bufferedAudioEngine_updatePlaybackState(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 884) != a2)
  {
    v6 = DerivedStorage;
    v7 = LogCategoryCopyOSLogHandle();
    OUTLINED_FUNCTION_98();
    if (os_signpost_enabled(v2))
    {
      *__dst = 136315138;
      *&__dst[4] = bufferedAudioEngine_playbackStateGetCString(a2);
      OUTLINED_FUNCTION_97();
      _os_signpost_emit_with_name_impl(v8, v9, v10, 0x2B1605B8uLL, v11, v12, v13, 0xCu);
    }

    if (v7)
    {
      os_release(v7);
    }

    CString = bufferedAudioEngine_playbackStateGetCString(a2);
    strncpy(__dst, CString, 8uLL);
    OUTLINED_FUNCTION_6_7();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      bufferedAudioEngine_playbackStateGetCString(*(v6 + 884));
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    *(v6 + 884) = a2;
    bufferedAudioEngine_updateDataProcessingTargetQueueInternal(a1);
    bufferedAudioEngine_updateCriticalBufferingState(a1);
    v15 = *MEMORY[0x277CBECE8];
    v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (v6 + 884));
    values = v16;
    keys = @"PlaybackStateType";
    v17 = CFDictionaryCreate(v15, &keys, &values, 1, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (a2 == 3)
    {
      bufferedAudioEngine_updateActiveAudioEngineCount(a1, 0);
    }

    else if (a2 == 8)
    {
      bufferedAudioEngine_updateActiveAudioEngineCount(a1, 1);
      bufferedAudioEngine_reportPlayingAudioEngineEvent(a1);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  return CMBaseObjectGetDerivedStorage();
}

void bufferedAudioEngine_updateDataProcessingTargetQueueInternal(uint64_t a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v104, 0, sizeof(v104));
  OUTLINED_FUNCTION_104();
  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(v3, v4);
  memset(&v103, 0, sizeof(v103));
  OUTLINED_FUNCTION_125();
  memset(&rhs, 0, sizeof(rhs));
  CMTimeSubtract(&v103, &lhs, &rhs);
  if (bufferedAudioEngine_updateDataProcessingTargetQueueInternal_onceToken != -1)
  {
    dispatch_once(&bufferedAudioEngine_updateDataProcessingTargetQueueInternal_onceToken, &__block_literal_global_18);
  }

  if (*(DerivedStorage + 320))
  {
    started = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APAudioEngineBuffered <= 10)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (started = _LogCategory_Initialize(), started))
      {
        if (a1)
        {
          started = CMBaseObjectGetDerivedStorage();
          v13 = (started + 392);
        }

        else
        {
          v13 = "";
        }

        v14 = OUTLINED_FUNCTION_30_0(started, v6, v7, v8, v9, v10, v11, v12, v71, v73, v75, v77, v79, v81, v83, v85, CString, v89, v91, v94, v97, v100, *&v103.value, v103.epoch);
        OUTLINED_FUNCTION_125();
        Seconds = CMTimeGetSeconds(&lhs);
        lhs = v104;
        v77 = *&Seconds;
        v79 = CMTimeGetSeconds(&lhs);
        v75 = *&v14;
        v71 = a1;
        v73 = v13;
        started = LogPrintF();
      }
    }

    v16 = *(DerivedStorage + 884);
    if (v16 == 4 || v16 == 5 && (*(DerivedStorage + 816) & 1) == 0 && (started = bufferedAudioEngine_engineBufferedToStartWaterMark(), !started) || dword_280FB1468 >= 1 && OUTLINED_FUNCTION_30_0(started, v6, v7, v8, v9, v10, v11, v12, v71, v73, v75, v77, v79, v81, v83, v85, CString, v89, v91, v94, v97, v100, *&v103.value, v103.epoch) < dword_280FB1468 / 1000.0)
    {
      v17 = 0;
      v18 = 36;
      v19 = 1;
      goto LABEL_27;
    }

    if (_MergedGlobals < 1 || OUTLINED_FUNCTION_30_0(started, v6, v7, v8, v9, v10, v11, v12, v71, v73, v75, v77, v79, v81, v83, v85, CString, v89, v91, v94, v97, v100, *&v103.value, v103.epoch) >= _MergedGlobals / 1000.0)
    {
      v18 = 37;
      if (*(DerivedStorage + 884) == 8)
      {
        v20 = APSIsAPMSpeaker();
        v19 = 0;
        v17 = v20 == 0;
        if (v20)
        {
          v18 = 43;
        }

        else
        {
          v18 = 37;
        }

LABEL_27:
        if (*(DerivedStorage + 456) == v18)
        {
          return;
        }

        OUTLINED_FUNCTION_29_0();
        if (v23 ^ v24 | v22 && (v21 != -1 || OUTLINED_FUNCTION_4()))
        {
          if (a1)
          {
            v52 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v52 = "";
          }

          v56 = *(DerivedStorage + 456);
          switch(v56)
          {
            case '$':
              v57 = "Urgent ";
              break;
            case '+':
              v57 = "Relaxed";
              break;
            case '%':
              v57 = "Default";
              break;
            default:
              v57 = "UNKNOWN";
              break;
          }

          v99 = v57;
          v102 = v52;
          v96 = *(DerivedStorage + 530);
          if (v18 == 36)
          {
            v58 = "Urgent ";
          }

          else if (v18 == 43)
          {
            v58 = "Relaxed";
          }

          else
          {
            v58 = "Default";
          }

          v93 = v58;
          v59 = *(DerivedStorage + 896);
          v60 = bufferedAudioEngine_engineBufferedToStartWaterMark();
          v61 = v60;
          v69 = OUTLINED_FUNCTION_30_0(v60, v62, v63, v64, v65, v66, v67, v68, v71, v73, v75, v77, v79, v81, v83, v85, CString, v89, v93, v96, v99, v102, *&v103.value, v103.epoch);
          CString = bufferedAudioEngine_playbackStateGetCString(*(DerivedStorage + 884));
          v85 = *&v69;
          v70 = 84;
          if (!v61)
          {
            v70 = 70;
          }

          v83 = v70;
          v81 = v59;
          v77 = v97;
          v79 = v91;
          v73 = v100;
          v75 = v94;
          v71 = a1;
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        v25 = *MEMORY[0x277CBECE8];
        keys[0] = *MEMORY[0x277CD61F0];
        v26 = MEMORY[0x277CD61D8];
        v27 = MEMORY[0x277CD61C8];
        if (!v17)
        {
          v27 = MEMORY[0x277CD61D0];
        }

        if (!v19)
        {
          v26 = v27;
        }

        values = *v26;
        v28 = CFDictionaryCreate(v25, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        APSPriorityDispatcherSetPriority();
        if (*(DerivedStorage + 536))
        {
          APSPriorityDispatchSourceSetPriority();
        }

        if (*(DerivedStorage + 1792))
        {
          APSPriorityDispatchSourceSetPriority();
        }

        *(DerivedStorage + 456) = v18;
        v29 = _MergedGlobals;
        v30 = CMBaseObjectGetDerivedStorage();
        memset(&lhs, 0, sizeof(lhs));
        OUTLINED_FUNCTION_104();
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(v31, v32);
        memset(&rhs, 0, sizeof(rhs));
        time = *(v30 + 756);
        time1 = lhs;
        CMTimeSubtract(&rhs, &time, &time1);
        CMBaseObjectGetDerivedStorage();
        if (!*(v30 + 1784))
        {
          goto LABEL_79;
        }

        v33 = *(v30 + 456);
        if (v33 != 36)
        {
          if (v33 == 43 || v33 == 37)
          {
            if (rhs.flags)
            {
              memset(&time, 0, sizeof(time));
              CMTimeMake(&time1, v29, 1000);
              OUTLINED_FUNCTION_63();
              v34 = CMTimeSubtract(&time, &time2, &time1);
              OUTLINED_FUNCTION_132(v34, v35, v36, v37, v38, v39, v40, v41, v71, v73, v75, v77, v79, v81, v83, v85, CString, v89, v91, v94, v97, v100, v103.value, *&v103.timescale, v103.epoch, v104.value, *&v104.timescale, v104.epoch, time2.value, *&time2.timescale, time2.epoch, v106, time1.value, *&time1.timescale, time1.epoch, v108, *&time.value);
              time2 = **&MEMORY[0x277CC08F0];
              v42 = CMTimeCompare(&time1, &time2);
              if (v42 < 1)
              {
                v50 = 100;
              }

              else
              {
                OUTLINED_FUNCTION_132(v42, v43, v44, v45, v46, v47, v48, v49, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v95, v98, v101, v103.value, *&v103.timescale, v103.epoch, v104.value, *&v104.timescale, v104.epoch, time2.value, *&time2.timescale, time2.epoch, v106, time1.value, *&time1.timescale, time1.epoch, v108, *&time.value);
                v50 = (CMTimeGetSeconds(&time1) * 1000.0) + 100;
              }

              goto LABEL_61;
            }
          }

          else
          {
            OUTLINED_FUNCTION_77();
            if (v23 ^ v24 | v22 && (v51 != -1 || _LogCategory_Initialize()))
            {
              if (a1)
              {
                CMBaseObjectGetDerivedStorage();
              }

              LogPrintF();
            }
          }
        }

        v50 = 5000;
LABEL_61:
        if (!*(v30 + 544))
        {
          time = rhs;
          if (v29 < (CMTimeGetSeconds(&time) * 1000.0))
          {
            v50 = 5000;
          }
        }

        if (v50 >= 0x1388)
        {
          v53 = 5000;
        }

        else
        {
          v53 = v50;
        }

        if (v53 <= 0x64)
        {
          v54 = 100;
        }

        else
        {
          v54 = v53;
        }

        OUTLINED_FUNCTION_29_0();
        if (v23 ^ v24 | v22 && (v55 != -1 || OUTLINED_FUNCTION_4()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        dispatch_time(0, 1000000 * v54);
        APSPriorityDispatchSourceSetTimer();
LABEL_79:
        OUTLINED_FUNCTION_6_7();
        if (v28)
        {
          CFRelease(v28);
        }

        return;
      }

      v19 = 0;
    }

    else
    {
      v19 = 0;
      v18 = 37;
    }

    v17 = 1;
    goto LABEL_27;
  }
}

void bufferedAudioEngine_updateActiveAudioEngineCount(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1280))
  {
    v6 = *(DerivedStorage + 416);
    if (bufferedAudioEngine_getActiveAudioEngineSet(a1, v6 == 1))
    {
      if (a2)
      {
        APSThreadSafeSetSetValue();
      }

      else
      {
        APSThreadSafeSetRemoveValue();
      }

      Count = APSThreadSafeSetGetCount();
      v8 = LogCategoryCopyOSLogHandle();
      OUTLINED_FUNCTION_98();
      v9 = os_signpost_enabled(v2);
      if (v6 == 1)
      {
        if (v9)
        {
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_97();
          _os_signpost_emit_with_name_impl(v10, v11, v12, v13, v14, v15, v16, 0x12u);
        }

        if (v8)
        {
          os_release(v8);
        }

        if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_3();
LABEL_36:
          LogPrintF();
        }
      }

      else
      {
        if (v9)
        {
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_97();
          _os_signpost_emit_with_name_impl(v17, v18, v19, 0x2B1605BCuLL, v20, v21, v22, 0x12u);
        }

        if (v8)
        {
          os_release(v8);
        }

        if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_3();
          LogPrintF();
        }

        if (Count >= 0x2B1605BD && gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          goto LABEL_36;
        }
      }
    }
  }
}

void bufferedAudioEngine_reportPlayingAudioEngineEvent(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 1280))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v3 = Mutable;
      CFDictionarySetValue(Mutable, @"sessionType", @"AudioBuffered");
      bufferedAudioEngine_getActiveAudioEngineSet(a1, 0);
      APSThreadSafeSetGetCount();
      FigCFDictionarySetInt32();
      bufferedAudioEngine_getActiveAudioEngineSet(a1, 1);
      APSThreadSafeSetGetCount();
      FigCFDictionarySetInt32();
      APSRTCReportingAgentSendEvent();

      CFRelease(v3);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

uint64_t bufferedAudioEngine_engineBufferedToStartWaterMark()
{
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = **&MEMORY[0x277CC08F0];
  v5 = v6;
  v4 = v6;
  result = *(DerivedStorage + 616);
  if (result)
  {
    result = APMessageRingBufferedGetUsedCount(result);
    if (result)
    {
      bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v7, &v6);
      if (v7)
      {
        APSLogErrorAt();
        return 0;
      }

      else
      {
        lhs = v6;
        v2 = *(DerivedStorage + 160);
        CMTimeAdd(&v5, &lhs, &v2);
        APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(DerivedStorage + 616), 0, &v4);
        lhs = v4;
        v2 = v5;
        return CMTimeCompare(&lhs, &v2) >= 0;
      }
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_getCryptorIDForCryptor(uint64_t a1)
{
  v1 = a1;
  cf = 0;
  if (_MergedGlobals_896 == -1)
  {
    if (a1)
    {
LABEL_3:
      v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v2 || v2(v1, *MEMORY[0x277CC0988], *MEMORY[0x277CBECE8], &cf) || CFStringGetOrCopyCStringUTF8())
      {
        APSLogErrorAt();
        v1 = 0;
      }

      else
      {
        v1 = SipHash();
      }
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_896, &__block_literal_global_303);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

void bufferedAudioEngine_handleCryptorKeyUpdatedInternal(uint64_t a1)
{
  if (OUTLINED_FUNCTION_44(a1))
  {
    if (!*CMBaseObjectGetDerivedStorage() && bufferedAudioEngine_setCryptorForAllHoses(*v1, *(v1 + 8)))
    {
      APSLogErrorAt();
    }

    if (*v1)
    {
      CFRelease(*v1);
    }
  }

  v2 = *(v1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  free(v1);
}

void bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (*CMBaseObjectGetDerivedStorage())
  {
    goto LABEL_28;
  }

  v2 = OUTLINED_FUNCTION_112();
  if (v2)
  {
    v3 = v2;
    v4 = *(v1 + 24);
    if (v4)
    {
      if (v4 == 200501)
      {
        if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
        {
          if (!*v1)
          {
LABEL_23:
            OUTLINED_FUNCTION_4_16();
            OUTLINED_FUNCTION_2_1();
            LogPrintF();
            goto LABEL_28;
          }

LABEL_8:
          CMBaseObjectGetDerivedStorage();
          goto LABEL_23;
        }

        goto LABEL_28;
      }

      if (gLogCategory_APAudioEngineBuffered > 90 || gLogCategory_APAudioEngineBuffered == -1 && !OUTLINED_FUNCTION_4_3())
      {
LABEL_27:
        *(v3 + 212) = 1;
        goto LABEL_28;
      }

      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_26_1();
      OUTLINED_FUNCTION_2_1();
    }

    else
    {
      if (gLogCategory_APAudioEngineBuffered > 50)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_10_4();
      if (v5)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }
      }

      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_26_1();
    }

    LogPrintF();
    goto LABEL_27;
  }

  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
  {
    if (!*v1)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

LABEL_28:
  if (*v1)
  {
    CFRelease(*v1);
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  free(v1);
}

uint64_t bufferedAudioEngine_getMagicCookieIDForMagicCookieData(CFDataRef theData)
{
  if (qword_27D0088B8 != -1)
  {
    dispatch_once(&qword_27D0088B8, &__block_literal_global_314);
    if (theData)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!theData)
  {
    return 0;
  }

LABEL_3:
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);

  return SipHash();
}

void bufferedAudioEngine_setAllCryptorsForHose()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = v1;
  v4 = v0;
  if (v0)
  {
    CFDictionaryApplyFunction(*(DerivedStorage + 1216), bufferedAudioEngine_setCryptorForHoseCallback, &v3);
  }
}

void bufferedAudioEngine_setAllMagicCookiesForHose()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = v1;
  v4 = v0;
  if (v0)
  {
    if (*(DerivedStorage + 576))
    {
      CFDictionaryApplyFunction(*(DerivedStorage + 1056), bufferedAudioEngine_setMagicCookieForHoseCallback, &v3);
    }
  }
}

_BYTE *bufferedAudioEngine_wakeUpHosesAndAudioTimer(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v3 = result;
    result = bufferedAudioEngine_wakeUpHoses();
    if (v3[528] && !v3[544])
    {
      OUTLINED_FUNCTION_9_5();
      kdebug_trace();
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_1_26();
        OUTLINED_FUNCTION_6();
      }

      result = APSPriorityDispatchSourceResume();
      v3[544] = 1;
    }

    else if (gLogCategory_APAudioEngineBuffered <= 40)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        return OUTLINED_FUNCTION_6();
      }
    }
  }

  return result;
}

void bufferedAudioEngine_setCryptorForHoseCallback()
{
  OUTLINED_FUNCTION_142();
  if (!v1 || !*(v2 + 8))
  {
    return;
  }

  OUTLINED_FUNCTION_69();
  if (v5 ^ v6 | v4 && (v3 != -1 || OUTLINED_FUNCTION_4()))
  {
    if (v0)
    {
      CMBaseObjectGetDerivedStorage();
    }

    bufferedAudioEngine_getCryptorIDForCryptor(v1);
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
    if (!v0)
    {
      goto LABEL_9;
    }
  }

  else if (!v0)
  {
    goto LABEL_9;
  }

  CFRetain(v0);
LABEL_9:
  bufferedAudioEngine_getCryptorIDForCryptor(v1);
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      if (*(v8 + 72))
      {
        v9 = OUTLINED_FUNCTION_87();
        if (!v10(v9))
        {
          return;
        }
      }

      else
      {
        v11 = OUTLINED_FUNCTION_87();
        bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandler(v11, v12, -12782, v0);
      }
    }
  }

  OUTLINED_FUNCTION_46();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_8_8();
    if (!v4 || _LogCategory_Initialize())
    {
      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_136();
      LogPrintF();
    }
  }
}

void bufferedAudioEngine_setMagicCookieForHoseCallback()
{
  OUTLINED_FUNCTION_142();
  if (!v1 || !*(v2 + 8))
  {
    return;
  }

  OUTLINED_FUNCTION_69();
  if (v5 ^ v6 | v4 && (v3 != -1 || OUTLINED_FUNCTION_4()))
  {
    if (v0)
    {
      CMBaseObjectGetDerivedStorage();
    }

    bufferedAudioEngine_getMagicCookieIDForMagicCookieData(v1);
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
    if (!v0)
    {
      goto LABEL_9;
    }
  }

  else if (!v0)
  {
    goto LABEL_9;
  }

  CFRetain(v0);
LABEL_9:
  bufferedAudioEngine_getMagicCookieIDForMagicCookieData(v1);
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      if (*(v8 + 80))
      {
        OUTLINED_FUNCTION_43_0();
        v9 = OUTLINED_FUNCTION_87();
        if (!v10(v9))
        {
          return;
        }
      }

      else
      {
        v11 = OUTLINED_FUNCTION_87();
        bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandler(v11, v12, -12782, v0);
      }
    }
  }

  OUTLINED_FUNCTION_46();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_8_8();
    if (!v4 || _LogCategory_Initialize())
    {
      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_136();
      LogPrintF();
    }
  }
}

void bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (!*CMBaseObjectGetDerivedStorage())
  {
    if (OUTLINED_FUNCTION_112())
    {
      if (*(v1 + 24))
      {
        if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_26_1();
LABEL_15:
          OUTLINED_FUNCTION_2_1();
LABEL_19:
          LogPrintF();
        }
      }

      else if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_26_1();
        goto LABEL_19;
      }
    }

    else if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_4_16();
      goto LABEL_15;
    }
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  v2 = *(v1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  free(v1);
}

uint64_t bufferedAudioEngine_initProtocolDriverIfNecessary(uint64_t a1, const void *a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v14 = 0;
  CMBaseObjectGetDerivedStorage();
  if (FigCFDictionaryGetValue())
  {
    v9 = 0;
    goto LABEL_24;
  }

  if (CFEqual(a2, *MEMORY[0x277CEA028]))
  {
    v7 = APSAudioProtocolDriverSenderAPATCreate();
    if (v7)
    {
      v9 = v7;
      goto LABEL_23;
    }

    v8 = APSSetFBOPropertyInt64();
    if (v8)
    {
      v9 = v8;
LABEL_23:
      APSLogErrorAt();
LABEL_24:
      v11 = 0;
      if (!a3)
      {
        return v9;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x277CEA030]))
  {
    v10 = APSAudioProtocolDriverSenderLocalCreate();
    if (v10)
    {
      v9 = v10;
      goto LABEL_23;
    }

LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  v11 = 0;
LABEL_9:
  value = 0;
  LOWORD(v14) = APMessageRingBufferedGetFirstValidReadIndex(*(DerivedStorage + 616), 0);
  CFDictionaryAddValue(*(DerivedStorage + 496), a2, &value);
  v9 = 0;
  if (a3)
  {
LABEL_10:
    *a3 = v11;
  }

  return v9;
}

double bufferedAudioEngine_markSessionStartedForRTC()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1280))
  {
    v2 = (DerivedStorage + 1288);
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v4, HostTimeClock);
    result = *&v4.value;
    *v2 = v4;
  }

  return result;
}

void bufferedAudioEngine_sendSessionFailureEvent(uint64_t a1, const void *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 1280))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v4 = Mutable;
      if (a2)
      {
        CFDictionarySetValue(Mutable, @"pointOfFailure", a2);
      }

      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt64();
      CFDictionarySetValue(v4, @"sessionType", @"AudioBuffered");
      APSRTCReportingAgentSendEvent();

      CFRelease(v4);
    }
  }
}

uint64_t bufferedAudioEngine_updateMaxAudioBurstIfNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 1008);
  if (result)
  {
    APSAudioFormatDescriptionGetSampleRate();
    APSAudioFormatDescriptionGetFramesPerPacket();
    result = FigGetCFPreferenceNumberWithDefault();
    if (*(DerivedStorage + 24) != result)
    {
      *(DerivedStorage + 24) = result;
      if (gLogCategory_APAudioEngineBuffered <= 50)
      {
        if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(), result))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          APSAudioFormatDescriptionGetSampleRate();
          APSAudioFormatDescriptionGetFramesPerPacket();
          OUTLINED_FUNCTION_2_0();
          return LogPrintF();
        }
      }
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_updateNextTranscodeBurstTimeAndUnRest()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = (DerivedStorage + 1116);
  CMTimeMake(&rhs, *(DerivedStorage + 156), 1000);
  v5 = *v0;
  CMTimeAdd(&v7, &v5, &rhs);
  *v3 = v7;
  bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(v1, 0);
  OUTLINED_FUNCTION_9_5();
  return kdebug_trace();
}

void __bufferedAudioEngine_soundCheckChanged_block_invoke()
{
  OUTLINED_FUNCTION_139();
  v22 = v0;
  v23 = v1;
  v3 = v2;
  bufferedAudioEngine_readSoundCheck(*(v2 + 32));
  v4 = *(v3 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  if (*(DerivedStorage + 576))
  {
    v6 = *(DerivedStorage + 640);
    if (v6)
    {
      v7 = *MEMORY[0x277CC18E0];
      do
      {
        v8 = v6[2];
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9)
        {
          v9(v8, v7, 0, cf);
        }

        v10 = cf[0];
        if (!*(v6 + 32) && cf[0])
        {
          OUTLINED_FUNCTION_29_0();
          if (v13 ^ v14 | v12 && (v11 != -1 || OUTLINED_FUNCTION_4()))
          {
            if (v4)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_26_1();
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          v15 = v6[2];
          v16 = gSoundCheckEnabled;
          APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
          v17 = OUTLINED_FUNCTION_111();
          if (v17)
          {
            v18 = *(v17 + 16);
            if (v18)
            {
              v19 = *(v18 + 88);
              if (v19)
              {
                v19(v15, v16);
              }
            }
          }

          v10 = cf[0];
        }

        if (v10)
        {
          CFRelease(v10);
          cf[0] = 0;
        }

        v6 = *v6;
      }

      while (v6);
    }
  }

  v20 = *(v3 + 32);
  if (v20)
  {
    CFRelease(v20);
  }

  OUTLINED_FUNCTION_141();
}

void bufferedAudioEngine_audioTimer()
{
  OUTLINED_FUNCTION_139();
  v264 = v0;
  v265 = v1;
  v3 = v2;
  v263 = *MEMORY[0x277D85DE8];
  TotalByteCount = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v246 = **&MEMORY[0x277CC08F0];
  v245 = v246;
  v261 = *(MEMORY[0x277CC08F0] + 12);
  epoch_high = *(MEMORY[0x277CC08F0] + 20);
  v244 = v246;
  v243 = v246;
  v221 = *&v246.value;
  v242 = v246;
  epoch = v246.epoch;
  HIDWORD(v215) = *(DerivedStorage + 24);
  v5 = mach_absolute_time();
  v6 = MillisecondsToUpTicks();
  v241 = 0;
  memset(&v240, 0, sizeof(v240));
  v7 = *(DerivedStorage + 16);
  time = *(DerivedStorage + 28);
  CMTimeMultiplyByRatio(&v240, &time, v7, 1000);
  v239 = 0;
  v8 = "T";
  if (gLogCategory_APAudioEngineBuffered <= 10)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      if (*&v3 == 0.0)
      {
        v9 = "";
      }

      else
      {
        v9 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      v10 = *(DerivedStorage + 530);
      v11 = *(DerivedStorage + 896);
      if (*(DerivedStorage + 936))
      {
        v12 = "T";
      }

      else
      {
        v12 = "F";
      }

      v13 = *(DerivedStorage + 640);
      if (!*(DerivedStorage + 840))
      {
        v8 = "F";
      }

      bufferedAudioEngine_playbackStateGetCString(*(DerivedStorage + 884));
      OUTLINED_FUNCTION_8();
      v193 = v8;
      v195 = v14;
      v189 = v12;
      v191 = v13;
      v187 = v11;
      v183 = v9;
      v185 = v10;
      v181 = *&v3;
      LogPrintF();
    }
  }

  APSNetworkClockLogCurrentNetworkTime();
  if (*DerivedStorage || !*(DerivedStorage + 544))
  {
    goto LABEL_355;
  }

  v213 = v6;
  v214 = v5;
  v226 = DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v217 = OUTLINED_FUNCTION_56(MEMORY[0x277CC0898]);
  *&v260.value = v217;
  v216 = v15;
  v260.epoch = v15;
  OUTLINED_FUNCTION_121(MEMORY[0x277CEA280]);
  cf.value = 0;
  v249 = 0;
  v248 = 0;
  if (!*v16)
  {
    v17 = v16;
    CMClockGetTime(&time, *(v16 + 480));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v260, HostTimeClock);
    v19 = *(v17 + 328);
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v20)
    {
      v20(v19, &v259);
    }

    v21 = (v17 + 1560);
    OUTLINED_FUNCTION_24_2();
    *&v257.value = *(v17 + 1560);
    v22 = OUTLINED_FUNCTION_109(*(v17 + 1576));
    v23 = (v17 + 1584);
    if (v22)
    {
      *v23 = v217;
      *(v17 + 1600) = v216;
      memset(&v258, 0, sizeof(v258));
      OUTLINED_FUNCTION_90((v17 + 1608));
      time2.epoch = *(v17 + 1624);
      v25 = OUTLINED_FUNCTION_101();
      CMTimeSubtract(v27, v25, v26);
      CMTimeMake(&v257, 1, 1);
      if (OUTLINED_FUNCTION_96() > 0)
      {
        goto LABEL_71;
      }

      memset(&v257, 0, sizeof(v257));
      lhs = time;
      *&rhs.value = *v21;
      rhs.epoch = *(v17 + 1576);
      CMTimeSubtract(&time2, &lhs, &rhs);
      CMTimeAbsoluteValue(&v257, &time2);
      CMTimeMake(&time2, 2, 1);
      lhs = v257;
      if (CMTimeCompare(&lhs, &time2) < 0)
      {
        goto LABEL_71;
      }

      *&v24 = COERCE_DOUBLE(@"Clock Discontinuity");
    }

    else
    {
      if (*(v17 + 1596))
      {
        memset(&v258, 0, sizeof(v258));
        OUTLINED_FUNCTION_90(v23);
        time2.epoch = *(v29 + 16);
        v30 = OUTLINED_FUNCTION_101();
        CMTimeSubtract(v32, v30, v31);
        CMTimeMake(&v257, 5, 1);
        v28 = OUTLINED_FUNCTION_96() >> 31;
        *&v24 = COERCE_DOUBLE(@"Clock Jammed");
        goto LABEL_27;
      }

      *v23 = *&v260.value;
      *(v17 + 1600) = v260.epoch;
      *&v24 = COERCE_DOUBLE(@"Clock Jammed");
    }

    LOBYTE(v28) = 1;
LABEL_27:
    OUTLINED_FUNCTION_64();
    *&v257.value = *(v17 + 1632);
    if ((OUTLINED_FUNCTION_109(*(v17 + 1648)) & 0x80000000) != 0)
    {
      goto LABEL_71;
    }

    CMTimeMake(&v257, 10, 1);
    OUTLINED_FUNCTION_25_1();
    CMTimeAdd(&v258, &time2, &v257);
    *(v17 + 1632) = v258;
    if (gLogCategory_APAudioEngineBuffered <= 90)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        if (*&v3 == 0.0)
        {
          v33 = "";
        }

        else
        {
          v33 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        v34 = OUTLINED_FUNCTION_110();
        OUTLINED_FUNCTION_24_2();
        Seconds = CMTimeGetSeconds(&v258);
        v207 = *&v259.timescale;
        value = v259.value;
        if ((v259.epoch & 0x100000000) != 0)
        {
          v36 = 70;
        }

        else
        {
          v36 = 84;
        }

        v203 = v36;
        epoch_low = LODWORD(v259.epoch);
        v201 = SLODWORD(v259.epoch) + *&v259.timescale * 5.42101086e-20;
        v197 = *(v17 + 1544);
        v199 = *(v17 + 1536);
        if (*(v17 + 1556))
        {
          v37 = 70;
        }

        else
        {
          v37 = 84;
        }

        v193 = v37;
        v195 = *(v17 + 1552);
        v187 = *&v34;
        v189 = *&Seconds;
        v183 = v33;
        v185 = v24;
        OUTLINED_FUNCTION_8();
        v181 = *&v3;
        v191 = v38;
        LogPrintF();
      }
    }

    v39 = *MEMORY[0x277CBECE8];
    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v41)
    {
      v41(CMBaseObject, *MEMORY[0x277CEA240], v39, &cf);
    }

    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize())))
    {
      if (*&v3 == 0.0)
      {
        v42 = "";
      }

      else
      {
        v42 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      v183 = v42;
      v185 = cf.value;
      v181 = *&v3;
      OUTLINED_FUNCTION_8();
      LogPrintF();
      if (v28)
      {
        goto LABEL_71;
      }
    }

    else if (v28)
    {
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_64();
    *&v257.value = *(v17 + 1656);
    if ((OUTLINED_FUNCTION_109(*(v17 + 1672)) & 0x80000000) != 0)
    {
LABEL_71:
      v44 = 0;
      v49 = 0;
      goto LABEL_72;
    }

    Mutable = CFStringCreateMutable(v39, 0);
    if (!Mutable)
    {
      goto LABEL_76;
    }

    v44 = Mutable;
    v248 = CFStringAppendF();
    if (v248 || (v183 = *(v17 + 530), v185 = v24, v181 = *&v3, (v248 = CFStringAppendF()) != 0) || (OUTLINED_FUNCTION_24_2(), v181 = CMTimeGetSeconds(&v258), v183 = OUTLINED_FUNCTION_110(), (v248 = CFStringAppendF()) != 0) || (OUTLINED_FUNCTION_64(), v45 = CMTimeGetSeconds(&v258), v258 = *(v17 + 1608), v181 = v45, v183 = CMTimeGetSeconds(&v258), (v248 = CFStringAppendF()) != 0) || ((v197 = *(v17 + 1544), v199 = *(v17 + 1536), (*(v17 + 1556) & 1) != 0) ? (v46 = 70) : (v46 = 84), (v193 = v46, v195 = *(v17 + 1552), v187 = *&v259.timescale, v189 = v259.value, (v259.epoch & 0x100000000) != 0) ? (v47 = 70) : (v47 = 84), (v183 = v47, v185 = LODWORD(v259.epoch), v181 = SLODWORD(v259.epoch) + *&v259.timescale * 5.42101086e-20, v191 = *(v17 + 1552) + *(v17 + 1544) * 5.42101086e-20, (v248 = CFStringAppendF()) != 0) || (v181 = *&cf.value, (v248 = CFStringAppendF()) != 0) || (v248 = CFStringAppendF()) != 0))
    {
LABEL_70:
      APSLogErrorAt();
      v49 = 0;
    }

    else
    {
      v48 = (v17 + 640);
      while (1)
      {
        v48 = *v48;
        if (!v48)
        {
          break;
        }

        v181 = v48[33];
        v183 = *(v48 + 2);
        v248 = CFStringAppendF();
        if (v248)
        {
          goto LABEL_70;
        }
      }

      v181 = *&v24;
      v49 = CFStringCreateF();
      if (!v248)
      {
        if (!*(v17 + 592))
        {
          goto LABEL_147;
        }

        v107 = FigEndpointStreamGetCMBaseObject();
        v108 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v108)
        {
          v248 = v108(v107, @"EndpointIDs", v39, &v249);
          if (!v248)
          {
LABEL_147:
            if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
            {
              if (*&v3 == 0.0)
              {
                v106 = "";
              }

              else
              {
                v106 = (CMBaseObjectGetDerivedStorage() + 392);
              }

              v183 = v106;
              v185 = v24;
              v181 = *&v3;
              OUTLINED_FUNCTION_2_0();
              LogPrintF();
            }

            APSTapToRadarInvoke();
            CMTimeMake(&v257, 300, 1);
            OUTLINED_FUNCTION_25_1();
            CMTimeAdd(&v258, &time2, &v257);
            *(v17 + 1656) = v258;
LABEL_72:
            *v21 = *&time.value;
            *(v17 + 1576) = time.epoch;
            *(v17 + 1608) = v260;
            *(v17 + 1536) = v259;
            if (!v44)
            {
              goto LABEL_74;
            }

            goto LABEL_73;
          }
        }

        else
        {
          v248 = -12782;
        }
      }

      APSLogErrorAt();
    }

LABEL_73:
    CFRelease(v44);
LABEL_74:
    if (v49)
    {
      CFRelease(v49);
    }
  }

LABEL_76:
  if (cf.value)
  {
    CFRelease(cf.value);
  }

  v50 = v226;
  if (v249)
  {
    CFRelease(v249);
  }

  bufferedAudioEngine_updatePrerollingState(v3);
  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&TotalByteCount, &time);
  v261 = *&time.flags;
  v222 = time.value;
  timescale = time.timescale;
  epoch_high = HIDWORD(time.epoch);
  if (TotalByteCount)
  {
    goto LABEL_376;
  }

  v224 = v3;
  if (*(v226 + 884) != 8)
  {
    goto LABEL_106;
  }

  v51 = CMBaseObjectGetDerivedStorage();
  LOWORD(rhs.value) = 0;
  *&v260.value = v217;
  v260.epoch = v216;
  *&v259.value = v217;
  v259.epoch = v216;
  *&v258.value = v217;
  v258.epoch = v216;
  LODWORD(lhs.value) = 0;
  if (bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_onceToken != -1)
  {
    dispatch_once(&bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_onceToken, &__block_literal_global_463);
  }

  if (!*v51)
  {
    if (APSSettingsIsFeatureEnabled())
    {
      v52 = CMTimeMake(&v260, bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_defaultForwardPruningMarginMs, 1000);
      OUTLINED_FUNCTION_16_5(v52, v53, v54, v55, v56, v57, v58, v59, *&v181, v183, v185, v187, v189, *&v191, v193, v195, v197, v199, *&v201, v203, epoch_low, v207, value, v211, v213, v214, v215, v216, v217.n128_i64[0], v217.n128_i64[1], v218, epoch, v221, *(&v221 + 1), v222, timescale);
      OUTLINED_FUNCTION_25_1();
      v60 = OUTLINED_FUNCTION_101();
      CMTimeAdd(v62, v60, v61);
    }

    else
    {
      v63 = CMTimeMake(&v260, 1000, 1000);
      OUTLINED_FUNCTION_16_5(v63, v64, v65, v66, v67, v68, v69, v70, *&v181, v183, v185, v187, v189, *&v191, v193, v195, v197, v199, *&v201, v203, epoch_low, v207, value, v211, v213, v214, v215, v216, v217.n128_i64[0], v217.n128_i64[1], v218, epoch, v221, *(&v221 + 1), v222, timescale);
      OUTLINED_FUNCTION_25_1();
      v71 = OUTLINED_FUNCTION_101();
      CMTimeSubtract(v73, v71, v72);
      OUTLINED_FUNCTION_122();
      *&time2.value = v221;
      time2.epoch = epoch;
      v74 = OUTLINED_FUNCTION_101();
      if (CMTimeCompare(v74, v75) <= 0)
      {
        v173 = APSLogErrorAt();
        if (gLogCategory_APAudioEngineBuffered <= 90)
        {
          if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), v173 = _LogCategory_Initialize(), v173))
          {
            if (*&v3 != 0.0)
            {
              v173 = CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_16_5(v173, v174, v175, v176, v177, v178, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v213, v214, v215, v216, v217.n128_i64[0], v217.n128_i64[1], v219, epoch, v221, *(&v221 + 1), v222, timescale);
            CMTimeGetSeconds(&v257);
            v257 = v260;
            CMTimeGetSeconds(&v257);
            OUTLINED_FUNCTION_8();
            LogPrintF();
          }
        }

        v172 = -15481;
        goto LABEL_375;
      }
    }

    OUTLINED_FUNCTION_122();
    v77 = APMessageRingBufferedPruneMessagesUntilTimestamp(v76, &v257, &rhs);
    if (!v77)
    {
      APMessageRingBufferedGetMessageAtIndex();
      if (*(v51 + 496))
      {
        time.value = MEMORY[0x277D85DD0];
        *&time.timescale = 0x40000000;
        time.epoch = __bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_block_invoke_2;
        v251 = &__block_descriptor_tmp_471;
        v252 = rhs.value;
        CFDictionaryApplyBlock();
      }

      else
      {
        for (i = *(v51 + 640); i; i = *i)
        {
          if (((*(i + 17) - LOWORD(rhs.value)) & 0x8000) != 0)
          {
            if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
            {
              if (*&v3 != 0.0)
              {
                CMBaseObjectGetDerivedStorage();
              }

              v257.value = v222;
              v257.timescale = timescale;
              *&v257.flags = v261;
              HIDWORD(v257.epoch) = epoch_high;
              CMTimeGetSeconds(&v257);
              v257 = v258;
              CMTimeGetSeconds(&v257);
              OUTLINED_FUNCTION_2_0();
              LogPrintF();
            }

            *(i + 17) = rhs.value;
            if (APSSettingsIsFeatureEnabled())
            {
              *(i + 32) = 256;
            }
          }
        }
      }

      goto LABEL_104;
    }

    v172 = v77;
    APSLogErrorAt();
LABEL_375:
    TotalByteCount = v172;
    goto LABEL_376;
  }

LABEL_104:
  TotalByteCount = 0;
  v79 = OUTLINED_FUNCTION_123();
  TotalByteCount = bufferedAudioEngine_releaseCryptors(v79, v80);
  if (TotalByteCount)
  {
    goto LABEL_376;
  }

  v81 = OUTLINED_FUNCTION_123();
  TotalByteCount = bufferedAudioEngine_releaseMagicCookies(v81, v82);
  v50 = v226;
  if (TotalByteCount)
  {
    goto LABEL_376;
  }

LABEL_106:
  v83 = CMBaseObjectGetDerivedStorage();
  v84 = (v83 + 680);
  time = *(v83 + 680);
  *&v260.value = v221;
  v260.epoch = epoch;
  *&v258.value = v221;
  v258.epoch = epoch;
  *&v257.value = v221;
  v257.epoch = epoch;
  *&time2.value = v221;
  time2.epoch = epoch;
  *&lhs.value = v221;
  lhs.epoch = epoch;
  if (*v83)
  {
    goto LABEL_132;
  }

  v85 = v83;
  v86 = 804;
  if ((*(v83 + 816) & 1) == 0)
  {
    v86 = 780;
  }

  OUTLINED_FUNCTION_121((v83 + v86));
  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v260);
  v87 = *(v85 + 648);
  if (v87 == 1)
  {
    v88 = *(v85 + 640);
    if (v88)
    {
      if (!*(v88 + 32))
      {
        goto LABEL_116;
      }

      CMTimeMake(&time2, 18, 1);
      bufferedAudioEngine_getSentBufferLevelTime(*(v85 + 640), &v257);
    }
  }

  else
  {
    if (!v87)
    {
      CMTimeMake(&time2, 18, 1);
      *&v257.value = v221;
      v257.epoch = epoch;
      goto LABEL_121;
    }

    if (*(v85 + 640))
    {
LABEL_116:
      CMTimeMake(&time2, 125, 1);
      v257 = **&MEMORY[0x277CC08B0];
      for (j = *(v85 + 640); j; j = *j)
      {
        bufferedAudioEngine_getSentBufferLevelTime(*(v85 + 640), &lhs);
        if (!*(j + 32))
        {
          rhs = lhs;
          *&cf.value = *&v257.value;
          if ((OUTLINED_FUNCTION_84(v257.epoch) & 0x80000000) != 0)
          {
            v257 = lhs;
          }
        }
      }
    }
  }

LABEL_121:
  *(v85 + 656) = time2;
  rhs = v257;
  cf = *(v85 + 92);
  CMTimeAdd(&v258, &rhs, &cf);
  v90 = (v85 + 68);
  rhs = v258;
  *&cf.value = *(v85 + 68);
  if ((OUTLINED_FUNCTION_84(*(v85 + 84)) & 0x80000000) == 0)
  {
    rhs = v260;
    *&cf.value = *&v259.value;
    if (OUTLINED_FUNCTION_84(v259.epoch) >= 1)
    {
      v90 = &v258;
    }
  }

  v91 = *&v90->value;
  v84->epoch = v90->epoch;
  *&v84->value = v91;
  rhs = time;
  *&cf.value = *&v90->value;
  if (OUTLINED_FUNCTION_84(v90->epoch))
  {
    if (gLogCategory_APAudioEngineBuffered <= 30)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        if (*&v3 != 0.0)
        {
          CMBaseObjectGetDerivedStorage();
        }

        rhs = *(v85 + 656);
        CMTimeGetSeconds(&rhs);
        rhs = *v84;
        CMTimeGetSeconds(&rhs);
        OUTLINED_FUNCTION_8();
        LogPrintF();
      }
    }
  }

LABEL_132:
  time.value = v222;
  *&time.flags = v261;
  time.timescale = timescale;
  HIDWORD(time.epoch) = epoch_high;
  v260 = *(v50 + 680);
  v92 = OUTLINED_FUNCTION_71();
  CMTimeAdd(v94, v92, v93);
  v245 = *(v50 + 756);
  time.value = v222;
  *&time.flags = v261;
  time.timescale = timescale;
  HIDWORD(time.epoch) = epoch_high;
  v260 = *(v50 + 656);
  v95 = OUTLINED_FUNCTION_71();
  CMTimeAdd(v97, v95, v96);
  v98 = 804;
  if ((*(v50 + 816) & 1) == 0)
  {
    v98 = 780;
  }

  v242 = *(v50 + v98);
  time.value = v222;
  *&time.flags = v261;
  time.timescale = timescale;
  HIDWORD(time.epoch) = epoch_high;
  v260 = v242;
  v99 = OUTLINED_FUNCTION_71();
  v101 = CMTimeCompare(v99, v100);
  TotalByteCount = APMessageRingBufferedGetTotalByteCount(*(v50 + 616), &v239 + 1);
  if (TotalByteCount)
  {
    goto LABEL_376;
  }

  v225 = v101;
  v102 = CMBaseObjectGetDerivedStorage();
  started = bufferedAudioEngine_engineBufferedToStartWaterMark();
  v104 = mach_absolute_time();
  v105 = v104;
  if (!started || *(v102 + 1112) && v104 > *(v102 + 1144) && !bufferedAudioEngine_shouldSkipTranscodeForStartup())
  {
    if (*(v102 + 1112) && gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      if (*&v3 != 0.0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_56((v102 + 756));
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_56((v102 + 1116));
      CMTimeGetSeconds(&time);
      time.value = v222;
      *&time.flags = v261;
      time.timescale = timescale;
      HIDWORD(time.epoch) = epoch_high;
      CMTimeGetSeconds(&time);
      UpTicksPerSecond();
      UpTicksPerSecond();
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    *(v102 + 1152) = v105;
    bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(v3, 0);
    OUTLINED_FUNCTION_9_5();
    kdebug_trace();
  }

  v109 = v101;
  if ((*(v50 + 1268) & 1) != 0 && HIDWORD(v215))
  {
    v110 = 1;
    while (1)
    {
      TotalByteCount = bufferedAudioEngine_prepareOneMessageForSending(v3, 0, 0);
      if (TotalByteCount)
      {
        break;
      }

      if ((*(v50 + 1268) & 1) != 0 && v110++ < HIDWORD(v215))
      {
        continue;
      }

      goto LABEL_170;
    }

LABEL_376:
    APSLogErrorAt();
    goto LABEL_355;
  }

LABEL_170:
  if (*(v50 + 1112) || (OUTLINED_FUNCTION_6_10(), v260 = v243, v112 = OUTLINED_FUNCTION_71(), CMTimeCompare(v112, v113) > 0))
  {
    v227 = 0;
  }

  else
  {
    v114 = 0;
    v227 = 0;
    do
    {
      if (mach_absolute_time() >= v213 + v214)
      {
        break;
      }

      if (v114 >= *(v50 + 24))
      {
        break;
      }

      OUTLINED_FUNCTION_6_10();
      v260 = v244;
      v115 = OUTLINED_FUNCTION_71();
      if ((CMTimeCompare(v115, v116) & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_116();
        v260 = v240;
        v117 = OUTLINED_FUNCTION_71();
        if ((CMTimeCompare(v117, v118) & 0x80000000) == 0 || v109 < 1)
        {
          break;
        }
      }

      if (HIDWORD(v239) >= *(v50 + 704))
      {
        break;
      }

      TotalByteCount = bufferedAudioEngine_prepareOneMessageForSending(v3, 0, &v241);
      if (!v241)
      {
        break;
      }

      OUTLINED_FUNCTION_6_10();
      v260 = v245;
      v119 = OUTLINED_FUNCTION_71();
      CMTimeSubtract(v121, v119, v120);
      TotalByteCount = APMessageRingBufferedGetTotalByteCount(*(v50 + 616), &v239 + 1);
      if (TotalByteCount)
      {
        goto LABEL_376;
      }

      v122 = CMBaseObjectGetDerivedStorage();
      v123 = v3;
      *&time.value = v221;
      time.epoch = epoch;
      LODWORD(v257.value) = 0;
      if (*(v122 + 152) && (v124 = v122, v125 = (v122 + 756), v126 = (v122 + 1116), OUTLINED_FUNCTION_124(), v259 = *v126, CMTimeCompare(&v260, &v259) >= 1) && bufferedAudioEngine_engineBufferedToStartWaterMark())
      {
        v129 = mach_absolute_time();
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v257, &time);
        if (LODWORD(v257.value))
        {
          APSLogErrorAt();
          v3 = v224;
          v109 = v225;
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
          {
            if (v224)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }
        }

        else
        {
          v130 = v129 - *(v124 + 1152);
          if (v130 > MillisecondsToUpTicks())
          {
            v130 = MillisecondsToUpTicks();
          }

          *(v124 + 1144) = v129 - v130 + MillisecondsToUpTicks();
          CMTimeMake(&v259, *(v124 + 156), 1000);
          v258 = *v125;
          CMTimeAdd(&v260, &v258, &v259);
          *v126 = v260;
          if (!*(v124 + 1112) && gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
          {
            if (v224)
            {
              CMBaseObjectGetDerivedStorage();
            }

            UpTicksPerSecond();
            UpTicksPerSecond();
            OUTLINED_FUNCTION_124();
            CMTimeGetSeconds(&v260);
            v260 = *v126;
            CMTimeGetSeconds(&v260);
            v260 = time;
            CMTimeGetSeconds(&v260);
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          v3 = v224;
          v131 = OUTLINED_FUNCTION_123();
          bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(v131, v132);
          OUTLINED_FUNCTION_9_5();
          kdebug_trace();
          v50 = v226;
          v109 = v225;
        }
      }

      else
      {
        v3 = v123;
        if (bufferedAudioEngine_shouldSkipTranscodeForStartup())
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
          {
            if (v123)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          v127 = OUTLINED_FUNCTION_123();
          bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(v127, v128);
        }
      }

      if (*(v50 + 1112))
      {
        v227 = 1;
        break;
      }

      ++v114;
      OUTLINED_FUNCTION_6_10();
      v260 = v243;
      v133 = OUTLINED_FUNCTION_71();
      v227 = 1;
    }

    while (CMTimeCompare(v133, v134) < 1);
  }

  v233 = MEMORY[0x277D85DD0];
  v234 = 0x40000000;
  v235 = __bufferedAudioEngine_audioTimer_block_invoke;
  v236 = &__block_descriptor_tmp_438;
  v237 = v50;
  v238 = v3;
  FigCFDictionaryApplyBlock();
  mach_absolute_time();
  v135 = UpTicksToSeconds() / *(v50 + 116);
  if (*(v50 + 868) != v135)
  {
    *(v50 + 868) = v135;
    bufferedAudioEngine_getSampleRateFromTransportAudioFormat();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      if (*&v3 != 0.0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_76(&v232);
      time = v243;
      OUTLINED_FUNCTION_76(&v231);
      mach_absolute_time();
      time = v244;
      OUTLINED_FUNCTION_76(&v230);
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_76(&v229);
      time = v240;
      OUTLINED_FUNCTION_76(&v228);
      v50 = v226;
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    if (FigCFDictionaryGetValue())
    {
      bufferedAudioEngine_logProtocolDriverBufferFullness();
    }

    bufferedAudioEngine_wakeUpHoses();
    bufferedAudioEngine_logBufferFullness(v3);
  }

  bufferedAudioEngine_updateCriticalBufferingState(v3);
  APMessageRingBufferedGetFirstValidReadIndex(*(v50 + 616), &v239);
  v136 = *(v50 + 640);
  if (v136)
  {
    OUTLINED_FUNCTION_8();
    do
    {
      if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (*&v3 != 0.0)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_102();
        LogPrintF();
      }

      if (*(v136 + 64))
      {
        if (v227)
        {
          *(v136 + 65) = 1;
        }
      }

      else if (!*(v136 + 45) && (v227 || *(v136 + 65)))
      {
        *(v136 + 65) = 0;
        if (!*(v226 + 577))
        {
          v137 = v136[3];
          APSEndpointStreamAudioHoseProtocolGetProtocolID();
          ProtocolVTable = CMBaseObjectGetProtocolVTable();
          if (ProtocolVTable && (v139 = *(ProtocolVTable + 16)) != 0)
          {
            v140 = *(v139 + 40);
            v141 = v140 ? v140(v137) : -12782;
          }

          else
          {
            v141 = -12788;
          }

          TotalByteCount = v141;
          v3 = v224;
          if (gLogCategory_APAudioEngineBuffered <= 20 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (v224)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_102();
            LogPrintF();
          }
        }
      }

      v136 = *v136;
    }

    while (v136);
  }

  v142 = CMBaseObjectGetDerivedStorage();
  v143 = v142;
  *&time.timescale = 0;
  time.value = 0;
  v144 = *(v142 + 880);
  v145 = 240;
  if (*(v142 + 880))
  {
    v145 = 248;
  }

  v146 = *(v142 + v145);
  bufferedAudioEngine_updateHosesPrimed(v3, v146, *(v142 + 880) != 0, &time);
  if (time.flags >= 1 && HIDWORD(time.value) == time.flags)
  {
    bufferedAudioEngine_updateHosesPrimed(v3, v146, 1, &time);
  }

  v148 = v226;
  if (v144)
  {
    goto LABEL_279;
  }

  if (HIDWORD(time.value) + LODWORD(time.value) == time.flags)
  {
    if (gLogCategory_APAudioEngineBuffered > 50 || gLogCategory_APAudioEngineBuffered == -1 && !OUTLINED_FUNCTION_4())
    {
      goto LABEL_278;
    }

    if (*&v3 == 0.0)
    {
      goto LABEL_277;
    }

LABEL_276:
    CMBaseObjectGetDerivedStorage();
LABEL_277:
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
    goto LABEL_278;
  }

  if (100 * LODWORD(time.value) < (*(v143 + 264) * time.flags) || time.timescale + LODWORD(time.value) != time.flags)
  {
    goto LABEL_279;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (*&v3 == 0.0)
    {
      goto LABEL_277;
    }

    goto LABEL_276;
  }

LABEL_278:
  *(v143 + 880) = 1;
LABEL_279:
  if (gLogCategory_APAudioEngineBuffered <= 10)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      if (*&v3 != 0.0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_26_1();
      LogPrintF();
    }
  }

  v149 = CMBaseObjectGetDerivedStorage();
  time.value = 0;
  v150 = mach_absolute_time();
  if (!*(v149 + 880) || (v151 = *(v149 + 640)) == 0)
  {
LABEL_287:
    v152 = 0;
    goto LABEL_288;
  }

  v155 = v150;
  v156 = 0;
  v152 = 0;
  v157 = *MEMORY[0x277CE9F70];
  v158 = &gLogCategory_APAudioEngineBuffered;
  while (1)
  {
    v159 = v151[2];
    v160 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v160 || v160(v159, v157, 0, &time))
    {
      break;
    }

    isHoseInStereoPair = bufferedAudioEngine_isHoseInStereoPair();
    v162 = *(v151 + 37);
    v148 = v226;
    if (isHoseInStereoPair)
    {
      if (!v162)
      {
        goto LABEL_313;
      }

      if (!v156)
      {
        v156 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
        if (!v156)
        {
          APSLogErrorAt();
          goto LABEL_287;
        }
      }

      if (CFDictionaryContainsKey(v156, time.value))
      {
        v164 = CFDictionaryGetValue(v156, time.value);
        if (v164[37] == 1)
        {
          v164[37] = 2;
          v152 = 1;
          *(v149 + 881) = 1;
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
          {
            if (v224)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_18_5();
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }
        }

        if (*(v151 + 37) != 1)
        {
          v148 = v226;
          goto LABEL_313;
        }

        OUTLINED_FUNCTION_94();
        v148 = v226;
        if (gLogCategory_APAudioEngineBuffered > 50 || gLogCategory_APAudioEngineBuffered == -1 && !OUTLINED_FUNCTION_4())
        {
          goto LABEL_313;
        }

        v163 = v158;
        if (v224)
        {
          CMBaseObjectGetDerivedStorage();
        }
      }

      else
      {
        CFDictionaryAddValue(v156, time.value, v151);
        if (*(v151 + 37) != 1)
        {
          goto LABEL_313;
        }

        if (v155 - v151[10] < *(v149 + 256))
        {
          goto LABEL_313;
        }

        OUTLINED_FUNCTION_94();
        if (gLogCategory_APAudioEngineBuffered > 50 || gLogCategory_APAudioEngineBuffered == -1 && !OUTLINED_FUNCTION_4())
        {
          goto LABEL_313;
        }

        v163 = v158;
        if (v224)
        {
          CMBaseObjectGetDerivedStorage();
        }
      }

      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_18_5();
      v158 = v163;
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
      if (v162 != 1)
      {
        goto LABEL_313;
      }

      OUTLINED_FUNCTION_94();
      if (gLogCategory_APAudioEngineBuffered > 50 || gLogCategory_APAudioEngineBuffered == -1 && !OUTLINED_FUNCTION_4())
      {
        goto LABEL_313;
      }

      if (v224)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_2_0();
    }

    LogPrintF();
LABEL_313:
    if (time.value)
    {
      CFRelease(time.value);
      time.value = 0;
    }

    v151 = *v151;
    if (!v151)
    {
      goto LABEL_344;
    }
  }

  APSLogErrorAt();
  v152 = 0;
  v148 = v226;
LABEL_344:
  if (v156)
  {
    CFRelease(v156);
  }

LABEL_288:
  if (time.value)
  {
    CFRelease(time.value);
  }

  bufferedAudioEngine_startPlaybackIfNecessary(v224, v152);
  bufferedAudioEngine_updatePrerollingState(v224);
  v153 = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v154 = 888;
  if ((*(v153 + 884) - 5) < 3)
  {
    v154 = 896;
  }

  if (!v227 && *(v153 + v154) == 0.0 && *(v148 + 884) != 4)
  {
    if (gLogCategory_APAudioEngineBuffered <= 40)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        if (v224)
        {
          CMBaseObjectGetDerivedStorage();
        }

        bufferedAudioEngine_playbackStateGetCString(*(v148 + 884));
        OUTLINED_FUNCTION_8();
        LogPrintF();
      }
    }

    bufferedAudioEngine_audioTimerPause();
  }

  bufferedAudioEngine_updateDataProcessingTargetQueueInternal(v224);
  v165 = CMBaseObjectGetDerivedStorage();
  *&time.value = v217;
  time.epoch = v216;
  *&v260.value = v217;
  v260.epoch = v216;
  v166 = *(v165 + 640);
  v167 = mach_absolute_time();
  if (UpTicksToMilliseconds() >= 0x64)
  {
    *(v165 + 1528) = v167;
    bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &time);
    for (; v166; v166 = *v166)
    {
      if (*(v166 + 33))
      {
        OUTLINED_FUNCTION_129();
        bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose(v168, v169);
      }

      else
      {
        OUTLINED_FUNCTION_129();
        bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(v170, v171);
      }

      v259 = v260;
      OUTLINED_FUNCTION_24_2();
      v257 = *(v165 + 756);
      APSAudioHoseMetricCollectorUpdateMediaTimeStatsForHose();
    }
  }

LABEL_355:
  OUTLINED_FUNCTION_141();
}

uint64_t bufferedAudioEngine_updatePrerollingState(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = *(result + 884);
  if (v3 == 4)
  {
    if (!*(result + 880))
    {
      return result;
    }

    v4 = 3;
  }

  else
  {
    if (v3 != 3 || *(result + 880))
    {
      return result;
    }

    v4 = 4;
  }

  return bufferedAudioEngine_updatePlaybackState(a1, v4);
}

uint64_t bufferedAudioEngine_prepareOneMessageForSending(const void *a1, int a2, BOOL *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47 = 0;
  if (*DerivedStorage)
  {
    v33 = 0;
    goto LABEL_37;
  }

  v7 = DerivedStorage;
  v8 = *(CMBaseObjectGetDerivedStorage() + 624);
  v9 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  v10 = MEMORY[0x277CC0898];
  if (v8 && CFArrayGetCount(v8))
  {
    v11 = CMBaseObjectGetDerivedStorage();
    v53 = *v10;
    v52 = v53;
    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    if (!*(v11 + 616))
    {
      APSLogErrorAt();
      v33 = APSSignalErrorAt();
      if (!v33)
      {
LABEL_29:
        v34 = 1;
        goto LABEL_79;
      }

      goto LABEL_36;
    }

    v12 = v11;
    v13 = CMBaseObjectGetDerivedStorage();
    v14 = *(v13 + 624);
    if (v14 && CFArrayGetCount(v14) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v13 + 624), 0);
      v16 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      DataLength = CMBlockBufferGetDataLength(v16);
    }

    else
    {
      DataLength = 0;
    }

    NextFreeBacking = APMessageRingBufferedGetNextFreeBacking(*(v12 + 616), DataLength);
    if (NextFreeBacking)
    {
      v22 = NextFreeBacking;
      v23 = CMBaseObjectGetDerivedStorage();
      v24 = *(v23 + 624);
      if (v24 && CFArrayGetCount(v24) > 0)
      {
        v46 = a3;
        v25 = CFArrayGetValueAtIndex(*(v23 + 624), 0);
        v26 = CFArrayGetValueAtIndex(v25, 0);
        v27 = CFArrayGetValueAtIndex(v25, 1);
        v28 = CFArrayGetValueAtIndex(v25, 2);
        v29 = CFRetain(v26);
        CMTimeMakeFromDictionary(&v53, v27);
        CMTimeMakeFromDictionary(&v52, v28);
        CFArrayRemoveValueAtIndex(*(v23 + 624), 0);
        DataPointer = CMBlockBufferGetDataPointer(v22, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
        if (DataPointer)
        {
          v33 = DataPointer;
          APSLogErrorAt();
        }

        else
        {
          v31 = lengthAtOffsetOut;
          if (v31 >= CMBlockBufferGetDataLength(v29))
          {
            v32 = CMBlockBufferCopyDataBytes(v29, 0, DataLength, dataPointerOut);
            a3 = v46;
            v9 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
            if (v32)
            {
              v33 = v32;
            }

            else
            {
              rhs = v53;
              lhs = v52;
              v33 = bufferedAudioEngine_enqueueMessageForSending(a1, v22, &rhs, &lhs);
              if (!v33)
              {
                goto LABEL_26;
              }
            }

            APSLogErrorAt();
LABEL_26:
            if (v29)
            {
              CFRelease(v29);
            }

            if (!v33)
            {
              goto LABEL_29;
            }

            goto LABEL_36;
          }

          APSLogErrorAt();
          v33 = APSSignalErrorAt();
        }

        a3 = v46;
        v9 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        goto LABEL_26;
      }

      APSLogErrorAt();
      APSLogErrorAt();
    }

    v33 = 4294895201;
LABEL_36:
    APSLogErrorAt();
LABEL_37:
    v34 = 0;
    goto LABEL_89;
  }

  if (!APMessageRingBufferedIsFull(*(v7 + 77)))
  {
    v18 = CMBaseObjectGetDerivedStorage();
    if (!*(v18 + 616))
    {
      APSLogErrorAt();
      v33 = APSSignalErrorAt();
      if (v33)
      {
        goto LABEL_36;
      }

LABEL_70:
      v34 = v47 > 0;
      if (*(v7 + 244))
      {
        if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_105();
        }

        *(v7 + 244) = 0;
      }

      goto LABEL_79;
    }

    v19 = v18;
    if (CMBufferQueueGetBufferCount(*(v18 + 1192)))
    {
      v20 = bufferedAudioEngine_enqueueMessagesFromBufferQueue(a1, 1, &v47);
      if (!v20)
      {
        *(v19 + 1164) = *&v10->value;
        *(v19 + 1180) = v10->epoch;
        goto LABEL_70;
      }

      v33 = v20;
LABEL_120:
      APSLogErrorAt();
      goto LABEL_36;
    }

    LODWORD(dataPointerOut) = 0;
    v35 = CMBaseObjectGetDerivedStorage();
    v53 = **&MEMORY[0x277CC08F0];
    v52 = v53;
    bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&dataPointerOut, &v53);
    if (dataPointerOut)
    {
      APSLogErrorAt();
    }

    else
    {
      bufferedAudioEngine_getStartUpDelay(a1, 0, &rhs);
      lhs = v53;
      CMTimeAdd(&v52, &lhs, &rhs);
      rhs = *(v35 + 756);
      OUTLINED_FUNCTION_54(v35 + 780);
      if (CMTimeCompare(&rhs, &lhs))
      {
        rhs = v52;
        lhs = *(v35 + 756);
        if ((CMTimeCompare(&rhs, &lhs) & 0x80000000) == 0 && (*(v35 + 1176) & 1) == 0)
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_45();
            LogPrintF();
          }

          v38 = bufferedAudioEngine_createAndEnqueueEmptyMessageForSending(a1, 0);
          if (v38)
          {
            v33 = v38;
            goto LABEL_120;
          }

          OUTLINED_FUNCTION_53((v19 + 1164));
          if (!*(v19 + 577))
          {
            v41 = *(v19 + 640);
            if (v41)
            {
              do
              {
                v42 = *(*(v19 + 640) + 24);
                APSEndpointStreamAudioHoseProtocolGetProtocolID();
                ProtocolVTable = CMBaseObjectGetProtocolVTable();
                if (ProtocolVTable && (v44 = *(ProtocolVTable + 16)) != 0)
                {
                  v45 = *(v44 + 40);
                  if (v45)
                  {
                    v33 = v45(v42);
                  }

                  else
                  {
                    v33 = 4294954514;
                  }
                }

                else
                {
                  v33 = 4294954508;
                }

                if (gLogCategory_APAudioEngineBuffered <= 20 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
                {
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  OUTLINED_FUNCTION_26_1();
                  LogPrintF();
                }

                v41 = *v41;
              }

              while (v41);
LABEL_69:
              ++*(v19 + 988);
              if (v33)
              {
                goto LABEL_36;
              }

              goto LABEL_70;
            }
          }
        }
      }
    }

    v33 = 0;
    goto LABEL_69;
  }

  if (!a2)
  {
    v33 = 4294895201;
    ++*(v7 + 244);
    if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_105();
    }

    goto LABEL_37;
  }

  if (gLogCategory_APAudioEngineBuffered <= 20 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_17_3();
    LogPrintF();
  }

  v36 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_40_0();
    LogPrintF();
  }

  if (CMBufferQueueGetBufferCount(*(v36 + 1192)))
  {
    v37 = bufferedAudioEngine_enqueueMessagesFromBufferQueue(a1, 0, &v47);
    if (v37)
    {
      v33 = v37;
      APSLogErrorAt();
      goto LABEL_36;
    }

    v34 = v47 > 0;
  }

  else
  {
    v34 = 0;
  }

LABEL_79:
  if (v7[992])
  {
    v39 = v9[594];
    if (v39 <= 50 && (v39 != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_45();
      LogPrintF();
    }

    v33 = 0;
    v7[992] = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_89:
  if (a3)
  {
    *a3 = v34;
  }

  return v33;
}

void bufferedAudioEngine_logProtocolDriverBufferFullness()
{
  OUTLINED_FUNCTION_20_2();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v12 = 0;
  v11 = **&MEMORY[0x277CC0898];
  if (!*DerivedStorage)
  {
    CMBaseObject = APSAudioProtocolDriverSenderGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4 && (v5 = *MEMORY[0x277CBECE8], !v4(CMBaseObject, *MEMORY[0x277CEA010], *MEMORY[0x277CBECE8], &v13)) && (v6 = APSAudioProtocolDriverSenderGetCMBaseObject(), (v7 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v7(v6, *MEMORY[0x277CEA008], v5, &v12) && (v8 = *(CMBaseObjectGetVTable() + 16)) != 0 && (v9 = *(v8 + 112)) != 0 && !v9(v1, &v11))
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
      {
        if (v0)
        {
          CMBaseObjectGetDerivedStorage();
        }

        FigCFNumberGetUInt32();
        FigCFNumberGetUInt64();
        time = v11;
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }
    }

    else
    {
      APSLogErrorAt();
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t bufferedAudioEngine_logBufferFullness(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (*result)
  {
    return result;
  }

  v3 = result;
  result = APMessageRingBufferedGetUsedCount(*(result + 616));
  if (!*(v3 + 56))
  {
    if (!result)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (result)
  {
LABEL_4:
    result = APMessageRingBufferedGetTotalByteCount(*(v3 + 616), &v9);
  }

LABEL_5:
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_104();
      bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(v4, v5);
      lhs = *(v3 + 756);
      CMTimeSubtract(&time, &lhs, &rhs);
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_2_0();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_isSpeakerPlayingBySelf()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = APSIsAPMSpeaker();
  if (result)
  {
    return *(DerivedStorage + 648) == 1 && *(*(DerivedStorage + 640) + 32) != 0;
  }

  return result;
}

uint64_t bufferedAudioEngine_encodeExtensionAPAP(uint64_t (*a1)(uint64_t, CFTypeRef, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = 0;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v89 = 0;
  blockBufferOut = 0;
  v87 = 0;
  cf = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  if (!a3)
  {
    goto LABEL_59;
  }

  v11 = MEMORY[0x277CBECE8];
  if (*(a3 + 16))
  {
    BigUIntWithUInt64 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (BigUIntWithUInt64)
    {
      v71 = BigUIntWithUInt64;
      goto LABEL_128;
    }

    v13 = a1(1, v95, a2);
    if (v13)
    {
      v71 = v13;
      goto LABEL_128;
    }
  }

  if (*a3)
  {
    v14 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v14)
    {
      v71 = v14;
      goto LABEL_128;
    }

    v15 = a1(2, v94, a2);
    if (v15)
    {
      v71 = v15;
      goto LABEL_128;
    }
  }

  if (*(a3 + 8))
  {
    v16 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v16)
    {
      v71 = v16;
      goto LABEL_128;
    }

    v17 = a1(20, v93, a2);
    if (v17)
    {
      v71 = v17;
      goto LABEL_128;
    }
  }

  if (*(a3 + 24))
  {
    v18 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v18)
    {
      v71 = v18;
      goto LABEL_128;
    }

    v19 = a1(3, v92, a2);
    if (v19)
    {
      v71 = v19;
      goto LABEL_128;
    }
  }

  if (*(a3 + 32))
  {
    v20 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v20)
    {
      v71 = v20;
      goto LABEL_128;
    }

    v21 = a1(17, v91, a2);
    if (v21)
    {
      v71 = v21;
      goto LABEL_128;
    }
  }

  v22 = *(a3 + 40);
  if (v22)
  {
    Length = CFDataGetLength(v22);
    v24 = CMBlockBufferCreateWithMemoryBlock(*v11, 0, Length, *v11, 0, 0, Length, 1u, &blockBufferOut);
    if (v24)
    {
      v71 = v24;
      goto LABEL_128;
    }

    OUTLINED_FUNCTION_9_5();
    DataPointer = CMBlockBufferGetDataPointer(v25, v26, v27, v28, v29);
    if (DataPointer)
    {
      v71 = DataPointer;
      goto LABEL_128;
    }

    v31 = v96;
    BytePtr = CFDataGetBytePtr(*(a3 + 40));
    memcpy(v31, BytePtr, Length);
    v33 = a1(18, blockBufferOut, a2);
    if (v33)
    {
      v71 = v33;
      goto LABEL_128;
    }
  }

  v34 = MEMORY[0x277CBED00];
  if (*(a3 + 60))
  {
    v75 = bswap64(*(a3 + 48));
    v35 = OUTLINED_FUNCTION_130();
    v42 = OUTLINED_FUNCTION_61(v35, &v75, v36, v37, v38, v39, v40, v41, &v89);
    if (v42)
    {
      v71 = v42;
      goto LABEL_128;
    }

    v43 = a1(4, v89, a2);
    if (v43)
    {
      v71 = v43;
      goto LABEL_128;
    }
  }

  v76 = 0;
  v75 = 0;
  if (*(a3 + 84))
  {
    v75 = bswap64(*(a3 + 72));
    v44 = OUTLINED_FUNCTION_130();
    v51 = OUTLINED_FUNCTION_61(v44, &v75, v45, v46, v47, v48, v49, v50, &cf);
    if (v51)
    {
      v71 = v51;
      goto LABEL_128;
    }

    v52 = a1(5, cf, a2);
    if (v52)
    {
      v71 = v52;
      goto LABEL_128;
    }
  }

  if (*(a3 + 152))
  {
    v73 = bswap64(*(a3 + 140));
    v74 = bswap32(*(a3 + 148));
    v53 = OUTLINED_FUNCTION_61(*v11, &v73, a3, *v34, a5, a6, a7, a8, &v77);
    if (v53)
    {
      v71 = v53;
      goto LABEL_128;
    }

    v54 = a1(13, v77, a2);
    if (v54)
    {
      v71 = v54;
      goto LABEL_128;
    }
  }

  if (*(a3 + 96))
  {
    if (!APSAPAPExtensionConvertLoudnessInfoDictLoudnessParametersToBBuf())
    {
      v55 = a1(11, v87, a2);
      if (v55)
      {
        v71 = v55;
        goto LABEL_128;
      }
    }

    if (!APSAPAPExtensionConvertLoudnessInfoDictSoundCheckInfoToBBuf())
    {
      v56 = a1(7, v85, a2);
      if (v56)
      {
        v71 = v56;
        goto LABEL_128;
      }
    }

    if (!APSAPAPExtensionConvertLoudnessInfoDictMediaKindToBBuf())
    {
      v57 = a1(12, v78, a2);
      if (v57)
      {
        v71 = v57;
        goto LABEL_128;
      }
    }
  }

  if (*(a3 + 104))
  {
    v58 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v58)
    {
      v71 = v58;
      goto LABEL_128;
    }

    v59 = a1(8, v84, a2);
    if (v59)
    {
      v71 = v59;
      goto LABEL_128;
    }
  }

  if (*(a3 + 108))
  {
    v60 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v60)
    {
      v71 = v60;
      goto LABEL_128;
    }

    v61 = a1(14, v83, a2);
    if (v61)
    {
      v71 = v61;
      goto LABEL_128;
    }
  }

  if (*(a3 + 112))
  {
    v62 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v62)
    {
      v71 = v62;
      goto LABEL_128;
    }

    v63 = a1(15, v82, a2);
    if (v63)
    {
      v71 = v63;
      goto LABEL_128;
    }
  }

  if (*(a3 + 116))
  {
    v64 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v64)
    {
      v71 = v64;
      goto LABEL_128;
    }

    v65 = a1(16, v81, a2);
    if (v65)
    {
      v71 = v65;
      goto LABEL_128;
    }
  }

  if (*(a3 + 120))
  {
    v66 = APSCMBlockBufferCreateWithUUID();
    if (v66)
    {
      v71 = v66;
      goto LABEL_128;
    }

    v67 = a1(9, v80, a2);
    if (v67)
    {
      v71 = v67;
      goto LABEL_128;
    }
  }

  if (!*(a3 + 136))
  {
    goto LABEL_55;
  }

  v68 = APSCMBlockBufferCreateBigUIntWithUInt64();
  if (v68)
  {
    v71 = v68;
  }

  else
  {
    v69 = a1(10, v79, a2);
    if (!v69)
    {
LABEL_55:
      if (*(a3 + 168))
      {
        v70 = APSAPAPExtensionConvertSbufTracerDictToBBuf();
        if (v70)
        {
          v71 = v70;
        }

        else
        {
          v71 = a1(19, v86, a2);
          if (!v71)
          {
            goto LABEL_60;
          }
        }

        goto LABEL_128;
      }

LABEL_59:
      v71 = 0;
      goto LABEL_60;
    }

    v71 = v69;
  }

LABEL_128:
  APSLogErrorAt();
LABEL_60:
  if (v95)
  {
    CFRelease(v95);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  return v71;
}

void bufferedAudioEngine_setMagicCookieForAllHoses()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_27();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    if (*(DerivedStorage + 576))
    {
      v3 = (DerivedStorage + 640);
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
        {
          if (v0)
          {
            CMBaseObjectGetDerivedStorage();
          }

          bufferedAudioEngine_getMagicCookieIDForMagicCookieData(v1);
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
          if (v0)
          {
LABEL_9:
            CFRetain(v0);
          }
        }

        else if (v0)
        {
          goto LABEL_9;
        }

        v4 = v3[2];
        MagicCookieIDForMagicCookieData = bufferedAudioEngine_getMagicCookieIDForMagicCookieData(v1);
        APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
        v6 = OUTLINED_FUNCTION_111();
        if (!v6)
        {
          goto LABEL_22;
        }

        v7 = *(v6 + 16);
        if (!v7)
        {
          goto LABEL_22;
        }

        if (!*(v7 + 80))
        {
          bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandler(v4, MagicCookieIDForMagicCookieData, -12782, v0);
LABEL_22:
          if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (v0)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LogPrintF();
          }

          break;
        }

        OUTLINED_FUNCTION_43_0();
        if (v8(v4, MagicCookieIDForMagicCookieData, v1))
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    APSLogErrorAt();
  }

  OUTLINED_FUNCTION_141();
}

void bufferedAudioEngine_recordPreparedAudioDataAndAudioFormatDuration(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = **&MEMORY[0x277CC0898];
  CMSampleBufferGetOutputDuration(&v3, a2);
  APSAudioFormatDescriptionCopyDebugString();
  APSLogErrorAt();
}

uint64_t bufferedAudioEngine_adjustRemoteMediaTimeForDiscontinuity()
{
  OUTLINED_FUNCTION_20_2();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v234 = **&MEMORY[0x277CC0898];
  v233 = v234;
  v231 = *MEMORY[0x277CC08F0];
  v232 = *(MEMORY[0x277CC08F0] + 16);
  v229 = v231;
  v230 = v232;
  v227 = v231;
  v228 = v232;
  CMSampleBufferGetOutputDuration(&v233, v1);
  CMSampleBufferGetOutputPresentationTimeStamp(&v234, v1);
  OUTLINED_FUNCTION_12_7();
  v11 = OUTLINED_FUNCTION_103(v3, v4, v5, v6, v7, v8, v9, v10, v57, v66, v75, v84, v93, v102, v111, v120, v129, v138, v147, v156, v165, v174, v231, *(&v231 + 1), v233.value, *&v233.timescale, v233.epoch, v217, time.value);
  CMTimeAdd(v13, v11, v12);
  OUTLINED_FUNCTION_63();
  v22 = OUTLINED_FUNCTION_103(v14, v15, v16, v17, v18, v19, v20, v21, v58, v67, v76, v85, v94, v103, v112, v121, v130, v139, v148, v157, v166, v175, v183, v191, v183, v191, v232, v218, time.value);
  result = CMTimeCompare(v22, v23);
  if (result >= 1)
  {
    if (*(DerivedStorage + 720))
    {
      OUTLINED_FUNCTION_12_7();
      OUTLINED_FUNCTION_131();
      v33 = OUTLINED_FUNCTION_103(v25, v26, v27, v28, v29, v30, v31, v32, v59, v68, v77, v86, v95, v104, v113, v122, v131, v140, v149, v158, v167, v176, v184, v192, v199, v205, v211, v219, time.value);
      result = CMTimeCompare(v33, v34);
      if (result)
      {
        OUTLINED_FUNCTION_12_7();
        OUTLINED_FUNCTION_131();
        v43 = OUTLINED_FUNCTION_103(v35, v36, v37, v38, v39, v40, v41, v42, v60, v69, v78, v87, v96, v105, v114, v123, v132, v141, v150, v159, v168, v177, v185, v193, v200, v206, v212, v220, time.value);
        v46 = CMTimeSubtract(v45, v43, v44);
        time = *(DerivedStorage + 756);
        v54 = OUTLINED_FUNCTION_103(v46, v47, v48, v49, v50, v51, v52, v53, v61, v70, v79, v88, v97, v106, v115, v124, v133, v142, v151, v160, v169, v178, v186, v194, v229, *(&v229 + 1), v230, v221, time.value);
        result = CMTimeAdd(v56, v54, v55);
        if (gLogCategory_APAudioEngineBuffered <= 50)
        {
          if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(), result))
          {
            if (v0)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_106(*(DerivedStorage + 724), v62, v71, v80, v89, v98, v107, v116, v125, v134, v143, v152, v161, v170, v179, v187, v195, v201, v207, v213, v222, *(DerivedStorage + 708), *(DerivedStorage + 716), time.epoch);
            OUTLINED_FUNCTION_12_7();
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_106(v230, v63, v72, v81, v90, v99, v108, v117, v126, v135, v144, v153, v162, v171, v180, v188, v196, v202, v208, v214, v223, v229, *(&v229 + 1), time.epoch);
            OUTLINED_FUNCTION_106(*(DerivedStorage + 772), v64, v73, v82, v91, v100, v109, v118, v127, v136, v145, v154, v163, v172, v181, v189, v197, v203, v209, v215, v224, *(DerivedStorage + 756), *(DerivedStorage + 764), time.epoch);
            OUTLINED_FUNCTION_106(v228, v65, v74, v83, v92, v101, v110, v119, v128, v137, v146, v155, v164, v173, v182, v190, v198, v204, v210, v216, v225, v227, *(&v227 + 1), time.epoch);
            CMSampleBufferGetPresentationTimeStamp(&time, v1);
            CMTimeGetSeconds(&time);
            CMSampleBufferGetDuration(&time, v1);
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_12_7();
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_63();
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_2_0();
            result = LogPrintF();
          }
        }

        *(DerivedStorage + 756) = v227;
        *(DerivedStorage + 772) = v228;
      }
    }

    *(DerivedStorage + 708) = v231;
    *(DerivedStorage + 724) = v232;
  }

  return result;
}