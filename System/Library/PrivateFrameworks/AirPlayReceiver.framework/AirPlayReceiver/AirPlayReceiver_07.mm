void vhelper_handleAvailableEndpointsChanged(uint64_t a1, uint64_t a2)
{
  active = vhelper_lookupAndRetainActiveHelperWithID(a2);
  if (active)
  {
    v4 = active;
    FigSimpleMutexLock();
    if (!*(v4 + 32) || *(v4 + 56) != a2 || !*(v4 + 40))
    {
      FigSimpleMutexUnlock();
LABEL_5:
      CFRelease(v4);
      return;
    }

    v5 = &unk_27E37E000;
    if (gLogCategory_APValeriaHelper <= 30 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = *(v4 + 40);
    v6 = *(v4 + 48);
    theArray = 0;
    v8 = *(v4 + 32);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = *MEMORY[0x277CBECE8];
      v11 = v9(v8, *MEMORY[0x277D27028], *MEMORY[0x277CBECE8], &theArray);
      if (!v11)
      {
        Mutable = theArray;
        if (!*(v4 + 88) || !theArray)
        {
          FigSimpleMutexUnlock();
          if (!v7)
          {
            goto LABEL_45;
          }

          goto LABEL_34;
        }

        Count = CFArrayGetCount(theArray);
        if (Count < 1)
        {
          Mutable = 0;
          v20 = 0;
        }

        else
        {
          v14 = Count;
          v15 = 0;
          Mutable = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
            cf = 0;
            v17 = CFGetAllocator(ValueAtIndex);
            CMBaseObject = FigEndpointGetCMBaseObject();
            v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v19)
            {
              v19(CMBaseObject, @"Features", v17, &cf);
            }

            if (APSFeaturesHasFeature())
            {
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
              }

              CFArrayAppendValue(Mutable, ValueAtIndex);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            ++v15;
          }

          while (v14 != v15);
          v20 = 0;
          v5 = &unk_27E37E000;
        }

LABEL_30:
        if (theArray)
        {
          CFRelease(theArray);
        }

        FigSimpleMutexUnlock();
        if (v20)
        {
          APSLogErrorAt();
          goto LABEL_45;
        }

        if (!v7)
        {
          goto LABEL_45;
        }

LABEL_34:
        if (Mutable)
        {
          v21 = v5[134];
          if (v21 <= 30 && (v21 != -1 || _LogCategory_Initialize()))
          {
            CFArrayGetCount(Mutable);
            LogPrintF();
          }

          v7(Mutable, v6);
LABEL_42:
          CFRelease(Mutable);
          goto LABEL_5;
        }

LABEL_45:
        if (!Mutable)
        {
          goto LABEL_5;
        }

        goto LABEL_42;
      }

      v20 = v11;
    }

    else
    {
      v20 = -12782;
    }

    APSLogErrorAt();
    Mutable = 0;
    goto LABEL_30;
  }
}

uint64_t vhelper_lookupAndRetainActiveHelperWithID(uint64_t a1)
{
  if (vhelper_getActiveHelpers_once != -1)
  {
    dispatch_once(&vhelper_getActiveHelpers_once, &__block_literal_global_41);
  }

  v2 = vhelper_getActiveHelpers_table;

  return MEMORY[0x282112740](v2, a1);
}

uint64_t __vhelper_getActiveHelpers_block_invoke()
{
  result = FigCFWeakReferenceTableCreate();
  if (result)
  {
    if (gLogCategory_APValeriaHelper <= 100)
    {
      if (gLogCategory_APValeriaHelper != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t APValeriaHelperDiscoveryStartAndCopyMatchingEndpoint(void *a1, const void *a2, unsigned int a3, void *a4)
{
  FigSimpleMutexLock();
  if (a1[4])
  {
    v16 = 4294960587;
    APSLogErrorAt();
    v11 = 0;
    v13 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    FigCFDictionarySetInt32();
    v9 = FigRouteDiscovererXPCRemoteCreate();
    if (v9)
    {
      v16 = v9;
      APSLogErrorAt();
      v13 = 0;
      v11 = 0;
    }

    else
    {
      active = vhelper_registerActiveHelper();
      v11 = active;
      a1[7] = active;
      if (active)
      {
        a1[5] = vhelper_findMatchingEndpoint;
        a1[6] = active;
        if (a2)
        {
          v12 = CFRetain(a2);
        }

        else
        {
          v12 = 0;
        }

        a1[9] = v12;
        v13 = dispatch_semaphore_create(0);
        a1[8] = v13;
        dispatch_retain(v13);
        a1[4] = 0;
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        v14 = a1[4];
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v15)
        {
          v15(v14, *MEMORY[0x277D27038], *MEMORY[0x277D27010]);
        }

        if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v16 = 0;
      }

      else
      {
        v16 = 4294960588;
        APSLogErrorAt();
        v13 = 0;
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  FigSimpleMutexUnlock();
  if (v16)
  {
LABEL_28:
    if (!v13)
    {
      return v16;
    }

LABEL_29:
    dispatch_release(v13);
    return v16;
  }

  if ((a3 & 0x80000000) != 0)
  {
    v17 = -1;
  }

  else
  {
    v17 = dispatch_time(0, 1000000000 * a3);
  }

  if (!dispatch_semaphore_wait(v13, v17))
  {
    FigSimpleMutexLock();
    if (a1[4] && a1[7] == v11)
    {
      if (a4)
      {
        v19 = a1[10];
        if (v19)
        {
          v19 = CFRetain(v19);
        }

        *a4 = v19;
      }

      v20 = a1[10];
      if (v20)
      {
        CFRelease(v20);
        v16 = 0;
        a1[10] = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 4294960573;
    }

    FigSimpleMutexUnlock();
    goto LABEL_28;
  }

  if (gLogCategory_APValeriaHelper <= 90 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  APValeriaHelperDiscoveryStop(a1);
  v16 = 4294960574;
  if (v13)
  {
    goto LABEL_29;
  }

  return v16;
}

uint64_t APValeriaHelperDiscoveryStop(void *a1)
{
  FigSimpleMutexLock();
  if (a1[4])
  {
    vhelper_unregisterActiveHelperWithID();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v2 = a1[4];
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v3)
    {
      v3(v2, *MEMORY[0x277D27038], *MEMORY[0x277D27018]);
    }

    v4 = a1[4];
    if (v4)
    {
      CFRelease(v4);
      a1[4] = 0;
    }

    v5 = a1[10];
    if (v5)
    {
      CFRelease(v5);
      a1[10] = 0;
    }

    v6 = a1[9];
    if (v6)
    {
      CFRelease(v6);
      a1[9] = 0;
    }

    a1[5] = 0;
    a1[6] = 0;
    a1[7] = 0;
    v7 = a1[8];
    if (v7)
    {
      dispatch_semaphore_signal(v7);
      v8 = a1[8];
      if (v8)
      {
        dispatch_release(v8);
        a1[8] = 0;
      }
    }

    if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t vhelper_unregisterActiveHelperWithID()
{
  if (vhelper_getActiveHelpers_once != -1)
  {
    dispatch_once(&vhelper_getActiveHelpers_once, &__block_literal_global_41);
  }

  return FigCFWeakReferenceTableRemoveValue();
}

void vhelper_findMatchingEndpoint(const __CFArray *a1, uint64_t a2)
{
  active = vhelper_lookupAndRetainActiveHelperWithID(a2);
  if (active)
  {
    v5 = active;
    FigSimpleMutexLock();
    if (v5[4] && v5[7] == a2 && v5[5])
    {
      Count = CFArrayGetCount(a1);
      v7 = v5[10];
      if (v7)
      {
        CFRelease(v7);
        v5[10] = 0;
      }

      if (Count >= 1)
      {
        v8 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
          v12 = 0;
          v13 = &v12;
          v14 = 0x2000000000;
          v15 = 1;
          if (!v5[9])
          {
            break;
          }

          CFDictionaryApplyBlock();
          if (*(v13 + 24))
          {
            break;
          }

          _Block_object_dispose(&v12, 8);
          if (Count == ++v8)
          {
            goto LABEL_16;
          }
        }

        v5[10] = CFRetain(ValueAtIndex);
        _Block_object_dispose(&v12, 8);
      }

LABEL_16:
      if (v5[10])
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        v5[5] = 0;
        v10 = v5[8];
        if (v10)
        {
          dispatch_semaphore_signal(v10);
          v11 = v5[8];
          if (v11)
          {
            dispatch_release(v11);
            v5[8] = 0;
          }
        }
      }
    }

    FigSimpleMutexUnlock();
    CFRelease(v5);
  }
}

void __vhelper_findMatchingEndpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, a2, *MEMORY[0x277CBECE8], &cf) || !FigCFEqual())
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t APValeriaHelperReceiverStart(void *a1, const void *a2, int a3)
{
  cf = 0;
  FigSimpleMutexLock();
  if (!a2)
  {
    v15 = -6705;
LABEL_22:
    APSLogErrorAt();
    goto LABEL_17;
  }

  if (a1[13])
  {
    v15 = -6709;
    goto LABEL_22;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  v8 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v8 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"UseDynamicPort", *v8);
  CFDictionarySetValue(v7, @"SBufConsumer", a2);
  v15 = AirPlayReceiverServerCreate(v7, &cf);
  if (v15)
  {
    goto LABEL_23;
  }

  v10 = a1[2];
  if (v10)
  {
    CFRelease(v10);
    a1[2] = 0;
  }

  v11 = cf;
  a1[2] = AirPlayReceiverServerCopyProperty(cf, v9, @"deviceInfo", 0, &v15);
  if (v15 || (v15 = CFObjectControlSync()) != 0)
  {
LABEL_23:
    APSLogErrorAt();
  }

  else
  {
    active = vhelper_registerActiveHelper();
    a1[14] = active;
    if (active)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      a1[13] = v11;
      cf = 0;
      if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      APSLogErrorAt();
      v15 = -6708;
      CFObjectControlSync();
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  FigSimpleMutexUnlock();
  return v15;
}

void vhelper_handleClientDisconnected(uint64_t a1, uint64_t a2)
{
  active = vhelper_lookupAndRetainActiveHelperWithID(a2);
  if (active)
  {
    v4 = active;
    FigSimpleMutexLock();
    if (*(v4 + 104) && *(v4 + 112) == a2)
    {
      if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v4 + 128) = 0;
    }

    FigSimpleMutexUnlock();

    CFRelease(v4);
  }
}

void vhelper_handleClientConnected(uint64_t a1, uint64_t a2)
{
  active = vhelper_lookupAndRetainActiveHelperWithID(a2);
  if (active)
  {
    v4 = active;
    FigSimpleMutexLock();
    if (*(v4 + 104) && *(v4 + 112) == a2)
    {
      if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v4 + 128) = 1;
      v5 = *(v4 + 120);
      if (v5)
      {
        dispatch_semaphore_signal(v5);
        v6 = *(v4 + 120);
        if (v6)
        {
          dispatch_release(v6);
          *(v4 + 120) = 0;
        }
      }
    }

    FigSimpleMutexUnlock();

    CFRelease(v4);
  }
}

uint64_t APValeriaHelperReceiverStop(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 104))
  {
    vhelper_unregisterActiveHelperWithID();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CFObjectControlSync();
    v2 = *(a1 + 104);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 104) = 0;
    }

    *(a1 + 112) = 0;
    *(a1 + 128) = 0;
    v3 = *(a1 + 120);
    if (v3)
    {
      dispatch_semaphore_signal(v3);
      v4 = *(a1 + 120);
      if (v4)
      {
        dispatch_release(v4);
        *(a1 + 120) = 0;
      }
    }

    if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t APValeriaHelperReceiverGetListeningPort(uint64_t a1)
{
  FigSimpleMutexLock();
  v3 = *(a1 + 104);
  if (!v3)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v4 = AirPlayReceiverServerCopyProperty(v3, v2, @"listeningPort", 0, 0);
  FigSimpleMutexUnlock();
  if (!v4)
  {
    return 0;
  }

  v5 = CFGetInt64Ranged();
  CFRelease(v4);
  return v5;
}

uint64_t APValeriaHelperReceiverWaitForConnection(uint64_t a1, unsigned int a2)
{
  FigSimpleMutexLock();
  if (!*(a1 + 104))
  {
    v6 = 4294960587;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_22;
  }

  if (*(a1 + 128))
  {
    v6 = 0;
LABEL_22:
    FigSimpleMutexUnlock();
    return v6;
  }

  if (*(a1 + 120))
  {
    v6 = 4294960575;
    goto LABEL_21;
  }

  v4 = dispatch_semaphore_create(0);
  *(a1 + 120) = v4;
  dispatch_retain(v4);
  FigSimpleMutexUnlock();
  if (!v4)
  {
    return 0;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = dispatch_time(0, 1000000000 * a2);
  }

  if (dispatch_semaphore_wait(v4, v5))
  {
    if (gLogCategory_APValeriaHelper <= 90 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = 4294960574;
  }

  else
  {
    v6 = 0;
  }

  dispatch_release(v4);
  return v6;
}

uint64_t APValeriaHelperActivationStart(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (!a2)
  {
    v11 = 4294960591;
LABEL_25:
    APSLogErrorAt();
    goto LABEL_20;
  }

  if (*(a1 + 144))
  {
    v11 = 4294960587;
    goto LABEL_25;
  }

  if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *MEMORY[0x277CBECE8];
  ControlChannelOnlyContext = FigRoutingContextRemoteCreateControlChannelOnlyContext();
  if (ControlChannelOnlyContext)
  {
    v11 = ControlChannelOnlyContext;
    goto LABEL_25;
  }

  active = vhelper_registerActiveHelper();
  *(a1 + 152) = active;
  if (!active)
  {
    v11 = 4294960588;
    goto LABEL_25;
  }

  *(a1 + 144) = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277D27050], *MEMORY[0x277CBED28]);
  v8 = *(a1 + 144);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    v11 = 4294954514;
    goto LABEL_15;
  }

  v10 = v9(v8, a2, Mutable);
  if (v10)
  {
    v11 = v10;
LABEL_15:
    APSLogErrorAt();
    vhelper_stopActivation(a1);
    if (!Mutable)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = 0;
  if (Mutable)
  {
LABEL_19:
    CFRelease(Mutable);
  }

LABEL_20:
  FigSimpleMutexUnlock();
  return v11;
}

void vhelper_stopActivation(uint64_t a1)
{
  if (*(a1 + 144))
  {
    vhelper_unregisterActiveHelperWithID();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v2 = *(a1 + 144);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v3)
    {
      v3(v2, 0, 0);
    }

    v4 = *(a1 + 144);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 144) = 0;
    }

    *(a1 + 152) = 0;
    if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

void vhelper_handleCurrentEndpointChanged(uint64_t a1, uint64_t a2)
{
  active = vhelper_lookupAndRetainActiveHelperWithID(a2);
  cf = 0;
  if (!active)
  {
    return;
  }

  v4 = active;
  FigSimpleMutexLock();
  v5 = *(v4 + 144);
  if (v5 && *(v4 + 152) == a2)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v6 || v6(v5, &cf))
    {
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      goto LABEL_21;
    }

    v7 = cf;
    v15 = 0;
    if (cf)
    {
      if (*(v4 + 16) && APValeriaHelperReceiverGetListeningPort(v4))
      {
        FigEndpointExtendedGetClassID();
        if (CMBaseObjectIsMemberOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        v9 = *MEMORY[0x277CBECE8];
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(v4 + 16));
        CFDictionarySetInt64();
        CFDictionarySetValue(MutableCopy, @"IsValeria", *MEMORY[0x277CBED28]);
        v11 = *(*(CMBaseObjectGetVTable() + 24) + 72);
        if (!v11 || v11(v8, @"APValeria", MutableCopy, 0, 0))
        {
          APSLogErrorAt();
        }

        else
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterRemoveListener();
          CMBaseObject = FigEndpointGetCMBaseObject();
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v13(CMBaseObject, *MEMORY[0x277CC1450], v9, &v15);
          }

          if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    else
    {
      APSLogErrorAt();
    }
  }

  FigSimpleMutexUnlock();
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v4);
}

uint64_t APValeriaHelperActivationStop(uint64_t a1)
{
  FigSimpleMutexLock();
  vhelper_stopActivation(a1);

  return FigSimpleMutexUnlock();
}

uint64_t apProcessor_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v7 = 4294895345;
    goto LABEL_32;
  }

  v6 = DerivedStorage;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, @"pairingRequired"))
  {
    if (a3)
    {
      v7 = 0;
      *(v6 + 410) = CFGetInt64() != 0;
      return v7;
    }

    v7 = 4294895345;
LABEL_32:
    APSLogErrorAt();
    return v7;
  }

  if (CFEqual(a2, @"didSetup"))
  {
    if (a3)
    {
      v7 = 0;
      *(v6 + 45) = CFGetInt64() != 0;
      return v7;
    }

    v7 = 4294895345;
    goto LABEL_32;
  }

  if (CFEqual(a2, @"didRecord"))
  {
    if (a3)
    {
      v7 = 0;
      *(v6 + 46) = CFGetInt64() != 0;
      return v7;
    }

    v7 = 4294895345;
    goto LABEL_32;
  }

  if (CFEqual(a2, @"networkClockStartDurationMs"))
  {
    if (a3)
    {
      v7 = 0;
      *(v6 + 560) = FigCFNumberGetUInt64();
      return v7;
    }

    v7 = 4294895345;
    goto LABEL_32;
  }

  if (CFEqual(a2, @"nowPlayingSessionStartDurationMs"))
  {
    if (a3)
    {
      v7 = 0;
      *(v6 + 552) = FigCFNumberGetUInt64();
      return v7;
    }

    v7 = 4294895345;
    goto LABEL_32;
  }

  v7 = 4294895342;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v7;
}

void *apProcessor_CopyProperty(uint64_t a1, const void *a2, int *a3)
{
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    APSLogErrorAt();
    v13 = -71951;
    goto LABEL_15;
  }

  v7 = DerivedStorage;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, @"pairingVerified"))
  {
    v8 = MEMORY[0x277CBED28];
    v9 = *(v7 + 408);
LABEL_10:
    v10 = MEMORY[0x277CBED10];
    v11 = v9 == 0;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"pairingPerformedIsSufficientForAuth"))
  {
    v8 = MEMORY[0x277CBED28];
    v9 = *(v7 + 409);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"pairingRequired"))
  {
    v15 = 1;
    if (!CFObjectGetPropertyInt64Sync())
    {
      v15 = CFObjectGetPropertyInt64Sync() != 0;
    }

    *(v7 + 410) = v15;
    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    v17 = *(v7 + 410);
    if (PropertyInt64Sync)
    {
      if (*(v7 + 410))
      {
        v17 = 1;
      }

      else
      {
        v18 = *(v7 + 24);
        v17 = 1;
        if (v18 != 4 && v18 != 64)
        {
          v17 = v18 == 128;
        }
      }

      *(v7 + 410) = v17;
    }

    if (v17)
    {
      v8 = MEMORY[0x277CBED28];
    }

    else
    {
      v8 = MEMORY[0x277CBED10];
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"MCActive"))
  {
    v8 = MEMORY[0x277CBED28];
    v10 = MEMORY[0x277CBED10];
    v11 = *(v7 + 104) == 0;
LABEL_11:
    if (v11)
    {
      v8 = v10;
    }

LABEL_13:
    v12 = *v8;
LABEL_14:
    v13 = 0;
    v20 = CFRetain(v12);
    goto LABEL_15;
  }

  if (CFEqual(a2, @"RemoteControl"))
  {
    v8 = MEMORY[0x277CBED28];
    v9 = *(v7 + 440);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"didSetup"))
  {
    v8 = MEMORY[0x277CBED28];
    v9 = *(v7 + 45);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"didRecord"))
  {
    v8 = MEMORY[0x277CBED28];
    v9 = *(v7 + 46);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"hijackID"))
  {
    v12 = *(v7 + 456);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_41:
    APSLogErrorAt();
    v13 = -71955;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"ClientVersion"))
  {
    v20 = CFNumberCreate(0, kCFNumberSInt32Type, (v7 + 272));
    if (v20)
    {
LABEL_45:
      v13 = 0;
      goto LABEL_15;
    }

    APSLogErrorAt();
    v13 = -71950;
  }

  else
  {
    if (CFEqual(a2, @"parentGroupInfo"))
    {
      v19 = *(v7 + 448);
      v20 = v19;
      if (v19)
      {
        CFRetain(v19);
      }

      goto LABEL_45;
    }

    if (CFEqual(a2, @"senderSupportsMultiHop"))
    {
      v8 = MEMORY[0x277CBED28];
      v9 = *(v7 + 441);
      goto LABEL_10;
    }

    if (CFEqual(a2, @"type"))
    {
      airplayReqProcessor_copyType(a1, &v20);
      goto LABEL_45;
    }

    if (CFEqual(a2, @"isMediaSession"))
    {
      if (!*(v7 + 440))
      {
        v8 = MEMORY[0x277CBED28];
        v9 = *(v7 + 47);
        goto LABEL_10;
      }

      goto LABEL_41;
    }

    v13 = -71954;
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

LABEL_15:
  if (a3)
  {
    *a3 = v13;
  }

  return v20;
}

void airplayReqProcessor_copyType(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  Int64 = CFNumberCreateInt64();
  if (a2)
  {
    *a2 = Int64;
  }

  else if (Int64)
  {

    CFRelease(Int64);
  }
}

uint64_t airplayReqProcessor_GetMCRPForTargetSessionID(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 104);
  if (v4)
  {
    if (CFDictionaryGetCount(v4))
    {
      CFDictionaryApplyBlock();
      if (a3)
      {
        *a3 = v9[3];
      }
    }
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);
  return 0;
}

uint64_t APReceiverRequestProcessorCopyProperty_3958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 0;
  }

  return v6(a1, a2, a3);
}

uint64_t airplayReqProcessor_GetMCRPForMCSession(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 104))
  {
    Value = 0;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  v5 = DerivedStorage;
  Int64 = CFNumberCreateInt64();
  Value = CFDictionaryGetValue(*(v5 + 104), Int64);
  if (Int64)
  {
    CFRelease(Int64);
  }

  if (a3)
  {
LABEL_5:
    *a3 = Value;
  }

  return 0;
}

uint64_t airplayReqProcessor_HandleRequest(const void *a1, uint64_t a2, const __CFDictionary *a3, CFMutableDictionaryRef *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage[36].i64[0])
  {
    DerivedStorage[38].i64[0] = mach_absolute_time();
  }

  v9 = DerivedStorage[2].i64[0];
  if (v9)
  {
    ++*(v9 + 500);
  }

  if (!DerivedStorage[7].i64[1])
  {
    DerivedStorage[7].i64[1] = CFDictionaryGetHardwareAddress();
  }

  if (!DerivedStorage[8].i8[6])
  {
    CFDictionaryGetCString();
    airplayReqProcessor_updateUIClientName(a1, &DerivedStorage[8].i8[6]);
  }

  v10 = 4294895363;
  if (*(DerivedStorage->i64[0] + 256))
  {
    if (a2 <= 1885434724)
    {
      if (a2 > 1801807215)
      {
        if (a2 == 1801807216)
        {
          goto LABEL_23;
        }

        v11 = 1836348024;
      }

      else
      {
        if (a2 == 1718628917)
        {
          goto LABEL_23;
        }

        v11 = 1768842863;
      }
    }

    else if (a2 <= 1886417779)
    {
      if (a2 == 1885434725)
      {
        goto LABEL_23;
      }

      v11 = 1885435493;
    }

    else
    {
      if (a2 == 1886417780 || a2 == 1919119972)
      {
        goto LABEL_23;
      }

      v11 = 1937012080;
    }

    if (a2 != v11)
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_182;
    }
  }

LABEL_23:
  if (!DerivedStorage[25].i8[8] && DerivedStorage[25].i8[10])
  {
    if (a2 <= 1885435492)
    {
      if (a2 == 1702064240 || a2 == 1768842863)
      {
        goto LABEL_24;
      }

      v14 = 1885434725;
    }

    else if (a2 > 1886613611)
    {
      if (a2 == 1886613612)
      {
        goto LABEL_24;
      }

      v14 = 1886614892;
    }

    else
    {
      if (a2 == 1885435493)
      {
        goto LABEL_24;
      }

      v14 = 1886417780;
    }

    if (a2 != v14)
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v37 = CFDictionaryCopyCString();
      v38 = v37;
      if (v37)
      {
        v39 = strlen(v37);
        if (v39)
        {
          if (memchr(v38, 47, v39) && TextToSourceVersion() > 0x1E9037)
          {
            goto LABEL_200;
          }
        }
      }

      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v38)
      {
LABEL_200:
        free(v38);
      }

      goto LABEL_182;
    }
  }

LABEL_24:
  *a4 = 0;
  mach_absolute_time();
  if (a2 != 1668246893 && a2 != 1885434725 && a2 != 1885435493)
  {
    airplayReqProcessor_updateLastControlMessage();
  }

  v12 = 4294895361;
  if (a2 <= 1886283374)
  {
    if (a2 > 1735615345)
    {
      if (a2 <= 1801807215)
      {
        if (a2 <= 1735616869)
        {
          if (a2 == 1735615346 || a2 == 1735616561)
          {
            goto LABEL_125;
          }

          v13 = 1735616614;
          goto LABEL_124;
        }

        if (a2 == 1735616870 || a2 == 1735684980)
        {
          goto LABEL_125;
        }

        if (a2 != 1768842863)
        {
          goto LABEL_183;
        }

        Info = airplayReqProcessor_requestProcessGetInfo(a1, a3, a4);
        goto LABEL_181;
      }

      if (a2 <= 1885434724)
      {
        switch(a2)
        {
          case 0x6B656570:
            Info = airplayReqProcessor_requestProcessFeedback(a1, a3, a4);
            break;
          case 0x6D747278:
            Info = airplayReqProcessor_requestProcessMetrics(a1, a3, a4);
            break;
          case 0x6F707473:
            Info = airplayReqProcessor_requestProcessOptions(a4);
            break;
          default:
            goto LABEL_183;
        }

        goto LABEL_181;
      }

      if (a2 <= 1885435492)
      {
        if (a2 == 1885434725)
        {
          DerivedStorage[36].i8[8] = 1;
          v10 = airplayReqProcessor_requestProcessPairSetup(a1, a3, a4);
          mach_absolute_time();
          v34 = UpTicksToMilliseconds();
          v35.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v35.i64[1] = v34;
          DerivedStorage[29] = vaddq_s64(DerivedStorage[29], v35);
          goto LABEL_182;
        }

        v13 = 1885435252;
        goto LABEL_124;
      }

      if (a2 == 1885435493)
      {
        DerivedStorage[36].i8[8] = 1;
        Info = airplayReqProcessor_requestProcessPairVerify(a1, a3, a4);
        goto LABEL_181;
      }

      v13 = 1886151033;
    }

    else
    {
      if (a2 <= 1718383463)
      {
        if (a2 > 1634627170)
        {
          switch(a2)
          {
            case 0x616E6E63:
              Info = airplayReqProcessor_requestProcessAnnounce(a1);
              break;
            case 0x636F6D6D:
              Info = airplayReqProcessor_requestProcessCommand(a1, a3, a4);
              break;
            case 0x65737070:
              DerivedStorage[36].i8[8] = 1;
              airplayReqProcessor_requestProcessEnsurePairPin();
              v10 = 0;
              goto LABEL_182;
            default:
              goto LABEL_183;
          }
        }

        else
        {
          switch(a2)
          {
            case 0x6163746E:
              goto LABEL_125;
            case 0x616D736D:
              Info = airplayReqProcessor_requestProcessSetAudioMode();
              break;
            case 0x616E6368:
              Info = airplayReqProcessor_requestProcessGetAnchor(a1, a3, a4);
              break;
            default:
              goto LABEL_183;
          }
        }

        goto LABEL_181;
      }

      if (a2 <= 1718839393)
      {
        switch(a2)
        {
          case 0x666C7368:
            Info = airplayReqProcessor_requestProcessFlush(a1, a3, a4);
            break;
          case 0x66703235:
            Info = airplayReqProcessor_requestProcessFPSetup();
            break;
          case 0x66707332:
            Info = airplayReqProcessor_requestProcessFPSetup2();
            break;
          default:
            goto LABEL_183;
        }

        goto LABEL_181;
      }

      if (a2 > 1735422065)
      {
        if (a2 == 1735422066)
        {
          goto LABEL_125;
        }

        if (a2 != 1735422573)
        {
          goto LABEL_183;
        }

        Info = airplayReqProcessor_requestProcessGetParameter();
        goto LABEL_181;
      }

      if (a2 == 1718839394)
      {
        Info = airplayReqProcessor_requestProcessFlushBuffered(a1, a3, a4);
        goto LABEL_181;
      }

      v13 = 1735222134;
    }

    goto LABEL_124;
  }

  if (a2 <= 1920365170)
  {
    if (a2 <= 1886614891)
    {
      if (a2 > 1886545266)
      {
        if (a2 == 1886545267 || a2 == 1886611505)
        {
          goto LABEL_125;
        }

        if (a2 != 1886613612)
        {
          goto LABEL_183;
        }

        DerivedStorage[36].i8[8] = 1;
        Info = airplayReqProcessor_requestProcessPairSetupPINLegacy(a1, a3, a4);
      }

      else
      {
        if (a2 == 1886283375 || a2 == 1886414964)
        {
          goto LABEL_125;
        }

        if (a2 != 1886417780)
        {
          goto LABEL_183;
        }

        DerivedStorage[36].i8[8] = 1;
        Info = airplayReqProcessor_requestProcessPairSetupPINStart(a1);
      }

      goto LABEL_181;
    }

    if (a2 <= 1918984563)
    {
      if (a2 != 1886614892)
      {
        if (a2 == 1886679924)
        {
          goto LABEL_125;
        }

        v13 = 1886809964;
        goto LABEL_124;
      }

      DerivedStorage[36].i8[8] = 1;
      Info = airplayReqProcessor_requestProcessPairSetupUnauthenticatedLegacy(a1, a3, a4);
      goto LABEL_181;
    }

    if (a2 <= 1919119971)
    {
      if (a2 == 1918984564)
      {
        goto LABEL_125;
      }

      v13 = 1918989413;
      goto LABEL_124;
    }

    if (a2 == 1919119972)
    {
      Info = airplayReqProcessor_requestProcessRecord(a1, a3, a4);
      goto LABEL_181;
    }

    v13 = 1920168547;
LABEL_124:
    if (a2 != v13)
    {
      goto LABEL_183;
    }

LABEL_125:
    v52 = 0;
    v16 = CMBaseObjectGetDerivedStorage();
    v51 = 0;
    v50 = 0;
    if (APSIsAPMSpeaker())
    {
      APSLogErrorAt();
      v47 = -71931;
LABEL_226:
      v52 = v47;
      goto LABEL_155;
    }

    Int64 = CFDictionaryGetInt64();
    airplayReqProcessor_GetMCRPForMCSession(a1, Int64, &v50);
    v51 = 0;
    v18 = v50;
    if (v50)
    {
      goto LABEL_139;
    }

    if (!airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(a1, &v52))
    {
LABEL_219:
      APSLogErrorAt();
LABEL_155:
      v10 = v52;
LABEL_182:
      DerivedStorage[36].i32[3] = v10;
      v12 = v10;
      goto LABEL_183;
    }

    if (Int64)
    {
      *&v53 = 0;
      HIBYTE(v53) = 0;
      *(&v53 + 7) = Int64;
      v51 = airplayReqProcessor_createAndStoreMediaControlRequestProcessorForMCSession(a1, Int64, &v53);
      if (!v51)
      {
        v19 = *(*v16 + 88);
        v20 = CMBaseObjectGetDerivedStorage();
        v21 = *(v20 + 32);
        if (v21 && *(v21 + 464))
        {
          v22 = v20;
          v49 = v16;
          if (gAirPlayReceiverReverseConnectionInitOnce != -1)
          {
            dispatch_once_f(&gAirPlayReceiverReverseConnectionInitOnce, 0, _AirPlayReceiverReverseConnectionGetTypeID);
          }

          Instance = _CFRuntimeCreateInstance();
          if (Instance)
          {
            v24 = Instance;
            *(Instance + 80) = 0;
            *(Instance + 48) = 0u;
            *(Instance + 64) = 0u;
            *(Instance + 16) = 0u;
            *(Instance + 32) = 0u;
            dispatch_retain(v19);
            *(v24 + 72) = v19;
            __strlcpy_chk();
            *(v24 + 38) = v53;
            *(v24 + 56) = Int64;
            v25 = *(v22[4] + 464);
            *(v24 + 64) = v25;
            CFRetain(v25);
            *(v24 + 80) = 1;
            v26 = AirPlayReceiverServerStoreReverseConnectionContext(*v22, v24 + 38, v24);
            if (!v26)
            {
              CFRelease(v24);
              v51 = 0;
              v27 = Int64;
              v16 = v49;
LABEL_138:
              airplayReqProcessor_GetMCRPForMCSession(a1, v27, &v50);
              v51 = 0;
              v18 = v50;
              if (v50)
              {
LABEL_139:
                if (a2 != 1886151033 || Int64)
                {
                  goto LABEL_143;
                }

                v52 = airplayReqProcessor_hijackCurrentSessionIfNeeded(a1);
                if (!v52)
                {
                  v18 = v50;
LABEL_143:
                  v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                  if (v29)
                  {
                    v30 = v29(v18, a2, a3, a4);
                  }

                  else
                  {
                    v30 = -71934;
                  }

                  v52 = v30;
                  if (!Int64)
                  {
                    if (a2 != 1886151033 || v30)
                    {
                      if (a2 == 1937010544)
                      {
                        airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 0);
                        airplayReqProcessor_deregisterReqProcWithSessionManagerIfNeeded(a1);
                      }
                    }

                    else
                    {
                      v31 = v16[57];
                      if (v31)
                      {
                        CFRelease(v31);
                        v16[57] = 0;
                      }

                      CMBaseObjectGetDerivedStorage();
                      v16[57] = CFStringCreateF();
                      airplayReqProcessor_handleNewSessionFromHTUnawareSender();
                      v51 = airplayReqProcessor_registerReqProcWithSessionManager(a1, 0);
                      if (v51)
                      {
                        APSLogErrorAt();
                        v52 = -71934;
                      }

                      else
                      {
                        airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 1);
                      }
                    }
                  }

                  goto LABEL_155;
                }

                goto LABEL_219;
              }

              goto LABEL_225;
            }

            v48 = v26;
            APSLogErrorAt();
            CFRelease(v24);
          }

          else
          {
            APSLogErrorAt();
            v48 = -6728;
          }
        }

        else
        {
          APSLogErrorAt();
          v48 = -6705;
        }

        v51 = v48;
      }

LABEL_225:
      APSLogErrorAt();
      v47 = -71946;
      goto LABEL_226;
    }

    v28 = airplayReqProcessor_createAndStoreMediaControlRequestProcessorForMCSession(a1, 0, 0);
    v27 = 0;
    v51 = v28;
    if (v28)
    {
      APSLogErrorAt();
      v47 = -71930;
      goto LABEL_226;
    }

    goto LABEL_138;
  }

  if (a2 <= 1936941937)
  {
    if (a2 <= 1936027767)
    {
      if (a2 == 1920365171 || a2 == 1936024939)
      {
        goto LABEL_125;
      }

      if (a2 != 1936027749)
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (a2 > 1936749164)
      {
        if (a2 == 1936749165)
        {
          Info = airplayReqProcessor_requestProcessSetParameter(a1, a3);
        }

        else
        {
          if (a2 != 1936875892)
          {
            goto LABEL_183;
          }

          Info = airplayReqProcessor_requestProcessSetRateAndAnchorTime(a1, a3, a4);
        }

        goto LABEL_181;
      }

      if (a2 != 1936027768)
      {
        v13 = 1936748658;
        goto LABEL_124;
      }
    }

    Info = airplayReqProcessor_requestProcessSetPeers();
LABEL_181:
    v10 = Info;
    goto LABEL_182;
  }

  if (a2 <= 1937011315)
  {
    if (a2 == 1936941938)
    {
      goto LABEL_125;
    }

    if (a2 == 1936942192)
    {
      Info = airplayReqProcessor_requestProcessSetupSDP(a1, a3, a4);
      goto LABEL_181;
    }

    v13 = 1937010544;
    goto LABEL_124;
  }

  if (a2 <= 1952741229)
  {
    if (a2 == 1937011316)
    {
      Info = airplayReqProcessor_requestProcessSetRate(a1, a3, a4);
    }

    else
    {
      if (a2 != 1937012080)
      {
        goto LABEL_183;
      }

      Info = airplayReqProcessor_requestProcessSetupPlist(a1, a3, a4);
    }

    goto LABEL_181;
  }

  if (a2 == 1952741230 || a2 == 1953719408)
  {
    v32 = CMBaseObjectGetDerivedStorage();
    LOBYTE(v50) = 1;
    LODWORD(v53) = 0;
    v33 = gLogCategory_APReceiverRequestProcessorAirPlay;
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50)
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay != -1)
      {
LABEL_163:
        if (v33 == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
        goto LABEL_203;
      }

      if (_LogCategory_Initialize())
      {
        v33 = gLogCategory_APReceiverRequestProcessorAirPlay;
        goto LABEL_163;
      }
    }

LABEL_203:
    CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v41 = TypedValue;
    if (TypedValue)
    {
      CFDataGetBytePtr(TypedValue);
      CFDataGetLength(v41);
      CFDictionaryGetTypeID();
      v41 = CFCreateWithPlistBytes();
    }

    v42 = *(v32 + 32);
    if (v42)
    {
      AirPlayReceiverSessionTearDown(v42, v41, 0, &v50);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v44 = Mutable;
      if (v50)
      {
        v45 = *(v32 + 32);
        if (v45)
        {
          CFRelease(v45);
          *(v32 + 32) = 0;
        }

        v46 = *(v32 + 448);
        if (v46)
        {
          CFRelease(v46);
          *(v32 + 448) = 0;
        }

        *(v32 + 44) = 0;
        *(v32 + 46) = 0;
        airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 0);
        airplayReqProcessor_deregisterReqProcWithSessionManagerIfNeeded(a1);
      }

      v10 = 0;
      *a4 = v44;
    }

    else
    {
      APSLogErrorAt();
      v10 = 4294895362;
    }

    if (v41)
    {
      CFRelease(v41);
    }

    goto LABEL_182;
  }

LABEL_183:
  if (!DerivedStorage[36].i64[0])
  {
    DerivedStorage[38].i64[1] += mach_absolute_time() - DerivedStorage[38].i64[0];
  }

  DerivedStorage[38].i64[0] = 0;
  return v12;
}

void airplayReqProcessor_updateUIClientName(uint64_t a1, const char *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) && *a2)
  {
    v4 = DerivedStorage;
    v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
    v6 = *(v4 + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(v6, @"ClientName", v5);
    }

    CFRelease(v5);
  }
}

void airplayReqProcessor_updateLastControlMessage()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CFStringCreateF();
  if (FigCFEqual())
  {
    v2 = *(DerivedStorage + 600) + 1;
  }

  else
  {
    v3 = *(DerivedStorage + 592);
    *(DerivedStorage + 592) = v1;
    if (v1)
    {
      CFRetain(v1);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    v2 = 1;
  }

  *(DerivedStorage + 600) = v2;
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t airplayReqProcessor_requestProcessAnnounce(const void *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v30 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!airplayReqProcessor_isAllowedToConnectBasedOnACL())
  {
    APSLogErrorAt();
    return -71930;
  }

  if (!airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(a1, &v30))
  {
    goto LABEL_115;
  }

  if (*(DerivedStorage + 44))
  {
    return -71931;
  }

  CFDictionaryGetData();
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
LABEL_116:
    APSLogErrorAt();
    return -71938;
  }

  v5 = TypedValue;
  v6 = *(DerivedStorage + 24);
  if ((v6 == 4 || v6 == 128 || v6 == 64) && !APReceiverSystemInfoAllowsP2PConnectionFromMACAddress(*(*DerivedStorage + 160), DerivedStorage + 128))
  {
    APSLogErrorAt();
    return -71933;
  }

  v30 = airplayReqProcessor_hijackCurrentSessionIfNeeded(a1);
  if (v30)
  {
LABEL_115:
    APSLogErrorAt();
    return v30;
  }

  if (SDPFindSessionSection())
  {
    goto LABEL_116;
  }

  SDPFindType();
  SNScanF();
  SDPFindType();
  TruncateUTF8();
  if (SDPFindMediaSection())
  {
    goto LABEL_111;
  }

  if (strncmp_prefix())
  {
    goto LABEL_19;
  }

  v48 = 0;
  v45 = 0;
  v46 = 0;
  v43[1] = 0;
  v44 = 0;
  v42 = 0;
  v43[0] = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v9 = CMBaseObjectGetDerivedStorage();
  Length = CFDataGetLength(v5);
  BytePtr = CFDataGetBytePtr(v5);
  if (SDPFindMediaSection())
  {
    goto LABEL_79;
  }

  if (SNScanF() != 1)
  {
    goto LABEL_79;
  }

  if (SDPFindAttribute())
  {
    goto LABEL_79;
  }

  v20 = v43;
  if (SNScanF() != 2 || v44 != HIDWORD(v44))
  {
    goto LABEL_79;
  }

  if (strnicmpx())
  {
    if (strnicmpx())
    {
      if (strnicmpx() && strnicmpx())
      {
        goto LABEL_111;
      }

      *(v9 + 84) = 0x16000000001;
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      v50 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      if (SDPFindAttribute())
      {
        goto LABEL_79;
      }

      v20 = &v33;
      if (SNScanF() != 2 || v44 != HIDWORD(v44))
      {
        goto LABEL_79;
      }

      v31 = 3;
      v32 = "AAC";
      SDPFindParameter();
      if (strncmpx())
      {
        if (strncmpx())
        {
          if (gLogCategory_APReceiverRequestProcessorAirPlay > 90 || gLogCategory_APReceiverRequestProcessorAirPlay == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_111;
          }

LABEL_59:
          LogPrintF();
LABEL_111:
          APSLogErrorAt();
          return -71936;
        }

        v16 = 8;
      }

      else
      {
        v16 = 4;
      }

      *(v9 + 84) = v16;
      v31 = 4;
      v32 = "1024";
      SDPFindParameter();
      if (SNScanF() != 1)
      {
        goto LABEL_79;
      }
    }
  }

  else
  {
    LODWORD(v50) = 0;
    LODWORD(v33) = 0;
    LODWORD(v32) = 0;
    LODWORD(v31) = 0;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v34 = 0;
    if (SDPFindAttribute())
    {
      goto LABEL_79;
    }

    v28 = &v35;
    v29 = &v34;
    v26 = &v36;
    v27 = &v35 + 4;
    v24 = &v37;
    v25 = &v36 + 4;
    v22 = &v31;
    v23 = &v37 + 4;
    v20 = &v33;
    v21 = &v32;
    if (SNScanF() != 12 || v44 != HIDWORD(v44))
    {
      goto LABEL_79;
    }

    v10 = v50;
    *(v9 + 84) = 2;
    *(v9 + 88) = v10;
  }

  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  SDPFindAttribute();
  if (v42)
  {
    v33 = 0;
    LODWORD(v32) = 0;
    if (Base64Decode() || v38 >= 0x101 || !*(v9 + 384))
    {
      goto LABEL_79;
    }

    OowSGu();
    if (v17)
    {
      if (*(v9 + 384))
      {
        IPaI1oem5iL();
        *(v9 + 384) = 0;
      }

      goto LABEL_79;
    }

    if (v32 != 16)
    {
      jEHf8Xzsv8K(v33);
      goto LABEL_79;
    }

    v18 = v33;
    *(v9 + 48) = *v33;
    jEHf8Xzsv8K(v18);
    if ((*(v9 + 356) & 0xFFFFFFFE) != 2)
    {
      goto LABEL_111;
    }
  }

  SDPFindAttribute();
  if (v42 && v40)
  {
    if (!Base64Decode() && v38 == 16)
    {
      v19 = 1;
      goto LABEL_102;
    }

LABEL_79:
    APSLogErrorAt();
    goto LABEL_111;
  }

  if (v42 | v40)
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay > 90 || gLogCategory_APReceiverRequestProcessorAirPlay == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_111;
    }

    goto LABEL_59;
  }

  v19 = 0;
LABEL_102:
  *(v9 + 92) = 11025;
  *(v9 + 80) = v19;
  Length = 0;
  v48 = 0;
  SDPFindAttribute();
  if (Length && SNScanF() != 1)
  {
    goto LABEL_79;
  }

  *(v9 + 96) = 88200;
  Length = 0;
  v48 = 0;
  SDPFindAttribute();
  if (Length)
  {
    if (SNScanF() != 1)
    {
      goto LABEL_79;
    }
  }

LABEL_19:
  if (*(DerivedStorage + 8))
  {
    v7 = *(DerivedStorage + 24);
    if (v7 <= 15)
    {
      if (v7 > 3)
      {
        if (v7 == 4)
        {
          v8 = "AWDL";
          goto LABEL_68;
        }

        if (v7 == 8)
        {
          v8 = "USB";
          goto LABEL_68;
        }
      }

      else
      {
        if (v7 == 1)
        {
          v8 = "Enet";
          goto LABEL_68;
        }

        if (v7 == 2)
        {
          v8 = "WiFi";
          goto LABEL_68;
        }
      }
    }

    else if (v7 <= 63)
    {
      if (v7 == 16)
      {
        v8 = "Direct";
        goto LABEL_68;
      }

      if (v7 == 32)
      {
        v8 = "BTLE";
        goto LABEL_68;
      }
    }

    else
    {
      switch(v7)
      {
        case 64:
          v8 = "WFD";
          goto LABEL_68;
        case 128:
          v8 = "NAN";
          goto LABEL_68;
        case 256:
          v8 = "IPsecBT";
LABEL_68:
          v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"AirPlay starting...\n%s\n%s\n", DerivedStorage + 134, v8, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
          v12 = *(DerivedStorage + 8);
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v13)
          {
            v13(v12, 30, v11);
          }

          CFRelease(v11);
          goto LABEL_71;
      }
    }

    if (v7 == 512)
    {
      v8 = "IPSecWiFi";
    }

    else
    {
      v8 = "?";
    }

    goto LABEL_68;
  }

LABEL_71:
  __strlcpy_chk();
  *(DerivedStorage + 44) = 1;
  *(DerivedStorage + 440) = 0;
  v14 = *(DerivedStorage + 456);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 456) = 0;
  }

  CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 456) = CFStringCreateF();
  if (!airplayReqProcessor_registerReqProcWithSessionManager(a1, 0))
  {
    return 0;
  }

  APSLogErrorAt();
  return -71934;
}

uint64_t airplayReqProcessor_requestProcessOptions(CFMutableDictionaryRef *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetCString();
    result = 0;
    *a1 = v3;
  }

  else
  {
    APSLogErrorAt();
    return 4294895362;
  }

  return result;
}

uint64_t airplayReqProcessor_requestProcessSetParameter(uint64_t a1, const __CFDictionary *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = 4294895366;
  if (!*(CMBaseObjectGetDerivedStorage() + 45))
  {
    return 4294895365;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    if (CFStringCopyUTF8CString())
    {
      APSLogErrorAt();
      return 0;
    }

    TypedValue = CFStringGetLength(TypedValue);
  }

  CFDataGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (!TypedValue && (!v5 || !CFDataGetLength(v5)))
  {
    return 0;
  }

  if (!strnicmp_prefix())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *v48 = 0;
    Value = CFDictionaryGetValue(a2, @"applyTS");
    if (Value)
    {
      v32 = Value;
      CFStringGetTypeID();
      v33 = CFDictionaryGetTypedValue();
      CFDataGetTypeID();
      v34 = CFDictionaryGetTypedValue();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v36 = Mutable;
        CFDictionarySetValue(Mutable, @"artworkMIMEType", v33);
        if (v34 && CFDataGetLength(v34) >= 1)
        {
          v37 = v36;
          v38 = v34;
        }

        else
        {
          v38 = *MEMORY[0x277CBEEE8];
          v37 = v36;
        }

        CFDictionarySetValue(v37, @"artworkData", v38);
        if (AirPlayReceiverSessionSetProperty(*(DerivedStorage + 32), v42, @"metaData", v32, v36))
        {
          APSLogErrorAt();
          v6 = 4294895362;
        }

        else
        {
          v6 = 0;
        }

        CFRelease(v36);
        return v6;
      }

LABEL_81:
      APSLogErrorAt();
      return 4294895362;
    }

LABEL_80:
    APSLogErrorAt();
    return 4294895366;
  }

  if (!strnicmpx())
  {
    CMBaseObjectGetDerivedStorage();
    HIBYTE(v47) = 0;
    if (CFDictionaryGetValue(a2, @"applyTS"))
    {
      *v48 = 0;
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      CFDataGetTypeID();
      v39 = CFDictionaryGetTypedValue();
      v40 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v40)
      {
        v41 = v40;
        CFDataGetBytePtr(v39);
        CFDataGetLength(v39);
        CFDataGetBytePtr(v39);
        DMAPContentBlock_GetNextChunk();
        APSLogErrorAt();
        CFRelease(v41);
        return v3;
      }

      goto LABEL_81;
    }

    goto LABEL_80;
  }

  v6 = 4294895364;
  if (strnicmpx())
  {
    return v6;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  CFDataGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v8);
  if (Length < 1)
  {
    return 0;
  }

  v11 = &BytePtr[Length];
  v12 = &BytePtr[Length];
  v13 = 4294895355;
  while (1)
  {
    v14 = v12 - BytePtr;
    for (i = BytePtr; *i != 58; ++i)
    {
      if (!--v14)
      {
        return v13;
      }
    }

    if (i == BytePtr)
    {
      return v13;
    }

    v16 = i + 1;
    v45 = v13;
    if ((i + 1) < v11)
    {
      while (1)
      {
        v17 = *v16;
        if (v17 != 32 && v17 != 9)
        {
          break;
        }

        if (++v16 >= v11)
        {
          v16 = v11;
          break;
        }
      }
    }

    v19 = v16;
    if (v16 < v11)
    {
      v20 = v12 - v16;
      v19 = v16;
      while (1)
      {
        v21 = *v19;
        if (v21 == 10 || v21 == 13)
        {
          break;
        }

        ++v19;
        if (!--v20)
        {
          v19 = v11;
          break;
        }
      }
    }

    v44 = v12;
    v23 = v19 - v16;
    if (strnicmpx())
    {
      if (strnicmpx())
      {
        return v45;
      }

      HIBYTE(v47) = 0;
      *v48 = 0;
      if (SNScanF() != 3)
      {
        v3 = 4294895364;
LABEL_84:
        APSLogErrorAt();
        return v3;
      }

      v24 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v24)
      {
        v3 = 4294895362;
        goto LABEL_84;
      }

      v25 = v24;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      v46 = AirPlayReceiverSessionSetProperty(*(v7 + 32), v26, @"progress", 0, v25);
      CFRelease(v25);
      if (v46)
      {
        return 4294895354;
      }

      goto LABEL_44;
    }

    if (v23 >= 0x100)
    {
      APSLogErrorAt();
      return 4294895364;
    }

    if (*(v7 + 440))
    {
      break;
    }

    __memcpy_chk();
    v48[v23] = 0;
    strtod(v48, 0);
    if (*(v7 + 32))
    {
      if (CFObjectSetPropertyDouble())
      {
        goto LABEL_89;
      }
    }

    else if (CFObjectSetPropertyDouble())
    {
LABEL_89:
      APSLogErrorAt();
      return 4294895362;
    }

LABEL_44:
    if (v19 >= v11)
    {
      v12 = v44;
    }

    else
    {
      v12 = v44;
      v27 = v44 - v19;
      while (1)
      {
        v28 = *v19;
        if (v28 != 13 && v28 != 10)
        {
          break;
        }

        ++v19;
        if (!--v27)
        {
          v19 = v11;
          break;
        }
      }
    }

    BytePtr = v19;
    v13 = v45;
    if (v19 >= v11)
    {
      return 0;
    }
  }

  APSLogErrorAt();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t airplayReqProcessor_requestProcessFlush(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v16 = 0;
  *v15 = *MEMORY[0x277CEA038];
  v4 = *v15;
  *&v15[12] = *(MEMORY[0x277CEA038] + 12);
  v14[0] = v4;
  *(v14 + 12) = *&v15[12];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 40 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = 4294895362;
  if (!*(DerivedStorage + 46))
  {
    return 4294895365;
  }

  CFDictionaryGetInt64Ranged();
  v16 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
  if (v16 || (v13[0] = *v15, *(v13 + 12) = *&v15[12], !APSAudioTransportTimeIsValid()))
  {
    APSLogErrorAt();
    return 4294895366;
  }

  v7 = *(DerivedStorage + 32);
  v13[0] = *v15;
  *(v13 + 12) = *&v15[12];
  v16 = AirPlayReceiverSessionFlushAudio(v7, 0, MEMORY[0x277CEA038], 0, v13);
  if (v16 || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0)
  {
    APSLogErrorAt();
    return v6;
  }

  v9 = Mutable;
  if (LODWORD(v14[0]) == 2)
  {
    v13[0] = v14[0];
    *(v13 + 12) = *(v14 + 12);
    APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    goto LABEL_16;
  }

  if (LODWORD(v14[0]) != 1)
  {
LABEL_16:
    v6 = 0;
    *a3 = v9;
    return v6;
  }

  v10 = CFStringCreateMutable(0, 0);
  if (v10)
  {
    v11 = v10;
    CFStringAppendFormat(v10, 0, @"rtptime=%u", DWORD1(v14[0]));
    CFDictionarySetValue(v9, @"RTP-Info", v11);
    *a3 = v9;
    CFRelease(v11);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    CFRelease(v9);
  }

  return v6;
}

uint64_t airplayReqProcessor_requestProcessFlushBuffered(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v22 = 0;
  *v21 = *MEMORY[0x277CEA038];
  v4 = *v21;
  *&v21[12] = *(MEMORY[0x277CEA038] + 12);
  v20[0] = v4;
  *(v20 + 12) = *&v21[12];
  v19[0] = v4;
  *(v19 + 12) = *&v21[12];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = 4294895366;
  if (!*(DerivedStorage + 46))
  {
    return 4294895365;
  }

  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    APSLogErrorAt();
    return v6;
  }

  v8 = TypedValue;
  CFDataGetBytePtr(TypedValue);
  CFDataGetLength(v8);
  CFDictionaryGetTypeID();
  v9 = CFCreateWithPlistBytes();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v22 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
  if (v22 || (v18[0] = *v21, *(v18 + 12) = *&v21[12], v11 = APSAudioTransportTimeIsValid() != 0, CFDictionaryGetInt64Ranged(), (v22 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary()) != 0))
  {
    APSLogErrorAt();
    Mutable = 0;
    v15 = 0;
    goto LABEL_23;
  }

  v12 = *(DerivedStorage + 32);
  v18[0] = *v21;
  *(v18 + 12) = *&v21[12];
  v17[0] = v20[0];
  *(v17 + 12) = *(v20 + 12);
  v22 = AirPlayReceiverSessionFlushAudio(v12, v11, v18, Int64Ranged, v17);
  if (v22)
  {
    APSLogErrorAt();
    Mutable = 0;
LABEL_34:
    v15 = 0;
LABEL_35:
    v6 = 4294895362;
    goto LABEL_23;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    goto LABEL_34;
  }

  if (LODWORD(v19[0]) == 2)
  {
    v18[0] = v19[0];
    *(v18 + 12) = *(v19 + 12);
    APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    goto LABEL_21;
  }

  if (LODWORD(v19[0]) != 1)
  {
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v14 = CFStringCreateMutable(0, 0);
  v15 = v14;
  if (!v14)
  {
    APSLogErrorAt();
    goto LABEL_35;
  }

  CFStringAppendFormat(v14, 0, @"rtptime=%u", DWORD1(v19[0]));
  CFDictionarySetValue(Mutable, @"RTP-Info", v15);
LABEL_22:
  v6 = 0;
  *a3 = Mutable;
  Mutable = 0;
LABEL_23:
  if (v9)
  {
    CFRelease(v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v6;
}

uint64_t airplayReqProcessor_requestProcessGetAnchor(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v20 = 0;
  *v19 = *MEMORY[0x277CEA038];
  *&v19[12] = *(MEMORY[0x277CEA038] + 12);
  memset(v18, 0, sizeof(v18));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895362;
  }

  v6 = Mutable;
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v8 = TypedValue;
    CFDataGetBytePtr(TypedValue);
    CFDataGetLength(v8);
    CFDictionaryGetTypeID();
    v9 = CFCreateWithPlistBytes();
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    v11 = *(DerivedStorage + 32);
    if (v11)
    {
      v12 = *(v11 + 576);
      if (v12)
      {
        v13 = *(v12 + 96);
        if (v13)
        {
          v14 = v13(*(v12 + 40), Int64Ranged, v19, v18);
          if (!v14)
          {
            v20 = 0;
            APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            goto LABEL_19;
          }

          v15 = v14;
        }

        else
        {
          v15 = -12782;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        v15 = -6718;
      }
    }

    else
    {
      APSLogErrorAt();
      v15 = -72152;
    }

    v20 = v15;
LABEL_19:
    CFDictionarySetInt64();
    if (CFDictionaryGetCount(v6) >= 1 && (v20 = airplayReqProcessor_preparePlistResponse(v6, a3)) != 0)
    {
      APSLogErrorAt();
      v16 = 4294895362;
    }

    else
    {
      v16 = 0;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_24;
  }

  v16 = 4294895366;
  APSLogErrorAt();
LABEL_24:
  CFRelease(v6);
  return v16;
}

uint64_t airplayReqProcessor_requestProcessSetRate(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v23 = 0;
  *v22 = *MEMORY[0x277CEA038];
  v4 = *v22;
  *&v22[12] = *(MEMORY[0x277CEA038] + 12);
  v21[0] = v4;
  *(v21 + 12) = *&v22[12];
  memset(v20, 0, sizeof(v20));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895362;
  }

  v7 = Mutable;
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v9 = TypedValue;
    CFDataGetBytePtr(TypedValue);
    CFDataGetLength(v9);
    CFDictionaryGetTypeID();
    v10 = CFCreateWithPlistBytes();
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged == 1)
    {
      v23 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
      if (v23)
      {
        v18 = 4294895366;
      }

      else
      {
        v24[0] = *v22;
        *(v24 + 12) = *&v22[12];
        if (APSAudioTransportTimeIsValid())
        {
          goto LABEL_14;
        }

        v18 = 4294895366;
      }

      APSLogErrorAt();
LABEL_25:
      if (v10)
      {
        CFRelease(v10);
      }

      goto LABEL_27;
    }

LABEL_14:
    v12 = *(DerivedStorage + 32);
    if (v12)
    {
      v13 = *(v12 + 576);
      if (v13)
      {
        v14 = *(v13 + 104);
        if (v14)
        {
          v15 = *(v13 + 40);
          v24[0] = *v22;
          *(v24 + 12) = *&v22[12];
          v16 = v14(v15, Int64Ranged, v24, v21, v20);
          if (!v16)
          {
            v23 = 0;
            v24[0] = v21[0];
            *(v24 + 12) = *(v21 + 12);
            APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
LABEL_22:
            CFDictionarySetInt64();
            if (CFDictionaryGetCount(v7) >= 1 && (v23 = airplayReqProcessor_preparePlistResponse(v7, a3)) != 0)
            {
              APSLogErrorAt();
              v18 = 4294895362;
            }

            else
            {
              v18 = 0;
            }

            goto LABEL_25;
          }

          v17 = v16;
        }

        else
        {
          v17 = -12782;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        v17 = -6718;
      }
    }

    else
    {
      APSLogErrorAt();
      v17 = -72152;
    }

    v23 = v17;
    goto LABEL_22;
  }

  v18 = 4294895366;
  APSLogErrorAt();
LABEL_27:
  CFRelease(v7);
  return v18;
}

uint64_t airplayReqProcessor_requestProcessSetRateAndAnchorTime(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v30 = 0;
  *v29 = *MEMORY[0x277CEA038];
  v4 = *v29;
  *&v29[12] = *(MEMORY[0x277CEA038] + 12);
  v28[0] = v4;
  *(v28 + 12) = *&v29[12];
  v27[0] = v4;
  *(v27 + 12) = *&v29[12];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895362;
  }

  v7 = Mutable;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v9 = TypedValue;
    CFDataGetBytePtr(TypedValue);
    CFDataGetLength(v9);
    CFDictionaryGetTypeID();
    v10 = CFCreateWithPlistBytes();
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged == 1)
    {
      v30 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
      if (v30)
      {
        v17 = 4294895366;
      }

      else
      {
        v23[0] = *v29;
        *(v23 + 12) = *&v29[12];
        if (APSAudioTransportTimeIsValid())
        {
          v30 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
          if (!v30)
          {
            v12 = CFDictionaryGetInt64Ranged();
            Int64 = CFDictionaryGetInt64();
            v14 = CFDictionaryGetInt64();
            v15 = CFDictionaryGetInt64Ranged();
            goto LABEL_21;
          }

          v17 = 4294895366;
        }

        else
        {
          v17 = 4294895366;
        }
      }

      APSLogErrorAt();
LABEL_31:
      if (v10)
      {
        CFRelease(v10);
      }

      goto LABEL_33;
    }

    v14 = 0;
    Int64 = 0;
    v12 = 0;
    v15 = 0;
LABEL_21:
    v16 = *(DerivedStorage + 32);
    v23[0] = *v29;
    *(v23 + 12) = *&v29[12];
    v22[0] = v28[0];
    *(v22 + 12) = *(v28 + 12);
    *&v19 = v14;
    *(&v19 + 1) = Int64;
    v20 = v12;
    v21 = v15;
    v30 = AirPlayReceiverSessionSetRateAndAnchorTime(v16, Int64Ranged, v23, v22, &v19);
    if (!v30)
    {
      if (Int64Ranged != 1 || (v26 & 0x100000000) != 0)
      {
        goto LABEL_26;
      }

      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
    }

    CFDictionarySetInt64();
LABEL_26:
    v23[0] = v27[0];
    *(v23 + 12) = *(v27 + 12);
    if (APSAudioTransportTimeIsValid())
    {
      v23[0] = v27[0];
      *(v23 + 12) = *(v27 + 12);
      APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    }

    if (CFDictionaryGetCount(v7) >= 1 && (v30 = airplayReqProcessor_preparePlistResponse(v7, a3)) != 0)
    {
      APSLogErrorAt();
      v17 = 4294895362;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_31;
  }

  v17 = 4294895366;
  APSLogErrorAt();
LABEL_33:
  CFRelease(v7);
  return v17;
}

uint64_t airplayReqProcessor_requestProcessSetPeers()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    v1 = DerivedStorage;
    CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v3 = TypedValue;
      CFDataGetBytePtr(TypedValue);
      CFDataGetLength(v3);
      CFArrayGetTypeID();
      v4 = CFCreateWithPlistBytes();
      v5 = *(v1 + 32);
      if (!CFEqual(*(v5 + 672), @"PTP"))
      {
        goto LABEL_24;
      }

      v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (v5 + 152), 0x8000100u);
      v7 = APSNetworkClockSetPeersFromSetPeersMessagePayload();
      if (v7)
      {
        APSLogErrorAt();
      }

      if (v6)
      {
        CFRelease(v6);
      }

      if (v7)
      {
        v8 = 4294895362;
        APSLogErrorAt();
      }

      else
      {
LABEL_24:
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v8 = 0;
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      APSLogErrorAt();
      return 4294895366;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895358;
  }

  return v8;
}

uint64_t airplayReqProcessor_requestProcessGetParameter()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 45))
  {
    return 4294895365;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (CFStringCompare(TypedValue, @"text/parameters", 0))
  {
    return 4294895364;
  }

  CFDictionaryGetData();
  APSLogErrorAt();
  return 4294895366;
}

uint64_t airplayReqProcessor_requestProcessRecord(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v88 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  cf = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = 4294895359;
  if (!*(DerivedStorage + 45))
  {
    v6 = 4294895365;
    goto LABEL_154;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v57 = a3;
  if (!TypedValue)
  {
    goto LABEL_25;
  }

  v8 = TypedValue;
  v66 = CFStringCopyUTF8CString();
  if (v66)
  {
    goto LABEL_167;
  }

  CFStringGetLength(v8);
  v65 = v60;
  while (!HTTPParseParameter())
  {
    if (strnicmpx() && strnicmpx() && strnicmpx() && strnicmpx())
    {
      if (strnicmpx())
      {
        if (!strnicmpx())
        {
          goto LABEL_16;
        }
      }

      else
      {
        TextToInt32();
      }
    }

    else
    {
LABEL_16:
      TextToInt32();
    }
  }

  v6 = 4294895359;
LABEL_25:
  v56 = DerivedStorage;
  v9 = *(DerivedStorage + 32);
  theArray = 0;
  *(v9 + 352) = mach_absolute_time();
  if (*(v9 + 683))
  {
    goto LABEL_50;
  }

  *&block = 0;
  if (*(v9 + 192) == 128)
  {
    goto LABEL_39;
  }

  _AirPlayReceiverSessionRemoveTrafficRegistration(v9);
  v10 = *(v9 + 192);
  APTransportGetSharedTransport();
  CMBaseObject = FigTransportGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12 || v12(CMBaseObject, *MEMORY[0x277CE4F30], *MEMORY[0x277CBECE8], &block))
  {
LABEL_31:
    APSLogErrorAt();
    goto LABEL_37;
  }

  if (v10 != 4)
  {
    if (!APTransportTrafficRegistrarInfraTransactionCreate())
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (APTransportTrafficRegistrarAWDLTrafficRegistrationCreate())
  {
    goto LABEL_31;
  }

LABEL_33:
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_37:
  if (block)
  {
    CFRelease(block);
  }

LABEL_39:
  v13 = *(v9 + 592);
  if (v13)
  {
    *&v74 = 0;
    *(&v74 + 1) = &v74;
    *&v75 = 0x2000000000;
    DWORD2(v75) = 0;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    v15 = (v14 ? v14(v13) : MEMORY[0x277D85CD0]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v15)
    {
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 0x40000000;
      *&v85 = __APReceiverSBufConsumerStart_block_invoke;
      *(&v85 + 1) = &unk_278C60CC8;
      *&v86 = &v74;
      *(&v86 + 1) = v13;
      dispatch_sync(v15, &block);
      v16 = *(*(&v74 + 1) + 24);
    }

    else
    {
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      v16 = v17 ? v17(v13) : -12782;
      *(*(&v74 + 1) + 24) = v16;
    }

    _Block_object_dispose(&v74, 8);
    if (v16)
    {
      goto LABEL_120;
    }
  }

LABEL_50:
  if ((*(v9 + 476) & 0x80000000) == 0)
  {
    v78 = 0;
    v79 = 0;
    v81 = 0;
    v80 = 0;
    v77 = -1;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v86 = 0u;
    v87 = 0u;
    block = 0u;
    v85 = 0u;
    v72 = 0;
    *v73 = 0;
    *&v71.sa_len = 0;
    *&v71.sa_data[6] = 0;
    v18 = SocketAccept();
    if (v18)
    {
      v16 = v18;
      goto LABEL_124;
    }

    v19 = *(v9 + 476);
    if ((v19 & 0x80000000) == 0)
    {
      if (close(v19) && *__error())
      {
        __error();
      }

      *(v9 + 476) = -1;
    }

    v73[1] = 28;
    getsockname(v77, &v71, &v73[1]);
    v20 = HTTPClientCreateWithSocket();
    if (v20)
    {
      v16 = v20;
      goto LABEL_124;
    }

    v77 = -1;
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      HTTPClientGetClientID();
      LogPrintF();
    }

    SNPrintF();
    v21 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v22 = dispatch_queue_create(&block, v21);
    if (v22)
    {
      v23 = v22;
      HTTPClientSetDispatchQueue();
      dispatch_release(v23);
      APSLogUtilsGetHTTPClientCoreLogCategory();
      HTTPClientSetLogging();
      APSLogUtilsGetAsyncCnxLogCategory();
      HTTPClientSetConnectionLogging();
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      CFRetain(v9);
      *&v74 = v9;
      *(&v74 + 1) = _HandleEventConnectionInvalidated;
      HTTPClientSetDelegate();
      HTTPClientSetFlags();
      v24 = *(v9 + 488);
      if (v24 && (v25 = *(*(CMBaseObjectGetVTable() + 16) + 32)) != 0 && v25(v24))
      {
        v70 = 0;
        v68 = 0u;
        v69 = 0u;
        v26 = *(v9 + 488);
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v27)
        {
          v28 = v27(v26, "Events-Salt", 11, "Events-Read-Encryption-Key", 26, 32, v83);
          if (v28)
          {
            v16 = v28;
          }

          else
          {
            v29 = *(v9 + 488);
            v30 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v30)
            {
              v31 = v30(v29, "Events-Salt", 11, "Events-Write-Encryption-Key", 27, 32, v82);
              if (v31)
              {
                v16 = v31;
              }

              else
              {
                v32 = NetTransportChaCha20Poly1305Configure();
                if (!v32)
                {
                  for (i = 0; i != 32; ++i)
                  {
                    v83[i] = 0;
                  }

                  for (j = 0; j != 32; ++j)
                  {
                    v82[j] = 0;
                  }

                  HTTPClientSetTransportDelegate();
                  goto LABEL_76;
                }

                v16 = v32;
              }
            }

            else
            {
              v16 = -12782;
            }
          }
        }

        else
        {
          v16 = -12782;
        }

LABEL_124:
        APSLogErrorAt();
      }

      else
      {
LABEL_76:
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v16 = 0;
      }
    }

    else
    {
      APSLogErrorAt();
      v16 = -1;
    }

    if ((v77 & 0x80000000) == 0)
    {
      if (close(v77) && *__error())
      {
        __error();
      }

      v77 = -1;
    }

    if (v16)
    {
      if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_120;
    }
  }

  if (!*(v9 + 683))
  {
    v42 = *(v9 + 576);
    if (v42)
    {
      v43 = *(v42 + 72);
      if (!v43)
      {
        v16 = -12782;
        goto LABEL_120;
      }

      v44 = v43(*(v42 + 40));
      if (v44)
      {
        v16 = v44;
        goto LABEL_120;
      }
    }

    if (*(v9 + 616))
    {
      v45 = _ScreenStart(v9);
      if (v45)
      {
        v16 = v45;
        goto LABEL_120;
      }
    }

    v46 = AirPlayReceiverSessionPlatformControl(v9, @"startSession");
    if (v46)
    {
      v16 = v46;
      goto LABEL_129;
    }

    v47 = *(v9 + 568);
    if (!v47 || *(v9 + 753))
    {
      goto LABEL_91;
    }

    Count = CFDictionaryGetCount(v47);
    v49 = _cfDictionaryCopyKeysAndValues(*(v9 + 568), 0, &theArray);
    if (v49)
    {
      v16 = v49;
      goto LABEL_120;
    }

    if (Count < 1)
    {
      goto LABEL_91;
    }

    v50 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v50);
      v52 = APReceiverAudioSessionPlatformControl(ValueAtIndex, @"RASP::StartSession");
      if (v52)
      {
        break;
      }

      if (Count == ++v50)
      {
        goto LABEL_91;
      }
    }

    v16 = v52;
LABEL_120:
    APSLogErrorAt();
    goto LABEL_129;
  }

LABEL_91:
  *(v9 + 458) = 1;
  v35 = *(v9 + 88);
  if (v35)
  {
    v35(v9, *(v9 + 56));
  }

  if (*(v9 + 683))
  {
LABEL_96:
    if (APSIsAPMSpeaker())
    {
      v40 = APReceiverSystemInfoCopyProperty(*(*(v9 + 24) + 160), v39, @"TightSyncUUID", 0, 0);
      if (v40)
      {
        v41 = v40;
        if (!*(v9 + 683) && !*(v9 + 680) && !*(v9 + 496) && !APSMultiPrimariesEnabled())
        {
          if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          notify_post("kAirPlayWHANotification_InterruptedByPreWHASender");
        }

        CFRelease(v41);
      }
    }

    v16 = 0;
  }

  else
  {
    *(v9 + 528) = *(v9 + 352);
    v36 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v9 + 16));
    *(v9 + 184) = v36;
    if (v36)
    {
      v37 = v36;
      dispatch_set_context(v36, v9);
      dispatch_source_set_event_handler_f(v37, _PerformPeriodTasks);
      v38 = dispatch_time(0, 250000000);
      dispatch_source_set_timer(v37, v38, 0xEE6B280uLL, 0xEE6B280uLL);
      dispatch_resume(v37);
      goto LABEL_96;
    }

    APSLogErrorAt();
    v16 = -6700;
  }

LABEL_129:
  if (theArray)
  {
    CFRelease(theArray);
  }

  *(v9 + 268) = v16;
  mach_absolute_time();
  UpTicksToMilliseconds();
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    SourceVersionToCString();
    if (*(v9 + 681))
    {
      APSIsMemberOfHTGroup();
    }

    LogPrintF();
    v6 = 4294895359;
  }

  v66 = v16;
  if (v16 > 452)
  {
    if (v16 != 453 && v16 != 200453)
    {
      goto LABEL_168;
    }

    goto LABEL_154;
  }

  if (v16 == -6721)
  {
    goto LABEL_154;
  }

  if (v16)
  {
    goto LABEL_168;
  }

  *(v56 + 588) = 0;
  *(v56 + 576) = mach_absolute_time();
  airplayReqProcessor_reportPerfMetricsIfNeeded();
  v66 = CFArrayEnsureCreatedAndAppend();
  if (v66)
  {
LABEL_167:
    APSLogErrorAt();
    v6 = 0;
    goto LABEL_154;
  }

  if (*(v56 + 408))
  {
    CFArrayEnsureCreatedAndAppend();
  }

  APReceiverSystemInfoCopyInfoDict(*(*v56 + 160), cf, *MEMORY[0x277CBECE8], &v58);
  if (v58)
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    APReceiverRequestProcessorSendSystemInfoUpdate(a1, v58);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v54 = Mutable;
    CFObjectGetPropertyInt64Sync();
    CFDictionarySetInt64();
    v6 = 0;
    *(v56 + 46) = 1;
    *v57 = v54;
  }

  else
  {
LABEL_168:
    APSLogErrorAt();
    v6 = 4294895362;
  }

LABEL_154:
  if (v60)
  {
    free(v60);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  return v6;
}

uint64_t airplayReqProcessor_requestProcessSetupPlist(const void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v55 = -71934;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Session = 0;
  v52 = 0;
  v53 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v6 = &unk_27E37E000;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(DerivedStorage + 408))
  {
    APSLogErrorAt();
    v10 = 0;
    v32 = 0;
    Session = -6711;
LABEL_119:
    v55 = -71930;
    goto LABEL_131;
  }

  v50 = a3;
  mach_absolute_time();
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    APSLogErrorAt();
    v10 = 0;
    v32 = 0;
    goto LABEL_119;
  }

  v8 = TypedValue;
  CFDataGetBytePtr(TypedValue);
  CFDataGetLength(v8);
  CFDictionaryGetTypeID();
  v9 = CFCreateWithPlistBytes();
  *(DerivedStorage + 120) = CFDictionaryGetHardwareAddress();
  strncpy((DerivedStorage + 332), (*(DerivedStorage + 16) + 140), 0x11uLL);
  CFDictionaryGetHardwareAddress();
  CFDictionaryGetCString();
  airplayReqProcessor_updateUIClientName(a1, (DerivedStorage + 134));
  CFDictionaryGetData();
  if (!Session)
  {
    if (v52 != 16)
    {
      APSLogErrorAt();
      v32 = 0;
      v10 = 0;
      Session = -6743;
      v33 = -71930;
      goto LABEL_81;
    }

    *(DerivedStorage + 264) = bswap64(v60);
  }

  LOBYTE(v56) = 0;
  CFDictionaryGetCString();
  if (!*(DerivedStorage + 32))
  {
    Int64 = CFDictionaryGetInt64();
    v12 = CFDictionaryGetInt64() | Int64;
    v13 = CFDictionaryGetInt64();
    v14 = v13 != 0;
    v49 = CFDictionaryGetInt64() != 0;
    v48 = CFDictionaryGetInt64() == 0;
    v15 = CFDictionaryGetInt64() != 0;
    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    if (v12 && v13)
    {
      APSLogErrorAt();
      v6 = &unk_27E37E000;
      if (gLogCategory_APReceiverRequestProcessorAirPlay > 90 || gLogCategory_APReceiverRequestProcessorAirPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_167;
      }
    }

    else
    {
      if (!*(*DerivedStorage + 256) || v13)
      {
        if (airplayReqProcessor_isAllowedToConnectBasedOnACL())
        {
          if (v13 || v12)
          {
            if (v13)
            {
              v18 = 1;
LABEL_42:
              Session = airplayReqProcessor_requestCreateSession(a1, 1, v14, v49, v12 != 0, v15, v16);
              if (!Session)
              {
                __strlcpy_chk();
                *(DerivedStorage + 440) = v14;
                *(DerivedStorage + 40) = v18;
                v26 = CMBaseObjectGetDerivedStorage();
                v6 = &unk_27E37E000;
                if (v9 && *(v26 + 40) != 1 && IsAppleTV())
                {
                  Value = CFDictionaryGetValue(v9, @"model");
                  v28 = MEMORY[0x23EF18C00](Value);
                  v29 = (v28 - 1) < 3 || v28 == 100;
                  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }
                }

                else
                {
                  v29 = 0;
                }

                *(DerivedStorage + 441) = v29;
                Session = airplayReqProcessor_registerReqProcWithSessionManager(a1, v18);
                if (Session)
                {
                  APSLogErrorAt();
                  v32 = 0;
                  v55 = -71934;
                  v10 = 1;
                  goto LABEL_129;
                }

                v10 = 1;
LABEL_78:
                v31 = AirPlayReceiverSessionSetSecurityInfo(*(DerivedStorage + 32), v9, *(DerivedStorage + 400), (DerivedStorage + 384), *(DerivedStorage + 420), 0, 0);
                Session = v31;
                if (v31 != -6762)
                {
                  if (v31 == -6754)
                  {
                    v32 = 0;
                    v33 = -71943;
LABEL_81:
                    v55 = v33;
                    goto LABEL_129;
                  }

                  if (!v31)
                  {
                    LODWORD(cf) = 0;
                    if (*(CMBaseObjectGetDerivedStorage() + 40) == 2 && APSIsMemberOfHTGroup() && (CFArrayGetTypeID(), (v34 = CFDictionaryGetTypedValue()) != 0) && (Count = CFArrayGetCount(v34), Count >= 1))
                    {
                      v36 = Count;
                      v37 = 0;
                      while (1)
                      {
                        CFDictionaryGetTypeID();
                        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
                        if (cf)
                        {
                          APSLogErrorAt();
                          goto LABEL_94;
                        }

                        v39 = CFDictionaryGetInt64();
                        if ((!CFDictionaryContainsKey(TypedValueAtIndex, @"isMedia") || CFDictionaryGetInt64()) && (v39 == 103 || v39 == 96))
                        {
                          break;
                        }

                        if (v36 == ++v37)
                        {
                          goto LABEL_94;
                        }
                      }

                      v40 = CFDictionaryGetValue(TypedValueAtIndex, @"clientID");
                      v32 = v40;
                      if (v40)
                      {
                        CFRetain(v40);
                        v6 = &unk_27E37E000;
                        if (v32 == @"com.apple.TVAirPlay")
                        {
                          v32 = @"com.apple.TVAirPlay";
                          goto LABEL_106;
                        }

                        if (CFEqual(v32, @"com.apple.TVAirPlay"))
                        {
                          goto LABEL_106;
                        }
                      }

                      else
                      {
                        v6 = &unk_27E37E000;
                      }

                      v41 = v6[162];
                      if (v41 <= 50 && (v41 != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF();
                      }

                      Session = APReceiverRequestProcessorHijackAndBecomeMainSession(a1);
                      if (Session)
                      {
LABEL_150:
                        APSLogErrorAt();
                        v55 = -71934;
                        goto LABEL_129;
                      }
                    }

                    else
                    {
LABEL_94:
                      v32 = 0;
                      v6 = &unk_27E37E000;
                    }

LABEL_106:
                    Session = AirPlayReceiverSessionSetup(*(DerivedStorage + 32), v9, &v53);
                    if (Session)
                    {
                      APSLogErrorAt();
                      v33 = -71930;
                      goto LABEL_81;
                    }

                    Session = airplayReqProcessor_preparePlistResponse(v53, v50);
                    if (!Session)
                    {
                      if (!*(DerivedStorage + 45))
                      {
                        *(DerivedStorage + 44) = 257;
                        airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 1);
                      }

                      v55 = 0;
                      v42 = v6[162];
                      if (v42 <= 50 && (v42 != -1 || _LogCategory_Initialize()))
                      {
                        mach_absolute_time();
                        UpTicksToMilliseconds();
                        LogPrintF();
                      }

                      goto LABEL_129;
                    }

                    goto LABEL_150;
                  }

                  APSLogErrorAt();
                }

                v32 = 0;
                v55 = -71934;
                goto LABEL_129;
              }

              APSLogErrorAt();
              v32 = 0;
              v10 = 0;
              v43 = -71934;
              goto LABEL_157;
            }

            v18 = 2;
            goto LABEL_35;
          }

          if (!airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(a1, &v55))
          {
LABEL_154:
            APSLogErrorAt();
            v32 = 0;
            v10 = 0;
            goto LABEL_158;
          }

          v17 = *(DerivedStorage + 24);
          if (v17 != 4 && v17 != 128 && v17 != 64 || APReceiverSystemInfoAllowsP2PConnectionFromMACAddress(*(*DerivedStorage + 160), DerivedStorage + 128))
          {
            v55 = airplayReqProcessor_hijackCurrentSessionIfNeeded(a1);
            if (!v55)
            {
              v18 = 0;
LABEL_35:
              v23 = *(DerivedStorage + 456);
              if (v23)
              {
                CFRelease(v23);
                *(DerivedStorage + 456) = 0;
              }

              CFStringGetTypeID();
              v24 = CFDictionaryGetTypedValue();
              *(DerivedStorage + 456) = v24;
              if (v24)
              {
                CFRetain(v24);
                if (*(DerivedStorage + 456))
                {
                  goto LABEL_41;
                }
              }

              CFDictionaryGetInt64();
              CFDictionaryGetInt64();
              CMBaseObjectGetDerivedStorage();
              v25 = CFStringCreateF();
              *(DerivedStorage + 456) = v25;
              if (v25)
              {
                airplayReqProcessor_handleNewSessionFromHTUnawareSender();
LABEL_41:
                airplayReqProcessor_copyParentGroupInfoFromSetupRequest(a1, v9, (DerivedStorage + 448));
                *(DerivedStorage + 47) = v48;
                goto LABEL_42;
              }

              APSLogErrorAt();
              v32 = 0;
              v10 = 0;
              Session = -71934;
LABEL_158:
              v6 = &unk_27E37E000;
              goto LABEL_129;
            }

            goto LABEL_154;
          }

          APSLogErrorAt();
          v32 = 0;
          v10 = 0;
          Session = -71951;
          v43 = -71933;
        }

        else
        {
          APSLogErrorAt();
          v32 = 0;
          v10 = 0;
          v43 = -71930;
        }

LABEL_157:
        v55 = v43;
        goto LABEL_158;
      }

      APSLogErrorAt();
      v6 = &unk_27E37E000;
      if (gLogCategory_APReceiverRequestProcessorAirPlay > 90 || gLogCategory_APReceiverRequestProcessorAirPlay == -1 && !_LogCategory_Initialize())
      {
LABEL_167:
        v32 = 0;
        v10 = 0;
        Session = -71951;
        v55 = -71933;
        goto LABEL_129;
      }
    }

    LogPrintF();
    goto LABEL_167;
  }

  if (*(DerivedStorage + 440))
  {
    v10 = 0;
    goto LABEL_78;
  }

  cf = 0;
  v19 = CFDictionaryGetInt64();
  v20 = CFDictionaryGetInt64();
  v21 = v20 == 0;
  airplayReqProcessor_copyParentGroupInfoFromSetupRequest(a1, v9, &cf);
  if (v19)
  {
    v22 = cf;
    if (!FigCFEqual())
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v30 = *(DerivedStorage + 448);
      *(DerivedStorage + 448) = v22;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      APReceiverSessionManagerUpdateParentGroupInfo(*(DerivedStorage + 432));
    }
  }

  if (*(DerivedStorage + 47) == v21)
  {
    goto LABEL_75;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(DerivedStorage + 47) = v21;
  if (*(DerivedStorage + 40) != 2 || v20)
  {
    goto LABEL_74;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Session = APReceiverRequestProcessorHijackAndBecomeMainSession(a1);
  if (Session)
  {
    APSLogErrorAt();
    v55 = -71934;
  }

  else
  {
LABEL_74:
    Session = APReceiverSessionManagerUpdateAndNotifyReceiverSessionState(*(DerivedStorage + 432));
    if (!Session)
    {
LABEL_75:
      if (cf)
      {
        CFRelease(cf);
      }

      v10 = 0;
      v6 = &unk_27E37E000;
      goto LABEL_78;
    }

    APSLogErrorAt();
  }

  v32 = 0;
  v10 = 0;
  v6 = &unk_27E37E000;
LABEL_129:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_131:
  if (v53)
  {
    CFRelease(v53);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (Session)
  {
    v44 = v6[162];
    if (v44 <= 90 && (v44 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v10)
    {
      LOBYTE(cf) = 0;
      AirPlayReceiverSessionTearDown(*(DerivedStorage + 32), 0, Session, &cf);
      if (!cf)
      {
        v45 = v6[162];
        if (v45 <= 90 && (v45 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      v46 = *(DerivedStorage + 32);
      if (v46)
      {
        CFRelease(v46);
        *(DerivedStorage + 32) = 0;
      }
    }
  }

  return v55;
}

uint64_t airplayReqProcessor_requestProcessSetupSDP(const void *a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  if (!*(CMBaseObjectGetDerivedStorage() + 44))
  {
    return 4294895365;
  }

  v6 = CFDictionaryGetValue(a2, @"SDPSessionType");
  v7 = 4294895366;
  if (v6 && CFStringCompare(v6, @"audio", 0) == kCFCompareEqualTo)
  {
    v56 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Session = 0;
    v53 = 0;
    cf = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    Int64 = 0;
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!airplayReqProcessor_isAllowedToConnectBasedOnACL())
    {
      APSLogErrorAt();
      v9 = 0;
      v10 = 0;
      v11 = -71930;
      goto LABEL_14;
    }

    if (airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(a1, &v56))
    {
      if (!*(DerivedStorage + 44) || *(DerivedStorage + 45))
      {
        v9 = 0;
        v10 = 0;
        v11 = -71931;
LABEL_14:
        v56 = v11;
        goto LABEL_15;
      }

      theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!theDict)
      {
        APSLogErrorAt();
        v9 = 0;
        v10 = 0;
        v56 = -71934;
        goto LABEL_15;
      }

      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v14 = Mutable;
        CFDictionarySetValue(theDict, @"streams", Mutable);
        v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v15)
        {
          APSLogErrorAt();
          v10 = 0;
          v9 = 0;
          v56 = -71934;
          goto LABEL_29;
        }

        CFArrayAppendValue(v14, v15);
        v10 = CFDictionaryCopyCString();
        v53 = v10;
        strlen(v10);
        Session = HTTPParseParameter();
        if (Session)
        {
          APSLogErrorAt();
          goto LABEL_28;
        }

        if (strnicmpx())
        {
LABEL_28:
          v9 = 0;
          v56 = -71932;
          goto LABEL_29;
        }

        v42 = v14;
        v43 = DerivedStorage;
        v45 = v10;
        CFDictionarySetInt64();
        v16 = 0;
        value = *MEMORY[0x277CBED28];
        while (1)
        {
          v17 = v16;
          if (HTTPParseParameter())
          {
            v23 = *(DerivedStorage + 84);
            if (v23 > 8 || ((1 << v23) & 0x116) == 0)
            {
LABEL_106:
              v9 = 0;
              v56 = -71932;
              goto LABEL_29;
            }

            CFDictionarySetInt64();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            v25 = *(DerivedStorage + 32);
            if (v25)
            {
              valuea = 0;
              goto LABEL_61;
            }

            CFStringGetTypeID();
            TypedValue = CFDictionaryGetTypedValue();
            if (*(DerivedStorage + 456) || (CMBaseObjectGetDerivedStorage(), v27 = CFStringCreateF(), (*(DerivedStorage + 456) = v27) != 0))
            {
              airplayReqProcessor_handleNewSessionFromHTUnawareSender();
              Session = airplayReqProcessor_requestCreateSession(a1, v17, 0, 0, 0, 0, TypedValue);
              if (!Session)
              {
                *(DerivedStorage + 440) = 0;
                Session = airplayReqProcessor_registerReqProcWithSessionManager(a1, 0);
                if (Session)
                {
                  APSLogErrorAt();
                  v9 = 0;
                  v56 = -71934;
                  valuea = 1;
                  goto LABEL_127;
                }

                v25 = *(DerivedStorage + 32);
                valuea = 1;
LABEL_61:
                if (*(DerivedStorage + 80))
                {
                  v28 = AirPlayReceiverSessionSetSecurityInfo(v25, theDict, *(DerivedStorage + 400), (DerivedStorage + 384), *(DerivedStorage + 420), (DerivedStorage + 48), (DerivedStorage + 64));
                  v29 = 0;
                  Session = v28;
                  do
                  {
                    *(DerivedStorage + 48 + v29++) = 0;
                  }

                  while (v29 != 16);
                  for (i = 0; i != 16; ++i)
                  {
                    *(DerivedStorage + 64 + i) = 0;
                  }

                  if (!v28)
                  {
                    v25 = *(DerivedStorage + 32);
                    goto LABEL_68;
                  }

LABEL_125:
                  APSLogErrorAt();
                  v9 = 0;
LABEL_126:
                  v56 = -71934;
LABEL_127:
                  v10 = v45;
LABEL_91:
                  if (valuea && Session)
                  {
                    v46 = 0;
                    AirPlayReceiverSessionTearDown(*(DerivedStorage + 32), 0, Session, &v46);
                    if (!v46 && gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }

                    v38 = *(DerivedStorage + 32);
                    if (v38)
                    {
                      CFRelease(v38);
                      *(DerivedStorage + 32) = 0;
                    }
                  }

LABEL_29:
                  CFRelease(theDict);
                  CFRelease(v14);
                  if (v15)
                  {
                    CFRelease(v15);
                  }

LABEL_15:
                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (v9)
                  {
                    CFRelease(v9);
                  }

                  if (v10)
                  {
                    free(v10);
                  }

                  return v56;
                }

LABEL_68:
                Session = AirPlayReceiverSessionSetup(v25, theDict, &cf);
                if (Session)
                {
                  APSLogErrorAt();
                  v9 = 0;
                  if (Session == 61)
                  {
                    v39 = -71939;
                  }

                  else
                  {
                    v39 = -71934;
                  }

                  v56 = v39;
LABEL_122:
                  v10 = v45;
                  DerivedStorage = v43;
                  goto LABEL_91;
                }

                CFArrayGetTypeID();
                v31 = CFDictionaryGetTypedValue();
                if (Session)
                {
                  goto LABEL_76;
                }

                Count = CFArrayGetCount(v31);
                if (Count < 1)
                {
                  goto LABEL_76;
                }

                v33 = Count;
                v34 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v31, v34);
                  if (!ValueAtIndex)
                  {
                    goto LABEL_76;
                  }

                  v36 = CFGetTypeID(ValueAtIndex);
                  if (v36 != CFDictionaryGetTypeID())
                  {
                    goto LABEL_76;
                  }

                  Int64 = CFDictionaryGetInt64();
                  if (Int64 == 96)
                  {
                    break;
                  }

                  if (v33 == ++v34)
                  {
                    goto LABEL_76;
                  }
                }

                if (CFDictionaryGetInt64() <= 0 || CFDictionaryGetInt64() <= 0)
                {
LABEL_76:
                  APSLogErrorAt();
                  v9 = 0;
                  v56 = -71934;
                  v10 = v45;
                  v14 = v42;
                  DerivedStorage = v43;
                  goto LABEL_91;
                }

                v14 = v42;
                if (v17)
                {
                  v37 = CFDictionaryGetInt64();
                  if (v37 <= 0)
                  {
                    goto LABEL_121;
                  }
                }

                else
                {
                  v37 = 0;
                }

                v52 = &v57;
                Session = snprintf_add();
                if (!Session)
                {
                  DerivedStorage = v43;
                  if (v37)
                  {
                    Session = snprintf_add();
                    if (Session)
                    {
                      goto LABEL_125;
                    }
                  }

                  v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (!v9)
                  {
                    APSLogErrorAt();
                    goto LABEL_126;
                  }

                  Session = CFDictionarySetCString();
                  v10 = v45;
                  if (Session || (Session = CFDictionarySetCString()) != 0 || (v57 = 0, __strlcpy_chk(), (Session = CFDictionarySetCString()) != 0))
                  {
                    APSLogErrorAt();
                    v56 = -71934;
                  }

                  else
                  {
                    airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 1);
                    *(v43 + 45) = 1;
                    *a3 = v9;
                    v56 = 0;
                    v9 = 0;
                  }

                  goto LABEL_91;
                }

LABEL_121:
                APSLogErrorAt();
                v9 = 0;
                v56 = -71934;
                goto LABEL_122;
              }

              APSLogErrorAt();
              v9 = 0;
              v56 = -71934;
            }

            else
            {
              APSLogErrorAt();
              v9 = 0;
              Session = -71934;
            }

            v10 = v45;
            goto LABEL_29;
          }

          if (!strnicmpx())
          {
            if (SNScanF() != 1)
            {
              goto LABEL_105;
            }

            goto LABEL_46;
          }

          if (!strnicmpx())
          {
            break;
          }

          if (strnicmpx())
          {
            if (strnicmpx())
            {
              v18 = strnicmpx();
              v16 = 1;
              if (v18)
              {
                v19 = strnicmpx();
                v16 = v17;
                if (v19)
                {
                  v20 = strnicmpx();
                  v16 = v17;
                  if (v20)
                  {
                    strnicmpx();
                    v16 = v17;
                  }
                }
              }
            }

            else
            {
              v21 = strnicmpx();
              v16 = v17;
              if (v21)
              {
                v22 = strnicmpx();
                v16 = v17;
                if (!v22)
                {
                  CFDictionarySetValue(theDict, @"usingScreen", value);
                  v16 = v17;
                }
              }
            }
          }

          else
          {
            if (SNScanF() != 1)
            {
LABEL_105:
              APSLogErrorAt();
              goto LABEL_106;
            }

LABEL_46:
            CFDictionarySetInt64();
            v16 = v17;
          }
        }

        if (SNScanF() != 1)
        {
          goto LABEL_105;
        }

        goto LABEL_46;
      }

      APSLogErrorAt();
      v56 = -71934;
      CFRelease(theDict);
    }

    else
    {
      APSLogErrorAt();
    }

    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  return v7;
}

void airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 440))
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 351) != a2)
    {
      v5 = *DerivedStorage;
      v6 = a2 ? @"StartingPlaying" : @"StoppedPlaying";
      AirPlayReceiverServerUpdateStatus(v5, v6);
      *(v4 + 351) = a2;
      if (*(v4 + 350) != a2)
      {
        if (a2)
        {
          if (*(v4 + 24) != 4)
          {
            return;
          }

          v7 = @"StartedPlayingOverAWDL";
        }

        else
        {
          v7 = @"StoppedPlayingOverAWDL";
        }

        AirPlayReceiverServerUpdateStatus(*v4, v7);
        *(v4 + 350) = a2;
      }
    }
  }
}

void airplayReqProcessor_deregisterReqProcWithSessionManagerIfNeeded(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 352))
  {
    v3 = DerivedStorage;
    APReceiverSessionManagerRemoveSession(*(DerivedStorage + 432), a1);
    *(v3 + 352) = 0;
  }
}

uint64_t airplayReqProcessor_requestProcessGetInfo(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  Variable = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MutableCopy = 0;
  v13 = 0;
  cf = 0;
  CFDictionaryGetData();
  CFDictionaryGetTypeID();
  v6 = CFCreateWithPlistBytes();
  CFArrayGetTypeID();
  if (CFDictionaryGetTypedValue() && (MutableCopy = FigCFArrayCreateMutableCopy()) == 0)
  {
    APSLogErrorAt();
    v9 = 4294895350;
  }

  else
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v8 = TypedValue;
      Variable = CFStringCopyUTF8CString();
      if (Variable)
      {
        APSLogErrorAt();
      }

      else
      {
        CFStringGetLength(v8);
        while (1)
        {
          Variable = URLGetOrCopyNextVariable();
          if (Variable)
          {
            break;
          }

          Variable = CFArrayEnsureCreatedAndAppendCString();
          if (Variable)
          {
            v9 = 4294895362;
LABEL_9:
            APSLogErrorAt();
            goto LABEL_23;
          }
        }

        Int64Ranged = CFDictionaryGetInt64Ranged();
        *(DerivedStorage + 444) = Int64Ranged;
        v11 = *(DerivedStorage + 32);
        if (v11)
        {
          if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          *(v11 + 608) = Int64Ranged;
        }

        if (*(DerivedStorage + 408))
        {
          CFArrayEnsureCreatedAndAppend();
        }

        else
        {
            ;
          }
        }

        Variable = APReceiverSystemInfoCopyInfoDict(*(*DerivedStorage + 160), MutableCopy, 0, &v13);
        if (Variable)
        {
          v9 = 4294895362;
          goto LABEL_9;
        }

        Variable = airplayReqProcessor_createSessionInfoDict(a1, v13, &cf);
        if (Variable)
        {
          v9 = 4294895362;
          goto LABEL_9;
        }

        Variable = airplayReqProcessor_preparePlistResponse(cf, a3);
        if (Variable)
        {
          v9 = 4294895362;
          goto LABEL_9;
        }
      }

      v9 = 0;
    }

    else
    {
      APSLogErrorAt();
      v9 = 4294895366;
    }
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Variable && gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v9;
}

uint64_t airplayReqProcessor_requestProcessFPSetup()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  ++*(DerivedStorage + 396);
  if (!airplayReqProcessor_isAllowedToConnectBasedOnACL())
  {
    APSLogErrorAt();
    return 4294895366;
  }

  if (*(DerivedStorage + 8))
  {
    v1 = *(*(DerivedStorage + 16) + 192);
    if (v1 <= 15)
    {
      if (v1 > 3)
      {
        if (v1 == 4)
        {
          v2 = "AWDL";
          goto LABEL_31;
        }

        if (v1 == 8)
        {
          v2 = "USB";
          goto LABEL_31;
        }
      }

      else
      {
        if (v1 == 1)
        {
          v2 = "Enet";
          goto LABEL_31;
        }

        if (v1 == 2)
        {
          v2 = "WiFi";
          goto LABEL_31;
        }
      }
    }

    else if (v1 <= 63)
    {
      if (v1 == 16)
      {
        v2 = "Direct";
        goto LABEL_31;
      }

      if (v1 == 32)
      {
        v2 = "BTLE";
        goto LABEL_31;
      }
    }

    else
    {
      switch(v1)
      {
        case 64:
          v2 = "WFD";
          goto LABEL_31;
        case 128:
          v2 = "NAN";
          goto LABEL_31;
        case 256:
          v2 = "IPsecBT";
          goto LABEL_31;
      }
    }

    if (v1 == 512)
    {
      v2 = "IPSecWiFi";
    }

    else
    {
      v2 = "?";
    }

LABEL_31:
    if (*(DerivedStorage + 408))
    {
      v3 = " (Paired)";
    }

    else
    {
      v3 = "";
    }

    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"AirPlay starting...\n%s\n%s%s\n", DerivedStorage + 134, v2, v3);
    v5 = *(DerivedStorage + 8);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v6)
    {
      v6(v5, 30, v4);
    }

    CFRelease(v4);
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged == 8)
  {
    v8 = 2;
LABEL_41:
    *(DerivedStorage + 356) = v8;
    v9 = *(DerivedStorage + 384);
    if (*(DerivedStorage + 392))
    {
      if (v9)
      {
        IPaI1oem5iL();
        *(DerivedStorage + 384) = 0;
        *(DerivedStorage + 392) = 0;
      }
    }

    else if (v9)
    {
LABEL_47:
      CFDictionaryGetData();
      APSLogErrorAt();
      return 4294895366;
    }

    *(DerivedStorage + 360) = 0;
    *(DerivedStorage + 368) = 0;
    *(DerivedStorage + 376) = 0;
    if (APCUGetFairPlayHWInfoEx())
    {
      v11 = 4294895362;
    }

    else
    {
      cp2g1b9ro();
      if (!v10)
      {
        goto LABEL_47;
      }

      v11 = 4294895362;
    }

    APSLogErrorAt();
    return v11;
  }

  if (Int64Ranged == 32)
  {
    v8 = 3;
    goto LABEL_41;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 60 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294895364;
}

uint64_t airplayReqProcessor_requestProcessFPSetup2()
{
  v7 = 0;
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  memset(length, 0, sizeof(length));
  v4 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v1 = Mutable;
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFDictionaryGetData();
    APSLogErrorAt();
    v3 = -71930;
    CFRelease(v1);
  }

  else
  {
    APSLogErrorAt();
    v3 = 0;
    v7 = -71950;
  }

  if (*&length[1])
  {
    jEHf8Xzsv8K(*&length[1]);
  }

  if (v3 && gLogCategory_APReceiverRequestProcessorAirPlay <= 60 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v7;
}

void airplayReqProcessor_requestProcessEnsurePairPin()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = *(*DerivedStorage + 160);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APReceiverSystemInfoEnsurePIN_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  dispatch_sync(v2, block);
}

uint64_t airplayReqProcessor_requestProcessPairSetupPINStart(const void *a1)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v12 = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (airplayReqProcessor_isAllowedToConnectBasedOnACL())
  {
    if (airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(a1, &v14))
    {
      PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
      Int64Ranged = CFDictionaryGetInt64Ranged();
      if (Int64Ranged == 5)
      {
        v5 = 1;
      }

      else
      {
        v5 = PropertyInt64Sync;
      }

      v13 = airplayReqProcessor_copyPasscodeForPairingType(*(*DerivedStorage + 160), Int64Ranged, v5, &v12);
      if (v13)
      {
        APSLogErrorAt();
        v14 = -71934;
        v6 = v12;
        if (v12)
        {
LABEL_18:
          CFRelease(v6);
        }
      }

      else
      {
        v6 = v12;
        v7 = airplayReqProcessor_displayPINIfNeeded(a1, v12, v5);
        v13 = v7;
        v8 = v7 == -6721 || v7 == 200453;
        if (v8 || v7 == 453)
        {
          v14 = -71937;
        }

        if (v6)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      APSLogErrorAt();
    }

    v9 = v14;
    if (!v14)
    {
      return v9;
    }

    goto LABEL_20;
  }

  v9 = 4294895366;
  APSLogErrorAt();
  v14 = -71930;
LABEL_20:
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90)
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || (v10 = _LogCategory_Initialize(), v9 = v14, v10))
    {
      LogPrintF();
      return v14;
    }
  }

  return v9;
}

uint64_t airplayReqProcessor_requestProcessPairSetupUnauthenticatedLegacy(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theData = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = 1;
  if (!CFObjectGetPropertyInt64Sync())
  {
    v6 = CFObjectGetPropertyInt64Sync() != 0;
  }

  v7 = 4294895356;
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  if (APSIsAPMSpeaker() || (v16 = *(DerivedStorage + 24), v15 = -6768, v16 != 4) && v16 != 64 && v16 != 128)
  {
    if (v6)
    {
      v15 = -6768;
      goto LABEL_27;
    }

    if (*(DerivedStorage + 400) || (v9 = APPairingServicesLegacyCreate(*MEMORY[0x277CBECE8], (DerivedStorage + 400))) == 0)
    {
      Value = CFDictionaryGetValue(a2, *MEMORY[0x277CEA360]);
      if (Value)
      {
        v11 = Value;
        v12 = *(DerivedStorage + 400);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v13)
        {
          v14 = v13(v12, 0, PropertyInt64Sync, v11, &theData, &v21);
          v15 = v14;
          if (v14 == -72192)
          {
LABEL_14:
            v7 = 4294895362;
            goto LABEL_27;
          }

          if (!v14)
          {
            if (theData)
            {
              BytePtr = CFDataGetBytePtr(theData);
              Length = CFDataGetLength(theData);
            }

            else
            {
              BytePtr = 0;
              Length = 0;
            }

            v15 = airplayReqProcessor_prepareBinaryDataResponse("application/x-apple-binary-plist", BytePtr, Length, 0, a3);
            if (!v15)
            {
              v7 = 0;
              goto LABEL_27;
            }

            goto LABEL_38;
          }
        }

        else
        {
          v15 = -12782;
        }
      }

      else
      {
        APSLogErrorAt();
        v15 = 0;
      }

      v7 = 4294895366;
      goto LABEL_27;
    }

    v15 = v9;
LABEL_38:
    APSLogErrorAt();
    goto LABEL_14;
  }

LABEL_27:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v15 && gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v7;
}

uint64_t airplayReqProcessor_requestProcessPairSetupPINLegacy(const void *a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v26 = 0;
  cf = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = 4294895362;
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  v9 = airplayReqProcessor_copyPasscodeForPairingType(*(*DerivedStorage + 160), 1001, PropertyInt64Sync, &v27);
  if (v9)
  {
    v12 = v9;
    APSLogErrorAt();
    v10 = v27;
  }

  else
  {
    v10 = v27;
    v11 = airplayReqProcessor_displayPINIfNeeded(a1, v27, PropertyInt64Sync);
    v12 = v11;
    if (v11 == -6721)
    {
      goto LABEL_12;
    }

    if (v11 == 453 || v11 == 200453)
    {
      goto LABEL_12;
    }

    if (!DerivedStorage[50])
    {
      v12 = APPairingServicesLegacyCreate(*MEMORY[0x277CBECE8], DerivedStorage + 50);
      if (v12)
      {
        goto LABEL_35;
      }
    }

    Value = CFDictionaryGetValue(a2, *MEMORY[0x277CEA360]);
    if (Value)
    {
      v15 = Value;
      v16 = DerivedStorage[50];
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v17)
      {
        v12 = -12782;
        goto LABEL_35;
      }

      v18 = v17(v16, v10, PropertyInt64Sync, v15, &cf, &v26);
      v12 = v18;
      if (v18 == -72192)
      {
        goto LABEL_13;
      }

      if (v18 != -6760)
      {
        if (!v18)
        {
          if (v26)
          {
            v21 = DerivedStorage[1];
            if (v21)
            {
              APReceiverUIControllerHidePIN(v21);
            }

            APReceiverSystemInfoSetProperty(*(*DerivedStorage + 160), v19, @"Passcode", v20, 0);
          }

          if (cf)
          {
            BytePtr = CFDataGetBytePtr(cf);
            Length = CFDataGetLength(cf);
          }

          else
          {
            BytePtr = 0;
            Length = 0;
          }

          v12 = airplayReqProcessor_prepareBinaryDataResponse("application/x-apple-binary-plist", BytePtr, Length, 0, a3);
          if (!v12)
          {
            v7 = 0;
            goto LABEL_13;
          }
        }

LABEL_35:
        APSLogErrorAt();
        goto LABEL_13;
      }

LABEL_12:
      v7 = 4294895359;
      goto LABEL_13;
    }

    APSLogErrorAt();
    v7 = 4294895366;
  }

LABEL_13:
  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12 && gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v7;
}

uint64_t airplayReqProcessor_requestProcessPairSetup(const void *a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v7 = airplayReqProcessor_copyPairingType();
  airplayReqProcessor_updateLastControlMessage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10 = 4294895362;
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  v12 = (PropertyInt64Sync & 0xFFFFFFFD) == 1;
  if (!airplayReqProcessor_isAllowedToConnectBasedOnACL())
  {
    APSLogErrorAt();
    v14 = 0;
    PairingParamsDict = 0;
    goto LABEL_80;
  }

  if (!APSIsAPMSpeaker())
  {
    v13 = *(DerivedStorage + 24);
    if ((v13 == 4 || v13 == 128 || v13 == 64) && !PropertyInt64Sync)
    {
      v12 = 1;
      PropertyInt64Sync = 1;
    }
  }

  if (!Int64Ranged && v12 || Int64Ranged == 4 && PropertyInt64Sync == 1)
  {
    PairingParamsDict = 0;
    v14 = -6768;
    v10 = 4294895356;
LABEL_21:
    v15 = cf;
    goto LABEL_22;
  }

  v16 = airplayReqProcessor_copyPasscodeForPairingType(*(*DerivedStorage + 160), Int64Ranged, PropertyInt64Sync, &cf);
  if (v16)
  {
    v14 = v16;
    APSLogErrorAt();
    PairingParamsDict = 0;
    goto LABEL_21;
  }

  if (Int64Ranged != 1)
  {
    v14 = 0;
    goto LABEL_41;
  }

  v15 = cf;
  v17 = airplayReqProcessor_displayPINIfNeeded(a1, cf, PropertyInt64Sync);
  v14 = v17;
  PairingParamsDict = 0;
  v10 = 4294895359;
  if (v17 != -6721 && v17 != 453 && v17 != 200453)
  {
LABEL_41:
    if (!*(DerivedStorage + 400))
    {
      v18 = APPairingServicesCoreUtilsCreate(*MEMORY[0x277CBECE8], *(*DerivedStorage + 257), (DerivedStorage + 400));
      if (v18)
      {
        v14 = v18;
        goto LABEL_85;
      }

      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v14 = 0;
    }

    v19 = Int64Ranged == 5 || Int64Ranged == 3;
    if (Int64Ranged == 5)
    {
      v20 = @"com.apple.ScreenCapture";
    }

    else
    {
      v20 = 0;
    }

    PairingParamsDict = airplayReqProcessor_createPairingParamsDict(0, 0, v19, Int64Ranged == 4, v20);
    if (PairingParamsDict)
    {
      v21 = *(DerivedStorage + 400);
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v22)
      {
        v22(v21, @"pairingParams", PairingParamsDict);
      }

      Value = CFDictionaryGetValue(a2, *MEMORY[0x277CEA360]);
      v10 = 4294895362;
      if (Value)
      {
        v24 = Value;
        v25 = *(DerivedStorage + 400);
        v26 = cf;
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v27)
        {
          v28 = v27(v25, v26, PropertyInt64Sync, v24, &v37, &v38);
          v14 = v28;
          switch(v28)
          {
            case -72192:
              goto LABEL_21;
            case -6760:
              v10 = 4294895359;
              goto LABEL_21;
            case 0:
              if (v38)
              {
                v31 = *(DerivedStorage + 8);
                if (v31)
                {
                  APReceiverUIControllerHidePIN(v31);
                }

                APReceiverSystemInfoSetProperty(*(*DerivedStorage + 160), v29, @"Passcode", v30, 0);
                if (Int64Ranged == 4)
                {
                  EncryptionContext = airplayReqProcessor_createEncryptionContext(a1, &v36);
                  if (EncryptionContext)
                  {
                    v14 = EncryptionContext;
                    goto LABEL_88;
                  }

                  *(DerivedStorage + 420) = 1;
                  *(DerivedStorage + 408) = 1;
                  if ((PropertyInt64Sync & 0xFFFFFFFE) == 2)
                  {
                    *(DerivedStorage + 409) = 1;
                  }
                }
              }

              if (v37)
              {
                BytePtr = CFDataGetBytePtr(v37);
                Length = CFDataGetLength(v37);
              }

              else
              {
                BytePtr = 0;
                Length = 0;
              }

              v14 = airplayReqProcessor_prepareBinaryDataResponse("application/x-apple-binary-plist", BytePtr, Length, v36, a3);
              if (!v14)
              {
                v10 = 0;
                goto LABEL_21;
              }

LABEL_88:
              APSLogErrorAt();
              goto LABEL_21;
          }
        }

        else
        {
          v14 = -12782;
        }

        APSLogErrorAt();
        v10 = 4294895356;
        goto LABEL_21;
      }

      APSLogErrorAt();
LABEL_80:
      v10 = 4294895366;
      goto LABEL_21;
    }

LABEL_85:
    APSLogErrorAt();
    PairingParamsDict = 0;
    v10 = 4294895362;
    goto LABEL_21;
  }

LABEL_22:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (PairingParamsDict)
  {
    CFRelease(PairingParamsDict);
  }

  if (v14 && gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

uint64_t airplayReqProcessor_requestProcessPairVerify(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  EncryptionContext = 0;
  cf = 0;
  v44 = 0;
  v42 = 0;
  mach_absolute_time();
  ++*(DerivedStorage + 416);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v8 = EncryptionContext;
  v40 = airplayReqProcessor_copyPairingType();
  if (!EncryptionContext)
  {
    CMBaseObjectGetDerivedStorage();
    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    CFObjectGetPropertyInt64Sync();
    if (PropertyInt64Sync == 2)
    {
      if (Int64Ranged != 8)
      {
LABEL_7:
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90)
        {
          if (gLogCategory_APReceiverRequestProcessorAirPlay == -1 && !_LogCategory_Initialize())
          {
            v10 = 0;
            PairingParamsDict = 0;
            v30 = v40;
            goto LABEL_67;
          }

          LogPrintF();
        }

        v10 = 0;
        goto LABEL_97;
      }
    }

    else
    {
      if (APSIsRestrictiveHKAccessControl())
      {
        v11 = (Int64Ranged & 0xFFFFFFFE) == 6;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        goto LABEL_7;
      }
    }

    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
LABEL_18:
    LogPrintF();
  }

LABEL_22:
  Int64 = CFDictionaryGetInt64();
  if (!EncryptionContext)
  {
    *(DerivedStorage + 420) = Int64 != 0;
  }

  Value = CFDictionaryGetValue(a2, *MEMORY[0x277CEA360]);
  if (!Value)
  {
    v10 = 4294895362;
LABEL_96:
    APSLogErrorAt();
LABEL_97:
    PairingParamsDict = 0;
    goto LABEL_91;
  }

  v14 = Value;
  v41 = a1;
  if (!*(DerivedStorage + 400))
  {
    v15 = *MEMORY[0x277CBECE8];
    if (v8)
    {
      EncryptionContext = APPairingServicesLegacyCreate(v15, (DerivedStorage + 400));
      if (!EncryptionContext)
      {
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_33;
      }

      v10 = 4294895362;
    }

    else
    {
      EncryptionContext = APPairingServicesCoreUtilsCreate(v15, *(*DerivedStorage + 257), (DerivedStorage + 400));
      if (!EncryptionContext)
      {
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_41;
      }

      v10 = 4294895362;
    }

    goto LABEL_96;
  }

  if (v8)
  {
LABEL_33:
    PairingParamsDict = 0;
    v17 = 1;
    v18 = 1;
    goto LABEL_56;
  }

LABEL_41:
  v19 = Int64Ranged & 0xFFFFFFFE;
  v20 = @"com.apple.admin";
  if (Int64Ranged != 7)
  {
    v20 = 0;
  }

  v21 = Int64Ranged == 3;
  v22 = @"com.apple.ScreenCapture";
  if (Int64Ranged == 5)
  {
    v21 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (v19 == 6)
  {
    v23 = v20;
  }

  else
  {
    v23 = v22;
  }

  v24 = v19 != 6 && v21;
  PairingParamsDict = airplayReqProcessor_createPairingParamsDict(Int64Ranged == 8, v19 == 6, v24, 0, v23);
  if (!PairingParamsDict)
  {
    v10 = 4294895362;
    APSLogErrorAt();
    v30 = v40;
    goto LABEL_67;
  }

  v25 = *(DerivedStorage + 400);
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v26)
  {
    v26(v25, @"pairingParams", PairingParamsDict);
  }

  v18 = v19 != 6;
  v17 = Int64Ranged != 8;
LABEL_56:
  v27 = *(DerivedStorage + 400);
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v28)
  {
    EncryptionContext = -12782;
    goto LABEL_65;
  }

  EncryptionContext = v28(v27, v14, &cf, &v42);
  if (EncryptionContext)
  {
LABEL_65:
    v10 = 4294895362;
    APSLogErrorAt();
LABEL_66:
    v30 = v40;
    goto LABEL_67;
  }

  if (!v42)
  {
    goto LABEL_103;
  }

  v29 = CFObjectGetPropertyInt64Sync();
  if (!v8)
  {
    EncryptionContext = airplayReqProcessor_createEncryptionContext(v41, &v44);
    if (EncryptionContext)
    {
      APSLogErrorAt();
      v10 = 0;
      goto LABEL_66;
    }
  }

  *(DerivedStorage + 408) = 1;
  if (v17)
  {
    if (!v18)
    {
      *(DerivedStorage + 411) = 1;
    }
  }

  else
  {
    *(DerivedStorage + 412) = 1;
  }

  if (v29 == 1 || *(DerivedStorage + 412) || *(DerivedStorage + 411) || Int64Ranged == 5)
  {
    *(DerivedStorage + 409) = 1;
  }

  if (EncryptionContext == -6745)
  {
    v10 = 4294895356;
LABEL_91:
    v30 = v40;
    goto LABEL_67;
  }

  v30 = v40;
  if (EncryptionContext == -6716)
  {
    v10 = 4294895363;
    goto LABEL_67;
  }

  if (EncryptionContext)
  {
    v10 = 4294895366;
    goto LABEL_66;
  }

LABEL_103:
  if (cf)
  {
    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v30 = v40;
  EncryptionContext = airplayReqProcessor_prepareBinaryDataResponse("application/octet-stream", BytePtr, Length, v44, a3);
  if (EncryptionContext)
  {
    v10 = 4294895362;
    APSLogErrorAt();
  }

  else
  {
    v10 = 0;
  }

LABEL_67:
  airplayReqProcessor_updateLastControlMessage();
  if (EncryptionContext)
  {
    v31 = *(DerivedStorage + 400);
    if (v31)
    {
      v32 = *(CMBaseObjectGetVTable() + 16);
      if (*(v32 + 24))
      {
        (*(v32 + 40))(v31);
      }
    }
  }

  mach_absolute_time();
  v33 = CMBaseObjectGetDerivedStorage();
  v34 = CFDictionaryGetInt64Ranged() - 3;
  if (v34 > 5)
  {
    v36 = 528;
    v35 = 536;
  }

  else
  {
    v35 = qword_23EAA1BC8[v34];
    v36 = qword_23EAA1BF8[v34];
  }

  *(v33 + v35) += UpTicksToMilliseconds();
  ++*(v33 + v36);
  if (v30)
  {
    CFRelease(v30);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (PairingParamsDict)
  {
    CFRelease(PairingParamsDict);
  }

  return v10;
}

uint64_t airplayReqProcessor_requestProcessFeedback(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  theDict = 0;
  v5 = *(CMBaseObjectGetDerivedStorage() + 32);
  if (!v5)
  {
    return 0;
  }

  AirPlayReceiverSessionControl(v5, v6, @"updateFeedback", 0, a2, &theDict);
  if (!theDict)
  {
    return 0;
  }

  if (CFDictionaryGetCount(theDict) >= 1 && airplayReqProcessor_preparePlistResponse(theDict, a3))
  {
    v7 = 4294895362;
    APSLogErrorAt();
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v7 = 0;
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v7;
}

uint64_t airplayReqProcessor_requestProcessMetrics(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 32))
  {
    CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v6 = TypedValue;
    if (!TypedValue)
    {
      v11 = 4294895358;
      APSLogErrorAt();
      Mutable = 0;
      goto LABEL_20;
    }

    CFDataGetBytePtr(TypedValue);
    CFDataGetLength(v6);
    CFDictionaryGetTypeID();
    v6 = CFCreateWithPlistBytes();
    v9 = AirPlayReceiverSessionCopyProperty(*(DerivedStorage + 32), v7, @"metrics", v8, 0);
    if (v9)
    {
      Mutable = v9;
LABEL_10:
      v13 = airplayReqProcessor_preparePlistResponse(Mutable, a3);
      if (!v13)
      {
        v11 = 0;
        goto LABEL_12;
      }

      APSLogErrorAt();
      v11 = 4294895362;
LABEL_20:
      if (!v13)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      goto LABEL_10;
    }

    APSLogErrorAt();
    v11 = 4294895362;
  }

  else
  {
    Mutable = 0;
    v6 = 0;
    v11 = 4294895358;
  }

LABEL_21:
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_12:
  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

uint64_t airplayReqProcessor_requestProcessCommand(const void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  updated = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v46 = 0;
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v7 = TypedValue;
  if (!TypedValue)
  {
    v13 = 4294895366;
    APSLogErrorAt();
    Value = 0;
    goto LABEL_34;
  }

  CFDataGetBytePtr(TypedValue);
  CFDataGetLength(v7);
  CFDictionaryGetTypeID();
  v7 = CFCreateWithPlistBytes();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (!v8)
  {
    CFDictionaryGetInt64();
    Value = CFDictionaryGetValue(v7, @"params");
    if (!Value)
    {
      v13 = 4294895366;
      goto LABEL_90;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      Value = 0;
      v13 = 0;
      v31 = -71946;
      goto LABEL_92;
    }

    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"reqProcRef", a1);
    CFDictionarySetValue(Mutable, @"params", Value);
    v12 = *(DerivedStorage + 32);
    if (v12)
    {
      updated = AirPlayReceiverSessionControl(v12, v11, @"didReceiveData", 0, Mutable, 0);
      if (!updated)
      {
        Value = 0;
        v13 = 0;
        goto LABEL_40;
      }

      APSLogErrorAt();
      Value = 0;
      goto LABEL_99;
    }

    APSLogErrorAt();
    Value = 0;
LABEL_96:
    updated = -6709;
    v13 = 4294895365;
    goto LABEL_40;
  }

  Value = v8;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(DerivedStorage + 432), 0, 0, &v46);
  if (CFEqual(Value, @"APValeria"))
  {
    CFDictionaryGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    if (v14)
    {
      v15 = v14;
      v16 = CMBaseObjectGetDerivedStorage();
      v48 = 0;
      v17 = *(v16 + 24);
      v18 = v17 == 64;
      if (v17 == 128)
      {
        v18 = 1;
      }

      v19 = v17 == 4 || v18;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v15);
      ASPrintF();
      CFDictionarySetCString();
      v21 = MEMORY[0x277CBED10];
      if (v19)
      {
        v21 = MEMORY[0x277CBED28];
      }

      CFDictionarySetValue(MutableCopy, @"IsP2P", *v21);
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v25 = APSXPCClientSendCommandCreatingReply();
      if (v25)
      {
        APSLogErrorAt();
        if (!MutableCopy)
        {
          goto LABEL_39;
        }
      }

      else if (!MutableCopy)
      {
LABEL_39:
        free(v48);
        v13 = 0;
        Mutable = 0;
        updated = v25;
        goto LABEL_40;
      }

      CFRelease(MutableCopy);
      goto LABEL_39;
    }

    v13 = 4294895366;
    goto LABEL_90;
  }

  if (CFEqual(Value, @"duckAudio") || CFEqual(Value, @"unduckAudio"))
  {
    if (CFDictionaryContainsKey(v7, @"params"))
    {
      CFDictionaryGetTypeID();
      Empty = CFDictionaryGetTypedValue();
      if (!Empty)
      {
        v13 = 4294895366;
LABEL_90:
        APSLogErrorAt();
        Mutable = 0;
        v31 = -6705;
LABEL_92:
        updated = v31;
        goto LABEL_40;
      }
    }

    else
    {
      Empty = CFDictionaryGetEmpty();
    }

    v24 = *(DerivedStorage + 32);
    if (v24)
    {
      if (*(DerivedStorage + 40) != 2)
      {
        APSLogErrorAt();
        Mutable = 0;
        updated = -6773;
        v13 = 4294895363;
        goto LABEL_40;
      }

      updated = AirPlayReceiverSessionControl(v24, v22, Value, 0, Empty, 0);
      if (!updated)
      {
LABEL_33:
        v13 = 0;
LABEL_34:
        Mutable = 0;
        goto LABEL_40;
      }

      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (CFEqual(Value, @"mute"))
  {
    if (v46)
    {
      CFDictionaryGetTypeID();
      CFDictionaryGetTypedValue();
      updated = CFObjectSetProperty();
      if (!updated)
      {
        goto LABEL_33;
      }

      v13 = 4294895366;
    }

    else
    {
      v13 = 4294895366;
    }

LABEL_133:
    APSLogErrorAt();
    goto LABEL_34;
  }

  if (CFEqual(Value, @"unmute"))
  {
    if (v46)
    {
      CFDictionaryGetTypeID();
      CFDictionaryGetTypedValue();
      updated = CFObjectSetProperty();
      if (!updated)
      {
        goto LABEL_33;
      }

      v13 = 4294895366;
    }

    else
    {
      v13 = 4294895366;
    }

    goto LABEL_133;
  }

  if (!CFEqual(Value, @"changeRelativeVolume") && !CFEqual(Value, @"performPWDKeyExchange"))
  {
    if (CFEqual(Value, @"updateMRNowPlayingInfo"))
    {
      CFDictionaryGetTypeID();
      v29 = CFDictionaryGetTypedValue();
      if (!v29)
      {
        v13 = 4294895366;
        goto LABEL_90;
      }

      updated = airplayReqProcessor_processUpdateMRNowPlayingInfo(a1, v29);
      if (!updated)
      {
        goto LABEL_33;
      }

      v13 = 4294895366;
      goto LABEL_133;
    }

    if (CFEqual(Value, @"updateMRSupportedCommands"))
    {
      CFDictionaryGetTypeID();
      v30 = CFDictionaryGetTypedValue();
      if (!v30)
      {
        v13 = 4294895366;
        goto LABEL_90;
      }

      updated = airplayReqProcessor_processUpdateMRExtendedMetadata(a1, v30, @"mrSupportedCommandsFromSender", @"mrSupportedCommandsFromSender");
      if (!updated)
      {
        goto LABEL_33;
      }

      v13 = 4294895366;
      goto LABEL_133;
    }

    if (CFEqual(Value, @"setMRInfo"))
    {
      if (*(DerivedStorage + 32))
      {
        v32 = DerivedStorage;
        CFDictionaryGetTypeID();
        v33 = CFDictionaryGetTypedValue();
        if (!v33)
        {
          v13 = 4294895366;
          goto LABEL_90;
        }

        v34 = v33;
        if (!CFDictionaryContainsKey(v33, @"mrInfo"))
        {
          v13 = 4294895366;
          goto LABEL_90;
        }

        v35 = CFDictionaryGetValue(v34, @"mrInfo");
        AirPlayReceiverSessionSetProperty(*(v32 + 32), v36, @"MRInfo", 0, v35);
        goto LABEL_33;
      }
    }

    else
    {
      v44 = DerivedStorage;
      if (CFEqual(Value, @"setSenderDisplayLatencyMs"))
      {
        CFDictionaryGetTypeID();
        if (!CFDictionaryGetTypedValue())
        {
          v13 = 4294895366;
          goto LABEL_90;
        }

        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (updated)
        {
          v13 = 4294895366;
          goto LABEL_133;
        }

        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v13 = 0;
        Mutable = 0;
        *(*(v44 + 32) + 720) = Int64Ranged;
        goto LABEL_40;
      }

      if (CFEqual(Value, @"updateMRPlaybackState"))
      {
        CFDictionaryGetTypeID();
        v38 = CFDictionaryGetTypedValue();
        if (!v38)
        {
          v13 = 4294895366;
          goto LABEL_90;
        }

        updated = airplayReqProcessor_processUpdateMRExtendedMetadata(a1, v38, @"mrPlaybackState", @"mrPlaybackState");
        if (!updated)
        {
          goto LABEL_33;
        }

        v13 = 4294895366;
        goto LABEL_133;
      }

      if (CFEqual(Value, @"updateMRNowPlayingClient"))
      {
        CFDictionaryGetTypeID();
        v39 = CFDictionaryGetTypedValue();
        if (!v39)
        {
          v13 = 4294895366;
          goto LABEL_90;
        }

        updated = airplayReqProcessor_processUpdateMRExtendedMetadata(a1, v39, @"mrNowPlayingClient", @"mrNowPlayingClient");
        if (!updated)
        {
          goto LABEL_33;
        }

        v13 = 4294895366;
        goto LABEL_133;
      }

      if (!CFEqual(Value, @"fadeAudio"))
      {
        v13 = 4294895366;
        updated = -6705;
        goto LABEL_133;
      }

      CFDictionaryGetTypeID();
      v40 = CFDictionaryGetTypedValue();
      if (!v40)
      {
        v13 = 4294895366;
        goto LABEL_90;
      }

      v42 = v40;
      v43 = *(DerivedStorage + 32);
      if (v43)
      {
        updated = AirPlayReceiverSessionControl(v43, v41, Value, 0, v42, 0);
        if (!updated)
        {
          goto LABEL_33;
        }

        goto LABEL_98;
      }
    }

LABEL_95:
    APSLogErrorAt();
    Mutable = 0;
    goto LABEL_96;
  }

  if (!v46)
  {
    v13 = 4294895366;
    goto LABEL_133;
  }

  CFDictionaryGetTypeID();
  v27 = CFDictionaryGetTypedValue();
  if (!v27)
  {
    v13 = 4294895366;
    goto LABEL_90;
  }

  updated = AirPlayReceiverSessionControl(v46, v28, Value, 0, v27, &cf);
  if (updated)
  {
LABEL_98:
    APSLogErrorAt();
    Mutable = 0;
LABEL_99:
    v13 = 4294895362;
    goto LABEL_40;
  }

  Mutable = 0;
  v13 = 0;
  if (a3 && cf)
  {
    updated = airplayReqProcessor_preparePlistResponse(cf, a3);
    if (!updated)
    {
      goto LABEL_33;
    }

    goto LABEL_98;
  }

LABEL_40:
  airplayReqProcessor_updateLastControlMessage();
  if (!updated)
  {
    goto LABEL_51;
  }

  if (Value)
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
LABEL_47:
      LogPrintF();
    }
  }

  else if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_47;
  }

LABEL_51:
  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  return v13;
}

uint64_t airplayReqProcessor_requestProcessSetAudioMode()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    v10 = 4294895366;
    APSLogErrorAt();
    return v10;
  }

  v2 = TypedValue;
  CFDataGetBytePtr(TypedValue);
  CFDataGetLength(v2);
  CFDictionaryGetTypeID();
  v3 = CFCreateWithPlistBytes();
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (!v4)
  {
    v10 = 4294895366;
    APSLogErrorAt();
    goto LABEL_13;
  }

  v7 = *(DerivedStorage + 32);
  if (!v7 || (v8 = v4, (v9 = *(v7 + 576)) == 0))
  {
    APSLogErrorAt();
    v10 = 4294895358;
    goto LABEL_13;
  }

  if (APReceiverAudioSessionPlatformSetProperty(v9, v5, @"RASP::AudioMode", v6, v8))
  {
    APSLogErrorAt();
    v10 = 4294895362;
LABEL_13:
    v12 = v10;
    if (!v3)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v12 = 0;
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
    return v12;
  }

  return v10;
}

uint64_t airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(const void *a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8) || ((v5 = DerivedStorage, *(DerivedStorage + 412)) || *(DerivedStorage + 413)) && !*(*DerivedStorage + 255))
  {
    v9 = 0;
    v8 = 0;
    v10 = 1;
  }

  else if (APReceiverSessionManagerCanHijack(*(DerivedStorage + 432), a1))
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = SockAddrToDeviceID();
    v8 = CFStringCreateWithFormat(v6, 0, @"client-%llx", v7);
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = *(v5 + 8);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v12 && !v12(v11, v5 + 134, v8))
    {
      v9 = -71930;
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v10 = 0;
    }

    else
    {
      v10 = 1;
      *(v5 + 413) = 1;
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v9 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v8 = 0;
    v10 = 0;
    v9 = -71937;
  }

  if (a2)
  {
    *a2 = v9;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

uint64_t airplayReqProcessor_createAndStoreMediaControlRequestProcessorForMCSession(uint64_t a1, uint64_t a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v23 = 0u;
  if (*(DerivedStorage + 104) || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 104) = Mutable) != 0))
  {
    Int64 = CFNumberCreateInt64();
    if (CFDictionaryGetValue(*(DerivedStorage + 104), Int64))
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v9 = 0;
    }

    else
    {
      v17 = *(DerivedStorage + 128);
      v18 = *(DerivedStorage + 132);
      v20 = *(DerivedStorage + 24);
      if (a3)
      {
        v21 = *a3;
      }

      else
      {
        v21 = 0uLL;
      }

      v25 = *(DerivedStorage + 120);
      v26 = *(*(DerivedStorage + 16) + 120);
      v19 = *(DerivedStorage + 16);
      cf_8 = *(DerivedStorage + 400);
      v24 = *DerivedStorage;
      v8 = *(DerivedStorage + 32);
      if (v8)
      {
        v23[1] = *(v8 + 448);
      }

      v27 = *(DerivedStorage + 8);
      if (gMediaControlGlobalsInitOnce != -1)
      {
        dispatch_once_f(&gMediaControlGlobalsInitOnce, 0, mcProcessor_initOnce);
      }

      if (APReceiverRequestProcessorGetClassID_once != -1)
      {
        dispatch_once(&APReceiverRequestProcessorGetClassID_once, &__block_literal_global_303);
      }

      v9 = CMDerivedObjectCreate();
      if (v9)
      {
        APSLogErrorAt();
      }

      else
      {
        v10 = CMBaseObjectGetDerivedStorage();
        *(v10 + 16) = v17;
        *(v10 + 20) = v18;
        *(v10 + 24) = v20;
        SockAddrCopy();
        SockAddrCopy();
        *(v10 + 96) = a2;
        *(v10 + 104) = v21;
        v11 = cf_8;
        if (cf_8)
        {
          v11 = CFRetain(cf_8);
        }

        *(v10 + 120) = v11;
        v12 = v24;
        if (v24)
        {
          v12 = CFRetain(v24);
        }

        *(v10 + 128) = v12;
        *(v10 + 144) = v25;
        *(v10 + 152) = v26;
        CFRetain(v26);
        *(v10 + 32) = v19;
        __strlcpy_chk();
        UUIDGet();
        v13 = v27;
        if (v27)
        {
          v13 = CFRetain(v27);
        }

        *(v10 + 392) = v13;
        *(v10 + 400) = APReceiverFairPlayHelperCreate();
        v14 = v23[1];
        if (v23[1])
        {
          v14 = CFRetain(v23[1]);
        }

        *(v10 + 136) = v14;
        *(v10 + 408) = 1;
        if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
        {
          if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize())
          {
            LogPrintF();
          }

          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        v15 = *MEMORY[0x277CBECE8];
        *(v10 + 416) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
        *(v10 + 440) = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(v10 + 432) = FigSimpleMutexCreate();
        *(v10 + 448) = FigSimpleMutexCreate();
        *(v10 + 424) = 0;
      }

      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      APSLogErrorAt();
      if (!v9)
      {
        v9 = 4294960568;
      }
    }

    if (Int64)
    {
      CFRelease(Int64);
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895346;
  }

  return v9;
}

uint64_t airplayReqProcessor_hijackCurrentSessionIfNeeded(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 432);
  if (*(v3 + 72) < 1)
  {
    return 0;
  }

  v4 = DerivedStorage;
  if (CFArrayGetCount(*(v3 + 64)) != *(v3 + 72))
  {
    return 0;
  }

  if (APReceiverSessionManagerCanHijack(*(v4 + 432), a1))
  {
    APReceiverSessionManagerHijack(*(v4 + 432), a1);
    return 0;
  }

  APSLogErrorAt();
  return 4294895359;
}

void airplayReqProcessor_handleNewSessionFromHTUnawareSender()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 440))
  {
    v1 = DerivedStorage;
    if (APSIsAPMSpeaker())
    {
      if (APSIsMemberOfHTGroup())
      {
        if (*(*(v1 + 432) + 48))
        {
          v2 = APReceiverRequestProcessorCopyReceiverSession();
          if (v2)
          {
            v3 = v2;
            if (AirPlayReceiverSessionSendMediaRemoteCommand(v2, -1, 1885435251, 0))
            {
              goto LABEL_24;
            }

            if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!Mutable)
            {
LABEL_24:
              APSLogErrorAt();
              v5 = v3;
            }

            else
            {
              v5 = Mutable;
              CFDictionarySetValue(Mutable, @"type", @"htSecondaryNonPersistentSessionStarted");
              CFDictionarySetInt64();
              v6 = *(v1 + 456);
              if (v6)
              {
                CFDictionarySetValue(v5, @"hijackID", v6);
              }

              if (AirPlayReceiverSessionSendCommandForObject(v3, 0, v5, 0, 0))
              {
                APSLogErrorAt();
              }

              else if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              CFRelease(v3);
            }

            CFRelease(v5);
          }
        }
      }
    }
  }
}

uint64_t airplayReqProcessor_registerReqProcWithSessionManager(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 352))
  {
    return 0;
  }

  v6 = DerivedStorage;
  mach_absolute_time();
  v7 = *(v6 + 432);
  if (!v7 || !a1)
  {
    APSLogErrorAt();
    v5 = 4294895056;
    goto LABEL_52;
  }

  if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2)
  {
    if (!cfArrayContainsValue(*(v7 + 64), a1))
    {
      if (*(v7 + 72) < 1 || CFArrayGetCount(*(v7 + 64)) != *(v7 + 72))
      {
        CFArrayAppendValue(*(v7 + 64), a1);
        if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        APReceiverSessionManagerSetAsMainAirPlaySession(v7, a1);
        goto LABEL_50;
      }

      v5 = 4294895055;
      goto LABEL_63;
    }

LABEL_35:
    v5 = 0;
    goto LABEL_52;
  }

  if (a2 != 2)
  {
    if (!*(v7 + 40))
    {
      v5 = 4294960561;
      goto LABEL_52;
    }

    if (!cfArrayContainsValue(*(v7 + 80), a1))
    {
      CFArrayAppendValue(*(v7 + 80), a1);
      if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    goto LABEL_35;
  }

  if (APSIsMemberOfHTGroup())
  {
    v8 = APSIsAPMSpeaker() == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = APSIsMemberOfStereoPair();
  CFObjectGetInt64();
  if (v8 && !v9)
  {
    v5 = 4294895055;
  }

  else if (cfArrayContainsValue(*(v7 + 64), a1))
  {
    v5 = 4294895055;
  }

  else
  {
    if (!*(v7 + 48))
    {
      goto LABEL_38;
    }

    if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    AirPlayReceiverServerHijackConnection(*(v7 + 24), *(v7 + 48), a1);
    if (!*(v7 + 48))
    {
LABEL_38:
      v10 = *(v7 + 72);
      if (v10 >= 1)
      {
        *(v7 + 72) = v10 + 1;
      }

      CFArrayAppendValue(*(v7 + 64), a1);
      *(v7 + 48) = CFRetain(a1);
      APReceiverSessionManagerUpdateParentGroupInfo(v7);
      if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v9)
      {
        if (gLogCategory_APReceiverSessionManager <= 30 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CFObjectSetProperty();
      }

LABEL_50:
      v5 = APReceiverSessionManagerUpdateAndNotifyReceiverSessionState(v7);
      if (v5)
      {
        APSLogErrorAt();
        APReceiverSessionManagerRemoveSession(v7, a1);
      }

      goto LABEL_52;
    }

    v5 = 4294895055;
  }

LABEL_63:
  APSLogErrorAt();
LABEL_52:
  mach_absolute_time();
  *(v6 + 544) = UpTicksToMilliseconds();
  if (v5)
  {
    APSLogErrorAt();
  }

  else
  {
    *(v6 + 352) = 1;
  }

  return v5;
}

uint64_t airplayReqProcessor_processUpdateMRNowPlayingInfo(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 32))
  {
    APSLogErrorAt();
    v12 = 4294960551;
    goto LABEL_26;
  }

  v4 = DerivedStorage;
  Value = CFDictionaryGetValue(a2, @"params");
  if (!Value)
  {
    APSLogErrorAt();
    v12 = 4294895345;
    goto LABEL_26;
  }

  v6 = Value;
  v7 = CFDictionaryGetValue(a2, @"mergePolicy");
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"update";
  }

  v10 = gLogCategory_APReceiverRequestProcessorAirPlay;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30)
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay != -1)
    {
LABEL_8:
      if (v10 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v11 = _LogCategory_Initialize();
    v10 = gLogCategory_APReceiverRequestProcessorAirPlay;
    if (v11)
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay > 30)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }
  }

  if (v10 > 50)
  {
    goto LABEL_21;
  }

  if (v10 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    v10 = gLogCategory_APReceiverRequestProcessorAirPlay;
    if (gLogCategory_APReceiverRequestProcessorAirPlay > 50)
    {
      goto LABEL_21;
    }
  }

  if (v10 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_21;
  }

LABEL_14:
  LogPrintF();
LABEL_21:
  v12 = AirPlayReceiverSessionSetProperty(*(v4 + 32), v8, @"mrNowPlayingInfo", v9, v6);
  if (!v12)
  {
    return v12;
  }

  APSLogErrorAt();
LABEL_26:
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v12;
}

uint64_t airplayReqProcessor_processUpdateMRExtendedMetadata(uint64_t a1, const __CFDictionary *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a4)
    {
      v8 = DerivedStorage;
      Value = CFDictionaryGetValue(a2, a3);
      if (Value)
      {
        v11 = AirPlayReceiverSessionSetProperty(*(v8 + 32), v10, a4, 0, Value);
        if (!v11)
        {
          return v11;
        }
      }

      else
      {
        v11 = 4294895345;
      }
    }

    else
    {
      v11 = 4294895345;
    }
  }

  else
  {
    v11 = 4294895345;
  }

  APSLogErrorAt();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v11;
}

uint64_t airplayReqProcessor_preparePlistResponse(const void *a1, CFMutableDictionaryRef *a2)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895345;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895346;
  }

  v5 = Mutable;
  Data = CFPropertyListCreateData(0, a1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    v9 = 4294895344;
    APSLogErrorAt();
LABEL_14:
    v10 = v5;
    goto LABEL_7;
  }

  v7 = Data;
  CFDataGetBytePtr(Data);
  CFDataGetLength(v7);
  v8 = CFDictionarySetData();
  if (v8)
  {
    v9 = v8;
    goto LABEL_13;
  }

  v9 = CFDictionarySetCString();
  if (v9)
  {
LABEL_13:
    APSLogErrorAt();
    CFRelease(v7);
    goto LABEL_14;
  }

  *a2 = v5;
  v10 = v7;
LABEL_7:
  CFRelease(v10);
  return v9;
}

__CFDictionary *airplayReqProcessor_createPairingParamsDict(int a1, int a2, int a3, int a4, void *a5)
{
  keys[1] = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = Mutable;
  v12 = *MEMORY[0x277CBED28];
  v13 = *MEMORY[0x277CBED10];
  if (a1)
  {
    v14 = *MEMORY[0x277CBED28];
  }

  else
  {
    v14 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"useAccountOwnerPairing", v14);
  if (a2)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  CFDictionarySetValue(v11, @"useHomeKitPairing", v15);
  if (a3)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  CFDictionarySetValue(v11, @"useSystemPairing", v16);
  if (a4)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  CFDictionarySetValue(v11, @"useTransientPairing", v17);
  if (a5)
  {
    values = v12;
    keys[0] = a5;
    v18 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(v11, @"ACL", v18);
    CFRelease(v18);
  }

  return v11;
}

uint64_t airplayReqProcessor_createEncryptionContext(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 400);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    v12 = 4294954514;
LABEL_11:
    APSLogErrorAt();
    goto LABEL_12;
  }

  v6 = v5(v4, "Control-Salt", 12, "Control-Read-Encryption-Key", 27, 32, v17);
  if (v6)
  {
    v12 = v6;
    goto LABEL_11;
  }

  v7 = *(DerivedStorage + 400);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    v12 = 4294954514;
    goto LABEL_11;
  }

  v9 = v8(v7, "Control-Salt", 12, "Control-Write-Encryption-Key", 28, 32, v16);
  if (v9)
  {
    v12 = v9;
    goto LABEL_11;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v12 = 4294895346;
    goto LABEL_13;
  }

  v11 = CFDictionarySetData();
  if (v11)
  {
    v12 = v11;
    goto LABEL_22;
  }

  v12 = CFDictionarySetData();
  if (v12)
  {
LABEL_22:
    APSLogErrorAt();
    goto LABEL_13;
  }

  *a2 = Mutable;
LABEL_12:
  Mutable = 0;
LABEL_13:
  for (i = 0; i != 32; ++i)
  {
    v17[i] = 0;
  }

  for (j = 0; j != 32; ++j)
  {
    v16[j] = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

uint64_t airplayReqProcessor_prepareBinaryDataResponse(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, CFMutableDictionaryRef *a5)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895346;
  }

  v10 = Mutable;
  if (a2)
  {
    if (a3)
    {
      v11 = CFDictionarySetData();
      if (v11)
      {
        v13 = v11;
        goto LABEL_13;
      }
    }
  }

  v12 = CFDictionarySetCString();
  if (v12)
  {
    v13 = v12;
LABEL_13:
    APSLogErrorAt();
    CFRelease(v10);
    return v13;
  }

  if (a4)
  {
    CFDictionarySetValue(v10, *MEMORY[0x277CEA368], a4);
  }

  v13 = 0;
  *a5 = v10;
  return v13;
}

uint64_t airplayReqProcessor_isAllowedToConnectBasedOnACL()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  if (CFObjectGetPropertyInt64Sync())
  {
    v2 = PropertyInt64Sync == 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  if ((PropertyInt64Sync != 2 || *(DerivedStorage + 412)) && (!v3 || *(DerivedStorage + 411)))
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t airplayReqProcessor_copyPasscodeForPairingType(uint64_t a1, uint64_t a2, int a3, __CFString **a4)
{
  v5 = MEMORY[0x277CBED28];
  v6 = @"3939";
  if (a2 > 4)
  {
    if ((a2 - 1001) >= 2)
    {
      if (a2 != 5)
      {
        goto LABEL_10;
      }

      v5 = MEMORY[0x277CBED10];
    }
  }

  else if ((a2 - 1) >= 3)
  {
    if (a2 != 4)
    {
      goto LABEL_10;
    }

    if ((a3 & 0xFFFFFFFE) != 2)
    {
      v6 = @"3939";
      goto LABEL_10;
    }
  }

  v8 = 0;
  v6 = APReceiverSystemInfoCopyProperty(a1, a2, @"Passcode", *v5, &v8);
  if (v8)
  {
    APSLogErrorAt();
    return v8;
  }

LABEL_10:
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t airplayReqProcessor_displayPINIfNeeded(const void *a1, const __CFString *a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *buffer = 0u;
  v14 = 0u;
  if (a3 == 2)
  {
    return 0;
  }

  v7 = DerivedStorage;
  if (!APReceiverSessionManagerCanHijack(*(DerivedStorage + 432), a1))
  {
    APSLogErrorAt();
    return 4294960575;
  }

  if (!*(v7 + 8))
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 0;
  }

  CFStringGetCString(a2, buffer, 256, 0x8000100u);
  v8 = *(v7 + 8);
  v9 = *(v7 + 120);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    v11 = 4294954514;
LABEL_8:
    APSLogErrorAt();
    return v11;
  }

  v11 = v10(v8, buffer, v9, v7 + 134);
  if (v11)
  {
    goto LABEL_8;
  }

  return v11;
}

uint64_t APReceiverUIControllerHidePIN(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 16);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

uint64_t airplayReqProcessor_createSessionInfoDict(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  value[33] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value[0] = 0;
  if (a3)
  {
    v6 = DerivedStorage;
    v7 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      if (!*(v6 + 32) || APSIsAPMSpeaker() || *(v6 + 440))
      {
        goto LABEL_8;
      }

      v10 = APReceiverSystemInfoCopyDisplaysInfoForUserVersion(*(*v6 + 160), v7, *(v6 + 444), value);
      if (!v10)
      {
        CFDictionarySetValue(v9, @"displays", value[0]);
LABEL_8:
        HardwareAddressToCString();
        CFDictionarySetCString();
        SockAddrToString();
        CFDictionarySetCString();
        v11 = 0;
        *a3 = v9;
        goto LABEL_9;
      }

      v11 = v10;
      APSLogErrorAt();
      CFRelease(v9);
    }

    else
    {
      APSLogErrorAt();
      v11 = 4294895346;
    }
  }

  else
  {
    v11 = 4294895345;
    APSLogErrorAt();
  }

LABEL_9:
  if (value[0])
  {
    CFRelease(value[0]);
  }

  return v11;
}

uint64_t airplayReqProcessor_requestCreateSession(uint64_t a1, char a2, int a3, char a4, int a5, char a6, uint64_t a7)
{
  v83 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    return 0;
  }

  v15 = DerivedStorage;
  v81 = 0;
  v80 = 0u;
  v79 = 0u;
  *cf = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v16 = *DerivedStorage;
  v72 = *DerivedStorage;
  v17 = *(DerivedStorage + 24);
  *(&v73 + 1) = DerivedStorage + 304;
  *&v74 = DerivedStorage + 276;
  v18 = *(DerivedStorage + 264);
  *(&v74 + 1) = *(DerivedStorage + 120);
  *(&v75 + 1) = v18;
  LODWORD(v76) = *(DerivedStorage + 272);
  *&v79 = *(DerivedStorage + 424);
  v19 = 1;
  LODWORD(v73) = v17;
  if (v17 != 4 && v17 != 64)
  {
    v19 = v17 == 128;
  }

  BYTE5(v77) = v19;
  BYTE6(v77) = a2;
  v20 = *(DerivedStorage + 432);
  *(&v77 + 1) = a1;
  cf[0] = v20;
  cf[1] = *(DerivedStorage + 8);
  *&v80 = a7;
  BYTE9(v79) = a3;
  BYTE8(v79) = a4;
  BYTE10(v79) = a5;
  BYTE11(v79) = a6;
  LODWORD(v81) = *(*(DerivedStorage + 16) + 136);
  if (a3 || !FigCFEqual())
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = 0;
    if (a5)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      if (*(v15 + 47))
      {
        if (!*(*(v15 + 432) + 48) || (v40 = APReceiverRequestProcessorCopyReceiverSession()) == 0)
        {
          if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          return 4294960587;
        }

        v21 = v40;
        v43 = AirPlayReceiverSessionCopyProperty(v40, v41, @"networkClock", v42, 0);
        if (!v43)
        {
          if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v65 = 4294960587;
          goto LABEL_100;
        }

        v22 = v43;
        *(&v80 + 1) = v43;
      }
    }
  }

  LODWORD(v75) = *(v15 + 128);
  WORD2(v75) = *(v15 + 132);
  strncpy(&v76 + 4, (v15 + 332), 0x11uLL);
  v23 = *(*v15 + 88);
  v24 = mach_absolute_time();
  v68 = v21;
  if (gAirPlayReceiverSessionInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverSessionInitOnce, 0, _GetTypeID_6322);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt();
    v65 = 4294960568;
    _Cleanup(0, 4294960568);
    goto LABEL_106;
  }

  v26 = Instance;
  bzero((Instance + 24), 0x2F0uLL);
  *(v26 + 16) = v23;
  dispatch_retain(v23);
  CFRetain(v16);
  *(v26 + 24) = v16;
  *(v26 + 32) = *(&v77 + 1);
  *(v26 + 192) = v73;
  v27 = v74;
  v28 = *(*(&v73 + 1) + 12);
  *(v26 + 196) = **(&v73 + 1);
  *(v26 + 208) = v28;
  v29 = *v27;
  *(v26 + 236) = *(v27 + 12);
  *(v26 + 224) = v29;
  UUIDGet();
  *(v26 + 268) = -6718;
  v30 = *(&v75 + 1);
  *(v26 + 272) = *(&v74 + 1);
  *(v26 + 328) = v30;
  *(v26 + 336) = v76;
  *(v26 + 40) = cf[0];
  *(v26 + 682) = WORD4(v79);
  *(v26 + 681) = BYTE10(v79);
  *(v26 + 684) = BYTE11(v79);
  if (v80)
  {
    v31 = v80;
  }

  else
  {
    v31 = @"NTP";
  }

  *(v26 + 672) = CFRetain(v31);
  v32 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v32 = CFRetain(*(&v80 + 1));
  }

  *(v26 + 448) = v32;
  *(v26 + 280) = v75;
  *(v26 + 284) = WORD2(v75);
  __strlcpy_chk();
  *(v26 + 424) = BYTE5(v77);
  *(v26 + 344) = v24;
  *(v26 + 457) = BYTE6(v77);
  *(v26 + 476) = -1;
  *(v26 + 484) = v81;
  v33 = *MEMORY[0x277CBECE8];
  *(v26 + 568) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v34 = v16[28];
  *(v26 + 592) = v34;
  if (v34)
  {
    CFRetain(v34);
  }

  v35 = cf[1];
  *(v26 + 600) = cf[1];
  if (v35)
  {
    CFRetain(v35);
    v36 = *(v26 + 600);
    if (v36)
    {
      if (!*(v26 + 592))
      {
        v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v50)
        {
          v50(v36, @"SBufConsumer", v33, v26 + 592);
        }
      }
    }
  }

  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  if (PropertyInt64Sync >= 1)
  {
    v38 = PropertyInt64Sync;
  }

  else
  {
    v38 = 30;
  }

  *(v26 + 560) = CFObjectGetPropertyInt64Sync() != 0;
  *(v26 + 754) = APSSettingsIsFeatureEnabled();
  v39 = UpTicksPerSecond();
  *(v26 + 556) = v38;
  *(v26 + 552) = v38;
  *(v26 + 512) = v24;
  *(v26 + 520) = v39 * v38;
  *(v26 + 528) = v24;
  *(v26 + 544) = 10 * v39;
  if (*(v26 + 683))
  {
    APSSettingsGetInt64();
    APSSettingsGetInt64();
    APSSettingsGetInt64();
    SocketSetKeepAliveEx();
    goto LABEL_83;
  }

  v71 = 0;
  v44 = *(*(v26 + 24) + 16);
  v45 = objc_alloc_init(AirPlayReceiverContext);
  if (!v45)
  {
    APSLogErrorAt();
    v67 = -6728;
    goto LABEL_114;
  }

  v46 = v45;
  v45->_session = v26;
  v45->_queue = *(v26 + 16);
  CFObjectGetPropertyDoubleSync();
  APSVolumeConvertDBToClampedSliderValue();
  v47 = 0;
  v46->_state.outputVolume = v48;
  *(v26 + 712) = v48;
  *(v26 + 48) = v46;
  if (*(*(v26 + 24) + 256))
  {
    goto LABEL_44;
  }

  if (!*(v44 + 160))
  {
    v51 = *(v44 + 168);
    if (v51)
    {
      v47 = 0;
      v46->_mediaRemoteHelper = v51;
      goto LABEL_44;
    }

    APSLogErrorAt();
    v67 = -6709;
LABEL_114:
    v71 = v67;
    goto LABEL_82;
  }

  memset(cStr, 0, sizeof(cStr));
  UUIDtoCString();
  v47 = CFStringCreateWithCString(v33, cStr, 0x8000100u);
  if (!v47)
  {
    goto LABEL_115;
  }

  v49 = [[AirPlayReceiverMediaRemoteHelper alloc] initWithPlayerID:v47 withSystemInfo:*(*(v26 + 24) + 160) withReceiverServer:?];
  v46->_mediaRemoteHelper = v49;
  if (!v49)
  {
    goto LABEL_115;
  }

  [(AirPlayReceiverMediaRemoteHelper *)v49 makeNowPlayingPlayer];
LABEL_44:
  if (!*(*(v26 + 24) + 249) || !*(v26 + 600) || v46->_receiverUIStarted)
  {
    goto LABEL_63;
  }

  v70 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
LABEL_115:
    APSLogErrorAt();
    v71 = -6728;
    goto LABEL_79;
  }

  v53 = Mutable;
  CFDictionarySetNumber();
  v70 = 0;
  v54 = *(v26 + 600);
  v55 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v55)
  {
    v56 = v55(v54, v53, &v70);
  }

  else
  {
    v56 = -12782;
  }

  v71 = v56;
  CFRelease(v53);
  if (v71)
  {
    goto LABEL_79;
  }

  cStr[0] = *(v26 + 196);
  *(cStr + 12) = *(v26 + 208);
  APSNetworkAddressCreateWithSocketAddr();
  v57 = *(v26 + 600);
  v58 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v58)
  {
    v59 = v58(v57, @"SessionReceiverAddress", 0);
  }

  else
  {
    v59 = -12782;
  }

  v71 = v59;
  if (v59)
  {
    APSLogErrorAt();
    goto LABEL_79;
  }

  if (v70)
  {
    v46->_receiverUISessionID = CFDictionaryGetInt64();
    CFRelease(v70);
  }

  else
  {
    v46->_receiverUISessionID = 0;
  }

  v46->_receiverUIStarted = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
LABEL_63:
  v71 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.airplay.audio", &v46->_powerAssertion);
  if (gLogCategory_AirPlayReceiverPlatform <= 40 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v71 = 0;
  dispatch_time(0, 5000000000);
  v71 = APSAudioIOAssertionUntilTime();
  if (v71)
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v71 = 0;
  }

  if (APSMultiPrimariesEnabled())
  {
    if (!*(v26 + 683))
    {
      v46->_startNowPlayingSessionTask = objc_alloc_init(MEMORY[0x277CE9F20]);
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

LABEL_79:
  if (v47)
  {
    CFRelease(v47);
  }

  if (!v71)
  {
LABEL_83:
    v61 = *(v26 + 72);
    if (v61 && (v69 = v61(v26, *(v26 + 56))) != 0)
    {
      APSLogErrorAt();
      v60 = v69;
    }

    else
    {
      *(v26 + 688) = 0;
      v62 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v26 + 696) = v62;
      if (v62)
      {
        v63 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(v26 + 736) = v63;
        if (v63)
        {
          v64 = CFSetCreateMutable(v33, 0, MEMORY[0x277CBF158]);
          *(v26 + 744) = v64;
          if (v64)
          {
            if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            *(v15 + 32) = v26;
LABEL_93:
            v21 = v68;
            if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v65 = 0;
            if (v22)
            {
              goto LABEL_98;
            }

            goto LABEL_99;
          }
        }
      }

      APSLogErrorAt();
      v60 = 4294960568;
      v69 = -6728;
    }

    goto LABEL_109;
  }

LABEL_82:
  _AirPlayReceiverSessionPlatformInvalidate(v26);
  v60 = v71;
  v69 = v71;
  if (!v71)
  {
    goto LABEL_83;
  }

  APSLogErrorAt();
LABEL_109:
  _Cleanup(v26, v60);
  CFRelease(v26);
  v65 = v69;
  if (!v69)
  {
    goto LABEL_93;
  }

LABEL_106:
  APSLogErrorAt();
  v21 = v68;
  if (v22)
  {
LABEL_98:
    CFRelease(v22);
  }

LABEL_99:
  if (v21)
  {
LABEL_100:
    CFRelease(v21);
  }

  return v65;
}

void airplayReqProcessor_copyParentGroupInfoFromSetupRequest(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFDictionaryGetInt64();
  v7 = CFDictionaryGetInt64();
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  Value = CFDictionaryGetValue(a2, @"uglServerInfo");
  v10 = CFDictionaryGetInt64();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (Int64 && v7 && TypedValue)
  {
    v11 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v13 = Mutable;
      CFDictionarySetValue(Mutable, @"groupUUID", TypedValue);
      FigCFDictionarySetValueFromKeyInDict();
      v14 = *MEMORY[0x277CBED28];
      v15 = *MEMORY[0x277CBED10];
      CFDictionarySetValue(v13, @"senderSupportsRelay", *MEMORY[0x277CBED28]);
      if (v10)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      CFDictionarySetValue(v13, @"supportsGroupCohesion", v16);
      if (!*(*DerivedStorage + 258))
      {
        *a3 = v13;
        return;
      }

      v17 = CMBaseObjectGetDerivedStorage();
      if (!Value)
      {
        MutableCopy = 0;
LABEL_31:
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          FigCFDictionaryGetValue();
          LogPrintF();
        }

        FigCFDictionarySetValue();
        *a3 = v13;
        if (MutableCopy)
        {

          CFRelease(MutableCopy);
        }

        return;
      }

      v18 = v17;
      CFArrayGetTypeID();
      CFDictionaryGetTypedValue();
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v20 = CFStringCreateWithCString(v11, (v18 + 332), 0x8000100u);
      v21 = APSNetworkCopyConvertedLinkLocalIPv6Addresses();
      if (v21)
      {
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        MutableCopy = FigCFDictionaryCreateMutableCopy();
        FigCFDictionarySetValue();
        if (!v20)
        {
          goto LABEL_29;
        }
      }

      else
      {
        MutableCopy = 0;
        if (!v20)
        {
LABEL_29:
          if (v21)
          {
            CFRelease(v21);
          }

          goto LABEL_31;
        }
      }

      CFRelease(v20);
      goto LABEL_29;
    }

    APSLogErrorAt();
  }
}

uint64_t APReceiverRequestProcessorHijackAndBecomeMainSession(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40) == 2)
  {
    v3 = DerivedStorage;
    APReceiverSessionManagerSetAsMainAirPlaySession(*(DerivedStorage + 432), a1);
    APReceiverSessionManagerHijack(*(v3 + 432), a1);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294895346;
  }
}

void airplayReqProcessor_reportPerfMetricsIfNeeded()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 585))
  {
    v1 = DerivedStorage;
    *(DerivedStorage + 585) = 1;
    if (*(DerivedStorage + 584))
    {
      if (!*(DerivedStorage + 576))
      {
        *(DerivedStorage + 576) = mach_absolute_time();
      }

      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v3 = Mutable;
        CFDictionarySetCString();
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
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        if (*(v1 + 588))
        {
          CFDictionarySetInt64();
        }

        v4 = *(v1 + 592);
        if (v4)
        {
          CFDictionarySetValue(v3, @"lastControlMessageType", v4);
          CFDictionarySetInt64();
        }

        v5 = APSIsWHAParallelSetupProcessingEnabled();
        v6 = MEMORY[0x277CBED28];
        if (!v5)
        {
          v6 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v3, @"parallelSetupProcessingEnabled", *v6);
        APSRTCReportingAgentSendEvent();

        CFRelease(v3);
      }

      else
      {

        APSLogErrorAt();
      }
    }
  }
}

void APReceiverRequestProcessorSendSystemInfoUpdate(uint64_t a1, const __CFDictionary *a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 32);
  value = 0;
  if (v4)
  {
    if (a2)
    {
      if (*(v4 + 336) < 0x37C684u)
      {
        v6 = 0;
        goto LABEL_9;
      }

      if (!airplayReqProcessor_createSessionInfoDict(a1, a2, &value))
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v6 = Mutable;
          CFDictionarySetValue(Mutable, @"type", @"updateInfo");
          CFDictionarySetValue(v6, @"value", value);
          if (AirPlayReceiverSessionSendCommandForObject(v4, 0, v6, 0, 0))
          {
            APSLogErrorAt();
LABEL_14:
            CFRelease(v6);
            goto LABEL_15;
          }

LABEL_9:
          if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (!v6)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }
    }

    APSLogErrorAt();
LABEL_15:
    if (value)
    {
      CFRelease(value);
    }

    return;
  }

  APSLogErrorAt();
}

uint64_t airplayReqProcessor_Stop(void *a1, const __CFString *a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    v24 = a2;
    v25 = *(DerivedStorage + 16);
    LogPrintF();
  }

  if (*(DerivedStorage + 8) && (*(DerivedStorage + 45) || *(DerivedStorage + 44)))
  {
    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"AirPlay disconnected\n%s\n", DerivedStorage + 134, v24, v25);
    v8 = *(DerivedStorage + 8);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v9)
    {
      v9(v8, 30, v7);
    }

    CFRelease(v7);
  }

  if (!a2 || CFStringCompare(a2, @"HTTPConnectionClose", 1uLL))
  {
    goto LABEL_13;
  }

  airplayReqProcessor_GetMCRPForMCSession(a1, 0, &v26);
  if (v26 && CFObjectGetInt64())
  {
    if (!CFObjectGetInt64())
    {
      goto LABEL_33;
    }

    v15 = 4294895362;
    v17 = *a3;
    v18 = v26;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v19)
    {
      v20 = v19(v18, v17);
      if (!v20)
      {
        *(v17 + 16) = 0;
LABEL_33:
        CFObjectSetValue();
        v22 = (DerivedStorage + 104);
        v21 = *(DerivedStorage + 104);
        if (!v21)
        {
          goto LABEL_13;
        }

        goto LABEL_37;
      }

      v15 = v20;
    }

    APSLogErrorAt();
    return v15;
  }

  v22 = (DerivedStorage + 104);
  v23 = *(DerivedStorage + 104);
  if (!v23)
  {
    goto LABEL_13;
  }

  CFDictionaryApplyFunction(v23, airplayReqProcessor_tearDownMCRPDictionaryEntry, a1);
  v21 = *v22;
  if (!*v22)
  {
    goto LABEL_13;
  }

LABEL_37:
  CFRelease(v21);
  *v22 = 0;
LABEL_13:
  if (*(DerivedStorage + 32))
  {
    Count = FigCFDictionaryGetCount();
    v11 = *(DerivedStorage + 32);
    v12 = 4294960543;
    if (!Count)
    {
      if (*(v11 + 616))
      {
        v12 = 4294960543;
      }

      else
      {
        v12 = 0;
      }
    }

    if (!*(DerivedStorage + 45) && !*(DerivedStorage + 44))
    {
      v12 = 0;
    }

    AirPlayReceiverSessionTearDown(v11, 0, v12, 0);
    v13 = *(DerivedStorage + 32);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 32) = 0;
    }

    v14 = *(DerivedStorage + 448);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 448) = 0;
    }
  }

  airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 0);
  airplayReqProcessor_deregisterReqProcWithSessionManagerIfNeeded(a1);
  return 0;
}

uint64_t airplayReqProcessor_tearDownMCRPDictionaryEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2 || !a3 || (result = airplayReqProcessor_tearDownMediaControlRequestProcessor(a3, a2), result))
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t airplayReqProcessor_tearDownMediaControlRequestProcessor(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    APSLogErrorAt();
    return -71951;
  }

  v4 = DerivedStorage;
  CFObjectGetBytes();
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5)
  {
    v10 = -12782;
    goto LABEL_8;
  }

  v10 = v5(a2, 0, 0);
  if (v10)
  {
LABEL_8:
    APSLogErrorAt();
    return v10;
  }

  v6 = *v4;
  if (*(*v4 + 192))
  {
    v7 = UUIDtoCString();
    v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
    CFDictionaryRemoveValue(*(v6 + 192), v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v10;
}

uint64_t APReceiverRequestProcessorSetProperty_4504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void airplayReqProcessor_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  airplayReqProcessor_Stop(a1, 0, 0);
  airplayReqProcessor_reportPerfMetricsIfNeeded();
  v3 = *(DerivedStorage + 448);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 448) = 0;
  }

  v4 = *(DerivedStorage + 456);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 456) = 0;
  }

  v5 = *(DerivedStorage + 592);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 592) = 0;
  }

  for (i = 0; i != 16; ++i)
  {
    *(DerivedStorage + 48 + i) = 0;
  }

  for (j = 0; j != 16; ++j)
  {
    *(DerivedStorage + 64 + j) = 0;
  }

  v8 = *(DerivedStorage + 400);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 400) = 0;
  }

  v9 = *(DerivedStorage + 104);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 104) = 0;
  }

  if (*(DerivedStorage + 384))
  {
    IPaI1oem5iL();
    *(DerivedStorage + 384) = 0;
  }

  *(DerivedStorage + 392) = 0;
  v10 = *(DerivedStorage + 8);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 8) = 0;
  }
}

const void *APReceiverRequestProcessorCopyReceiverSession()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 32);
  if (result)
  {
    CFRetain(result);
    return *(DerivedStorage + 32);
  }

  return result;
}

uint64_t _AirTunesClock_RegisterClass()
{
  gAirTunesClockClass = 0;
  *algn_27E37EDF8 = "AirTunesClock";
  qword_27E37EE00 = _AirTunesClock_Init;
  unk_27E37EE08 = 0;
  qword_27E37EE10 = _AirTunesClock_Finalize;
  unk_27E37EE18 = 0;
  qword_27E37EE20 = 0;
  unk_27E37EE28 = 0;
  qword_27E37EE30 = _AirTunesClock_CopyDebugDescription;
  result = _CFRuntimeRegisterClass();
  gAirTunesClockTypeID = result;
  return result;
}

pthread_mutex_t *_AirTunesClock_Finalize(uint64_t a1)
{
  *(a1 + 224) = 0;
  if (*(a1 + 144))
  {
    pthread_join(*(a1 + 136), 0);
    *(a1 + 144) = 0;
  }

  result = *(a1 + 216);
  if (result)
  {
    result = pthread_mutex_destroy(result);
    *(a1 + 216) = 0;
  }

  return result;
}

double _AirTunesClock_Init(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t _AirTunesClock_Thread(uint64_t a1)
{
  pthread_setname_np("AirPlayClock");
  while (*(a1 + 224))
  {
    _AirTunesClock_Tick(a1);
    usleep(0x2710u);
  }

  return 0;
}

uint64_t _AirTunesClock_Tick(uint64_t a1)
{
  pthread_mutex_lock(*(a1 + 216));
  v2 = mach_absolute_time();
  v3 = (v2 - *(a1 + 80));
  *(a1 + 80) = v2;
  v4 = *(a1 + 72) * v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = __CFADD__(v5, v4);
  v8 = v5 + v4;
  *(a1 + 40) = v8;
  if (v7)
  {
    *(a1 + 32) = ++v6;
  }

  v9 = *(a1 + 36);
  v10 = *(a1 + 24);
  v11 = v10 + v8;
  v12 = v6 + __CFADD__(v10, v8) + *(a1 + 16);
  if (v12 > *(a1 + 48))
  {
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    if (v13 < 0)
    {
      v15 = -(-v13 >> 4);
    }

    else
    {
      v15 = v13 >> 4;
    }

    *(a1 + 104) = v13 - v15;
    v17 = v14 + v15;
    v16 = ((v14 + v15) < 0) ^ __OFADD__(v14, v15);
    *(a1 + 120) = v14 + v15;
    *(a1 + 88) = v14 + v15;
    v18 = v14 + v15 + 1023;
    if (v16)
    {
      v17 = v18;
    }

    *(a1 + 72) = 2 * (((2199 * (v17 >> 10)) ^ 0x8000000000000000) / *(a1 + 64));
    if (gLogCategory_AirTunesClock <= 10 && (gLogCategory_AirTunesClock != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  *(a1 + 128) = v12;
  *(a1 + 48) = v12;
  *(a1 + 52) = v9;
  *(a1 + 56) = v11;
  v19 = *(a1 + 216);

  return pthread_mutex_unlock(v19);
}

uint64_t AirTunesClock_Adjust(uint64_t a1, unint64_t a2, int a3)
{
  if (gLogCategory_AirTunesClock <= 10 && (gLogCategory_AirTunesClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  pthread_mutex_lock(*(a1 + 216));
  if (!a3 && a2 - 100000001 > 0xFFFFFFFFF4143DFELL)
  {
    v6 = *(a1 + 100);
    v7 = *(a1 + 128);
    if (v6)
    {
      v8 = v7 - v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = a2 << 20;
    if ((a2 & 0x80000000) != 0)
    {
      v9 = -((0xFFFFFFFF00000 * a2) & 0xFFFFFFFFFFFFFLL);
    }

    v10 = *(a1 + 112) + v9 * v8;
    *(a1 + 104) = a2 << 32;
    *(a1 + 112) = v10;
    *(a1 + 96) = a2;
    *(a1 + 100) = v7;
    if (v10 < 0)
    {
      v11 = -(-v10 >> 32);
    }

    else
    {
      v11 = HIDWORD(v10);
    }

    if (v11 <= 500000)
    {
      if (v10 > 0xFFF85EDF00000000)
      {
LABEL_22:
        pthread_mutex_unlock(*(a1 + 216));
        return 0;
      }

      v12 = 0xFFF85EE000000000;
    }

    else
    {
      v12 = 0x7A12000000000;
    }

    *(a1 + 112) = v12;
    goto LABEL_22;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    v17 = -a2 / 0x3B9ACA00uLL;
    v18 = 0x44B82FA09 * (-1000000000 * v17 - a2);
    v19 = *(a1 + 24);
    *(a1 + 24) = v19 - v18;
    v15 = *(a1 + 16) - (v19 < v18) - v17;
  }

  else
  {
    v13 = 0x44B82FA09 * (a2 % 0x3B9ACA00);
    v14 = *(a1 + 24);
    *(a1 + 24) = v14 + v13;
    v15 = *(a1 + 16) + __CFADD__(v14, v13) + (a2 / 0x3B9ACA00);
  }

  *(a1 + 16) = v15;
  pthread_mutex_unlock(*(a1 + 216));
  _AirTunesClock_Tick(a1);
  return 1;
}

uint64_t AirTunesClock_GetSynchronizedTime(uint64_t a1, int *a2)
{
  pthread_mutex_lock(*(a1 + 216));
  *a2 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = v4 * (mach_absolute_time() - *(a1 + 80));
  v6 = *(a2 + 1);
  v7 = *a2;
  v8 = __CFADD__(v5, v6);
  v9 = v5 + v6;
  *(a2 + 1) = v9;
  if (v8)
  {
    *a2 = ++v7;
  }

  v10 = *(a1 + 24);
  *(a2 + 1) = v10 + v9;
  if (__CFADD__(v10, v9))
  {
    *a2 = ++v7;
  }

  *a2 = v7 + *(a1 + 16);
  v11 = *(a1 + 216);

  return pthread_mutex_unlock(v11);
}

uint64_t AirTunesClock_GetSynchronizedTimeNearUpTicks(uint64_t a1, int *a2, unint64_t a3)
{
  pthread_mutex_lock(*(a1 + 216));
  v6 = mach_absolute_time();
  v7 = v6;
  if (v6 >= a3)
  {
    v8 = v6 - a3;
  }

  else
  {
    v8 = a3 - v6;
  }

  *a2 = *(a1 + 32);
  v9 = *(a1 + 72);
  v10 = v9 * (v6 - *(a1 + 80));
  v11 = *(a2 + 1);
  v12 = *a2;
  v13 = __CFADD__(v10, v11);
  v14 = v10 + v11;
  *(a2 + 1) = v14;
  if (v13)
  {
    *a2 = ++v12;
  }

  v15 = *(a1 + 24);
  *(a2 + 1) = v15 + v14;
  if (__CFADD__(v15, v14))
  {
    *a2 = ++v12;
  }

  *a2 = v12 + *(a1 + 16);
  result = pthread_mutex_unlock(*(a1 + 216));
  v17 = *(a1 + 64);
  v18 = v8 / v17;
  v19 = v8 % v17 * v9;
  v20 = *(a2 + 1);
  v21 = v20 - v19;
  v22 = *a2 - (v20 < v19) - v18;
  v13 = __CFADD__(v20, v19);
  v23 = v20 + v19;
  v24 = *a2 + v13 + v18;
  if (v7 >= a3)
  {
    v23 = v21;
    v24 = v22;
  }

  *(a2 + 1) = v23;
  *a2 = v24;
  return result;
}

uint64_t APAdvertiserInfoGetTypeID()
{
  if (APAdvertiserInfoGetTypeID_initOnce != -1)
  {
    dispatch_once_f(&APAdvertiserInfoGetTypeID_initOnce, &APAdvertiserInfoGetTypeID_typeID, _APAdvertiserInfoClassRegister);
  }

  return APAdvertiserInfoGetTypeID_typeID;
}

uint64_t _APAdvertiserInfoClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

CFStringRef APAdvertiserInfoCopyDescription(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = CFCopyDescription(*(a1 + 80));
  pthread_mutex_unlock((a1 + 16));
  return v2;
}

uint64_t _APAdvertiserInfoCompare(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    if (a1 && a2)
    {
      v2 = *(a1 + 80);
      v3 = *(a2 + 80);

      return CFEqual(v2, v3);
    }

    else
    {
      APSLogErrorAt();
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 1;
  }
}

uint64_t APAdvertiserInfoFinalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 80) = 0;
  }

  return pthread_mutex_destroy((a1 + 16));
}

uint64_t APAdvertiserInfoCreate(uint64_t a1, void *a2)
{
  if (APAdvertiserInfoGetTypeID_initOnce != -1)
  {
    dispatch_once_f(&APAdvertiserInfoGetTypeID_initOnce, &APAdvertiserInfoGetTypeID_typeID, _APAdvertiserInfoClassRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    *(Instance + 16) = 0u;
    v5 = (Instance + 16);
    *(Instance + 80) = 0;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 80) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = pthread_mutex_init(v5, 0);
    if (v6)
    {
      APSLogErrorAt();
      CFRelease(v4);
    }

    else
    {
      *a2 = v4;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return v6;
}

uint64_t APAdvertiserInfoCreateWithData(const __CFAllocator *a1, const __CFData *a2, void *a3)
{
  v3 = a2;
  v11 = 0;
  cf = 0;
  if (!a2)
  {
    APSLogErrorAt();
LABEL_13:
    v9 = 4294960591;
    goto LABEL_17;
  }

  if (!a3)
  {
    APSLogErrorAt();
    v3 = 0;
    goto LABEL_13;
  }

  v6 = APAdvertiserInfoCreate(a1, &cf);
  if (v6)
  {
    v9 = v6;
    APSLogErrorAt();
    v3 = 0;
  }

  else
  {
    v3 = CFPropertyListCreateWithData(a1, v3, 2uLL, &v11, 0);
    if (v3)
    {
      if (v11 == 200)
      {
        v7 = cf;
        v8 = *(cf + 10);
        if (v8)
        {
          CFRelease(v8);
        }

        v9 = 0;
        v7[10] = CFRetain(v3);
        *a3 = v7;
        cf = 0;
LABEL_9:
        CFRelease(v3);
        return v9;
      }

      APSLogErrorAt();
      v9 = 4294960579;
    }

    else
    {
      APSLogErrorAt();
      v9 = 4294960534;
    }
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    goto LABEL_9;
  }

  return v9;
}

const void *APAdvertiserInfoCopyProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, int *a5)
{
  v6 = a3;
  if (!a3)
  {
    APSLogErrorAt();
    v9 = -6705;
    if (!a5)
    {
      return v6;
    }

    goto LABEL_6;
  }

  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), v6);
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
    pthread_mutex_unlock((a1 + 16));
    v9 = 0;
    if (!a5)
    {
      return v6;
    }

    goto LABEL_6;
  }

  pthread_mutex_unlock((a1 + 16));
  v9 = -6727;
  if (a5)
  {
LABEL_6:
    *a5 = v9;
  }

  return v6;
}