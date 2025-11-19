void __stream_readyToSendBatchCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(v1 + 24))
  {
    __stream_readyToSendBatchCallback_block_invoke_cold_1();
  }

  else
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      *(*(*(a1 + 40) + 8) + 24) = v2(*(v1 + 96), *(a1 + 64), *(*(a1 + 48) + 8) + 24);
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = -6709;
    }
  }
}

uint64_t APBrowserRapportManagerGetTypeID()
{
  if (gAPBrowserRapportManagerInitOnce != -1)
  {
    APBrowserRapportManagerGetTypeID_cold_1();
  }

  return gAPBrowserRapportManagerTypeID;
}

uint64_t __APBrowserRapportManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gAPBrowserRapportManagerTypeID = result;
  return result;
}

uint64_t APBrowserRapportManagerCreate()
{
  if (gAPBrowserRapportManagerInitOnce != -1)
  {
    APBrowserRapportManagerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v1 = Instance;
    *(Instance + 16) = 0u;
    *(Instance + 80) = 0;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 32) = 0u;
    if (gLogCategory_APBrowserRapportManager <= 50 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
    {
      APBrowserRapportManagerCreate_cold_2();
    }

    if (_MergedGlobals_5 != -1)
    {
      APBrowserRapportManagerCreate_cold_3();
    }

    if (FigCFWeakReferenceTableAddValueAndGetKey())
    {
      APBrowserRapportManagerCreate_cold_4();
    }

    v1[5] = 0;
    APBrowserRapportManagerCreate_cold_5(233, v1);
  }

  else
  {
    APBrowserRapportManagerCreate_cold_6();
  }

  return 4294895016;
}

uint64_t APBrowserRapportManagerInvalidate(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (gLogCategory_APBrowserRapportManager <= 50 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserRapportManagerInvalidate_block_invoke;
  block[3] = &unk_278BC7668;
  block[4] = &v6;
  block[5] = a1;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t APBrowserRapportManagerGetMode(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserRapportManagerGetMode_block_invoke;
  block[3] = &unk_278BC80B8;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t APBrowserRapportManagerSetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __APBrowserRapportManagerSetEventHandler_block_invoke;
  v6[3] = &unk_278BC80E0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t APBrowserRapportManagerCopyShowInfo(uint64_t a1, int a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __APBrowserRapportManagerCopyShowInfo_block_invoke;
  v6[3] = &unk_278BC7D48;
  v6[4] = &v8;
  v6[5] = a1;
  v7 = a2;
  v6[6] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t APBrowserRapportManagerUpdatePreferences(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APBrowserRapportManagerUpdatePreferences_block_invoke;
  v4[3] = &unk_278BC7668;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __APBrowserRapportManagerUpdatePreferences_block_invoke(uint64_t a1)
{
  result = APBrowserRapportManager_ensurePreferencesUpdated(*(a1 + 40), 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _APBrowserRapportManagerFinalize(void *a1)
{
  if (gLogCategory_APBrowserRapportManager <= 50 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    _APBrowserRapportManagerFinalize_cold_1();
  }

  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    dispatch_release(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    dispatch_release(v5);
    a1[4] = 0;
  }
}

uint64_t APBrowserRapportManager_sendGetInfo(void *a1, uint64_t a2, const void *a3, const void *a4)
{
  value = 0;
  if (gLogCategory_APBrowserRapportManager <= 60 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = a1[10];
  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v10 = TypedValue;
    v11 = objc_alloc_init(MEMORY[0x277D44160]);
    v12 = v11;
    if (v11)
    {
      [v11 setDispatchQueue:a1[4]];
      v13 = v12;
      v14 = APSWrapperCreate();
      if (v14)
      {
        v17 = v14;
        APBrowserRapportManager_sendGetInfo_cold_1(v14, v12);
      }

      else
      {
        CFDictionarySetValue(v10, @"directClient", value);
        [v12 setServiceType:@"com.apple.airplay.discovery.service"];
        [v12 setControlFlags:{objc_msgSend(v12, "controlFlags") | 2}];
        [v12 setDestinationDevice:a2];
        CFSetGetTypeID();
        v15 = CFDictionaryGetTypedValue();
        if (v15)
        {
          CFSetAddValue(v15, a4);
          v16 = a1[5];
          CFRetain(a3);
          CFRetain(a4);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __APBrowserRapportManager_sendGetInfo_block_invoke;
          v19[3] = &__block_descriptor_56_e17_v16__0__NSError_8l;
          v19[4] = v16;
          v19[5] = a3;
          v19[6] = a4;
          [v12 activateWithCompletion:v19];
          v17 = 0;
          goto LABEL_10;
        }

        v17 = 4294895014;
        APBrowserRapportManager_sendGetInfo_cold_2();
      }
    }

    else
    {
      APBrowserRapportManager_sendGetInfo_cold_3();
      v17 = 4294895016;
    }

    CFDictionaryRemoveValue(v10, @"directClient");
  }

  else
  {
    APBrowserRapportManager_sendGetInfo_cold_4();
    v12 = 0;
    v17 = 4294895015;
  }

LABEL_10:

  if (value)
  {
    CFRelease(value);
  }

  return v17;
}

void APSBrowserRapportManager_invalidateAndReleaseClient(void *a1)
{
  [a1 invalidate];
}

uint64_t APConnectivityHelperGetTypeID()
{
  if (gAPConnectivityHelperInitOnce != -1)
  {
    APConnectivityHelperGetTypeID_cold_1();
  }

  return gAPConnectivityHelperTypeID;
}

uint64_t __APConnectivityHelperGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gAPConnectivityHelperTypeID = result;
  return result;
}

uint64_t APConnectivityHelperGetSharedHelper()
{
  objc_opt_class();

  return APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass();
}

uint64_t APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass()
{
  if (APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_sMutexInitOnce != -1)
  {
    APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_cold_1();
  }

  FigSimpleMutexLock();
  if (!APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_sHelper)
  {
    APConnectivityHelperCreateWithWiFiInterfaceClass();
  }

  FigSimpleMutexUnlock();
  return APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_sHelper;
}

uint64_t __APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_block_invoke()
{
  result = FigSimpleMutexCreate();
  APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_sMutex = result;
  return result;
}

uint64_t APConnectivityHelperCreateWithWiFiInterfaceClass()
{
  v0 = *MEMORY[0x277CBECE8];
  if (gAPConnectivityHelperInitOnce != -1)
  {
    APConnectivityHelperGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    Instance[15] = 0u;
    Instance[16] = 0u;
    Instance[13] = 0u;
    Instance[14] = 0u;
    Instance[11] = 0u;
    Instance[12] = 0u;
    Instance[9] = 0u;
    Instance[10] = 0u;
    Instance[7] = 0u;
    Instance[8] = 0u;
    Instance[5] = 0u;
    Instance[6] = 0u;
    Instance[3] = 0u;
    Instance[4] = 0u;
    Instance[1] = 0u;
    Instance[2] = 0u;
    v3 = dispatch_queue_create("APConnectivityHelperInternalQueue", 0);
    v2[2] = v3;
    if (v3)
    {
      v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v5 = dispatch_queue_create("APConnectivityHelperHighPriorityQueue", v4);
      v2[3] = v5;
      if (v5)
      {
        v6 = dispatch_queue_create("APConnectivityHelperEventQueue", 0);
        v2[4] = v6;
        if (v6)
        {
          if (qword_281309B90 != -1)
          {
            APConnectivityHelperCreateWithWiFiInterfaceClass_cold_2();
          }

          if (FigCFWeakReferenceTableAddValueAndGetKey())
          {
            APConnectivityHelperCreateWithWiFiInterfaceClass_cold_3();
          }

          v2[5] = 0;
          APConnectivityHelperCreateWithWiFiInterfaceClass_cold_13();
        }

        else
        {
          APConnectivityHelperCreateWithWiFiInterfaceClass_cold_14();
        }
      }

      else
      {
        APConnectivityHelperCreateWithWiFiInterfaceClass_cold_15();
      }
    }

    else
    {
      APConnectivityHelperCreateWithWiFiInterfaceClass_cold_16();
    }
  }

  else
  {
    APConnectivityHelperCreateWithWiFiInterfaceClass_cold_17();
  }

  [0 invalidate];
  if (v2)
  {
    CFRelease(v2);
  }

  return 4294895096;
}

uint64_t APConnectivityHelperCreate()
{
  objc_opt_class();

  return APConnectivityHelperCreateWithWiFiInterfaceClass();
}

uint64_t APConnectivityHelperCopyProperty(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APConnectivityHelperCopyProperty_block_invoke;
  block[3] = &unk_278BC7CE0;
  block[4] = &v5;
  dispatch_sync(v1, block);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t APConnectivityHelperSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), v4, _APConnectivityHelperSetProperty);
  return v5;
}

uint64_t _APConnectivityHelperSetProperty(uint64_t result)
{
  v1 = result;
  if (*(result + 8))
  {
    v2 = -12784;
  }

  else
  {
    result = _APConnectivityHelperSetProperty_cold_1();
    v2 = -72201;
  }

  *(v1 + 24) = v2;
  return result;
}

uint64_t APConnectivityHelperUpdateTrafficRegistration(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  v3 = *(a1 + 16);
  return APSDispatchSyncTask();
}

uint64_t _APConnectivityHelperUpdateTrafficRegistration(uint64_t *a1)
{
  v2 = *a1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  if (APSIsVirtualMachine())
  {
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = 0;
    v3 = 0;
    goto LABEL_15;
  }

  if (*(v2 + 232))
  {
    APSLogErrorAt();
    v7 = 0;
    v3 = 0;
    v9 = 4294960573;
    goto LABEL_23;
  }

  v3 = objc_alloc_init(MEMORY[0x277D02AC8]);
  if (!v3)
  {
    APSLogErrorAt();
    v7 = 0;
    v3 = 0;
LABEL_32:
    v9 = 4294895096;
    goto LABEL_23;
  }

  v4 = *(a1 + 22) != 0;
  v5 = CUPrintAddress();
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = [MEMORY[0x277D02AC0] AWDLPeerContextWithMACAddress:v5 interfaceName:0];
  if (!v6)
  {
    APSLogErrorAt();
    v7 = 0;
    v9 = 4294895094;
    goto LABEL_23;
  }

  v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v6, 0}];
  if (!v7)
  {
LABEL_31:
    APSLogErrorAt();
    v7 = 0;
    goto LABEL_32;
  }

  [v3 setServiceName:a1[1]];
  [v3 setActive:*(a1 + 22) != 0];
  [v3 setSessionFlags:v4];
  [v3 setPeerContextList:v7];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v16 = ___APConnectivityHelperUpdateTrafficRegistration_block_invoke;
  v17 = &unk_278BC8318;
  v18 = v3;
  v19 = &v28;
  v20 = &v22;
  v21 = v2;
  qos_class = dispatch_queue_get_qos_class(*(v2 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v16(block);
  }

  else
  {
    dispatch_async_and_wait(*(v2 + 24), block);
  }

  if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    [*(v2 + 48) interfaceName];
    [objc_msgSend(*(v2 + 48) "AWDL")];
    [objc_msgSend(*(v2 + 48) "requestParameters")];
    v13 = v23[5];
    v14 = *(v29 + 24);
    LogPrintF();
  }

  if (v29[3])
  {
LABEL_15:
    v9 = 0;
    goto LABEL_23;
  }

  v10 = v23[5];
  v11 = NSErrorToOSStatus();
  if (v11)
  {
    v9 = v11;
  }

  else
  {
    v9 = 4294895094;
  }

  if (gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_23:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  return v9;
}

void sub_23D2EFF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t APConnectivityHelperStartListeningToEvent(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), &v3, _APConnectivityHelperStartListeningToEvent);
  return v5;
}

uint64_t APConnectivityHelperStopListeningToEvent(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), &v3, _APConnectivityHelperStopListeningToEvent);
  return v5;
}

void _APConnectivityHelperStopListeningToEvent(unsigned int *a1)
{
  v2 = *a1;
  if (*(*a1 + 232))
  {
    _APConnectivityHelperStopListeningToEvent_cold_1();
    v4 = -72203;
    goto LABEL_47;
  }

  v3 = a1[2];
  if (!v3)
  {
    v4 = -72201;
    _APConnectivityHelperStopListeningToEvent_cold_13();
    goto LABEL_47;
  }

  if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    _APConnectivityHelperStopListeningToEvent_cold_2(v3);
  }

  CFDictionaryRemoveValue(*(v2 + 264), v3);
  if (v3 <= 8)
  {
    if (v3 >= 3)
    {
      if (v3 <= 3)
      {
        v4 = _APConnectivityHelperEnsureWiFiNetworkListenerStopped(v2);
        if (v4)
        {
          _APConnectivityHelperStopListeningToEvent_cold_10();
        }

        goto LABEL_47;
      }

      if (v3 > 6)
      {
        if (v3 == 7)
        {
          *(v2 + 208) = 0;
          v4 = _APConnectivityHelperEnsureAWDLDevicePresentListenerStopped(v2);
          if (v4)
          {
            _APConnectivityHelperStopListeningToEvent_cold_6();
          }
        }

        else
        {
          v4 = _APConnectivityHelperEnsureAWDLSoloSupportListenerStopped(v2);
          if (v4)
          {
            _APConnectivityHelperStopListeningToEvent_cold_5();
          }
        }

        goto LABEL_47;
      }

      if (v3 == 4)
      {
        v4 = _APConnectivityHelperEnsureUSBInterfaceListenerStopped(v2);
        if (v4)
        {
          _APConnectivityHelperStopListeningToEvent_cold_9();
        }

        goto LABEL_47;
      }

      if (v3 == 6)
      {
        v4 = _APConnectivityHelperEnsureIPv6AddressesListenerStopped(v2);
        if (v4)
        {
          _APConnectivityHelperStopListeningToEvent_cold_8();
        }

        goto LABEL_47;
      }
    }

    else
    {
      if (v3 == 1)
      {
        *(v2 + 87) = 0;
        v4 = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped(v2);
        if (v4)
        {
          _APConnectivityHelperStopListeningToEvent_cold_12();
        }

        goto LABEL_47;
      }

      if (v3 == 2)
      {
        v4 = _APConnectivityHelperEnsureWiFiPowerListenerStopped(v2);
        if (v4)
        {
          _APConnectivityHelperStopListeningToEvent_cold_11();
        }

        goto LABEL_47;
      }
    }

LABEL_27:
    v4 = -72201;
    if (gLogCategory_APConnectivityHelper <= 60 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_47;
  }

  if ((v3 - 100) <= 9 && ((1 << (v3 - 100)) & 0x39F) != 0)
  {
    v4 = -72201;
    if (gLogCategory_APConnectivityHelper <= 60 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperStopListeningToEvent_cold_3(v3);
    }

    goto LABEL_47;
  }

  if (v3 == 9)
  {
    v4 = _APConnectivityHelperStopLinkDebounceFailedListener(v2);
    if (v4)
    {
      _APConnectivityHelperStopListeningToEvent_cold_4();
    }

    goto LABEL_47;
  }

  if (v3 != 10)
  {
    goto LABEL_27;
  }

  v4 = _APConnectivityHelperEnsureIPv4AddressesListenerStopped(v2);
  if (v4)
  {
    _APConnectivityHelperStopListeningToEvent_cold_7();
  }

LABEL_47:
  a1[3] = v4;
}

uint64_t APConnectivityHelperRegisterForEvent(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APConnectivityHelperRegisterForEvent_block_invoke;
    v6[3] = &unk_278BC7D48;
    v7 = a3;
    v6[5] = a1;
    v6[6] = a2;
    v6[4] = &v8;
    dispatch_sync(v3, v6);
    v4 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294960591;
    *(v9 + 6) = -6705;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void __APConnectivityHelperRegisterForEvent_block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v23 = *(a1 + 40);
  v3 = (a1 + 56);
  v24 = *(a1 + 56);
  v25 = 0;
  Value = CFDictionaryGetValue(*(v23 + 248), v24);
  v5 = MEMORY[0x277CBECE8];
  if (Value)
  {
    v6 = CFRetain(Value);
    if (v6)
    {
      v7 = v6;
      if (CFSetContainsValue(v6, *(a1 + 48)))
      {
        goto LABEL_22;
      }

LABEL_7:
      CFSetAddValue(v7, *(a1 + 48));
      if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        __APConnectivityHelperRegisterForEvent_block_invoke_cold_1(v2, (a1 + 48), v3, v7);
      }

      if (CFSetGetCount(v7) == 1)
      {
        _APConnectivityHelperStartListeningToEvent(&v23);
        v22 = v25;
        *(*(*(a1 + 32) + 8) + 24) = v25;
        if (v22)
        {
          __APConnectivityHelperRegisterForEvent_block_invoke_cold_3();
        }

        goto LABEL_22;
      }

      v9 = *v3;
      if (v9 > 0xA || ((1 << v9) & 0x5DA) == 0)
      {
LABEL_22:
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
LABEL_35:
          CFRelease(v7);
          return;
        }

        CFSetRemoveValue(v7, *(a1 + 48));
        v18 = 0;
        goto LABEL_24;
      }

      v10 = *v2;
      v11 = *(a1 + 48);
      Mutable = CFArrayCreateMutable(*v5, 0, MEMORY[0x277CBF128]);
      if (!Mutable)
      {
        __APConnectivityHelperRegisterForEvent_block_invoke_cold_2();
        goto LABEL_22;
      }

      v13 = Mutable;
      switch(v9)
      {
        case 0xA:
          v17 = *(v10 + 136);
          v26 = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v28 = ___APConnectivityHelperReplayEvents_block_invoke;
          v29 = &__block_descriptor_52_e15_v24__0r_v8r_v16l;
          v30 = v10;
          v31 = v11;
          v15 = 10;
          break;
        case 6:
          v16 = *(v10 + 128);
          v26 = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v28 = ___APConnectivityHelperReplayEvents_block_invoke;
          v29 = &__block_descriptor_52_e15_v24__0r_v8r_v16l;
          v30 = v10;
          v31 = v11;
          v15 = 6;
          break;
        case 4:
          v14 = *(v10 + 112);
          v26 = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v28 = ___APConnectivityHelperReplayEvents_block_invoke;
          v29 = &__block_descriptor_52_e15_v24__0r_v8r_v16l;
          v30 = v10;
          v31 = v11;
          v15 = 4;
          break;
        default:
          v21 = CFDictionaryGetValue(*(v10 + 264), v9);
          if (v21)
          {
            _APConnectivityHelperReplayEvent(v10, v11, v9, v21);
          }

          goto LABEL_21;
      }

      v32 = v15;
      CFDictionaryApplyBlock();
LABEL_21:
      CFRelease(v13);
      goto LABEL_22;
    }
  }

  v8 = CFSetCreateMutable(*v5, 0, MEMORY[0x277CBF158]);
  if (v8)
  {
    v7 = v8;
    CFDictionarySetValue(*(*v2 + 248), *v3, v8);
    goto LABEL_7;
  }

  if (__APConnectivityHelperRegisterForEvent_block_invoke_cold_4())
  {
    return;
  }

  v7 = 0;
  v18 = 1;
LABEL_24:
  if (gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    APConnectivityHelperGetEventString(*(a1 + 56));
    if ((v18 & 1) == 0)
    {
      CFSetGetCount(v7);
    }

    LogPrintF();
  }

  if (v7)
  {
    goto LABEL_35;
  }
}

uint64_t APConnectivityHelperDeregisterForEvent(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APConnectivityHelperDeregisterForEvent_block_invoke;
    v6[3] = &unk_278BC7D48;
    v6[4] = &v8;
    v6[5] = a1;
    v6[6] = a2;
    v7 = a3;
    dispatch_sync(v3, v6);
    if (*(v9 + 6))
    {
      APSLogErrorAt();
      v4 = *(v9 + 6);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294960591;
    *(v9 + 6) = -6705;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __APConnectivityHelperDeregisterForEvent_block_invoke(uint64_t a1)
{
  result = _APConnectivityHelperDeregisterForEvent(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t APConnectivityHelperRegisterActivity(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APConnectivityHelperRegisterActivity_block_invoke;
    v6[3] = &unk_278BC7D48;
    v7 = a3;
    v6[5] = a1;
    v6[6] = a2;
    v6[4] = &v8;
    dispatch_sync(v3, v6);
    v4 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294960591;
    *(v9 + 6) = -6705;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void __APConnectivityHelperRegisterActivity_block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = (a1 + 56);
  Value = CFDictionaryGetValue(*(*(a1 + 40) + 256), *(a1 + 56));
  if (Value && (v5 = CFRetain(Value)) != 0)
  {
    Mutable = v5;
    if (CFSetContainsValue(v5, *(a1 + 48)))
    {
      goto LABEL_26;
    }
  }

  else
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
    if (!Mutable)
    {
      __APConnectivityHelperRegisterActivity_block_invoke_cold_3();
      goto LABEL_26;
    }

    CFDictionarySetValue(*(*v2 + 256), *v3, Mutable);
  }

  if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    __APConnectivityHelperRegisterActivity_block_invoke_cold_1(v2, a1, (v2 + 16), Mutable);
  }

  if (CFSetGetCount(Mutable))
  {
    goto LABEL_25;
  }

  if (*v3)
  {
    __APConnectivityHelperRegisterActivity_block_invoke_cold_4();
    v12 = -6735;
  }

  else
  {
    v7 = *v2;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__0;
    v26 = __Block_byref_object_dispose__0;
    v27 = 0;
    if (*(v7 + 72))
    {
      v12 = 0;
    }

    else
    {
      v8 = [MEMORY[0x277D02AD8] activityWithType:4 reason:0];
      v9 = v8;
      if (v8)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v16 = ___APConnectivityHelperStartWakeOnWireless_block_invoke;
        v17 = &unk_278BC8318;
        v18 = v8;
        v19 = &v28;
        v20 = &v22;
        v21 = v7;
        qos_class = dispatch_queue_get_qos_class(*(v7 + 24), 0);
        if (qos_class_self() >= qos_class)
        {
          v16(v15);
        }

        else
        {
          dispatch_async_and_wait(*(v7 + 24), v15);
        }

        if (v29[3])
        {
          v11 = v9;
          v12 = 0;
          *(v7 + 72) = v11;
        }

        else
        {
          v13 = v23[5];
          v14 = NSErrorToOSStatus();
          v12 = v14 ? v14 : -72202;
          APSLogErrorAt();
        }
      }

      else
      {
        APSLogErrorAt();
        v12 = -72202;
      }
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  *(*(*(a1 + 32) + 8) + 24) = v12;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    __APConnectivityHelperRegisterActivity_block_invoke_cold_2();
  }

  else
  {
LABEL_25:
    CFSetAddValue(Mutable, *(a1 + 48));
  }

LABEL_26:
  if (!*(*(*(a1 + 32) + 8) + 24) || gLogCategory_APConnectivityHelper > 90 || gLogCategory_APConnectivityHelper == -1 && !_LogCategory_Initialize())
  {
    if (!Mutable)
    {
      return;
    }

    goto LABEL_31;
  }

  __APConnectivityHelperRegisterActivity_block_invoke_cold_5(v2, a1, (v2 + 16), Mutable);
  if (Mutable)
  {
LABEL_31:
    CFRelease(Mutable);
  }
}

void sub_23D2F0D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

const char *APConnectivityHelperGetActivityString(int a1)
{
  if (a1)
  {
    return "Unknown";
  }

  else
  {
    return "Wake on Wireless";
  }
}

uint64_t APConnectivityHelperDeregisterActivity(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APConnectivityHelperDeregisterActivity_block_invoke;
    v6[3] = &unk_278BC7D48;
    v6[4] = &v8;
    v6[5] = a1;
    v6[6] = a2;
    v7 = a3;
    dispatch_sync(v3, v6);
    if (*(v9 + 6))
    {
      APSLogErrorAt();
      v4 = *(v9 + 6);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294960591;
    *(v9 + 6) = -6705;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __APConnectivityHelperDeregisterActivity_block_invoke(uint64_t a1)
{
  result = _APConnectivityHelperDeregisterActivity(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t APConnectivityHelperRemoveAllRegistrations(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a2)
  {
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APConnectivityHelperRemoveAllRegistrations_block_invoke;
    block[3] = &unk_278BC80B8;
    block[4] = &v9;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v4, block);
    if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = *(a1 + 16);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __APConnectivityHelperDeregisterEventHandler_block_invoke;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = a1;
    v13[5] = a2;
    dispatch_sync(v5, v13);
    v6 = *(v10 + 6);
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294960591;
    *(v10 + 6) = -6705;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_23D2F10D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APConnectivityHelperRemoveAllRegistrations_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  if (Mutable)
  {
    v4 = Mutable;
    v5 = CFSetCreateMutable(v2, 0, 0);
    if (v5)
    {
      v6 = v5;
      v7 = *(*(a1 + 40) + 256);
      v14 = *(a1 + 48);
      CFDictionaryApplyBlock();
      v8 = *(*(a1 + 40) + 248);
      v13 = *(a1 + 48);
      CFDictionaryApplyBlock();
      if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        __APConnectivityHelperRemoveAllRegistrations_block_invoke_cold_1((a1 + 40), v4, (a1 + 48));
      }

      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      CFSetApplyBlock();
      if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        __APConnectivityHelperRemoveAllRegistrations_block_invoke_cold_2((a1 + 40), v6, (a1 + 48));
      }

      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      CFSetApplyBlock();
      CFRelease(v6);
    }

    else
    {
      __APConnectivityHelperRemoveAllRegistrations_block_invoke_cold_3();
    }

    CFRelease(v4);
  }

  else
  {
    __APConnectivityHelperRemoveAllRegistrations_block_invoke_cold_4();
  }
}

void __APConnectivityHelperRemoveAllRegistrations_block_invoke_2(uint64_t a1, const void *a2, CFSetRef theSet)
{
  if (CFSetContainsValue(theSet, *(a1 + 32)))
  {
    v5 = *(a1 + 40);

    CFSetAddValue(v5, a2);
  }
}

void __APConnectivityHelperRemoveAllRegistrations_block_invoke_3(uint64_t a1, const void *a2, CFSetRef theSet)
{
  if (CFSetContainsValue(theSet, *(a1 + 32)))
  {
    v5 = *(a1 + 40);

    CFSetAddValue(v5, a2);
  }
}

void APConnectivityHelperDeregisterEventHandler(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APConnectivityHelperDeregisterEventHandler_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }

  else
  {
    APConnectivityHelperDeregisterEventHandler_cold_1();
  }
}

uint64_t APConnectivityHelperSetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), v4, _APConnectivityHelperSetEventHandler);
  return v5;
}

uint64_t _APConnectivityHelperSetEventHandler(uint64_t result)
{
  v1 = result;
  v2 = *result;
  if (*(*result + 232))
  {
    result = _APConnectivityHelperSetEventHandler_cold_1();
    v3 = -72203;
  }

  else if (*(v2 + 88))
  {
    v3 = -72204;
    result = _APConnectivityHelperSetEventHandler_cold_2();
  }

  else if (*(v2 + 85))
  {
    v3 = -72204;
    result = _APConnectivityHelperSetEventHandler_cold_3();
  }

  else
  {
    v3 = 0;
    *(v2 + 216) = *(result + 8);
  }

  *(v1 + 24) = v3;
  return result;
}

uint64_t APConnectivityHelperRegisterEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    APConnectivityHelperRegisterEventHandler_cold_2();
    return 4294960591;
  }

  if (!a3)
  {
    APConnectivityHelperRegisterEventHandler_cold_1();
    return 4294960591;
  }

  v3 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APConnectivityHelperRegisterEventHandler_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v3, block);
  return 0;
}

void __APConnectivityHelperRegisterEventHandler_block_invoke(void *a1)
{
  if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    __APConnectivityHelperRegisterEventHandler_block_invoke_cold_1(a1);
  }

  v2 = a1[5];
  v3 = *(a1[4] + 240);
  v4 = a1[6];

  CFDictionarySetValue(v3, v2, v4);
}

void __APConnectivityHelperDeregisterEventHandler_block_invoke(uint64_t a1)
{
  if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    __APConnectivityHelperDeregisterEventHandler_block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 240);

  CFDictionaryRemoveValue(v3, v2);
}

uint64_t APConnectivityHelperCopyCurrentWiFiNetworkInfo(dispatch_queue_t *a1, CFMutableDictionaryRef *a2)
{
  v8 = 0;
  context = a1;
  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  dispatch_sync_f(a1[2], &context, _APConnectivityHelperPopulateCurrentWiFiNetworkInfo);
  if (v8)
  {
    APConnectivityHelperCopyCurrentWiFiNetworkInfo_cold_1(v8, &Mutable);
  }

  else
  {
    *a2 = Mutable;
  }

  return v8;
}

void _APConnectivityHelperPopulateCurrentWiFiNetworkInfo(uint64_t *a1)
{
  v2 = *a1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  if (*(v2 + 232))
  {
    APSLogErrorAt();
    v12 = -72203;
  }

  else
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      CFDictionarySetValue(a1[1], @"networkInterfaceName", v3);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v20 = ___APConnectivityHelperPopulateCurrentWiFiNetworkInfo_block_invoke;
      v21 = &unk_278BC7668;
      v22 = &v30;
      v23 = v2;
      qos_class = dispatch_queue_get_qos_class(*(v2 + 24), 0);
      if (qos_class_self() >= qos_class)
      {
        v20(block);
      }

      else
      {
        dispatch_async_and_wait(*(v2 + 24), block);
      }

      v5 = v31[5];
      if (v5)
      {
        CFDictionarySetValue(a1[1], @"wifiNetworkSSID", v5);
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v15 = ___APConnectivityHelperPopulateCurrentWiFiNetworkInfo_block_invoke_2;
      v16 = &unk_278BC7668;
      v17 = &v24;
      v18 = v2;
      v6 = dispatch_queue_get_qos_class(*(v2 + 24), 0);
      if (qos_class_self() >= v6)
      {
        v15(v14);
      }

      else
      {
        dispatch_async_and_wait(*(v2 + 24), v14);
      }

      v7 = v25[5];
      if (v7)
      {
        v8 = [v7 isCarPlay];
        v9 = MEMORY[0x277CBED28];
        v10 = a1[1];
        if (!v8)
        {
          v9 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(a1[1], @"wifiNetworkIsCarPlay", *v9);
        v11 = [v25[5] carplayUUID];
        if (v11)
        {
          if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
          {
            v13 = *(v2 + 56);
            LogPrintF();
          }

          CFDictionarySetValue(a1[1], @"wifiNetworkCarPlayUUID", v11);
        }
      }

      v12 = 0;
    }

    else
    {
      APSLogErrorAt();
      v12 = -72205;
    }
  }

  *(a1 + 4) = v12;
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

void sub_23D2F1AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t APConnectivityHelperInvalidate(uint64_t a1)
{
  v3 = a1;
  v4 = 0;
  dispatch_sync_f(*(a1 + 16), &v3, _APConnectivityHelperInvalidate);
  dispatch_sync(*(a1 + 16), &__block_literal_global_61);
  return v4;
}

void _APConnectivityHelperFinalize(uint64_t a1)
{
  if (*(a1 + 232))
  {

    *(a1 + 144) = 0;
    *(a1 + 48) = 0;

    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    v2 = *(a1 + 112);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 112) = 0;
    }

    v3 = *(a1 + 128);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 128) = 0;
    }

    v4 = *(a1 + 136);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 136) = 0;
    }

    v5 = *(a1 + 240);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 240) = 0;
    }

    v6 = *(a1 + 248);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 248) = 0;
    }

    v7 = *(a1 + 256);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 256) = 0;
    }

    v8 = *(a1 + 264);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 264) = 0;
    }

    v9 = *(a1 + 160);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 160) = 0;
    }

    v10 = *(a1 + 168);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 168) = 0;
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      dispatch_release(v11);
      *(a1 + 16) = 0;
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      dispatch_release(v12);
      *(a1 + 24) = 0;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      dispatch_release(v13);
      *(a1 + 32) = 0;
    }
  }

  else
  {
    if (gLogCategory_APConnectivityHelper <= 100 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperFinalize_cold_1();
    }

    __break(1u);
  }
}

void _APConnectivityHelperReplayEvent(uint64_t a1, const void *a2, int a3, const void *a4)
{
  if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    APConnectivityHelperGetEventString(a3);
    LogPrintF();
  }

  if (*MEMORY[0x277CBEEE8] == a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  _APConnectivityHelperDispatchEventToClient(a1, a2, a3, v8);
}

void _APConnectivityHelperTrySettingAWDLDevice(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__0;
    v14 = __Block_byref_object_dispose__0;
    v15 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v6 = ___APConnectivityHelperTrySettingAWDLDevice_block_invoke;
    v7 = &unk_278BC7668;
    v8 = &v10;
    v9 = a1;
    qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= qos_class)
    {
      v6(block);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), block);
    }

    v3 = v11[5];
    if (!v3)
    {
      _Block_object_dispose(&v10, 8);
      return;
    }

    *(a1 + 64) = v3;
    if (gLogCategory_APConnectivityHelper > 40)
    {
      goto LABEL_10;
    }

    if (gLogCategory_APConnectivityHelper == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_10:
        _Block_object_dispose(&v10, 8);
        if (!*(a1 + 64))
        {
          return;
        }

        goto LABEL_11;
      }

      v4 = *(a1 + 64);
    }

    LogPrintF();
    goto LABEL_10;
  }

LABEL_11:
  if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    _APConnectivityHelperTrySettingAWDLDevice_cold_1();
  }

  if (*(a1 + 208))
  {
    if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperTrySettingAWDLDevice_cold_2();
    }

    if (_APConnectivityHelperDispatchEvent(a1, 7, 0))
    {
      _APConnectivityHelperTrySettingAWDLDevice_cold_3();
    }

    else
    {
      *(a1 + 208) = 0;
    }
  }

  _APConnectivityHelperEnsureAWDLDevicePresentListenerStopped(a1);
}

void sub_23D2F2024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperStartWiFiPowerListener(uint64_t a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  if (*(a1 + 85))
  {
LABEL_23:
    v3 = 0;
    goto LABEL_17;
  }

  if (!*(a1 + 56))
  {
    APSLogErrorAt();
    v3 = 4294895091;
    goto LABEL_17;
  }

  if (APSIsVirtualMachine())
  {
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_23;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v8 = ___APConnectivityHelperStartWiFiPowerListener_block_invoke;
  v9 = &unk_278BC82F0;
  v10 = &v19;
  v11 = &v13;
  v12 = a1;
  qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v8(block);
  }

  else
  {
    dispatch_async_and_wait(*(a1 + 24), block);
  }

  if (v20[3])
  {
    v3 = 0;
    *(a1 + 85) = 1;
  }

  else
  {
    v4 = v14[5];
    v5 = NSErrorToOSStatus();
    if (v5)
    {
      v3 = v5;
    }

    else
    {
      v3 = 4294895094;
    }

    APSLogErrorAt();
  }

LABEL_17:
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v3;
}

void sub_23D2F2300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperStartWiFiNetworkListener(uint64_t a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  if (*(a1 + 81))
  {
LABEL_25:
    v3 = 0;
    goto LABEL_19;
  }

  if (!*(a1 + 56))
  {
    APSLogErrorAt();
    v3 = 4294895091;
    goto LABEL_18;
  }

  if (APSIsVirtualMachine())
  {
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_25;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v8 = ___APConnectivityHelperStartWiFiNetworkListener_block_invoke;
  v9 = &unk_278BC82F0;
  v10 = &v19;
  v11 = &v13;
  v12 = a1;
  qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v8(block);
  }

  else
  {
    dispatch_async_and_wait(*(a1 + 24), block);
  }

  if ((v20[3] & 1) == 0)
  {
    v4 = v14[5];
    v5 = NSErrorToOSStatus();
    if (v5)
    {
      v3 = v5;
    }

    else
    {
      v3 = 4294895094;
    }

    goto LABEL_17;
  }

  *(a1 + 81) = 1;
  v3 = _APConnectivityHelperHandleWiFiLinkChangedInternal(a1, 0);
  if (v3)
  {
LABEL_17:
    APSLogErrorAt();
LABEL_18:
    _APConnectivityHelperStopWiFiNetworkListener(a1);
  }

LABEL_19:
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v3;
}

void sub_23D2F25C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperStartLinkDebounceFailedListener(uint64_t a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  if (*(a1 + 83))
  {
LABEL_27:
    v3 = 0;
    goto LABEL_21;
  }

  if (!*(a1 + 56))
  {
    APSLogErrorAt();
    v3 = 4294895091;
LABEL_20:
    _APConnectivityHelperStopLinkDebounceFailedListener(a1);
    goto LABEL_21;
  }

  if (APSIsVirtualMachine())
  {
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_27;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v8 = ___APConnectivityHelperStartLinkDebounceFailedListener_block_invoke;
  v9 = &unk_278BC82F0;
  v10 = &v19;
  v11 = &v13;
  v12 = a1;
  qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v8(block);
  }

  else
  {
    dispatch_async_and_wait(*(a1 + 24), block);
  }

  if ((v20[3] & 1) == 0)
  {
    v4 = v14[5];
    v5 = NSErrorToOSStatus();
    if (v5)
    {
      v3 = v5;
    }

    else
    {
      v3 = 4294895094;
    }

    if (gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_20;
  }

  v3 = 0;
  *(a1 + 83) = 1;
LABEL_21:
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v3;
}

void sub_23D2F28AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 209) || *(a1 + 64))
    {
      goto LABEL_8;
    }

    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted_cold_1();
    }

    *(a1 + 209) = 1;
    updated = _APConnectivityHelperUpdateInterfaceAddedListener(a1);
    if (!updated)
    {
LABEL_8:
      _APConnectivityHelperTrySettingAWDLDevice(a1);
      return 0;
    }

    else
    {
      v3 = updated;
      _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted_cold_2(updated, a1);
    }
  }

  else
  {
    *(a1 + 210) = 1;
    v3 = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(a1);
    if (v3)
    {
      _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted_cold_3();
    }
  }

  return v3;
}

void _APConnectivityHelperDispatchEventExternal(void *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  (*a1)(v2, *(a1 + 4), v3, a1[4]);
  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(v2);

  free(a1);
}

uint64_t _APConnectivityHelperStopWiFiNetworkListener(uint64_t a1)
{
  v2 = *(a1 + 82);
  if (*(a1 + 82))
  {
    *(a1 + 82) = 0;
    v2 = 1;
  }

  if (*(a1 + 81))
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperStopWiFiNetworkListener_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v7 = ___APConnectivityHelperStopWiFiNetworkListener_block_invoke;
    v8 = &__block_descriptor_40_e5_v8__0l;
    v9 = a1;
    qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= qos_class)
    {
      v7(block);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), block);
    }

    *(a1 + 81) = 0;
    v2 = 1;
  }

  result = 0;
  if (v2 && *(a1 + 216))
  {
    result = _APConnectivityHelperDispatchEvent(a1, 0x67, 0);
    if (result)
    {
      v5 = result;
      _APConnectivityHelperStopWiFiNetworkListener_cold_2();
      return v5;
    }
  }

  return result;
}

uint64_t _APConnectivityHelperStopLinkDebounceFailedListener(uint64_t a1)
{
  v2 = *(a1 + 84);
  if (*(a1 + 84))
  {
    *(a1 + 84) = 0;
    v2 = 1;
  }

  if (*(a1 + 83))
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperStopLinkDebounceFailedListener_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v7 = ___APConnectivityHelperStopLinkDebounceFailedListener_block_invoke;
    v8 = &__block_descriptor_40_e5_v8__0l;
    v9 = a1;
    qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= qos_class)
    {
      v7(block);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), block);
    }

    *(a1 + 83) = 0;
    v2 = 1;
  }

  result = 0;
  if (v2 && *(a1 + 216))
  {
    result = _APConnectivityHelperDispatchEvent(a1, 0x6D, 0);
    if (result)
    {
      v5 = result;
      _APConnectivityHelperStopLinkDebounceFailedListener_cold_2();
      return v5;
    }
  }

  return result;
}

uint64_t _APConnectivityHelperUpdateInterfaceAddedListener(uint64_t a1)
{
  if (*(a1 + 88) || *(a1 + 209))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3052000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    if (APSIsVirtualMachine())
    {
      if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else if (!*(a1 + 104))
    {
      *(a1 + 104) = 1;
      if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (!*(a1 + 96))
      {
        if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v2 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 16));
        *(a1 + 96) = v2;
        if (v2)
        {
          CFRetain(a1);
          _APConnectivityHelperUpdateInterfaceAddedListener_cold_1((a1 + 96), &block, a1, v27);
        }

        else
        {
          APSLogErrorAt();
        }
      }

      block = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = ___APConnectivityHelperStartInterfaceAddedListenerIfNecessary_block_invoke;
      v13 = &unk_278BC82F0;
      v14 = &v23;
      v15 = &v17;
      v16 = a1;
      qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
      if (qos_class_self() >= qos_class)
      {
        v12(&block);
      }

      else
      {
        dispatch_async_and_wait(*(a1 + 24), &block);
      }

      if ((v24[3] & 1) == 0)
      {
        if (gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
        {
          v9 = v18[5];
          LogPrintF();
        }

        _APConnectivityHelperStopInterfaceAddedRetryTimer(a1);
        v6 = v18[5];
        v7 = NSErrorToOSStatus();
        if (v7)
        {
          v4 = v7;
        }

        else
        {
          v4 = 4294895094;
        }

        APSLogErrorAt();
        goto LABEL_36;
      }
    }

    v4 = 0;
LABEL_36:
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
    return v4;
  }

  if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperUpdateInterfaceAddedListener_cold_2();
    }

    _APConnectivityHelperStopInterfaceAddedRetryTimer(a1);
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = ___APConnectivityHelperStopInterfaceAddedListenerIfNecessary_block_invoke;
    v13 = &__block_descriptor_40_e5_v8__0l;
    v14 = a1;
    v5 = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= v5)
    {
      v12(&block);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), &block);
    }
  }

  return 0;
}

void sub_23D2F31C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_23D2F3440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperEnsureWiFiPowerListenerStopped(uint64_t a1)
{
  v2 = *(a1 + 86);
  if (*(a1 + 86))
  {
    *(a1 + 86) = 0;
    v2 = 1;
  }

  if (*(a1 + 85))
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperEnsureWiFiPowerListenerStopped_cold_1();
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v6 = ___APConnectivityHelperStopWiFiPowerListener_block_invoke;
    v7 = &__block_descriptor_40_e5_v8__0l;
    v8 = a1;
    qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= qos_class)
    {
      v6(v5);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), v5);
    }

    *(a1 + 85) = 0;
    v2 = 1;
  }

  if (v2 && *(a1 + 216) && (_APConnectivityHelperEnsureWiFiPowerListenerStopped_cold_2(a1, v5, &v9) & 1) == 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _APConnectivityHelperEnsureWiFiNetworkListenerStopped(uint64_t a1)
{
  v1 = _APConnectivityHelperStopWiFiNetworkListener(a1);
  if (v1)
  {
    _APConnectivityHelperEnsureWiFiNetworkListenerStopped_cold_1();
  }

  return v1;
}

void _APConnectivityHelperStopListeningToDynamicStoreNetworkEntity(uint64_t a1, CFStringRef entity)
{
  if (*(a1 + 168))
  {
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], entity);
    CFDictionaryRemoveValue(*(a1 + 168), NetworkInterfaceEntity);
    if (!*(a1 + 160))
    {
      goto LABEL_11;
    }

    if (CFDictionaryGetCount(*(a1 + 168)) || *(a1 + 80))
    {
      v4 = *(a1 + 168);
      v5 = CFDictionaryCopyKeys();
      if (!SCDynamicStoreSetNotificationKeys(*(a1 + 160), 0, v5) && SCError())
      {
        SCError();
      }

      if (!NetworkInterfaceEntity)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    SCDynamicStoreSetDispatchQueue(*(a1 + 160), 0);
    v6 = *(a1 + 160);
    if (v6)
    {
      CFRelease(v6);
      v5 = 0;
      *(a1 + 160) = 0;
      if (!NetworkInterfaceEntity)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_11:
      v5 = 0;
      if (!NetworkInterfaceEntity)
      {
LABEL_15:
        if (v5)
        {
          CFRelease(v5);
        }

        return;
      }
    }

LABEL_14:
    CFRelease(NetworkInterfaceEntity);
    goto LABEL_15;
  }
}

uint64_t _APConnectivityHelperSendAWDLSoloSupportEvent(uint64_t a1)
{
  if (*(a1 + 153))
  {
    if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperSendAWDLSoloSupportEvent_cold_1(a1);
    }

    v2 = *(a1 + 152);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      _APConnectivityHelperSendAWDLSoloSupportEvent_cold_2(v2, Mutable, a1, &v6);
      return v6;
    }

    else
    {
      _APConnectivityHelperSendAWDLSoloSupportEvent_cold_3();
      return 4294895096;
    }
  }

  else
  {
    v4 = 4294895095;
    _APConnectivityHelperSendAWDLSoloSupportEvent_cold_4();
  }

  return v4;
}

uint64_t _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity(uint64_t a1, CFStringRef entity, const void *a3)
{
  v17 = 0;
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  values = 0;
  if (*(a1 + 160))
  {
    goto LABEL_10;
  }

  v6 = SCDynamicStoreCreate(0, @"APConnectivityHelper: Network Listener", _APConnectivityHelperHandleDynamicStoreNetworkEntityValueChange, &context);
  *(a1 + 160) = v6;
  if (!v6)
  {
    if (SCError())
    {
      v17 = SCError();
      if (!v17)
      {
        v6 = *(a1 + 160);
        goto LABEL_6;
      }
    }

    else
    {
      v17 = -6700;
    }

    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_7();
    goto LABEL_44;
  }

LABEL_6:
  if (!SCDynamicStoreSetDispatchQueue(v6, *(a1 + 16)))
  {
    if (SCError())
    {
      v17 = SCError();
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = -6700;
    }

    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_6();
    goto LABEL_44;
  }

  v17 = 0;
LABEL_10:
  if (!*(a1 + 168))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
    *(a1 + 168) = Mutable;
    if (!Mutable)
    {
      _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_5();
      goto LABEL_44;
    }
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], entity);
  values = NetworkInterfaceEntity;
  if (!NetworkInterfaceEntity)
  {
    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_4();
    goto LABEL_44;
  }

  CFDictionarySetValue(*(a1 + 168), NetworkInterfaceEntity, a3);
  v9 = *(a1 + 168);
  v10 = CFDictionaryCopyKeys();
  if (v17)
  {
    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_1();
    goto LABEL_45;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = SCDynamicStoreSetNotificationKeys(*(a1 + 160), 0, v10);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    v17 = 0;
    goto LABEL_24;
  }

  if (!SCError())
  {
    v17 = -6700;
    goto LABEL_39;
  }

  v17 = SCError();
  if (v17)
  {
LABEL_39:
    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_3();
LABEL_44:
    v10 = 0;
LABEL_45:
    v13 = 0;
    v12 = 0;
    goto LABEL_29;
  }

LABEL_24:
  v10 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
  if (!v10)
  {
    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_2();
    goto LABEL_45;
  }

  v12 = SCDynamicStoreCopyMultiple(*(a1 + 160), 0, v10);
  if (v12)
  {
    v13 = CFDictionaryCopyKeys();
    if (v13)
    {
      _APConnectivityHelperHandleDynamicStoreNetworkEntityValueChange(*(a1 + 160), v13, a1);
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_29:
  if (values)
  {
    CFRelease(values);
    values = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v17;
}

void _APConnectivityHelperHandleIPv4ChangedEvent(const __SCDynamicStore *a1, const __CFString *a2)
{
  v2 = SCDynamicStoreCopyValue(a1, a2);
  v3 = v2;
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"Addresses");
    if (!Value)
    {
      goto LABEL_5;
    }

    v4 = Value;
    CFRetain(Value);
  }

  else
  {
    v4 = CFArrayCreate(0, 0, 0, MEMORY[0x277CBF128]);
    if (!v4)
    {
LABEL_5:
      _APConnectivityHelperHandleIPv4ChangedEvent_cold_1();
      if (!v3)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  v6 = CFGetTypeID(v4);
  if (v6 == CFArrayGetTypeID())
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
    {
      _APConnectivityHelperHandleIPv4ChangedEvent_cold_2();
    }

    else
    {
      _APConnectivityHelperHandleIPv4ChangedEvent_cold_3();
    }
  }

  else
  {
    _APConnectivityHelperHandleIPv4ChangedEvent_cold_1();
  }

  CFRelease(v4);
  if (v3)
  {
LABEL_16:

    CFRelease(v3);
  }
}

uint64_t APTPacingControllerGetTypeID()
{
  if (gAPTPacingControllerInitOnce != -1)
  {
    APTPacingControllerGetTypeID_cold_1();
  }

  return gAPTPacingControllerTypeID;
}

uint64_t _APTPacingControllerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPTPacingControllerTypeID = result;
  return result;
}

uint64_t APTPacingControllerCreate(NSObject *a1, CFTypeRef *a2)
{
  if (!a1)
  {
    APTPacingControllerCreate_cold_7();
    return 4294960591;
  }

  if (!a2)
  {
    APTPacingControllerCreate_cold_6();
    return 4294960591;
  }

  if (gAPTPacingControllerInitOnce != -1)
  {
    APTPacingControllerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APTPacingControllerCreate_cold_5();
    return 4294960568;
  }

  v5 = Instance;
  *(Instance + 96) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 16) = 1000 * APSSettingsGetIntWithDefault();
  *(v5 + 24) = 1000 * APSSettingsGetIntWithDefault();
  *(v5 + 72) = -1;
  v6 = FigSimpleMutexCreate();
  *(v5 + 32) = v6;
  if (v6)
  {
    dispatch_retain(a1);
    *(v5 + 40) = a1;
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a1);
    *(v5 + 48) = v7;
    if (v7)
    {
      dispatch_set_context(v7, v5);
      dispatch_source_set_event_handler_f(*(v5 + 48), pacingController_yieldTimerFire);
      dispatch_activate(*(v5 + 48));
      if (gLogCategory_APTPacingController <= 30 && (gLogCategory_APTPacingController != -1 || _LogCategory_Initialize()))
      {
        APTPacingControllerCreate_cold_2();
      }

      v8 = 0;
      *a2 = CFRetain(v5);
      goto LABEL_12;
    }

    APTPacingControllerCreate_cold_3();
  }

  else
  {
    APTPacingControllerCreate_cold_4();
  }

  v8 = 4294960568;
LABEL_12:
  CFRelease(v5);
  return v8;
}

void pacingController_yieldTimerFire(void *a1)
{
  v4 = 0;
  memset(v5, 0, sizeof(v5));
  v2 = a1[4];
  FigSimpleMutexLock();
  dispatch_time_to_nsec();
  pacingController_endYieldInternal(a1, 0, v5, &v4);
  v3 = a1[4];
  FigSimpleMutexUnlock();
  (v5[0])(v4);
  CFRelease(a1);
}

uint64_t APTPacingControllerReset(void *a1)
{
  v2 = a1[4];
  FigSimpleMutexLock();
  if (gLogCategory_APTPacingController <= 30 && (gLogCategory_APTPacingController != -1 || _LogCategory_Initialize()))
  {
    APTPacingControllerReset_cold_1();
  }

  if (a1[10])
  {
    APTPacingControllerReset_cold_2();
    v3 = 4294960587;
  }

  else
  {
    v3 = 0;
    a1[7] = 0;
    a1[8] = 0;
  }

  v4 = a1[4];
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t APTPacingControllerAddBytesSent(void *a1, uint64_t a2)
{
  dispatch_time_to_nsec();
  v4 = a1[4];
  FigSimpleMutexLock();
  if (a1[10])
  {
    APTPacingControllerAddBytesSent_cold_1();
    v8 = 4294960587;
    goto LABEL_12;
  }

  if (!a1[7])
  {
    a1[7] = 0;
  }

  v5 = a1[8];
  v6 = __CFADD__(a2, v5);
  v7 = a2 + v5;
  if (v6)
  {
    v7 = -1;
  }

  a1[8] = v7;
  if (gLogCategory_APTPacingController <= 30)
  {
    if (gLogCategory_APTPacingController == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v11 = a1[7];
      v12 = a1[8];
    }

    LogPrintF();
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  v9 = a1[4];
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t APTPacingControllerYieldOnQueueWithContinuationFunction(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  dispatch_time_to_nsec();
  v20 = 0;
  v21 = 0;
  v6 = a1[4];
  FigSimpleMutexLock();
  if (a1[10])
  {
    APTPacingControllerYieldOnQueueWithContinuationFunction_cold_1();
    v12 = 4294960587;
    goto LABEL_15;
  }

  a1[10] = a2;
  a1[11] = a3;
  v7 = a1[7];
  if (!v7)
  {
    a1[7] = 0;
    v7 = 0;
  }

  if (gLogCategory_APTPacingController <= 30)
  {
    if (gLogCategory_APTPacingController != -1 || (v8 = _LogCategory_Initialize(), v7 = a1[7], v8))
    {
      v19 = a1[8];
      LogPrintF();
      v7 = a1[7];
    }
  }

  v9 = a1[8];
  if (v9)
  {
    v10 = a1[9];
    if (v10 == -1)
    {
      v9 = 0;
    }

    else
    {
      v9 = (1000000000.0 / v10 * v9);
    }
  }

  v11 = v9 + v7;
  a1[12] = v11;
  if (v11 >= a1[3])
  {
    CFRetain(a1);
    v14 = a1[6];
    v15 = a1[12];
    v16 = dispatch_time_from_nsec();
    dispatch_source_set_timer(v14, v16, 0xFFFFFFFFFFFFFFFFLL, a1[2]);
    v12 = 0;
LABEL_15:
    v17 = a1[4];
    FigSimpleMutexUnlock();
    return v12;
  }

  pacingController_endYieldInternal(a1, 0, &v21, &v20);
  v12 = v21;
  v13 = a1[4];
  FigSimpleMutexUnlock();
  if (v12)
  {
    (v12)(v20);
    return 0;
  }

  return v12;
}

void *pacingController_endYieldInternal(void *result, uint64_t a2, void *a3, void *a4)
{
  v6 = result;
  v7 = result[7];
  v8 = a2 - v7;
  if ((a2 - v7) >= 0x3B9ACA00)
  {
    v9 = v7 + 1000000000 * (v8 / 0x3B9ACA00);
    v11 = result[8];
    v10 = result[9];
    v12 = v11 / (v8 / 0x3B9ACA00);
    v13 = v11 - v10 * (v8 / 0x3B9ACA00);
    if (v10 <= v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    result[7] = v9;
    result[8] = v14;
  }

  if (gLogCategory_APTPacingController <= 30)
  {
    if (gLogCategory_APTPacingController == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_10;
      }

      v15 = v6[7];
    }

    v16 = v6[8];
    result = LogPrintF();
  }

LABEL_10:
  *a3 = v6[10];
  v6[10] = 0;
  *a4 = v6[11];
  v6[11] = 0;
  return result;
}

uint64_t APTPacingControllerYieldOnQueueWithContinuationBlock(uint64_t *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  if (v3)
  {
    v4 = v3;
    v5 = APTPacingControllerYieldOnQueueWithContinuationFunction(a1, pacingController_runAndReleaseBlock, v3);
    v6 = v5;
    if (v5)
    {
      APTPacingControllerYieldOnQueueWithContinuationBlock_cold_1(v5, v4);
    }
  }

  else
  {
    APTPacingControllerYieldOnQueueWithContinuationBlock_cold_2();
    return 4294960568;
  }

  return v6;
}

void pacingController_runAndReleaseBlock(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

void pacingController_updateYieldTimerIfNeededAsync(uint64_t a1)
{
  dispatch_time_to_nsec();
  v10 = 0;
  v11 = 0;
  v2 = *(a1 + 32);
  FigSimpleMutexLock();
  if (!*(a1 + 80))
  {
    goto LABEL_14;
  }

  if (gLogCategory_APTPacingController <= 30 && (gLogCategory_APTPacingController != -1 || _LogCategory_Initialize()))
  {
    pacingController_updateYieldTimerIfNeededAsync_cold_1(a1);
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 72);
    if (v5 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = (1000000000.0 / v5 * v4);
    }
  }

  v6 = v4 + v3;
  if (v4 + v3 + *(a1 + 16) > *(a1 + 96))
  {
    goto LABEL_14;
  }

  *(a1 + 96) = v6;
  if (v6 >= *(a1 + 24))
  {
    pacingController_updateYieldTimerIfNeededAsync_cold_2(v6, (a1 + 16), *(a1 + 48));
LABEL_14:
    v9 = *(a1 + 32);
    FigSimpleMutexUnlock();
    goto LABEL_12;
  }

  dispatch_source_set_timer(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  pacingController_endYieldInternal(a1, 0, &v11, &v10);
  v7 = v11;
  v8 = *(a1 + 32);
  FigSimpleMutexUnlock();
  if (v7)
  {
    v7(v10);
  }

LABEL_12:
  CFRelease(a1);
}

uint64_t _APTPacingControllerFinalize(uint64_t a1)
{
  if (gLogCategory_APTPacingController <= 30 && (gLogCategory_APTPacingController != -1 || _LogCategory_Initialize()))
  {
    _APTPacingControllerFinalize_cold_1();
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(a1 + 48));
  }

  v4 = *(a1 + 32);

  return FigSimpleMutexDestroy();
}

uint64_t APTransportPackageTCPCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  v2 = APTransportPackageTCPCreateWithBBuf(a1, 0, a2);
  if (v2)
  {
    APTransportPackageTCPCreate_cold_1();
  }

  return v2;
}

uint64_t APTransportPackageTCPCreateWithBBuf(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  blockBufferOut = 0;
  cf = 0;
  APTransportPackageGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v13 = v6;
    APTransportPackageTCPCreateWithBBuf_cold_1();
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = APTransportParcelMake(0x20uLL, 0, DerivedStorage);
  if (v8)
  {
    v13 = v8;
    APTransportPackageTCPCreateWithBBuf_cold_2();
    goto LABEL_12;
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  v15 = 0u;
  v16 = 0u;
  v9 = CMBlockBufferCopyDataBytes(a2, 0, 0x20uLL, &v15);
  if (v9)
  {
    v13 = v9;
    APTransportPackageTCPCreateWithBBuf_cold_3();
    goto LABEL_12;
  }

  APTransportParcelSetMessageType(*DerivedStorage, bswap32(v16));
  DerivedStorage[1] = bswap64(*(&v15 + 1));
  *(DerivedStorage + 4) = bswap32(DWORD1(v15));
  DerivedStorage[3] = bswap64(*(&v16 + 4));
  *(DerivedStorage + 8) = bswap32(HIDWORD(v16));
  if (CMBlockBufferGetDataLength(a2) < 0x21)
  {
    goto LABEL_25;
  }

  DataLength = CMBlockBufferGetDataLength(a2);
  v11 = CMBlockBufferCreateWithBufferReference(a1, a2, 0x20uLL, DataLength - 32, 0, &blockBufferOut);
  if (v11)
  {
    v13 = v11;
    APTransportPackageTCPCreateWithBBuf_cold_4();
    goto LABEL_12;
  }

  v12 = APTransportParcelSetMessageData(*DerivedStorage, blockBufferOut);
  if (v12)
  {
    v13 = v12;
    APTransportPackageTCPCreateWithBBuf_cold_5();
  }

  else
  {
LABEL_25:
    if (gLogCategory_APTransportPackageTCP <= 30 && (gLogCategory_APTransportPackageTCP != -1 || _LogCategory_Initialize()))
    {
      APTransportPackageTCPCreateWithBBuf_cold_6(&cf);
    }

    v13 = 0;
    *a3 = cf;
    cf = 0;
  }

LABEL_12:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t APTransportPackageTCPCreateWithMessageSize(uint64_t a1, size_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    APTransportPackageGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v8 = v5;
      APTransportPackageTCPCreateWithMessageSize_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = APTransportParcelMake(0x20uLL, a2, DerivedStorage);
      if (v7)
      {
        v8 = v7;
        APTransportPackageTCPCreateWithMessageSize_cold_2();
      }

      else
      {
        if (gLogCategory_APTransportPackageTCP <= 30 && (gLogCategory_APTransportPackageTCP != -1 || _LogCategory_Initialize()))
        {
          APTransportPackageTCPCreateWithMessageSize_cold_3(&cf);
        }

        v8 = 0;
        *a3 = cf;
      }
    }
  }

  else
  {
    APTransportPackageTCPCreateWithMessageSize_cold_4();
    return 4294894936;
  }

  return v8;
}

uint64_t APTransportPackageTCPGetHeaderSize(_DWORD *a1)
{
  if (a1)
  {
    result = 0;
    *a1 = 32;
  }

  else
  {
    v6 = v1;
    v7 = v2;
    APTransportPackageTCPGetHeaderSize_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t APTransportPackageTCPGetPayloadSize(OpaqueCMBlockBuffer *a1, _DWORD *a2)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (!a2)
  {
    APTransportPackageTCPGetPayloadSize_cold_4(&v8);
    return v8;
  }

  if (!a1)
  {
    APTransportPackageTCPGetPayloadSize_cold_3(&v8);
    return v8;
  }

  DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    v4 = DataPointer;
    APTransportPackageTCPGetPayloadSize_cold_1();
  }

  else if (lengthAtOffsetOut == 32)
  {
    v4 = 0;
    *a2 = bswap32(*dataPointerOut) - 32;
  }

  else
  {
    APTransportPackageTCPGetPayloadSize_cold_2();
    return 4294894936;
  }

  return v4;
}

void tcppackage_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageTCP <= 30 && (gLogCategory_APTransportPackageTCP != -1 || _LogCategory_Initialize()))
  {
    tcppackage_Finalize_cold_1();
  }

  APTransportParcelFree(*DerivedStorage);
  *DerivedStorage = 0;
}

__CFString *tcppackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportPackageTCP %p>", a1);
  return Mutable;
}

const void *tcppackage_CopyMessageData()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  v2 = MessageData;
  if (MessageData)
  {
    CFRetain(MessageData);
  }

  return v2;
}

uint64_t tcppackage_SetMessageData(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageData(v3, a2);
}

uint64_t tcppackage_GetMessageType()
{
  v0 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelGetMessageType(v0);
}

uint64_t tcppackage_SetMessageType(uint64_t a1, int a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageType(v3, a2);
}

uint64_t tcppackage_SetReplyToken(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 24) = a2;
  return result;
}

CMBlockBufferRef tcppackage_CreateBBufRepresentation()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  MessageType = APTransportParcelGetMessageType(*DerivedStorage);
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  DataLength = CMBlockBufferGetDataLength(MessageData);
  v4 = bswap32(*(DerivedStorage + 16));
  v8[0] = bswap32(DataLength + 32);
  v8[1] = v4;
  v5 = *DerivedStorage;
  v9 = bswap64(*(DerivedStorage + 8));
  v10 = bswap32(MessageType);
  v11 = bswap64(*(DerivedStorage + 24));
  v12 = bswap32(*(DerivedStorage + 32));
  APTransportParcelCreateBBufRepresentation(v5, *MEMORY[0x277CBECE8], v8, &v7);
  return v7;
}

uint64_t tcppackage_SetGroupID(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = a2;
  return result;
}

uint64_t tcppackage_SetPackageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 16) = a2;
  return result;
}

uint64_t tcppackage_SetReplyStatus(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 32) = a2;
  return result;
}

uint64_t APTConnectionListenerGetTypeID()
{
  if (_MergedGlobals_7 != -1)
  {
    APTConnectionListenerGetTypeID_cold_1();
  }

  return qword_281309BA0;
}

uint64_t connectionlistener_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTConnectionListenerCreate(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    APTConnectionListenerCreate_cold_6(label);
LABEL_13:
    result = *label;
    goto LABEL_9;
  }

  if (!a3)
  {
    APTConnectionListenerCreate_cold_5(label);
    goto LABEL_13;
  }

  if (!a7)
  {
    APTConnectionListenerCreate_cold_4(label);
    goto LABEL_13;
  }

  v16 = *MEMORY[0x277CBECE8];
  if (_MergedGlobals_7 != -1)
  {
    APTConnectionListenerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v18 = Instance;
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    SNPrintF();
    v19 = dispatch_queue_create(label, 0);
    *(v18 + 2) = v19;
    if (v19)
    {
      result = 0;
      *(v18 + 6) = a1;
      *(v18 + 7) = a2;
      *(v18 + 4) = a3;
      *(v18 + 5) = a4;
      *(v18 + 6) = a5;
      *(v18 + 7) = a6;
      *(v18 + 8) = a7;
      *a8 = v18;
    }

    else
    {
      APTConnectionListenerCreate_cold_2(v18, &v22);
      result = v22;
    }
  }

  else
  {
    APTConnectionListenerCreate_cold_3();
    result = 4294895436;
  }

LABEL_9:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APTConnectionListenerResume(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  dispatch_sync_f(*(a1 + 16), &v2, connectionlistener_resumeInternal);
  return v3;
}

uint64_t APTConnectionListenerGetListeningPort(uint64_t a1, _DWORD *a2)
{
  context = a1;
  v5 = 0xFFFFFFFFLL;
  if (a2)
  {
    dispatch_sync_f(*(a1 + 16), &context, connectionlistener_getListeningPortInternal);
    result = HIDWORD(v5);
    if (HIDWORD(v5))
    {
      APSLogErrorAt();
      return HIDWORD(v5);
    }

    else
    {
      *a2 = v5;
    }
  }

  else
  {
    APTConnectionListenerGetListeningPort_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t APTConnectionListenerInvalidate(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  dispatch_sync_f(*(a1 + 16), &v2, connectionlistener_invalidateInternal);
  return v3;
}

void connectionlistener_Finalize(uint64_t a1)
{
  connectionlistener_cleanUp(a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }
}

void connectionlistener_cleanUp(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    dispatch_source_cancel(*(a1 + 80));
    dispatch_release(v3);
    *(a1 + 80) = 0;
  }
}

void connectionlistener_listenerSocketEventHandler(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v6 = -1;
  memset(v5, 0, sizeof(v5));
  if (*(v1 + 89))
  {
    goto LABEL_14;
  }

  if (SocketAccept())
  {
    connectionlistener_listenerSocketEventHandler_cold_1();
LABEL_14:
    connectionlistener_listenerSocketEventHandler_cold_4(&v6);
    return;
  }

  if (gLogCategory_APTConnectionListener <= 40 && (gLogCategory_APTConnectionListener != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7[0] = *v5;
  *(v7 + 12) = *&v5[12];
  v8 = v1;
  v9 = v6;
  v11 = 0uLL;
  v10 = 0;
  v3 = APSNetworkAddressCreateWithSocketAddr();
  if (v3)
  {
    connectionlistener_listenerSocketEventHandler_cold_2();
  }

  else
  {
    v11 = *(v1 + 32);
    CFRetain(v1);
    CFRetain(v10);
    v4 = *(v1 + 64);
    APSDispatchAsyncFHelper();
  }

  if (v3)
  {
    connectionlistener_listenerSocketEventHandler_cold_3();
    goto LABEL_14;
  }
}

void connectionlistener_listenerSocketCancelHandler(_DWORD *a1)
{
  v2 = a1[2];
  if ((v2 & 0x80000000) == 0 && close(v2) && *__error())
  {
    __error();
  }

  free(a1);
}

void connectionlistener_deferCallConnectedCallback(uint64_t a1)
{
  (*(a1 + 24))(*a1, *(a1 + 32), *(a1 + 8), *(a1 + 16));
  CFRelease(*(a1 + 16));
  v2 = *a1;

  CFRelease(v2);
}

void connectionlistener_deferCallInvalidatedCallback(uint64_t a1)
{
  (*(a1 + 8))(*a1, *(a1 + 16));
  v2 = *a1;

  CFRelease(v2);
}

uint64_t APTransportKeepAliveControllerGetClassID()
{
  if (_MergedGlobals_8 != -1)
  {
    APTransportKeepAliveControllerGetClassID_cold_1();
  }

  return qword_281309BB0;
}

uint64_t APTransportKeepAliveControllerGetClassIDCallback(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APTransportKeepAliveControllerGetClassIDCallback_sClassDesc, ClassID, 1, a1);
}

void sub_23D2F59E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D2F5DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHMMutableHomeManagerConfigurationClass_block_invoke(uint64_t a1)
{
  HomeKitLibrary();
  result = objc_getClass("HMMutableHomeManagerConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getHMMutableHomeManagerConfigurationClass_block_invoke_cold_1();
  }

  getHMMutableHomeManagerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void HomeKitLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HomeKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278BC8428;
    v3 = 0;
    HomeKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    HomeKitLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __HomeKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HomeKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHMHomeManagerClass_block_invoke(uint64_t a1)
{
  HomeKitLibrary();
  result = objc_getClass("HMHomeManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getHMHomeManagerClass_block_invoke_cold_1();
  }

  getHMHomeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t APTransportConnectionUnbufferedNWCreate(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    APTransportConnectionUnbufferedNWCreate_cold_15();
    v20 = 4294894974;
    goto LABEL_57;
  }

  APTransportConnectionGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v20 = v9;
    APTransportConnectionUnbufferedNWCreate_cold_1();
    v18 = 0;
    goto LABEL_55;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gAPTransportConnectionUnbufferedNWGutsInitOnce != -1)
  {
    APTransportConnectionUnbufferedNWCreate_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  *DerivedStorage = Instance;
  if (!Instance)
  {
    APTransportConnectionUnbufferedNWCreate_cold_14();
    v18 = 0;
    v20 = 4294960568;
    goto LABEL_55;
  }

  Instance[28] = 0u;
  Instance[29] = 0u;
  Instance[26] = 0u;
  Instance[27] = 0u;
  Instance[24] = 0u;
  Instance[25] = 0u;
  Instance[22] = 0u;
  Instance[23] = 0u;
  Instance[20] = 0u;
  Instance[21] = 0u;
  Instance[18] = 0u;
  Instance[19] = 0u;
  Instance[16] = 0u;
  Instance[17] = 0u;
  Instance[14] = 0u;
  Instance[15] = 0u;
  Instance[12] = 0u;
  Instance[13] = 0u;
  Instance[10] = 0u;
  Instance[11] = 0u;
  Instance[8] = 0u;
  Instance[9] = 0u;
  Instance[6] = 0u;
  Instance[7] = 0u;
  Instance[4] = 0u;
  Instance[5] = 0u;
  Instance[2] = 0u;
  Instance[3] = 0u;
  Instance[1] = 0u;
  v12 = *DerivedStorage;
  *(v12 + 16) = 0;
  *(v12 + 24) = a3;
  *(v12 + 28) = 0;
  if (APSSettingsGetInt64())
  {
    *(v12 + 32) = 1601528944;
    v13 = (v12 + 32);
    goto LABEL_8;
  }

  if (a5)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    *(v12 + 32) = Int64Ranged;
  }

  else
  {
    Int64Ranged = *(v12 + 32);
  }

  v13 = (v12 + 32);
  if (Int64Ranged > 1601528943)
  {
    if (Int64Ranged == 1601528944)
    {
      goto LABEL_8;
    }

    v37 = 1903520099;
  }

  else
  {
    if (!Int64Ranged)
    {
      *v13 = 1601463152;
      goto LABEL_8;
    }

    v37 = 1601463152;
  }

  if (Int64Ranged != v37)
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 90)
    {
      if (gLogCategory_APTransportConnectionUnbufferedNW == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_70;
        }

        v39 = *v13;
      }

      LogPrintF();
    }

LABEL_70:
    v18 = 0;
    v20 = 4294894974;
    goto LABEL_55;
  }

LABEL_8:
  if (gLogCategory_APTransportConnectionUnbufferedNW <= 50)
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v38 = *v13;
    }

    LogPrintF();
  }

LABEL_14:
  if (a5)
  {
    v15 = CFDictionaryGetInt64Ranged();
    *(v12 + 36) = CFDictionaryGetInt64() != 0;
    if (CFDictionaryGetInt64())
    {
      v16 = *v13 == 1601463152;
    }

    else
    {
      v16 = 0;
    }

    *(v12 + 37) = v16;
    if (CFDictionaryGetInt64())
    {
      v17 = *v13 == 1601463152;
    }

    else
    {
      v17 = 0;
    }

    *(v12 + 38) = v17;
    *(v12 + 39) = CFDictionaryGetInt64() != 0;
  }

  else
  {
    v15 = 0;
  }

  *(v12 + 40) = 125 * APSSettingsGetIntWithDefault();
  if (!IsAppleInternalBuild())
  {
    v18 = 0;
    goto LABEL_28;
  }

  v18 = CFStringCreateF();
  if (v18)
  {
    v19 = APSStallMonitorActivityCreate();
    if (v19)
    {
      v20 = v19;
      APTransportConnectionUnbufferedNWCreate_cold_3();
      goto LABEL_55;
    }

LABEL_28:
    v21 = *v13;
    if (*v13 == 1601463152)
    {
      v22 = nw_protocol_copy_tcp_definition();
    }

    else if (v21 == 1601528944)
    {
      v22 = nw_protocol_copy_udp_definition();
    }

    else
    {
      if (v21 != 1903520099)
      {
        if (*(v12 + 56))
        {
LABEL_35:
          v23 = nw_protocol_copy_ip_definition();
          *(v12 + 64) = v23;
          if (v23)
          {
            v24 = FigSimpleMutexCreate();
            *(v12 + 72) = v24;
            if (v24)
            {
              v25 = FigSimpleMutexCreate();
              *(v12 + 320) = v25;
              if (v25)
              {
                v26 = APTransportConnectionCopyNWContextForType(v15);
                *(v12 + 392) = v26;
                if (v26)
                {
                  SNPrintF();
                  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
                  v28 = dispatch_queue_create(label, initially_inactive);
                  *(v12 + 400) = v28;
                  if (v28)
                  {
                    v29 = *(v12 + 392);
                    nw_queue_context_target_dispatch_queue();
                    dispatch_activate(*(v12 + 400));
                    *(v12 + 436) = 1;
                    v30 = *(v12 + 32);
                    if (APSSettingsGetIntWithDefault() && (v31 = APTPacingControllerCreate(*(v12 + 400), (v12 + 440)), v31))
                    {
                      v20 = v31;
                      APTransportConnectionUnbufferedNWCreate_cold_5();
                    }

                    else
                    {
                      v32 = APSFlatQueueCreate();
                      if (v32)
                      {
                        v20 = v32;
                        APTransportConnectionUnbufferedNWCreate_cold_6();
                      }

                      else if (*(v12 + 38) && (v33 = APSFlatQueueCreate(), v33))
                      {
                        v20 = v33;
                        APTransportConnectionUnbufferedNWCreate_cold_7();
                      }

                      else
                      {
                        if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF();
                        }

                        if (*(v12 + 36))
                        {
                          v34 = 5;
                        }

                        else
                        {
                          v34 = 3;
                        }

                        APTTrafficMetricsCreate(&gLogCategory_APTransportConnectionUnbufferedNW, 0, (v12 + 448), v34);
                        v20 = 0;
                        *a6 = 0;
                      }
                    }
                  }

                  else
                  {
                    v20 = 4294894973;
                    APTransportConnectionUnbufferedNWCreate_cold_8();
                  }
                }

                else
                {
                  v20 = 4294894973;
                  APTransportConnectionUnbufferedNWCreate_cold_9();
                }
              }

              else
              {
                v20 = 4294894973;
                APTransportConnectionUnbufferedNWCreate_cold_10();
              }
            }

            else
            {
              v20 = 4294894973;
              APTransportConnectionUnbufferedNWCreate_cold_11();
            }
          }

          else
          {
            v20 = 4294894973;
            APTransportConnectionUnbufferedNWCreate_cold_12();
          }

          goto LABEL_55;
        }

        goto LABEL_49;
      }

      v22 = nw_protocol_copy_quic_definition();
    }

    *(v12 + 56) = v22;
    if (v22)
    {
      goto LABEL_35;
    }

LABEL_49:
    v20 = 4294894973;
    APTransportConnectionUnbufferedNWCreate_cold_13();
    goto LABEL_55;
  }

  v20 = 4294894973;
  APTransportConnectionUnbufferedNWCreate_cold_4();
LABEL_55:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_57:
  v35 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t unbufnwTrackingWindowItem_Copy(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    CFRetain(v5);
  }

  *a3 = *a2;
  return 0;
}

uint64_t unbufnwTrackingWindowItem_Free(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

uint64_t unbufnw_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  unbufnwGuts_invalidate(*DerivedStorage);
  return 0;
}

void unbufnw_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    unbufnwGuts_invalidate(*DerivedStorage);
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t unbufnwGuts_invalidate(uint64_t a1)
{
  v2 = *(a1 + 320);
  FigSimpleMutexLock();
  v3 = *(a1 + 72);
  FigSimpleMutexLock();
  unbufnwGuts_invalidateInternal(a1);
  v4 = *(a1 + 72);
  FigSimpleMutexUnlock();
  v5 = *(a1 + 320);

  return FigSimpleMutexUnlock();
}

uint64_t unbufnwGuts_handleDataPacingRateDidChange(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  FigSimpleMutexLock();
  unbufnwGuts_updateDataPacingInternal(a2);
  v4 = *(a2 + 72);

  return FigSimpleMutexUnlock();
}

void unbufnwGuts_drainEventQueueAsyncOnCallbackQueue(const void *a1, NSObject *a2)
{
  CFRetain(a1);
  dispatch_retain(a2);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __unbufnwGuts_drainEventQueueAsyncOnCallbackQueue_block_invoke;
  v4[3] = &__block_descriptor_tmp_20_0;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_async(a2, v4);
}

uint64_t __unbufnwGuts_drainEventQueueAsyncOnCallbackQueue_block_invoke_2(uint64_t a1, CFArrayRef theArray)
{
  CFArrayGetValueAtIndex(theArray, 0);
  v3 = CFGetInt64();
  ValueAtIndex = FigCFArrayGetValueAtIndex();
  v5 = *(a1 + 32);
  v7 = *(v5 + 360);
  v6 = *(v5 + 368);

  return v7(v3, ValueAtIndex, v6);
}

void __unbufnwGuts_connectionReceivePackages_block_invoke(uint64_t a1, dispatch_data_t data, NSObject *a3, int a4, NSObject *a5)
{
  v10 = *(*(a1 + 32) + 448);
  if (data)
  {
    dispatch_data_get_size(data);
    if (!a5)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a5)
  {
LABEL_3:
    nw_error_get_error_code(a5);
  }

LABEL_5:
  APTTrafficMetricsMessageReadFinished(v10);
  unbufnwGuts_connectionHandlePackageHeader(*(a1 + 32), data, a3, 1, a4, a5);
  v11 = *(a1 + 32);
  if (a4)
  {

    CFRelease(v11);
  }

  else
  {
    v12 = v11[56];

    APTTrafficMetricsMessageReadStarted(v12);
  }
}

void unbufnwGuts_connectionHandlePackageHeader(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4, int a5, uint64_t a6)
{
  dataPointerOut = 0;
  maximum_length = 0;
  if (!unbufnwGuts_connectionHandlePotentialDisconnect(a1))
  {
    if (!a2)
    {
      unbufnwGuts_connectionHandlePackageHeader_cold_5(a1, a5);
      return;
    }

    if (*(a1 + 39))
    {
      if (!*(a1 + 472))
      {
        *(a1 + 472) = mach_get_times() == 0;
      }
    }

    if (*(a1 + 176))
    {
      DataPointer = CMBlockBufferGetDataPointer(*(a1 + 256), 0, 0, 0, &dataPointerOut);
      if (DataPointer)
      {
        v20 = DataPointer;
        unbufnwGuts_connectionHandlePackageHeader_cold_1();
        goto LABEL_25;
      }

      v12 = *(a1 + 176);
      v13 = APSDispatchDataCopyBytes();
      if (v13)
      {
        v20 = v13;
        unbufnwGuts_connectionHandlePackageHeader_cold_2();
        goto LABEL_25;
      }

      v14 = (*(a1 + 200))(*(a1 + 256), &maximum_length);
      if (v14)
      {
        v20 = v14;
        unbufnwGuts_connectionHandlePackageHeader_cold_3();
        goto LABEL_25;
      }

      size = maximum_length;
      if (maximum_length)
      {
LABEL_11:
        if (*(a1 + 32) != 1601528944)
        {
          CFRetain(a1);
          APTTrafficMetricsMessageReadStarted(*(a1 + 448));
          v16 = *(a1 + 248);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 0x40000000;
          v21[2] = __unbufnwGuts_connectionHandlePackageHeader_block_invoke;
          v21[3] = &__block_descriptor_tmp_33;
          v21[4] = a1;
          v21[5] = a6;
          v22 = a5;
          nw_connection_receive(v16, maximum_length, maximum_length, v21);
          return;
        }

        subrange = dispatch_data_create_subrange(a2, *(a1 + 176), size);
        if (subrange)
        {
          v18 = subrange;
          unbufnwGuts_connectionHandlePackagePayload(a1, subrange, a3, 1, a5);
          dispatch_release(v18);
          return;
        }

        unbufnwGuts_connectionHandlePackageHeader_cold_4();
        v20 = -72323;
LABEL_25:
        APTTrafficMetricsMessageProcessed(*(a1 + 448));
        unbufnwGuts_updateStatus(a1, v20);
        return;
      }
    }

    else
    {
      size = dispatch_data_get_size(a2);
      maximum_length = size;
      if (size)
      {
        goto LABEL_11;
      }
    }

    unbufnwGuts_connectionHandlePackagePayload(a1, MEMORY[0x277D85CC8], 0, 1, a5);
    return;
  }

  v19 = *(a1 + 448);

  APTTrafficMetricsMessageProcessed(v19);
}

void __unbufnwGuts_connectionReceivePackages_block_invoke_2(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4, nw_error_t error)
{
  v10 = *(a1 + 32);
  v11 = *(v10 + 448);
  v12 = *(v10 + 176);
  if (error)
  {
    nw_error_get_error_code(error);
  }

  APTTrafficMetricsMessageReadFinished(v11);
  unbufnwGuts_connectionHandlePackageHeader(*(a1 + 32), a2, a3, a4, 1, error);
  v13 = *(a1 + 32);

  CFRelease(v13);
}

uint64_t APTransportPackageSetArrivalTicks(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 176);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t unbufnw_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *DerivedStorage;
  if (*(*DerivedStorage + 312) == 5)
  {
    v12 = *(v11 + 248);
    v13 = nw_connection_copy_connected_path();
    v14 = nw_path_copy_effective_local_endpoint(v13);
    v15 = nw_path_copy_effective_remote_endpoint(v13);
    v16 = *(v11 + 32);
    address = nw_endpoint_get_address(v14);
    v18 = nw_endpoint_get_address(v15);
    v19 = (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (UnbufferedNW:%C) %''@ Ports:%##a -> %##a Parent:[%{ptr}]\n", a1, v16, a4, address, v18, a2);
  }

  else
  {
    v19 = (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (UnbufferedNW:%C) %''@ (Not Connected) Parent:[%{ptr}]\n", a1, *(v11 + 32), a4, a2);
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  nw_release(v13);
  nw_release(v14);
  nw_release(v15);
  return v19;
}

uint64_t unbufnw_AddEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a5)
    {
      v11 = 4294894974;
      unbufnw_AddEventCallback_cold_1();
    }

    else
    {
      v10 = *DerivedStorage;
      if (!a4)
      {
        a4 = v10[50];
      }

      unbufnwGuts_setEventCallback(v10, a2, a3, a4);
      return 0;
    }
  }

  else
  {
    v11 = 4294894974;
    unbufnw_AddEventCallback_cold_2();
  }

  return v11;
}

uint64_t unbufnw_RemoveEventCallback(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    unbufnw_RemoveEventCallback_cold_1();
    return 4294894974;
  }

  else
  {
    unbufnwGuts_setEventCallback(*DerivedStorage, 0, 0, 0);
    return 0;
  }
}

uint64_t unbufnw_SetReadyToSendCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = *(*DerivedStorage + 320);
  FigSimpleMutexLock();
  v6[41] = a2;
  v6[42] = a3;
  if (a2)
  {
    v8 = unbufnwGuts_readyToSendBatchSlow;
  }

  else
  {
    v8 = 0;
  }

  v6[43] = v8;
  v6[44] = v6;
  v9 = v6[40];
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t unbufnw_SignalDataAvailable()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  CFRetain(v0);
  v1 = v0[50];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __unbufnw_SignalDataAvailable_block_invoke;
  block[3] = &__block_descriptor_tmp_95;
  block[4] = v0;
  dispatch_async(v1, block);
  return 0;
}

uint64_t unbufnw_SetReadyToSendBatchCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = *(*DerivedStorage + 320);
  FigSimpleMutexLock();
  v6[41] = 0;
  v6[42] = 0;
  v6[43] = a2;
  v6[44] = a3;
  v8 = v6[40];
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t unbufnwGuts_handleNewConnectionInternal(uint64_t a1, NSObject *obj)
{
  if (*(a1 + 248))
  {
    unbufnwGuts_handleNewConnectionInternal_cold_1(obj);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v11 = 4294894954;
  }

  else
  {
    *(a1 + 248) = nw_retain(obj);
    v4 = nw_connection_copy_parameters(obj);
    v5 = nw_parameters_copy_required_interface(v4);
    v6 = nw_connection_copy_endpoint(obj);
    if (!v5)
    {
      v5 = nw_endpoint_copy_interface();
    }

    v7 = nw_connection_copy_description(obj);
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
    {
      v8 = *(a1 + 16);
      nw_endpoint_get_address(v6);
      if (v5)
      {
        nw_interface_get_name(v5);
      }

      LogPrintF();
    }

    CFRetain(a1);
    nw_connection_set_queue(obj, *(a1 + 400));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __unbufnwGuts_handleNewConnectionInternal_block_invoke;
    handler[3] = &__block_descriptor_tmp_61;
    handler[4] = a1;
    nw_connection_set_state_changed_handler(obj, handler);
    *(a1 + 224) = mach_absolute_time();
    nw_connection_start(obj);
    v9 = *(a1 + 240);
    if (v9)
    {
      nw_connection_group_cancel(v9);
    }

    v10 = *(a1 + 232);
    if (v10)
    {
      nw_listener_cancel(v10);
    }

    v11 = 0;
  }

  free(v7);
  nw_release(v4);
  nw_release(v5);
  nw_release(v6);
  return v11;
}

uint64_t unbufnwGuts_handleNewConnectionGroupInternal(uint64_t a1, nw_connection_group_t group)
{
  if (*(a1 + 240))
  {
    v6 = 4294894954;
    unbufnwGuts_handleNewConnectionGroupInternal_cold_1(group);
    v4 = 0;
    goto LABEL_9;
  }

  v4 = nw_connection_group_copy_descriptor(group);
  if (!v4)
  {
    unbufnwGuts_handleNewConnectionGroupInternal_cold_2();
    v6 = 4294894973;
    goto LABEL_9;
  }

  *(a1 + 240) = nw_retain(group);
  CFRetain(a1);
  nw_connection_group_set_queue(group, *(a1 + 400));
  type = nw_group_descriptor_get_type();
  if (type == 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_3;
    v9[3] = &__block_descriptor_tmp_80;
    v9[4] = a1;
    v9[5] = group;
    nw_connection_group_set_state_changed_handler(group, v9);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_4;
    v8[3] = &__block_descriptor_tmp_82_0;
    v8[4] = a1;
    nw_connection_group_set_receive_handler(group, 0xFFFFu, 1, v8);
    *(a1 + 224) = mach_absolute_time();
  }

  else
  {
    if (type != 2)
    {
      v6 = 4294894974;
      goto LABEL_9;
    }

    state_changed_handler[0] = MEMORY[0x277D85DD0];
    state_changed_handler[1] = 0x40000000;
    state_changed_handler[2] = __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke;
    state_changed_handler[3] = &__block_descriptor_tmp_78;
    state_changed_handler[4] = a1;
    state_changed_handler[5] = group;
    nw_connection_group_set_state_changed_handler(group, state_changed_handler);
    nw_connection_group_set_new_connection_limit();
    new_connection_handler[0] = MEMORY[0x277D85DD0];
    new_connection_handler[1] = 0x40000000;
    new_connection_handler[2] = __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_2;
    new_connection_handler[3] = &__block_descriptor_tmp_79_0;
    new_connection_handler[4] = a1;
    nw_connection_group_set_new_connection_handler(group, new_connection_handler);
  }

  nw_connection_group_start(group);
  v6 = 0;
LABEL_9:
  nw_release(v4);
  return v6;
}

void __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke(uint64_t a1, int a2, nw_error_t error)
{
  v4 = *(a1 + 32);
  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  *(v4 + 408) = a2;
  if (error_code)
  {
    v6 = 90;
  }

  else
  {
    v6 = 50;
  }

  if (v6 >= gLogCategory_APTransportConnectionUnbufferedNW && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    v7 = *(v4 + 16);
    nw_connection_group_state_to_string();
    LogPrintF();
  }

  if (a2 == 4)
  {

    CFRelease(v4);
  }
}

uint64_t __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_2(uint64_t a1, NSObject *a2)
{
  v4 = *(*(a1 + 32) + 72);
  FigSimpleMutexLock();
  unbufnwGuts_handleNewConnectionInternal(*(a1 + 32), a2);
  v5 = *(*(a1 + 32) + 72);

  return FigSimpleMutexUnlock();
}

void __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_4(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  *(v4 + 472) = 0;
  unbufnwGuts_connectionHandlePackageHeader(v4, a2, a3, a4, 0, 0);
}

uint64_t unbufnwGuts_setEventCallback(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = a1[40];
  FigSimpleMutexLock();
  if (a3)
  {
    if (a4)
    {
      if (a1[47] != a4)
      {
        v9 = a1[48];
        if (v9)
        {
          if (CFArrayGetCount(v9) >= 1)
          {
            unbufnwGuts_drainEventQueueAsyncOnCallbackQueue(a1, a4);
          }
        }
      }
    }
  }

  else
  {
    v10 = a1[48];
    if (v10)
    {
      CFRelease(v10);
      a1[48] = 0;
    }
  }

  v11 = a1[47];
  if (v11)
  {
    dispatch_release(v11);
  }

  if (a4)
  {
    dispatch_retain(a4);
  }

  a1[45] = a3;
  a1[46] = a2;
  a1[47] = a4;
  v12 = a1[40];

  return FigSimpleMutexUnlock();
}

uint64_t _APTransportConnectionUnbufferedNWGutsGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPTransportConnectionUnbufferedNWGutsTypeID = result;
  return result;
}

void _APTransportConnectionUnbufferedNWGutsFinalize(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 448) = 0;
  }

  v3 = *(a1 + 72);
  FigSimpleMutexDestroy();
  v4 = *(a1 + 168);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 280);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 288);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 304);
  if (v9)
  {
    CFRelease(v9);
  }

  nw_release(*(a1 + 232));
  nw_release(*(a1 + 240));
  nw_release(*(a1 + 248));
  v10 = *(a1 + 256);
  if (v10)
  {
    CFRelease(v10);
  }

  nw_release(*(a1 + 264));
  v11 = *(a1 + 320);
  FigSimpleMutexDestroy();
  v12 = *(a1 + 376);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(a1 + 384);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 400);
  if (v14)
  {
    dispatch_release(v14);
  }

  nw_release(*(a1 + 392));
  v15 = *(a1 + 424);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 440);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    CFRelease(v17);
  }

  nw_release(*(a1 + 56));
  nw_release(*(a1 + 64));
  if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    _APTransportConnectionUnbufferedNWGutsFinalize_cold_1(a1);
  }
}

uint64_t APBrokerGroupGetTypeID()
{
  if (gAPBrokerGroupInitOnce != -1)
  {
    APBrokerGroupGetTypeID_cold_1();
  }

  return gAPBrokerGroupTypeID;
}

uint64_t _APBrokerGroupGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPBrokerGroupTypeID = result;
  return result;
}

uint64_t APBrokerGroupCreate(const void *a1, CFTypeRef *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  *label = 0u;
  v16 = 0u;
  if (!a2)
  {
    APBrokerGroupCreate_cold_9();
LABEL_20:
    v12 = 4294960591;
    goto LABEL_17;
  }

  if (!a1)
  {
    APBrokerGroupCreate_cold_8();
    goto LABEL_20;
  }

  if (gAPBrokerGroupInitOnce != -1)
  {
    APBrokerGroupGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APBrokerGroupCreate_cold_7();
    v12 = 4294960568;
    goto LABEL_17;
  }

  v5 = Instance;
  Instance[6] = 0u;
  Instance[7] = 0u;
  Instance[4] = 0u;
  Instance[5] = 0u;
  Instance[2] = 0u;
  Instance[3] = 0u;
  Instance[1] = 0u;
  *(Instance + 2) = CFRetain(a1);
  v6 = FigSimpleMutexCreate();
  v5[3] = v6;
  if (v6)
  {
    SNPrintF();
    v7 = dispatch_queue_create(label, 0);
    v5[12] = v7;
    if (v7)
    {
      SNPrintF();
      v8 = dispatch_queue_create(label, 0);
      v5[13] = v8;
      if (v8)
      {
        v9 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v5[5] = Mutable;
        if (Mutable)
        {
          v11 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v5[7] = v11;
          if (v11)
          {
            *a2 = CFRetain(v5);
            if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v12 = 0;
            goto LABEL_16;
          }

          APBrokerGroupCreate_cold_2();
        }

        else
        {
          APBrokerGroupCreate_cold_3();
        }
      }

      else
      {
        APBrokerGroupCreate_cold_4();
      }
    }

    else
    {
      APBrokerGroupCreate_cold_5();
    }
  }

  else
  {
    APBrokerGroupCreate_cold_6();
  }

  v12 = 4294960568;
LABEL_16:
  CFRelease(v5);
LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t APBrokerGroupInvalidate(uint64_t a1)
{
  v2 = *(a1 + 24);
  FigSimpleMutexLock();
  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 80) = 0;
  ++*(a1 + 88);
  v4 = *(a1 + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___APBrokerGroupStopReceiverPollingInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_67;
  block[4] = a1;
  dispatch_sync(v4, block);
  *(a1 + 32) = 1;
  v5 = *(a1 + 24);
  return FigSimpleMutexUnlock();
}

CFDictionaryRef APBrokerGroupCopyReceivers(uint64_t a1, int *a2)
{
  v4 = *(a1 + 24);
  FigSimpleMutexLock();
  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 56));
  if (Copy)
  {
    v6 = 0;
  }

  else
  {
    APBrokerGroupCopyReceivers_cold_1();
    v6 = -6728;
  }

  v7 = *(a1 + 24);
  FigSimpleMutexUnlock();
  if (a2)
  {
    *a2 = v6;
  }

  return Copy;
}

BOOL APBrokerGroupIsEmpty(uint64_t a1)
{
  v2 = *(a1 + 24);
  FigSimpleMutexLock();
  v3 = CFDictionaryGetCount(*(a1 + 40)) == 0;
  v4 = *(a1 + 24);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t APBrokerGroupSetDelegate(uint64_t a1, const void *a2, void *a3)
{
  v6 = *(a1 + 24);
  FigSimpleMutexLock();
  v7 = *(a1 + 80);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 80) = 0;
  ++*(a1 + 88);
  if (a3)
  {
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 80) = v8;
    *(a1 + 72) = *a3;
  }

  v9 = *(a1 + 24);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APBrokerGroupAddOrUpdateBroker(uint64_t a1, const void *a2)
{
  cf1 = 0;
  key = 0;
  value = 0;
  v4 = APBrokerCopyBrokerInfoFromBonjourInfo(a2, &key, &cf1);
  if (v4)
  {
    v11 = v4;
    APBrokerGroupAddOrUpdateBroker_cold_1();
    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  if (cf1 != v5 && (!cf1 || !v5 || !CFEqual(cf1, v5)))
  {
    APBrokerGroupAddOrUpdateBroker_cold_2();
    v11 = 4294960591;
    goto LABEL_23;
  }

  v6 = *(a1 + 24);
  FigSimpleMutexLock();
  v7 = CFDictionaryGetValue(*(a1 + 40), key);
  if (v7)
  {
    v8 = v7;
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = APBrokerUpdate(v8, a2);
    if (v11)
    {
      APBrokerGroupAddOrUpdateBroker_cold_3();
      goto LABEL_21;
    }

LABEL_19:
    if (!*(a1 + 48))
    {
      *(a1 + 48) = CFRetain(key);
      _APBrokerDoReceiverPollingIfNecessary(a1, 5);
    }

    goto LABEL_21;
  }

  v9 = APBrokerCreate(a2, &value);
  v10 = value;
  if (value)
  {
    v11 = v9;
    if (gLogCategory_APBrokerGroup <= 30)
    {
      if (gLogCategory_APBrokerGroup != -1 || (v12 = _LogCategory_Initialize(), v10 = value, v12))
      {
        LogPrintF();
        v10 = value;
      }
    }

    CFDictionarySetValue(*(a1 + 40), key, v10);
    goto LABEL_19;
  }

  APBrokerGroupAddOrUpdateBroker_cold_4();
  v11 = 4294960568;
LABEL_21:
  v13 = *(a1 + 24);
  FigSimpleMutexUnlock();
  if (value)
  {
    CFRelease(value);
  }

LABEL_23:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (key)
  {
    CFRelease(key);
  }

  return v11;
}

uint64_t APBrokerGroupRemoveBroker(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  v3 = APBrokerCopyBrokerInfoFromBonjourInfo(a2, &v14, &v13);
  if (v3)
  {
    v11 = v3;
    APBrokerGroupRemoveBroker_cold_1();
  }

  else
  {
    v4 = *(a1 + 16);
    if (v13 == v4 || v13 && v4 && CFEqual(v13, v4))
    {
      v5 = *(a1 + 24);
      FigSimpleMutexLock();
      Value = CFDictionaryGetValue(*(a1 + 40), v14);
      if (!Value)
      {
LABEL_20:
        v10 = *(a1 + 24);
        FigSimpleMutexUnlock();
        v11 = 0;
        goto LABEL_21;
      }

      v7 = Value;
      if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v8 = *(a1 + 48);
      if (v13 != v8)
      {
        if (!v13 || !v8 || !CFEqual(v13, v8))
        {
LABEL_18:
          APBrokerInvalidate(v7);
          CFDictionaryRemoveValue(*(a1 + 40), v14);
          if (!*(a1 + 48))
          {
            v9 = *(a1 + 40);
            CFDictionaryApplyBlock();
            if (!*(a1 + 48))
            {
              if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
              {
                APBrokerGroupRemoveBroker_cold_3();
              }

              _APBrokerGroupRemoveAllReceivers(a1);
            }
          }

          goto LABEL_20;
        }

        v8 = *(a1 + 48);
      }

      if (v8)
      {
        CFRelease(v8);
        *(a1 + 48) = 0;
      }

      goto LABEL_18;
    }

    APBrokerGroupRemoveBroker_cold_2();
    v11 = 4294960591;
  }

LABEL_21:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v11;
}

void *__APBrokerGroupRemoveBroker_block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if (!*(result[4] + 48))
  {
    v3 = result;
    GroupID = APBrokerGroupGetGroupID(a3);
    result = CFRetain(GroupID);
    *(v3[4] + 48) = result;
  }

  return result;
}

void APBrokerGroupAuthenticate(uint64_t a1, const void *a2, void *aBlock)
{
  v6 = gLogCategory_APBrokerGroup;
  if (gLogCategory_APBrokerGroup <= 50)
  {
    if (gLogCategory_APBrokerGroup == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v6 = gLogCategory_APBrokerGroup;
    }

    if (v6 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_9:
  v7 = _Block_copy(aBlock);
  v8 = *(a1 + 96);
  dispatch_retain(v8);
  v9 = CFRetain(*(a1 + 16));
  if (a2)
  {
    CFRetain(a2);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __APBrokerGroupAuthenticate_block_invoke;
  v11[3] = &__block_descriptor_tmp_12_1;
  v11[4] = a1;
  v11[5] = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __APBrokerGroupAuthenticate_block_invoke_2;
  v10[3] = &unk_278BC87B8;
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = v9;
  v10[7] = a2;
  _APBrokerGroupCallAllBrokers(a1, v11, v10);
}

void _APBrokerGroupCallAllBrokers(uint64_t a1, const void *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040425D96D4uLL);
  if (!v6)
  {
    _APBrokerGroupCallAllBrokers_cold_2();
    return;
  }

  v7 = v6;
  *v6 = a1;
  if (gLogCategory_APBrokerGroup <= 30)
  {
    if (gLogCategory_APBrokerGroup != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v13 = *v7;
      goto LABEL_4;
    }
  }

LABEL_6:
  v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v7[1] = v8;
  if (!v8)
  {
    v12 = 584;
LABEL_18:
    _APBrokerGroupCallAllBrokers_cold_1(v12, a3, a1, v7);
    return;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  v7[4] = Mutable;
  if (!Mutable)
  {
    v12 = 587;
    goto LABEL_18;
  }

  v10 = _Block_copy(a2);
  v7[2] = v10;
  if (!v10)
  {
    v12 = 590;
    goto LABEL_18;
  }

  v11 = _Block_copy(a3);
  v7[3] = v11;
  if (!v11)
  {
    v12 = 593;
    goto LABEL_18;
  }

  _APBrokerGroupCallNextBroker(a1, v7);
}

void __APBrokerGroupAuthenticate_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = ___APBrokerGroupAuthenticateWithOneBroker_block_invoke;
  v10[3] = &unk_278BC89B0;
  v10[6] = a4;
  v10[7] = a3;
  v10[4] = v9;
  v10[5] = v8;
  APBrokerAuthenticate(a3, v7, v10);
}

void __APBrokerGroupAuthenticate_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*(a1 + 40));
  v6 = *(a1 + 32);

  _Block_release(v6);
}

void APBrokerGroupGetInfo(uint64_t a1, void *aBlock)
{
  if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    APBrokerGroupGetInfo_cold_1();
  }

  v4 = _Block_copy(aBlock);
  v5 = *(a1 + 96);
  dispatch_retain(v5);
  v6 = CFRetain(*(a1 + 16));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __APBrokerGroupGetInfo_block_invoke;
  v8[3] = &__block_descriptor_tmp_18_0;
  v8[4] = a1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __APBrokerGroupGetInfo_block_invoke_2;
  v7[3] = &unk_278BC8828;
  v7[4] = v4;
  v7[5] = v5;
  v7[6] = v6;
  _APBrokerGroupCallAllBrokers(a1, v8, v7);
}

void __APBrokerGroupGetInfo_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v7 = *(a1 + 32);
  v8 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___APBrokerGroupGetInfoWithOneBroker_block_invoke;
  v9[3] = &unk_278BC89D8;
  v9[6] = a4;
  v9[7] = a3;
  v9[4] = v8;
  v9[5] = v7;
  APBrokerGetInfo(a3, v9);
}

void __APBrokerGroupGetInfo_block_invoke_2(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __APBrokerGroupGetInfo_block_invoke_3;
  v10[3] = &unk_278BC8800;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = a3;
  v9 = *(a1 + 48);
  v10[4] = v8;
  v10[5] = v9;
  v10[6] = cf;
  dispatch_async(v7, v10);
  dispatch_release(*(a1 + 40));
}

void __APBrokerGroupGetInfo_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*(a1 + 40));
  v6 = *(a1 + 32);

  _Block_release(v6);
}

void APBrokerGroupResolveReceiverDNSName(uint64_t a1, const void *a2, void *a3)
{
  if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    APBrokerGroupResolveReceiverDNSName_cold_1();
  }

  v6 = *(a1 + 24);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (Value)
  {
    v8 = CFRetain(Value);
    v9 = *(a1 + 24);
    FigSimpleMutexUnlock();
    if (v8)
    {
      ReceiverGroupUUID = APBrokeredReceiverGetReceiverGroupUUID(v8);
      if (ReceiverGroupUUID)
      {
        v11 = ReceiverGroupUUID;
        if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v12 = _Block_copy(a3);
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 96);
          dispatch_retain(v14);
          if (a2)
          {
            CFRetain(a2);
          }

          CFRetain(v11);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 0x40000000;
          v19[2] = __APBrokerGroupResolveReceiverDNSName_block_invoke;
          v19[3] = &__block_descriptor_tmp_24_0;
          v19[4] = a1;
          v19[5] = v11;
          v19[6] = a2;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 0x40000000;
          v18[2] = __APBrokerGroupResolveReceiverDNSName_block_invoke_2;
          v18[3] = &unk_278BC8898;
          v18[4] = v13;
          v18[5] = v14;
          v18[6] = a2;
          v18[7] = v11;
          _APBrokerGroupCallAllBrokers(a1, v19, v18);
          CFRelease(v8);
          return;
        }

        v16 = 4294960568;
      }

      else
      {
        v16 = 4294960587;
      }

      APSLogErrorAt();
      if (a2)
      {
        CFRelease(a2);
      }

      a2 = v8;
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *(a1 + 24);
    FigSimpleMutexUnlock();
  }

  v16 = 4294960587;
  if (!APBrokerGroupResolveReceiverDNSName_cold_2(a2))
  {
LABEL_17:
    CFRelease(a2);
  }

  v17 = a3[2];

  v17(a3, v16, 0, 0, 0);
}

void __APBrokerGroupResolveReceiverDNSName_block_invoke(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = ___APBrokerGroupResolveReceiverDNSNameWithOneBroker_block_invoke;
  v11[3] = &unk_278BC8A00;
  v11[6] = a4;
  v11[7] = a3;
  v11[4] = v10;
  v11[5] = v8;
  APBrokerGetReceiverConnectivityInfo(a3, v7, v9, v11);
}

void __APBrokerGroupResolveReceiverDNSName_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v8 = a3;
    __APBrokerGroupResolveReceiverDNSName_block_invoke_2_cold_1();
    v5 = 0;
    Int64Ranged = 0;
    TypedValue = 0;
  }

  else
  {
    v5 = a4;
    if (a4)
    {
      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (TypedValue)
      {
        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (Int64Ranged)
        {
          v8 = 0;
          v5 = CFDictionaryGetInt64Ranged();
        }

        else
        {
          __APBrokerGroupResolveReceiverDNSName_block_invoke_2_cold_2();
          v5 = 0;
          v8 = -6705;
        }

        CFRetain(TypedValue);
        goto LABEL_7;
      }

      __APBrokerGroupResolveReceiverDNSName_block_invoke_2_cold_3();
      v5 = 0;
      Int64Ranged = 0;
    }

    else
    {
      __APBrokerGroupResolveReceiverDNSName_block_invoke_2_cold_4();
      Int64Ranged = 0;
      TypedValue = 0;
    }

    v8 = -6705;
  }

LABEL_7:
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __APBrokerGroupResolveReceiverDNSName_block_invoke_3;
  v11[3] = &unk_278BC8870;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v11[5] = TypedValue;
  v12 = v8;
  v13 = v5;
  v14 = Int64Ranged;
  dispatch_async(v9, v11);
  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(*(a1 + 56));
  dispatch_release(*(a1 + 40));
}

void __APBrokerGroupResolveReceiverDNSName_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);
  v5 = *(a1 + 56);
  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 32);

  _Block_release(v7);
}

uint64_t APBrokerGroupStartReceiverPolling(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = *(a1 + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APBrokerGroupStartReceiverPolling_block_invoke;
  block[3] = &unk_278BC8920;
  block[4] = &v7;
  block[5] = a1;
  dispatch_sync(v2, block);
  if (*(v8 + 6))
  {
    v3 = *(a1 + 104);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = ___APBrokerGroupStopReceiverPollingInternal_block_invoke;
    v11[3] = &__block_descriptor_tmp_67;
    v11[4] = a1;
    dispatch_sync(v3, v11);
    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void __APBrokerGroupStartReceiverPolling_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = *(v2 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APBrokerGroupStartReceiverPolling_block_invoke_3;
    block[3] = &__block_descriptor_tmp_28_0;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __APBrokerGroupStartReceiverPolling_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    __APBrokerGroupStartReceiverPolling_block_invoke_3_cold_1();
  }

  _APBrokerGroupCallAllBrokers(v2, &__block_literal_global_9, &__block_literal_global_62);
  v3 = *(a1 + 32);

  CFRelease(v3);
}

void _APBrokerGroupFinalize(uint64_t a1)
{
  if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    _APBrokerGroupFinalize_cold_1(a1);
  }

  if (*(a1 + 32))
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      dispatch_release(v2);
      *(a1 + 120) = 0;
    }

    v3 = *(a1 + 80);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 80) = 0;
    }

    v4 = *(a1 + 104);
    if (v4)
    {
      dispatch_release(v4);
      *(a1 + 104) = 0;
    }

    v5 = *(a1 + 96);
    if (v5)
    {
      dispatch_release(v5);
      *(a1 + 96) = 0;
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 56) = 0;
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 48) = 0;
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 40) = 0;
    }

    if (*(a1 + 24))
    {
      FigSimpleMutexDestroy();
      *(a1 + 24) = 0;
    }

    v9 = *(a1 + 16);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 16) = 0;
    }
  }

  else
  {
    v10 = FatalErrorF();
    _APBrokerGroupCallNextBroker(v10, v11);
  }
}

void _APBrokerGroupCallNextBroker(uint64_t a1, uint64_t *a2)
{
  if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    _APBrokerGroupCallNextBroker_cold_1(a2);
  }

  v4 = a2[4];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v5 = *(a1 + 24);
  FigSimpleMutexLock();
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = CFSetContainsValue(v4, v6);
    v8 = v20;
    if (!v7)
    {
      v20[3] = *(a1 + 48);
    }
  }

  else
  {
    v8 = v20;
  }

  v9 = v8[3];
  if (v9)
  {
    goto LABEL_10;
  }

  v10 = *(a1 + 40);
  v18[6] = MEMORY[0x277D85DD0];
  v18[7] = 0x40000000;
  v18[8] = ___APBrokerGroupCopyNextBroker_block_invoke;
  v18[9] = &unk_278BC8988;
  v18[10] = &v19;
  v18[11] = v4;
  CFDictionaryApplyBlock();
  v9 = v20[3];
  if (v9)
  {
LABEL_10:
    Value = CFDictionaryGetValue(*(a1 + 40), v9);
    if (Value)
    {
      v12 = CFRetain(Value);
      if (v12)
      {
        v13 = v12;
        CFSetAddValue(v4, v20[3]);
        goto LABEL_13;
      }
    }

    _APBrokerGroupCallNextBroker_cold_2();
  }

  v13 = 0;
LABEL_13:
  v14 = *(a1 + 24);
  FigSimpleMutexUnlock();
  _Block_object_dispose(&v19, 8);
  if (v13)
  {
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
    {
      v17 = *a2;
      LogPrintF();
    }

    v15 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v15)
    {
      v16 = a2[2];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 0x40000000;
      v18[2] = ___APBrokerGroupCallNextBroker_block_invoke;
      v18[3] = &__block_descriptor_tmp_41_0;
      v18[4] = v15;
      v18[5] = a2;
      (*(v16 + 16))(v16, a1, v13, a2 + 5, v18);
    }

    else
    {
      _APBrokerGroupCallNextBroker_cold_3();
    }

    CFRelease(v13);
  }

  else
  {
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
    {
      _APBrokerGroupCallNextBroker_cold_4(a2);
    }

    _APBrokerGroupDoneCallingBrokers(a1, a2);
  }
}

void _APBrokerGroupFreeOperationData(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  free(a1);
}

void _APBrokerGroupDoneCallingBrokers(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 32);
  if (CFSetGetCount(*(a2 + 32)))
  {
    if (!*(a2 + 40) && *(a2 + 44) == 0)
    {
      if (gLogCategory_APBrokerGroup > 60)
      {
        goto LABEL_15;
      }

      if (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize())
      {
        v7 = *a2;
        LogPrintF();
      }
    }
  }

  if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    _APBrokerGroupDoneCallingBrokers_cold_1(a2, v4);
  }

LABEL_15:
  v6 = *(a2 + 48);
  (*(*(a2 + 24) + 16))(*(a2 + 24), a1);

  _APBrokerGroupFreeOperationData(a2);
}

uint64_t APTransportConnectionTCPUnbufferedCreate(uint64_t a1, const void *a2, int a3, int a4, const __CFDictionary *a5, void *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    APTransportConnectionTCPUnbufferedCreate_cold_5();
    value_low = 4294894974;
    goto LABEL_28;
  }

  APTransportConnectionGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    value_low = v11;
    APTransportConnectionTCPUnbufferedCreate_cold_1();
    goto LABEL_28;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v13 = CFRetain(a2);
  }

  else
  {
    v13 = 0;
  }

  *(DerivedStorage + 16) = v13;
  *(DerivedStorage + 56) = a3;
  *(DerivedStorage + 60) = 5;
  Value = CFDictionaryGetValue(a5, @"ReadyToSendCallbackQueuePool");
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(DerivedStorage + 64) = Value;
  *(DerivedStorage + 72) = CFDictionaryGetInt64() != 0;
  *(DerivedStorage + 72) = APSSettingsGetIntWithDefault() != 0;
  CFUUIDGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  *(DerivedStorage + 144) = TypedValue;
  if (TypedValue)
  {
    CFRetain(TypedValue);
  }

  SNPrintF();
  if (a4)
  {
    v16 = FigDispatchQueueCreateWithPriority();
  }

  else
  {
    v16 = dispatch_queue_create(label, 0);
  }

  *(DerivedStorage + 8) = v16;
  SNPrintF();
  v17 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 24) = v17;
  if (!v17)
  {
    value_low = 4294894973;
    APTransportConnectionTCPUnbufferedCreate_cold_4();
    goto LABEL_28;
  }

  SNPrintF();
  v18 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 352) = v18;
  if (!v18)
  {
    APTransportConnectionTCPUnbufferedCreate_cold_3(&v27);
LABEL_34:
    value_low = LODWORD(v27.value);
    goto LABEL_28;
  }

  v19 = FigSimpleMutexCreate();
  *(DerivedStorage + 200) = v19;
  if (!v19)
  {
    APTransportConnectionTCPUnbufferedCreate_cold_2(&v27);
    goto LABEL_34;
  }

  *(DerivedStorage + 324) = 0x1E0000000ALL;
  CMTimeMake(&v27, 2000, 1000);
  *(DerivedStorage + 360) = v27;
  *(DerivedStorage + 332) = 4000;
  *(DerivedStorage + 340) = 1;
  *(DerivedStorage + 340) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APTransportConnectionTCPUnbuffered > 40)
  {
    goto LABEL_20;
  }

  if (gLogCategory_APTransportConnectionTCPUnbuffered != -1)
  {
    goto LABEL_18;
  }

  if (_LogCategory_Initialize())
  {
    v24 = *(DerivedStorage + 340);
LABEL_18:
    LogPrintF();
  }

LABEL_20:
  *(DerivedStorage + 336) = CFDictionaryGetInt64();
  *(DerivedStorage + 342) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  *(DerivedStorage + 232) = dispatch_queue_create("APTransportConnectionTCP.netinfo", 0);
  *(DerivedStorage + 240) = xmmword_23D383870;
  *(DerivedStorage + 256) = 1;
  *(DerivedStorage + 264) = 0x3FE0000000000000;
  *(DerivedStorage + 272) = 0;
  *(DerivedStorage + 280) = 0;
  *(DerivedStorage + 288) = 20;
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
  {
    *(DerivedStorage + 72);
    v26 = *(DerivedStorage + 64);
    v25 = *(DerivedStorage + 336);
    LogPrintF();
  }

  if (*(DerivedStorage + 340))
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  APTTrafficMetricsCreate(&gLogCategory_APTransportConnectionTCPUnbuffered, 0, (DerivedStorage + 584), v20);
  *a6 = 0;
  value_low = 0;
LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
  return value_low;
}

uint64_t tcpunbuf_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 8), a1, tcpunbuf_invalidateInternal);
  return 0;
}

uint64_t tcpunbuf_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 8), a1, tcpunbuf_invalidateInternal);
  v3 = *(DerivedStorage + 8);
  APSDispatchSyncFlush();
  if (*(DerivedStorage + 64))
  {
    APSPriorityDispatchQueuePoolSyncFlush();
  }

  v4 = *(DerivedStorage + 24);
  APSDispatchSyncFlush();
  v5 = *(DerivedStorage + 584);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 584) = 0;
  }

  v6 = *(DerivedStorage + 152);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 152) = 0;
  }

  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 16) = 0;
  }

  v8 = *(DerivedStorage + 144);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 144) = 0;
  }

  v9 = *(DerivedStorage + 64);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 64) = 0;
  }

  v10 = *(DerivedStorage + 576);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 576) = 0;
  }

  v11 = *(DerivedStorage + 24);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 24) = 0;
  }

  v12 = *(DerivedStorage + 48);
  if (v12)
  {
    dispatch_release(v12);
    *(DerivedStorage + 48) = 0;
  }

  v13 = *(DerivedStorage + 8);
  if (v13)
  {
    dispatch_release(v13);
    *(DerivedStorage + 8) = 0;
  }

  v14 = *(DerivedStorage + 352);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 352) = 0;
  }

  v15 = *(DerivedStorage + 232);
  if (v15)
  {
    dispatch_release(v15);
    *(DerivedStorage + 232) = 0;
  }

  v16 = *(DerivedStorage + 200);
  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 200) = 0;
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50)
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered != -1)
    {
      return tcpunbuf_Finalize_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return tcpunbuf_Finalize_cold_1();
    }
  }

  return result;
}

__CFString *tcpunbuf_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportConnectionTCPUnbuffered %p '%@'>", a1, *(DerivedStorage + 16));
  return Mutable;
}

void tcpunbuf_cleanUp()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 168))
  {
    if (!*(DerivedStorage + 176) || (APSPriorityDispatchSourceResume(), *(DerivedStorage + 176) = 0, *(DerivedStorage + 168)))
    {
      APSPriorityDispatchSourceCancel();
      CFRelease(*(DerivedStorage + 168));
      *(DerivedStorage + 168) = 0;
    }
  }

  v1 = *(DerivedStorage + 160);
  if (v1)
  {
    dispatch_source_cancel(*(DerivedStorage + 160));
    dispatch_release(v1);
    *(DerivedStorage + 160) = 0;
  }

  *(DerivedStorage + 180) = 6;
  v2 = *(DerivedStorage + 152);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 152) = 0;
  }
}

void tcpunbuf_clearCallbackState()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[4] = 0;
  DerivedStorage[5] = 0;
  v1 = DerivedStorage[6];
  if (v1)
  {
    dispatch_release(v1);
    DerivedStorage[6] = 0;
  }
}

uint64_t tcpunbuf_setPropertyInternal(uint64_t a1)
{
  v39 = 0;
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 152);
  Value = APSWrapperGetValue();
  v6 = (a1 + 8);
  if (CFEqual(*(a1 + 8), @"PackageType"))
  {
    v8 = (a1 + 16);
    v7 = *(a1 + 16);
    if (FigCFEqual())
    {
      *(DerivedStorage + 184) = APTPackageRTPBufferedCreate;
      v9 = APTPackageRTPBufferedGetMaxPayloadSize;
LABEL_11:
      *(DerivedStorage + 192) = v9;
      return v39;
    }

    v14 = *v8;
    if (FigCFEqual())
    {
      *(DerivedStorage + 184) = APTransportPackageBufferedAPAPCreate;
      v9 = APTransportPackageBufferedAPAPGetMaxPayloadSize;
      goto LABEL_11;
    }

    v19 = *v8;
    if (FigCFEqual())
    {
      *(DerivedStorage + 184) = APTransportPackageScreenCreate;
    }

    else
    {
      if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
      {
        tcpunbuf_setPropertyInternal_cold_1(a1, (a1 + 16));
      }

      return -12780;
    }

    return v39;
  }

  if (CFEqual(*v6, @"RemoteNetworkIPAddress"))
  {
    if (Value)
    {
      tcpunbuf_setPropertyInternal_cold_2();
      return v39;
    }

    v10 = *(a1 + 16);
    if (!v10 || (v11 = CFGetTypeID(v10), v11 != APSNetworkAddressGetTypeID()))
    {
      tcpunbuf_setPropertyInternal_cold_3();
      return v39;
    }

    v12 = *(a1 + 16);
    APSNetworkAddressGetSocketAddr();
    *(DerivedStorage + 104) = *v38;
    *(DerivedStorage + 116) = *&v38[12];
    v13 = *(DerivedStorage + 132);
    goto LABEL_17;
  }

  if (CFEqual(*v6, @"RemoteNetworkPort"))
  {
    if (Value)
    {
      tcpunbuf_setPropertyInternal_cold_4();
      return v39;
    }

    v15 = *(a1 + 16);
    if (!v15 || (v16 = CFGetTypeID(v15), v16 != CFNumberGetTypeID()))
    {
      tcpunbuf_setPropertyInternal_cold_5();
      return v39;
    }

    v17 = *(a1 + 16);
    *(DerivedStorage + 132) = CFGetInt64();
LABEL_17:
    SockAddrSetPort();
    return v39;
  }

  if (CFEqual(*v6, @"BoundInterfaceIndex"))
  {
    if (Value)
    {
      tcpunbuf_setPropertyInternal_cold_6();
    }

    else
    {
      v20 = *(a1 + 16);
      *(DerivedStorage + 136) = CFGetInt64();
      if (v39)
      {
        tcpunbuf_setPropertyInternal_cold_7();
      }
    }

    return v39;
  }

  if (CFEqual(*v6, @"PackageSendTimeout"))
  {
    v21 = *(a1 + 16);
    v22 = CFGetInt64Ranged();
    *(DerivedStorage + 328) = v22;
    if (v39)
    {
      tcpunbuf_setPropertyInternal_cold_8();
    }

    else
    {
      if (v22 && Value)
      {
        v23 = *(Value + 4);
        SocketSetTCPTimeout();
      }

      if (gLogCategory_APTransportConnectionTCPUnbuffered <= 40 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
      {
        tcpunbuf_setPropertyInternal_cold_9(a1, (DerivedStorage + 328));
      }
    }

    return v39;
  }

  if (CFEqual(*v6, @"ReadyToSendThreshold"))
  {
    v24 = *(a1 + 16);
    if (!v24 || (v25 = CFGetTypeID(v24), v25 != CFNumberGetTypeID()))
    {
      tcpunbuf_setPropertyInternal_cold_10();
      return v39;
    }

    v26 = *(a1 + 16);
    *(DerivedStorage + 332) = CFGetInt64();
    if (gLogCategory_APTransportConnectionTCPUnbuffered > 40)
    {
      return v39;
    }

    if (gLogCategory_APTransportConnectionTCPUnbuffered == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v39;
      }

      v34 = *(DerivedStorage + 332);
    }

    v36 = *a1;
LABEL_53:
    LogPrintF();
    return v39;
  }

  if (!CFEqual(*v6, @"QualityOfService"))
  {
    if (CFEqual(*v6, @"ReadyToSendCallbackPriority"))
    {
      v32 = *(a1 + 16);
      v33 = CFGetInt64Ranged();
      if (*(DerivedStorage + 64) || v33 == 5)
      {
        if (*(DerivedStorage + 168) && (v39 = APSPriorityDispatchSourceSetPriority()) != 0)
        {
          tcpunbuf_setPropertyInternal_cold_16();
        }

        else
        {
          *(DerivedStorage + 60) = v33;
        }
      }

      else
      {
        tcpunbuf_setPropertyInternal_cold_15(&v39);
      }
    }

    else if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
    {
      tcpunbuf_setPropertyInternal_cold_17((a1 + 8));
    }

    return v39;
  }

  v27 = *(a1 + 16);
  if (!v27 || (v28 = CFGetTypeID(v27), v28 != CFNumberGetTypeID()))
  {
    tcpunbuf_setPropertyInternal_cold_13();
    return v39;
  }

  v29 = *(a1 + 16);
  v30 = CFGetInt64();
  if (!*(DerivedStorage + 341))
  {
    if (Value)
    {
      v31 = *(Value + 4);
      v39 = SocketSetQoS();
      if (v39)
      {
        tcpunbuf_setPropertyInternal_cold_12();
        return v39;
      }
    }
  }

  *(DerivedStorage + 336) = v30;
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50)
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v39;
      }

      v35 = *(DerivedStorage + 336);
    }

    v37 = *a1;
    goto LABEL_53;
  }

  return v39;
}

uint64_t tcpunbuf_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 180) == 5)
  {
    return (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (TCPUnbuffered) %''@ Ports:%##a -> %##a%?s%?lu Parent:[%{ptr}]\n", a1, a4, DerivedStorage + 76, DerivedStorage + 104, *(DerivedStorage + 136) != 0, " IDX:", *(DerivedStorage + 136) != 0, *(DerivedStorage + 136), a2);
  }

  else
  {
    return (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (TCPUnbuffered) %''@ (Not Connected) Parent:[%{ptr}]\n", a1, a4, a2);
  }
}

uint64_t tcpunbuf_Resume()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
  {
    v4 = *(DerivedStorage + 16);
    LogPrintF();
  }

  v1 = *(DerivedStorage + 8);
  v2 = APSDispatchSyncTask();
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
  {
    v5 = *(DerivedStorage + 16);
    LogPrintF();
  }

  return v2;
}

uint64_t tcpunbuf_AddEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      dispatch_retain(a4);
      v8 = *(v7 + 24);
      APSDispatchAsyncFHelper();
      return 0;
    }

    else
    {
      v9 = 4294894974;
      tcpunbuf_AddEventCallback_cold_1();
    }
  }

  else
  {
    v9 = 4294894974;
    tcpunbuf_AddEventCallback_cold_2();
  }

  return v9;
}

uint64_t tcpunbuf_SetReadyToSendCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage[25];
  FigSimpleMutexLock();
  DerivedStorage[26] = a2;
  DerivedStorage[27] = a3;
  v7 = DerivedStorage[25];
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t tcpunbuf_resumeInternal(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *v26 = 0;
  v27 = 0;
  if (*(DerivedStorage + 152))
  {
    goto LABEL_61;
  }

  valuePtr = SockAddrToString();
  if (valuePtr)
  {
    tcpunbuf_resumeInternal_cold_1();
    v4 = 0;
    v3 = -1;
    goto LABEL_8;
  }

  v3 = socket(*(DerivedStorage + 105), 1, 6);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_17:
    valuePtr = SocketSetNonBlocking();
    if (valuePtr)
    {
      tcpunbuf_resumeInternal_cold_3();
      goto LABEL_7;
    }

    if (!*(DerivedStorage + 136))
    {
      goto LABEL_24;
    }

    v6 = *(DerivedStorage + 105);
    if (v6 == 2)
    {
      v7 = v3;
      v8 = 0;
      v9 = 25;
    }

    else
    {
      if (v6 != 30)
      {
LABEL_24:
        v10 = *(DerivedStorage + 56);
        if ((v10 & 0x1B) != 0)
        {
          SocketSetP2P();
          v10 = *(DerivedStorage + 56);
        }

        if ((v10 & 0x20) != 0)
        {
          if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
          {
            tcpunbuf_resumeInternal_cold_5();
          }

          v26[1] = 4;
          setsockopt(v3, 0xFFFF, 4225, &v26[1], 4u);
        }

        if (!*(DerivedStorage + 341))
        {
          v11 = *(DerivedStorage + 336);
          SocketSetQoS();
        }

        v12 = *(DerivedStorage + 144);
        if (v12)
        {
          v25 = CFUUIDGetUUIDBytes(v12);
          setsockopt(v3, 0xFFFF, 4360, &v25, 0x10u);
        }

        v26[1] = 1;
        setsockopt(v3, 0xFFFF, 4130, &v26[1], 4u);
        v13 = *(DerivedStorage + 342);
        *(DerivedStorage + 344) = *(DerivedStorage + 342) != 0;
        tcpunbuf_setAggregationSocketOption(v3, v13);
        if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
        {
          v24 = *(DerivedStorage + 344);
          LogPrintF();
        }

        SocketSetBufferSize();
        *(DerivedStorage + 340);
        SocketSetBufferSize();
        if (*(DerivedStorage + 328))
        {
          SocketSetTCPTimeout();
        }

        if (gLogCategory_APTransportConnectionTCPUnbuffered <= 40 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
        {
          tcpunbuf_resumeInternal_cold_6();
        }

        mach_absolute_time();
        UpTicksToMicroseconds();
        v14 = *(DerivedStorage + 324);
        v15 = SocketConnect();
        valuePtr = v15;
        if (v15)
        {
          tcpunbuf_resumeInternal_cold_7(v15, a1, v3, &v25, &v29);
          v4 = *&v25.byte0;
          v3 = v29;
          goto LABEL_8;
        }

        v26[0] = 28;
        valuePtr = getsockname(v3, (DerivedStorage + 76), v26);
        if (valuePtr)
        {
          tcpunbuf_resumeInternal_cold_8();
          goto LABEL_7;
        }

        if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
        {
          v16 = *(DerivedStorage + 136);
          mach_absolute_time();
          UpTicksToMicroseconds();
          LogPrintF();
        }

        APTTrafficMetricsConnectionFormed(*(DerivedStorage + 584));
        valuePtr = NetSocket_CreateWithNative();
        if (valuePtr)
        {
          tcpunbuf_resumeInternal_cold_9();
          goto LABEL_7;
        }

        valuePtr = APSWrapperCreate();
        if (valuePtr)
        {
          tcpunbuf_resumeInternal_cold_10();
          goto LABEL_7;
        }

        valuePtr = tcpunbuf_setupDataSocketReadSource(a1);
        if (valuePtr)
        {
          tcpunbuf_resumeInternal_cold_11();
          goto LABEL_7;
        }

        if (*(DerivedStorage + 340))
        {
          socket_setLowWatermarkWriteable(v3, *(DerivedStorage + 332));
          v17 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
          v4 = v17;
          if (!v17)
          {
            tcpunbuf_resumeInternal_cold_13(&valuePtr);
            goto LABEL_8;
          }

          *v17 = a1;
          v17[1] = CFRetain(*(DerivedStorage + 152));
          v18 = *(DerivedStorage + 8);
          v19 = *(DerivedStorage + 60);
          v20 = *(DerivedStorage + 64);
          valuePtr = APSPriorityDispatchSourceCreate();
          if (valuePtr)
          {
            tcpunbuf_resumeInternal_cold_12();
            goto LABEL_8;
          }

          *(DerivedStorage + 176) = 1;
        }

        v26[1] = 1;
        v21 = setsockopt(v3, 6, 514, &v26[1], 4u);
        *(DerivedStorage + 320) = v21 == 0;
        valuePtr = 0;
        if (!v21)
        {
          *&v25.byte0 = 0x1E0000000ALL;
          setsockopt(v3, 6, 515, &v25, 8u);
        }

LABEL_61:
        *(DerivedStorage + 180) = 5;
        tcpunbuf_callEventCallback(a1, 5, 0);
        goto LABEL_62;
      }

      v7 = v3;
      v8 = 41;
      v9 = 125;
    }

    valuePtr = setsockopt(v7, v8, v9, (DerivedStorage + 136), 4u);
    if (valuePtr)
    {
      tcpunbuf_resumeInternal_cold_4();
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  if (*__error())
  {
    valuePtr = *__error();
    if (valuePtr)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  valuePtr = -6700;
LABEL_6:
  tcpunbuf_resumeInternal_cold_2();
LABEL_7:
  v4 = 0;
LABEL_8:
  *(DerivedStorage + 180) = 4;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  tcpunbuf_callEventCallback(a1, 4, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    tcpunbuf_freeDispatchSourceContext(v4);
  }

  if ((v3 & 0x80000000) == 0 && close(v3) && *__error())
  {
    __error();
  }

LABEL_62:
  result = valuePtr;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t tcpunbuf_setAggregationSocketOption(int a1, int a2)
{
  v5 = a2 == 0;
  setsockopt(a1, 6, 1, &v5, 4u);
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
  {
    tcpunbuf_setAggregationSocketOption_cold_1(&v5);
  }

  v5 = a2 != 0;
  result = setsockopt(a1, 6, 4, &v5, 4u);
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30)
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered != -1)
    {
      return tcpunbuf_setAggregationSocketOption_cold_2(&v5);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return tcpunbuf_setAggregationSocketOption_cold_2(&v5);
    }
  }

  return result;
}

uint64_t tcpunbuf_finalizeWrappedNetSocket()
{
  NetSocket_Cancel();

  return NetSocket_Delete();
}

uint64_t tcpunbuf_setupDataSocketReadSource(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 152);
  v4 = *(APSWrapperGetValue() + 4);
  if ((v4 & 0x80000000) != 0)
  {
    tcpunbuf_setupDataSocketReadSource_cold_3();
    return 4294894972;
  }

  else
  {
    v5 = dispatch_source_create(MEMORY[0x277D85D28], v4, 0, *(DerivedStorage + 8));
    *(DerivedStorage + 160) = v5;
    if (v5)
    {
      v6 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
      if (v6)
      {
        v7 = v6;
        *v6 = a1;
        v6[1] = CFRetain(*(DerivedStorage + 152));
        dispatch_source_set_event_handler_f(*(DerivedStorage + 160), tcpunbuf_receivedData);
        dispatch_source_set_cancel_handler_f(*(DerivedStorage + 160), tcpunbuf_freeDispatchSourceContext);
        dispatch_set_context(*(DerivedStorage + 160), v7);
        dispatch_resume(*(DerivedStorage + 160));
        return 0;
      }

      else
      {
        v8 = 4294894973;
        tcpunbuf_setupDataSocketReadSource_cold_1();
      }
    }

    else
    {
      v8 = 4294894973;
      tcpunbuf_setupDataSocketReadSource_cold_2();
    }
  }

  return v8;
}

uint64_t socket_setLowWatermarkWriteable(int a1, unsigned int a2)
{
  v4 = a2;
  if (a2 > 0xF9F)
  {
    if (a2 < 0xFA01)
    {
      goto LABEL_6;
    }

    v2 = 64000;
  }

  else
  {
    v2 = 4000;
  }

  v4 = v2;
LABEL_6:
  result = setsockopt(a1, 6, 513, &v4, 4u);
  if (result)
  {
    return socket_setLowWatermarkWriteable_cold_1();
  }

  return result;
}

void tcpunbuf_freeDispatchSourceContext(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void tcpunbuf_deferCallEventCallback(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    dispatch_sync_f(*(DerivedStorage + 48), a1, tcpunbuf_callEventCallbackOnEventQueue);
  }

  v4 = a1[2];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t tcpunbuf_callEventCallbackOnEventQueue(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1[2];
  v5 = *(DerivedStorage + 32);
  v6 = *(DerivedStorage + 40);
  v7 = *(a1 + 2);

  return v6(v7, v4, v5);
}

void tcpunbuf_addEventCallbackInternal(uint64_t *a1)
{
  tcpunbuf_setEventCallback(a1);
  v2 = a1[3];
  if (v2)
  {

    dispatch_release(v2);
  }
}

uint64_t tcpunbuf_setEventCallback(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 32) = *(a1 + 1);
  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    *(DerivedStorage + 48) = v5;
    dispatch_retain(v5);
  }

  return 0;
}

uint64_t __tcpunbuf_ensureStallMonitorTimerCreated_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = CMBaseObjectGetDerivedStorage();
  *(result + 392) = 1;
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50)
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered != -1)
    {
      return __tcpunbuf_ensureStallMonitorTimerCreated_block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __tcpunbuf_ensureStallMonitorTimerCreated_block_invoke_cold_1();
    }
  }

  return result;
}

uint64_t APBrokeredReceiverGetTypeID()
{
  if (_MergedGlobals_9 != -1)
  {
    APBrokeredReceiverGetTypeID_cold_1();
  }

  return qword_281309BC0;
}

uint64_t _APBrokeredReceiverClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APBrokeredReceiverCreateWithTXTRecordBase64(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (!a1)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_13();
    return 4294960591;
  }

  if (!a2)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_12();
    return 4294960591;
  }

  if (!a3)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_11();
    return 4294960591;
  }

  if (!a4)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_10();
    return 4294960591;
  }

  if (!a5)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_9();
    return 4294960591;
  }

  if (!a6)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_8();
    return 4294960591;
  }

  if (!a8)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_7();
    return 4294960591;
  }

  if (_MergedGlobals_9 != -1)
  {
    APBrokeredReceiverGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_6();
    return 4294960568;
  }

  v16 = Instance;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  *(Instance + 2) = CFRetain(a1);
  v16[3] = CFRetain(a2);
  v16[4] = CFRetain(a3);
  v16[5] = CFRetain(a4);
  v16[6] = CFRetain(a5);
  v17 = APSCFDataCreateWithBase64String();
  v16[8] = v17;
  if (!v17)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_5();
    v21 = 4294960568;
LABEL_37:
    CFRelease(v16);
    return v21;
  }

  if (a7)
  {
    v18 = APSCFDataCreateWithBase64String();
    v16[9] = v18;
    if (v18)
    {
      if (CFDataGetLength(v18) == 32)
      {
        v19 = v16[8];
        goto LABEL_16;
      }

      APBrokeredReceiverCreateWithTXTRecordBase64_cold_2();
    }

    else
    {
      APBrokeredReceiverCreateWithTXTRecordBase64_cold_3();
    }

    v21 = 4294960591;
    goto LABEL_37;
  }

LABEL_16:
  v20 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v20)
  {
    v21 = v20;
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_4();
    goto LABEL_37;
  }

  if (gLogCategory_APBrokeredReceiver <= 50 && (gLogCategory_APBrokeredReceiver != -1 || _LogCategory_Initialize()))
  {
    v24 = v16[7];
    v25 = v16[5];
    v23 = *(v16 + 3);
    LogPrintF();
  }

  v21 = 0;
  *a8 = v16;
  return v21;
}

uint64_t APBrokeredReceiverCopyBonjourInfo(uint64_t a1, int a2, __CFDictionary **a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  DNSName = APBrokeredReceiverCreateDNSName(*(a1 + 16), *(a1 + 32));
  if (!DNSName)
  {
    APBrokeredReceiverCopyBonjourInfo_cold_4();
    v16 = 4294960568;
    goto LABEL_11;
  }

  v7 = DNSName;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v9 = Mutable;
    CFDictionarySetValue(Mutable, @"domain", @"local.");
    CFDictionarySetValue(v9, @"ifname", @"broker0");
    CFDictionarySetInt64();
    FigCFDictionarySetValue();
    v19[0] = v9;
    v10 = CFArrayCreate(0, v19, 1, MEMORY[0x277CBF128]);
    if (v10)
    {
      v11 = v10;
      CFRelease(v9);
      v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(v12, @"deviceID", *(a1 + 56));
        CFDictionarySetValue(v13, @"name", *(a1 + 40));
        if (a2)
        {
          v14 = (a1 + 48);
          CFDictionarySetValue(v13, @"removedServices", v11);
          v15 = @"serviceType";
        }

        else
        {
          CFDictionarySetValue(v13, @"services", v11);
          CFDictionarySetValue(v13, @"serviceType", *(a1 + 48));
          v14 = (a1 + 64);
          v15 = @"txt";
        }

        CFDictionarySetValue(v13, v15, *v14);
        v16 = 0;
        *a3 = v13;
      }

      else
      {
        APBrokeredReceiverCopyBonjourInfo_cold_1();
        v16 = 4294960568;
      }

      CFRelease(v11);
      goto LABEL_10;
    }

    APBrokeredReceiverCopyBonjourInfo_cold_2(v9);
  }

  else
  {
    APBrokeredReceiverCopyBonjourInfo_cold_3();
  }

  v16 = 4294960568;
  APSLogErrorAt();
LABEL_10:
  CFRelease(v7);
LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void _APBrokeredReceiverFinalize(void *a1)
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
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    CFRelease(v8);
    a1[8] = 0;
  }

  v9 = a1[9];
  if (v9)
  {
    CFRelease(v9);
    a1[9] = 0;
  }
}

uint64_t APTransportStreamSendBackingProviderGetTypeID()
{
  if (_MergedGlobals_10 != -1)
  {
    APTransportStreamSendBackingProviderGetTypeID_cold_1();
  }

  return qword_281309BD0;
}

uint64_t transportStreamBackingProvider_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTransportStreamSendBackingProviderCreateWithStreamID(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 == 1734700576)
  {
    if (_MergedGlobals_10 != -1)
    {
      APTransportStreamSendBackingProviderGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 64) = 0;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      v8 = FigSimpleMutexCreate();
      v7[2] = v8;
      if (v8)
      {
        v7[3] = 1734700576;
        v7[6] = APTransportPackageRTPCreate;
        v7[7] = APTransportPackageRTPCreateWithMessageSize;
        v7[8] = APTransportPackageRTPCreateWithMessageSizeAndType;
        Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x277CBF158]);
        v7[4] = Mutable;
        if (Mutable)
        {
          v10 = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x277CBF150]);
          v7[5] = v10;
          if (v10)
          {
            if (gLogCategory_APTransportStreamSendBackingProvider <= 40 && (gLogCategory_APTransportStreamSendBackingProvider != -1 || _LogCategory_Initialize()))
            {
              APTransportStreamSendBackingProviderCreateWithStreamID_cold_3();
            }

            v11 = 0;
            *a4 = v7;
          }

          else
          {
            v11 = 4294894946;
            APTransportStreamSendBackingProviderCreateWithStreamID_cold_4();
          }
        }

        else
        {
          v11 = 4294894946;
          APTransportStreamSendBackingProviderCreateWithStreamID_cold_5();
        }
      }

      else
      {
        v11 = 4294894946;
        APTransportStreamSendBackingProviderCreateWithStreamID_cold_6();
      }
    }

    else
    {
      v11 = 4294894946;
      APTransportStreamSendBackingProviderCreateWithStreamID_cold_7();
    }
  }

  else
  {
    APTransportStreamSendBackingProviderCreateWithStreamID_cold_1();
    return 4294894945;
  }

  return v11;
}

uint64_t APTransportStreamSendBackingProviderAcquireBBuf(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer **a4)
{
  dataPointerOut = 0;
  cf = 0;
  v6 = *MEMORY[0x277CBECE8];
  if (a3 == 48)
  {
    v7 = (*(a1 + 56))(v6, a2, &cf);
    if (v7)
    {
      v8 = v7;
      APTransportStreamSendBackingProviderAcquireBBuf_cold_2();
LABEL_19:
      v12 = 0;
LABEL_20:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v9 = (*(a1 + 64))(v6, a2, a3, &cf);
    if (v9)
    {
      v8 = v9;
      APTransportStreamSendBackingProviderAcquireBBuf_cold_1();
      goto LABEL_19;
    }
  }

  v10 = cf;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v11)
  {
    v12 = v11(v10);
  }

  else
  {
    v12 = 0;
  }

  DataPointer = CMBlockBufferGetDataPointer(v12, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    v8 = DataPointer;
    APTransportStreamSendBackingProviderAcquireBBuf_cold_3();
    goto LABEL_20;
  }

  v14 = *(a1 + 16);
  FigSimpleMutexLock();
  CFSetAddValue(*(a1 + 32), v12);
  CFDictionarySetValue(*(a1 + 40), dataPointerOut, cf);
  v15 = *(a1 + 16);
  FigSimpleMutexUnlock();
  if (gLogCategory_APTransportStreamSendBackingProvider <= 10 && (gLogCategory_APTransportStreamSendBackingProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = 0;
  *a4 = v12;
  cf = 0;
LABEL_14:
  if (v12)
  {
    CFRelease(v12);
  }

  return v8;
}

uint64_t APTransportStreamSendBackingProviderRelinquishBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  dataPointerOut = 0;
  if (gLogCategory_APTransportStreamSendBackingProvider <= 10 && (gLogCategory_APTransportStreamSendBackingProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(a1 + 16);
  FigSimpleMutexLock();
  if (CFSetContainsValue(*(a1 + 32), a2))
  {
    DataPointer = CMBlockBufferGetDataPointer(a2, 0, 0, 0, &dataPointerOut);
    if (DataPointer)
    {
      v8 = DataPointer;
      APTransportStreamSendBackingProviderRelinquishBBuf_cold_1();
    }

    else
    {
      Value = CFDictionaryGetValue(*(a1 + 40), dataPointerOut);
      if (Value)
      {
        v7 = Value;
        CFSetRemoveValue(*(a1 + 32), a2);
        CFDictionaryRemoveValue(*(a1 + 40), dataPointerOut);
        CFRelease(v7);
        v8 = 0;
      }

      else
      {
        v8 = 4294894944;
        APTransportStreamSendBackingProviderRelinquishBBuf_cold_2();
      }
    }
  }

  else
  {
    APTransportStreamSendBackingProviderRelinquishBBuf_cold_3();
    v8 = 4294894945;
  }

  v9 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t APTransportStreamSendBackingProviderCopyPackageForGivenBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  v15 = 0;
  cf = 0;
  (*(a1 + 48))(*MEMORY[0x277CBECE8], &cf);
  v6 = cf;
  if (a2)
  {
    VTable = CMBaseObjectGetVTable();
    v8 = *(*(VTable + 16) + 16);
    if (v8)
    {
      v9 = *(VTable + 16) + 16;
      v8(v6, a2);
    }

    DataPointer = CMBlockBufferGetDataPointer(a2, 0, 0, 0, &v15);
    if (DataPointer)
    {
      APTransportStreamSendBackingProviderCopyPackageForGivenBBuf_cold_1();
    }

    else
    {
      v11 = *(a1 + 16);
      FigSimpleMutexLock();
      CFSetAddValue(*(a1 + 32), a2);
      CFDictionarySetValue(*(a1 + 40), v15, cf);
      v12 = *(a1 + 16);
      FigSimpleMutexUnlock();
    }
  }

  else
  {
    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    DataPointer = 0;
    *a3 = v13;
  }

  return DataPointer;
}

uint64_t transportStreamBackingProvider_Finalize(void *a1)
{
  if (gLogCategory_APTransportStreamSendBackingProvider <= 40 && (gLogCategory_APTransportStreamSendBackingProvider != -1 || _LogCategory_Initialize()))
  {
    transportStreamBackingProvider_Finalize_cold_1();
  }

  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[2];

  return FigSimpleMutexDestroy();
}

uint64_t APBrowserCarSessionCreate(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  cf = 0;
  if (!a4)
  {
    APBrowserCarSessionCreate_cold_10();
    DerivedStorage = 0;
    goto LABEL_36;
  }

  APBrowserGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v21 = v8;
    APBrowserCarSessionCreate_cold_1();
    DerivedStorage = 0;
    goto LABEL_25;
  }

  v9 = cf;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = dispatch_queue_create("APBrowserCarSessionInternalQueue", 0);
  *(DerivedStorage + 24) = v11;
  if (v11)
  {
    v12 = dispatch_queue_create("APBrowserCarSessionEventQueue", 0);
    *(DerivedStorage + 112) = v12;
    if (v12)
    {
      if (a2)
      {
        v13 = CFRetain(a2);
        *(DerivedStorage + 56) = v13;
        if (v13)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v15 = Mutable;
            if (a3)
            {
              Value = CFDictionaryGetValue(a3, @"PowerAssertion");
              *(DerivedStorage + 48) = Value;
              if (Value)
              {
                CFRetain(Value);
                CFDictionarySetValue(v15, @"powerAssertion", *(DerivedStorage + 48));
              }

              v17 = CFDictionaryGetValue(a3, @"EventRecorder");
              *(DerivedStorage + 40) = v17;
              if (v17)
              {
                CFRetain(v17);
                CFDictionarySetValue(v15, @"eventRecorder", *(DerivedStorage + 40));
              }

              *(DerivedStorage + 16) = CFDictionaryGetInt64() != 0;
            }

            if (APSIsVirtualMachine())
            {
              CFDictionarySetInt64();
              if (gLogCategory_APBrowserCarSession <= 50 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
              {
                APBrowserCarSessionCreate_cold_2();
              }
            }

            else
            {
              CFDictionarySetInt64();
            }

            CFDictionarySetValue(v15, @"enableSessionEvents", *MEMORY[0x277CBED28]);
            v18 = APCarPlayHelperSessionCreate(a1, carSessionBrowser_handleCarPlayHelperEvent, cf, v15, (DerivedStorage + 64));
            if (!v18)
            {
              v19 = dispatch_semaphore_create(0);
              *(DerivedStorage + 8) = v19;
              if (v19)
              {
                v20 = dispatch_group_create();
                *DerivedStorage = v20;
                if (v20)
                {
                  dispatch_group_enter(v20);
                  v21 = 0;
                  *a4 = v9;
LABEL_24:
                  CFRelease(v15);
                  goto LABEL_25;
                }

                APBrowserCarSessionCreate_cold_4();
              }

              else
              {
                APBrowserCarSessionCreate_cold_5();
              }

              v21 = 4294954510;
              goto LABEL_24;
            }

            v21 = v18;
            APBrowserCarSessionCreate_cold_3();
            goto LABEL_24;
          }

          APBrowserCarSessionCreate_cold_6();
          goto LABEL_43;
        }
      }

      else
      {
        *(DerivedStorage + 56) = 0;
      }

      APBrowserCarSessionCreate_cold_7();
LABEL_36:
      v21 = 4294954516;
      goto LABEL_25;
    }

    APBrowserCarSessionCreate_cold_8();
  }

  else
  {
    APBrowserCarSessionCreate_cold_9();
  }

LABEL_43:
  v21 = 4294954510;
LABEL_25:
  v22 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v23 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APBrowserCarSessionCreate_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = cf;
    block[5] = DerivedStorage;
    dispatch_group_notify(v22, v23, block);
  }

  if (v21)
  {
    if (gLogCategory_APBrowserCarSession <= 90 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
    {
      APBrowserCarSessionCreate_cold_11();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v21;
}

void carSessionBrowser_handleCarPlayHelperEvent(uint64_t a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v8 = *(DerivedStorage + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carSessionBrowser_handleCarPlayHelperEvent_block_invoke;
  block[3] = &__block_descriptor_tmp_33_0;
  v10 = a2;
  block[4] = a4;
  block[5] = a3;
  dispatch_async(v8, block);
}

NSObject *__APBrowserCarSessionCreate_block_invoke(uint64_t a1)
{
  carSessionBrowser_dispatchEvent(*(a1 + 32), 8, 0);
  result = *(*(a1 + 40) + 8);
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void carSessionBrowser_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carSessionBrowser_finalize_block_invoke;
    block[3] = &__block_descriptor_tmp_12_2;
    block[4] = DerivedStorage;
    dispatch_sync(v1, block);
    carSessionBrowser_invalidate();
    v10 = *(DerivedStorage + 8);
    if (v10)
    {
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    }

    dispatch_sync(*(DerivedStorage + 24), &__block_literal_global_10);
    v11 = *(DerivedStorage + 24);
    if (v11)
    {
      dispatch_release(v11);
      *(DerivedStorage + 24) = 0;
    }
  }

  v2 = *(DerivedStorage + 112);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_16);
    v3 = *(DerivedStorage + 112);
    if (v3)
    {
      dispatch_release(v3);
      *(DerivedStorage + 112) = 0;
    }
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 80);
  if (v8)
  {
    os_release(v8);
    *(DerivedStorage + 80) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v9 = *(DerivedStorage + 8);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t __carSessionBrowser_invalidate_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (!*(v4 + 32))
  {
    v5 = result;
    result = *(v4 + 64);
    if (result)
    {
      result = APTransportKeepAliveControllerGetCMBaseObject(result, a2, a3, a4);
      if (result)
      {
        v6 = result;
        VTable = CMBaseObjectGetVTable();
        v8 = *(VTable + 8);
        result = VTable + 8;
        v9 = *(v8 + 24);
        if (v9)
        {
          result = v9(v6);
        }
      }
    }

    *(*(v5 + 32) + 32) = 1;
  }

  return result;
}

uint64_t __carSessionBrowser_finalize_block_invoke(uint64_t result)
{
  *(*(result + 32) + 120) = 0;
  *(*(result + 32) + 128) = 0;
  return result;
}

uint64_t carSessionBrowser_getMode(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carSessionBrowser_getMode_block_invoke;
    block[3] = &unk_278BC8BF0;
    block[4] = &v8;
    block[5] = DerivedStorage;
    block[6] = a2;
    dispatch_sync(v4, block);
    v5 = *(v9 + 6);
  }

  else
  {
    v5 = 4294954516;
    *(v9 + 6) = -12780;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t carSessionBrowser_setMode(uint64_t a1, int a2)
{
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x2000000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1)
  {
    carSessionBrowser_setMode_cold_1(v11);
    v6 = 4294895234;
  }

  else
  {
    v5 = *(DerivedStorage + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __carSessionBrowser_setMode_block_invoke;
    v8[3] = &unk_278BC8C18;
    v8[4] = &v10;
    v8[5] = DerivedStorage;
    v9 = a2;
    v8[6] = a1;
    dispatch_sync(v5, v8);
    v6 = *(v11[0] + 24);
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t carSessionBrowser_setEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __carSessionBrowser_setEventHandler_block_invoke;
  v9[3] = &unk_278BC8C40;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t carSessionBrowser_getDNSForDeviceID(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    carSessionBrowser_getDNSForDeviceID_cold_1(v19);
LABEL_7:
    v15 = 4294954516;
    goto LABEL_4;
  }

  if (!a6)
  {
    carSessionBrowser_getDNSForDeviceID_cold_2(v19);
    goto LABEL_7;
  }

  v14 = *(DerivedStorage + 24);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __carSessionBrowser_getDNSForDeviceID_block_invoke;
  v17[3] = &unk_278BC8C68;
  v17[4] = &v18;
  v17[5] = DerivedStorage;
  v17[6] = a2;
  v17[7] = a6;
  v17[8] = a7;
  v17[9] = a8;
  dispatch_sync(v14, v17);
  v15 = *(v19[0] + 24);
LABEL_4:
  _Block_object_dispose(&v18, 8);
  return v15;
}

void __carSessionBrowser_getMode_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 32))
  {
    __carSessionBrowser_getMode_block_invoke_cold_1();
  }

  else
  {
    if (*(v1 + 72))
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }

    **(a1 + 48) = v2;
  }
}

void __carSessionBrowser_setEventHandler_block_invoke(void *a1)
{
  v1 = a1[5];
  if (*(v1 + 32))
  {
    __carSessionBrowser_setEventHandler_block_invoke_cold_1();
  }

  else if (*(v1 + 72))
  {
    __carSessionBrowser_setEventHandler_block_invoke_cold_2();
  }

  else if (*(v1 + 76))
  {
    __carSessionBrowser_setEventHandler_block_invoke_cold_3();
  }

  else
  {
    *(v1 + 120) = a1[6];
    *(a1[5] + 128) = a1[7];
  }
}

void __carSessionBrowser_getDNSForDeviceID_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 32))
  {
    __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_1();
  }

  else if (*(v2 + 76))
  {
    __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_2();
  }

  else if (*(v2 + 72))
  {
    if (*(v2 + 88) == *(a1 + 48))
    {
      v3 = *(v2 + 96);
      v4 = *(a1 + 56);
      v5 = *(a1 + 64);
      *(*(*(a1 + 32) + 8) + 24) = APSNetworkAddressGetCStringRepresentation();
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_4();
      }

      else
      {
        v6 = *(a1 + 72);
        if (v6)
        {
          *v6 = *(*(a1 + 40) + 104) == 2;
          if (gLogCategory_APBrowserCarSession <= 40 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
          {
            __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_5((a1 + 56), (a1 + 72));
          }
        }

        else if (gLogCategory_APBrowserCarSession <= 40 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
        {
          v7 = *(a1 + 56);
          LogPrintF();
        }
      }
    }

    else
    {
      __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_3();
    }
  }

  else
  {
    __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_6();
  }
}

void __carSessionBrowser_handleCarPlayHelperEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      if (gLogCategory_APBrowserCarSession <= 30 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
      {
        __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_1();
      }

      v19 = *(a1 + 32);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      dispatch_group_leave(*DerivedStorage);
    }

    else
    {
      if (v2 != 2)
      {
        goto LABEL_29;
      }

      if (gLogCategory_APBrowserCarSession <= 30 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
      {
        __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_2();
      }

      v30 = *(a1 + 32);
      v31 = CMBaseObjectGetDerivedStorage();
      carSessionBrowser_networkChanged(v30, 0);
      carSessionBrowser_dispatchEvent(v30, 7, 0);
      --*(v31 + 76);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (gLogCategory_APBrowserCarSession <= 30 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
        {
          __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_3();
        }

        v3 = *(a1 + 32);
        v4 = *(a1 + 40);
        v44 = 0;
        cf = v3;
        v5 = CMBaseObjectGetDerivedStorage();
        v43 = 0;
        v6 = CFDictionaryGetValue(v4, @"advertiserInfo");
        if (v6)
        {
          v7 = v6;
          v8 = CFDictionaryGetValue(v4, @"networkAddress");
          if (v8)
          {
            v9 = v8;
            v10 = APAdvertiserInfoCopyProperty(v7, 0, @"deviceID", 0, &v44);
            if (v44)
            {
              __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_4();
            }

            else
            {
              v41 = v9;
              FigCFStringGetCStringPtrAndBufferToFree();
              CFStringGetLength(v10);
              v11 = TextToHardwareAddressScalar();
              Int64Ranged = CFDictionaryGetInt64Ranged();
              if (!v44)
              {
                value = CFDictionaryGetValue(v4, @"sessionHostInfo");
                if (Int64Ranged == 1)
                {
                  if (*(v5 + 40))
                  {
                    APSEventRecorderRecordEventWithFlags();
                  }

                  v13 = LogCategoryCopyOSLogHandle();
                  v14 = v13;
                  if (v13)
                  {
                    v15 = v13;
                  }

                  else
                  {
                    v15 = MEMORY[0x277D86220];
                  }

                  if (!os_signpost_enabled(v15))
                  {
                    goto LABEL_41;
                  }

                  *buf = 0;
                  v16 = "AP_SIGNPOST_ENDPOINTADDED_USB";
                  v17 = v15;
                  v18 = 730662900;
                }

                else
                {
                  if (Int64Ranged != 2)
                  {
                    goto LABEL_43;
                  }

                  if (*(v5 + 40))
                  {
                    APSEventRecorderRecordEventWithFlags();
                  }

                  v21 = LogCategoryCopyOSLogHandle();
                  v14 = v21;
                  if (v21)
                  {
                    v22 = v21;
                  }

                  else
                  {
                    v22 = MEMORY[0x277D86220];
                  }

                  if (!os_signpost_enabled(v22))
                  {
LABEL_41:
                    if (v14)
                    {
                      os_release(v14);
                    }

LABEL_43:
                    v23 = *(v5 + 88);
                    if (v23 == v11)
                    {
                      if (*(v5 + 104) != Int64Ranged)
                      {
                        goto LABEL_80;
                      }

                      v24 = *(v5 + 96);
                      if (FigCFEqual())
                      {
                        Mutable = 0;
LABEL_47:
                        APCarPlayControlServerInjectCommand(*(v5 + 56), v11, "connect");
                        goto LABEL_48;
                      }

                      v23 = *(v5 + 88);
                    }

                    if (v23 && v23 != v11)
                    {
                      v32 = CFGetAllocator(cf);
                      Mutable = CFDictionaryCreateMutable(v32, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      if (!Mutable)
                      {
                        __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_7(&v44);
                        goto LABEL_49;
                      }

                      CFDictionarySetInt64();
                      if (gLogCategory_APBrowserCarSession <= 30 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
                      {
                        __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_6();
                      }

                      carSessionBrowser_dispatchEvent(cf, 5, Mutable);
                      CFRelease(Mutable);
                    }

LABEL_80:
                    v33 = CFGetAllocator(cf);
                    Mutable = CFDictionaryCreateMutable(v33, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (!Mutable)
                    {
                      __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_8(&v44);
                      goto LABEL_49;
                    }

                    CFDictionarySetInt64();
                    CFDictionarySetValue(Mutable, @"deviceInfo", v7);
                    v34 = MEMORY[0x277CBED10];
                    if (Int64Ranged == 1)
                    {
                      v34 = MEMORY[0x277CBED28];
                    }

                    CFDictionarySetValue(Mutable, @"IsConnectedOverUSB", *v34);
                    if (value)
                    {
                      CFDictionarySetValue(Mutable, @"sessionHostInfo", value);
                    }

                    v35 = gLogCategory_APBrowserCarSession;
                    if (gLogCategory_APBrowserCarSession > 30)
                    {
                      goto LABEL_100;
                    }

                    if (gLogCategory_APBrowserCarSession == -1)
                    {
                      if (!_LogCategory_Initialize())
                      {
LABEL_100:
                        if (*(v5 + 88) == v11)
                        {
                          v36 = 4;
                        }

                        else
                        {
                          v36 = 3;
                        }

                        carSessionBrowser_dispatchEvent(cf, v36, Mutable);
                        *(v5 + 104) = Int64Ranged;
                        v37 = *(v5 + 96);
                        *(v5 + 88) = v11;
                        *(v5 + 96) = v41;
                        CFRetain(v41);
                        if (v37)
                        {
                          CFRelease(v37);
                        }

                        goto LABEL_47;
                      }

                      v35 = gLogCategory_APBrowserCarSession;
                    }

                    *(v5 + 88);
                    if (v35 <= 20)
                    {
                      if (v35 != -1 || (_LogCategory_Initialize(), v35 = gLogCategory_APBrowserCarSession, gLogCategory_APBrowserCarSession <= 20))
                      {
                        if (v35 == -1)
                        {
                          _LogCategory_Initialize();
                        }
                      }
                    }

                    LogPrintF();
                    goto LABEL_100;
                  }

                  *buf = 0;
                  v16 = "AP_SIGNPOST_ENDPOINTADDED_WIFI";
                  v17 = v22;
                  v18 = 722862484;
                }

                _os_signpost_emit_with_name_impl(&dword_23D2A9000, v17, OS_SIGNPOST_EVENT, v18, v16, "", buf, 2u);
                goto LABEL_41;
              }

              __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_5();
            }

            Mutable = 0;
LABEL_48:
            if (!v44)
            {
LABEL_51:
              if (v10)
              {
                CFRelease(v10);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              v27 = v43;
              if (v43)
              {
                v43 = 0;
                free(v27);
              }

              if (v44)
              {
                __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_11();
              }

              goto LABEL_61;
            }

LABEL_49:
            *(v5 + 88) = 0;
            *(v5 + 104) = 0;
            v26 = *(v5 + 96);
            if (v26)
            {
              CFRelease(v26);
              *(v5 + 96) = 0;
            }

            goto LABEL_51;
          }

          __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_9(&v44);
        }

        else
        {
          __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_10(&v44);
        }

        v10 = 0;
        Mutable = 0;
        goto LABEL_49;
      }

LABEL_29:
      if (gLogCategory_APBrowserCarSession <= 90)
      {
        if (gLogCategory_APBrowserCarSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_60;
          }

          v38 = *(a1 + 48);
        }

        LogPrintF();
      }

LABEL_60:
      APSLogErrorAt();
      goto LABEL_61;
    }

    if (gLogCategory_APBrowserCarSession <= 30 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
    {
      __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_12();
    }

    carSessionBrowser_networkChanged(*(a1 + 32), *(a1 + 40));
  }

LABEL_61:
  v28 = *(a1 + 32);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 40);
  if (v29)
  {
    CFRelease(v29);
  }
}

uint64_t carSessionBrowser_networkChanged(const void *a1, const __CFDictionary *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (Value = CFDictionaryGetValue(a2, @"interfaceName"), Int64 = CFDictionaryGetInt64(), Value))
  {
    if (!DerivedStorage[10] && Int64)
    {
      CFDictionaryGetInt64Ranged();
      SNPrintF();
      if (gLogCategory_APBrowserCarSession <= 50 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
      {
        carSessionBrowser_networkChanged_cold_1();
      }

      DerivedStorage[10] = os_transaction_create();
    }
  }

  else if (DerivedStorage[11])
  {
    carSessionBrowser_networkChanged_cold_2(DerivedStorage + 11, DerivedStorage, a1);
  }

  v7 = DerivedStorage[5];
  APSEventRecorderResetEvent();
  v8 = DerivedStorage[5];
  result = APSEventRecorderResetEvent();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __carSessionBrowser_dispatchEvent_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
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

uint64_t APTransportDeviceGetTypeID()
{
  if (_MergedGlobals_11 != -1)
  {
    APTransportDeviceGetTypeID_cold_1();
  }

  return qword_281309BE0;
}

uint64_t transportDevice_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTransportDeviceCreateWithNetworkAddress(uint64_t a1, const void *a2, char a3, const void *a4, void *a5)
{
  if (!a2)
  {
    APTransportDeviceCreateWithNetworkAddress_cold_4();
    return 4294954516;
  }

  if (!a4)
  {
    APTransportDeviceCreateWithNetworkAddress_cold_3();
    return 4294954516;
  }

  if (!a5)
  {
    APTransportDeviceCreateWithNetworkAddress_cold_2();
    return 4294954516;
  }

  v9 = transportDevice_create();
  if (v9)
  {
    v10 = v9;
    *(v9 + 3) = CFRetain(a4);
    *(v10 + 4) = CFRetain(a2);
    *(v10 + 48) = a3;
    if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = 0;
    *a5 = v10;
  }

  else
  {
    APTransportDeviceCreateWithNetworkAddress_cold_1();
    return 4294954510;
  }

  return result;
}

uint64_t APTransportDeviceCreateWithNetworkAddresses(const __CFAllocator *a1, CFArrayRef theArray, char a3, const void *a4, void *a5)
{
  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
    APTransportDeviceCreateWithNetworkAddresses_cold_4();
    return 4294954516;
  }

  if (!a4)
  {
    APTransportDeviceCreateWithNetworkAddresses_cold_3();
    return 4294954516;
  }

  if (!a5)
  {
    APTransportDeviceCreateWithNetworkAddresses_cold_2();
    return 4294954516;
  }

  v10 = transportDevice_create();
  if (v10)
  {
    v11 = v10;
    *(v10 + 3) = CFRetain(a4);
    *(v11 + 5) = CFArrayCreateCopy(a1, theArray);
    *(v11 + 48) = a3;
    if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = 0;
    *a5 = v11;
  }

  else
  {
    APTransportDeviceCreateWithNetworkAddresses_cold_1();
    return 4294954510;
  }

  return result;
}

BOOL APTransportDeviceShouldPerformTrafficRegistration(void *a1)
{
  if (!a1[4] && !a1[5])
  {
    return 1;
  }

  v1 = a1[3];
  return CFDictionaryGetInt64() != 0;
}

uint64_t APTransportDeviceCopyBrokeredReceiverInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  Int64 = CFDictionaryGetInt64();
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 16);
  result = VTable + 16;
  v15 = *(v14 + 96);
  if (v15)
  {

    return v15(v10, Int64, a2, a3, a4, a5);
  }

  return result;
}

BOOL APTransportDeviceHasMinimumRelationship(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  FigCFDictionaryGetInt32IfPresent();
  if (a2 == 2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    return 0;
  }

  return a2 == 0;
}

CFTypeRef APTransportDeviceCopyAssistedInfo(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 24), @"assistedInfo");
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

BOOL APTransportDeviceIsSelf(uint64_t a1)
{
  v2 = *(a1 + 24);
  Int64 = CFDictionaryGetInt64();
  v4 = APSGetDeviceID();
  v5 = *(a1 + 24);
  return CFDictionaryGetInt64() || Int64 == v4;
}

CFTypeRef APTransportDeviceIsReachable(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v20 = 0;
  if (*(a1 + 32) || *(a1 + 40))
  {
    v4 = *(a1 + 48) == a2;
    goto LABEL_4;
  }

  if ((a2 - 2) > 3u)
  {
    if (a2 == 6)
    {
      v8 = 24;
    }

    else
    {
      v8 = 0;
    }

    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 3;
    }

    v10 = *(a1 + 24);
    v11 = (v9 & CFDictionaryGetInt64Ranged()) != 0;
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    Int64 = CFDictionaryGetInt64();
    VTable = CMBaseObjectGetVTable();
    v16 = *(*(VTable + 16) + 32);
    if (v16)
    {
      v17 = *(VTable + 16) + 32;
      v18 = v16(v13, Int64, a2 == 1, 0, v11, v22, 1024, 0);
      if (!v18)
      {
        if (a2 == 6)
        {
          if (aptransportdevice_copyInterfaceNameFromDNSName(v22, &v20))
          {
            APSLogErrorAt();
            v4 = 0;
            v19 = v20;
            if (!v20)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v19 = v20;
            v4 = APSIsDirectLinkInterface();
            if (!v19)
            {
              goto LABEL_4;
            }
          }

          CFRelease(v19);
          goto LABEL_4;
        }

        v4 = 1;
LABEL_4:
        v5 = *MEMORY[0x277D85DE8];
        return v4;
      }

      v4 = 0;
      if (v18 == -6727)
      {
        goto LABEL_4;
      }
    }

    APSLogErrorAt();
LABEL_21:
    v4 = 0;
    goto LABEL_4;
  }

  transportDevice_getNANDataSessionForAddressType(a1, a2, &v21);
  if (v21)
  {
    APTransportDeviceIsReachable_cold_1();
    goto LABEL_21;
  }

  v7 = *MEMORY[0x277D85DE8];

  return APTNANDataSessionIsActivatable();
}

CFTypeRef transportDevice_getNANDataSessionForAddressType(void *a1, int a2, int *a3)
{
  v10 = 0;
  v4 = (a2 & 0xFE) == 4;
  if (a2 == 5 || a2 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  NANDataSession = transportDevice_getNANDataSession(a1, v6, v4, &v10);
  v8 = v10;
  if (v10)
  {
    transportDevice_getNANDataSessionForAddressType_cold_1();
  }

  *a3 = v8;
  return NANDataSession;
}

void APTransportDeviceGetInfraReachability(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  cf = 0;
  v8 = APTransportDeviceIsReachable(a1, 0);
  v9 = APTransportDeviceIsReachable(a1, 6);
  if (a1[4] || a1[5])
  {
LABEL_9:
    v17 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = a1[3];
  v11 = (CFDictionaryGetInt64Ranged() & 3) != 0;
  v13 = a1[2];
  v12 = a1[3];
  Int64 = CFDictionaryGetInt64();
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
LABEL_8:
    APSLogErrorAt();
    goto LABEL_9;
  }

  v16 = v15(v13, Int64, 0, 0, v11, v20, 1024, 0);
  if (v16)
  {
    if (v16 == -6727)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (aptransportdevice_copyInterfaceNameFromDNSName(v20, &cf))
  {
    APTransportDeviceGetInfraReachability_cold_1();
    goto LABEL_9;
  }

  v17 = APSIsEthernetInterface();
  if (a2)
  {
LABEL_10:
    *a2 = v8;
  }

LABEL_11:
  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = v17;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t APTransportDeviceGetAddress(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v30 = 0;
  cf = 0;
  if (a2 == 6)
  {
    v14 = 24;
  }

  else
  {
    v14 = 0;
  }

  if (a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 3;
  }

  v17 = (a1 + 24);
  v16 = *(a1 + 24);
  if ((v15 & CFDictionaryGetInt64Ranged()) != 0)
  {
    if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
    {
      APTransportDeviceGetAddress_cold_1(a2, v17);
    }

    v18 = 1;
    BrowserAddress = APTransportDeviceGetBrowserAddress(a1, a2, a3, 1, a4, a5, a7);
    if (BrowserAddress)
    {
      v20 = BrowserAddress;
      APTransportDeviceGetAddress_cold_2();
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (*(a1 + 32))
  {
    if (*(a1 + 48) == a2)
    {
      CStringRepresentation = APSNetworkAddressGetCStringRepresentation();
      if (CStringRepresentation)
      {
        v20 = CStringRepresentation;
        APTransportDeviceGetAddress_cold_4();
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    APTransportDeviceGetAddress_cold_3();
LABEL_41:
    v20 = 4294960569;
    goto LABEL_33;
  }

  if (!*(a1 + 40))
  {
    if ((a2 - 2) <= 3u)
    {
      NANDataSessionForAddressType = transportDevice_getNANDataSessionForAddressType(a1, a2, &v30);
      v20 = v30;
      if (v30)
      {
        APTransportDeviceGetAddress_cold_7();
        goto LABEL_33;
      }

      v25 = APTNANDataSessionCopyPeerAddress(NANDataSessionForAddressType, &cf);
      if (v25)
      {
        v20 = v25;
        APTransportDeviceGetAddress_cold_8();
        goto LABEL_33;
      }

      v26 = APSNetworkAddressGetCStringRepresentation();
      if (v26)
      {
        v20 = v26;
        APTransportDeviceGetAddress_cold_9();
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    if (*(a1 + 16))
    {
      v27 = APTransportDeviceGetBrowserAddress(a1, a2, a3, 0, a4, a5, a7);
      if (v27)
      {
        v20 = v27;
        APTransportDeviceGetAddress_cold_6();
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v20 = 4294960561;
LABEL_38:
    APSLogErrorAt();
    goto LABEL_33;
  }

  if (*(a1 + 48) != a2)
  {
    APTransportDeviceGetAddress_cold_5();
    goto LABEL_41;
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __transportDevice_networkAddressesToCStringRepresentation_block_invoke;
  v34 = &unk_278BC8CE8;
  v35 = v22;
  FigCFArrayApplyBlock();
  if (![v22 count])
  {
    v20 = 4294960569;
    goto LABEL_38;
  }

  v23 = [v22 componentsJoinedByString:@"\x1E"];
  if (!v23)
  {
    v20 = 4294960568;
    goto LABEL_44;
  }

  if (([v23 getCString:a4 maxLength:a5 encoding:1] & 1) == 0)
  {
    v20 = 4294960591;
LABEL_44:
    APSLogErrorAt();
    goto LABEL_38;
  }

LABEL_30:
  v18 = 0;
LABEL_31:
  v20 = 0;
  if (a6)
  {
    *a6 = v18;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t APTransportDeviceGetBrowserAddress(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  Int64 = CFDictionaryGetInt64();
  v16 = a2 == 1;
  VTable = CMBaseObjectGetVTable();
  v18 = *(*(VTable + 16) + 32);
  if (!v18)
  {
    v21 = 4294954514;
    goto LABEL_7;
  }

  v19 = *(VTable + 16) + 32;
  v20 = v18(v14, Int64, v16, a3, a4, a5, a6, a7);
  v21 = v20;
  if (v20)
  {
    if (v20 == -6727)
    {
      v21 = 0;
      *a5 = 0;
      return v21;
    }

LABEL_7:
    APSLogErrorAt();
  }

  return v21;
}

uint64_t APTransportDeviceResolveAddress(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 1)
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    Int64 = CFDictionaryGetInt64();
    VTable = CMBaseObjectGetVTable();
    v12 = *(*(VTable + 16) + 88);
    if (v12)
    {
      v13 = *(VTable + 16) + 88;

      return v12(v9, Int64, a2, 1, a4, a5);
    }

    v15 = 4294954514;
    APSLogErrorAt();
    a2 = 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a5 + 16);

  return v16(a5, a2, 0, 0, a4, v15);
}

uint64_t APTransportDeviceCopyNANDataSession(void *a1, int a2, int a3, void *a4)
{
  v8 = 0;
  if (a4)
  {
    NANDataSession = transportDevice_getNANDataSession(a1, a2, a3, &v8);
    v6 = v8;
    if (v8)
    {
      APTransportDeviceCopyNANDataSession_cold_1();
    }

    else
    {
      if (NANDataSession)
      {
        NANDataSession = CFRetain(NANDataSession);
      }

      v6 = 0;
      *a4 = NANDataSession;
    }
  }

  else
  {
    APTransportDeviceCopyNANDataSession_cold_2();
    return 4294954516;
  }

  return v6;
}

CFTypeRef transportDevice_getNANDataSession(void *a1, int a2, int a3, int *a4)
{
  v8 = a1[7];
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v9 = a1[7];
  FigSimpleMutexLock();
  if (a2 == 2)
  {
    v16 = 11;
    if (!a3)
    {
      v16 = 9;
    }

    v11 = &a1[v16];
    if (a1[v16])
    {
      goto LABEL_11;
    }

    v18 = a1[2];
    v17 = a1[3];
    Int64 = CFDictionaryGetInt64();
    v15 = APTNANDataSessionCreate(2, v18, Int64, a3, v11);
    if (v15)
    {
      transportDevice_getNANDataSession_cold_1();
    }
  }

  else
  {
    if (a2 == 1)
    {
      v10 = 10;
      if (!a3)
      {
        v10 = 8;
      }

      v11 = &a1[v10];
      if (!a1[v10])
      {
        v13 = a1[2];
        v12 = a1[3];
        v14 = CFDictionaryGetInt64();
        v15 = APTNANDataSessionCreate(1, v13, v14, a3, v11);
        if (v15)
        {
          transportDevice_getNANDataSession_cold_2();
        }

        goto LABEL_19;
      }

LABEL_11:
      v15 = 0;
      goto LABEL_19;
    }

    v15 = -12780;
    APSLogErrorAt();
    if (gLogCategory_APTransportDevice <= 90 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = 0;
  }

LABEL_19:
  v20 = a1[7];
  FigSimpleMutexUnlock();
  *a4 = v15;
  if (v11)
  {
    return *v11;
  }

  else
  {
    return 0;
  }
}

const void *APTransportDeviceCopyProximityData(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v28[0] = 0xF0E0E0B0D0A0E0DLL;
  Value = CFDictionaryGetValue(*(a1 + 24), @"deviceInfo");
  v20 = 0;
  v3 = 0;
  v4 = 0;
  if (!APSIsProximitySenderEnabled() || !Value)
  {
    goto LABEL_35;
  }

  if (APSSettingsGetInt64())
  {
    v5 = APAdvertiserInfoCopyProperty(Value, 0, @"deviceName", 0, 0);
    if (!v5)
    {
      v3 = 0;
      v4 = 0;
      goto LABEL_35;
    }

    v6 = v5;
    v7 = APAdvertiserInfoCopyProperty(Value, 0, @"bluetoothAddress", 0, 0);
    if (!v7 || (getNINearbyObjectClass(), (objc_opt_respondsToSelector() & 1) == 0))
    {
      v4 = 0;
      v3 = 0;
      goto LABEL_32;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__2;
    v8 = getNIDiscoveryTokenClass_softClass;
    v26 = __Block_byref_object_dispose__2;
    v27 = getNIDiscoveryTokenClass_softClass;
    if (!getNIDiscoveryTokenClass_softClass)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __getNIDiscoveryTokenClass_block_invoke;
      v21[3] = &unk_278BC7CE0;
      v21[4] = &v22;
      __getNIDiscoveryTokenClass_block_invoke(v21);
      v8 = v23[5];
    }

    _Block_object_dispose(&v22, 8);
    v9 = [v8 alloc];
    v3 = [v9 initWithBytes:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", v28, 8)}];
    if (!v3 || (v10 = [getNINearbyObjectClass() fauxObjectWithDiscoveryToken:v3 name:v6 deviceIdentifier:v7]) == 0)
    {
      v4 = 0;
      goto LABEL_32;
    }

    v11 = 5.0;
    if (CFStringGetLength(v6) < 1)
    {
      goto LABEL_22;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(v6, 0);
    v13 = CharacterAtIndex;
    if (CharacterAtIndex > 0x7F)
    {
      if (!__maskrune(CharacterAtIndex, 0x100uLL))
      {
        goto LABEL_22;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * CharacterAtIndex + 60) & 0x100) == 0)
    {
LABEL_22:
      if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
      {
        v19 = v11;
        v18 = v6;
        LogPrintF();
      }

      if (objc_opt_respondsToSelector())
      {
        *&v14 = v11;
        [v10 overrideDistance:v14];
      }

      goto LABEL_28;
    }

    v11 = (91 - __toupper(v13)) * 0.1;
    goto LABEL_22;
  }

  v10 = CFDictionaryGetValue(*(a1 + 24), @"proximityData");
  if (gLogCategory_APTransportDevice <= 30)
  {
    APTransportDeviceCopyProximityData_cold_2(gLogCategory_APTransportDevice);
  }

  v7 = 0;
  v6 = 0;
  v3 = 0;
  v4 = 0;
  if (v10)
  {
LABEL_28:
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:{&v20, v18, *&v19}];
    v4 = v15;
    if (v20)
    {
      APTransportDeviceCopyProximityData_cold_1(&v20, v20, a1, v15, &v22);
      v4 = v22;
      if (!v6)
      {
LABEL_33:
        if (v7)
        {
          CFRelease(v7);
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v15)
      {
        CFRetain(v15);
      }

      if (!v6)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    CFRelease(v6);
    goto LABEL_33;
  }

LABEL_35:

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_23D300038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getNINearbyObjectClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getNINearbyObjectClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getNINearbyObjectClass_softClass;
  if (!getNINearbyObjectClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getNINearbyObjectClass_block_invoke;
    v2[3] = &unk_278BC7CE0;
    v2[4] = &v3;
    __getNINearbyObjectClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}