__CFDictionary *apsession_copyShowInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v1 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  v4 = *MEMORY[0x277CBED28];
  v5 = *MEMORY[0x277CBED10];
  if (*(DerivedStorage + 304))
  {
    v6 = *MEMORY[0x277CBED28];
  }

  else
  {
    v6 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"isConnected", v6);
  if (*(DerivedStorage + 306))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  CFDictionarySetValue(v3, @"isSessionStarted", v7);
  if (*(DerivedStorage + 307))
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  CFDictionarySetValue(v3, @"isCancelled", v8);
  if (*(DerivedStorage + 320))
  {
    CMBaseObject = FigTransportSessionGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10 || v10(CMBaseObject, *MEMORY[0x277CE4FA8], v1, &value))
    {
      apsession_copyShowInfo_cold_1();
    }

    else
    {
      CFDictionarySetValue(v3, @"TransportSessionInfo", value);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  return v3;
}

uint64_t apsession_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 320);
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  FigSimpleMutexUnlock();
  v12 = *(DerivedStorage + 72);
  if (v12 >= 0xB)
  {
    if (v12 == 11)
    {
      v13 = "SPPCPlayback";
    }

    else
    {
      v13 = "?";
    }
  }

  else
  {
    v13 = off_27849BA10[v12];
  }

  v14 = (*(a5 + 16))(a5, a3, "SenderSession:[%{ptr}] (%s) Parent:[%{ptr}]\n", a1, v13, a2);
  if (v14)
  {
    v19 = v14;
    apsession_DumpHierarchy_cold_1();
    goto LABEL_22;
  }

  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v16 = *(ProtocolVTable + 16)) == 0)
  {
    v19 = 4294954508;
LABEL_19:
    v19 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v11, 0, " ", 0, 0, v19, a1);
    goto LABEL_20;
  }

  v17 = *(v16 + 8);
  if (!v17)
  {
    v19 = 4294954514;
    goto LABEL_19;
  }

  v18 = v17(v11, a1, a3 + 1, 0, a5);
  v19 = v18;
  if (v18 == -12782 || v18 == -12788)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v19)
  {
    apsession_DumpHierarchy_cold_2();
  }

LABEL_22:
  if (v11)
  {
    CFRelease(v11);
  }

  return v19;
}

uint64_t apsession_EnsureStarted()
{
  CMBaseObjectGetDerivedStorage();

  return APSDispatchSyncTask();
}

uint64_t apsession_UpdateSession()
{
  CMBaseObjectGetDerivedStorage();

  return APSDispatchSyncTask();
}

uint64_t apsession_CreateTransportStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    apsession_CreateTransportStream_cold_1(&v11);
    return v11;
  }

  apsession_copyTransportSession(a1, &v10);
  v6 = v10;
  if (!v10)
  {
    apsession_CreateTransportStream_cold_2();
    return 4294895467;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    v8 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v8 = v7(v6, a2, a3);
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  CFRelease(v6);
  return v8;
}

uint64_t apsession_PrepareForTeardown(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_PrepareForTeardown_cold_1();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 307) = 1;
  FigSimpleMutexUnlock();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 184), a1, apsession_prepareForTeardownInternal);
  return 0;
}

uint64_t apsession_EnsureStopped()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 307) = 1;
  FigSimpleMutexUnlock();

  return APSDispatchSyncTask();
}

uint64_t apsession_SetEventCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  MEMORY[0x223DB15B0](DerivedStorage + 43);
  DerivedStorage[43] = 0;
  DerivedStorage[44] = a3;
  DerivedStorage[45] = a4;
  DerivedStorage[46] = a5;
  if (a2)
  {
    FigCFWeakReferenceStore();
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t apsession_PerformStage1StartTransaction(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 72) != 5)
  {
    return 0;
  }

  v5 = APSDispatchSyncTask();
  if (v5)
  {
    APSLogErrorAt();
  }

  else
  {
    *a4 = 0;
  }

  return v5;
}

uint64_t apsession_PerformStage2StartTransaction()
{
  if (*(CMBaseObjectGetDerivedStorage() + 72) == 5)
  {
    return APSDispatchSyncTask();
  }

  else
  {
    return 0;
  }
}

uint64_t apsession_ensureConnectedInternal(const void *a1)
{
  v248 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v247 = 0;
  v245 = 0;
  v246 = 0;
  v244 = 0;
  *buffer = 0;
  v241 = 0;
  v243 = 0;
  v242 = 0;
  v237 = 0;
  v238 = 0;
  v239 = 0;
  v3 = 0x280FB0000uLL;
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    apsession_ensureConnectedInternal_cold_1(&v248);
    goto LABEL_645;
  }

  v4 = APSGetFBOPropertyInt64();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 304))
  {
    v5 = *(DerivedStorage + 305);
    FigSimpleMutexUnlock();
    if (v5)
    {
      if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        apsession_ensureConnectedInternal_cold_2();
      }

      goto LABEL_645;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  LODWORD(buf.value) = 0;
  v6 = CMBaseObjectGetDerivedStorage();
  LODWORD(v249) = 0;
  LODWORD(v255[0]) = 0;
  LODWORD(v254) = 0;
  if (apsession_isCancelled())
  {
    APSLogErrorAt();
    v248 = -71832;
    goto LABEL_577;
  }

  APSenderSessionGetPreferredAndEligibleTransportsBasedOnUsage(*(v6 + 72), *(v6 + 56), &v249, &v254, &v247);
  v7 = apsession_determineTransportAvailabilityAndWaitIfNeeded(a1, 8, v254, v255, 0, &buf);
  v8 = v7 == 0;
  if (LODWORD(buf.value))
  {
    apsession_ensureConnectedInternal_cold_3();
LABEL_587:
    v11 = 0;
    v14 = 0;
    goto LABEL_47;
  }

  apsession_determineTransportAvailabilityAndWaitIfNeeded(a1, 1, v254, v255, 0, &buf);
  if (LODWORD(buf.value))
  {
    apsession_ensureConnectedInternal_cold_4();
    goto LABEL_587;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v249 == 4;
  }

  v10 = v9;
  if (apsession_determineTransportAvailabilityAndWaitIfNeeded(a1, 4, v254, v255, v10, &buf))
  {
    if (v7)
    {
      v8 = 0;
      v11 = 8;
    }

    else if (v249 != 4 && (v255[0] & 1) != 0)
    {
      v11 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v11 = 4;
    }
  }

  else
  {
    v11 = 8 * (v7 != 0);
    if (v249 == 4)
    {
      LODWORD(v249) = 2;
    }
  }

  if (LODWORD(buf.value))
  {
    apsession_ensureConnectedInternal_cold_5();
    goto LABEL_587;
  }

  v12 = v249 == 2 && v8;
  v13 = apsession_determineTransportAvailabilityAndWaitIfNeeded(a1, 2, v254, v255, v12, &buf);
  if (!v11 && v13)
  {
    if (v249 != 2 && (v255[0] & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }
  }

  if (LODWORD(buf.value))
  {
    apsession_ensureConnectedInternal_cold_6();
    goto LABEL_587;
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_ensureConnectedInternal_cold_7();
  }

  v14 = v255[0];
LABEL_47:
  v248 = buf.value;
  if (LODWORD(buf.value))
  {
    if (LODWORD(buf.value) != -71832)
    {
      goto LABEL_588;
    }

LABEL_577:
    if (gLogCategory_APSenderSessionAirPlay > 50 || gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_645;
    }

    goto LABEL_575;
  }

  if ((v14 & 0xF) == 0)
  {
    if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apsession_ensureConnectedInternal_cold_57();
    }

    v24 = 0;
    v248 = -6705;
    goto LABEL_646;
  }

  v229 = v14;
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  if (*(DerivedStorage + 72) == 5)
  {
    v15 = LogCategoryCopyOSLogHandle();
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v17))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v17, OS_SIGNPOST_EVENT, 0x2B8D08D4uLL, "AP_SIGNPOST_CAR_INITIALCONNECTION_START", &unk_2222A918B, &buf, 2u);
    }

    if (v16)
    {
      os_release(v16);
    }
  }

  v232 = v4;
  mach_absolute_time();
  v18 = CMBaseObjectGetDerivedStorage();
  if (v11 == 8)
  {
    v19 = 1;
  }

  else
  {
    v19 = v11;
  }

  FigSimpleMutexLock();
  v20 = *(v18 + 304);
  FigSimpleMutexUnlock();
  if (v20)
  {
    v21 = 0;
    v22 = 1;
    v23 = -71832;
    goto LABEL_293;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_ensureConnectedInternal_cold_8();
  }

  v225 = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v250 = 0;
  v249 = 0;
  key = *MEMORY[0x277CE4F50];
  value = *MEMORY[0x277CBED28];
  v223 = *MEMORY[0x277CE4F58];
  v221 = *MEMORY[0x277CE4F80];
  v218 = *MEMORY[0x277CE4F60];
  v217 = *MEMORY[0x277CE4F98];
  v219 = *MEMORY[0x277CE4F88];
  v220 = *MEMORY[0x277CE4F90];
  v213 = *MEMORY[0x277CE4E78];
  v214 = *MEMORY[0x277CE4E70];
  v215 = *MEMORY[0x277CE4EA0];
  v216 = *MEMORY[0x277CE4E80];
  v210 = *MEMORY[0x277CE50C0];
  v211 = *MEMORY[0x277CE50B8];
  v209 = *MEMORY[0x277CE5070];
  v212 = *MEMORY[0x277CBED10];
  v207 = *MEMORY[0x277CE5008];
  v208 = *MEMORY[0x277CE50B0];
  allocator = *MEMORY[0x277CBECE8];
  v23 = -71832;
  v22 = v19;
  while (1)
  {
    FallbackConnectionType = APSenderSessionGetFallbackConnectionType(v22, v229, v21, &v249);
    ++*(v225 + 480);
    v25 = CMBaseObjectGetDerivedStorage();
    if (apsession_isCancelled())
    {
      apsession_ensureConnectedInternal_cold_9();
      v45 = 0;
LABEL_270:
      v52 = 0;
LABEL_271:
      v21 = -71832;
      goto LABEL_225;
    }

    v26 = CMBaseObjectGetDerivedStorage();
    v27 = v26;
    v254 = 0;
    v255[0] = 0;
    if (v22 == 4)
    {
      v28 = (*(v26 + 72) & 0xFFFFFFF7) != 3 && APSGetFBOPropertyInt64() == 0;
      CMBaseObjectGetDerivedStorage();
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      v28 = 0;
    }

    v252 = 0;
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v27 + 56));
    v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v30)
    {
      v253 = -12782;
LABEL_140:
      apsession_ensureConnectedInternal_cold_13();
      v45 = 0;
      Mutable = 0;
      v40 = 0;
      goto LABEL_114;
    }

    v253 = v30(CMBaseObject, @"TransportDevice", allocator, v255);
    if (v253)
    {
      goto LABEL_140;
    }

    APTransportDeviceGetTransportsRequiringBroker();
    if (v22 == 4)
    {
      apsession_supportsLowLatencyNAN();
    }

    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      apsession_ensureConnectedInternal_cold_12();
      v45 = 0;
      v40 = 0;
      v23 = -71832;
      goto LABEL_114;
    }

    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (APSGetAllowPersistentGroupsOnInfra())
    {
      CFDictionarySetValue(Mutable, key, value);
    }

    v23 = -71832;
    if (FallbackConnectionType)
    {
      if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        apsession_ensureConnectedInternal_cold_10();
      }

      CMTimeMake(&buf, 15000, 1000);
      FigCFDictionarySetCMTime();
    }

    if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v32 = *(v27 + 176);
    if (v32)
    {
      CFDictionarySetValue(Mutable, v223, v32);
    }

    if (*(v27 + 72) == 5)
    {
      CFDictionarySetValue(Mutable, v221, value);
    }

    if (!v28)
    {
      v40 = 0;
LABEL_110:
      SharedTransport = APTransportGetSharedTransport();
      v42 = *(v27 + 8);
      v43 = v255[0];
      v44 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v44)
      {
        v45 = 0;
        v253 = -12782;
        goto LABEL_114;
      }

      v253 = v44(SharedTransport, allocator, v42, v43, Mutable, &v254);
      if (!v253)
      {
        v45 = v254;
        v254 = 0;
        goto LABEL_114;
      }

      goto LABEL_274;
    }

    v33 = *(v27 + 120);
    if (v33)
    {
      CFDictionarySetValue(Mutable, v218, v33);
    }

    v34 = *(v27 + 128);
    if (v34)
    {
      CFDictionarySetValue(Mutable, v217, v34);
    }

    v35 = *(v27 + 56);
    v36 = CFGetAllocator(a1);
    v37 = APEndpointDescriptionGetCMBaseObject(v35);
    v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v38)
    {
      v38(v37, @"AirPlaySecurity", v36, &v252);
      v39 = v252;
    }

    else
    {
      v39 = 0;
    }

    CFDictionarySetValue(Mutable, v220, v39);
    v40 = CFStringCreateF();
    if (!v253)
    {
      CFDictionarySetValue(Mutable, v219, v40);
      goto LABEL_110;
    }

    apsession_ensureConnectedInternal_cold_11();
LABEL_274:
    v45 = 0;
LABEL_114:
    if (v252)
    {
      CFRelease(v252);
    }

    if (v40)
    {
      CFRelease(v40);
    }

    if (v255[0])
    {
      CFRelease(v255[0]);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v254)
    {
      CFRelease(v254);
    }

    v21 = v253;
    if (v253)
    {
      goto LABEL_135;
    }

    apsession_recordActivationMessageTiming(a1);
    FigSimpleMutexLock();
    if (*(v25 + 320))
    {
      apsession_invalidateAndClearTransportStreams(a1);
      v46 = FigTransportSessionGetCMBaseObject();
      if (v46)
      {
        v47 = v46;
        v48 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v48)
        {
          v48(v47);
        }
      }
    }

    apsession_setTransportSession(a1, v45);
    FigSimpleMutexUnlock();
    if (apsession_isCancelled())
    {
      APSLogErrorAt();
      goto LABEL_270;
    }

    v49 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v49)
    {
      v21 = -12782;
LABEL_135:
      APSLogErrorAt();
      v52 = 0;
      goto LABEL_225;
    }

    v50 = v49(v45);
    if (v50)
    {
      v21 = v50;
      goto LABEL_135;
    }

    FigSimpleMutexLock();
    v51 = CMBaseObjectGetDerivedStorage();
    buf.value = 0;
    if (*(v51 + 328))
    {
      v21 = 0;
      goto LABEL_204;
    }

    v53 = v51;
    v54 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v54)
    {
      apsession_ensureConnectedInternal_cold_17();
      v61 = 0;
      v21 = -71820;
      goto LABEL_198;
    }

    v55 = APEndpointDescriptionGetCMBaseObject(*(v53 + 56));
    v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    v227 = v22;
    v222 = v54;
    if (v56)
    {
      v56(v55, @"TransportDevice", allocator, &buf);
      v57 = buf.value;
    }

    else
    {
      v57 = 0;
    }

    v58 = 0;
    v59 = *(CMBaseObjectGetDerivedStorage() + 72);
    if (v59 <= 5)
    {
      switch(v59)
      {
        case 1:
          goto LABEL_153;
        case 3:
          v58 = 0;
          goto LABEL_153;
        case 5:
          v58 = 0;
          goto LABEL_153;
      }
    }

    else if ((v59 - 6) < 3)
    {
      goto LABEL_153;
    }

    if ((v227 & 4) != 0)
    {
      v58 = 0;
    }

    else
    {
      if (v57)
      {
        if (v227)
        {
          if ((LOBYTE(v255[0]) = 0, LOBYTE(v254) = 0, APTransportDeviceGetInfraReachability(), apsession_isDirectLinkEligible()) && LOBYTE(v255[0]) || v254)
          {
            v58 = 0;
            v23 = -71832;
            goto LABEL_153;
          }
        }

        APTransportDeviceShouldPerformTrafficRegistration();
      }

      v58 = 1;
    }

LABEL_153:
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v58)
    {
      v60 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v61 = v60;
      if (!v60)
      {
        apsession_ensureConnectedInternal_cold_16();
        v21 = -71820;
        v22 = v227;
        goto LABEL_198;
      }

      CFDictionarySetValue(v60, v216, value);
      v22 = v227;
      if (*(v53 + 104))
      {
        if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CFDictionarySetValue(v61, v214, value);
        CFDictionarySetValue(v61, v213, *(v53 + 104));
      }

      cf = v61;
      CFDictionarySetValue(v54, v215, v61);
    }

    else
    {
      cf = 0;
      v22 = v227;
    }

    CFDictionarySetInt64();
    v62 = *(v53 + 320);
    v63 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v63)
    {
      v64 = v63(v62, 1668575852, v54, v53 + 328);
      if (v64)
      {
        v21 = v64;
      }

      else
      {
        v65 = *(v53 + 328);
        v66 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v66)
        {
          v67 = v66(v65, apsession_controlStreamMessageCallback, 0, a1);
          if (!v67)
          {
            ShortVersionLength = APSVersionUtilsGetShortVersionLength();
            v69 = CFStringCreateWithFormat(allocator, 0, @"AirPlay/%.*s", ShortVersionLength, "920.10.1");
            if (v69)
            {
              v70 = v69;
              v71 = APSGetFBOPropertyInt64();
              v72 = FigTransportStreamGetCMBaseObject();
              v73 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v73)
              {
                v73(v72, v211, v70);
              }

              v205 = v70;
              v74 = FigTransportStreamGetCMBaseObject();
              v75 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v75)
              {
                v75(v74, v210, @"iTunes");
              }

              v76 = *(v53 + 392);
              v77 = FigTransportStreamGetCMBaseObject();
              v78 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v78)
              {
                v78(v77, v209, v76);
              }

              v79 = *(v53 + 328);
              if (v71)
              {
                v80 = value;
              }

              else
              {
                v80 = v212;
              }

              v81 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v81)
              {
                v81(v79, v208, v80);
              }

              APSenderSessionMessageSendTimeout();
              APSSetFBOPropertyInt64();
              v82 = *(v53 + 72);
              if (v82 > 8)
              {
                v54 = v222;
              }

              else
              {
                v54 = v222;
                if (((1 << v82) & 0x1C2) != 0)
                {
                  v83 = *(v53 + 328);
                  v84 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v84)
                  {
                    v84(v83, v207, value);
                  }

                  v82 = *(v53 + 72);
                }
              }

              if ((v82 > 8 || ((1 << v82) & 0x1C2) == 0) && (!*(v53 + 440) || !*(v53 + 448)) && gLogCategory_APSenderSessionAirPlay <= 60 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
              {
                apsession_ensureConnectedInternal_cold_14();
              }

              APSSetFBOPropertyInt64();
              APSSetFBOPropertyInt64();
              v61 = cf;
              if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              CFRelease(v205);
              v21 = 0;
              goto LABEL_198;
            }

            apsession_ensureConnectedInternal_cold_15();
            v21 = -6728;
            goto LABEL_197;
          }

          v21 = v67;
        }

        else
        {
          v21 = -12782;
        }
      }
    }

    else
    {
      v21 = -12782;
    }

    APSLogErrorAt();
LABEL_197:
    v61 = cf;
LABEL_198:
    if (buf.value)
    {
      CFRelease(buf.value);
    }

    if (v54)
    {
      CFRelease(v54);
    }

    if (v61)
    {
      CFRelease(v61);
    }

LABEL_204:
    v85 = *(v25 + 328);
    if (v85)
    {
      v52 = CFRetain(v85);
    }

    else
    {
      v52 = 0;
    }

    FigSimpleMutexUnlock();
    if (!v21)
    {
      if (apsession_isCancelled())
      {
        apsession_ensureConnectedInternal_cold_19();
      }

      else
      {
        if (*(v25 + 64))
        {
          v86 = APSConnectionInterfaceManagerSelectInterface();
          if (v86)
          {
            v21 = v86;
            apsession_ensureConnectedInternal_cold_20();
            goto LABEL_225;
          }
        }

        else if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
        {
          apsession_ensureConnectedInternal_cold_21();
        }

        v87 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v87)
        {
          v21 = -12782;
LABEL_224:
          APSLogErrorAt();
          goto LABEL_225;
        }

        v88 = v87(v52);
        if (v88)
        {
          v21 = v88;
          goto LABEL_224;
        }

        if (apsession_isCancelled())
        {
          apsession_ensureConnectedInternal_cold_22();
        }

        else
        {
          v89 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v89)
          {
            v21 = -12782;
            goto LABEL_224;
          }

          v90 = v89(v52);
          if (v90)
          {
            v21 = v90;
            goto LABEL_224;
          }

          if (!apsession_isCancelled())
          {
            FigSimpleMutexLock();
            *(v25 + 304) = 1;
            FigSimpleMutexUnlock();
            v21 = 0;
            goto LABEL_225;
          }

          apsession_ensureConnectedInternal_cold_23();
        }
      }

      goto LABEL_271;
    }

    apsession_ensureConnectedInternal_cold_18();
LABEL_225:
    FigSimpleMutexLock();
    *(v25 + 311) = 1;
    if (!v21)
    {
      v21 = *(v25 + 312);
    }

    *(v25 + 316) = v21;
    FigSimpleMutexUnlock();
    if (v21)
    {
      buf.value = 0;
      v91 = *(CMBaseObjectGetDerivedStorage() + 56);
      v92 = CFGetAllocator(a1);
      v93 = APEndpointDescriptionGetCMBaseObject(v91);
      v94 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v94)
      {
        v94(v93, @"TransportDevice", v92, &buf);
        if (buf.value)
        {
          if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          APTransportDeviceReconfirm();
          if (buf.value)
          {
            CFRelease(buf.value);
          }
        }
      }

      if (*(v25 + 64) && *(v25 + 240))
      {
        APSConnectionInterfaceManagerReleaseInterfaceSelection();
        *(v25 + 240) = 0;
      }
    }

    if (v52)
    {
      CFRelease(v52);
    }

    if (v45)
    {
      CFRelease(v45);
    }

    if (!v21)
    {
      break;
    }

    v95 = FallbackConnectionType;
    v3 = 0x280FB0000uLL;
    if (gLogCategory_APSenderSessionAirPlay <= 50)
    {
      if (gLogCategory_APSenderSessionAirPlay != -1 || (v96 = _LogCategory_Initialize(), v95 = FallbackConnectionType, v96))
      {
        LogPrintF();
        v95 = FallbackConnectionType;
      }
    }

    if (v95)
    {
      if (v21 != -71832 && v21 != 200453)
      {
        v22 = v95;
        if (v21 != 301031)
        {
          continue;
        }
      }
    }

    APSLogErrorAt();
    APSLogErrorAt();
    v22 = 1;
    goto LABEL_293;
  }

  v3 = 0x280FB0000;
LABEL_293:
  v248 = v21;
  mach_absolute_time();
  FigSimpleMutexLock();
  *(DerivedStorage + 520) = UpTicksToMilliseconds();
  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  if (*(DerivedStorage + 72) == 5)
  {
    v97 = LogCategoryCopyOSLogHandle();
    v98 = v97;
    if (v97)
    {
      v99 = v97;
    }

    else
    {
      v99 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v99))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v99, OS_SIGNPOST_EVENT, 0x2B8D08D8uLL, "AP_SIGNPOST_CAR_INITIALCONNECTION_COMPLETE", &unk_2222A918B, &buf, 2u);
    }

    if (v98)
    {
      os_release(v98);
    }
  }

  if (IsAppleInternalBuild())
  {
    v100 = *(v3 + 3424);
    if (v100 <= 50 && (v100 != -1 || _LogCategory_Initialize()))
    {
      UpTicksToMilliseconds();
      LogPrintF();
    }
  }

  if (v21)
  {
    if (v21 == -71832)
    {
      v189 = *(v3 + 3424);
      if (v189 > 50 || v189 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_645;
      }

LABEL_575:
      apsession_ensureConnectedInternal_cold_56();
      goto LABEL_645;
    }

LABEL_588:
    APSLogErrorAt();
    goto LABEL_645;
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 488) = v22;
  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 72) == 5)
  {
    goto LABEL_324;
  }

  APSEventRecorderRecordEvent();
  mach_absolute_time();
  InitialInfo = apsession_fetchInitialInfo(a1);
  v248 = InitialInfo;
  mach_absolute_time();
  APSEventRecorderRecordEvent();
  if (IsAppleInternalBuild())
  {
    v102 = *(v3 + 3424);
    if (v102 <= 50 && (v102 != -1 || _LogCategory_Initialize()))
    {
      UpTicksToMilliseconds();
      LogPrintF();
    }
  }

  if (InitialInfo == -71831)
  {
    goto LABEL_645;
  }

  if (InitialInfo)
  {
    v103 = *(v3 + 3424);
    if (v103 <= 40 && (v103 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v248 = 0;
  }

LABEL_324:
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  if (*(DerivedStorage + 72) == 5)
  {
    v104 = LogCategoryCopyOSLogHandle();
    v105 = v104;
    if (v104)
    {
      v106 = v104;
    }

    else
    {
      v106 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v106))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v106, OS_SIGNPOST_EVENT, 0x2B8D0814uLL, "AP_SIGNPOST_CAR_PAIRING_START", &unk_2222A918B, &buf, 2u);
    }

    if (v105)
    {
      os_release(v105);
    }
  }

  v107 = CMBaseObjectGetDerivedStorage();
  v108 = APSGetFBOPropertyInt64();
  v109 = CMBaseObjectGetDerivedStorage();
  if (*(v109 + 72) == 10)
  {
    v235 = 0;
  }

  else if (*(v109 + 114))
  {
    v235 = 0;
  }

  else
  {
    v110 = APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() || apsession_getTransportsRequiringBroker() != 0;
    v235 = v110;
  }

  LOBYTE(v252) = 0;
  if (APSGetFBOPropertyInt64() && (IsAppleInternalBuild() || APSSettingsGetInt64()))
  {
    buf.value = 0;
    v111 = APEndpointDescriptionGetCMBaseObject(*(v107 + 56));
    v112 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v112)
    {
      v112(v111, @"SerialNumber", *MEMORY[0x277CBECE8], &buf);
    }

    v113 = *(v3 + 3424);
    if (v113 <= 50 && (v113 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (buf.value)
    {
      CFRelease(buf.value);
    }
  }

  v228 = v22;
  if (v235 && !v108)
  {
    apsession_ensureConnectedInternal_cold_24();
    v23 = -71827;
    goto LABEL_603;
  }

  v114 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() == 2 || *(v114 + 432))
  {
    FigSimpleMutexUnlock();
    goto LABEL_362;
  }

  v188 = *(v114 + 72);
  FigSimpleMutexUnlock();
  if ((v188 - 7) >= 3)
  {
LABEL_525:
    v23 = 0;
    goto LABEL_603;
  }

LABEL_362:
  if (apsession_isCancelled())
  {
    apsession_ensureConnectedInternal_cold_25();
    goto LABEL_603;
  }

  v115 = CMBaseObjectGetDerivedStorage();
  v116 = APSGetFBOPropertyInt64();
  v117 = APSGetFBOPropertyInt64();
  v118 = APSGetFBOPropertyInt64();
  buf.value = 0;
  if (v117 != 2)
  {
    if (v116)
    {
      if (v118 && !*(v115 + 192))
      {
        goto LABEL_370;
      }

      v126 = 0;
      v125 = 0;
      LODWORD(v116) = 0;
      goto LABEL_384;
    }

    goto LABEL_383;
  }

  if (!v116)
  {
    apsession_ensureConnectedInternal_cold_28();
LABEL_594:
    v126 = 0;
    v125 = 0;
    LODWORD(v116) = -71827;
    goto LABEL_384;
  }

  if (!v118)
  {
    apsession_ensureConnectedInternal_cold_27();
    goto LABEL_594;
  }

LABEL_370:
  ++*(v115 + 456);
  v119 = apsession_createPairingClient(a1, 1, 0, 0, v235, 0, 0, &buf);
  if (v119)
  {
    LODWORD(v116) = v119;
    apsession_ensureConnectedInternal_cold_26();
LABEL_383:
    v126 = 0;
    v125 = 0;
LABEL_384:
    v124 = 1;
    goto LABEL_386;
  }

  v116 = buf.value;
  v120 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v120)
  {
    LODWORD(v116) = -12782;
LABEL_381:
    if (v117 == 2)
    {
      LODWORD(v116) = -72279;
      APSLogErrorAt();
    }

    goto LABEL_383;
  }

  v121 = v120(v116, 0);
  LODWORD(v116) = v121;
  if (v121 == -71164 || v121 == -71145)
  {
    APSLogErrorAt();
    v126 = 0;
    v124 = 1;
    v125 = 1;
    goto LABEL_386;
  }

  if (v121)
  {
    goto LABEL_381;
  }

  FigSimpleMutexLock();
  v122 = *(v115 + 416);
  v123 = buf.value;
  *(v115 + 416) = buf.value;
  if (v123)
  {
    CFRetain(v123);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  FigSimpleMutexUnlock();
  v124 = 0;
  v125 = 0;
  LODWORD(v116) = 0;
  v126 = 1;
LABEL_386:
  if (v117 == 2)
  {
    v127 = v126;
  }

  else
  {
    v127 = 1;
  }

  if (v116)
  {
    v127 = 1;
  }

  if (!v127)
  {
    LODWORD(v116) = -71827;
  }

  if (v116)
  {
    v128 = v117 == 2;
  }

  else
  {
    v128 = 0;
  }

  if (v128)
  {
    v129 = 1;
  }

  else
  {
    v129 = v125;
  }

  v130 = buf.value;
  if (v116 || buf.value)
  {
    if (((v116 != 0) & v129) != 0)
    {
      v131 = 90;
    }

    else
    {
      v131 = 50;
    }

    if (v131 >= gLogCategory_APSenderSessionAirPlay)
    {
      if (gLogCategory_APSenderSessionAirPlay != -1 || (v132 = _LogCategory_Initialize(), v130 = buf.value, v132))
      {
        LogPrintF();
        v130 = buf.value;
      }
    }

    LOBYTE(v252) = v126;
    if (v130)
    {
      CFRelease(v130);
    }
  }

  else
  {
    LOBYTE(v252) = v126;
  }

  if (!v124)
  {
    goto LABEL_597;
  }

  if (v116 && v129)
  {
    apsession_ensureConnectedInternal_cold_29();
LABEL_597:
    v23 = v116;
    goto LABEL_603;
  }

  if (apsession_isCancelled())
  {
    apsession_ensureConnectedInternal_cold_30();
    goto LABEL_603;
  }

  v133 = CMBaseObjectGetDerivedStorage();
  v134 = APSGetFBOPropertyInt64();
  v135 = APSGetFBOPropertyInt64();
  buf.value = 0;
  v249 = 0;
  v136 = v134 == 1 || *(v133 + 72) == 3;
  isTransientPairingSupported = apsession_isTransientPairingSupported();
  v138 = *(v133 + 72);
  if (!isTransientPairingSupported)
  {
    v136 |= v138 == 10;
  }

  v139 = 0;
  v140 = 1;
  v141 = 0;
  v142 = 0;
  if (v138 == 7 || v138 == 9)
  {
    goto LABEL_461;
  }

  if (v138 != 8)
  {
LABEL_425:
    if (v138 != 10 && ((v136 & 1) == 0 && *(v133 + 192) || !APSGetFBOPropertyInt64()))
    {
      v139 = 0;
      v141 = 0;
LABEL_452:
      v142 = 0;
      goto LABEL_461;
    }

    ++*(v133 + 456);
    v143 = apsession_createPairingClient(a1, 0, 1, 0, v235, 0, 0, &v249);
    if (v143)
    {
      v142 = v143;
      apsession_ensureConnectedInternal_cold_32();
      goto LABEL_460;
    }

    v144 = v249;
    v145 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v145)
    {
      v142 = v145(v144, &buf);
      if (!v142)
      {
        goto LABEL_445;
      }
    }

    else
    {
      v142 = -12782;
    }

    if (*(v133 + 72) == 8)
    {
      if (buf.value)
      {
        CFRelease(buf.value);
        buf.value = 0;
      }

      if (v249)
      {
        CFRelease(v249);
        v249 = 0;
      }

      ++*(v133 + 456);
      v146 = apsession_createPairingClient(a1, 0, 1, 1, v235, 0, 0, &v249);
      if (v146)
      {
        v142 = v146;
        apsession_ensureConnectedInternal_cold_33();
        goto LABEL_460;
      }

      v147 = v249;
      v148 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v148)
      {
        v142 = -12782;
LABEL_455:
        if (*(v133 + 72) == 8)
        {
          v142 = -17602;
LABEL_457:
          APSLogErrorAt();
          v141 = 0;
          v139 = 1;
          goto LABEL_461;
        }

        if (v136)
        {
          v142 = -17602;
          APSLogErrorAt();
        }

LABEL_460:
        v139 = 0;
        v141 = 0;
        goto LABEL_461;
      }

      v142 = v148(v147, &buf);
    }

    if (v142 == -71164 || v142 == -71145)
    {
      goto LABEL_457;
    }

    if (!v142)
    {
LABEL_445:
      FigSimpleMutexLock();
      v149 = *(v133 + 416);
      v150 = v249;
      *(v133 + 416) = v249;
      if (v150)
      {
        CFRetain(v150);
      }

      if (v149)
      {
        CFRelease(v149);
      }

      FigSimpleMutexUnlock();
      v151 = *(v133 + 72);
      if (v151 > 8 || (v141 = 1, ((1 << v151) & 0x1C2) == 0))
      {
        v139 = 0;
        v186 = buf.value;
        v141 = 1;
        v140 = 0;
        v142 = 0;
        if (!buf.value || !v135)
        {
          goto LABEL_461;
        }

        v187 = *(v133 + 232);
        *(v133 + 232) = buf.value;
        CFRetain(v186);
        if (v187)
        {
          CFRelease(v187);
        }
      }

      v139 = 0;
      v140 = 0;
      goto LABEL_452;
    }

    goto LABEL_455;
  }

  if (APSGetFBOPropertyInt64())
  {
    v138 = *(v133 + 72);
    goto LABEL_425;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_ensureConnectedInternal_cold_31();
  }

  v139 = 0;
  v141 = 0;
  v142 = 0;
LABEL_461:
  if (v141 & 1 | ((v136 & 1) == 0) | (v142 != 0))
  {
    v152 = v142;
  }

  else
  {
    v152 = -71827;
  }

  if ((v136 & (v152 != 0)) != 0)
  {
    v153 = 1;
  }

  else
  {
    v153 = v139;
  }

  if (v152 || v249)
  {
    v154 = ((v152 != 0) & v153) != 0 ? 90 : 50;
    if (v154 >= gLogCategory_APSenderSessionAirPlay && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  LOBYTE(v252) = v141;
  if (buf.value)
  {
    CFRelease(buf.value);
  }

  if (v249)
  {
    CFRelease(v249);
  }

  if (!v140)
  {
    goto LABEL_602;
  }

  if (v152 && v153)
  {
    apsession_ensureConnectedInternal_cold_34();
LABEL_602:
    v23 = v152;
    goto LABEL_603;
  }

  if (apsession_isCancelled())
  {
    apsession_ensureConnectedInternal_cold_35();
    goto LABEL_666;
  }

  v155 = CMBaseObjectGetDerivedStorage();
  v156 = APSGetFBOPropertyInt64();
  v157 = APSGetFBOPropertyInt64();
  v158 = APSGetFBOPropertyInt64();
  v159 = APSGetFBOPropertyInt64();
  v160 = apsession_isTransientPairingSupported();
  v161 = *(v155 + 72);
  v163 = v161 != 9 && v161 != 7;
  v249 = 0;
  v254 = 0;
  v255[0] = 0;
  if (*(v155 + 192))
  {
    v164 = 0;
    v165 = 0;
    LODWORD(v116) = 0;
    v166 = 1;
    v167 = 1;
    goto LABEL_492;
  }

  allocatora = v160;
  v236 = v156;
  buf.value = 0;
  v234 = v159;
  if (apsession_createPairingClient(a1, 0, 0, 0, 0, 0, 0, &buf))
  {
    apsession_ensureConnectedInternal_cold_36();
    v171 = 0;
    v173 = 90;
  }

  else
  {
    v169 = buf.value;
    v170 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v170)
    {
      v171 = v170(v169);
    }

    else
    {
      v171 = 0;
    }

    v173 = 50;
  }

  if (v173 >= gLogCategory_APSenderSessionAirPlay && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (buf.value)
  {
    CFRelease(buf.value);
  }

  v164 = 0;
  if (v157)
  {
    v176 = v158 == 0;
  }

  else
  {
    v176 = 1;
  }

  v177 = v176;
  if (v236)
  {
    v178 = 0;
  }

  else
  {
    v178 = v171 == 0;
  }

  v166 = 1;
  v165 = 0;
  v167 = 1;
  LODWORD(v116) = 0;
  if (!v178 && v177)
  {
    if (allocatora)
    {
      v179 = v234 == 0;
    }

    else
    {
      v179 = 1;
    }

    v180 = !v179;
    if (v180 & v163)
    {
      v164 = 0;
      v165 = 0;
      LODWORD(v116) = 0;
      goto LABEL_492;
    }

    apsession_copyAPPairingGroupInfo();
    ++*(v155 + 456);
    v181 = apsession_createPairingClient(a1, 0, 0, 0, v235, v255[0], v254, &v249);
    if (v181)
    {
      LODWORD(v116) = v181;
      apsession_ensureConnectedInternal_cold_37();
    }

    else
    {
      v116 = v249;
      v182 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v182)
      {
        v164 = 0;
        v165 = 0;
        LODWORD(v116) = -12782;
        goto LABEL_492;
      }

      v183 = v182(v116, 0);
      LODWORD(v116) = v183;
      if (v183 == -71164 || v183 == -71145)
      {
        APSLogErrorAt();
        v164 = 0;
        v167 = 0;
        v165 = 1;
        goto LABEL_492;
      }

      if (!v183)
      {
        FigSimpleMutexLock();
        v184 = *(v155 + 416);
        v185 = v249;
        *(v155 + 416) = v249;
        if (v185)
        {
          CFRetain(v185);
        }

        if (v184)
        {
          CFRelease(v184);
        }

        FigSimpleMutexUnlock();
        v166 = 0;
        v165 = 0;
        LODWORD(v116) = 0;
        v164 = 1;
        goto LABEL_492;
      }
    }

    v164 = 0;
    v165 = 0;
  }

LABEL_492:
  if (v255[0])
  {
    CFRelease(v255[0]);
  }

  if (v254)
  {
    CFRelease(v254);
  }

  if (!v249)
  {
    v168 = 0;
    if (!v116)
    {
      goto LABEL_503;
    }

    goto LABEL_504;
  }

  CFRelease(v249);
  v168 = v249;
  if (v116)
  {
    goto LABEL_504;
  }

LABEL_503:
  if (v168)
  {
LABEL_504:
    if ((v165 & (v116 != 0)) != 0)
    {
      v172 = 90;
    }

    else
    {
      v172 = 50;
    }

    if (v172 >= gLogCategory_APSenderSessionAirPlay && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  LOBYTE(v252) = v164;
  if (!v166)
  {
    v23 = v116;
    goto LABEL_603;
  }

  if (v116)
  {
    v174 = v167;
  }

  else
  {
    v174 = 1;
  }

  if ((v174 & 1) == 0)
  {
    apsession_ensureConnectedInternal_cold_38();
    goto LABEL_597;
  }

  if (apsession_isCancelled())
  {
    apsession_ensureConnectedInternal_cold_39();
    goto LABEL_666;
  }

  v175 = apsession_tryAPPairSetupAndVerify(a1, v228, v235, &v252);
  if (v175)
  {
    v23 = v175;
    apsession_ensureConnectedInternal_cold_40();
  }

  else if (v252)
  {
    if (!apsession_isCancelled())
    {
      goto LABEL_525;
    }

    apsession_ensureConnectedInternal_cold_41();
LABEL_666:
    v23 = -71832;
  }

  else
  {
    apsession_ensureConnectedInternal_cold_42();
    v23 = -71829;
  }

LABEL_603:
  FigSimpleMutexLock();
  CFDictionarySetInt64();
  FigSimpleMutexUnlock();
  v248 = v23;
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  if (*(DerivedStorage + 72) == 5)
  {
    v190 = LogCategoryCopyOSLogHandle();
    v191 = v190;
    if (v190)
    {
      v192 = v190;
    }

    else
    {
      v192 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v192))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v192, OS_SIGNPOST_EVENT, 0x2B8D0818uLL, "AP_SIGNPOST_CAR_PAIRING_COMPLETE", &unk_2222A918B, &buf, 2u);
    }

    if (v191)
    {
      os_release(v191);
    }
  }

  if (v23)
  {
    apsession_ensureConnectedInternal_cold_43();
LABEL_645:
    v24 = 0;
    goto LABEL_646;
  }

  v24 = v246;
  if (!v246)
  {
    apsession_copyTransportControlStream(a1, &v246);
    v24 = v246;
    if (!v246)
    {
      apsession_ensureConnectedInternal_cold_55();
      goto LABEL_648;
    }
  }

  v193 = *(DerivedStorage + 248);
  if (v193)
  {
    CFRelease(v193);
    *(DerivedStorage + 248) = 0;
  }

  v194 = *(DerivedStorage + 256);
  if (v194)
  {
    CFRelease(v194);
    *(DerivedStorage + 256) = 0;
  }

  v195 = *(DerivedStorage + 264);
  if (v195)
  {
    CFRelease(v195);
    *(DerivedStorage + 264) = 0;
  }

  v196 = *MEMORY[0x277CE5090];
  v197 = *MEMORY[0x277CBECE8];
  v198 = FigTransportStreamGetCMBaseObject();
  v248 = CMBaseObjectCopyProperty(v198, v196, v197, &v245);
  if (v248)
  {
    apsession_ensureConnectedInternal_cold_44();
    goto LABEL_645;
  }

  v248 = APSNetworkAddressCopyStringRepresentationWithFlags();
  if (v248)
  {
    apsession_ensureConnectedInternal_cold_45();
    goto LABEL_645;
  }

  v199 = *MEMORY[0x277CE5030];
  v200 = FigTransportStreamGetCMBaseObject();
  v248 = CMBaseObjectCopyProperty(v200, v199, v197, DerivedStorage + 256);
  if (v248)
  {
    apsession_ensureConnectedInternal_cold_46();
    goto LABEL_645;
  }

  v201 = *MEMORY[0x277CE5020];
  v202 = FigTransportStreamGetCMBaseObject();
  v248 = CMBaseObjectCopyProperty(v202, v201, v197, DerivedStorage + 264);
  if (v248)
  {
    apsession_ensureConnectedInternal_cold_47();
    goto LABEL_645;
  }

  if (*(DerivedStorage + 154))
  {
    v248 = apsession_ensureUsableLocalNetworkAddresses();
    if (v248)
    {
      apsession_ensureConnectedInternal_cold_48();
      goto LABEL_645;
    }
  }

  if (!v232)
  {
LABEL_628:
    v24 = 0;
    goto LABEL_629;
  }

  v248 = apsession_ensureKeyHolderSetUp();
  if (v248)
  {
    apsession_ensureConnectedInternal_cold_49();
    goto LABEL_645;
  }

  v248 = FigTransportStreamConfigureEncryption(v24, *(DerivedStorage + 224), @"Ctrl");
  if (!*(DerivedStorage + 384))
  {
    goto LABEL_628;
  }

  APSGetFBOPropertyInt64();
  if (v248)
  {
    apsession_ensureConnectedInternal_cold_50();
    goto LABEL_645;
  }

  v203 = FigTransportStreamGetCMBaseObject();
  v248 = CMBaseObjectCopyProperty(v203, v199, v197, &v244);
  if (v248)
  {
    apsession_ensureConnectedInternal_cold_51();
    goto LABEL_645;
  }

  if (!v244)
  {
    apsession_ensureConnectedInternal_cold_54();
    goto LABEL_645;
  }

  v256.location = 0;
  v256.length = 28;
  CFDataGetBytes(v244, v256, buffer);
  SockAddrGetPort();
  v24 = CFDictionaryCreateMutable(v197, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v24)
  {
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(v24, @"localSendsWithReadKey", *MEMORY[0x277CBED10]);
    v237 = a1;
    v238 = @"Ctrl";
    v239 = v24;
    v248 = apsession_broadcastKeysForDiagnosticsDataInternal(&v237);
    if (v248)
    {
      apsession_ensureConnectedInternal_cold_52();
    }

    else
    {
LABEL_629:
      FigSimpleMutexLock();
      *(DerivedStorage + 305) = 1;
      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }
  }

  else
  {
    apsession_ensureConnectedInternal_cold_53();
  }

LABEL_646:
  if (v246)
  {
    CFRelease(v246);
  }

LABEL_648:
  if (v245)
  {
    CFRelease(v245);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v244)
  {
    CFRelease(v244);
  }

  if (!v248)
  {
    return 0;
  }

  apsession_recordActivationMessageTiming(a1);
  apsession_ensureDisconnected(a1);
  return v248;
}

uint64_t apsession_ensureSenderNetworkClockStarted(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *buffer = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  if (apsession_isCancelled())
  {
    v4 = 0;
    v9 = 4294895464;
    goto LABEL_26;
  }

  if (*(DerivedStorage + 194))
  {
    v4 = 0;
    goto LABEL_17;
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 328);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexUnlock();
  if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_ensureSenderNetworkClockStarted_cold_1();
  }

  v5 = *(DerivedStorage + 80);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v6)
  {
    v9 = 4294954514;
LABEL_25:
    APSLogErrorAt();
LABEL_26:
    if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    apsession_stopSenderNetworkClockIfNeeded(a1);
    if (v4)
    {
      goto LABEL_22;
    }

    return v9;
  }

  v7 = v6(v5, a1);
  if (v7)
  {
    v9 = v7;
    goto LABEL_25;
  }

  *(DerivedStorage + 194) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  *(DerivedStorage + 272) = APSGetFBOPropertyInt64();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 24) == @"PTP")
  {
    v15.location = 0;
    v15.length = 28;
    CFDataGetBytes(*(DerivedStorage + 256), v15, buffer);
    updated = APSNetworkClockDetermineAndSetOrUpdateLocalPeerInfo();
    if (updated)
    {
      v9 = updated;
      apsession_ensureSenderNetworkClockStarted_cold_2();
      goto LABEL_26;
    }
  }

LABEL_17:
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = 0;
  if (v4)
  {
LABEL_22:
    CFRelease(v4);
  }

  return v9;
}

uint64_t apsession_addPeerToNetworkClock()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage[33])
  {
    v3 = 4294895467;
    apsession_addPeerToNetworkClock_cold_4();
    return v3;
  }

  if (DerivedStorage[35])
  {
    updated = APSNetworkClockAddOrUpdatePeerFromSerializablePeerDictionary();
    if (updated)
    {
      v3 = updated;
      apsession_addPeerToNetworkClock_cold_1();
      return v3;
    }

    if (gLogCategory_APSenderSessionAirPlay > 30 || gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }
  }

  else
  {
    if (!DerivedStorage[31])
    {
      v3 = 4294895467;
      apsession_addPeerToNetworkClock_cold_3();
      return v3;
    }

    v2 = APSNetworkClockAddOrUpdatePeerWithAddressAndInterfaceNameStrings();
    if (v2)
    {
      v3 = v2;
      apsession_addPeerToNetworkClock_cold_2();
      return v3;
    }

    if (gLogCategory_APSenderSessionAirPlay > 30 || gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }
  }

  LogPrintF();
  return 0;
}

uint64_t apsession_ensureEventStreamCreated(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = DerivedStorage;
  v6 = APSGetFBOPropertyInt64();
  apsession_copyTransportSession(a1, &v32);
  v7 = v32;
  if (!v32)
  {
    v18 = 4294895475;
    apsession_ensureEventStreamCreated_cold_13();
    return v18;
  }

  if (v6)
  {
    v6 = *(v5 + 224);
  }

  LODWORD(v33[0]) = 0;
  v8 = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v17 = 0;
    v18 = 4294895476;
    goto LABEL_74;
  }

  v10 = Mutable;
  if (*(v8 + 72) == 5)
  {
    v11 = APSGetFBOPropertyInt64();
    if (LODWORD(v33[0]))
    {
      apsession_ensureEventStreamCreated_cold_1();
      goto LABEL_26;
    }

    if (v11 == 2)
    {
      CFDictionarySetValue(v10, *MEMORY[0x277CE4FC0], *MEMORY[0x277CBED28]);
    }
  }

  CFDictionarySetInt64();
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v12)
  {
    LODWORD(v33[0]) = -12782;
    goto LABEL_21;
  }

  LODWORD(v33[0]) = v12(v7, 1702260340, v10, cf);
  if (LODWORD(v33[0]))
  {
LABEL_21:
    apsession_ensureEventStreamCreated_cold_5();
    goto LABEL_26;
  }

  v13 = cf[0];
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v14)
  {
    LODWORD(v33[0]) = -12782;
    goto LABEL_23;
  }

  LODWORD(v33[0]) = v14(v13, apsession_eventStreamMessageCallback, apsession_eventStreamCreateReplyCallback, a1);
  if (LODWORD(v33[0]))
  {
LABEL_23:
    apsession_ensureEventStreamCreated_cold_4();
    goto LABEL_26;
  }

  LODWORD(v33[0]) = APSSetFBOPropertyInt64();
  if (LODWORD(v33[0]))
  {
    apsession_ensureEventStreamCreated_cold_2();
  }

  else
  {
    if (!v6)
    {
LABEL_18:
      v17 = cf[0];
      cf[0] = 0;
      goto LABEL_27;
    }

    v15 = cf[0];
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v16)
    {
      LODWORD(v33[0]) = v16(v15, v6, @"Events");
      if (!LODWORD(v33[0]))
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v33[0]) = -12782;
    }

    apsession_ensureEventStreamCreated_cold_3();
  }

LABEL_26:
  v17 = 0;
LABEL_27:
  CFRelease(v10);
  if (cf[0])
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v20 = CMBaseObject;
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v21)
      {
        v21(v20);
      }
    }

    CFRelease(cf[0]);
  }

  v18 = LODWORD(v33[0]);
  if (!LODWORD(v33[0]))
  {
    FigSimpleMutexLock();
    v22 = *(v5 + 336);
    *(v5 + 336) = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    APSenderSessionMessageSendTimeout();
    APSSetFBOPropertyInt64();
    FigSimpleMutexUnlock();
    memset(cf, 0, sizeof(cf));
    v36 = 0;
    theDict = 0;
    v23 = CMBaseObjectGetDerivedStorage();
    if (!v17)
    {
      apsession_ensureEventStreamCreated_cold_11();
      goto LABEL_62;
    }

    v24 = v23;
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v25)
    {
      v37 = v25(v17);
      if (!v37)
      {
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (v26)
        {
          v37 = v26(v17, &theDict);
          if (!v37)
          {
            v27 = APSGetFBOPropertyInt64();
            if (*(v24 + 384) && v27)
            {
              CFDictionaryGetInt64();
              if (v37 != -6727 && v37)
              {
                if (gLogCategory_APSenderSessionAirPlay <= 60 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }
              }

              else
              {
                v37 = 0;
                Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CE5030]);
                if (Value)
                {
                  v38.location = 0;
                  v38.length = 28;
                  CFDataGetBytes(Value, v38, cf);
                  SockAddrGetPort();
                }

                else if (gLogCategory_APSenderSessionAirPlay <= 60 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
                {
                  apsession_ensureEventStreamCreated_cold_6();
                }

                v29 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v29)
                {
                  v30 = v29;
                  CFDictionarySetInt64();
                  CFDictionarySetInt64();
                  CFDictionarySetValue(v30, @"localSendsWithReadKey", *MEMORY[0x277CBED28]);
                  v33[0] = a1;
                  v33[1] = @"Events";
                  v33[2] = v30;
                  v37 = apsession_broadcastKeysForDiagnosticsDataInternal(v33);
                  if (v37)
                  {
                    apsession_ensureEventStreamCreated_cold_7();
                  }

                  CFRelease(v30);
                }

                else
                {
                  apsession_ensureEventStreamCreated_cold_8();
                }
              }
            }

            goto LABEL_62;
          }
        }

        else
        {
          v37 = -12782;
        }

        apsession_ensureEventStreamCreated_cold_9();
LABEL_62:
        if (theDict)
        {
          CFRelease(theDict);
        }

        v18 = v37;
        if (v37)
        {
          apsession_ensureEventStreamCreated_cold_12();
        }

        goto LABEL_66;
      }
    }

    else
    {
      v37 = -12782;
    }

    apsession_ensureEventStreamCreated_cold_10();
    goto LABEL_62;
  }

LABEL_74:
  APSLogErrorAt();
LABEL_66:
  CFRelease(v7);
  if (v17)
  {
    CFRelease(v17);
  }

  return v18;
}

uint64_t apsession_fetchInitialInfo(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_fetchInitialInfo_cold_1();
  }

  Info = apsession_fetchInfo(a1, 1, 0, 0);
  if (Info)
  {
    apsession_fetchInitialInfo_cold_2();
  }

  return Info;
}

uint64_t FigTransportStreamConfigureEncryption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t apsession_broadcastKeysForDiagnosticsDataInternal(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  Formatted = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  theData = 0;
  propertyList = 0;
  *buffer = 0;
  v26 = 0;
  v28 = 0;
  v27 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = -1;
  v19 = -1;
  v17 = 0;
  v18 = 0;
  cf = 0;
  if (!*(DerivedStorage + 384))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_20();
    goto LABEL_42;
  }

  v3 = DerivedStorage;
  if (!*(DerivedStorage + 224))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_19();
    goto LABEL_42;
  }

  if (!*(DerivedStorage + 248))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_18();
    goto LABEL_42;
  }

  if (!*(DerivedStorage + 256))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_17();
    goto LABEL_42;
  }

  if (!*(DerivedStorage + 264))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_16();
    goto LABEL_42;
  }

  if (!*(a1 + 16))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_15();
    goto LABEL_42;
  }

  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 56));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    Formatted = -12782;
    goto LABEL_35;
  }

  v6 = *MEMORY[0x277CBECE8];
  Formatted = v5(CMBaseObject, @"Name", *MEMORY[0x277CBECE8], &v17);
  if (Formatted)
  {
LABEL_35:
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_14();
LABEL_42:
    Data = 0;
    goto LABEL_43;
  }

  v7 = APEndpointDescriptionGetCMBaseObject(*(v3 + 56));
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    Formatted = -12782;
    goto LABEL_37;
  }

  Formatted = v8(v7, @"DeviceID", v6, &cf);
  if (Formatted)
  {
LABEL_37:
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_13();
    goto LABEL_42;
  }

  v9 = *(v3 + 224);
  v10 = *(a1 + 8);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v11)
  {
    Formatted = -12782;
    goto LABEL_39;
  }

  Formatted = v11(v9, v10, 0, &theData, 0, &v30);
  if (Formatted)
  {
LABEL_39:
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_12();
    goto LABEL_42;
  }

  if (CFDataGetLength(theData) <= 31)
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_11();
    goto LABEL_42;
  }

  if (CFDataGetLength(v30) <= 31)
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_10();
    goto LABEL_42;
  }

  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v34.location = 0;
  v34.length = 28;
  CFDataGetBytes(*(v3 + 256), v34, buffer);
  if (buffer[1] != 2 && buffer[1] != 30)
  {
    APSLogErrorAt();
    Data = 0;
    Formatted = -71821;
    goto LABEL_43;
  }

  Formatted = SockAddrToString();
  if (Formatted)
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_1();
    goto LABEL_42;
  }

  APSGetDeviceID();
  if (Formatted)
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_2();
    goto LABEL_42;
  }

  GestaltGetData();
  if (Formatted)
  {
    LOBYTE(v21) = 0;
  }

  v12 = APEndpointDescriptionGetCMBaseObject(*(v3 + 56));
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    Formatted = -12782;
    goto LABEL_41;
  }

  Formatted = v13(v12, @"MACAddress", v6, &v18);
  if (Formatted)
  {
LABEL_41:
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_9();
    goto LABEL_42;
  }

  CFDataGetBytePtr(theData);
  CFDataGetBytePtr(v30);
  CFDataGetBytePtr(v18);
  Formatted = CFPropertyListCreateFormatted();
  if (Formatted)
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_3();
    goto LABEL_42;
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    Formatted = CFPropertyListAppendFormatted();
    if (Formatted)
    {
      apsession_broadcastKeysForDiagnosticsDataInternal_cold_4();
      goto LABEL_42;
    }
  }

  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_5();
  }

  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    if (CFGetCString())
    {
      Formatted = APTDiagnosticMulticastDataToAllHosts();
      if (Formatted)
      {
        apsession_broadcastKeysForDiagnosticsDataInternal_cold_6();
      }
    }

    else
    {
      apsession_broadcastKeysForDiagnosticsDataInternal_cold_7();
    }
  }

  else
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_8(&Formatted);
  }

LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (propertyList)
  {
    CFRelease(propertyList);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return Formatted;
}

uint64_t apsession_isTransportTypeAvailable(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 56));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5 && !v5(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf))
  {
    if (a2 <= 3)
    {
      if (a2 == 1 || a2 == 2)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (a2 == 4)
    {
      apsession_supportsLowLatencyNAN();
    }

    else if (a2 != 8)
    {
LABEL_9:
      if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_17;
    }

LABEL_14:
    IsReachable = APTransportDeviceIsReachable();
    goto LABEL_18;
  }

  apsession_isTransportTypeAvailable_cold_1();
LABEL_17:
  IsReachable = 0;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return IsReachable;
}

uint64_t apsession_controlStreamMessageCallback(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void apsession_controlStreamMessageCallbackInternal(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 1651470958)
  {
    if (v2 == 1684628836)
    {
      apsession_handleTransportStreamDisconnected(*(a1 + 16));
    }

    else if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  CFRelease(*(a1 + 16));
  v3 = *a1;

  CFRelease(v3);
}

void apsession_handleTransportStreamDisconnected(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 184), a1, apsession_handleDeferredTeardownControlStream);

  apsession_postFailedNotification(a1, 4294950683, @"InProgress");
}

void apsession_handleDeferredTeardownControlStream(const void *a1)
{
  apsession_disconnectControlStream(a1);

  CFRelease(a1);
}

uint64_t apsession_tryAPPairSetupAndVerify(uint64_t a1, int a2, char a3, char *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isTransientPairingSupported = apsession_isTransientPairingSupported();
  v8 = APSGetFBOPropertyInt64();
  v9 = APSGetFBOPropertyInt64();
  v64 = APSGetFBOPropertyInt64();
  v68 = *(DerivedStorage + 72);
  v72 = 0;
  v73 = 0;
  v71 = 0;
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_tryAPPairSetupAndVerify_cold_1();
  }

  v10 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v11 = APSGetFBOPropertyInt64();
  if (APSGetFBOPropertyInt64() || *(v10 + 432))
  {
    v13 = 1;
    goto LABEL_20;
  }

  v66 = a2;
  v12 = *(v10 + 72);
  v13 = 1;
  if (v12 == 7)
  {
LABEL_20:
    v17 = 1;
LABEL_21:
    v70 = v17;
    goto LABEL_22;
  }

  v70 = 1;
  if (v12 != 9)
  {
    if (!APSGetFBOPropertyInt64())
    {
      v14 = APSGetFBOPropertyInt64();
      v13 = 0;
      v17 = v66 == 2 && v11 == 0 || v14 != 0;
      goto LABEL_21;
    }

    v13 = 0;
    goto LABEL_20;
  }

LABEL_22:
  FigSimpleMutexUnlock();
  v18 = 0;
  if (isTransientPairingSupported && (v13 & 1) == 0)
  {
    v18 = ((v8 | v9) != 0) | v70 ^ 1;
  }

  v19 = v18 & 1;
  FigSimpleMutexLock();
  v20 = *(DerivedStorage + 392);
  if (!v20)
  {
    v21 = v9;
    v22 = 0;
LABEL_28:
    v24 = 0;
    goto LABEL_30;
  }

  v21 = v9;
  v22 = CFStringGetLength(v20) != 0;
  v23 = *(DerivedStorage + 392);
  if (!v23)
  {
    goto LABEL_28;
  }

  v24 = CFRetain(v23);
LABEL_30:
  isBrokerAssistedConnection = apsession_isBrokerAssistedConnection();
  v63 = *(DerivedStorage + 464);
  v62 = *(DerivedStorage + 472);
  v26 = *MEMORY[0x277CBED28];
  v27 = *MEMORY[0x277CBED10];
  v67 = v19;
  if (v19)
  {
    v28 = *MEMORY[0x277CBED28];
  }

  else
  {
    v28 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(*(DerivedStorage + 496), @"transientPairing", v28);
  if (v70)
  {
    v29 = v26;
  }

  else
  {
    v29 = v27;
  }

  CFDictionarySetValue(*(DerivedStorage + 496), @"pairingRequiresCode", v29);
  FigSimpleMutexUnlock();
  if (v22)
  {
    v30 = v68;
    if (isBrokerAssistedConnection)
    {
      v31 = 1;
    }

    else
    {
      v31 = v68 == 6;
    }

    v32 = (v21 == 0) & ~v13;
    if (v31)
    {
      v32 = 1;
    }

    v33 = 0x280FB0000;
  }

  else
  {
    v32 = 0;
    v33 = 0x280FB0000uLL;
    v30 = v68;
  }

  if ((v70 ^ 1 | v32))
  {
    goto LABEL_84;
  }

  if (v30 == 6)
  {
    v34 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v35 = *(v34 + 328);
    if (v35)
    {
      v36 = CFRetain(v35);
      FigSimpleMutexUnlock();
      if (v36)
      {
        v37 = *(v33 + 3424);
        if (v37 <= 50 && (v37 != -1 || _LogCategory_Initialize()))
        {
          apsession_tryAPPairSetupAndVerify_cold_2();
        }

        v38 = APTransportStreamSendPlistMessageCreatingPlistReply();
        if (v38)
        {
          v39 = v38;
          v40 = 0;
          goto LABEL_54;
        }

        CFRelease(v36);
        goto LABEL_83;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    apsession_tryAPPairSetupAndVerify_cold_4();
    v36 = 0;
    v40 = 1;
    v39 = 4294895467;
LABEL_54:
    v41 = *(v33 + 3424);
    if (v41 <= 50 && (v41 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if ((v40 & 1) == 0)
    {
      CFRelease(v36);
    }

    goto LABEL_60;
  }

LABEL_83:
  if (*(DerivedStorage + 113))
  {
    apsession_tryAPPairSetupAndVerify_cold_3();
    v42 = 0;
    v39 = 4294949696;
    goto LABEL_62;
  }

LABEL_84:
  apsession_copyAPPairingGroupInfo();
  ++*(DerivedStorage + 456);
  v46 = apsession_createPairingClient(a1, 0, 0, 0, a3, 0, 0, &v73);
  if (v46)
  {
    v39 = v46;
    apsession_tryAPPairSetupAndVerify_cold_5();
    goto LABEL_61;
  }

  APSEventRecorderRecordEvent();
  v47 = v73;
  v48 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v48)
  {
    v39 = v48(v47, v24, v70, v19, v63, v62, &v72, &v71, 0, 0);
  }

  else
  {
    v39 = 4294954514;
  }

  APSEventRecorderRecordEvent();
  *(DerivedStorage + 192) = v39 != 0;
  if (v39)
  {
    apsession_tryAPPairSetupAndVerify_cold_6();
    goto LABEL_61;
  }

  if (!v64 && (v67 & 1) == 0)
  {
    v49 = v71;
    v50 = v72;
    v51 = CMBaseObjectGetDerivedStorage();
    v52 = v51;
    if (v50)
    {
      CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v51 + 56));
      v54 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v54)
      {
        v54(CMBaseObject, @"PairingPeerCUAirPlayIdentifier", v50);
      }
    }

    if (v49)
    {
      v55 = APEndpointDescriptionGetCMBaseObject(*(v52 + 56));
      v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v56)
      {
        v56(v55, @"PairingPeerPublicKey", v49);
      }
    }
  }

  if ((v67 & 1) == 0)
  {
    ++*(DerivedStorage + 456);
  }

  v57 = v73;
  v58 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v58)
  {
    v39 = 4294954514;
LABEL_60:
    APSLogErrorAt();
LABEL_61:
    v42 = 0;
    goto LABEL_62;
  }

  v59 = v58(v57, 0);
  if (v59)
  {
    v39 = v59;
    goto LABEL_60;
  }

  FigSimpleMutexLock();
  v60 = *(DerivedStorage + 416);
  v61 = v73;
  *(DerivedStorage + 416) = v73;
  if (v61)
  {
    CFRetain(v61);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  FigSimpleMutexUnlock();
  v39 = 0;
  v42 = 1;
LABEL_62:
  if (a4)
  {
    *a4 = v42;
  }

  if (v39)
  {
    v43 = 90;
  }

  else
  {
    v43 = 50;
  }

  v44 = *(v33 + 3424);
  if (v43 >= v44 && (v44 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  return v39;
}

uint64_t apsession_createPairingClient(uint64_t a1, char a2, int a3, char a4, char a5, const void *a6, const void *a7, void *a8)
{
  v59 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v48 = 0;
  cf = 0;
  if (!a8)
  {
    apsession_createPairingClient_cold_5();
    goto LABEL_58;
  }

  v16 = DerivedStorage;
  v17 = APSGetFBOPropertyInt64();
  v18 = APSGetFBOPropertyInt64();
  v19 = *(v16 + 72);
  v21 = v19 == 9 || v19 == 7;
  if (a3)
  {
    v22 = v19 == 8;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v43 = v23;
  v44 = v21;
  v52 = 0;
  v25 = v19 != 5 && v18 != 0;
  v47 = v25;
  v51 = 0;
  v50 = 0;
  APSGetDeviceID();
  v45 = a7;
  v46 = a6;
  HardwareAddressToCString();
  v26 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v26)
  {
    v55 = 0;
    v54 = 0;
    v56 = v50;
    v57 = v51;
    UUIDtoCString();
    v27 = CFStringCreateWithCString(0, v53, 0x8000100u);
    if (!v27)
    {
      apsession_createPairingClient_cold_2(&v52, v26);
      v26 = 0;
    }

    *v53 = v52;
    if (!v52)
    {
      v42 = a5;
      v28 = *(v16 + 56);
      v29 = a4;
      v30 = *MEMORY[0x277CBECE8];
      if (v17)
      {
        if (v47)
        {
          CMBaseObject = APEndpointDescriptionGetCMBaseObject(v28);
          v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v32)
          {
            v33 = kAPEndpointDescriptionProperty_PairingPeerCUSystemIdentifier;
LABEL_32:
            v34 = *v33;
            p_cf = &cf;
            goto LABEL_33;
          }
        }

        else
        {
          CMBaseObject = APEndpointDescriptionGetCMBaseObject(v28);
          v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v32)
          {
            v33 = kAPEndpointDescriptionProperty_PairingPeerCUAirPlayIdentifier;
            goto LABEL_32;
          }
        }
      }

      else
      {
        CMBaseObject = APEndpointDescriptionGetCMBaseObject(v28);
        v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v32)
        {
          v34 = @"PairingPeerPublicKey";
          p_cf = &v48;
LABEL_33:
          v32(CMBaseObject, v34, v30, p_cf);
        }
      }

      FigSimpleMutexLock();
      v36 = *(v16 + 328);
      if (v36)
      {
        if (v17)
        {
          v37 = APSGetFBOPropertyInt64();
          if (*v53)
          {
            v38 = 0;
          }

          else
          {
            v38 = v37 == 32;
          }

          v39 = v38;
          v40 = APPairingClientCoreUtilsCreate(v30, v27, *(v16 + 113), v47, v44, a2, a3, v43, v29, v42, v39, cf, v46, v45, *(v16 + 328), a8);
        }

        else
        {
          v40 = APPairingClientLegacyCreate(v30, v26, v48, v36, a8);
        }

        *v53 = v40;
      }

      else
      {
        if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
        {
          apsession_createPairingClient_cold_3();
        }

        *v53 = -71829;
      }

      FigSimpleMutexUnlock();
      if (*v53)
      {
        apsession_createPairingClient_cold_4();
      }

      else if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_54;
    }
  }

  else
  {
    APSLogErrorAt();
    v27 = 0;
    *v53 = -71820;
  }

  APSLogErrorAt();
LABEL_54:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_58:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  return *v53;
}

uint64_t apsession_isTransientPairingSupported()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LOBYTE(result) = APSGetFBOPropertyInt64() != 0;
  if (*(DerivedStorage + 72) == 10)
  {
    LOBYTE(result) = APSSettingsGetIntWithDefault();
  }

  return result;
}

uint64_t APAuthenticationClientAuthenticateEndpoint(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t apsession_requestControlSetupWithResponse(uint64_t a1, void *a2, int a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  cf = 0;
  apsession_copyTransportControlStream(a1, &v17);
  v9 = v17;
  if (v17)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = MEMORY[0x277CBED28];
      if (!a3)
      {
        v12 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(Mutable, @"updateSessionRequest", *v12);
      *(DerivedStorage + 155) = APSSettingsIsFeatureEnabled();
      appended = apsession_appendControlSetupRequest(a1, v11, a2);
      if (appended)
      {
        v15 = appended;
        apsession_requestControlSetupWithResponse_cold_1();
      }

      else
      {
        if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v14 = APTransportStreamSendPlistMessageCreatingPlistReply();
        if (v14)
        {
          v15 = v14;
          apsession_requestControlSetupWithResponse_cold_2();
        }

        else
        {
          if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v15 = 0;
          if (a4)
          {
            *a4 = cf;
            cf = 0;
          }
        }
      }

      CFRelease(v9);
      CFRelease(v11);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      apsession_requestControlSetupWithResponse_cold_3(v9);
      return 4294895476;
    }
  }

  else
  {
    v15 = 4294895475;
    apsession_requestControlSetupWithResponse_cold_4();
  }

  return v15;
}

uint64_t apsession_appendControlSetupRequest(uint64_t a1, __CFDictionary *a2, void *a3)
{
  v95 = *MEMORY[0x277D85DE8];
  v81 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  uuid = 0;
  theData = 0;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v77 = 0;
  value = 0;
  v76 = 0;
  v75 = 0;
  v6 = APSGetFBOPropertyInt64();
  v74 = 0;
  v66 = APSGetFBOPropertyInt64();
  v72 = 0;
  v73 = 0;
  v7 = APSGetFBOPropertyInt64() != 0;
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 320);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(DerivedStorage + 328);
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(DerivedStorage + 552);
  if (v12)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(DerivedStorage + 310);
  FigSimpleMutexUnlock();
  if (v9)
  {
    if (!v11)
    {
      apsession_appendControlSetupRequest_cold_13(&v81);
      v15 = 0;
      goto LABEL_131;
    }

    if (a2)
    {
      v69 = CFDictionaryGetInt64() != 0;
    }

    else
    {
      v69 = 0;
    }

    if (*(DerivedStorage + 72) == 5)
    {
      v15 = MGCopyAnswer();
      if (v15)
      {
        CFDictionarySetValue(a2, @"deviceID", v15);
      }

      else
      {
        APSGetDeviceID();
        HardwareAddressToCString();
        CFDictionarySetCString();
      }
    }

    else
    {
      APSGetDeviceID();
      HardwareAddressToCString();
      CFDictionarySetCString();
      v15 = 0;
    }

    v68 = a3;
    v16 = *(DerivedStorage + 72);
    if (v16 <= 5 && v16 != 3)
    {
      APSCopyBootUUID();
      FigCFDictionarySetValue();
    }

    v17 = *(DerivedStorage + 224);
    if (v17 && !v6)
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v18)
      {
        v18(v17);
      }

      CFDictionarySetInt64();
      v19 = *(DerivedStorage + 224);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v20)
      {
        v81 = v20(v19, &value, &v77);
        if (!v81)
        {
          v21 = *(DerivedStorage + 224);
          v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v22)
          {
            v81 = v22(v21);
            if (!v81)
            {
              CFDictionarySetValue(a2, @"ekey", value);
              CFDictionarySetValue(a2, @"eiv", v77);
              goto LABEL_32;
            }
          }

          else
          {
            v81 = -12782;
          }

          apsession_appendControlSetupRequest_cold_1();
          goto LABEL_131;
        }
      }

      else
      {
        v81 = -12782;
      }

      apsession_appendControlSetupRequest_cold_2();
      goto LABEL_131;
    }

LABEL_32:
    v65 = v7;
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v25 = *MEMORY[0x277CBECE8];
      v81 = v24(CMBaseObject, *MEMORY[0x277CE5028], *MEMORY[0x277CBECE8], &theData);
      if (!v81)
      {
        CFDataGetBytePtr(theData);
        HardwareAddressToCString();
        CFDictionarySetCString();
        LOBYTE(v87) = 0;
        GetDeviceModelString();
        CFDictionarySetCString();
        LOBYTE(v87) = 0;
        APSGetDeviceNameCString();
        CFDictionarySetCString();
        LOBYTE(v87) = 0;
        GetSystemBuildVersionString();
        CFDictionarySetCString();
        v26 = FigTransportSessionGetCMBaseObject();
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v27)
        {
          v71 = v15;
          v81 = v27(v26, *MEMORY[0x277CC1B00], v25, &uuid);
          if (!v81)
          {
            v28 = CFUUIDCreateString(v25, uuid);
            if (!v28)
            {
              apsession_appendControlSetupRequest_cold_10();
              v45 = 0;
              goto LABEL_132;
            }

            v29 = v28;
            v64 = v14;
            CFDictionarySetValue(a2, @"sessionUUID", v28);
            APSVersionUtilsGetShortVersionLength();
            CFDictionarySetCString();
            v30 = *MEMORY[0x277CBED28];
            v67 = *MEMORY[0x277CBED10];
            if (*(DerivedStorage + 152))
            {
              v31 = *MEMORY[0x277CBED28];
            }

            else
            {
              v31 = *MEMORY[0x277CBED10];
            }

            CFDictionarySetValue(a2, @"statsCollectionEnabled", v31);
            if (*(DerivedStorage + 153))
            {
              CFDictionarySetValue(a2, @"highFreqStatsCollectionEnabled", v30);
            }

            if (*(DerivedStorage + 272))
            {
              CFDictionarySetInt64();
            }

            v32 = *(DerivedStorage + 72);
            if (v32 <= 8 && ((1 << v32) & 0x1C2) != 0)
            {
              CFDictionarySetValue(a2, @"isRemoteControlOnly", v30);
              v32 = *(DerivedStorage + 72);
            }

            if (v32 == 9 || v32 == 4)
            {
              CFDictionarySetValue(a2, @"isScreenMirroringSession", v30);
              v32 = *(DerivedStorage + 72);
            }

            v33 = 0;
            if (v32 <= 0xB)
            {
              v33 = ((1 << v32) & 0x80C) != 0;
            }

            if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v34 = !v33;
            if (!*(DerivedStorage + 155))
            {
              v34 = 1;
            }

            if (v34)
            {
              goto LABEL_64;
            }

            v35 = CMBaseObjectGetDerivedStorage();
            cf[0] = 0;
            Shared = APMulticastProbeSenderGetShared();
            if (!Shared)
            {
              goto LABEL_64;
            }

            if (APMulticastProbeSenderCopySSMGroupInfo(Shared, *(v35 + 264), cf))
            {
              goto LABEL_183;
            }

            *(v35 + 288) = 1;
            CFDictionarySetValue(a2, @"mc2ucDetectionSSMGroupInfo", cf[0]);
            while (1)
            {
              if (cf[0])
              {
                CFRelease(cf[0]);
              }

LABEL_64:
              v83 = 0;
              v84 = &v83;
              v85 = 0x2000000000;
              v37 = getDiagnosticLogSubmissionEnabledSymbolLoc_ptr;
              v86 = getDiagnosticLogSubmissionEnabledSymbolLoc_ptr;
              if (!getDiagnosticLogSubmissionEnabledSymbolLoc_ptr)
              {
                cf[0] = MEMORY[0x277D85DD0];
                cf[1] = 0x40000000;
                cf[2] = __getDiagnosticLogSubmissionEnabledSymbolLoc_block_invoke;
                cf[3] = &unk_27849B968;
                cf[4] = &v83;
                __getDiagnosticLogSubmissionEnabledSymbolLoc_block_invoke(cf);
                v37 = v84[3];
              }

              _Block_object_dispose(&v83, 8);
              if (v37)
              {
                break;
              }

              apsession_appendControlSetupRequest_cold_9();
LABEL_183:
              apsession_appendControlSetupRequest_cold_3();
            }

            v70 = v29;
            if (v37(v38, v39, v40, v41))
            {
              CFDictionarySetValue(a2, @"diagnosticsAndUsage", v30);
              if (IsAppleInternalBuild())
              {
                v42 = v30;
              }

              else
              {
                v42 = v67;
              }

              CFDictionarySetValue(a2, @"internalBuild", v42);
            }

            v43 = _CFCopySystemVersionDictionary();
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            if (v43)
            {
              CFRelease(v43);
            }

            if (*(DerivedStorage + 72) == 5)
            {
              v44 = APSGetFBOPropertyInt64();
              if (!v81)
              {
                v45 = v29;
                if (v44 == 2)
                {
                  CFDictionarySetValue(a2, @"keepAliveLowPower", v30);
                }

                v15 = v71;
                if (v68)
                {
                  CFDictionarySetValue(a2, @"features", v68);
                }

                goto LABEL_132;
              }

              apsession_appendControlSetupRequest_cold_8();
LABEL_175:
              v45 = v70;
              v15 = v71;
              goto LABEL_132;
            }

            if (IsAppleInternalBuild())
            {
              LOBYTE(v87) = 0;
              GetDeviceInternalModelString();
              CFDictionarySetCString();
              LOBYTE(v87) = 0;
              GetDeviceUniqueID();
              CFDictionarySetCString();
            }

            CFDictionarySetValue(a2, @"timingProtocol", *(DerivedStorage + 24));
            if (*(DerivedStorage + 24) == @"PTP" && !v69)
            {
              v46 = *(DerivedStorage + 80);
              v47 = *(DerivedStorage + 72) == 3;
              v48 = *(*(CMBaseObjectGetVTable() + 16) + 64);
              if (v48)
              {
                v81 = v48(v46, v47, &v72, &v73);
                if (!v81)
                {
                  CFDictionarySetValue(a2, @"timingPeerInfo", v73);
                  CFDictionarySetValue(a2, @"timingPeerList", v72);
                  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
                  {
                    apsession_appendControlSetupRequest_cold_4(&v72);
                  }

                  goto LABEL_88;
                }
              }

              else
              {
                v81 = -12782;
              }

              apsession_appendControlSetupRequest_cold_5();
              goto LABEL_175;
            }

LABEL_88:
            v49 = *(DerivedStorage + 72);
            if (v49 <= 8 && ((1 << v49) & 0x1C2) != 0)
            {
LABEL_90:
              v49 = *(DerivedStorage + 72);
              goto LABEL_91;
            }

            if (!v66)
            {
LABEL_91:
              v45 = v70;
              v15 = v71;
              if (v49 == 10)
              {
                CelestialGetModelSpecificName();
                v50 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
                if (v50 || (v50 = CelestialCFCreatePropertyList()) != 0)
                {
                  v51 = v50;
                  CFDictionarySetValue(a2, @"sidePlaySessionBehaviors", v50);
                  CFRelease(v51);
                }
              }

              if (*(DerivedStorage + 568) && *(DerivedStorage + 560))
              {
                MutableCopy = FigCFDictionaryCreateMutableCopy();
                if (MutableCopy)
                {
                  v53 = MutableCopy;
                  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
                  {
                    apsession_appendControlSetupRequest_cold_6();
                  }

                  FigCFDictionarySetValue();
                  FigCFDictionarySetValue();
                  CFRelease(v53);
                }

                else
                {
                  apsession_appendControlSetupRequest_cold_7(&v81);
                }
              }

LABEL_132:
              CFRelease(v9);
              if (!v11)
              {
                goto LABEL_134;
              }

              goto LABEL_133;
            }

            v54 = 1;
            if (v49 <= 0xB && ((1 << v49) & 0x80C) != 0)
            {
              CFDictionarySetValue(a2, @"supportsGroupCohesion", v30);
              v54 = 0;
            }

            if (!APSIsAPMSpeaker() && !IsAppleTV())
            {
              v65 = 1;
            }

            if (v54)
            {
              v55 = v67;
            }

            else
            {
              v55 = v30;
            }

            CFDictionarySetValue(a2, @"isMultiSelectAirPlay", v55);
            if (v13)
            {
              if (v65)
              {
                v56 = v67;
              }

              else
              {
                v56 = v30;
              }

              CFDictionarySetValue(a2, @"groupContainsGroupLeader", v56);
              CFDictionarySetValue(a2, @"groupUUID", v13);
              if ((v54 & 1) != 0 || (v57 = v30, !*(DerivedStorage + 112)))
              {
                v57 = v67;
              }

              CFDictionarySetValue(a2, @"senderSupportsRelay", v57);
            }

            if (IsAppleTV() && *(DerivedStorage + 72) == 3)
            {
              CFDictionarySetValue(a2, @"isHomeTheaterSession", v30);
              APSHDMIVideoLatencyMs();
              CFDictionarySetInt64();
              v58 = @"isPersistentConnection";
              v59 = @"surviveAudioInterruption";
            }

            else
            {
              if (!APSIsAPMSpeaker() || *(DerivedStorage + 72) != 11)
              {
LABEL_162:
                v62 = *(DerivedStorage + 96);
                if (v62)
                {
                  CFDictionarySetValue(a2, @"hijackID", v62);
                }

                if (*(DerivedStorage + 88))
                {
                  CFDictionarySetInt64();
                }

                if (*(DerivedStorage + 136))
                {
                  CFDictionarySetValue(a2, @"applyFadeOnFirstMediaAudioSession", v30);
                  CFDictionarySetDouble();
                }

                if (APSIsAPMSpeaker())
                {
                  if (apsession_isTightSyncBuddyConnection(*(DerivedStorage + 56)))
                  {
                    v63 = v30;
                  }

                  else
                  {
                    v63 = v67;
                  }

                  CFDictionarySetValue(a2, @"isTightSyncBuddyConnection", v63);
                }

                goto LABEL_90;
              }

              v58 = @"surviveAudioInterruption";
              v59 = @"isPersistentConnection";
            }

            CFDictionarySetValue(a2, v59, v30);
            CFDictionarySetValue(a2, v58, v30);
            if (v64)
            {
              v61 = v67;
            }

            else
            {
              v61 = v30;
            }

            CFDictionarySetValue(a2, @"isNonMediaSession", v61);
            goto LABEL_162;
          }
        }

        else
        {
          v81 = -12782;
        }

        apsession_appendControlSetupRequest_cold_11();
LABEL_131:
        v45 = 0;
        goto LABEL_132;
      }
    }

    else
    {
      v81 = -12782;
    }

    apsession_appendControlSetupRequest_cold_12();
    goto LABEL_131;
  }

  apsession_appendControlSetupRequest_cold_14(&v81);
  v15 = 0;
  v45 = 0;
  if (v11)
  {
LABEL_133:
    CFRelease(v11);
  }

LABEL_134:
  if (value)
  {
    CFRelease(value);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (uuid)
  {
    CFRelease(uuid);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  return v81;
}

void *__getDiagnosticLogSubmissionEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CrashReporterSupportLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 0x40000000;
    v5[3] = __CrashReporterSupportLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_tmp_527;
    v5[5] = v5;
    v6 = xmmword_27849B988;
    v7 = 0;
    CrashReporterSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
    if (CrashReporterSupportLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "DiagnosticLogSubmissionEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDiagnosticLogSubmissionEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CrashReporterSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CrashReporterSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void apsession_eventStreamMessageCallback(const void *a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 344))
  {
    v8 = MEMORY[0x223DB15F0](DerivedStorage + 344);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    CFRetain(a4);
    CFRetain(v8);
    APSDispatchAsyncFHelper();
    CFRelease(v8);
  }

  else
  {
    apsession_eventStreamMessageCallback_cold_1();
  }
}

void apsession_eventStreamMessageCallbackInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (*(a1 + 8) == 1684628836)
  {
    apsession_handleTransportStreamDisconnected(*(a1 + 24));
  }

  else if (*(a1 + 48))
  {
    CFRetain(*a1);
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRetain(v2);
    }

    CFRetain(*(a1 + 32));
    APSDispatchAsyncFHelper();
  }

  CFRelease(*(a1 + 24));
  CFRelease(*a1);
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);

  CFRelease(v4);
}

void apsession_eventStreamDeferredMessageCallback(uint64_t a1)
{
  (*(a1 + 48))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 40));
  CFRelease(*a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

uint64_t __apsession_getKeepAliveMode_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetInt64();
  if (result == 130)
  {
    --*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t apsession_updateSessionInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    apsession_updateSessionInternal_cold_1();
    return 4294954511;
  }

  else if (*(DerivedStorage + 217))
  {
    apsession_updateSessionInternal_cold_2();
    return 4294895467;
  }

  else
  {
    v3 = *(DerivedStorage + 72) - 1;
    if (v3 < 8 && ((0xE1u >> v3) & 1) != 0)
    {
      return 0;
    }

    else
    {

      return apsession_requestControlSetupWithResponse(a1, 0, 1, 0);
    }
  }
}

uint64_t __apsession_generateUniqueStreamIDFromRegistry_block_invoke(uint64_t a1)
{
  Int64 = CFDictionaryGetInt64();
  result = CFDictionaryGetInt64();
  if (result == *(a1 + 40))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24);
    if (v5 <= Int64)
    {
      v5 = Int64;
    }

    *(v4 + 24) = v5 + 1;
  }

  return result;
}

void apsession_prepareForTeardownInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_prepareForTeardownInternal_cold_1();
  }

  if (*(DerivedStorage + 24) == @"PTP")
  {
    apsession_stopSenderNetworkClockIfNeeded(a1);
  }

  *(DerivedStorage + 217) = 1;

  CFRelease(a1);
}

uint64_t apsession_sendAudioContentTypeUpdateInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  if (*DerivedStorage)
  {
    return 0;
  }

  if (*(DerivedStorage + 72) == 5)
  {
    return 0;
  }

  apsession_copyTransportControlStream(*a1, &v6);
  v3 = v6;
  if (!v6)
  {
    return 0;
  }

  v4 = APTransportStreamSendPlistMessage();
  if (v4)
  {
    apsession_sendAudioContentTypeUpdateInternal_cold_1();
  }

  CFRelease(v3);
  return v4;
}

uint64_t APAudioSinkSharedMemRemote_ServerDied()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 24) = 0;
  return result;
}

uint64_t APAudioSinkSharedMemRemoteCreate(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, void *a5)
{
  if (!a5)
  {
    APAudioSinkSharedMemRemoteCreate_cold_6();
    return 4294950504;
  }

  if (!a3)
  {
    APAudioSinkSharedMemRemoteCreate_cold_5();
    return 4294950504;
  }

  FigEndpointAudioSinkGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v19 = v9;
    APAudioSinkSharedMemRemoteCreate_cold_1();
    return v19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  *(DerivedStorage + 8) = a4;
  *(DerivedStorage + 24) = 0;
  v11 = a3[4];
  v12 = *(a3 + 1);
  *(DerivedStorage + 80) = *a3;
  *(DerivedStorage + 96) = v12;
  *(DerivedStorage + 112) = v11;
  v14 = *a2;
  v13 = a2[1];
  *(DerivedStorage + 72) = *(a2 + 4);
  *(DerivedStorage + 40) = v14;
  *(DerivedStorage + 56) = v13;
  v15 = CMBaseObjectGetDerivedStorage();
  v16 = FigXPCCreateBasicMessage();
  if (v16)
  {
    v19 = v16;
    APAudioSinkSharedMemRemoteCreate_cold_2();
LABEL_15:
    APSLogErrorAt();
    return v19;
  }

  xpc_dictionary_set_data(0, kAPCarPlayAVVCMsgParam_XPCSinkOutputFormat[0], a3, 0x28uLL);
  v17 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v17)
  {
    v19 = v17;
    APAudioSinkSharedMemRemoteCreate_cold_3();
    goto LABEL_15;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x277CC0990]);
  *(v15 + 16) = uint64;
  if (!uint64)
  {
    APAudioSinkSharedMemRemoteCreate_cold_4();
    v19 = 4294960578;
    goto LABEL_15;
  }

  FigXPCRemoteClientAssociateObject();
  v19 = 0;
  *(v15 + 24) = 1;
  *a5 = 0;
  return v19;
}

uint64_t sharedMemSinkRemote_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSinkSharedMemRemote <= 30 && (gLogCategory_APAudioSinkSharedMemRemote != -1 || _LogCategory_Initialize()))
  {
    sharedMemSinkRemote_Finalize_cold_1();
  }

  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 32) = 0;
  }

  v2 = CMBaseObjectGetDerivedStorage();
  if (*(v2 + 24))
  {
    if (FigXPCCreateBasicMessage())
    {
      result = sharedMemSinkRemote_Finalize_cold_2();
      goto LABEL_10;
    }

    if (FigXPCRemoteClientSendSyncMessage())
    {
      result = sharedMemSinkRemote_Finalize_cold_3();
      goto LABEL_10;
    }
  }

  result = FigXPCRemoteClientDisassociateObject();
  *(v2 + 16) = 0;
LABEL_10:
  *(v2 + 24) = 0;
  return result;
}

CFMutableStringRef sharedMemSinkRemote_CopyDebugDescription(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendF();
  CFStringAppendF();
  CFStringAppendF();
  CFGetRetainCount(a1);
  CFStringAppendF();
  return Mutable;
}

uint64_t sharedMemSinkRemote_CopyProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 24))
    {
      return FigXPCSendStdCopyPropertyMessage();
    }

    else
    {
      sharedMemSinkRemote_CopyProperty_cold_1();
      return 4294960587;
    }
  }

  else
  {
    sharedMemSinkRemote_CopyProperty_cold_2();
    return 4294960578;
  }
}

uint64_t sharedMemSinkRemote_SetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 24))
    {

      return FigXPCSendStdSetPropertyMessage();
    }

    else
    {
      sharedMemSinkRemote_SetProperty_cold_1();
      return 4294960587;
    }
  }

  else
  {
    sharedMemSinkRemote_SetProperty_cold_2();
    return 4294960578;
  }
}

uint64_t sharedMemSinkRemote_GetInputFormat(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 24))
    {
      v4 = FigXPCCreateBasicMessage();
      if (v4)
      {
        v6 = v4;
        sharedMemSinkRemote_GetInputFormat_cold_1();
      }

      else
      {
        v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v5)
        {
          v6 = v5;
          sharedMemSinkRemote_GetInputFormat_cold_2();
        }

        else
        {
          v6 = APCarPlayXPCUtils_UnpackASBD(0, kAPCarPlayAVVCMsgParam_XPCSinkInputFormat[0], 1, a2);
          if (v6)
          {
            sharedMemSinkRemote_GetInputFormat_cold_3();
          }
        }
      }
    }

    else
    {
      sharedMemSinkRemote_GetInputFormat_cold_4();
      return 4294960587;
    }
  }

  else
  {
    sharedMemSinkRemote_GetInputFormat_cold_5();
    return 4294960578;
  }

  return v6;
}

uint64_t sharedMemSinkRemote_SetInputFormat(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 24))
    {
      v4 = FigXPCCreateBasicMessage();
      if (v4)
      {
        v5 = v4;
        sharedMemSinkRemote_SetInputFormat_cold_1();
      }

      else
      {
        xpc_dictionary_set_data(0, kAPCarPlayAVVCMsgParam_XPCSinkInputFormat[0], a2, 0x28uLL);
        v5 = FigXPCRemoteClientSendSyncMessage();
        if (v5)
        {
          sharedMemSinkRemote_SetInputFormat_cold_2();
        }
      }
    }

    else
    {
      sharedMemSinkRemote_SetInputFormat_cold_3();
      return 4294960587;
    }
  }

  else
  {
    sharedMemSinkRemote_SetInputFormat_cold_4();
    return 4294960578;
  }

  return v5;
}

uint64_t sharedMemSinkRemote_Resume()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v1 = DerivedStorage;
    if (*(DerivedStorage + 24))
    {
      if (gLogCategory_APAudioSinkSharedMemRemote <= 30 && (gLogCategory_APAudioSinkSharedMemRemote != -1 || _LogCategory_Initialize()))
      {
        sharedMemSinkRemote_Resume_cold_1();
      }

      v2 = FigXPCCreateBasicMessage();
      if (v2)
      {
        value = v2;
        sharedMemSinkRemote_Resume_cold_2();
      }

      else
      {
        v3 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v3)
        {
          value = v3;
          sharedMemSinkRemote_Resume_cold_3();
        }

        else
        {
          value = xpc_dictionary_get_value(0, kAPCarPlayAVVCMsgParam_SharedMemoryBuffer[0]);
          if (value)
          {
            if (xpc_dictionary_get_value(0, kAPCarPlayAVVCMsgParam_SharedMemoryState))
            {
              value = APSSharedRingBuffer_CreateWithBufferAndState();
              if (value)
              {
                sharedMemSinkRemote_Resume_cold_4();
              }

              else
              {
                *(v1 + 120) = 1;
                *(v1 + 124) = 4;
                *v1 = 1;
              }
            }

            else
            {
              sharedMemSinkRemote_Resume_cold_5();
              return 0;
            }
          }

          else
          {
            sharedMemSinkRemote_Resume_cold_6();
          }
        }
      }
    }

    else
    {
      sharedMemSinkRemote_Resume_cold_7();
      return 4294960587;
    }
  }

  else
  {
    sharedMemSinkRemote_Resume_cold_8();
    return 4294960578;
  }

  return value;
}

uint64_t APGetEndpointManagerCarPlay(void *a1)
{
  if (!MGGetBoolAnswer())
  {
    _MergedGlobals_3 = APSSignalErrorAt();
    return _MergedGlobals_3;
  }

  if (APGetEndpointManagerCarPlay_sCreateOnce != -1)
  {
    APGetEndpointManagerCarPlay_cold_1();
    if (!a1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a1)
  {
LABEL_4:
    *a1 = qword_280FB1A50;
  }

LABEL_5:
  if (gLogCategory_APEndpointManagerCarPlayFactory <= 50 && (gLogCategory_APEndpointManagerCarPlayFactory != -1 || _LogCategory_Initialize()))
  {
    APGetEndpointManagerCarPlay_cold_2();
  }

  return _MergedGlobals_3;
}

uint64_t __APGetEndpointManagerCarPlay_block_invoke()
{
  if (gLogCategory_APEndpointManagerCarPlayFactory <= 50 && (gLogCategory_APEndpointManagerCarPlayFactory != -1 || _LogCategory_Initialize()))
  {
    __APGetEndpointManagerCarPlay_block_invoke_cold_1();
  }

  if (!MEMORY[0x223DAEBE0]() || (v0 = getprogname(), strcmp(v0, "audiomxd")))
  {
    if (gLogCategory_APEndpointManagerCarPlayFactory <= 50 && (gLogCategory_APEndpointManagerCarPlayFactory != -1 || _LogCategory_Initialize()))
    {
      __APGetEndpointManagerCarPlay_block_invoke_cold_4();
    }

    v4 = 0;
    v1 = APEndpointManagerCarPlayCreate(*MEMORY[0x277CBECE8], 0, &v4);
    if (!v1)
    {
      result = APSIsExplicitEndpointManagerInitializationEnabledInMX();
      if (!result)
      {
        result = CMSessionMgrRegisterEndpointManager();
        if (result)
        {
          if (gLogCategory_APEndpointManagerCarPlayFactory <= 90)
          {
            if (gLogCategory_APEndpointManagerCarPlayFactory != -1 || (result = _LogCategory_Initialize(), result))
            {
              result = __APGetEndpointManagerCarPlay_block_invoke_cold_7();
            }
          }
        }
      }

      v3 = 0;
      qword_280FB1A50 = v4;
      goto LABEL_21;
    }

    v3 = v1;
    result = __APGetEndpointManagerCarPlay_block_invoke_cold_5(v1, &v4);
    goto LABEL_27;
  }

  if (gLogCategory_APEndpointManagerCarPlayFactory <= 50 && (gLogCategory_APEndpointManagerCarPlayFactory != -1 || _LogCategory_Initialize()))
  {
    __APGetEndpointManagerCarPlay_block_invoke_cold_2();
  }

  result = FigEndpointManagerRemoteCopyCarPlayManager();
  v3 = result;
  if (result)
  {
    result = __APGetEndpointManagerCarPlay_block_invoke_cold_3();
LABEL_27:
    if (gLogCategory_APEndpointManagerCarPlayFactory <= 90)
    {
      if (gLogCategory_APEndpointManagerCarPlayFactory != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __APGetEndpointManagerCarPlay_block_invoke_cold_6();
      }
    }
  }

LABEL_21:
  _MergedGlobals_3 = v3;
  return result;
}

uint64_t APEndpointManagerCreate(void *a1)
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  v2 = APEndpointManagerGetShared_sAPEndpointManager;
  if (APEndpointManagerGetShared_sAPEndpointManager)
  {
    v2 = CFRetain(APEndpointManagerGetShared_sAPEndpointManager);
  }

  *a1 = v2;
  return gCreationErr_0;
}

uint64_t APEndpointManagerGetShared()
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  return APEndpointManagerGetShared_sAPEndpointManager;
}

uint64_t manager_create(void *a1)
{
  v94 = 0;
  LogSetAppID();
  if (!a1)
  {
    manager_create_cold_47();
    return 4294950586;
  }

  v2 = *MEMORY[0x277CBECE8];
  FigEndpointManagerGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    v41 = v3;
    manager_create_cold_1();
    goto LABEL_156;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = dispatch_queue_create("com.apple.airplay.apendpointManager.notification", 0);
  *(DerivedStorage + 8) = v5;
  if (!v5)
  {
    manager_create_cold_46();
LABEL_201:
    v41 = 4294950585;
    goto LABEL_156;
  }

  v6 = FigSimpleMutexCreate();
  *(DerivedStorage + 64) = v6;
  if (!v6)
  {
    manager_create_cold_45();
    goto LABEL_201;
  }

  *(DerivedStorage + 88) = CFRetain(*MEMORY[0x277CC0C08]);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 168) = Mutable;
  if (!Mutable)
  {
    manager_create_cold_44();
    goto LABEL_201;
  }

  v8 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 176) = v8;
  if (!v8)
  {
    manager_create_cold_43();
    goto LABEL_201;
  }

  v9 = CFSetCreateMutable(v2, 0, MEMORY[0x277CBF158]);
  *(DerivedStorage + 184) = v9;
  if (!v9)
  {
    manager_create_cold_42();
    goto LABEL_201;
  }

  v10 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 192) = v10;
  if (!v10)
  {
    manager_create_cold_41();
    goto LABEL_201;
  }

  v11 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 208) = v11;
  if (!v11)
  {
    manager_create_cold_40();
    goto LABEL_201;
  }

  v12 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 216) = v12;
  if (!v12)
  {
    manager_create_cold_39();
    goto LABEL_201;
  }

  v13 = CFSetCreateMutable(v2, 0, MEMORY[0x277CBF158]);
  *(DerivedStorage + 224) = v13;
  if (!v13)
  {
    manager_create_cold_38();
    goto LABEL_201;
  }

  IsFeatureEnabled = APSSettingsIsFeatureEnabled();
  *(DerivedStorage + 400) = IsFeatureEnabled;
  if (IsFeatureEnabled)
  {
    v15 = CFSetCreateMutable(v2, 0, MEMORY[0x277CBF158]);
    *(DerivedStorage + 272) = v15;
    if (!v15)
    {
      manager_create_cold_2();
      goto LABEL_201;
    }
  }

  APSPreCacheSystemPairingIdentity();
  *DerivedStorage = 1;
  *(DerivedStorage + 2) = APSIsEndpointClusteringEnabled();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(DerivedStorage + 3) = APSMultiPrimariesEnabled();
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_create_cold_3();
    }
  }

  if (APSSettingsIsFeatureEnabled())
  {
    APBrokerManagerCreate();
    if (!*(DerivedStorage + 328))
    {
      manager_create_cold_4();
      v41 = 4294960568;
      goto LABEL_156;
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  *(DerivedStorage + 401) = APSSettingsGetIntWithDefault() != 0;
  *(DerivedStorage + 396) = GestaltGetDeviceClass();
  *(DerivedStorage + 4) = 0;
  if (IsAppleInternalBuild() && APSSettingsGetBooleanIfPresent() && gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_create_cold_5();
  }

  if (*(DerivedStorage + 2))
  {
    v16 = *(DerivedStorage + 396);
    if (v16 <= 0xD && ((1 << v16) & 0x2090) != 0 || APSIsLocalClusterWithStaticLeadershipEnabled())
    {
      *(DerivedStorage + 4) = 2;
      v17 = APEndpointLocalCreateWithEndpointDescription(v2, 0, 0, (DerivedStorage + 296));
      if (v17)
      {
        v41 = v17;
        manager_create_cold_6();
        goto LABEL_156;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      manager_updateEndpointPSGInfoIfNeeded();
      *(DerivedStorage + 161) = APSGetFBOPropertyInt64() == 0;
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      FigSimpleMutexLock();
      manager_updateExposedLocalEndpoint(v94, *(DerivedStorage + 296));
      FigSimpleMutexUnlock();
    }

    else if (*(DerivedStorage + 396) == 100)
    {
      *(DerivedStorage + 4) = 1;
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        manager_create_cold_7();
      }
    }
  }

  v18 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 232) = v18;
  if (!v18)
  {
    manager_create_cold_37();
    goto LABEL_201;
  }

  v19 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 240) = v19;
  if (!v19)
  {
    manager_create_cold_36();
    goto LABEL_201;
  }

  v90 = a1;
  if (*(DerivedStorage + 396) != 7 && APSIsRemoteHALPluginLoadingEnabled() && APSIsInAirPlaySenderSystemServer() && !APSIsInAudioSystemServer())
  {
    v20 = CFStringCreateMutable(v2, 0);
    handler = 0;
    CFStringAppendFormat(v20, 0, @"/System/Library/Audio/Plug-Ins/HAL/%@", @"AirPlayHalogen.driver");
    v21 = CFURLCreateWithFileSystemPath(0, v20, kCFURLPOSIXPathStyle, 1u);
    if (v21)
    {
      v22 = v21;
      v23 = CFPlugInCreate(0, v21);
      if (v23)
      {
        v24 = v23;
        v25 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
        FactoriesForPlugInTypeInPlugIn = CFPlugInFindFactoriesForPlugInTypeInPlugIn(v25, v24);
        if (FactoriesForPlugInTypeInPlugIn)
        {
          v27 = FactoriesForPlugInTypeInPlugIn;
          if (CFArrayGetCount(FactoriesForPlugInTypeInPlugIn) <= 0)
          {
            manager_create_cold_12();
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v27, 0);
            if (ValueAtIndex)
            {
              v29 = ValueAtIndex;
              v30 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
              v31 = CFPlugInInstanceCreate(0, v29, v30);
              if (v31)
              {
                v32 = v31;
                v33 = *(*v31 + 8);
                v34 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u);
                v35 = CFUUIDGetUUIDBytes(v34);
                if (v33(v32, *&v35.byte0, *&v35.byte8, &handler))
                {
                  manager_create_cold_8();
                }

                else if (!handler)
                {
                  manager_create_cold_9();
                }

                (*(*v32 + 24))(v32);
              }

              else
              {
                manager_create_cold_10();
              }
            }

            else
            {
              manager_create_cold_11();
            }
          }

          CFRelease(v22);
        }

        else
        {
          manager_create_cold_13();
          v27 = v22;
        }

        CFRelease(v27);
        CFRelease(v24);
      }

      else
      {
        manager_create_cold_14(v22);
      }
    }

    else
    {
      manager_create_cold_15();
    }

    if (v20)
    {
      CFRelease(v20);
    }

    v36 = handler;
    *(DerivedStorage + 344) = handler;
    if (!v36)
    {
      manager_create_cold_16();
      v41 = 4294895506;
      goto LABEL_156;
    }

    v37 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __manager_create_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v94;
    dispatch_sync(v37, block);
  }

  Int64 = APSSettingsGetInt64();
  IntWithDefault = APSSettingsGetIntWithDefault();
  if (!Int64)
  {
    v40 = APSNetworkClockPTPCreate();
    if (v40)
    {
      v41 = v40;
      manager_create_cold_18();
      goto LABEL_156;
    }

LABEL_73:
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_create_cold_19();
    }

    if (!IntWithDefault)
    {
      goto LABEL_87;
    }

    v43 = v94;
    v44 = CMBaseObjectGetDerivedStorage();
    v45 = dispatch_queue_create("com.apple.airplay.apendpointManager.clockstart", 0);
    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRetain(v43);
    handler = MEMORY[0x277D85DD0];
    v96 = 3221225472;
    v97 = __manager_asyncStartNetworkClock_block_invoke;
    v98 = &__block_descriptor_48_e5_v8__0l;
    v99 = v44;
    v100 = v43;
    dispatch_async(v45, &handler);
    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      if (!v45)
      {
LABEL_87:
        if (APSIsInAirPlaySenderSystemServer() && APSSettingsIsFeatureEnabled() && FVDUtilsEncryptedEncodeSupported())
        {
          v46 = mach_absolute_time();
          if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
          {
            manager_create_cold_20();
          }

          global_queue = dispatch_get_global_queue(25, 0);
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __manager_create_block_invoke_2;
          v92[3] = &__block_descriptor_48_e5_v8__0l;
          v92[4] = v94;
          v92[5] = v46;
          dispatch_async(global_queue, v92);
        }

        v48 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v48)
        {
          v49 = v48;
          APSEventRecorderCreate();
          v50 = *(DerivedStorage + 336);
          if (v50)
          {
            CFDictionarySetValue(v49, @"eventRecorder", v50);
          }

          v51 = v94;
          v52 = CMBaseObjectGetDerivedStorage();
          v53 = CFSetCreateMutable(v2, 0, MEMORY[0x277CBF158]);
          *(v52 + 264) = v53;
          if (v53)
          {
            v54 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v52 + 8));
            *(v52 + 352) = v54;
            if (v54)
            {
              handler = MEMORY[0x277D85DD0];
              v96 = 3221225472;
              v97 = __manager_initAndStartDeviceMetricsTimer_block_invoke;
              v98 = &__block_descriptor_40_e5_v8__0l;
              v99 = v51;
              dispatch_source_set_event_handler(v54, &handler);
              v55 = *(v52 + 352);
              v56 = dispatch_time(0, 10800000000000);
              dispatch_source_set_timer(v55, v56, 0x4E94914F0000uLL, 0x3B9ACA00uLL);
              dispatch_resume(*(v52 + 352));
LABEL_101:
              v57 = *(DerivedStorage + 396);
              if (v57 == 13 || v57 == 7)
              {
                v58 = *MEMORY[0x277CBED28];
                v59 = *MEMORY[0x277CBED10];
              }

              else
              {
                v88 = APSIsDemoModeEnabled();
                v58 = *MEMORY[0x277CBED28];
                v59 = *MEMORY[0x277CBED10];
                v60 = *MEMORY[0x277CBED28];
                if (!v88)
                {
LABEL_105:
                  CFDictionarySetValue(v49, @"fullAWDLAllowed", v60);
                  v61 = *(DerivedStorage + 396);
                  if (APSIsDemoModeEnabled())
                  {
                    v62 = 1;
                  }

                  else
                  {
                    v62 = v61 == 13;
                  }

                  if (v62 || v61 == 7)
                  {
                    v64 = v59;
                  }

                  else
                  {
                    v64 = v58;
                  }

                  CFDictionarySetValue(v49, @"partialAWDLAllowed", v64);
                  if (APSIsOpenNANSenderEnabled())
                  {
                    v65 = v58;
                  }

                  else
                  {
                    v65 = v59;
                  }

                  CFDictionarySetValue(v49, @"openNANAllowed", v65);
                  v66 = *(DerivedStorage + 396);
                  v67 = APSHasNANSupport();
                  v68 = v59;
                  if (!v67)
                  {
                    goto LABEL_131;
                  }

                  if (APSIsLowLatencyAudioSendingEnabled())
                  {
                    v70 = 1;
                  }

                  else
                  {
                    if (APSSettingsIsFeatureEnabled())
                    {
                      v69 = v66 == 7;
                    }

                    else
                    {
                      v69 = 0;
                    }

                    v70 = v69;
                  }

                  if (IsAppleInternalBuild())
                  {
                    v71 = APSSettingsGetIntWithDefault();
                    v68 = v59;
                    if (!v71)
                    {
LABEL_131:
                      CFDictionarySetValue(v49, @"securePartialNANAllowed", v68);
                      FigCFDictionarySetValue();
                      if (APSCanSendToAltReceiver())
                      {
                        v72 = v58;
                      }

                      else
                      {
                        v72 = v59;
                      }

                      CFDictionarySetValue(v49, @"browseForAltReceiver", v72);
                      v73 = APBrowserControllerCreate(v2, v49, (DerivedStorage + 312));
                      if (v73)
                      {
                        v41 = v73;
                        manager_create_cold_22();
                      }

                      else
                      {
                        v74 = APBrowserControllerSetEventHandlers(*(DerivedStorage + 312), manager_handleDevicePresenceChanged, manager_handleBrowserAddOrUpdateEvent, manager_handleBrowserRemoveEvent, manager_handleDiscoveryModeChanged, v94);
                        if (v74)
                        {
                          v41 = v74;
                          manager_create_cold_23();
                        }

                        else
                        {
                          v75 = AirPlayDebugIPCEnableForEndpointManager(v94);
                          if (v75)
                          {
                            v41 = v75;
                            manager_create_cold_24();
                          }

                          else
                          {
                            *(DerivedStorage + 16) = -1;
                            *(DerivedStorage + 24) = -1;
                            manager_registerForNotifications(v94);
                            manager_handlePreferencesChanged(v94, 1);
                            v76 = APSXPCServerAddCommandHandler();
                            if (v76)
                            {
                              v41 = v76;
                              manager_create_cold_25();
                            }

                            else
                            {
                              v77 = APSXPCServerAddCommandHandler();
                              if (v77)
                              {
                                v41 = v77;
                                manager_create_cold_26();
                              }

                              else
                              {
                                CMNotificationCenterGetDefaultLocalCenter();
                                FigNotificationCenterAddWeakListener();
                                v78 = APSXPCServerAddCommandHandler();
                                if (v78)
                                {
                                  v41 = v78;
                                  manager_create_cold_27();
                                }

                                else
                                {
                                  CMNotificationCenterGetDefaultLocalCenter();
                                  FigNotificationCenterAddWeakListener();
                                  v79 = APSXPCServerAddCommandHandler();
                                  if (v79)
                                  {
                                    v41 = v79;
                                    manager_create_cold_28();
                                  }

                                  else
                                  {
                                    v80 = APSXPCServerAddCommandHandler();
                                    if (v80)
                                    {
                                      v41 = v80;
                                      manager_create_cold_29();
                                    }

                                    else
                                    {
                                      v81 = APSXPCServerAddCommandHandler();
                                      if (v81)
                                      {
                                        v41 = v81;
                                        manager_create_cold_30();
                                      }

                                      else
                                      {
                                        if (introspector_getCollectionOfEndpointManagers_once != -1)
                                        {
                                          manager_create_cold_31();
                                        }

                                        if (introspector_getCollectionOfEndpointManagers_coll)
                                        {
                                          v82 = *introspector_getCollectionOfEndpointManagers_coll;
                                          v91[0] = MEMORY[0x277D85DD0];
                                          v91[1] = 3221225472;
                                          v91[2] = __manager_create_block_invoke_3;
                                          v91[3] = &__block_descriptor_48_e5_v8__0l;
                                          v91[4] = introspector_getCollectionOfEndpointManagers_coll;
                                          v91[5] = v94;
                                          dispatch_sync(v82, v91);
                                        }

                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        v83 = APSXPCServerAddCommandHandler();
                                        if (v83)
                                        {
                                          v41 = v83;
                                          manager_create_cold_32();
                                        }

                                        else
                                        {
                                          if (*(DerivedStorage + 320))
                                          {
                                            CMNotificationCenterGetDefaultLocalCenter();
                                            FigNotificationCenterAddWeakListener();
                                          }

                                          FigInstallSysdiagnoseBlock();
                                          UGLRCServer = manager_createUGLRCServer();
                                          if (UGLRCServer)
                                          {
                                            v41 = UGLRCServer;
                                            manager_create_cold_33();
                                          }

                                          else
                                          {
                                            if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
                                            {
                                              manager_create_cold_34();
                                            }

                                            v41 = 0;
                                            *v90 = v94;
                                            v94 = 0;
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

                      CFRelease(v49);
                      goto LABEL_156;
                    }
                  }

                  else
                  {
                    v68 = v59;
                    if (!v70)
                    {
                      goto LABEL_131;
                    }
                  }

                  v68 = v58;
                  goto LABEL_131;
                }
              }

              v60 = v59;
              goto LABEL_105;
            }

            v89 = 7493;
          }

          else
          {
            v89 = 7490;
          }

          manager_create_cold_21((v52 + 264), v89, v52);
          goto LABEL_101;
        }

        manager_create_cold_35();
        goto LABEL_201;
      }
    }

    else if (!v45)
    {
      goto LABEL_87;
    }

    dispatch_release(v45);
    goto LABEL_87;
  }

  v42 = APSNetworkClockNTPServerCreate();
  if (!v42)
  {
    goto LABEL_73;
  }

  v41 = v42;
  manager_create_cold_17();
LABEL_156:
  v85 = v94;
  if (v94)
  {
    v86 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v86)
    {
      v86(v85);
    }

    CFRelease(v94);
  }

  return v41;
}

uint64_t __APEndpointManagerGetShared_block_invoke()
{
  result = manager_create(&APEndpointManagerGetShared_sAPEndpointManager);
  gCreationErr_0 = result;
  return result;
}

uint64_t APEndpointManagerUpdateInternalClientNeedingDiscovery(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (*(DerivedStorage + 312))
    {
      v4 = APBrowserControllerRegisterInternalClientNeedsDiscovery();
      if (v4)
      {
        APEndpointManagerUpdateInternalClientNeedingDiscovery_cold_1();
      }
    }

    else
    {
      APEndpointManagerUpdateInternalClientNeedingDiscovery_cold_2();
      return 4294950582;
    }
  }

  else
  {
    APEndpointManagerUpdateInternalClientNeedingDiscovery_cold_3();
    return 4294950586;
  }

  return v4;
}

void manager_updateExposedLocalEndpoint(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (FigCFEqual())
  {
    manager_updateExposedLocalEndpoint_cold_1();
  }

  else
  {
    if (*(DerivedStorage + 256))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (manager_exposedLocalEndpointIsPersistentlyConnectedCluster())
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        if (*(DerivedStorage + 396) == 4)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListener();
        }
      }

      v4 = *(DerivedStorage + 256);
    }

    else
    {
      v4 = 0;
    }

    *(DerivedStorage + 256) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (*(DerivedStorage + 256))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      if (manager_exposedLocalEndpointIsPersistentlyConnectedCluster())
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        if (*(DerivedStorage + 396) == 4)
        {
          CMNotificationCenterGetDefaultLocalCenter();

          FigNotificationCenterAddWeakListener();
        }
      }
    }
  }
}

uint64_t __manager_create_block_invoke_2()
{
  mach_absolute_time();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    __manager_create_block_invoke_2_cold_1();
  }

  FigPWDKeyExchangeSenderInitializeAMS();
  result = mach_absolute_time();
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t manager_registerForNotifications(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __manager_registerForNotifications_block_invoke;
  handler[3] = &__block_descriptor_40_e8_v12__0i8l;
  handler[4] = a1;
  notify_register_dispatch("com.apple.airplay.prefsChanged", (DerivedStorage + 16), v3, handler);
  v4 = *(DerivedStorage + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __manager_registerForNotifications_block_invoke_2;
  v11[3] = &__block_descriptor_40_e8_v12__0i8l;
  v11[4] = a1;
  result = notify_register_dispatch("com.apple.airplay.stopSenderSession", (DerivedStorage + 24), v4, v11);
  v6 = *(DerivedStorage + 396);
  if (v6 <= 0xD && ((1 << v6) & 0x2090) != 0 && !*(DerivedStorage + 3))
  {
    v7 = *(DerivedStorage + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __manager_registerForNotifications_block_invoke_3;
    v10[3] = &__block_descriptor_48_e8_v12__0i8l;
    v10[4] = DerivedStorage;
    v10[5] = a1;
    result = notify_register_dispatch("com.apple.airplay.active", (DerivedStorage + 20), v7, v10);
    v6 = *(DerivedStorage + 396);
  }

  if (v6 == 7)
  {
    v8 = *(DerivedStorage + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __manager_registerForNotifications_block_invoke_4;
    v9[3] = &__block_descriptor_48_e8_v12__0i8l;
    v9[4] = DerivedStorage;
    v9[5] = a1;
    return notify_register_dispatch("kAirPlayWHANotification_GroupMemberInterruptedByPreWHASender", (DerivedStorage + 28), v8, v9);
  }

  return result;
}

void manager_handlePreferencesChanged(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  APSSettingsSynchronize();
  FigSimpleMutexLock();
  if (APSIsLocalClusterWithStaticLeadershipEnabled())
  {
    v5 = *(DerivedStorage + 396);
    if (v5 != 100)
    {
      goto LABEL_22;
    }

    v6 = *MEMORY[0x277CBECE8];
    if (APAdvertiserInfoCreate())
    {
      manager_handlePreferencesChanged_cold_1();
    }

    else
    {
      v7 = APSCopyDeviceName();
      if (v7)
      {
        v8 = v7;
        APSCopyPersistentGroupInfo();
        Mutable = APSFeaturesCreateMutable();
        if (Mutable)
        {
          APSFeaturesSetFeature();
          if (APAdvertiserInfoSetProperty())
          {
            manager_handlePreferencesChanged_cold_8();
          }

          else if (APAdvertiserInfoSetProperty())
          {
            manager_handlePreferencesChanged_cold_9();
          }

          else if (CFObjectSetPropertyInt64())
          {
            manager_handlePreferencesChanged_cold_10();
          }

          else
          {
            if (!APAdvertiserInfoSetProperty())
            {
              v10 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (v10)
              {
                FigCFDictionarySetValue();
                if (APAdvertiserInfoCopyAirPlayData())
                {
                  manager_handlePreferencesChanged_cold_12();
                }

                else
                {
                  FigCFDictionarySetValue();
                  manager_updateLocalInfoDict(a1, v10);
                  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }
                }
              }

              else
              {
                manager_handlePreferencesChanged_cold_13();
              }

              goto LABEL_16;
            }

            manager_handlePreferencesChanged_cold_11();
          }
        }

        else
        {
          manager_handlePreferencesChanged_cold_14();
        }

        v10 = 0;
LABEL_16:
        CFRelease(v8);
LABEL_17:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_21;
      }

      manager_handlePreferencesChanged_cold_15();
    }

    v10 = 0;
    Mutable = 0;
    goto LABEL_17;
  }

LABEL_21:
  v5 = *(DerivedStorage + 396);
LABEL_22:
  v11 = v5 > 0xD;
  v12 = (1 << v5) & 0x2090;
  if (!v11 && v12 != 0)
  {
    *(DerivedStorage + 120) = APSSettingsGetIntWithDefault() != 0;
  }

  APSCopyTightSyncInfo();
  v14 = (DerivedStorage + 136);
  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handlePreferencesChanged_cold_16();
    }

    v15 = *v14;
    *v14 = 0;
    if (v15)
    {
      CFRelease(v15);
    }

    if (!a2 && !*v14)
    {
      v16 = *(DerivedStorage + 152);
      if (v16)
      {
        dispatch_source_cancel(*(DerivedStorage + 152));
        dispatch_release(v16);
        *(DerivedStorage + 152) = 0;
      }
    }
  }

  v17 = APSSettingsCopyValue();
  v18 = FigCFEqual();
  if (!v18)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handlePreferencesChanged_cold_17();
    }

    v19 = *(DerivedStorage + 104);
    *(DerivedStorage + 104) = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  v20 = APSSettingsCopyValue();
  if (FigCFEqual())
  {
    if (v18)
    {
      if (!a2)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }
  }

  else
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handlePreferencesChanged_cold_18();
    }

    v21 = *(DerivedStorage + 112);
    *(DerivedStorage + 112) = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  manager_updateAllowedDevices(a1);
  manager_updateAllowedDevices(a1);
  if (!a2)
  {
    goto LABEL_59;
  }

LABEL_57:
  v22 = *(DerivedStorage + 296);
  if (v22)
  {
    manager_updateEndpointClusterMembershipIfNeeded(a1, v22, 0, 0);
  }

LABEL_59:
  FigSimpleMutexUnlock();
  if (v17)
  {
    CFRelease(v17);
  }

  if (v20)
  {
    CFRelease(v20);
  }
}

uint64_t manager_handleActivateEndpointCommand(uint64_t a1, const void *a2, void *a3)
{
  if (a2)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleActivateEndpointCommand_cold_1();
    }

    if (IsAppleInternalBuild() && CFDictionaryGetInt64())
    {
      TestInfoDictionary = APAdvertiserInfoCreateTestInfoDictionary();
      CFDictionaryMergeDictionary();
    }

    else
    {
      TestInfoDictionary = CFRetain(a2);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    *a3 = 0;
    if (TestInfoDictionary)
    {
      CFRelease(TestInfoDictionary);
    }

    return 0;
  }

  else
  {
    manager_handleActivateEndpointCommand_cold_2();
    return 4294950586;
  }
}

void manager_handleCreateEndpointWithEndpointInfoNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize())
    {
      manager_handleCreateEndpointWithEndpointInfoNotification_cold_1();
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (CFDictionaryContainsKey(a5, @"NetworkAddress"))
  {
    v17 = 0;
    v7 = *MEMORY[0x277CBECE8];
    v18 = APAdvertiserInfoCreate();
    if (v18)
    {
      manager_handleCreateEndpointWithEndpointInfoNotification_cold_2();
      v16 = 0;
      v8 = 0;
    }

    else
    {
      CFDictionaryApplyBlock();
      v8 = CFDictionaryCopyCString();
      TextToHardwareAddressScalar();
      if (CFDictionaryGetValue(a5, @"NetworkAddress"))
      {
        Int64 = CFDictionaryGetInt64();
        v10 = CFDictionaryGetInt64();
        v11 = CFDictionaryGetInt64();
        Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetInt64();
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4CF8], 0);
        v13 = *MEMORY[0x277CBED28];
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D08], *MEMORY[0x277CBED28]);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D10], v13);
        if (v11)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 == 0;
        }

        if (v14)
        {
          v15 = *MEMORY[0x277CBED10];
        }

        else
        {
          v15 = v13;
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D00], v15);
        v18 = APSNetworkAddressCreateWithString();
        if (v18)
        {
          manager_handleCreateEndpointWithEndpointInfoNotification_cold_4();
        }

        else
        {
          if (Int64)
          {
            APSNetworkAddressSetPort();
          }

          v18 = APTransportDeviceCreateWithNetworkAddress();
          if (!v18)
          {
            v18 = APEndpointCreateWithTransportDevice(v7, 0, 0, a2, 0, &v17);
            if (v18)
            {
              APSLogErrorAt();
              v16 = v17;
              free(v8);
              if (v16)
              {
                CFRelease(v16);
                v16 = 0;
              }

              if (!Mutable)
              {
                goto LABEL_25;
              }

              goto LABEL_24;
            }

            v16 = v17;
            v17 = 0;
LABEL_23:
            free(v8);
            if (!Mutable)
            {
LABEL_25:
              if (v18)
              {
                manager_handleCreateEndpointWithEndpointInfoNotification_cold_7();
              }

              else if (manager_injectEndpoint(a2, a5, 0, v16))
              {
                manager_handleCreateEndpointWithEndpointInfoNotification_cold_8();
              }

              if (v16)
              {
                CFRelease(v16);
              }

              return;
            }

LABEL_24:
            CFRelease(Mutable);
            goto LABEL_25;
          }

          manager_handleCreateEndpointWithEndpointInfoNotification_cold_5();
        }

        v16 = 0;
        goto LABEL_23;
      }

      manager_handleCreateEndpointWithEndpointInfoNotification_cold_6(&v18);
      v16 = 0;
    }

    Mutable = 0;
    goto LABEL_23;
  }

  if (APBrowserControllerDiscoverAndInjectEndpoint())
  {
    manager_handleCreateEndpointWithEndpointInfoNotification_cold_9();
  }
}

uint64_t manager_handleClearEndpointCommand(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleClearEndpointCommand_cold_1();
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else if (a2)
  {
LABEL_5:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    result = 0;
    *a3 = 0;
    return result;
  }

  manager_handleClearEndpointCommand_cold_2();
  return 4294950586;
}

void manager_handleClearEndpointWithEndpointIDNotification(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  FigSimpleMutexLock();
  v3 = CFDictionaryCopyCString();
  if (v10)
  {
    APSLogErrorAt();
  }

  else
  {
    TextToHardwareAddressScalar();
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFDictionaryApplyBlock();
    v4 = v7;
    if (v7[3])
    {
      if (gLogCategory_APEndpointManager <= 50)
      {
        if (gLogCategory_APEndpointManager != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
        {
          LogPrintF();
          v4 = v7;
        }
      }

      manager_removeEndpointIfNeeded(a2, v4[3], 1);
    }
  }

  FigSimpleMutexUnlock();
  free(v3);
  _Block_object_dispose(&v6, 8);
}

void sub_2220B1DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t manager_handleUpdateLocalEndpointAuthStringCommand(uint64_t a1, const __CFDictionary *Value, void *a3)
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"AuthString");
  }

  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v6 = 0;
  }

  else
  {
    v8 = *(DerivedStorage + 248);
    *(DerivedStorage + 248) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v6 = FigCFDictionaryCopyArrayOfValues();
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v6, v11);
        if (APSGetFBOPropertyInt64())
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_7;
        }
      }

      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(CMBaseObject, *MEMORY[0x277CC1488], Value);
      }
    }
  }

LABEL_7:
  FigSimpleMutexUnlock();
  *a3 = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t manager_handleUpdateLocalInfoDictCommand(int a1, CFDictionaryRef theDict, void *a3)
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  v5 = APEndpointManagerGetShared_sAPEndpointManager;
  *a3 = 0;
  Value = CFDictionaryGetValue(theDict, @"InfoDict");
  if (MEMORY[0x223DAEBE0]())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 376))
    {
      *(DerivedStorage + 376) = os_transaction_create();
    }
  }

  manager_updateLocalInfoDict(v5, Value);
  return 0;
}

uint64_t manager_handleDiscoveryBrokerRequest(uint64_t a1, uint64_t a2, void *a3)
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager > 30 || gLogCategory_APEndpointManager == -1 && !_LogCategory_Initialize())
  {
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_29:
    manager_handleDiscoveryBrokerRequest_cold_9();
LABEL_36:
    result = 4294960591;
    goto LABEL_21;
  }

  manager_handleDiscoveryBrokerRequest_cold_2();
  if (!a2)
  {
    goto LABEL_29;
  }

LABEL_7:
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    manager_handleDiscoveryBrokerRequest_cold_8();
    goto LABEL_36;
  }

  v6 = TypedValue;
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (!v7)
  {
    manager_handleDiscoveryBrokerRequest_cold_7();
    goto LABEL_36;
  }

  v8 = v7;
  if (CFEqual(v6, @"Authenticate"))
  {
    CFStringGetTypeID();
    if (CFDictionaryGetTypedValue())
    {
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        manager_handleDiscoveryBrokerRequest_cold_3();
      }

      CFRetain(v8);
      APBrokerManagerAuthenticateBrokerGroup();
LABEL_20:
      result = 0;
      goto LABEL_21;
    }

    manager_handleDiscoveryBrokerRequest_cold_4();
    goto LABEL_36;
  }

  if (CFEqual(v6, @"GetInfo"))
  {
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleDiscoveryBrokerRequest_cold_5();
    }

    CFRetain(v8);
    APBrokerManagerGetInfoFromBrokerGroup();
    goto LABEL_20;
  }

  if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleDiscoveryBrokerRequest_cold_6();
  }

  result = 4294960561;
LABEL_21:
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

void manager_connectToAddressIntrospectorCmd(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 < 2)
  {
LABEL_7:
    FPrintF();
    return;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *(a4 + 8), 0x8000100u);
  TestInfoDictionary = APAdvertiserInfoCreateTestInfoDictionary();
  CFDictionarySetValue(TestInfoDictionary, *MEMORY[0x277CE4B90], v4);
  CFDictionarySetValue(TestInfoDictionary, @"NetworkAddress", v4);
  if (CFDictionaryCreateFromNameTypeValueArgList())
  {
    FPrintF();
    if (v4)
    {
      CFRelease(v4);
    }

    if (TestInfoDictionary)
    {
      CFRelease(TestInfoDictionary);
    }

    goto LABEL_7;
  }

  CFDictionaryMergeDictionary();
  FPrintF();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v4)
  {
    CFRelease(v4);
  }

  if (TestInfoDictionary)
  {
    CFRelease(TestInfoDictionary);
  }
}

void manager_introspector_listEndpoints(uint64_t a1, uint64_t a2, int a3, char **a4)
{
  v40[0] = 0;
  if (!a1)
  {
    manager_introspector_listEndpoints_cold_3();
    return;
  }

  v8 = 0;
  for (i = 1; ; i = 0)
  {
    do
    {
      v10 = v8;
      v11 = getopt(a3, a4, "va");
      v8 = 1;
    }

    while (v11 == 118);
    if (v11 == -1)
    {
      break;
    }

    if (v11 != 97)
    {
      goto LABEL_11;
    }

    v8 = v10;
  }

  if (*MEMORY[0x277D85E78] < a3)
  {
LABEL_11:
    FPrintF();
    FPrintF();
    FPrintF();

    FPrintF();
    return;
  }

  if (i)
  {
    v12 = manager_copyEndpoints(a1, 0);
    v40[0] = v12;
    if (!v12)
    {
      manager_introspector_listEndpoints_cold_2();
      return;
    }

    goto LABEL_17;
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14 && !v14(CMBaseObject, *MEMORY[0x277CC0C30], *MEMORY[0x277CBECE8], v40))
  {
    v12 = v40[0];
    if (!v40[0])
    {
LABEL_49:
      FPrintF();
      goto LABEL_50;
    }

LABEL_17:
    v15 = CFGetTypeID(v12);
    if (v15 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v40[0]);
      FPrintF();
      if (Count >= 1)
      {
        v17 = 0;
        v34 = *MEMORY[0x277CC12C8];
        v35 = *MEMORY[0x277CBECE8];
        v33 = *MEMORY[0x277CC1368];
        v32 = *MEMORY[0x277CC1450];
        v31 = *MEMORY[0x277CC14E8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v40[0], v17);
          if (APSGetFBOPropertyInt64())
          {
            v38 = 0;
            v39 = 0;
            v37 = 0;
            cf = 0;
            APSGetFBOPropertyInt64();
            v19 = FigEndpointGetCMBaseObject();
            v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v20)
            {
              v20(v19, v34, v35, &v39);
            }

            v21 = FigEndpointGetCMBaseObject();
            v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v22)
            {
              v22(v21, v33, v35, &v38);
            }

            v23 = FigEndpointGetCMBaseObject();
            v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v24)
            {
              v24(v23, v32, v35, &v37);
            }

            APSGetFBOPropertyInt64();
            v25 = FigEndpointGetCMBaseObject();
            v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v26)
            {
              v26(v25, v31, v35, &cf);
            }

            if (cf && (v27 = CFGetTypeID(cf), v27 == CFArrayGetTypeID()))
            {
              v28 = CFArrayGetCount(cf);
            }

            else
            {
              v28 = 0;
            }

            FPrintF();
            if (v10)
            {
              FPrintF();
            }

            FPrintF();
            if (v28 >= 1)
            {
              for (j = 0; j != v28; ++j)
              {
                v30 = CFArrayGetValueAtIndex(cf, j);
                manager_introspector_showEndpointInfo(a2, 2, v30, v10);
              }
            }

            if (v39)
            {
              CFRelease(v39);
            }

            if (v38)
            {
              CFRelease(v38);
            }

            if (v37)
            {
              CFRelease(v37);
            }

            if (cf)
            {
              CFRelease(cf);
            }
          }

          else
          {
            manager_introspector_showEndpointInfo(a2, 0, ValueAtIndex, v10);
          }

          ++v17;
        }

        while (v17 != Count);
      }

      goto LABEL_50;
    }

    goto LABEL_49;
  }

  manager_introspector_listEndpoints_cold_1();
LABEL_50:
  if (v40[0])
  {
    CFRelease(v40[0]);
  }
}

void manager_introspector_copyProperty(uint64_t a1, int a2, int a3, char **a4)
{
  cf = 0;
  v31 = 0;
  if (!a1)
  {
    manager_introspector_copyProperty_cold_2();
    v25 = 0;
    goto LABEL_44;
  }

  while (1)
  {
    v7 = getopt(a3, a4, "rw");
    if (v7 != 114)
    {
      break;
    }

    v8 = (&v31 + 1);
LABEL_6:
    *v8 = 1;
  }

  if (v7 == 119)
  {
    HIBYTE(v31) = 1;
    v8 = &v31;
    goto LABEL_6;
  }

  if (v7 != -1 || (v9 = MEMORY[0x277D85E78], v10 = *MEMORY[0x277D85E78], v10 >= a3))
  {
    FPrintF();
LABEL_12:
    FPrintF();
    manager_introspector_printRWUsage();
    FPrintF();

    FPrintF();
    return;
  }

  v11 = a4[v10];
  v12 = strncmp(v11, "desc@", 5uLL);
  v13 = *MEMORY[0x277CBECE8];
  if (v12)
  {
    v14 = *MEMORY[0x277CBECE8];
    v15 = v11;
  }

  else
  {
    v15 = v11 + 5;
    v14 = *MEMORY[0x277CBECE8];
  }

  v16 = CFStringCreateWithCString(v14, v15, 0x8000100u);
  v17 = *v9 + 1;
  *v9 = v17;
  if (v17 >= a3)
  {
    FPrintF();
    v18 = 0;
LABEL_63:
    if (v16)
    {
      CFRelease(v16);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    goto LABEL_12;
  }

  v18 = CFStringCreateWithCString(v13, a4[v17], 0x8000100u);
  v19 = *v9 + 1;
  *v9 = v19;
  if (v19 < a3)
  {
    FPrintF();
    goto LABEL_63;
  }

  if (!FigCFEqual())
  {
    v22 = manager_introspector_copyMatchingEndpoint(a1, v16, HIBYTE(v31), v31);
    if (v22)
    {
      if (v12)
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v24 && !v24(CMBaseObject, v18, v13, &cf))
        {
LABEL_27:
          v25 = 0;
          goto LABEL_28;
        }
      }

      else
      {
        v26 = FigEndpointGetCMBaseObject();
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v27 && !v27(v26, @"EndpointDescription", v13, &cf))
        {
          if (cf)
          {
            v28 = CFGetTypeID(cf);
            if (v28 == APEndpointDescriptionGetTypeID())
            {
              v25 = cf;
              cf = 0;
              v29 = APEndpointDescriptionGetCMBaseObject(v25);
              v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v30)
              {
                v30(v29, v18, v13, &cf);
              }

LABEL_28:
              FPrintF();
              if (v16)
              {
                goto LABEL_39;
              }

              goto LABEL_40;
            }
          }

          if (gLogCategory_APEndpointManager <= 60)
          {
            if (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize())
            {
              LogPrintF();
            }

            if (gLogCategory_APEndpointManager <= 60 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
            {
              manager_introspector_copyProperty_cold_1();
            }
          }
        }
      }
    }

    FPrintF();
    goto LABEL_38;
  }

  v20 = FigEndpointManagerGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v21 && !v21(v20, v18, v13, &cf))
  {
    v22 = 0;
    goto LABEL_27;
  }

  FPrintF();
  v22 = 0;
LABEL_38:
  v25 = 0;
  if (v16)
  {
LABEL_39:
    CFRelease(v16);
  }

LABEL_40:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_44:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }
}

void manager_introspector_setProperty(uint64_t a1, int a2, int a3, char **a4)
{
  cf = 0;
  v21 = 0;
  if (!a1)
  {
    manager_introspector_setProperty_cold_1();
    goto LABEL_26;
  }

  while (1)
  {
    v7 = getopt(a3, a4, "rw");
    if (v7 != 114)
    {
      break;
    }

    v8 = (&v21 + 1);
LABEL_6:
    *v8 = 1;
  }

  if (v7 == 119)
  {
    HIBYTE(v21) = 1;
    v8 = &v21;
    goto LABEL_6;
  }

  if (v7 != -1 || (v9 = MEMORY[0x277D85E78], v10 = *MEMORY[0x277D85E78], v10 >= a3))
  {
    FPrintF();
LABEL_17:
    if (cf)
    {
      CFRelease(cf);
    }

    FPrintF();
    manager_introspector_printRWUsage();
    FPrintF();
    return;
  }

  v11 = *MEMORY[0x277CBECE8];
  v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v10], 0x8000100u);
  v13 = *v9 + 1;
  *v9 = v13;
  if (v13 >= a3)
  {
    FPrintF();
    v14 = 0;
LABEL_33:
    if (v12)
    {
      CFRelease(v12);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_17;
  }

  v14 = CFStringCreateWithCString(v11, a4[v13], 0x8000100u);
  v15 = *v9 + 1;
  *v9 = v15;
  if (v15 >= a3 || CFCreateObjectFromString() || (v16 = *v9 + 1, *v9 = v16, v16 < a3))
  {
    FPrintF();
    goto LABEL_33;
  }

  v17 = manager_introspector_copyMatchingEndpoint(a1, v12, HIBYTE(v21), v21);
  if (v17)
  {
    v18 = cf;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v20)
    {
      v20(CMBaseObject, v14, v18);
    }
  }

  FPrintF();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_introspector_copySubEndpointProperty(uint64_t a1, int a2, int a3, char **a4)
{
  cf = 0;
  v22 = 0;
  if (!a1)
  {
    manager_introspector_copySubEndpointProperty_cold_1();
    goto LABEL_29;
  }

  while (1)
  {
    v7 = getopt(a3, a4, "rw");
    if (v7 != 114)
    {
      break;
    }

    v8 = (&v22 + 1);
LABEL_6:
    *v8 = 1;
  }

  if (v7 == 119)
  {
    HIBYTE(v22) = 1;
    v8 = &v22;
    goto LABEL_6;
  }

  if (v7 != -1 || (v9 = MEMORY[0x277D85E78], v10 = *MEMORY[0x277D85E78], v10 >= a3))
  {
    FPrintF();
LABEL_18:
    FPrintF();

    manager_introspector_printRWUsage();
    return;
  }

  v11 = *MEMORY[0x277CBECE8];
  v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v10], 0x8000100u);
  v13 = *v9 + 1;
  *v9 = v13;
  if (v13 >= a3)
  {
    FPrintF();
    v14 = 0;
LABEL_37:
    v16 = 0;
LABEL_39:
    if (v12)
    {
      CFRelease(v12);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    goto LABEL_18;
  }

  v14 = CFStringCreateWithCString(v11, a4[v13], 0x8000100u);
  v15 = *v9 + 1;
  *v9 = v15;
  if (v15 >= a3)
  {
    FPrintF();
    goto LABEL_37;
  }

  v16 = CFStringCreateWithCString(v11, a4[v15], 0x8000100u);
  v17 = *v9 + 1;
  *v9 = v17;
  if (v17 < a3)
  {
    FPrintF();
    goto LABEL_39;
  }

  v18 = manager_introspector_copyMatchingEndpoint(a1, v12, HIBYTE(v22), v22);
  if (v18)
  {
    FigEndpointSubEndpointSupportProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v20 = *(ProtocolVTable + 16);
      if (v20)
      {
        v21 = *(v20 + 8);
        if (v21)
        {
          v21(v18, v14, v16, v11, &cf);
        }
      }
    }
  }

  FPrintF();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_introspector_setSubEndpointProperty(uint64_t a1, int a2, int a3, char **a4)
{
  cf = 0;
  v24 = 0;
  if (!a1)
  {
    manager_introspector_setSubEndpointProperty_cold_1();
    goto LABEL_31;
  }

  while (1)
  {
    v7 = getopt(a3, a4, "rw");
    if (v7 != 114)
    {
      break;
    }

    v8 = (&v24 + 1);
LABEL_6:
    *v8 = 1;
  }

  if (v7 == 119)
  {
    HIBYTE(v24) = 1;
    v8 = &v24;
    goto LABEL_6;
  }

  if (v7 != -1 || (v9 = MEMORY[0x277D85E78], v10 = *MEMORY[0x277D85E78], v10 >= a3))
  {
    FPrintF();
LABEL_20:
    if (cf)
    {
      CFRelease(cf);
    }

    FPrintF();
    manager_introspector_printRWUsage();
    FPrintF();
    return;
  }

  v11 = *MEMORY[0x277CBECE8];
  v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v10], 0x8000100u);
  v13 = *v9 + 1;
  *v9 = v13;
  if (v13 >= a3)
  {
    FPrintF();
    v14 = 0;
LABEL_39:
    v16 = 0;
LABEL_41:
    if (v12)
    {
      CFRelease(v12);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    goto LABEL_20;
  }

  v14 = CFStringCreateWithCString(v11, a4[v13], 0x8000100u);
  v15 = *v9 + 1;
  *v9 = v15;
  if (v15 >= a3)
  {
    FPrintF();
    goto LABEL_39;
  }

  v16 = CFStringCreateWithCString(v11, a4[v15], 0x8000100u);
  v17 = *v9 + 1;
  *v9 = v17;
  if (v17 >= a3 || CFCreateObjectFromString() || (v18 = *v9 + 1, *v9 = v18, v18 < a3))
  {
    FPrintF();
    goto LABEL_41;
  }

  v19 = manager_introspector_copyMatchingEndpoint(a1, v12, HIBYTE(v24), v24);
  if (v19)
  {
    v20 = cf;
    FigEndpointSubEndpointSupportProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v22 = *(ProtocolVTable + 16);
      if (v22)
      {
        v23 = *(v22 + 16);
        if (v23)
        {
          v23(v19, v14, v16, v20);
        }
      }
    }
  }

  FPrintF();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_introspector_sendCommand(uint64_t a1, int a2, int a3, char **a4)
{
  cf = 0;
  v18 = 0;
  if (!a1)
  {
    manager_introspector_sendCommand_cold_1();
    goto LABEL_25;
  }

  while (1)
  {
    v7 = getopt(a3, a4, "rw");
    if (v7 != 114)
    {
      break;
    }

    v8 = (&v18 + 1);
LABEL_6:
    *v8 = 1;
  }

  if (v7 == 119)
  {
    HIBYTE(v18) = 1;
    v8 = &v18;
    goto LABEL_6;
  }

  if (v7 != -1 || (v9 = MEMORY[0x277D85E78], v10 = *MEMORY[0x277D85E78], v10 >= a3))
  {
    FPrintF();
LABEL_16:
    if (cf)
    {
      CFRelease(cf);
    }

    FPrintF();
    manager_introspector_printRWUsage();
    FPrintF();
    FPrintF();
    return;
  }

  v11 = *MEMORY[0x277CBECE8];
  v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v10], 0x8000100u);
  v13 = *v9 + 1;
  *v9 = v13;
  if (v13 >= a3)
  {
    FPrintF();
    v14 = 0;
LABEL_32:
    if (v12)
    {
      CFRelease(v12);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_16;
  }

  v14 = CFStringCreateWithCString(v11, a4[v13], 0x8000100u);
  ++*v9;
  if (CFDictionaryCreateFromNameTypeValueArgList())
  {
    FPrintF();
    goto LABEL_32;
  }

  v15 = manager_introspector_copyMatchingEndpoint(a1, v12, HIBYTE(v18), v18);
  if (v15)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v16 = cf;
      v17 = *(*(CMBaseObjectGetVTable() + 24) + 72);
      if (v17)
      {
        v17(v15, v14, v16, 0, 0);
      }
    }
  }

  FPrintF();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_introspector_activateEndpoint(uint64_t a1, int a2, int a3, char **a4)
{
  cf = 0;
  v25 = 0;
  if (!a1)
  {
    manager_introspector_activateEndpoint_cold_1();
    goto LABEL_33;
  }

  while (1)
  {
    v7 = getopt(a3, a4, "rw");
    if (v7 != 114)
    {
      break;
    }

    v8 = (&v25 + 1);
LABEL_6:
    *v8 = 1;
  }

  if (v7 == 119)
  {
    HIBYTE(v25) = 1;
    v8 = &v25;
    goto LABEL_6;
  }

  if (v7 != -1 || (v9 = MEMORY[0x277D85E78], v10 = *MEMORY[0x277D85E78], v10 >= a3))
  {
    FPrintF();
LABEL_36:
    if (cf)
    {
      CFRelease(cf);
    }

    FPrintF();
    manager_introspector_printRWUsage();
    FPrintF();
    FPrintF();
    FPrintF();
    FPrintF();
    FPrintF();
    return;
  }

  v11 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v10], 0x8000100u);
  v12 = *v9;
  v13 = *v9 + 1;
  *v9 = v13;
  if (v13 >= a3 || (v14 = a4[v13], *v9 = v12 + 2, CFDictionaryCreateFromNameTypeValueArgList()))
  {
    FPrintF();
    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_36;
  }

  v15 = manager_introspector_copyMatchingEndpoint(a1, v11, HIBYTE(v25), v25);
  if (v15)
  {
    v16 = strlen(v14);
    if (v16)
    {
      v17 = 0;
      do
      {
        v19 = *v14++;
        v18 = v19;
        v20 = v17 | 0x10;
        v21 = v17 | 4;
        v22 = v17 | 1;
        if (v19 != 115)
        {
          v22 = v17;
        }

        if (v18 != 112)
        {
          v21 = v22;
        }

        if (v18 != 99)
        {
          v20 = v21;
        }

        v23 = v17 | 2;
        v24 = v17 | 8;
        if (v18 != 98)
        {
          v24 = v17;
        }

        if (v18 != 97)
        {
          v23 = v24;
        }

        if (v18 <= 98)
        {
          v17 = v23;
        }

        else
        {
          v17 = v20;
        }

        --v16;
      }

      while (v16);
    }

    FigEndpointActivateSync();
  }

  FPrintF();
  if (v11)
  {
    CFRelease(v11);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_introspector_deactivateEndpoint(uint64_t a1, int a2, int a3, char **a4)
{
  v13 = 0;
  if (!a1)
  {
    manager_introspector_deactivateEndpoint_cold_2();
    return;
  }

  while (1)
  {
    v7 = getopt(a3, a4, "rw");
    if (v7 != 114)
    {
      break;
    }

    v8 = (&v13 + 1);
LABEL_6:
    *v8 = 1;
  }

  if (v7 == 119)
  {
    HIBYTE(v13) = 1;
    v8 = &v13;
    goto LABEL_6;
  }

  if (v7 == -1 && (v9 = MEMORY[0x277D85E78], v10 = *MEMORY[0x277D85E78], v10 < a3))
  {
    v11 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v10], 0x8000100u);
    ++*v9;
    v12 = manager_introspector_copyMatchingEndpoint(a1, v11, HIBYTE(v13), v13);
    if (v12)
    {
      FigEndpointDeactivate();
    }

    FPrintF();
    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {

      CFRelease(v12);
    }
  }

  else
  {
    manager_introspector_deactivateEndpoint_cold_1();
  }
}

void manager_introspector_setDiscoveryMode(uint64_t a1, int a2, int a3, char **a4)
{
  if (!a1)
  {
    manager_introspector_setDiscoveryMode_cold_1();
    return;
  }

  if (getopt(a3, a4, "") != -1 || (v7 = MEMORY[0x277D85E78], v8 = *MEMORY[0x277D85E78], v8 >= a3))
  {
    FPrintF();
LABEL_4:
    FPrintF();
    FPrintF();
    FPrintF();
    FPrintF();
    FPrintF();
    FPrintF();
    FPrintF();
    return;
  }

  v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v8], 0x8000100u);
  v10 = v9;
  v11 = *v7 + 1;
  *v7 = v11;
  if (v11 < a3)
  {
    FPrintF();
    if (v10)
    {
      CFRelease(v10);
    }

    goto LABEL_4;
  }

  if (CFStringGetLength(v9) < 1)
  {
    v14 = 0;
  }

  else
  {
    HIDWORD(v13) = CFStringGetCharacterAtIndex(v10, 0) - 98;
    LODWORD(v13) = HIDWORD(v13);
    v12 = v13 >> 1;
    if (v12 > 5)
    {
      if (v12 == 7)
      {
        v15 = MEMORY[0x277CC0C10];
        goto LABEL_19;
      }

      v14 = v10;
      if (v12 == 6)
      {
        v15 = MEMORY[0x277CC0C08];
        goto LABEL_19;
      }
    }

    else
    {
      if (!v12)
      {
        v15 = MEMORY[0x277CC0BF8];
        goto LABEL_19;
      }

      v14 = v10;
      if (v12 == 1)
      {
        v15 = MEMORY[0x277CC0C00];
LABEL_19:
        v14 = *v15;
      }
    }
  }

  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v16)
  {
    v16(a1, v14, 0);
  }

  FPrintF();
  if (v10)
  {

    CFRelease(v10);
  }
}

void manager_introspector_getGroupID(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = 0;
  v12 = 0;
  if (!a1)
  {
    manager_introspector_getGroupID_cold_1();
    Copy = 0;
LABEL_13:
    FPrintF();
    goto LABEL_14;
  }

  APSCopyClusterInfo();
  APSCopyBootUUID();
  FPrintF();
  FPrintF();
  FigSimpleMutexLock();
  v2 = *MEMORY[0x277CBECE8];
  Copy = FigCFArrayCreateCopy();
  FigSimpleMutexUnlock();
  Count = CFArrayGetCount(Copy);
  v5 = Count;
  if (Count < 1)
  {
    if (Count)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = 0;
  v7 = *MEMORY[0x277CC14B0];
  do
  {
    cf = 0;
    CFArrayGetValueAtIndex(Copy, v6);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, v7, v2, &cf);
    }

    v10 = APSCreateGroupIDForLocalDevice();
    FPrintF();
    if (v10)
    {
      CFRelease(v10);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    ++v6;
  }

  while (v5 != v6);
LABEL_14:
  FPrintF();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }
}

void manager_introspector_sendUGLreceiverCommand(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v7 = MEMORY[0x277D85E78];
    v8 = *MEMORY[0x277D85E78];
    if (v8 >= a3)
    {
      FPrintF();
      FigSimpleMutexUnlock();
LABEL_8:
      FPrintF();
      FPrintF();
      FPrintF();
      return;
    }

    v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *(a4 + 8 * v8), 0x8000100u);
    ++*v7;
    if (CFDictionaryCreateFromNameTypeValueArgList())
    {
LABEL_6:
      FPrintF();
      FigSimpleMutexUnlock();
      if (v9)
      {
        CFRelease(v9);
      }

      goto LABEL_8;
    }

    FigSimpleMutexLock();
    if (FigCFEqual())
    {
      v10 = 1;
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_6;
      }

      v10 = 0;
    }

    manager_startOrStopUGLRCServer(a1, v10);
    FPrintF();
    FigSimpleMutexUnlock();
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    manager_introspector_sendUGLreceiverCommand_cold_1();
  }
}

uint64_t manager_handleTriggerSenderStateUpdate()
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleTriggerSenderStateUpdate_cold_2();
  }

  FigSimpleMutexLock();
  v0 = manager_getAndPostSenderStateUpdate();
  FigSimpleMutexUnlock();
  return v0;
}

void manager_handlePSGDataSourceGroupInfoChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 320))
  {
    CMBaseObject = APSPSGDataSourceGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(CMBaseObject, *MEMORY[0x277CEA2E8], *MEMORY[0x277CBECE8], &cf);
    }

    v6 = manager_copyEndpoints(a2, 1);
    v7 = v6;
    if (v6)
    {
      CFArrayGetCount(v6);
      CFArrayApplyBlock();
    }

    else
    {
      manager_handlePSGDataSourceGroupInfoChanged_cold_1();
    }
  }

  else
  {
    manager_handlePSGDataSourceGroupInfoChanged_cold_2();
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t __manager_create_block_invoke_4(uint64_t a1)
{
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    __manager_create_block_invoke_4_cold_1();
  }

  v2 = *(a1 + 32);
  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return __manager_create_block_invoke_5();
  }

  v4 = *(ProtocolVTable + 16);
  if (!v4)
  {
    return __manager_create_block_invoke_5();
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return __manager_create_block_invoke_5();
  }

  result = v5(v2, 0, 0, 0, &__block_literal_global_173);
  if (result == -12782 || result == -12788)
  {
    return __manager_create_block_invoke_5();
  }

  return result;
}

uint64_t __manager_create_block_invoke_5()
{
  v0 = CFStringCreateV();
  if (gLogCategory_APEndpointHierarchy <= 50 && (gLogCategory_APEndpointHierarchy != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
    if (!v0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v0)
  {
LABEL_7:
    CFRelease(v0);
  }

  return 0;
}

uint64_t manager_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 8), a1, manager_invalidateInternal);
  return 0;
}

void manager_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 392) && gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_Finalize_cold_1();
  }

  if (*(DerivedStorage + 1))
  {
    if (introspector_getCollectionOfEndpointManagers_once != -1)
    {
      manager_Finalize_cold_2();
    }

    if (introspector_getCollectionOfEndpointManagers_coll)
    {
      v3 = *introspector_getCollectionOfEndpointManagers_coll;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __manager_Finalize_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = introspector_getCollectionOfEndpointManagers_coll;
      block[5] = a1;
      dispatch_sync(v3, block);
    }

    if (*(DerivedStorage + 384))
    {
      AirPlayReceiverServerGetDispatchQueue();
      CFObjectControlSync();
      v4 = *(DerivedStorage + 384);
      if (v4)
      {
        CFRelease(v4);
      }

      *(DerivedStorage + 384) = 0;
    }

    v5 = *(DerivedStorage + 8);
    if (v5)
    {
      dispatch_release(v5);
      *(DerivedStorage + 8) = 0;
    }

    v6 = *(DerivedStorage + 304);
    if (v6)
    {
      if (gLogCategory_APEndpointManager <= 50)
      {
        if (gLogCategory_APEndpointManager != -1 || (v7 = _LogCategory_Initialize(), v6 = *(DerivedStorage + 304), v7))
        {
          LogPrintF();
          v6 = *(DerivedStorage + 304);
        }
      }

      v8 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v8)
      {
        v8(v6, a1);
      }
    }

    FigSimpleMutexDestroy();
    v9 = *(DerivedStorage + 272);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 272) = 0;
    }

    v10 = *(DerivedStorage + 280);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 280) = 0;
    }

    v11 = *(DerivedStorage + 104);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 104) = 0;
    }

    v12 = *(DerivedStorage + 112);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 112) = 0;
    }

    v13 = *(DerivedStorage + 168);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 168) = 0;
    }

    v14 = *(DerivedStorage + 176);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 176) = 0;
    }

    v15 = *(DerivedStorage + 192);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 192) = 0;
    }

    v16 = *(DerivedStorage + 208);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 208) = 0;
    }

    v17 = *(DerivedStorage + 216);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 216) = 0;
    }

    v18 = *(DerivedStorage + 224);
    if (v18)
    {
      CFRelease(v18);
      *(DerivedStorage + 224) = 0;
    }

    v19 = *(DerivedStorage + 184);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 184) = 0;
    }

    v20 = *(DerivedStorage + 232);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 232) = 0;
    }

    v21 = *(DerivedStorage + 240);
    if (v21)
    {
      CFRelease(v21);
      *(DerivedStorage + 240) = 0;
    }

    v22 = *(DerivedStorage + 248);
    if (v22)
    {
      CFRelease(v22);
      *(DerivedStorage + 248) = 0;
    }

    v23 = *(DerivedStorage + 128);
    if (v23)
    {
      CFRelease(v23);
      *(DerivedStorage + 128) = 0;
    }

    v24 = *(DerivedStorage + 304);
    if (v24)
    {
      CFRelease(v24);
      *(DerivedStorage + 304) = 0;
    }

    v25 = *(DerivedStorage + 344);
    if (v25)
    {
      (*(*v25 + 24))(v25);
      *(DerivedStorage + 344) = 0;
    }

    v26 = *(DerivedStorage + 336);
    if (v26)
    {
      CFRelease(v26);
      *(DerivedStorage + 336) = 0;
    }

    v27 = *(DerivedStorage + 264);
    if (v27)
    {
      CFRelease(v27);
      *(DerivedStorage + 264) = 0;
    }

    v28 = *(DerivedStorage + 352);
    if (v28)
    {
      dispatch_source_cancel(*(DerivedStorage + 352));
      dispatch_release(v28);
      *(DerivedStorage + 352) = 0;
    }

    v29 = *(DerivedStorage + 88);
    if (v29)
    {
      CFRelease(v29);
      *(DerivedStorage + 88) = 0;
    }

    v30 = *(DerivedStorage + 312);
    if (v30)
    {
      CFRelease(v30);
      *(DerivedStorage + 312) = 0;
    }

    v31 = *(DerivedStorage + 296);
    if (v31)
    {
      CFRelease(v31);
      *(DerivedStorage + 296) = 0;
    }

    v32 = *(DerivedStorage + 320);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 320) = 0;
    }

    v33 = *(DerivedStorage + 328);
    if (v33)
    {
      CFRelease(v33);
      *(DerivedStorage + 328) = 0;
    }

    v34 = *(DerivedStorage + 256);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 256) = 0;
    }

    v35 = *(DerivedStorage + 136);
    if (v35)
    {
      CFRelease(v35);
      *(DerivedStorage + 136) = 0;
    }

    v36 = *(DerivedStorage + 152);
    if (v36)
    {
      dispatch_source_cancel(*(DerivedStorage + 152));
      dispatch_release(v36);
      *(DerivedStorage + 152) = 0;
    }

    v37 = *(DerivedStorage + 376);
    if (v37)
    {

      *(DerivedStorage + 376) = 0;
    }
  }

  else
  {
    if (gLogCategory_APEndpointManager <= 100 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_Finalize_cold_3();
    }

    __break(1u);
  }
}

__CFString *manager_CopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"<APEndpointManager %p>", a1);
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, @"ShowInfo", v2, &cf);
    v7 = cf;
    if (!v6)
    {
      ASPrintF();
      v8 = strlen(0);
      if (v8 && *(v8 - 1) == 10)
      {
        *(v8 - 1) = 0;
      }

      CFStringAppendFormat(Mutable, 0, @"%s", 0);
      free(0);
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return Mutable;
}

uint64_t manager_SetProperty()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexUnlock();
  return 4294954512;
}

uint64_t __manager_invalidateInternal_block_invoke(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 32);
  if (v6)
  {

    return v6(a2);
  }

  return result;
}

void manager_removeCluster(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  key = 0;
  cf = 0;
  v5 = *MEMORY[0x277CBECE8];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x277CC14E8], v5, &theArray);
  }

  v8 = APSGetFBOPropertyInt64();
  v9 = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(v9, *MEMORY[0x277CC12C8], v5, &cf);
  }

  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_removeCluster_cold_1(v8 == 0, &cf);
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v8)
  {
LABEL_9:
    manager_updateExposedLocalEndpoint(a1, *(DerivedStorage + 296));
  }

LABEL_10:
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        CFArrayGetValueAtIndex(theArray, i);
        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        manager_removeEndpointFromCluster();
      }
    }
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v14)
  {
    v14(a2);
  }

  v15 = FigEndpointGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16 && (v16(v15, *MEMORY[0x277CC1368], v5, &key), key))
  {
    CFDictionaryRemoveValue(*(DerivedStorage + 240), key);
    APEndpointManagerUpdateInternalClientNeedingDiscovery(a1, key);
  }

  else
  {
    manager_removeCluster_cold_2();
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (key)
  {
    CFRelease(key);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __manager_invalidateInternal_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 32);
  if (v7)
  {

    return v7(a3);
  }

  return result;
}

void manager_removeAllEndpointsIfNeeded()
{
  CMBaseObjectGetDerivedStorage();
  manager_removeAllEndpointsForDictIfNeeded();
  manager_removeAllEndpointsForDictIfNeeded();

  manager_removeAllEndpointsForDictIfNeeded();
}

void manager_removeEndpointIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (IsAnUGLWrapperEndpoint(a2))
  {

    manager_removeUGLWrapperEndpointIfEmpty();
  }

  else
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
    }

    v9 = APSGetFBOPropertyInt64();
    v10 = 176;
    if (!v9)
    {
      v10 = 168;
    }

    manager_removeEndpointForTransportDeviceIfNeeded(a1, cf, *(DerivedStorage + v10), a3);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t manager_addClusterSubEndpoints()
{
  v5 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v1)
  {
    v3 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    goto LABEL_7;
  }

  v2 = v1(CMBaseObject, *MEMORY[0x277CC14E8], *MEMORY[0x277CBECE8], &v5);
  if (v2)
  {
    v3 = v2;
    goto LABEL_6;
  }

  v3 = v5;
  if (!v5)
  {
    return v3;
  }

  CFArrayGetCount(v5);
  CFArrayApplyBlock();
  v3 = 0;
LABEL_7:
  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}

uint64_t manager_determineLocalClusterAction(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    manager_determineLocalClusterAction_cold_5();
    return a2;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, *MEMORY[0x277CC12C8], *MEMORY[0x277CBECE8], &cf);
    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  v6 = APEndpointFigEndpointClusterTypeToAPSClusterType(v5);
  if (v6 == 1)
  {
    v7 = APSGetFBOPropertyInt64();
    v8 = APSGetFBOPropertyInt64();
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      if (v7)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8 == 0;
      }

      if (!v10)
      {
        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          manager_determineLocalClusterAction_cold_2();
        }

        a2 = 2;
        goto LABEL_39;
      }

      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_38;
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_determineLocalClusterAction_cold_1();
    }

    goto LABEL_36;
  }

  if (v6 == 2 && APSIsLocalClusterWithStaticLeadershipEnabled())
  {
    if (APSGetFBOPropertyInt64())
    {
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        manager_determineLocalClusterAction_cold_3();
      }

      goto LABEL_38;
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_determineLocalClusterAction_cold_4();
    }

LABEL_36:
    a2 = 1;
    goto LABEL_39;
  }

LABEL_38:
  a2 = 0;
LABEL_39:
  if (cf)
  {
    CFRelease(cf);
  }

  return a2;
}

void manager_activateLocalCluster(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 1))
  {
    manager_activateLocalCluster_cold_1();
    return;
  }

  v5 = DerivedStorage;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    manager_activateLocalCluster_cold_4();
    return;
  }

  v8 = Mutable;
  CFDictionarySetValue(Mutable, @"ActivatedByManager", *MEMORY[0x277CBED28]);
  CFDictionarySetValue(v8, @"NetworkClock", *(v5 + 304));
  v9 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (v9)
  {
    v10 = v9;
    *v9 = CFRetain(a1);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x277CC12C8], v6, &cf);
      v13 = cf;
    }

    else
    {
      v13 = 0;
    }

    v14 = APEndpointFigEndpointClusterTypeToAPSClusterType(v13);
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      APSClusterTypeToDescriptionString();
      LogPrintF();
    }

    if (v14 == 1)
    {
      v15 = 0;
    }

    else
    {
      if (v14 != 2)
      {
        if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_25;
      }

      if (*(v5 + 396) == 100)
      {
        v15 = 34;
      }

      else
      {
        v15 = 32;
      }
    }

    v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v16 || v16(a2, v15, v8, manager_activateLocalClusterCallback, v10))
    {
      manager_activateLocalCluster_cold_2();
    }
  }

  else
  {
    manager_activateLocalCluster_cold_3();
  }

LABEL_25:
  CFRelease(v8);
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_activateLocalClusterCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, const void **a5)
{
  v8 = *a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a4)
  {
    if (a4 == -16723)
    {
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      v10 = *(DerivedStorage + 368);
      *(DerivedStorage + 368) = v10 + 1;
      if (v10 <= 4)
      {
        v11 = 100;
      }

      else
      {
        v11 = 1000;
      }

      if (v10 <= 9)
      {
        v12 = v11;
      }

      else
      {
        v12 = 5000;
      }

      if (v8)
      {
        CFRetain(v8);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v13 = dispatch_time(0, 1000000 * v12);
      v14 = *(DerivedStorage + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __manager_activateLocalClusterCallback_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = v8;
      block[5] = a1;
      dispatch_after(v13, v14, block);
    }
  }

  else
  {
    *(DerivedStorage + 368) = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  free(a5);
}

void __manager_activateLocalClusterCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  manager_activateLocalCluster(v2, v3);
  FigSimpleMutexUnlock();
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t manager_handleEndpointIsInUseDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetInt64();
  if (!result)
  {
    v7 = CFDictionaryGetInt64() != 0;
    FigSimpleMutexLock();
    manager_removeEndpointIfNeeded(a2, a4, v7);

    return FigSimpleMutexUnlock();
  }

  return result;
}

void manager_removeUGLWrapperEndpointIfEmpty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (APEndpointUGLWrapperIsEmpty())
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v2 && (v2(CMBaseObject, *MEMORY[0x277CC1340], *MEMORY[0x277CBECE8], &key), key))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFDictionaryRemoveValue(*(DerivedStorage + 208), key);
    }

    else if (manager_removeUGLWrapperEndpointIfEmpty_cold_1())
    {
      return;
    }
  }

  if (key)
  {
    CFRelease(key);
  }
}

uint64_t manager_handleInterruptingSessionStateDidChange(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v6 = CFDictionaryGetInt64() != 0;
  FigSimpleMutexLock();
  manager_updateAggregatedInterruptingSessionStateIfNeeded(a2, a4, v6);

  return FigSimpleMutexUnlock();
}

uint64_t manager_getAndPostSenderStateUpdate()
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    manager_getAndPostSenderStateUpdate_cold_2();
    v10 = 4294960568;
    goto LABEL_14;
  }

  if (*(DerivedStorage + 256))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = v4(CMBaseObject, @"LocalRouteState", v1, &cf);
      if (!v5)
      {
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValueFromKeyInDict();
        goto LABEL_6;
      }

      v10 = v5;
    }

    else
    {
      v10 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_14;
  }

LABEL_6:
  v6 = CMBaseObjectGetDerivedStorage();
  Count = CFSetGetCount(*(v6 + 224));
  v8 = MEMORY[0x277CBED28];
  if (Count < 1)
  {
    v8 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"NonBuddyConnectionActive", *v8);
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_getAndPostSenderStateUpdate_cold_1();
  }

  CFRetain(Mutable);
  v9 = *(DerivedStorage + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __manager_getAndPostSenderStateUpdate_block_invoke;
  v12[3] = &__block_descriptor_40_e5_v8__0l;
  v12[4] = Mutable;
  dispatch_async(v9, v12);
  v10 = 0;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

void __manager_getAndPostSenderStateUpdate_block_invoke(uint64_t a1)
{
  APSXPCServerPostEvent();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t manager_copyHierarchy(uint64_t a1, const __CFAllocator *a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  Mutable = CFStringCreateMutable(a2, 0x100000);
  v20[3] = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt();
    v11 = 4294950585;
    goto LABEL_12;
  }

  CFStringAppendF();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = __manager_copyHierarchy_block_invoke;
  v17 = &unk_27849BC90;
  v18 = &v19;
  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v8 = *(ProtocolVTable + 16)) != 0)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = v9(a1, 0, 0, 0, v15);
      v11 = v10;
      if (v10 != -12782 && v10 != -12788)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 4294954514;
    }
  }

  else
  {
    v11 = 4294954508;
  }

  v11 = (v16)(v15, 0, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", a1, 0, " ", 0, 0, v11, 0);
LABEL_10:
  if (v11)
  {
    APSLogErrorAt();
  }

  else
  {
    v12 = v20;
    *a3 = v20[3];
    v12[3] = 0;
  }

LABEL_12:
  v13 = v20[3];
  if (v13)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(&v19, 8);
  return v11;
}

void manager_copyEndpointInfoForShowInfo(CFArrayRef theArray, __CFArray **a2, __CFArray **a3)
{
  value = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    manager_copyEndpointInfoForShowInfo_cold_2();
    return;
  }

  v9 = Mutable;
  v10 = CFArrayCreateMutable(v7, Count, MEMORY[0x277CBF128]);
  if (!v10)
  {
    manager_copyEndpointInfoForShowInfo_cold_1();
    goto LABEL_23;
  }

  v14 = a3;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(theArray, i);
      value = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(CMBaseObject, @"EndpointShowInfo", v7, &value);
      }

      if (value)
      {
        CFArrayAppendValue(v9, value);
        if (CFDictionaryGetInt64())
        {
          CFArrayAppendValue(v10, value);
        }

        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }
    }
  }

  if (a2)
  {
    *a2 = v10;
    v10 = 0;
  }

  if (!v14)
  {
LABEL_23:
    CFRelease(v9);
    if (!v10)
    {
      return;
    }

    goto LABEL_24;
  }

  *v14 = v9;
  if (v10)
  {
LABEL_24:
    CFRelease(v10);
  }
}

void __manager_copyShowInfo_block_invoke(uint64_t a1, const void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CEA2C8]);
  v7 = *MEMORY[0x277CBECE8];
  Count = CFDictionaryGetCount(theDict);
  MutableCopy = CFDictionaryCreateMutableCopy(v7, Count + 1, theDict);
  if (!MutableCopy)
  {
    __manager_copyShowInfo_block_invoke_cold_1(a1);
    return;
  }

  v10 = MutableCopy;
  CFDictionaryAddValue(MutableCopy, @"deviceID", a2);
  v11 = CFDictionaryGetValue(*(a1 + 40), Value);
  if (v11)
  {
    v12 = CFRetain(v11);
    if (v12)
    {
      Mutable = v12;
      CFArrayAppendValue(v12, v10);
LABEL_6:
      CFRelease(Mutable);
      goto LABEL_7;
    }
  }

  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
  CFDictionarySetValue(*(a1 + 40), Value, Mutable);
  CFArrayAppendValue(Mutable, v10);
  if (Mutable)
  {
    goto LABEL_6;
  }

LABEL_7:

  CFRelease(v10);
}

void __manager_copyShowInfo_block_invoke_2(int a1, int a2, CFArrayRef theArray)
{
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  Count = CFArrayGetCount(theArray);
  CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CEA2B0]);
  DataBuffer_AppendF();
  if (Count >= 1)
  {
    v6 = CFArrayGetValueAtIndex(theArray, 0);
    Value = CFDictionaryGetValue(v6, @"deviceID");
    if (Value)
    {
      v8 = Value;
      v9 = *MEMORY[0x277CBECE8];
      v10 = *MEMORY[0x277CEA2A8];
      v11 = 1;
      v12 = *MEMORY[0x277CEA2A0];
      while (1)
      {
        Length = CFStringGetLength(v8);
        MutableCopy = CFStringCreateMutableCopy(v9, Length, v8);
        if (!MutableCopy)
        {
          break;
        }

        v15 = MutableCopy;
        CFStringTrim(MutableCopy, @"PSGDataSource::PSGInfo::");
        DataBuffer_AppendF();
        if (CFDictionaryContainsKey(v6, v10))
        {
          CFDictionaryGetValue(v6, v10);
          DataBuffer_AppendF();
        }

        if (CFDictionaryContainsKey(v6, v12))
        {
          CFDictionaryGetInt64();
          DataBuffer_AppendF();
        }

        DataBuffer_AppendF();
        if (Count == v11)
        {
          goto LABEL_15;
        }

        v6 = CFArrayGetValueAtIndex(theArray, v11);
        v8 = CFDictionaryGetValue(v6, @"deviceID");
        ++v11;
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      __manager_copyShowInfo_block_invoke_2_cold_1();
    }

    else
    {
      v15 = 0;
LABEL_14:
      APSLogErrorAt();
      if (v15)
      {
LABEL_15:

        CFRelease(v15);
      }
    }
  }
}

uint64_t __manager_copyHierarchy_block_invoke()
{
  v0 = CFStringAppendF();
  if (v0)
  {
    v1 = v0;
    __manager_copyHierarchy_block_invoke_cold_1();
  }

  else
  {
    v1 = CFStringAppendV();
    if (v1)
    {
      __manager_copyHierarchy_block_invoke_cold_2();
    }
  }

  return v1;
}

uint64_t manager_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  (*(a5 + 16))(a5, a3, "EndpointManager:[%{ptr}] (AirPlay)\n", a1);
  v8 = manager_copyEndpoints(a1, 0);
  if (!v8)
  {
    manager_DumpHierarchy_cold_2();
    return 4294950585;
  }

  v9 = v8;
  Count = CFArrayGetCount(v8);
  if (Count < 1)
  {
    goto LABEL_3;
  }

  v12 = Count;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
    v15 = APSGetFBOPropertyInt64();
    if (v21)
    {
      if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v21 = 0;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    APSHierarchyReporterProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable || (v17 = *(ProtocolVTable + 16)) == 0)
    {
      v19 = 4294954508;
LABEL_21:
      LODWORD(v19) = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", ValueAtIndex, 0, " ", 0, 0, v19, a1);
      goto LABEL_22;
    }

    v18 = *(v17 + 8);
    if (!v18)
    {
      v19 = 4294954514;
      goto LABEL_21;
    }

    v19 = v18(ValueAtIndex, a1, a3 + 1, 0, a5);
    if (v19 == -12782 || v19 == -12788)
    {
      goto LABEL_21;
    }

LABEL_22:
    v21 = v19;
    if (v19)
    {
      break;
    }

LABEL_23:
    if (v12 == ++v13)
    {
      goto LABEL_3;
    }
  }

  manager_DumpHierarchy_cold_1();
LABEL_3:
  CFRelease(v9);
  return v21;
}

uint64_t manager_CreateAggregateEndpoint(uint64_t a1, int a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  FigSimpleMutexLock();
  if (a2 == 3)
  {
    v8 = APEndpointAggregateCreateAsSystemRemotePool(*MEMORY[0x277CBECE8], &value);
    if (v8)
    {
      v7 = v8;
      manager_CreateAggregateEndpoint_cold_1();
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    v6 = APEndpointAggregateCreateAsSystemMusicAggregate(*MEMORY[0x277CBECE8], *(DerivedStorage + 4), *(DerivedStorage + 304), 0, &value);
    if (v6)
    {
      v7 = v6;
      manager_CreateAggregateEndpoint_cold_2();
      goto LABEL_15;
    }

LABEL_6:
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFArrayAppendValue(*(DerivedStorage + 192), value);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v7 = 0;
    *a3 = value;
    value = 0;
    goto LABEL_15;
  }

  if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_CreateAggregateEndpoint_cold_3();
  }

  v7 = 4294950586;
LABEL_15:
  FigSimpleMutexUnlock();
  if (value)
  {
    CFRelease(value);
  }

  return v7;
}