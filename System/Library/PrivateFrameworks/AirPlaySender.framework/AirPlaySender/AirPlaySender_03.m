uint64_t endpoint_Dissociate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v31 = 0u;
  *theDict = 0u;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 120);
  *(DerivedStorage + 120) = 1;
  if (!v3)
  {
    CFRetain(a1);
    v4 = *(DerivedStorage + 440);
    if (v4)
    {
      CFRetain(v4);
    }

    v5 = *(DerivedStorage + 216);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    theDict[0] = v5;
    v6 = *(DerivedStorage + 160);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    theDict[1] = v6;
    v7 = *(DerivedStorage + 184);
    if (v7)
    {
      CFRetain(v7);
    }

    v8 = *(DerivedStorage + 304);
    v9 = MEMORY[0x277CBECE8];
    if (v8)
    {
      v31[0] = CFSetCreateCopy(*MEMORY[0x277CBECE8], v8);
    }

    v10 = *(DerivedStorage + 328);
    if (v10)
    {
      v31[1] = CFDictionaryCreateCopy(*v9, v10);
    }

    v11 = *(DerivedStorage + 40);
    CFGetAllocator(a1);
    APEndpointDescriptionGetCMBaseObject(v11);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v12 = OUTLINED_FUNCTION_11_8();
      v13(v12);
    }

    v14 = *(DerivedStorage + 288);
    if (v14)
    {
      CFRetain(v14);
    }

    v15 = *(DerivedStorage + 296);
    if (v15)
    {
      CFRetain(v15);
    }
  }

  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v17)
  {
    v17(CMBaseObject, @"uglServerInfo", 0);
  }

  endpoint_resetActivationState(DerivedStorage + 128);
  if (theDict[1] && CFDictionaryContainsKey(theDict[1], *MEMORY[0x277CC1968]))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  if (!v3)
  {
    endpoint_removeAPEndpointManagerNotificationsListenerIfNeeded();
    endpoint_removeHDMILatencyNotificationListenerIfNeeded();
    endpoint_stopListeningToSenderSessionAndStreamsNotifications(a1, theDict[0]);
    v18 = *(CMBaseObjectGetDerivedStorage() + 40);
    if (v18)
    {
      v19 = CFRetain(v18);
      if (v19)
      {
        v20 = v19;
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CFRelease(v20);
      }
    }

    if (v31[1])
    {
      CFDictionaryApplyFunction(v31[1], endpoint_unsubscribeRCS, a1);
    }

    if (v31[0])
    {
      OUTLINED_FUNCTION_5_19();
      CFSetApplyFunction(v21, v22, a1);
    }

    if (theDict[0])
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 96))
      {
        OUTLINED_FUNCTION_9_5();
        v25(v23, v24);
      }

      v26 = APSenderSessionGetCMBaseObject(theDict[0]);
      if (v26)
      {
        v27 = v26;
        v28 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v28)
        {
          v28(v27);
        }
      }

      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }
    }

    FigSimpleMutexLock();
    endpoint_clearEndpointState();
    APSDispatchAsyncFHelper();
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_11_5()
{
  *(v0 - 160) = *(v0 - 256);
  *(v0 - 144) = *(v0 - 240);
  return v0 - 160;
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return CFDictionarySetCString();
}

uint64_t endpoint_removeAPEndpointManagerNotificationsListenerIfNeeded()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 48))
  {
    v1 = result;
    if (*(result + 32))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      result = FigNotificationCenterRemoveWeakListener();
      if (*(v1 + 96) == 7)
      {
        CMNotificationCenterGetDefaultLocalCenter();

        return FigNotificationCenterRemoveWeakListener();
      }
    }
  }

  return result;
}

uint64_t endpoint_removeHDMILatencyNotificationListenerIfNeeded()
{
  result = endpoint_isInLocalClusterOfAppleTV();
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_4_28();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void endpoint_dissociateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = 0;
  if (qword_280FB1BF8 != -1)
  {
    dispatch_once(&qword_280FB1BF8, &__block_literal_global_32);
  }

  if (_MergedGlobals_24)
  {
    v3 = *_MergedGlobals_24;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __endpoint_dissociateInternal_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = _MergedGlobals_24;
    block[5] = a1;
    dispatch_sync(v3, block);
  }

  FigSimpleMutexLock();
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(DerivedStorage[5]);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, @"DeviceID", *MEMORY[0x277CBECE8], &v19);
  }

  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
  {
    CFGetHardwareAddress();
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (DerivedStorage[3] && *(a1 + 48))
  {
    APBrowserControllerDeregisterEndpoint();
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFDictionaryApplyFunction(v6, endpoint_dissociateStreamsDictionaryEntry, 0);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFDictionaryApplyFunction(v7, endpoint_invalidateRCS, *a1);
  }

  if (*(a1 + 64))
  {
    CFSetApplyBlock();
  }

  endpoint_stopMediaRemoteAndMetadataServices(*a1, *(a1 + 56));
  FigSimpleMutexLock();
  endpoint_updateStatus(*a1, -16723, 1);
  FigSimpleMutexUnlock();
  if (*DerivedStorage)
  {
    v8 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v8, *(a1 + 40), *(a1 + 32), &v20);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v20)
    {
      CFRelease(v20);
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 88);
  if (v17)
  {
    CFRelease(v17);
  }
}

uint64_t browserController_deregisterEndpoint(uint64_t *a1)
{
  v10 = 0;
  v2 = *MEMORY[0x277CBECE8];
  browserController_copyDeviceName(a1[1], &v10);
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
  if (!CFDictionaryContainsKey(*(*a1 + 120), v5))
  {
    goto LABEL_11;
  }

  CFDictionaryRemoveValue(*(*a1 + 120), v5);
  v6 = APTransportDeviceStopTracking();
  if (v6)
  {
    v8 = v6;
    browserController_deregisterEndpoint_cold_1();
LABEL_12:
    v7 = v10;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  browserController_updateDiscoveryMode(*a1);
  if (gLogCategory_APBrowserController > 40 || gLogCategory_APBrowserController == -1 && !_LogCategory_Initialize())
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v7 = v10;
  LogPrintF();
  v8 = 0;
  if (v7)
  {
LABEL_13:
    CFRelease(v7);
  }

LABEL_14:
  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

CFIndex manager_updateAggregatedInterruptingSessionStateIfNeeded(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  Count = CFSetGetCount(*(v6 + 224));
  v8 = CFSetContainsValue(*(DerivedStorage + 224), a2);
  if (a3)
  {
    if (v8)
    {
      if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        manager_updateAggregatedInterruptingSessionStateIfNeeded_cold_1();
      }
    }

    else
    {
      CFSetSetValue(*(DerivedStorage + 224), a2);
    }
  }

  else if (v8)
  {
    CFSetRemoveValue(*(DerivedStorage + 224), a2);
  }

  else if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_updateAggregatedInterruptingSessionStateIfNeeded_cold_2();
  }

  v9 = CMBaseObjectGetDerivedStorage();
  result = CFSetGetCount(*(v9 + 224));
  if (Count > 0 != result > 0)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return manager_getAndPostSenderStateUpdate();
  }

  return result;
}

uint64_t endpoint_stopListeningToSenderSessionAndStreamsNotifications(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  return FigCFDictionaryApplyBlock();
}

void browserController_copyDeviceName(uint64_t a1, uint64_t *a2)
{
  if (APTransportDeviceGetAdvertiserInfo())
  {
    *a2 = APAdvertiserInfoCopyProperty();
  }

  else
  {
    browserController_copyDeviceName_cold_2();
  }
}

void endpoint_stopMediaRemoteAndMetadataServices(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*(DerivedStorage + 584))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*(v4 + 592))
    {
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      APMediaRemoteCommandReceiverRemoveClient();
    }

    v5 = *(v4 + 584);
    *(v4 + 592) = 0;
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 584) = 0;
    }
  }

  else
  {
    *(DerivedStorage + 592) = 0;
  }

  v6 = *(v4 + 600);
  if (v6)
  {
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || (v7 = _LogCategory_Initialize(), v6 = *(v4 + 600), v7))
      {
        LogPrintF();
        v6 = *(v4 + 600);
      }
    }

    APMetadataSenderInvalidate(v6);
    v8 = *(v4 + 600);
    if (v8)
    {
      CFRelease(v8);
      *(v4 + 600) = 0;
    }
  }

  if (a2)
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    APMetadataSourceStop(a2);
  }
}

void endpoint_updateStatus(const void *a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 120) || !a2)
  {
    goto LABEL_29;
  }

  v7 = DerivedStorage;
  *(DerivedStorage + 148) = a2;
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
      goto LABEL_28;
    }

    v13 = v12;
    CFDictionarySetInt64();
    if (a2 == 200470 || a2 == 200401)
    {
      if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_4_1();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      goto LABEL_27;
    }

    CFDictionarySetInt64();
    CFDictionarySetInt64();
    v15 = MEMORY[0x277CC0CA8];
    v16 = a3 == 0;
    if (a3)
    {
      v15 = MEMORY[0x277CC0CA0];
    }

    v17 = *v15;
    if (v16)
    {
      v18 = MEMORY[0x277CC0BD0];
    }

    else
    {
      v18 = MEMORY[0x277CC0BC8];
    }

    v19 = *v18;
    CFDictionarySetValue(v10, *MEMORY[0x277CC0CC8], v17);
    CFDictionarySetValue(v13, *MEMORY[0x277CC0BD8], v19);
    if (v7[45])
    {
      if (v7[52] && (v20 = FigCFWeakReferenceHolderCopyReferencedObject(), v7[52]) && !v20)
      {
        if (gLogCategory_APEndpoint > 90)
        {
LABEL_39:
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_39_0();
          FigDispatchAsyncPostNotification();
          if (a2 == -16613)
          {
            v21 = v7[5];
            v22 = CFGetAllocator(a1);
            CMBaseObject = APEndpointDescriptionGetCMBaseObject(v21);
            v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v24)
            {
              v24(CMBaseObject, @"TransportDevice", v22, &cf);
              v25 = cf;
              v26 = v7[3];
              if (v26 && cf)
              {
                APBrowserControllerReconfirmEndpoint(v26, cf);
                v25 = cf;
              }

              if (v25)
              {
                CFRelease(v25);
              }
            }
          }

LABEL_27:
          CFRelease(v13);
LABEL_28:
          CFRelease(v10);
LABEL_29:
          OUTLINED_FUNCTION_46_0();
          return;
        }

        if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }
      }

      else
      {
        CFRetain(a1);
        CFRetain(v13);
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        APSDispatchAsyncFHelper();
      }
    }

    if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_4_1();
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_46_0();

  APSLogErrorAt();
}

uint64_t APEndpointCreateEndpointActivationNotificationPayload(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      result = 0;
      *a4 = v6;
    }

    else
    {
      APEndpointCreateEndpointActivationNotificationPayload_cold_1();
      return 4294950575;
    }
  }

  else
  {
    APEndpointCreateEndpointActivationNotificationPayload_cold_2();
    return 4294950576;
  }

  return result;
}

uint64_t manager_handleBrowserRemoveEvent()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v0 = manager_areEndpointsPresent();
  manager_removeAllEndpointsForTransportDeviceIfNeeded();
  if (v0 != manager_areEndpointsPresent())
  {
    if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleBrowserRemoveEvent_cold_1();
    }

    manager_postEndpointPresentChangedNotification();
  }

  return FigSimpleMutexUnlock();
}

uint64_t emp_removeEndpoint(uint64_t a1, const void *a2, int a3)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 56;
  if (a3 == 3)
  {
    v6 = 64;
  }

  if (a3 == 2)
  {
    v6 = 72;
  }

  v7 = *(DerivedStorage + v6);
  APEndpointPlusUtils_GetTypeString(a3);
  cf = 0;
  if (!CFDictionaryGetValue(v7, a2))
  {
    return 4294960569;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(CMBaseObject, *MEMORY[0x277CC1450], *MEMORY[0x277CBECE8], &cf);
  }

  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CFDictionaryRemoveValue(v7, a2);
  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return result;
}

uint64_t __emp_handleNotification_block_invoke_cold_13(uint64_t a1, const void *a2, int a3)
{
  result = emp_removeEndpoint(a1, a2, a3);
  if (result)
  {
    return APSLogErrorAt();
  }

  return result;
}

void manager_updateEndpointPSGInfoIfNeeded()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v1 = APSGetFBOPropertyInt64();
  if (!*(DerivedStorage + 320))
  {
    return;
  }

  v2 = MEMORY[0x277CEA2E8];
  v3 = MEMORY[0x277CBECE8];
  if (v1)
  {
    cf = 0;
    theDict = 0;
    if (!*(CMBaseObjectGetDerivedStorage() + 320))
    {
LABEL_33:
      if (theDict)
      {
        CFRelease(theDict);
      }

      goto LABEL_35;
    }

    CMBaseObject = APSPSGDataSourceGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = *v2;
      v7 = *v3;
      v8 = v5(CMBaseObject, *v2, *v3, &theDict);
      if (theDict)
      {
        if (!v8)
        {
          v9 = FigEndpointGetCMBaseObject();
          v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v10)
          {
            v11 = v10(v9, *MEMORY[0x277CC1368], v7, &cf);
            v12 = cf;
            if (!cf || v11)
            {
LABEL_31:
              if (v12)
              {
                CFRelease(v12);
              }

              goto LABEL_33;
            }

            Value = FigCFDictionaryGetValue();
            if (Value)
            {
              v14 = Value;
              if (CFDictionaryGetInt64())
              {
                if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10()))
                {
                  OUTLINED_FUNCTION_3();
                  LogPrintF();
                }
              }

              else
              {
                MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, theDict);
                if (MutableCopy)
                {
                  v16 = MutableCopy;
                  v17 = CFDictionaryCreateMutableCopy(v7, 0, v14);
                  if (v17)
                  {
                    v18 = v17;
                    FigCFDictionarySetValue();
                    FigCFDictionarySetValue();
                    v19 = FigEndpointGetCMBaseObject();
                    v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v20)
                    {
                      v20(v19, @"PermanentSpeakerGroupingInfo", v18);
                    }

                    v21 = APSPSGDataSourceGetCMBaseObject();
                    v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v22)
                    {
                      v22(v21, v6, v16);
                    }

                    v23 = APSPSGDataSourceGetCMBaseObject();
                    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v24)
                    {
                      v24(v23, *MEMORY[0x277CEA2F0], v18);
                    }

                    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10()))
                    {
                      OUTLINED_FUNCTION_3();
                      LogPrintF();
                    }

                    CFRelease(v18);
                  }

                  CFRelease(v16);
                }
              }
            }
          }
        }
      }
    }

    v12 = cf;
    goto LABEL_31;
  }

LABEL_35:
  v25 = APSPSGDataSourceGetCMBaseObject();
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v26)
  {
    v26(v25, *v2, *v3, &v27);
  }

  manager_updatePSGInfoOnEndpoint();
  if (v27)
  {
    CFRelease(v27);
  }
}

void OUTLINED_FUNCTION_24_0(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

__n128 OUTLINED_FUNCTION_24_2()
{
  result = *&STACK[0x280];
  *(v0 - 256) = *&STACK[0x280];
  *(v0 - 240) = STACK[0x290];
  return result;
}

uint64_t APEndpointPlusCreateWithInnerEndpoint(const void *a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a1)
  {
    APEndpointPlusCreateWithInnerEndpoint_cold_4();
    return 4294954516;
  }

  if (a3)
  {
    EndpointType = APEndpointPlusUtils_GetEndpointType();
    v7 = APEndpointPlusCreate(EndpointType, a2, &cf);
    if (v7)
    {
      v8 = v7;
      APEndpointPlusCreateWithInnerEndpoint_cold_1();
    }

    else
    {
      v8 = APEndpointPlusSetInner(cf, a1);
      if (!v8)
      {
        *a3 = cf;
        return v8;
      }

      APEndpointPlusCreateWithInnerEndpoint_cold_2();
    }
  }

  else
  {
    APEndpointPlusCreateWithInnerEndpoint_cold_3();
    v8 = 4294954516;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t APEndpointPlusCreate(int a1, const void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *label = 0u;
  if (a3)
  {
    v6 = *MEMORY[0x277CBECE8];
    FigEndpointExtendedGetClassID();
    v7 = CMDerivedObjectCreate();
    if (v7)
    {
      v13 = v7;
      APEndpointPlusCreate_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a1;
      *(DerivedStorage + 32) = FigSimpleMutexCreate();
      SNPrintF();
      v9 = dispatch_queue_create(label, 0);
      *(DerivedStorage + 8) = v9;
      if (v9)
      {
        if (a2)
        {
          v10 = CFRetain(a2);
        }

        else
        {
          v10 = 0;
        }

        *(DerivedStorage + 24) = 2000;
        *(DerivedStorage + 16) = v10;
        APSSettingsGetUInt32IfPresent();
        if (a1 == 2)
        {
          *(DerivedStorage + 80) = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *(DerivedStorage + 88) = CFArrayCreateMutable(v6, 0, 0);
          *(DerivedStorage + 96) = CFArrayCreateMutable(v6, 0, 0);
        }

        v11 = CMBaseObjectGetDerivedStorage();
        v12 = FigSimpleMutexCreate();
        v11[15] = epp_delegate_handleFailed;
        v11[13] = 0;
        v11[14] = epp_delegate_handleAuthRequired;
        v11[17] = epp_delegate_handleStreamsChanged;
        v11[18] = 0;
        v11[16] = epp_delegate_handleConnectedStateChanged;
        v11[21] = epp_delegate_handleDidCloseCommChannel;
        v11[22] = 0;
        v11[20] = epp_delegate_handleDidReceiveDataFromCommChannel;
        v11[19] = epp_delegate_handleIncomingRemoteControlSessionCreated;
        v11[24] = epp_delegate_handleSetProperty;
        v11[25] = v12;
        v11[23] = epp_delegate_handleCopyProperty;
        if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
        {
          APEndpointPlusCreate_cold_2();
        }

        v13 = 0;
        *a3 = 0;
      }

      else
      {
        APEndpointPlusCreate_cold_3();
        return 4294960568;
      }
    }
  }

  else
  {
    APEndpointPlusCreate_cold_4();
    return 4294954516;
  }

  return v13;
}

uint64_t APEndpointPlusSetInner(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40) && APSGetFBOPropertyInt64() || a2 && APSGetFBOPropertyInt64())
  {
    APSLogErrorAt();
    v11 = 4294950576;
    APSLogErrorAt();
  }

  else
  {
    v5 = *(DerivedStorage + 40);
    if (v5 != a2)
    {
      if (gLogCategory_APEndpointPlus <= 50)
      {
        if (gLogCategory_APEndpointPlus != -1 || (v6 = _LogCategory_Initialize(), v5 = *(DerivedStorage + 40), v6))
        {
          OUTLINED_FUNCTION_2();
          v5 = *(DerivedStorage + 40);
        }
      }

      epp_removeInnerListeners(a1, v5);
      v7 = *(DerivedStorage + 40);
      *(DerivedStorage + 40) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      v8 = *(DerivedStorage + 40);
      v9 = CMBaseObjectGetDerivedStorage();
      CMNotificationCenterGetDefaultLocalCenter();
      if (v8)
      {
        OUTLINED_FUNCTION_6_1();
        FigNotificationCenterAddWeakListener();
        if (!APSGetFBOPropertyInt64())
        {
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v13)
          {
            v13(v8, v9 + 104);
          }

          v14 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v14)
          {
            v14(v8, v9 + 144);
          }

          v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (v15)
          {
            v15(v8, v9 + 176);
          }
        }
      }

      v10 = *(DerivedStorage + 64);
      if (v10)
      {
        dispatch_semaphore_signal(v10);
      }

      if (a2)
      {
        epp_updateDescriptionFromInner(a1);
      }

      epp_postNotificationAsync(a1, *MEMORY[0x277CC0D48], 0);
    }

    v11 = 0;
  }

  FigSimpleMutexUnlock();
  return v11;
}

uint64_t endpoint_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    endpoint_SetDelegateRouting_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(DerivedStorage + 416);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 416) = 0;
    }

    v5 = (DerivedStorage + 344);
    if (a2)
    {
      v6 = *a2;
      v7 = *(a2 + 16);
      *(DerivedStorage + 376) = *(a2 + 32);
      *v5 = v6;
      *(DerivedStorage + 360) = v7;
      a2 = 0;
      *(DerivedStorage + 416) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 376) = 0;
      *v5 = 0u;
      *(DerivedStorage + 360) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t endpoint_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    endpoint_SetDelegateRemoteControl_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(DerivedStorage + 424);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 424) = 0;
    }

    if (a2)
    {
      v5 = *(a2 + 16);
      *(DerivedStorage + 384) = *a2;
      *(DerivedStorage + 400) = v5;
      a2 = 0;
      *(DerivedStorage + 424) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 384) = 0u;
      *(DerivedStorage + 400) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

void emp_addEndpoint(uint64_t a1, const void *a2, const void *a3, int a4)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 56;
  if (a4 == 3)
  {
    v8 = 64;
  }

  if (a4 == 2)
  {
    v8 = 72;
  }

  v9 = *(DerivedStorage + v8);
  APEndpointPlusUtils_GetTypeString(a4);
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x277CC1450], *MEMORY[0x277CBECE8], &cf);
  }

  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CFDictionarySetValue(v9, a2, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void __manager_notifyAvailableEndpointsChangedWithThrottle_block_invoke_2(uint64_t a1)
{
  CFRetain(*(a1 + 32));
  v2 = *(a1 + 32);

  manager_notifyAvailableEndpointsChanged(v2);
}

void __manager_notifyAvailableEndpointsChangedWithThrottle_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t endpoint_copyAirPlayEndpointProperties(uint64_t a1, int a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a2)
  {
    v6 = kAPEndpointDescriptionProperty_AirPlayClusterCompatibleEndpointProperties;
  }

  else
  {
    v6 = kAPEndpointDescriptionProperty_AirPlayEndpointProperties;
  }

  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v13 = 4294954514;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  v9 = v8(CMBaseObject, *v6, *MEMORY[0x277CBECE8], &cf);
  if (v9)
  {
    v13 = v9;
    goto LABEL_13;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v11 = MutableCopy;
    if (!a2)
    {
      v12 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 49))
      {
        v12 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(MutableCopy, @"IsLocalDevice", *v12);
    }

    v13 = 0;
    *a3 = v11;
  }

  else
  {
    endpoint_copyAirPlayEndpointProperties_cold_1();
    v13 = 4294950575;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

BOOL endpointCluster_isSubEndpointOfType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!a2)
  {
    endpointCluster_isSubEndpointOfType_cold_2();
    return 0;
  }

  if (a3)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4 && !v4(CMBaseObject, *MEMORY[0x277CC14F0], *MEMORY[0x277CBECE8], &cf))
    {
      v5 = FigCFEqual() != 0;
      goto LABEL_11;
    }

    if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    endpointCluster_isSubEndpointOfType_cold_1();
  }

  v5 = 0;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void OUTLINED_FUNCTION_22_2()
{
  *(v3 - 240) = v0;
  *(v2 + 60) = *(v3 - 208);
  v4 = *(v3 - 200);
  *(v3 - 232) = v1;
  *(v3 - 220) = v4;
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return CMBaseObjectGetVTable();
}

CFTypeRef manager_copyPropertyInternal_cold_6(uint64_t a1, void *a2)
{
  v3 = manager_areEndpointsPresent();
  v4 = MEMORY[0x277CBED28];
  if (!v3)
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t manager_handleDevicePresenceChanged(char a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  manager_setAVDevicePresence(a2, a1);
  if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleDevicePresenceChanged_cold_1();
  }

  return FigSimpleMutexUnlock();
}

uint64_t manager_setAVDevicePresence(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = manager_areEndpointsPresent();
  *(DerivedStorage + 96) = a2;
  result = manager_areEndpointsPresent();
  if (v4 != result)
  {
    if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_setAVDevicePresence_cold_1();
    }

    return manager_postEndpointPresentChangedNotification();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_61(const __CFAllocator *a1, void *a2, uint64_t a3, const __CFAllocator *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return CMBlockBufferCreateWithMemoryBlock(a1, a2, 0xCuLL, a4, 0, 0, 0xCuLL, 0, a9);
}

uint64_t APAudioEngineBufferedCreate_cold_11(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_13()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_15()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_18()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_19()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t carAudioStream_control(int a1, CFTypeRef cf1, const void *a3)
{
  if (!CFEqual(cf1, @"APCarPlayStreamAudioControl_SpeechEvent"))
  {
    return 4294960561;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a3);
  v5 = *(DerivedStorage + 416);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __carAudioStream_handleSpeechEvent_block_invoke;
  v7[3] = &__block_descriptor_tmp_190_0;
  v7[4] = DerivedStorage;
  v7[5] = a3;
  dispatch_async(v5, v7);
  return 0;
}

void __carAudioStream_handleSpeechEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 424) && *(v2 + 176))
  {
    CFStringGetTypeID();
    if (CFDictionaryGetTypedValue())
    {
      APSAudioStats_MarkEvent();
    }

    else
    {
      __carAudioStream_handleSpeechEvent_block_invoke_cold_2();
    }
  }

  CFRelease(*(a1 + 40));
}

uint64_t epp_copyCachedDescriptionProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (epp_getDescriptionKeyMap_onceToken != -1)
  {
    epp_copyCachedDescriptionProperty_cold_1();
  }

  v8 = epp_getDescriptionKeyMap_keyMap;
  v26 = 0;
  if (*DerivedStorage == 2)
  {
    epp_copyCachedDescriptionProperty_cold_8();
    return 4294950576;
  }

  if (!*(DerivedStorage + 48))
  {
    epp_copyCachedDescriptionProperty_cold_7();
    return 4294960587;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    UInt64 = APEndpointPlusUtils_CopyDeviceIDFromEndpointDescription(*(DerivedStorage + 48));
    if (!UInt64)
    {
      epp_copyCachedDescriptionProperty_cold_2();
      return 4294954512;
    }

    goto LABEL_47;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14F8]))
  {
    v10 = CMBaseObjectGetDerivedStorage();
    DeviceClass = GestaltGetDeviceClass();
    v27 = 0;
    cf = 0;
    if (*v10 == 2)
    {
      epp_copyCachedDescriptionProperty_cold_5();
    }

    else
    {
      v12 = DeviceClass;
      if (*(v10 + 48))
      {
        if (*v10 == 1)
        {
          APSGetFBOPropertyInt64();
          v13 = *(v10 + 48);
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v14 || v14(v13, &cf))
          {
            epp_copyCachedDescriptionProperty_cold_3();
          }

          else
          {
            APSFeaturesHasFeature();
            APSFeaturesHasFeature();
            if (v12 != 13 && v12 != 7)
            {
              if (v12 == 4)
              {
                CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v10 + 48));
                v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v16 && !v16(CMBaseObject, @"ClusterUUID", *MEMORY[0x277CBECE8], &v27) && v27 && APSHasSamePersistentGroupUUID())
                {
                  APSGetFBOPropertyInt64();
                }
              }

              else if (!APSFeaturesHasFeature())
              {
                APSFeaturesHasFeature();
              }
            }
          }
        }
      }

      else
      {
        epp_copyCachedDescriptionProperty_cold_4();
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    UInt64 = FigCFNumberCreateUInt64();
    if (!UInt64)
    {
      epp_copyCachedDescriptionProperty_cold_6();
      return 4294954512;
    }

    goto LABEL_47;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1258]))
  {
    v17 = *(DerivedStorage + 48);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v18 && v18(v17, 86))
    {
      v19 = MEMORY[0x277CBED28];
    }

    else
    {
      v19 = MEMORY[0x277CBED10];
    }

    UInt64 = *v19;
LABEL_29:
    UInt64 = CFRetain(UInt64);
LABEL_47:
    v24 = 0;
    *a4 = UInt64;
    return v24;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1558]))
  {
    v20 = APSGetFBOPropertyInt64();
    v21 = MEMORY[0x277CC1A08];
    if (!v20)
    {
      v21 = MEMORY[0x277CC1A10];
    }

    UInt64 = *v21;
    if (!*v21)
    {
      goto LABEL_47;
    }

    goto LABEL_29;
  }

  Value = CFDictionaryGetValue(v8, a2);
  if (!Value)
  {
    if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294954512;
  }

  v23 = APEndpointDescriptionCopyProperty(*(DerivedStorage + 48), Value, a3, &v26);
  if (!v23)
  {
    UInt64 = v26;
    goto LABEL_47;
  }

  v24 = v23;
  APSLogErrorAt();
  if (v26)
  {
    CFRelease(v26);
  }

  return v24;
}

void jitterBuffer_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t OUTLINED_FUNCTION_18()
{

  return FigDispatchAsyncPostNotification();
}

uint64_t OUTLINED_FUNCTION_18_8()
{
  result = 4294954514;
  *(v0 - 108) = -12782;
  return result;
}

uint64_t APAudioEngineBufferedCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a4)
  {
    APAudioEngineBufferedCreate_cold_39();
    return 4294951815;
  }

  if (!a2)
  {
    APAudioEngineBufferedCreate_cold_38();
LABEL_122:
    value_low = 4294951815;
    goto LABEL_99;
  }

  if (!a3)
  {
    APAudioEngineBufferedCreate_cold_37();
    goto LABEL_122;
  }

  if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_1();
  }

  FigEndpointStreamAudioEngineGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    value_low = v7;
    APAudioEngineBufferedCreate_cold_2();
    goto LABEL_99;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 392) = 0;
  *(DerivedStorage + 408) = APSSettingsGetIntWithDefault();
  *(DerivedStorage + 8) = CFStringCreateWithCString(a1, "AudioEngineBuffered", 0x8000100u);
  v9 = APSDispatchSectionCreate();
  if (v9)
  {
    value_low = v9;
    APAudioEngineBufferedCreate_cold_3();
    goto LABEL_99;
  }

  *(DerivedStorage + 884) = 1;
  *(DerivedStorage + 456) = 36;
  v10 = dispatch_queue_create("AudioEngineDataProcessingQueue", 0);
  *(DerivedStorage + 448) = v10;
  if (!v10)
  {
    APAudioEngineBufferedCreate_cold_36(&time);
LABEL_130:
    value_low = LODWORD(time.value);
    goto LABEL_99;
  }

  v11 = APSPriorityDispatchQueuePoolCreate();
  if (v11)
  {
    value_low = v11;
    APAudioEngineBufferedCreate_cold_4();
    goto LABEL_99;
  }

  v12 = APSPriorityDispatcherCreate();
  if (v12)
  {
    value_low = v12;
    APAudioEngineBufferedCreate_cold_5();
    goto LABEL_99;
  }

  v13 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 344) = v13;
  if (!v13)
  {
    APAudioEngineBufferedCreate_cold_35(&time);
    goto LABEL_130;
  }

  v14 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 352) = v14;
  if (!v14)
  {
    APAudioEngineBufferedCreate_cold_34(&time);
    goto LABEL_130;
  }

  DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  if (!DefaultAirPlayMallocZoneCFAllocator)
  {
    *(DerivedStorage + 360) = 0;
    goto LABEL_97;
  }

  v16 = CFRetain(DefaultAirPlayMallocZoneCFAllocator);
  *(DerivedStorage + 360) = v16;
  if (!v16)
  {
LABEL_97:
    APAudioEngineBufferedCreate_cold_33();
LABEL_98:
    value_low = 4294951816;
    goto LABEL_99;
  }

  *(DerivedStorage + 416) = CFDictionaryGetInt64() != 0;
  APSSettingsIsFeatureEnabled();
  *(DerivedStorage + 56) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_6();
  }

  *(DerivedStorage + 980) = 0;
  *(DerivedStorage + 984) = 0;
  *(DerivedStorage + 1112) = 0;
  *(DerivedStorage + 1144) = 0u;
  v17 = MEMORY[0x277CC0898];
  v45 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 1116) = *MEMORY[0x277CC0898];
  v18 = *(v17 + 16);
  *(DerivedStorage + 1132) = v18;
  *(DerivedStorage + 64) = APSSettingsIsFeatureEnabled();
  *(DerivedStorage + 16) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 20) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 336) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 436) = APSSettingsIsFeatureEnabled();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 432) = CFPreferenceNumberWithDefault;
  if (*(DerivedStorage + 436) && CFPreferenceNumberWithDefault != 2 || *(DerivedStorage + 64))
  {
    v20 = APSDataPacerHoseCountCreateWithDefaultCapacityForCurrentDevice();
    if (v20)
    {
      value_low = v20;
      APAudioEngineBufferedCreate_cold_7();
      goto LABEL_99;
    }
  }

  *(DerivedStorage + 437) = APSSettingsIsFeatureEnabled();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_8();
  }

  *(DerivedStorage + 160) = v45;
  *(DerivedStorage + 176) = v18;
  *(DerivedStorage + 188) = v45;
  *(DerivedStorage + 204) = v18;
  *(DerivedStorage + 212) = v45;
  *(DerivedStorage + 228) = v18;
  bufferedAudioEngine_updateStartupConfiguration(cf, 0);
  *(DerivedStorage + 184) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_9();
  }

  *(DerivedStorage + 264) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_10();
  }

  FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 256) = MillisecondsToUpTicks();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_11(&cf);
  }

  *(DerivedStorage + 1800) = CFDictionaryGetInt64() != 0;
  *(DerivedStorage + 1800) = FigGetCFPreferenceBooleanWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_12();
  }

  *(DerivedStorage + 116) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_13();
  }

  APSIsAPMSpeaker();
  *(DerivedStorage + 152) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 156) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 120) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_14();
  }

  *(DerivedStorage + 124) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_15();
  }

  v21 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&time, v21, 1);
  *(DerivedStorage + 128) = time;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_16();
  }

  v22 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&time, v22, 1);
  *(DerivedStorage + 68) = time;
  v23 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&time, v23, 1);
  *(DerivedStorage + 92) = time;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (cf)
    {
      CMBaseObjectGetDerivedStorage();
    }

    time = *(DerivedStorage + 68);
    CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 92);
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  *(DerivedStorage + 704) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_17();
  }

  *(DerivedStorage + 24) = 300;
  if (APSSettingsIsFeatureEnabled())
  {
    v24 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(&time, v24, 1000);
    *(DerivedStorage + 296) = time;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      APAudioEngineBufferedCreate_cold_18();
    }
  }

  else
  {
    *(DerivedStorage + 292) = FigGetCFPreferenceNumberWithDefault();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      APAudioEngineBufferedCreate_cold_19();
    }
  }

  *(DerivedStorage + 320) = FigGetCFPreferenceNumberWithDefault() != 0;
  IsFeatureEnabled = APSSettingsIsFeatureEnabled();
  *(DerivedStorage + 321) = IsFeatureEnabled;
  if (IsFeatureEnabled)
  {
    v26 = APSSettingsGetIntWithDefault() != 0;
  }

  else
  {
    v26 = 0;
  }

  *(DerivedStorage + 322) = v26;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_20();
  }

  *(DerivedStorage + 880) = 0;
  *(DerivedStorage + 652) = 0;
  *(DerivedStorage + 1080) = v45;
  *(DerivedStorage + 1096) = v18;
  v27 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 1104) = Mutable;
  if (!Mutable)
  {
    APAudioEngineBufferedCreate_cold_32();
    goto LABEL_98;
  }

  v29 = CFArrayCreateMutable(v27, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 1248) = v29;
  if (!v29)
  {
    APAudioEngineBufferedCreate_cold_31();
    goto LABEL_98;
  }

  *(DerivedStorage + 1256) = v45;
  *(DerivedStorage + 1272) = v18;
  *(DerivedStorage + 1160) = 0;
  *(DerivedStorage + 1164) = v45;
  *(DerivedStorage + 1180) = v18;
  *(DerivedStorage + 580) = 0;
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v31 = CMBufferQueueCreate(a1, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 1192));
  if (v31)
  {
    value_low = v31;
    APAudioEngineBufferedCreate_cold_21();
    goto LABEL_99;
  }

  CMTimeMake(&time, 10000, 1000);
  CMTimeMake(&v46, 2000, 1000);
  v32 = FigSampleBufferConsumerCreateForBufferQueue();
  if (v32)
  {
    value_low = v32;
    APAudioEngineBufferedCreate_cold_22();
    goto LABEL_99;
  }

  *(DerivedStorage + 1224) = 0;
  v33 = CFDictionaryCreateMutable(v27, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 1216) = v33;
  if (!v33)
  {
    APAudioEngineBufferedCreate_cold_30();
    goto LABEL_98;
  }

  *(DerivedStorage + 1048) = 0;
  v34 = CFDictionaryCreateMutable(v27, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 1056) = v34;
  if (!v34)
  {
    APAudioEngineBufferedCreate_cold_29();
    goto LABEL_98;
  }

  v35 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&time, v35, 1);
  *(DerivedStorage + 268) = time;
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
    {
      APAudioEngineBufferedCreate_cold_23();
    }

    if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      APAudioEngineBufferedCreate_cold_24(&cf);
    }
  }

  v36 = APSOasisCPUFloorRaiserCreate();
  if (v36)
  {
    value_low = v36;
    APAudioEngineBufferedCreate_cold_25();
  }

  else
  {
    if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      APAudioEngineBufferedCreate_cold_26(&cf);
    }

    *(DerivedStorage + 328) = CFRetain(a2);
    v37 = MEMORY[0x277CEA280];
    *(DerivedStorage + 1536) = *MEMORY[0x277CEA280];
    *(DerivedStorage + 1552) = *(v37 + 16);
    *(DerivedStorage + 1560) = v45;
    *(DerivedStorage + 1576) = v18;
    *(DerivedStorage + 1584) = v45;
    *(DerivedStorage + 1600) = v18;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&time, HostTimeClock);
    *(DerivedStorage + 1608) = time;
    v39 = MEMORY[0x277CC08A0];
    v40 = *MEMORY[0x277CC08A0];
    *(DerivedStorage + 1656) = *MEMORY[0x277CC08A0];
    v41 = *(v39 + 16);
    *(DerivedStorage + 1672) = v41;
    *(DerivedStorage + 1632) = v40;
    *(DerivedStorage + 1648) = v41;
    *(DerivedStorage + 708) = v45;
    *(DerivedStorage + 724) = v18;
    CMNotificationCenterGetDefaultLocalCenter();
    v42 = FigNotificationCenterAddWeakListener();
    if (!v42)
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        APAudioEngineBufferedCreate_cold_28(&cf);
      }

      value_low = 0;
      *a4 = cf;
      return value_low;
    }

    value_low = v42;
    APAudioEngineBufferedCreate_cold_27();
  }

LABEL_99:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t APAudioEngineBufferedCreate_cold_8()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

double OUTLINED_FUNCTION_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, uint64_t a38)
{
  *(v38 - 240) = a37;
  *(v38 - 224) = a38;

  return CMTimeGetSeconds((v38 - 240));
}

uint64_t APAudioEngineBufferedCreate_cold_9()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_10()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_12()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_16()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_17()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_20()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered > 30 || gLogCategory_APAudioEngineBuffered == -1 && !_LogCategory_Initialize())
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_10:
    bufferedAudioEngine_CopyProperty_cold_4();
    return 4294951815;
  }

  bufferedAudioEngine_CopyProperty_cold_1();
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!a4)
  {
    bufferedAudioEngine_CopyProperty_cold_3();
    return 4294951815;
  }

  v6 = APSPriorityDispatcherSyncTask();
  if (v6)
  {
    bufferedAudioEngine_CopyProperty_cold_2();
  }

  return v6;
}

uint64_t bufferedAudioEngine_copyPropertyDispatch(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (!v2)
  {
    bufferedAudioEngine_copyPropertyDispatch_cold_12();
    return 4294951815;
  }

  if (!v4)
  {
    bufferedAudioEngine_copyPropertyDispatch_cold_11();
    return 4294951815;
  }

  v6 = DerivedStorage;
  if (CFEqual(v2, *MEMORY[0x277CD6240]))
  {
    if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_copyPropertyDispatch_cold_1();
    }

    v7 = *(v6 + 592);
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!CFEqual(v2, *MEMORY[0x277CD6250]))
  {
    if (CFEqual(v2, @"currentRTPTime"))
    {
      time = **&MEMORY[0x277CC0898];
      v16 = time;
      if (APSAudioFormatDescriptionListSupports44kHz() && APSAudioFormatDescriptionListSupports48kHz())
      {
        if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_copyPropertyDispatch_cold_2(v1);
        }
      }

      else
      {
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v19, &time);
        if (v19)
        {
          bufferedAudioEngine_copyPropertyDispatch_cold_3();
          return v19;
        }

        if (APSAudioFormatDescriptionListSupports44kHz())
        {
          v11 = 44100;
        }

        else
        {
          v11 = 48000;
        }

        v15 = time;
        CMTimeConvertScale(&v16, &v15, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      }

      v15 = v16;
      v12 = CMTimeCopyAsDictionary(&v15, v3);
      if (v12)
      {
        *v4 = v12;
      }

      else
      {
        bufferedAudioEngine_copyPropertyDispatch_cold_4(&v19);
      }

      return v19;
    }

    if (CFEqual(v2, *MEMORY[0x277CD6268]))
    {
      if (*(v6 + 1000))
      {
        FigEndpointStreamAudioFormatDescriptionArray = APSAudioFormatDescriptionListCreateFigEndpointStreamAudioFormatDescriptionArray();
        if (FigEndpointStreamAudioFormatDescriptionArray)
        {
          APSLogErrorAt();
          return FigEndpointStreamAudioFormatDescriptionArray;
        }

        value = v18;
        goto LABEL_35;
      }

      bufferedAudioEngine_copyPropertyDispatch_cold_5();
      return 4294951814;
    }

    if (CFEqual(v2, *MEMORY[0x277CD6260]))
    {
      time = *(v6 + 160);
      v7 = CMTimeCopyAsDictionary(&time, v3);
      if (v7)
      {
        goto LABEL_14;
      }

      bufferedAudioEngine_copyPropertyDispatch_cold_6();
    }

    else
    {
      if (CFEqual(v2, *MEMORY[0x277CD6270]))
      {
        time.value = 0;
        if (*(v6 + 1008))
        {
          FigEndpointStreamAudioFormatDescriptionArray = APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription();
          if (FigEndpointStreamAudioFormatDescriptionArray)
          {
            bufferedAudioEngine_copyPropertyDispatch_cold_7();
            return FigEndpointStreamAudioFormatDescriptionArray;
          }

          value = time.value;
LABEL_35:
          *v4 = value;
          return FigEndpointStreamAudioFormatDescriptionArray;
        }

        bufferedAudioEngine_copyPropertyDispatch_cold_8();
        return 4294951814;
      }

      if (CFEqual(v2, *MEMORY[0x277CD6248]))
      {
        v7 = *(v6 + 1200);
        if (!v7)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (CFEqual(v2, @"currentPlaybackState"))
      {
        v14 = CFNumberCreate(v3, kCFNumberSInt64Type, (v6 + 884));
        *v4 = v14;
        if (v14)
        {
          return 0;
        }

        bufferedAudioEngine_copyPropertyDispatch_cold_9();
      }

      else
      {
        if (!CFEqual(v2, @"NextRemoteMediaTimestamp"))
        {
          return 4294954509;
        }

        time = *(v6 + 756);
        v7 = CMTimeCopyAsDictionary(&time, v3);
        if (v7)
        {
          goto LABEL_14;
        }

        bufferedAudioEngine_copyPropertyDispatch_cold_10();
      }
    }

    return 4294951816;
  }

  v8 = MEMORY[0x277CBED28];
  if (!*(v6 + 528))
  {
    v8 = MEMORY[0x277CBED10];
  }

  v7 = *v8;
LABEL_13:
  v7 = CFRetain(v7);
LABEL_14:
  FigEndpointStreamAudioFormatDescriptionArray = 0;
  *v4 = v7;
  return FigEndpointStreamAudioFormatDescriptionArray;
}

uint64_t bufferedAudioEngine_SetProperty(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered > 30 || gLogCategory_APAudioEngineBuffered == -1 && !_LogCategory_Initialize())
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_9:
    bufferedAudioEngine_SetProperty_cold_3();
    return 4294951815;
  }

  bufferedAudioEngine_SetProperty_cold_1();
  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_5:
  v3 = APSPriorityDispatcherSyncTask();
  if (v3)
  {
    bufferedAudioEngine_SetProperty_cold_2();
  }

  return v3;
}

uint64_t bufferedAudioEngine_setPropertyDispatch(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  values = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(v1, *MEMORY[0x277CD6230]))
  {
    if (!v2 || (v4 = CFGetTypeID(v2), v4 == CFNumberGetTypeID()))
    {
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_setPropertyDispatch_cold_2();
      }

      v5 = *(DerivedStorage + 376);
      *(DerivedStorage + 376) = v2;
      if (v2)
      {
LABEL_8:
        CFRetain(v2);
      }

LABEL_9:
      if (!v5)
      {
        return 0;
      }

LABEL_10:
      CFRelease(v5);
      return 0;
    }

    bufferedAudioEngine_setPropertyDispatch_cold_1();
    return 4294951815;
  }

  if (CFEqual(v1, *MEMORY[0x277CD6228]))
  {
    if (!v2 || (v7 = CFGetTypeID(v2), v7 == CFDataGetTypeID()))
    {
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_setPropertyDispatch_cold_4();
      }

      v5 = *(DerivedStorage + 384);
      *(DerivedStorage + 384) = v2;
      if (v2)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    bufferedAudioEngine_setPropertyDispatch_cold_3();
    return 4294951815;
  }

  if (!CFEqual(v1, *MEMORY[0x277CD6258]))
  {
    if (!CFEqual(v1, *MEMORY[0x277CD6238]))
    {
      return 4294954509;
    }

    if (!v2 || (v10 = CFGetTypeID(v2), v10 == CFNumberGetTypeID()))
    {
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_setPropertyDispatch_cold_9();
      }

      CFNumberGetValue(v2, kCFNumberSInt32Type, (DerivedStorage + 580));
      return 0;
    }

    bufferedAudioEngine_setPropertyDispatch_cold_8();
    return 4294951815;
  }

  if (!v2 || (v8 = CFGetTypeID(v2), v8 != CFStringGetTypeID()))
  {
    bufferedAudioEngine_setPropertyDispatch_cold_7();
    return 4294951815;
  }

  if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setPropertyDispatch_cold_5();
  }

  *(DerivedStorage + 392) = 0;
  CFStringGetCString(v2, (DerivedStorage + 392), 16, 0x600u);
  if (*(DerivedStorage + 592) && APSGetFBOPropertyInt64())
  {
    __strlcat_chk();
  }

  __strlcat_chk();
  if (*(DerivedStorage + 1072))
  {
    return 0;
  }

  v9 = CFDictionaryCreate(*MEMORY[0x277CBECE8], MEMORY[0x277CEA398], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v9)
  {
    v5 = v9;
    APSWirelessCoexManagerCreateWithOptions();
    goto LABEL_10;
  }

  bufferedAudioEngine_setPropertyDispatch_cold_6();
  return 4294951816;
}

uint64_t bufferedAudioEngine_setPropertyDispatch_cold_4()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  return OUTLINED_FUNCTION_6();
}

CFTypeRef airPlayDescription_copyPasswordRequired(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (CFObjectGetPropertyInt64Sync())
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    v3 = MEMORY[0x277CBED28];
    if ((PropertyInt64Sync & 0x80) == 0)
    {
      v3 = MEMORY[0x277CBED10];
    }
  }

  result = CFRetain(*v3);
  *a2 = result;
  return result;
}

CFTypeRef airPlayDescription_copyOneTimePairingRequired(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  v4 = MEMORY[0x277CBED28];
  if ((PropertyInt64Sync & 0x200) == 0)
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t APEndpointDescriptionHasFeature(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 0;
  }

  return v4(a1, a2);
}

uint64_t airPlayDescription_HasFeature(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    airPlayDescription_HasFeature_cold_1();
  }

  FigSimpleMutexLock();
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1);
  FigSimpleMutexUnlock();
  return hasFeatureInternal;
}

uint64_t manager_postEndpointPresentChangedNotification()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_postEndpointPresentChangedNotification_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t manager_handleEndpointDescriptionChanged(uint64_t a1, void *a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = FigCFEqual();
  if (!a5 || !v9)
  {
    if (a5)
    {
      if (CFDictionaryGetInt64())
      {
        if (APSGetFBOPropertyInt64())
        {
          CFDictionaryGetValue(a5, @"ChangeSource");
          if (!FigCFEqual())
          {
            v33 = 0;
            cf = 0;
            CMBaseObject = FigEndpointGetCMBaseObject();
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v15 || (v16 = *MEMORY[0x277CBECE8], v15(CMBaseObject, @"EndpointDescription", *MEMORY[0x277CBECE8], &cf)))
            {
              manager_handleEndpointDescriptionChanged_cold_2();
            }

            else
            {
              v17 = FigEndpointGetCMBaseObject();
              v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (!v18 || v18(v17, @"TransportDevice", v16, &v33))
              {
                manager_handleEndpointDescriptionChanged_cold_1();
              }

              else
              {
                APSGetFBOPropertyInt64();
                if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                v27 = v33;
                v28 = cf;
                v29 = APSGetFBOPropertyInt64() != 0;
                manager_handleShadowEndpointEvent(a2, v27, v28, a4, v29, 1);
              }
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v33)
            {
              CFRelease(v33);
            }
          }
        }
      }
    }

    goto LABEL_59;
  }

  Int64 = CFDictionaryGetInt64();
  v11 = CFDictionaryGetInt64();
  v12 = CFDictionaryGetInt64();
  if (!*(DerivedStorage + 160) && Int64)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleEndpointDescriptionChanged_cold_3();
    }

    *(DerivedStorage + 160) = 1;
    CFRetain(a2);
    dispatch_async_f(*(DerivedStorage + 8), a2, manager_notifyAvailableEndpointsChanged);
  }

  else if (!(Int64 | v11))
  {
    goto LABEL_6;
  }

  v33 = 0;
  cf = 0;
  v19 = *(DerivedStorage + 296);
  if (*(DerivedStorage + 256) == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(DerivedStorage + 256);
  }

  manager_copyOrCreateClusterForEndpoint(a2, v19, &cf);
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v20 && Int64)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleEndpointDescriptionChanged_cold_4();
    }

    v21 = a2;
    v22 = v20;
    v23 = 1;
  }

  else
  {
    v24 = manager_determineLocalClusterAction(a2, cf);
    if (v24 != 2)
    {
      if (v24 == 1)
      {
        manager_activateLocalCluster(a2, cf);
      }

      goto LABEL_47;
    }

    v22 = cf;
    v21 = a2;
    v23 = 0;
  }

  manager_deactivateLocalCluster(v21, v22, v23);
LABEL_47:
  v25 = FigEndpointGetCMBaseObject();
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v26)
  {
    v26(v25, *MEMORY[0x277CC1490], *MEMORY[0x277CBECE8], &v33);
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v31 = *(DerivedStorage + 128);
    v32 = v33;
    *(DerivedStorage + 128) = v33;
    if (v32)
    {
      CFRetain(v32);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_6:
  if (!*(DerivedStorage + 161) || !v12)
  {
LABEL_59:
    v13 = APSGetFBOPropertyInt64() != 0;
    goto LABEL_60;
  }

  *(DerivedStorage + 161) = 0;
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  manager_updateEndpointPSGInfoIfNeeded();
  v13 = 1;
LABEL_60:
  manager_notifyAvailableEndpointsChangedWithThrottleIfNeeded(a2, v13);
  return FigSimpleMutexUnlock();
}

uint64_t airPlayDescription_copyMXDescriptor(uint64_t a1, __CFDictionary **a2)
{
  CMBaseObjectGetDerivedStorage();
  v41 = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v7 = airPlayDescription_copyPropertyInternal(a1, @"MACAddress", 0, &cf);
    if (v7 == -12784 || v7 == 0)
    {
      FigCFDictionarySetValue();
    }

    else
    {
      APSLogErrorAt();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v9 = airPlayDescription_copyPropertyInternal(a1, @"Model", 0, &cf);
    if (v9 == -12784 || v9 == 0)
    {
      FigCFDictionarySetValue();
    }

    else
    {
      APSLogErrorAt();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v11 = airPlayDescription_copyPropertyInternal(a1, @"Manufacturer", 0, &cf);
    if (v11 != -12784 && v11)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v12 = airPlayDescription_copyPropertyInternal(a1, @"FirmwareVersion", 0, &cf);
    if (v12 != -12784 && v12)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v13 = airPlayDescription_copyPropertyInternal(a1, @"SerialNumber", 0, &cf);
    if (v13 != -12784 && v13)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v14 = airPlayDescription_copyPropertyInternal(a1, @"TightSyncUUID", 0, &cf);
    if (v14 != -12784 && v14)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v15 = airPlayDescription_copyPropertyInternal(a1, @"TightSyncIsGroupLeader", 0, &cf);
    if (v15 != -12784 && v15)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v16 = airPlayDescription_copyPropertyInternal(a1, @"ClusterUUID", 0, &cf);
    if (v16 != -12784 && v16)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v17 = airPlayDescription_copyPropertyInternal(a1, @"ClusterUUID", 0, &cf);
    if (v17 != -12784 && v17)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v18 = airPlayDescription_copyPropertyInternal(a1, @"IsClusterLeader", 0, &cf);
    if (v18 != -12784 && v18)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v19 = airPlayDescription_copyPropertyInternal(a1, @"ClusterSize", 0, &cf);
    if (v19 != -12784 && v19)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v20 = airPlayDescription_copyPropertyInternal(a1, @"IsAppleMusicSubscriber", 0, &cf);
    if (v20 != -12784 && v20)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v21 = airPlayDescription_copyPropertyInternal(a1, @"CloudLibraryIsOn", 0, &cf);
    if (v21 != -12784 && v21)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v22 = airPlayDescription_copyPropertyInternal(a1, @"DeviceSupportsRelay", 0, &cf);
    if (v22 != -12784 && v22)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v23 = airPlayDescription_copyPropertyInternal(a1, @"SupportsOverlayUI", 0, &cf);
    if (v23 != -12784 && v23)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v24 = airPlayDescription_copyPropertyInternal(a1, @"IsMediaRemoteControllable", 0, &cf);
    if (v24 != -12784 && v24)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v25 = airPlayDescription_copyPropertyInternal(a1, @"GroupContainsDiscoverableLeader", 0, &cf);
    if (v25 != -12784 && v25)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v26 = airPlayDescription_copyPropertyInternal(a1, @"IsGroupLeader", 0, &cf);
    if (v26 != -12784 && v26)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v27 = airPlayDescription_copyPropertyInternal(a1, @"SilentPrimary", 0, &cf);
    if (v27 != -12784 && v27)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v28 = airPlayDescription_copyPropertyInternal(a1, @"SupportsExtendedWHA", 0, &cf);
    if (v28 != -12784 && v28)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v29 = airPlayDescription_copyPropertyInternal(a1, @"AdvertisesHAPSupport", 0, &cf);
    if (v29 != -12784 && v29)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v30 = airPlayDescription_copyPropertyInternal(a1, @"GroupID", 0, &cf);
    if (v30 != -12784 && v30)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v31 = airPlayDescription_copyPropertyInternal(a1, @"SupportsAirPlayFromCloud", 0, &cf);
    if (v31 != -12784 && v31)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v32 = airPlayDescription_copyPropertyInternal(a1, @"VodkaVersion", 0, &cf);
    if (v32 != -12784 && v32)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v33 = airPlayDescription_copyPropertyInternal(a1, @"AirPlaySecurity", 0, &cf);
    if (v33 != -12784 && v33)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v34 = airPlayDescription_copyPropertyInternal(a1, @"IsHKAccessControlEnabled", 0, &cf);
    if (v34 != -12784 && v34)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v35 = airPlayDescription_copyPropertyInternal(a1, @"HKAccessControlLevel", 0, &cf);
    if (v35 != -12784 && v35)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v36 = airPlayDescription_copyPropertyInternal(a1, @"AirPlayEndpointProperties", 0, &cf);
    if (v36 != -12784 && v36)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v37 = airPlayDescription_copyPropertyInternal(a1, @"IsLowFidelitySpeaker", 0, &cf);
    if (v37 != -12784 && v37)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    airPlayDescription_copyPropertyInternal(a1, @"ClusterType", v4, &v41);
    result = v41;
    if (v41)
    {
      FigCFNumberGetUInt64();
      v39 = *MEMORY[0x277D26EE8];
      v40 = APSClusterTypeToFigEndpointDescriptorClusterType();
      CFDictionarySetValue(v6, v39, v40);
      result = v41;
      *a2 = v6;
      if (result)
      {
        CFRelease(result);
        return 0;
      }
    }

    else
    {
      *a2 = v6;
    }
  }

  else
  {
    airPlayDescription_copyMXDescriptor_cold_1();
    return 4294895546;
  }

  return result;
}

CFTypeRef airPlayDescription_copyDeviceSupportsRelay(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  canBeRemoteControlled = airplayDescription_canBeRemoteControlled(a1);
  isSourceVersionAtLeast = airPlayDescription_isSourceVersionAtLeast(a1, 0x37D8E0u);
  v8 = !canBeRemoteControlled || !isSourceVersionAtLeast || (PropertyInt64Sync & 0x800) == 0;
  v9 = MEMORY[0x277CBED10];
  if (!v8)
  {
    v9 = MEMORY[0x277CBED28];
  }

  result = CFRetain(*v9);
  *a2 = result;
  return result;
}

CFTypeRef airplayDescription_copySupportsAirPlayFromCloud(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_hasFeatureInternal(a1) && (CFObjectGetPropertyInt64Sync() & 0x40) != 0)
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

void airPlayDescription_copyAirPlaySecurity(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  v7 = 0;
  BOOLean = 0;
  v6 = 0;
  airPlayDescription_copyPasswordRequired(a1, &BOOLean);
  airplayDescription_copyStatusFlagsContainsFlag(a1, 8, &v7);
  airPlayDescription_copyOneTimePairingRequired(a1, &v6);
  v4 = BOOLean;
  if (!CFBooleanGetValue(BOOLean) && !CFBooleanGetValue(v7))
  {
    CFBooleanGetValue(v6);
  }

  *a2 = CFNumberCreateInt64();
  if (v4)
  {
    CFRelease(v4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v5 = v6;
  if (v6)
  {

    CFRelease(v5);
  }
}

CFTypeRef airPlayDescription_copyIsHKAccessControlEnabled(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1);
  v6 = MEMORY[0x277CBED28];
  if (((hasFeatureInternal != 0) & (PropertyInt64Sync >> 10)) == 0)
  {
    v6 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v6);
  *a2 = result;
  return result;
}

uint64_t airPlayDescription_copyHKAccessControlLevel(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_getAccessControlType() == 1)
  {
    CFObjectGetPropertyInt64Sync();
  }

  if (APSAccessControlIsValidConfig())
  {
    v3 = 0;
    *a2 = CFNumberCreateInt64();
  }

  else
  {
    v3 = 4294895542;
    if (gLogCategory_APEndpointDescriptionAirPlay <= 90 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return v3;
}

void airPlayDescription_copyAirPlayEndpointProperties(uint64_t a1, int a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = kAPEndpointDescriptionProperty_TXTRecordAirPlayClusterCompatible;
    if (!a2)
    {
      v10 = kAPEndpointDescriptionProperty_TXTRecordAirPlay;
    }

    airPlayDescription_copyPropertyInternal(a1, *v10, v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!a2)
    {
      airPlayDescription_copyPropertyInternal(a1, @"BluetoothIdentifier", v7, &cf);
      FigCFDictionarySetValue();
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1);
      v14 = *MEMORY[0x277CBED28];
      v15 = *MEMORY[0x277CBED10];
      if (hasFeatureInternal)
      {
        v16 = *MEMORY[0x277CBED28];
      }

      else
      {
        v16 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v9, @"SupportsClusterEngageOnActivation", v16);
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        v17 = v14;
      }

      else
      {
        v17 = v15;
      }

      CFDictionarySetValue(v9, @"SupportsLocalStereoPairClusterPersistentConnection", v17);
      cf = APAdvertiserInfoCopyProperty();
      FigCFDictionarySetValue();
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (airPlayDescription_isSourceVersionAtLeast(a1, 0x6C6FC4u))
      {
        airplayDescription_copyStatusFlagsContainsFlag(a1, 0x100000, &cf);
        if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
        {
          airPlayDescription_copyAirPlayEndpointProperties_cold_1();
        }

        FigCFDictionarySetValue();
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }
    }

    airPlayDescription_copyPropertyInternal(a1, @"GroupPublicName", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (*(DerivedStorage + 8))
    {
      if (a2)
      {
        v11 = *MEMORY[0x277CBED28];
        v12 = *MEMORY[0x277CBED10];
      }

      else
      {
        cf = APTransportDeviceCopyCUDNSNames();
        FigCFDictionarySetValue();
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        TransportsRequiringBroker = APTransportDeviceGetTransportsRequiringBroker();
        v11 = *MEMORY[0x277CBED28];
        v12 = *MEMORY[0x277CBED10];
        if (TransportsRequiringBroker)
        {
          v19 = *MEMORY[0x277CBED28];
        }

        else
        {
          v19 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v9, @"IsDiscoveredWithBroker", v19);
      }

      if (APTransportDeviceIsPresentOnInfra())
      {
        v20 = v11;
      }

      else
      {
        v20 = v12;
      }

      CFDictionarySetValue(v9, @"IsDiscoveredOverInfra", v20);
    }

    airPlayDescription_copyPropertyInternal(a1, @"ParentGroupID", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"ParentGroupContainsDiscoverableLeader", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"ReceiverSessionIsActive", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"SupportsHangdogRemoteControl", v7, &cf);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"SupportsRapportRemoteControlTransport", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"SupportsMultiplayer", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"SupportsSharePlayHandoff", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!a2)
    {
      if (APSIsProximitySenderEnabled())
      {
        if (airPlayDescription_hasFeatureInternal(a1))
        {
          CFDictionarySetValue(v9, @"SupportsNIRanging", *MEMORY[0x277CBED28]);
          if (*(DerivedStorage + 8))
          {
            cf = APTransportDeviceCopyProximityData();
            FigCFDictionarySetValue();
            if (cf)
            {
              CFRelease(cf);
            }
          }
        }
      }
    }

    *a3 = v9;
  }

  else
  {
    airPlayDescription_copyAirPlayEndpointProperties_cold_2();
  }
}

void endpoint_setPropertyOnMXDescriptor(const void *a1, const void *a2)
{
  v6 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpoint_copyStaticProperty(a1, a2, &cf, &v6) || (v4 = *MEMORY[0x277CBECE8], endpoint_copyPropertyFromEndpointDescription(a1, a2, *MEMORY[0x277CBECE8], &cf, &v6)))
  {
    if (!v6)
    {
LABEL_4:
      FigCFDictionarySetValue();
      goto LABEL_5;
    }
  }

  else
  {
    v6 = endpoint_copyPropertyInternal(a1, a2, v4, &cf);
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  endpoint_setPropertyOnMXDescriptor_cold_1();
LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t endpoint_copyIsGroupable(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    v5 = 0;
    *a2 = CFRetain(v4);
  }

  else
  {
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v5 = v7(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
      v8 = cf;
      if (!v5)
      {
        IsModernPresentOnInfra = APTransportDeviceIsModernPresentOnInfra();
        Int64 = APSSettingsGetInt64();
        if (Int64 && gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          endpoint_copyIsGroupable_cold_1();
        }

        if (!APSGetFBOPropertyInt64() || !APSGetFBOPropertyInt64() || ((v11 = APSGetFBOPropertyInt64(), IsModernPresentOnInfra) ? (v12 = v11 == 0) : (v12 = 0), v12 ? (v13 = 0) : (v13 = 1), Int64 || v13))
        {
          v14 = MEMORY[0x277CBED10];
        }

        else
        {
          v14 = MEMORY[0x277CBED28];
        }

        *a2 = CFRetain(*v14);
        v8 = cf;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return v5;
}

CFTypeRef airplayDescription_copySupportsPTP(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_isSourceVersionAtLeast(a1, 0x36193Eu) && airPlayDescription_hasFeatureInternal(a1))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t endpoint_copyPropertyFromEndpointDescription_cold_5(uint64_t a1)
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

uint64_t OUTLINED_FUNCTION_13_0()
{

  return _LogCategory_Initialize();
}

void OUTLINED_FUNCTION_16_0(int a1@<W8>)
{
  *(v2 - 116) = a1;

  carAudioStream_teardownTransportStreams(v1, 0);
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return CUObfuscatedPtr();
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return FigNotificationCenterAddWeakListener();
}

void OUTLINED_FUNCTION_16_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, int a36)
{
  STACK[0x330] = a35;
  *(v36 + 188) = *(v37 - 168);
  v38 = *(v37 - 160);
  LODWORD(STACK[0x338]) = a36;
  LODWORD(STACK[0x344]) = v38;
}

void __manager_updateEndpointClusterMembershipIfNeeded_block_invoke(uint64_t a1, void *value)
{
  if (*(a1 + 32) == value && *(a1 + 48))
  {
    CFArrayInsertValueAtIndex(*(a1 + 40), 0, value);
  }

  else
  {
    CFArrayAppendValue(*(a1 + 40), value);
  }
}

uint64_t APEndpointClusterCreate(const __CFAllocator *a1, const void *a2, const void *a3, int a4, const void *a5, uint64_t a6, const void *a7, uint64_t a8, CFTypeRef *a9)
{
  v38 = *MEMORY[0x277D85DE8];
  cf = 0;
  v35 = 0;
  if (!a4)
  {
    APEndpointClusterCreate_cold_14();
    goto LABEL_40;
  }

  if (!a7)
  {
    APEndpointClusterCreate_cold_13();
    goto LABEL_40;
  }

  FigEndpointExtendedGetClassID();
  v16 = CMDerivedObjectCreate();
  if (v16)
  {
    v29 = v16;
    APEndpointClusterCreate_cold_1();
    goto LABEL_51;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a4;
  v18 = FigSimpleMutexCreate();
  *(DerivedStorage + 280) = v18;
  if (!v18)
  {
    APEndpointClusterCreate_cold_12();
LABEL_50:
    v29 = 4294950575;
    goto LABEL_51;
  }

  *(DerivedStorage + 16) = CFRetain(a3);
  *(DerivedStorage + 24) = a6;
  *(DerivedStorage + 32) = CFRetain(a7);
  TextToHardwareAddress();
  *(DerivedStorage + 96) = CFDataCreate(a1, bytes, 6);
  v19 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 632) = Mutable;
  if (!Mutable)
  {
    APEndpointClusterCreate_cold_11();
    goto LABEL_50;
  }

  *(DerivedStorage + 440) = 1;
  if (a5)
  {
    v21 = CFRetain(a5);
  }

  else
  {
    v21 = 0;
  }

  *(DerivedStorage + 288) = v21;
  *(DerivedStorage + 296) = CFRetain(&stru_283570B70);
  v22 = CFArrayCreateMutable(v19, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 336) = v22;
  if (!v22)
  {
    APEndpointClusterCreate_cold_10();
    goto LABEL_50;
  }

  v23 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 344) = v23;
  if (!v23)
  {
    APEndpointClusterCreate_cold_9();
    goto LABEL_50;
  }

  v24 = CFArrayCreateMutable(v19, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 624) = v24;
  if (!v24)
  {
    APEndpointClusterCreate_cold_8();
    goto LABEL_50;
  }

  *(DerivedStorage + 112) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 168) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 120) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 128) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 136) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 144) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 152) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 160) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 176) = 0x3C000001E0;
  if (IsAppleInternalBuild())
  {
    *(DerivedStorage + 176) = APSSettingsGetIntWithOverrideAndDefault();
    *(DerivedStorage + 180) = APSSettingsGetIntWithOverrideAndDefault();
  }

  if (FigCFDictionaryGetIntIfPresent())
  {
    *(DerivedStorage + 184) = v35;
    if (a2 && endpointCluster_getSubEndpointDeviceClass(cf, a2) != *(DerivedStorage + 184))
    {
      APEndpointClusterCreate_cold_2();
LABEL_40:
      v29 = 4294950576;
      goto LABEL_51;
    }
  }

  else
  {
    *(DerivedStorage + 184) = GestaltGetDeviceClass();
  }

  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    Copy = CFDictionaryCreateCopy(v19, Value);
    *(DerivedStorage + 104) = Copy;
    if (!Copy)
    {
      APEndpointClusterCreate_cold_3();
      goto LABEL_50;
    }
  }

  SNPrintF();
  v27 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 40) = v27;
  if (!v27)
  {
    APEndpointClusterCreate_cold_7();
    goto LABEL_50;
  }

  if (a2)
  {
    v28 = CFRetain(a2);
    *(DerivedStorage + 8) = v28;
    CFArrayAppendValue(*(DerivedStorage + 336), v28);
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      APEndpointClusterCreate_cold_4();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    FigSimpleMutexLock();
    v29 = endpointCluster_updateFromSubEndpoint(cf, *(DerivedStorage + 8), 0, 1, 1, 0);
    FigSimpleMutexUnlock();
    if (v29)
    {
      APEndpointClusterCreate_cold_5();
LABEL_51:
      if (cf)
      {
        CFRelease(cf);
      }

      return v29;
    }
  }

  v30 = (CMBaseObjectGetDerivedStorage() + 192);
  if (*v30)
  {
    CFRelease(*v30);
    *v30 = 0;
  }

  if (APSEventRecorderCreate())
  {
    APEndpointClusterCreate_cold_6();
  }

  else
  {
    APSEventRecorderAddSignPostForEvent();
  }

  v31 = cf;
  v32 = CMBaseObjectGetDerivedStorage();
  *(v32 + 248) = 0u;
  v32 += 248;
  *(v32 - 40) = 0u;
  *(v32 - 24) = 0u;
  *(v32 + 16) = 0u;
  *(v32 - 8) = 0;
  *v32 = v31;
  *(v32 - 40) = v31;
  *(v32 - 32) = endpointCluster_handleAuthRequiredInternal;
  *(v32 - 24) = endpointCluster_handleFailedInternal;
  *(v32 + 16) = endpointCluster_handleDidReceiveDataFromCommChannelInternal;
  *(v32 + 24) = endpointCluster_handleDidCloseCommChannelInternal;
  *(DerivedStorage + 200) = CFAbsoluteTimeGetCurrent();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    APSClusterTypeToDescriptionString();
    LogPrintF();
  }

  v29 = 0;
  *a9 = cf;
  return v29;
}

uint64_t airPlayDescription_copyTightSyncClusterInfo(uint64_t a1, CFMutableDictionaryRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  theString = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = APAdvertiserInfoCopyProperty();
    cf = v7;
    FigCFDictionarySetValue();
    if (v7)
    {
      CFRelease(v7);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"GroupPublicName", v4, &cf);
    if (!cf)
    {
      cf = CFRetain(@"Unknown Pair");
    }

    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v8 = APAdvertiserInfoCopyProperty();
    cf = v8;
    if (v8 && (v9 = CFGetTypeID(v8), v9 == CFStringGetTypeID()))
    {
      CFGetInt64Ranged();
      APSGetClusterModelForTightSyncGroupModel();
      v10 = 0;
    }

    else
    {
      airPlayDescription_copyModel(a1, &theString);
      v10 = theString;
      if (theString && !CFStringHasPrefix(theString, @"AudioAccessory5"))
      {
        CFStringHasPrefix(v10, @"AudioAccessory6");
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    APSGetClusterModelNameForClusterTypeAndModel();
    FigCFDictionarySetValue();
    *a2 = v6;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }

  else
  {
    airPlayDescription_copyTightSyncClusterInfo_cold_1();
    return 4294950575;
  }
}

uint64_t endpointCluster_shouldActivateSubEndpoint(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if ((*(DerivedStorage + 376) - 4) <= 0xFFFFFFFD)
  {
    if (gLogCategory_APEndpointCluster > 30)
    {
      return 0;
    }

    if (gLogCategory_APEndpointCluster == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_28;
    }

LABEL_27:
    LogPrintF();
LABEL_28:
    v9 = 0;
    goto LABEL_11;
  }

  if (*(DerivedStorage + 392))
  {
    if (gLogCategory_APEndpointCluster > 30)
    {
      return 0;
    }

    if (gLogCategory_APEndpointCluster == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, *MEMORY[0x277CC14E8], *MEMORY[0x277CBECE8], &cf);
  }

  v7 = FigCFArrayContainsValue();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    if (gLogCategory_APEndpointCluster > 30)
    {
      return 0;
    }

    if (gLogCategory_APEndpointCluster == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v8 = *(v4 + 432);
  if (v8 && CFSetContainsValue(v8, a2))
  {
    if (gLogCategory_APEndpointCluster <= 50)
    {
      if (gLogCategory_APEndpointCluster == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    return 0;
  }

  v9 = endpointCluster_wantSubEndpointActivation();
LABEL_11:
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v9;
}

void endpointCluster_failDelayManageSubEndpoint(const void *a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 456);
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v8 = *(DerivedStorage + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __endpointCluster_failDelayManageSubEndpoint_block_invoke;
  block[3] = &__block_descriptor_tmp_314;
  v10 = a3;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = v7;
  block[7] = a2;
  dispatch_async(v8, block);
}

void endpointCluster_updateHealthState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 420);
  CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  if (*(v4 + 376) && !*(v4 + 392) && *(v4 + 441))
  {
    if (endpointCluster_isComplete() && (v3 == 2 || endpointCluster_desiredSubEndpointsActivated(a1)))
    {
      v6 = 2;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      v6 = 1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6 != *(DerivedStorage + 420))
  {
    CFRetain(a1);
    if (v5)
    {
      endpointCluster_sendActivationMetrics(a1, 252);
    }

    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_updateHealthState_cold_1();
    }

    *(DerivedStorage + 420) = v6;
    APSDispatchAsyncFHelper();
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v8 = *(v7 + 336);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
  }

  else
  {
    Count = 0;
  }

  alloc = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v19 = CFStringCreateF();
    if (Count >= 1)
    {
      v11 = 0;
      v20 = *MEMORY[0x277CC14F0];
      v12 = *MEMORY[0x277CC19F0];
      do
      {
        CFArrayGetValueAtIndex(*(v7 + 336), v11);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v14 || v14(CMBaseObject, v20, alloc, &v22))
        {
          if (gLogCategory_APEndpointCluster <= 60 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (v12)
          {
            v15 = CFRetain(v12);
          }

          else
          {
            v15 = 0;
          }

          v22 = v15;
        }

        if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual())
        {
          FigCFEqual();
        }

        v23 = 0;
        APSGetFBOPropertyInt64();
        if (v23)
        {
          endpointCluster_updateHealthState_cold_3();
        }

        v16 = CFStringCreateF();
        CFArrayAppendValue(Mutable, v16);
        if (v22)
        {
          CFRelease(v22);
          v22 = 0;
        }

        if (v16)
        {
          CFRelease(v16);
        }

        ++v11;
      }

      while (Count != v11);
    }

    v17 = CFStringCreateByCombiningStrings(alloc, Mutable, @", ");
    if (gLogCategory_APEndpointCluster > 50)
    {
      v18 = v19;
    }

    else
    {
      v18 = v19;
      if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
      {
        endpointCluster_updateHealthState_cold_5();
      }
    }
  }

  else
  {
    endpointCluster_updateHealthState_cold_6();
    v18 = 0;
    v17 = 0;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void __endpointCluster_failDelayManageSubEndpoint_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == 1)
  {
    v3 = *(*(a1 + 32) + 168);
    if (v3)
    {
      OUTLINED_FUNCTION_10_9();
      if (v6 ^ v7 | v5 && (v4 != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      usleep(1000 * v3);
      v2 = *(a1 + 64);
    }

    else
    {
      v2 = 1;
    }
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_10_9();
  if (v6 ^ v7 | v5 && (v11 != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if ((v2 - 2) < 2)
  {
    if (!endpointCluster_isComplete())
    {
      goto LABEL_38;
    }

    goto LABEL_21;
  }

  if (v2 != 1)
  {
    if (v2)
    {
      goto LABEL_38;
    }

    v12 = *(DerivedStorage + 72);
    if (v12)
    {
      dispatch_source_cancel(*(DerivedStorage + 72));
      dispatch_release(v12);
      *(DerivedStorage + 72) = 0;
    }

LABEL_21:
    if (*(DerivedStorage + 424))
    {
      OUTLINED_FUNCTION_10_9();
      if (v6 ^ v7 | v5 && (v13 != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      *(DerivedStorage + 424) = 0;
    }

    goto LABEL_38;
  }

  if (*(DerivedStorage + 376))
  {
    if (*(DerivedStorage + 456) == v8)
    {
      v14 = CMBaseObjectGetDerivedStorage();
      if (!*(v14 + 72))
      {
        v15 = v14;
        v16 = *(v14 + 120);
        OUTLINED_FUNCTION_10_9();
        if (v6 ^ v7 | v5 && (v17 != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        v18 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
        if (v18)
        {
          v19 = v18;
          v20 = CFRetain(v9);
          v21 = *(v15 + 456);
          *v19 = v20;
          v19[1] = v21;
          v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v15 + 40));
          *(v15 + 72) = v22;
          dispatch_set_context(v22, v19);
          dispatch_source_set_event_handler_f(*(v15 + 72), endpointCluster_failureDelayTimerFired);
          dispatch_source_set_cancel_handler_f(*(v15 + 72), endpointCluster_failureDelayTimerCancelled);
          v23 = *(v15 + 72);
          v24 = dispatch_time(0, 1000000000 * v16);
          dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          dispatch_resume(*(v15 + 72));
        }

        else
        {
          APSLogErrorAt();
        }
      }
    }
  }

LABEL_38:
  FigSimpleMutexUnlock();
  v25 = *(a1 + 40);
  if (v25)
  {
    CFRelease(v25);
  }

  if (*(a1 + 56))
  {
    OUTLINED_FUNCTION_12();

    CFRelease(v26);
  }

  else
  {
    OUTLINED_FUNCTION_12();
  }
}

uint64_t endpointCluster_updateHealthState_cold_5()
{
  OUTLINED_FUNCTION_3_7();
  CFStringGetLength(v0);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t endpointCluster_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_SetDelegateRouting_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(DerivedStorage + 592);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 592) = 0;
    }

    v5 = (DerivedStorage + 520);
    if (a2)
    {
      v6 = *a2;
      v7 = *(a2 + 16);
      *(DerivedStorage + 552) = *(a2 + 32);
      *v5 = v6;
      *(DerivedStorage + 536) = v7;
      a2 = 0;
      *(DerivedStorage + 592) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 552) = 0;
      *v5 = 0u;
      *(DerivedStorage + 536) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t endpointCluster_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_SetDelegateRemoteControl_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(DerivedStorage + 600);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 600) = 0;
    }

    if (a2)
    {
      v5 = *(a2 + 16);
      *(DerivedStorage + 560) = *a2;
      *(DerivedStorage + 576) = v5;
      a2 = 0;
      *(DerivedStorage + 600) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 560) = 0u;
      *(DerivedStorage + 576) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t endpointCluster_copyClusterHierarchyAsArray(uint64_t a1, CFTypeRef *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 360);
  if (v4)
  {
    *a2 = CFRetain(v4);
  }

  else
  {
    v5 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
      if (v8)
      {
        v9 = v8;
        CFDictionaryApplyBlock();
        CFDictionaryApplyBlock();
        if (gLogCategory_APEndpointCluster <= 30)
        {
          endpointCluster_copyClusterHierarchyAsArray_cold_1(gLogCategory_APEndpointCluster);
        }

        if (!*(v14 + 6))
        {
          v10 = CFRetain(v9);
          *(DerivedStorage + 360) = v10;
          if (v10)
          {
            v10 = CFRetain(v10);
          }

          *a2 = v10;
        }

        CFRelease(v9);
      }

      else
      {
        endpointCluster_copyClusterHierarchyAsArray_cold_2();
      }

      CFRelease(v7);
    }

    else
    {
      endpointCluster_copyClusterHierarchyAsArray_cold_3();
    }
  }

  v11 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v11;
}

void __endpointCluster_copyClusterHierarchyAsArray_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
  v7 = *MEMORY[0x277CC1550];
  Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC1550]);
  CFDictionaryGetValue(a3, @"TightSyncName");
  CFDictionaryGetValue(a3, @"TightSyncModel");
  if (!MutableCopy)
  {
    __endpointCluster_copyClusterHierarchyAsArray_block_invoke_cold_4();
    return;
  }

  CFDictionaryRemoveValue(MutableCopy, v7);
  CFDictionaryRemoveValue(MutableCopy, @"TightSyncName");
  CFDictionaryRemoveValue(MutableCopy, @"TightSyncModel");
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CC0AB0]);
  if (Value)
  {
    v9 = CFDictionaryGetValue(*(a1 + 40), Value);
    if (v9)
    {
      v10 = v9;
      CFRetain(v9);
      v11 = CFDictionaryGetValue(v10, *MEMORY[0x277CC0AE8]);
      v12 = v11;
      if (!v11)
      {
        __endpointCluster_copyClusterHierarchyAsArray_block_invoke_cold_1(a1);
        goto LABEL_22;
      }

      CFRetain(v11);
      if (!CFDictionaryContainsKey(v10, *MEMORY[0x277CC0AB8]))
      {
        FigCFDictionarySetValue();
      }

      if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

LABEL_21:
      CFArrayAppendValue(v12, MutableCopy);
LABEL_22:
      CFRelease(MutableCopy);
      CFRelease(v10);
      if (!v12)
      {
        return;
      }

      v13 = v12;
      goto LABEL_24;
    }

    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      v12 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
      if (!v12)
      {
        __endpointCluster_copyClusterHierarchyAsArray_block_invoke_cold_2();
        goto LABEL_22;
      }

      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      FigCFDictionarySetValue();
      goto LABEL_21;
    }

    __endpointCluster_copyClusterHierarchyAsArray_block_invoke_cold_3();
  }

  else
  {
    CFArrayAppendValue(*(a1 + 56), MutableCopy);
  }

  v13 = MutableCopy;
LABEL_24:

  CFRelease(v13);
}

void __endpointCluster_copyClusterHierarchyAsArray_block_invoke_2(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  if (!CFDictionaryContainsKey(theDict, *MEMORY[0x277CC0AB8]))
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CC0AE8]);
    endpointCluster_getClusterModelBasedOnAnyMemberModels(1, Value);
    FigCFDictionarySetValue();
  }

  v5 = *(a1 + 32);

  CFArrayAppendValue(v5, theDict);
}

uint64_t endpointCluster_copyClusterCompositionAsArray(uint64_t a1, CFTypeRef *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 352);
  if (v4)
  {
    *a2 = CFRetain(v4);
  }

  else
  {
    v5 = *MEMORY[0x277CBECE8];
    Count = CFDictionaryGetCount(*(DerivedStorage + 344));
    Mutable = CFArrayCreateMutable(v5, Count, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v8 = Mutable;
      CFDictionaryApplyBlock();
      if (!*(v13 + 6))
      {
        v9 = CFRetain(v8);
        *(DerivedStorage + 352) = v9;
        if (gLogCategory_APEndpointCluster <= 30)
        {
          if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
          {
            LogPrintF();
          }

          v9 = *(DerivedStorage + 352);
        }

        if (v9)
        {
          v9 = CFRetain(v9);
        }

        *a2 = v9;
      }

      CFRelease(v8);
    }

    else
    {
      endpointCluster_copyClusterCompositionAsArray_cold_1();
    }
  }

  v10 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v10;
}

void __endpointCluster_copyClusterCompositionAsArray_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
  if (MutableCopy)
  {
    v5 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CC1550]);
    CFDictionaryRemoveValue(v5, @"TightSyncName");
    CFDictionaryRemoveValue(v5, @"TightSyncModel");
    CFArrayAppendValue(*(a1 + 40), v5);

    CFRelease(v5);
  }

  else
  {
    __endpointCluster_copyClusterCompositionAsArray_block_invoke_cold_1();
  }
}

const void *epp_getClusterLeaderOrAny()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage != 2)
  {
    return 0;
  }

  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 80);
  v10 = OUTLINED_FUNCTION_12_1(DerivedStorage, v1, v2, v3, v4, v5, v6, v7, 0, 0, 0, 0, 0, 0, 0, 0, v31, v33);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = *v25;
LABEL_4:
  v13 = 0;
  while (1)
  {
    if (*v25 != v12)
    {
      objc_enumerationMutation(v9);
    }

    Value = CFDictionaryGetValue(*(v8 + 80), *(v24 + 8 * v13));
    if (APSGetFBOPropertyInt64())
    {
      return Value;
    }

    if (v11 == ++v13)
    {
      v11 = OUTLINED_FUNCTION_12_1(0, v15, v16, v17, v18, v19, v20, v21, v23, v24, v25, v26, v27, v28, v29, v30, v32, v34);
      if (v11)
      {
        goto LABEL_4;
      }

      return Value;
    }
  }
}

uint64_t epp_copySubEndpointsArray(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    epp_copySubEndpointsArray_cold_4();
    return 4294950576;
  }

  if (*DerivedStorage != 2)
  {
    epp_copySubEndpointsArray_cold_1();
    return 4294950576;
  }

  if (*(DerivedStorage + 80))
  {
    v4 = FigCFDictionaryCopyArrayOfValues();
    if (v4)
    {
      v5 = v4;
      result = 0;
      *a2 = v5;
    }

    else
    {
      epp_copySubEndpointsArray_cold_2();
      return 4294960568;
    }
  }

  else
  {
    epp_copySubEndpointsArray_cold_3();
    return 4294960587;
  }

  return result;
}

id emp_syncSubEndpoints_createTable(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = *MEMORY[0x277CC1368];
    v7 = *MEMORY[0x277CBECE8];
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        cf = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(CMBaseObject, v6, v7, &cf);
        }

        if (cf)
        {
          [v2 setObject:v9 forKeyedSubscript:?];
        }

        else
        {
          emp_syncSubEndpoints_createTable_cold_1();
        }

        if (cf)
        {
          CFRelease(cf);
        }

        ++v8;
      }

      while (v4 != v8);
      v12 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v4 = v12;
    }

    while (v12);
  }

  return v2;
}

uint64_t APEndpointPlusAddSubEndpoint(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (!a2)
  {
    APEndpointPlusAddSubEndpoint_cold_4();
    updated = 4294950576;
    goto LABEL_16;
  }

  v5 = DerivedStorage;
  if (*DerivedStorage == 2)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v8 = v7(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &key);
      if (!v8)
      {
        if (CFDictionaryContainsKey(v5[10], key))
        {
          APEndpointPlusAddSubEndpoint_cold_2();
          updated = 4294960587;
        }

        else
        {
          if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CFDictionarySetValue(v5[10], key, a2);
          updated = epp_updateDescription(a1);
          if (updated)
          {
            APEndpointPlusAddSubEndpoint_cold_3();
          }

          else
          {
            epp_postNotificationAsync(a1, *MEMORY[0x277CC0D48], 0);
          }
        }

        goto LABEL_14;
      }

      updated = v8;
    }

    else
    {
      updated = 4294954514;
    }

    APSLogErrorAt();
  }

  else
  {
    APEndpointPlusAddSubEndpoint_cold_1();
    updated = 4294950576;
  }

LABEL_14:
  if (key)
  {
    CFRelease(key);
  }

LABEL_16:
  FigSimpleMutexUnlock();
  return updated;
}

uint64_t epp_updateDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    updated = epp_updateDescriptionFromInner(a1);
    if (updated)
    {
      epp_updateDescription_cold_1();
    }
  }

  else if (*DerivedStorage == 2)
  {
    epp_updateDescription_cold_2(a1, &v5);
    return v5;
  }

  else
  {
    return 0;
  }

  return updated;
}

BOOL endpointCluster_isComplete()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = *(DerivedStorage + 336);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return Count >= *(DerivedStorage + 24);
}

BOOL apsession_IsConnected()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 304))
  {
    v1 = *(DerivedStorage + 305) != 0;
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t endpointCluster_copyAirPlayEndpointProperties()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  cf = 0;
  SubEndpointWithPredicate = endpointCluster_getSubEndpointWithPredicate(v1, 3);
  if (!SubEndpointWithPredicate)
  {
    SubEndpointWithPredicate = endpointCluster_getSubEndpointWithPredicate(v1, 1);
    if (!SubEndpointWithPredicate)
    {
      SubEndpointWithPredicate = endpointCluster_getSubEndpointWithPredicate(v1, 0);
      if (!SubEndpointWithPredicate)
      {
        v12 = 4294949690;
        goto LABEL_15;
      }
    }
  }

  v4 = SubEndpointWithPredicate;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v12 = 4294954514;
LABEL_14:
    APSLogErrorAt();
    goto LABEL_15;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = v6(CMBaseObject, @"AirPlayClusterCompatibleEndpointProperties", *MEMORY[0x277CBECE8], &cf);
  if (v8)
  {
    v12 = v8;
    goto LABEL_14;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v10 = MutableCopy;
    if (*(DerivedStorage + 8))
    {
      v11 = *MEMORY[0x277CBED28];
    }

    else
    {
      v11 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(MutableCopy, @"IsLocalDevice", v11);
    if (*DerivedStorage == 2 && !endpointCluster_isSubEndpointOfType(v1, v4, *MEMORY[0x277CC19A0]) && !endpointCluster_isSubEndpointOfType(v1, v4, *MEMORY[0x277CC19C8]))
    {
      endpointCluster_copyPropertyFromSubEndpoint(v1, 1, @"AirPlayClusterCompatibleEndpointProperties", v7, &v20);
      FigCFDictionarySetValueFromKeyInDict();
      v14 = OUTLINED_FUNCTION_21_5();
      CFDictionarySetValue(v14, v15, v16);
      v17 = OUTLINED_FUNCTION_21_5();
      CFDictionarySetValue(v17, v18, v19);
    }

    v12 = 0;
    *v0 = v10;
  }

  else
  {
    APSLogErrorAt();
    v12 = 4294950575;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v12;
}

uint64_t endpoint_copyIsURLPlaybackEnabled(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (a2)
  {
    v5 = DerivedStorage;
    SupportedFeatures = endpoint_getSupportedFeatures(a1, &v9);
    if (SupportedFeatures)
    {
      endpoint_copyIsURLPlaybackEnabled_cold_1();
    }

    else
    {
      if (((v9 >> 2) & 1 & (*(v5 + 136) >> 2)) != 0)
      {
        v7 = MEMORY[0x277CBED28];
      }

      else
      {
        v7 = MEMORY[0x277CBED10];
      }

      *a2 = CFRetain(*v7);
    }
  }

  else
  {
    endpoint_copyIsURLPlaybackEnabled_cold_2();
    return 4294950576;
  }

  return SupportedFeatures;
}

CFTypeRef endpointCluster_getClusterModelBasedOnClusterAdvertisementInfo(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  endpointCluster_copyPropertyFromSubEndpoint(a1, 0, @"ClusterModel", *MEMORY[0x277CBECE8], &cf);
  result = cf;
  if (cf)
  {
    CFGetInt64Ranged();
    CFRelease(cf);
    return APSGetClusterModelNameForClusterTypeAndModel();
  }

  return result;
}

uint64_t endpointCluster_copyPropertyFromSubEndpoint(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 336)) < 1 || !endpointCluster_getSubEndpointWithPredicate(a1, a2))
  {
    return 4294949690;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v13 = v12(CMBaseObject, a3, a4, a5);
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    v13 = 4294954514;
  }

  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_4_1();
  }

  return v13;
}

uint64_t APEndpointAPSClusterTypeToFigEndpointClusterType(int a1)
{
  switch(a1)
  {
    case 3:
      v1 = MEMORY[0x277CC0AF0];
      return *v1;
    case 2:
      v1 = MEMORY[0x277CC0AF8];
      return *v1;
    case 1:
      v1 = MEMORY[0x277CC0B00];
      return *v1;
  }

  return 0;
}

void __manager_updateEndpointClusterMembershipIfNeeded_block_invoke_2(uint64_t a1, const void *a2)
{
  cf = 0;
  if (*(a1 + 48) && *(a1 + 32) == a2)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }
  }

  else
  {
    v3 = manager_copyOrCreateClusterForEndpoint(*(a1 + 40), a2, &cf);
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    if (v3)
    {
      APSLogErrorAt();
    }

    else
    {
      if (!cf)
      {
        return;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      value = 0;
      if (*(DerivedStorage + 2))
      {
        v5 = DerivedStorage;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v7 && (v7(CMBaseObject, *MEMORY[0x277CC1490], *MEMORY[0x277CBECE8], &value), value))
        {
          CFDictionarySetValue(*(v5 + 232), a2, value);
          if (!APSGetFBOPropertyInt64())
          {
            DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_2_10(DefaultLocalCenter);
            FigNotificationCenterRemoveWeakListener();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_1_12();
            FigNotificationCenterRemoveWeakListener();
            v9 = OUTLINED_FUNCTION_12_4();
            APEndpointClusterAddSubEndpoint(v9, v10);
          }
        }

        else
        {
          APSLogErrorAt();
        }

        if (value)
        {
          CFRelease(value);
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t manager_copyOrCreateClusterForEndpoint(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  key = 0;
  v17 = 0;
  value = 0;
  cf = 0;
  if (a3)
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 2) && (APEndpointCopyClusterInfo(a2, &key, &v18, &v17, 0, 0, 0, &cf), key))
    {
      v8 = CFDictionaryGetValue(*(v7 + 240), key);
      if (v8)
      {
        v9 = CFRetain(v8);
        value = v9;
        if (v9)
        {
LABEL_16:
          v13 = 0;
          *a3 = v9;
          value = 0;
          goto LABEL_17;
        }
      }

      else
      {
        value = 0;
      }

      v10 = APSGetFBOPropertyInt64();
      if (v10)
      {
        v11 = a2;
      }

      else
      {
        v11 = 0;
      }

      v12 = APEndpointClusterCreate(*MEMORY[0x277CBECE8], v11, key, v17, cf, v18, *(v7 + 304), 0, &value);
      if (!v12)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_6_2();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_6_2();
        FigNotificationCenterAddWeakListener();
        if (v10)
        {
          manager_updateExposedLocalEndpoint(a1, value);
          if (manager_determineLocalClusterAction(a1, value) == 1)
          {
            *(v7 + 368) = 0;
            manager_activateLocalCluster(a1, value);
          }
        }

        CFDictionarySetValue(*(v7 + 240), key, value);
        v9 = value;
        goto LABEL_16;
      }

      v13 = v12;
      APSLogErrorAt();
      if (value)
      {
        CFRelease(value);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v13 = 4294960591;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (key)
  {
    CFRelease(key);
  }

  return v13;
}

uint64_t APEndpointClusterAddSubEndpoint(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (!APSGetFBOPropertyInt64())
  {
    v17.length = CFArrayGetCount(*(DerivedStorage + 336));
    v17.location = 0;
    if (CFArrayGetFirstIndexOfValue(*(DerivedStorage + 336), v17, a2) == -1)
    {
      CFArrayAppendValue(*(DerivedStorage + 336), a2);
      v5 = *(DerivedStorage + 384);
      if (v5)
      {
        CompletionCallbackContextAddSubEndpoint(v5, a2);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_4_26();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_4_26();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_4_26();
      if (*(DerivedStorage + 8) && *DerivedStorage == 2)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_4_26();
      }

      v6 = OUTLINED_FUNCTION_17_4();
      v8 = endpointCluster_updateFromSubEndpoint(v6, v7, 0, 1, 1, 1);
      if (v8)
      {
        v15 = v8;
        APSLogErrorAt();
        goto LABEL_17;
      }

      v9 = OUTLINED_FUNCTION_17_4();
      if (endpointCluster_shouldActivateSubEndpoint(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_17_4();
        endpointCluster_activateSubEndpoint(v11, v12);
      }

      v13 = OUTLINED_FUNCTION_17_4();
      endpointCluster_failDelayManageSubEndpoint(v13, v14, 3);
      endpointCluster_updateHealthState(a1);
    }

    else
    {
      APSLogErrorAt();
    }
  }

  v15 = 0;
LABEL_17:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t endpointCluster_updateFromSubEndpoint(const void *a1, const void *a2, int a3, int a4, int a5, int a6)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v80 = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  v90 = 0;
  alloc = *MEMORY[0x277CBECE8];
  if (a2 && !a3)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(CMBaseObject, @"GroupPublicName", alloc, &v90);
    }

    v15 = FigCFEqual();
    v12 = 0;
    if (!v15 && v90)
    {
      if (CFStringGetLength(v90) < 1)
      {
        v12 = 0;
      }

      else
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v16 = *(DerivedStorage + 288);
        v17 = v90;
        *(DerivedStorage + 288) = v90;
        if (v17)
        {
          CFRetain(v17);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        v12 = 1;
      }
    }
  }

  v77 = a3;
  v78 = v12;
  v81 = a2;
  v18 = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(alloc, 0);
  if (CFArrayGetCount(*(v18 + 336)) >= 1)
  {
    v20 = 0;
    v21 = *MEMORY[0x277CC1450];
    do
    {
      v91[0] = 0;
      CFArrayGetValueAtIndex(*(v18 + 336), v20);
      v22 = CFGetAllocator(a1);
      v23 = FigEndpointGetCMBaseObject();
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v24)
      {
        v24(v23, v21, v22, v91);
      }

      v25 = v91[0];
      if (v91[0])
      {
        if (v20)
        {
          CFStringAppend(Mutable, @" + ");
          v25 = v91[0];
        }

        CFStringAppend(Mutable, v25);
        if (v91[0])
        {
          CFRelease(v91[0]);
        }
      }

      ++v20;
    }

    while (v20 < CFArrayGetCount(*(v18 + 336)));
  }

  v26 = CFEqual(Mutable, *(DerivedStorage + 296));
  if (!v26)
  {
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v27 = *(DerivedStorage + 296);
    *(DerivedStorage + 296) = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v26)
  {
    v28 = v78;
  }

  else
  {
    v28 = 1;
  }

  if (a5)
  {
    v79 = v28;
    v29 = CMBaseObjectGetDerivedStorage();
    v30 = 0;
    v91[0] = 0;
    v31 = *MEMORY[0x277CC1340];
    while (v30 < CFArrayGetCount(*(v29 + 336)))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v29 + 336), v30);
      if (!APSGetFBOPropertyInt64())
      {
        goto LABEL_57;
      }

      v90 = 0;
      v33 = FigEndpointGetCMBaseObject();
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v34)
      {
        v34(v33, v31, alloc, &v90);
      }

      if (v90)
      {
        if (FigCFEqual())
        {
          ValueAtIndex = 0;
        }

        else if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v90)
        {
          CFRelease(v90);
        }
      }

      else
      {
LABEL_57:
        ValueAtIndex = 0;
      }

      ++v30;
      if (ValueAtIndex)
      {
        goto LABEL_65;
      }
    }

    SubEndpointWithPredicate = endpointCluster_getSubEndpointWithPredicate(a1, 0);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!SubEndpointWithPredicate)
    {
      v37 = 0;
      goto LABEL_68;
    }

LABEL_65:
    v35 = FigEndpointGetCMBaseObject();
    v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v36)
    {
      v36(v35, v31, alloc, v91);
    }

    v37 = APSGetFBOPropertyInt64() != 0;
LABEL_68:
    v38 = v81;
    v28 = v79;
    if (FigCFEqual() && v37 == *(v29 + 312))
    {
      v39 = 0;
    }

    else
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v41 = *(v29 + 304);
      v42 = v91[0];
      *(v29 + 304) = v91[0];
      if (v42)
      {
        CFRetain(v42);
      }

      if (v41)
      {
        CFRelease(v41);
      }

      *(v29 + 312) = v37;
      v39 = 1;
    }

    v40 = v80;
    if (v91[0])
    {
      CFRelease(v91[0]);
    }
  }

  else
  {
    v39 = 0;
    v38 = v81;
    v40 = v80;
  }

  if (!v40)
  {
    v45 = 0;
    if (!a6)
    {
      return v45;
    }

    goto LABEL_163;
  }

  CMBaseObjectGetDerivedStorage();
  v43 = CMBaseObjectGetDerivedStorage();
  if (!v77)
  {
    v90 = 0;
    v91[0] = 0;
    v89 = 0;
    v87 = 0;
    cf = 0;
    v85 = 0;
    v86 = 0;
    v84 = 0;
    v46 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v46)
    {
      endpointCluster_updateFromSubEndpoint_cold_1();
      Int64 = 0;
      v45 = 4294950575;
      goto LABEL_141;
    }

    v47 = FigEndpointGetCMBaseObject();
    v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v48)
    {
      v49 = v48(v47, *MEMORY[0x277CC1368], alloc, v91);
      if (!v49)
      {
        CFDictionarySetValue(v46, *MEMORY[0x277CC0AD8], v91[0]);
        v50 = *MEMORY[0x277CC1450];
        v51 = FigEndpointGetCMBaseObject();
        v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v52)
        {
          v52(v51, v50, alloc, &v90);
        }

        FigCFDictionarySetValue();
        v53 = FigEndpointGetCMBaseObject();
        v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v54)
        {
          v55 = v54(v53, *MEMORY[0x277CC14F0], alloc, &v89);
          if (!v55)
          {
            CFDictionarySetValue(v46, *MEMORY[0x277CC0AE0], v89);
            v56 = FigEndpointGetCMBaseObject();
            v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v57)
            {
              v57(v56, *MEMORY[0x277CC1390], alloc, &cf);
            }

            FigCFDictionarySetValue();
            v58 = *MEMORY[0x277CC1440];
            v59 = FigEndpointGetCMBaseObject();
            v60 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v60)
            {
              v60(v59, v58, alloc, &v87);
            }

            FigCFDictionarySetValue();
            v61 = FigEndpointGetCMBaseObject();
            v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v62)
            {
              v62(v61, @"RoomUUID", alloc, &v86);
            }

            FigCFDictionarySetValue();
            v63 = FigEndpointGetCMBaseObject();
            v64 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v64)
            {
              v64(v63, @"RoomName", alloc, &v85);
            }

            FigCFDictionarySetValue();
            if (*v43 != 1)
            {
              v65 = FigEndpointGetCMBaseObject();
              v66 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v66)
              {
                v66(v65, @"TightSyncClusterInfo", alloc, &v84);
              }

              if (v84)
              {
                FigCFDictionarySetValueFromKeyInDict();
                FigCFDictionarySetValueFromKeyInDict();
                FigCFDictionarySetValueFromKeyInDict();
              }
            }

            if (FigCFEqual())
            {
              v67 = *(v43 + 368);
              if (v67)
              {
                CFRelease(v67);
                *(v43 + 368) = 0;
              }

              *(v43 + 368) = CFRetain(v91[0]);
            }

            CFHash(v38);
            Int64 = CFNumberCreateInt64();
            CFDictionarySetValue(*(v43 + 344), Int64, v46);
            if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v72 = *(v43 + 352);
            if (v72)
            {
              CFRelease(v72);
              *(v43 + 352) = 0;
            }

            v73 = *(v43 + 360);
            if (v73)
            {
              CFRelease(v73);
              v45 = 0;
              *(v43 + 360) = 0;
            }

            else
            {
              v45 = 0;
            }

            goto LABEL_141;
          }

          v45 = v55;
        }

        else
        {
          v45 = 4294954514;
        }

        APSLogErrorAt();
        Int64 = 0;
LABEL_141:
        if (v91[0])
        {
          CFRelease(v91[0]);
        }

        if (v90)
        {
          CFRelease(v90);
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

        if (v46)
        {
          CFRelease(v46);
        }

        if (Int64)
        {
          CFRelease(Int64);
        }

        if (v84)
        {
          CFRelease(v84);
        }

        goto LABEL_161;
      }

      v45 = v49;
    }

    else
    {
      v45 = 4294954514;
    }

    APSLogErrorAt();
    Int64 = 0;
    goto LABEL_141;
  }

  CFHash(v38);
  v44 = CFNumberCreateInt64();
  CFDictionaryRemoveValue(*(v43 + 344), v44);
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v69 = *(v43 + 352);
  if (v69)
  {
    CFRelease(v69);
    *(v43 + 352) = 0;
  }

  v70 = *(v43 + 360);
  if (v70)
  {
    CFRelease(v70);
    *(v43 + 360) = 0;
  }

  if (v44)
  {
    CFRelease(v44);
  }

  v45 = 0;
LABEL_161:
  if (!a6)
  {
    return v45;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
LABEL_163:
  if ((v28 | v39) == 1)
  {
    v74 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v74)
    {
      endpointCluster_updateFromSubEndpoint_cold_2();
      return 4294950575;
    }

    v75 = v74;
    if (v39)
    {
      CFDictionarySetValue(v74, @"GroupInfoDidChange", *MEMORY[0x277CBED28]);
    }

    if (v28)
    {
      CFDictionarySetValue(v75, @"NameDidChange", *MEMORY[0x277CBED28]);
    }
  }

  else
  {
    v75 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (v75)
  {
    CFRelease(v75);
  }

  return v45;
}

const void *endpointCluster_getSubEndpointWithPredicate(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 336)) < 1)
  {
    return 0;
  }

  if (!a2)
  {
    v11 = *(DerivedStorage + 336);
LABEL_18:

    return CFArrayGetValueAtIndex(v11, 0);
  }

  if (a2 == 1)
  {
    v12 = CMBaseObjectGetDerivedStorage();
    Count = CFArrayGetCount(*(v12 + 336));
    if (Count < 1)
    {
      return 0;
    }

    if (*v12 == 2)
    {
      v14 = Count;
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v12 + 336), v15);
        if (endpointCluster_isSubEndpointStaticLeader(a1, ValueAtIndex))
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_17;
        }
      }

      if (ValueAtIndex)
      {
        return ValueAtIndex;
      }
    }

LABEL_17:
    v11 = *(v12 + 336);
    goto LABEL_18;
  }

  if (a2 != 2)
  {
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = CFArrayGetCount(*(v5 + 336));
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 336), v8);
        if (APSGetFBOPropertyInt64())
        {
          break;
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }

      return ValueAtIndex;
    }

    return 0;
  }

  return endpointCluster_getSubEndpointVolumeLeader(a1);
}

uint64_t endpoint_copyPropertyFromEndpointDescription_cold_7(uint64_t a1)
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

uint64_t endpoint_isURLPlaybackEnabled(uint64_t a1)
{
  cf = 0;
  endpoint_copyIsURLPlaybackEnabled(a1, &cf);
  v1 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

uint64_t endpointCluster_copyMXDescriptor(uint64_t a1, CFMutableDictionaryRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpointCluster_copyMXDescriptor_cold_1();
    return 4294950575;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CC1450];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v7, &cf, &v81))
  {
    v8 = v81;
    if (!v81)
    {
LABEL_4:
      FigCFDictionarySetValue();
      goto LABEL_5;
    }
  }

  else
  {
    v8 = endpointCluster_copyPropertyInternal(a1, v7, v4, &cf);
    v81 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  if (v8 != -12784 && v8 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x277CC1368];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v9, &cf, &v81))
  {
    v10 = v81;
    if (!v81)
    {
LABEL_9:
      FigCFDictionarySetValue();
      goto LABEL_10;
    }
  }

  else
  {
    v10 = endpointCluster_copyPropertyInternal(a1, v9, v4, &cf);
    v81 = v10;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  if (v10 != -12784 && v10 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  v11 = *MEMORY[0x277CC1428];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v11, &cf, &v81))
  {
    v12 = v81;
    if (!v81)
    {
LABEL_14:
      FigCFDictionarySetValue();
      goto LABEL_15;
    }
  }

  else
  {
    v12 = endpointCluster_copyPropertyInternal(a1, v11, v4, &cf);
    v81 = v12;
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  if (v12 != -12784 && v12 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  v13 = *MEMORY[0x277CC1440];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v13, &cf, &v81))
  {
    v14 = v81;
    if (!v81)
    {
LABEL_19:
      FigCFDictionarySetValue();
      goto LABEL_20;
    }
  }

  else
  {
    v14 = endpointCluster_copyPropertyInternal(a1, v13, v4, &cf);
    v81 = v14;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  if (v14 != -12784 && v14 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  v15 = *MEMORY[0x277CC1430];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v15, &cf, &v81))
  {
    v16 = v81;
    if (!v81)
    {
LABEL_24:
      FigCFDictionarySetValue();
      goto LABEL_25;
    }
  }

  else
  {
    v16 = endpointCluster_copyPropertyInternal(a1, v15, v4, &cf);
    v81 = v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  if (v16 != -12784 && v16 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  v17 = *MEMORY[0x277CC1550];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v17, &cf, &v81))
  {
    v18 = v81;
    if (!v81)
    {
LABEL_29:
      FigCFDictionarySetValue();
      goto LABEL_30;
    }
  }

  else
  {
    v18 = endpointCluster_copyPropertyInternal(a1, v17, v4, &cf);
    v81 = v18;
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  if (v18 != -12784 && v18 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  v19 = *MEMORY[0x277CC1548];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v19, &cf, &v81))
  {
    v20 = v81;
    if (!v81)
    {
LABEL_34:
      FigCFDictionarySetValue();
      goto LABEL_35;
    }
  }

  else
  {
    v20 = endpointCluster_copyPropertyInternal(a1, v19, v4, &cf);
    v81 = v20;
    if (!v20)
    {
      goto LABEL_34;
    }
  }

  if (v20 != -12784 && v20 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  v21 = *MEMORY[0x277CC1490];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v21, &cf, &v81))
  {
    v22 = v81;
    if (!v81)
    {
LABEL_39:
      FigCFDictionarySetValue();
      goto LABEL_40;
    }
  }

  else
  {
    v22 = endpointCluster_copyPropertyInternal(a1, v21, v4, &cf);
    v81 = v22;
    if (!v22)
    {
      goto LABEL_39;
    }
  }

  if (v22 != -12784 && v22 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  v23 = *MEMORY[0x277CC12B8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v23, &cf, &v81))
  {
    v24 = v81;
    if (!v81)
    {
LABEL_44:
      FigCFDictionarySetValue();
      goto LABEL_45;
    }
  }

  else
  {
    v24 = endpointCluster_copyPropertyInternal(a1, v23, v4, &cf);
    v81 = v24;
    if (!v24)
    {
      goto LABEL_44;
    }
  }

  if (v24 != -12784 && v24 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

  v25 = *MEMORY[0x277CC1390];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v25, &cf, &v81))
  {
    v26 = v81;
    if (!v81)
    {
LABEL_49:
      FigCFDictionarySetValue();
      goto LABEL_50;
    }
  }

  else
  {
    v26 = endpointCluster_copyPropertyInternal(a1, v25, v4, &cf);
    v81 = v26;
    if (!v26)
    {
      goto LABEL_49;
    }
  }

  if (v26 != -12784 && v26 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  v27 = *MEMORY[0x277CC12C0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v27, &cf, &v81))
  {
    v28 = v81;
    if (!v81)
    {
LABEL_54:
      FigCFDictionarySetValue();
      goto LABEL_55;
    }
  }

  else
  {
    v28 = endpointCluster_copyPropertyInternal(a1, v27, v4, &cf);
    v81 = v28;
    if (!v28)
    {
      goto LABEL_54;
    }
  }

  if (v28 != -12784 && v28 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  v29 = *MEMORY[0x277CC12C8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v29, &cf, &v81))
  {
    v30 = v81;
    if (!v81)
    {
LABEL_59:
      FigCFDictionarySetValue();
      goto LABEL_60;
    }
  }

  else
  {
    v30 = endpointCluster_copyPropertyInternal(a1, v29, v4, &cf);
    v81 = v30;
    if (!v30)
    {
      goto LABEL_59;
    }
  }

  if (v30 != -12784 && v30 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_60:
  if (cf)
  {
    CFRelease(cf);
  }

  v31 = *MEMORY[0x277CC12A8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v31, &cf, &v81))
  {
    v32 = v81;
    if (!v81)
    {
LABEL_64:
      FigCFDictionarySetValue();
      goto LABEL_65;
    }
  }

  else
  {
    v32 = endpointCluster_copyPropertyInternal(a1, v31, v4, &cf);
    v81 = v32;
    if (!v32)
    {
      goto LABEL_64;
    }
  }

  if (v32 != -12784 && v32 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_65:
  if (cf)
  {
    CFRelease(cf);
  }

  v33 = *MEMORY[0x277CC12B0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v33, &cf, &v81))
  {
    v34 = v81;
    if (!v81)
    {
LABEL_69:
      FigCFDictionarySetValue();
      goto LABEL_70;
    }
  }

  else
  {
    v34 = endpointCluster_copyPropertyInternal(a1, v33, v4, &cf);
    v81 = v34;
    if (!v34)
    {
      goto LABEL_69;
    }
  }

  if (v34 != -12784 && v34 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_70:
  if (cf)
  {
    CFRelease(cf);
  }

  v35 = *MEMORY[0x277CC12A0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v35, &cf, &v81))
  {
    v36 = v81;
    if (!v81)
    {
LABEL_74:
      FigCFDictionarySetValue();
      goto LABEL_75;
    }
  }

  else
  {
    v36 = endpointCluster_copyPropertyInternal(a1, v35, v4, &cf);
    v81 = v36;
    if (!v36)
    {
      goto LABEL_74;
    }
  }

  if (v36 != -12784 && v36 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_75:
  if (cf)
  {
    CFRelease(cf);
  }

  v37 = *MEMORY[0x277CC1378];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v37, &cf, &v81))
  {
    v38 = v81;
    if (!v81)
    {
LABEL_79:
      FigCFDictionarySetValue();
      goto LABEL_80;
    }
  }

  else
  {
    v38 = endpointCluster_copyPropertyInternal(a1, v37, v4, &cf);
    v81 = v38;
    if (!v38)
    {
      goto LABEL_79;
    }
  }

  if (v38 != -12784 && v38 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_80:
  if (cf)
  {
    CFRelease(cf);
  }

  v39 = *MEMORY[0x277CC1298];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v39, &cf, &v81))
  {
    v40 = v81;
    if (!v81)
    {
LABEL_84:
      FigCFDictionarySetValue();
      goto LABEL_85;
    }
  }

  else
  {
    v40 = endpointCluster_copyPropertyInternal(a1, v39, v4, &cf);
    v81 = v40;
    if (!v40)
    {
      goto LABEL_84;
    }
  }

  if (v40 != -12784 && v40 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_85:
  if (cf)
  {
    CFRelease(cf);
  }

  v41 = *MEMORY[0x277CC1400];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v41, &cf, &v81))
  {
    v42 = v81;
    if (!v81)
    {
LABEL_89:
      FigCFDictionarySetValue();
      goto LABEL_90;
    }
  }

  else
  {
    v42 = endpointCluster_copyPropertyInternal(a1, v41, v4, &cf);
    v81 = v42;
    if (!v42)
    {
      goto LABEL_89;
    }
  }

  if (v42 != -12784 && v42 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_90:
  if (cf)
  {
    CFRelease(cf);
  }

  v43 = *MEMORY[0x277CC1538];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v43, &cf, &v81))
  {
    v44 = v81;
    if (!v81)
    {
LABEL_94:
      FigCFDictionarySetValue();
      goto LABEL_95;
    }
  }

  else
  {
    v44 = endpointCluster_copyPropertyInternal(a1, v43, v4, &cf);
    v81 = v44;
    if (!v44)
    {
      goto LABEL_94;
    }
  }

  if (v44 != -12784 && v44 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_95:
  if (cf)
  {
    CFRelease(cf);
  }

  v45 = *MEMORY[0x277CC1520];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v45, &cf, &v81))
  {
    v46 = v81;
    if (!v81)
    {
LABEL_99:
      FigCFDictionarySetValue();
      goto LABEL_100;
    }
  }

  else
  {
    v46 = endpointCluster_copyPropertyInternal(a1, v45, v4, &cf);
    v81 = v46;
    if (!v46)
    {
      goto LABEL_99;
    }
  }

  if (v46 != -12784 && v46 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_100:
  if (cf)
  {
    CFRelease(cf);
  }

  v47 = *MEMORY[0x277CC1438];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v47, &cf, &v81))
  {
    v48 = v81;
    if (!v81)
    {
LABEL_104:
      FigCFDictionarySetValue();
      goto LABEL_105;
    }
  }

  else
  {
    v48 = endpointCluster_copyPropertyInternal(a1, v47, v4, &cf);
    v81 = v48;
    if (!v48)
    {
      goto LABEL_104;
    }
  }

  if (v48 != -12784 && v48 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_105:
  if (cf)
  {
    CFRelease(cf);
  }

  v49 = *MEMORY[0x277CC1338];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v49, &cf, &v81))
  {
    v50 = v81;
    if (!v81)
    {
LABEL_109:
      FigCFDictionarySetValue();
      goto LABEL_110;
    }
  }

  else
  {
    v50 = endpointCluster_copyPropertyInternal(a1, v49, v4, &cf);
    v81 = v50;
    if (!v50)
    {
      goto LABEL_109;
    }
  }

  if (v50 != -12784 && v50 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_110:
  if (cf)
  {
    CFRelease(cf);
  }

  v51 = *MEMORY[0x277CC13B0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v51, &cf, &v81))
  {
    v52 = v81;
    if (!v81)
    {
LABEL_114:
      FigCFDictionarySetValue();
      goto LABEL_115;
    }
  }

  else
  {
    v52 = endpointCluster_copyPropertyInternal(a1, v51, v4, &cf);
    v81 = v52;
    if (!v52)
    {
      goto LABEL_114;
    }
  }

  if (v52 != -12784 && v52 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_115:
  if (cf)
  {
    CFRelease(cf);
  }

  v53 = *MEMORY[0x277CC14C8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v53, &cf, &v81))
  {
    v54 = v81;
    if (!v81)
    {
LABEL_119:
      FigCFDictionarySetValue();
      goto LABEL_120;
    }
  }

  else
  {
    v54 = endpointCluster_copyPropertyInternal(a1, v53, v4, &cf);
    v81 = v54;
    if (!v54)
    {
      goto LABEL_119;
    }
  }

  if (v54 != -12784 && v54 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_120:
  if (cf)
  {
    CFRelease(cf);
  }

  v55 = *MEMORY[0x277CC1510];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v55, &cf, &v81))
  {
    v56 = v81;
    if (!v81)
    {
LABEL_124:
      FigCFDictionarySetValue();
      goto LABEL_125;
    }
  }

  else
  {
    v56 = endpointCluster_copyPropertyInternal(a1, v55, v4, &cf);
    v81 = v56;
    if (!v56)
    {
      goto LABEL_124;
    }
  }

  if (v56 != -12784 && v56 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_125:
  if (cf)
  {
    CFRelease(cf);
  }

  v57 = *MEMORY[0x277CC13C0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v57, &cf, &v81))
  {
    v58 = v81;
    if (!v81)
    {
LABEL_129:
      FigCFDictionarySetValue();
      goto LABEL_130;
    }
  }

  else
  {
    v58 = endpointCluster_copyPropertyInternal(a1, v57, v4, &cf);
    v81 = v58;
    if (!v58)
    {
      goto LABEL_129;
    }
  }

  if (v58 != -12784 && v58 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_130:
  if (cf)
  {
    CFRelease(cf);
  }

  v59 = *MEMORY[0x277CC11F8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v59, &cf, &v81))
  {
    v60 = v81;
    if (!v81)
    {
LABEL_134:
      FigCFDictionarySetValue();
      goto LABEL_135;
    }
  }

  else
  {
    v60 = endpointCluster_copyPropertyInternal(a1, v59, v4, &cf);
    v81 = v60;
    if (!v60)
    {
      goto LABEL_134;
    }
  }

  if (v60 != -12784 && v60 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_135:
  if (cf)
  {
    CFRelease(cf);
  }

  v61 = *MEMORY[0x277CC1340];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v61, &cf, &v81))
  {
    v62 = v81;
    if (!v81)
    {
LABEL_139:
      FigCFDictionarySetValue();
      goto LABEL_140;
    }
  }

  else
  {
    v62 = endpointCluster_copyPropertyInternal(a1, v61, v4, &cf);
    v81 = v62;
    if (!v62)
    {
      goto LABEL_139;
    }
  }

  if (v62 != -12784 && v62 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_140:
  if (cf)
  {
    CFRelease(cf);
  }

  v63 = *MEMORY[0x277CC1208];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v63, &cf, &v81))
  {
    v64 = v81;
    if (!v81)
    {
LABEL_144:
      FigCFDictionarySetValue();
      goto LABEL_145;
    }
  }

  else
  {
    v64 = endpointCluster_copyPropertyInternal(a1, v63, v4, &cf);
    v81 = v64;
    if (!v64)
    {
      goto LABEL_144;
    }
  }

  if (v64 != -12784 && v64 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_145:
  if (cf)
  {
    CFRelease(cf);
  }

  v65 = *MEMORY[0x277CC1238];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v65, &cf, &v81))
  {
    v66 = v81;
    if (!v81)
    {
LABEL_149:
      FigCFDictionarySetValue();
      goto LABEL_150;
    }
  }

  else
  {
    v66 = endpointCluster_copyPropertyInternal(a1, v65, v4, &cf);
    v81 = v66;
    if (!v66)
    {
      goto LABEL_149;
    }
  }

  if (v66 != -12784 && v66 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_150:
  if (cf)
  {
    CFRelease(cf);
  }

  v67 = *MEMORY[0x277CC13B8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v67, &cf, &v81))
  {
    v68 = v81;
    if (!v81)
    {
LABEL_154:
      FigCFDictionarySetValue();
      goto LABEL_155;
    }
  }

  else
  {
    v68 = endpointCluster_copyPropertyInternal(a1, v67, v4, &cf);
    v81 = v68;
    if (!v68)
    {
      goto LABEL_154;
    }
  }

  if (v68 != -12784 && v68 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_155:
  if (cf)
  {
    CFRelease(cf);
  }

  v69 = *MEMORY[0x277CC1350];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v69, &cf, &v81))
  {
    v70 = v81;
    if (!v81)
    {
LABEL_159:
      FigCFDictionarySetValue();
      goto LABEL_160;
    }
  }

  else
  {
    v70 = endpointCluster_copyPropertyInternal(a1, v69, v4, &cf);
    v81 = v70;
    if (!v70)
    {
      goto LABEL_159;
    }
  }

  if (v70 != -12784 && v70 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_160:
  if (cf)
  {
    CFRelease(cf);
  }

  v71 = *MEMORY[0x277CC12F0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v71, &cf, &v81))
  {
    v72 = v81;
    if (!v81)
    {
LABEL_164:
      FigCFDictionarySetValue();
      goto LABEL_165;
    }
  }

  else
  {
    v72 = endpointCluster_copyPropertyInternal(a1, v71, v4, &cf);
    v81 = v72;
    if (!v72)
    {
      goto LABEL_164;
    }
  }

  if (v72 != -12784 && v72 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_165:
  if (cf)
  {
    CFRelease(cf);
  }

  v73 = *MEMORY[0x277CC1318];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v73, &cf, &v81))
  {
    v74 = v81;
    if (!v81)
    {
LABEL_169:
      FigCFDictionarySetValue();
      goto LABEL_170;
    }
  }

  else
  {
    v74 = endpointCluster_copyPropertyInternal(a1, v73, v4, &cf);
    v81 = v74;
    if (!v74)
    {
      goto LABEL_169;
    }
  }

  if (v74 != -12784 && v74 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_170:
  if (cf)
  {
    CFRelease(cf);
  }

  v75 = *MEMORY[0x277CC1310];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v75, &cf, &v81))
  {
    v76 = v81;
    if (!v81)
    {
LABEL_174:
      FigCFDictionarySetValue();
      goto LABEL_175;
    }
  }

  else
  {
    v76 = endpointCluster_copyPropertyInternal(a1, v75, v4, &cf);
    v81 = v76;
    if (!v76)
    {
      goto LABEL_174;
    }
  }

  if (v76 != -12784 && v76 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_175:
  if (cf)
  {
    CFRelease(cf);
  }

  v77 = *MEMORY[0x277CC1200];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (!endpointCluster_copyStaticProperty(a1, v77, &cf, &v81))
  {
    v78 = endpointCluster_copyPropertyInternal(a1, v77, v4, &cf);
    v81 = v78;
    if (!v78)
    {
      goto LABEL_179;
    }

LABEL_325:
    if (v78 != -12784 && v78 != -12787)
    {
      APSLogErrorAt();
    }

    goto LABEL_180;
  }

  v78 = v81;
  if (v81)
  {
    goto LABEL_325;
  }

LABEL_179:
  FigCFDictionarySetValue();
LABEL_180:
  if (cf)
  {
    CFRelease(cf);
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t endpointCluster_anySubEndpointReportsTrueForProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 336));
  if (Count < 1)
  {
    return 0;
  }

  v2 = Count;
  v3 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 336), v3);
    if (APSGetFBOPropertyInt64())
    {
      break;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return 1;
}

void carPlayAnalytics_addValueToReportingString(uint64_t a1, __CFString *theString, double a3)
{
  if (a1)
  {
    if (theString)
    {
      Length = CFStringGetLength(theString);
      v7 = " ";
      if (!Length)
      {
        v7 = "";
      }

      CFStringAppendFormat(theString, 0, @"%s%@:%.3lf", v7, a1, *&a3);
    }

    else
    {
      carPlayAnalytics_addValueToReportingString_cold_1();
    }
  }

  else
  {
    carPlayAnalytics_addValueToReportingString_cold_2();
  }
}

CFStringRef carPlayAnalytics_createAnalyticsKeyForStreamType(int a1, CFStringRef format, uint64_t a3)
{
  v3 = a3 - 96;
  if (a3 - 96) < 0x19 && ((0x100FCF1u >> v3))
  {
    v4 = off_27849DFB8[v3];
  }

  else
  {
    v4 = "?";
    if (a3 == 130)
    {
      v4 = "RemoteControl";
    }
  }

  return CFStringCreateStringWithValidatedFormat(*MEMORY[0x277CBECE8], 0, @"%s", format, 0, v4);
}

uint64_t APCarPlay_AddAnalyticsValues(const void *a1, const __CFString *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v4 = objc_alloc_init(getCRSAppHistoryControllerClass());
  v16[5] = v4;
  if (!v4)
  {
    APSLogErrorAt();
    v10 = -6728;
LABEL_24:
    *(v22 + 6) = v10;
    goto LABEL_21;
  }

  if (CFStringCompare(a2, @"SessionStarted", 0) == kCFCompareEqualTo)
  {
    v5 = 0;
    goto LABEL_6;
  }

  if (CFStringCompare(a2, @"SessionEnded", 0))
  {
    APSLogErrorAt();
    v10 = -6735;
    goto LABEL_24;
  }

  v5 = 1;
LABEL_6:
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    v11 = a2;
    v12 = a1;
    LogPrintF();
  }

  if (IsAppleInternalBuild())
  {
    v6 = mach_absolute_time();
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v6 = 0;
  if (a1)
  {
LABEL_14:
    CFRetain(a1);
  }

LABEL_15:
  if (a2)
  {
    CFRetain(a2);
  }

  v7 = v16[5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __APCarPlay_AddAnalyticsValues_block_invoke;
  v13[3] = &unk_27849FA00;
  v13[4] = &v21;
  v13[5] = v14;
  v13[8] = a1;
  v13[9] = v6;
  v13[6] = &v15;
  v13[7] = a2;
  [v7 addAnalyticsValues:a1 toEvent:v5 completion:{v13, v11, v12}];
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_21:
  v8 = *(v22 + 6);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v8;
}

void sub_22203BA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t getCRSAppHistoryControllerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__5;
  v0 = getCRSAppHistoryControllerClass_softClass;
  v7 = __Block_byref_object_dispose__5;
  v8 = getCRSAppHistoryControllerClass_softClass;
  if (!getCRSAppHistoryControllerClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getCRSAppHistoryControllerClass_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getCRSAppHistoryControllerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22203BB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22203C408(_DWORD *a1)
{
  v1 = a1[2] + 1520698633 * ((2 * (a1 & 0x48FF6608) - a1 + 922786295) ^ 0x9CEE8172);
  v2 = (*(*a1 + 16) >> 3) & 0x3F;
  *(*a1 + 24 + v2) = 0x80;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22203C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = v34 - 152;
  STACK[0xD28] = a17;
  *(v34 - 144) = (a20 + 2089148240) ^ (439532179 * ((v34 - 152) ^ 0xDEA63D82));
  (*(a1 + 8 * (a20 + 1120)))(v34 - 152);
  v36 = 2021301169 * ((217174587 - (v35 | 0xCF1D23B) + (v35 | 0xF30E2DC4)) ^ 0x78F87A64);
  STACK[0xD30] = a17;
  STACK[0xD28] = *(&off_2835705E0 + ((a20 + 519) ^ 0x3C7)) - 8;
  *(v34 - 136) = v36 + 469501837;
  *(v34 - 132) = (a20 + 227) ^ v36;
  (*(a34 + 8 * (a20 + 1083)))(v34 - 152);
  v37 = 2021301169 * ((~(v35 | 0x33F44066) + (v35 & 0x33F44066)) ^ 0x47FDE839);
  STACK[0xD28] = a12;
  *(v34 - 136) = v37 + 469501793;
  *(v34 - 132) = (a20 + 227) ^ v37;
  STACK[0xD30] = a17;
  (*(a34 + 8 * (a20 + 1083)))(v34 - 152);
  *a16 = *a17;
  LODWORD(STACK[0xC44]) = STACK[0xBEC];
  LODWORD(STACK[0xC48]) = STACK[0xBF0];
  STACK[0xC4C] = STACK[0xBF4];
  LODWORD(STACK[0xC54]) = STACK[0xBFC];
  v38 = *(a17 + 40);
  *(a16 + 24) = *(a17 + 24);
  *(a16 + 40) = v38;
  return (*(a34 + 8 * ((51 * ((((((a20 - 2009127629) & 0x77C0DBBD) - 494) | 0x304u) ^ 0x38ELL) == 64)) ^ (a20 - 2009127629) & 0x77C0DBBD)))(a34, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22203C810@<X0>(int a1@<W1>, uint64_t a2@<X2>, int a3@<W4>, int a4@<W5>, int a5@<W8>)
{
  v10 = (v7 + 4 * v6);
  v11 = v6 + 1;
  *v10 = v10[397] ^ v8 ^ *(a2 + 4 * (*(v7 + 4 * v11) & 1)) ^ ((*(v7 + 4 * v11) & (((a5 - 434) | a1) + a3) | v5 & 0x80000000) >> 1);
  return (*(v9 + 8 * (((v11 == 227) * a4) ^ a5)))();
}

uint64_t sub_22203C870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27)
{
  v30 = *(*(v27 + 8 * (v28 - 979)) - 4);
  a13 = -95 * *v30 - 25;
  a14 = -95 * v30[1] - 25;
  a15 = -95 * v30[2] - 25;
  a16 = v30[3] * (((3 * (v28 ^ 0x61) - 68) & 0x35) - 95) - 25;
  a17 = -95 * v30[4] - 25;
  a18 = -95 * v30[5] - 25;
  a19 = -95 * v30[6] - 25;
  a20 = -95 * v30[7] - 25;
  a21 = -95 * v30[8] - 25;
  a22 = -95 * v30[9] - 25;
  a23 = -95 * v30[10] - 25;
  a24 = -95 * v30[11] - 25;
  a25 = -95 * v30[12] - 25;
  a26 = -95 * v30[13] - 25;
  a27 = -95 * v30[14] - 25;
  v31 = (*(v29 + 8 * (v28 ^ 0x238)))();
  v32 = (*(v29 + 8 * (v28 + 509)))(0, &a13, v31);
  return (*(v29 + 8 * ((125 * (v32 == 0)) ^ v28)))(v32, v33, v34, v35, v36);
}

uint64_t sub_22203C9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  *v20 = *a17;
  LODWORD(STACK[0xC44]) = STACK[0xBEC];
  LODWORD(STACK[0xC48]) = STACK[0xBF0];
  *(v17 + 2892) = *(v17 + 2804);
  LODWORD(STACK[0xC54]) = STACK[0xBFC];
  v21 = *(v18 - 88);
  *(v18 - 1) = *(v18 - 104);
  *v18 = v21;
  return (*(a3 + 8 * ((254 * (((16 * ((v19 | 0x100u) - 2)) ^ 0x37A0) != 32)) ^ ((v19 | 0x100) - 2))))();
}

uint64_t sub_22203C9B0@<X0>(uint64_t a1@<X1>, unsigned int *a2@<X3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *a18 = 1;
  v29 = *a2;
  *(v28 - 120) = a6;
  *(v28 - 144) = (a3 + 1804447514) ^ a7;
  *(v28 - 128) = ((a3 + 1804447475) ^ 0x59) + a7;
  *(v28 - 124) = a7 | 1;
  *(v28 - 104) = -310332759 - a7 + a3;
  *(v28 - 112) = a3 + 1804447475 - a7;
  *(v28 - 136) = v29 - a7;
  v30 = (*(a1 + 8 * (a3 ^ v27)))(v28 - 144);
  return (*(a27 + 8 * *(v28 - 108)))(v30);
}

uint64_t sub_22203C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v31 = *(v26 + 4 * (v27 - 1));
  *(v26 + 4 * v27) = ((1566083941 * (v31 ^ (v31 >> 30))) ^ *(v26 + 4 * v27)) - v27;
  v32 = v30 - 152;
  *(v32 + 24) = a25;
  *(v30 - 112) = 1166607131 - v28 + v25;
  *(v32 + 8) = v27 + 1 - v28;
  *(v30 - 120) = v25 - 2038580541 - v28;
  *(v30 - 152) = (v25 - 2038580755) ^ v28;
  *(v30 - 136) = v28 + v25 - 2038580541 - 75;
  *(v30 - 132) = v28 ^ 1;
  v33 = (*(v29 + 8 * (v25 ^ 0xCB)))(v30 - 152);
  return (*(v29 + 8 * *(v30 - 116)))(v33);
}

uint64_t sub_22203CAA4(uint64_t a1, int a2)
{
  v6 = (v4 + 32);
  v7 = (a1 + 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v3 != 32) * a2) ^ v2)))();
}

uint64_t sub_22203CAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v23 - 136) = (v21 + 623) ^ (1021229753 * ((v23 - 144) ^ 0xBEEDBBEA));
  *(v23 - 132) = ((((a20 ^ 0xF7) - 43) ^ ((a20 ^ 0xA) + 42) ^ (a20 + ((v21 + 102) ^ 0x53) - 50)) - 119) ^ (-71 * ((v23 + 112) ^ 0xEA));
  *(v23 - 144) = a1;
  *(v23 - 120) = v22 + 144;
  *(v23 - 131) = 93 - -71 * ((v23 + 112) ^ 0xEA);
  v24 = (*(v20 + 8 * (v21 + 902)))(v23 - 144);
  return (*(v20 + 8 * ((79 * (*(v23 - 128) != 95751194)) ^ v21)))(v24);
}

uint64_t sub_22203CD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, uint64_t a28, _DWORD *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unint64_t a45, unint64_t a46)
{
  *a27 = *a29;
  a27[1] = a29[1];
  a27[2] = a29[2];
  a27[3] = a29[3];
  a27[4] = a29[4];
  a27[5] = a29[5];
  return (*(v47 + 8 * (((v46 - 830) * (a46 < a45)) ^ v46)))();
}

uint64_t sub_22203CDF4@<X0>(int a1@<W8>)
{
  *(v2 - 7 + ~v5 + v3) = veor_s8(*(v1 - 7 + ~v5 + v3), 0x9C9C9C9C9C9C9C9CLL);
  v7 = ((a1 + 6) ^ 0xDDLL) + v5 == v3 - (v4 & 7);
  return (*(v6 + 8 * (((2 * v7) | (16 * v7)) ^ a1)))();
}

uint64_t sub_22203CE4C@<X0>(int a1@<W8>)
{
  v6 = v1;
  v5 = a1 + 827685407 * (((&v5 | 0x157FA1F5) - &v5 + (&v5 & 0xEA805E08)) ^ 0xEFD23A5) + 615;
  result = (*(v2 + 8 * (a1 ^ 0x4F9)))(&v5);
  *(v3 + 4) = 95751194;
  return result;
}

uint64_t sub_22203CEB8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + a8 - 1);
  v16 = (v15 ^ v13) + (v14 & (2 * v15)) - 12;
  v17 = v15 - 97;
  v18 = v15 + 3;
  if (((((((v8 + v9 - 96) ^ (v8 - 97)) + v11) & v12) ^ a4) & 0xFEu) <= v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  return (*(v10 + 8 * ((((v19 - 100) < 6u) * a5) ^ (v8 + v9 - 352) ^ (v8 + 415))))();
}

uint64_t sub_22203CF40()
{
  *(v4 - 152) = 55 * (((~(v4 + 88) | 0x28) + ((v4 + 88) | 0xD7)) ^ 0x9C) + (v0 + (v1 ^ 0xA1) - 5) * *(v2 + 6) + 5;
  *(v4 - 164) = (v1 + 1912812201) ^ (1511064119 * (((~(v4 - 168) | 0x3C1D5D28) + ((v4 - 168) | 0xC3E2A2D7)) ^ 0x4B9DFD9C));
  *(v4 - 160) = v2;
  v5 = (*(v3 + 8 * (v1 + 1328)))(v4 - 168);
  return (*(v3 + 8 * ((1223 * (*(v4 - 168) == 293435294)) ^ v1)))(v5);
}

uint64_t sub_22203D0D8()
{
  v5 = (v1 + 314) - 1089 + v0;
  v6 = *(v2 + v5 - 15);
  v7 = *(v2 + v5 - 31);
  v8 = v4 - 184 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v3 + 8 * ((52 * ((v0 & 0x7FFFFFE0) == 32)) ^ (v1 + 25))))();
}

uint64_t sub_22203D134(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = a2 ^ v5;
  v11 = (v6 - v4) < 0x20 || v9 < 8;
  return (*(v8 + 8 * (((a4 + (v7 ^ 0xD240389F) + ((v7 - 1055) | 0x42A) - 1203) * v11) ^ v7)))();
}

uint64_t sub_22203D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  (*(a4 + 8 * ((v34 + 790) ^ 0x58085595)))(a13 + 0x4094302000004DLL, 0x100004077774924);
  v35 = (*(a32 + 8 * ((v34 - 26) ^ 0x58085595)))();
  *v33 = v35;
  v33[1] = 1812433253 * ((v35 >> 30) ^ v35) + 1;
  return (*(a32 + 6096))(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, v32, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_22203D258(uint64_t result)
{
  v1 = *(result + 8) ^ (44841361 * ((-2 - ((result | 0x365F344C) + (~result | 0xC9A0CBB3))) ^ 0xA9CE36EF));
  v2 = *result;
  *v2 = HIBYTE(v1) ^ 0x16;
  v2[1] = BYTE2(v1) ^ 0x44;
  v2[2] = BYTE1(v1) ^ 0xF6;
  v2[3] = v1 ^ 0x38;
  return result;
}

void Mib5yocT()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *(&off_2835705E0 + ((-119 * (dword_27CFF2070 ^ 0x98 ^ dword_27CFFD0A0)) ^ byte_2222A7DB0[byte_2222A58E0[(-119 * (dword_27CFF2070 ^ 0x98 ^ dword_27CFFD0A0))] ^ 0x8D]) - 215);
  v1 = *(&off_2835705E0 + (*(off_283570688 + (*(off_283570950 + (-119 * ((dword_27CFFD0A0 + *v0) ^ 0x98))) ^ 0x7Au) - 8) ^ (-119 * ((dword_27CFFD0A0 + *v0) ^ 0x98))) + 91);
  v2 = (*(v1 - 4) - *v0) ^ &v4;
  *v0 = (1667229833 * v2) ^ 0xD89E539CF9C77798;
  *(v1 - 4) = 1667229833 * (v2 ^ 0xD89E539CF9C77798);
  v5[1] = 1159261966 - 439532179 * ((v5 + 563738863 - 2 * (v5 & 0x2199F8EF)) ^ 0xFF3FC56D);
  LOBYTE(v1) = -119 * ((*(v1 - 4) - *v0) ^ 0x98);
  v3 = *(&off_2835705E0 + ((-119 * (dword_27CFF2070 ^ 0x98 ^ dword_27CFFD0A0)) ^ byte_22229CF10[byte_2222A7CB0[(-119 * (dword_27CFF2070 ^ 0x98 ^ dword_27CFFD0A0))] ^ 0x29]) + 61);
  (*(v3 + 8 * ((*(off_2835706E8 + (*(off_283570970 + v1 - 4) ^ 0x74u) - 12) ^ v1) + 1398)))(v5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22203D500@<X0>(uint64_t a1@<X3>, _OWORD *a2@<X4>, uint64_t a3@<X8>)
{
  v7 = a2[1];
  v8 = (a1 + a3);
  *v8 = *a2;
  v8[1] = v7;
  LODWORD(v8) = (v5 & 0x60) - v4 == -850;
  return (*(v6 + 8 * ((2 * v8) | (4 * v8) | v3)))();
}

uint64_t sub_22203D864(int a1)
{
  *(v1 + 4) = 0x396965E2C380BFCLL;
  *v1 = 20;
  v3 = ((a1 - 1583722669) & 0x5E65B166) + 12;
  v5 = (4 << ((((a1 + 83) & 0x66) - 1) & 0x55 ^ 0x54)) >= 8 && v1 != -12;
  v6 = *(v2 + 8 * ((22 * v5) ^ v3));
  return v6(v6, 283, 156, -1172284735);
}

uint64_t sub_22203D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 263) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(v10 + 262) = (&a10 + ((v12 - 33) ^ 0x28)) * (&a10 ^ 0xBB);
  return (*(v11 + 8 * ((v12 - 68) ^ 0x4C)))();
}

uint64_t sub_22203DA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, unsigned int a12, char *a13, uint64_t a14, uint64_t a15, int a16)
{
  a12 = v20 + 439532179 * ((((2 * &a12) | 0x581215C6) - &a12 - 738790115) ^ 0xF2AF3761) + 713;
  a14 = v17;
  a15 = v21 + v16;
  a13 = &a10;
  v22 = (*(v18 + 8 * (v20 + 1283)))(&a12);
  return (*(v18 + 8 * ((891 * (a16 == ((v20 - 795101498) & 0x2F644D1D ^ v19))) ^ v20)))(v22);
}

uint64_t sub_22203DAEC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 12);
  *(v6 - 144) = (v5 + 1613849755) ^ (2072138273 * ((2 * ((v6 - 144) & 0x75CC798) - (v6 - 144) + 2023962727) ^ 0x91169A84));
  *(v6 - 135) = (v7 ^ 0xFC) - 33 * ((2 * ((v6 + 112) & 0x98) - (v6 + 112) + 103) ^ 0x84) + ((2 * v7) & 0xF8) + 48;
  *(v6 - 136) = ((((v3 ^ 0xF9) - 117) ^ ((v3 ^ 3) + 113) ^ ((v3 ^ 0x7B ^ (v5 + 120) ^ 3) - 110)) - 48) ^ (33 * ((2 * ((v6 + 112) & 0x98) - (v6 + 112) + 103) ^ 0x84));
  v8 = (*(v4 + 8 * (v5 + 976)))(v6 - 144);
  return (*(v4 + 8 * ((1783 * (*(v6 - 140) == 95751194)) ^ v5)))(v8, a2);
}

uint64_t sub_22203DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v12 + 1) = 5;
  *v11 = 0;
  v14 = bswap32(*(v10 + 8));
  v15 = (v14 + v10 + 11);
  *v15 = (&a9 ^ 0xBA) * (&a9 + 17);
  *(v15 - 1) = (&a9 + ((((v13 - 118) ^ 0x61) - 109) & 0xFB) + 90) * (&a9 ^ 0xBB);
  return (*(v9 + 8 * ((97 * (((v14 + 12) & (((v13 + 650) ^ 0x61u) + 0x1FFFFFCD5)) != 2)) ^ (v13 + 650) ^ 0x61)))();
}

uint64_t sub_222042D80(unint64_t a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = a1 < a7;
  *(v7 + v11) = a3;
  if (v12 == v11 + 1 > (v9 ^ a2) + a4)
  {
    v12 = v8 + v11 + 847 < a1;
  }

  return (*(v10 + 8 * ((2 * v12) | (8 * v12) | v9)))();
}

uint64_t sub_222042DD4()
{
  v4 = v3 + 1618189698 + ((v1 - 2105750990) & 0x7D83350D);
  v6 = v4 > 0xCB4A77CA && -884312053 - v0 > v4;
  return (*(v2 + 8 * ((28 * v6) ^ v1)))();
}

uint64_t sub_222042E78@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = a1 < v8;
  v10 = *(v4 + v6);
  v11 = v6 + 1;
  *(v3 + a2) = v10 - ((v10 << (((v5 - 82) ^ 0x11) & 0xB5)) & 0x38) - 100;
  if (v9 == v11 > v7)
  {
    v9 = v11 + v8 < a1;
  }

  return (*(v2 + 8 * (v5 | (4 * !v9))))();
}

uint64_t sub_222042EEC(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18.n128_u64[0] = 0x9C9C9C9C9C9C9C9CLL;
  v18.n128_u64[1] = 0x9C9C9C9C9C9C9C9CLL;
  return (*(v16 + 8 * ((228 * (a15 - ((((v15 + 350) ^ 0x369uLL) + v17) << ((6 * ((v15 + 94) ^ 0x43)) ^ 4u)) < 0x20)) ^ (v15 + 350))))(a1, a2, v18);
}

uint64_t sub_222042F7C@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W6>, int a5@<W8>)
{
  HIDWORD(v16) = a1 ^ v15;
  LODWORD(v16) = a1 ^ 0x68000000;
  v17 = (v7 ^ 0x20D8D07C) & (a4 ^ a5) ^ a4 & 0xB1F01719;
  v18 = (a3 ^ v14) + (v16 >> 27) + (*(v5 + 4 * (a2 + v11)) ^ v13) + (v17 & 0x57281115 ^ 0x46081014 ^ (v17 ^ 0x6EDFF8FE) & (v6 ^ 0x39FF298F) | a4 & 0x45045CF3 ^ 0x44041892 ^ (v7 ^ 0x2BD36469) & (a4 ^ v14)) + 142371045;
  v19 = (v18 ^ 0x461F53F6) & (2 * (v18 & 0x869F53F7)) ^ v18 & 0x869F53F7;
  v20 = ((2 * (v18 ^ 0x4F1152BA)) ^ 0x931C029A) & (v18 ^ 0x4F1152BA) ^ (2 * (v18 ^ 0x4F1152BA)) & v9;
  v21 = v20 ^ 0x48820145;
  v22 = (v20 ^ 0xC0008) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x26380534) & v21 ^ (4 * v21) & v9;
  v24 = (v23 ^ 0x80100) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0xC9860049)) ^ 0x98E014D0) & (v23 ^ 0xC9860049) ^ (16 * (v23 ^ 0xC9860049)) & (v9 - 12);
  v26 = v24 ^ (v9 + 1) ^ (v25 ^ 0x88800000) & (v24 << 8);
  return (*(v10 + 8 * ((29 * (a2 + 1 != v12 + 60)) ^ v8)))(v18 ^ (2 * ((v26 << 16) & 0x498E0000 ^ v26 ^ ((v26 << 16) ^ 0x14D0000) & (((v25 ^ 0x410E010D) << 8) & (v9 - 332) ^ 0x418E0000 ^ (((v25 ^ 0x410E010D) << 8) ^ 0xE010000) & (v25 ^ 0x410E010D)))) ^ 0x794C69F7);
}

uint64_t sub_222043448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32)
{
  v38 = v33 - v34 - 146;
  v39 = (*(v32 + 8 * (v33 + 749)))(a31 + 4, 0);
  v40 = a31[4] + 1333457439 - ((2 * a31[4]) & 0x9EF5E43E);
  a31[1] = a31[6] + 1333457439 - ((v38 ^ 0xC6FDB1AB) & (2 * a31[6]));
  a31[2] = v40;
  v41 = v33 + 757;
  v42 = (*(a32 + 8 * v41))(v39);
  a31[3] = v42 + 1333457439 - ((2 * v42) & 0x9EF5E43E);
  v43 = (*(a32 + 8 * v41))();
  *a31 = v43 + 1333457439 - ((2 * v43) & 0x9EF5E43E);
  v44 = 1511064119 * ((v37 - 144) ^ 0x9D8EB5BC887F5F4ALL);
  v35[1] = (*a31 ^ 0x4F7AF21F) + ((1664525 * (*v35 ^ (*v35 >> 30))) ^ v35[1]);
  *(v37 - 144) = (v38 + 1683596189) ^ v44;
  *(v37 - 120) = 623 - v44;
  *(v37 - 128) = ((v38 + 1683596197) ^ 0x90) + v44;
  *(v37 - 124) = v44 | 1;
  *(v37 - 112) = v38 + 1683596197 - v44;
  *(v37 - 104) = -310332759 - v44 + v38;
  *(v37 - 136) = 2 - v44;
  v45 = (*(a32 + 8 * (v38 ^ v36)))(v37 - 144);
  return (*(a32 + 8 * *(v37 - 108)))(v45);
}

uint64_t sub_2220436B0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v32 = a1 - 4;
  v33 = (a1 + 1991425306) & 0x894D42DF;
  v34 = (a1 + 21) | 0x496;
  *(v31 - 120) = v30 + 12;
  *(v31 - 112) = a1 - 4 - 2021301169 * (((v31 - 144) & 0x520BC394 | ~((v31 - 144) | 0x520BC394)) ^ 0x26026BCB) + 595;
  *(v31 - 144) = a23;
  *(v31 - 136) = &a28;
  (*(v28 + 8 * ((a1 - 4) ^ 0x62F)))(v31 - 144);
  return (*(v28 + 8 * (((*(v31 - 128) == v29) * (v34 ^ v33 ^ 0x6CB)) ^ v32)))(a25);
}

uint64_t sub_2220437E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, __int16 a22)
{
  *v23 = v27;
  v29 = *v24;
  *(v29 + 3) = 16908633;
  *(v29 + 2) = 76;
  *v29 = 20550;
  *(v29 + 7) = 0;
  *(v29 + 8) = bswap32(((2 * (a14 ^ 0x4C1)) ^ 0x33E) + v25);
  *(v29 + 12) = *v22;
  *(v29 + 13) = 0;
  *(v29 + 14) = a11;
  *(v29 + 15) = 0;
  a22 = (((&a19 - 2 * (&a19 & 0x3935C7BE) - 14402) ^ 0xFA3C) * v28) ^ 0xE4F;
  a21 = (a14 - 37) ^ (((&a19 - 2 * (&a19 & 0x3935C7BE) + 959825854) ^ 0xE793FA3C) * v28);
  a19 = v29 + 16;
  v30 = (*(v26 + 8 * (a14 + 254)))(&a19);
  *(v29 + 32) = bswap32(a13);
  return (*(v26 + 8 * ((221 * (v25 == (((a14 - 45) ^ 0xF650CCEE) & (2 * v25)))) ^ a14)))(v30);
}

uint64_t sub_222043910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *a1 = 1498173510;
  *(a1 + 4) = v21 ^ 0x18;
  *(a1 + 5) = 513;
  *(a1 + 7) = 0;
  *(a1 + 8) = -2113929216;
  *(a1 + 12) = 2;
  *(a1 + 13) = *(v20 + 14);
  *(v24 - 128) = (v23 + 702) ^ (344723623 * ((((v24 - 144) | 0x52A8889B) - (v24 - 144) + ((v24 - 144) & 0xAD577760)) ^ 0xA50BE552));
  *(v24 - 140) = (4263 * ((((v24 - 144) | 0x889B) - (v24 - 144) + ((v24 - 144) & 0x7760)) ^ 0xE552)) ^ 0x32D6;
  *(v24 - 136) = a1 + 14;
  v26 = (*(v22 + 8 * (v23 + 1280)))(v24 - 144);
  *(a1 + 14) = 256;
  v27 = a1 - a20 - 118 < ((v23 + 12) ^ 0x13DuLL);
  return (*(v22 + 8 * ((4 * v27) | (8 * v27) | v23)))(v26);
}

uint64_t sub_222043D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, char a32)
{
  v62 = *(v34 + 8 * v32);
  v53 = &a32 + a30;
  v54 = *(a18 + 76);
  v56 = *(a18 + 80);
  v55 = *(a18 + 84);
  v57 = *(a18 + 96);
  if (v57 == 2)
  {
    v60 = (v33 + v38 + 568841313);
    v61 = ((*v60 ^ v39) << 24) | ((v60[1] ^ v39) << 16) | ((v60[2] ^ v39) << 8);
    *v53 = (v61 | v60[3] ^ v39) + v36 - 2 * ((v61 | v60[3] ^ v39) & 0x7EB2B15F ^ (v60[3] ^ v39) & 1);
    return (*(v34 + 8 * ((((v38 + 568841317) < 0x40) | (32 * ((v38 + 568841317) < 0x40))) ^ a29)))(v54);
  }

  else if (v57 == 1)
  {
    v59 = *(v33 + v38 + 568841313) ^ v39 | ((*(v33 + v38 + 568841313 + 1) ^ (v37 + 110)) << 8) | ((*(v33 + v38 + 568841313 + 2) ^ v39) << 16) | ((*(v33 + v38 + 568841313 + 3) ^ v39) << 24);
    *&v53[4 * (v35 ^ 0x879F518)] = v59 + v36 - ((2 * v59) & 0xFD6562BC);
    return (*(v34 + 8 * (((2 * ((v38 + 568841317) > 0x3F)) | (4 * ((v38 + 568841317) > 0x3F))) ^ (v37 - 515))))(v54);
  }

  else
  {
    v40 = (((*(a18 + 72) ^ 0xD896D8BA) + 661202758) ^ ((*(a18 + 72) ^ 0xEC8F9E92) + 326132078) ^ ((*(a18 + 72) ^ 0x5ACE7EB2) - 1523482290)) + (((*(a18 + 72) ^ 0x183A9245) - 406491717) ^ ((*(a18 + 72) ^ 0x24C580C9) - 616923337) ^ ((*(a18 + 72) ^ 0x52282A16) - 1378363926)) - 166019446;
    v41 = v40 ^ ((v40 ^ 0xD5FB4BDB) + 845740403) ^ ((v40 ^ 0xA1CC0881) + 1180678697) ^ ((v40 ^ 0x9384F273) + 1947680987) ^ ((v40 ^ 0xFFDFFC7F) + 407654103) ^ 0x76BB75CC;
    v42 = (((v54 ^ 0x528522C) - 86528556) ^ ((v54 ^ 0x30FA23E4) - 821699556) ^ ((v54 ^ 0x5B054952) - 1527073106)) + (((*(a18 + 76) ^ 0xEAF92146) + 352771770) ^ ((*(a18 + 76) ^ 0xEB9D4A14) + 342013420) ^ ((*(a18 + 76) ^ 0x6FB353C8) - 1874023368)) + 1013324049;
    v43 = (v42 ^ 0x3C4C3FA2) & (2 * (v42 & 0xA1485823)) ^ v42 & 0xA1485823 ^ (((((v42 & 0xA1485823) >> 12) & 1) << 13) | 0x10004600);
    v44 = (2 * (v42 ^ 0x3C4C3FA2)) & 0x9D046780 ^ 0x85042081 ^ ((2 * (v42 ^ 0x3C4C3FA2)) ^ 0x3A08CF02) & (v42 ^ 0x3C4C3FA2);
    v45 = (4 * v43) & 0x9D046780 ^ v43 ^ ((4 * v43) ^ 0x40011800) & v44;
    v46 = (4 * v44) & 0x9D046780 ^ 0x89046181 ^ ((4 * v44) ^ 0x74119E04) & v44;
    v47 = (16 * v45) & 0x9D046780 ^ v45 ^ ((16 * v45) ^ 0x46000) & v46;
    v48 = (16 * v46) & 0x9D046780 ^ 0xD000781 ^ ((16 * v46) ^ 0xD0467810) & v46;
    v49 = v47 ^ 0x89044181 ^ (v47 << 8) & 0x9D046700 ^ ((v47 << 8) ^ 0x4260000) & v48;
    *(a18 + 72) = v41;
    *(a18 + 76) = v42 ^ (2 * ((v49 << 16) & 0x1D040000 ^ v49 ^ ((v49 << 16) ^ 0x67810000) & ((v48 << 8) & 0x1D040000 ^ 0x19000000 ^ ((v48 << 8) ^ 0x4670000) & v48))) ^ 0xFF97AFBB;
    v50 = (((v56 ^ 0xF92989E8) + 114718232) ^ ((v56 ^ 0x7AE2EB2) - 128855730) ^ ((v56 ^ 0x90509FC0) + 1873764416)) + (((*(a18 + 80) ^ 0xFD978895) + 40400747) ^ ((*(a18 + 80) ^ 0xF400959E) + 201288290) ^ ((*(a18 + 80) ^ 0x67402591) - 1732257169)) + 1347799582;
    v51 = (((v55 ^ 0xD2BCEFB7) + 759369801) ^ ((v55 ^ 0x51383F5B) - 1362640731) ^ ((v55 ^ 0xED53E876) + 313268106)) + (((*(a18 + 84) ^ 0x5031034F) - 1345389391) ^ ((*(a18 + 84) ^ 0xA4971A3) - 172585379) ^ ((*(a18 + 84) ^ 0x34AF4A76) - 883903094)) - 71760699;
    *(a18 + 80) = v50 ^ ((v50 ^ 0x204CDC1D) - 1391166711) ^ ((v50 ^ 0x6F04C07E) - 497260692) ^ ((v50 ^ 0x52383B66) - 547316620) ^ ((v50 ^ 0x6FD77FEF) - 493889285) ^ 0x1C706070;
    *(a18 + 84) = v51 ^ ((v51 ^ 0x74F1D98B) - 1794853402) ^ ((v51 ^ 0xA6F394F6) + 1191639193) ^ ((v51 ^ 0x33E70113) - 770544258) ^ ((v51 ^ 0xFFEFDFFF) + 505066386) ^ 0x70DDAB0B;
    return v62(486801408, 2298757505, a18, a23, a22, HIDWORD(a21), 3834510960, 968312894, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }
}

uint64_t sub_222043E8C()
{
  if (v3 <= ((v4 + 218) ^ (v1 + 2131)) + v0)
  {
    v6 = 16 - v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v5 + 8 * (v4 + 408)))(v3 + v6 + 56, 0x100004077774924);
  *v2 = v7;
  return (*(v5 + 8 * ((178 * (v7 != 0)) ^ v4)))(v7, v8, v9, v10, v11);
}

uint64_t sub_222043F14(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v18 = (v14 + 32 * a8);
  v19 = *(v11 + 9) * v12 % a2;
  *v18 = v8 + ((v16 + ((v19 + a5 - (v15 & (2 * v19))) << 10)) ^ (a4 + a6 - 502));
  *v9 += 1024;
  v20 = *(v11 + 9) * (v12 + 1) % a2;
  v18[1] = v8 + ((v16 + ((v20 + a5 - (v15 & (2 * v20))) << 10)) ^ a4);
  *v9 += 1024;
  v21 = *(v11 + 9) * (v12 + 2) % a2;
  v18[2] = v8 + ((v16 + ((v21 + a5 - (v15 & (2 * v21))) << 10)) ^ a4);
  *v9 += 1024;
  v22 = *(v11 + 9) * (v12 + 3) % a2;
  v18[3] = v8 + ((v16 + ((v22 + a5 - (v15 & (2 * v22))) << 10)) ^ a4);
  *v9 += 1024;
  return (*(v10 + 8 * (((a8 + 1 == v13) * v17) | a7)))();
}

uint64_t sub_222044130@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v8 = v6 - 1;
  *(a2 + v8) = *(v3 + (v8 & 0xF)) ^ *(v2 + v8) ^ *((v8 & 0xF) + v4 + 2) ^ *((v8 & 0xF) + v5 + 6) ^ ((v8 & 0xF) * ((62 * (a1 ^ 0x62)) ^ 0x97));
  return (*(v7 + 8 * ((a1 - 110) | (8 * (v8 == 0)))))();
}

uint64_t sub_222044198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, unint64_t a22, uint64_t a23, _DWORD *a24)
{
  *a24 = v26 + 1 - ((((v26 ^ 0x13FF) & v26) >> (__clz(v26 ^ 0x13FF | 1) ^ (((v28 - 126) ^ 0x95) - 75))) & 1);
  v29 = ((v25 ^ (v25 >> 11)) << 7) & 0x9D2C5680 ^ v25 ^ (v25 >> 11);
  *(*a20 + a22) ^= (v29 << (((v28 - 126) ^ 0x95) - 91)) & v27 ^ v29 ^ (((v29 << (((v28 - 126) ^ 0x95) - 91)) & v27 ^ v29) >> 18);
  return (*(v24 + 8 * ((v28 + 386) ^ 0x58085595 ^ (227 * (a22 < 0x1FC)))))();
}

uint64_t sub_222044260()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x13D)))();
  v3 = (*(v0 + 8 * (v1 + 352)))();
  return (*(v0 + 8 * (((v2 == v3) * ((((v1 - 1217) | 0x10E) + 1086) ^ v1 ^ 0xC2)) ^ v1)))(v3, v4);
}

uint64_t sub_2220442C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + v8 + 16);
  v11 = (v7 + v8);
  *v11 = *(a5 + v8);
  v11[1] = v10;
  return (*(v9 + 8 * ((2 * (v5 == v8)) | (4 * (v5 == v8)) | v6)))();
}

uint64_t sub_2220442F8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = 3 * (a1 ^ 0x222);
  *(a10 + 141) = (v30 - 4 + &a29) * (&a29 ^ 0xBA);
  *(a10 + 140) = (&a29 ^ 0xBB) * (&a29 + 18);
  return (*(v29 + 8 * (v30 ^ 0x30)))(a10);
}

void sub_22204438C(uint64_t a1)
{
  v1 = *(a1 + 16) + 827685407 * (a1 ^ 0x1B828250);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_2220444EC()
{
  if (v0)
  {
    v2 = 981;
  }

  else
  {
    v2 = 980;
  }

  return (*(v1 + 8 * v2))();
}

uint64_t sub_222044510@<X0>(int a1@<W8>)
{
  v5 = (v2 ^ 0xFFFFFFFFFFFFFD3CLL ^ ((v3 - 1254) | 0x2C3u)) + v1;
  v6 = __CFADD__(a1, v5);
  v7 = HIDWORD(v5);
  v9 = v6 || v7 != 0;
  return (*(v4 + 8 * ((v9 * (((v3 - 1254) ^ 0xA6) - 156)) ^ v3)))();
}

uint64_t sub_222044564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14)
{
  v18 = (*(v14 + 8 * (v16 + 1047)))(a13 - *(v15 + 14), 0x100004077774924);
  *v17 = v18;
  return (*(v14 + 8 * (((v18 != 0) * ((v16 + 368) ^ 0x34F)) ^ v16)))(a14);
}

uint64_t sub_2220445CC()
{
  *v1 = v3 - 352 + v1[623] - (((((v3 - 352) ^ v0) & v0) >> (__clz((v3 - 352) ^ v0 | 1) ^ 0x1F)) & 1) - 622;
  v5 = ~(((v3 - 740) ^ 0xFFFFFD7A) + v3 - 352) + v2 == ((v3 - 740) ^ 0xEB);
  return (*(v4 + 8 * (((2 * v5) | (16 * v5)) ^ (v3 - 740))))();
}

uint64_t sub_222044618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v35 = v32 ^ v33;
  *v34 = (v32 ^ v33) + 670542443 + (((a15 - v32) | (v32 - a15)) >> 31);
  (*(a3 + 8 * (v32 + 1533)))(a30);
  v36 = vld1q_dup_f32(v34);
  v37.i64[0] = 0x8000000080000000;
  v37.i64[1] = 0x8000000080000000;
  v38.i64[0] = 0x100000001;
  v38.i64[1] = 0x100000001;
  v39.i64[0] = *(v34 + 4);
  v39.i32[2] = *(v34 + 12);
  v40 = vextq_s8(v36, v39, 0xCuLL);
  v41 = v39;
  v41.i32[3] = *(v34 + 16);
  v42 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v41, vnegq_f32(v38)), vandq_s8(v40, v37)), 1uLL), *(v34 + 1588));
  v40.i32[0] = *(&STACK[0x4E8] + (*(v34 + 4) & (103 * (v35 ^ 0x5808559Fu) - 1029)));
  v40.i32[1] = *(&STACK[0x4E8] + (*(v34 + 8) & 1));
  v40.i32[2] = *(&STACK[0x4E8] + (*(v34 + 12) & 1));
  v40.i32[3] = *(&STACK[0x4E8] + (v41.i8[12] & 1));
  *v34 = veorq_s8(vaddq_s32(vsubq_s32(v42, vandq_s8(vaddq_s32(v42, v42), vdupq_n_s32(0x5168AEF6u))), vdupq_n_s32(0xA8B4577B)), v40);
  return (*(a32 + 8 * (v35 - 1476940142)))();
}

uint64_t sub_22204483C@<X0>(unint64_t a1@<X8>)
{
  v7 = a1 + v4;
  v8 = (v5 - 1197) & (v4 + 15);
  v9 = v1 - v4 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v8 + v2 + 2;
  v12 = v8 + v3;
  v13 = v12 + ((v5 + 254) ^ 0x5BELL) - v4;
  v14 = v12 + 4;
  v16 = v11 > a1 && v11 - v4 < v7;
  v18 = v10 > a1 && v9 < v7 || v16;
  if (v14 <= a1 || v13 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 8 * ((78 * v20) ^ v5)))();
}

uint64_t sub_222044914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, char a12, char a13, int a14, uint64_t a15)
{
  a15 = v17 + 12;
  a10 = v18;
  a11 = (v19 + 1104) ^ (1021229753 * ((2 * (&a10 & 0x5754798) - &a10 - 91572124) ^ 0x4467038E));
  a13 = 93 - -71 * ((2 * (&a10 & 0x98) - &a10 + 100) ^ 0x8E);
  a12 = ((v15 ^ 0x4D) + ((2 * v15) & 0xF3 ^ 0x60) - 17) ^ (-71 * ((2 * (&a10 & 0x98) - &a10 + 100) ^ 0x8E));
  (*(v16 + 8 * (v19 ^ 0x69B)))(&a10);
  return (*(v16 + 8 * (((a14 != 95751194) * (((v19 - 614228675) & 0x249C627D) + 312)) ^ v19)))(a1);
}

uint64_t sub_222044A58()
{
  v6 = *v4;
  *(v3 - 1) = *(v4 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v2 == 0) * v1) | v0)))();
}

uint64_t sub_222044AFC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a1 <= 0x30)
  {
    v7 = 48;
  }

  else
  {
    v7 = a1;
  }

  return (*(v5 + 8 * ((319 * (((((a5 + 106) ^ (v6 - 632)) + v7 + 1) & 0x7FFFFFC0) == v6)) ^ (a5 + 106))))();
}

uint64_t sub_222044F2C@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 1);
  *v1 = 2;
  return (*(v4 + 8 * (((v5 == 72) * (v2 ^ 0x475)) ^ a1)))();
}

uint64_t sub_222044F64@<X0>(_BYTE *a1@<X2>, unint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _BYTE *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = v42 - 849;
  v45 = (v44 - 2054160150) | 0x122688CD;
  v46 = v45 + 50;
  v87 = *(v43 + 8 * v44);
  v90 = (v45 - 758122958) & 0x957983A8;
  v89 = *(a42 + 18);
  v47 = *(a42 + 19);
  v48 = *(a3 - 12);
  v49 = *(a3 - 8);
  LOBYTE(v44) = *(a3 - 4);
  v50 = *(a3 - 3);
  v51 = *(a3 - 7);
  v52 = *(a3 - 11);
  LOBYTE(v45) = *(a3 - 15);
  v88 = (v46 & 0xA8 ^ 0xABu) % v47;
  v53 = *(a3 - 14);
  v54 = *(a3 - 6);
  v55 = *(a3 - 10);
  v56 = *(a3 - 2);
  v57 = *(a3 - 13);
  v58 = *(a3 - 9);
  v59 = *(a3 - 5);
  v60 = *(a3 - 1);
  v61 = *(a25 - 15) ^ *(*(a26 - 15) + (*a1 ^ (v90 - 12)));
  *a1 = v61 ^ a2;
  v62 = *(a25 - 11) ^ *(*(a26 - 11) + (v48 ^ a2));
  *(a3 - 12) = v62 ^ a2;
  v63 = *(a25 - 7) ^ *(*(a26 - 7) + (v49 ^ a2));
  *(a3 - 8) = v63 ^ a2;
  v64 = *(a25 - 3) ^ *(*(a26 - 3) + (v44 ^ a2));
  *(a3 - 4) = v64 ^ a2;
  LOBYTE(v44) = *(a25 - 2) ^ *(*(a26 - 2) + (v51 ^ a2));
  *(a3 - 3) = v44 ^ a2;
  v65 = *(a25 - 6) ^ *(*(a26 - 6) + (v52 ^ a2));
  *(a3 - 7) = v65 ^ a2;
  v66 = *(a25 - 10) ^ *(*(a26 - 10) + (v45 ^ a2));
  *(a3 - 11) = v66 ^ a2;
  LOBYTE(v45) = *(a25 - 14) ^ *(*(a26 - 14) + (v50 ^ a2));
  *(a3 - 15) = v45 ^ a2;
  v67 = *(a25 - 13) ^ *(*(a26 - 13) + (v54 ^ a2));
  *(a3 - 14) = v67 ^ a2;
  v68 = *(a25 - 5) ^ *(*(a26 - 5) + (v53 ^ a2));
  *(a3 - 6) = v68 ^ a2;
  v69 = *(a25 - 9) ^ *(*(a26 - 9) + (v56 ^ a2));
  *(a3 - 10) = v69 ^ a2;
  v70 = *(a25 - 1) ^ *(*(a26 - 1) + (v55 ^ a2));
  *(a3 - 2) = v70 ^ a2;
  v71 = *(a25 - 12) ^ *(*(a26 - 12) + (v58 ^ a2));
  *(a3 - 13) = v71 ^ a2;
  v72 = *(a25 - 8) ^ *(*(a26 - 8) + (v59 ^ a2));
  *(a3 - 9) = v72 ^ a2;
  v73 = *(a25 - 4) ^ *(*(a26 - 4) + (v60 ^ a2));
  *(a3 - 5) = v73 ^ a2;
  v74 = *a25 ^ *(*a26 + (v57 ^ a2));
  *(a3 - 1) = v74 ^ a2;
  v75 = (a42 + ((8 % v89) << 7));
  v76 = *(v75[148] + 4 * v45) ^ *(v75[147] + 4 * v61) ^ *(v75[149] + 4 * v67) ^ *(v75[150] + 4 * v71);
  *(a3 - 13) = HIBYTE(v76) ^ 0x9C;
  *(a3 - 14) = BYTE2(v76) ^ 0x9C;
  *(a3 - 15) = BYTE1(v76) ^ 0x9C;
  *a1 = v76 ^ 0x9C;
  v77 = &v75[4 * (v47 != 1) + 147];
  LODWORD(v77) = *(*(v77 + 8) + 4 * v66) ^ *(*v77 + 4 * v62) ^ *(*(v77 + 16) + 4 * v69) ^ *(*(v77 + 24) + 4 * v72);
  *(a3 - 9) = BYTE3(v77) - ((v77 >> 23) & 0x38) - 100;
  *(a3 - 10) = BYTE2(v77) - ((v77 >> 15) & 0x38) - 100;
  *(a3 - 11) = BYTE1(v77) - ((v77 >> 7) & 0x38) - 100;
  v78 = v77 ^ 0xFFFFFF9C;
  *(a3 - 12) = v77 ^ 0x9C;
  v79 = &v75[4 * (2 % v47) + 147];
  v80 = *(v79[1] + 4 * v65) ^ *(*v79 + 4 * v63) ^ *(v79[2] + 4 * v68) ^ *(v79[3] + 4 * v73);
  *(a3 - 5) = (~(v80 >> 23) | 0xC7) + HIBYTE(v80) - 99;
  *(a3 - 6) = BYTE2(v80) - ((v80 >> 15) & 0x38) - 100;
  *(a3 - 7) = BYTE1(v80) - ((v80 >> 7) & 0x38) - 100;
  *(a3 - 8) = v80 - ((2 * v80) & 0x38) - 100;
  v81 = &v75[4 * v88 + 147];
  v82 = *(*v81 + 4 * v64);
  v83 = *(*(v81 + 8) + 4 * v44);
  v84 = *(v81 + 16);
  LODWORD(v81) = *(*(v81 + 24) + 4 * v74);
  v85 = v82 ^ 0x8DBA06DE ^ v83 ^ *(v84 + 4 * v70) ^ (v81 - 1917188386 - ((2 * v81) & 0x1B740DBC));
  LODWORD(v81) = (v85 >> 8) - ((v85 >> 7) & 0x38);
  *(a3 - 1) = HIBYTE(v85) - ((v85 >> 23) & 0x38) - 100;
  *(a3 - 2) = BYTE2(v85) - ((v85 >> 15) & 0x38) - 100;
  *(a3 - 3) = v81 - 100;
  *(a3 - 4) = v85 - ((2 * v85) & 0x38) - 100;
  return (*(a32 + 8 * v90))(*(a32 + 8 * v90), 8, v90, (v81 - 100), v78, 0, a2, v75 + 147, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v87, a31, a32, v88);
}

uint64_t sub_222044FDC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v10 = a7[1];
  *(v8 + a6) = *a7;
  *(v8 + a6 + 16) = v10;
  return (*(v9 + 8 * ((95 * (((((((v7 - 1103) | 0x220) ^ 0xFFFFFFC3) & a2) == 32) ^ (53 * (((v7 - 79) | 0x20) ^ 0x24))) & 1)) ^ ((v7 - 1103) | 0x220))))();
}

uint64_t sub_222045044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v37 = v35 + v33 + 112;
  v38 = (*(v32 + 8 * (v33 | 0x146)))(&STACK[0x500], 0);
  v39 = LODWORD(STACK[0x508]) + 148739216 - ((2 * LODWORD(STACK[0x508])) & 0x11BB2920);
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x500]) + (v37 ^ 0x50D5C105) - ((2 * LODWORD(STACK[0x500])) & 0x11BB2920);
  LODWORD(STACK[0x4F4]) = v39;
  v40 = (*(a32 + 8 * (v33 + 334)))(v38);
  LODWORD(STACK[0x4FC]) = v40 + 148739216 - ((2 * v40) & 0x11BB2920);
  v41 = (*(a32 + 8 * (v33 ^ 0x15E)))();
  LODWORD(STACK[0x4F0]) = v41 + 148739216 - ((2 * v41) & 0x11BB2920);
  v34[1] = (LODWORD(STACK[0x4F0]) ^ 0x8DD9490) + ((1664525 * (*v34 ^ (*v34 >> 30))) ^ v34[1]);
  *(v36 - 120) = a28;
  *(v36 - 144) = a29 ^ (v37 + 1905148400) ^ 0x51;
  *(v36 - 136) = 2 - a29;
  *(v36 - 104) = -310332759 - a29 + v37;
  *(v36 - 112) = v37 + 1905148400 - a29;
  *(v36 - 128) = ((v37 + 1905148400) ^ 0x70) + a29;
  *(v36 - 124) = a29 ^ 1;
  v42 = (*(a32 + 8 * (v37 - 1476939693)))(v36 - 144);
  return (*(a32 + 8 * *(v36 - 108)))(v42);
}

uint64_t sub_2220453F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v30 = 1021229753 * ((((v29 - 136) ^ 0x51507ACC) + 943157138 - 2 * (((v29 - 136) ^ 0x51507ACC) & 0x38376F92)) ^ 0xD78AAEB4);
  v31 = (*(v27 + 96) - ((2 * *(v27 + 96)) & 0x1CDE375C) + 242162606) ^ v30;
  *(v29 - 136) = v30 + a14;
  *(v29 - 132) = v31;
  *(v29 - 128) = v27;
  v32 = (*(v28 + 8 * (a3 + 1433)))(v29 - 136);
  return (*(v28 + 8 * ((75 * ((*(v27 + 68) & ((a27 + 499) ^ 0x20Bu)) + 64 > 0x3F)) ^ (a27 + 874))))(v32, a13);
}

uint64_t sub_222045504(char a1)
{
  v8 = v2 + 2;
  v9 = v5 - 2;
  *(v9 + 527) = ((v3 + v8) ^ a1) * (v3 + v8 + 17);
  *(v9 + v1) = ((v3 + v8) ^ 0xBB) * (v3 + v8 + 18);
  return (*(v6 + 8 * (v7 ^ (8 * (v4 == v8)))))();
}

uint64_t sub_222045510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *a1 = 256;
  memset((a1 + 8), 156, 48);
  *(a1 + 56) = 2627509404;
  memset((a1 + 64), 156, 48);
  *(a1 + 112) = 2627509404;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 131) = 0;
  *(a1 + 259) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(a1 + 258) = (&a10 ^ 0xBB) * (&a10 + 18);
  return (*(v10 + 8 * ((57 * (((v11 - 774) ^ 0x1E8) != 128)) ^ (v11 - 302))))();
}

uint64_t sub_22204564C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + (v3 << ((7 * (v4 ^ 0x41)) ^ 0x15u)));
  v7 = vld4_s8(v5);
  v8.val[0] = v7.val[3];
  v8.val[1] = v7.val[2];
  v8.val[2] = v7.val[1];
  v8.val[3] = v7.val[0];
  vst4_s8(v5, v8);
  return (*(a1 + 8 * ((((v2 & 0x1FFFFFFF8) - 8 == v3) | (8 * ((v2 & 0x1FFFFFFF8) - 8 == v3))) ^ v4)))();
}

uint64_t sub_2220456B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = ((a11 & 0x8DF06606) << (v11 ^ 0x1D)) & (a11 ^ 0x6DEA56A7) ^ a11 & 0x8DF06606;
  v15 = ((2 * (a11 ^ 0x6F6ADEAB)) ^ 0xC535715A) & (a11 ^ 0x6F6ADEAB) ^ (2 * (a11 ^ 0x6F6ADEAB)) & 0xE29AB8AC;
  v16 = v15 ^ 0x228A88A5;
  v17 = (v15 ^ 0x4008308D) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0x8A6AE2B4) & v16 ^ (4 * v16) & 0xE29AB8AC;
  v19 = (v18 ^ 0x820AA0A9) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x60901809)) ^ 0x29AB8AD0) & (v18 ^ 0x60901809) ^ (16 * (v18 ^ 0x60901809)) & 0xE29AB8A0;
  v21 = v19 ^ 0xE29AB8AD ^ (v20 ^ 0x208A882D) & (v19 << 8);
  v22 = (v21 << 16) & 0x629A0000 ^ v21 ^ ((v21 << 16) ^ 0x38AD0000) & (((v20 ^ 0xC210302D) << 8) & 0xE29A0000 ^ 0x60020000 ^ (((v20 ^ 0xC210302D) << 8) ^ 0x1AB80000) & (v20 ^ 0xC210302D));
  v23 = ((((v13 - 120) | 0xF7403CA9) - ((v13 - 120) & 0xF7403CA9)) ^ 0x49AD8743) * a5;
  *(v13 - 120) = v23 + v11 - 1083642136;
  *(v13 - 116) = v23 ^ a11 ^ (2 * v22) ^ 0x7BA0CF2;
  *(v13 - 112) = a7;
  v24 = (*(v12 + 8 * (v11 + 1470)))(v13 - 120);
  return (*(v12 + 8 * ((446 * ((*(a7 + 68) & ((2 * (v11 ^ 0x29E)) ^ 0x53Bu)) + 64 > 0x3F)) ^ v11 ^ 0x29E)))(v24);
}

uint64_t sub_222045930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = v29 - 144;
  *(v29 - 144) = v26 + 2856;
  *(v29 - 136) = (v28 + 2089147696) ^ (439532179 * ((((v29 - 144) | 0x73FD012C) - (v29 - 144) + ((v29 - 144) & 0x8C02FED0)) ^ 0xAD5B3CAE));
  (*(v27 + 8 * (v28 + 576)))(v29 - 144);
  v31 = 2021301169 * ((((2 * v30) | 0x292B9992) - v30 - 345361609) ^ 0x9F639B69);
  *(v29 - 128) = v31 + 469501837;
  *(v29 - 124) = (v28 - 317) ^ v31;
  *(v29 - 144) = *(&off_2835705E0 + v28 - 862) - 8;
  *(v29 - 136) = v26 + 2856;
  (*(v27 + 8 * (v28 + 539)))(v29 - 144);
  v32 = 2021301169 * ((2 * (v30 & 0x7AF25DA0) - v30 + 84779614) ^ 0x8EFBF5FE);
  *(v29 - 144) = a26;
  *(v29 - 136) = v26 + 2856;
  *(v29 - 128) = v32 + 469501822;
  *(v29 - 124) = (v28 - 317) ^ v32;
  v33 = (*(v27 + 8 * (v28 ^ 0x625)))(v29 - 144);
  *(v26 + 2944) = *(v26 + 2856);
  LODWORD(STACK[0xC64]) = STACK[0xC0C];
  LODWORD(STACK[0xC68]) = STACK[0xC10];
  STACK[0xC6C] = STACK[0xC14];
  LODWORD(STACK[0xC74]) = STACK[0xC1C];
  v34 = *&STACK[0xC30];
  *&STACK[0xC78] = *&STACK[0xC20];
  *&STACK[0xC88] = v34;
  return (*(v27 + 8 * ((308 * (v28 == 999)) ^ (v28 - 223))))(v33);
}

uint64_t sub_222045B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, unsigned int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54)
{
  v59 = v57 + a36;
  *(v58 - 144) = v54 - 44841361 * ((2 * (((v58 - 144) ^ 0x498770B4) & 0x1F079048) - ((v58 - 144) ^ 0x498770B4) + 1626894261) ^ 0x4911E25D) + 1276;
  *(v58 - 120) = v59;
  *(v58 - 112) = &a54;
  *(v58 - 136) = a30;
  *(v58 - 128) = &a35;
  (*(v55 + 8 * (v54 ^ 0x615)))(v58 - 144);
  return (*(v55 + 8 * (((*(v58 - 104) == v56) * (((2 * v54) ^ 0x4A4) - 31)) ^ v54)))(a32);
}

uint64_t sub_222045C24@<X0>(int a1@<W0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = ((a1 ^ 0x2A0u) + 123 - 461) & (v6 + 15);
  v9 = -a3 - v6;
  v11 = a2 >= 0x10 && (v9 + v3 + v8 + 1) >= 0x10 && (v9 + v4 + v8 + 3) >= 0x10;
  v12 = v9 + v5 + v8 + 7;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * ((56 * v14) | a1)))();
}

uint64_t sub_222045C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, uint64_t a30, int a31, uint64_t a32)
{
  v46 = v44 + 1;
  v47 = (a9 + 16);
  v48 = (v32 + 128);
  v49 = *(*(v48 - 15) + v42);
  *a8 = v49;
  v50 = *(*(v48 - 11) + v37);
  a8[4] = v50;
  v51 = *(*(v48 - 7) + v36);
  a8[8] = v51;
  v52 = *(*(v48 - 3) + v35);
  a8[12] = v52;
  v53 = *(*(v48 - 10) + v40);
  a8[1] = v53;
  v54 = *(*(v48 - 6) + v45);
  a8[5] = v54;
  v55 = *(*(v48 - 2) + a3);
  a8[9] = v55;
  v56 = *(*(v48 - 14) + a2);
  a8[13] = v56;
  v57 = *(*(v48 - 5) + a5);
  a8[2] = v57;
  v58 = *(*(v48 - 13) + v34);
  a8[10] = v58;
  v59 = *(*(v48 - 1) + v33);
  a8[6] = v59;
  v60 = *(*(v48 - 9) + a6);
  a8[14] = v60;
  v61 = *(*(v48 - 4) + a7);
  a8[15] = v61;
  v62 = *(*(v48 - 8) + a4);
  a8[11] = v62;
  v63 = *(*(v48 - 12) + v39);
  a8[7] = v63;
  v64 = *(*v48 + v43);
  a8[3] = v64;
  v65 = (a32 + ((v46 % v38) << 7));
  v66 = v65 + 147;
  LODWORD(v49) = *(v65[148] + 4 * v53) ^ *(v65[147] + 4 * v49) ^ *(v65[149] + 4 * v57) ^ *(v65[150] + 4 * v64);
  a8[3] = BYTE3(v49);
  a8[2] = v49 >> a24;
  *a8 = v49;
  v67 = *(v66[4 * a30 + 1] + 4 * v54) ^ *(v66[4 * a30] + 4 * v50) ^ *(v66[4 * a30 + 2] + 4 * v59) ^ *(v66[4 * a30 + 3] + 4 * v63);
  a8[7] = HIBYTE(v67);
  a8[6] = BYTE2(v67);
  a8[5] = BYTE1(v67);
  *a29 = v67;
  LODWORD(v51) = *(v66[4 * a26 + 1] + 4 * v55) ^ *(v66[4 * a26] + 4 * v51) ^ *(v66[4 * a26 + 2] + 4 * v58) ^ *(v66[4 * a26 + 3] + 4 * v62);
  a8[11] = BYTE3(v51);
  a8[10] = BYTE2(v51);
  a8[9] = BYTE1(v51);
  *a28 = v51;
  LODWORD(v52) = *(v66[4 * a25 + 1] + 4 * v56) ^ *(v66[4 * a25] + 4 * v52) ^ *(v66[4 * a25 + 2] + 4 * v60) ^ *(v66[4 * a25 + 3] + 4 * v61);
  a8[15] = BYTE3(v52);
  a8[14] = BYTE2(v52);
  a8[13] = BYTE1(v52);
  *a27 = v52;
  *a8 = *(v47 - 15) ^ v49;
  v68 = (*(v47 - 14) ^ BYTE1(v49));
  a8[1] = *(v47 - 14) ^ BYTE1(v49);
  a8[2] = *(v47 - 13) ^ (v49 >> a24);
  a8[3] = *(v47 - 12) ^ BYTE3(v49);
  *(a8 + 2) = *(v47 - 11) ^ v67;
  v69 = (*(v47 - 9) ^ BYTE2(v67));
  a8[6] = *(v47 - 9) ^ BYTE2(v67);
  v70 = (*(v47 - 8) ^ HIBYTE(v67));
  a8[7] = *(v47 - 8) ^ HIBYTE(v67);
  *(a8 + 4) = *(v47 - 7) ^ v51;
  v71 = (*(v47 - 5) ^ BYTE2(v51));
  a8[10] = *(v47 - 5) ^ BYTE2(v51);
  v72 = (*(v47 - 4) ^ BYTE3(v51));
  a8[11] = *(v47 - 4) ^ BYTE3(v51);
  a8[12] = *(v47 - 3) ^ v52;
  v73 = (*(v47 - 2) ^ BYTE1(v52));
  a8[13] = *(v47 - 2) ^ BYTE1(v52);
  a8[14] = *(v47 - 1) ^ BYTE2(v52);
  a8[15] = *v47 ^ BYTE3(v52);
  return (*(v41 + 8 * ((116 * (v46 != 8)) ^ a31)))(a1, v68, v73, v70, v71, v69, v72);
}

uint64_t sub_222045CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v34 = 15 * (v30 ^ 0x41);
  if (((a17 - v30) | (v30 - a17)) > v34 - 976)
  {
    v35 = 0x80000000;
  }

  else
  {
    v35 = 0x7FFFFFFF;
  }

  *v31 = v35;
  (*(v32 + 8 * (v30 + 1533)))(a30);
  v36 = v31[1];
  v37 = v31[412 * (v34 ^ 0x3CD) - 427] ^ 0x9461827D ^ ((v36 & 0x7FFFFFFE | *v31 & 0x80000000) >> 1) ^ *(v33 - 160 + 4 * (v36 & 1));
  v38 = v31[398] ^ 0x9461827D ^ ((v31[2] & 0x7FFFFFFE | v36 & 0x80000000) >> 1) ^ *(v33 - 160 + 4 * (v31[2] & 1));
  *v31 = v37;
  v31[1] = v38;
  return (*(v32 + 8 * (v34 - 514)))();
}

uint64_t sub_222045DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W4>, int a4@<W5>, int a5@<W8>)
{
  v8 = a1 < v5;
  *(v6 + (a5 - 469902835)) = -31;
  if (v8 == a5 + 228547249 < v5)
  {
    v8 = a5 + 228547249 < a1;
  }

  return (*(v7 + 8 * ((v8 * a3) ^ (a4 - 811))))(a1, a2, a5 + 228547249 < a1);
}

void sub_222045F4C(uint64_t a1)
{
  v1 = 1380645169 * ((a1 - 1692345465 - 2 * (a1 & 0x9B20DB87)) ^ 0x19E5D3D7);
  if (*(a1 + 16))
  {
    v2 = (*a1 ^ v1) == 947247454;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22204601C(uint64_t a1)
{
  v6 = *(v1 + a1 - 1);
  v7 = v6 + (v5 ^ v2);
  if ((v6 - 97) >= 0x1A)
  {
    v7 = *(v1 + a1 - 1);
  }

  v8 = (v7 + ((v5 - 116) ^ v4)) > 5u;
  return (*(v3 + 8 * ((v8 | (4 * v8)) ^ v5)))();
}

uint64_t sub_222046024@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, char a6@<W8>)
{
  v15 = v6 & 0x78324094 ^ 0x97EDFF6F ^ (a1 ^ (((a2 - 665) | 0x406) - 384138301)) & (v6 ^ v12);
  v16 = ((a3 ^ 0xE6997711) + 426150127) ^ ((a3 ^ 0x381E901) - 58845441) ^ ((a3 ^ 0x8BCFA68A) + 1949325686);
  v17 = *(v7 + 4 * (*(v8 + a5 + v13) - 86));
  v18 = v16 + *(v9 + 4 * (a5 + v13)) + ((v15 + v12 - ((2 * v15) & 0xDDAE7134)) ^ a4);
  LOBYTE(v16) = *(v10 + a5 + v13);
  v19 = (v16 - 38) ^ 0xF4;
  v20 = (2 * ((v16 - 38) & 0x14)) & v19 ^ ((v16 - 38) & 0x14 | 0x60) ^ ((2 * ((v16 - 38) & 0x14)) & 0x67 | 0x80);
  v21 = (2 * v19) & 0xE0 ^ 0x20 ^ ((2 * v19) ^ 0xC0) & v19;
  v22 = (4 * v20) & 0xE0 ^ v20 ^ ((4 * v20) ^ 0x80) & v21;
  v23 = v18 - 1890723000 + (((v17 ^ 0x83FDF6AB) + 2080508245) ^ ((v17 ^ 0x7DD0D859) - 2110838873) ^ ((v17 ^ 0x9F9FAC) - 10461100));
  LOBYTE(v17) = v22 ^ (16 * v22) & 0xE0 ^ (16 * v22) & ((4 * v21) & 0xE0 ^ 0x60 ^ ((4 * v21) ^ 0x80) & v21) ^ 0x80;
  v24 = v23 ^ ((v23 ^ 0xDD78F2D6) + 238702861) ^ ((v23 ^ 0x255D94C4) - 165726433) ^ ((v23 ^ 0x6FA7C5C0) - 1125816805) ^ ((v23 ^ 0xBB3FFFF7) + 1753046062) ^ 0x2CBD5C25;
  v25 = (((a1 ^ 0x563503C1) - 1446314945) ^ ((a1 ^ 0x541EB64E) - 1411298894) ^ ((a1 ^ 0x6CFC8D15) - 1828490517)) - 827348262 + ((v24 << (((v16 - 38) ^ (2 * v17)) & 0x17 ^ 0x14) << (((v16 - 38) ^ (2 * v17)) & 8)) | (v24 >> (a6 - v16)));
  return (*(v11 + 8 * ((14 * (a5 + 1 == v14 + 64)) | a2)))(v25 ^ ((v25 ^ 0x20CF39AC) - 2132233196) ^ ((v25 ^ 0x596AD46D) - 112371245) ^ ((v25 ^ 0x5882606E) - 123343406) ^ ((v25 ^ 0x7EFFFFEF) - 556240303) ^ 0x310F4ADAu);
}

uint64_t sub_222046474@<X0>(int8x8_t *a1@<X8>)
{
  v5 = veor_s8(v2[1], 0x9C9C9C9C9C9C9C9CLL);
  *a1 = veor_s8(*v2, 0x9C9C9C9C9C9C9C9CLL);
  a1[1] = v5;
  return (*(v3 + 8 * ((281 * (((v1 + 1385846833) & 0xAD65A397) - 391 == (v4 & 0x70))) ^ (v1 - 418))))();
}

uint64_t sub_2220464DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v60 = (v54 - 34);
  v61 = v55 + v56 + v59;
  v62 = (v61 + v58 + 1);
  *v62 = (&a54 ^ 0xBA) * (&a54 + 17);
  *(v62 - 1) = (v60 ^ 0x35 ^ &a54 ^ 0x9D) * (&a54 + 18);
  return (*(a37 + 8 * ((38 * (v61 != ((v60 - 530) & v57))) ^ v60)))();
}

void sub_2220465DC()
{
  *(v0 - 144) = (((*(v0 - 192) - 287) | 0x44) - 721458040) ^ *(v0 - 208);
  *(v0 - 152) = *(v0 - 204) ^ 0x8E0A0EE4;
  *(v0 - 156) = *(v0 - 200) ^ 0xA86E211A;
  *(v0 - 148) = *(v0 - 196) ^ 0xE8E738F7;
  JUMPOUT(0x222040DDCLL);
}

uint64_t sub_222046704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, _DWORD *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v41 = (-((v38 - 5120) ^ (v38 - 5120)) | (v38 - 5120)) >> 63;
  *a24 = v38 + 1;
  v42 = (((v37 >> (v41 + 10)) ^ v37) << 7) & 0x9D2C5680 ^ (v37 >> (v41 + 10)) ^ v37;
  v43 = v40 & (v42 << 15) ^ v42 ^ ((v40 & (v42 << 15) ^ v42) >> 18);
  v44 = &a37 + (a20 - 1);
  v45 = 1999407021 * ((*(*v39 + (*a26 & 0x777AA3AC)) ^ v44) & 0x7FFFFFFF);
  v46 = 1999407021 * (HIWORD(v45) ^ v45);
  LODWORD(v46) = *(off_283570678 + (v46 >> 24) - 4) ^ *(off_283570980 + (v46 >> 24) - 12) ^ *(off_283570730 + (v46 >> 24) - 11) ^ v46 ^ (5 * (v46 >> 24));
  *v44 = v46 ^ v43;
  return (*(a1 + 8 * ((694 * (a20 == (v46 != v43))) ^ 0x12F)))();
}

uint64_t sub_2220469A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(v9 + a7 + 16);
  *(v8 + a6) = *(v9 + a7);
  *(v8 + a6 + 16) = v12;
  return (*(v11 + 8 * ((((v7 & 0xFFFFFFFFFFFFFFE0) == 32) * (((v10 - 1183528328) & 0x468B37FB) + 667)) ^ v10)))();
}

uint64_t sub_222046AE8@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W8>, int8x16_t a4@<Q1>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int32x4_t a8@<Q7>)
{
  v10 = (v9 + 908);
  v11 = vld1q_dup_f32(v10);
  v12 = (a3 - 1074291625) & 0xE8000FDF;
  a4.i32[0] = *(v9 + 912);
  a4.i32[1] = *(v9 + 4 * (v12 - 392) + 644);
  a4.i32[2] = *(v9 + 920);
  v13 = vextq_s8(v11, a4, 0xCuLL);
  v14 = a4;
  v14.i32[3] = *(v9 + 924);
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v14, a6), vandq_s8(v13, a5)), 1uLL), *v9);
  v13.i32[0] = *(v8 + 4 * (*(v9 + 912) & 1));
  v13.i32[1] = *(v8 + 4 * (*(v9 + 4 * (v12 - 392) + 644) & 1));
  v13.i32[2] = *(v8 + 4 * (*(v9 + 920) & 1));
  v13.i32[3] = *(v8 + 4 * (v14.i8[12] & 1));
  *(v9 + 908) = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), a7)), a8), v13);
  return (*(a1 + 8 * ((a2 + a3 - 243) ^ 0xFA)))();
}

uint64_t sub_222046C48@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 + 32);
  v7 = *(v6 - 88);
  *(v6 - 1) = *(v6 - 104);
  *v6 = v7;
  return (*(v3 + 8 * (((v1 + 32 == a1) * v4) ^ v5)))();
}

uint64_t sub_222046C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = (v7 - 986024607) & 0x3AC587F5;
  *(a3 + (v11 ^ 0xFFFFFE9F) + v8) = a6;
  return (*(v9 + 8 * (v11 ^ ((v6 == 1) * v10))))();
}

uint64_t sub_222046C80(uint64_t result, double a2)
{
  v3 = LOBYTE(a2) | BYTE4(a2) | ((LODWORD(a2) | HIDWORD(a2)) >> 16);
  v4 = v3 | ((v3 & 0xF0) >> 4) | (((v3 | ((v3 & 0xF0) >> 4)) & 0xFC) >> 2);
  *(result + 40) = -42084 * (((v2 + 53) ^ 0x70) & (v4 | ((v4 & 0xFE) >> 1))) + 95751194;
  return result;
}

uint64_t sub_222046F08(uint64_t a1, uint64_t a2)
{
  v8 = v5 + 4 * (v3 + a2);
  *(v5 + 4 * (v3 + a2 + 27 * (v2 ^ 0x74u)) - 648) = v6 ^ __ROR4__(*(v8 - 32) ^ *(v8 - 12) ^ *(v8 - 56) ^ *(v8 - 64), 31);
  return (*(v7 + 8 * ((515 * (a2 + 1 == v4 + 80)) ^ v2)))(1772928543);
}

uint64_t sub_222046F80@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v7 = *(a1 + v3 + 16);
  v8 = (v5 + a2);
  *v8 = *(a1 + v3);
  v8[1] = v7;
  return (*(v6 + 8 * ((((v2 & 0xFFFFFFFFFFFFFFE0) == 32) * (v4 - 331)) ^ v4)))(a2 + 32, a1 + v3 + 48);
}

uint64_t sub_222046FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned __int8 *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _BYTE *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *a34 ^= *a40 ^ 0x3A;
  a34[1] ^= (v46 + 93) ^ a40[1] ^ 0x95;
  a34[2] ^= a40[2] ^ 0x3A;
  a34[3] ^= a40[3] ^ 0x3A;
  a34[4] ^= a40[4] ^ 0x3A;
  a34[5] ^= a40[5] ^ 0x3A;
  a34[6] ^= a40[6] ^ 0x3A;
  a34[7] ^= a40[7] ^ 0x3A;
  a34[8] ^= a40[8] ^ 0x3A;
  a34[9] ^= a40[9] ^ 0x3A;
  a34[10] ^= a40[10] ^ 0x3A;
  a34[11] ^= a40[11] ^ 0x3A;
  a34[12] ^= a40[12] ^ 0x3A;
  a34[13] ^= a40[13] ^ 0x3A;
  a34[14] ^= a40[14] ^ 0x3A;
  v83 = a46 + 7;
  a34[15] ^= a40[15] ^ 0x3A;
  v87 = *(a45 + 18);
  v48 = a34[4];
  v49 = a34[8];
  v50 = a34[12];
  v51 = *(a45 + 19);
  v88 = v46 + 319;
  v86 = v51 != ((v46 + 63) ^ 0x90);
  v85 = 2 % v51;
  v52 = a34[1];
  v53 = a34[5];
  v54 = a34[9];
  v55 = a34[13];
  v84 = 3 % v51;
  v56 = a34[2];
  v57 = a34[10];
  v58 = a34[6];
  v59 = a34[14];
  v60 = a34[15];
  v61 = a34[11];
  v62 = a34[7];
  v63 = a34[3];
  v64 = *(*(a45 + 24) + *a34);
  *a34 = v64;
  v65 = *(*(a45 + 56) + v48);
  a34[4] = v65;
  v66 = *(*(a45 + 88) + v49);
  a34[8] = v66;
  v67 = *(*(a45 + 120) + v50);
  a34[12] = v67;
  v68 = *(*(a45 + 64) + v53);
  a34[1] = v68;
  v69 = *(*(a45 + 96) + v54);
  a34[5] = v69;
  v70 = *(*(a45 + 128) + v55);
  a34[9] = v70;
  v71 = *(*(a45 + 32) + v52);
  a34[13] = v71;
  v72 = *(*(a45 + 104) + v57);
  a34[2] = v72;
  v73 = *(*(a45 + 40) + v56);
  a34[10] = v73;
  v74 = *(*(a45 + 136) + v59);
  a34[6] = v74;
  v75 = *(*(a45 + 72) + v58);
  a34[14] = v75;
  v76 = *(*(a45 + 112) + v61);
  a34[15] = v76;
  v77 = *(*(a45 + 80) + v62);
  a34[11] = v77;
  v78 = *(*(a45 + 48) + v63);
  a34[7] = v78;
  v79 = *(*(a45 + 144) + v60);
  a34[3] = v79;
  v80 = (a45 + ((0 % v87) << 7));
  v81 = v80 + 147;
  LODWORD(v80) = *(v80[148] + 4 * v68) ^ *(v80[147] + 4 * v64) ^ *(v80[149] + 4 * v72) ^ *(v80[150] + 4 * v79);
  a34[3] = BYTE3(v80);
  a34[2] = BYTE2(v80);
  LODWORD(v72) = v80 >> ((v88 + 60) ^ 0xC5);
  a34[1] = v72;
  *a34 = v80;
  LODWORD(v61) = *(v81[4 * v86 + 1] + 4 * v69) ^ *(v81[4 * v86] + 4 * v65) ^ *(v81[4 * v86 + 2] + 4 * v74) ^ *(v81[4 * v86 + 3] + 4 * v78);
  LODWORD(v74) = BYTE3(v61);
  a34[7] = BYTE3(v61);
  LODWORD(v65) = WORD1(v61);
  a34[6] = BYTE2(v61);
  LODWORD(v64) = v61 >> 8;
  *(a34 + 2) = v61;
  LODWORD(v78) = *(v81[4 * v85 + 1] + 4 * v70) ^ *(v81[4 * v85] + 4 * v66) ^ *(v81[4 * v85 + 2] + 4 * v73) ^ *(v81[4 * v85 + 3] + 4 * v77);
  a34[11] = BYTE3(v78);
  a34[10] = BYTE2(v78);
  *(a34 + 4) = v78;
  LODWORD(v81) = *(v81[4 * v84 + 1] + 4 * v71) ^ *(v81[4 * v84] + 4 * v67) ^ *(v81[4 * v84 + 2] + 4 * v75) ^ *(v81[4 * v84 + 3] + 4 * v76);
  a34[15] = BYTE3(v81);
  a34[14] = BYTE2(v81);
  *(a34 + 6) = v81;
  *a34 = *(v83 - 7) ^ v80;
  a34[1] = *(v83 - 6) ^ v72;
  a34[2] = *(v83 - 5) ^ BYTE2(v80);
  a34[3] = *(v83 - 4) ^ BYTE3(v80);
  a34[4] = *(v83 - 3) ^ v61;
  LOBYTE(v61) = *(v83 - 2) ^ BYTE1(v61);
  a34[5] = *(v83 - 2) ^ v64;
  a34[6] = *(v83 - 1) ^ v65;
  a34[7] = *v83 ^ v74;
  *(a34 + 4) = *(v83 + 1) ^ v78;
  a34[10] = *(v83 + 3) ^ BYTE2(v78);
  a34[11] = *(v83 + 4) ^ BYTE3(v78);
  *(a34 + 6) = *(v83 + 5) ^ v81;
  a34[14] = *(v83 + 7) ^ BYTE2(v81);
  a34[15] = *(v83 + 8) ^ BYTE3(v81);
  return (*(v47 + 8 * (v88 ^ 0x3E)))(v61);
}

uint64_t sub_222047140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a69 = ((((v69 - 49) & 0xEF) + 43) ^ &a33) * (&a33 + 17);
  a68 = (&a33 ^ 0xBB) * (&a33 + 18);
  return (*(v70 + 8 * (v69 + 53)))(a21, 95751194);
}

_DWORD *sub_2220471CC()
{
  v8 = 69 * v3[4] + 125;
  v9 = 63 * v3[5];
  v10 = v3[6];
  v11 = 1380645169 * ((~(v7 - 144) & 0x6C16114D | (v7 - 144) & 0x93E9EEB2) ^ 0xEED3191D);
  *(v7 - 136) = v5;
  *(v7 - 128) = v6;
  *(v7 - 116) = v11 + v0 + 1150;
  *(v7 - 143) = v8 ^ (49 * ((~(v7 + 112) & 0x4D | (v7 + 112) & 0xB2) ^ 0x1D));
  *(v7 - 140) = (v1 ^ ((v1 ^ 0xD48411AE) + 785310284) ^ ((v1 ^ 0x4AFDC6B3) - 1330170537) ^ ((v1 ^ 0x64376431) - 1635936299) ^ ((v1 ^ 0xFFFBBF36) + 95505620) ^ 0xC4CC7158) + v11;
  *(v7 - 120) = (v10 + ((v0 + 41) ^ 0x56)) ^ (49 * ((~(v7 + 112) & 0x4D | (v7 + 112) & 0xB2) ^ 0x1D));
  *(v7 - 144) = (v9 + 31) ^ (49 * ((~(v7 + 112) & 0x4D | (v7 + 112) & 0xB2) ^ 0x1D));
  (*(v2 + 8 * (v0 | 0x4DD)))(v7 - 144);
  result = v13;
  *v4 = -1;
  *v13 = v1;
  return result;
}

uint64_t sub_222047358@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 + a1;
  v6.i64[0] = 0x9C9C9C9C9C9C9C9CLL;
  v6.i64[1] = 0x9C9C9C9C9C9C9C9CLL;
  v7 = veorq_s8(*(v2 + a1 + 16), v6);
  *(v5 + 24) = veorq_s8(*(v2 + a1), v6);
  *(v5 + 40) = v7;
  return (*(v4 + 8 * ((336 * (a1 + 32 == 5 * (v1 ^ 0x471u) - 161)) ^ v1)))();
}

uint64_t sub_2220473E8()
{
  v6 = (v0 + 32);
  v7 = (v3 + 32);
  v8 = *v6;
  *(v7 - 1) = *(v6 - 1);
  *v7 = v8;
  return (*(v5 + 8 * (((v2 == 32) * (3 * v4 - 989)) ^ v1)))();
}

uint64_t sub_2220473F8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = (v6 + 4 * a2);
  v8 = v3 & 0x80000000;
  v9 = a2 + 1;
  v10 = *(v6 + 4 * v9);
  v11 = v7[397] ^ ((v10 & 0x7FFFFFFE | v8) >> 1);
  *v7 = (v11 + v4 - ((v2 - 428 + v5) & (2 * v11))) ^ *(&STACK[0x4E8] + (v10 & 1));
  return (*(a1 + 8 * (((4 * (v9 != 227)) | (16 * (v9 != 227))) ^ v2)))();
}

uint64_t sub_222047460(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v1 = *a1 - 439532179 * ((-2 - ((a1 | 0xA1463DD2) + (~a1 | 0x5EB9C22D))) ^ 0x801FFFAF);
  return (*(*(&off_2835705E0 + (v1 ^ 0x36F)) + ((v3 * (((v1 - 1788050105) & 0x6A9377FF) - 289)) ^ v1)))();
}

uint64_t sub_2220474FC()
{
  (*(v3 + 8 * ((v0 + 1006) ^ 0x600)))(*v2);
  *v2 = 0;
  *v1 = 0;
  return (v4 - 95751194);
}

void U4HBs()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *(&off_2835705E0 + (*(off_283570610 + (*(off_283570828 + (-119 * (dword_27D0080E0 ^ 0x98 ^ dword_27CFFD0A0)) - 4) ^ 0xABu)) ^ (-119 * (dword_27D0080E0 ^ 0x98 ^ dword_27CFFD0A0))) - 119);
  v1 = *(&off_2835705E0 + (*(off_283570688 + (*(off_283570950 + (-119 * ((dword_27CFFD0A0 - *v0) ^ 0x98))) ^ 0x40u) - 8) ^ (-119 * ((dword_27CFFD0A0 - *v0) ^ 0x98))) + 2);
  v2 = *v0 - &v4 + *(v1 - 4);
  *v0 = (1667229833 * v2) ^ 0xD89E539CF9C77798;
  *(v1 - 4) = 1667229833 * (v2 ^ 0xD89E539CF9C77798);
  v5[1] = 1159261966 - 439532179 * (((v5 | 0xD9D1186A) - (v5 & 0xD9D1186A)) ^ 0x77725E8);
  LOBYTE(v1) = -119 * ((*(v1 - 4) - *v0) ^ 0x98);
  v3 = *(&off_2835705E0 + ((-119 * ((dword_27CFFD0A0 + dword_27D0080E0) ^ 0x98)) ^ byte_22229D210[byte_2222A7FB0[(-119 * ((dword_27CFFD0A0 + dword_27D0080E0) ^ 0x98))] ^ 0x16]) - 65);
  (*(v3 + 8 * ((*(off_283570700 + (*(off_2835709B8 + v1) ^ 0x4Au) - 12) ^ v1) + 1346)))(v5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_222048558(uint64_t a1)
{
  v162 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v146 = (*v2 ^ 0xFDDFFDB3) + 2134761312 + ((2 * *v2) & 0xFBBFFB66);
  v147 = (v2[1] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[1]) & 0xFBBFFB66);
  v148 = (v2[2] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[2]) & 0xFBBFFB66);
  v149 = (v2[3] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[3]) & 0xFBBFFB66);
  v150 = (v2[4] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[4]) & 0xFBBFFB66);
  v151 = (v2[5] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[5]) & 0xFBBFFB66);
  v152 = (v2[6] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[6]) & 0xFBBFFB66);
  v153 = (v2[7] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[7]) & 0xFBBFFB66);
  v154 = (v2[8] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[8]) & 0xFBBFFB66);
  v155 = (v2[9] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[9]) & 0xFBBFFB66);
  v156 = (v2[10] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[10]) & 0xFBBFFB66);
  v157 = (v2[11] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[11]) & 0xFBBFFB66);
  v158 = (v2[12] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[12]) & 0xFBBFFB66);
  v159 = (v2[13] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[13]) & 0xFBBFFB66);
  v160 = (v2[14] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[14]) & 0xFBBFFB66);
  v161 = (v2[15] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[15]) & 0xFBBFFB66);
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v1 + v146 - 1309286865 + ((((v4 & v3 | v5 & ~v3) ^ 0x4BDF2224) + 1089125756) ^ (((v4 & v3 | v5 & ~v3) ^ 0x5B9329B) + 244100549) ^ (((v4 & v3 | v5 & ~v3) ^ 0x4E6610BF) + 1163104225));
  v7 = 2 * (v6 & 0x9D2149D6);
  v8 = ((2 * (v6 ^ 0x680E95A0)) ^ 0xEA5FB8EC) & (v6 ^ 0x680E95A0) ^ (2 * (v6 ^ 0x680E95A0)) & 0xF52FDC76;
  v9 = v8 ^ 0x15204412;
  v10 = (v8 ^ 0xE00F0860) & (4 * (v7 & (v6 ^ 0x580C0584) ^ v6 & 0x9D2149D6)) ^ v7 & (v6 ^ 0x580C0584) ^ v6 & 0x9D2149D6;
  v11 = ((4 * v9) ^ 0xD4BF71D8) & v9 ^ (4 * v9) & 0xF52FDC74;
  v12 = (v11 ^ 0xD42F5040) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x21008C26)) ^ 0x52FDC760) & (v11 ^ 0x21008C26) ^ (16 * (v11 ^ 0x21008C26)) & 0xF52FDC70;
  v14 = v12 ^ 0xF52FDC76 ^ (v13 ^ 0x502DC400) & (v12 << 8);
  v15 = v7 & (v6 ^ 0x999D25C7) ^ v6 & 0x9D2149D6;
  v16 = ((2 * (v6 ^ 0xA99D354F)) ^ 0x6978F932) & (v6 ^ 0xA99D354F) ^ (2 * (v6 ^ 0xA99D354F)) & 0x34BC7C98;
  v17 = (v16 ^ 0x20086810) & (4 * v15) ^ v15;
  v18 = ((4 * (v16 ^ 0x14840489)) ^ 0xD2F1F264) & (v16 ^ 0x14840489) ^ (4 * (v16 ^ 0x14840489)) & 0x34BC7C98;
  v19 = (v18 ^ 0x10B07000) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x240C0C99)) ^ 0x4BC7C990) & (v18 ^ 0x240C0C99) ^ (16 * (v18 ^ 0x240C0C99)) & 0x34BC7C90;
  v21 = v19 ^ 0x34BC7C99 ^ (v20 ^ 0x844800) & (v19 << 8);
  v22 = ((((v14 << 16) & 0x2F0000 ^ v14 ^ ((v14 << 16) ^ 0x760000) & (((v13 ^ 0xA5021816) << 8) & 0x2F0000 ^ 0x230000 ^ (((v13 ^ 0xA5021816) << 8) ^ 0xDC0000) & (v13 ^ 0xA5021816))) << 8) ^ (v6 << 7)) & 0xFFFFFF80 | ((v6 ^ (2 * ((v21 << 16) & 0x34000000 ^ v21 ^ ((v21 << 16) ^ 0x7C000000) & ((((v20 ^ 0x34383409) << 8) ^ 0x3C7C0000) & (v20 ^ 0x34383409) ^ ((v20 ^ 0x34383409) << 8) & 0x34BC0000u)))) >> 25);
  v23 = v3 - 678865755 + (((v22 ^ 0xC897FAC) + 424728472) ^ ((v22 ^ 0x3A0F16AB) + 802602641) ^ ((v22 ^ 0xAFFEF449) - 1171825549));
  v24 = (1680509467 - v23) ^ v23 ^ ((v23 ^ 0xEBC216F2) + 1880580887) ^ ((v23 ^ 0x1916578E) - 2101140885) ^ ((v23 ^ 0x69013498) - 220970627);
  v25 = v3 & (v24 ^ 0x642A8A1B) | v4 & ~(v24 ^ 0x642A8A1B);
  v26 = v5 + v147 - 1283217695 + (((v25 ^ 0xD3AB766A) + 162832635) ^ ((v25 ^ 0x5760EEA6) - 1921042377) ^ ((v25 ^ 0x84CB98CC) + 1590971997));
  v27 = 2 * (v26 & 0xDE065CD1);
  v28 = ((2 * (v26 ^ 0x2E355D4C)) ^ 0xE066033A) & (v26 ^ 0x2E355D4C) ^ (2 * (v26 ^ 0x2E355D4C)) & 0xF033019C;
  v29 = v28 ^ 0x10110085;
  v30 = (v28 ^ 0xE0220108) & (4 * (v27 & (v26 ^ 0x9E355CCC) ^ v26 & 0xDE065CD1)) ^ v27 & (v26 ^ 0x9E355CCC) ^ v26 & 0xDE065CD1;
  v31 = ((4 * v29) ^ 0xC0CC0674) & v29 ^ (4 * v29) & 0xF033019C;
  v32 = (v31 ^ 0xC000001F) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x30330189)) ^ 0x33019D0) & (v31 ^ 0x30330189) ^ (16 * (v31 ^ 0x30330189)) & 0xF0330190;
  v34 = v32 ^ 0xF033019D ^ (v33 ^ 0x300100) & (v32 << 8);
  v35 = v27 & (v26 ^ 0xDFE45C81) ^ v26 & 0xDE065CD1;
  v36 = ((2 * (v26 ^ 0xD7E04CA3)) ^ 0x13CC20E4) & (v26 ^ 0xD7E04CA3) ^ (2 * (v26 ^ 0xD7E04CA3)) & 0x9E61072;
  v37 = (v36 ^ 0x40) & (4 * v35) ^ v35;
  v38 = ((4 * (v36 ^ 0x8221012)) ^ 0x279841C8) & (v36 ^ 0x8221012) ^ (4 * (v36 ^ 0x8221012)) & 0x9E61070;
  v39 = v37 ^ 0x9E61072 ^ (v38 ^ 0x1800040) & (16 * v37);
  v40 = (16 * (v38 ^ 0x8661032)) & 0x9E61070 ^ 0x1861052 ^ ((16 * (v38 ^ 0x8661032)) ^ 0x9E610720) & (v38 ^ 0x8661032);
  v41 = (v39 << 8) & 0x9E61000 ^ v39 ^ ((v39 << 8) ^ 0xE6107200) & v40;
  v42 = ((((v34 << 16) & 0x30000 ^ v34 ^ ((v34 << 16) ^ 0x50000) & (((v33 ^ 0xF003000D) << 8) & 0xF0330000 ^ (((v33 ^ 0xF003000D) << 8) ^ 0x10000) & (v33 ^ 0xF003000D) ^ 0x20000)) << 13) ^ (v26 << 12)) & 0xFFFFF000 | ((v26 ^ (2 * ((v41 << 16) & 0x9E00000 ^ v41 ^ ((v41 << 16) ^ 0x700000) & ((v40 << 8) & 0x9E60000 ^ 0x9E00000 ^ ((v40 << 8) ^ 0x66100000) & v40)))) >> 20);
  v43 = (((v42 ^ 0x398AF0D0) + 1815606255) ^ ((v42 ^ 0x31D74DF4) + 1684688587) ^ ((v42 ^ 0x2DA301F4) + 2015232715)) + (((v24 ^ 0x3161EA74) + 215291622) ^ ((v24 ^ 0x398D5492) + 70887428) ^ ((v24 ^ 0x6CC634FD) + 1366476909));
  v44 = v43 + 907921798;
  v45 = (v24 ^ 0x642A8A1B) & (v43 + 907921798) | v3 & ~(v43 + 907921798);
  v46 = v4 + v148 + (((v45 ^ 0x1218AE47) + 690565390) ^ ((v45 ^ 0xC723FE38) - 65904269) ^ ((v45 ^ 0xD53B507F) - 301281482));
  HIDWORD(v47) = (v46 - 358272268) ^ (1664355203 - v46) ^ (((v46 - 358272268) ^ 0x2A50) + 27609) ^ (((v46 - 358272268) ^ 0xFFFFFC03) + 15756) ^ (((v46 - 358272268) ^ 0x17DB) + 22100);
  LODWORD(v47) = (((v46 - 358272268) ^ 0x480853F0) - 920415623) ^ (v46 - 358272268) ^ (((v46 - 358272268) ^ 0xCAA2574F) + 1267308232) ^ (((v46 - 358272268) ^ 0x385C500) - 2102524768) ^ (((v46 - 358272268) ^ 0xFFFBFFD8) + 2127576664);
  v48 = v43 - 1080797068 + ((((v47 >> 15) ^ 0x67EAD28D) + 1837981237) ^ (((v47 >> 15) ^ 0x3D298C42) + 927858940) ^ (((v47 >> 15) ^ 0x262DA367) + 743059423));
  v49 = v48 & (v24 ^ 0x642A8A1B ^ (v43 + 907921798)) ^ v24;
  v50 = v3 + v149 + 564095445 + (((v49 ^ 0x329B7F46) + 1070110428) ^ ((v49 ^ 0x3EAF6F7F) + 872187619) ^ ((v49 ^ 0x681E9A22) + 1699574720));
  v51 = 2 * (v50 & 0xB987247F);
  v52 = ((2 * (v50 ^ 0xAF948783)) ^ 0x2C2747F8) & (v50 ^ 0xAF948783) ^ (2 * (v50 ^ 0xAF948783)) & 0x1613A3FC;
  v53 = v52 ^ 0x1210A004;
  v54 = (v52 ^ 0x40103F8) & (4 * (v51 & (v50 ^ 0xBD96877F) ^ v50 & 0xB987247F)) ^ v51 & (v50 ^ 0xBD96877F) ^ v50 & 0xB987247F;
  v55 = ((4 * v53) ^ 0x584E8FF0) & v53 ^ (4 * v53) & 0x1613A3FC;
  v56 = v54 ^ 0x1613A3FC ^ (v55 ^ 0x100283F0) & (16 * v54);
  v57 = v51 & (v50 ^ 0xBD17857E) ^ v50 & 0xB987247F;
  v58 = ((2 * (v50 ^ 0xBC1DCD92)) ^ 0xB35D3DA) & (v50 ^ 0xBC1DCD92) ^ (2 * (v50 ^ 0xBC1DCD92)) & 0x59AE9EC;
  v59 = (v58 ^ 0x1081C8) & (4 * v57) ^ v57;
  v60 = ((4 * (v58 ^ 0x48A2825)) ^ 0x166BA7B4) & (v58 ^ 0x48A2825) ^ (4 * (v58 ^ 0x48A2825)) & 0x59AE9EC;
  v61 = (v60 ^ 0x40AA1A0) & (16 * v59) ^ v59;
  v62 = ((16 * (v60 ^ 0x1904849)) ^ 0x59AE9ED0) & (v60 ^ 0x1904849) ^ (16 * (v60 ^ 0x1904849)) & 0x59AE9E0;
  v63 = v61 ^ 0x59AE9ED ^ (v62 ^ 0x18A8800) & (v61 << 8);
  v64 = ((((v56 << 8) ^ v56 ^ (v56 << 8) & (((16 * v55) ^ 0x100) & v55 ^ (16 * v55) & 0x100)) << 23) ^ (v50 << 22)) & 0xFFC00000 | ((v50 ^ (2 * ((v63 << 16) & 0x59A0000 ^ v63 ^ ((v63 << 16) ^ 0x69ED0000) & (((v62 ^ 0x410612D) << 8) & 0x59A0000 ^ 0x5120000 ^ (((v62 ^ 0x410612D) << 8) ^ 0x1AE90000) & (v62 ^ 0x410612Du))))) >> 10);
  v65 = v48 + 313785323 + (((v64 ^ 0xE6F0197C) - 363825706) ^ ((v64 ^ 0xBB7B7EA3) - 1210379765) ^ ((v64 ^ 0xBC670F62) - 1329110068));
  HIDWORD(v47) = v150 + (((v24 ^ 0x6DD2CC87) + 1348874263) ^ ((v24 ^ 0x3D743F6D) + 12633085) ^ ((v24 ^ 0x348C79F1) + 154699105)) + 515882001 + ((v43 - ((2 * (v43 + 907921798)) & 0xB228BF60) + 254945590) ^ 0xD9145FB0 ^ v65 & (v48 ^ (v43 + 907921798)));
  LODWORD(v47) = HIDWORD(v47);
  v66 = (v47 >> 25) + v65;
  HIDWORD(v47) = v151 + v44 - 899028713 + ((v48 + 1517631221 + (~(2 * v48) | 0x4B159215) + 1) ^ 0x5A7536F5 ^ v66 & (v65 ^ v48));
  LODWORD(v47) = HIDWORD(v47);
  v67 = (v47 >> 20) + v66;
  HIDWORD(v47) = v152 + v48 + 722626816 + ((v65 - ((2 * v65) & 0x602BFCE0) - 1340735888) ^ 0xB015FE70 ^ v67 & (v66 ^ v65));
  LODWORD(v47) = HIDWORD(v47);
  v68 = (v47 >> 15) + v67;
  HIDWORD(v47) = v153 + v65 - 2144815122 + ((v66 - ((2 * v66) & 0xDE16E3E6) + 1863021043) ^ 0x6F0B71F3 ^ v68 & (v67 ^ v66));
  LODWORD(v47) = HIDWORD(v47);
  v69 = (v47 >> 10) + v68;
  HIDWORD(v47) = v154 + v66 - 329073723 + ((v67 - ((2 * v67) & 0x41A3057A) - 1596882243) ^ 0xA0D182BD ^ v69 & (v68 ^ v67));
  LODWORD(v47) = HIDWORD(v47);
  v70 = (v47 >> 25) + v69;
  HIDWORD(v47) = v155 + v67 + 237443740 + ((v68 - ((2 * v68) & 0xA2AFEABC) - 782764706) ^ 0xD157F55E ^ v70 & (v69 ^ v68));
  LODWORD(v47) = HIDWORD(v47);
  v71 = (v47 >> 20) + v70;
  HIDWORD(v47) = v156 + v68 - 2099151202 + ((v69 - ((2 * v69) & 0x73533078) - 1180067780) ^ 0xB9A9983C ^ v71 & (v70 ^ v69));
  LODWORD(v47) = HIDWORD(v47);
  v72 = (v47 >> 15) + v71;
  HIDWORD(v47) = v157 + v69 + 205453995 + (v71 & v72 | v70 & ~v72);
  LODWORD(v47) = HIDWORD(v47);
  v73 = (v47 >> 10) + v72;
  HIDWORD(v47) = v158 + v70 - 294505457 + (v72 & v73 | v71 & ~v73);
  LODWORD(v47) = HIDWORD(v47);
  v74 = (v47 >> 25) + v73;
  HIDWORD(v47) = v159 + v71 - 2139450240 + (v73 & v74 | v72 & ~v74);
  LODWORD(v47) = HIDWORD(v47);
  v75 = (v47 >> 20) + v74;
  HIDWORD(v47) = v160 + v72 + 693855867 + (v74 & v75 | v73 & ~v75);
  LODWORD(v47) = HIDWORD(v47);
  v76 = (v47 >> 15) + v75;
  HIDWORD(v47) = v161 + v73 - 862573810 + (v75 & v76 | v74 & ~v76);
  LODWORD(v47) = HIDWORD(v47);
  v77 = (v47 >> 10) + v76;
  HIDWORD(v47) = v147 + v74 + 2030061647 + (v77 & v75 | v76 & ~v75);
  LODWORD(v47) = HIDWORD(v47);
  v78 = (v47 >> 27) + v77;
  HIDWORD(v47) = v152 + v75 + 1126356525 + (v78 & v76 | v77 & ~v76);
  LODWORD(v47) = HIDWORD(v47);
  v79 = (v47 >> 23) + v78;
  HIDWORD(v47) = v157 + v76 - 1455391426 + (v79 & v77 | v78 & ~v77);
  LODWORD(v47) = HIDWORD(v47);
  v80 = (v47 >> 18) + v79;
  HIDWORD(v47) = v146 + v77 + 1821960855 + (v80 & v78 | v79 & ~v78);
  LODWORD(v47) = HIDWORD(v47);
  v81 = (v47 >> 12) + v80;
  HIDWORD(v47) = v151 + v78 + 1494299466 + (v81 & v79 | v80 & ~v79);
  LODWORD(v47) = HIDWORD(v47);
  v82 = (v47 >> 27) + v81;
  HIDWORD(v47) = v156 + v79 - 2061093056 + (v82 & v80 | v81 & ~v80);
  LODWORD(v47) = HIDWORD(v47);
  v83 = (v47 >> 23) + v82;
  HIDWORD(v47) = v161 + v80 + 1535379822 + (v83 & v81 | v82 & ~v81);
  LODWORD(v47) = HIDWORD(v47);
  v84 = (v47 >> 18) + v83;
  HIDWORD(v47) = v150 + v81 + 1790320309 + (v84 & v82 | v83 & ~v82);
  LODWORD(v47) = HIDWORD(v47);
  LODWORD(v2) = (v47 >> 12) + v84;
  HIDWORD(v47) = v155 + v82 - 1530662701 + (v2 & v83 | v84 & ~v83);
  LODWORD(v47) = HIDWORD(v47);
  v85 = (v47 >> 27) + v2;
  HIDWORD(v47) = v160 + v83 + 1176054467 + (v85 & v84 | v2 & ~v84);
  LODWORD(v47) = HIDWORD(v47);
  v86 = (v47 >> 23) + v85;
  HIDWORD(v47) = v149 + v84 + 2008494196 + (v86 & v2 | v85 & ~v2);
  LODWORD(v47) = HIDWORD(v47);
  v87 = (v47 >> 18) + v86;
  HIDWORD(v47) = v154 + v2 - 935577638 + (v87 & v85 | v86 & ~v85);
  LODWORD(v47) = HIDWORD(v47);
  v88 = (v47 >> 12) + v87;
  HIDWORD(v47) = v159 + v85 + 751176690 + (v88 & v86 | v87 & ~v86);
  LODWORD(v47) = HIDWORD(v47);
  v89 = (v47 >> 27) + v88;
  HIDWORD(v47) = v148 + v86 + 2144454373 + (v89 & v87 | v88 & ~v87);
  LODWORD(v47) = HIDWORD(v47);
  v90 = (v47 >> 23) + v89;
  HIDWORD(v47) = v153 + v87 - 363780666 + (v90 & v88 | v89 & ~v88);
  LODWORD(v47) = HIDWORD(v47);
  v91 = (v47 >> 18) + v90;
  HIDWORD(v47) = v158 + v88 + 269250423 + ((v91 ^ v90) & v89 ^ v90);
  LODWORD(v47) = HIDWORD(v47);
  LODWORD(v2) = *(&v146 + (v89 & 0xF));
  v92 = (v47 >> 12) + v91;
  *(&v146 + (v89 & 0xF)) = *(&v146 + (v92 & 0xF));
  *(&v146 + (v92 & 0xF)) = v2;
  v93 = *(&v146 + (v91 & 0xF));
  *(&v146 + (v91 & 0xF)) = *(&v146 + (v90 & 0xF));
  *(&v146 + (v90 & 0xF)) = v93;
  v94 = *(&v146 + (v89 >> 4));
  *(&v146 + (v89 >> 4)) = *(&v146 + (v92 >> 4));
  *(&v146 + (v92 >> 4)) = v94;
  v95 = (v89 >> 8) & 0xF;
  v96 = *(&v146 + v95);
  LODWORD(v2) = (v92 >> 8) & 0xF;
  *(&v146 + v95) = *(&v146 + v2);
  *(&v146 + v2) = v96;
  v97 = *(&v146 + (v89 >> 12));
  *(&v146 + (v89 >> 12)) = *(&v146 + (v92 >> 12));
  *(&v146 + (v92 >> 12)) = v97;
  HIDWORD(v47) = v151 + v89 - 2099487697 + (v92 ^ v91 ^ v90);
  LODWORD(v47) = HIDWORD(v47);
  LODWORD(v2) = (v47 >> 28) + v92;
  HIDWORD(v47) = v154 + v90 + 173283694 + (v2 ^ v92 ^ v91);
  LODWORD(v47) = HIDWORD(v47);
  v98 = (v47 >> 21) + v2;
  HIDWORD(v47) = v157 + v91 - 260078577 + (v2 ^ v92 ^ v98);
  LODWORD(v47) = HIDWORD(v47);
  v99 = (v47 >> 16) + v98;
  HIDWORD(v47) = v160 + v92 - 2134418695 + (v98 ^ v2 ^ v99);
  LODWORD(v47) = HIDWORD(v47);
  v100 = (v47 >> 9) + v99;
  HIDWORD(v47) = v147 + v2 + 664866097 + (v99 ^ v98 ^ v100);
  LODWORD(v47) = HIDWORD(v47);
  v101 = (v47 >> 28) + v100;
  HIDWORD(v47) = v150 + v98 - 826215786 + (v100 ^ v99 ^ v101);
  LODWORD(v47) = HIDWORD(v47);
  v102 = (v47 >> 21) + v101;
  HIDWORD(v47) = v153 + v99 + 2040360525 + (v101 ^ v100 ^ v102);
  LODWORD(v47) = HIDWORD(v47);
  v103 = (v47 >> 16) + v102;
  HIDWORD(v47) = v156 + v100 + 1101127517 + (v102 ^ v101 ^ v103);
  LODWORD(v47) = HIDWORD(v47);
  v104 = (v47 >> 9) + v103;
  HIDWORD(v47) = v159 + v101 - 1417829965 + (v103 ^ v102 ^ v104);
  LODWORD(v47) = HIDWORD(v47);
  v105 = (v47 >> 28) + v104;
  HIDWORD(v47) = v146 + v102 + 1837320935 + (v104 ^ v103 ^ v105);
  LODWORD(v47) = HIDWORD(v47);
  v106 = (v47 >> 21) + v105;
  HIDWORD(v47) = v149 + v103 + 1473336178 + (v105 ^ v104 ^ v106);
  LODWORD(v47) = HIDWORD(v47);
  v107 = (v47 >> 16) + v106;
  HIDWORD(v47) = v152 + v104 - 2023079950 + (v106 ^ v105 ^ v107);
  LODWORD(v47) = HIDWORD(v47);
  v108 = (v47 >> 9) + v107;
  HIDWORD(v47) = v155 + v105 + 1555493670 + (v107 ^ v106 ^ v108);
  LODWORD(v47) = HIDWORD(v47);
  v109 = (v47 >> 28) + v108;
  HIDWORD(v47) = v158 + v106 + 1774042322 + (v108 ^ v107 ^ v109);
  LODWORD(v47) = HIDWORD(v47);
  v110 = (v47 >> 21) + v109;
  HIDWORD(v47) = v161 + v107 - 1568366619 + (v109 ^ v108 ^ v110);
  LODWORD(v47) = HIDWORD(v47);
  v111 = (v47 >> 16) + v110;
  HIDWORD(v47) = v148 + v108 + 1200519506 + (v110 ^ v109 ^ v111);
  LODWORD(v47) = HIDWORD(v47);
  v112 = (v47 >> 9) + v111;
  HIDWORD(v47) = v146 + v109 + 1997227313 + ((v112 | ~v110) ^ v111);
  LODWORD(v47) = HIDWORD(v47);
  v113 = (v47 >> 26) + v112;
  HIDWORD(v47) = v153 + v110 - 972217724 + ((v113 | ~v111) ^ v112);
  LODWORD(v47) = HIDWORD(v47);
  v114 = (v47 >> 22) + v113;
  HIDWORD(v47) = v160 + v111 + 779503252 + ((v114 | ~v112) ^ v113);
  LODWORD(v47) = HIDWORD(v47);
  v115 = (v47 >> 17) + v114;
  HIDWORD(v47) = v151 + v112 + 2138424102 + ((v115 | ~v113) ^ v114);
  LODWORD(v47) = HIDWORD(v47);
  v116 = (v47 >> 11) + v115;
  HIDWORD(v47) = v158 + v113 - 398623568 + ((v116 | ~v114) ^ v115);
  LODWORD(v47) = HIDWORD(v47);
  v117 = (v47 >> 26) + v116;
  HIDWORD(v47) = v149 + v114 + 300871551 + ((v117 | ~v115) ^ v116);
  LODWORD(v47) = HIDWORD(v47);
  v118 = (v47 >> 22) + v117;
  HIDWORD(v47) = v156 + v115 - 2100160662 + ((v118 | ~v116) ^ v117);
  LODWORD(v47) = HIDWORD(v47);
  v119 = (v47 >> 17) + v118;
  HIDWORD(v47) = v147 + v116 + 140935358 + ((v119 | ~v117) ^ v118);
  LODWORD(v47) = HIDWORD(v47);
  v120 = (v47 >> 11) + v119;
  HIDWORD(v47) = v154 + v117 - 225795780 + ((v120 | ~v118) ^ v119);
  LODWORD(v47) = HIDWORD(v47);
  v121 = (v47 >> 26) + v120;
  HIDWORD(v47) = v161 + v118 - 2129720883 + ((v121 | ~v119) ^ v120);
  LODWORD(v47) = HIDWORD(v47);
  v122 = (v47 >> 22) + v121;
  HIDWORD(v47) = v152 + v119 + 635659777 + ((v122 | ~v120) ^ v121);
  LODWORD(v47) = HIDWORD(v47);
  v123 = (v47 >> 17) + v122;
  HIDWORD(v47) = v159 + v120 - 789957490 + ((v123 | ~v121) ^ v122);
  LODWORD(v47) = HIDWORD(v47);
  v124 = (v47 >> 11) + v123;
  HIDWORD(v47) = v150 + v121 + 2050335087 + ((v124 | ~v122) ^ v123);
  LODWORD(v47) = HIDWORD(v47);
  v125 = v124 + ((v47 >> 26) ^ 0xEFDFFFBD) + ((2 * (v47 >> 26)) & 0xDFBFFF7A) + 394209115;
  v126 = ((v125 ^ 0xDDD3EDE) - 176298438) ^ v125 ^ ((v125 ^ 0x3A8C7D72) - 1037261418) ^ ((v125 ^ 0x4FF1B34B) - 1219400787) ^ ((v125 ^ 0x7FFFD7FF) - 2023813351);
  HIDWORD(v47) = v157 + v122 + 1075647778 + ((v124 - ((2 * v124) & 0xAE8B69A4) - 683297582) ^ 0x28BA4B2D ^ (v126 ^ 0xF8A0D8E7) & v123);
  LODWORD(v47) = HIDWORD(v47);
  v127 = (((v126 ^ 0x93A148AA) - 1856856067) ^ ((v126 ^ 0x6E0762CD) + 1827976604) ^ ((v126 ^ 0xFAF90D7F) - 133506518)) + 1062947609 + (v47 >> 22);
  v128 = (v127 ^ 0xBAF7C497 ^ ((v127 ^ 0x648542D4) - 562919868) ^ ((v127 ^ 0xA16FF4D4) + 462958660) ^ ((v127 ^ 0xFF1CF2D6) + 1173042754) ^ ((v127 ^ 0x7FFE7FBE) - 989218006)) & v124 ^ v126;
  HIDWORD(v47) = v148 + v123 + 1733771745 + (((v128 ^ 0x38AFEF31) - 2039643119) ^ ((v128 ^ 0xF3398403) + 1308356387) ^ ((v128 ^ 0x3336B3D5) - 1913333515));
  LODWORD(v47) = HIDWORD(v47);
  v129 = v127 + 1912764822 + (v47 >> 17);
  LODWORD(v2) = (v129 ^ 0x6F16BB3) & (2 * (v129 & 0x48F54B02)) ^ v129 & 0x48F54B02;
  v130 = ((2 * (v129 ^ 0x773E9B7)) ^ 0x9F0D456A) & (v129 ^ 0x773E9B7) ^ (2 * (v129 ^ 0x773E9B7)) & 0x4F86A2B4;
  v131 = v130 ^ 0x4082A295;
  v132 = (v130 ^ 0x7040000) & (4 * v2) ^ v2;
  LODWORD(v2) = ((4 * v131) ^ 0x3E1A8AD4) & v131 ^ (4 * v131) & 0x4F86A2B4;
  v133 = (v2 ^ 0xE028280) & (16 * v132) ^ v132;
  LODWORD(v2) = ((16 * (v2 ^ 0x41842021)) ^ 0xF86A2B50) & (v2 ^ 0x41842021) ^ (16 * (v2 ^ 0x41842021)) & 0x4F86A2B0;
  v134 = v133 ^ 0x4F86A2B5 ^ (v2 ^ 0x48022200) & (v133 << 8);
  LODWORD(v2) = v129 ^ (2 * ((v134 << 16) & 0x4F860000 ^ v134 ^ ((v134 << 16) ^ 0x22B50000) & (((v2 ^ 0x78480A5) << 8) & 0x4F860000 ^ 0x49040000 ^ (((v2 ^ 0x78480A5) << 8) ^ 0x6A20000) & (v2 ^ 0x78480A5))));
  v135 = (v127 ^ 0xB2F794DC) & (2 * (v127 & 0xBAF7C498)) ^ v127 & 0xBAF7C498;
  v136 = ((2 * (v127 ^ 0xD6B19DEC)) ^ 0xD88CB2E8) & (v127 ^ 0xD6B19DEC) ^ (2 * (v127 ^ 0xD6B19DEC)) & 0x6C465974;
  v137 = v136 ^ 0x24424914;
  v138 = (v136 ^ 0x48041060) & (4 * v135) ^ v135;
  v139 = ((4 * v137) ^ 0xB11965D0) & v137 ^ (4 * v137) & 0x6C465974;
  v140 = (v139 ^ 0x20004140) & (16 * v138) ^ v138;
  v141 = ((16 * (v139 ^ 0x4C461824)) ^ 0xC4659740) & (v139 ^ 0x4C461824) ^ (16 * (v139 ^ 0x4C461824)) & 0x6C465970;
  v142 = v140 ^ 0x6C465974 ^ (v141 ^ 0x44441100) & (v140 << 8);
  v143 = v127 ^ (2 * ((v142 << 16) & 0x6C460000 ^ v142 ^ ((v142 << 16) ^ 0x59740000) & (((v141 ^ 0x28024834) << 8) & 0x6C460000 ^ 0x28060000 ^ (((v141 ^ 0x28024834) << 8) ^ 0x46590000) & (v141 ^ 0x28024834)))) ^ v2 & 0xA5A4908 ^ (v2 ^ 0x2D0FF197) & (v126 ^ 0xD056E10);
  HIDWORD(v47) = v155 + v124 + 826461382 + (((v143 ^ 0xE08CC97B) - 659806140) ^ ((v143 ^ 0x28511951) + 275904618) ^ ((v143 ^ 0xCDDB18A5) - 168035938));
  LODWORD(v47) = HIDWORD(v47);
  result = v1[1];
  *v1 = *v1 - 95219791 + (((v126 ^ 0x8BE4ABA9) - 1994949376) ^ ((v126 ^ 0x906F64A9) - 1835224064) ^ ((v126 ^ 0x1CD4E818) + 505888591));
  v1[1] = result + v129 + ((v47 >> 11) ^ 0x75DBDDFF) + ((2 * (v47 >> 11)) & 0xEBB7BBFE) - 753308413;
  v145 = v1[3] - 1158167400 + v127;
  v1[2] += 1224035074 + v129;
  v1[3] = v145;
  return result;
}