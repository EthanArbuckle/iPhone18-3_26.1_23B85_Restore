uint64_t manager_CopyRemoteControlDepotEndpoint(uint64_t a1, void *a2)
{
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = &v8;
  FigSimpleMutexLock();
  if (manager_CopyRemoteControlDepotEndpoint_createDepotOnce != -1)
  {
    dispatch_once_f(&manager_CopyRemoteControlDepotEndpoint_createDepotOnce, v7, manager_createRemoteControlEndpointDepotInternalOnce);
  }

  v5 = *(DerivedStorage + 200);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *a2 = v5;
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t manager_handleAggregateEndpointDissociated(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleAggregateEndpointDissociated_cold_1();
  }

  FigSimpleMutexLock();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v6 = *(DerivedStorage + 192);
  v10.length = CFArrayGetCount(v6);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v10, a4);
  if (FirstIndexOfValue == -1)
  {
    manager_handleAggregateEndpointDissociated_cold_2();
  }

  else
  {
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 192), FirstIndexOfValue);
  }

  return FigSimpleMutexUnlock();
}

uint64_t manager_createRemoteControlEndpointDepotInternalOnce(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AsSystemRemotePool = APEndpointAggregateCreateAsSystemRemotePool(*MEMORY[0x277CBECE8], (DerivedStorage + 200));
  if (AsSystemRemotePool)
  {
    result = manager_createRemoteControlEndpointDepotInternalOnce_cold_1();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterAddWeakListener();
  }

  **(a1 + 16) = AsSystemRemotePool;
  return result;
}

void manager_deactivateLocalCluster(uint64_t a1, uint64_t a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(Mutable, @"ActivatedByManager", *MEMORY[0x277CBED28]);
    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v6, @"ForceClusterChange", v8);
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v9 || v9(a2, v6, 0, 0))
    {
      manager_deactivateLocalCluster_cold_1();
    }

    CFRelease(v6);
  }

  else
  {
    manager_deactivateLocalCluster_cold_2();
  }
}

uint64_t __manager_createEndpoint_block_invoke(uint64_t a1, const void *a2, const void *a3, int a4, void *a5)
{
  v9 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Count = CFSetGetCount(*(DerivedStorage + 272));
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = *(DerivedStorage + 272);
  if (!a4)
  {
    CFSetRemoveValue(v12, a2);
    if (Count != 1 || CFSetGetCount(*(DerivedStorage + 272)))
    {
      goto LABEL_28;
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      __manager_createEndpoint_block_invoke_cold_2();
    }

    v13 = *(DerivedStorage + 288);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 288) = 0;
    }

LABEL_35:
    manager_startOrStopUGLRCServer(v9, a4);
    if (!a5)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  CFSetAddValue(v12, a2);
  if (a3)
  {
    if (!FigCFEqual())
    {
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v14 = *(DerivedStorage + 288);
      *(DerivedStorage + 288) = a3;
      CFRetain(a3);
      if (v14)
      {
        CFRelease(v14);
      }

      AirPlayReceiverServerSetProperty();
    }
  }

  else if (gLogCategory_APEndpointManager <= 60 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    __manager_createEndpoint_block_invoke_cold_1();
  }

  if (!Count)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (!a5)
  {
    goto LABEL_32;
  }

LABEL_29:
  v15 = *(DerivedStorage + 280);
  if (v15)
  {
    v15 = CFRetain(v15);
  }

  *a5 = v15;
LABEL_32:

  return FigSimpleMutexUnlock();
}

uint64_t manager_handleLocalRouteStateChanged()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  manager_getAndPostSenderStateUpdate();

  return FigSimpleMutexUnlock();
}

uint64_t manager_handleClusterChangeDeactivationFinish(uint64_t a1, void *a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = APSGetFBOPropertyInt64();
  if (v9)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    Value = 0;
  }

  else
  {
    Value = a4;
  }

  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (v10)
  {
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"SourceEndpoint");
    }

    a4 = Value;
    if (!Value)
    {
      if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      manager_removeCluster(a2, v10);
      goto LABEL_25;
    }
  }

  else if (!Value)
  {
    goto LABEL_25;
  }

  if (gLogCategory_APEndpointManager <= 50)
  {
    manager_handleClusterChangeDeactivationFinish_cold_1(gLogCategory_APEndpointManager);
  }

  if (manager_updateEndpointClusterMembershipIfNeeded(a2, a4, 0, 1))
  {
    manager_handleClusterChangeDeactivationFinish_cold_2();
  }

LABEL_25:
  if (!*(DerivedStorage + 160))
  {
    goto LABEL_51;
  }

  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleClusterChangeDeactivationFinish_cold_3();
  }

  *(DerivedStorage + 160) = 0;
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = CFDictionaryGetValue(*(v12 + 232), *(v12 + 296));
  CFDictionaryGetValue(*(v12 + 240), v13);
  v14 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v14) >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, v16);
      v18 = APSGetFBOPropertyInt64();
      v19 = FigCFEqual();
      if (v18)
      {
        if (!v19)
        {
          if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
          {
            manager_handleClusterChangeDeactivationFinish_cold_4();
          }

          manager_removeCluster(a2, ValueAtIndex);
          v15 = -71790;
        }
      }

      else if (v19)
      {
        v15 = -71790;
        if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      ++v16;
    }

    while (v16 < CFArrayGetCount(v14));
    if (v15)
    {
      goto LABEL_49;
    }
  }

  if (gLogCategory_APEndpointManager > 30 || gLogCategory_APEndpointManager == -1 && !_LogCategory_Initialize())
  {
LABEL_49:
    if (!v14)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  manager_handleClusterChangeDeactivationFinish_cold_5();
  if (v14)
  {
LABEL_50:
    CFRelease(v14);
  }

LABEL_51:
  CFRetain(a2);
  dispatch_async_f(*(DerivedStorage + 8), a2, manager_notifyAvailableEndpointsChanged);

  return FigSimpleMutexUnlock();
}

void manager_handleClusterChangeDeactivationRequired(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (Int64 && !*(DerivedStorage + 160))
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleClusterChangeDeactivationRequired_cold_1();
    }

    *(DerivedStorage + 160) = Int64 != 0;
    CFRetain(a2);
    dispatch_async_f(*(DerivedStorage + 8), a2, manager_notifyAvailableEndpointsChanged);
  }

  FigSimpleMutexUnlock();

  manager_deactivateLocalCluster(a2, a4, 0);
}

void manager_handleNonPersistentReceiverSessionStartedOnLocalHTSecondary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      manager_handleNonPersistentReceiverSessionStartedOnLocalHTSecondary_cold_1();
      return;
    }

    v6 = Mutable;
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
  }

  else
  {
    v6 = 0;
  }

  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleNonPersistentReceiverSessionStartedOnLocalHTSecondary_cold_2();
  }

  APSXPCServerPostEvent();
  if (v6)
  {

    CFRelease(v6);
  }
}

void __manager_asyncRegisterAirPlayHALDriverInternal_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    __manager_asyncRegisterAirPlayHALDriverInternal_block_invoke_cold_1();
  }

  v2 = *(a1 + 32);

  manager_AudioServerPluginInterruptionHandler(v2);
}

void __manager_asyncStartNetworkClock_block_invoke(uint64_t a1)
{
  for (i = *(a1 + 32); !*(i + 1); i = *(a1 + 32))
  {
    if (gLogCategory_APEndpointManager <= 30)
    {
      if (gLogCategory_APEndpointManager != -1 || (v3 = _LogCategory_Initialize(), i = *(a1 + 32), v3))
      {
        LogPrintF();
        i = *(a1 + 32);
      }
    }

    v4 = *(i + 304);
    v5 = *(a1 + 40);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v6)
    {
      v7 = v6(v4, v5);
    }

    else
    {
      v7 = -12782;
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!v7)
    {
      break;
    }

    sleep(2u);
  }

  v8 = *(a1 + 40);

  CFRelease(v8);
}

uint64_t manager_injectEndpoint(void *a1, const __CFDictionary *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFDictionaryGetValue(*(DerivedStorage + 168), a3))
  {
    if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_injectEndpoint_cold_1();
    }

    manager_removeEndpointForTransportDeviceIfNeeded(a1, a3, *(DerivedStorage + 168), 1);
  }

  Int64 = CFDictionaryGetInt64();
  Value = CFDictionaryGetValue(a2, @"AuthString");
  if (Int64)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v12)
    {
      v14 = 4294954514;
      goto LABEL_29;
    }

    v13 = v12(CMBaseObject, @"ScreenUsageMode", *MEMORY[0x277CD6790]);
    if (v13)
    {
      v14 = v13;
LABEL_29:
      APSLogErrorAt();
      goto LABEL_30;
    }
  }

  else if (!CFDictionaryGetInt64())
  {
    goto LABEL_10;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v15)
  {
    v14 = 4294954514;
    goto LABEL_29;
  }

  v16 = v15(a4, @"StartSilentAudio", *MEMORY[0x277CBED28]);
  if (v16)
  {
    v14 = v16;
    goto LABEL_29;
  }

LABEL_10:
  if (Value)
  {
    v17 = FigEndpointGetCMBaseObject();
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v18)
    {
      v14 = 4294954514;
      goto LABEL_29;
    }

    v19 = v18(v17, *MEMORY[0x277CC1488], Value);
    if (v19)
    {
      v14 = v19;
      goto LABEL_29;
    }
  }

  if (CFDictionaryGetInt64())
  {
    v21 = MEMORY[0x277CBED10];
  }

  else
  {
    v21 = MEMORY[0x277CBED28];
  }

  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v22)
  {
    v22(a4, *MEMORY[0x277CC1278], *v21);
  }

  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  manager_addEndpoint(a1, a3, a4, *(DerivedStorage + 168));
  manager_postEndpointPresentChangedNotification();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_injectEndpoint_cold_2();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v23 = FigDispatchAsyncPostNotification();
  v14 = 0;
  if (v23)
  {
    v24 = v23;
    manager_injectEndpoint_cold_3();
    v14 = v24;
  }

LABEL_30:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t __manager_registerForNotifications_block_invoke_2()
{
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    __manager_registerForNotifications_block_invoke_2_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t __manager_registerForNotifications_block_invoke_3(uint64_t a1, int token)
{
  state64 = 0;
  v2 = *(*(a1 + 32) + 396);
  result = notify_get_state(token, &state64);
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __manager_registerForNotifications_block_invoke_3_cold_1();
    }
  }

  v5 = v2 != 4 || state64 == 1;
  if (state64)
  {
    v6 = !v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      __manager_registerForNotifications_block_invoke_3_cold_2();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t __manager_registerForNotifications_block_invoke_4(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(*(a1 + 32) + 136))
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      __manager_registerForNotifications_block_invoke_4_cold_1();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  return FigSimpleMutexUnlock();
}

void manager_updateAllowedDevices(uint64_t a1)
{
  v2 = FigCFDictionaryCopyArrayOfValues();
  cf = 0;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_10:
    if (!v2)
    {
      return;
    }

    goto LABEL_11;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v8)
    {
      break;
    }

    v9 = v8(CMBaseObject, @"EndpointDescription", 0, &cf);
    if (v9)
    {
      goto LABEL_14;
    }

    if (!manager_deviceIsAllowed(a1, cf))
    {
      manager_removeEndpointIfNeeded(a1, ValueAtIndex, 1);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v4 == ++v5)
    {
      goto LABEL_10;
    }
  }

  v9 = 4294954514;
LABEL_14:
  manager_updateAllowedDevices_cold_1(v9, &cf);
  if (v2)
  {
LABEL_11:
    CFRelease(v2);
  }
}

uint64_t __manager_handleClearEndpointWithEndpointIDNotification_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  APTransportDeviceGetDiscoveryID();
  result = CFGetInt64();
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return result;
}

void __manager_handleDiscoveryBrokerRequest_block_invoke(uint64_t a1)
{
  v2 = gLogCategory_APEndpointManager;
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v2 = gLogCategory_APEndpointManager;
    }

    if (v2 <= 30)
    {
      if (v2 != -1 || (_LogCategory_Initialize(), v2 = gLogCategory_APEndpointManager, gLogCategory_APEndpointManager <= 30))
      {
        if (v2 == -1)
        {
          _LogCategory_Initialize();
        }
      }
    }

    LogPrintF();
  }

LABEL_13:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetValue(Mutable, @"RequestType", @"Authenticate");
    CFDictionarySetInt64();
    FigCFDictionarySetValue();
    FigCFDictionarySetValueFromKeyInDict();
    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      __manager_handleDiscoveryBrokerRequest_block_invoke_cold_1();
    }

    APSXPCServerPostEvent();
    CFRelease(v4);
  }

  else
  {
    __manager_handleDiscoveryBrokerRequest_block_invoke_cold_2();
  }

  v5 = *(a1 + 32);

  CFRelease(v5);
}

void __manager_handleDiscoveryBrokerRequest_block_invoke_2(uint64_t a1)
{
  v2 = gLogCategory_APEndpointManager;
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v2 = gLogCategory_APEndpointManager;
    }

    if (v2 <= 30)
    {
      if (v2 != -1 || (_LogCategory_Initialize(), v2 = gLogCategory_APEndpointManager, gLogCategory_APEndpointManager <= 30))
      {
        if (v2 == -1)
        {
          _LogCategory_Initialize();
        }
      }
    }

    LogPrintF();
  }

LABEL_13:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetValue(Mutable, @"RequestType", @"GetInfo");
    CFDictionarySetInt64();
    FigCFDictionarySetValue();
    FigCFDictionarySetValueFromKeyInDict();
    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      __manager_handleDiscoveryBrokerRequest_block_invoke_2_cold_1();
    }

    APSXPCServerPostEvent();
    CFRelease(v4);
  }

  else
  {
    __manager_handleDiscoveryBrokerRequest_block_invoke_2_cold_2();
  }

  v5 = *(a1 + 32);

  CFRelease(v5);
}

uint64_t __introspector_getCollectionOfEndpointManagers_block_invoke()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    introspector_getCollectionOfEndpointManagers_coll = malloc_type_calloc(1uLL, 0x18uLL, 0xF00401F3BCE50uLL);
    *introspector_getCollectionOfEndpointManagers_coll = dispatch_queue_create("CollectionOfEndpointManagers", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v2 = introspector_getCollectionOfEndpointManagers_coll;
    *(introspector_getCollectionOfEndpointManagers_coll + 8) = Mutable;
    *(v2 + 16) = "EndpointManagers";

    return APSIntrospectorAddCommand();
  }

  return result;
}

void manager_introspector_showEndpointInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v5 = *MEMORY[0x277CBECE8];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x277CC1368], v5, &v14);
  }

  v8 = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, *MEMORY[0x277CC1450], v5, &v13);
  }

  v10 = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, *MEMORY[0x277CC1440], v5, &v12);
  }

  APSGetFBOPropertyInt64();
  APSGetFBOPropertyInt64();
  APSGetFBOPropertyInt64();
  FPrintF();
  if (a4)
  {
    FPrintF();
  }

  FPrintF();
  if (v14)
  {
    CFRelease(v14);
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

CFTypeRef manager_introspector_copyMatchingEndpoint(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v27 = 0;
  v28 = 0;
  v5 = manager_copyEndpoints(a1, 0);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v6);
      if (Count < 1)
      {
        v19 = 0;
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v9 = Count;
        v10 = 0;
        v24 = *MEMORY[0x277CC1368];
        v25 = *MEMORY[0x277CBECE8];
        v23 = *MEMORY[0x277CC1450];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
          v12 = APSGetFBOPropertyInt64();
          v13 = IsAnUGLWrapperEndpoint(ValueAtIndex);
          CMBaseObject = FigEndpointGetCMBaseObject();
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v15)
          {
            v15(CMBaseObject, v24, v25, &v28);
          }

          v16 = v12 != 0;
          if (FigCFEqual() && v16 == a3 && v13 == a4)
          {
            if (gLogCategory_APEndpointManager > 50 || gLogCategory_APEndpointManager == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_47;
            }

LABEL_37:
            LogPrintF();
LABEL_47:
            v21 = CFRetain(ValueAtIndex);
            v20 = 0;
            goto LABEL_48;
          }

          v17 = FigEndpointGetCMBaseObject();
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v18)
          {
            v18(v17, v23, v25, &v27);
          }

          if (FigCFEqual() && v16 == a3 && v13 == a4)
          {
            if (gLogCategory_APEndpointManager > 50 || gLogCategory_APEndpointManager == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_47;
            }

            goto LABEL_37;
          }

          v19 = CFStringCreateF();
          if (FigCFEqual())
          {
            break;
          }

          v20 = CFStringCreateF();
          if (FigCFEqual())
          {
            if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v21 = CFRetain(ValueAtIndex);
            if (v6)
            {
              goto LABEL_52;
            }

            goto LABEL_53;
          }

          if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (v28)
          {
            CFRelease(v28);
            v28 = 0;
          }

          if (v27)
          {
            CFRelease(v27);
            v27 = 0;
          }

          if (v19)
          {
            CFRelease(v19);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          if (v9 == ++v10)
          {
            goto LABEL_30;
          }
        }

        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v21 = CFRetain(ValueAtIndex);
        v20 = 0;
        if (!v6)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_52;
    }
  }

  manager_introspector_copyMatchingEndpoint_cold_1();
LABEL_30:
  v20 = 0;
  v21 = 0;
LABEL_48:
  v19 = 0;
  if (v6)
  {
LABEL_52:
    CFRelease(v6);
  }

LABEL_53:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v21;
}

uint64_t manager_introspector_printRWUsage()
{
  FPrintF();
  FPrintF();
  FPrintF();

  return FPrintF();
}

uint64_t AirPlayDebugIPCEnableForEndpointManager(const void *a1)
{
  if (!a1 || (v2 = CFGetTypeID(a1), v2 != FigEndpointManagerGetTypeID()))
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_7(&v5);
    return v5;
  }

  if (!IsAppleInternalBuild())
  {
    if (gLogCategory_AirPlayDebugIPCUtilities > 40)
    {
      return 0;
    }

    if (gLogCategory_AirPlayDebugIPCUtilities != -1 || (result = _LogCategory_Initialize(), result))
    {
      AirPlayDebugIPCEnableForEndpointManager_cold_6();
      return 0;
    }

    return result;
  }

  if (AirPlayDebugIPCEnableForEndpointManager_initOnce != -1)
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_1();
  }

  if (!_MergedGlobals_4)
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_5(&v5);
    return v5;
  }

  if (!qword_280FB1A60)
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_4(&v5);
    return v5;
  }

  Count = CFArrayGetCount(_MergedGlobals_4);
  v6.location = 0;
  v6.length = Count;
  if (CFArrayContainsValue(_MergedGlobals_4, v6, a1))
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_2(&v5);
    return v5;
  }

  CFArrayAppendValue(_MergedGlobals_4, a1);
  FigCFDictionarySetValue();
  if (Count > 0)
  {
    return 0;
  }

  DebugIPC_EnsureInitialized();
  if (gLogCategory_AirPlayDebugIPCUtilities > 30)
  {
    return 0;
  }

  if (gLogCategory_AirPlayDebugIPCUtilities != -1 || (result = _LogCategory_Initialize(), result))
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_3();
    return 0;
  }

  return result;
}

CFMutableDictionaryRef __AirPlayDebugIPCEnableForEndpointManager_block_invoke()
{
  _MergedGlobals_4 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  qword_280FB1A60 = result;
  return result;
}

CFTypeRef AirPlayDebugIPCDisableForEndpointManager(const void *a1)
{
  cf = 0;
  if (!a1 || (v2 = CFGetTypeID(a1), v2 != FigEndpointManagerGetTypeID()))
  {
    AirPlayDebugIPCDisableForEndpointManager_cold_5(&v11);
    return v11;
  }

  if (!_MergedGlobals_4)
  {
    AirPlayDebugIPCDisableForEndpointManager_cold_4(&v11);
    return v11;
  }

  if (!qword_280FB1A60)
  {
    AirPlayDebugIPCDisableForEndpointManager_cold_3(&v11);
    return v11;
  }

  Count = CFArrayGetCount(_MergedGlobals_4);
  v12.location = 0;
  v12.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(_MergedGlobals_4, v12, a1);
  if (FirstIndexOfValue == -1)
  {
    AirPlayDebugIPCDisableForEndpointManager_cold_2(&v11);
    return v11;
  }

  v5 = FirstIndexOfValue;
  ValueAtIndex = CFArrayGetValueAtIndex(_MergedGlobals_4, FirstIndexOfValue);
  CFDictionaryRemoveValue(qword_280FB1A60, ValueAtIndex);
  CFArrayRemoveValueAtIndex(_MergedGlobals_4, v5);
  if (Count <= 1)
  {
    DebugIPC_EnsureFinalized();
    if (gLogCategory_AirPlayDebugIPCUtilities <= 30 && (gLogCategory_AirPlayDebugIPCUtilities != -1 || _LogCategory_Initialize()))
    {
      AirPlayDebugIPCDisableForEndpointManager_cold_1();
    }
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(CMBaseObject, *MEMORY[0x277CC0C50], *MEMORY[0x277CBECE8], &cf);
    result = cf;
    if (!cf)
    {
      return result;
    }

    CFRelease(cf);
  }

  return 0;
}

uint64_t airPlayDebugIPC_copyEndpointWithID(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  cf1 = 0;
  theArray = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v15 = 4294954514;
LABEL_15:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = v6(CMBaseObject, *MEMORY[0x277CC0C30], *MEMORY[0x277CBECE8], &theArray);
  if (v8)
  {
    v15 = v8;
    goto LABEL_15;
  }

  if (!theArray)
  {
    v15 = 0;
LABEL_20:
    *a3 = 0;
    goto LABEL_21;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v10 = 0;
    v15 = 0;
  }

  else
  {
    v10 = 0;
    v11 = *MEMORY[0x277CC1368];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      v13 = FigEndpointGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      v15 = v14 ? v14(v13, v11, v7, &cf1) : 4294954514;
      if (CFEqual(cf1, a2))
      {
        break;
      }

      if (cf1)
      {
        CFRelease(cf1);
        cf1 = 0;
      }

      if (Count == ++v10)
      {
        goto LABEL_20;
      }
    }

    *a3 = CFRetain(ValueAtIndex);
  }

  if (v10 == Count)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v15;
}

uint64_t airPlayDebugIPC_createEndpointActivationDictionary(CFMutableDictionaryRef *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    result = 0;
    *a1 = v3;
  }

  else
  {
    airPlayDebugIPC_createEndpointActivationDictionary_cold_1(&v5);
    return v5;
  }

  return result;
}

void airPlayDebugIPC_overrideEndpointManagerEnabled(const void *a1, int a2)
{
  cf2 = 0;
  if (_MergedGlobals_4)
  {
    Count = CFArrayGetCount(_MergedGlobals_4);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = *MEMORY[0x277CC0C50];
      v8 = *MEMORY[0x277CBECE8];
      while (1)
      {
        CFArrayGetValueAtIndex(_MergedGlobals_4, v6);
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v10 || v10(CMBaseObject, v7, v8, &cf2))
        {
          airPlayDebugIPC_overrideEndpointManagerEnabled_cold_1();
          return;
        }

        if (CFEqual(a1, cf2))
        {
          break;
        }

        if (cf2)
        {
          CFRelease(cf2);
          cf2 = 0;
        }

        if (v5 == ++v6)
        {
          return;
        }
      }

      if (a2)
      {
        v11 = MEMORY[0x277CBED28];
      }

      else
      {
        v11 = MEMORY[0x277CBED10];
      }

      v12 = FigEndpointManagerGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(v12, @"OverrideEndpointManagerEnabled", *v11);
      }

      if (cf2)
      {
        CFRelease(cf2);
      }
    }
  }
}

uint64_t airPlayDebugIPC_showStats(const void *a1, const __CFString *a2)
{
  theArray = 0;
  cf2 = 0;
  cf = 0;
  if (_MergedGlobals_4)
  {
    Count = CFArrayGetCount(_MergedGlobals_4);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = *MEMORY[0x277CC0C50];
      v8 = *MEMORY[0x277CBECE8];
      while (1)
      {
        CFArrayGetValueAtIndex(_MergedGlobals_4, v6);
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v10)
        {
          break;
        }

        v11 = v10(CMBaseObject, v7, v8, &cf2);
        if (v11)
        {
          v12 = v11;
          goto LABEL_21;
        }

        if (CFEqual(a1, cf2))
        {
          v13 = FigEndpointManagerGetCMBaseObject();
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v15 = v14(v13, *MEMORY[0x277CC0C30], v8, &theArray);
            if (v15)
            {
              v12 = v15;
            }

            else
            {
              if (CFArrayGetCount(theArray) < 1)
              {
                goto LABEL_10;
              }

              CFArrayGetValueAtIndex(theArray, 0);
              v16 = FigEndpointGetCMBaseObject();
              v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v17)
              {
                v18 = v17(v16, @"Statistics", 0, &cf);
                if (!v18)
                {
                  Length = CFStringGetLength(a2);
                  v20 = malloc_type_malloc(Length + 1, 0xBBAD2306uLL);
                  if (CFStringGetCString(a2, v20, Length + 1, 0x8000100u))
                  {
                    v12 = CFPropertyListWriteToFilePath();
                    if (v12)
                    {
                      airPlayDebugIPC_showStats_cold_1();
                    }
                  }

                  else
                  {
                    airPlayDebugIPC_showStats_cold_2();
                    v12 = 0;
                  }

                  goto LABEL_23;
                }

                v12 = v18;
              }

              else
              {
                v12 = 4294954514;
              }
            }
          }

          else
          {
            v12 = 4294954514;
          }

LABEL_21:
          APSLogErrorAt();
          goto LABEL_22;
        }

        if (cf2)
        {
          CFRelease(cf2);
          cf2 = 0;
        }

        if (v5 == ++v6)
        {
          goto LABEL_10;
        }
      }

      v12 = 4294954514;
      goto LABEL_21;
    }
  }

LABEL_10:
  v12 = 0;
LABEL_22:
  v20 = 0;
LABEL_23:
  if (cf2)
  {
    CFRelease(cf2);
    cf2 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    free(v20);
  }

  return v12;
}

uint64_t APMessageRingGetTypeID()
{
  if (_MergedGlobals_5 != -1)
  {
    APMessageRingGetTypeID_cold_1();
  }

  return qword_280FB1A70;
}

uint64_t ring_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMessageRingCreate(uint64_t a1, size_t a2, __int16 a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a4)
  {
    APMessageRingCreate_cold_9();
    return 4294960591;
  }

  if (_MergedGlobals_5 != -1)
  {
    APMessageRingGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APMessageRingCreate_cold_8();
    return 4294960568;
  }

  v12 = Instance;
  *(Instance + 96) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  v13 = FigSimpleMutexCreate();
  *(v12 + 16) = v13;
  if (!v13)
  {
    APMessageRingCreate_cold_7();
LABEL_28:
    v21 = 4294960568;
LABEL_29:
    CFRelease(v12);
    return v21;
  }

  *(v12 + 24) = a3;
  *(v12 + 26) = a3;
  v14 = malloc_type_calloc(a2, 8uLL, 0x2004093837F09uLL);
  *(v12 + 40) = v14;
  if (!v14)
  {
    APMessageRingCreate_cold_6();
    goto LABEL_28;
  }

  v15 = malloc_type_calloc(a2, 8uLL, 0x2004093837F09uLL);
  *(v12 + 48) = v15;
  if (!v15)
  {
    APMessageRingCreate_cold_5();
    goto LABEL_28;
  }

  v16 = malloc_type_calloc(a2, 4uLL, 0x100004052888210uLL);
  *(v12 + 56) = v16;
  if (!v16)
  {
    APMessageRingCreate_cold_4();
    goto LABEL_28;
  }

  v17 = malloc_type_calloc(a2, 0x18uLL, 0x1000040504FFAC1uLL);
  *(v12 + 72) = v17;
  if (!v17)
  {
    APMessageRingCreate_cold_3();
    goto LABEL_28;
  }

  *(v12 + 32) = a2;
  *(v12 + 96) = CFRetain(a4);
  if (a2)
  {
    v18 = 0;
    v19 = a2;
    while (1)
    {
      v20 = APTransportStreamSendBackingProviderAcquireBBuf();
      if (v20)
      {
        break;
      }

      v18 += 8;
      if (!--v19)
      {
        goto LABEL_14;
      }
    }

    v21 = v20;
    APMessageRingCreate_cold_2();
    goto LABEL_29;
  }

LABEL_14:
  if (gLogCategory_APMessageRing <= 50 && (gLogCategory_APMessageRing != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v21 = 0;
  *a7 = v12;
  return v21;
}

uint64_t APMessageRingGetUsedCount(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 26) - *(a1 + 24);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APMessageRingGetNextFreeBacking(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 32);
  v3 = *(a1 + 26);
  if (v2 == (v3 - *(a1 + 24)))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(a1 + 48) + 8 * (v3 % v2));
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t APMessageRingGetNextEnqueueSequenceNumber(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 26);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APMessageRingEnqueueMessageForSending(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 16);
  return APMessageRingEnqueueMessageForSendingWithPayloadCount(a1, a2, &v4, 1);
}

uint64_t APMessageRingEnqueueMessageForSendingWithPayloadCount(uint64_t a1, OpaqueCMBlockBuffer *a2, __int128 *a3, int a4)
{
  v19 = 0;
  dataPointerOut = 0;
  FigSimpleMutexLock();
  if (*(a1 + 32) == (*(a1 + 26) - *(a1 + 24)))
  {
    APMessageRingEnqueueMessageForSendingWithPayloadCount_cold_5();
    v17 = 4294960587;
    goto LABEL_15;
  }

  if (!a4)
  {
    APMessageRingEnqueueMessageForSendingWithPayloadCount_cold_4();
LABEL_21:
    v17 = 4294960591;
    goto LABEL_15;
  }

  if (-65536 * a4 >= 0x10000)
  {
    APMessageRingEnqueueMessageForSendingWithPayloadCount_cold_3();
    goto LABEL_21;
  }

  CMBlockBufferGetDataPointer(a2, 0, 0, 0, &dataPointerOut);
  v8 = 0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 26);
  if (v9 != (v10 - *(a1 + 24)))
  {
    v8 = *(*(a1 + 48) + 8 * (v10 % v9));
  }

  CMBlockBufferGetDataPointer(v8, 0, 0, 0, &v19);
  if (dataPointerOut != v19)
  {
    APMessageRingEnqueueMessageForSendingWithPayloadCount_cold_1();
    goto LABEL_21;
  }

  APSTransportMessageSetAudioDataSequenceNumber();
  if (gLogCategory_APMessageRing <= 10 && (gLogCategory_APMessageRing != -1 || _LogCategory_Initialize()))
  {
    APMessageRingEnqueueMessageForSendingWithPayloadCount_cold_2();
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 26) % *(a1 + 32);
  v13 = *(v11 + 8 * v12);
  if (a2)
  {
    CFRetain(a2);
  }

  *(v11 + 8 * v12) = a2;
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 26) % *(a1 + 32);
  *(*(a1 + 56) + 4 * v14) = a4;
  v15 = *(a1 + 72) + 24 * v14;
  v16 = *a3;
  *(v15 + 16) = *(a3 + 2);
  *v15 = v16;
  APTransportStreamSendBackingProviderUpdateAcquiredBBuf();
  v17 = 0;
  ++*(a1 + 26);
LABEL_15:
  FigSimpleMutexUnlock();
  return v17;
}

uint64_t APMessageRingGetNextUnsentMessage(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  if (*(a1 + 26) == v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4 % *(a1 + 32);
    v5 = *(*(a1 + 40) + 8 * v6);
    if (a2)
    {
      v7 = *(a1 + 72) + 24 * v6;
      v8 = *v7;
      *(a2 + 16) = *(v7 + 16);
      *a2 = v8;
    }
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t APMessageRingMarkMessageAsSent(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  if (*(a1 + 26) == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(a1 + 40) + 8 * (v4 % *(a1 + 32)));
  }

  if (v5 == a2)
  {
    *(a1 + 24) = v4 + 1;
    v6 = *(a1 + 80);
    if (v6)
    {
      CFRelease(v6);
      v7 = 0;
      *(a1 + 80) = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    APMessageRingMarkMessageAsSent_cold_1();
    v7 = 4294960591;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t APMessageRingSetMaxPacketRedundancy(uint64_t a1, int a2)
{
  FigSimpleMutexLock();
  *(a1 + 64) = a2;

  return FigSimpleMutexUnlock();
}

uint64_t APMessageRingGetMaxPacketRedundancy(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 64);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APMessageRingSetTargetPayloadRedundancy(uint64_t a1, int a2)
{
  FigSimpleMutexLock();
  *(a1 + 68) = a2;

  return FigSimpleMutexUnlock();
}

uint64_t APMessageRingGetTargetPayloadRedundancy(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 68);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APMessageRingCopyNextBurst(uint64_t a1, const __CFAllocator *a2, CFTypeRef *a3)
{
  FigSimpleMutexLock();
  if (*(a1 + 26) == *(a1 + 24))
  {
    v14 = 4294960546;
LABEL_15:
    APSLogErrorAt();
    FigSimpleMutexUnlock();
    return v14;
  }

  Mutable = CFArrayCreateMutable(a2, (*(a1 + 64) + 1), MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v14 = 4294960568;
    goto LABEL_15;
  }

  v7 = Mutable;
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 24);
  do
  {
    if (v8 > *(a1 + 68))
    {
      break;
    }

    v11 = *(*(a1 + 40) + 8 * (v10 % *(a1 + 32)));
    if (!v11)
    {
      break;
    }

    if (APSTransportMessageGetAudioDataSequenceNumber())
    {
      break;
    }

    if (v10)
    {
      break;
    }

    CFArrayAppendValue(v7, v11);
    ++v9;
    v12 = *(*(a1 + 56) + 4 * (0uLL % *(a1 + 32)));
    v8 += v12;
    v10 = -v12;
  }

  while (v9 <= *(a1 + 64));
  APSCFArrayReverse();
  v13 = *(a1 + 80);
  *(a1 + 80) = v7;
  CFRetain(v7);
  if (v13)
  {
    CFRelease(v13);
  }

  *a3 = CFRetain(v7);
  FigSimpleMutexUnlock();
  CFRelease(v7);
  return 0;
}

uint64_t APMessageRingMarkBurstAsSent(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if (!a2)
  {
    APMessageRingMarkBurstAsSent_cold_2();
    goto LABEL_11;
  }

  v4 = *(a1 + 80);
  if (v4 == a2)
  {
    goto LABEL_6;
  }

  if (!v4 || !CFEqual(a2, v4))
  {
    APMessageRingMarkBurstAsSent_cold_1();
LABEL_11:
    v5 = 4294960591;
    goto LABEL_9;
  }

  v4 = *(a1 + 80);
LABEL_6:
  ++*(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
    v5 = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t ring_Finalize(void *a1)
{
  if (gLogCategory_APMessageRing <= 50 && (gLogCategory_APMessageRing != -1 || _LogCategory_Initialize()))
  {
    ring_Finalize_cold_1();
  }

  if (a1[4])
  {
    v2 = 0;
    do
    {
      v3 = *(a1[5] + 8 * v2);
      if (v3)
      {
        CFRelease(v3);
        *(a1[5] + 8 * v2) = 0;
      }

      APTransportStreamSendBackingProviderRelinquishBBuf();
      ++v2;
    }

    while (v2 < a1[4]);
  }

  v4 = a1[5];
  if (v4)
  {
    free(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    free(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    free(v6);
    a1[7] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    free(v7);
    a1[9] = 0;
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[10];
  if (v9)
  {
    CFRelease(v9);
  }

  return FigSimpleMutexDestroy();
}

uint64_t SPEndpointManagerCreate(void *a1)
{
  if (SPEndpointManagerGetShared_once != -1)
  {
    SPEndpointManagerCreate_cold_1();
  }

  v2 = SPEndpointManagerGetShared_sSPEndpointManager;
  if (SPEndpointManagerGetShared_sSPEndpointManager)
  {
    v2 = CFRetain(SPEndpointManagerGetShared_sSPEndpointManager);
  }

  *a1 = v2;
  return gCreationErr_1;
}

uint64_t SPEndpointManagerGetShared()
{
  if (SPEndpointManagerGetShared_once != -1)
  {
    SPEndpointManagerCreate_cold_1();
  }

  return SPEndpointManagerGetShared_sSPEndpointManager;
}

void __SPEndpointManagerGetShared_block_invoke()
{
  cf = 0;
  LogSetAppID();
  v0 = *MEMORY[0x277CBECE8];
  FigEndpointManagerGetClassID();
  v1 = CMDerivedObjectCreate();
  if (v1)
  {
    v26 = v1;
    __SPEndpointManagerGetShared_block_invoke_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = dispatch_queue_create("com.apple.airplay.endpointManager.notification", 0);
    *(DerivedStorage + 8) = v3;
    if (v3)
    {
      v4 = FigSimpleMutexCreate();
      *(DerivedStorage + 24) = v4;
      if (v4)
      {
        *(DerivedStorage + 32) = 0;
        *(DerivedStorage + 34) = 0;
        Mutable = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(DerivedStorage + 48) = Mutable;
        if (Mutable)
        {
          v6 = CFSetCreateMutable(v0, 0, MEMORY[0x277CBF158]);
          *(DerivedStorage + 56) = v6;
          if (v6)
          {
            v7 = CFSetCreateMutable(v0, 0, MEMORY[0x277CBF158]);
            *(DerivedStorage + 64) = v7;
            if (v7)
            {
              v8 = MEMORY[0x277CC0898];
              *(DerivedStorage + 72) = *MEMORY[0x277CC0898];
              *(DerivedStorage + 88) = *(v8 + 16);
              *(DerivedStorage + 128) = APSSettingsGetIntWithDefault();
              *(DerivedStorage + 136) = APSSettingsGetIntWithDefault();
              *(DerivedStorage + 144) = APSSettingsGetIntWithDefault();
              v9 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (v9)
              {
                v10 = v9;
                APSEventRecorderCreate();
                v11 = *(DerivedStorage + 160);
                if (v11)
                {
                  CFDictionarySetValue(v10, *MEMORY[0x277CE4CB0], v11);
                }

                v12 = *MEMORY[0x277CBED10];
                CFDictionarySetValue(v10, *MEMORY[0x277CE4CB8], *MEMORY[0x277CBED10]);
                CFDictionarySetValue(v10, *MEMORY[0x277CE4CC8], v12);
                CFDictionarySetValue(v10, *MEMORY[0x277CE4CC0], v12);
                CFDictionarySetValue(v10, *MEMORY[0x277CE4CE0], v12);
                v13 = *MEMORY[0x277CE4CD8];
                if (APSSettingsGetInt64())
                {
                  v14 = v12;
                }

                else
                {
                  v14 = *MEMORY[0x277CBED28];
                }

                CFDictionarySetValue(v10, v13, v14);
                v15 = APBrowserCreate();
                if (v15)
                {
                  v26 = v15;
                  __SPEndpointManagerGetShared_block_invoke_cold_2();
                }

                else
                {
                  v16 = *(DerivedStorage + 152);
                  v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                  if (v17)
                  {
                    v18 = v17(v16, spmanager_browserEventHandler, cf);
                    if (!v18)
                    {
                      v19 = AirPlayDebugIPCEnableForEndpointManager(cf);
                      if (v19)
                      {
                        v26 = v19;
                        __SPEndpointManagerGetShared_block_invoke_cold_3();
                      }

                      else
                      {
                        *(DerivedStorage + 16) = -1;
                        v20 = CMBaseObjectGetDerivedStorage();
                        v21 = *(v20 + 8);
                        handler = MEMORY[0x277D85DD0];
                        v28 = 0x40000000;
                        v29 = __spmanager_registerForNotifications_block_invoke;
                        v30 = &__block_descriptor_tmp_225;
                        v31 = cf;
                        notify_register_dispatch("com.apple.airplay.prefsChanged", (v20 + 16), v21, &handler);
                        *(DerivedStorage + 112) = APSSettingsGetInt64() != 0;
                        v22 = SPHubbedDevicesProviderCreate((DerivedStorage + 104));
                        if (v22)
                        {
                          v26 = v22;
                          __SPEndpointManagerGetShared_block_invoke_cold_4();
                        }

                        else
                        {
                          v23 = SPHubbedDevicesProviderAddListener(*(DerivedStorage + 104), cf, spmanager_handleHubbedDevicesChanged);
                          if (v23)
                          {
                            v26 = v23;
                            __SPEndpointManagerGetShared_block_invoke_cold_5();
                          }

                          else
                          {
                            started = SPHubbedDevicesProviderStartAsync(*(DerivedStorage + 104));
                            if (started)
                            {
                              v26 = started;
                              __SPEndpointManagerGetShared_block_invoke_cold_6();
                            }

                            else
                            {
                              spmanager_handlePreferencesChanged(cf);
                              if (introspector_getCollectionOfSPEndpointManagers_once != -1)
                              {
                                __SPEndpointManagerGetShared_block_invoke_cold_7();
                              }

                              if (introspector_getCollectionOfSPEndpointManagers_coll)
                              {
                                v25 = *introspector_getCollectionOfSPEndpointManagers_coll;
                                handler = MEMORY[0x277D85DD0];
                                v28 = 0x40000000;
                                v29 = __spmanager_create_block_invoke;
                                v30 = &__block_descriptor_tmp_24;
                                v31 = introspector_getCollectionOfSPEndpointManagers_coll;
                                v32 = cf;
                                dispatch_sync(v25, &handler);
                              }

                              APSIntrospectorAddCommand();
                              APSIntrospectorAddCommand();
                              APSIntrospectorAddCommand();
                              APSIntrospectorAddCommand();
                              APSIntrospectorAddCommand();
                              APSIntrospectorAddCommand();
                              if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
                              {
                                __SPEndpointManagerGetShared_block_invoke_cold_8();
                              }

                              v26 = 0;
                              SPEndpointManagerGetShared_sSPEndpointManager = cf;
                              cf = 0;
                            }
                          }
                        }
                      }

                      goto LABEL_30;
                    }

                    v26 = v18;
                  }

                  else
                  {
                    v26 = -12782;
                  }

                  APSLogErrorAt();
                }

LABEL_30:
                CFRelease(v10);
                goto LABEL_31;
              }

              __SPEndpointManagerGetShared_block_invoke_cold_9();
            }

            else
            {
              __SPEndpointManagerGetShared_block_invoke_cold_10();
            }
          }

          else
          {
            __SPEndpointManagerGetShared_block_invoke_cold_11();
          }
        }

        else
        {
          __SPEndpointManagerGetShared_block_invoke_cold_12();
        }
      }

      else
      {
        __SPEndpointManagerGetShared_block_invoke_cold_13();
      }
    }

    else
    {
      __SPEndpointManagerGetShared_block_invoke_cold_14();
    }

    v26 = -16711;
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  gCreationErr_1 = v26;
}

void spmanager_browserEventHandler(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if ((a2 - 3) >= 2)
  {
    if ((a2 - 7) >= 2)
    {
      if (a2 == 5)
      {
        if (a3)
        {
          if (APTransportDeviceCreate())
          {
            spmanager_browserEventHandler_cold_1();
          }

          else
          {
            CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
            {
              spmanager_browserEventHandler_cold_2();
            }

            DerivedStorage = CMBaseObjectGetDerivedStorage();
            if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
            {
              spmanager_browserEventHandler_cold_3();
            }

            spmanager_removeEndpointForTransportDeviceIfNeeded(a4, 0, *(DerivedStorage + 48), 1, 0);
            FigSimpleMutexUnlock();
          }
        }

        else
        {
          spmanager_browserEventHandler_cold_4();
        }
      }

      else if (gLogCategory_SPEndpointManager <= 60 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_browserEventHandler_cold_19();
      }
    }

    return;
  }

  if (!a3)
  {
    spmanager_browserEventHandler_cold_18();
    return;
  }

  v7 = *MEMORY[0x277CBECE8];
  if (APTransportDeviceCreate())
  {
    spmanager_browserEventHandler_cold_5();
    return;
  }

  v8 = CMBaseObjectGetDerivedStorage();
  v37 = 0;
  FigSimpleMutexLock();
  if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(v8 + 34))
  {
    goto LABEL_83;
  }

  if (!APSSettingsGetInt64() || !IsAppleInternalBuild())
  {
    if (!SPEndpointDescriptionCreateWithTransportDevice(v7, 0, &v37))
    {
      goto LABEL_22;
    }

LABEL_47:
    spmanager_browserEventHandler_cold_7();
    goto LABEL_83;
  }

  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_browserEventHandler_cold_6();
  }

  if (APEndpointDescriptionAirPlayCreateWithTransportDevice(v7, 0, 0, &v37))
  {
    goto LABEL_47;
  }

LABEL_22:
  v9 = v37;
  CMBaseObjectGetDerivedStorage();
  if (!spmanager_deviceIsAllowlisted(a4, v9))
  {
    if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_browserEventHandler_cold_17();
    }

    goto LABEL_83;
  }

  IsSelf = APTransportDeviceIsSelf();
  IsPresentOnInfra = APTransportDeviceIsPresentOnInfra();
  if (!IsSelf)
  {
    v12 = IsPresentOnInfra;
    v13 = v37;
    v14 = CMBaseObjectGetDerivedStorage();
    if (!v12)
    {
      v17 = *(v14 + 48);
      if (CFDictionaryGetValue(v17, 0))
      {
        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (!APSGetFBOPropertyInt64())
        {
          spmanager_removeEndpointForTransportDevice(a4, v17, 0);
        }
      }

      goto LABEL_83;
    }

    v15 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v16 = *(v15 + 48);
    if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_browserEventHandler_cold_8();
    }

    if (CFSetContainsValue(*(v15 + 56), 0))
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_browserEventHandler_cold_9();
      }

      CFSetRemoveValue(*(v15 + 56), 0);
    }

    if (CFDictionaryContainsKey(v16, 0))
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_browserEventHandler_cold_10();
      }

      goto LABEL_76;
    }

    v18 = CMBaseObjectGetDerivedStorage();
    if (APTransportDeviceGetAdvertiserInfo())
    {
      v19 = APAdvertiserInfoCopyProperty();
      if (v19)
      {
        v20 = v19;
        v21 = CFSetContainsValue(*(v18 + 96), v19) == 0;
LABEL_55:
        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v20)
        {
          CFRelease(v20);
        }

        if (v21)
        {
          goto LABEL_76;
        }

        Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v24 = Mutable;
        if (!Mutable)
        {
          spmanager_browserEventHandler_cold_15();
          v23 = -16711;
          goto LABEL_77;
        }

        v26 = *(v15 + 160);
        if (v26)
        {
          CFDictionarySetValue(Mutable, @"EventRecorder", v26);
        }

        v27 = SPEndpointCreateWithEndpointDescription(v7, v13, v24, &cf);
        if (v27)
        {
          v23 = v27;
          spmanager_browserEventHandler_cold_13();
          goto LABEL_77;
        }

        value = cf;
        CMBaseObjectGetDerivedStorage();
        if (APTransportDeviceGetAdvertiserInfo())
        {
          v28 = APAdvertiserInfoCopyProperty();
          if (!v28)
          {
            v28 = APAdvertiserInfoCopyProperty();
          }

          v29 = APAdvertiserInfoCopyProperty();
          v30 = CFStringCreateWithFormat(v7, 0, @"%@ ('%@')", v28, v29);
          if (v28)
          {
            CFRelease(v28);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          v31 = v30;
        }

        else
        {
          spmanager_browserEventHandler_cold_14(v7, &v39);
          v31 = v39;
        }

        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          APTransportDeviceGetDiscoveryID();
          LogPrintF();
        }

        CFDictionarySetValue(v16, 0, value);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        if (!APSGetFBOPropertyInt64())
        {
          spmanager_activationAttemptsClearIfExpired();
          v32 = CMBaseObjectGetDerivedStorage();
          v39 = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v34)
          {
            v34(CMBaseObject, *MEMORY[0x277CC1368], v7, &v39);
            if (v39)
            {
              v35 = CFSetContainsValue(*(v32 + 64), v39);
              if (v39)
              {
                CFRelease(v39);
              }

              if (v35)
              {
                if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                spmanager_checkHubbedDevices(a4, 0);
                if (!v31)
                {
                  goto LABEL_114;
                }

                goto LABEL_113;
              }
            }
          }

          spmanager_activateEndpoint(a4, value);
        }

        if (!v31)
        {
LABEL_114:
          v23 = 0;
          goto LABEL_77;
        }

LABEL_113:
        CFRelease(v31);
        goto LABEL_114;
      }

      if (gLogCategory_SPEndpointManager <= 90)
      {
        if (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize())
        {
          spmanager_browserEventHandler_cold_11();
        }

LABEL_129:
        v20 = 0;
        v21 = 1;
        goto LABEL_55;
      }
    }

    else if (gLogCategory_SPEndpointManager <= 90)
    {
      if (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize())
      {
        spmanager_browserEventHandler_cold_12();
      }

      goto LABEL_129;
    }

LABEL_76:
    v23 = 0;
    v24 = 0;
LABEL_77:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v23)
    {
      spmanager_browserEventHandler_cold_16();
    }
  }

LABEL_83:
  FigSimpleMutexUnlock();
  if (v37)
  {
    CFRelease(v37);
  }
}

void spmanager_handleHubbedDevicesChanged(uint64_t a1, void *a2)
{
  if (gLogCategory_SPEndpointManager <= 40 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_handleHubbedDevicesChanged_cold_1();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  CMBaseObject = SPHubbedDevicesProviderGetCMBaseObject(*(DerivedStorage + 104));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5 && !v5(CMBaseObject, @"HubbedDevices", *MEMORY[0x277CBECE8], &cf) && !FigCFEqual())
  {
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_handleHubbedDevicesChanged_cold_2();
    }

    v6 = *(DerivedStorage + 96);
    v7 = cf;
    *(DerivedStorage + 96) = cf;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (*(DerivedStorage + 96))
    {
      spmanager_checkHubbedDevices(a2, 1);
    }
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }
}

void spmanager_handlePreferencesChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  APSSettingsSynchronize();
  FigSimpleMutexLock();
  v3 = APSSettingsCopyValue();
  if (FigCFEqual())
  {
    goto LABEL_2;
  }

  if (gLogCategory_SPEndpointManager <= 40 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_handlePreferencesChanged_cold_1();
  }

  v4 = *(DerivedStorage + 40);
  *(DerivedStorage + 40) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (!*(DerivedStorage + 40))
  {
    goto LABEL_2;
  }

  v5 = FigCFDictionaryCopyArrayOfValues();
  cf = 0;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
LABEL_22:
    if (!v5)
    {
      goto LABEL_2;
    }

    goto LABEL_23;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v11)
    {
      break;
    }

    v12 = v11(CMBaseObject, @"EndpointDescription", 0, &cf);
    if (v12)
    {
      goto LABEL_25;
    }

    if (!spmanager_deviceIsAllowlisted(a1, cf))
    {
      spmanager_removeEndpointIfNeeded(a1, ValueAtIndex, 1, 0);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v7 == ++v8)
    {
      goto LABEL_22;
    }
  }

  v12 = 4294954514;
LABEL_25:
  spmanager_handlePreferencesChanged_cold_2(v12, &cf);
  if (v5)
  {
LABEL_23:
    CFRelease(v5);
  }

LABEL_2:
  FigSimpleMutexUnlock();
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t spmanager_introspector_setDiscoveryMode(const void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a1 || a3 < 2)
  {
    return FPrintF();
  }

  v5 = *(a4 + 8);
  v6 = *v5 == 49 && v5[1] == 0;
  FPrintF();

  return spmanager_setDiscoveryNeeded(a1, v6, 0, 0);
}

void spmanager_introspector_activateEndpoint(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a1 || a3 < 2)
  {
LABEL_15:
    FPrintF();
    return;
  }

  v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *(a4 + 8), 0x8000100u);
  if (a3 == 2 || (v8 = atol(*(a4 + 16))) == 0)
  {
    v9 = 10;
  }

  else
  {
    v9 = v8;
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v10 = spmanager_introspector_copyMatchingEndpoint(a1);
  if (!v10)
  {
    FPrintF();
    if (v7)
    {
      CFRelease(v7);
    }

    goto LABEL_15;
  }

  v11 = v10;
  v12 = malloc_type_calloc(1uLL, 8uLL, 0x10000404A09149AuLL);
  *v12 = 1;
  v12[1] = ++spmanager_introspector_getNextIndex_sIndex;
  FPrintF();
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v13)
  {
    v13(v11, v9, 0, spmanager_introspector_activateEndpointCallback, v12);
  }

  FPrintF();
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v11);
}

void spmanager_introspector_deactivateEndpoint(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (!a1 || a3 < 2)
  {
LABEL_9:
    FPrintF();
    return;
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *(a4 + 8), 0x8000100u);
  v7 = spmanager_introspector_copyMatchingEndpoint(a1);
  if (!v7)
  {
    FPrintF();
    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_9;
  }

  v8 = v7;
  v9 = malloc_type_calloc(1uLL, 8uLL, 0x10000404A09149AuLL);
  v10 = *MEMORY[0x277CC0B90];
  values = @"Introspector deactivation request";
  keys[0] = v10;
  *v9 = 0;
  v9[1] = ++spmanager_introspector_getNextIndex_sIndex;
  v11 = CFDictionaryCreate(v5, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FPrintF();
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v12)
  {
    v12(v8, v11, spmanager_introspector_activateEndpointCallback, v9);
  }

  FPrintF();
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(v8);
  if (v11)
  {
    CFRelease(v11);
  }
}

void spmanager_introspector_listEndpoints(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    introspector_listEndpoints(a1, a2);
  }
}

uint64_t spmanager_introspector_toggleListenForAvailable()
{
  v0 = spmanager_introspector_toggleListenForAvailable_listening;
  spmanager_introspector_toggleListenForAvailable_listening = spmanager_introspector_toggleListenForAvailable_listening == 0;
  CMNotificationCenterGetDefaultLocalCenter();
  if (v0)
  {
    CMNotificationCenterRemoveListener();
  }

  else
  {
    CMNotificationCenterAddListener();
  }

  return FPrintF();
}

void spmanager_introspector_homeHubInfo()
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = SPHubbedDevicesProviderGetCMBaseObject(*(DerivedStorage + 104));
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, @"HubbedDevices", *MEMORY[0x277CBECE8], &cf);
  }

  FigServer_IsAirplayd();
  FPrintF();
  FPrintF();
  FPrintF();
  FPrintF();
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t spmanager_Invalidate(void *a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 1))
  {
    v2 = dispatch_queue_create("com.apple.airplay.spendpointManager.invalidatequeue", 0);
    dispatch_sync_f(v2, a1, spmanager_invalidateInternal);
    if (v2)
    {
      dispatch_release(v2);
    }
  }

  return 0;
}

void spmanager_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1) && gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_Finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    if (introspector_getCollectionOfSPEndpointManagers_once != -1)
    {
      spmanager_Finalize_cold_2();
    }

    if (introspector_getCollectionOfSPEndpointManagers_coll)
    {
      v3 = *introspector_getCollectionOfSPEndpointManagers_coll;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = __spmanager_Finalize_block_invoke;
      v13[3] = &__block_descriptor_tmp_120;
      v13[4] = introspector_getCollectionOfSPEndpointManagers_coll;
      v13[5] = a1;
      dispatch_sync(v3, v13);
    }

    v4 = *(DerivedStorage + 8);
    if (v4)
    {
      dispatch_release(v4);
      *(DerivedStorage + 8) = 0;
    }

    FigSimpleMutexDestroy();
    v5 = *(DerivedStorage + 40);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 40) = 0;
    }

    v6 = *(DerivedStorage + 48);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 48) = 0;
    }

    v7 = *(DerivedStorage + 56);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 56) = 0;
    }

    v8 = *(DerivedStorage + 64);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 64) = 0;
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
      CFRelease(v10);
      *(DerivedStorage + 104) = 0;
    }

    v11 = *(DerivedStorage + 160);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 160) = 0;
    }

    v12 = *(DerivedStorage + 152);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 152) = 0;
    }
  }

  else
  {
    if (gLogCategory_SPEndpointManager <= 100 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_Finalize_cold_3();
    }

    __break(1u);
  }
}

__CFString *spmanager_CopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"<SPEndpointManager %p>", a1);
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

uint64_t spmanager_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointManager <= 10 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    v51 = "OSStatus spmanager_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)";
    v53 = a2;
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    spmanager_CopyProperty_cold_1();
    return 4294950584;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C50]))
  {
    v9 = 0;
    *a4 = CFRetain(*MEMORY[0x277CC0C88]);
    return v9;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC0C60]))
  {
    FigSimpleMutexLock();
    CMBaseObjectGetDerivedStorage();
    if (CFEqual(a2, *MEMORY[0x277CC0C30]))
    {
      v9 = 0;
      *a4 = spmanager_copyAvailableEndpoints(a1, a3);
LABEL_13:
      FigSimpleMutexUnlock();
      return v9;
    }

    if (!CFEqual(a2, @"ShowInfo"))
    {
      if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_CopyProperty_cold_6();
      }

      v9 = 4294954512;
      goto LABEL_13;
    }

    CMBaseObjectGetDerivedStorage();
    v59 = 0;
    value[0] = 0;
    memset(valuePtr, 0, sizeof(valuePtr));
    DataBuffer_Init();
    v12 = CMBaseObjectGetDerivedStorage();
    v61[0] = 0;
    Mutable = CFStringCreateMutable(a3, 0);
    if (!Mutable)
    {
      APSLogErrorAt();
      v30 = 0;
      v9 = 4294960568;
      goto LABEL_93;
    }

    v14 = Mutable;
    CMBaseObject = APBrowserGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v17 = v16(CMBaseObject, *MEMORY[0x277CE4D20], a3, v61);
      if (!v17)
      {
        v18 = CFDictionaryGetValue(v61[0], *MEMORY[0x277CE4D28]);
        CFStringAppendFormat(v14, 0, @"\n%@", v18);
        CFStringAppend(v14, @"\n");
        CFStringAppend(v14, @"+-+ SPEndpointManager state +-+\n");
        CFStringAppend(v14, @"\n");
        v19 = 116;
        if (!*(v12 + 32))
        {
          v19 = 102;
        }

        CFStringAppendFormat(v14, 0, @"DiscoveryNeeded: %c\n", v19, v51, v53);
        ModeString = APBrowserGetModeString();
        CFStringAppendFormat(v14, 0, @"DiscoveryMode: %s\n", ModeString);
        CFStringAppend(v14, @"\n");
        v21 = *(v12 + 40);
        if (v21 && (v22 = CFGetTypeID(v21), TypeID = CFArrayGetTypeID(), v21 = *(v12 + 40), v22 == TypeID))
        {
          Count = CFSetGetCount(v21);
          CFStringAppendFormat(v14, 0, @"AllowlistedDevices: (%ld)\n", Count);
          CFArrayGetCount(*(v12 + 40));
          value[6] = MEMORY[0x277D85DD0];
          value[7] = 0x40000000;
          value[8] = __spmanager_copyDescription_block_invoke;
          value[9] = &__block_descriptor_tmp_158;
          value[10] = v14;
          CFArrayApplyBlock();
        }

        else
        {
          CFStringAppendFormat(v14, 0, @"AllowlistedDevices: %@\n", v21);
        }

        CFStringAppend(v14, @"\n");
        v25 = *(v12 + 96);
        if (v25 && (v26 = CFGetTypeID(v25), v27 = CFSetGetTypeID(), v25 = *(v12 + 96), v26 == v27))
        {
          v28 = CFSetGetCount(v25);
          CFStringAppendFormat(v14, 0, @"HubbedDeviceIDs: (%ld)\n", v28);
          value[1] = MEMORY[0x277D85DD0];
          value[2] = 0x40000000;
          value[3] = __spmanager_copyDescription_block_invoke_2;
          value[4] = &__block_descriptor_tmp_165_0;
          value[5] = v14;
          CFSetApplyBlock();
        }

        else
        {
          CFStringAppendFormat(v14, 0, @"HubbedDeviceIDs: %@\n", v25);
        }

        v9 = 0;
        goto LABEL_36;
      }

      v9 = v17;
    }

    else
    {
      v9 = 4294954514;
    }

    APSLogErrorAt();
    CFRelease(v14);
    v14 = 0;
LABEL_36:
    if (v61[0])
    {
      CFRelease(v61[0]);
    }

    if (!v9)
    {
      theDict = CFDictionaryCreateMutable(a3, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (theDict)
      {
        v29 = CFStringCreateMutable(a3, 0);
        v30 = v14;
        CFStringAppend(v29, v14);
        v31 = *MEMORY[0x277CBECE8];
        v32 = spmanager_copyAvailableEndpoints(a1, *MEMORY[0x277CBECE8]);
        v33 = v32;
        if (v32)
        {
          v34 = CFArrayGetCount(v32);
          if (v34 >= 1)
          {
            v54 = v29;
            v55 = v30;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            theArray = 0;
            v38 = 0;
            do
            {
              v39 = v33;
              CFArrayGetValueAtIndex(v33, v37);
              value[0] = 0;
              v40 = FigEndpointGetCMBaseObject();
              v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v41)
              {
                v41(v40, @"EndpointShowInfo", v31, value);
              }

              v42 = value[0];
              if (value[0])
              {
                v33 = v39;
                if (!v38)
                {
                  v38 = CFArrayCreateMutable(v31, v34, MEMORY[0x277CBF128]);
                  v42 = value[0];
                }

                CFArrayAppendValue(v38, v42);
                if (CFDictionaryGetInt64())
                {
                  v43 = theArray;
                  if (!theArray)
                  {
                    v43 = CFArrayCreateMutable(v31, v34, MEMORY[0x277CBF128]);
                  }

                  theArray = v43;
                  CFArrayAppendValue(v43, value[0]);
                  ++v35;
                }

                ++v36;
                if (value[0])
                {
                  CFRelease(value[0]);
                  value[0] = 0;
                }
              }

              else
              {
                v33 = v39;
              }

              ++v37;
            }

            while (v34 != v37);
            if (v35 == 1)
            {
              DataBuffer_AppendF();
              v29 = v54;
              v44 = theArray;
            }

            else
            {
              DataBuffer_AppendF();
              v45 = theDict;
              v29 = v54;
              if (!v35)
              {
                v30 = v55;
LABEL_68:
                v47 = "";
                if (v34 != 1)
                {
                  v47 = "s";
                }

                v52 = v47;
                DataBuffer_AppendF();
                if (v38)
                {
                  v48 = v33;
                  if (v36 >= 1)
                  {
                    for (i = 0; i != v36; ++i)
                    {
                      value[0] = CFArrayGetValueAtIndex(v38, i);
                      spmanager_AppendEndpointShowInfo(value[0], 0);
                    }
                  }

                  CFDictionarySetValue(v45, @"EndpointShowInfos", v38);
                  CFRelease(v38);
                  v33 = v48;
                }

                v50 = DataBuffer_Append();
                if (v50)
                {
                  v9 = v50;
                  spmanager_CopyProperty_cold_3();
                }

                else
                {
                  v9 = DataBuffer_Commit();
                  if (!v9)
                  {
                    CFStringAppendFormat(v29, 0, @"%s", 0, v52);
                    CFDictionarySetValue(v45, @"DetailedDescription", v29);
                    goto LABEL_78;
                  }

                  spmanager_CopyProperty_cold_4();
                }

                CFRelease(v45);
                v45 = 0;
LABEL_78:
                DataBuffer_Free();
                if (v33)
                {
                  CFRelease(v33);
                }

                if (v29)
                {
                  CFRelease(v29);
                }

                if (!v30)
                {
                  goto LABEL_84;
                }

LABEL_83:
                CFRelease(v30);
LABEL_84:
                if (theArray)
                {
                  CFRelease(theArray);
                }

                if (!v9)
                {
                  *a4 = v45;
                }

                goto LABEL_13;
              }

              v44 = theArray;
              if (v35 < 1)
              {
                goto LABEL_64;
              }
            }

            for (j = 0; j != v35; ++j)
            {
              value[0] = CFArrayGetValueAtIndex(v44, j);
              spmanager_AppendEndpointShowInfo(value[0], 1);
            }

LABEL_64:
            CFDictionarySetValue(theDict, @"ActivatedEndpointShowInfos", v44);
            v30 = v55;
            if (v44)
            {
              CFRelease(v44);
            }

            theArray = 0;
            v33 = v39;
            goto LABEL_67;
          }
        }

        else
        {
          v34 = 0;
        }

        DataBuffer_AppendF();
        v38 = 0;
        v36 = 0;
        theArray = 0;
LABEL_67:
        v45 = theDict;
        goto LABEL_68;
      }

      v30 = v14;
      spmanager_CopyProperty_cold_5();
      v9 = 4294950585;
LABEL_95:
      DataBuffer_Free();
      v45 = 0;
      theArray = 0;
      if (!v30)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    v30 = v14;
LABEL_93:
    APSLogErrorAt();
    goto LABEL_95;
  }

  *&valuePtr[0] = 8;
  v10 = CFNumberCreate(a3, kCFNumberSInt64Type, valuePtr);
  *a4 = v10;
  if (v10)
  {
    return 0;
  }

  spmanager_CopyProperty_cold_2();
  return 4294950585;
}

uint64_t spmanager_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointManager <= 10 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    spmanager_SetProperty_cold_1();
    return 4294950584;
  }

  else if (CFEqual(a2, @"SPEndpointManagerProperty_HubbedDeviceIDs"))
  {
    CMBaseObject = SPHubbedDevicesProviderGetCMBaseObject(*(DerivedStorage + 104));
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {

      return v7(CMBaseObject, @"HubbedDevices", a3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_SetProperty_cold_2();
    }

    return 4294954512;
  }
}

void spmanager_checkHubbedDevices(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context = 0u;
  *theSet = 0u;
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_checkHubbedDevices_cold_1();
  }

  if (*DerivedStorage)
  {
    spmanager_checkHubbedDevices_cold_2();
  }

  else
  {
    theSet[0] = 0;
    context = a1;
    theSet[1] = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
    if (theSet[1])
    {
      spmanager_activationAttemptsClearIfExpired();
      CFDictionaryApplyFunction(*(DerivedStorage + 48), checkEndpointHubbedState, &context);
      Count = CFSetGetCount(*(DerivedStorage + 96));
      if (CFSetGetCount(theSet[1]) >= 1)
      {
        if (gLogCategory_SPEndpointManager <= 40 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          spmanager_checkHubbedDevices_cold_3();
        }

        CFSetApplyFunction(theSet[1], removeNonHubbedEndpoint, a1);
      }

      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      spmanager_setDiscoveryNeeded(a1, *(&context + 1) < Count, (theSet[0] + *(&context + 1)) == Count, a2);
      if (theSet[1])
      {
        CFRelease(theSet[1]);
      }
    }

    else
    {
      spmanager_checkHubbedDevices_cold_4();
    }
  }

  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

__n128 spmanager_activationAttemptsClearIfExpired()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 84))
  {
    v2 = DerivedStorage;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, HostTimeClock);
    v5 = *(v2 + 72);
    CMTimeSubtract(&time, &lhs, &v5);
    result.n128_f64[0] = CMTimeGetSeconds(&time);
    if (result.n128_f64[0] >= *(v2 + 144))
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_activationAttemptsClearIfExpired_cold_1();
      }

      CFSetRemoveAllValues(*(v2 + 64));
      v4 = MEMORY[0x277CC0898];
      result = *MEMORY[0x277CC0898];
      *(v2 + 72) = *MEMORY[0x277CC0898];
      *(v2 + 88) = *(v4 + 16);
    }
  }

  return result;
}

void checkEndpointHubbedState(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7 || v7(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &value))
  {
    checkEndpointHubbedState_cold_1();
  }

  else
  {
    v8 = CFSetContainsValue(*(DerivedStorage + 96), value);
    v9 = APSGetFBOPropertyInt64();
    if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v8)
    {
      if (v9)
      {
        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        ++*(a3 + 8);
      }

      else if (CFSetContainsValue(*(DerivedStorage + 64), value))
      {
        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        ++*(a3 + 16);
      }

      else
      {
        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v13 = *a3;
        ++*(a3 + 8);
        spmanager_activateEndpoint(v13, a2);
      }
    }

    else if (v9)
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v10 = value;
      v11 = CMBaseObjectGetDerivedStorage();
      CFSetRemoveValue(*(v11 + 64), v10);
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (!CFSetGetCount(*(v11 + 64)))
      {
        v12 = MEMORY[0x277CC0898];
        *(v11 + 72) = *MEMORY[0x277CC0898];
        *(v11 + 88) = *(v12 + 16);
      }

      spmanager_deactivateEndpoint(*a3, a2, @"NoLongerHubbed");
    }

    else
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFSetAddValue(*(a3 + 24), a2);
    }
  }

  if (value)
  {
    CFRelease(value);
  }
}

uint64_t removeNonHubbedEndpoint(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  result = spmanager_removeEndpointIfNeeded(a2, a1, 1, &v3);
  if (gLogCategory_SPEndpointManager <= 50)
  {
    if (gLogCategory_SPEndpointManager != -1)
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

uint64_t spmanager_setDiscoveryNeeded(const void *a1, int a2, int a3, int a4)
{
  result = CMBaseObjectGetDerivedStorage();
  v9 = result;
  if (!a2)
  {
    v10 = *(result + 36) > 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 1;
  if (a3)
  {
LABEL_3:
    LOBYTE(a3) = *(result + 36) == 0;
  }

LABEL_4:
  if (*(result + 32) != v10 || (a4 ? (v11 = v10) : (v11 = 0), (v10 & a3 & 1) != 0 || v11))
  {
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(v9 + 32) = v10;
    CFRetain(a1);
    return APSDispatchAsyncFHelper();
  }

  else if (gLogCategory_SPEndpointManager <= 50)
  {
    if (gLogCategory_SPEndpointManager != -1)
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

void spmanager_activateEndpoint(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetValue(Mutable, @"SupportsMultipleStreams", *MEMORY[0x277CBED28]);
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
    *v7 = CFRetain(a1);
    v7[8] = 1;
    ++*(DerivedStorage + 36);
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v8 || v8(a2, 8, v6, spmanager_activateEndpointCallback, v7))
    {
      spmanager_activateEndpoint_cold_1();
    }

    CFRelease(v6);
  }

  else
  {
    spmanager_activateEndpoint_cold_2();
  }
}

void spmanager_deactivateEndpoint(const void *a1, uint64_t a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
  *v6 = CFRetain(a1);
  v6[8] = 0;
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC0B90], a3);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9 || v9(a2, v8, spmanager_activateEndpointCallback, v6))
  {
    spmanager_deactivateEndpoint_cold_1();
    if (!v8)
    {
      return;
    }
  }

  else if (!v8)
  {
    return;
  }

  CFRelease(v8);
}

void spmanager_activateEndpointCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a4)
  {
    v9 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_SPEndpointManager <= 40 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_activateEndpointCallback_cold_1();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (*(v9 + 112))
    {
      dispatch_async(*(v9 + 8), &__block_literal_global_87);
    }
  }

  FigSimpleMutexLock();
  if (*(a5 + 8))
  {
    --*(DerivedStorage + 36);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11 && (v11(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf), (v12 = cf) != 0))
    {
      v13 = CMBaseObjectGetDerivedStorage();
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFSetAddValue(*(v13 + 64), v12);
      if ((*(v13 + 84) & 1) == 0)
      {
        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          spmanager_activateEndpointCallback_cold_2();
        }

        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v17, HostTimeClock);
        *(v13 + 72) = v17;
      }
    }

    else if (gLogCategory_SPEndpointManager <= 90 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (a4 || !*(a5 + 8))
  {
    spmanager_removeEndpointIfNeeded(*a5, a1, 0, 0);
    v15 = *(a5 + 8) == 0;
  }

  else
  {
    v15 = 0;
  }

  spmanager_checkHubbedDevices(*a5, v15);
  FigSimpleMutexUnlock();
  if (*a5)
  {
    CFRelease(*a5);
  }

  free(a5);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t spmanager_removeEndpointIfNeeded(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
  }

  else
  {
    v10 = 4294954514;
  }

  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_removeEndpointIfNeeded_cold_1(&cf);
  }

  if (v10)
  {
    spmanager_removeEndpointIfNeeded_cold_2();
  }

  else
  {
    spmanager_removeEndpointForTransportDeviceIfNeeded(a1, cf, *(DerivedStorage + 48), a3, a4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void __spmanager_notifyAvailableEndpointsChanged_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"TestOnly_ActiveSidePlayEndpointsChanged", 0, 0, 1u);
}

void spmanager_handleEndpointFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v6 = APSGetFBOPropertyInt64();
  if (gLogCategory_SPEndpointManager > 50)
  {
    goto LABEL_8;
  }

  if (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize())
  {
    LogPrintF();
  }

  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_handleEndpointFailed_cold_1();
    if (!v6)
    {
      return;
    }
  }

  else
  {
LABEL_8:
    if (!v6)
    {
      return;
    }
  }

  spmanager_deactivateEndpoint(a2, a4, @"ConnectionFailed");
}

uint64_t spmanager_handleEndpointDissociated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointManager <= 50)
  {
    if (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_handleEndpointDissociated_cold_1();
    }
  }

  FigSimpleMutexLock();
  spmanager_removeEndpointIfNeeded(a2, a4, 0, 0);

  return FigSimpleMutexUnlock();
}

void spmanager_deferredHandleDiscoveryStateChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_deferredHandleDiscoveryStateChanged_cold_1();
  }

  if (*(a1 + 8))
  {
    if (*(a1 + 9))
    {
      if (*(DerivedStorage + 34))
      {
        v3 = *(DerivedStorage + 120);
        if (v3)
        {
          v4 = 0;
LABEL_22:
          v11 = dispatch_time(0, v4);
          dispatch_source_set_timer(v3, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          goto LABEL_23;
        }
      }
    }

    if (*(a1 + 10))
    {
      v3 = *(DerivedStorage + 120);
      if (v3)
      {
        if (*(DerivedStorage + 34))
        {
          v4 = 1000000000 * *(DerivedStorage + 128);
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_22;
      }
    }

    v6 = *a1;
    v7 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_deferredHandleDiscoveryStateChanged_cold_2();
    }

    v8 = *(v7 + 120);
    if (v8)
    {
      dispatch_source_cancel(*(v7 + 120));
      dispatch_release(v8);
      *(v7 + 120) = 0;
    }

    *(v7 + 120) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v7 + 8));
    CFRetain(v6);
    dispatch_set_context(*(v7 + 120), v6);
    dispatch_source_set_event_handler_f(*(v7 + 120), spmanager_discoveryTimerFired);
    dispatch_source_set_cancel_handler_f(*(v7 + 120), spmanager_discoveryTimerCancelled);
    v9 = *(v7 + 120);
    v10 = dispatch_time(0, 0);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(v7 + 120));
  }

  else
  {
    v5 = *(DerivedStorage + 120);
    if (v5)
    {
      dispatch_source_cancel(*(DerivedStorage + 120));
      dispatch_release(v5);
      *(DerivedStorage + 120) = 0;
    }
  }

LABEL_23:
  FigSimpleMutexUnlock();
  v12 = *a1;

  CFRelease(v12);
}

uint64_t spmanager_discoveryTimerFired(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 34) && !*(DerivedStorage + 36))
  {
    v3 = 0;
    v4 = 136;
  }

  else
  {
    v3 = 2;
    v4 = 128;
  }

  v5 = *(DerivedStorage + v4);
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  spmanager_setDiscoveryMode(a1, v3);
  v6 = *(DerivedStorage + 120);
  v7 = dispatch_time(0, 1000000000 * v5);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  return FigSimpleMutexUnlock();
}

void spmanager_discoveryTimerCancelled(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_discoveryTimerCancelled_cold_1();
  }

  FigSimpleMutexLock();
  spmanager_setDiscoveryMode(a1, 0);
  FigSimpleMutexUnlock();

  CFRelease(a1);
}

uint64_t spmanager_setDiscoveryMode(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (gLogCategory_SPEndpointManager <= 50)
  {
    if (gLogCategory_SPEndpointManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = spmanager_setDiscoveryMode_cold_1();
    }
  }

  if (*(v5 + 34) != a2)
  {
    *(v5 + 34) = a2;
    if (!a2)
    {
      v6 = *(v5 + 48);
      CMBaseObjectGetDerivedStorage();
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_setDiscoveryMode_cold_2();
      }

      v7 = FigCFDictionaryCopyArrayOfKeys();
      if (v7)
      {
        v8 = v7;
        if (CFArrayGetCount(v7) >= 1)
        {
          spmanager_setDiscoveryMode_cold_3(v8, a1, v6);
        }

        CFRelease(v8);
      }
    }

    v9 = *(v5 + 152);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v10)
    {
      return spmanager_setDiscoveryMode_cold_4();
    }

    result = v10(v9, a2);
    if (result)
    {
      return spmanager_setDiscoveryMode_cold_4();
    }
  }

  return result;
}

CFMutableArrayRef spmanager_copyAvailableEndpoints(uint64_t a1, const __CFAllocator *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  if (*(DerivedStorage + 48))
  {
    CFDictionaryApplyBlock();
  }

  return Mutable;
}

void __spmanager_copyAvailableEndpoints_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (APSGetFBOPropertyInt64())
  {
    v5 = *(a1 + 32);

    CFArrayAppendValue(v5, a3);
  }
}

uint64_t __introspector_getCollectionOfSPEndpointManagers_block_invoke()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    introspector_getCollectionOfSPEndpointManagers_coll = malloc_type_calloc(1uLL, 0x18uLL, 0x70040EA3A3B56uLL);
    *introspector_getCollectionOfSPEndpointManagers_coll = dispatch_queue_create("CollectionOfSPEndpointManagers", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v2 = introspector_getCollectionOfSPEndpointManagers_coll;
    *(introspector_getCollectionOfSPEndpointManagers_coll + 8) = Mutable;
    *(v2 + 16) = "SPEndpointManagers";

    return APSIntrospectorAddCommand();
  }

  return result;
}

CFTypeRef spmanager_introspector_copyMatchingEndpoint(uint64_t a1)
{
  v16 = 0;
  cf = 0;
  v1 = *MEMORY[0x277CBECE8];
  v2 = spmanager_copyAvailableEndpoints(a1, *MEMORY[0x277CBECE8]);
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count < 1)
    {
LABEL_19:
      v13 = 0;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      v7 = *MEMORY[0x277CC1368];
      v15 = *MEMORY[0x277CC1450];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(CMBaseObject, v7, v1, &cf);
        }

        if (FigCFEqual())
        {
          break;
        }

        v11 = FigEndpointGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(v11, v15, v1, &v16);
        }

        if (FigCFEqual())
        {
          if (gLogCategory_SPEndpointManager > 50 || gLogCategory_SPEndpointManager == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_30;
          }

LABEL_26:
          LogPrintF();
          goto LABEL_30;
        }

        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v16)
        {
          CFRelease(v16);
          v16 = 0;
        }

        if (v5 == ++v6)
        {
          goto LABEL_19;
        }
      }

      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_26;
      }

LABEL_30:
      v13 = CFRetain(ValueAtIndex);
    }

    CFRelease(v3);
  }

  else
  {
    v13 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v13;
}

void spmanager_introspector_activateEndpointCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  else if (!a5)
  {
    return;
  }

  free(a5);
}

void introspector_listEndpoints(uint64_t a1, uint64_t a2)
{
  cf[65] = *MEMORY[0x277D85DE8];
  cf[0] = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4 && (v4(CMBaseObject, *MEMORY[0x277CC0C30], *MEMORY[0x277CBECE8], cf), cf[0]) && (v5 = CFGetTypeID(cf[0]), v5 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(cf[0]);
    if (a2)
    {
      FPrintF();
    }

    else if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      introspector_listEndpoints_cold_1();
    }

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(cf[0], i);
        __strlcpy_chk();
        APSGetFBOPropertyCString();
        __strlcpy_chk();
        APSGetFBOPropertyCString();
        APSGetFBOPropertyInt64();
        APSGetFBOPropertyInt64();
        if (a2)
        {
          FPrintF();
        }

        else if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }
    }
  }

  else if (a2)
  {
    FPrintF();
  }

  else if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

void spmanager_introspector_handleAvailableEndpointNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  introspector_listEndpoints(a4, 0);
}

uint64_t APEndpointStreamScreenUDPCreate(int a1, const __CFDictionary *a2, CFTypeRef cf, const void *a4, const void *a5, const void *a6, const void *a7, int a8, CFTypeRef *a9)
{
  v104 = *MEMORY[0x277D85DE8];
  cfa = 0;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  if (cf && (v15 = CFGetTypeID(cf), v15 == CFStringGetTypeID()))
  {
    if (a5 && (v16 = CFGetTypeID(a5), v16 == APEndpointDescriptionGetTypeID()))
    {
      if (a9)
      {
        if (a7)
        {
          FigEndpointStreamGetClassID();
          v97 = CMDerivedObjectCreate();
          if (v97)
          {
            APEndpointStreamScreenUDPCreate_cold_1();
            goto LABEL_28;
          }

          DerivedStorage = CMBaseObjectGetDerivedStorage();
          *(DerivedStorage + 268) = 60;
          *(DerivedStorage + 258) = 256;
          *(DerivedStorage + 263) = 0;
          *(DerivedStorage + 260) = APSSettingsGetInt64() == 0;
          *(DerivedStorage + 113) = FigGetCFPreferenceNumberWithDefault();
          *(DerivedStorage + 112) = FigGetCFPreferenceNumberWithDefault();
          *(DerivedStorage + 259) = FigGetCFPreferenceNumberWithDefault();
          if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          *(DerivedStorage + 260) = FigGetCFPreferenceNumberWithDefault();
          if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          *(DerivedStorage + 272) = FigGetCFPreferenceNumberWithDefault();
          if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          *(DerivedStorage + 276) = FigGetCFPreferenceNumberWithDefault();
          if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          SNPrintF();
          *DerivedStorage = dispatch_queue_create(label, 0);
          *(DerivedStorage + 16) = os_transaction_create();
          SNPrintF();
          *(DerivedStorage + 64) = dispatch_queue_create(label, 0);
          v78 = v96;
          SNPrintF();
          v18 = dispatch_queue_create(label, 0);
          *(DerivedStorage + 128) = v18;
          if (v18)
          {
            *(DerivedStorage + 8) = CFRetain(cf);
            v19 = CFRetain(a5);
            *(DerivedStorage + 72) = v19;
            CMBaseObject = APEndpointDescriptionGetCMBaseObject(v19);
            v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v21)
            {
              v97 = -12782;
LABEL_27:
              APEndpointStreamScreenUDPCreate_cold_24();
              goto LABEL_28;
            }

            v22 = *MEMORY[0x277CBECE8];
            v97 = v21(CMBaseObject, @"DisplayDescriptionArray", *MEMORY[0x277CBECE8], &cfa);
            if (v97)
            {
              goto LABEL_27;
            }

            if (cfa && CFArrayGetCount(cfa) > 0)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(cfa, 0);
              if (!ValueAtIndex)
              {
                APEndpointStreamScreenUDPCreate_cold_22(&v97);
                goto LABEL_28;
              }

              v25 = ValueAtIndex;
              if (a6)
              {
                *(DerivedStorage + 80) = CFRetain(a6);
                APEndpointDisplayDescriptionCopyProperty(v25, @"UUID", v22, &v94);
                if (!v94)
                {
                  APEndpointStreamScreenUDPCreate_cold_2(&v97);
                  goto LABEL_28;
                }

                APEndpointDisplayDescriptionCopyProperty(*(DerivedStorage + 80), @"UUID", v22, &v93);
                if (FigCFEqual())
                {
                  v26 = 110;
                }

                else
                {
                  v26 = 111;
                }
              }

              else
              {
                *(DerivedStorage + 80) = CFRetain(ValueAtIndex);
                v26 = 110;
              }

              *(DerivedStorage + 96) = v26;
              if (a4)
              {
                v27 = CFRetain(a4);
              }

              else
              {
                v27 = 0;
              }

              *(DerivedStorage + 48) = v27;
              *(DerivedStorage + 56) = CFRetain(a7);
              if (!a2)
              {
                v28 = CMBaseObjectGetDerivedStorage();
                v29 = 0;
                goto LABEL_73;
              }

              Value = CFDictionaryGetValue(a2, @"clientPID");
              v29 = Value;
              if (Value && (v31 = CFGetTypeID(Value), v31 != CFNumberGetTypeID()))
              {
                APEndpointStreamScreenUDPCreate_cold_3();
              }

              else
              {
                FigCFDictionaryGetBooleanIfPresent();
                FigCFDictionaryGetBooleanIfPresent();
                if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
                {
                  APEndpointStreamScreenUDPCreate_cold_4();
                }

                FigCFDictionaryGetBooleanIfPresent();
                if (*(DerivedStorage + 256) && CFGetInt64() <= 0)
                {
                  APEndpointStreamScreenUDPCreate_cold_5();
                }

                else
                {
                  v32 = CFDictionaryGetValue(a2, @"ProtectionOptions");
                  if (!v32)
                  {
                    v33 = *(DerivedStorage + 216);
                    *(DerivedStorage + 216) = 0;
LABEL_70:
                    if (v33)
                    {
                      CFRelease(v33);
                    }

                    v28 = CMBaseObjectGetDerivedStorage();
                    CFDictionaryGetValue(a2, @"EventRecorder");
LABEL_73:
                    v36 = *(v28 + 280);
                    if (v36)
                    {
                      CFRelease(v36);
                      *(v28 + 280) = 0;
                    }

                    v37 = APSEventRecorderCreate();
                    if (v37)
                    {
                      APEndpointStreamScreenUDPCreate_cold_7(v37, &v97);
                      goto LABEL_28;
                    }

                    APSEventRecorderAddSignPostForEvent();
                    v97 = 0;
                    v38 = *(DerivedStorage + 80);
                    dict[0] = 0;
                    v100 = 0;
                    v101 = 0;
                    v99 = 0;
                    v98 = 0;
                    v39 = *(DerivedStorage + 192);
                    if (v39)
                    {
                      CFRelease(v39);
                      *(DerivedStorage + 192) = 0;
                    }

                    v40 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 72));
                    v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (!v41)
                    {
                      v102 = -12782;
LABEL_80:
                      APEndpointStreamScreenUDPCreate_cold_17();
LABEL_81:
                      v42 = 0;
LABEL_144:
                      if (dict[0])
                      {
                        CFRelease(dict[0]);
                      }

                      if (v101)
                      {
                        CFRelease(v101);
                      }

                      if (v100)
                      {
                        CFRelease(v100);
                      }

                      if (v99)
                      {
                        CFRelease(v99);
                      }

                      if (v98)
                      {
                        CFRelease(v98);
                      }

                      if (v42)
                      {
                        CFRelease(v42);
                      }

                      v97 = v102;
                      if (v102)
                      {
                        APEndpointStreamScreenUDPCreate_cold_18();
                      }

                      else
                      {
                        if (*(DerivedStorage + 257) && v92)
                        {
                          if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
                          {
                            APEndpointStreamScreenUDPCreate_cold_19();
                          }

                          *(DerivedStorage + 248) = 1;
                        }

                        v73 = v96;
                        v74 = [APEndpointStreamScreenAVCWrapper alloc];
                        DisplayHDRMode = screenstreamudp_getDisplayHDRMode(DerivedStorage);
                        v76 = *(DerivedStorage + 248) == 1;
                        v77 = *(DerivedStorage + 263) != 0;
                        dict[0] = v73;
                        dict[1] = screenstreamudp_handleResumed;
                        dict[2] = screenstreamudp_handleSuspended;
                        dict[3] = screenstreamudp_handleFailed;
                        dict[4] = screenstreamudp_handleClearScreen;
                        *(DerivedStorage + 40) = [(APEndpointStreamScreenAVCWrapper *)v74 initWithClientPID:v29 hdrMode:DisplayHDRMode presentationMode:v76 hdrMirroringSupported:v77 eventHandlers:dict error:&v97, v78, *&v79, *&v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90];
                        if (v97)
                        {
                          APEndpointStreamScreenUDPCreate_cold_20();
                        }

                        else
                        {
                          *(DerivedStorage + 25) = 1;
                          if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
                          {
                            APEndpointStreamScreenUDPCreate_cold_21();
                          }

                          *a9 = v96;
                          v96 = 0;
                        }
                      }

LABEL_28:
                      if (!v97)
                      {
                        goto LABEL_36;
                      }

                      goto LABEL_29;
                    }

                    v102 = v41(v40, @"Name", v22, DerivedStorage + 192);
                    if (v102)
                    {
                      goto LABEL_80;
                    }

                    v43 = *(DerivedStorage + 144);
                    if (v43)
                    {
                      CFRelease(v43);
                      *(DerivedStorage + 144) = 0;
                    }

                    v102 = APEndpointDisplayDescriptionCopyProperty(v38, @"EDID", v22, DerivedStorage + 144);
                    if (v102)
                    {
                      APEndpointStreamScreenUDPCreate_cold_8();
                      goto LABEL_81;
                    }

                    v45 = (DerivedStorage + 208);
                    v44 = *(DerivedStorage + 208);
                    if (v44)
                    {
                      CFRelease(v44);
                      *v45 = 0;
                    }

                    v46 = *(DerivedStorage + 259);
                    if (v46)
                    {
                      v102 = APEndpointDisplayDescriptionCopyProperty(v38, @"HDRInfo", v22, DerivedStorage + 208);
                      if (v102)
                      {
                        APEndpointStreamScreenUDPCreate_cold_9();
                        goto LABEL_81;
                      }

                      if (!*v45)
                      {
                        goto LABEL_94;
                      }

                      v47 = *MEMORY[0x277CD6540];
                      v48 = CFDictionaryGetValue(*v45, *MEMORY[0x277CD6540]);
                      if (!v48)
                      {
                        goto LABEL_94;
                      }

                      v49 = v48;
                      v50 = *MEMORY[0x277CD6530];
                      if (!CFEqual(v48, *MEMORY[0x277CD6530]))
                      {
                        if (!CFEqual(v49, *MEMORY[0x277CD6528]))
                        {
LABEL_94:
                          v46 = 0;
                          goto LABEL_102;
                        }

                        if (!*(DerivedStorage + 260))
                        {
                          Mutable = CFDictionaryCreateMutable(v22, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                          CFDictionarySetValue(Mutable, v47, v50);
                          v52 = *v45;
                          *v45 = Mutable;
                          if (Mutable)
                          {
                            CFRetain(Mutable);
                          }

                          if (v52)
                          {
                            CFRelease(v52);
                          }

                          CFRelease(Mutable);
                        }
                      }

                      v46 = APSHasHDRSenderSupport() != 0;
                    }

LABEL_102:
                    *(DerivedStorage + 258) = v46;
                    v102 = APEndpointDisplayDescriptionCopyProperty(v38, @"PixelSizeMax", v22, dict);
                    if (v102)
                    {
                      APEndpointStreamScreenUDPCreate_cold_10();
                      goto LABEL_81;
                    }

                    CGSizeMakeWithDictionaryRepresentation(dict[0], (DerivedStorage + 152));
                    v102 = APEndpointDisplayDescriptionCopyProperty(v38, @"PhysicalSize", v22, &v101);
                    if (v102)
                    {
                      APEndpointStreamScreenUDPCreate_cold_11();
                      goto LABEL_81;
                    }

                    CGSizeMakeWithDictionaryRepresentation(v101, (DerivedStorage + 168));
                    v53 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 72));
                    v102 = CMBaseObjectCopyProperty(v53, @"receiverHDRCapability", v22, DerivedStorage + 184);
                    if (v102)
                    {
                      APEndpointStreamScreenUDPCreate_cold_12();
                      goto LABEL_81;
                    }

                    v54 = APSSettingsCopyValue();
                    v42 = v54;
                    if (!v102)
                    {
                      if (v54)
                      {
                        v55 = CFGetTypeID(v54);
                        if (v55 == CFStringGetTypeID())
                        {
                          v56 = *(DerivedStorage + 184);
                          *(DerivedStorage + 184) = v42;
                          CFRetain(v42);
                          if (v56)
                          {
                            CFRelease(v56);
                          }

                          if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
                          {
                            APEndpointStreamScreenUDPCreate_cold_13();
                          }
                        }
                      }
                    }

                    v102 = 0;
                    *(DerivedStorage + 264) = APSGetFBOPropertyInt64() != 0;
                    if (v102)
                    {
                      APEndpointStreamScreenUDPCreate_cold_14();
                      goto LABEL_144;
                    }

                    v58 = (DerivedStorage + 200);
                    v57 = *(DerivedStorage + 200);
                    if (v57)
                    {
                      CFRelease(v57);
                      *v58 = 0;
                    }

                    v102 = APEndpointDisplayDescriptionCopyProperty(v38, @"UUID", v22, DerivedStorage + 200);
                    if (v102)
                    {
                      APEndpointStreamScreenUDPCreate_cold_15();
                      goto LABEL_144;
                    }

                    v59 = *(DerivedStorage + 200);
                    v60 = *MEMORY[0x277CC1980];
                    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
                    *(DerivedStorage + 88) = CFStringCreateWithFormat(v22, 0, @"%@-%@-%llx", v59, v60, UpTimeNanoseconds);
                    APEndpointDisplayDescriptionCopyProperty(v38, @"MaxFPS", v22, &v100);
                    if (v100)
                    {
                      *(DerivedStorage + 268) = CFGetInt64();
                    }

                    APEndpointDisplayDescriptionCopyProperty(v38, @"IsOverscanned", v22, &v99);
                    v62 = *MEMORY[0x277CBED28];
                    *(DerivedStorage + 261) = v99 == *MEMORY[0x277CBED28];
                    APEndpointDisplayDescriptionCopyProperty(v38, @"SupportsRotation", v22, &v98);
                    v63 = v98 == v62;
                    *(DerivedStorage + 262) = v63;
                    v64 = *(DerivedStorage + 152);
                    v65 = *(DerivedStorage + 160);
                    v66 = *(DerivedStorage + 268);
                    *(DerivedStorage + 240) = v64 * v65 * v66;
                    if (gLogCategory_APEndpointStreamScreenUDP <= 50)
                    {
                      if (gLogCategory_APEndpointStreamScreenUDP != -1)
                      {
LABEL_124:
                        if (*(DerivedStorage + 144))
                        {
                          v67 = "present";
                        }

                        else
                        {
                          v67 = "none";
                        }

                        v68 = "yes";
                        if (*(DerivedStorage + 258))
                        {
                          v69 = "yes";
                        }

                        else
                        {
                          v69 = "no";
                        }

                        if (*(DerivedStorage + 261))
                        {
                          v70 = "yes";
                        }

                        else
                        {
                          v70 = "no";
                        }

                        if (v63)
                        {
                          v71 = "yes";
                        }

                        else
                        {
                          v71 = "no";
                        }

                        if (*(DerivedStorage + 264))
                        {
                          v72 = "yes";
                        }

                        else
                        {
                          v72 = "no";
                        }

                        if (!*(DerivedStorage + 263))
                        {
                          v68 = "no";
                        }

                        v89 = v72;
                        v90 = v68;
                        v87 = v70;
                        v88 = v71;
                        v85 = v69;
                        v86 = v66;
                        v83 = *(DerivedStorage + 200);
                        v84 = v67;
                        v81 = *(DerivedStorage + 168);
                        v82 = *(DerivedStorage + 176);
                        v79 = v64;
                        v80 = v65;
                        v78 = *(DerivedStorage + 192);
                        LogPrintF();
                        goto LABEL_142;
                      }

                      if (_LogCategory_Initialize())
                      {
                        v64 = *(DerivedStorage + 152);
                        v65 = *(DerivedStorage + 160);
                        v66 = *(DerivedStorage + 268);
                        v63 = *(DerivedStorage + 262);
                        goto LABEL_124;
                      }
                    }

LABEL_142:
                    if (!*v58)
                    {
                      APEndpointStreamScreenUDPCreate_cold_16();
                    }

                    goto LABEL_144;
                  }

                  v34 = v32;
                  v35 = CFGetTypeID(v32);
                  if (v35 == CFDictionaryGetTypeID())
                  {
                    v33 = *(DerivedStorage + 216);
                    *(DerivedStorage + 216) = v34;
                    CFRetain(v34);
                    goto LABEL_70;
                  }

                  APEndpointStreamScreenUDPCreate_cold_6();
                }
              }
            }

            else
            {
              APEndpointStreamScreenUDPCreate_cold_23();
            }
          }

          else
          {
            APEndpointStreamScreenUDPCreate_cold_25(&v97);
          }
        }

        else
        {
          APEndpointStreamScreenUDPCreate_cold_26(&v97);
        }
      }

      else
      {
        APEndpointStreamScreenUDPCreate_cold_27(&v97);
      }
    }

    else
    {
      APEndpointStreamScreenUDPCreate_cold_28(&v97);
    }
  }

  else
  {
    APEndpointStreamScreenUDPCreate_cold_29(&v97);
  }

LABEL_29:
  if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_36:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  return v97;
}

void screenstreamudp_handleSuspended(const void *a1, uint64_t a2, int a3)
{
  CMBaseObjectGetDerivedStorage();
  screenstreamudp_setResumedAndNotifyObservers(a1, 0);
  v6 = *a2;
  v7 = *(a2 + 16);
  screenstreamudp_dispatchCallback(a1, &v6, a3);
}

void screenstreamudp_handleFailed(const void *a1, int a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();

  screenstreamudp_handleFatalError(a1, a2, a3);
}

void screenstreamudp_handleClearScreen(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    screenstreamudp_handleClearScreen_cold_1();
  }

  v4 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    if (!*(v4 + 112) || !*(v4 + 120))
    {
LABEL_12:

      CFRelease(v6);
      return;
    }

    v7 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v7 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"isScreenCleared", *v7);
    v8 = APTransportStreamSendPlistMessageCreatingPlistReply();
    if (!v8)
    {
      if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_12;
    }

    screenstreamudp_handleClearScreen_cold_2(v8, v6);
  }

  else
  {
    screenstreamudp_handleClearScreen_cold_3();
  }

  if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t getAVCMediaStreamNegotiatorClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__0;
  v0 = getAVCMediaStreamNegotiatorClass_softClass;
  v7 = __Block_byref_object_dispose__0;
  v8 = getAVCMediaStreamNegotiatorClass_softClass;
  if (!getAVCMediaStreamNegotiatorClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getAVCMediaStreamNegotiatorClass_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getAVCMediaStreamNegotiatorClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2220C1FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2220C2214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2220C28A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2220C31A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void screenstreamudp_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    screenstreamudp_Finalize_cold_1();
  }

  v1 = *(DerivedStorage + 144);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 144) = 0;
  }

  v2 = *(DerivedStorage + 192);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 192) = 0;
  }

  v3 = *(DerivedStorage + 200);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 200) = 0;
  }

  v4 = *(DerivedStorage + 184);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 184) = 0;
  }

  v5 = *(DerivedStorage + 208);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 208) = 0;
  }

  v6 = *(DerivedStorage + 216);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 216) = 0;
  }

  v7 = *(DerivedStorage + 232);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 232) = 0;
  }

  v8 = *MEMORY[0x277CBF3A8];
  *(DerivedStorage + 152) = *MEMORY[0x277CBF3A8];
  *(DerivedStorage + 168) = v8;
  v9 = *(DerivedStorage + 8);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 8) = 0;
  }

  v10 = *(DerivedStorage + 280);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 280) = 0;
  }

  v11 = *(DerivedStorage + 48);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 48) = 0;
  }

  v12 = *(DerivedStorage + 88);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 88) = 0;
  }

  v13 = *(DerivedStorage + 80);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 80) = 0;
  }

  v14 = *(DerivedStorage + 72);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 72) = 0;
  }

  v15 = *(DerivedStorage + 56);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 56) = 0;
  }

  v16 = *(DerivedStorage + 32);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v17 = *(DerivedStorage + 64);
  if (v17)
  {
    dispatch_release(v17);
    *(DerivedStorage + 64) = 0;
  }

  v18 = *(DerivedStorage + 128);
  if (v18)
  {
    dispatch_release(v18);
    *(DerivedStorage + 128) = 0;
  }

  v19 = *(DerivedStorage + 16);
  if (v19)
  {

    *(DerivedStorage + 16) = 0;
  }
}

__CFString *screenstreamudp_CopyDebugDescription(uint64_t a1)
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

  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamScreenUDP %p '%@', activated: %s resumed: %s >", a1, *(DerivedStorage + 8), v6, v5);
  return v4;
}

uint64_t screenstreamudp_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v7 = MEMORY[0x277CC1980];
LABEL_7:
    v8 = *v7;
LABEL_14:
    v9 = CFRetain(v8);
LABEL_15:
    v10 = v9;
LABEL_16:
    result = 0;
    *a4 = v10;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18B0]))
  {
    if (*(DerivedStorage + 96) == 110)
    {
      v8 = *MEMORY[0x277CC1950];
    }

    else
    {
      v8 = @"ScreenAlt";
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v8 = *(DerivedStorage + 88);
    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6700]))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (*(DerivedStorage + 248) == 1)
    {
      v13 = MEMORY[0x277CBF3A8];
      v24 = *MEMORY[0x277CBF3A8];
      APSScreenGetMediaPresentationParams();
      if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
      {
        screenstreamudp_CopyProperty_cold_1(&v24);
      }

      FigCFDictionarySetCGSize();
      if (*(DerivedStorage + 258))
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD6660], *(DerivedStorage + 208));
      }

      FigCFDictionarySetInt32();
      v15 = *v13;
      v14 = v13[1];
    }

    else
    {
      FigCFDictionarySetInt32();
      v15 = *MEMORY[0x277CBF3A8];
      v14 = *(MEMORY[0x277CBF3A8] + 8);
      if (*(DerivedStorage + 152) != *MEMORY[0x277CBF3A8] || *(DerivedStorage + 160) != v14)
      {
        FigCFDictionarySetCGSize();
      }
    }

    if (*(DerivedStorage + 168) != v15 || *(DerivedStorage + 176) != v14)
    {
      FigCFDictionarySetCGSize();
    }

    v17 = *(DerivedStorage + 192);
    if (v17)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6640], v17);
    }

    v18 = *(DerivedStorage + 144);
    if (v18)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6638], v18);
    }

    v19 = *(DerivedStorage + 200);
    if (v19)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6658], v19);
    }

    v20 = *MEMORY[0x277CBED28];
    v21 = *MEMORY[0x277CBED10];
    if (*(DerivedStorage + 261))
    {
      v22 = *MEMORY[0x277CBED28];
    }

    else
    {
      v22 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CD6668], v22);
    if (*(DerivedStorage + 262))
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CD6678], v23);
    result = 0;
    *a4 = Mutable;
  }

  else if (CFEqual(a2, *MEMORY[0x277CD6730]))
  {
    return 0;
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC1880]) || CFEqual(a2, @"IsPlaying"))
    {
      v7 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 26))
      {
        v7 = MEMORY[0x277CBED10];
      }

      goto LABEL_7;
    }

    if (CFEqual(a2, @"EndpointStreamShowInfo"))
    {
      v9 = screenstreamudp_copyShowInfo(DerivedStorage);
      goto LABEL_15;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1898]))
    {
      v9 = screenstreamudp_copyOutputLatency();
      goto LABEL_15;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1908]))
    {
      v8 = *(DerivedStorage + 232);
      if (!v8)
      {
        v10 = 0;
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (CFEqual(a2, @"screenStreamType"))
    {
      v8 = @"screenStreamUDP";
      goto LABEL_14;
    }

    if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
    {
      screenstreamudp_CopyProperty_cold_2();
    }

    return 4294954512;
  }

  return result;
}

uint64_t screenstreamudp_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, *MEMORY[0x277CD6718]) || CFEqual(a2, *MEMORY[0x277CD6710]))
  {
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1908]))
  {
    v7 = *(DerivedStorage + 232);
    *(DerivedStorage + 232) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    return 0;
  }

  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    screenstreamudp_SetProperty_cold_1();
  }

  return 4294954512;
}

__CFDictionary *screenstreamudp_copyShowInfo(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  v4 = *MEMORY[0x277CBED28];
  v5 = *MEMORY[0x277CBED10];
  if (*(a1 + 25))
  {
    v6 = *MEMORY[0x277CBED28];
  }

  else
  {
    v6 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"Activated", v6);
  if (*(a1 + 26))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  CFDictionarySetValue(v3, @"Resumed", v7);
  CFDictionarySetValue(v3, @"Type", *MEMORY[0x277CC1980]);
  CFDictionarySetValue(v3, @"Name", *(a1 + 8));
  return v3;
}

CFDictionaryRef screenstreamudp_copyOutputLatency()
{
  v4 = **&MEMORY[0x277CC08F0];
  v0 = APSScreenLatencyMs();
  CMTimeMake(&v4, v0, 1000);
  v1 = *MEMORY[0x277CBECE8];
  v3 = v4;
  return CMTimeCopyAsDictionary(&v3, v1);
}

uint64_t screenstreamudp_Suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    screenstreamudp_Suspend_cold_1();
  }

  v9 = *(CMBaseObjectGetDerivedStorage() + 120);
  if (v9)
  {
    v10 = CFRetain(v9);
    if (v10)
    {
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v12)
      {
        v12(v11, 0, 0, 0);
      }

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

      CFRelease(v11);
    }
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v16 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  if (a3)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  block[1] = 3221225472;
  block[2] = __screenstreamudp_Suspend_block_invoke;
  block[3] = &__block_descriptor_72_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = v17;
  block[8] = 0;
  dispatch_async(v16, block);
  return 0;
}

uint64_t screenstreamudp_Resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    screenstreamudp_Resume_cold_1();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v9 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  if (a3)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  block[1] = 3221225472;
  block[2] = __screenstreamudp_Resume_block_invoke;
  block[3] = &__block_descriptor_72_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = v10;
  block[8] = 0;
  dispatch_async(v9, block);
  return 0;
}

uint64_t screenstreamudp_Dissociate(uint64_t a1)
{
  v2 = *CMBaseObjectGetDerivedStorage();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __screenstreamudp_Dissociate_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t screenstreamudp_Control(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __screenstreamudp_Control_block_invoke;
    block[3] = &unk_27849BEC0;
    block[4] = &v10;
    block[5] = a1;
    block[6] = a3;
    dispatch_sync(v6, block);
    v7 = *(v11 + 6);
  }

  else
  {
    if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = 4294950536;
    *(v11 + 6) = -16760;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

void screenstreamudp_teardownStream()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v2 = CMBaseObject;
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }
    }

    v4 = *(DerivedStorage + 120);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 120) = 0;
    }
  }

  if (*(DerivedStorage + 48))
  {
    if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = FigTransportStreamGetCMBaseObject();
    if (v5)
    {
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    v8 = *(DerivedStorage + 48);
    v9 = *(DerivedStorage + 96);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v10)
    {
      v10(v8, v9, 0);
    }
  }

  v11 = *(DerivedStorage + 104);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 104) = 0;
  }
}

void screenstreamudp_dispatchCallback(const void *a1, __int128 *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*a2)
  {
    v7 = DerivedStorage;
    CFRetain(a1);
    v8 = *(v7 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __screenstreamudp_dispatchCallback_block_invoke;
    block[3] = &__block_descriptor_68_e5_v8__0l;
    v10 = *a2;
    v11 = *(a2 + 2);
    v12 = a1;
    v13 = a3;
    dispatch_async(v8, block);
  }
}

void screenstreamudp_handleFatalError(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __screenstreamudp_handleFatalError_block_invoke;
  block[3] = &__block_descriptor_60_e5_v8__0l;
  v11 = a2;
  block[4] = a3;
  block[5] = DerivedStorage;
  block[6] = a1;
  dispatch_async(v7, block);
  CFRetain(a1);
  v8 = *DerivedStorage;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __screenstreamudp_handleFatalError_block_invoke_2;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = a1;
  dispatch_async(v8, v9);
}

void __screenstreamudp_dispatchCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 40));
  v2 = *(a1 + 56);

  CFRelease(v2);
}

void __screenstreamudp_handleFatalError_block_invoke(void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt32();
  v3 = a1[4];
  if (v3)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC17E0], v3);
    v4 = a1[4];
    if (v4)
    {
      if (!*(a1[5] + 27) && CFEqual(v4, @"Resume failed"))
      {
        CFDictionarySetValue(Mutable, @"APEndpointStream_IsStartupFailure", *MEMORY[0x277CBED28]);
      }
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];

  CFRelease(v6);
}

void __screenstreamudp_handleFatalError_block_invoke_2(uint64_t a1)
{
  screenstreamudp_dissociateInternal(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __screenstreamudp_dissociateInternal_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t screenstreamudp_createAndResumeTransportMediaDataControlStream(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v7 = APTransportStreamIDMakeWithPort();
  v30 = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    v25 = 4294954514;
LABEL_17:
    APSLogErrorAt();
    Mutable = 0;
LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  v9 = v8(a1);
  if (v9)
  {
    v25 = v9;
    goto LABEL_17;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_6();
    v18 = 0;
LABEL_37:
    v25 = 4294960568;
    goto LABEL_22;
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v12)
  {
    v25 = 4294954514;
LABEL_20:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v13 = v12(a1, v7, Mutable, &cf);
  if (v13)
  {
    v25 = v13;
    goto LABEL_20;
  }

  v14 = APSSetFBOPropertyInt64();
  if (v14)
  {
    v25 = v14;
    screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_1();
    goto LABEL_21;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(a1);
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    v25 = 4294954514;
    goto LABEL_20;
  }

  v17 = v16(CMBaseObject, @"KeyHolder", v10, &v30);
  if (v17)
  {
    v25 = v17;
    goto LABEL_20;
  }

  v18 = APKeyHolderCoreUtilsEncryptionContextDataStreamCreateWithSeed(v10, a3);
  if (!v18)
  {
    screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_5();
    goto LABEL_37;
  }

  v20 = v30;
  v19 = cf;
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v21)
  {
    v25 = 4294954514;
LABEL_35:
    APSLogErrorAt();
    goto LABEL_22;
  }

  v22 = v21(v19, v20, v18);
  if (v22)
  {
    v25 = v22;
    goto LABEL_35;
  }

  v23 = APSSetFBOPropertyInt64();
  if (v23)
  {
    v25 = v23;
    screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_2();
  }

  else
  {
    v24 = FigTransportStreamResume(cf);
    if (v24)
    {
      v25 = v24;
      screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_3();
    }

    else
    {
      v25 = FigTransportStreamWaitUntilConnected(cf);
      if (!v25)
      {
        *a4 = cf;
        cf = 0;
LABEL_28:
        CFRelease(Mutable);
        goto LABEL_29;
      }

      screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_4();
    }
  }

LABEL_22:
  if (cf)
  {
    v26 = FigTransportStreamGetCMBaseObject();
    if (v26)
    {
      v27 = v26;
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v28)
      {
        v28(v27);
      }
    }

    CFRelease(cf);
    cf = 0;
  }

  if (Mutable)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v25;
}

void screenstreamudp_setResumedAndNotifyObservers(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 26) != a2;
  *(DerivedStorage + 26) = a2;
  APSEventRecorderRecordEvent();
  CFRetain(a1);
  v6 = *(DerivedStorage + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __screenstreamudp_setResumedAndNotifyObservers_block_invoke;
  block[3] = &__block_descriptor_50_e5_v8__0l;
  v8 = a2;
  v9 = v5;
  block[4] = a1;
  block[5] = DerivedStorage;
  dispatch_async(v6, block);
}

void __screenstreamudp_setResumedAndNotifyObservers_block_invoke(uint64_t a1)
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

void *__getAVCMediaStreamNegotiatorHDRModeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVConferenceLibrary();
  result = dlsym(v2, "AVCMediaStreamNegotiatorHDRMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCMediaStreamNegotiatorHDRModeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AVConferenceLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!AVConferenceLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __AVConferenceLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27849BF00;
    v4 = 0;
    AVConferenceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AVConferenceLibraryCore_frameworkLibrary;
  if (!AVConferenceLibraryCore_frameworkLibrary)
  {
    AVConferenceLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AVConferenceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AVConferenceLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAVCMediaStreamNegotiatorClass_block_invoke(uint64_t a1)
{
  AVConferenceLibrary();
  result = objc_getClass("AVCMediaStreamNegotiator");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAVCMediaStreamNegotiatorClass_block_invoke_cold_1();
  }

  getAVCMediaStreamNegotiatorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getAVCScreenCaptureConfigurationClass_block_invoke(uint64_t a1)
{
  AVConferenceLibrary();
  result = objc_getClass("AVCScreenCaptureConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAVCScreenCaptureConfigurationClass_block_invoke_cold_1();
  }

  getAVCScreenCaptureConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getAVCScreenCaptureClass_block_invoke(uint64_t a1)
{
  AVConferenceLibrary();
  result = objc_getClass("AVCScreenCapture");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAVCScreenCaptureClass_block_invoke_cold_1();
  }

  getAVCScreenCaptureClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getkAVCMediaStreamOptionRunInProcessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVConferenceLibrary();
  result = dlsym(v2, "kAVCMediaStreamOptionRunInProcess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAVCMediaStreamOptionRunInProcessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAVCMediaStreamOptionClientPIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVConferenceLibrary();
  result = dlsym(v2, "kAVCMediaStreamOptionClientPID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAVCMediaStreamOptionClientPIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVCVideoStreamClass_block_invoke(uint64_t a1)
{
  AVConferenceLibrary();
  result = objc_getClass("AVCVideoStream");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAVCVideoStreamClass_block_invoke_cold_1();
  }

  getAVCVideoStreamClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getAVCDaemonProcessInfoClass_block_invoke(uint64_t a1)
{
  AVConferenceLibrary();
  result = objc_getClass("AVCDaemonProcessInfo");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAVCDaemonProcessInfoClass_block_invoke_cold_1();
  }

  getAVCDaemonProcessInfoClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getAVCKeyDaemonProcessInfoUniquePIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVConferenceLibrary();
  result = dlsym(v2, "AVCKeyDaemonProcessInfoUniquePID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCKeyDaemonProcessInfoUniquePIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APEndpointCarPlayRemote_ServerDied()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 16) = 0;
  return result;
}

uint64_t APEndpointCarPlayRemoteCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    FigEndpointExtendedGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v10 = v5;
      APEndpointCarPlayRemoteCreate_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 8) = a2;
      *(DerivedStorage + 16) = 0;
      CMBaseObjectGetDerivedStorage();
      v7 = FigXPCCreateBasicMessage();
      if (v7)
      {
        v10 = v7;
        APEndpointCarPlayRemoteCreate_cold_2();
      }

      else
      {
        v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v8)
        {
          v10 = v8;
          if (v8 != -6720)
          {
            APSLogErrorAt();
          }
        }

        else
        {
          APEndpointCarPlayRemoteCreate_cold_4();
          v10 = 0;
        }
      }

      if (v10)
      {
        if (v10 != -6720)
        {
          APSLogErrorAt();
        }
      }

      else
      {
        if (gLogCategory_APEndpointCarPlayRemote <= 50 && (gLogCategory_APEndpointCarPlayRemote != -1 || _LogCategory_Initialize()))
        {
          APEndpointCarPlayRemoteCreate_cold_5();
        }

        v10 = 0;
        *a3 = 0;
      }
    }
  }

  else
  {
    APEndpointCarPlayRemoteCreate_cold_6();
    return 4294950576;
  }

  return v10;
}

uint64_t carEndpointRemote_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlayRemote <= 30 && (gLogCategory_APEndpointCarPlayRemote != -1 || _LogCategory_Initialize()))
  {
    carEndpointRemote_Finalize_cold_1();
  }

  result = FigXPCRemoteClientDisassociateObject();
  *DerivedStorage = 0;
  *(DerivedStorage + 16) = 0;
  return result;
}

CFMutableStringRef carEndpointRemote_CopyDebugDescription()
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendF();
  CFStringAppendF();
  CFStringAppendF();
  return Mutable;
}

uint64_t carEndpointRemote_CopyProperty()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigXPCSendStdCopyPropertyMessage();
  if (v0)
  {
    carEndpointRemote_CopyProperty_cold_1();
  }

  return v0;
}

uint64_t carEndpointRemote_SetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (*(DerivedStorage + 16))
    {
      v1 = FigXPCSendStdSetPropertyMessage();
      if (v1)
      {
        carEndpointRemote_SetProperty_cold_1();
      }
    }

    else
    {
      carEndpointRemote_SetProperty_cold_2();
      return 4294960587;
    }
  }

  else
  {
    carEndpointRemote_SetProperty_cold_3();
    return 4294960578;
  }

  return v1;
}

uint64_t APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds(const __CFDictionary *a1, CFMutableDictionaryRef *a2)
{
  if (a1)
  {
    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v5 = TypedValue;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
      if (MutableCopy)
      {
        v7 = MutableCopy;
        CMTimeMakeFromDictionary(&time, v5);
        CMTimeGetSeconds(&time);
        CFDictionarySetDouble();
        result = 0;
        *a2 = v7;
      }

      else
      {
        APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds_cold_1();
        return 4294950555;
      }
    }

    else
    {
      v9 = CFRetain(a1);
      result = 0;
      *a2 = v9;
    }
  }

  else
  {
    APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds_cold_2();
    return 4294950556;
  }

  return result;
}

uint64_t APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime(CFDictionaryRef theDict, __CFDictionary **a2)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
    if (MutableCopy)
    {
      v4 = MutableCopy;
      apPlaybackUtil_convertRangeSecondsToCMTime(MutableCopy, *MEMORY[0x277CC10A8]);
      apPlaybackUtil_convertRangeSecondsToCMTime(v4, *MEMORY[0x277CC1070]);
      Value = CFDictionaryGetValue(v4, @"positionCMTime");
      if (Value)
      {
        CFDictionarySetValue(v4, *MEMORY[0x277CC1090], Value);
        CFDictionaryRemoveValue(v4, @"positionCMTime");
      }

      else
      {
        apPlaybackUtil_convertSecondsToCMTime();
      }

      v6 = CFDictionaryGetValue(v4, @"durationCMTime");
      if (v6)
      {
        CFDictionarySetValue(v4, *MEMORY[0x277CC1058], v6);
        CFDictionaryRemoveValue(v4, @"durationCMTime");
      }

      else
      {
        apPlaybackUtil_convertSecondsToCMTime();
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime_cold_1();
      return 4294950555;
    }
  }

  else
  {
    APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime_cold_2();
    return 4294950556;
  }

  return result;
}

uint64_t APEndpointPlaybackSessionGetMediaTypeFromPlayParams(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, *MEMORY[0x277CC0F90]))
  {
    v2 = 1;
  }

  else
  {
    v2 = CFDictionaryContainsKey(a1, @"IsTLSEnabled") != 0;
  }

  v3 = CFDictionaryContainsKey(a1, *MEMORY[0x277CC0EF8]);
  v4 = CFDictionaryContainsKey(a1, *MEMORY[0x277CC0E08]);
  v5 = 2 * (((v3 | v4) | CFDictionaryContainsKey(a1, *MEMORY[0x277CC0E10])) != 0);
  if (v3 | v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  if (v2)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

__CFString *APEndpointPlaybackSessionGetRTCMediaTypeFromPlayParams(const __CFDictionary *a1)
{
  MediaTypeFromPlayParams = APEndpointPlaybackSessionGetMediaTypeFromPlayParams(a1);
  CFDictionaryGetValue(a1, *MEMORY[0x277CC0F68]);
  if (MediaTypeFromPlayParams > 1)
  {
    if (MediaTypeFromPlayParams != 3)
    {
      return @"LocalFileEncrypted";
    }

    v4 = FigCFEqual();
    v5 = @"HLSEncrypted";
    v6 = @"RemoteFileEncrypted";
  }

  else
  {
    if (!MediaTypeFromPlayParams)
    {
      return @"LocalFileNonEncrypted";
    }

    v4 = FigCFEqual();
    v5 = @"HLSNonEncrypted";
    v6 = @"RemoteFileNonEncrypted";
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t APEndpointPlaybackSessionCreateVideoSyncTimeHistogram(uint64_t *a1)
{
  if (APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_once != -1)
  {
    APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_cold_1();
  }

  result = APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_histogramCreationOptions;
  if (APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_histogramCreationOptions)
  {
    v3 = APSStatsHistogramCreate();
    *a1 = v3;
    if (v3)
    {
      return 0;
    }

    else
    {
      APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_cold_2();
      return 4294950555;
    }
  }

  return result;
}

uint64_t APEndpointPlaybackSessionStatsCreate(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = 0;
  if (!a4)
  {
    APEndpointPlaybackSessionStatsCreate_cold_7();
    v10 = 4294960591;
    goto LABEL_9;
  }

  v7 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040BB341AB5uLL);
  v12 = v7;
  v8 = FigSimpleMutexCreate();
  *v7 = v8;
  if (!v8)
  {
    APEndpointPlaybackSessionStatsCreate_cold_6();
LABEL_15:
    v10 = 4294950555;
    goto LABEL_9;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7[1] = Mutable;
  if (!Mutable)
  {
    APEndpointPlaybackSessionStatsCreate_cold_5();
    goto LABEL_15;
  }

  if (!a1)
  {
    APEndpointPlaybackSessionStatsCreate_cold_4();
LABEL_17:
    v10 = 4294950556;
    goto LABEL_9;
  }

  CFDictionarySetValue(Mutable, @"videoSessionType", a1);
  APSEventRecorderGetTimeFromDictionaryIfPresent();
  APEndpointPlaybackSessionCreateVideoSyncTimeHistogram(v7 + 4);
  if (!v7[4])
  {
    APEndpointPlaybackSessionStatsCreate_cold_3();
    goto LABEL_15;
  }

  if (!a2)
  {
    APEndpointPlaybackSessionStatsCreate_cold_2();
    goto LABEL_17;
  }

  v10 = APSEventRecorderCreate();
  if (v10)
  {
    APEndpointPlaybackSessionStatsCreate_cold_1();
  }

  else
  {
    *a4 = v7;
    v12 = 0;
  }

LABEL_9:
  APEndpointPlaybackSessionStatsDestroy(&v12);
  return v10;
}

uint64_t APEndpointPlaybackSessionStatsUpdateAtPlay(uint64_t a1, const __CFDictionary *a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  APSEventRecorderRecordEvent();
  APSEventRecorderGetTimeBetweenEventRecorderTimeAndEventInMilliSecond();
  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  APEndpointPlaybackSessionGetRTCMediaTypeFromPlayParams(a2);
  CFDictionarySetInt64();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (CFDictionaryContainsKey(a2, *MEMORY[0x277CC0F40]))
  {
    CFDictionarySetValue(*(a1 + 8), @"storeHLSProvided", *MEMORY[0x277CBED28]);
  }

  if (*(a1 + 24))
  {
    APSEventRecorderRecordEvent();
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionStatsUpdateAtInvalidate(uint64_t a1)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (!*(a1 + 25))
  {
    APSEventRecorderRecordEvent();
    if (APSEventRecorderGetEventTime())
    {
      APSEventRecorderGetTimeBetweenEventsInMilliSecond();
      CFDictionarySetInt64();
    }

    if (APSEventRecorderGetEventTime())
    {
      if (*(a1 + 24))
      {
        *(a1 + 16) += APSEventRecorderGetTimeBetweenEventsInMilliSecond();
      }

      CFDictionarySetInt64();
      if (*(a1 + 32))
      {
        v2 = APSStatsHistogramCopyValuesAsRTCString();
        FigCFDictionarySetValue();
        if (v2)
        {
          CFRelease(v2);
        }
      }
    }

    *(a1 + 25) = 1;
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionStatsUpdateAtStartUpComplete(uint64_t a1)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (!CFDictionaryContainsKey(*(a1 + 8), @"videoStartupTimeMs"))
  {
    APSEventRecorderRecordEvent();
    APSEventRecorderGetTimeBetweenEventsInMilliSecond();
    CFDictionarySetInt64();
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionStatsSetLastError()
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  CFDictionarySetInt64();

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionSetIsParticipatingInCoordinatedPlayback(uint64_t a1, int a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (*(a1 + 24) != a2)
  {
    *(a1 + 24) = a2;
    if (a2)
    {
      if (APSEventRecorderGetEventTime())
      {
        APSEventRecorderRecordEvent();
      }
    }

    else
    {
      APSEventRecorderRecordEvent();
      if (APSEventRecorderGetEventTime())
      {
        *(a1 + 16) += APSEventRecorderGetTimeBetweenEventsInMilliSecond();
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionSetVideoSyncTime(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if ((*(a2 + 12) & 1) != 0 && *(a1 + 32))
  {
    v5 = *a2;
    CMTimeGetSeconds(&v5);
    APSStatsHistogramAddValue();
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionCopyRTCStats(uint64_t a1, CFDictionaryRef *a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  *a2 = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 8));

  return FigSimpleMutexUnlock();
}

void APEndpointPlaybackSessionSetV2Item(uint64_t a1, __CFDictionary *a2)
{
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v4 = Value;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"uuid", v4);
    CFDictionarySetValue(a2, @"item", Mutable);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

CMTime *apPlaybackUtil_getCMTimeFromRangeForKeys@<X0>(const __CFDictionary *a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, CMTime *a4@<X8>)
{
  v7 = MEMORY[0x277CC0898];
  *&a4->value = *MEMORY[0x277CC0898];
  a4->epoch = *(v7 + 16);
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v9 = a4;
LABEL_9:

    return CMTimeMakeFromDictionary(v9, Value);
  }

  v10 = CFDictionaryGetValue(a1, a3);
  v11 = v10;
  if (!v10 || (v12 = CFGetTypeID(v10), v12 != CFNumberGetTypeID()))
  {
    v9 = a4;
    Value = v11;
    goto LABEL_9;
  }

  valuePtr = 0.0;
  result = CFNumberGetValue(v11, kCFNumberFloat64Type, &valuePtr);
  if (result)
  {
    return CMTimeMakeWithSeconds(a4, valuePtr, 1000);
  }

  return result;
}

uint64_t APAudioSinkSharedMemCreate(uint64_t a1, __int128 *a2, void *a3)
{
  if (!a3)
  {
    APAudioSinkSharedMemCreate_cold_3();
    return 4294950504;
  }

  if (!a2)
  {
    APAudioSinkSharedMemCreate_cold_2();
    return 4294950504;
  }

  FigEndpointAudioSinkGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v11 = v5;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(a2 + 4);
    v8 = a2[1];
    *(DerivedStorage + 48) = *a2;
    *(DerivedStorage + 64) = v8;
    *(DerivedStorage + 80) = v7;
    v10 = *a2;
    v9 = a2[1];
    *(DerivedStorage + 40) = *(a2 + 4);
    *(DerivedStorage + 8) = v10;
    *(DerivedStorage + 24) = v9;
    if (gLogCategory_APAudioSinkSharedMem <= 30 && (gLogCategory_APAudioSinkSharedMem != -1 || _LogCategory_Initialize()))
    {
      APAudioSinkSharedMemCreate_cold_1();
    }

    v11 = 0;
    *a3 = 0;
  }

  return v11;
}

void sharedMemSink_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSinkSharedMem <= 30 && (gLogCategory_APAudioSinkSharedMem != -1 || _LogCategory_Initialize()))
  {
    sharedMemSink_Finalize_cold_1();
  }

  v1 = *(DerivedStorage + 96);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 96) = 0;
  }
}

__CFString *sharedMemSink_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioSinkSharedMem>");
  return Mutable;
}

uint64_t sharedMemSink_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SharedMemoryBuffer"))
  {
    if (*(DerivedStorage + 96))
    {
      APSSharedRingBuffer_GetSharedMemoryBuffer();
    }

LABEL_7:
    v7 = FigXPCRetain();
    result = 0;
    *a4 = v7;
    return result;
  }

  if (CFEqual(a2, @"SharedMemoryBufferState"))
  {
    if (*(DerivedStorage + 96))
    {
      APSSharedRingBuffer_GetSharedMemoryState();
    }

    goto LABEL_7;
  }

  return 4294954512;
}

uint64_t sharedMemSink_GetInputFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  v5 = *(DerivedStorage + 24);
  *a2 = *(DerivedStorage + 8);
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  return 0;
}

uint64_t sharedMemSink_SetInputFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage + 48;
  if (a2)
  {
    v4 = a2;
  }

  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *(DerivedStorage + 8) = *v4;
  *(DerivedStorage + 24) = v6;
  *(DerivedStorage + 40) = v5;
  return 0;
}

uint64_t sharedMemSink_AcquireBuffer(uint64_t a1, uint64_t *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 104))
  {
    sharedMemSink_AcquireBuffer_cold_1();
    return 4294960568;
  }

  v6 = DerivedStorage;
  if (!APSSharedRingBuffer_IsSpaceAvailable())
  {
    sharedMemSink_AcquireBuffer_cold_3();
    return 4294960568;
  }

  v7 = APSSharedRingBuffer_GetWritePointer();
  if (v7)
  {
    v8 = v7;
    result = 0;
    v8 += 4;
    *a2 = v8;
    *a3 = 1440;
    *(v6 + 104) = v8;
  }

  else
  {
    sharedMemSink_AcquireBuffer_cold_2();
    return 4294960587;
  }

  return result;
}

uint64_t sharedMemSink_CommitBuffer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 104);
  if (!v4)
  {
    sharedMemSink_CommitBuffer_cold_4();
    return 4294960591;
  }

  if (v4 != a2)
  {
    sharedMemSink_CommitBuffer_cold_1();
    return 4294960591;
  }

  v5 = DerivedStorage;
  v6 = APSSharedRingBuffer_WriteData();
  if (v6)
  {
    v7 = v6;
    sharedMemSink_CommitBuffer_cold_2();
  }

  else
  {
    v7 = APSSharedRingBuffer_UpdateWriteState();
    if (v7)
    {
      sharedMemSink_CommitBuffer_cold_3();
    }

    else
    {
      *(v5 + 104) = 0;
    }
  }

  return v7;
}

void APDemoManagerStart()
{
  if (_MergedGlobals_6 != -1)
  {
    APDemoManagerStart_cold_1();
  }

  if (qword_280FB1A80)
  {
    v0 = *qword_280FB1A80;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APDemoManagerStart_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = qword_280FB1A80;
    dispatch_async(v0, block);
  }
}

void __APDemoManagerStart_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  sleep(1u);
  CFStringGetTypeID();
  *(*(a1 + 32) + 32) = APSSettingsCopyValueEx();
  v2 = *(a1 + 32);
  memset(&context, 0, sizeof(context));
  v13 = 0;
  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    __APDemoManagerStart_block_invoke_cold_1();
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = *MEMORY[0x277CE1648];
  v5 = *MEMORY[0x277CE1690];
  values = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], @"en[0-9]+", *MEMORY[0x277CE1690]);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v3, v4, @"bridge[0-9]+", v5);
  v6 = CFArrayCreate(v3, &values, 2, MEMORY[0x277CBF128]);
  context.info = v2;
  v7 = SCDynamicStoreCreate(v3, @"APDemoManager", callback_ipAddressChanged, &context);
  v2[5] = v7;
  if (v7 && SCDynamicStoreSetNotificationKeys(v7, 0, v6) && SCDynamicStoreSetDispatchQueue(v2[5], *v2))
  {
    v8 = *v2;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __demoManagerStartLinkDiscovery_block_invoke;
    block[3] = &__block_descriptor_tmp_72;
    block[4] = v2;
    dispatch_async(v8, block);
  }

  else
  {
    __APDemoManagerStart_block_invoke_cold_2();
  }

  if (values)
  {
    CFRelease(values);
  }

  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void APDemoManagerStartWithClientPid(int a1)
{
  if (IsAppleInternalBuild())
  {
    APDemoManagerStart();
    if (a1)
    {
      if (_MergedGlobals_6 != -1)
      {
        APDemoManagerStart_cold_1();
      }

      if (qword_280FB1A80)
      {
        *(qword_280FB1A80 + 52) = a1;
      }
    }
  }
}

CFTypeRef APDemoManagerCopyDeviceInfo()
{
  if (APDemoManagerCopyDeviceInfo_once != -1)
  {
    APDemoManagerCopyDeviceInfo_cold_1();
  }

  result = APDemoManagerCopyDeviceInfo_deviceInfo;
  if (APDemoManagerCopyDeviceInfo_deviceInfo)
  {

    return CFRetain(result);
  }

  return result;
}

void __APDemoManagerCopyDeviceInfo_block_invoke()
{
  if (_MergedGlobals_6 != -1)
  {
    APDemoManagerStart_cold_1();
  }

  if (qword_280FB1A80)
  {
    APDemoManagerCopyDeviceInfo_deviceInfo = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v0 = MGCopyAnswer();
    if (v0)
    {
      v1 = v0;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceUniqueID", v0);
      CFRelease(v1);
    }

    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceColor", v2);
      CFRelease(v3);
    }

    v4 = MGCopyAnswer();
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceEnclosureColor", v4);
      CFRelease(v5);
    }

    v6 = MGCopyAnswer();
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceClass", v6);
      CFRelease(v7);
    }

    v8 = MGCopyAnswer();
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"iOS Build", v8);
      CFRelease(v9);
    }

    if (demoManagerGetModelSpecificName_once != -1)
    {
      __APDemoManagerCopyDeviceInfo_block_invoke_cold_2();
    }

    if (demoManagerGetModelSpecificName_sModelNameStr)
    {
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceModel", demoManagerGetModelSpecificName_sModelNameStr);
    }

    v10 = MGCopyAnswer();
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceCornerRadius", v10);
      CFRelease(v11);
    }

    v12 = MGCopyAnswer();
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceScreenScale", v12);
      CFRelease(v13);
    }

    v14 = MGCopyAnswer();
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceScreenWidth", v14);
      CFRelease(v15);
    }

    v16 = MGCopyAnswer();
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceScreenHeight", v16);
      CFRelease(v17);
    }

    v18 = MGCopyAnswer();
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceMainScreenOrientation", v18);
      CFRelease(v19);
    }

    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      __APDemoManagerCopyDeviceInfo_block_invoke_cold_3();
    }
  }
}

uint64_t __demoManagerGetShared_block_invoke()
{
  result = APSIsDemoModeEnabled();
  if (result)
  {
    qword_280FB1A80 = malloc_type_calloc(1uLL, 0x38uLL, 0x10600402978B691uLL);
    result = dispatch_queue_create("com.apple.airplay.demomanager", 0);
    v1 = qword_280FB1A80;
    *qword_280FB1A80 = result;
    *(v1 + 52) = 0;
    if (gLogCategory_APDemoManager <= 50)
    {
      if (gLogCategory_APDemoManager != -1)
      {
        return __demoManagerGetShared_block_invoke_cold_1();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __demoManagerGetShared_block_invoke_cold_1();
      }
    }
  }

  return result;
}

void callback_ipAddressChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    callback_ipAddressChanged_cold_1();
  }

  demoManagerDiscoverLink(a3);
}

void demoManagerDiscoverLink(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    demoManagerDiscoverLink_cold_1();
  }

  v17 = 0;
  if (getifaddrs(&v17) < 0)
  {
    v12 = __error();
    if (gLogCategory_APDemoManager > 90)
    {
LABEL_50:
      demoManagerStopEndpointDiscovery(a1);
      v14 = *(a1 + 8);
      if (v14)
      {
        CFRelease(v14);
        *(a1 + 8) = 0;
      }

      return;
    }

    v13 = *v12;
    if (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize())
    {
      demoManagerDiscoverLink_cold_9(v13);
    }

LABEL_47:
    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoManagerDiscoverLink_cold_10();
    }

    goto LABEL_50;
  }

  v2 = v17;
  if (!v17)
  {
    MEMORY[0x223DB2BC0](0);
    goto LABEL_47;
  }

  v3 = *MEMORY[0x277CBECE8];
  do
  {
    ifa_addr = v2->ifa_addr;
    if (ifa_addr)
    {
      if (*(ifa_addr + 1) == 30 && (v2->ifa_flags & 9) == 1 && ((ifa_name = v2->ifa_name, *ifa_name == 101) && ifa_name[1] == 110 || !strncmp(v2->ifa_name, "bridge", 6uLL)))
      {
        v6 = CFStringCreateWithCString(v3, ifa_name, 0x8000100u);
        if (APSIsDirectLinkInterface())
        {
          if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
          {
            demoManagerDiscoverLink_cold_2(&v2->ifa_name, ifa_addr, v18);
          }

          LODWORD(ifa_addr) = 1;
          if (v6)
          {
LABEL_24:
            CFRelease(v6);
          }
        }

        else
        {
          LODWORD(ifa_addr) = 0;
          if (v6)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        LODWORD(ifa_addr) = 0;
      }
    }

    if (ifa_addr)
    {
      break;
    }

    v2 = v2->ifa_next;
  }

  while (v2);
  MEMORY[0x223DB2BC0](v17);
  if (!ifa_addr)
  {
    goto LABEL_47;
  }

  if (*(a1 + 24))
  {
    goto LABEL_30;
  }

  if (FigRoutingContextCopySystemMirroringContext())
  {
    demoManagerDiscoverLink_cold_3();
    goto LABEL_59;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
LABEL_30:
  v7 = (a1 + 16);
  if (!*(a1 + 16))
  {
    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoManagerDiscoverLink_cold_4();
    }

    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    FigCFDictionarySetInt32();
    v9 = FigRouteDiscovererCreate();
    if (v9)
    {
      demoManagerDiscoverLink_cold_5();
      if (Mutable)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v10 = *v7;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(v10, *MEMORY[0x277D27030], @"APDemoManager");
      }

      if (Mutable)
      {
LABEL_38:
        CFRelease(Mutable);
      }
    }

    if (v9)
    {
      demoManagerDiscoverLink_cold_6();
      goto LABEL_59;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  if (*(a1 + 48))
  {
    goto LABEL_41;
  }

  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    demoManagerDiscoverLink_cold_7();
  }

  v15 = *v7;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v16 && !v16(v15, *MEMORY[0x277D27038], *MEMORY[0x277D27008]))
  {
LABEL_41:
    *(a1 + 48) = 1;
    demoManagerActivateEndpointIfNeeded(a1);
  }

  else
  {
    APSLogErrorAt();
LABEL_59:
    if (gLogCategory_APDemoManager <= 90 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoManagerDiscoverLink_cold_8();
    }

    demoManagerStopEndpointDiscovery(a1);
  }
}

uint64_t demoManagerStopEndpointDiscovery(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 48))
  {
    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoManagerStopEndpointDiscovery_cold_1();
    }

    v2 = *(a1 + 16);
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v3)
    {
      v3(v2, *MEMORY[0x277D27038], *MEMORY[0x277D27018]);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  result = CMNotificationCenterRemoveListener();
  *(a1 + 48) = 0;
  return result;
}

void callback_currentRouteChanged(uint64_t a1, NSObject **a2)
{
  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    callback_currentRouteChanged_cold_1();
  }

  v3 = *a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __callback_currentRouteChanged_block_invoke;
  block[3] = &__block_descriptor_tmp_84;
  block[4] = a2;
  dispatch_async(v3, block);
}

void callback_availableEndpointsChanged(uint64_t a1, NSObject **a2)
{
  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    callback_availableEndpointsChanged_cold_1();
  }

  v3 = *a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __callback_availableEndpointsChanged_block_invoke;
  block[3] = &__block_descriptor_tmp_92_0;
  block[4] = a2;
  dispatch_async(v3, block);
}

void demoManagerActivateEndpointIfNeeded(uint64_t a1)
{
  theArray = 0;
  v22 = 0;
  cf = 0;
  if (!*(a1 + 16))
  {
    demoManagerActivateEndpointIfNeeded_cold_10();
    goto LABEL_47;
  }

  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    demoManagerActivateEndpointIfNeeded_cold_1();
  }

  v2 = *(a1 + 16);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || (v4 = *MEMORY[0x277CBECE8], v3(v2, *MEMORY[0x277D27028], *MEMORY[0x277CBECE8], &theArray)))
  {
    demoManagerActivateEndpointIfNeeded_cold_9();
    goto LABEL_47;
  }

  if (!theArray)
  {
LABEL_47:
    demoManagerActivateEndpointIfNeeded_cold_12(&v23);
LABEL_48:
    Mutable = v23;
    goto LABEL_54;
  }

  Count = CFArrayGetCount(theArray);
  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    demoManagerActivateEndpointIfNeeded_cold_2();
  }

  if (Count < 1)
  {
    goto LABEL_45;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    if (APSGetFBOPropertyInt64())
    {
      break;
    }

    if (Count == ++v6)
    {
      goto LABEL_45;
    }
  }

  if (!ValueAtIndex)
  {
LABEL_45:
    demoManagerActivateEndpointIfNeeded_cold_11(a1);
    goto LABEL_47;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(CMBaseObject, *MEMORY[0x277CC1450], v4, &v22);
  }

  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    demoManagerActivateEndpointIfNeeded_cold_3();
  }

  v10 = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, *MEMORY[0x277CC1370], v4, &cf);
  }

  if (cf == *MEMORY[0x277CBED28])
  {
    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoManagerActivateEndpointIfNeeded_cold_8();
    }

    demoManagerStopEndpointDiscovery(a1);
    goto LABEL_44;
  }

  if (ValueAtIndex == *(a1 + 8))
  {
    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoManagerActivateEndpointIfNeeded_cold_7();
    }

LABEL_44:
    Mutable = 0;
    goto LABEL_52;
  }

  if (*(a1 + 32))
  {
    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoManagerActivateEndpointIfNeeded_cold_4();
    }

    v12 = *(a1 + 32);
    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(v13, *MEMORY[0x277CC1488], v12);
    }
  }

  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    demoManagerActivateEndpointIfNeeded_cold_5();
  }

  if (*(a1 + 52))
  {
    Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    FigCFDictionarySetInt();
  }

  else
  {
    Mutable = 0;
  }

  v16 = *(a1 + 24);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    v18 = 4294954514;
    goto LABEL_64;
  }

  v18 = v17(v16, ValueAtIndex, Mutable);
  if (v18)
  {
LABEL_64:
    demoManagerActivateEndpointIfNeeded_cold_6(v18, Mutable, &v23);
    goto LABEL_48;
  }

LABEL_52:
  v19 = *(a1 + 8);
  *(a1 + 8) = ValueAtIndex;
  CFRetain(ValueAtIndex);
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_54:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __callback_currentRouteChanged_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v13 = 0;
  v2 = v1[3];
  if (!v2)
  {
    __callback_currentRouteChanged_block_invoke_cold_3();
    goto LABEL_24;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v3 || v3(v2, &v13))
  {
    __callback_currentRouteChanged_block_invoke_cold_2();
    goto LABEL_24;
  }

  if (v13)
  {
    v4 = APSGetFBOPropertyInt64();
    v5 = v13;
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v13 == 0;
    }

    if (!v6)
    {
      CFRelease(v13);
      v5 = 0;
      v13 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = v1[1];
  if (!v7)
  {
    if (v5)
    {
      v1[1] = v5;
      CFRetain(v5);
      if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
      {
        __callback_currentRouteChanged_block_invoke_cold_1();
      }

      goto LABEL_27;
    }

LABEL_24:
    demoManagerStopEndpointDiscovery(v1);
    v8 = v1[1];
    if (v8)
    {
      CFRelease(v8);
      v1[1] = 0;
    }

    v9 = *v1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __demoManagerCheckCurrentRoute_block_invoke;
    block[3] = &__block_descriptor_tmp_89;
    block[4] = v1;
    dispatch_async(v9, block);
    goto LABEL_32;
  }

  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v5 != v7)
  {
    usleep(0x186A0u);
    goto LABEL_24;
  }

LABEL_27:
  demoManagerStopEndpointDiscovery(v1);
  v10 = v13;
  if (!v13 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v10 = 0;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v11)
  {
    v11(v10, @"CreateAPDemoHIDChannel", 0, 0, 0);
  }

LABEL_32:
  if (v13)
  {
    CFRelease(v13);
  }
}

uint64_t __demoManagerGetModelSpecificName_block_invoke()
{
  result = CelestialGetModelSpecificName();
  demoManagerGetModelSpecificName_sModelNameStr = result;
  return result;
}

uint64_t APEndpointRemoteControlSessionCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, CFDictionaryRef theDict, uint64_t a5, void *a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  *label = 0u;
  v36 = 0u;
  if (!a2)
  {
    APEndpointRemoteControlSessionCreate_cold_13();
    return 4294949866;
  }

  if (!a3)
  {
    APEndpointRemoteControlSessionCreate_cold_12();
    return 4294949866;
  }

  if (!theDict)
  {
    APEndpointRemoteControlSessionCreate_cold_11();
    return 4294949866;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CC1618]);
  if (!Value)
  {
    APEndpointRemoteControlSessionCreate_cold_10();
    return 4294949866;
  }

  v13 = Value;
  v34 = a5;
  v14 = CFDictionaryGetValue(theDict, *MEMORY[0x277CC1620]);
  v15 = CFDictionaryGetValue(theDict, *MEMORY[0x277CC0B30]);
  Int64 = CFDictionaryGetInt64();
  FigEndpointRemoteControlSessionGetClassID();
  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    v31 = v17;
    APEndpointRemoteControlSessionCreate_cold_1();
  }

  else
  {
    v33 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    add = atomic_fetch_add(APEndpointRemoteControlSessionCreate_sSessionCounter, 1u);
    if (v15)
    {
      v20 = CFRetain(v15);
      *DerivedStorage = v20;
      if (!v20)
      {
        APEndpointRemoteControlSessionCreate_cold_2();
        return 4294949865;
      }
    }

    else
    {
      v21 = CFStringCreateWithFormat(a1, 0, @"%@-RCS-%d", a3, add + 1);
      *DerivedStorage = v21;
      if (!v21)
      {
        APEndpointRemoteControlSessionCreate_cold_9();
        return 4294949865;
      }
    }

    *(DerivedStorage + 8) = CFDictionaryGetInt64() != 0;
    *(DerivedStorage + 9) = CFDictionaryGetInt64() != 0;
    *(DerivedStorage + 10) = CFDictionaryGetInt64() != 0;
    v22 = CFDictionaryGetInt64() != 0;
    *(DerivedStorage + 104) = 50;
    *(DerivedStorage + 11) = v22;
    FigCFDictionaryGetInt32IfPresent();
    v23 = FigSimpleMutexCreate();
    *(DerivedStorage + 112) = v23;
    if (!v23)
    {
      APEndpointRemoteControlSessionCreate_cold_8();
      return 4294949865;
    }

    SNPrintF();
    *(DerivedStorage + 80) = os_transaction_create();
    SNPrintF();
    v24 = dispatch_queue_create(label, 0);
    *(DerivedStorage + 160) = v24;
    if (!v24)
    {
      APEndpointRemoteControlSessionCreate_cold_7();
      return 4294949865;
    }

    SNPrintF();
    v25 = dispatch_queue_create(label, 0);
    *(DerivedStorage + 24) = v25;
    if (!v25)
    {
      APEndpointRemoteControlSessionCreate_cold_6();
      return 4294949865;
    }

    SNPrintF();
    v26 = dispatch_queue_create(label, 0);
    *(DerivedStorage + 32) = v26;
    if (!v26)
    {
      APEndpointRemoteControlSessionCreate_cold_5();
      return 4294949865;
    }

    *(DerivedStorage + 40) = CFRetain(v13);
    if (v14)
    {
      *(DerivedStorage + 48) = CFRetain(v14);
    }

    else
    {
      v27 = *MEMORY[0x277CBECE8];
      v28 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
      if (v28)
      {
        v29 = v28;
        *(DerivedStorage + 48) = CFUUIDCreateString(v27, v28);
        CFRelease(v29);
      }
    }

    if (!*(DerivedStorage + 48))
    {
      APEndpointRemoteControlSessionCreate_cold_4();
      return 4294949865;
    }

    *(DerivedStorage + 56) = v34;
    *(DerivedStorage + 16) = CFRetain(a2);
    *(DerivedStorage + 120) = 0;
    if (Int64 && (*(DerivedStorage + 168) = Int64, v30 = apEndpointRemoteControlSession_ensureAndCopyTransportStreams(0, 0), v30))
    {
      v31 = v30;
      APEndpointRemoteControlSessionCreate_cold_3();
    }

    else
    {
      *(DerivedStorage + 64) = 0;
      FigCFDictionaryGetInt64IfPresent();
      *(DerivedStorage + 72) = 0;
      FigCFDictionaryGetInt32IfPresent();
      if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        IsAppleInternalBuild();
        LogPrintF();
      }

      v31 = 0;
      *v33 = 0;
    }
  }

  return v31;
}

uint64_t apEndpointRemoteControlSession_ensureAndCopyTransportStreams(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    FigSimpleMutexUnlock();
    return 4294949864;
  }

  v5 = *(DerivedStorage + 144);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 152);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (v6)
  {
    goto LABEL_156;
  }

  v68 = 0;
  v9 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v67 = 0;
  v10 = *(v9 + 168);
  v64 = 0;
  v65 = 0;
  if (apEndpointRemoteControlSession_isInvalidated())
  {
    v6 = 0;
    v20 = 0;
    v30 = 0;
    v25 = 0;
    v13 = 0;
    v68 = -17432;
    goto LABEL_133;
  }

  if (*(v9 + 168))
  {
    v63 = 0;
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_1();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v20 = Mutable;
  if (!Mutable)
  {
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_14(&v68);
    goto LABEL_98;
  }

  CFDictionarySetValue(Mutable, @"clientTypeUUID", *(v9 + 40));
  CFDictionarySetValue(v20, @"clientUUID", *(v9 + 48));
  CFDictionarySetValue(v20, @"channelID", *v9);
  CFDictionarySetInt64();
  v21 = MEMORY[0x277CBED28];
  if (*(v9 + 8))
  {
    CFDictionarySetValue(v20, @"wantsDedicatedSocket", *MEMORY[0x277CBED28]);
    v68 = RandomBytes();
    if (v68)
    {
      apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_2();
      goto LABEL_98;
    }

    CFDictionarySetInt64();
  }

  if (*(v9 + 10))
  {
    CFDictionarySetValue(v20, @"sendMessageAsIs", *v21);
  }

  v22 = *(v9 + 16);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v23)
  {
    v68 = -12782;
    goto LABEL_44;
  }

  v68 = v23(v22, 130, v20, &v67, 0, 0);
  if (v68)
  {
LABEL_44:
    if (gLogCategory_APEndpointRemoteControlSession > 90 || gLogCategory_APEndpointRemoteControlSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_98;
    }

LABEL_46:
    LogPrintF();
LABEL_98:
    v6 = 0;
    v30 = 0;
    v25 = 0;
    v13 = 0;
    goto LABEL_133;
  }

  *(v9 + 168) = CFDictionaryGetInt64();
  if (v68)
  {
    if (gLogCategory_APEndpointRemoteControlSession > 90 || gLogCategory_APEndpointRemoteControlSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_98;
    }

    goto LABEL_46;
  }

  Int64 = CFDictionaryGetInt64();
  v63 = v20;
  if (!*(v9 + 8) || !(Int64 << 32))
  {
    if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_13;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = 1;
LABEL_14:
  v12 = *MEMORY[0x277CBECE8];
  v13 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v13)
  {
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_13(&v68);
    goto LABEL_101;
  }

  FigCFDictionarySetInt64();
  FigCFDictionarySetInt32();
  if (v11)
  {
    FigCFDictionarySetInt32();
    v14 = *(v9 + 16);
    v15 = APTransportStreamIDMakeWithPort();
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v16)
    {
      v68 = v16(v14, v15, v13, &cf);
      if (!v68)
      {
        if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v65 = CFRetain(cf);
        if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CMBaseObject = APSenderSessionGetCMBaseObject(*(v9 + 16));
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v29)
        {
          v62 = v10;
          v68 = v29(CMBaseObject, @"KeyHolder", v12, &v64);
          if (!v68)
          {
            v30 = APKeyHolderCoreUtilsEncryptionContextDataStreamCreateWithSeed(v12, 0);
            if (v30)
            {
              v31 = cf;
              v32 = v64;
              v33 = *(*(CMBaseObjectGetVTable() + 16) + 80);
              if (v33)
              {
                v68 = v33(v31, v32, v30);
                if (!v68)
                {
                  v25 = 0;
                  goto LABEL_70;
                }
              }

              else
              {
                v68 = -12782;
              }

              apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_9();
            }

            else
            {
              apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_10(&v68);
            }

            v6 = 0;
LABEL_108:
            v25 = 0;
            goto LABEL_109;
          }
        }

        else
        {
          v68 = -12782;
        }

        apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_11();
LABEL_101:
        v6 = 0;
        v30 = 0;
        goto LABEL_108;
      }
    }

    else
    {
      v68 = -12782;
    }

    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_12();
    goto LABEL_101;
  }

  v62 = v10;
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v17 = *(v9 + 16);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v18)
  {
    v68 = -12782;
    goto LABEL_96;
  }

  v68 = v18(v17, v13, &cf);
  if (v68)
  {
LABEL_96:
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_5();
    goto LABEL_101;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v25 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v25)
  {
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_4(&v68);
    goto LABEL_104;
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v26 = *(v9 + 16);
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v27)
  {
    v68 = -12782;
    goto LABEL_103;
  }

  v68 = v27(v26, v25, &v65);
  if (v68)
  {
LABEL_103:
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_3();
LABEL_104:
    v6 = 0;
    v30 = 0;
    goto LABEL_109;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v30 = 0;
LABEL_70:
  FigSimpleMutexLock();
  if (*(v9 + 120))
  {
    FigSimpleMutexUnlock();
    v6 = 0;
    v68 = -17432;
LABEL_109:
    v20 = v63;
    goto LABEL_133;
  }

  v34 = *(v9 + 144);
  v35 = cf;
  *(v9 + 144) = cf;
  if (v35)
  {
    CFRetain(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  v36 = *(v9 + 152);
  v37 = v65;
  *(v9 + 152) = v65;
  if (v37)
  {
    CFRetain(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  FigSimpleMutexUnlock();
  v38 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v9 + 176) = v38;
  if (!v38)
  {
LABEL_112:
    v6 = 0;
    goto LABEL_109;
  }

  v39 = v38;
  v40 = v65;
  v41 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v41)
  {
    v68 = -12782;
    goto LABEL_111;
  }

  v68 = v41(v40, apEndpointRemoteControlSession_handleMessage, apEndpointRemoteControlSession_handleMessageCreatingReply, v39);
  if (v68)
  {
LABEL_111:
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_8();
    goto LABEL_112;
  }

  v42 = CMBaseObjectGetDerivedStorage();
  if (*(v42 + 11))
  {
    v43 = v42;
    v44 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v44)
    {
      v45 = v44;
      CFDictionarySetInt64();
      CFDictionarySetValue(v45, @"localSendsWithReadKey", *MEMORY[0x277CBED10]);
      if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v46 = *(v43 + 16);
      v47 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      v20 = v63;
      if ((!v47 || v47(v46, v30, v45)) && gLogCategory_APEndpointRemoteControlSession <= 90 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFRelease(v45);
    }

    else
    {
      apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_6();
      v20 = v63;
    }
  }

  else
  {
    v20 = v63;
    if (IsAppleInternalBuild() && gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_7();
    }
  }

  v48 = cf;
  v49 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v49)
  {
    v49(v48);
  }

  v50 = v65;
  v51 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v51)
  {
    v51(v50);
  }

  v52 = cf;
  v53 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v53)
  {
    v53(v52);
  }

  if (v62)
  {
    v54 = 1;
  }

  else
  {
    v54 = v11;
  }

  if ((v54 & 1) == 0)
  {
    FigTransportStreamWaitUntilConnected_0(v65);
  }

  v8 = v65;
  v6 = cf;
  v65 = 0;
  cf = 0;
LABEL_133:
  if (v67)
  {
    CFRelease(v67);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (cf)
  {
    v55 = FigTransportStreamGetCMBaseObject();
    if (v55)
    {
      v56 = v55;
      v57 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v57)
      {
        v57(v56);
      }
    }

    CFRelease(cf);
    cf = 0;
  }

  if (v65)
  {
    v58 = FigTransportStreamGetCMBaseObject();
    if (v58)
    {
      v59 = v58;
      v60 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v60)
      {
        v60(v59);
      }
    }

    CFRelease(v65);
  }

  v4 = v68;
  if (v68)
  {
    APSLogErrorAt();
LABEL_165:
    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_167;
  }

LABEL_156:
  v4 = 0;
  if (!a2)
  {
    goto LABEL_165;
  }

  *a2 = v6;
LABEL_167:
  if (v8)
  {
    CFRelease(v8);
  }

  return v4;
}

uint64_t apEndpointRemoteControlSession_Invalidate(const void *a1)
{
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_Invalidate_cold_1();
  }

  apEndpointRemoteControlSession_invalidateInternal(a1);
  return 0;
}

uint64_t apEndpointRemoteControlSession_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_Finalize_cold_1();
  }

  *(DerivedStorage + 128) = 0;
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 40) = 0;
  }

  v3 = *(DerivedStorage + 176);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 176) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 160) = 0;
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 24) = 0;
  }

  v8 = *(DerivedStorage + 32);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 32) = 0;
  }

  v9 = *(DerivedStorage + 80);
  if (v9)
  {
    os_release(v9);
    *(DerivedStorage + 80) = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t apEndpointRemoteControlSession_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SessionID"))
  {
    goto LABEL_6;
  }

  if (CFEqual(a2, @"clientUUID"))
  {
    DerivedStorage += 6;
LABEL_6:
    v7 = CFRetain(*DerivedStorage);
    result = 0;
    *a4 = v7;
    return result;
  }

  if (CFEqual(a2, @"clientTypeUUID"))
  {
    DerivedStorage += 5;
    goto LABEL_6;
  }

  return 4294949862;
}

void apEndpointRemoteControlSession_invalidateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  v25 = 0;
  v26 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {

    FigSimpleMutexUnlock();
    return;
  }

  *(DerivedStorage + 120) = 1;
  v4 = *(DerivedStorage + 128);
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    v5 = CFRetain(v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(DerivedStorage + 144);
  if (v6)
  {
    v7 = CFRetain(v6);
    v8 = *(DerivedStorage + 144);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 144) = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *(DerivedStorage + 152);
  if (v9)
  {
    v10 = CFRetain(v9);
    v11 = *(DerivedStorage + 152);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 152) = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_invalidateInternal_cold_1();
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else if (!v7)
  {
    goto LABEL_25;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v12)
  {
    v12(v7, 0, 0, 0);
  }

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

LABEL_25:
  if (v10)
  {
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v16)
    {
      v16(v10, 0, 0, 0);
    }

    v17 = FigTransportStreamGetCMBaseObject();
    if (v17)
    {
      v18 = v17;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v19)
      {
        v19(v18);
      }
    }
  }

  if (!v4)
  {
    goto LABEL_37;
  }

  if (v5)
  {
    v20 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v20)
    {
      if (gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        apEndpointRemoteControlSession_invalidateInternal_cold_2();
      }

LABEL_37:
      v20 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = CFRetain(a1);
  v25 = v4;
  if (v20)
  {
    v21 = CFRetain(v20);
  }

  else
  {
    v21 = 0;
  }

  v26 = v21;
  APSDispatchAsyncFHelper();
LABEL_43:
  CFRetain(a1);
  v22 = *(DerivedStorage + 24);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 0x40000000;
  v23[2] = __apEndpointRemoteControlSession_invalidateInternal_block_invoke;
  v23[3] = &__block_descriptor_tmp_10;
  v23[4] = a1;
  dispatch_async(v22, v23);
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_invalidateInternal_cold_3();
    if (!v5)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v5)
  {
LABEL_47:
    CFRelease(v5);
  }

LABEL_48:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void apEndpointRemoteControlSession_callEventHandlerAboutInvalidation(uint64_t a1)
{
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_callEventHandlerAboutInvalidation_cold_1();
  }

  else if (!a1)
  {
    apEndpointRemoteControlSession_callEventHandlerAboutInvalidation_cold_3();
    v2 = 0;
    goto LABEL_7;
  }

  if (*(a1 + 16))
  {
    (*(a1 + 8))(*a1, *MEMORY[0x277CC1658], 0);
    v2 = 1;
  }

  else
  {
    apEndpointRemoteControlSession_callEventHandlerAboutInvalidation_cold_2();
    v2 = 0;
  }

LABEL_7:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  if ((v2 & 1) == 0 && gLogCategory_APEndpointRemoteControlSession <= 90 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_callEventHandlerAboutInvalidation_cold_4();
  }
}

void __apEndpointRemoteControlSession_invalidateInternal_block_invoke(uint64_t a1)
{
  apEndpointRemoteControlSession_postNotification(*(a1 + 32), @"closed");
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v5[3] = 0;
  v3 = DerivedStorage[20];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __apEndpointRemoteControlSession_logSummaryAndResetCounters_block_invoke;
  block[3] = &unk_27849C160;
  block[5] = v5;
  block[6] = DerivedStorage;
  block[4] = v6;
  dispatch_sync(v3, block);
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    __apEndpointRemoteControlSession_invalidateInternal_block_invoke_cold_1();
  }

  DerivedStorage[11] = 0;
  DerivedStorage[12] = 0;
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v6, 8);
  CFRelease(*(a1 + 32));
}

uint64_t apEndpointRemoteControlSession_postNotification(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = CMNotificationCenterPostNotification();
    if (!result)
    {
      return result;
    }

    result = apEndpointRemoteControlSession_postNotification_cold_1();
  }

  else
  {
    result = apEndpointRemoteControlSession_postNotification_cold_2();
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 90)
  {
    if (gLogCategory_APEndpointRemoteControlSession != -1)
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

void *__apEndpointRemoteControlSession_logSummaryAndResetCounters_block_invoke(void *result)
{
  v1 = result[6];
  *(*(result[4] + 8) + 24) = *(v1 + 184);
  *(*(result[5] + 8) + 24) = *(v1 + 192);
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  return result;
}

uint64_t apEndpointRemoteControlSession_SendMessage(const void *a1, __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (!a2)
  {
    v4 = 0;
    v11 = 0;
LABEL_9:
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    goto LABEL_10;
  }

  if (*(DerivedStorage + 10))
  {
    v4 = 0;
    v11 = 0;
    v12 = &v18 + 1;
    v13 = a2;
LABEL_8:
    *v12 = CFRetain(v13);
    goto LABEL_9;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetValue(Mutable, @"data", a2);
    v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v15)
    {
      v13 = v15;
      v12 = &v18;
      CFDictionarySetValue(v15, @"params", v4);
      v11 = v13;
      goto LABEL_8;
    }
  }

  else
  {
    CUFatalErrorF();
  }

  apEndpointRemoteControlSession_SendMessage_cold_1();
  v11 = 0;
LABEL_10:
  CFRetain(a1);
  *(&v19 + 1) = a3;
  *&v20 = a4;
  BYTE8(v20) = *(v10 + 9);
  if (a2)
  {
    Length = CFDataGetLength(a2);
  }

  else
  {
    Length = 0;
  }

  *&v19 = Length;
  APSDispatchAsyncFHelper();
  if (v4)
  {
    CFRelease(v4);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

uint64_t apEndpointRemoteControlSession_SetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 136);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 136) = 0;
  }

  *(DerivedStorage + 128) = 0;
  if (a2)
  {
    *(DerivedStorage + 128) = a2;
    if (a3)
    {
      *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t apEndpointRemoteControlSession_Start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_Start_cold_1();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    apEndpointRemoteControlSession_Start_cold_2();
    v4 = 4294949863;
  }

  else
  {
    CFRetain(a1);
    v3 = *(DerivedStorage + 160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __apEndpointRemoteControlSession_Start_block_invoke;
    block[3] = &__block_descriptor_tmp_76_0;
    block[4] = a1;
    dispatch_async(v3, block);
    v4 = 0;
  }

  FigSimpleMutexUnlock();
  return v4;
}

void apEndpointRemoteControlSession_sendMessageInternal(unsigned int *a1)
{
  v2 = *(a1 + 1);
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  cf = 0;
  if (*a1)
  {
    APSLogErrorAt();
    v5 = *a1;
  }

  else
  {
    v4 = apEndpointRemoteControlSession_ensureAndCopyTransportStreams(v2, &cf);
    if (v4 == -17432)
    {
      if (gLogCategory_APEndpointRemoteControlSession <= 30 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        apEndpointRemoteControlSession_sendMessageInternal_cold_2();
      }

      v5 = 4294949864;
    }

    else
    {
      v5 = v4;
      if (v4)
      {
        APSLogErrorAt();
      }

      else if (cf)
      {
        ++*(DerivedStorage + 184);
        if (gLogCategory_APEndpointRemoteControlSession <= *(DerivedStorage + 104) && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(DerivedStorage + 192) += *(a1 + 4);
        if (*(a1 + 56))
        {
          if (*(DerivedStorage + 10))
          {
            v6 = APTransportStreamSendData();
          }

          else
          {
            v6 = APTransportStreamSendPlistMessage();
          }
        }

        else if (*(DerivedStorage + 10))
        {
          v6 = APTransportStreamSendDataCreatingReplyData();
        }

        else
        {
          v6 = APTransportStreamSendPlistMessageCreatingPlistReply();
        }

        v5 = v6;
        if (v6 && gLogCategory_APEndpointRemoteControlSession <= 90 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        apEndpointRemoteControlSession_sendMessageInternal_cold_1();
        v5 = 4294949863;
      }
    }
  }

  v7 = *(a1 + 5);
  if (v7)
  {
    v8 = &v12;
    if (!*(DerivedStorage + 10))
    {
      v8 = &v14;
    }

    v7(v5, *v8, *(a1 + 6));
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v9 = *(a1 + 1);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 2);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 3);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t apEndpointRemoteControlSession_isInvalidated()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 120);
  FigSimpleMutexUnlock();
  return v1;
}

void __apEndpointRemoteControlSession_startMessageHandling_block_invoke(uint64_t a1)
{
  apEndpointRemoteControlSession_postNotification(*(a1 + 32), @"failed");
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void apEndpointRemoteControlSession_handleMessageInternal(uint64_t a1)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(a1 + 8))
  {
    apEndpointRemoteControlSession_handleMessageInternal_cold_6(&v11);
LABEL_10:
    v5 = 0;
    v4 = 0;
    goto LABEL_20;
  }

  v3 = DerivedStorage;
  if (apEndpointRemoteControlSession_isInvalidated())
  {
    if (gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      apEndpointRemoteControlSession_handleMessageInternal_cold_1();
    }

    goto LABEL_10;
  }

  if (!*(a1 + 16))
  {
    if (gLogCategory_APEndpointRemoteControlSession <= 90 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      apEndpointRemoteControlSession_handleMessageInternal_cold_5();
    }

    goto LABEL_10;
  }

  CFDataGetLength(*(a1 + 8));
  CFDataGetBytePtr(*(a1 + 8));
  if (!*(v3 + 10))
  {
    CFDictionaryGetTypeID();
    v4 = CFCreateWithPlistBytes();
    Value = CFDictionaryGetValue(v4, @"params");
    if (Value)
    {
      v8 = CFDictionaryGetValue(Value, @"data");
      if (v8)
      {
        v6 = v8;
        goto LABEL_14;
      }

      apEndpointRemoteControlSession_handleMessageInternal_cold_3(&v11);
    }

    else
    {
      apEndpointRemoteControlSession_handleMessageInternal_cold_4(&v11);
    }

    v5 = 0;
    goto LABEL_20;
  }

  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
LABEL_14:
    CFRetain(v6);
    v5 = v6;
  }

  ++*(v3 + 88);
  if (gLogCategory_APEndpointRemoteControlSession <= *(v3 + 104) && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    CFDataGetLength(v5);
    LogPrintF();
  }

  *(v3 + 96) += CFDataGetLength(v5);
  (*(a1 + 16))(*a1, *MEMORY[0x277CC1650], v5, *(a1 + 24));
LABEL_20:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t APVirtualDisplayTestSinkCreate(int a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if ((a1 - 4) <= 0xFFFFFFFC)
  {
    APVirtualDisplayTestSinkCreate_cold_9();
    return 4294954516;
  }

  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v8 = *MEMORY[0x277CBECE8];
        FigVirtualDisplaySinkGetClassID();
        v9 = CMDerivedObjectCreate();
        if (v9)
        {
          value_low = v9;
          APVirtualDisplayTestSinkCreate_cold_1();
          goto LABEL_27;
        }

        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *DerivedStorage = a1;
        *(DerivedStorage + 4) = 0;
        CMTimeMake(&v30, 2, 30);
        *(DerivedStorage + 32) = v30;
        *(DerivedStorage + 8) = CFRetain(a2);
        *(DerivedStorage + 16) = CFRetain(a3);
        *(DerivedStorage + 120) = SecondsToUpTicks();
        *(DerivedStorage + 280) = -1;
        if (*DerivedStorage != 2)
        {
          value_low = 0;
          *a4 = cf;
          return value_low;
        }

        CFStringGetTypeID();
        v11 = CFPrefs_CopyTypedValue();
        if (v11)
        {
          v12 = v11;
          v32 = 0;
          *(DerivedStorage + 160) = CFRetain(v11);
          *(DerivedStorage + 144) = dispatch_queue_create("FigVirtualDisplayTestSinkQueue", 0);
          *(DerivedStorage + 152) = dispatch_semaphore_create(0);
          v13 = CFURLCreateWithFileSystemPath(v8, *(DerivedStorage + 160), kCFURLPOSIXPathStyle, 0);
          if (!v13)
          {
            APVirtualDisplayTestSinkCreate_cold_4();
            value_low = 4294954510;
            goto LABEL_25;
          }

          v14 = v13;
          CFRunLoopGetCurrent();
          v15 = FigAssetReaderCreateWithURLAndFormatReader();
          if (v15)
          {
            value_low = v15;
            APVirtualDisplayTestSinkCreate_cold_2();
          }

          else
          {
            v16 = *(DerivedStorage + 168);
            v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v17)
            {
              v18 = v17(v16, &v32);
              if (!v18)
              {
                if (v32)
                {
                  v19 = MEMORY[0x277CBF138];
                  v20 = MEMORY[0x277CBF150];
                  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6140], *MEMORY[0x277CD6148]);
                  v22 = CFDictionaryCreateMutable(v8, 0, v19, v20);
                  FigCFDictionarySetInt32();
                  FigCFDictionarySetInt32();
                  FigCFDictionarySetInt32();
                  v23 = *(DerivedStorage + 168);
                  v24 = v32;
                  v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                  if (v25)
                  {
                    v25(v23, v24, 0, DerivedStorage + 176);
                  }

                  v26 = MEMORY[0x277CC08F0];
                  *(DerivedStorage + 180) = *MEMORY[0x277CC08F0];
                  *(DerivedStorage + 196) = *(v26 + 16);
                  v27 = MEMORY[0x277CC08B0];
                  *(DerivedStorage + 204) = *MEMORY[0x277CC08B0];
                  *(DerivedStorage + 220) = *(v27 + 16);
                  if (v22)
                  {
                    CFRelease(v22);
                  }

                  if (Mutable)
                  {
                    CFRelease(Mutable);
                  }

                  CFRelease(v14);
                  goto LABEL_20;
                }

                if (APVirtualDisplayTestSinkCreate_cold_3(v14, &v32, &v30))
                {
LABEL_20:
                  value_low = 0;
                  *a4 = cf;
                  cf = 0;
LABEL_26:
                  CFRelease(v12);
                  goto LABEL_27;
                }

                value_low = LODWORD(v30.value);
LABEL_25:
                APSLogErrorAt();
                goto LABEL_26;
              }

              value_low = v18;
            }

            else
            {
              value_low = 4294954514;
            }

            APSLogErrorAt();
          }

          CFRelease(v14);
          goto LABEL_25;
        }

        APVirtualDisplayTestSinkCreate_cold_5();
      }

      else
      {
        APVirtualDisplayTestSinkCreate_cold_6();
      }
    }

    else
    {
      APVirtualDisplayTestSinkCreate_cold_7();
    }
  }

  else
  {
    APVirtualDisplayTestSinkCreate_cold_8();
  }

  value_low = 4294954516;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}