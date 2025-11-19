void __carEndpoint_requestSiri_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[176] || (v4 = DerivedStorage, !DerivedStorage[177]))
  {
    v7 = -16723;
    goto LABEL_21;
  }

  if (v2 != 4)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_21;
  }

  if (!DerivedStorage[57])
  {
    goto LABEL_35;
  }

  Int64 = CFDictionaryGetInt64();
  if (!Int64)
  {
    if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_18;
  }

  if (Int64 == -1)
  {
LABEL_35:
    APSLogErrorAt();
LABEL_18:
    v7 = -16726;
    goto LABEL_21;
  }

  v6 = *(v4 + 99);
  if ((v6 != 1 || !*(v4 + 100)) && !v4[456])
  {
    goto LABEL_13;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  v7 = -16727;
LABEL_21:
  *(*(*(a1 + 32) + 8) + 24) = v7;
  OUTLINED_FUNCTION_2_16();
  if (!*(v8 + 24))
  {
    v9 = *(a1 + 72);
    *(*(*(a1 + 40) + 8) + 24) = *(v9 + 224);
    *(*(*(a1 + 48) + 8) + 24) = *(v9 + 444);
    v10 = *(a1 + 88);
    v11 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_8_4();
    if (CFDictionaryGetInt64())
    {
      APSNetworkClockNTPConvertNTPToUpTicks();
    }

    if (v10 <= 4 && ((1 << v10) & 0x16) != 0 && !*(v11 + 448))
    {
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4()))
      {
        mach_absolute_time();
        mach_absolute_time();
        UpTicksToMilliseconds();
        OUTLINED_FUNCTION_2();
      }

      *(v11 + 448) = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void __carEndpoint_setUpAPAccClientEndpointForIdType_block_invoke()
{
  OUTLINED_FUNCTION_3_7();
  values = v2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  v3 = *(v1 + 40);
  if (*(v3 + 136))
  {
    v4 = OUTLINED_FUNCTION_10_6(v3);
    v14 = 0x40000000;
    v15 = __carEndpoint_setUpAPAccClientEndpointForIdType_block_invoke_2;
    v16 = &unk_27849EE08;
    v17 = &v19;
    v18 = v5;
    dispatch_sync(v4, block);
    v6 = v20[3];
    if (v6)
    {
      v7 = *(v1 + 32);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v24.tv_sec = 0;
      *&v24.tv_usec = 0;
      if (!v0 || !carEndpoint_isDissociated(DerivedStorage) && ((gettimeofday(&v24, 0), (v9 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0) ? (v10 = v9(v6, v0, 0, 0)) : (v10 = -12782), CFDataGetLength(v0), carEndpoint_sendCommandInfoAppend(v7, @"iAPSendMessage", &v24), v10))
      {
        APSLogErrorAt();
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }
    }
  }

  else
  {
    v11 = CFDictionaryCreate(0, &kAPEndpointCommandiAPSendMessageKey_Data, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    carEndpoint_sendCommandInternal(*(v1 + 32), @"iAPSendMessage", v11, 0, 0);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  v12 = v20[3];
  if (v12)
  {
    CFRelease(v12);
  }

  _Block_object_dispose(&v19, 8);
}

void __carEndpoint_copyStateProperty_block_invoke_cold_3(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

void __carEndpoint_copyStateProperty_block_invoke_cold_14()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -6709;
}

uint64_t __carEndpoint_copyStateProperty_block_invoke_cold_15(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = -6735;
  if (gLogCategory_APEndpointCarPlay <= 60)
  {
    OUTLINED_FUNCTION_21_4();
    if (!v1)
    {
      return OUTLINED_FUNCTION_3_11();
    }

    result = OUTLINED_FUNCTION_33_0();
    if (result)
    {
      return OUTLINED_FUNCTION_3_11();
    }
  }

  return result;
}

void carEndpoint_copyStreams_cold_1()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  v1 = *(*v0 + 24);
  if (v1)
  {
    CFRelease(v1);
  }

  OUTLINED_FUNCTION_4_6();
}

void __carEndpoint_activateInternal_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -16727;
}

void __carEndpoint_activateInternal_block_invoke_cold_14()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -16726;
}

uint64_t __carEndpoint_activateInternal_block_invoke_147_cold_9(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*a1 + 8) + 24) = -16721;
  return result;
}

void carEndpoint_setupStreams_cold_27()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  *v1 = -16720;
  _Block_object_dispose(v0, 8);
}

uint64_t carEndpoint_setupStreams_cold_43(uint64_t a1, uint64_t *a2)
{
  carEndpoint_raiseAltScreenPowerAssertionIfNeeded();
  v3 = *a2;
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 16);
  if (v7)
  {
    return v7(v3, 0, 0, 0);
  }

  return result;
}

void carEndpoint_takeActionOnModeChanges_cold_1(uint64_t *a1, const void *a2, _DWORD *a3)
{
  v5 = *a1;
  if ((*(*a1 + 40) != 1 || !*(v5 + 44)) && a3[4] == 1 && a3[5] || *(v5 + 48) != 2 && a3[6] == 2)
  {
    APCarPlayAVVCServerStatesIncompatibleWithAuxIn();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40) && !a3[6] && a3[4] == 2)
  {
    if (a3[5])
    {
      v7 = DerivedStorage;
      CFRetain(a2);
      OUTLINED_FUNCTION_4_7();
      v9[1] = 0x40000000;
      v9[2] = __carEndpoint_resetBurstParamsIfSiriWakes_block_invoke;
      v9[3] = &__block_descriptor_tmp_183;
      v9[4] = a2;
      v9[5] = v7;
      dispatch_async(v8, v9);
    }
  }
}

void __carEndpoint_configureAccessoryLogs_block_invoke_cold_2(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void __carEndpoint_configureAccessoryLogs_block_invoke_cold_5()
{
  if (gLogCategory_APEndpointCarPlay <= 50)
  {
    OUTLINED_FUNCTION_21_4();
    if (!v0 || OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_2();
    }
  }
}

uint64_t __carEndpoint_sendAccessoryLogRequest_block_invoke_cold_1(int a1)
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

uint64_t carEndpoint_updateViewArea_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16726;
  return result;
}

void carEndpoint_handleiAPChannelEvent_cold_4()
{
  if (gLogCategory_APEndpointCarPlay <= 60)
  {
    OUTLINED_FUNCTION_21_4();
    if (!v0 || OUTLINED_FUNCTION_33_0())
    {
      OUTLINED_FUNCTION_3_11();
    }
  }
}

uint64_t __carEndpoint_registerForHTTPProxy_block_invoke_cold_1()
{
  if (gLogCategory_APEndpointCarPlay <= 90)
  {
    if (gLogCategory_APEndpointCarPlay != -1)
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

void __carEndpoint_registerForHTTPProxy_block_invoke_cold_2()
{
  if (gLogCategory_APEndpointCarPlay <= 60)
  {
    OUTLINED_FUNCTION_21_4();
    if (!v0 || OUTLINED_FUNCTION_33_0())
    {
      OUTLINED_FUNCTION_3_11();
    }
  }
}

void __carEndpoint_registerForHTTPProxy_block_invoke_cold_3()
{
  if (gLogCategory_APEndpointCarPlay <= 90)
  {
    OUTLINED_FUNCTION_21_4();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_4_0();
    }
  }
}

void __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -16723;
}

void __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_5()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -17606;
}

uint64_t carEndpoint_DuckAudio_cold_4(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -16721;
  return result;
}

uint64_t carEndpoint_CreateRemoteControlSession_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6735;
  return result;
}

uint64_t carEndpoint_CreateRemoteControlSession_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6735;
  return result;
}

uint64_t carEndpoint_packetizeCommandAndSend_cold_2(int a1)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  result = OUTLINED_FUNCTION_10();
  if (result)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  return result;
}

void __APAccTransportClientConnectionOpen_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_acc_transportClient_serverDisconnectedHandler(ACCTransportClientServerDisconnectedCF)") description:{@"APAccTransportClient.m", 85, @"%s", dlerror()}];
  __break(1u);
}

uint64_t __APAccTransportClientConnectionOpen_block_invoke_3_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*(a1 + 32) + 8) + 24) = -6700;
  return result;
}

void __APAccTransportClientConnectionOpen_block_invoke_3_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef soft_acc_transportClient_createConnection(ACCConnection_Type_t description:{CFStringRef)"), @"APAccTransportClient.m", 28, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientConnectionOpen_block_invoke_3_cold_3(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_18(*(a1 + 32));

  CFRelease(a2);
}

void __APAccTransportClientConnectionClose_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"_Bool soft_acc_transportClient_destroyConnection(CFStringRef)") description:{@"APAccTransportClient.m", 47, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_2(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void __APAccTransportClientEndpointActivate_block_invoke_cold_4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"_Bool soft_acc_transportClient_setPropertyForEndpointWithUUID(CFStringRef description:{CFTypeRef, CFStringRef)"), @"APAccTransportClient.m", 64, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientEndpointActivate_block_invoke_cold_7()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef soft_acc_transportClient_createEndpoint(CFStringRef description:{ACCEndpoint_TransportType_t, ACCEndpoint_Protocol_t, CFStringRef, ACCTransportClientDataOutHandlerCF, _Bool)"), @"APAccTransportClient.m", 35, @"%s", dlerror()}];
  __break(1u);
}

void getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch(void)") description:{@"APAccTransportClient.m", 88, @"%s", dlerror()}];
  __break(1u);
}

void accTransportClientEndpointDestroyEndpoint_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"_Bool soft_acc_transportClient_destroyEndpoint(CFStringRef)") description:{@"APAccTransportClient.m", 41, @"%s", dlerror()}];
  __break(1u);
}

void soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler(ACCTransportClientConnectionAuthStatusDidChangeHandlerCF)") description:{@"APAccTransportClient.m", 58, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientEndpointForwardData_block_invoke_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"_Bool soft_acc_transportClient_processIncomingData(CFDataRef description:{CFStringRef)"), @"APAccTransportClient.m", 53, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFDictionaryRef soft_acc_transportClient_copyPropertiesForEndpointWithUUID(CFStringRef)") description:{@"APAccTransportClient.m", 70, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_acc_transportClient_endpointSecureTunnelDataSend(CFStringRef description:{uint8_t, CFDataRef)"), @"APAccTransportClient.m", 80, @"%s", dlerror()}];
  __break(1u);
}

void soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler(CFStringRef description:{ACCTransportClientSecureTunnelDataReceiveHandlerCF)"), @"APAccTransportClient.m", 75, @"%s", dlerror()}];
  __break(1u);
}

void CoreAccessoriesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CoreAccessoriesLibrary(void)") description:{@"APAccTransportClient.m", 23, @"%s", *a1}];
  __break(1u);
}

const __CFData *legacyPairing_IsPeerKnown()
{
  v2 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  result = *(CMBaseObjectGetDerivedStorage() + 16);
  if (result)
  {
    v3.location = 0;
    v3.length = 32;
    CFDataGetBytes(result, v3, buffer);
    return xOvZekdnwD6();
  }

  return result;
}

uint64_t legacyPairing_PerformVerification()
{
  v13 = *MEMORY[0x277D85DE8];
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  *buffer = 0u;
  v12 = 0u;
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2();
  }

  XoN3GgjZNCvkN1T8I3();
  v1 = *(DerivedStorage + 16);
  if (!v1)
  {
    APSLogErrorAt();
    v6 = 4294895525;
    goto LABEL_19;
  }

  v14.location = 0;
  v14.length = 32;
  CFDataGetBytes(v1, v14, buffer);
  Dk7hjUuq();
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  OUTLINED_FUNCTION_2_24();
  v2 = VBAEFt();
  if (!v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v10 = 0;
      CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        v6 = 4294895526;
        APSLogErrorAt();
        goto LABEL_19;
      }

      v5 = Mutable;
      CFDictionarySetValue(Mutable, @"X-Apple-PD", @"1");
      if (!TMIsAutomaticTimeEnabled())
      {
        goto LABEL_12;
      }

      CFAbsoluteTimeGetCurrent();
      ASPrintF();
      if (v10)
      {
        break;
      }

      v6 = 4294895526;
      APSLogErrorAt();
LABEL_13:
      CFRelease(v5);
      if (v10)
      {
        free(v10);
      }

      if (v6)
      {
        goto LABEL_19;
      }

      lengthAtOffsetOut = 0;
      dataPointerOut = 0;
      OUTLINED_FUNCTION_2_24();
      v2 = VBAEFt();
      if (v2)
      {
        goto LABEL_25;
      }
    }

    CFDictionarySetCString();
LABEL_12:
    CFDictionarySetData();
    v6 = APTransportStreamSendPlistMessageCreatingReply();
    goto LABEL_13;
  }

LABEL_25:
  v6 = v2;
LABEL_19:
  if (v6 && gLogCategory_APPairingClientLegacy <= 60 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v6;
}

uint64_t Server_AssociateObjectWithConnection(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 4294960576;
  }

  v5 = FigXPCServerAssociateObjectWithConnection();
  if (v5)
  {
    APSLogErrorAt();
  }

  else
  {
    xpc_dictionary_set_uint64(a4, *MEMORY[0x277CC0990], 0);
  }

  return v5;
}

uint64_t __APCarPlayAVVCServerInit_block_invoke_cold_4(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*a1 + 8) + 24) = -6718;
  return result;
}

uint64_t __APCarPlayAVVCServerInit_block_invoke_cold_5(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*(a1 + 32) + 8) + 24) = -6728;
  return result;
}

uint64_t apStarkMode_parseResourceChangeRequest_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72051;
  return result;
}

uint64_t APEndpointDescriptionMockCreate(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    return 4294895545;
  }

  APEndpointDescriptionGetClassID();
  v6 = CMDerivedObjectCreate();
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      Mutable = CFRetain(a2);
    }

    else
    {
      Mutable = APSFeaturesCreateMutable();
    }

    *DerivedStorage = Mutable;
    DerivedStorage[1] = FigCFDictionaryCreateMutableCopy();
    v9 = FigSimpleMutexCreate();
    DerivedStorage[2] = v9;
    if (v9)
    {
      v6 = 0;
      *a4 = 0;
    }

    else
    {
      return 4294895546;
    }
  }

  return v6;
}

uint64_t airPlayDescriptionMock_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableArrayRef *a4)
{
  v7 = 4294895545;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (a4)
  {
    if (CFDictionaryContainsKey(*(DerivedStorage + 8), a2))
    {
      v9 = CFDictionaryGetValue(*(DerivedStorage + 8), a2);
      v10 = 0;
      if (!v9 || v9 == *MEMORY[0x277CBEEE8])
      {
        goto LABEL_11;
      }

      v11 = v9;
LABEL_10:
      v10 = CFRetain(v11);
LABEL_11:
      v7 = 0;
      *a4 = v10;
      goto LABEL_12;
    }

    if (CFEqual(a2, @"SupportsRFC2198Redundancy"))
    {
      CMBaseObjectGetDerivedStorage();
      HasFeature = APSFeaturesHasFeature();
      v13 = MEMORY[0x277CBED28];
      if (!HasFeature)
      {
        v13 = MEMORY[0x277CBED10];
      }

      v11 = *v13;
      goto LABEL_10;
    }

    if (!CFEqual(a2, @"DisplayDescriptionArray"))
    {
      v7 = 4294954512;
      goto LABEL_12;
    }

    v15 = CMBaseObjectGetDerivedStorage();
    value = 0;
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (!APSFeaturesHasFeature())
    {
      v7 = 4294895542;
      goto LABEL_12;
    }

    Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      v7 = 4294895546;
      goto LABEL_12;
    }

    v17 = Mutable;
    v18 = CFDictionaryGetValue(*(v15 + 8), @"mock::DisplaysArray");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 != CFArrayGetTypeID())
      {
LABEL_28:
        CFRelease(v17);
        goto LABEL_12;
      }

      Count = CFArrayGetCount(v19);
      if (Count >= 1)
      {
        v22 = Count;
        v23 = 0;
        while (1)
        {
          CFDictionaryGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
          v25 = APEndpointDisplayDescriptionCreateWithDisplayInfo(a3, TypedValueAtIndex, &value);
          if (v25)
          {
            break;
          }

          CFArrayAppendValue(v17, value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          if (v22 == ++v23)
          {
            goto LABEL_24;
          }
        }

        v7 = v25;
        if (value)
        {
          CFRelease(value);
        }

        goto LABEL_28;
      }
    }

LABEL_24:
    v7 = 0;
    *a4 = v17;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t airPlayDescriptionMock_CopyFeatures(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294895545;
  }

  v4 = CFRetain(*DerivedStorage);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t apRealTimeAudioFileWriter_SignalCallback(uint64_t outExtAudioFile)
{
  v1 = outExtAudioFile;
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0;
  if (gLogCategory_APRealTimeAudioFileWriter <= 30)
  {
    if (gLogCategory_APRealTimeAudioFileWriter != -1 || (outExtAudioFile = _LogCategory_Initialize(), outExtAudioFile))
    {
      outExtAudioFile = OUTLINED_FUNCTION_4_1();
    }
  }

  if (*(v1 + 144))
  {
    return outExtAudioFile;
  }

  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v22 = 0;
  v23 = 0;
  if (*(v1 + 112) || *(v1 + 88))
  {
    goto LABEL_31;
  }

  if (*(v1 + 16))
  {
    if (*(v1 + 96))
    {
LABEL_24:
      if (gLogCategory_APRealTimeAudioFileWriter <= 50 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v7 = ExtAudioFileCreateWithURL(*(v1 + 96), 0x63616666u, (v1 + 40), 0, 0, (v1 + 88));
      if (v7)
      {
        v6 = v7;
      }

      else
      {
        v8 = ExtAudioFileSetProperty(*(v1 + 88), 0x63666D74u, 0x28u, (v1 + 40));
        if (!v8)
        {
          *(v1 + 120) = 0;
          *(v1 + 136) = 0;
          goto LABEL_31;
        }

        v6 = v8;
      }

      goto LABEL_69;
    }

    bzero(v27, 0x400uLL);
    if (*(v1 + 80))
    {
      v2 = CFRetain(*(v1 + 104));
      goto LABEL_14;
    }

    if (confstr(65537, v27, 0x400uLL))
    {
      v3 = mach_absolute_time();
      v2 = CFStringCreateWithFormat(0, 0, @"%sAP-%llu-%@.caf", v27, v3, *(v1 + 104));
      if (v2)
      {
LABEL_14:
        v4 = *(v1 + 96);
        if (v4)
        {
          CFRelease(v4);
        }

        v5 = CFURLCreateWithFileSystemPath(0, v2, kCFURLPOSIXPathStyle, 0);
        *(v1 + 96) = v5;
        if (v5)
        {
          if (gLogCategory_APRealTimeAudioFileWriter <= 30 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_4_1();
          }

          v6 = 0;
          if (v2)
          {
            goto LABEL_22;
          }
        }

        else
        {
          APSLogErrorAt();
          v6 = -6728;
          if (v2)
          {
LABEL_22:
            CFRelease(v2);
          }
        }

        if (v5)
        {
          goto LABEL_24;
        }

LABEL_69:
        APSLogErrorAt();
        goto LABEL_70;
      }

      v6 = -6728;
    }

    else
    {
      v6 = -6727;
    }

    APSLogErrorAt();
    goto LABEL_69;
  }

  APSLogErrorAt();
  v6 = -6709;
LABEL_70:
  *(v1 + 112) = 1;
  if (gLogCategory_APRealTimeAudioFileWriter <= 90 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  apRealTimeAudioFileWriter_CloseFile(v1);
  if (v6)
  {
LABEL_51:
    outExtAudioFile = APSLogErrorAt();
    if (gLogCategory_APRealTimeAudioFileWriter <= 90)
    {
      if (gLogCategory_APRealTimeAudioFileWriter != -1)
      {
        return LogPrintF();
      }

      outExtAudioFile = _LogCategory_Initialize();
      if (outExtAudioFile)
      {
        return LogPrintF();
      }
    }

    return outExtAudioFile;
  }

LABEL_31:
  v9 = *(v1 + 16);
  VTable = CMBaseObjectGetVTable();
  v11 = *(VTable + 16);
  outExtAudioFile = VTable + 16;
  for (i = *(v11 + 32); i; i = *(v20 + 32))
  {
    outExtAudioFile = i(v9, 0);
    if (!outExtAudioFile)
    {
      break;
    }

    if (*(v1 + 144))
    {
      return outExtAudioFile;
    }

    v13 = *(v1 + 16);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v14)
    {
      goto LABEL_51;
    }

    if (v14(v13, v27, 512, &v26, &v23, &v22, v24))
    {
      goto LABEL_51;
    }

    *(&ioData.mNumberBuffers + 1) = 0;
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mNumberChannels = 1;
    ioData.mBuffers[0].mDataByteSize = v26;
    ioData.mBuffers[0].mData = v27;
    if (ExtAudioFileWrite(*(v1 + 88), v26 / *(v1 + 64), &ioData))
    {
      goto LABEL_51;
    }

    v15 = v26;
    *(v1 + 120) = *(v1 + 120) + (v26 / *(v1 + 64)) / *(v1 + 40);
    *(v1 + 136) += v15;
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    add = atomic_fetch_add((v1 + 148), -v26);
    if (v26 == add)
    {
      v17 = *(v1 + 152);
      if (v17)
      {
        dispatch_semaphore_signal(v17);
        v18 = *(v1 + 152);
        if (v18)
        {
          dispatch_release(v18);
          *(v1 + 152) = 0;
        }
      }
    }

    FigSimpleMutexUnlock();
    if (gLogCategory_APRealTimeAudioFileWriter <= 40 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = *(v1 + 16);
    v19 = CMBaseObjectGetVTable();
    v20 = *(v19 + 16);
    outExtAudioFile = v19 + 16;
  }

  if (*(v1 + 120) > *(v1 + 128) && !*(v1 + 80))
  {
    if (gLogCategory_APRealTimeAudioFileWriter <= 50 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    outExtAudioFile = apRealTimeAudioFileWriter_CloseFile(v1);
    if (outExtAudioFile)
    {
      goto LABEL_51;
    }
  }

  return outExtAudioFile;
}

uint64_t APRealTimeAudioFileWriterWriteAudioBytes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!*(a1 + 16))
  {
    return 4294960587;
  }

  atomic_fetch_add((a1 + 148), a3);
  v7 = *(a1 + 16);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  result = v8(v7, a2, a3, a4);
  if (!result)
  {
    APSRealTimeSignalRaise();
    return 0;
  }

  return result;
}

uint64_t APRealTimeAudioFileWriterInvalidate(uint64_t a1)
{
  if (gLogCategory_APRealTimeAudioFileWriter <= 30 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
  {
    atomic_load((a1 + 148));
    OUTLINED_FUNCTION_4_1();
  }

  if (!*(a1 + 144))
  {
    *(a1 + 144) = 1;
    if (*(a1 + 24))
    {
      APSRealTimeSignalInvalidate();
      v2 = *(a1 + 32);
      if (v2)
      {
        dispatch_sync(v2, &__block_literal_global_25);
      }
    }

    apRealTimeAudioFileWriter_CloseFile(a1);
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v4)
      {
        v4(v3);
      }
    }
  }

  return 0;
}

uint64_t APRealTimeAudioFileWriterCreate_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APRealTimeAudioFileWriterCreate_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APRealTimeAudioFileWriterCreate_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t APRealTimeAudioFileWriterCreate_cold_9(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t airPlayDescription_copyOSBuildVersion()
{
  OUTLINED_FUNCTION_9_8();
  v3 = 0;
  airPlayDescription_copyEndpointInfoValueCFString(v1, @"osBuildVersion", &v3);
  if (!v3)
  {
    return 4294954512;
  }

  result = 0;
  *v0 = v3;
  return result;
}

uint64_t airPlayDescription_copyCompany()
{
  OUTLINED_FUNCTION_9_8();
  v5 = 0;
  airPlayDescription_copyEndpointInfoValueCFString(v1, @"company", &v5);
  v2 = v5;
  if (!v5)
  {
    v2 = OUTLINED_FUNCTION_5_16();
    if (!v2)
    {
      if (!airPlayDescription_isAppleReceiver(v1))
      {
        return 4294954512;
      }

      v2 = CFRetain(@"Apple");
      if (!v2)
      {
        return 4294954512;
      }
    }
  }

  v3 = 0;
  *v0 = v2;
  return v3;
}

uint64_t airPlayDescription_copyPairingPeerPublicKey(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *buffer = 0u;
  v15 = 0u;
  *bytes = 0u;
  v13 = 0u;
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1);
  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    v8 = 0;
    *a3 = CFRetain(v7);
    return v8;
  }

  v10 = OUTLINED_FUNCTION_5_16();
  v11 = v10;
  if (hasFeatureInternal)
  {
    if (!v10)
    {
      return 4294895545;
    }
  }

  else if (!v10)
  {
    APSLogErrorAt();
    v8 = APSSignalErrorAt();
    if (!v8)
    {
      return v8;
    }

    goto LABEL_10;
  }

  if (CFStringGetCString(v10, buffer, 128, 0x8000100u))
  {
    HexToData();
  }

  v8 = 4294895543;
  APSLogErrorAt();
  CFRelease(v11);
LABEL_10:
  if (!hasFeatureInternal && gLogCategory_APEndpointDescriptionAirPlay <= 60 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v8;
}

BOOL airPlayDescription_isLegacyAirPlaySpeaker(const void *a1)
{
  v6 = 0;
  cf = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 121) && airPlayDescription_isDeviceOfSubType())
  {
    goto LABEL_7;
  }

  if (airPlayDescription_copySourceVersion(a1, &v6) || (v2 = CFGetInt64Ranged(), isDeviceOfSubType = airPlayDescription_isDeviceOfSubType(), CFGetAllocator(a1), airPlayDescription_copyFeaturesInternal(a1, &cf)))
  {
    APSLogErrorAt();
LABEL_7:
    v4 = 0;
    goto LABEL_9;
  }

  if (v2 < 0x1E9998)
  {
    v4 = 1;
    goto LABEL_9;
  }

  if (isDeviceOfSubType)
  {
    goto LABEL_7;
  }

  v4 = APSFeaturesHasFeature() == 0;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v4;
}

uint64_t airPlayDescription_isCarPlaySpatialAudioSupported()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APSSettingsGetIntWithDefault() && *(CMBaseObjectGetDerivedStorage() + 65))
  {
    OUTLINED_FUNCTION_10_7(*(DerivedStorage + 56), v1, @"media", v2);
  }

  return 0;
}

uint64_t airPlayDescription_copyCarPlayAudioFormatsExtended()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APSSettingsGetIntWithDefault())
  {
    if (!*(CMBaseObjectGetDerivedStorage() + 65))
    {
      return 0;
    }

    v3 = OUTLINED_FUNCTION_10_7(*(DerivedStorage + 56), v1, @"media", v2);
    if (v3)
    {
      v4 = v3;
      APSLogErrorAt();
      return v4;
    }
  }

  return 0;
}

CFNumberRef airPlayDescription_copyMetadataFeatures(uint64_t a1, const __CFAllocator *a2, CFNumberRef *a3)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_26();
  OUTLINED_FUNCTION_6_12();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  valuePtr = PropertyInt64Sync;
  if (airPlayDescription_hasFeatureInternal(a1))
  {
    PropertyInt64Sync |= 1u;
    valuePtr = PropertyInt64Sync;
  }

  if (airPlayDescription_hasFeatureInternal(a1))
  {
    PropertyInt64Sync |= 2u;
    valuePtr = PropertyInt64Sync;
  }

  if (airPlayDescription_hasFeatureInternal(a1))
  {
    PropertyInt64Sync |= 4u;
    valuePtr = PropertyInt64Sync;
  }

  if (airPlayDescription_isDeviceOfSubType() || airPlayDescription_isThirdPartyTVFamily(a1))
  {
    PropertyInt64Sync |= 0x10u;
    valuePtr = PropertyInt64Sync;
  }

  if (airPlayDescription_isThirdPartyTVFamily(a1))
  {
    PropertyInt64Sync |= 8u;
    valuePtr = PropertyInt64Sync;
  }

  if (airPlayDescription_hasFeatureInternal(a1))
  {
    valuePtr = PropertyInt64Sync | 0x20;
    if (airPlayDescription_isSourceVersionAtLeast(a1, 0x37F564u))
    {
      PropertyInt64Sync |= 0x120u;
      valuePtr = PropertyInt64Sync;
    }

    else
    {
      PropertyInt64Sync |= 0x20u;
    }

    if (airPlayDescription_isSourceVersionAtLeast(a1, 0x398A14u))
    {
      PropertyInt64Sync |= 0x40u;
      valuePtr = PropertyInt64Sync;
    }

    if (airPlayDescription_isSourceVersionAtLeast(a1, 0x3A2654u))
    {
      PropertyInt64Sync |= 0x200u;
      valuePtr = PropertyInt64Sync;
    }
  }

  if (airPlayDescription_isSourceVersionAtLeast(a1, 0x365948u))
  {
    valuePtr = PropertyInt64Sync | 0x80;
  }

  result = CFNumberCreate(a2, kCFNumberSInt32Type, &valuePtr);
  *a3 = result;
  return result;
}

uint64_t airPlayDescription_isJarvisFeatureSupported()
{
  BOOLean = 0;
  if (!*(OUTLINED_FUNCTION_9_8() + 24))
  {
    APSLogErrorAt();
    return 0;
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 64))
  {
    return 0;
  }

  airPlayDescription_copyEndpointInfoNestedCFData(v1, @"enhancedSiriInfo", v0, &BOOLean);
  v2 = BOOLean;
  if (!BOOLean)
  {
    return 0;
  }

  Value = CFBooleanGetValue(BOOLean);
  CFRelease(v2);
  return Value;
}

uint64_t airPlayDescription_copyEndpointInfoNestedCFData(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    Value = CFDictionaryGetValue(TypedValue, a3);
    if (Value)
    {
      *a4 = CFRetain(Value);
    }
  }

  return 0;
}

uint64_t airPlayDescription_isDCXSupportedForSpatialAudio(uint64_t a1)
{
  BOOLean = 0;
  CMBaseObjectGetDerivedStorage();
  if (!airPlayDescription_isCarPlaySpatialAudioSupported())
  {
    return 0;
  }

  airPlayDescription_copyEndpointInfoNestedCFData(a1, @"mainBufferedInfo", @"DCXEnabled", &BOOLean);
  v2 = BOOLean;
  if (!BOOLean)
  {
    return 0;
  }

  Value = CFBooleanGetValue(BOOLean);
  CFRelease(v2);
  return Value;
}

uint64_t airPlayDescription_copyCarPlayVideoFeaturesInternal(uint64_t a1, uint64_t a2)
{
  v4 = -6727;
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFDictionaryGetTypeID();
    if (CFDictionaryGetTypedValue())
    {
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    return -6705;
  }

  return v4;
}

uint64_t APEndpointDescriptionAirPlayCreateWithTransportDevice_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void airPlayDescription_copyName_cold_1(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t airPlayDescription_copyPropertyInternal_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12784;
  return result;
}

uint64_t airPlayDescription_copyPropertyInternal_cold_9(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12784;
  return result;
}

uint64_t airPlayDescription_copyPropertyInternal_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

CFTypeRef airPlayDescription_copyPropertyInternal_cold_12(void *a1)
{
  APSLogErrorAt();
  result = CFRetain(*MEMORY[0x277CBED10]);
  *a1 = result;
  return result;
}

uint64_t airPlayDescription_copyPropertyInternal_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

uint64_t airPlayDescription_copyPropertyInternal_cold_14(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

uint64_t airPlayDescription_copyMuteControlType_cold_1()
{
  FigCFNumberGetSInt64();
  APSGetAPMuteControlTypeName();
  return OUTLINED_FUNCTION_4_1();
}

void airPlayDescription_copyEndpointInfoValueCFArray_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t airPlayDescription_copyDisplayDescriptionArray_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -71751;
  return result;
}

void airPlayDescription_copyEndpointInfoValueCFDictionary_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void airPlayDescription_copyEndpointInfoValueCFString_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t airPlayDescription_copyOEMIcons_cold_1(const void *a1)
{
  APSLogErrorAt();
  CFRelease(a1);

  return APSLogErrorAt();
}

CFTypeRef airplayDescription_copyReceiverModifiesMainHighLatency_cold_1(const void **a1, uint64_t a2, void *a3, _DWORD *a4)
{
  *a1 = 0;
  v7 = airPlayDescription_copyManufacturer();
  *a4 = v7;
  v8 = *a1;
  if (v7)
  {
    v9 = 1;
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = FigCFEqual() == 0;
  if (v8)
  {
LABEL_3:
    CFRelease(v8);
  }

LABEL_4:
  v10 = MEMORY[0x277CBED28];
  if (v9)
  {
    v10 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v10);
  *a3 = result;
  return result;
}

uint64_t airPlayDescription_UpdateWithTransportDevice_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t airPlayDescription_SetEndpointInfo_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t SPHubbedDevicesProviderCreate(CFTypeRef *a1)
{
  v2 = APSIsAPMSpeaker();
  IsAirplayd = FigServer_IsAirplayd();
  v4 = MEMORY[0x223DAEBE0]();
  Int64 = APSSettingsGetInt64();
  v6 = APSSettingsGetInt64();
  cf = 0;
  if (a1)
  {
    *a1 = 0;
    if (!v4 && IsAirplayd)
    {
      APSLogErrorAt();
      v13 = 90;
      v8 = 4294960587;
    }

    else
    {
      if (IsAirplayd || !v2 || Int64 || v6)
      {
        if (v4)
        {
          v9 = 0;
        }

        else
        {
          v9 = v6 == 0;
        }

        v10 = !v9;
        if (IsAirplayd || !v10)
        {
          v12 = SPHubbedDevicesProviderPropertyCreate(&cf);
          if (v12)
          {
            v8 = v12;
            goto LABEL_37;
          }
        }

        else
        {
          v11 = SPHubbedDevicesProviderDefaultsCreate(*MEMORY[0x277CBECE8], 0, &cf);
          if (v11)
          {
            v8 = v11;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v7 = SPHubbedDevicesProviderHomeHubCreate(*MEMORY[0x277CBECE8], &cf);
        if (v7)
        {
          v8 = v7;
LABEL_37:
          APSLogErrorAt();
          v13 = 90;
          goto LABEL_23;
        }
      }

      if (cf)
      {
        v8 = 0;
        *a1 = cf;
        cf = 0;
        v13 = 50;
      }

      else
      {
        APSLogErrorAt();
        v13 = 90;
        v8 = 4294960534;
      }
    }
  }

  else
  {
    v13 = 90;
    v8 = 4294960591;
  }

LABEL_23:
  if (v13 >= gLogCategory_SPHubbedDevicesProvider && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14 = cf;
  if (cf)
  {
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v15)
    {
      v15(v14);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v8;
}

uint64_t SPHubbedDevicesProviderStartService_cold_2()
{
  result = APSLogErrorAt();
  _MergedGlobals_16 = -6735;
  return result;
}

uint64_t __SPHubbedDevicesProviderStartService_block_invoke_cold_1(uint64_t *a1)
{
  _MergedGlobals_16 = SPHubbedDevicesProviderCreate(&qword_280FB1B48);
  if (_MergedGlobals_16)
  {
    return APSLogErrorAt();
  }

  if (!qword_280FB1B48)
  {
    result = APSLogErrorAt();
    _MergedGlobals_16 = -6762;
    return result;
  }

  _MergedGlobals_16 = SPHubbedDevicesProviderAddListener(qword_280FB1B48, *a1, hubbedDevicesProviderRemote_handleDevicesChanged);
  if (_MergedGlobals_16)
  {
    return APSLogErrorAt();
  }

  _MergedGlobals_16 = SPHubbedDevicesProviderStartAsync(qword_280FB1B48);
  if (_MergedGlobals_16)
  {
    APSLogErrorAt();
    return SPHubbedDevicesProviderRemoveListener(qword_280FB1B48, *a1);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterAddListener();
  }
}

uint64_t __SPHubbedDevicesProviderStartService_block_invoke_cold_2()
{
  result = APSLogErrorAt();
  _MergedGlobals_16 = -6762;
  return result;
}

void APCarPlayHasDeviceUnlockedSinceBoot_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"int soft_MKBDeviceUnlockedSinceBoot()") description:{@"APCarPlayCarServicesInterface.m", 90, @"%s", dlerror()}];
  __break(1u);
}

uint64_t __APCarPlayGetHeadUnitRestrictionsDictionary_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_11();
  UpTicksToMilliseconds();
  return OUTLINED_FUNCTION_2();
}

void __getCARConnectionTimeStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCARConnectionTimeStoreClass(void)_block_invoke") description:{@"APCarPlayCarServicesInterface.m", 60, @"Unable to find class %s", "CARConnectionTimeStore"}];
  __break(1u);
}

void CarKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarKitLibrary(void)") description:{@"APCarPlayCarServicesInterface.m", 51, @"%s", *a1}];
  __break(1u);
}

void __getCARConnectionEventClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCARConnectionEventClass(void)_block_invoke") description:{@"APCarPlayCarServicesInterface.m", 63, @"Unable to find class %s", "CARConnectionEvent"}];
  __break(1u);
}

void __getCRSAppHistoryControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCRSAppHistoryControllerClass(void)_block_invoke") description:{@"APCarPlayCarServicesInterface.m", 46, @"Unable to find class %s", "CRSAppHistoryController"}];
  __break(1u);
}

void __getCRSAppHistoryControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarPlayServicesLibrary(void)") description:{@"APCarPlayCarServicesInterface.m", 42, @"%s", *a1}];
  __break(1u);
}

void __getCRFeatureAvailabilityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCRFeatureAvailabilityClass(void)_block_invoke") description:{@"APCarPlayCarServicesInterface.m", 55, @"Unable to find class %s", "CRFeatureAvailability"}];
  __break(1u);
}

void __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *MobileKeyBagLibrary(void)") description:{@"APCarPlayCarServicesInterface.m", 85, @"%s", *a1}];
  __break(1u);
}

void APCarPlayInitiateJarvisProcessing_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_AFSiriActivationCarPlayDeviceVoice(uint64_t description:{NSString *, NSDictionary *, void (^)(BOOL, NSError *))"), @"APCarPlaySiriInterface.m", 48, @"%s", dlerror()}];
  __break(1u);
}

uint64_t __APCarPlayInitiateJarvisProcessing_block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 domain];
  [a2 code];
  return LogPrintF();
}

void __getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *AssistantServicesLibrary(void)") description:{@"APCarPlaySiriInterface.m", 44, @"%s", *a1}];
  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getVTPreferencesClass(void)_block_invoke") description:{@"APCarPlaySiriInterface.m", 52, @"Unable to find class %s", "VTPreferences"}];
  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *VoiceTriggerLibrary(void)") description:{@"APCarPlaySiriInterface.m", 51, @"%s", *a1}];
  __break(1u);
}

void __getCSCoreSpeechServicesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCSCoreSpeechServicesClass(void)_block_invoke") description:{@"APCarPlaySiriInterface.m", 56, @"Unable to find class %s", "CSCoreSpeechServices"}];
  __break(1u);
}

void __getCSCoreSpeechServicesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CoreSpeechLibrary(void)") description:{@"APCarPlaySiriInterface.m", 55, @"%s", *a1}];
  __break(1u);
}

void metadataSender_handleMetadataEvent(int a1, NSObject **cf, int a3, CFTypeRef a4, const void *a5, char a6)
{
  if (!a4 || *(cf + 16))
  {
    return;
  }

  if (a3 == 1952807028)
  {
    OUTLINED_FUNCTION_6_13();
    if ((v17 & 1) == 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
      {
        goto LABEL_55;
      }

      return;
    }

    if ((v17 & 0x20) != 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
      {
        goto LABEL_55;
      }

      return;
    }

LABEL_48:
    CFRetain(cf);
    CFRetain(a4);
    CFRetain(a5);
LABEL_61:
    APSDispatchAsyncFHelper();
    return;
  }

  v9 = a3 == 1836215907 || a3 == 1836216435;
  if (v9 || a3 == 1836217187)
  {
    switch(a3)
    {
      case 1836215907:
        v12 = @"mrNowPlayingClient";
        v13 = 512;
        v14 = @"updateMRNowPlayingClient";
        break;
      case 1836217187:
        v12 = @"mrSupportedCommandsFromSender";
        v13 = 128;
        v14 = @"updateMRSupportedCommands";
        break;
      case 1836216435:
        v12 = @"mrPlaybackState";
        v13 = 256;
        v14 = @"updateMRPlaybackState";
        break;
      default:
        if (gLogCategory_APMetadataSender <= 90)
        {
          OUTLINED_FUNCTION_2_27();
          if (!v9 || _LogCategory_Initialize())
          {
            LogPrintF();
          }
        }

        v12 = 0;
        v14 = 0;
LABEL_60:
        block = CFRetain(cf);
        v22 = CFRetain(a4);
        v23 = CFRetain(v14);
        v24 = CFRetain(v12);
        goto LABEL_61;
    }

    if ((*(cf + 5) & v13) == 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
      {
        goto LABEL_55;
      }

      return;
    }

    goto LABEL_60;
  }

  if (a3 == 1852860704)
  {
    v19 = CFGetTypeID(a4);
    if (v19 == CFDictionaryGetTypeID())
    {
      if (!*(cf + 16))
      {
        if ((*(cf + 20) & 0x20) != 0)
        {
          CFRetain(cf);
          CFRetain(a4);
          CFRetain(a5);
          v20 = cf[3];
          block = MEMORY[0x277D85DD0];
          v22 = 3221225472;
          v23 = __metadataSender_handleMRNowPlayingInfoChanged_block_invoke;
          v24 = &__block_descriptor_57_e5_v8__0l;
          v25 = cf;
          v26 = a4;
          v27 = a5;
          v28 = a6;
          dispatch_async(v20, &block);
          return;
        }

        if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
        {
          goto LABEL_55;
        }
      }
    }

    else
    {

      APSLogErrorAt();
    }

    return;
  }

  if (a3 == 1886547815)
  {
    OUTLINED_FUNCTION_6_13();
    if ((v15 & 0x20) != 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
      {
        goto LABEL_55;
      }

      return;
    }

    if ((v15 & 4) == 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
      {
        goto LABEL_55;
      }

      return;
    }

    CFDictionaryGetDouble();
    if (v16 == 0.0)
    {
      return;
    }

    goto LABEL_48;
  }

  if (a3 != 1634890784)
  {
    return;
  }

  OUTLINED_FUNCTION_6_13();
  if ((v11 & 2) != 0)
  {
    if ((v11 & 0x40) != 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
      {
        goto LABEL_55;
      }

      return;
    }

    goto LABEL_48;
  }

  if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
  {
LABEL_55:
    OUTLINED_FUNCTION_4_1();
  }
}

void APMetadataSenderInvalidate(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 16))
    {
      metadataSender_invalidateInternal(a1);
    }
  }
}

void metadataSender_invalidateInternal(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 1;
      APMetadataSourceRemoveEventCallback(*(a1 + 32), *(a1 + 40));
      v2 = *(a1 + 32);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 32) = 0;
      }

      v3 = *(a1 + 48);
      if (v3)
      {
        CFRelease(v3);
        *(a1 + 48) = 0;
      }

      v4 = *(a1 + 80);
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 80) = 0;
      }

      v5 = *(a1 + 96);
      if (v5)
      {
        CFRelease(v5);
        *(a1 + 96) = 0;
      }

      v6 = *(a1 + 112);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 112) = 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_1();
  }
}

void metadataSender_sendInitialMetadataInternal(void *cf)
{
  v7 = 0;
  v8 = 0;
  cfa = 0;
  v6 = 0;
  if (!*(cf + 16))
  {
    metadataSender_cloneMetadataDictionary(cf[10], cf[4], @"APNowPlayingInfoArtwork");
    v2 = *(cf + 88) || CFDictionaryGetCount(cf[10]) > 0;
    *(cf + 88) = v2;
    metadataSender_processPendingAPArtworkMetadataChanges(cf);
    metadataSender_cloneMetadataDictionary(cf[12], cf[4], @"APNowPlayingInfoProgress");
    v3 = *(cf + 104) || CFDictionaryGetCount(cf[12]) > 0;
    *(cf + 104) = v3;
    metadataSender_processPendingAPProgressMetadataChanges(cf);
    metadataSender_cloneMetadataDictionary(cf[14], cf[4], @"APNowPlayingInfoText");
    v4 = *(cf + 120) || CFDictionaryGetCount(cf[14]) > 0;
    *(cf + 120) = v4;
    metadataSender_processPendingAPTextMetadataChanges(cf);
    APMetadataSourceCopyMetadata(cf[4], @"MRNowPlayingInfo", &cfa);
    metadataSender_sendMRNowPlayingInfo(cf, cfa, @"replace", 0);
    APMetadataSourceCopyMetadata(cf[4], @"MRSupportedCommands", &v8);
    APMetadataSourceCopyMetadata(cf[4], @"MRPlaybackState", &v7);
    APMetadataSourceCopyMetadata(cf[4], @"MRNowPlayingClient", &v6);
    metadataSender_sendMRExtendedMetadata(cf, v8, 128, @"updateMRSupportedCommands", @"mrSupportedCommandsFromSender");
    metadataSender_sendMRExtendedMetadata(cf, v7, 256, @"updateMRPlaybackState", @"mrPlaybackState");
    metadataSender_sendMRExtendedMetadata(cf, v6, 512, @"updateMRNowPlayingClient", @"mrNowPlayingClient");
    if (cfa)
    {
      CFRelease(cfa);
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(cf);
}

void metadataSender_Finalize(uint64_t a1)
{
  if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  metadataSender_invalidateInternal(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 24) = 0;
  }
}

void metadataSender_cloneMetadataDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v4 = APMetadataSourceCopyMetadata(a2, a3, &cf);
  v5 = cf;
  if (!v4)
  {
    context[0] = 0;
    context[1] = a1;
    if (cf)
    {
      OUTLINED_FUNCTION_0_12();
      CFDictionaryApplyFunction(v6, v7, context);
      v5 = cf;
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void metadataSender_processPendingAPArtworkMetadataChanges(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 16))
  {
    return;
  }

  if (!(*(a1 + 64))(*(a1 + 56)))
  {
    OUTLINED_FUNCTION_8_11();
    if (!(v5 ^ v6 | v4) || v7 == -1 && !OUTLINED_FUNCTION_10())
    {
      goto LABEL_76;
    }

LABEL_25:
    OUTLINED_FUNCTION_4_1();
LABEL_76:
    if (cf)
    {
      CFRelease(cf);
    }

    return;
  }

  v2 = *(a1 + 20);
  if ((v2 & 2) == 0)
  {
    OUTLINED_FUNCTION_8_11();
    if (!(v5 ^ v6 | v4) || v3 == -1 && !OUTLINED_FUNCTION_10())
    {
      goto LABEL_76;
    }

    goto LABEL_25;
  }

  if ((v2 & 0x40) != 0)
  {
    OUTLINED_FUNCTION_8_11();
    if (!(v5 ^ v6 | v4) || v18 == -1 && !OUTLINED_FUNCTION_10())
    {
      goto LABEL_76;
    }

    goto LABEL_25;
  }

  if (!*(a1 + 88))
  {
    goto LABEL_76;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(a1 + 48));
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = *MEMORY[0x277CBECE8];
    v9(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
    if (cf)
    {
      v11 = *(a1 + 80);
      *(a1 + 80) = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a1 + 88) = 0;
      (*(a1 + 72))(&targetBBuf, *(a1 + 56));
      if ((v31 & 1) == 0)
      {
        if (gLogCategory_APMetadataSender <= 90)
        {
          OUTLINED_FUNCTION_2_27();
          if (!v4 || _LogCategory_Initialize())
          {
            LogPrintF();
          }
        }

        goto LABEL_74;
      }

      v12 = targetBBuf;
      v13 = cf;
      v14 = *(a1 + 20);
      targetBBuf = 0;
      theBuffer = 0;
      v33 = v12;
      Value = CFDictionaryGetValue(v11, @"artworkMIMEType");
      if (Value)
      {
        v16 = Value;
      }

      else
      {
        v16 = @"image/none";
      }

      if (CFEqual(v16, @"image/jpeg"))
      {
        v17 = 1785750887;
      }

      else
      {
        if (!CFEqual(v16, @"image/png"))
        {
          if (!CFEqual(v16, @"image/none"))
          {
            if (gLogCategory_APMetadataSender <= 90)
            {
              OUTLINED_FUNCTION_2_27();
              if (!v4 || _LogCategory_Initialize())
              {
                LogPrintF();
              }
            }

            v29 = 0;
            goto LABEL_68;
          }

          v19 = OUTLINED_FUNCTION_9_9();
          if (!v19)
          {
            ScaledImageDataWithData = 0;
            v17 = 1852796517;
            goto LABEL_54;
          }

LABEL_84:
          v29 = v19;
          APSLogErrorAt();
          goto LABEL_68;
        }

        v17 = 1886283552;
      }

      v19 = OUTLINED_FUNCTION_9_9();
      if (!v19)
      {
        v20 = CFDictionaryGetValue(v11, @"artworkData");
        if (v20 && (v21 = v20, CFDataGetLength(v20) >= 1))
        {
          if ((v14 & 0x10) != 0)
          {
            goto LABEL_51;
          }

          OUTLINED_FUNCTION_8_11();
          if (v5 ^ v6 | v4 && (v22 != -1 || OUTLINED_FUNCTION_10()))
          {
            OUTLINED_FUNCTION_4_1();
          }

          ScaledImageDataWithData = CreateScaledImageDataWithData();
          if (!ScaledImageDataWithData)
          {
LABEL_51:
            ScaledImageDataWithData = CFRetain(v21);
          }

          BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
          if (BlockBufferWithCFDataNoCopy)
          {
            v29 = BlockBufferWithCFDataNoCopy;
            goto LABEL_61;
          }

          appended = CMBlockBufferAppendBufferReference(theBuffer, targetBBuf, 0, 0, 0);
          if (appended)
          {
            v29 = appended;
            goto LABEL_61;
          }
        }

        else
        {
          ScaledImageDataWithData = 0;
        }

LABEL_54:
        v26 = theBuffer;
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v27)
        {
          v28 = v27(v13, v17, v26, 0);
          if (!v28)
          {
            if (gLogCategory_APMetadataSender <= 50)
            {
              OUTLINED_FUNCTION_2_27();
              if (!v4 || _LogCategory_Initialize())
              {
                if (ScaledImageDataWithData)
                {
                  CFDataGetLength(ScaledImageDataWithData);
                }

                LogPrintF();
              }
            }

            v29 = 0;
            if (!ScaledImageDataWithData)
            {
              goto LABEL_68;
            }

LABEL_67:
            CFRelease(ScaledImageDataWithData);
LABEL_68:
            if (targetBBuf)
            {
              CFRelease(targetBBuf);
            }

            if (theBuffer)
            {
              CFRelease(theBuffer);
            }

            if (v29)
            {
              APSLogErrorAt();
            }

LABEL_74:
            if (v11)
            {
              CFRelease(v11);
            }

            goto LABEL_76;
          }

          v29 = v28;
        }

        else
        {
          v29 = -12782;
        }

LABEL_61:
        APSLogErrorAt();
        if (!ScaledImageDataWithData)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      goto LABEL_84;
    }
  }
}

void metadataSender_processPendingAPProgressMetadataChanges(uint64_t a1)
{
  cf = 0;
  if (!*(a1 + 16))
  {
    if (!(*(a1 + 64))(*(a1 + 56)))
    {
      if (gLogCategory_APMetadataSender > 30 || gLogCategory_APMetadataSender == -1 && !OUTLINED_FUNCTION_10())
      {
        goto LABEL_39;
      }

LABEL_9:
      OUTLINED_FUNCTION_4_1();
      goto LABEL_39;
    }

    if ((*(a1 + 20) & 4) == 0)
    {
      if (gLogCategory_APMetadataSender > 30 || gLogCategory_APMetadataSender == -1 && !OUTLINED_FUNCTION_10())
      {
        goto LABEL_39;
      }

      goto LABEL_9;
    }

    if (!*(a1 + 104))
    {
LABEL_39:
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    CMBaseObject = APSenderSessionGetCMBaseObject(*(a1 + 48));
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v4 = *MEMORY[0x277CBECE8];
      v3(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
      if (cf)
      {
        v5 = *(a1 + 96);
        *(a1 + 96) = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(a1 + 104) = 0;
        (*(a1 + 72))(&targetBBuf, *(a1 + 56));
        if ((v23 & 1) == 0)
        {
          if (gLogCategory_APMetadataSender <= 90)
          {
            OUTLINED_FUNCTION_2_27();
            if (!v20 || _LogCategory_Initialize())
            {
              LogPrintF();
            }
          }

          goto LABEL_34;
        }

        v6 = targetBBuf;
        v7 = v22;
        v8 = cf;
        v26 = targetBBuf;
        BlockBufferWithCFString = 0;
        targetBBuf = 0;
        theBuffer = 0;
        CFDictionaryGetDouble();
        if (BlockBufferWithCFString || (v10 = v9, CFDictionaryGetDouble(), BlockBufferWithCFString) || (v12 = v11, CFDictionaryGetDouble(), BlockBufferWithCFString))
        {
          APSLogErrorAt();
        }

        else
        {
          v14 = v13;
          Current = CFAbsoluteTimeGetCurrent();
          Mutable = CFStringCreateMutable(v4, 0);
          if (Mutable)
          {
            v17 = Mutable;
            CFStringAppendFormat(Mutable, 0, @"progress: %u/%u/%u\n", (v6 - ((v12 + Current - v14) * v7)), v6, (v6 - ((v12 + Current - v14) * v7) + (v10 * v7)));
            BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
            if (!BlockBufferWithCFString)
            {
              BlockBufferWithCFString = FigCreateBlockBufferCopyingMemoryBlock();
              if (!BlockBufferWithCFString)
              {
                BlockBufferWithCFString = CMBlockBufferAppendBufferReference(theBuffer, targetBBuf, 0, 0, 0);
                if (!BlockBufferWithCFString)
                {
                  v18 = theBuffer;
                  v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v19)
                  {
                    BlockBufferWithCFString = v19(v8, 1886547815, v18, 0);
                    if (!BlockBufferWithCFString)
                    {
                      if (gLogCategory_APMetadataSender <= 40)
                      {
                        OUTLINED_FUNCTION_2_27();
                        if (!v20 || _LogCategory_Initialize())
                        {
                          CMBlockBufferGetDataLength(targetBBuf);
                          LogPrintF();
                        }
                      }

                      goto LABEL_28;
                    }
                  }

                  else
                  {
                    BlockBufferWithCFString = -12782;
                  }
                }
              }
            }

            APSLogErrorAt();
LABEL_28:
            CFRelease(v17);
            if (targetBBuf)
            {
              CFRelease(targetBBuf);
            }

            goto LABEL_30;
          }

          APSLogErrorAt();
          BlockBufferWithCFString = -6728;
        }

LABEL_30:
        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        if (BlockBufferWithCFString)
        {
          APSLogErrorAt();
        }

LABEL_34:
        if (v5)
        {
          CFRelease(v5);
        }

        goto LABEL_39;
      }
    }
  }
}

void metadataSender_processPendingAPTextMetadataChanges(uint64_t a1)
{
  cf = 0;
  v17 = 0;
  if (*(a1 + 16))
  {
    goto LABEL_60;
  }

  if (!(*(a1 + 64))(*(a1 + 56)))
  {
    if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

  v2 = *(a1 + 20);
  if (v2)
  {
    if ((v2 & 0x20) != 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
      {
        goto LABEL_32;
      }

      goto LABEL_58;
    }

    if (!*(a1 + 120))
    {
      goto LABEL_58;
    }

    CMBaseObject = APSenderSessionGetCMBaseObject(*(a1 + 48));
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v4)
    {
      goto LABEL_58;
    }

    v5 = *MEMORY[0x277CBECE8];
    v4(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &v17);
    if (!v17)
    {
      goto LABEL_58;
    }

    v6 = *(a1 + 112);
    *(a1 + 112) = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 120) = 0;
    if ((*(a1 + 20) & 8) == 0)
    {
      if (APMetadataSourceCopyMetadata(*(a1 + 32), @"APNowPlayingInfoText", &cf))
      {
        goto LABEL_77;
      }

      for (i = 0; i != 6; ++i)
      {
        v8 = metadataSender_processPendingAPTextMetadataChanges_mandatoryTextKeys[i];
        if (!FigCFDictionarySetValueFromKeyInDict())
        {
          CFDictionarySetValue(v6, v8, &stru_283570B70);
        }
      }
    }

    (*(a1 + 72))(&v22, *(a1 + 56));
    if ((v23 & 1) == 0)
    {
      if (gLogCategory_APMetadataSender <= 90 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_55;
    }

    v9 = v22;
    v10 = v17;
    bzero(&v22, 0xB8uLL);
    v20 = 0;
    v21 = 0;
    destinationBuffer = 0;
    sourceBytes = v9;
    DMAPContentBlock_Init();
    v24 = DMAPContentBlock_OpenContainer();
    if (!v24)
    {
      v11 = &off_27849FB78;
      v12 = 10;
      while (1)
      {
        v24 = DMAPContentBlock_AddCFObjectByKey();
        if (v24)
        {
          break;
        }

        v11 += 2;
        if (!--v12)
        {
          if (CFDictionaryGetInt64())
          {
            v24 = DMAPContentBlock_AddInt8();
          }

          CFDictionaryGetInt64();
          if (!v24)
          {
            v24 = DMAPContentBlock_AddInt8();
            if (v24)
            {
              break;
            }
          }

          v24 = 0;
          CFDictionaryGetDouble();
          v13 = DMAPContentBlock_AddInt8();
          v24 = v13;
          if (v13)
          {
            break;
          }

          CFDictionaryGetDouble();
          if (!v24)
          {
            v24 = DMAPContentBlock_AddInt32();
            if (v24)
            {
              break;
            }
          }

          v24 = 0;
          v24 = DMAPContentBlock_CloseContainer();
          if (v24)
          {
            break;
          }

          v24 = DMAPContentBlock_Commit();
          if (v24)
          {
            break;
          }

          v24 = CMBlockBufferCreateWithMemoryBlock(v5, 0, v20 + 4, *MEMORY[0x277CBECF0], 0, 0, v20 + 4, 1u, &destinationBuffer);
          if (v24)
          {
            break;
          }

          v24 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL);
          if (v24)
          {
            break;
          }

          v24 = CMBlockBufferReplaceDataBytes(v21, destinationBuffer, 4uLL, v20);
          if (v24)
          {
            break;
          }

          v14 = destinationBuffer;
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v15)
          {
            v24 = -12782;
            break;
          }

          v24 = v15(v10, 1952807028, v14, 0);
          if (v24)
          {
            break;
          }

          if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
          {
            OUTLINED_FUNCTION_4_1();
          }

          goto LABEL_52;
        }
      }
    }

    APSLogErrorAt();
LABEL_52:
    DMAPContentBlock_Free();
    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }

    if (!v24)
    {
      goto LABEL_55;
    }

LABEL_77:
    APSLogErrorAt();
LABEL_55:
    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_58;
  }

  if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
  {
LABEL_32:
    OUTLINED_FUNCTION_4_1();
  }

LABEL_58:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_60:
  if (v17)
  {
    CFRelease(v17);
  }
}

void metadataSender_sendMRExtendedMetadata(uint64_t a1, const void *a2, int a3, const void *a4, const void *a5)
{
  cf = 0;
  if (!a2 || *(a1 + 16))
  {
    goto LABEL_18;
  }

  if (!a5)
  {
LABEL_23:
    APSLogErrorAt();
LABEL_18:
    if (cf)
    {
      CFRelease(cf);
    }

    return;
  }

  if (a3 && (*(a1 + 20) & a3) == 0)
  {
    if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_4_1();
    }

    goto LABEL_18;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(a1 + 48));
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = *MEMORY[0x277CBECE8];
    v9(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
    if (cf)
    {
      Mutable = CFDictionaryCreateMutable(v10, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v12 = Mutable;
        CFDictionarySetValue(Mutable, a5, a2);
        if (metadataSender_sendMRMetadata(cf, a4, v12))
        {
          APSLogErrorAt();
        }

        else if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10()))
        {
          OUTLINED_FUNCTION_4_1();
        }

        CFRelease(v12);
        goto LABEL_18;
      }

      goto LABEL_23;
    }
  }
}

void metadataSender_handleAPArtworkMetadataChangedInternal()
{
  OUTLINED_FUNCTION_7_11();
  if (!v2)
  {
    v3 = *(v1 + 80);
    v4 = v0[1];
    v7[0] = 0;
    v7[1] = v3;
    if (v4)
    {
      OUTLINED_FUNCTION_0_12();
      CFDictionaryApplyFunction(v5, v6, v7);
      if (LOBYTE(v7[0]))
      {
        *(v1 + 88) = 1;
        metadataSender_processPendingAPArtworkMetadataChanges(v1);
      }
    }
  }

  CFRelease(*v0);
  CFRelease(v0[1]);
  CFRelease(v0[2]);
}

void metadataSender_handleAPProgressMetadataChangedInternal()
{
  OUTLINED_FUNCTION_7_11();
  if (!v2)
  {
    v3 = *(v1 + 96);
    v4 = v0[1];
    v7[0] = 0;
    v7[1] = v3;
    if (v4)
    {
      OUTLINED_FUNCTION_0_12();
      CFDictionaryApplyFunction(v5, v6, v7);
      if (LOBYTE(v7[0]))
      {
        *(v1 + 104) = 1;
        metadataSender_processPendingAPProgressMetadataChanges(v1);
      }
    }
  }

  CFRelease(*v0);
  CFRelease(v0[1]);
  CFRelease(v0[2]);
}

void metadataSender_handleAPTextMetadataChangedInternal()
{
  OUTLINED_FUNCTION_7_11();
  if (!v2)
  {
    v3 = *(v1 + 112);
    v4 = v0[1];
    v7[0] = 0;
    v7[1] = v3;
    if (v4)
    {
      OUTLINED_FUNCTION_0_12();
      CFDictionaryApplyFunction(v5, v6, v7);
      if (LOBYTE(v7[0]))
      {
        *(v1 + 120) = 1;
        metadataSender_processPendingAPTextMetadataChanges(v1);
      }
    }
  }

  CFRelease(*v0);
  CFRelease(v0[1]);
  CFRelease(v0[2]);
}

void metadataSender_handleMRExtendedMetadataChangedInternal(uint64_t a1)
{
  v2 = *a1;
  if (!v2[16])
  {
    metadataSender_sendMRExtendedMetadata(v2, *(a1 + 8), 0, *(a1 + 16), *(a1 + 24));
    v2 = *a1;
  }

  CFRelease(v2);
  CFRelease(*(a1 + 8));
  CFRelease(*(a1 + 16));
  v3 = *(a1 + 24);

  CFRelease(v3);
}

void metadataSender_sendMRNowPlayingInfo_cold_4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTypeAudio(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 131, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoTypeVideo_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTypeVideo(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 134, @"%s", dlerror()}];
  __break(1u);
}

uint64_t APAudioZeroTimeStampProviderCreate(double a1, uint64_t a2, char a3, uint64_t *a4)
{
  if (_MergedGlobals_18 != -1)
  {
    dispatch_once(&_MergedGlobals_18, &__block_literal_global_28);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v8 = Instance;
  bzero((Instance + 16), 0x90uLL);
  result = 0;
  *(v8 + 16) = a1;
  *(v8 + 157) = a3;
  *(v8 + 156) = 0;
  *a4 = v8;
  return result;
}

_BYTE *audioStream_dissociateInternal_0(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v3 = result;
    if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    audioStream_invalidateTransportMDCStream_0();
    APSDispatchSyncTask();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = *(DerivedStorage + 480);
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __audioStream_stopSilentAudio_block_invoke;
      block[3] = &__block_descriptor_tmp_36;
      block[4] = DerivedStorage;
      block[5] = a1;
      dispatch_sync(v5, block);
    }

    v6 = *(v3 + 39);
    if (v6)
    {
      dispatch_source_cancel(*(v3 + 39));
      dispatch_release(v6);
      *(v3 + 39) = 0;
    }

    audioStream_invalidateTransportStreams();
    FigSimpleMutexLock();
    v7 = *(v3 + 20);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 20) = 0;
    }

    v8 = *(v3 + 21);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 21) = 0;
    }

    v9 = *(v3 + 22);
    if (v9)
    {
      CFRelease(v9);
      *(v3 + 22) = 0;
    }

    result = FigSimpleMutexUnlock();
    if (*(v3 + 1))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      return FigDispatchAsyncPostNotification();
    }
  }

  return result;
}

uint64_t audioStream_suspendInternal_0(uint64_t a1)
{
  v23[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a1;
  context[1] = v23;
  cf = 0;
  CFDictionaryGetInt64();
  CFDictionaryGetInt64();
  if (*DerivedStorage || !*(DerivedStorage + 185))
  {
    Mutable = 0;
  }

  else
  {
    if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    v3 = CMBaseObjectGetDerivedStorage();
    v25 = 0;
    v24 = 0;
    v23[1] = 0;
    if (!*v3)
    {
      v4 = v3;
      if (*(v3 + 185))
      {
        if (*(v3 + 496))
        {
          if (APSThreadSafeDictionaryCopyValueIfPresent() && APSThreadSafeDictionaryGetInt64IfPresent())
          {
            APSThreadSafeDictionaryGetInt32IfPresent();
            mach_absolute_time();
            UpTicksToSeconds();
            APSThreadSafeDictionarySetInt32();
            APSThreadSafeDictionaryRemoveValue();
          }

          v5 = *(v4 + 496);
          if (v5)
          {
            CFRelease(v5);
            *(v4 + 496) = 0;
          }
        }
      }
    }

    if (v25)
    {
      CFRelease(v25);
    }

    dispatch_sync_f(*(DerivedStorage + 304), context, audioStream_stopTimer);
    if (v23[0])
    {
      if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      v23[0] = 0;
    }

    FigSimpleMutexLock();
    v6 = MEMORY[0x277CBECE8];
    if (*(DerivedStorage + 168))
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x277CE5078], *v6, &cf);
      }

      CFGetInt64();
    }

    FigSimpleMutexUnlock();
    audioStream_invalidateTransportMDCStream_0();
    audioStream_invalidateTransportStreams();
    APSIOReporterGetCoreCaptureCount();
    v23[0] = 0;
    if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    Mutable = CFDictionaryCreateMutable(*v6, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      v10 = *(DerivedStorage + 456);
      if (v10)
      {
        CFDictionarySetValue(Mutable, @"senderNANWifiStats", v10);
      }

      if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      v11 = *(DerivedStorage + 56);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v12)
      {
        v12(v11, 96, Mutable);
      }

      v13 = CMBaseObjectGetDerivedStorage();
      dispatch_source_set_timer(*(v13 + 312), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      if (*(v13 + 185) && gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      v14 = *(v13 + 440);
      if (v14)
      {
        CFRelease(v14);
        *(v13 + 440) = 0;
      }

      v15 = *(v13 + 448);
      if (v15)
      {
        CFRelease(v15);
        *(v13 + 448) = 0;
      }

      FigSimpleMutexLock();
      *(DerivedStorage + 152) = 0;
      v16 = *(DerivedStorage + 160);
      if (v16)
      {
        CFRelease(v16);
        *(DerivedStorage + 160) = 0;
      }

      v17 = *(DerivedStorage + 168);
      if (v17)
      {
        CFRelease(v17);
        *(DerivedStorage + 168) = 0;
      }

      v18 = *(DerivedStorage + 176);
      if (v18)
      {
        CFRelease(v18);
        *(DerivedStorage + 176) = 0;
      }

      v19 = *(DerivedStorage + 224);
      if (v19)
      {
        CFRelease(v19);
        *(DerivedStorage + 224) = 0;
      }

      *(DerivedStorage + 184) = 0;
      *(DerivedStorage + 232) = 0;
      audioStream_updateIsResumedAndPostNotification(a1, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      FigSimpleMutexUnlock();
    }

    else
    {
      APSLogErrorAt();
      v23[0] = -16761;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v23[0];
}

void audioStream_setAudioModeInternal_0()
{
  v1 = OUTLINED_FUNCTION_3_5();
  AudioModeForEndpointStream = APSenderSessionUtilityGetAudioModeForEndpointStream();
  v3 = *(v1 + 120);
  v4 = *(v0 + 8);
  *(v1 + 120) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*(v1 + 185))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionarySetValue(Mutable, @"audioMode", AudioModeForEndpointStream);
      if (*(v1 + 129))
      {
        v7 = *(v1 + 176);
        if (v7)
        {
          v8 = CFRetain(v7);
          if (v8)
          {
            v9 = v8;
            if (APTransportStreamSendPlistMessageCreatingPlistReply())
            {
              APSLogErrorAt();
            }

            CFRelease(v9);
            goto LABEL_16;
          }
        }
      }

      else
      {
        v10 = *(v1 + 56);
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v11 && !v11(v10, v6))
        {
          goto LABEL_16;
        }
      }

      APSLogErrorAt();
LABEL_16:
      CFRelease(v6);
      goto LABEL_17;
    }

    APSLogErrorAt();
  }

LABEL_17:
  if (*v0)
  {
    CFRelease(*v0);
  }

  v12 = *(v0 + 8);
  if (v12)
  {

    CFRelease(v12);
  }
}

uint64_t audioStream_audioHoseSendAudio(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2 == 1734700576 || a2 == 1735550308 && *(DerivedStorage + 130))
  {
    FigSimpleMutexLock();
    v7 = *(v6 + 168);
    if (v7)
    {
      v8 = CFRetain(v7);
      FigSimpleMutexUnlock();
      if (v8)
      {
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v9)
        {
          v10 = v9(v8, a2, a3);
          if (!v10)
          {
LABEL_12:
            CFRelease(v8);
            return v10;
          }
        }

        else
        {
          v10 = 4294954514;
        }

        APSLogErrorAt();
        goto LABEL_12;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  APSLogErrorAt();
  return 4294960561;
}

uint64_t audioStream_audioHoseTimeAnnounce(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 160);
  if (!v6)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v7 = CFRetain(v6);
  FigSimpleMutexUnlock();
  if (!v7)
  {
    return 0;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v8)
  {
    v9 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v9 = v8(v7, a2, a3);
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_8:
  CFRelease(v7);
  return v9;
}

uint64_t audioStream_audioHoseSendAudioBatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2 != 1734700576 && (a2 != 1735550308 || !*(DerivedStorage + 130)))
  {
    APSLogErrorAt();
    return 4294960561;
  }

  FigSimpleMutexLock();
  v7 = *(v6 + 168);
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

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = FigTransportStreamSendBatchSlow();
  }

  v11 = v10;
  if (v10)
  {
    APSLogErrorAt();
  }

  CFRelease(v8);
  return v11;
}

uint64_t audioStream_Dissociate_0(uint64_t a1)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    audioStream_dissociateInternal_0(a1);
  }

  return 0;
}

void audioStream_suspendAsync_0()
{
  OUTLINED_FUNCTION_3_5();
  audioStream_suspendInternal_0(*v0);
  if (v0[2])
  {
    CFRetain(*v0);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*v0);
  v1 = v0[1];
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t audioStream_resumeInternal(uint64_t a1, const __CFDictionary *a2)
{
  v184 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v182 = 0;
  v183 = 0;
  v180 = 0;
  cf = 0;
  v179 = 0;
  if (*DerivedStorage || (v8 = DerivedStorage, DerivedStorage[185]))
  {
    v69 = 0;
    v16 = 0;
    OUTLINED_FUNCTION_1_36();
    v67 = 0;
    v175 = 0;
    goto LABEL_250;
  }

  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    v158 = a1;
    OUTLINED_FUNCTION_2();
  }

  v9 = MEMORY[0x277CBECE8];
  if (a2)
  {
    HIDWORD(v166) = CFDictionaryGetInt64() != 0;
    theData = CFDictionaryGetValue(a2, @"EncryptionKey");
    allocator = CFDictionaryGetValue(a2, @"BBufBackingProvider");
    v10 = CFDictionaryGetValue(a2, @"HoseRegistrar");
    if (v10)
    {
      v176 = CFRetain(v10);
    }

    else
    {
      v176 = 0;
    }

    FigCFDictionaryGetInt32IfPresent();
    v11 = CFDictionaryGetValue(a2, @"InitialTransportAudioFormatDescription");
    if (v11)
    {
      v4 = CFRetain(v11);
    }

    else
    {
      v4 = 0;
    }

    FigCFDictionaryGetFloatIfPresent();
    *(v8 + 22) = (*(&v180 + 1) * 1000.0);
    FigCFDictionaryGetFloatIfPresent();
    *(v8 + 23) = (*&v180 * 1000.0);
    v12 = CMBaseObjectGetDerivedStorage();
    v189 = 0;
    v190[0] = 0;
    v187 = 0;
    v188 = 0;
    v185 = 0;
    v186 = 0;
    if (!*v12)
    {
      v2 = v12;
      if (!*(v12 + 185))
      {
        v13 = FigCFDictionaryGetValue();
        if (v13)
        {
          v14 = v13;
          if (APSThreadSafeDictionaryCopyValueIfPresent())
          {
            mach_absolute_time();
            APSThreadSafeDictionarySetInt64();
            v15 = *(v2 + 62);
            *(v2 + 62) = v14;
            CFRetain(v14);
            if (v15)
            {
              CFRelease(v15);
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

    if (v190[0])
    {
      CFRelease(v190[0]);
    }

    if (v189)
    {
      CFRelease(v189);
    }

    if (v188)
    {
      CFRelease(v188);
    }

    if (v187)
    {
      CFRelease(v187);
    }

    if (v186)
    {
      CFRelease(v186);
    }

    if (v185)
    {
      CFRelease(v185);
    }
  }

  else
  {
    HIDWORD(v166) = 0;
    theData = 0;
    v176 = 0;
    allocator = 0;
    v4 = 0;
  }

  v175 = v4;
  if (!APSAudioFormatDescriptionListContainsFormat())
  {
    APSLogErrorAt();
    APSSignalErrorAt();
    v69 = 0;
    v16 = 0;
    OUTLINED_FUNCTION_1_36();
    v184 = v156;
    v67 = v176;
    goto LABEL_250;
  }

  v3 = kAPSenderSessionTransportStreamOption_StreamPriority;
  v165 = a2;
  if (v8[131])
  {
    v170 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_37;
  }

  v53 = a1;
  v54 = *(v8 + 7);
  v190[0] = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APEndpointStreamAudio <= 30)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_8();
      v158 = "OSStatus audioStream_createTransportAudioDataStream(APSenderSessionRef, APSNetworkClockRef, APTransportStreamSendBackingProviderRef, CFStringRef, FigTransportStreamRef *)";
      LogPrintF();
    }
  }

  v60 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v60)
  {
    v4 = 4294954514;
LABEL_100:
    APSLogErrorAt();
    a1 = v53;
    v67 = v176;
    v16 = 0;
    v184 = v4;
LABEL_101:
    APSLogErrorAt();
    v69 = 0;
LABEL_249:
    OUTLINED_FUNCTION_1_36();
    goto LABEL_250;
  }

  v61 = v60(v54);
  if (v61)
  {
    v4 = v61;
    goto LABEL_100;
  }

  v2 = *v9;
  Mutable = CFDictionaryCreateMutable(*v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v4 = 4294895476;
    goto LABEL_100;
  }

  v63 = Mutable;
  v3 = @"StreamPriority";
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v64 = MEMORY[0x277CBED10];
  if (CFPreferenceNumberWithDefault)
  {
    v64 = MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(v63, @"UseLibNetwork", *v64);
  CFDictionaryAddValue(v63, @"SendBackingProvider", allocator);
  v65 = FigCFEqual();
  v66 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v65)
  {
    if (!v66)
    {
      v4 = 4294954514;
      v67 = v176;
      goto LABEL_208;
    }

    v67 = v176;
    v72 = v66(v54, 1734700576, v63, v190);
    if (v72)
    {
      v4 = v72;
      goto LABEL_208;
    }

    goto LABEL_109;
  }

  if (!v66)
  {
    v4 = 4294954514;
    v67 = v176;
    goto LABEL_208;
  }

  v67 = v176;
  v68 = v66(v54, 1819042165, v63, v190);
  if (!v68)
  {
LABEL_109:
    v4 = 0;
    v73 = v190[0];
    v190[0] = 0;
    goto LABEL_209;
  }

  v4 = v68;
LABEL_208:
  APSLogErrorAt();
  v73 = 0;
LABEL_209:
  CFRelease(v63);
  if (v190[0])
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v119 = CMBaseObject;
      v120 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v120)
      {
        v120(v119);
      }
    }

    CFRelease(v190[0]);
  }

  v184 = v4;
  if (v4)
  {
    a1 = v53;
    v16 = v73;
    goto LABEL_101;
  }

  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    v158 = v53;
    v159 = v73;
    OUTLINED_FUNCTION_2();
  }

  if (!FigCFEqual())
  {
    goto LABEL_239;
  }

  if (FigGetCFPreferenceNumberWithDefault())
  {
    v121 = FigTransportStreamGetCMBaseObject();
    v122 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v122)
    {
      v184 = v122(v121, *MEMORY[0x277CE5038], v2, &v183);
      if (!v184)
      {
        goto LABEL_223;
      }
    }

    else
    {
      v184 = -12782;
    }

LABEL_228:
    APSLogErrorAt();
    v69 = 0;
    OUTLINED_FUNCTION_1_36();
    a1 = v53;
    v16 = v73;
    goto LABEL_250;
  }

LABEL_223:
  v190[0] = 0;
  if (!v73)
  {
    goto LABEL_238;
  }

  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    v158 = v53;
    v159 = v73;
    OUTLINED_FUNCTION_2();
  }

  v123 = FigTransportStreamGetCMBaseObject();
  v124 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v124 && (v124(v123, *MEMORY[0x277CE5050], v2, v190), v190[0]))
  {
    v125 = APTNANDataSessionPreWarm();
    if (v125)
    {
      APSLogErrorAt();
    }

    if (v190[0])
    {
      CFRelease(v190[0]);
    }

    v184 = v125;
    if (v125)
    {
      goto LABEL_228;
    }
  }

  else
  {
LABEL_238:
    v184 = 0;
  }

LABEL_239:
  v126 = *(v8 + 7);
  v4 = *(v8 + 5);
  v190[0] = 0;
  v127 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v127)
  {
    v135 = -12782;
LABEL_247:
    APSLogErrorAt();
    a1 = v53;
    v67 = v176;
    v69 = 0;
    v184 = v135;
    v16 = v73;
LABEL_248:
    APSLogErrorAt();
    goto LABEL_249;
  }

  v128 = v127(v126);
  if (v128)
  {
    v135 = v128;
    goto LABEL_247;
  }

  v129 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v129)
  {
    v135 = -71820;
    goto LABEL_247;
  }

  v130 = v129;
  CFDictionarySetInt64();
  v131 = FigCFEqual();
  v132 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  a1 = v53;
  if (v131)
  {
    v4 = v175;
    if (!v132)
    {
      v134 = -12782;
      v16 = v73;
      goto LABEL_293;
    }

    v16 = v73;
    v133 = v132(v126, 1819042676, v130, v190);
    if (v133)
    {
      v134 = v133;
      goto LABEL_293;
    }
  }

  else
  {
    v4 = v175;
    if (!v132)
    {
      v134 = -12782;
      v16 = v73;
      goto LABEL_293;
    }

    v16 = v73;
    v146 = v132(v126, 1735287668, v130, v190);
    if (v146)
    {
      v134 = v146;
      goto LABEL_293;
    }
  }

  v147 = v190[0];
  v148 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v148)
  {
    v149 = v148(v147, audioStream_receivedAudioControlMessage, 0, a1);
    if (v149)
    {
      v134 = v149;
    }

    else
    {
      v150 = v190[0];
      v151 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v151)
      {
        v134 = v151(v150);
        if (!v134)
        {
          v170 = v190[0];
          v190[0] = 0;
          goto LABEL_294;
        }
      }

      else
      {
        v134 = -12782;
      }
    }
  }

  else
  {
    v134 = -12782;
  }

LABEL_293:
  APSLogErrorAt();
  v170 = 0;
LABEL_294:
  CFRelease(v130);
  if (v190[0])
  {
    v152 = FigTransportStreamGetCMBaseObject();
    if (v152)
    {
      v153 = v152;
      v154 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v154)
      {
        v154(v153);
      }
    }

    CFRelease(v190[0]);
  }

  v184 = v134;
  if (v134)
  {
    v67 = v176;
    v69 = v170;
    goto LABEL_248;
  }

  v9 = MEMORY[0x277CBECE8];
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    v158 = a1;
    v159 = v170;
    OUTLINED_FUNCTION_2();
  }

  v155 = APSGetFBOPropertyInt64();
  if (v184)
  {
    goto LABEL_313;
  }

  v17 = v155;
LABEL_37:
  if (v8[129])
  {
    v184 = RandomBytes();
    if (v184)
    {
LABEL_313:
      APSLogErrorAt();
      OUTLINED_FUNCTION_1_36();
      goto LABEL_161;
    }
  }

  v167 = v8;
  v168 = v16;
  value = v183;
  v163 = v182;
  v164 = v17;
  v18 = CMBaseObjectGetDerivedStorage();
  v190[0] = 0;
  v169 = a1;
  v19 = CMBaseObjectGetDerivedStorage();
  AudioModeForEndpointStream = APSenderSessionUtilityGetAudioModeForEndpointStream();
  APSAudioFormatDescriptionGetCompressionType();
  APSAudioFormatDescriptionGetLegacyFormatMask();
  APSAudioFormatDescriptionGetSampleRate();
  APSAudioFormatDescriptionGetFramesPerPacket();
  allocatora = *v9;
  v21 = CFDictionaryCreateMutable(*v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v21)
  {
    APSLogErrorAt();
    goto LABEL_315;
  }

  v22 = v21;
  v23 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v21, @"supportsDynamicStreamID", *MEMORY[0x277CBED28]);
  v24 = *MEMORY[0x277CBED10];
  if (*(v19 + 112))
  {
    v25 = v23;
  }

  else
  {
    v25 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v22, @"isMedia", v25);
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  if (*(v19 + 100) >= 1)
  {
    CFDictionarySetInt64();
  }

  if (FigCFEqual())
  {
    CFDictionarySetValue(v22, @"disableRetransmits", v23);
  }

  if (*(v19 + 113))
  {
    CFDictionarySetValue(v22, @"usingScreen", v23);
  }

  if (*(v19 + 296))
  {
    CFDictionarySetValue(v22, @"HTFTIsActive", v23);
  }

  CFDictionarySetInt64();
  v26 = theData;
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    CFDictionarySetData();
  }

  CFDictionarySetValue(v22, @"audioMode", AudioModeForEndpointStream);
  if (*(v19 + 128))
  {
    v33 = OUTLINED_FUNCTION_13_8(v27, v28, MEMORY[0x277CBF138], MEMORY[0x277CBF150], v29, v30, v31, v32, v158, v159, v160, v161, value, v182, v164, v165, v166, v167, v168, v169, v170, theData, v175, v176, allocatora);
    if (v33)
    {
      v39 = v33;
      if (!*(v19 + 131))
      {
        v40 = OUTLINED_FUNCTION_13_8(v33, v34, MEMORY[0x277CBF138], MEMORY[0x277CBF150], v35, v36, v37, v38, v158, v159, v160, v161, value, v163, v164, v165, v166, v167, v168, v169, v170, theDataa, v175, v176, allocatora);
        if (!v40)
        {
          APSLogErrorAt();
          v50 = 0;
LABEL_324:
          v157 = -6728;
          goto LABEL_327;
        }

        v41 = v40;
        v42 = HIDWORD(v166);
        if (v26)
        {
          v42 = 1;
        }

        if (v42)
        {
          v43 = v23;
        }

        else
        {
          v43 = v24;
        }

        CFDictionarySetValue(v40, @"streamConnectionKeyUseStreamEncryptionKey", v43);
        if (value)
        {
          CFDictionarySetValue(v41, @"streamConnectionKeyNetworkInfo", value);
        }

        CFDictionarySetValue(v39, @"streamConnectionTypeRTP", v41);
        CFRelease(v41);
        v50 = OUTLINED_FUNCTION_13_8(v44, v45, MEMORY[0x277CBF138], MEMORY[0x277CBF150], v46, v47, v48, v49, v158, v159, v160, v161, value, v163, v164, v165, v166, v167, v168, v169, v170, theDatab, v175, v176, allocatora);
        if (!v50)
        {
LABEL_323:
          APSLogErrorAt();
          goto LABEL_324;
        }

        v51 = CFDictionarySetInt64();
        if (v51)
        {
          v157 = v51;
LABEL_326:
          APSLogErrorAt();
LABEL_327:
          v59 = v167;
          CFRelease(v22);
          CFRelease(v39);
          if (v50)
          {
            CFRelease(v50);
          }

          goto LABEL_329;
        }

        CFDictionarySetValue(v39, @"streamConnectionTypeRTCP", v50);
        CFRelease(v50);
      }

      if (!*(v19 + 129))
      {
LABEL_71:
        CFDictionarySetValue(v22, @"streamConnections", v39);
        CFRelease(v39);
        goto LABEL_76;
      }

      v50 = OUTLINED_FUNCTION_13_8(v33, v34, MEMORY[0x277CBF138], MEMORY[0x277CBF150], v35, v36, v37, v38, v158, v159, v160, v161, value, v163, v164, v165, v166, v167, v168, v169, v170, theDataa, v175, v176, allocatora);
      if (v50)
      {
        v52 = CFDictionarySetInt64();
        if (!v52)
        {
          CFDictionarySetValue(v39, @"streamConnectionTypeMediaDataControl", v50);
          CFRelease(v50);
          goto LABEL_71;
        }

        v157 = v52;
        goto LABEL_326;
      }

      goto LABEL_323;
    }

    APSLogErrorAt();
    CFRelease(v22);
LABEL_315:
    v157 = -6728;
    v59 = v167;
LABEL_329:
    LODWORD(v189) = v157;
    APSLogErrorAt();
    theDatac = 0;
    v4 = 0;
    Int64Ranged = 0;
    goto LABEL_122;
  }

  CFDictionarySetInt64();
LABEL_76:
  LODWORD(v189) = 0;
  v56 = *(v18 + 56);
  v57 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v57)
  {
    LODWORD(v189) = -12782;
    goto LABEL_83;
  }

  LODWORD(v189) = v57(v56, 96, v22, v190, &cf, 0);
  if (v189)
  {
LABEL_83:
    APSLogErrorAt();
    theDatac = 0;
LABEL_84:
    v4 = 0;
LABEL_85:
    Int64Ranged = 0;
    v59 = v167;
    goto LABEL_120;
  }

  theDatac = CFDictionaryGetInt64();
  if (!*(v18 + 128))
  {
    CFDictionaryGetInt64();
    if (!v189)
    {
      CFDictionaryGetInt64();
      v59 = v167;
      if (v189)
      {
        APSLogErrorAt();
        v4 = 0;
        goto LABEL_336;
      }

      v4 = 0;
LABEL_119:
      Int64Ranged = CFDictionaryGetInt64Ranged();
      goto LABEL_120;
    }

LABEL_337:
    APSLogErrorAt();
    goto LABEL_84;
  }

  CFDictionaryGetTypeID();
  OUTLINED_FUNCTION_3_20();
  CFDictionaryGetTypedValue();
  if (v189)
  {
    goto LABEL_337;
  }

  if (*(v18 + 131))
  {
    v4 = 0;
    goto LABEL_114;
  }

  CFDictionaryGetTypeID();
  OUTLINED_FUNCTION_3_20();
  TypedValue = CFDictionaryGetTypedValue();
  if (v189)
  {
    goto LABEL_337;
  }

  CFDictionaryGetInt64();
  if (v189)
  {
    goto LABEL_337;
  }

  if (!CFDictionaryContainsKey(TypedValue, @"streamConnectionKeyNetworkInfo"))
  {
    v4 = 0;
    goto LABEL_112;
  }

  CFDictionaryGetTypeID();
  v71 = CFDictionaryGetTypedValue();
  if (!v71)
  {
    APSLogErrorAt();
    LODWORD(v189) = -6727;
    if (gLogCategory_APEndpointStreamAudio <= 90)
    {
      if (gLogCategory_APEndpointStreamAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        v158 = v169;
        OUTLINED_FUNCTION_8();
        LogPrintF();
      }
    }

    goto LABEL_84;
  }

  v4 = v71;
  CFRetain(v71);
LABEL_112:
  CFDictionaryGetTypeID();
  OUTLINED_FUNCTION_3_20();
  CFDictionaryGetTypedValue();
  if (v189 || (CFDictionaryGetInt64(), v189))
  {
LABEL_338:
    APSLogErrorAt();
    goto LABEL_85;
  }

LABEL_114:
  if (!*(v18 + 129))
  {
    v59 = v167;
    goto LABEL_119;
  }

  CFDictionaryGetTypeID();
  OUTLINED_FUNCTION_3_20();
  CFDictionaryGetTypedValue();
  if (v189)
  {
    goto LABEL_338;
  }

  CFDictionaryGetInt64();
  v59 = v167;
  if (!v189)
  {
    goto LABEL_119;
  }

  APSLogErrorAt();
LABEL_336:
  Int64Ranged = 0;
LABEL_120:
  CFRelease(v22);
  if (v190[0])
  {
    CFRelease(v190[0]);
  }

LABEL_122:
  v184 = v189;
  if (v189)
  {
    goto LABEL_319;
  }

  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    v160 = Int64Ranged;
    v158 = v169;
    v159 = theDatac;
    OUTLINED_FUNCTION_2();
  }

  FigSimpleMutexLock();
  *(v59 + 232) = MillisecondsToUpTicks();
  if (cf)
  {
    *(v59 + 224) = CFRetain(cf);
  }

  FigSimpleMutexUnlock();
  if (!*(v59 + 131))
  {
    v184 = APSSetFBOPropertyInt64();
    if (v184)
    {
      goto LABEL_319;
    }

    v16 = v168;
    if (!v4)
    {
      goto LABEL_151;
    }

    v102 = FigTransportStreamGetCMBaseObject();
    v103 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v103)
    {
      v184 = v103(v102, *MEMORY[0x277CE5098], v4);
      if (!v184)
      {
LABEL_151:
        v184 = APSSetFBOPropertyInt64();
        if (!v184)
        {
          if (CFDictionaryGetInt64())
          {
            goto LABEL_130;
          }

          v16 = v168;
          v184 = FigTransportStreamResume(v168);
          if (!v184)
          {
            v184 = FigTransportStreamSetMessageCallbacks(v168, audioStream_receivedAudioDataMessage_0, v169);
            if (!v184)
            {
              goto LABEL_130;
            }

LABEL_319:
            APSLogErrorAt();
            v3 = 0;
            v2 = 0;
            a1 = v169;
            goto LABEL_320;
          }
        }
      }
    }

    else
    {
      v184 = -12782;
    }

    APSLogErrorAt();
    v3 = 0;
    v2 = 0;
    a1 = v169;
LABEL_161:
    v67 = v176;
LABEL_162:
    v69 = v170;
    goto LABEL_250;
  }

LABEL_130:
  if (!*(v59 + 129))
  {
    v3 = 0;
    a1 = v169;
    v67 = v176;
    v90 = allocatora;
    goto LABEL_183;
  }

  v74 = *(v59 + 56);
  v75 = v182;
  v190[0] = 0;
  v76 = APTransportStreamIDMakeWithPort();
  v189 = 0;
  v77 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v77)
  {
    v100 = -12782;
    a1 = v169;
LABEL_157:
    APSLogErrorAt();
    v84 = 0;
LABEL_165:
    v92 = 0;
LABEL_166:
    v90 = allocatora;
    goto LABEL_167;
  }

  v78 = v77(v74);
  a1 = v169;
  if (v78)
  {
    v100 = v78;
    goto LABEL_157;
  }

  v84 = OUTLINED_FUNCTION_13_8(0, v79, MEMORY[0x277CBF138], MEMORY[0x277CBF150], v80, v81, v82, v83, v158, v159, v160, v161, value, v163, v164, v165, v166, v167, v168, v169, v170, theDatac, v175, v176, allocatora);
  if (!v84)
  {
    APSLogErrorAt();
    v92 = 0;
    v100 = -6728;
    goto LABEL_166;
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v85 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v85)
  {
    v100 = -12782;
LABEL_164:
    APSLogErrorAt();
    goto LABEL_165;
  }

  v86 = v85(v74, v76, v84, v190);
  if (v86)
  {
    v100 = v86;
    goto LABEL_164;
  }

  v87 = APSSetFBOPropertyInt64();
  if (v87)
  {
    v100 = v87;
    goto LABEL_164;
  }

  v88 = APSenderSessionGetCMBaseObject(v74);
  v89 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v90 = allocatora;
  if (!v89)
  {
    v100 = -12782;
LABEL_204:
    APSLogErrorAt();
    v92 = 0;
    goto LABEL_167;
  }

  v91 = v89(v88, @"KeyHolder", allocatora, &v189);
  if (v91)
  {
    v100 = v91;
    goto LABEL_204;
  }

  v92 = APKeyHolderCoreUtilsEncryptionContextDataStreamCreateWithSeed(allocatora, v75);
  if (v92)
  {
    v94 = v189;
    v93 = v190[0];
    v95 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v95)
    {
      v96 = v95(v93, v94, v92);
      if (v96)
      {
        v100 = v96;
      }

      else
      {
        v97 = APSSetFBOPropertyInt64();
        if (v97)
        {
          v100 = v97;
        }

        else
        {
          v98 = FigTransportStreamSetMessageCallbacks(v190[0], audioStream_receivedMediaDataEventMessage_0, a1);
          if (v98)
          {
            v100 = v98;
          }

          else
          {
            v99 = FigTransportStreamResume(v190[0]);
            if (v99)
            {
              v100 = v99;
            }

            else
            {
              v100 = FigTransportStreamWaitUntilConnected(v190[0]);
              if (!v100)
              {
                v101 = v190[0];
                v190[0] = 0;
LABEL_173:
                CFRelease(v84);
                v3 = v101;
                goto LABEL_174;
              }
            }
          }
        }
      }
    }

    else
    {
      v100 = -12782;
    }

    APSLogErrorAt();
  }

  else
  {
    APSLogErrorAt();
    v100 = -6728;
  }

LABEL_167:
  if (v190[0])
  {
    v104 = FigTransportStreamGetCMBaseObject();
    if (v104)
    {
      v105 = v104;
      v106 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v106)
      {
        v106(v105);
      }
    }

    CFRelease(v190[0]);
    v190[0] = 0;
  }

  v101 = 0;
  v3 = 0;
  if (v84)
  {
    goto LABEL_173;
  }

LABEL_174:
  if (v189)
  {
    CFRelease(v189);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  v184 = v100;
  if (v100)
  {
    APSLogErrorAt();
    v2 = 0;
LABEL_320:
    v67 = v176;
    v16 = v168;
    goto LABEL_162;
  }

  v67 = v176;
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

LABEL_183:
  v107 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 30)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_8();
      LogPrintF();
    }
  }

  *(v107 + 320) = 0u;
  *(v107 + 336) = 0u;
  v108 = *(v107 + 312);
  v109 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v108, v109, 0x12A05F200uLL, 0x3B9ACA00uLL);
  *(v107 + 384) = mach_absolute_time();
  *(v107 + 392) = 60;
  *(v107 + 400) = mach_absolute_time();
  *(v107 + 408) = FigGetCFPreferenceNumberWithDefault();
  *(v107 + 432) = 0;
  *(v107 + 352) = 0u;
  *(v107 + 368) = 0u;
  v110 = CFArrayCreateMutable(v90, 5, MEMORY[0x277CBF128]);
  *(v107 + 440) = v110;
  v16 = v168;
  if (v110 && (v111 = CFArrayCreateMutable(v90, 5, MEMORY[0x277CBF128]), (*(v107 + 448) = v111) != 0))
  {
    v112 = 5;
    do
    {
      CFArrayAppendInt64();
      CFArrayAppendInt64();
      --v112;
    }

    while (v112);
  }

  else
  {
    APSLogErrorAt();
  }

  v2 = CFDictionaryCreateMutable(v90, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v2)
  {
    APSLogErrorAt();
    v184 = -16611;
    goto LABEL_162;
  }

  FigCFDictionarySetValue();
  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v114 = *(ProtocolVTable + 16)) == 0)
  {
    v117 = -12788;
LABEL_200:
    v184 = v117;
    goto LABEL_201;
  }

  v115 = *(v114 + 8);
  if (!v115)
  {
    v117 = -12782;
    goto LABEL_200;
  }

  v184 = v115(v67, a1, v2, &v179);
  if (v184)
  {
LABEL_201:
    v69 = v170;
    APSLogErrorAt();
    goto LABEL_250;
  }

  FigSimpleMutexLock();
  *(v59 + 152) = theDatac;
  *(v59 + 160) = v170;
  *(v59 + 168) = v168;
  *(v59 + 176) = v3;
  audioStream_updateIsResumedAndPostNotification(a1, 1);
  audioStream_updateDynamicLatencyOffsetInternal();
  v116 = v179;
  *(v59 + 208) = v67;
  *(v59 + 216) = v116;
  ++*(v59 + 252);
  FigSimpleMutexUnlock();
  *(v59 + 280) = 0;
  APSIOReporterGetCoreCaptureCount();
  v184 = 0;
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  v69 = 0;
  v16 = 0;
  v3 = 0;
  v67 = 0;
LABEL_250:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v69)
  {
    v136 = FigTransportStreamGetCMBaseObject();
    if (v136)
    {
      v137 = v136;
      v138 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v138)
      {
        v138(v137);
      }
    }

    CFRelease(v69);
  }

  if (v16)
  {
    v139 = FigTransportStreamGetCMBaseObject();
    if (v139)
    {
      v140 = v139;
      v141 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v141)
      {
        v141(v140);
      }
    }

    CFRelease(v16);
  }

  if (v3)
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

    CFRelease(v3);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v175)
  {
    CFRelease(v175);
  }

  if (!v184)
  {
    return 0;
  }

  audioStream_suspendInternal_0(a1);
  return v184;
}

void audioStream_updateDynamicLatencyOffsetInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 185))
  {
    v1 = DerivedStorage;
    if (*(DerivedStorage + 240) == 1 && (v2 = *(DerivedStorage + 96)) != 0)
    {
      v3 = v2 - *(DerivedStorage + 88);
    }

    else
    {
      v3 = 0;
    }

    if (*(DerivedStorage + 248) != v3)
    {
      if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      *(v1 + 248) = v3;
      CMBaseObjectGetDerivedStorage();
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      FigCFDictionarySetInt();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (MutableCopy)
      {

        CFRelease(MutableCopy);
      }
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

void audioStream_enableReceiverCoreCapturesInternal()
{
  v1 = OUTLINED_FUNCTION_3_5();
  v2 = atomic_load((v1 + 297));
  if ((v2 & 1) == 0)
  {
    goto LABEL_27;
  }

  v3 = v1;
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*v3)
  {
    APSLogErrorAt();
LABEL_27:
    v8 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (!Mutable)
  {
    goto LABEL_13;
  }

  CFDictionarySetValue(Mutable, @"value", *MEMORY[0x277CBED28]);
  if (!*(v3 + 129))
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v6 = *(v3 + 176);
  if (!v6 || (v7 = CFRetain(v6)) == 0)
  {
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  v8 = v7;
  if (APTransportStreamSendPlistMessageCreatingPlistReply())
  {
    APSLogErrorAt();
  }

LABEL_15:
  if (*v0)
  {
    CFRelease(*v0);
  }

  v9 = *(v0 + 8);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

void audioStream_triggerReceiverCoreCapturesInternal()
{
  v1 = OUTLINED_FUNCTION_3_5();
  if (*v1)
  {
    goto LABEL_7;
  }

  if (!*(v1 + 129))
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v2 = *(v1 + 176);
  if (!v2 || (v3 = CFRetain(v2)) == 0)
  {
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v4 = v3;
  if (APTransportStreamSendPlistMessageCreatingPlistReply())
  {
    APSLogErrorAt();
  }

LABEL_9:
  if (*v0)
  {
    CFRelease(*v0);
  }

  v5 = *(v0 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

void APEndpointStreamAudioCreate_cold_7()
{
  OUTLINED_FUNCTION_48();
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

uint64_t audioStream_statsTimerFired_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t audioStream_Control_cold_1_0()
{
  OUTLINED_FUNCTION_48();
  Int64 = CFDictionaryGetInt64();
  FigSimpleMutexLock();
  if (*(v0 + 240) != Int64)
  {
    *(v0 + 240) = Int64;
    if (gLogCategory_APEndpointStreamAudio < 51 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    if (*(v0 + 185))
    {
      audioStream_updateDynamicLatencyOffsetInternal();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t audioStream_Control_cold_6(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  ++*(a1 + 280);
  APSIssueReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v8 = *(ProtocolVTable + 16)) != 0)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      result = v9(a2, a3);
      *a4 = result;
      if (!result)
      {
        return result;
      }

      return APSLogErrorAt();
    }

    v11 = -12782;
  }

  else
  {
    v11 = -12788;
  }

  *a4 = v11;
  return APSLogErrorAt();
}

uint64_t audioStream_receivedAudioControlMessageInternal_cold_7()
{
  if (gLogCategory_APEndpointStreamAudio <= 50)
  {
    if (gLogCategory_APEndpointStreamAudio != -1)
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

uint64_t audioStream_receivedMediaDataEventMessage_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      result = OUTLINED_FUNCTION_4_0();
    }
  }

  *a4 = a3;
  return result;
}

void audioStream_receivedMediaDataEventMessage_cold_4()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio < 51 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage && *(DerivedStorage + 185) && *(DerivedStorage + 496))
  {
    if (APSThreadSafeDictionaryCopyValueIfPresent())
    {
      APSThreadSafeDictionaryAddEntriesToDictionaryWithRecursion();
    }
  }
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_7()
{
  OUTLINED_FUNCTION_48();
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_9_10();
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_8()
{
  OUTLINED_FUNCTION_48();
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_9_10();
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_9()
{
  OUTLINED_FUNCTION_48();
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_9_10();
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_10()
{
  OUTLINED_FUNCTION_48();
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_9_10();
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16760;
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1)
    {
      return OUTLINED_FUNCTION_4_0();
    }

    result = OUTLINED_FUNCTION_4_3();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_14()
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      OUTLINED_FUNCTION_9_10();
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

void endpointCluster_deactivateSubEndpoint(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(*(CMBaseObjectGetVTable() + 32) + 16))
  {
    OUTLINED_FUNCTION_20_3();
    v6();
  }

  endpointCluster_updateIdleState(a1);
  endpointCluster_updateEngagedState(a1);
  endpointCluster_updateSecondDisplayModeOnSubEndpointListChange(a1, a3, 0);
  if (*DerivedStorage != 3 && endpointCluster_getSubEndpointVolumeLeader(a1))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8 && (v8(CMBaseObject, *MEMORY[0x277CC15A8], *MEMORY[0x277CBECE8], &cf), cf))
    {
      OUTLINED_FUNCTION_11_7();
      if (v12 ^ v13 | v11)
      {
        if (v10 != -1 || (v14 = OUTLINED_FUNCTION_4(), v9 = cf, v14))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
          v9 = cf;
        }
      }

      endpointCluster_postVolumeDidChange(a1, 0, v9);
      OUTLINED_FUNCTION_11_7();
      if (v12 ^ v13 | v11 && (v15 != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      endpointCluster_postIsMutedDidChange(a1, 0);
    }

    else
    {
      APSLogErrorAt();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

const void *endpointCluster_getSubEndpointVolumeLeader(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  Count = CFArrayGetCount(*(DerivedStorage + 336));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  if (v3 && *(DerivedStorage + 184) == 7)
  {
    return *(DerivedStorage + 8);
  }

  if (*DerivedStorage != 1 && (*DerivedStorage != 2 || *(DerivedStorage + 24) != 3))
  {
    goto LABEL_12;
  }

  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 336), v7);
    if (APSGetFBOPropertyInt64())
    {
      if (OUTLINED_FUNCTION_25_3())
      {
        break;
      }
    }

    if (v5 == ++v7)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_15_2();
  if (v12 ^ v13 | v11 && (v15 != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  if (!ValueAtIndex)
  {
LABEL_12:
    v8 = 0;
    v9 = *MEMORY[0x277CC19C0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 336), v8);
      if (endpointCluster_isSubEndpointOfType(a1, ValueAtIndex, v9))
      {
        if (OUTLINED_FUNCTION_25_3())
        {
          break;
        }
      }

      if (v5 == ++v8)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_15_2();
    if (v12 ^ v13 | v11 && (v14 != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_4_1();
    }

    if (!ValueAtIndex)
    {
LABEL_16:
      OUTLINED_FUNCTION_15_2();
      if (v12 ^ v13 | v11 && (v10 != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_4_1();
      }

      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t endpointCluster_isSubEndpointStaticLeader(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_24_3();
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  SubEndpointDeviceClass = endpointCluster_getSubEndpointDeviceClass(a1, a2);
  if (SubEndpointDeviceClass != 100)
  {
    return SubEndpointDeviceClass == 4;
  }

  if (!*(v6 + 8))
  {
    return 0;
  }

  return APSIsLocalClusterWithStaticLeadershipEnabled();
}

uint64_t endpointCluster_getClusterModelBasedOnAnyMemberModels(int a1, CFArrayRef theArray)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  if (theArray)
  {
    CFArrayGetCount(theArray);
    CFArrayApplyBlock();
  }

  v2 = APSGetClusterModelNameForClusterTypeAndModel();
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(v6, 8);
  return v2;
}

uint64_t endpointCluster_addOrRemoveLocalSubEndpointForEchoCancellationIfNeeded()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v1 = DerivedStorage;
    OUTLINED_FUNCTION_24_3();
    if (v2)
    {
      if (*(v1 + 184) == 4 && *(v1 + 376) == 3)
      {
        if (!*(v1 + 320))
        {
          APSLogErrorAt();
          return 4294949690;
        }

        if ((*(v1 + 400) & 0xA) != 0 && *(v1 + 509))
        {
          v3 = *MEMORY[0x277CBECE8];
          Count = CFDictionaryGetCount(*(v1 + 448));
          MutableCopy = CFDictionaryCreateMutableCopy(v3, Count, *(v1 + 448));
          if (!MutableCopy)
          {
            APSLogErrorAt();
            return 4294950575;
          }

          v6 = MutableCopy;
          CFDictionarySetValue(MutableCopy, @"EnableEchoCancellation", *MEMORY[0x277CBED28]);
          v7 = *(v1 + 320);
          if (!v7 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
          {
            v7 = 0;
          }

          v8 = *(v1 + 8);
          v9 = *(*(CMBaseObjectGetVTable() + 32) + 8);
          if (v9)
          {
            v10 = v9(v7, v8, v6, 0, 0);
            if (!v10)
            {
LABEL_21:
              CFRelease(v6);
              return v10;
            }
          }

          else
          {
            v10 = 4294954514;
          }

          APSLogErrorAt();
          goto LABEL_21;
        }

        FigEndpointAggregateGetClassID();
        CMBaseObjectIsMemberOfClass();
        if (*(*(CMBaseObjectGetVTable() + 32) + 16))
        {
          OUTLINED_FUNCTION_20_3();
          v11();
        }
      }
    }
  }

  return 0;
}

BOOL endpointCluster_usesPersistentConnection()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v1 = *(DerivedStorage + 184);
    if (v1 == 4 || v1 == 100)
    {
      return 1;
    }

    if (v1 == 7)
    {
      return *DerivedStorage == 1;
    }
  }

  return 0;
}

void endpointCluster_handleRemoteConfigChangedNotification()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_24_3();
  if (v1 && *(v0 + 8))
  {

    APSIsLowLatencyAudioSendingEnabled();
  }
}

void endpointCluster_updateIdleState(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_4();
  if (v3)
  {
    v4 = v2;
    isIdle = endpointCluster_isIdle();
    if (*(v4 + 440) != isIdle)
    {
      v6 = isIdle;
      OUTLINED_FUNCTION_11_7();
      if (v8 ^ v9 | v3 && (v7 != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      *(v4 + 440) = v6;
      CFRetain(a1);
      APSDispatchAsyncFHelper();
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_19_4();
      if (v3)
      {
        v11 = v10;
        v12 = *(v10 + 412);
        if (v12)
        {
          if (endpointCluster_isIdle())
          {
            OUTLINED_FUNCTION_11_7();
            if (v8 ^ v9 | v3 && (v13 != -1 || OUTLINED_FUNCTION_4()))
            {
              OUTLINED_FUNCTION_2_0();
              LogPrintF();
            }

            *(v11 + 412) = 0;
            endpointCluster_handleClusterFatalError(a1, v12, 1);
          }
        }
      }
    }
  }
}

void endpointCluster_updateEngagedState(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_4();
  if (v3)
  {
    v4 = v2;
    isEngaged = endpointCluster_isEngaged();
    if (*(v4 + 441) != isEngaged)
    {
      v6 = isEngaged;
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      *(v4 + 441) = v6;
      if (v6)
      {
        endpointCluster_activateSubEndpointsIfNeeded(a1);
      }

      endpointCluster_updateHealthState(a1);
    }
  }
}

void endpointCluster_updateStatus(const void *a1, int a2, int a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == -72277)
  {
    v9 = -17601;
  }

  else
  {
    v9 = a2;
  }

  if (a2 == -72101)
  {
    v10 = -15582;
  }

  else
  {
    v10 = v9;
  }

  if (a2 == -72100)
  {
    v11 = -15581;
  }

  else
  {
    v11 = v10;
  }

  if (a2)
  {
    v12 = DerivedStorage;
    if (!*(DerivedStorage + 442))
    {
      *(DerivedStorage + 392) = a2;
      v13 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v15 = Mutable;
        CFDictionarySetInt64();
        v16 = CFGetAllocator(a1);
        v17 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v17)
        {
          APSLogErrorAt();
          goto LABEL_47;
        }

        v18 = v17;
        CFDictionarySetInt64();
        OUTLINED_FUNCTION_21_5();
        CFDictionarySetInt64();
        if (a3)
        {
          if (v11 >> 1 != 2147475857)
          {
            v20 = MEMORY[0x277CC0CA0];
LABEL_23:
            v19 = gLogCategory_APEndpointCluster;
            goto LABEL_24;
          }

          v19 = gLogCategory_APEndpointCluster;
          if (gLogCategory_APEndpointCluster > 30)
          {
            v20 = MEMORY[0x277CC0CA8];
LABEL_24:
            v21 = *v20;
            *(v12 + 508) = 1;
            if (v19 <= 50)
            {
              if (v19 != -1 || (OUTLINED_FUNCTION_18_4(), _LogCategory_Initialize()))
              {
                OUTLINED_FUNCTION_18_4();
                LogPrintF();
              }
            }

            if (!a4 || !*(v12 + 8) || *(v12 + 488))
            {
LABEL_31:
              CFDictionarySetValue(v15, *MEMORY[0x277CC0CC8], v21);
              v22 = OUTLINED_FUNCTION_21_5();
              CFDictionarySetValue(v22, v23, v24);
              v25 = CMBaseObjectGetDerivedStorage();
              v26 = v25[67];
              if (!v26)
              {
                goto LABEL_42;
              }

              v27 = v25;
              v28 = v25[57];
              if (v25[74])
              {
                v29 = FigCFWeakReferenceHolderCopyReferencedObject();
                if (!v29)
                {
                  if (gLogCategory_APEndpointCluster >= 61)
                  {
LABEL_46:
                    CMNotificationCenterGetDefaultLocalCenter();
                    FigDispatchAsyncPostNotification();
                    CFRelease(v18);
LABEL_47:
                    CFRelease(v15);
                    return;
                  }

                  if (gLogCategory_APEndpointCluster != -1 || (OUTLINED_FUNCTION_18_4(), _LogCategory_Initialize()))
                  {
                    OUTLINED_FUNCTION_18_4();
                    LogPrintF();
                  }

LABEL_42:
                  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_10()))
                  {
                    OUTLINED_FUNCTION_4_1();
                  }

                  goto LABEL_46;
                }
              }

              else
              {
                v29 = 0;
              }

              CFRetain(a1);
              CFRetain(v18);
              if (v29)
              {
                CFRetain(v29);
              }

              v30 = v27[5];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 0x40000000;
              block[2] = __endpointCluster_callDelegateHandleFailed_block_invoke;
              block[3] = &__block_descriptor_tmp_174;
              block[4] = a1;
              block[5] = v18;
              block[6] = v26;
              block[7] = v28;
              block[8] = v29;
              dispatch_async(v30, block);
              if (v29)
              {
                CFRelease(v29);
              }

              goto LABEL_42;
            }

            if (*v12 == 1)
            {
              if (!*(v12 + 400))
              {
                goto LABEL_31;
              }
            }

            else if (*v12 != 2 || (*(v12 + 400) & 0x20) == 0)
            {
              goto LABEL_31;
            }

            endpointCluster_postNeedDeactivationForClusterChange(a1, 1);
            goto LABEL_31;
          }

          if (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_10())
          {
            OUTLINED_FUNCTION_4_1();
          }
        }

        v20 = MEMORY[0x277CC0CA8];
        goto LABEL_23;
      }

      APSLogErrorAt();
    }
  }
}

void __endpointCluster_handleClusterFatalError_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  endpointCluster_updateStatus(*(a1 + 40), *(a1 + 48), *(a1 + 52), 1);
  FigSimpleMutexUnlock();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void endpointCluster_sendActivationMetrics(uint64_t a1, int a2)
{
  v49 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  cf = 0;
  if (!*(DerivedStorage + 512))
  {
    goto LABEL_63;
  }

  v3 = DerivedStorage;
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
LABEL_63:
    v15 = 0;
    goto LABEL_50;
  }

  v5 = Mutable;
  GetDeviceModelString();
  CFDictionarySetCString();
  SNPrintF();
  CFDictionarySetCString();
  v34 = *MEMORY[0x277CBED10];
  v35 = *MEMORY[0x277CBED28];
  if (*(v3 + 8))
  {
    v6 = *MEMORY[0x277CBED28];
  }

  else
  {
    v6 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v5, @"isLocalCluster", v6);
  FigCFDictionarySetInt();
  FigCFDictionarySetInt();
  if (!*(v3 + 392))
  {
    v7 = CMBaseObjectGetDerivedStorage();
    Count = CFArrayGetCount(*(v7 + 336));
    if (Count >= 1)
    {
      v9 = Count;
      v10 = 0;
      v11 = 0;
      do
      {
        CFArrayGetValueAtIndex(*(v7 + 336), v10);
        if (APSGetFBOPropertyInt64())
        {
          ++v11;
        }

        ++v10;
      }

      while (v9 != v10);
    }
  }

  FigCFDictionarySetInt();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  CFDictionarySetInt64();
  APSEventRecorderGetTimeSinceEventInMilliSecondRecursive();
  CFDictionarySetInt64();
  CFAbsoluteTimeGetCurrent();
  CFDictionarySetInt64();
  FigCFDictionarySetInt();
  if (*(v3 + 641))
  {
    v12 = v35;
  }

  else
  {
    v12 = v34;
  }

  CFDictionarySetValue(v5, @"hadAuthorizationRequest", v12);
  CFDictionarySetInt64();
  v13 = CFArrayGetCount(*(v3 + 336));
  if (!v13)
  {
    v15 = 0;
    goto LABEL_46;
  }

  v14 = v13;
  v15 = CFArrayCreateMutable(allocator, v13, MEMORY[0x277CBF128]);
  if (v15)
  {
    if (v14 >= 1)
    {
      v16 = 0;
      v32 = *MEMORY[0x277CC14F0];
      v17 = @"timeSinceSubEndpointActivatedSecs";
      do
      {
        CFArrayGetValueAtIndex(*(v3 + 336), v16);
        v18 = CFDictionaryCreateMutable(allocator, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v18)
        {
          goto LABEL_61;
        }

        v19 = v18;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v21 || (v22 = v17, v21(CMBaseObject, v32, allocator, &cf)) || (v23 = APSGetFBOPropertyInt64(), v24 = FigEndpointGetCMBaseObject(), (v25 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v25(v24, @"EndpointStatus", allocator, &v37))
        {
          APSLogErrorAt();
          CFRelease(v5);
          v31 = v19;
          goto LABEL_49;
        }

        if (a2 == 250)
        {
          v26 = FigEndpointGetCMBaseObject();
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v27)
          {
            v27(v26, @"ActualTransportType", allocator, &v39);
          }
        }

        v28 = FigEndpointGetCMBaseObject();
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v29)
        {
          v29(v28, @"EndpointMetrics", allocator, &v40);
        }

        if (v23)
        {
          v30 = v35;
        }

        else
        {
          v30 = v34;
        }

        CFDictionarySetValue(v19, @"isLocalSubEndpoint", v30);
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        v17 = v22;
        FigCFDictionarySetInt64();
        FigCFDictionarySetValue();
        if (v40)
        {
          CFDictionaryGetInt64();
          FigCFDictionarySetInt64();
        }

        CFArrayAppendValue(v15, v19);
        CFRelease(v19);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v37)
        {
          CFRelease(v37);
          v37 = 0;
        }

        if (v39)
        {
          CFRelease(v39);
          v39 = 0;
        }

        if (v40)
        {
          CFRelease(v40);
          v40 = 0;
        }
      }

      while (v14 != ++v16);
    }

    CFDictionarySetValue(v5, @"subEndpointInfo", v15);
    FigCFDictionarySetValue();
LABEL_46:
    APSRTCReportingAgentSendEvent();
    goto LABEL_47;
  }

LABEL_61:
  APSLogErrorAt();
LABEL_47:
  v31 = v5;
LABEL_49:
  CFRelease(v31);
LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v39)
  {
    CFRelease(v39);
  }
}

uint64_t endpointCluster_setSecondDisplayMode(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_24_3();
  if (v3)
  {
    v4 = v2;
    OUTLINED_FUNCTION_19_4();
    if (v3)
    {
      result = FigCFEqual();
      if (!result)
      {
        return result;
      }

      Int64 = CFDictionaryGetInt64();
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      if (Int64 >= 2)
      {
        APSLogErrorAt();
        return 4294950576;
      }

      if (Int64 != *(v4 + 496))
      {
        *(v4 + 496) = Int64;
        *(v4 + 504) = CFDictionaryGetInt64();
        CFRetain(a1);
        OUTLINED_FUNCTION_2_22();
        v9 = 0x40000000;
        v10 = __endpointCluster_setSecondDisplayMode_block_invoke;
        v11 = &__block_descriptor_tmp_278;
        v12 = a1;
        dispatch_async(v7, block);
        if (*(v4 + 496) != 1 || *(v4 + 491))
        {
          endpointCluster_setSecondDisplayModeOnSubEndpoints();
        }
      }
    }
  }

  return 0;
}

uint64_t endpointCluster_setSecondDisplayModeOnSubEndpoints()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = result;
  if (gLogCategory_APEndpointCluster <= 50)
  {
    if (gLogCategory_APEndpointCluster != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      OUTLINED_FUNCTION_2_0();
      result = LogPrintF();
    }
  }

  v2 = *(v1 + 336);
  if (v2)
  {
    result = CFArrayGetCount(v2);
    if (result >= 1)
    {
      v3 = result;
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        result = endpointCluster_setSecondDisplayModeOnSubEndpoint(ValueAtIndex);
      }
    }
  }

  return result;
}

uint64_t endpointCluster_failureDelayTimerFired(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_10_9();
  if (v5 ^ v6 | v4 && (v3 != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    dispatch_source_cancel(*(DerivedStorage + 72));
    dispatch_release(v7);
    *(DerivedStorage + 72) = 0;
  }

  if (*(DerivedStorage + 376))
  {
    if (*(DerivedStorage + 456) == *(a1 + 8))
    {
      v8 = *(DerivedStorage + 432);
      if (v8)
      {
        if (CFSetGetCount(v8) >= 1)
        {
          *(DerivedStorage + 424) = 1;
          OUTLINED_FUNCTION_2_22();
          CFSetApplyBlock();
          OUTLINED_FUNCTION_10_9();
          if (v5 ^ v6 | v4 && (v9 != -1 || OUTLINED_FUNCTION_4()))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          v10 = *(DerivedStorage + 432);
          if (v10)
          {
            CFRelease(v10);
            *(DerivedStorage + 432) = 0;
          }
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointCluster_wantSubEndpointActivation()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = APSGetFBOPropertyInt64();
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    v5 = *DerivedStorage != 2;
  }

  else
  {
    v5 = 0;
  }

  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  if (v3)
  {
    OUTLINED_FUNCTION_23_5();
    if (v8 ^ v9 | v7 && (v6 != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_4_1();
    }

    return v5;
  }

  if (endpointCluster_isSubEndpointOfType(v1, v0, *MEMORY[0x277CC19A0]))
  {
    OUTLINED_FUNCTION_23_5();
    if (v8 ^ v9 | v7 && (v10 != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_4_1();
    }

    return !v4;
  }

  if (!v4 || *DerivedStorage != 2)
  {
    OUTLINED_FUNCTION_23_5();
    if (v8 ^ v9 | v7 && (v12 != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_4_1();
    }

    return 1;
  }

  OUTLINED_FUNCTION_23_5();
  if (v8 ^ v9 | v7 && (v11 != -1 || OUTLINED_FUNCTION_10()))
  {
    APSIsLocalClusterWithStaticLeadershipEnabled();
    OUTLINED_FUNCTION_4_1();
  }

  result = APSIsLocalClusterWithStaticLeadershipEnabled();
  if (result)
  {
    return *(DerivedStorage + 8) != v0;
  }

  return result;
}

uint64_t endpointCluster_updateSecondDisplayModeOnSubEndpointListChange(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 491);
  result = endpointCluster_isSubEndpointOfType(a1, a2, *MEMORY[0x277CC19A0]);
  if (result)
  {
    if (a3)
    {
      result = APSGetFBOPropertyInt64();
      v9 = result != 0;
      *(DerivedStorage + 491) = v9;
    }

    else
    {
      v9 = 0;
      *(DerivedStorage + 491) = 0;
    }
  }

  else
  {
    v9 = *(DerivedStorage + 491);
  }

  if (v7 == v9)
  {
    if (a3)
    {
      if (v7)
      {
        if (*(DerivedStorage + 496) == 1)
        {
          result = endpointCluster_setSecondDisplayModeOnSubEndpoint(a2);
          if (result)
          {

            return APSLogErrorAt();
          }
        }
      }
    }
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50)
    {
      if (gLogCategory_APEndpointCluster != -1 || (result = OUTLINED_FUNCTION_4(), result))
      {
        OUTLINED_FUNCTION_2_0();
        result = LogPrintF();
      }
    }

    if (*(DerivedStorage + 496) == 1)
    {

      return endpointCluster_setSecondDisplayModeOnSubEndpoints();
    }
  }

  return result;
}

BOOL endpointCluster_isSubEndpointVolumeLeader(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  cf = 0;
  if (*DerivedStorage != 3)
  {
    v17 = endpointCluster_getSubEndpointVolumeLeader(a1) == a2;
    goto LABEL_15;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    if (v6 == a2)
    {
LABEL_14:
      v17 = 1;
      goto LABEL_15;
    }

    v7 = *MEMORY[0x277CC1550];
    v8 = *MEMORY[0x277CBECE8];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(CMBaseObject, v7, v8, &v28);
    }
  }

  else
  {
    v7 = *MEMORY[0x277CC1550];
    v8 = *MEMORY[0x277CBECE8];
  }

  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    goto LABEL_14;
  }

  v12(v11, v7, v8, &cf);
  if (!cf)
  {
    goto LABEL_14;
  }

  if (FigCFEqual())
  {
    OUTLINED_FUNCTION_15_2();
    if (v15 ^ v16 | v14 && (v13 != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_4_1();
    }

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  if (!OUTLINED_FUNCTION_25_3())
  {
    v26 = v7;
    Count = CFArrayGetCount(*(v5 + 336));
    if (Count >= 1)
    {
      v21 = Count;
      v22 = 0;
      while (1)
      {
        if (CFArrayGetValueAtIndex(*(v5 + 336), v22) != a2 && OUTLINED_FUNCTION_25_3() && APSGetFBOPropertyInt64())
        {
          v27 = 0;
          v23 = FigEndpointGetCMBaseObject();
          v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v24)
          {
            v24(v23, v26, v8, &v27);
          }

          v25 = FigCFEqual();
          if (v27)
          {
            CFRelease(v27);
          }

          if (v25)
          {
            break;
          }
        }

        if (v21 == ++v22)
        {
          goto LABEL_15;
        }
      }

      v17 = 0;
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_15_2();
  if (v15 ^ v16 | v14 && (v18 != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v17;
}

uint64_t endpointCluster_healthMonitoringTimerFired(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_11_7();
  if (v5 ^ v6 | v4 && (v3 != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  FigSimpleMutexLock();
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = *(v8 + 376) && !*(v8 + 392) && *(v8 + 441) != 0;
  if (!*(v7 + 376) || *(v7 + 420) == 2 || *(v7 + 8) && APSIsLocalClusterWithStaticLeadershipEnabled() == 0 && !v9)
  {
    goto LABEL_38;
  }

  if (!endpointCluster_desiredSubEndpointsActivated(a1))
  {
    goto LABEL_18;
  }

  Count = *(v7 + 336);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count >= *(v7 + 24))
  {
LABEL_38:
    v11 = 1;
  }

  else
  {
LABEL_18:
    v11 = 0;
  }

  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    CFArrayGetCount(*(v7 + 336));
    LogPrintF();
    if (v11)
    {
      goto LABEL_24;
    }
  }

  else if (v11)
  {
LABEL_24:
    v12 = 0;
    v13 = 136;
    goto LABEL_30;
  }

  if (*(DerivedStorage + 443) && *(DerivedStorage + 376) == 3)
  {
    v12 = 0;
    v13 = 160;
  }

  else
  {
    v12 = 1;
    v13 = 152;
  }

LABEL_30:
  v14 = *(DerivedStorage + v13);
  endpointCluster_setNeedsDiscoveryAndNotifyIfNeeded(a1, v12);
  OUTLINED_FUNCTION_11_7();
  if (v5 ^ v6 | v4 && (v15 != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  v16 = *(DerivedStorage + 64);
  v17 = dispatch_time(0, 1000000000 * v14);
  dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  return FigSimpleMutexUnlock();
}

uint64_t endpointCluster_CopyProperty_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16720;
  return result;
}

uint64_t endpointCluster_copyClusterHierarchyAsArray_cold_1(int a1)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  result = OUTLINED_FUNCTION_10();
  if (result)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  return result;
}

uint64_t __endpointCluster_copyClusterHierarchyAsArray_block_invoke_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*(a1 + 32) + 8) + 24) = -17606;
  return result;
}

uint64_t endpointCluster_Activate_cold_2()
{
  if (gLogCategory_APEndpointCluster > 50)
  {
    return 1;
  }

  OUTLINED_FUNCTION_3_7();
  if (v1 != -1 || OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  result = 0;
  *v0 = -15580;
  return result;
}

uint64_t endpointCluster_Activate_cold_10(char a1, uint64_t a2, const void *a3)
{
  APSLogErrorAt();
  if (gLogCategory_APEndpointCluster <= 60 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if ((a1 & 1) == 0)
  {
    CFRelease(a3);
  }

  return APSLogErrorAt();
}

uint64_t endpointCluster_Deactivate_cold_6(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (!*(result + 488) && !*(result + 508) && gLogCategory_APEndpointCluster <= 90)
  {
    if (gLogCategory_APEndpointCluster != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_4_0();
    }
  }

  *a3 = -15580;
  return result;
}

uint64_t endpointCluster_Dissociate_cold_2()
{
  APSClusterTypeToDescriptionString();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t endpointCluster_updateFeaturesInternal_cold_4(char a1, uint64_t a2, const void *a3)
{
  APSLogErrorAt();
  if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_0();
  }

  if ((a1 & 1) == 0)
  {
    CFRelease(a3);
  }

  return APSLogErrorAt();
}

void endpointCluster_resetActivationState_cold_2(CFArrayRef *a1, uint64_t *a2, const void *a3, uint64_t a4)
{
  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, v8);
    v10 = *a2;
    if (!*a2 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      v10 = 0;
    }

    endpointCluster_deactivateSubEndpoint(a3, v10, ValueAtIndex);
    ++v8;
  }

  while (a4 != v8);
}

uint64_t endpointCluster_SendCommand_cold_3()
{
  APSLogErrorAt();
  FigSimpleMutexUnlock();

  return APSLogErrorAt();
}

uint64_t endpointCluster_activateSubEndpointCallback_cold_1()
{
  if (gLogCategory_APEndpointCluster <= 50)
  {
    if (gLogCategory_APEndpointCluster != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      OUTLINED_FUNCTION_2_0();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t endpointCluster_activateSubEndpointCallback_cold_6()
{
  if (gLogCategory_APEndpointCluster <= 50)
  {
    if (gLogCategory_APEndpointCluster != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      OUTLINED_FUNCTION_2_0();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t endpointCluster_desiredSubEndpointsActivated_cold_1(CFArrayRef *a1, uint64_t a2, char *a3)
{
  v5 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*a1, v5);
    if (endpointCluster_wantSubEndpointActivation())
    {
      result = APSGetFBOPropertyInt64();
      if (!result)
      {
        break;
      }
    }

    ++v5;
    result = CFArrayGetCount(*a1);
    if (v5 >= result)
    {
      v7 = 1;
      goto LABEL_6;
    }
  }

  if (gLogCategory_APEndpointCluster <= 40)
  {
    if (gLogCategory_APEndpointCluster != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  v7 = 0;
LABEL_6:
  *a3 = v7;
  return result;
}

void interruptingStreamWrapper_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
    FigNotificationCenterRemoveWeakListener();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 24) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 16) = 0;
  }

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

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }
}

uint64_t audioHoseManagerBuffered_releaseCryptors(CMTime *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_21_6(MEMORY[0x277CC0898]);
  if (v7 || (v8 = v6, Count = CFDictionaryGetCount(*(v6 + 448)), Count < 1))
  {
    v23 = 0;
    v10 = 0;
LABEL_23:
    v11 = 0;
    goto LABEL_18;
  }

  v10 = OUTLINED_FUNCTION_14_9(Count);
  if (!v10)
  {
    v23 = 4294894846;
    APSLogErrorAt();
    goto LABEL_23;
  }

  v11 = malloc_type_calloc(v3, 8uLL, v2);
  if (v11)
  {
    CFDictionaryGetKeysAndValues(*(v8 + 448), v10, v11);
    v12 = 0;
    while (1)
    {
      v13 = CMTimeMakeFromDictionary(&v36, v11[v12]);
      if ((*(a2 + 12) & 1) == 0 || OUTLINED_FUNCTION_12_8(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, *&v36.value, v36.epoch) >= 1)
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4()))
        {
          DerivedStorage = "";
          if (a1)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
          }

          v29 = DerivedStorage;
          *&v27 = v10[v12];
          *(&v27 + 1) = audioHoseManagerBuffered_getCryptorIDForCryptor(v27);
          v25 = a1;
          v26 = v29;
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        v21 = FigNotificationCenterRemoveWeakListener();
        if (v21)
        {
          v23 = v21;
          goto LABEL_20;
        }

        CFDictionaryRemoveValue(*(v8 + 448), v10[v12]);
      }

      if (v3 == ++v12)
      {
        v23 = 0;
        goto LABEL_18;
      }
    }
  }

  v23 = 4294894846;
LABEL_20:
  APSLogErrorAt();
LABEL_18:
  free(v10);
  free(v11);
  return v23;
}

uint64_t audioHoseManagerBuffered_releaseMagicCookies(CMTime *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_21_6(MEMORY[0x277CC0898]);
  if (v7 || (v8 = v6, Count = CFDictionaryGetCount(*(v6 + 456)), Count < 1))
  {
    v23 = 0;
    v10 = 0;
    v12 = 0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_14_9(Count);
    if (v10 && (v11 = malloc_type_calloc(v3, 8uLL, v2)) != 0)
    {
      v12 = v11;
      CFDictionaryGetKeysAndValues(*(v8 + 456), v10, v11);
      v13 = 0;
      DerivedStorage = "";
      do
      {
        v15 = CMTimeMakeFromDictionary(&v36, v12[v13]);
        if ((*(a2 + 12) & 1) == 0 || OUTLINED_FUNCTION_12_8(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, *&v36.value, v36.epoch) >= 1)
        {
          if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4()))
          {
            if (a1)
            {
              DerivedStorage = CMBaseObjectGetDerivedStorage();
            }

            v29 = a1;
            *&v27 = v10[v13];
            *(&v27 + 1) = audioHoseManagerBuffered_getMagicCookieIDForMagicCookieData(v27);
            v25 = a1;
            v26 = DerivedStorage;
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
            DerivedStorage = "";
          }

          CFDictionaryRemoveValue(*(v8 + 456), v10[v13]);
        }

        ++v13;
      }

      while (v3 != v13);
      v23 = 0;
    }

    else
    {
      APSLogErrorAt();
      v12 = 0;
      v23 = 4294894846;
    }
  }

  free(v10);
  free(v12);
  return v23;
}

uint64_t audioHoseManagerBuffered_getCryptorIDForCryptor(uint64_t a1)
{
  v1 = a1;
  cf = 0;
  if (qword_280FB1B90 == -1)
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
    dispatch_once(&qword_280FB1B90, &__block_literal_global_88);
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

void audioHoseManagerBuffered_handleCryptorKeyUpdatedInternal(uint64_t a1)
{
  if (OUTLINED_FUNCTION_44(a1))
  {
    if (!*(CMBaseObjectGetDerivedStorage() + 36) && audioHoseManagerBuffered_setCryptorForAllHoses(*v1, v1[1]))
    {
      APSLogErrorAt();
    }

    if (*v1)
    {
      CFRelease(*v1);
    }
  }

  v2 = v1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(v1);
}

void *__audioHoseManagerBuffered_setCryptorForAllHoses_block_invoke(void *result, uint64_t a2, uint64_t *a3)
{
  if (!*(*(result[4] + 8) + 24))
  {
    v3 = audioHoseManagerBuffered_SetCryptorForSingleHose(result[6], *a3, result[7], *(*(result[5] + 8) + 24));
    result = OUTLINED_FUNCTION_1_38(v3);
    if (result)
    {
      return OUTLINED_FUNCTION_1();
    }
  }

  return result;
}

uint64_t audioHoseManagerBuffered_SetCryptorForSingleHose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_20_2();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (v4)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0)
  {
    v10 = *(v9 + 96);
    if (v10)
    {
      v11 = v10(v5, a4, a3, audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandler, v4);
      if (!v11)
      {
        return v11;
      }
    }

    else
    {
      v11 = 4294954514;
      audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandler(v5, a4, -12782, v4);
    }
  }

  else
  {
    v11 = 4294954508;
  }

  APSLogErrorAt();
  if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (v4)
    {
      CMBaseObjectGetDerivedStorage();
    }

    LogPrintF();
  }

  return v11;
}

uint64_t audioHoseManagerBuffered_getMagicCookieIDForMagicCookieData(CFDataRef theData)
{
  if (qword_280FB1B98 != -1)
  {
    dispatch_once(&qword_280FB1B98, &__block_literal_global_102);
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

__n128 audioHoseManagerBuffered_getBufferLevelTimeEstimateForHoseStartup()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v21 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *v3 = *MEMORY[0x277CC08F0];
  *(v3 + 16) = *(v5 + 16);
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (v0)
    {
      v7 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v7 = "";
    }

    v12 = v0;
    v13 = v7;
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (*(DerivedStorage + 188) && v1->n128_u8[9])
  {
    v19 = *(DerivedStorage + 264);
    v20 = *(DerivedStorage + 272);
    v8 = *(DerivedStorage + 276);
    if (v8)
    {
      v9 = *(DerivedStorage + 280);
      result.n128_u64[0] = audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose(v0, v1, &time1).n128_u64[0];
      value = time1.value;
      flags = time1.flags;
      timescale = time1.timescale;
      if (time1.flags)
      {
        epoch = time1.epoch;
        time2.epoch = time1.epoch;
        time1.value = v19;
        time1.timescale = v20;
        time1.flags = v8;
        time1.epoch = v9;
        time2.value = value;
        time2.timescale = timescale;
        time2.flags = flags;
        if (CMTimeCompare(&time1, &time2) <= 0)
        {
          time2.epoch = v9;
          time1.value = value;
          time1.timescale = timescale;
          time1.flags = flags;
          time1.epoch = epoch;
          time2.value = v19;
          time2.timescale = v20;
          time2.flags = v8;
          CMTimeSubtract(v3, &time1, &time2);
          if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4()))
          {
            if (v0)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_25_4(*(v3 + 16), v12, v13, v14, time2.value, *&time2.timescale, time2.epoch, *v3, *(v3 + 8), time1.epoch);
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }
        }
      }
    }
  }

  else
  {
    result = v1[4];
    *v3 = result;
    *(v3 + 16) = v1[5].n128_u64[0];
  }

  return result;
}

void __audioHoseManagerBuffered_setAllCryptorsForSingleHose_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_7();
    CryptorIDForCryptor = audioHoseManagerBuffered_getCryptorIDForCryptor(v4);
    v6 = v3[5];
    *(*(v3[4] + 8) + 24) = CryptorIDForCryptor;
    if (audioHoseManagerBuffered_SetCryptorForSingleHose(v6, v3[6], v2, *(*(v3[4] + 8) + 24)))
    {
      OUTLINED_FUNCTION_1();
    }
  }
}

uint64_t __audioHoseManagerBuffered_setAllMagicCookiesForSingleHose_block_invoke(uint64_t result, CFDataRef theData)
{
  if (theData)
  {
    v2 = result;
    if (*(result + 32))
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4()))
      {
        if (*(v2 + 40))
        {
          CMBaseObjectGetDerivedStorage();
        }

        audioHoseManagerBuffered_getMagicCookieIDForMagicCookieData(theData);
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      v4 = *(v2 + 40);
      if (v4)
      {
        CFRetain(v4);
      }

      v5 = *(v2 + 32);
      MagicCookieIDForMagicCookieData = audioHoseManagerBuffered_getMagicCookieIDForMagicCookieData(theData);
      v7 = *(v2 + 40);
      APSEndpointStreamAudioHoseProtocolGetProtocolID();
      result = CMBaseObjectGetProtocolVTable();
      if (result)
      {
        v9 = *(result + 16);
        result += 16;
        v8 = v9;
        if (v9)
        {
          v10 = *(v8 + 104);
          if (v10)
          {
            result = v10(v5, MagicCookieIDForMagicCookieData, theData, audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandler, v7);
            if (!result)
            {
              return result;
            }
          }

          else
          {
            result = audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandler(v5, MagicCookieIDForMagicCookieData, -12782, v7);
          }
        }
      }

      if (gLogCategory_APAudioHoseManagerBuffered <= 90)
      {
        if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
        {
          if (*(v2 + 40))
          {
            CMBaseObjectGetDerivedStorage();
          }

          return LogPrintF();
        }
      }
    }
  }

  return result;
}

uint64_t audioHoseManagerBuffered_SetMagicCookie()
{
  OUTLINED_FUNCTION_3_7();
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    if (*(DerivedStorage + 186))
    {
      CFDictionaryApplyBlock();
    }
  }

  else
  {
    APSLogErrorAt();
    *(v5 + 6) = -72451;
  }

  v2 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void audioHoseManagerBuffered_hoseFlushCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (!*(CMBaseObjectGetDerivedStorage() + 36))
  {
    HoseDecriptorFromHose = audioHoseManagerBuffered_getHoseDecriptorFromHose();
    if (HoseDecriptorFromHose)
    {
      OUTLINED_FUNCTION_32_2(HoseDecriptorFromHose);
      if (*(v1 + 48))
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3()))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_28_1();
LABEL_15:
          OUTLINED_FUNCTION_2_1();
          LogPrintF();
        }
      }

      else
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_19_5();
          LogPrintF();
        }

        OUTLINED_FUNCTION_30_1(MEMORY[0x277CEA038]);
      }
    }

    else if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3()))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_17_5();
      goto LABEL_15;
    }
  }

  **(v1 + 56) = 0;
}

uint64_t audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 36))
  {
    result = audioHoseManagerBuffered_getHoseDecriptorFromHose();
    if (result)
    {
      result = OUTLINED_FUNCTION_32_2(result);
      if (*(v1 + 80))
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 90)
        {
          if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
          {
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_28_1();
LABEL_15:
            OUTLINED_FUNCTION_2_1();
LABEL_19:
            result = LogPrintF();
          }
        }
      }

      else if (gLogCategory_APAudioHoseManagerBuffered <= 50)
      {
        if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_19_5();
          goto LABEL_19;
        }
      }
    }

    else if (gLogCategory_APAudioHoseManagerBuffered <= 90)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_17_5();
        goto LABEL_15;
      }
    }
  }

  **(v1 + 88) = 0;
  return result;
}

void audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (!*(CMBaseObjectGetDerivedStorage() + 36))
  {
    HoseDecriptorFromHose = audioHoseManagerBuffered_getHoseDecriptorFromHose();
    if (HoseDecriptorFromHose)
    {
      v3 = HoseDecriptorFromHose;
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LogPrintF();
      }

      if (*(v1 + 4))
      {
        OUTLINED_FUNCTION_30_1(MEMORY[0x277CEA038]);
        if (*(v1 + 32))
        {
          v4 = *(v3 + 140) + 1;
          *(v3 + 140) = v4;
          if (gLogCategory_APAudioHoseManagerBuffered <= 90)
          {
            if (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3())
            {
              if (*v1)
              {
                CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_2_1();
              LogPrintF();
            }

            v4 = *(v3 + 140);
          }

          if (v4 >= 0x32)
          {
            v6 = *v1;
            CMBaseObjectGetDerivedStorage();
            if (audioHoseManagerBuffered_getHoseDecriptorFromHose())
            {
              if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3()))
              {
                if (v6)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_2_1();
                LogPrintF();
              }

              Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!Mutable)
              {
                CMNotificationCenterGetDefaultLocalCenter();
                FigDispatchAsyncPostNotification();
                goto LABEL_58;
              }

              v5 = Mutable;
              FigCFDictionarySetInt32();
              CFDictionarySetValue(v5, *MEMORY[0x277CC17E0], @"Too many retries setting the rate to 1");
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
              goto LABEL_57;
            }

            if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3()))
            {
              if (v6)
              {
                CMBaseObjectGetDerivedStorage();
              }

LABEL_72:
              OUTLINED_FUNCTION_2_1();
LABEL_51:
              LogPrintF();
            }
          }
        }

        else
        {
          *(v3 + 140) = 0;
          if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
          {
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            goto LABEL_51;
          }
        }
      }

      else
      {
        if (*(v1 + 32))
        {
          if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3()))
          {
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_2_1();
            LogPrintF();
          }

          v5 = 0;
        }

        else
        {
          v5 = APSAudioTransportTimeCopyDebugDesc();
          if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
          {
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LogPrintF();
          }
        }

        if (!*(v3 + 144))
        {
          v7 = *(v1 + 9);
          *(v3 + 160) = *(v1 + 84);
          *(v3 + 148) = v7;
        }

        if (v5)
        {
LABEL_57:
          CFRelease(v5);
        }
      }
    }

    else if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3()))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_17_5();
      goto LABEL_72;
    }
  }

LABEL_58:
  *v1[17] = 0;
}

uint64_t APAudioHoseManagerBufferedCreate_cold_3()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioHoseManagerBufferedCreate_cold_4()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  time = *v1;
  CMTimeGetSeconds(&time);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioHoseManagerBufferedCreate_cold_5()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioHoseManagerBufferedCreate_cold_6(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioHoseManagerBufferedCreate_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t APAudioHoseManagerBufferedCreate_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_Finalize_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

CFTypeRef audioHoseManagerBuffered_CopyProperty_cold_1(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (CFDictionaryGetCount(*(DerivedStorage + 192)) == 1)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 0x40000000;
    v13 = __audioHoseManagerBuffered_shouldUseReceiverChoosesAnchor_block_invoke;
    v14 = &unk_2784A0150;
    v15 = &v7;
    CFDictionaryApplyBlock();
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  v5 = MEMORY[0x277CBED28];
  if (!v4)
  {
    v5 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v5);
  *a2 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_CopyProperty_cold_2()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_CopyProperty_cold_3()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_handleCryptorKeyUpdated_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_setCryptorForAllHoses_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -72451;
  return result;
}

uint64_t audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_2()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_3()
{
  OUTLINED_FUNCTION_8_12();
  if (*v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

void audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_4()
{
  if (gLogCategory_APAudioHoseManagerBuffered <= 90)
  {
    OUTLINED_FUNCTION_3_7();
    if (v1 != -1 || OUTLINED_FUNCTION_4_3())
    {
      if (*v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_2_1();
      LogPrintF();
    }
  }
}

uint64_t __audioHoseManagerBuffered_setLoudnessNormalizationOnAllHoses_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 40))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_1()
{
  OUTLINED_FUNCTION_18_6();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  CFDictionaryGetCount(*(v0 + 192));
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_3(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  v3 = OUTLINED_FUNCTION_5_5();
  *a2 = v3;
  if (!v3)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_4()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_5()
{
  OUTLINED_FUNCTION_27();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_26_3(DerivedStorage, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_6()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_7()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_8()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_9()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarDeregisterHose_cold_1()
{
  OUTLINED_FUNCTION_18_6();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  CFDictionaryGetCount(*(v0 + 192));
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_2(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_3(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_4(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_5(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_2()
{
  OUTLINED_FUNCTION_27();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_23_6(DerivedStorage, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_25_4(*(a3 + 228), v5, v6, v7, v8, v9, v10, *(a3 + 212), *(a3 + 220), v11);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_4(char a1)
{
  if ((a1 & 1) == 0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_5(uint64_t DerivedStorage, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((DerivedStorage & 1) == 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_26_3(DerivedStorage, a2, a3, a4, a5, a6, a7, a8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_6()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_7(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (gLogCategory_APAudioHoseManagerBuffered <= 60)
  {
    v4 = result;
    if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
    {
      if (v4)
      {
        CMBaseObjectGetDerivedStorage();
      }

      result = LogPrintF();
    }
  }

  *a3 = 0;
  return result;
}

uint64_t audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_27();
  if (v5)
  {
    CMBaseObjectGetDerivedStorage();
  }

  APMessageRingBufferedGetUsedCount(*(a3 + 200));
  OUTLINED_FUNCTION_25_4(v3[4], v7, v8, v9, v10, v11, v12, v3[2], v3[3], v13);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark_cold_2(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_2(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_3()
{
  if (gLogCategory_APAudioHoseManagerBuffered <= 90)
  {
    OUTLINED_FUNCTION_3_7();
    if (v1 != -1 || OUTLINED_FUNCTION_4_3())
    {
      if (*v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_2_1();
      LogPrintF();
    }
  }
}

uint64_t audioHoseManagerBuffered_removeHoseFromDescriptors_cold_1()
{
  OUTLINED_FUNCTION_18_6();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  CFDictionaryGetCount(*v0);
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_removeHoseFromDescriptors_cold_2()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_FlushWithinSampleRange_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_WakeUpHoses_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_NotifyHosesDataAvailable_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_SetRateAndAnchorTime_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_SetRate_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  CFDictionaryGetCount(*(v0 + 192));
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_SetRate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_GetAudioToBufferTimes_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_Suspend_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandler_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5();
  *a1 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_1()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_2()
{
  OUTLINED_FUNCTION_8_12();
  if (*v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_3()
{
  OUTLINED_FUNCTION_8_12();
  if (*v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_6()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void spDescription_copyName_cold_1(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t spEndpoint_sendCommandInternal(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 40 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6();
  }

  v7 = *(DerivedStorage + 136);
  if (v7 && (v8 = *(*(CMBaseObjectGetVTable() + 16) + 16)) != 0 && v8(v7))
  {
    if (*(DerivedStorage + 48))
    {
      v9 = 4294950573;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 4294950570;
  }

  CFRetain(a1);
  CFRetain(a2);
  if (a3)
  {
    CFRetain(a3);
  }

  v10 = *(DerivedStorage + 136);
  if (v10)
  {
    CFRetain(v10);
  }

  APSDispatchAsyncFHelper();
  return v9;
}

void spendpoint_copyShowInfoForStreamsSetEntry(uint64_t a1, __CFDictionary *a2)
{
  value = 0;
  cf1 = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = *MEMORY[0x277CBECE8];
  v4(CMBaseObject, @"EndpointStreamShowInfo", *MEMORY[0x277CBECE8], &value);
  if (!value)
  {
    goto LABEL_15;
  }

  v6 = FigEndpointStreamGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, *MEMORY[0x277CC1900], v5, &cf1);
    v8 = cf1;
    if (cf1)
    {
      if (CFEqual(cf1, *MEMORY[0x277CC1960]))
      {
        v9 = kAPEndpointShowInfoKey_StreamInfo_RealTimeAudio;
      }

      else if (CFEqual(v8, *MEMORY[0x277CC1968]))
      {
        v9 = kAPEndpointShowInfoKey_StreamInfo_BufferedAudio;
      }

      else
      {
        if (!CFEqual(v8, *MEMORY[0x277CC1980]))
        {
LABEL_18:
          APSLogErrorAt();
          goto LABEL_13;
        }

        v9 = kAPEndpointShowInfoKey_StreamInfo_Screen;
      }

      if (*v9)
      {
        CFDictionarySetValue(a2, *v9, value);
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

LABEL_15:
  if (cf1)
  {
    CFRelease(cf1);
  }
}

uint64_t spendpoint_Dissociate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  v18 = 0;
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = 1;
  CFRetain(a1);
  v4 = *(DerivedStorage + 248);
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(DerivedStorage + 136);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v16 = v5;
  v6 = *(DerivedStorage + 88);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  v17 = v6;
  v7 = *(DerivedStorage + 240);
  if (v7)
  {
    v8 = CFGetAllocator(a1);
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(v7);
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(CMBaseObject, @"TransportDevice", v8, &v18);
    }
  }

  spendpoint_resetActivationState(a1, DerivedStorage + 56, *(DerivedStorage + 256));
  FigSimpleMutexUnlock();
  if (!v3)
  {
    spendpoint_stopListeningToSenderSessionAndStreamsNotifications(a1, v16, v17);
    if (v16)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v11)
      {
        v11(v16, 0, 0, 0, 0);
      }

      v12 = APSenderSessionGetCMBaseObject(v16);
      if (v12)
      {
        v13 = v12;
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v14)
        {
          v14(v13);
        }
      }

      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }
    }

    FigSimpleMutexLock();
    spendpoint_clearEndpointState();
    APSDispatchAsyncFHelper();
    FigSimpleMutexUnlock();
  }

  return 0;
}

void spendpoint_activateInternal(uint64_t a1)
{
  v79[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v70 = 0;
  v71 = 0;
  cf = 0;
  if (*(a1 + 56))
  {
    if (CFDictionaryGetInt64())
    {
      v3 = 1;
    }

    else
    {
      v3 = CFDictionaryGetInt64() != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 84);
  v5 = &unk_27CFF1000;
  v6 = MEMORY[0x277CBECE8];
  if (v4 == -16727)
  {
    FigSimpleMutexLock();
    if (*(a1 + 32) == *(DerivedStorage + 56) && *(DerivedStorage + 72) == 2)
    {
      v7 = 0;
      v8 = *(DerivedStorage + 64);
    }

    else
    {
      v8 = 0;
      v7 = -17604;
    }

    FigSimpleMutexUnlock();
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

  if (v4)
  {
    APSLogErrorAt();
    v8 = 0;
    v7 = *(a1 + 84);
    if (!v7)
    {
LABEL_17:
      OUTLINED_FUNCTION_6_14();
      if (v10 ^ v11 | v18)
      {
        if (v12 != -1 || OUTLINED_FUNCTION_4())
        {
          OUTLINED_FUNCTION_2();
        }

        if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      v25 = 0;
      v19 = 0;
      v26 = *(DerivedStorage + 176);
      if (v26 && *(DerivedStorage + 184))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*v6, 0, v26);
        v19 = MutableCopy;
        if (MutableCopy)
        {
          CFDictionarySetValue(MutableCopy, @"isSidePlay", *MEMORY[0x277CBED28]);
          APSRTCReportingAgentSendEvent();
          CFRelease(v19);
          v19 = 0;
        }

        else
        {
          APSLogErrorAt();
        }

        v25 = 0;
      }

      goto LABEL_101;
    }

LABEL_78:
    v19 = 0;
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_6_14();
  if (v10 ^ v11 | v18 && (v9 != -1 || OUTLINED_FUNCTION_4()))
  {
    v67 = *(a1 + 32);
    OUTLINED_FUNCTION_2();
  }

  if (*(DerivedStorage + 24))
  {
    CMBaseObject = APSenderSessionGetCMBaseObject(*(a1 + 24));
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(CMBaseObject, @"EventRecorder", *v6, &cf);
      if (cf)
      {
        MEMORY[0x223DAE7F0](*(DerivedStorage + 24));
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  while (1)
  {
    v15 = *(a1 + 24);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v16)
    {
      v7 = -12782;
      goto LABEL_52;
    }

    v17 = v16(v15);
    v18 = v17 == -71164 || v17 == -71145;
    if (v18)
    {
      v7 = -17608;
      goto LABEL_52;
    }

    v7 = v17;
    if (!v17)
    {
      break;
    }

    if (v17 != 200401)
    {
      if (v17 != 200503)
      {
        if (v17 != 200470)
        {
          goto LABEL_52;
        }

        goto LABEL_36;
      }

      v7 = -17609;
LABEL_52:
      APSLogErrorAt();
      v19 = 0;
      v8 = 0;
      goto LABEL_53;
    }

LABEL_36:
    if (v3)
    {
      APSLogErrorAt();
      v19 = 0;
      v8 = 0;
      v7 = -17600;
LABEL_53:
      v5 = &unk_27CFF1000;
      goto LABEL_79;
    }
  }

  v63 = *a1;
  SNPrintF();
  v19 = dispatch_queue_create(label, 0);
  if (!v19)
  {
    APSLogErrorAt();
    v8 = 0;
    v7 = -16721;
    goto LABEL_53;
  }

  v5 = &unk_27CFF1000;
  if (!in_audio_mx_server_process())
  {
    v23 = [MEMORY[0x277D26E58] sharedAVSystemController];
    OUTLINED_FUNCTION_6_14();
    if (v10 ^ v11 | v18 && (v24 != -1 || OUTLINED_FUNCTION_4()))
    {
      v65 = *a1;
      v66 = *(DerivedStorage + 256);
      OUTLINED_FUNCTION_2();
    }

    v78 = *MEMORY[0x277D26D68];
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:{1, v65, v66, v67}];
    [v23 setAttribute:v28 forKey:*MEMORY[0x277D26DD0] error:0];
    [v23 addRemoteDeviceID:*(DerivedStorage + 256)];
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_28();
    FigNotificationCenterAddWeakListener();
    v21 = 0;
LABEL_68:
    FigSimpleMutexLock();
    *(DerivedStorage + 152) = v21;
    *(DerivedStorage + 160) = v23;
    *(DerivedStorage + 168) = v19;
    v6 = MEMORY[0x277CBECE8];
    if (*(a1 + 32) != *(DerivedStorage + 56) || *(DerivedStorage + 72) != 1)
    {
      v8 = 0;
      v7 = -17604;
LABEL_77:
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      goto LABEL_78;
    }

    v30 = *(a1 + 16);
    v31 = CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    v32 = APSGetFBOPropertyInt64();
    if (*(v31 + 128))
    {
      v33 = v32;
      v34 = *(v31 + 112);
      if (v34)
      {
        if ((v30 & 8) == 0 || !v33)
        {
          if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v8 = 0;
          v35 = 0;
          v7 = -16720;
LABEL_135:
          v59 = *v6;
          Mutable = CFSetCreateMutable(*v6, 0, MEMORY[0x277CBF158]);
          *(DerivedStorage + 88) = Mutable;
          if (Mutable)
          {
            if (v35)
            {
              *(DerivedStorage + 64) = v8;
              *(DerivedStorage + 96) = *(a1 + 81);
              APSEventRecorderRecordEvent();
              spendpoint_postPerformanceReport();
              if (!*(a1 + 80))
              {
                v61 = APSenderSessionGetCMBaseObject(*(a1 + 24));
                CMBaseObjectCopyProperty(v61, @"InitialRTCStats", v59, &v70);
                *(DerivedStorage + 176) = FigCFDictionaryCreateMutableCopy();
                CFDictionarySetInt64();
                APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                CFDictionarySetInt64();
                APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                CFDictionarySetInt64();
                APSRTCReportingAgentCreate();
              }

              *(DerivedStorage + 72) = 2;
              FigSimpleMutexUnlock();
              if (qword_280FB1BC8 != -1)
              {
                dispatch_once(&qword_280FB1BC8, &__block_literal_global_31);
              }

              if (_MergedGlobals_21)
              {
                v62 = *_MergedGlobals_21;
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __spendpoint_activateInternal_block_invoke;
                block[3] = &__block_descriptor_48_e5_v8__0l;
                block[4] = _MergedGlobals_21;
                block[5] = a1;
                dispatch_sync(v62, block);
              }

              goto LABEL_17;
            }
          }

          else
          {
            if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v7 = -16721;
          }

          goto LABEL_77;
        }

        if (CFDictionaryGetValue(v34, *MEMORY[0x277CC1968]))
        {
          v7 = 0;
          v35 = 1;
          v8 = 8;
          goto LABEL_135;
        }
      }
    }

    APSLogErrorAt();
    v8 = 0;
    v35 = 0;
    v7 = -17606;
    goto LABEL_135;
  }

  v20 = [objc_alloc(MEMORY[0x277D26E68]) initWithPID:getpid() remoteDeviceID:{*(DerivedStorage + 256), v63, "systemControllerQueue"}];
  if (v20)
  {
    v21 = v20;
    OUTLINED_FUNCTION_6_14();
    if (v10 ^ v11 | v18 && (v22 != -1 || OUTLINED_FUNCTION_4()))
    {
      v64 = *a1;
      OUTLINED_FUNCTION_2();
    }

    v29 = *MEMORY[0x277D27420];
    v79[0] = *MEMORY[0x277D273D8];
    [v21 setAttributeForKey:v29 andValue:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v79, 1, v64)}];
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_28();
    FigNotificationCenterAddWeakListener();
    v23 = 0;
    goto LABEL_68;
  }

  APSLogErrorAt();
  v8 = 0;
  v7 = -6728;
LABEL_79:
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  *label = 0u;
  v73 = 0u;
  v36 = v5[778];
  if (v36 <= 90 && (v36 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(a1 + 32) == *(DerivedStorage + 56) && *(DerivedStorage + 72) == 1)
  {
    *label = CFRetain(*a1);
    v37 = *(DerivedStorage + 248);
    if (v37)
    {
      v37 = CFRetain(v37);
    }

    *&label[8] = v37;
    v38 = CFRetain(@"FailedActivation");
    DWORD2(v75) = 0;
    v77 = 0uLL;
    v39 = *(a1 + 32);
    *&v73 = v38;
    v41 = *(a1 + 16);
    v40 = *(a1 + 24);
    *(&v74 + 1) = v39;
    *&v75 = v41;
    if (v40)
    {
      v42 = CFRetain(v40);
    }

    else
    {
      v42 = 0;
    }

    *(&v73 + 1) = v42;
    v43 = *(DerivedStorage + 88);
    if (v43)
    {
      v44 = CFRetain(v43);
    }

    else
    {
      v44 = 0;
    }

    *&v74 = v44;
    v45 = *(DerivedStorage + 176);
    if (v45)
    {
      v45 = CFRetain(v45);
    }

    *&v76 = v45;
    v46 = *(DerivedStorage + 184);
    if (v46)
    {
      v46 = CFRetain(v46);
    }

    *(&v76 + 1) = v46;
    spendpoint_resetActivationState(*a1, DerivedStorage + 56, *(DerivedStorage + 256));
    spendpoint_stopListeningToSenderSessionAndStreamsNotifications(*a1, v42, v44);
    APSDispatchAsyncFHelper();
  }

  FigSimpleMutexUnlock();
  if (v3 && v7 != -17600)
  {
    v25 = -17601;
  }

  else
  {
    v25 = v7;
  }

LABEL_101:
  v47 = *(a1 + 64);
  if (v47)
  {
    v48 = *a1;
    v49 = *(a1 + 32);
    *label = *a1;
    *&label[8] = v49;
    if (v25)
    {
      v50 = 0;
    }

    else
    {
      v50 = v8;
    }

    *&v73 = v50;
    *(&v73 + 1) = v25;
    v51 = *(a1 + 72);
    *&v74 = v47;
    *(&v74 + 1) = v51;
    CFRetain(v48);
    APSDispatchAsyncFHelper();
  }

  if (!v25)
  {
    v52 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v52, v8, *(a1 + 32), &v71);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v71)
    {
      CFRelease(v71);
      v71 = 0;
    }

    v53 = CFGetAllocator(*a1);
    APEndpointCreateStreamsChangedNotificationPayload(v53, v8, *(a1 + 32), 1, &v71);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v71)
    {
      CFRelease(v71);
      v71 = 0;
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v54 = *(a1 + 8);
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = *(a1 + 56);
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = *(a1 + 24);
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = *(a1 + 40);
  if (v57)
  {
    CFRelease(v57);
  }

  v58 = *(a1 + 48);
  if (v58)
  {
    CFRelease(v58);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v19)
  {
    dispatch_release(v19);
  }
}

uint64_t spendpoint_handleSenderSessionStarted()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = result;
  if (gLogCategory_SPEndpoint <= 30)
  {
    if (gLogCategory_SPEndpoint != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  if (!*(v1 + 48))
  {
    FigSimpleMutexLock();
    CMBaseObjectGetDerivedStorage();

    return FigSimpleMutexUnlock();
  }

  return result;
}

void spendpoint_updateStatus(const void *a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 48) && a2)
  {
    v7 = DerivedStorage;
    *(DerivedStorage + 272) = a2;
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      v11 = CFGetAllocator(a1);
      v12 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v12)
      {
        APSLogErrorAt();
LABEL_50:
        CFRelease(v10);
        return;
      }

      v13 = v12;
      CFDictionarySetInt64();
      if (a2 == 200470 || a2 == 200401)
      {
        if (gLogCategory_SPEndpoint > 30 || gLogCategory_SPEndpoint == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_36;
        }
      }

      else
      {
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        v15 = MEMORY[0x277CC0CA0];
        v16 = a3 == 0;
        if (!a3)
        {
          v15 = MEMORY[0x277CC0CA8];
        }

        v17 = *MEMORY[0x277CC0BD8];
        if (v16)
        {
          v18 = MEMORY[0x277CC0BD0];
        }

        else
        {
          v18 = MEMORY[0x277CC0BC8];
        }

        CFDictionarySetValue(v10, *MEMORY[0x277CC0CC8], *v15);
        CFDictionarySetValue(v13, v17, *v18);
        if (v7[26])
        {
          if (v7[29] && (v19 = FigCFWeakReferenceHolderCopyReferencedObject(), v7[29]) && !v19)
          {
            if (gLogCategory_SPEndpoint > 90)
            {
              goto LABEL_36;
            }

            if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
            {
              LogPrintF();
            }
          }

          else
          {
            CFRetain(a1);
            CFRetain(v13);
            if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4()))
            {
              OUTLINED_FUNCTION_2();
            }

            APSDispatchAsyncFHelper();
          }
        }

        if (gLogCategory_SPEndpoint > 30 || gLogCategory_SPEndpoint == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_36;
        }
      }

      LogPrintF();
LABEL_36:
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      if (a2 == -16613)
      {
        v20 = v7[30];
        v21 = CFGetAllocator(a1);
        CMBaseObject = APEndpointDescriptionGetCMBaseObject(v20);
        v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v23)
        {
          v23(CMBaseObject, @"TransportDevice", v21, &cf);
          if (cf)
          {
            if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4()))
            {
              OUTLINED_FUNCTION_2();
            }

            APTransportDeviceReconfirm();
            if (cf)
            {
              CFRelease(cf);
            }
          }
        }
      }

      CFRelease(v13);
      goto LABEL_50;
    }

    APSLogErrorAt();
  }
}

uint64_t spendpoint_logTransportDiscoveryDurationIfEventPresent()
{
  result = APSEventRecorderGetEventTimeRecursive();
  if (result)
  {
    APBrowserGetStartEventForBrowserDeviceEvent();
    result = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
    if (gLogCategory_SPEndpoint <= 40)
    {
      if (gLogCategory_SPEndpoint != -1)
      {
        return OUTLINED_FUNCTION_6();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return OUTLINED_FUNCTION_6();
      }
    }
  }

  return result;
}

uint64_t spendpoint_handleStreamFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Int64 = -71850;
  CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    Int64 = CFDictionaryGetInt64();
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  FigSimpleMutexLock();
  spendpoint_updateStatus(a2, Int64, 1);
  return FigSimpleMutexUnlock();
}

void spendpoint_reportStreamMetricsArrayIterator(const __CFDictionary *a1, CFDictionaryRef *a2)
{
  if (a2 && a1 && *a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *a2);
    if (MutableCopy)
    {
      v4 = MutableCopy;
      if (CFDictionaryMergeDictionary() || !CFDictionaryGetValue(a1, @"sessionType"))
      {
        APSLogErrorAt();
      }

      else
      {
        if (FigCFEqual())
        {
          APSRTCReportingAgentSendEvent();
        }

        if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2();
        }
      }

      CFRelease(v4);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void spendpoint_dissociateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  if (qword_280FB1BC8 != -1)
  {
    dispatch_once(&qword_280FB1BC8, &__block_literal_global_31);
  }

  if (_MergedGlobals_21)
  {
    v3 = *_MergedGlobals_21;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __spendpoint_dissociateInternal_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = _MergedGlobals_21;
    block[5] = a1;
    dispatch_sync(v3, block);
  }

  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*(a1 + 24))
  {
    CFSetApplyBlock();
  }

  CMBaseObjectGetDerivedStorage();
  APSEventRecorderReset();
  FigSimpleMutexLock();
  spendpoint_updateStatus(*a1, -16723, 1);
  FigSimpleMutexUnlock();
  if (*DerivedStorage)
  {
    v4 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v4, *(a1 + 40), *(a1 + 32), &v10);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v10)
    {
      CFRelease(v10);
    }
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

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t spEndpoint_SendCommand(uint64_t a1, const void *a2, const void *a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = spEndpoint_sendCommandInternal(FigEndpoint, a2, a3);
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t spendpoint_handleClientIsActiveDidChange_cold_2()
{
  if (gLogCategory_SPEndpoint <= 50)
  {
    if (gLogCategory_SPEndpoint != -1)
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

uint64_t spendpoint_handleEventMessageCreatingReply_cold_5(int a1)
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

uint64_t spEndpoint_AcquireAndCopyResource_cold_8()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t spEndpoint_AcquireAndCopyResource_cold_10(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_SPEndpoint < 91)
  {
    if (gLogCategory_SPEndpoint != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a3 = -72374;
  return result;
}

uint64_t APEndpointGetFeatureFromStreamType(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, *MEMORY[0x277CC1980]))
    {
      return 1;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC1960]))
    {
      return 2;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC1968]))
    {
      return 8;
    }

    else
    {
      return 32 * (CFEqual(v1, *MEMORY[0x277CC1970]) != 0);
    }
  }

  return result;
}

uint64_t __APEndpointGetEnabledFeatures_block_invoke(uint64_t a1, uint64_t a2)
{
  result = APEndpointGetFeatureFromStreamType(a2);
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

uint64_t FigEndpointSubTypeToGestaltDeviceClass(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, *MEMORY[0x277CC19A0]))
    {
      return 4;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC19F8]))
    {
      return 1;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC19C0]))
    {
      return 7;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC19C8]))
    {
      return 100;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC1A00]))
    {
      return 11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void APEndpointCreateAudioStreamOptions_cold_5(uint64_t a1, CFTypeRef *a2, const void *a3)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  CFRelease(a3);
}

uint64_t audioEngineBufferedAdapter_Flush(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_2();
    }

    v5 = APSRealTimeAllocatorAllocate();
    if (v5)
    {
      v6 = v5;
      FigCFDictionaryGetCMTimeIfPresent();
      *(v6 + 24) = CFDictionaryGetInt64() != 0;
      v7 = *(v4 + 200);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *(v6 + 32) = v7;
      APSRealTimeDispatcherAsync();
    }
  }

  return 0;
}

void audioEngineBufferedAdapter_CompressionSourceWriteDataCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 200);
    if (v3)
    {
      CFRetain(v3);
    }

    APSRealTimeDispatcherAsync();
  }
}

uint64_t APAudioEngineBufferedAdapterCreate_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15480;
  return result;
}

uint64_t APAudioEngineBufferedAdapterCreate_cold_8(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APAudioEngineBufferedAdapterCreate_cold_16(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APAudioEngineBufferedAdapterCreate_cold_17(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APAudioEngineBufferedAdapterCreate_cold_19(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15480;
  return result;
}

void audioEngineBufferedAdapter_Resume_cold_2(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
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

void audioEngineBufferedAdapter_Suspend_cold_2(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
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

void audioEngineBufferedAdapter_SetEndpointStream_cold_1(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
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

uint64_t audioEngineBufferedAdapter_Resume_Stage1_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15487;
  return result;
}

uint64_t audioEngineBufferedAdapter_Resume_Stage1_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15484;
  return result;
}

void audioEngineBufferedAdapter_Resume_Stage1_cold_5(uint64_t a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6_15();
    OUTLINED_FUNCTION_2();
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void audioEngineBufferedAdapter_Resume_Stage1_cold_13(uint64_t a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6_15();
    OUTLINED_FUNCTION_2();
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t audioEngineBufferedAdapter_Resume_Stage1_cold_21(_DWORD *a1, _DWORD *a2)
{
  APSLogErrorAt();
  result = FigSignalErrorAtGM();
  *a2 = result;
  *a1 = result;
  return result;
}

uint64_t audioEngineBufferedAdapter_Resume_Stage1_cold_22(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72091;
  return result;
}

uint64_t audioEngineBufferedAdapter_Resume_Stage1_cold_23(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15483;
  return result;
}

void audioEngineBufferedAdapter_Suspend_Stage1_cold_2()
{
  OUTLINED_FUNCTION_4_27();
  APSLogErrorAt();
  FigSimpleMutexUnlock();
  *(v1 + 40) = v0;

  audioEngineBufferedAdapter_Suspend_Complete(v1);
}

void audioEngineBufferedAdapter_SetEndpointStream_Stage1_cold_2()
{
  OUTLINED_FUNCTION_4_27();
  APSLogErrorAt();
  FigSimpleMutexUnlock();
  *(v1 + 32) = v0;

  audioEngineBufferedAdapter_SetEndpointStream_Complete(v1);
}

void __getCRVehiclePolicyMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCRVehiclePolicyMonitorClass(void)_block_invoke") description:{@"APCarPlayPolicyMonitor.m", 42, @"Unable to find class %s", "CRVehiclePolicyMonitor"}];
  __break(1u);
}

void __getCRVehiclePolicyMonitorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarKitLibrary(void)") description:{@"APCarPlayPolicyMonitor.m", 40, @"%s", *a1}];
  __break(1u);
}

uint64_t APEndpointRecordEvent(uint64_t result)
{
  if (result)
  {
    CMBaseObjectGetDerivedStorage();

    return APSEventRecorderRecordEventWithFlags();
  }

  return result;
}

void endpoint_copyShowInfoForStreamsDictionaryEntry(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  value = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, @"EndpointStreamShowInfo", *MEMORY[0x277CBECE8], &value);
    if (value)
    {
      if (!a1)
      {
        APSLogErrorAt();
        goto LABEL_18;
      }

      if (CFEqual(a1, *MEMORY[0x277CC1960]))
      {
        v7 = kAPEndpointShowInfoKey_StreamInfo_RealTimeAudio;
      }

      else if (CFEqual(a1, *MEMORY[0x277CC1968]))
      {
        v7 = kAPEndpointShowInfoKey_StreamInfo_BufferedAudio;
      }

      else if (CFEqual(a1, *MEMORY[0x277CC1980]))
      {
        v7 = kAPEndpointShowInfoKey_StreamInfo_Screen;
      }

      else
      {
        if (!CFEqual(a1, *MEMORY[0x277CC1970]))
        {
          goto LABEL_18;
        }

        v7 = kAPEndpointShowInfoKey_StreamInfo_LowLatencyAudio;
      }

      if (*v7)
      {
        CFDictionarySetValue(a3, *v7, value);
        goto LABEL_14;
      }

LABEL_18:
      APSLogErrorAt();
LABEL_14:
      if (value)
      {
        CFRelease(value);
      }
    }
  }
}

uint64_t apEndpoint_sendCommandInternal(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6();
  }

  v7 = *(DerivedStorage + 216);
  if (v7 && (v8 = *(*(CMBaseObjectGetVTable() + 16) + 16)) != 0 && v8(v7))
  {
    if (*(DerivedStorage + 120))
    {
      v9 = 4294950573;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 4294950570;
  }

  CFRetain(a1);
  CFRetain(*(DerivedStorage + 40));
  CFRetain(a2);
  if (a3)
  {
    CFRetain(a3);
  }

  v10 = *(DerivedStorage + 216);
  if (v10)
  {
    CFRetain(v10);
  }

  APSDispatchAsyncFHelper();
  return v9;
}

uint64_t endpoint_Activate(const void *a1, uint64_t a2, const __CFDictionary *a3, CFTypeRef a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v135 = 0;
  bzero(v124, 0xA8uLL);
  OUTLINED_FUNCTION_20_5();
  v11 = CFStringCreateF();
  v12 = *(DerivedStorage + 40);
  aBlock = 0;
  v142[0] = 0;
  v13 = *MEMORY[0x277CBECE8];
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(v12);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v115 = a4;
  v116 = a5;
  v120 = v13;
  if (!v15 || (v15(CMBaseObject, @"TransportDevice", v13, &aBlock), !aBlock))
  {
    v20 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v16 = APSEventRecorderCreate();
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    EventRecorder = APTransportDeviceGetEventRecorder();
    if (!EventRecorder || (v18 = MEMORY[0x223DAE7F0](v142[0], EventRecorder)) == 0)
    {
      APSEventRecorderAddSignPostForEvent();
      v19 = 0;
      v20 = v142[0];
      v142[0] = 0;
      goto LABEL_7;
    }

    v19 = v18;
  }

  APSLogErrorAt();
  v20 = 0;
LABEL_7:
  if (aBlock)
  {
    CFRelease(aBlock);
  }

LABEL_9:
  if (v142[0])
  {
    CFRelease(v142[0]);
  }

  if (v19)
  {
    APSLogErrorAt();
    a4 = 0;
    v117 = 0;
    v118 = 0;
    v113 = 0;
    cf = 0;
    Value = 0;
    v123 = 0;
    v121 = 0;
LABEL_312:
    v119 = 0;
    goto LABEL_244;
  }

  APSEventRecorderRecordEventWithFlags();
  FigSimpleMutexLock();
  Value = FigCFDictionaryGetValue();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  v121 = *(DerivedStorage + 136);
  if (a3)
  {
    v21 = CFDictionaryGetValue(a3, @"ParentContextID");
    if (!v21)
    {
      v21 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09F8]);
    }

    if (!*(DerivedStorage + 144))
    {
      v22 = *(DerivedStorage + 152);
      *(DerivedStorage + 152) = v21;
      if (v21)
      {
        CFRetain(v21);
      }

      if (!v22)
      {
        goto LABEL_24;
      }

LABEL_23:
      CFRelease(v22);
LABEL_24:
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      goto LABEL_29;
    }
  }

  else if (!*(DerivedStorage + 144))
  {
    v22 = *(DerivedStorage + 152);
    *(DerivedStorage + 152) = 0;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_103;
  }

LABEL_29:
  v111 = v20;
  if (a3)
  {
    v23 = CFDictionaryGetValue(a3, @"Container");
  }

  else
  {
    v23 = 0;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (!FigCFEqual())
  {
    a4 = *(DerivedStorage + 544);
    *(DerivedStorage + 544) = v23;
    if (v23)
    {
      CFRetain(v23);
    }

    if (a4)
    {
      CFRelease(a4);
    }

    goto LABEL_39;
  }

  if (UpTimeNanoseconds > *(DerivedStorage + 568))
  {
LABEL_39:
    *(DerivedStorage + 560) = UpTimeNanoseconds + 1000000000 * *(DerivedStorage + 72);
    v25 = 1;
    goto LABEL_40;
  }

  v25 = *(DerivedStorage + 552) + 1;
LABEL_40:
  *(DerivedStorage + 552) = v25;
  *(DerivedStorage + 568) = UpTimeNanoseconds + 1000000000 * *(DerivedStorage + 80);
  if (a2 != 16 && *(DerivedStorage + 48))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_1_41();
    v19 = -16726;
    goto LABEL_244;
  }

  if (*(DerivedStorage + 120))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_1_41();
    v19 = -16723;
    goto LABEL_244;
  }

  if (a3)
  {
    v26 = CFGetTypeID(a3);
    if (v26 != CFDictionaryGetTypeID())
    {
      goto LABEL_310;
    }
  }

  v27 = *(DerivedStorage + 136);
  if (v27 && v27 != a2)
  {
    goto LABEL_302;
  }

  if (*(DerivedStorage + 216))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_1_41();
    v19 = -16727;
    goto LABEL_244;
  }

  if (!*(DerivedStorage + 40))
  {
LABEL_302:
    APSLogErrorAt();
LABEL_103:
    OUTLINED_FUNCTION_1_41();
    v19 = -16726;
    goto LABEL_244;
  }

  if (!a3)
  {
    a4 = 0;
    v30 = 0;
    v113 = 0;
    cf = 0;
    v123 = 0;
    v109 = 0;
    v110 = 0;
    v32 = 0;
    v33 = 0.0;
    goto LABEL_110;
  }

  ActivationOptions = endpoint_readActivationOptions(a3, DerivedStorage + 128);
  if (ActivationOptions)
  {
    v19 = ActivationOptions;
    a4 = 0;
    v117 = 0;
    v118 = 0;
    v113 = 0;
    cf = 0;
    v123 = 0;
    goto LABEL_312;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (*(DerivedStorage + 242))
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (CFDictionaryContainsKey(a3, @"PerceivedClusterType"))
    {
      Int64 = CFDictionaryGetInt64();
      *(DerivedStorage + 244) = Int64;
      if (Int64)
      {
        goto LABEL_54;
      }
    }

    else if (*(DerivedStorage + 244))
    {
      goto LABEL_54;
    }

LABEL_310:
    APSLogErrorAt();
    OUTLINED_FUNCTION_1_41();
    v19 = -16720;
    goto LABEL_244;
  }

LABEL_54:
  v30 = FigCFEqual();
  OUTLINED_FUNCTION_19_6();
  v31 = CFDictionaryGetInt64();
  if (!IsAppleInternalBuild() || v31)
  {
    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else if (APSSettingsGetIntWithDefault() != 1)
  {
LABEL_57:
    BYTE4(v110) = 0;
    goto LABEL_74;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  BYTE4(v110) = 1;
LABEL_74:
  if (!*(DerivedStorage + 260))
  {
    *(DerivedStorage + 260) = FigCFEqual();
  }

  OUTLINED_FUNCTION_19_6();
  v34 = CFDictionaryGetInt64() != 0;
  OUTLINED_FUNCTION_19_6();
  v35 = CFDictionaryGetInt64();
  v36 = 0;
  v37 = v35 != 0;
  v38 = *(DerivedStorage + 96);
  if (v38 <= 0xD && ((1 << v38) & 0x2090) != 0)
  {
    v36 = !*(DerivedStorage + 48) && !(*(DerivedStorage + 260) | v30) && *(DerivedStorage + 243) == 0;
  }

  *(DerivedStorage + 261) = v36;
  if (*(DerivedStorage + 241))
  {
    cf = CFDictionaryGetValue(a3, @"GroupID");
  }

  else
  {
    cf = 0;
  }

  v113 = CFDictionaryGetValue(a3, @"ContinuousGroupSessionID");
  v33 = 0.0;
  LOBYTE(v110) = v37;
  LOBYTE(v109) = v34;
  if (*(DerivedStorage + 48))
  {
    v123 = 0;
LABEL_91:
    BYTE4(v109) = 0;
    goto LABEL_92;
  }

  v39 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09D8]);
  if (v39)
  {
    v123 = CFRetain(v39);
  }

  else
  {
    v123 = 0;
  }

  if (*(DerivedStorage + 48))
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_19_6();
  if (!CFDictionaryGetInt64())
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_19_6();
  CFDictionaryGetDouble();
  v33 = v45;
  BYTE4(v109) = 1;
LABEL_92:
  v40 = CMBaseObjectGetDerivedStorage();
  v41 = CFDictionaryGetValue(a3, @"SenderSession");
  if (v41 && ((v42 = v41, v43 = CFGetTypeID(v41), v43 != CFDictionaryGetTypeID()) || (v42 = CFDictionaryGetValue(v42, *(v40 + 448))) != 0) && (v44 = CFGetTypeID(v42), v44 == APSenderSessionGetTypeID()))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    a4 = CFRetain(v42);
  }

  else
  {
    a4 = 0;
  }

  if (!*(DerivedStorage + 274))
  {
    v32 = 0;
LABEL_110:
    v119 = v32;
    if (endpoint_shouldOnlyBeActivatedAsPartOfCluster() && !*(DerivedStorage + 242))
    {
      APSLogErrorAt();
      v117 = 0;
      v118 = 0;
      v19 = -72277;
      goto LABEL_244;
    }

    if (*(DerivedStorage + 48))
    {
      goto LABEL_117;
    }

    v47 = v123;
    if (!v123)
    {
      v47 = APSCreateNewUUIDString();
    }

    v123 = v47;
    v48 = endpoint_ensureSharedContextCreated(a1, a2, a3, v30);
    if (v48)
    {
      v19 = v48;
LABEL_319:
      v117 = 0;
      v118 = 0;
      goto LABEL_244;
    }

    MetadataSourceAndCommandSinkIfNeeded = endpoint_createMetadataSourceAndCommandSinkIfNeeded(a1, v121, a2);
    if (MetadataSourceAndCommandSinkIfNeeded)
    {
      v19 = MetadataSourceAndCommandSinkIfNeeded;
    }

    else
    {
LABEL_117:
      CFGetAllocator(a1);
      v50 = APSConnectionInterfaceManagerCreate();
      if (!v50)
      {
        if (a4)
        {
          if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          v117 = 0;
          v118 = 0;
LABEL_221:
          CMNotificationCenterGetDefaultLocalCenter();
          v80 = OUTLINED_FUNCTION_32_3();
          if (v80)
          {
            v19 = v80;
          }

          else
          {
            CMNotificationCenterGetDefaultLocalCenter();
            v81 = OUTLINED_FUNCTION_32_3();
            if (!v81)
            {
              v82 = CMBaseObjectGetDerivedStorage();
              if (!*(v82 + 48))
              {
                v84 = v82;
                if (*(v82 + 32))
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_8_13();
                  OUTLINED_FUNCTION_33_1();
                  CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_33_1();
                  if (*(v84 + 96) == 7)
                  {
                    CMNotificationCenterGetDefaultLocalCenter();
                    OUTLINED_FUNCTION_8_13();
                    OUTLINED_FUNCTION_33_1();
                  }
                }
              }

              if (endpoint_isInLocalClusterOfAppleTV())
              {
                CMNotificationCenterGetDefaultLocalCenter();
                OUTLINED_FUNCTION_4_28();
                OUTLINED_FUNCTION_33_1();
              }

              *(DerivedStorage + 216) = CFRetain(a4);
              *(DerivedStorage + 224) = CFRetain(v135);
              ++*(DerivedStorage + 128);
              *(DerivedStorage + 136) = a2;
              *(DerivedStorage + 144) = 1;
              if (v20)
              {
                v83 = CFRetain(v20);
              }

              else
              {
                v83 = 0;
              }

              *(DerivedStorage + 280) = v83;
              if (a3 && (OUTLINED_FUNCTION_19_6(), CFDictionaryGetInt64()))
              {
                if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
                {
                  OUTLINED_FUNCTION_2_0();
                  LogPrintF();
                }
              }

              else
              {
                CMBaseObjectGetDerivedStorage();
                APSGetFBOPropertyInt64();
                APSRTCReportingAgentCreate();
                *(DerivedStorage + 288) = CFDictionaryCreateMutable(v120, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                APSGetCPULoadAverage();
                CFDictionarySetInt64();
                CFDictionarySetDouble();
                CFDictionarySetInt64();
                v85 = MEMORY[0x277CBED28];
                if (!*(DerivedStorage + 240))
                {
                  v85 = MEMORY[0x277CBED10];
                }

                CFDictionarySetValue(*(DerivedStorage + 288), @"isPerAppDisplay", *v85);
              }

              endpoint_postIsInUseDidChangeNotification(a1, *(DerivedStorage + 480));
              if ((a2 & 4) == 0 || *(DerivedStorage + 304) || (Mutable = CFSetCreateMutable(v120, 0, MEMORY[0x277CBF158]), (*(DerivedStorage + 304) = Mutable) != 0))
              {
                v19 = 0;
                goto LABEL_244;
              }

              APSLogErrorAt();
              goto LABEL_328;
            }

            v19 = v81;
          }

          APSLogErrorAt();
LABEL_307:
          APSLogErrorAt();
          goto LABEL_244;
        }

        v108 = v11;
        if (APSIsOpenNANSenderEnabled())
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_6_16();
          v137 = 3221225472;
          v138 = __endpoint_createHandleNANAuthorizationRequestBlockWrapper_block_invoke;
          v139 = &unk_2784A0DC0;
          v140 = a1;
          v141 = v51;
          v142[0] = 0;
          _Block_copy(&aBlock);
          OUTLINED_FUNCTION_9_11();
          v118 = v142[0];
          if (!v142[0])
          {
            APSLogErrorAt();
            if (v30)
            {
              _Block_release(v30);
            }
          }

          v141 = CMBaseObjectGetDerivedStorage();
          v142[0] = 0;
          OUTLINED_FUNCTION_6_16();
          v137 = 3221225472;
          v138 = __endpoint_createSetAuthorizationStringBlockWrapper_block_invoke;
          v139 = &unk_2784A0E08;
          v140 = a1;
          _Block_copy(&aBlock);
          OUTLINED_FUNCTION_9_11();
          v117 = v142[0];
          if (!v142[0])
          {
            APSLogErrorAt();
            if (v30)
            {
              _Block_release(v30);
            }

            if (v142[0])
            {
              CFRelease(v142[0]);
            }
          }
        }

        else
        {
          v117 = 0;
          v118 = 0;
        }

        v105 = v135;
        v52 = *(DerivedStorage + 260);
        v53 = *(DerivedStorage + 242);
        v106 = *(DerivedStorage + 244);
        v107 = *(DerivedStorage + 208);
        v54 = CMBaseObjectGetDerivedStorage();
        aBlock = 0;
        v142[0] = 0;
        CMBaseObjectGetDerivedStorage();
        if (qword_280FB1C00 != -1)
        {
          dispatch_once_f(&qword_280FB1C00, &qword_280FB1C08, endpoint_getSessionProtocolOverrideString);
        }

        if (qword_280FB1C08 == @"legacy")
        {
          goto LABEL_135;
        }

        if (!qword_280FB1C08)
        {
          goto LABEL_334;
        }

        if (CFEqual(qword_280FB1C08, @"legacy"))
        {
LABEL_135:
          if (gLogCategory_APEndpoint > 50 || gLogCategory_APEndpoint == -1 && !OUTLINED_FUNCTION_4())
          {
            goto LABEL_153;
          }

          OUTLINED_FUNCTION_2_0();
LABEL_149:
          LogPrintF();
LABEL_153:
          v55 = APSenderSessionLegacyAudioCreate(v120, *(v54 + 440), *(v54 + 40), v107, v142);
          v20 = v111;
          if (v55)
          {
            v19 = v55;
            goto LABEL_209;
          }

          if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          goto LABEL_193;
        }

        if (qword_280FB1C08 == @"airplay" || qword_280FB1C08 && CFEqual(qword_280FB1C08, @"airplay"))
        {
          if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }
        }

        else
        {
LABEL_334:
          if (APSGetFBOPropertyInt64())
          {
            if (gLogCategory_APEndpoint > 40 || gLogCategory_APEndpoint == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_153;
            }

            goto LABEL_149;
          }
        }

        if (v53)
        {
          v56 = a2 == 16;
        }

        else
        {
          v56 = 1;
        }

        v57 = v123;
        if (v56)
        {
          v57 = 0;
        }

        v104 = v57;
        v58 = CMBaseObjectGetDerivedStorage();
        if (v52)
        {
          if (FigCFEqual())
          {
            v59 = 9;
          }

          else
          {
            v59 = 7;
          }

          v20 = v111;
        }

        else
        {
          v20 = v111;
          if (v109)
          {
            v59 = 8;
          }

          else
          {
            v60 = v58;
            if (a2 == 16)
            {
              if (*(v58 + 49))
              {
                v59 = 6;
              }

              else
              {
                v59 = 1;
              }
            }

            else
            {
              if (!FigCFEqual())
              {
                v62 = v32;
                v61 = v120;
                if (*(v60 + 241))
                {
                  v11 = v108;
                  if (endpoint_isInLocalClusterOfStaticLeader())
                  {
                    v59 = 3;
                  }

                  else if (endpoint_isInLocalStereoPair())
                  {
                    v59 = 11;
                  }

                  else
                  {
                    v59 = 2;
                  }
                }

                else
                {
                  v59 = 0;
                  v11 = v108;
                }

                goto LABEL_180;
              }

              v59 = 4;
            }
          }

          v11 = v108;
        }

        v62 = v32;
        v61 = v120;
LABEL_180:
        v63 = v106;
        if (v106 == 2)
        {
          v112 = v59;
          v64 = APEndpointDescriptionGetCMBaseObject(*(v54 + 40));
          v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v65)
          {
            v19 = -12782;
            goto LABEL_209;
          }

          v66 = v65(v64, @"ClusterUUID", v120, &aBlock);
          if (v66)
          {
            v19 = v66;
            goto LABEL_209;
          }

          v67 = aBlock;
          v62 = v119;
          v61 = v120;
          v63 = 2;
          v59 = v112;
        }

        else
        {
          v67 = 0;
        }

        v68 = APSenderSessionAirPlayCreate(v33, v61, *(v54 + 440), *(v54 + 40), v105, v59, v63, *(v54 + 16), a2 != 16, SBYTE4(v110), v110, v107, v104, v67, SBYTE4(v109), v62, v118, v117, v142);
        if (v68)
        {
          v19 = v68;
          goto LABEL_209;
        }

        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        v69 = v142[0];
        v70 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (v70)
        {
          v70(v69, a1, a1, endpoint_handleEventMessage, endpoint_handleEventMessageCreatingReply);
        }

LABEL_193:
        if (!*(v54 + 464))
        {
          goto LABEL_196;
        }

        APSenderSessionGetCMBaseObject(v142[0]);
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v71 = OUTLINED_FUNCTION_11_8();
          v73 = v72(v71);
          if (v73)
          {
            v19 = v73;
            goto LABEL_209;
          }

LABEL_196:
          if (APSSettingsGetInt64())
          {
            if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
            {
              OUTLINED_FUNCTION_2_0();
              LogPrintF();
            }

            v74 = APSenderSessionGetCMBaseObject(v142[0]);
            v75 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v75)
            {
              v19 = -12782;
              goto LABEL_209;
            }

            v76 = v75(v74, @"PublishEncryptionKeyDiagnosticMode", *MEMORY[0x277CBED28]);
            if (v76)
            {
              v19 = v76;
              goto LABEL_209;
            }
          }

          else if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          v19 = 0;
          a4 = v142[0];
          goto LABEL_217;
        }

        v19 = -12782;
LABEL_209:
        APSLogErrorAt();
        if (!v142[0])
        {
          a4 = 0;
          goto LABEL_218;
        }

        v77 = APSenderSessionGetCMBaseObject(v142[0]);
        if (v77)
        {
          v78 = v77;
          v79 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v79)
          {
            v79(v78);
          }
        }

        CFRelease(v142[0]);
        a4 = 0;
LABEL_217:
        v142[0] = 0;
LABEL_218:
        if (aBlock)
        {
          CFRelease(aBlock);
        }

        if (v19)
        {
          goto LABEL_307;
        }

        goto LABEL_221;
      }

      v19 = v50;
    }

    APSLogErrorAt();
    goto LABEL_319;
  }

  v46 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v46)
  {
    v32 = v46;
    FigCFDictionarySetBoolean();
    goto LABEL_110;
  }

  APSLogErrorAt();
  v117 = 0;
  v118 = 0;
  v119 = 0;
LABEL_328:
  v19 = -16721;
LABEL_244:
  if (a1)
  {
    v87 = CFRetain(a1);
  }

  else
  {
    v87 = 0;
  }

  v124[0] = v87;
  v88 = *(DerivedStorage + 440);
  if (v88)
  {
    v88 = CFRetain(v88);
  }

  v124[1] = v88;
  v131 = v19;
  if (a3)
  {
    v89 = CFRetain(a3);
  }

  else
  {
    v89 = 0;
  }

  v124[2] = a2;
  v124[3] = v121;
  v125 = 1;
  v90 = *(DerivedStorage + 128);
  v130[4] = v89;
  v128 = v90;
  v91 = *(DerivedStorage + 216);
  if (v91)
  {
    v91 = CFRetain(v91);
  }

  v127 = v91;
  v92 = *(DerivedStorage + 232);
  if (v92)
  {
    v92 = CFRetain(v92);
  }

  v129 = v92;
  v93 = *(DerivedStorage + 40);
  v94 = CFGetAllocator(a1);
  v95 = APEndpointDescriptionGetCMBaseObject(v93);
  v96 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v96)
  {
    v96(v95, @"TransportDevice", v94, v130);
  }

  v130[1] = APEndpointDescriptionCopyDebugString(*(DerivedStorage + 40));
  v97 = *(DerivedStorage + 176);
  if (v97)
  {
    v97 = CFRetain(v97);
  }

  v130[2] = v97;
  v98 = *(DerivedStorage + 184);
  if (v98)
  {
    v98 = CFRetain(v98);
  }

  v130[3] = v98;
  v99 = cf;
  if (cf)
  {
    v99 = CFRetain(cf);
  }

  v130[5] = v99;
  v100 = v113;
  if (v113)
  {
    v100 = CFRetain(v113);
  }

  v134 = *(DerivedStorage + 274);
  v130[6] = v100;
  v130[7] = v115;
  v130[8] = v116;
  v101 = Value;
  if (Value)
  {
    v101 = CFRetain(Value);
  }

  v132 = v101;
  v126 = *(DerivedStorage + 242);
  v102 = *(DerivedStorage + 280);
  if (v102)
  {
    v102 = CFRetain(v102);
  }

  v133 = v102;
  if (*(DerivedStorage + 24) && v130[0])
  {
    APBrowserControllerRegisterEndpointActivating();
  }

  OUTLINED_FUNCTION_7_13();
  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  if (a4)
  {
    CFRelease(a4);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (v135)
  {
    CFRelease(v135);
  }

  if (v123)
  {
    CFRelease(v123);
  }

  if (v118)
  {
    CFRelease(v118);
  }

  if (v117)
  {
    CFRelease(v117);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

uint64_t endpoint_createMetadataSourceAndCommandSinkIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  if (!a2 && a3)
  {
    v7 = DerivedStorage;
    v8 = CMBaseObjectGetDerivedStorage();
    if (APSMultiPrimariesEnabled())
    {
      if (!*(v8 + 192))
      {
        if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v6 = 4294949690;
        goto LABEL_38;
      }

      v9 = OUTLINED_FUNCTION_45_0();
      v12 = APMediaRemoteCommandSinkCreateWithRoutingContextUUID(v9, v10, v11);
      if (v12)
      {
        v6 = v12;
LABEL_29:
        APSLogErrorAt();
LABEL_38:
        APSLogErrorAt();
        return v6;
      }
    }

    else
    {
      v13 = OUTLINED_FUNCTION_45_0();
      v16 = APMediaRemoteCommandSinkCreateWithNowPlayingAppPID(v13, v14, v15);
      if (v16)
      {
        v6 = v16;
        goto LABEL_29;
      }
    }

    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    *(v7 + 176) = 0;
    if (a3)
    {
      return 0;
    }

    else
    {
      v17 = CMBaseObjectGetDerivedStorage();
      if (APSMultiPrimariesEnabled())
      {
        if (!*(v17 + 192))
        {
          if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v6 = 4294949690;
          goto LABEL_38;
        }

        v18 = OUTLINED_FUNCTION_45_0();
        v21 = APMetadataSourceCreateWithRoutingContextUUID(v18, v19, v20);
        if (v21)
        {
          v6 = v21;
          goto LABEL_29;
        }
      }

      else
      {
        v22 = OUTLINED_FUNCTION_45_0();
        v25 = APMetadataSourceCreateWithNowPlayingAppPID(v22, v23, v24);
        if (v25)
        {
          v6 = v25;
          goto LABEL_29;
        }
      }

      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      v6 = 0;
      *(v7 + 184) = 0;
    }
  }

  return v6;
}

uint64_t endpoint_isInLocalStereoPair()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 96) != 7)
  {
    return 0;
  }

  v1 = *(DerivedStorage + 88);
  if (v1)
  {
    return CFBooleanGetValue(v1);
  }

  OUTLINED_FUNCTION_9_5();
  APSCopyTightSyncInfo();
  return 0;
}

uint64_t endpoint_handleHTSecondaryNonPersistentSessionStartedEvent()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 243))
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v1 = *(DerivedStorage + 244);
  FigSimpleMutexUnlock();
  if (v1 != 2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v3);
    return 0;
  }

  APSLogErrorAt();
  return 4294950575;
}

uint64_t endpoint_handleUpdateMC2UCStatus()
{
  updated = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v10 = 0;
  cf = 0;
  v1 = OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_14_10();
  if (FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetInt32IfPresent())
  {
    v2 = OUTLINED_FUNCTION_47_0();
    FigSimpleMutexLock();
    v3 = *(DerivedStorage + 216);
    if (v3 && (CMBaseObject = APSenderSessionGetCMBaseObject(v3), (v5 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v5(CMBaseObject, @"MC2UCToken", 0, &cf), cf))
    {
      FigSimpleMutexUnlock();
      Shared = APMulticastProbeSenderGetShared();
      updated = APMulticastProbeSenderUpdateMC2UC(Shared, cf, v1, v10, v9, v2);
      if (updated)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return updated;
}

uint64_t endpoint_handleSenderSessionStarted(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (gLogCategory_APEndpoint <= 50)
  {
    if (gLogCategory_APEndpoint != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_2_0();
      result = LogPrintF();
    }
  }

  if (!*(v4 + 120))
  {
    FigSimpleMutexLock();
    if (APSGetFBOPropertyInt64())
    {
      endpointdelegate_sendCurrentVolumeToReceiver(a2);
    }

    CMBaseObjectGetDerivedStorage();

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t apEndpoint_SendCommand(uint64_t a1, const void *a2, const void *a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
    {
      APSVolumeConvertDBToSliderValue();
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    if (!*(DerivedStorage + 48) && (*(DerivedStorage + 532) & 0xF) != 0)
    {
      APSVolumeConvertDBToSliderValue();
      endpointdelegate_setVolumeSliderInternal(FigEndpoint, 1, 1, 1, v7);
    }

    v8 = 0;
  }

  else
  {
    v8 = apEndpoint_sendCommandInternal(FigEndpoint, a2, a3);
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t endpoint_updateUGLRCServerIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  v8 = *(CMBaseObjectGetDerivedStorage() + 624);
  if (v8 && ((*(v8 + 16))(v8, a1, a3, a4, &cf), a4))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
    {
      FigCFDictionaryGetValue();
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    v10 = cf;
    CMBaseObject = APSenderSessionGetCMBaseObject(a2);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v12)
    {
      v9 = 4294954514;
LABEL_12:
      APSLogErrorAt();
      goto LABEL_13;
    }

    v9 = v12(CMBaseObject, @"RCServerInfo", v10);
    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

BOOL endpoint_isMediaPresentationModeAvailable()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 472) && !APSGetFBOPropertyInt64())
  {
    APSGetFBOPropertyInt64();
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  return IntWithDefault != 0;
}

BOOL endpoint_isAudioTimelineEstablished()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 160);
  if (!v1)
  {
    goto LABEL_7;
  }

  if (!CFDictionaryGetValue(v1, *MEMORY[0x277CC1960]) || !APSGetFBOPropertyInt64())
  {
    if (CFDictionaryGetValue(*(DerivedStorage + 160), *MEMORY[0x277CC1968]))
    {
      v2 = APSGetFBOPropertyInt64() != 0;
      goto LABEL_8;
    }

LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  v2 = 1;
LABEL_8:
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t endpoint_getCurrentRTPTime@<X0>(uint64_t a1@<X8>)
{
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x277CC0898];
  *a1 = *MEMORY[0x277CC0898];
  *(a1 + 16) = *(v3 + 16);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 144) == 2)
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 160), *MEMORY[0x277CC1960]);
    endpoint_getCurrentRTPTimeFromStream(Value, &v7, a1);
    if (!*a1)
    {
      v6 = CFDictionaryGetValue(*(DerivedStorage + 160), *MEMORY[0x277CC1968]);
      endpoint_getCurrentRTPTimeFromStream(v6, &v7, a1);
    }
  }

  return FigSimpleMutexUnlock();
}

void endpoint_getCurrentRTPTimeFromStream(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x277CC0898];
  *a3 = *MEMORY[0x277CC0898];
  *(a3 + 16) = *(v5 + 16);
  if (!a1)
  {
    goto LABEL_10;
  }

  FigEndpointStreamGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v9 = -12782;
LABEL_6:
    APSLogErrorAt();
    goto LABEL_7;
  }

  v6 = OUTLINED_FUNCTION_11_8();
  v8 = v7(v6);
  if (v8)
  {
    v9 = v8;
    goto LABEL_6;
  }

LABEL_10:
  v9 = 0;
LABEL_7:
  if (a2)
  {
    *a2 = v9;
  }
}

CFMutableDictionaryRef endpoint_copyClusterInfo()
{
  v7 = 0;
  v5 = 0;
  cf = 0;
  v3 = 0;
  v4 = 0;
  Mutable = *(CMBaseObjectGetDerivedStorage() + 40);
  if (!Mutable)
  {
    goto LABEL_18;
  }

  v1 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v1 || (v1(Mutable, &v7, &cf, &v5, 0, &v4, &v3, 0), !v7))
  {
    Mutable = 0;
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  else
  {
LABEL_18:
    APSLogErrorAt();
  }

  if (v7)
  {
    CFRelease(v7);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t endpoint_handleStreamFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Int64 = -71850;
  CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    Int64 = CFDictionaryGetInt64();
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  FigSimpleMutexLock();
  endpoint_updateStatus(a2, Int64, 1);
  return FigSimpleMutexUnlock();
}

void endpoint_suspendAndDissociateStreamsDictionaryEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    OUTLINED_FUNCTION_9_5();
    v9(v5, v6, v7, v8);
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v10)
  {
    v10(a2);
  }

  v12 = *(a3 + 40);
  v11 = *(a3 + 48);
  v15 = 0;
  if (v11)
  {
    if (v12)
    {
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v14(CMBaseObject, @"RTCStats", *MEMORY[0x277CBECE8], &v15);
        if (v15)
        {
          FigCFArrayApplyFunction();
          if (v15)
          {
            CFRelease(v15);
          }
        }
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void endpoint_invalidatePlaybackSession()
{
  OUTLINED_FUNCTION_36_1();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject();
  if (CMBaseObject)
  {
    v3 = CMBaseObject;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v4)
    {
      v4(v3);
    }
  }

  CMBaseObjectGetDerivedStorage();
  theDict = 0;
  if (v0)
  {
    if (v1 && (v5 = *MEMORY[0x277CBECE8], (MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v1)) != 0))
    {
      v7 = MutableCopy;
      v8 = FigEndpointPlaybackSessionGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(v8, @"RTCStats", v5, &theDict);
        if (theDict)
        {
          if (CFDictionaryContainsKey(theDict, @"activateToStartMs"))
          {
            if (CFDictionaryMergeDictionary())
            {
              APSLogErrorAt();
            }

            else
            {
              CFDictionarySetValue(v7, @"sessionType", @"Playback");
              APSRTCReportingAgentSendEvent();
              if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
              {
                OUTLINED_FUNCTION_2_0();
                LogPrintF();
              }
            }
          }
        }
      }

      CFRelease(v7);
      if (theDict)
      {
        CFRelease(theDict);
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void endpoint_reportStreamMetricsArrayIterator(const __CFDictionary *a1, uint64_t a2)
{
  if (a2 && *a2 && a1 && *(a2 + 8))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *a2);
    if (MutableCopy)
    {
      v4 = MutableCopy;
      if (CFDictionaryMergeDictionary() || !CFDictionaryGetValue(a1, @"sessionType"))
      {
        APSLogErrorAt();
      }

      else
      {
        if (FigCFEqual())
        {
          APSRTCReportingAgentSendEvent();
        }

        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }
      }

      CFRelease(v4);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

uint64_t endpoint_logTransportDiscoveryDurationIfEventPresent()
{
  result = APSEventRecorderGetEventTimeRecursive();
  if (result)
  {
    APBrowserGetStartEventForBrowserDeviceEvent();
    OUTLINED_FUNCTION_11_8();
    result = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
    if (gLogCategory_APEndpoint <= 40)
    {
      OUTLINED_FUNCTION_30_2();
      if (!v1)
      {
        return OUTLINED_FUNCTION_6();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return OUTLINED_FUNCTION_6();
      }
    }
  }

  return result;
}

uint64_t endpoint_handlePlaybackSessionInvalidated(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  FigSimpleMutexLock();
  endpoint_unsubscribePlaybackSession(a4, a2);
  endpoint_invalidatePlaybackSession();
  v7 = *(DerivedStorage + 304);
  if (v7)
  {
    CFSetRemoveValue(v7, a4);
  }

  endpoint_updateCurrentVolumeControlType();
  endpoint_updateIsVolumeAndMuteControlSupported();
  endpoint_updateVideoPlaybackIsActive(a2);

  return FigSimpleMutexUnlock();
}

void endpoint_updateFeaturesInternalWithContext(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v44 = *(a1 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(v45, 0xA8uLL);
  v6 = *(DerivedStorage + 136);
  OUTLINED_FUNCTION_41_1();
  if (v7 ^ v8 | v10)
  {
    OUTLINED_FUNCTION_24_4();
    if (!v10 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }

  if (*(DerivedStorage + 48))
  {
    APSLogErrorAt();
LABEL_112:
    v13 = 0;
    v25 = -6705;
    goto LABEL_65;
  }

  if (*(DerivedStorage + 144) != 2)
  {
    APSLogErrorAt();
    v13 = 0;
    v25 = -6709;
    goto LABEL_65;
  }

  v9 = v6 | v3;
  v10 = (v6 | v3) == v6 && v9 == v3;
  if (v10)
  {
    v13 = 0;
    v25 = 0;
    goto LABEL_65;
  }

  if (v9 != v6 && v9 != v3)
  {
    goto LABEL_112;
  }

  if (!v4)
  {
    v13 = 0;
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(v4, @"ParentContextID");
  if (!Value)
  {
    Value = CFDictionaryGetValue(v4, *MEMORY[0x277CC09F8]);
  }

  if (*(CMBaseObjectGetDerivedStorage() + 48) || !APSGetFBOPropertyInt64() || !endpoint_isInLocalCluster() || !APSIsMemberOfPersistentGroup())
  {
    v13 = 0;
    if (Value)
    {
      goto LABEL_32;
    }

LABEL_27:
    OUTLINED_FUNCTION_40_1();
    if (v7 ^ v8 | v10 && (v14 != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_4_1();
    }

    v16 = *(DerivedStorage + 152);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 152) = 0;
    }

    if (!*(DerivedStorage + 120))
    {
      if (!v4)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

LABEL_115:
    APSLogErrorAt();
    v25 = -16723;
    goto LABEL_65;
  }

  v13 = CFDictionaryGetValue(v4, @"GroupID");
  if (!Value)
  {
    goto LABEL_27;
  }

LABEL_32:
  if (!*(DerivedStorage + 152))
  {
    *(DerivedStorage + 152) = Value;
    CFRetain(Value);
    OUTLINED_FUNCTION_40_1();
    if (v7 ^ v8 | v10)
    {
      if (v15 != -1 || OUTLINED_FUNCTION_10())
      {
        OUTLINED_FUNCTION_4_1();
      }
    }
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpoint <= 90)
    {
      OUTLINED_FUNCTION_24_4();
      if (!v10 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      v25 = -16726;
      goto LABEL_65;
    }

LABEL_118:
    v25 = -16726;
    goto LABEL_65;
  }

  if (*(DerivedStorage + 120))
  {
    goto LABEL_115;
  }

LABEL_46:
  v17 = CFGetTypeID(v4);
  if (v17 != CFDictionaryGetTypeID())
  {
    APSLogErrorAt();
    v25 = -16720;
    goto LABEL_65;
  }

LABEL_47:
  if (!*(DerivedStorage + 216))
  {
    APSLogErrorAt();
    v25 = -17605;
    goto LABEL_65;
  }

  if (!*(DerivedStorage + 40))
  {
    APSLogErrorAt();
    goto LABEL_118;
  }

  if (v9 != v6)
  {
    if (v4)
    {
      ActivationOptions = endpoint_readActivationOptions(v4, DerivedStorage + 128);
      if (ActivationOptions)
      {
        goto LABEL_110;
      }

      v19 = FigCFEqual();
    }

    else
    {
      v19 = 0;
    }

    if (endpoint_shouldOnlyBeActivatedAsPartOfCluster() && !*(DerivedStorage + 242))
    {
      APSLogErrorAt();
      v25 = -72277;
      goto LABEL_65;
    }

    ActivationOptions = endpoint_ensureSharedContextCreated(v2, v3, v4, v19);
    if (!ActivationOptions)
    {
      MetadataSourceAndCommandSinkIfNeeded = endpoint_createMetadataSourceAndCommandSinkIfNeeded(v2, v6, v3);
      if (MetadataSourceAndCommandSinkIfNeeded)
      {
        v25 = MetadataSourceAndCommandSinkIfNeeded;
        APSLogErrorAt();
        goto LABEL_65;
      }

      goto LABEL_58;
    }

LABEL_110:
    v25 = ActivationOptions;
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_41_1();
  if (v7 ^ v8 | v10)
  {
    OUTLINED_FUNCTION_24_4();
    if (!v10 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }

  endpoint_partiallyResetActivationState(DerivedStorage + 128);
  v41 = endpoint_isInLocalStereoPair();
  if (!v3 && v41)
  {
    endpoint_stopMediaRemoteAndMetadataServices(v2, *(DerivedStorage + 184));
    v42 = *(DerivedStorage + 184);
    if (v42)
    {
      CFRelease(v42);
      *(DerivedStorage + 184) = 0;
    }

    v43 = *(DerivedStorage + 176);
    if (v43)
    {
      CFRelease(v43);
      *(DerivedStorage + 176) = 0;
    }
  }

LABEL_58:
  if ((v3 & 4) == (v6 & 4))
  {
    goto LABEL_64;
  }

  v21 = *(DerivedStorage + 304);
  if ((v3 & 4) == 0)
  {
    if (v21)
    {
      OUTLINED_FUNCTION_5_19();
      CFSetApplyFunction(v22, v23, v2);
    }

    goto LABEL_64;
  }

  if (v21 || (Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]), (*(DerivedStorage + 304) = Mutable) != 0))
  {
LABEL_64:
    v25 = 0;
    goto LABEL_65;
  }

  APSLogErrorAt();
  v25 = -16721;
LABEL_65:
  if (v2)
  {
    v26 = CFRetain(v2);
  }

  else
  {
    v26 = 0;
  }

  v45[0] = v26;
  v27 = *(DerivedStorage + 440);
  if (v27)
  {
    v27 = CFRetain(v27);
  }

  v45[1] = v27;
  v52 = v25;
  v28 = *(DerivedStorage + 280);
  if (v28)
  {
    v28 = CFRetain(v28);
  }

  v53 = v28;
  if (v4)
  {
    v29 = CFRetain(v4);
  }

  else
  {
    v29 = 0;
  }

  v45[2] = v3;
  v45[3] = v6;
  v46 = 0;
  v30 = *(DerivedStorage + 128);
  v50[4] = v29;
  v48 = v30;
  v31 = *(DerivedStorage + 216);
  if (v31)
  {
    v31 = CFRetain(v31);
  }

  v47 = v31;
  v32 = *(DerivedStorage + 232);
  if (v32)
  {
    v32 = CFRetain(v32);
  }

  v49 = v32;
  v33 = *(DerivedStorage + 40);
  v34 = CFGetAllocator(v2);
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(v33);
  v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v36)
  {
    v36(CMBaseObject, @"TransportDevice", v34, v50);
  }

  v50[1] = APEndpointDescriptionCopyDebugString(*(DerivedStorage + 40));
  v37 = *(DerivedStorage + 176);
  if (v37)
  {
    v37 = CFRetain(v37);
  }

  v50[2] = v37;
  v38 = *(DerivedStorage + 184);
  if (v38)
  {
    v38 = CFRetain(v38);
  }

  v50[3] = v38;
  if (v13)
  {
    v39 = CFRetain(v13);
  }

  else
  {
    v39 = 0;
  }

  v50[5] = v39;
  v51 = v44;
  OUTLINED_FUNCTION_7_13();
  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v40 = *(a1 + 16);
  if (v40)
  {
    CFRelease(v40);
  }
}

const void *endpoint_copyPropertyFromEndpointDescription_cold_4(uint64_t a1, _DWORD *a2, void *a3)
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

uint64_t endpoint_copyPropertyFromEndpointDescription_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_10_11(a1);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v2 = OUTLINED_FUNCTION_11_8();
    result = v3(v2);
  }

  else
  {
    result = 4294954514;
  }

  *v1 = result;
  return result;
}

uint64_t endpoint_copyPropertyFromEndpointDescription_cold_8(uint64_t a1)
{
  OUTLINED_FUNCTION_10_11(a1);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v2 = OUTLINED_FUNCTION_11_8();
    result = v3(v2);
  }

  else
  {
    result = 4294954514;
  }

  *v1 = result;
  return result;
}

CFTypeRef endpoint_copyPropertyFromEndpointDescription_cold_9(uint64_t a1, void *a2)
{
  v3 = APSGetFBOPropertyInt64();
  v4 = MEMORY[0x277CBED28];
  if (!v3)
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

CFTypeRef endpoint_copyPropertyFromEndpointDescription_cold_10(uint64_t a1, void *a2)
{
  isThirdPartyTVFamily = endpoint_isThirdPartyTVFamily();
  v4 = MEMORY[0x277CBED28];
  if (!isThirdPartyTVFamily)
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

CFTypeRef endpoint_copyPropertyFromEndpointDescription_cold_11(uint64_t a1, void *a2)
{
  endpoint_getBooleanFromExternalPlaybackCapabilitiesIfPresent();
  result = CFRetain(*MEMORY[0x277CBED10]);
  *a2 = result;
  return result;
}

CFTypeRef endpoint_copyPropertyFromEndpointDescription_cold_12(uint64_t a1, void *a2)
{
  v3 = APSGetFBOPropertyInt64();
  v4 = MEMORY[0x277CBED10];
  if (!v3)
  {
    v4 = MEMORY[0x277CBED28];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

void endpoint_copyUsesExternalPlaybackByDefault_cold_1(uint64_t a1, _DWORD *a2)
{
  if (gLogCategory_APEndpoint <= 30)
  {
    OUTLINED_FUNCTION_30_2();
    if (!v3 || OUTLINED_FUNCTION_10())
    {
      OUTLINED_FUNCTION_4_1();
    }
  }

  *a2 = -17606;
}

uint64_t endpoint_copyExternalPlaybackCompetingStreams_cold_1()
{
  if (gLogCategory_APEndpoint <= 30)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return OUTLINED_FUNCTION_4_1();
    }

    result = OUTLINED_FUNCTION_10();
    if (result)
    {
      return OUTLINED_FUNCTION_4_1();
    }
  }

  return result;
}

uint64_t endpointdelegate_setVolumeSliderInternal_cold_2()
{
  APSVolumeConvertSliderValueToDB();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t endpointdelegate_setVolumeSliderInternal_cold_3()
{
  APSVolumeConvertSliderValueToDB();
  APSVolumeConvertSliderValueToDB();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t endpointdelegate_setVolumeSliderInternal_cold_5()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpointdelegate_setIsMuted_cold_1()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpointdelegate_sendCurrentVolumeToReceiver_cold_1()
{
  if (gLogCategory_APEndpoint <= 50)
  {
    if (gLogCategory_APEndpoint != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      OUTLINED_FUNCTION_2_0();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t endpointdelegate_sendCurrentVolumeToReceiver_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_42_1(a1);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t endpointdelegate_sendSetVolumeMessageIfNeeded_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_42_1(a1);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void endpointdelegate_sendSetVolumeMessageIfNeeded_cold_3()
{
  if (gLogCategory_APEndpoint <= 30)
  {
    OUTLINED_FUNCTION_44_0();
    if (!v0 || OUTLINED_FUNCTION_10())
    {
      OUTLINED_FUNCTION_4_1();
    }
  }
}

void endpointdelegate_sendSetVolumeMessageIfNeeded_cold_4()
{
  if (gLogCategory_APEndpoint <= 50)
  {
    OUTLINED_FUNCTION_44_0();
    if (!v0 || OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }
  }
}

uint64_t endpointdelegate_sendSetVolumeMessageIfNeeded_cold_5()
{
  if (gLogCategory_APEndpoint <= 50)
  {
    if (gLogCategory_APEndpoint != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      OUTLINED_FUNCTION_2_0();
      return LogPrintF();
    }
  }

  return result;
}

void apEndpoint_sendCommand_cold_5(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void apEndpoint_sendCommand_cold_8()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_30_2();
    if (!v0 || OUTLINED_FUNCTION_4_3())
    {
      OUTLINED_FUNCTION_4_0();
    }
  }

  OUTLINED_FUNCTION_38();
}

uint64_t apEndpoint_sendCommand_cold_10()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t endpoint_sendChangeRelativeVolumeMessage_cold_1()
{
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void endpoint_sendChangeRelativeVolumeMessage_cold_4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_APEndpoint <= 50)
  {
    OUTLINED_FUNCTION_26_4();
    if (!v4 || OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }
  }

  *a3 = -17606;
}

void endpoint_sendChangeRelativeVolumeMessage_cold_5(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_APEndpoint <= 50)
  {
    OUTLINED_FUNCTION_26_4();
    if (!v4 || OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }
  }

  *a3 = 0;
}

void endpoint_activateInternal_cold_13(uint64_t a1)
{
  APMetadataSourceStart(a1);
  if (gLogCategory_APEndpoint < 51 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }
}

uint64_t endpoint_activateInternal_cold_15()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void endpoint_activateInternal_cold_16()
{
  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4_3()))
  {
    OUTLINED_FUNCTION_4_0();
  }

  OUTLINED_FUNCTION_6_0();
}

void endpoint_activateInternal_cold_18(uint64_t a1, void *a2)
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_30_2();
    if (!v3 || OUTLINED_FUNCTION_4_3())
    {
      OUTLINED_FUNCTION_4_0();
    }
  }

  *a2 = 0;
}

uint64_t endpoint_handleAuthorizationRequired_cold_10()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpoint_handleAuthorizationRequired_cold_11()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpoint_handleEventMessageCreatingReply_cold_16(int a1)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_3_11();
  }

  result = OUTLINED_FUNCTION_33_0();
  if (result)
  {
    return OUTLINED_FUNCTION_3_11();
  }

  return result;
}

void endpoint_createCommChannelInternal_cold_4()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_23_7();
    if (!v0 || OUTLINED_FUNCTION_4_3())
    {
      OUTLINED_FUNCTION_4_0();
    }
  }

  OUTLINED_FUNCTION_38();
}

void endpoint_createCommChannelInternal_cold_6()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_23_7();
    if (!v0 || OUTLINED_FUNCTION_4_3())
    {
      OUTLINED_FUNCTION_4_0();
    }
  }

  OUTLINED_FUNCTION_6_0();
}

void endpoint_createCommChannelInternal_cold_12()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_23_7();
    if (!v0 || OUTLINED_FUNCTION_4_3())
    {
      OUTLINED_FUNCTION_4_0();
    }
  }

  OUTLINED_FUNCTION_38();
}

uint64_t endpoint_handleRCSClosed_cold_1()
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpoint <= 90)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return OUTLINED_FUNCTION_4_0();
    }

    result = OUTLINED_FUNCTION_4_3();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

void __apEndpoint_handleInvalidateIncomingRCSCommand_block_invoke_cold_1()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_26_4();
    if (!v0 || OUTLINED_FUNCTION_4_3())
    {
      OUTLINED_FUNCTION_4_0();
    }
  }
}

uint64_t endpoint_handleSimulateEndpointFailed_cold_1(const void *a1, int *a2)
{
  v4 = -72278;
  result = CFEqual(a1, @"SystemRequestToStop");
  if (!result)
  {
    result = CFEqual(a1, @"TightSyncBuddyRequestToStop");
    if (result)
    {
      v4 = -72274;
    }

    else
    {
      result = CFEqual(a1, @"ReceiverSentPreventPlayback");
      if (result)
      {
        v4 = -17603;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  *a2 = v4;
  return result;
}

uint64_t endpoint_handleSimulateEndpointFailed_cold_2(uint64_t a1, const void *a2, int a3)
{
  FigSimpleMutexLock();
  endpoint_updateStatus(a2, a3, *(a1 + 144) == 2);

  return FigSimpleMutexUnlock();
}

uint64_t endpointdelegate_getInitialVolumeDBAndIsMuted_cold_1()
{
  APSVolumeConvertDBToSliderValue();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t endpoint_updateScreenRelatedConfiguration_cold_4()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return OUTLINED_FUNCTION_4_0();
    }

    result = OUTLINED_FUNCTION_4_3();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t endpoint_updateVideoPlaybackIsActive_cold_2()
{
  APSLogErrorAt();
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void endpoint_deactivateInternal_cold_6()
{
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }
}

void endpoint_deactivateInternal_cold_7()
{
  OUTLINED_FUNCTION_36_1();
  CFDictionarySetDouble();
  CFDictionarySetInt64();
  *v2 = CFRetain(*v1);
  *(v2 + 24) = CFRetain(@"fadeAudio");
  *(v2 + 32) = CFRetain(v0);
  v4 = *v3;
  if (*v3)
  {
    v4 = CFRetain(v4);
  }

  *(v2 + 16) = v4;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  apEndpoint_sendCommand(v2);
  usleep(1000000 * *(v1 + 80));
  CFRelease(v0);
}

uint64_t endpoint_deactivateInternal_cold_9(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  result = endpoint_updateUGLRCServerIfNeeded(*a1, *a2, 0, 0);
  if (result)
  {
    if (gLogCategory_APEndpoint <= 60)
    {
      if (gLogCategory_APEndpoint != -1 || (result = OUTLINED_FUNCTION_33_0(), result))
      {
        result = OUTLINED_FUNCTION_3_11();
      }
    }
  }

  *a3 = 0;
  return result;
}

uint64_t endpoint_createAudioHALDevices_cold_1()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t endpoint_setupAudioStream_cold_3()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpoint_setupAudioStream_cold_7()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpoint_setupScreenStream_cold_5(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t endpoint_handleStreamBadgingFormatInfoChanged_cold_1(int a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpoint <= 90)
  {
    if (gLogCategory_APEndpoint != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      result = OUTLINED_FUNCTION_4_0();
    }
  }

  *a4 = a1;
  return result;
}

uint64_t endpoint_handleStreamBadgingFormatInfoChanged_cold_4()
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpoint <= 90)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return OUTLINED_FUNCTION_4_0();
    }

    result = OUTLINED_FUNCTION_4_3();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

void apEndpoint_AcquireAndCopyResource_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_APEndpoint <= 60)
  {
    OUTLINED_FUNCTION_30_2();
    if (!v4 || OUTLINED_FUNCTION_33_0())
    {
      OUTLINED_FUNCTION_3_11();
    }
  }

  *a3 = -16725;
}

void screenstream_teardownTransportStream()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (!v1)
  {
LABEL_48:
    OUTLINED_FUNCTION_30_3();
    return;
  }

  v2 = DerivedStorage;
  if (gLogCategory_APEndpointStreamScreen <= 40)
  {
    if (gLogCategory_APEndpointStreamScreen != -1 || (v3 = OUTLINED_FUNCTION_13_0(), v1 = *(v2 + 136), v3))
    {
      OUTLINED_FUNCTION_6();
      v1 = *(v2 + 136);
    }
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v4)
  {
    v4(v1, 0, 0);
  }

  v5 = MEMORY[0x277CBECE8];
  if (!*(v2 + 48))
  {
    v7 = 0;
LABEL_19:
    v14 = *(v2 + 136);
    if (v14)
    {
      CFRelease(v14);
      *(v2 + 136) = 0;
    }

    v15 = (v2 + 528);
    if (*(v2 + 977) && *(v2 + 1128))
    {
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      *&v27 = __sbpd_logHistograms_block_invoke;
      *(&v27 + 1) = &__block_descriptor_tmp_54_0;
      v28 = v2 + 528;
      CFDictionaryApplyBlock();
    }

    v16 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    mach_absolute_time();
    UpTicksToMilliseconds();
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"sessionType", @"Screen");
    if (*(v16 + 1128))
    {
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      *&v27 = __sbpd_reportHistograms_block_invoke;
      *(&v27 + 1) = &__block_descriptor_tmp_66_0;
      v28 = Mutable;
      CFDictionaryApplyBlock();
    }

    if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    OUTLINED_FUNCTION_1_17();
    OUTLINED_FUNCTION_27_1();
    *&v27 = __screenstream_collectRTCStats_block_invoke;
    *(&v27 + 1) = &__block_descriptor_tmp_65_1;
    v28 = v16;
    v29 = Mutable;
    dispatch_sync(v18, &block);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v19 = *(v2 + 968);
    block = *(v2 + 952);
    v27 = v19;
    v20 = *(v2 + 936);
    if (v20)
    {
      CFRelease(v20);
      *(v2 + 936) = 0;
    }

    v21 = *(v2 + 984);
    if (v21)
    {
      CFRelease(v21);
      *(v2 + 984) = 0;
    }

    if (*v15)
    {
      CFRelease(*v15);
      *v15 = 0;
    }

    v22 = *(v2 + 536);
    if (v22)
    {
      CFRelease(v22);
      *(v2 + 536) = 0;
    }

    v23 = *(v2 + 1128);
    if (v23)
    {
      CFRelease(v23);
    }

    bzero((v2 + 528), 0x270uLL);
    v24 = v27;
    *(v2 + 952) = block;
    *(v2 + 968) = v24;
    if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0()))
    {
      atomic_load((v2 + 1200));
      OUTLINED_FUNCTION_6();
    }

    if (v7)
    {
      CFRelease(v7);
    }

    goto LABEL_48;
  }

  if (!*(v2 + 394))
  {
    v7 = 0;
LABEL_14:
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v9 = CMBaseObject;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v10)
      {
        v10(v9);
      }
    }

    v11 = *(v2 + 48);
    v12 = *(v2 + 88);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v13)
    {
      v13(v11, v12, v7);
    }

    goto LABEL_19;
  }

  v6 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(v6, @"uuid", *(v2 + 312));
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_30_3();

  APSLogErrorAt();
}

void screenstream_dissociateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (!*(DerivedStorage + 24))
  {
    v3 = CMBaseObjectGetDerivedStorage();
    if (*(v3 + 24))
    {
      APSLogErrorAt();
    }

    else
    {
      v4 = v3;
      if (*(v3 + 25))
      {
        screenstream_cleanup(a1);
        *(v4 + 25) = 0;
        if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2();
        }
      }
    }

    *(DerivedStorage + 24) = 1;
    CFRetain(a1);
    v5 = *(DerivedStorage + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __screenstream_dissociateInternal_block_invoke;
    block[3] = &__block_descriptor_tmp_45_0;
    block[4] = a1;
    dispatch_async(v5, block);
  }
}

uint64_t screenstream_handleCommandSetRecordingState(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*(DerivedStorage + 24))
  {
    v7 = 4294950534;
    goto LABEL_14;
  }

  v4 = *(DerivedStorage + 160);
  if (!v4)
  {
    return 0;
  }

  if (a2)
  {
    v5 = MEMORY[0x277CBED28];
  }

  else
  {
    v5 = MEMORY[0x277CBED10];
  }

  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_14:
    APSLogErrorAt();
    return v7;
  }

  v7 = v6(v4, *MEMORY[0x277CD6620], *v5);
  if (v7)
  {
    goto LABEL_14;
  }

  return v7;
}

__CFDictionary *screenstream_createVirtualDisplayActivationOptions()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v75 = 0;
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = v1;
  v3 = *(v1 + 168);
  cf[0] = 0;
  v4 = MEMORY[0x277CD6770];
  v74 = 0;
  v5 = MEMORY[0x277CBECE8];
  v6 = MEMORY[0x277CD6790];
  if (v3)
  {
    goto LABEL_53;
  }

  if (!*(v1 + 394))
  {
    if (*(v1 + 410))
    {
      if (*(v1 + 385))
      {
        v7 = MEMORY[0x277CD6768];
      }

      else
      {
        v7 = MEMORY[0x277CD6788];
      }

      v3 = *v7;
      goto LABEL_45;
    }

    if (*(v1 + 383))
    {
      if (*(v1 + 385))
      {
        if (*(v1 + 368) == 1)
        {
          v8 = MEMORY[0x277CD6768];
        }

        else
        {
          v8 = MEMORY[0x277CD6770];
        }

        v3 = *v8;
        if (*v8)
        {
          goto LABEL_45;
        }
      }

      else if (*(v1 + 386))
      {
        v3 = *MEMORY[0x277CD6770];
        if (*MEMORY[0x277CD6770])
        {
          goto LABEL_45;
        }
      }
    }

    if ((*(v1 + 386) || *(v1 + 336) && APSHas4K60444SenderSupport()) && *(v2 + 1196) <= 0)
    {
      v3 = *v4;
      if (*v4)
      {
        goto LABEL_45;
      }
    }

    if (!*(v2 + 379))
    {
      goto LABEL_44;
    }

    v9 = *(v2 + 48);
    if (!v9)
    {
      goto LABEL_44;
    }

    CMBaseObject = APSenderSessionGetCMBaseObject(v9);
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v12 = *v5;
      v75 = v11(CMBaseObject, @"TransportControlStream", *v5, cf);
      if (!v75)
      {
        v13 = APSGetFBOPropertyInt64();
        if (!v75)
        {
          v3 = 0;
          if (v13 > 0x10 || ((1 << v13) & 0x10102) == 0)
          {
            goto LABEL_45;
          }

          v14 = FigTransportStreamGetCMBaseObject();
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v15)
          {
            v75 = v15(v14, *MEMORY[0x277CE5020], v12, &v74);
            if (!v75)
            {
              if (APSIsDirectLinkInterface())
              {
                OUTLINED_FUNCTION_13_10();
                if (v17 ^ v18 | v65 && (v16 != -1 || OUTLINED_FUNCTION_4()))
                {
                  OUTLINED_FUNCTION_2();
                }

                v3 = *v6;
                goto LABEL_45;
              }

              goto LABEL_44;
            }
          }

          else
          {
            v75 = -12782;
          }
        }
      }
    }

    else
    {
      v75 = -12782;
    }

    APSLogErrorAt();
LABEL_44:
    v3 = 0;
    goto LABEL_45;
  }

  if (!*(v1 + 395) || !FVDUtilsHEVCEncoderSupports4K60())
  {
    goto LABEL_44;
  }

  v3 = *MEMORY[0x277CD6780];
  *(v2 + 975) = 1;
LABEL_45:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (!v3)
  {
    v19 = MEMORY[0x277CD6778];
    if (!*(v2 + 394))
    {
      v19 = MEMORY[0x277CD6760];
    }

    v3 = *v19;
  }

LABEL_53:
  OUTLINED_FUNCTION_13_10();
  if (v17 ^ v18 | v65 && (v20 != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  *(v2 + 184) = v3;
  v21 = OUTLINED_FUNCTION_12_9();
  Mutable = CFDictionaryCreateMutable(v21, v22, v23, v24);
  *cf = *MEMORY[0x277CBF3A8];
  LODWORD(v74) = 0;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6610], v3);
  v26 = *MEMORY[0x277CBED10];
  if (*(DerivedStorage + 26))
  {
    v27 = *MEMORY[0x277CBED10];
  }

  else
  {
    v27 = *MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6608], v27);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6590], *(DerivedStorage + 40));
  v28 = OUTLINED_FUNCTION_17_6();
  CFDictionarySetValue(v28, v29, v30);
  OUTLINED_FUNCTION_32_4(v31, v32, @"AirPlay");
  if (APSIsAPValeriaScreenSender() && CFEqual(v3, *v6))
  {
    v33 = OUTLINED_FUNCTION_17_6();
    CFDictionarySetValue(v33, v34, v35);
  }

  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v36 = MEMORY[0x277CD6548];
  if (*(DerivedStorage + 394))
  {
    FigCFDictionarySetInt32();
    if (*(DerivedStorage + 396))
    {
      FigCFDictionarySetInt32();
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CD65F0], v26);
    CFDictionarySetValue(Mutable, *v36, @"CarPlayScreen");
    v37 = &unk_27CFF1000;
    if (*(DerivedStorage + 232) >= 1 && *(DerivedStorage + 240) >= 1)
    {
      if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
    }

LABEL_106:
    v50 = 0;
    goto LABEL_107;
  }

  v38 = *MEMORY[0x277CD6548];
  v39 = MEMORY[0x277CD65D0];
  if (!*(DerivedStorage + 410))
  {
    CFDictionarySetValue(Mutable, v38, @"AirPlayScreen");
    v37 = &unk_27CFF1000;
    if (CFEqual(v3, *MEMORY[0x277CD6770]) && *(DerivedStorage + 336) && APSHas4K60444SenderSupport() && *(DerivedStorage + 1196) <= 0)
    {
      OUTLINED_FUNCTION_13_10();
      if (v17 ^ v18 | v65 && (v52 != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      FigCFDictionarySetInt32();
    }

    if (*(DerivedStorage + 368) == 1)
    {
      APSScreenGetMediaPresentationParams();
      OUTLINED_FUNCTION_13_10();
      if (v17 ^ v18 | v65 && (v53 != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_28_2();
        OUTLINED_FUNCTION_2();
      }

      if (*(DerivedStorage + 385))
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD66E0], *(DerivedStorage + 320));
      }

      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (*(DerivedStorage + 384))
      {
        FigCFDictionarySetInt32();
      }

      FigCFDictionarySetInt32();
      if (*(DerivedStorage + 388) >= 1)
      {
        FigCFDictionarySetInt32();
      }
    }

    v54 = *(DerivedStorage + 328);
    if (v54)
    {
      CFDictionarySetValue(Mutable, *v39, v54);
    }

    goto LABEL_106;
  }

  CFDictionarySetValue(Mutable, v38, @"StevenoteAP");
  v40 = OUTLINED_FUNCTION_17_6();
  CFDictionarySetValue(v40, v41, v42);
  v43 = OUTLINED_FUNCTION_17_6();
  CFDictionarySetValue(v43, v44, v45);
  v46 = OUTLINED_FUNCTION_12_9();
  v50 = CFDictionaryCreateMutable(v46, v47, v48, v49);
  CFDictionarySetValue(v50, *MEMORY[0x277CD6520], @"nero");
  v51 = *(DerivedStorage + 328);
  if (v51)
  {
    CFDictionarySetValue(Mutable, *v39, v51);
  }

  v37 = &unk_27CFF1000;
  if (CFEqual(v3, *MEMORY[0x277CD6768]))
  {
    OUTLINED_FUNCTION_25_5();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetValue();
  }

  else
  {
    if (!FVDUtilsHEVCEncoderSupports44410())
    {
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_25_5();
  }

  FigCFDictionarySetInt32();
LABEL_107:
  v55 = *(DerivedStorage + 152);
  if (v55)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD6558], v55);
  }

  if (*(DerivedStorage + 192))
  {
    OUTLINED_FUNCTION_13_10();
    if (v17 ^ v18 | v65)
    {
      if (v57 != -1 || (v58 = OUTLINED_FUNCTION_4(), v56 = *(DerivedStorage + 192), v58))
      {
        OUTLINED_FUNCTION_2();
        v56 = *(DerivedStorage + 192);
      }
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CD6550], v56);
    OUTLINED_FUNCTION_5_20();
    v59 = FigCFDictionarySetInt();
    OUTLINED_FUNCTION_32_4(v59, v60, @"PerAppAirPlayDisplay");
  }

  if (*(DerivedStorage + 394))
  {
    OUTLINED_FUNCTION_5_20();
    v61 = FigCFDictionarySetInt();
    v63 = @"CarPlayAlternate";
    v64 = @"CarPlay";
    v65 = *(DerivedStorage + 88) == 110;
  }

  else
  {
    if (!*(DerivedStorage + 408))
    {
      goto LABEL_124;
    }

    v61 = FigCFDictionarySetInt();
    v63 = @"Stevenote";
    v64 = @"AirPlayDemo";
    v65 = *(DerivedStorage + 410) == 0;
  }

  if (v65)
  {
    v66 = v64;
  }

  else
  {
    v66 = v63;
  }

  OUTLINED_FUNCTION_32_4(v61, v62, v66);
LABEL_124:
  FigCFDictionarySetInt32();
  *(DerivedStorage + 960) = MillisecondsToUpTicks();
  if (v50)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD6580], v50);
    CFRelease(v50);
  }

  if (*(DerivedStorage + 176))
  {
    OUTLINED_FUNCTION_13_10();
    if (v17 ^ v18 | v65 && (v67 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    CFDictionaryApplyBlock();
  }

  v68 = *(DerivedStorage + 416);
  if (v68)
  {
    if (CFEqual(v68, @"tvout"))
    {
      FigCFDictionarySetInt();
LABEL_137:
      FigCFDictionarySetInt();
      return Mutable;
    }

    if (CFEqual(v68, @"mirroringonly"))
    {
      goto LABEL_137;
    }

    if (CFEqual(v68, @"seconddisplay"))
    {
      OUTLINED_FUNCTION_5_20();
      goto LABEL_137;
    }

    if (CFEqual(v68, @"continuity"))
    {
      OUTLINED_FUNCTION_5_20();
      v70 = FigCFDictionarySetInt();
      OUTLINED_FUNCTION_32_4(v70, v71, @"Continuity");
      return Mutable;
    }

    if (CFEqual(v68, @"airplay"))
    {
      goto LABEL_137;
    }

    v72 = v37[1002];
    if (v72 <= 40 && (v72 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return Mutable;
}

void screenstream_setIsHDR(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = *MEMORY[0x277CD6540];
  Value = CFDictionaryGetValue(v2, *MEMORY[0x277CD6540]);
  if (!Value)
  {
    goto LABEL_13;
  }

  v5 = Value;
  v6 = *MEMORY[0x277CD6530];
  if (!CFEqual(Value, *MEMORY[0x277CD6530]))
  {
    if (CFEqual(v5, *MEMORY[0x277CD6528]))
    {
      if (!*(a1 + 382))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(Mutable, v3, v6);
        v9 = *(a1 + 320);
        *(a1 + 320) = Mutable;
        if (Mutable)
        {
          CFRetain(Mutable);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        CFRelease(Mutable);
      }

      goto LABEL_4;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v7 = 1;
LABEL_5:
  *(a1 + 376) = v7;
}

void APEndpointStreamScreenCreate_cold_21()
{
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }
}

uint64_t sbpd_createConfigBBuf_cold_3(uint64_t a1, void *a2)
{
  APSLogErrorAt();
  free(a2);
  return APSLogErrorAt();
}

uint64_t screenstream_initDisplayInfo_cold_11(uint64_t a1, _DWORD *a2)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamScreen <= 90)
  {
    if (gLogCategory_APEndpointStreamScreen != -1 || (result = _LogCategory_Initialize(), result))
    {
      OUTLINED_FUNCTION_29_3();
      result = LogPrintF();
    }
  }

  *a2 = -16760;
  return result;
}

void session_cleanupPendingRequests(const void *a1)
{
  if (a1)
  {
    v2 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
    {
      FigCFDictionaryGetCount();
      OUTLINED_FUNCTION_4_1();
    }

    CFDictionaryApplyBlock();
    if (v2)
    {
      CFRelease(v2);
    }

    CFRelease(a1);
  }
}

void __session_cleanupPendingRequests_block_invoke(uint64_t a1, int a2, CFDictionaryRef theDict, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, const __CFDictionary *a11, UInt8 *a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CompletionContext");
    if (Value)
    {
      v19 = Value;
      v20 = CFDictionaryGetValue(theDict, @"type");
      if (v20)
      {
        v25 = v20;
        if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
        {
          OUTLINED_FUNCTION_4_1();
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 32);

        session_handleRemoteControlSessionResponse(v26, v25, v27, v19, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }
  }
}

void session_handleRemoteControlSessionResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, const __CFDictionary *a11, UInt8 *a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_10_12();
  if (!v17)
  {
    goto LABEL_69;
  }

  v20 = v18;
  if (!v18)
  {
    goto LABEL_69;
  }

  v21 = v19;
  if (!v19)
  {
    goto LABEL_69;
  }

  v22 = v17;
  v23 = v16;
  if (CFEqual(v17, @"playbackInfo"))
  {
    Value = CFDictionaryGetValue(v20, @"info");
    BytePtr = CFDataGetBytePtr(v21);
    v26 = "void session_playbackInfoCompletion(OSStatus, CFDictionaryRef, void *)";
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
    {
      a11 = Value;
      a12 = BytePtr;
      a9 = "void session_playbackInfoCompletion(OSStatus, CFDictionaryRef, void *)";
      a10 = v23;
      OUTLINED_FUNCTION_1_42();
    }

    if (!BytePtr)
    {
      goto LABEL_69;
    }

    goto LABEL_18;
  }

  if (CFEqual(v22, @"seek"))
  {
    BytePtr = CFDataGetBytePtr(v21);
    v26 = "void session_seekCompletion(OSStatus, CFDictionaryRef, void *)";
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_1_42();
    }

LABEL_18:
    v28 = *BytePtr;
    if (*BytePtr)
    {
      if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30)
      {
        if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || (v29 = OUTLINED_FUNCTION_10(), v28 = *BytePtr, v29))
        {
          a10 = v28;
          a11 = *(BytePtr + 1);
          a9 = v26;
          OUTLINED_FUNCTION_1_42();
        }
      }

      OUTLINED_FUNCTION_12();

      v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
      return;
    }

LABEL_69:
    OUTLINED_FUNCTION_12();
    return;
  }

  if (CFEqual(v22, @"property"))
  {
    v27 = CFDataGetBytePtr(v21);
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_1_42();
    }

    if (!*v27)
    {
      goto LABEL_69;
    }

    v47 = CFDictionaryGetValue(v20, @"key");
    v48 = CFDictionaryGetValue(v20, @"value");
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
    {
      a12 = v47;
      a13 = v48;
      a10 = *v27;
      a11 = *(v27 + 1);
      a9 = "void session_getProxiedPropertyCompletion(OSStatus, CFDictionaryRef, void *)";
      OUTLINED_FUNCTION_1_42();
    }

    OUTLINED_FUNCTION_12();

    v53(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else if (CFEqual(v22, @"streamingKey"))
  {
    v38 = CFDataGetBytePtr(v21);
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_1_42();
    }

    if (!*v38)
    {
      goto LABEL_69;
    }

    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (CFDictionaryContainsKey(v20, @"key"))
    {
      v58 = CFDictionaryGetValue(v20, @"key");
      v59 = v58;
      if (v58 && (v60 = CFGetTypeID(v58), v60 == CFStringGetTypeID()))
      {
        v61 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v59 options:0];
      }

      else
      {
        v61 = 0;
      }

      CFDictionaryRemoveValue(MutableCopy, @"key");
      if (v61)
      {
        v62 = v61;
      }

      else
      {
        v62 = v59;
      }

      CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC1028], v62);
    }

    else
    {
      v61 = 0;
    }

    if (CFDictionaryContainsKey(v20, @"error"))
    {
      v63 = CFDictionaryGetValue(v20, @"error");
      CFDictionaryRemoveValue(MutableCopy, @"error");
      CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC0F30], v63);
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_1_42();
    }

    (*v38)(v23, MutableCopy, *(v38 + 1));
    if (v61)
    {
      CFRelease(v61);
    }

    if (!MutableCopy)
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_12();

    CFRelease(v64);
  }

  else
  {
    if (!CFEqual(v22, @"authorizeItem"))
    {
      goto LABEL_69;
    }

    CFDataGetBytePtr(v21);
    OUTLINED_FUNCTION_12();

    session_authorizeItemCompletion(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

void session_authorizeItemCompletion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, const __CFDictionary *a11, void *a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_10_12();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
  {
    a11 = v19;
    a12 = v17;
    a9 = "void session_authorizeItemCompletion(OSStatus, CFDictionaryRef, void *)";
    a10 = v21;
    OUTLINED_FUNCTION_4_1();
  }

  if (*v17)
  {
    Value = CFDictionaryGetValue(v19, @"item");
    v23 = CFDictionaryGetValue(v19, @"PIC-Data");
    v24 = CFDictionaryGetValue(v19, @"playerGUID");
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
    {
      a13 = v23;
      a14 = v24;
      a11 = v17[1];
      a12 = Value;
      a9 = "void session_authorizeItemCompletion(OSStatus, CFDictionaryRef, void *)";
      a10 = *v17;
      OUTLINED_FUNCTION_4_1();
    }

    OUTLINED_FUNCTION_12();

    v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_12();
  }
}

uint64_t session_ensureRemoteControlSessionCreated(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v3 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294950555;
  }

  v5 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC1618], *MEMORY[0x277CC1600]);
  FigCFDictionarySetInt32();
  v6 = APEndpointRemoteControlSessionCreate(*MEMORY[0x277CBECE8], v3[5], v3[3], v5, 1, v3);
  if (v6)
  {
    v9 = v6;
    goto LABEL_12;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2();
  }

  v7 = *v3;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    v9 = 4294954514;
LABEL_12:
    APSLogErrorAt();
    goto LABEL_13;
  }

  v9 = v8(v7, session_handleRemoteControlSessionEvent, a1);
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_13:
  CFRelease(v5);
  return v9;
}

void session_handleRemoteControlSessionEvent(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFTypeRef cf, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_12();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  cf = 0;
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  if (v27)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_24;
    }

    if (!FigCFEqual())
    {
      goto LABEL_24;
    }

    if (v29)
    {
      if (!session_createDictionaryFromData(v29, &cf))
      {
        v31 = malloc_type_calloc(0x10uLL, 1uLL, 0xA70C87FDuLL);
        v32 = cf;
        *v31 = v27;
        v31[1] = v32;
        if (gLogCategory_APEndpointPlaybackSessionRemoteControl > 30)
        {
          goto LABEL_20;
        }

        if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || (v33 = OUTLINED_FUNCTION_10(), v27 = *v31, v33))
        {
          OUTLINED_FUNCTION_4_1();
          v27 = *v31;
        }

        if (v27)
        {
LABEL_20:
          CFRetain(v27);
        }

        v34 = v31[1];
        if (v34)
        {
          CFRetain(v34);
        }

        dispatch_async_f(*(DerivedStorage + 160), v31, session_handleRemoteControlSessionEventInternal);
        goto LABEL_24;
      }

      APSLogErrorAt();
      OUTLINED_FUNCTION_5_21();
    }

    else
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_3_22();
    }

    FigSignalErrorAtGM();
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_12();
}

void session_updateIsPlayingAndPostNotification(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 104))
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 89) != a2)
    {
      APSWiFiTransactionUpdateTransaction();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v6 = Mutable;
      v7 = MEMORY[0x277CBED10];
      if (a2)
      {
        v7 = MEMORY[0x277CBED28];
      }

      CFDictionarySetValue(Mutable, @"Playing", *v7);
      *(v4 + 89) = a2;
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();

      CFRelease(v6);
    }
  }
}

void session_standardCompletion(uint64_t a1, int a2, void *a3)
{
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  v5 = *a3;
  if (*a3)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || (v6 = OUTLINED_FUNCTION_10(), v5 = *a3, v6)))
    {
      OUTLINED_FUNCTION_4_1();
      (*a3)(a1, a3[1]);
    }

    else
    {
      v5(a1, a3[1]);
    }
  }

  free(a3);
}

void session_performActionUnhandledURLResponseCompletion(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  cf = 0;
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_1_42();
  }

  if (*a3)
  {
    if (!theDict)
    {
      goto LABEL_9;
    }

    Value = CFDictionaryGetValue(theDict, @"data");
    if (Value)
    {
      if (!session_createDictionaryFromData(Value, &cf))
      {
LABEL_9:
        if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10()))
        {
          OUTLINED_FUNCTION_1_42();
        }

        (*a3)(a1, cf, a3[1]);
        goto LABEL_14;
      }

      APSLogErrorAt();
      OUTLINED_FUNCTION_5_21();
    }

    else
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_3_22();
    }

    FigSignalErrorAtGM();
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  free(a3);
}

uint64_t session_createDataFromDictionary_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  return FigSignalErrorAtGM();
}

uint64_t session_Play_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t session_InsertPlayQueueItem_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t session_InsertPlayQueueItem_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  OUTLINED_FUNCTION_3_22();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t session_PerformRemoteAction_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  OUTLINED_FUNCTION_3_22();

  return FigSignalErrorAtGM();
}

uint64_t session_PerformRemoteAction_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  OUTLINED_FUNCTION_3_22();

  return FigSignalErrorAtGM();
}

void session_addPendingRequest_cold_1(const void *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t session_addPendingRequest_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();

  return FigSignalErrorAtGM();
}

uint64_t session_addPendingRequest_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();

  return FigSignalErrorAtGM();
}

uint64_t session_createDictionaryFromData_cold_1(uint64_t a1, _DWORD *a2)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t session_insertPlayQueueItemInternal_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t session_insertPlayQueueItemInternal_cold_3(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x277CC1020];
  CFDictionaryGetValue(a1, *MEMORY[0x277CC1020]);
  CFDictionaryContainsKey(a1, *MEMORY[0x277CC0F90]);
  if (a2)
  {
    CFDictionaryGetValue(a2, v4);
  }

  return OUTLINED_FUNCTION_2();
}

uint64_t session_insertPlayQueueItemInternal_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16743;
  return result;
}

uint64_t session_insertPlayQueueItemInternal_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16743;
  return result;
}

uint64_t session_insertPlayQueueItemInternal_cold_13(uint64_t a1, _DWORD *a2)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t session_insertPlayQueueItemInternal_cold_14(_DWORD *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  OUTLINED_FUNCTION_3_22();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __session_handleMetadataEvent_block_invoke_2_cold_1()
{
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl < 51 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2();
  }
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}