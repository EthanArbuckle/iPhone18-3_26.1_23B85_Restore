uint64_t __carEndpoint_activateInternal_block_invoke_3_165(uint64_t a1)
{
  v9 = 0;
  *(*(*(a1 + 32) + 8) + 24) = APCarPlayGetHeadUnitRestrictionsDictionary(&v9);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return __carEndpoint_activateInternal_block_invoke_3_165_cold_1();
  }

  v2 = *(*(a1 + 40) + 8);
  v3 = v9;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(v2);
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 56);
  if (v8)
  {
    return v8(CMBaseObject, @"HeadUnitRestrictions", v3);
  }

  return result;
}

uint64_t carEndpoint_sendCommandInternal(const void *a1, const void *a2, const void *a3, char a4, NSObject *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = Mutable;
  if (!Mutable)
  {
    carEndpoint_sendCommandInternal_cold_3();
    Data = 0;
LABEL_19:
    v16 = 4294950575;
    goto LABEL_21;
  }

  CFDictionarySetValue(Mutable, @"type", a2);
  if (a3)
  {
    CFDictionarySetValue(v12, @"params", a3);
  }

  Data = CFPropertyListCreateData(0, v12, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    carEndpoint_sendCommandInternal_cold_2();
    goto LABEL_19;
  }

  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (!BlockBufferWithCFDataNoCopy)
  {
    if (a5)
    {
      dispatch_retain(a5);
    }

    CFRetain(a1);
    CFRetain(v20);
    if (a2)
    {
      CFRetain(a2);
    }

    v15 = *(DerivedStorage + 528);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 0x40000000;
    v18[2] = __carEndpoint_sendCommandInternal_block_invoke;
    v18[3] = &__block_descriptor_tmp_215;
    v18[4] = DerivedStorage;
    v18[5] = a1;
    v18[6] = a2;
    v18[7] = v20;
    v19 = a4;
    v18[8] = Data;
    v18[9] = a5;
    dispatch_async(v15, v18);
    v16 = 0;
LABEL_11:
    CFRelease(v12);
    goto LABEL_12;
  }

  v16 = BlockBufferWithCFDataNoCopy;
  carEndpoint_sendCommandInternal_cold_1();
LABEL_21:
  if (a5)
  {
    dispatch_semaphore_signal(a5);
  }

  if (v12)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (Data)
  {
    CFRelease(Data);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v16;
}

void __carEndpoint_resetBurstParamsIfSiriWakes_block_invoke(uint64_t a1)
{
  StreamInfoForSubtype = carEndpoint_getStreamInfoForSubtype();
  if (StreamInfoForSubtype)
  {
    v3 = StreamInfoForSubtype;
    CFRetain(*(a1 + 32));
    CFRetain(v3);
    v4 = *(*(a1 + 40) + 528);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = __carEndpoint_resetBurstParamsIfSiriWakes_block_invoke_2;
    v7[3] = &__block_descriptor_tmp_182_1;
    v5 = *(a1 + 32);
    v7[4] = v3;
    v7[5] = v5;
    dispatch_async(v4, v7);
  }

  else
  {
    __carEndpoint_resetBurstParamsIfSiriWakes_block_invoke_cold_1();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }
}

void __carEndpoint_resetBurstParamsIfSiriWakes_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[56] || (carEndpoint_setParametersForJarvis(*(a1 + 40), 1, 0, 0, 0), (v2 = *(a1 + 32)) != 0))
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __carEndpoint_setParametersForJarvis_block_invoke(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v2 = *(a1 + 32);
  if (!*(v2 + 176) && *(v2 + 177) && *(v2 + 240))
  {
    if (*(a1 + 64))
    {
LABEL_9:
      v3 = v13;
      CMBaseObject = APSenderSessionGetCMBaseObject(*(*(a1 + 32) + 240));
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v5 || v5(CMBaseObject, @"TransportControlStream", 0, v3 + 3))
      {
        __carEndpoint_setParametersForJarvis_block_invoke_cold_2();
      }

      else
      {
        CFRetain(*(a1 + 40));
        v6 = *(*(a1 + 32) + 528);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 0x40000000;
        v11[2] = __carEndpoint_setParametersForJarvis_block_invoke_2;
        v11[3] = &unk_27849E7F8;
        v7 = *(a1 + 40);
        v11[4] = &v12;
        v11[5] = v7;
        dispatch_async(v6, v11);
      }

      goto LABEL_12;
    }

    v8 = *(v2 + 416);
    if (v8)
    {
      if (CFEqual(*(a1 + 48), v8))
      {
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_setParametersForJarvis_block_invoke_cold_1();
        }

        goto LABEL_12;
      }

      v2 = *(a1 + 32);
      v9 = *(v2 + 416);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 48);
    *(v2 + 416) = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_9;
  }

  if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_setParametersForJarvis_block_invoke_cold_3();
  }

LABEL_12:
  _Block_object_dispose(&v12, 8);
}

void __carEndpoint_setParametersForJarvis_block_invoke_2(uint64_t a1)
{
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_setParametersForJarvis_block_invoke_2_cold_1();
  }

  APTransportStreamSendPlistMessage();
  v2 = *(*(*(a1 + 32) + 8) + 24);
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

CFTypeRef __carEndpoint_sendCommandInternal_block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 40) + 240);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __carEndpoint_configureAccessoryLogs_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  if (APSGetFBOPropertyInt64() <= 0x493DFF)
  {
    __carEndpoint_configureAccessoryLogs_block_invoke_cold_5();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v3 = Mutable;
      if (CFPreferencesGetAppBooleanValue(@"airPlayCarPlayReceiverLogs", @"com.apple.airplay", 0))
      {
        v4 = carEndpoint_prepareAccessoryLogAction();
        CFDictionarySetValue(v3, @"LogAction", v4);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v4)
        {
          CFRelease(v4);
        }
      }

      if (CFPreferencesGetAppBooleanValue(@"dpCarPlayReceiverLogs", @"com.apple.airplay", 0))
      {
        v5 = carEndpoint_prepareAccessoryLogAction();
        CFDictionarySetValue(v3, @"DPLogAction", v5);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }

      if (CFPreferencesGetAppBooleanValue(@"OEMCarPlayReceiverLogs", @"com.apple.airplay", 0))
      {
        v6 = carEndpoint_prepareAccessoryLogAction();
        CFDictionarySetValue(v3, @"OEMLogAction", v6);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v6)
        {
          CFRelease(v6);
        }
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v14 = 0;
      if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v8 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(v8, @"params", v3);
        Data = CFPropertyListCreateData(0, v9, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          v11 = Data;
          if (FigCreateBlockBufferWithCFDataNoCopy())
          {
            __carEndpoint_configureAccessoryLogs_block_invoke_cold_1();
          }

          else
          {
            v12 = *(DerivedStorage + 528);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 0x40000000;
            block[2] = __carEndpoint_sendAccessoryLogRequest_block_invoke;
            block[3] = &__block_descriptor_tmp_288;
            block[4] = DerivedStorage;
            block[5] = v14;
            block[6] = 0;
            block[7] = v1;
            dispatch_sync(v12, block);
          }

          CFRelease(v9);
          CFRelease(v11);
          if (v14)
          {
            CFRelease(v14);
          }
        }

        else
        {
          __carEndpoint_configureAccessoryLogs_block_invoke_cold_2(v9);
        }
      }

      else
      {
        __carEndpoint_configureAccessoryLogs_block_invoke_cold_3();
      }

      CFRelease(v3);
    }

    else
    {
      __carEndpoint_configureAccessoryLogs_block_invoke_cold_4();
    }
  }
}

__CFString *carEndpoint_prepareAccessoryLogAction()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v4[0] = 0;
  APSSettingsGetCString();
  __strlcpy_chk();
  v2 = CFStringCreateMutable(v0, 0);
  v5[0] = 0;
  APSSettingsGetCString();
  __strlcpy_chk();
  CFStringAppendFormat(v2, 0, @"%s", v5);
  CFStringAppendFormat(Mutable, 0, @"?%@:level=%s", v2, v4);
  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

void __carEndpoint_sendAccessoryLogRequest_block_invoke(uint64_t *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  cf = 0;
  if (!carEndpoint_isDissociated(a1[4]))
  {
    v2 = a1[4];
    v3 = *(v2 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_sendAccessoryLogRequest_block_invoke_2;
    block[3] = &unk_27849E8A8;
    block[4] = &v16;
    block[5] = v2;
    dispatch_sync(v3, block);
    v4 = v17[3];
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v5)
      {
        if (v5(v4))
        {
          CMBaseObject = APSenderSessionGetCMBaseObject(v17[3]);
          v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v7 || v7(CMBaseObject, @"TransportControlStream", 0, &cf) || (v8 = cf, v9 = a1[5], v10 = a1[6], (v11 = *(*(CMBaseObjectGetVTable() + 16) + 56)) == 0) || v11(v8, 1819240307, v9, v10))
          {
            APSLogErrorAt();
            v12 = cf;
            if (!cf)
            {
              goto LABEL_14;
            }

            if (gLogCategory_APEndpointCarPlay > 90)
            {
              goto LABEL_13;
            }

            __carEndpoint_sendAccessoryLogRequest_block_invoke_cold_1(gLogCategory_APEndpointCarPlay);
          }
        }
      }
    }
  }

  v12 = cf;
  if (cf)
  {
LABEL_13:
    CFRelease(v12);
  }

LABEL_14:
  v13 = v17[3];
  if (v13)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(&v16, 8);
}

CFTypeRef __carEndpoint_sendAccessoryLogRequest_block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 40) + 240);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t carEndpoint_handleEvent()
{
  result = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 50)
  {
    if (gLogCategory_APEndpointCarPlay != -1)
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

void carEndpoint_handleSenderSessionConnected(uint64_t a1, const void *a2)
{
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleSenderSessionConnected_cold_1();
  }

  carEndpoint_handleConnectedStateChanged(a2);
}

void carEndpoint_handleSenderSessionDisconnected(uint64_t a1, const void *a2)
{
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleSenderSessionDisconnected_cold_1();
  }

  carEndpoint_handleConnectedStateChanged(a2);
}

void carEndpoint_handleSenderSessionFailed(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleSenderSessionFailed_cold_1();
  }

  Int64 = CFDictionaryGetInt64();
  v5 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_handleSenderSessionFailed_block_invoke;
  block[3] = &__block_descriptor_tmp_515;
  v7 = Int64;
  block[4] = a2;
  block[5] = DerivedStorage;
  dispatch_sync(v5, block);
}

uint64_t carEndpoint_teardownSenderSession(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v5)
    {
      v5(a2, 0, 0, 0, 0);
    }

    if (a3)
    {
      mach_absolute_time();
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v6)
      {
        v6(a2);
      }

      mach_absolute_time();
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        UpTicksToMilliseconds();
        LogPrintF();
      }
    }

    CMBaseObject = APSenderSessionGetCMBaseObject(a2);
    if (CMBaseObject)
    {
      v8 = CMBaseObject;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v9)
      {
        v9(v8);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v10 = APSenderSessionGetCMBaseObject(a2);
    VTable = CMBaseObjectGetVTable();
    v13 = *(VTable + 8);
    result = VTable + 8;
    v12 = v13;
    if (*v13 >= 2uLL)
    {
      v14 = v12[8];
      if (v14)
      {

        return v14(v10);
      }
    }
  }

  return result;
}

uint64_t carEndpoint_requestUI(const void *a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      carEndpoint_requestUI_cold_1();
      v10 = 4294950575;
      goto LABEL_17;
    }

    v6 = Mutable;
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    a2 = TypedValue;
    if (TypedValue && CFStringGetLength(TypedValue) >= 1)
    {
      v8 = CFURLCreateWithString(0, a2, 0);
      if (v8)
      {
        CFDictionarySetValue(v6, *MEMORY[0x277CC1A48], v8);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_requestUI_cold_2();
  }

  v9 = *(DerivedStorage + 168);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __carEndpoint_requestUI_block_invoke;
  v12[3] = &unk_27849EA18;
  v12[4] = &v13;
  v12[5] = DerivedStorage;
  dispatch_sync(v9, v12);
  carEndpoint_postNotification(a1, *MEMORY[0x277CC0DC8], *(v14 + 6), v6);
  carEndpoint_recordRequestUI(a1, a2, 1);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v10 = 0;
LABEL_17:
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t carEndpoint_updateViewArea(const void *a1, const __CFDictionary *a2)
{
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (*(DerivedStorage + 62))
  {
    if (a2)
    {
      v5 = DerivedStorage;
      Value = CFDictionaryGetValue(a2, @"uuid");
      if (Value)
      {
        v7 = Value;
        Int64 = CFDictionaryGetInt64();
        if (v19)
        {
          carEndpoint_updateViewArea_cold_1();
        }

        else
        {
          v9 = CFDictionaryGetValue(a2, @"adjacentViewAreas");
          if (v9)
          {
            v10 = v9;
            CFDictionaryGetInt64();
            if (v19)
            {
              carEndpoint_updateViewArea_cold_2();
            }

            else
            {
              if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v19 = carEndpoint_validateViewAreaParams(a1, v7, Int64, v10);
              if (v19)
              {
                carEndpoint_updateViewArea_cold_3();
              }

              else
              {
                v11 = *(v5 + 168);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 0x40000000;
                block[2] = __carEndpoint_updateViewArea_block_invoke;
                block[3] = &unk_27849EBC0;
                block[6] = v7;
                block[7] = a2;
                block[4] = &v15;
                block[5] = a1;
                block[8] = v5;
                dispatch_sync(v11, block);
                carEndpoint_postNotification(a1, *MEMORY[0x277CC0DA8], *(v16 + 6), a2);
              }
            }
          }

          else
          {
            carEndpoint_updateViewArea_cold_4();
          }
        }
      }

      else
      {
        carEndpoint_updateViewArea_cold_5();
      }
    }

    else
    {
      carEndpoint_updateViewArea_cold_6();
    }
  }

  else
  {
    carEndpoint_updateViewArea_cold_7(&v19);
  }

  v12 = v19;
  _Block_object_dispose(&v15, 8);
  return v12;
}

uint64_t carEndpoint_setLimitedUI(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (a2)
  {
    v5 = DerivedStorage;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = carEndpoint_copyMainDisplayUuid();
      if (v8)
      {
        v9 = v8;
        CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (TypedValue && (v11 = TypedValue, CFStringGetLength(TypedValue)) && !FigCFEqual())
        {
          v12 = 0;
        }

        else
        {
          v12 = 1;
          v11 = v9;
        }

        CFDictionarySetValue(v7, *MEMORY[0x277CC0BE8], v11);
        Int64 = CFDictionaryGetInt64();
        v14 = MEMORY[0x277CBED28];
        if (!Int64)
        {
          v14 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v7, *MEMORY[0x277CC0BF0], *v14);
        v15 = *(v5 + 168);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __carEndpoint_setLimitedUI_block_invoke;
        block[3] = &unk_27849EC10;
        v19 = v12;
        v20 = Int64 != 0;
        block[4] = &v21;
        block[5] = v5;
        dispatch_sync(v15, block);
        carEndpoint_postNotification(a1, *MEMORY[0x277CC0D68], *(v22 + 6), v7);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CFRelease(v9);
        v16 = 0;
      }

      else
      {
        carEndpoint_setLimitedUI_cold_1();
        v16 = 4294950576;
      }

      CFRelease(v7);
    }

    else
    {
      carEndpoint_setLimitedUI_cold_2();
      v16 = 4294950575;
    }
  }

  else
  {
    carEndpoint_setLimitedUI_cold_3();
    v16 = 4294950576;
  }

  _Block_object_dispose(&v21, 8);
  return v16;
}

uint64_t carEndpoint_setNightMode(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (a2)
  {
    v5 = DerivedStorage;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = carEndpoint_copyMainDisplayUuid();
      if (v8)
      {
        v9 = v8;
        CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (TypedValue && (v11 = TypedValue, CFStringGetLength(TypedValue)) && !FigCFEqual())
        {
          v12 = 0;
        }

        else
        {
          v12 = 1;
          v11 = v9;
        }

        CFDictionarySetValue(v7, *MEMORY[0x277CC0C90], v11);
        Int64 = CFDictionaryGetInt64();
        v14 = MEMORY[0x277CBED28];
        if (!Int64)
        {
          v14 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v7, *MEMORY[0x277CC0C98], *v14);
        v15 = *(v5 + 168);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __carEndpoint_setNightMode_block_invoke;
        block[3] = &unk_27849EC60;
        v19 = v12;
        v20 = Int64 != 0;
        block[4] = &v21;
        block[5] = v5;
        dispatch_sync(v15, block);
        carEndpoint_postNotification(a1, *MEMORY[0x277CC0D78], *(v22 + 6), v7);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CFRelease(v9);
        v16 = 0;
      }

      else
      {
        carEndpoint_setNightMode_cold_1();
        v16 = 4294950576;
      }

      CFRelease(v7);
    }

    else
    {
      carEndpoint_setNightMode_cold_2();
      v16 = 4294950575;
    }
  }

  else
  {
    carEndpoint_setNightMode_cold_3();
    v16 = 4294950576;
  }

  _Block_object_dispose(&v21, 8);
  return v16;
}

uint64_t carEndpoint_updateVehicleInformation(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  values = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (!a2)
  {
    carEndpoint_updateVehicleInformation_cold_2();
LABEL_9:
    v8 = 4294950576;
    goto LABEL_6;
  }

  v5 = DerivedStorage;
  CFDictionaryGetTypeID();
  values = CFDictionaryGetTypedValue();
  if (!values)
  {
    carEndpoint_updateVehicleInformation_cold_1();
    goto LABEL_9;
  }

  v6 = CFDictionaryCreate(*MEMORY[0x277CBECE8], MEMORY[0x277CC1A40], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = *(v5 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_updateVehicleInformation_block_invoke;
  block[3] = &unk_27849EC88;
  block[6] = values;
  block[7] = a1;
  block[4] = &v11;
  block[5] = v5;
  dispatch_sync(v7, block);
  carEndpoint_postNotification(a1, *MEMORY[0x277CC0DA0], *(v12 + 6), v6);
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = 0;
LABEL_6:
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t carEndpoint_validateRuntimeFeaturesWithAccessory(uint64_t a1, const __CFString *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFStringCompare(a2, @"suggestUI", 0) && CFStringCompare(a2, @"showUI", 0))
  {
    if (CFStringCompare(a2, @"changeUIContext", 0))
    {
      if (CFStringCompare(a2, @"deviceOfferFocus", 0) && CFStringCompare(a2, @"accessoryAcquireFocus", 0) && CFStringCompare(a2, @"accessoryGiveFocus", 0) || DerivedStorage[66])
      {
        return 0;
      }
    }

    else if (DerivedStorage[64])
    {
      return 0;
    }
  }

  else if (DerivedStorage[63])
  {
    return 0;
  }

  if (a3)
  {
    if (gLogCategory_APEndpointCarPlay > 90)
    {
      return 4294950576;
    }

    if (gLogCategory_APEndpointCarPlay == -1)
    {
      v6 = 4294950576;
      if (!_LogCategory_Initialize())
      {
        return v6;
      }
    }

    else
    {
      v6 = 4294950576;
    }

LABEL_21:
    LogPrintF();
    return v6;
  }

  if (gLogCategory_APEndpointCarPlay <= 90)
  {
    if (gLogCategory_APEndpointCarPlay == -1)
    {
      v6 = 0;
      if (!_LogCategory_Initialize())
      {
        return v6;
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_21;
  }

  return 0;
}

uint64_t __carEndpoint_forceKeyFrame_block_invoke(void *a1)
{
  result = a1[5];
  if (result && (result = CFStringGetLength(result), result >= 1))
  {
    *(*(a1[4] + 8) + 24) = carEndpoint_getScreenStreamForDisplayUUID();
    result = *(*(a1[4] + 8) + 24);
    if (result)
    {

      return CFRetain(result);
    }
  }

  else if (*(a1[7] + 264))
  {
    result = carEndpoint_getStreamInfoForSubtype();
    if (result)
    {
      result = *(result + 16);
      if (result)
      {
        result = CFRetain(result);
      }

      *(*(a1[4] + 8) + 24) = result;
    }
  }

  return result;
}

CFTypeRef __carEndpoint_sendiAPMessage_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 312);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void carEndpoint_jarvisInitiationComplete(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 168);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __carEndpoint_jarvisInitiationComplete_block_invoke;
  v5[3] = &__block_descriptor_tmp_371;
  v5[4] = DerivedStorage;
  v6 = a2;
  dispatch_async(v4, v5);
}

uint64_t __carEndpoint_jarvisInitiationComplete_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 456) = 0;
  if (!*(result + 40))
  {
    *(v1 + 448) = 0;
  }

  return result;
}

void carEndpoint_recordRequestUI(uint64_t a1, const __CFString *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = off_27849EA48;
  do
  {
    if (*(v8 - 16) == a3 && FigCFEqual() && (!*v8 || a2 && !CFStringFind(a2, *v8, 1uLL).location))
    {
      v9 = *(DerivedStorage + 168);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 0x40000000;
      v10[2] = __carEndpoint_recordRequestUI_block_invoke;
      v10[3] = &__block_descriptor_tmp_410;
      v10[4] = DerivedStorage;
      v10[5] = a1;
      v10[6] = v7;
      v11 = a3;
      dispatch_sync(v9, v10);
      return;
    }

    ++v7;
    v8 += 4;
  }

  while (v7 != 11);

  APSLogErrorAt();
}

uint64_t __carEndpoint_recordRequestUI_block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 264))
  {
    v1 = result;
    result = carEndpoint_getStreamInfoForSubtype();
    if (result)
    {
      v2 = result;
      if (*(v1 + 56))
      {
        ++*(result + 84);
      }

      else
      {
        ++*(result + 120);
      }

      result = FigCFEqual();
      if (result)
      {
        ++v2[22];
      }

      else
      {
        result = FigCFEqual();
        if (result)
        {
          ++v2[23];
        }

        else
        {
          result = FigCFEqual();
          if (result)
          {
            ++v2[24];
          }

          else
          {
            result = FigCFEqual();
            if (result)
            {
              ++v2[25];
            }

            else
            {
              result = FigCFEqual();
              if (result)
              {
                ++v2[26];
              }

              else
              {
                result = FigCFEqual();
                if (result)
                {
                  ++v2[27];
                }

                else
                {
                  result = FigCFEqual();
                  if (result)
                  {
                    ++v2[28];
                  }

                  else
                  {
                    result = FigCFEqual();
                    if (result)
                    {
                      ++v2[29];
                    }

                    else
                    {
                      result = FigCFEqual();
                      if (result)
                      {
                        ++v2[31];
                      }

                      else
                      {
                        result = FigCFEqual();
                        if (result)
                        {
                          ++v2[32];
                        }

                        else
                        {
                          result = FigCFEqual();
                          if (result)
                          {
                            ++v2[33];
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
    }
  }

  return result;
}

uint64_t carEndpoint_validateViewAreaParams(uint64_t a1, const void *a2, uint64_t a3, const __CFArray *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 280));
  if (Count < 1)
  {
LABEL_5:
    v14 = 0;
  }

  else
  {
    v9 = Count;
    v10 = 0;
    v11 = *MEMORY[0x277CC1680];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 280), v10);
      Value = CFDictionaryGetValue(ValueAtIndex, v11);
      if (CFEqual(a2, Value))
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_5;
      }
    }

    v15 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC16D8]);
    v14 = CFArrayGetCount(v15);
  }

  if (a3 >= 1 && v14 <= a3)
  {
    carEndpoint_validateViewAreaParams_cold_1();
    return 4294950576;
  }

  else if (a4)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    CFArrayGetCount(a4);
    CFArrayApplyBlock();
    a4 = *(v18 + 6);
    if (a4)
    {
      carEndpoint_validateViewAreaParams_cold_2();
    }

    _Block_object_dispose(&v17, 8);
  }

  return a4;
}

uint64_t __carEndpoint_updateViewArea_block_invoke(void *a1)
{
  result = carEndpoint_getScreenStreamForDisplayUUID();
  if (result)
  {
    v3 = a1[7];
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 8);
    result = VTable + 8;
    v7 = *(v6 + 56);
    if (v7)
    {
      result = v7(CMBaseObject, *MEMORY[0x277CC1908], v3);
    }
  }

  *(*(a1[4] + 8) + 24) = *(a1[8] + 224);
  return result;
}

uint64_t __carEndpoint_validateViewAreaParams_block_invoke(uint64_t result)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v1 = result;
    result = CFGetInt64();
    v2 = *(*(v1 + 32) + 8);
    if (result >= *(v1 + 40) || *(v2 + 24))
    {
      *(v2 + 24) = -16720;
    }
  }

  return result;
}

uint64_t carEndpoint_copyMainDisplayUuid()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(DerivedStorage + 168);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __carEndpoint_copyMainDisplayUuid_block_invoke;
  v4[3] = &unk_27849EC38;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __carEndpoint_setLimitedUI_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(result + 48))
  {
    *(v1 + 329) = *(result + 49);
  }

  *(*(*(result + 32) + 8) + 24) = *(v1 + 224);
  return result;
}

const __CFArray *__carEndpoint_copyMainDisplayUuid_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 280);
  if (result)
  {
    result = CFArrayGetValueAtIndex(result, 0);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(result, *MEMORY[0x277CC1680]);
      result = *(*(*(a1 + 32) + 8) + 24);
      if (result)
      {

        return CFRetain(result);
      }
    }
  }

  return result;
}

uint64_t __carEndpoint_setNightMode_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(result + 48))
  {
    *(v1 + 330) = *(result + 49);
  }

  *(*(*(result + 32) + 8) + 24) = *(v1 + 224);
  return result;
}

void __carEndpoint_updateVehicleInformation_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = *(v3 + 336);
  *(v3 + 336) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_updateVehicleInformation_block_invoke_cold_1();
  }

  *(*(a1[4] + 8) + 24) = *(a1[5] + 224);
}

void carEndpoint_handleConnectedStateChanged(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  isEndpointConnected = carEndpoint_isEndpointConnected();
  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  v6 = MEMORY[0x277CBED10];
  if (isEndpointConnected)
  {
    v6 = MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CC0CB8], *v6);
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_handleConnectedStateChanged_block_invoke;
  block[3] = &unk_27849ECB0;
  block[4] = &v9;
  block[5] = DerivedStorage;
  dispatch_sync(v7, block);
  carEndpoint_postNotification(a1, *MEMORY[0x277CC0D28], *(v10 + 6), v5);
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v9, 8);
}

void carEndpoint_updateErrorStatusIfNotSet(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if (!*(DerivedStorage + 176))
    {
      if (!*(DerivedStorage + 228))
      {
        *(DerivedStorage + 228) = a2;
      }

      if (a2 != -16603 || *(DerivedStorage + 40))
      {
        v11 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetInt64();
        v13 = MEMORY[0x277CC0CA0];
        if (!*(v5 + 177))
        {
          v13 = MEMORY[0x277CC0CA8];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CC0CC8], *v13);
        carEndpoint_postNotification(a1, *MEMORY[0x277CC0D50], *(v5 + 224), Mutable);
        if (Mutable)
        {

          CFRelease(Mutable);
        }
      }

      else
      {
        if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          carEndpoint_updateErrorStatusIfNotSet_cold_1();
        }

        v6 = *(v5 + 240);
        if (v6)
        {
          v7 = *(*(CMBaseObjectGetVTable() + 16) + 96);
          if (v7)
          {
            v7(v6, 0, 0, 0, 0);
          }

          CMBaseObject = APSenderSessionGetCMBaseObject(*(v5 + 240));
          if (CMBaseObject)
          {
            v9 = CMBaseObject;
            v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v10)
            {

              v10(v9);
            }
          }
        }
      }
    }
  }
}

uint64_t carEndpoint_overrideFeatureKeyWithPrefValue(int a1, CFArrayRef theArray, const void *a3)
{
  v11.length = CFArrayGetCount(theArray);
  v11.location = 0;
  CountOfValue = CFArrayGetCountOfValue(theArray, v11, a3);
  if (CountOfValue >= 2)
  {
    carEndpoint_overrideFeatureKeyWithPrefValue_cold_1();
    return 0;
  }

  else
  {
    v6 = CountOfValue == 1;
    IntWithDefault = APSSettingsGetIntWithDefault();
    v8 = IntWithDefault;
    if (IntWithDefault != v6)
    {
      if (IntWithDefault)
      {
        CFArrayAppendValue(theArray, a3);
      }

      else
      {
        v12.length = CFArrayGetCount(theArray);
        v12.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v12, a3);
        CFArrayRemoveValueAtIndex(theArray, FirstIndexOfValue);
      }

      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  return v8;
}

void __carEndpoint_createInfoRequestFeatureList_block_invoke(uint64_t a1, CFURLRef anURL)
{
  v2 = *(a1 + 32);
  v3 = CFURLGetString(anURL);

  CFArrayAppendValue(v2, v3);
}

void __carEndpoint_validateEnabledFeaturesWithAccessory_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CFDictionaryGetTypeID())
  {
    if (CFDictionaryContainsKey(cf, @"viewAreaSupportsFocusTransfer") && CFDictionaryGetInt64())
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    if (CFDictionaryContainsKey(cf, @"safeArea"))
    {
      CFDictionaryGetTypeID();
      if (CFDictionaryGetTypedValue())
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  else
  {
    __carEndpoint_validateEnabledFeaturesWithAccessory_block_invoke_cold_1();
  }
}

uint64_t carEndpoint_validateInfoResponseKeyPresentForFeature(int a1, CFDictionaryRef theDict, void *key, int a4)
{
  v5 = CFDictionaryContainsKey(theDict, key);
  if (a4)
  {
    if (!v5)
    {
      if (gLogCategory_APEndpointCarPlay > 90 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

  else if (v5 == 1)
  {
    if (gLogCategory_APEndpointCarPlay > 90 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_16;
    }

LABEL_9:
    LogPrintF();
LABEL_16:
    v6 = 4294950576;
    APSLogErrorAt();
    return v6;
  }

  return 0;
}

CFTypeRef __carEndpoint_setUpAPAccClientEndpointForIdType_block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 40) + 496);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t carEndpoint_createCommChannelInternal(const void *a1, const __CFDictionary *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  cf = 0;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    if (*(DerivedStorage + 176))
    {
      carEndpoint_createCommChannelInternal_cold_1();
      v15 = 0;
      v26 = 4294950573;
    }

    else
    {
      v9 = *(DerivedStorage + 240);
      if (v9)
      {
        v10 = CFRetain(v9);
        if (v10)
        {
          v11 = v10;
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v12 || !v12(v11))
          {
            carEndpoint_createCommChannelInternal_cold_5();
            v15 = 0;
            v26 = 4294950570;
LABEL_35:
            CFRelease(v11);
            goto LABEL_36;
          }

          v13 = *MEMORY[0x277CBECE8];
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          v15 = MutableCopy;
          if (MutableCopy)
          {
            v16 = *MEMORY[0x277CBED28];
            CFDictionarySetValue(MutableCopy, @"wantsDedicatedSocket", *MEMORY[0x277CBED28]);
            Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0B38]);
            if (CFStringCompare(Value, *MEMORY[0x277CC15F8], 0))
            {
              if (CFPrefs_GetInt64())
              {
                v18 = v16;
              }

              else
              {
                v18 = *MEMORY[0x277CBED10];
              }

              CFDictionarySetValue(v15, @"publishEncryptionKeyDiagnosticMode", v18);
            }

            CFDictionarySetInt64();
            v19 = CFGetAllocator(a1);
            v20 = APEndpointRemoteControlSessionCreate(v19, v11, *(DerivedStorage + 32), v15, 2, &v29);
            if (v20)
            {
              v26 = v20;
              carEndpoint_createCommChannelInternal_cold_2();
              goto LABEL_35;
            }

            if (*(DerivedStorage + 472) || (v21 = CFGetAllocator(a1), Mutable = CFDictionaryCreateMutable(v21, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 472) = Mutable) != 0))
            {
              CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
              v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v24)
              {
                v25 = v24(CMBaseObject, @"SessionID", v13, &cf);
                if (!v25)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterAddWeakListener();
                  CFDictionarySetValue(*(DerivedStorage + 472), cf, v29);
                  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  if (a3)
                  {
                    *a3 = v29;
                    v29 = 0;
                  }

                  v27 = cf;
                  v26 = 0;
                  if (a4)
                  {
                    *a4 = cf;
                    cf = 0;
                    goto LABEL_35;
                  }

LABEL_27:
                  if (v27)
                  {
                    CFRelease(v27);
                  }

                  goto LABEL_35;
                }

                v26 = v25;
              }

              else
              {
                v26 = 4294954514;
              }

              APSLogErrorAt();
              v27 = cf;
              goto LABEL_27;
            }

            carEndpoint_createCommChannelInternal_cold_3();
          }

          else
          {
            carEndpoint_createCommChannelInternal_cold_4();
          }

          v26 = 4294950575;
          goto LABEL_35;
        }
      }

      carEndpoint_createCommChannelInternal_cold_6();
      v15 = 0;
      v26 = 4294950570;
    }
  }

  else
  {
    carEndpoint_createCommChannelInternal_cold_7();
    v15 = 0;
    v26 = 4294950576;
  }

LABEL_36:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v26;
}

void carEndpoint_handleiAPChannelEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleiAPChannelEvent_cold_1();
  }

  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6 || v6(CMBaseObject, @"clientTypeUUID", 0, &v15))
  {
    carEndpoint_handleiAPChannelEvent_cold_5();
  }

  else if (CFStringCompare(v15, @"E9459FD0-BCAD-4C45-820F-1E72447EF2F2", 0))
  {
    carEndpoint_handleiAPChannelEvent_cold_2();
  }

  else
  {
    v7 = *(DerivedStorage + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_handleiAPChannelEvent_block_invoke;
    block[3] = &unk_27849EE78;
    block[4] = &v11;
    block[5] = DerivedStorage;
    dispatch_sync(v7, block);
    v8 = v12[3];
    if (v8)
    {
      if (APAccTransportClientEndpointForwardData(v8, a3))
      {
        carEndpoint_handleiAPChannelEvent_cold_3();
      }
    }

    else
    {
      carEndpoint_handleiAPChannelEvent_cold_4();
    }
  }

  v9 = v12[3];
  if (v9)
  {
    CFRelease(v9);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  _Block_object_dispose(&v11, 8);
}

void carEndpoint_handleRCSClosed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8 || v8(CMBaseObject, @"SessionID", *MEMORY[0x277CBECE8], &v12))
  {
    carEndpoint_handleRCSClosed_cold_1();
  }

  else
  {
    if (a2)
    {
      CFRetain(a2);
    }

    if (v12)
    {
      CFRetain(v12);
      v9 = v12;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(DerivedStorage + 168);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = __carEndpoint_handleRCSClosed_block_invoke;
    v11[3] = &__block_descriptor_tmp_730;
    v11[4] = v9;
    v11[5] = a4;
    v11[6] = a2;
    dispatch_async(v10, v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void __carEndpoint_handleRCSClosed_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(DerivedStorage + 472);
  if (v4)
  {
    CFDictionaryRemoveValue(v4, v2);
  }

  v5 = (DerivedStorage + 72);
  if (FigCFEqual() || (v5 = (DerivedStorage + 88), FigCFEqual()) || (v5 = (DerivedStorage + 96), FigCFEqual()) || (v5 = (DerivedStorage + 112), FigCFEqual()) || (v5 = (DerivedStorage + 128), FigCFEqual()) || (v5 = (DerivedStorage + 144), FigCFEqual()))
  {
    v6 = *v5;
    if (!*v5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = (DerivedStorage + 152);
  if (FigCFEqual())
  {
    v6 = *v9;
    v5 = v9;
    if (*v9)
    {
LABEL_14:
      CFRelease(v6);
      *v5 = 0;
    }
  }

LABEL_15:
  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {

    CFRelease(v8);
  }
}

CFTypeRef __carEndpoint_handleiAPChannelEvent_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 312);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void carEndpoint_registerForGlobalNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_registerForGlobalNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_739;
  block[4] = a2;
  block[5] = a4;
  block[6] = DerivedStorage;
  block[7] = a3;
  block[8] = a1;
  dispatch_sync(v9, block);
}

uint64_t carEndpoint_handleOverrideTurnByTurnConfigurationChanged()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 520))
  {
    return carEndpoint_handleOverrideTurnByTurnConfigurationChanged_cold_4();
  }

  FigStarkModeControllerGetCurrentMode();
  result = CFPreferencesGetAppBooleanValue(@"overrideTBTAppState", @"com.apple.airplay", 0);
  v1 = result;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || (result = _LogCategory_Initialize(), result)))
  {
    result = carEndpoint_handleOverrideTurnByTurnConfigurationChanged_cold_1();
    if (!v1)
    {
      return result;
    }
  }

  else if (!v1)
  {
    return result;
  }

  result = CFPreferencesGetAppBooleanValue(@"iOSIsDoingTBT", @"com.apple.airplay", 0);
  v2 = result;
  if (gLogCategory_APEndpointCarPlay <= 50)
  {
    if (gLogCategory_APEndpointCarPlay != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = carEndpoint_handleOverrideTurnByTurnConfigurationChanged_cold_2();
    }
  }

  if (v2)
  {
    result = FigStarkModeControllerRequestModeChange();
    if (result)
    {
      return carEndpoint_handleOverrideTurnByTurnConfigurationChanged_cold_3();
    }
  }

  return result;
}

CFTypeRef __carEndpoint_registerForGlobalNotification_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 512);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __carEndpoint_registerForGlobalNotification_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_738;
  v7 = *(a1 + 56);
  result = notify_register_dispatch(v2, v3, v4, v6);
  if (**(a1 + 40) != -1)
  {
    return CFRetain(*(a1 + 64));
  }

  return result;
}

uint64_t carEndpoint_setupAudioStream(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  v9 = *MEMORY[0x277CC1968];
  if (FigCFEqual())
  {
    if (*(DerivedStorage + 40))
    {
      v10 = @"com.apple.airplay.car.wireless.sessionPercentageWithBufferedAudio";
    }

    else
    {
      v10 = @"com.apple.airplay.car.wired.sessionPercentageWithBufferedAudio";
    }

    v11 = *(DerivedStorage + 256);
    v12 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v37 = 0;
    v35 = 0;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      v22 = 0;
      v21 = 4294950575;
      goto LABEL_64;
    }

    v14 = Mutable;
    CFDictionarySetValue(Mutable, @"streamType", v9);
    v15 = *(v12 + 8);
    v16 = CFGetAllocator(a1);
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(v15);
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18)
    {
      v19 = v18(CMBaseObject, @"CarPlayAudioFormats", v16, &cf);
      if (!v19)
      {
        v20 = APCarPlayAudioFormatsCopyFormatsForAudioType(cf, 103, @"media", &v35, 0, 0);
        if (v20)
        {
          v21 = v20;
          carEndpoint_setupAudioStream_cold_1();
        }

        else
        {
          CFDictionarySetInt64();
          v21 = APAudioEngineVendorCreate(v11, v14, APAudioEngineBufferedCreate, &v37);
          if (!v21)
          {
            v22 = v37;
            v37 = 0;
            goto LABEL_14;
          }

          APSLogErrorAt();
          if (v37)
          {
            CFRelease(v37);
          }
        }

LABEL_13:
        v22 = 0;
LABEL_14:
        CFRelease(v14);
        if (cf)
        {
          CFRelease(cf);
        }

        if (!v21)
        {
          v23 = CFGetAllocator(a1);
          v24 = APEndpointStreamBufferedAudioCreate(v23, *(DerivedStorage + 16), *(DerivedStorage + 32), a4, *(DerivedStorage + 240), v22, *(DerivedStorage + 8), &v34);
          if (v24)
          {
            v21 = v24;
            carEndpoint_setupAudioStream_cold_2();
            goto LABEL_57;
          }

          v25 = @"StreamInfo_BufferedAudio";
          v26 = 261095425;
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v27 = 261095424;
          goto LABEL_49;
        }

LABEL_64:
        APSLogErrorAt();
        goto LABEL_57;
      }

      v21 = v19;
    }

    else
    {
      v21 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    if (*(DerivedStorage + 40))
    {
      v10 = @"com.apple.airplay.car.wireless.sessionPercentageWithMainAudio";
    }

    else
    {
      v10 = @"com.apple.airplay.car.wired.sessionPercentageWithMainAudio";
    }

    v26 = 265289729;
    v27 = 265289728;
    v28 = kAPEndpointShowInfoKey_StreamInfo_MainAudio;
  }

  else if (FigCFEqual())
  {
    if (*(DerivedStorage + 40))
    {
      v10 = @"com.apple.airplay.car.wireless.sessionPercentageWithAltAudio";
    }

    else
    {
      v10 = @"com.apple.airplay.car.wired.sessionPercentageWithAltAudio";
    }

    v26 = 264241153;
    v27 = 264241152;
    v28 = kAPEndpointShowInfoKey_StreamInfo_AltAudio;
  }

  else if (FigCFEqual())
  {
    if (*(DerivedStorage + 40))
    {
      v10 = @"com.apple.airplay.car.wireless.sessionPercentageWithAuxAudio";
    }

    else
    {
      v10 = @"com.apple.airplay.car.wired.sessionPercentageWithAuxAudio";
    }

    v26 = 263192577;
    v27 = 263192576;
    v28 = kAPEndpointShowInfoKey_StreamInfo_AuxAudio;
  }

  else
  {
    if (!FigCFEqual())
    {
      v22 = 0;
      v21 = 4294960561;
      goto LABEL_57;
    }

    if (*(DerivedStorage + 40))
    {
      v10 = @"com.apple.airplay.car.wireless.sessionPercentageWithOutOfBandAVVCAudio";
    }

    else
    {
      v10 = @"com.apple.airplay.car.wired.sessionPercentageWithOutOfBandAVVCAudio";
    }

    v26 = 262144001;
    v27 = 262144000;
    v28 = kAPEndpointShowInfoKey_StreamInfo_OutOfBandAVVCAudio;
  }

  v25 = *v28;
  v29 = CFGetAllocator(a1);
  v30 = APEndpointStreamCarPlayAudioCreate(v29, a1, *(DerivedStorage + 16), a2, a3, a4, *(DerivedStorage + 8), *(DerivedStorage + 240), *(DerivedStorage + 256), *(DerivedStorage + 288), &v34);
  if (v30)
  {
    v21 = v30;
    carEndpoint_setupAudioStream_cold_3();
    v22 = 0;
    goto LABEL_57;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v22 = 0;
LABEL_49:
  carEndpoint_addEndpointStreamNotificationListeners();
  v31 = APEndpointCarPlayStreamInfoCreate(v34, v25, v27, v26, v10);
  if (v31)
  {
    v32 = v31;
    if (v34)
    {
      CFRelease(v34);
      v34 = 0;
    }

    CFArrayAppendValue(*(DerivedStorage + 264), v32);
    CFRelease(v32);
    v21 = 0;
    goto LABEL_53;
  }

  carEndpoint_setupAudioStream_cold_4();
  v21 = 4294950575;
LABEL_57:
  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_53:
  if (v22)
  {
    CFRelease(v22);
  }

  return v21;
}

uint64_t carEndpoint_addEndpointStreamNotificationListeners()
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

uint64_t APEndpointCarPlayStreamInfoCreate(const void *a1, const void *a2, int a3, int a4, const void *a5)
{
  if (APEndpointCarPlayStreamInfoGetTypeID_initOnce != -1)
  {
    APEndpointCarPlayStreamInfoCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 128) = 0;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = -1;
    *(Instance + 16) = CFRetain(a1);
    *(v11 + 24) = CFRetain(a2);
    *(v11 + 48) = a3;
    *(v11 + 52) = a4;
    *(v11 + 72) = CFRetain(a5);
  }

  else
  {
    APEndpointCarPlayStreamInfoCreate_cold_2();
  }

  return v11;
}

void carEndpoint_handleStreamFailed(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  Int64 = -71850;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    Int64 = CFDictionaryGetInt64();
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v10 = *(DerivedStorage + 168);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __carEndpoint_handleStreamFailed_block_invoke;
  v11[3] = &__block_descriptor_tmp_789;
  v11[4] = DerivedStorage;
  v11[5] = a4;
  v11[6] = a2;
  v12 = Int64;
  dispatch_async(v10, v11);
}

void __carEndpoint_handleStreamFailed_block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 264))
  {
    CFArrayGetCount(*(v2 + 264));
    CFArrayApplyBlock();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }
}

void __carEndpoint_handleStreamFailed_block_invoke_2(uint64_t a1)
{
  if (FigCFEqual())
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      CFRetain(v2);
      v3 = *(a1 + 40);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(*(a1 + 48) + 168);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = __carEndpoint_handleStreamFailed_block_invoke_3;
    v5[3] = &__block_descriptor_tmp_787;
    v5[4] = v3;
    v6 = *(a1 + 56);
    dispatch_async(v4, v5);
  }
}

void __carEndpoint_handleStreamFailed_block_invoke_3(uint64_t a1)
{
  carEndpoint_updateErrorStatusIfNotSet(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void carEndpoint_powerLogDisplay(const void *a1, uint64_t a2, int a3)
{
  CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  value = 0;
  v22 = 0;
  v6 = *MEMORY[0x277CBECE8];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v8 = CFGetAllocator(a1);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10 || (v10(CMBaseObject, *MEMORY[0x277CC1878], v8, &value), !value))
    {
LABEL_22:
      CFRelease(MutableCopy);
      return;
    }

    APSEventRecorderGetEventTime();
    valuePtr = v11;
    v12 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(MutableCopy, @"SessionID", v12);
      v14 = MEMORY[0x277CBED28];
      if (!a3)
      {
        v14 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(MutableCopy, @"Resume", *v14);
      CFDictionarySetValue(MutableCopy, @"ScreenUUID", value);
      v15 = *(a2 + 32);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      Count = CFArrayGetCount(*(DerivedStorage + 280));
      if (Count < 1)
      {
        goto LABEL_17;
      }

      v18 = Count;
      v19 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 280), v19);
        if (v15 == v19)
        {
          break;
        }

        if (v18 == ++v19)
        {
          goto LABEL_17;
        }
      }

      if (FigCFDictionaryGetValue())
      {
        LOWORD(v22) = CFDictionaryGetInt64();
        HIWORD(v22) = CFDictionaryGetInt64();
        v20 = CFNumberCreate(v6, kCFNumberSInt16Type, &v22);
        v21 = CFNumberCreate(v6, kCFNumberSInt16Type, &v22 + 2);
        CFDictionarySetValue(MutableCopy, @"Width", v20);
        CFDictionarySetValue(MutableCopy, @"Height", v21);
        PLLogRegisteredEvent();
        if (v21)
        {
          CFRelease(v21);
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }

      else
      {
LABEL_17:
        PLLogRegisteredEvent();
      }

      CFRelease(v13);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  if (MutableCopy)
  {
    goto LABEL_22;
  }
}

uint64_t __APEndpointCarPlayStreamInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APEndpointCarPlayStreamInfoGetTypeID_typeID = result;
  return result;
}

void _APEndpointCarPlayStreamInfoFinalize(void *a1)
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

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
    a1[9] = 0;
  }
}

void __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v16 = 0;
  v17 = 0;
  v3 = CFGetTypeID(cf);
  if (v3 != CFDictionaryGetTypeID())
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_1();
    return;
  }

  FigCFDictionaryGetCGFloatIfPresent();
  FigCFDictionaryGetCGFloatIfPresent();
  FigCFDictionaryGetCGFloatIfPresent();
  FigCFDictionaryGetCGFloatIfPresent();
  if (!CGRectContainsRect(*(a1 + 40), v18[1]))
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_2();
    return;
  }

  if (v18[1].origin.x)
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_3();
    return;
  }

  if (v18[1].origin.y)
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_4();
    return;
  }

  if (v18[1].size.width)
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_5();
    return;
  }

  if (v18[1].size.height)
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_6();
    return;
  }

  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v5 = CFGetTypeID(TypedValue);
    if (v5 != CFDictionaryGetTypeID())
    {
      __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_7();
      return;
    }

    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    if (!CGRectContainsRect(v18[1], v18[0]))
    {
      __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_8();
      return;
    }
  }

  else
  {
    v18[0] = v18[1];
  }

  v6 = CFGetAllocator(*(a1 + 72));
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    carEndpoint_convertNonSquarePixelRectToSquarePixelRect(&v16, v18[1].origin.x, v18[1].origin.y, v18[1].size.width, v18[1].size.height);
    v20.origin = v16;
    v20.size = v17;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v20);
    CFDictionarySetValue(v8, *MEMORY[0x277CC16F8], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
    Int64 = CFDictionaryGetInt64();
    v11 = *MEMORY[0x277CBED28];
    v12 = *MEMORY[0x277CBED10];
    if (Int64)
    {
      v13 = *MEMORY[0x277CBED28];
    }

    else
    {
      v13 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v8, *MEMORY[0x277CC1708], v13);
    if (CFDictionaryGetInt64())
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    CFDictionarySetValue(v8, *MEMORY[0x277CC1700], v14);
    CFDictionaryGetInt64();
    CFDictionarySetInt64();
    carEndpoint_convertNonSquarePixelRectToSquarePixelRect(&v16, v18[0].origin.x, v18[0].origin.y, v18[0].size.width, v18[0].size.height);
    v21.origin = v16;
    v21.size = v17;
    v15 = CGRectCreateDictionaryRepresentation(v21);
    CFDictionarySetValue(v8, *MEMORY[0x277CC16E8], v15);
    CFRelease(v15);
    CFArrayAppendValue(*(a1 + 160), v8);
    CFRelease(v8);
  }

  else
  {
    __carEndpoint_copyScreenInfoFromDisplayDescription_block_invoke_cold_9();
  }
}

uint64_t carEndpoint_convertNonSquarePixelRectToSquarePixelRect(float64x2_t *a1, float64_t a2, float64_t a3, float64_t a4, float64_t a5)
{
  v15 = *MEMORY[0x277CBF3A8];
  if (a4 <= 0.0)
  {
    return carEndpoint_convertNonSquarePixelRectToSquarePixelRect_cold_2();
  }

  if (a5 <= 0.0)
  {
    return carEndpoint_convertNonSquarePixelRectToSquarePixelRect_cold_1();
  }

  result = FigDisplayModes_ConvertNonSquarePixelSizeToSquarePixelSize();
  if (a1)
  {
    v7.f64[0] = a2;
    v7.f64[1] = a3;
    v8.f64[0] = a4;
    v8.f64[1] = a5;
    v9 = vmovn_s64(vcvtq_s64_f64(vdivq_f64(vmulq_f64(v7, v15), v8)));
    v10.i64[0] = v9.i32[0];
    v10.i64[1] = v9.i32[1];
    *a1 = vcvtq_f64_s64(v10);
    a1[1] = v15;
  }

  return result;
}

void carEndpoint_handleJarvisParametersChangedNotification(const void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  v3 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_handleJarvisParametersChangedNotification_block_invoke;
  block[3] = &unk_27849F088;
  block[5] = &v26;
  block[6] = DerivedStorage;
  block[4] = &v30;
  dispatch_sync(v3, block);
  if (*(v31 + 24))
  {
    v4 = APSGetFBOPropertyInt64();
    IntWithDefault = APSSettingsGetIntWithDefault();
    if (IntWithDefault != 5000 && gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_handleJarvisParametersChangedNotification_cold_1();
    }

    HasDeviceUnlockedSinceBoot = APCarPlayHasDeviceUnlockedSinceBoot();
    HasSpringboardStarted = APCarPlayHasSpringboardStarted();
    IsSiriSwitchOn = APCarPlayIsSiriSwitchOn();
    v9 = -1;
    if (HasDeviceUnlockedSinceBoot)
    {
      if (HasSpringboardStarted)
      {
        if (IsSiriSwitchOn)
        {
          if (v4)
          {
            v9 = 1;
            v10 = APSSettingsGetIntWithDefault();
            if (v10 != 1)
            {
              v11 = v10;
              if (gLogCategory_APEndpointCarPlay > 50)
              {
                v13 = 0;
                goto LABEL_31;
              }

              if (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize())
              {
                carEndpoint_handleJarvisParametersChangedNotification_cold_2();
              }

              v9 = v11;
            }
          }
        }
      }
    }

    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v9 == 1)
    {
      if (APSSettingsGetInt64())
      {
        APSSettingsGetCString();
        if (v34)
        {
          APSLogErrorAt();
          goto LABEL_35;
        }

        v12 = CFGetAllocator(a1);
        v13 = CFStringCreateWithCString(v12, cStr, 0x8000100u);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          carEndpoint_handleJarvisParametersChangedNotification_cold_3();
        }
      }

      else
      {
        v16 = CMBaseObjectGetDerivedStorage();
        v36 = 0;
        *cStr = 0;
        v35 = 0;
        v17 = *(v16 + 8);
        v18 = CFGetAllocator(a1);
        CMBaseObject = APEndpointDescriptionGetCMBaseObject(v17);
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20)
        {
          if (!v20(CMBaseObject, @"VoiceModelLanguages", v18, cStr))
          {
            if (*cStr)
            {
              v21 = *(v16 + 8);
              v22 = CFGetAllocator(a1);
              v23 = APEndpointDescriptionGetCMBaseObject(v21);
              v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v24)
              {
                if (!v24(v23, @"CurrentVoiceModelLanguage", v22, &v36) && v36 && APCarPlayGetJarvisLanguageFromList(*cStr, v36, &v35))
                {
                  carEndpoint_handleJarvisParametersChangedNotification_cold_4();
                }
              }
            }
          }
        }

        v13 = v35;
        if (!v35)
        {
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            carEndpoint_handleJarvisParametersChangedNotification_cold_5();
          }

          v13 = 0;
          v11 = 2;
          goto LABEL_31;
        }
      }

      v11 = 1;
    }

    else
    {
      v13 = 0;
      v11 = v9;
    }

LABEL_31:
    carEndpoint_setParametersForJarvis(a1, 0, v11, IntWithDefault, v13);
    v14 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v14, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetInt64();
    carEndpoint_postNotification(a1, *MEMORY[0x277CC0998], *(v27 + 6), Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    goto LABEL_35;
  }

  if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleJarvisParametersChangedNotification_cold_6();
  }

LABEL_35:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
}

void *__carEndpoint_handleJarvisParametersChangedNotification_block_invoke(void *result)
{
  v1 = result[6];
  if (*(v1 + 176))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 177) != 0;
  }

  *(*(result[4] + 8) + 24) = v2;
  *(*(result[5] + 8) + 24) = *(result[6] + 224);
  return result;
}

void __carEndpoint_registerForHTTPProxy_block_invoke(uint64_t a1, const void *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_registerForHTTPProxy_block_invoke_2;
    block[3] = &unk_27849F0B0;
    block[5] = &v7;
    block[6] = v4;
    block[4] = &v11;
    dispatch_sync(v5, block);
    if (*(v8 + 24))
    {
      if (*(v12 + 6) == *(a1 + 48))
      {
        if (carEndpoint_sendCommandInternal(*(a1 + 32), @"setProxyParameters", a2, 1, 0))
        {
          __carEndpoint_registerForHTTPProxy_block_invoke_cold_1();
        }
      }

      else if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      __carEndpoint_registerForHTTPProxy_block_invoke_cold_2();
    }
  }

  else
  {
    __carEndpoint_registerForHTTPProxy_block_invoke_cold_3();
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

void *__carEndpoint_registerForHTTPProxy_block_invoke_2(void *result)
{
  v1 = result[6];
  *(*(result[4] + 8) + 24) = *(v1 + 224);
  *(*(result[5] + 8) + 24) = *(v1 + 177);
  return result;
}

uint64_t carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  TimeBetweenEventsInMilliSecondRecursive = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  CFDictionarySetInt64();

  return carEndpoint_addIntervalToPerformanceDictionaryAndLog(TimeBetweenEventsInMilliSecondRecursive, a5, a6, a7);
}

void carEndpoint_addEventToPerformanceDictionaryAndLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  EventTimeRecursive = APSEventRecorderGetEventTimeRecursive();
  CFDictionarySetDouble();
  if (a5)
  {
    v7 = EventTimeRecursive ? APSEventRecorderCreateStringWithEventRecorderTime() : CFStringCreateWithCString(*MEMORY[0x277CBECE8], "n/a", 0x8000100u);
    v8 = v7;
    CPrintF();
    if (v8)
    {

      CFRelease(v8);
    }
  }
}

uint64_t carEndpoint_addIntervalToPerformanceDictionaryAndLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CFDictionarySetInt64();
  if (a4)
  {
    return CPrintF();
  }

  return result;
}

uint64_t carEndpoint_logToMutableString(uint64_t a1, unsigned int a2)
{
  LODWORD(result) = CFStringAppendF();
  if (result)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t carEndpoint_addSignPostTimeToDictionary()
{
  result = APSEventRecorderGetEventTimeRecursive();
  if (result)
  {
    result = CFDictionarySetDouble();
    if (gLogCategory_APEndpointCarPlay <= 30)
    {
      if (gLogCategory_APEndpointCarPlay != -1)
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

uint64_t __carEndpoint_deactivateInternal_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 224);
  *(v1 + 177) = 0;
  return result;
}

double __carEndpoint_deactivateInternal_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = carEndpoint_getStreamInfoForType() != 0;
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 88) + 240);
  *(*(a1 + 88) + 240) = 0;
  v2 = *(a1 + 88);
  *(v2 + 248) = 0;
  v3 = *(v2 + 256);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 88) + 256) = 0;
    v2 = *(a1 + 88);
  }

  *(*(*(a1 + 48) + 8) + 24) = *(v2 + 488);
  *(*(a1 + 88) + 488) = 0;
  *(*(*(a1 + 56) + 8) + 24) = *(*(a1 + 88) + 264);
  *(*(a1 + 88) + 264) = 0;
  v4 = *(a1 + 88);
  v5 = v4[37];
  if (v5)
  {
    CFRelease(v5);
    *(*(a1 + 88) + 296) = 0;
    v4 = *(a1 + 88);
  }

  v6 = v4[58];
  if (v6)
  {
    CFRelease(v6);
    *(*(a1 + 88) + 464) = 0;
    v4 = *(a1 + 88);
  }

  v7 = v4[60];
  if (v7)
  {
    CFRelease(v7);
    *(*(a1 + 88) + 480) = 0;
  }

  v8 = *(a1 + 80);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 472);
  if (v10)
  {
    CFDictionaryApplyFunction(v10, carEndpoint_unsubscribeAndInvalidateRCS, v8);
    CFDictionaryRemoveAllValues(*(DerivedStorage + 472));
  }

  v11 = *(a1 + 88);
  v12 = v11[59];
  if (v12)
  {
    CFRelease(v12);
    *(*(a1 + 88) + 472) = 0;
    v11 = *(a1 + 88);
  }

  if (v11[62])
  {
    CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
    if (CMBaseObject)
    {
      v14 = CMBaseObject;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v15)
      {
        v15(v14);
      }
    }

    v11 = *(a1 + 88);
    v16 = v11[62];
    if (v16)
    {
      CFRelease(v16);
      *(*(a1 + 88) + 496) = 0;
      v11 = *(a1 + 88);
    }
  }

  if (v11[63])
  {
    APSPowerAssertionRelease();
    v11 = *(a1 + 88);
    v17 = v11[63];
    if (v17)
    {
      CFRelease(v17);
      *(*(a1 + 88) + 504) = 0;
      v11 = *(a1 + 88);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = v11[39];
  *(*(a1 + 88) + 312) = 0;
  *(*(*(a1 + 72) + 8) + 24) = *(*(a1 + 88) + 304);
  *(*(a1 + 88) + 304) = 0;
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  *(v19 + 328) = 0;
  *(v19 + 376) = 0;
  carEndpoint_deRegisterFromGlobalNotification(v18, (v19 + 344));
  v20 = *(a1 + 88);
  if (*(v20 + 57))
  {
    carEndpoint_deRegisterFromGlobalNotification(*(a1 + 80), (v20 + 424));
    carEndpoint_deRegisterFromGlobalNotification(*(a1 + 80), (*(a1 + 88) + 428));
    carEndpoint_deRegisterFromGlobalNotification(*(a1 + 80), (*(a1 + 88) + 432));
    carEndpoint_deRegisterFromGlobalNotification(*(a1 + 80), (*(a1 + 88) + 436));
    carEndpoint_deRegisterFromGlobalNotification(*(a1 + 80), (*(a1 + 88) + 440));
    v20 = *(a1 + 88);
  }

  v21 = *(v20 + 416);
  if (v21)
  {
    CFRelease(v21);
    *(*(a1 + 88) + 416) = 0;
    v20 = *(a1 + 88);
  }

  v22 = (v20 + 380);
  result = 0.0;
  *v22 = 0u;
  v22[1] = 0u;
  return result;
}

void carEndpoint_deRegisterFromGlobalNotification(const void *a1, int *a2)
{
  if (*a2 != -1)
  {
    notify_cancel(*a2);
    *a2 = -1;
    CFRelease(a1);
    *a2 = -1;
  }
}

void __carEndpoint_deactivateInternal_block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 520))
  {
    FigStarkModeControllerSetExecuteChangeHandler();
    v2 = *(*(a1 + 32) + 520);
    if (v2)
    {
      CFRelease(v2);
      *(*(a1 + 32) + 520) = 0;
    }
  }
}

uint64_t __carEndpoint_deactivateInternal_block_invoke_4(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v4 = *(CMBaseObjectGetVTable() + 8);
  if (*v4 >= 2uLL)
  {
    v5 = v4[8];
    if (v5)
    {
      v5(CMBaseObject);
    }
  }

  v6 = *(a2 + 16);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 32);
  if (v10)
  {

    return v10(v6);
  }

  return result;
}

uint64_t __carEndpoint_deactivateInternal_block_invoke_5(uint64_t a1, const void *a2)
{
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(a1 + 32);

  return carEndpoint_handlePlaybackSessionRemove(v4, a2, 0);
}

uint64_t carEndpoint_handlePlaybackSessionRemove(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (a3)
  {
    v6 = *(DerivedStorage + 488);
    if (v6)
    {
      CFSetRemoveValue(v6, a2);
    }
  }

  result = FigEndpointPlaybackSessionGetCMBaseObject();
  if (result)
  {
    v8 = result;
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 8);
    result = VTable + 8;
    v11 = *(v10 + 24);
    if (v11)
    {

      return v11(v8);
    }
  }

  return result;
}

CFTypeRef __carEndpoint_postSessionStatistics_block_invoke(void *a1, double a2)
{
  LODWORD(a2) = *(a1[8] + 460);
  *(*(a1[4] + 8) + 24) = *&a2 / 1000.0;
  *(*(a1[5] + 8) + 24) = APSEventRecorderGetTimeBetweenEventsInMilliSecond() / 0x3E8;
  if (*(a1[8] + 40))
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(*(*(a1[6] + 8) + 24), @"APCarPlay_isWireless", *v3);
  CFDictionarySetInt64();
  result = *(a1[8] + 264);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void __carEndpoint_postSessionStatistics_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  cf = 0;
  v4 = CFGetAllocator(*(a1 + 72));
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, *MEMORY[0x277CC1878], v4, &cf);
  }

  v7 = CFGetAllocator(*(a1 + 72));
  v8 = FigEndpointStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, *MEMORY[0x277CC18B0], v7, &v11);
  }

  if (*(a2 + 56) == 1 && CFStringCompare(*(a2 + 24), @"StreamInfo_Screen", 0) == kCFCompareEqualTo && (*(a2 + 32) & 0x8000000000000000) == 0)
  {
    carEndpoint_powerLogDisplay(*(a1 + 72), a2, 0);
  }

  if (!FigCFEqual())
  {
    carEndpoint_updateStreamResumedTimeIfNeeded(*(a1 + 72), a2, 268304386);
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      AppendPrintF();
    }

    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      CFDictionarySetDouble();
    }
  }

  if (FigCFEqual())
  {
    FigCFDictionarySetDouble();
    if (*(*(a1 + 80) + 376))
    {
      CFDictionarySetInt64();
    }
  }

  else if (FigCFEqual())
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    CFStringAppendFormat(Mutable, 0, @"AP_SIGNPOST_ALTERNATESCREEN_[%d]_DISPLAYING", *(a2 + 32));
    FigCFDictionarySetDouble();
    if (*(*(a1 + 80) + 376))
    {
      *(*(*(a1 + 64) + 8) + 24) += *(a2 + 80);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t __carEndpoint_postSessionStatistics_block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 40) + 480);
  if (result)
  {
    return CFDictionaryApplyBlock();
  }

  return result;
}

uint64_t carEndpoint_unsubscribeAndInvalidateRCS()
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = FigEndpointRemoteControlSessionGetCMBaseObject();
  if (result)
  {
    v1 = result;
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    v4 = *(v3 + 24);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

void __carEndpoint_createPlaybackSessionInternal_block_invoke(uint64_t a1)
{
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2800000000;
  v18[3] = 0;
  v18[4] = 0;
  v2 = *(a1 + 40);
  if (*(v2 + 176))
  {
    __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_1();
LABEL_32:
    v6 = 0;
    Mutable = 0;
    goto LABEL_20;
  }

  v3 = *(v2 + 488);
  if (!v3)
  {
    __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_5();
    goto LABEL_32;
  }

  Count = CFSetGetCount(v3);
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@-%d", *(*(a1 + 40) + 16), (Count + 1));
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = *(a1 + 40);
    v9 = *(v8 + 528);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_createPlaybackSessionInternal_block_invoke_2;
    block[3] = &unk_27849F400;
    block[4] = v18;
    block[5] = v8;
    dispatch_sync(v9, block);
    APSEventRecorderSetTimeInDictionary();
    v10 = *(a1 + 40);
    v11 = *(v10 + 256);
    if (v11)
    {
      CFDictionarySetValue(Mutable, @"NetworkClock", v11);
      v10 = *(a1 + 40);
    }

    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v10 + 8));
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(CMBaseObject, @"ExternalPlaybackCapabilities", v5, &v19);
    }

    FigCFDictionaryGetBooleanIfPresent();
    v14 = *(*(a1 + 40) + 8);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v15)
    {
      LODWORD(v15) = v15(v14, 35) != 0;
    }

    if (v20)
    {
      LODWORD(v15) = 1;
    }

    if (v15)
    {
      v16 = MEMORY[0x277CBED28];
    }

    else
    {
      v16 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"SupportsTLS_PSK", *v16);
    *(*(*(a1 + 32) + 8) + 24) = APEndpointPlaybackSessionRemoteControlCreate(v6, *(*(a1 + 40) + 240), *(*(a1 + 40) + 32), Mutable, &v21);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_2();
    }

    else
    {
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_3();
      }

      CFSetSetValue(*(*(a1 + 40) + 488), v21);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      **(a1 + 56) = v21;
      v21 = 0;
    }
  }

  else
  {
    __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_4();
  }

LABEL_20:
  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  _Block_object_dispose(v18, 8);
}

uint64_t __carEndpoint_createPlaybackSessionInternal_block_invoke_2(uint64_t a1)
{
  result = APSEventRecorderGetEventTime();
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 24) = result;
  *(v3 + 32) = v4;
  return result;
}

uint64_t carEndpoint_RequestCarUI(const void *a1, uint64_t a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    carEndpoint_RequestCarUI_cold_4();
    return 4294950575;
  }

  v7 = Mutable;
  if (!a3)
  {
LABEL_13:
    v10 = carEndpoint_sendCommandInternal(a1, @"requestUI", v7, 0, 0);
    if (v10)
    {
      carEndpoint_RequestCarUI_cold_3();
    }

    else
    {
      carEndpoint_recordRequestUI(a1, a3, 0);
    }

    goto LABEL_15;
  }

  v8 = CFURLGetString(a3);
  if (v8)
  {
    a3 = v8;
    v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v9)
    {
      v7 = v9;
      if (*(DerivedStorage + 61) && CFEqual(a3, @"videoplayback:"))
      {
        a3 = @"airplayvideo:";
      }

      CFDictionarySetValue(v7, @"url", a3);
      goto LABEL_13;
    }

    carEndpoint_RequestCarUI_cold_1();
    return 4294950575;
  }

  carEndpoint_RequestCarUI_cold_2();
  v10 = 4294950576;
LABEL_15:
  CFRelease(v7);
  return v10;
}

uint64_t carEndpoint_DisableBluetooth(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetValue(Mutable, @"deviceID", a2);
      v6 = carEndpoint_packetizeCommandAndSend(a1, @"disableBluetooth", v5);
      if (v6)
      {
        carEndpoint_DisableBluetooth_cold_1();
      }

      CFRelease(v5);
    }

    else
    {
      carEndpoint_DisableBluetooth_cold_2();
      return 4294950575;
    }
  }

  else
  {
    carEndpoint_DisableBluetooth_cold_3();
    return 4294950576;
  }

  return v6;
}

uint64_t carEndpoint_DuckAudio(const void *a1, const __CFDictionary *a2)
{
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x2000000000;
  v24 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  block[8] = 0;
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      if (FigCFDictionaryGetDoubleIfPresent())
      {
        CFDictionarySetDouble();
      }

      if (FigCFDictionaryGetDoubleIfPresent())
      {
        CFDictionarySetDouble();
      }

      Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0BA8]);
      if (Value)
      {
        v8 = Value;
        if (CFEqual(Value, *MEMORY[0x277CC0B98]))
        {
          v9 = *(DerivedStorage + 168);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __carEndpoint_DuckAudio_block_invoke;
          block[3] = &unk_27849F4A0;
          block[4] = &v22;
          block[5] = DerivedStorage;
          block[6] = a1;
          block[7] = v6;
          dispatch_sync(v9, block);
          if (*(v23[0] + 24))
          {
            carEndpoint_DuckAudio_cold_1();
          }
        }

        else if (CFEqual(v8, *MEMORY[0x277CC0BA0]))
        {
          v17 = 0;
          v18 = &v17;
          v19 = 0x2000000000;
          v20 = 0;
          v10 = *(DerivedStorage + 168);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 0x40000000;
          v16[2] = __carEndpoint_DuckAudio_block_invoke_2;
          v16[3] = &unk_27849F4C8;
          v16[5] = DerivedStorage;
          v16[6] = a1;
          v16[4] = &v17;
          dispatch_sync(v10, v16);
          if (v18[3])
          {
            v11 = *(DerivedStorage + 168);
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 0x40000000;
            v15[2] = __carEndpoint_DuckAudio_block_invoke_3;
            v15[3] = &unk_27849F510;
            v15[6] = a1;
            v15[7] = v6;
            v15[4] = &v17;
            v15[5] = DerivedStorage;
            v15[8] = a1;
            dispatch_sync(v11, v15);
          }

          else
          {
            v12 = carEndpoint_sendCommandInternal(a1, @"unduckAudio", v6, 0, 0);
            *(v23[0] + 24) = v12;
            if (v12)
            {
              carEndpoint_DuckAudio_cold_2();
            }
          }

          _Block_object_dispose(&v17, 8);
        }

        else
        {
          *(v23[0] + 24) = -16720;
          APSLogErrorAt();
        }
      }

      else
      {
        carEndpoint_DuckAudio_cold_3();
      }

      CFRelease(v6);
      v13 = *(v23[0] + 24);
    }

    else
    {
      carEndpoint_DuckAudio_cold_4(v23);
      v13 = 4294950575;
    }
  }

  else
  {
    carEndpoint_DuckAudio_cold_5();
    v13 = 4294950576;
  }

  _Block_object_dispose(&v22, 8);
  return v13;
}

uint64_t carEndpoint_SetHIDInputMode(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 168);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __carEndpoint_SetHIDInputMode_block_invoke;
  v9[3] = &__block_descriptor_tmp_1173;
  v9[4] = DerivedStorage;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a1;
  dispatch_async(v7, v9);
  return 0;
}

uint64_t carEndpoint_CopyHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 168);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __carEndpoint_CopyHIDInputMode_block_invoke;
  v10[3] = &unk_27849F558;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = a2;
  v10[7] = a4;
  dispatch_sync(v7, v10);
  v8 = 0;
  if (*(v12 + 6))
  {
    APSLogErrorAt();
    v8 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t carEndpoint_CreateRemoteControlSession(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x2000000000;
  v25 = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (!a3)
  {
    carEndpoint_CreateRemoteControlSession_cold_9();
LABEL_33:
    v15 = 4294950576;
    goto LABEL_28;
  }

  v8 = DerivedStorage;
  Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0B38]);
  if (!Value)
  {
    carEndpoint_CreateRemoteControlSession_cold_8();
    goto LABEL_33;
  }

  v10 = Value;
  v11 = computeLogStringForRCSClientType(Value);
  if (CFStringCompare(v10, *MEMORY[0x277CC15E8], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 69))
    {
      v12 = 72;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_7();
LABEL_39:
    v15 = 4294949690;
    goto LABEL_28;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15D8], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 80))
    {
      v12 = 88;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_6();
    goto LABEL_39;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15E0], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 80))
    {
      v12 = 96;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_5();
    goto LABEL_39;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15D0], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 104))
    {
      v12 = 112;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_4();
    goto LABEL_39;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15C8], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 120))
    {
      v12 = 128;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_3();
    goto LABEL_39;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15F8], 0) == kCFCompareEqualTo)
  {
    if (!*(v8 + 60))
    {
      carEndpoint_CreateRemoteControlSession_cold_2(v24);
      goto LABEL_42;
    }

    v12 = 144;
LABEL_27:
    v20[3] = v8 + v12;
    v13 = *(v8 + v12) != 0;
    v14 = *(v8 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_CreateRemoteControlSession_block_invoke;
    block[3] = &unk_27849F5E0;
    block[6] = v8;
    block[7] = FigEndpoint;
    v18 = v13;
    block[8] = v10;
    block[9] = a3;
    block[4] = &v23;
    block[5] = &v19;
    block[10] = v11;
    block[11] = a1;
    block[12] = a2;
    dispatch_sync(v14, block);
    v15 = *(v24[0] + 24);
    goto LABEL_28;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15F0], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 60))
    {
      v12 = 152;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_1(v24);
LABEL_42:
    v15 = 4294960561;
    goto LABEL_28;
  }

  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15 = 4294960561;
  *(v24[0] + 24) = -6735;
LABEL_28:
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v15;
}

uint64_t carEndpoint_CreateCommChannel(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0B38]);
  if (!Value)
  {
    carEndpoint_CreateCommChannel_cold_11();
    goto LABEL_28;
  }

  v9 = Value;
  if (CFStringCompare(Value, *MEMORY[0x277CC0B28], 0))
  {
    if (CFStringCompare(v9, *MEMORY[0x277CC0B18], 0))
    {
      if (CFStringCompare(v9, *MEMORY[0x277CC0B20], 0))
      {
        if (CFStringCompare(v9, *MEMORY[0x277CC0B10], 0))
        {
          if (CFStringCompare(v9, *MEMORY[0x277CC0B08], 0))
          {
            if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            *(v26 + 6) = -6735;
            goto LABEL_28;
          }

          if (!*(DerivedStorage + 120))
          {
            carEndpoint_CreateCommChannel_cold_2();
            goto LABEL_28;
          }

          v10 = DerivedStorage + 128;
          if (*(DerivedStorage + 128))
          {
            carEndpoint_CreateCommChannel_cold_1();
            goto LABEL_28;
          }
        }

        else
        {
          if (!*(DerivedStorage + 104))
          {
            carEndpoint_CreateCommChannel_cold_4();
            goto LABEL_28;
          }

          v10 = DerivedStorage + 112;
          if (*(DerivedStorage + 112))
          {
            carEndpoint_CreateCommChannel_cold_3();
            goto LABEL_28;
          }
        }
      }

      else
      {
        if (!*(DerivedStorage + 80))
        {
          carEndpoint_CreateCommChannel_cold_6();
          goto LABEL_28;
        }

        v10 = DerivedStorage + 96;
        if (*(DerivedStorage + 96))
        {
          carEndpoint_CreateCommChannel_cold_5();
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!*(DerivedStorage + 80))
      {
        carEndpoint_CreateCommChannel_cold_8();
        goto LABEL_28;
      }

      v10 = DerivedStorage + 88;
      if (*(DerivedStorage + 88))
      {
        carEndpoint_CreateCommChannel_cold_7();
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (!*(DerivedStorage + 69))
    {
      carEndpoint_CreateCommChannel_cold_10();
      goto LABEL_28;
    }

    v10 = DerivedStorage + 72;
    if (*(DerivedStorage + 72))
    {
      carEndpoint_CreateCommChannel_cold_9();
      goto LABEL_28;
    }
  }

  v22[3] = v10;
  v11 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_CreateCommChannel_block_invoke;
  block[3] = &unk_27849F608;
  block[4] = &v25;
  block[5] = &v17;
  block[6] = &v21;
  block[7] = a1;
  block[8] = a2;
  block[9] = FigEndpoint;
  dispatch_sync(v11, block);
  if (a3)
  {
    v12 = *v22[3];
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *a3 = v12;
  }

LABEL_28:
  v13 = v18[3];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(v26 + 6);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v14;
}

uint64_t carEndpoint_SendData(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v15[3] = 0;
  if (a2)
  {
    v11 = *(DerivedStorage + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_SendData_block_invoke;
    block[3] = &unk_27849F658;
    block[4] = v16;
    block[5] = &v17;
    block[6] = v15;
    block[7] = DerivedStorage;
    block[8] = a2;
    block[9] = a1;
    block[10] = a4;
    block[11] = a5;
    block[12] = a3;
    dispatch_sync(v11, block);
    v12 = *(v18 + 6);
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    carEndpoint_SendData_cold_1();
    v12 = 4294950576;
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  if (v12)
  {
    a4(a1, a2, v12, a5);
    v12 = *(v18 + 6);
  }

LABEL_5:
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
  return v12;
}

uint64_t carEndpoint_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  if (a2)
  {
    v5 = *(DerivedStorage + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_CloseCommChannel_block_invoke;
    block[3] = &unk_27849F680;
    block[6] = a2;
    block[7] = a1;
    block[8] = DerivedStorage;
    block[4] = &v10;
    block[5] = v9;
    dispatch_sync(v5, block);
    v6 = *(v11 + 6);
  }

  else
  {
    carEndpoint_CloseCommChannel_cold_1();
    v6 = 4294950576;
  }

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t carEndpoint_RequestViewArea(const void *a1, const void *a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (carEndpoint_validateViewAreaParams(a1, a2, a3, 0))
  {
    carEndpoint_RequestViewArea_cold_1();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetValue(Mutable, @"uuid", a2);
      CFDictionarySetInt64();
      if (carEndpoint_sendCommandInternal(a1, @"requestViewArea", v7, 0, 0))
      {
        carEndpoint_RequestViewArea_cold_2();
      }

      else if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFRelease(v7);
    }

    else
    {
      carEndpoint_RequestViewArea_cold_3();
    }
  }

  return 0;
}

uint64_t carEndpoint_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointExtendedGetFigEndpoint();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a3)
  {
    v4 = 4294950576;
LABEL_11:
    APSLogErrorAt();
    return v4;
  }

  if (!FigCFEqual())
  {
    v4 = 4294960561;
    goto LABEL_11;
  }

  return 0;
}

void __carEndpoint_runTestCommand_block_invoke(uint64_t a1)
{
  carEndpoint_requestUI(*(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

__CFString *computeLogStringForRCSClientType(const __CFString *a1)
{
  if (CFStringCompare(a1, *MEMORY[0x277CC15E8], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayUpdateData";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15D0], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayLoggingData";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15C8], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayClusterControl";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15D8], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayProtocolData";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15E0], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayProtocolData2";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15F8], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayVideoOverlayUI";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15F0], 0))
  {
    return 0;
  }

  return @"CarPlayVideoSettings";
}

void carEndpoint_handleRemoteControlSessionEvent(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    if (!v9(CMBaseObject, @"SessionID", 0, &v27))
    {
      v10 = FigEndpointRemoteControlSessionGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        if (!v11(v10, @"clientTypeUUID", 0, &v26))
        {
          if (CFStringCompare(v26, *MEMORY[0x277CC15E8], 0))
          {
            if (CFStringCompare(v26, *MEMORY[0x277CC15D0], 0))
            {
              if (CFStringCompare(v26, *MEMORY[0x277CC15C8], 0))
              {
                if (CFStringCompare(v26, *MEMORY[0x277CC15D8], 0))
                {
                  v12 = 0;
                  if (CFStringCompare(v26, *MEMORY[0x277CC15E0], 0))
                  {
                    goto LABEL_46;
                  }
                }
              }
            }
          }

          v21[0] = 0;
          v21[1] = v21;
          v21[2] = 0x2000000000;
          v21[3] = 0;
          v20[0] = 0;
          v20[1] = v20;
          v20[2] = 0x2000000000;
          v20[3] = 0;
          v18[0] = 0;
          v18[1] = v18;
          v18[2] = 0x2000000000;
          v19 = 0;
          v13 = *(DerivedStorage + 168);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __carEndpoint_handleRemoteControlSessionEvent_block_invoke;
          block[3] = &unk_27849F630;
          block[7] = v18;
          block[8] = DerivedStorage;
          block[4] = &v22;
          block[5] = v21;
          block[6] = v20;
          dispatch_sync(v13, block);
          if (v23[3])
          {
            v14 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (v14)
            {
              v12 = v14;
              if (CFEqual(a2, *MEMORY[0x277CC1650]))
              {
                if (a4)
                {
                  CFRetain(a4);
                }

                if (v27)
                {
                  CFRetain(v27);
                }

                if (a3)
                {
                  CFRetain(a3);
                }

                CFRetain(v12);
                APSDispatchAsyncFHelper();
                if (gLogCategory_APEndpointCarPlay > 10 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
                {
                  goto LABEL_44;
                }

                computeLogStringForRCSClientType(v26);
                if (a3)
                {
                  CFDataGetLength(a3);
                }
              }

              else
              {
                if (CFEqual(a2, *MEMORY[0x277CC1658]))
                {
                  if (a4)
                  {
                    CFRetain(a4);
                  }

                  if (v27)
                  {
                    CFRetain(v27);
                  }

                  CFRetain(v12);
                  APSDispatchAsyncFHelper();
                  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                  {
                    carEndpoint_handleRemoteControlSessionEvent_cold_1(&v26);
                  }

                  goto LABEL_44;
                }

                if (gLogCategory_APEndpointCarPlay > 90 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
                {
LABEL_44:
                  v15 = 1;
                  goto LABEL_45;
                }

                computeLogStringForRCSClientType(v26);
              }

              LogPrintF();
              goto LABEL_44;
            }

            APSLogErrorAt();
            if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
            {
              carEndpoint_handleRemoteControlSessionEvent_cold_2();
            }
          }

          else
          {
            APSLogErrorAt();
            if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
            {
              carEndpoint_handleRemoteControlSessionEvent_cold_3();
            }
          }

          v15 = 0;
          v12 = 0;
LABEL_45:
          _Block_object_dispose(v18, 8);
          _Block_object_dispose(v20, 8);
          _Block_object_dispose(v21, 8);
          if (v15)
          {
            goto LABEL_46;
          }

          goto LABEL_16;
        }
      }
    }
  }

  APSLogErrorAt();
  v12 = 0;
LABEL_16:
  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_46:
  v16 = v23[3];
  if (v16)
  {
    CFRelease(v16);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  _Block_object_dispose(&v22, 8);
}

CFTypeRef __carEndpoint_handleRemoteControlSessionEvent_block_invoke(void *a1)
{
  result = *(a1[8] + 216);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[4] + 8) + 24) = result;
  *(*(a1[5] + 8) + 24) = *(a1[8] + 196);
  *(*(a1[6] + 8) + 24) = *(a1[8] + 204);
  *(*(a1[7] + 8) + 24) = *(a1[8] + 224);
  return result;
}

void carEndpoint_callDidReceiveDataOverCommChannelDelegate(uint64_t a1)
{
  (*a1)(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

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

void carEndpoint_callDidCloseCommChannelDelegate(uint64_t a1)
{
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_callDidCloseCommChannelDelegate_cold_1();
  }

  (*a1)(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

void carEndpoint_rcsSendMessageCompletion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (*(a3 + 16))
  {
    CFRetain(*a3);
    CFRetain(*(a3 + 8));
    APSDispatchAsyncFHelper();
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_rcsSendMessageCompletion_cold_1();
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v4 = *(a3 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a3);
}

void carEndpoint_callCompletionCallback(uint64_t a1)
{
  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 32), *(a1 + 24));
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

void OUTLINED_FUNCTION_32_1(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = *(a33 + 24);

  carEndpoint_postNotification(v33, a2, v36, v34);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return _LogCategory_Initialize();
}

uint64_t APAccTransportClientConnectionGetTypeID()
{
  if (gAPAccTransportClientConnectionInitOnce != -1)
  {
    APAccTransportClientConnectionGetTypeID_cold_1();
  }

  return gAPAccTransportClientConnectionTypeID;
}

uint64_t _APAccTransportClientConnectionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPAccTransportClientConnectionTypeID = result;
  return result;
}

uint64_t APAccTransportClientConnectionCreate(const void *a1, uint64_t *a2)
{
  if (gAPAccTransportClientConnectionInitOnce != -1)
  {
    APAccTransportClientConnectionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 16) = dispatch_queue_create("com.apple.APAccTransportClientConnection", 0);
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *(v5 + 40) = v6;
    if (gLogCategory_APAccTransportClientConnection <= 50 && (gLogCategory_APAccTransportClientConnection != -1 || _LogCategory_Initialize()))
    {
      APAccTransportClientConnectionCreate_cold_2();
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    APAccTransportClientConnectionCreate_cold_3();
    return 4294960568;
  }

  return result;
}

uint64_t APAccTransportClientConnectionOpen(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (APAccTransportClientConnectionOpen_once != -1)
  {
    APAccTransportClientConnectionOpen_cold_1();
  }

  v2 = *(a1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __APAccTransportClientConnectionOpen_block_invoke_3;
  v5[3] = &unk_27849F700;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APAccTransportClientConnectionOpen_block_invoke()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getacc_transportClient_serverDisconnectedHandlerSymbolLoc_ptr;
  v6 = getacc_transportClient_serverDisconnectedHandlerSymbolLoc_ptr;
  if (!getacc_transportClient_serverDisconnectedHandlerSymbolLoc_ptr)
  {
    v1 = CoreAccessoriesLibrary();
    v4[3] = dlsym(v1, "acc_transportClient_serverDisconnectedHandler");
    getacc_transportClient_serverDisconnectedHandlerSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    __APAccTransportClientConnectionOpen_block_invoke_cold_1();
  }

  return v0(&__block_literal_global_8);
}

void sub_22213175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientConnectionOpen_block_invoke_2()
{
  if (gLogCategory_APAccTransportClientConnection <= 60 && (gLogCategory_APAccTransportClientConnection != -1 || _LogCategory_Initialize()))
  {
    __APAccTransportClientConnectionOpen_block_invoke_2_cold_1();
  }
}

void __APAccTransportClientConnectionOpen_block_invoke_3(uint64_t a1)
{
  if (!*(*(a1 + 40) + 24))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    if (v3)
    {
      v4 = v3;
      v5 = CFUUIDCreateString(v2, v3);
      if (v5)
      {
        v6 = v5;
        v9 = 0;
        v10 = &v9;
        v11 = 0x2020000000;
        v7 = getacc_transportClient_createConnectionSymbolLoc_ptr;
        v12 = getacc_transportClient_createConnectionSymbolLoc_ptr;
        if (!getacc_transportClient_createConnectionSymbolLoc_ptr)
        {
          v8 = CoreAccessoriesLibrary();
          v10[3] = dlsym(v8, "acc_transportClient_createConnection");
          getacc_transportClient_createConnectionSymbolLoc_ptr = v10[3];
          v7 = v10[3];
        }

        _Block_object_dispose(&v9, 8);
        if (!v7)
        {
          __APAccTransportClientConnectionOpen_block_invoke_3_cold_2();
        }

        *(*(a1 + 40) + 24) = v7(5, v6);
        if (*(*(a1 + 40) + 24))
        {
          if (gLogCategory_APAccTransportClientConnection <= 50 && (gLogCategory_APAccTransportClientConnection != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        else
        {
          __APAccTransportClientConnectionOpen_block_invoke_3_cold_1(a1);
        }

        CFRelease(v4);
        CFRelease(v6);
      }

      else
      {
        __APAccTransportClientConnectionOpen_block_invoke_3_cold_3(a1, v4);
      }
    }

    else
    {
      __APAccTransportClientConnectionOpen_block_invoke_3_cold_4(a1);
    }
  }
}

void sub_2221319AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAccTransportClientConnectionClose(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAccTransportClientConnectionClose_block_invoke;
  block[3] = &unk_27849F728;
  block[5] = v5;
  block[6] = a1;
  block[4] = &v7;
  dispatch_sync(v1, block);
  v2 = *(v8 + 6);
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(&v7, 8);
  return v2;
}

void __APAccTransportClientConnectionClose_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 32))
  {
    CFDictionaryApplyBlock();
    v2 = *(a1 + 48);
  }

  v3 = *(v2 + 24);
  if (v3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v4 = getacc_transportClient_destroyConnectionSymbolLoc_ptr;
    v11 = getacc_transportClient_destroyConnectionSymbolLoc_ptr;
    if (!getacc_transportClient_destroyConnectionSymbolLoc_ptr)
    {
      v5 = CoreAccessoriesLibrary();
      v9[3] = dlsym(v5, "acc_transportClient_destroyConnection");
      getacc_transportClient_destroyConnectionSymbolLoc_ptr = v9[3];
      v4 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v4)
    {
      __APAccTransportClientConnectionClose_block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = v4(v3);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v6 = 50;
    }

    else
    {
      v6 = 90;
    }

    if (v6 >= gLogCategory_APAccTransportClientConnection && (gLogCategory_APAccTransportClientConnection != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = *(*(a1 + 48) + 24);
    if (v7)
    {
      CFRelease(v7);
      *(*(a1 + 48) + 24) = 0;
    }
  }

  else
  {
    __APAccTransportClientConnectionClose_block_invoke_cold_2(a1);
  }
}

void sub_222131C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientConnectionClose_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __accTransportClientEndpointInvalidate_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_sync(v3, block);
}

uint64_t APAccTransportClientConnectionCopyEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (!a1 || !a3 || !a2)
  {
    APSLogErrorAt();
    v6 = v9;
    v4 = 4294960591;
LABEL_9:
    *(v6 + 6) = v4;
    goto LABEL_6;
  }

  if (!*(a1 + 24))
  {
    APSLogErrorAt();
    v6 = v9;
    v4 = 4294960587;
    goto LABEL_9;
  }

  v3 = *(a1 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __APAccTransportClientConnectionCopyEndpoint_block_invoke;
  v7[3] = &unk_27849DD00;
  v7[4] = &v8;
  v7[5] = a1;
  v7[6] = a2;
  v7[7] = a3;
  dispatch_sync(v3, v7);
  v4 = *(v9 + 6);
LABEL_6:
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __APAccTransportClientConnectionCopyEndpoint_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 40) + 32))
  {
    *(*(a1 + 40) + 32) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *(a1 + 48), 0x8000100u);
  Value = CFDictionaryGetValue(*(*(a1 + 40) + 32), v3);
  if (Value)
  {
    v5 = Value;
    CFRetain(Value);
    goto LABEL_24;
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = CFDictionaryGetValue(v7, @"authenticationCertificateSerial");
    v6 = *(a1 + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 48);
  if (!v9)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_5();
LABEL_35:
    v5 = 0;
    v14 = -6705;
    goto LABEL_22;
  }

  v10 = *(v6 + 24);
  if (!v10)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_4();
    goto LABEL_35;
  }

  if (gAPAccTransportClientEndpointInitOnce != -1)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (!Instance)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_3();
LABEL_38:
    v14 = -6728;
    goto LABEL_22;
  }

  *(Instance + 80) = 0;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v12 = dispatch_queue_create(v9, 0);
  v5[3] = v12;
  if (!v12)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_2(v5);
    v5 = 0;
    goto LABEL_38;
  }

  v5[4] = CFStringCreateWithCString(v2, v9, 0x8000100u);
  v5[5] = CFRetain(v10);
  if (v8)
  {
    v13 = CFRetain(v8);
  }

  else
  {
    v13 = 0;
  }

  v5[7] = v13;
  if (gLogCategory_APAccTransportClientEndpoint <= 50 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14 = 0;
LABEL_22:
  *(*(*(a1 + 32) + 8) + 24) = v14;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    CFDictionaryAddValue(*(*(a1 + 40) + 32), v3, v5);
LABEL_24:
    **(a1 + 56) = v5;
    v5 = 0;
    if (!v3)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_6();
  if (v3)
  {
LABEL_25:
    CFRelease(v3);
  }

LABEL_26:
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t APAccTransportClientConnectionInvalidateEndpoint(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a1 && a2)
  {
    v2 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAccTransportClientConnectionInvalidateEndpoint_block_invoke;
    block[3] = &unk_27849BEC0;
    block[4] = &v6;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v2, block);
    v3 = *(v7 + 6);
  }

  else
  {
    APSLogErrorAt();
    v3 = 4294960591;
    *(v7 + 6) = -6705;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APAccTransportClientConnectionInvalidateEndpoint_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 32);
  if (v2)
  {
    if (CFDictionaryContainsValue(v2, *(a1 + 48)))
    {
      v3 = *(a1 + 48);
      v4 = *(v3 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __accTransportClientEndpointInvalidate_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v3;
      dispatch_sync(v4, block);
      CFDictionaryRemoveValue(*(*(a1 + 40) + 32), *(*(a1 + 48) + 32));
      if (!CFDictionaryGetCount(*(*(a1 + 40) + 32)))
      {
        v5 = *(*(a1 + 40) + 32);
        if (v5)
        {
          CFRelease(v5);
          *(*(a1 + 40) + 32) = 0;
        }
      }
    }

    else
    {
      __APAccTransportClientConnectionInvalidateEndpoint_block_invoke_cold_1();
    }
  }

  else
  {
    __APAccTransportClientConnectionInvalidateEndpoint_block_invoke_cold_2();
  }
}

uint64_t APAccTransportClientEndpointGetTypeID()
{
  if (gAPAccTransportClientEndpointInitOnce != -1)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_1();
  }

  return gAPAccTransportClientEndpointTypeID;
}

uint64_t _APAccTransportClientEndpointGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPAccTransportClientEndpointTypeID = result;
  return result;
}

uint64_t APAccTransportClientEndpointActivate(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  if (a4)
  {
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAccTransportClientEndpointActivate_block_invoke;
    block[3] = &unk_27849F778;
    block[4] = a4;
    block[5] = &v12;
    v8 = a2;
    v9 = a3;
    block[6] = v10;
    block[7] = a1;
    dispatch_sync(v4, block);
    v5 = *(v13 + 6);
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294960591;
    *(v13 + 6) = -6705;
  }

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void sub_222132458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __APAccTransportClientEndpointActivate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 16))
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_1();
LABEL_23:
    v19 = -6709;
LABEL_30:
    *(*(*(a1 + 40) + 8) + 24) = v19;
    goto LABEL_18;
  }

  if (*(v2 + 48))
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_2();
    goto LABEL_23;
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = *(a1 + 56);
  *(v4 + 64) = v3;
  if (!v3)
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_8();
    v19 = -6728;
    goto LABEL_30;
  }

  v5 = *(v4 + 40);
  v6 = *(a1 + 64);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __APAccTransportClientEndpointActivate_block_invoke_2;
  v20[3] = &unk_27849F750;
  v20[4] = v4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v7 = getacc_transportClient_createEndpointSymbolLoc_ptr;
  v29 = getacc_transportClient_createEndpointSymbolLoc_ptr;
  if (!getacc_transportClient_createEndpointSymbolLoc_ptr)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getacc_transportClient_createEndpointSymbolLoc_block_invoke;
    v24 = &unk_27849ACC8;
    v25 = &v26;
    v8 = CoreAccessoriesLibrary();
    v27[3] = dlsym(v8, "acc_transportClient_createEndpoint");
    getacc_transportClient_createEndpointSymbolLoc_ptr = *(v25[1] + 24);
    v7 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v7)
  {
    __APAccTransportClientEndpointActivate_block_invoke_cold_7();
  }

  result = (v7)(v5, 4, v6, 0, v20, 1);
  *(*(a1 + 56) + 48) = result;
  v10 = *(a1 + 56);
  if (!*(v10 + 48))
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_6();
    v19 = -6700;
    goto LABEL_30;
  }

  if (!*(a1 + 68))
  {
    goto LABEL_18;
  }

  if (gLogCategory_APAccTransportClientEndpoint <= 30)
  {
    if (gLogCategory_APAccTransportClientEndpoint != -1 || (v11 = _LogCategory_Initialize(), v10 = *(a1 + 56), v11))
    {
      LogPrintF();
      v10 = *(a1 + 56);
    }
  }

  if (!*(v10 + 56))
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_5();
    v19 = -6736;
    goto LABEL_30;
  }

  v12 = getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch();
  v13 = *(a1 + 56);
  v15 = *(v13 + 48);
  v14 = *(v13 + 56);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v16 = getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_ptr;
  v29 = getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_ptr;
  if (!getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_ptr)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_block_invoke;
    v24 = &unk_27849ACC8;
    v25 = &v26;
    v17 = CoreAccessoriesLibrary();
    v18 = dlsym(v17, "acc_transportClient_setPropertyForEndpointWithUUID");
    *(v25[1] + 24) = v18;
    getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_ptr = *(v25[1] + 24);
    v16 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v16)
  {
    __APAccTransportClientEndpointActivate_block_invoke_cold_4();
  }

  result = v16(v12, v14, v15);
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_3();
    v19 = -6762;
    goto LABEL_30;
  }

LABEL_18:
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    return accTransportClientEndpointDestroyEndpoint(*(a1 + 56));
  }

  return result;
}

void sub_2221327CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientEndpointActivate_block_invoke_2(uint64_t a1, const void *a2, const void *a3, const __CFData *a4)
{
  v7 = *(a1 + 32);
  if (gLogCategory_APAccTransportClientEndpoint <= 30 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
  {
    __APAccTransportClientEndpointActivate_block_invoke_2_cold_1(a4);
  }

  CFRetain(v7);
  CFRetain(a2);
  CFRetain(a3);
  CFRetain(a4);
  v8 = v7[3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __APAccTransportClientEndpointActivate_block_invoke_3;
  v9[3] = &__block_descriptor_64_e5_v8__0l;
  v9[4] = v7;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;
  dispatch_async(v8, v9);
}

void __APAccTransportClientEndpointActivate_block_invoke_3(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16) && FigCFEqual() && FigCFEqual())
  {
    (*(*(*(a1 + 32) + 64) + 16))();
  }

  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t accTransportClientEndpointDestroyEndpoint(uint64_t a1)
{
  if (*(a1 + 16))
  {
    accTransportClientEndpointDestroyEndpoint_cold_1();
    return 4294960587;
  }

  else
  {
    if (*(a1 + 72))
    {
      soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler(0);
      v2 = *(a1 + 72);
      if (v2)
      {
        _Block_release(v2);
        *(a1 + 72) = 0;
      }
    }

    result = *(a1 + 48);
    if (result)
    {
      if (*(a1 + 80))
      {
        soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler(result, 0);
        v4 = *(a1 + 80);
        if (v4)
        {
          _Block_release(v4);
          *(a1 + 80) = 0;
        }
      }

      v5 = *(a1 + 48);
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v6 = getacc_transportClient_destroyEndpointSymbolLoc_ptr;
      v15 = getacc_transportClient_destroyEndpointSymbolLoc_ptr;
      if (!getacc_transportClient_destroyEndpointSymbolLoc_ptr)
      {
        v7 = CoreAccessoriesLibrary();
        v13[3] = dlsym(v7, "acc_transportClient_destroyEndpoint");
        getacc_transportClient_destroyEndpointSymbolLoc_ptr = v13[3];
        v6 = v13[3];
      }

      _Block_object_dispose(&v12, 8);
      if (!v6)
      {
        accTransportClientEndpointDestroyEndpoint_cold_3();
      }

      v8 = v6(v5);
      if (v8)
      {
        v9 = 50;
      }

      else
      {
        v9 = 90;
      }

      if (v9 >= gLogCategory_APAccTransportClientEndpoint && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v10 = *(a1 + 48);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 48) = 0;
      }

      v11 = *(a1 + 64);
      if (v11)
      {
        _Block_release(v11);
        *(a1 + 64) = 0;
      }

      if (v8)
      {
        return 0;
      }

      else
      {
        accTransportClientEndpointDestroyEndpoint_cold_2();
        return 4294960534;
      }
    }
  }

  return result;
}

void sub_222132B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAccTransportClientEndpointSetAuthStatusHandler(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a2)
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke;
    block[3] = &unk_27849F7C8;
    block[5] = &v6;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(v2, block);
    v3 = *(v7 + 6);
  }

  else
  {
    APSLogErrorAt();
    v3 = 4294960591;
    *(v7 + 6) = -6705;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 16))
  {
    __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_cold_1(a1);
  }

  else if (*(v2 + 48))
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      _Block_release(v3);
      *(*(a1 + 48) + 72) = 0;
    }

    v4 = _Block_copy(*(a1 + 32));
    v5 = *(a1 + 48);
    *(v5 + 72) = v4;
    if (v4)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_2;
      v7[3] = &unk_27849F7A0;
      v7[4] = v5;
      soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler(v7);
    }

    else
    {
      __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_cold_2(a1);
    }
  }

  else
  {
    __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_cold_3(a1);
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler(0);
    v6 = *(*(a1 + 48) + 72);
    if (v6)
    {
      _Block_release(v6);
      *(*(a1 + 48) + 72) = 0;
    }
  }
}

uint64_t soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_ptr;
  v8 = getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_ptr;
  if (!getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_ptr)
  {
    v3 = CoreAccessoriesLibrary();
    v6[3] = dlsym(v3, "acc_transportClient_setConnectionAuthStatusDidChangeHandler");
    getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler_cold_1();
  }

  return v2(a1);
}

void sub_222132E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_2(uint64_t a1, const void *a2, char a3)
{
  v5 = *(a1 + 32);
  if (gLogCategory_APAccTransportClientEndpoint <= 50 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(v5);
  CFRetain(a2);
  v6 = v5[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_3;
  block[3] = &__block_descriptor_49_e5_v8__0l;
  block[4] = v5;
  block[5] = a2;
  v8 = a3;
  dispatch_async(v6, block);
}

void __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_3(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16) && FigCFEqual())
  {
    (*(*(*(a1 + 32) + 72) + 16))();
  }

  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t APAccTransportClientEndpointForwardData(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAccTransportClientEndpointForwardData_block_invoke;
  block[3] = &unk_27849BEC0;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APAccTransportClientEndpointForwardData_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 16))
  {
    result = __APAccTransportClientEndpointForwardData_block_invoke_cold_1();
LABEL_14:
    v9 = -6709;
LABEL_17:
    *(*(*(a1 + 32) + 8) + 24) = v9;
    return result;
  }

  if (!*(v2 + 48))
  {
    result = __APAccTransportClientEndpointForwardData_block_invoke_cold_4();
    goto LABEL_14;
  }

  if (gLogCategory_APAccTransportClientEndpoint <= 30)
  {
    if (gLogCategory_APAccTransportClientEndpoint != -1 || (v3 = _LogCategory_Initialize(), v2 = *(a1 + 40), v3))
    {
      CFDataGetLength(*(a1 + 48));
      LogPrintF();
      v2 = *(a1 + 40);
    }
  }

  v4 = *(a1 + 48);
  v5 = *(v2 + 48);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getacc_transportClient_processIncomingDataSymbolLoc_ptr;
  v13 = getacc_transportClient_processIncomingDataSymbolLoc_ptr;
  if (!getacc_transportClient_processIncomingDataSymbolLoc_ptr)
  {
    v7 = CoreAccessoriesLibrary();
    v11[3] = dlsym(v7, "acc_transportClient_processIncomingData");
    getacc_transportClient_processIncomingDataSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    __APAccTransportClientEndpointForwardData_block_invoke_cold_3();
  }

  result = v6(v4, v5);
  if ((result & 1) == 0)
  {
    result = __APAccTransportClientEndpointForwardData_block_invoke_cold_2();
    v9 = -6700;
    goto LABEL_17;
  }

  return result;
}

void sub_222133258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAccTransportClientEndpointDeactivate(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APAccTransportClientEndpointDeactivate_block_invoke;
  v4[3] = &unk_27849F700;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __APAccTransportClientEndpointDeactivate_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = accTransportClientEndpointDestroyEndpoint(*(a1 + 40));
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __APAccTransportClientEndpointDeactivate_block_invoke_cold_1();
  }

  return result;
}

uint64_t APAccTransportClientEndpointSecureTunnelDataSend(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke;
  block[3] = &unk_27849BEC0;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  v1 = *(a1 + 40);
  if (*(v1 + 16))
  {
    __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_1(a1);
  }

  else
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = (a1 + 48);
      v5 = *(a1 + 48);
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v6 = getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_ptr;
      v11 = getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_ptr;
      if (!getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_ptr)
      {
        v7 = CoreAccessoriesLibrary();
        v9[3] = dlsym(v7, "acc_transportClient_endpointSecureTunnelDataSend");
        getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_ptr = v9[3];
        v6 = v9[3];
      }

      _Block_object_dispose(&v8, 8);
      if (!v6)
      {
        __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_3();
      }

      v6(v3, 1, v5);
      if (gLogCategory_APAccTransportClientEndpoint <= 30 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
      {
        __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_2(v2, v4);
      }
    }

    else
    {
      __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_4(a1);
    }
  }
}

void sub_222133588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a2)
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke;
    block[3] = &unk_27849F7C8;
    block[5] = &v6;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(v2, block);
    v3 = *(v7 + 6);
  }

  else
  {
    APSLogErrorAt();
    v3 = 4294960591;
    *(v7 + 6) = -6705;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 48))
  {
    if (*(v2 + 80))
    {
      __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_cold_1(a1);
    }

    else
    {
      v3 = _Block_copy(*(a1 + 32));
      v4 = *(a1 + 48);
      *(v4 + 80) = v3;
      if (v3)
      {
        v5 = *(v4 + 48);
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_2;
        v6[3] = &unk_27849F7F0;
        v6[4] = v4;
        soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler(v5, v6);
      }

      else
      {
        __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_cold_2(a1);
      }
    }
  }

  else
  {
    __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_cold_3(a1);
  }
}

uint64_t soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_ptr;
  v10 = getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_ptr;
  if (!getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_ptr)
  {
    v5 = CoreAccessoriesLibrary();
    v8[3] = dlsym(v5, "acc_transportClient_setEndpointSecureTunnelDataReceiveHandler");
    getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler_cold_1();
  }

  return v4(a1, a2);
}

void sub_222133850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_2(uint64_t a1, const void *a2, const __CFData *a3)
{
  v5 = *(a1 + 32);
  if (gLogCategory_APAccTransportClientEndpoint <= 30 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
  {
    __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_2_cold_1(a3);
  }

  CFRetain(v5);
  CFRetain(a2);
  CFRetain(a3);
  v6 = v5[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_3;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = v5;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v6, block);
}

void __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_3(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16) && FigCFEqual())
  {
    (*(*(*(a1 + 32) + 80) + 16))();
  }

  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 48);

  CFRelease(v2);
}

void _APAccTransportClientConnectionFinalize(void *a1)
{
  if (gLogCategory_APAccTransportClientConnection <= 50 && (gLogCategory_APAccTransportClientConnection != -1 || _LogCategory_Initialize()))
  {
    _APAccTransportClientConnectionFinalize_cold_1();
  }

  if (a1[3])
  {
    if (gLogCategory_APAccTransportClientConnection <= 90 && (gLogCategory_APAccTransportClientConnection != -1 || _LogCategory_Initialize()))
    {
      _APAccTransportClientConnectionFinalize_cold_2();
    }

    APAccTransportClientConnectionClose(a1);
  }

  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_release(v4);
    a1[2] = 0;
  }
}

void *__getacc_transportClient_serverDisconnectedHandlerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_serverDisconnectedHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_serverDisconnectedHandlerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreAccessoriesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreAccessoriesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreAccessoriesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27849F810;
    v4 = 0;
    CoreAccessoriesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreAccessoriesLibraryCore_frameworkLibrary;
  if (!CoreAccessoriesLibraryCore_frameworkLibrary)
  {
    CoreAccessoriesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreAccessoriesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreAccessoriesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getacc_transportClient_createConnectionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_createConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_createConnectionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_destroyConnectionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_destroyConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_destroyConnectionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _APAccTransportClientEndpointFinalize(void *a1)
{
  if (gLogCategory_APAccTransportClientEndpoint <= 50 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
  {
    _APAccTransportClientEndpointFinalize_cold_1();
  }

  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {

    CFRelease(v5);
  }
}

void *__getacc_transportClient_createEndpointSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_createEndpoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_createEndpointSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_setPropertyForEndpointWithUUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_setConnectionAuthStatusDidChangeHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_processIncomingDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_processIncomingData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_processIncomingDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_destroyEndpointSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_destroyEndpoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_destroyEndpointSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_copyPropertiesForEndpointWithUUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __accTransportClientEndpointInvalidate_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!*(result + 16))
  {
    result = accTransportClientEndpointDestroyEndpoint(result);
    *(*(a1 + 32) + 16) = 1;
  }

  return result;
}

void *__getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_endpointSecureTunnelDataSend");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_setEndpointSecureTunnelDataReceiveHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APPairingClientLegacyCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, void *a5)
{
  if (a4)
  {
    APPairingClientGetClassID();
    v9 = CMDerivedObjectCreate();
    if (v9)
    {
      v14 = v9;
      APPairingClientLegacyCreate_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a2)
      {
        v11 = CFRetain(a2);
      }

      else
      {
        v11 = 0;
      }

      DerivedStorage[1] = v11;
      if (a3)
      {
        v12 = CFRetain(a3);
      }

      else
      {
        v12 = 0;
      }

      DerivedStorage[2] = v12;
      DerivedStorage[3] = CFRetain(a4);
      v13 = gQblcfSzZBQsYCCV();
      if (v13)
      {
        v14 = v13;
        APPairingClientLegacyCreate_cold_2();
      }

      else
      {
        if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
        {
          APPairingClientLegacyCreate_cold_3();
        }

        v14 = 0;
        *a5 = 0;
      }
    }
  }

  else
  {
    APPairingClientLegacyCreate_cold_4();
    return 4294895525;
  }

  return v14;
}

void legacyPairing_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
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

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }
}

__CFString *legacyPairing_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APPairingClientLegacy '%@'>", *DerivedStorage);
  return Mutable;
}

uint64_t legacyPairing_DeriveKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CMBaseObjectGetDerivedStorage();
  if (a6 == 16)
  {
    v7 = PCFdAVst();
    if (v7)
    {
      legacyPairing_DeriveKey_cold_2();
    }
  }

  else
  {
    legacyPairing_DeriveKey_cold_1();
    return 4294895525;
  }

  return v7;
}

uint64_t legacyPairing_PerformSetup(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, CFDataRef *a8)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    memoryBlock = 0;
    dataPointerOut = 0;
    cf = 0;
    dataLength = 0;
    LOBYTE(v40) = 0;
    *bytes = 0u;
    v48 = 0u;
    v41 = 0;
    CMBaseObjectGetDerivedStorage();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
    {
      legacyPairing_PerformSetup_cold_1();
      if (a2)
      {
LABEL_6:
        XoN3GgjZNCvkN1T8I3();
        v12 = rJPl3sdBfc0E3yB();
        if (v12)
        {
          v17 = v12;
          legacyPairing_PerformSetup_cold_2();
        }

        else
        {
          v13 = GvMGlTNs();
          if (v13)
          {
            v17 = v13;
            legacyPairing_PerformSetup_cold_3();
          }

          else
          {
            dataPointerOut = 0;
            dataLength = 0;
            LOBYTE(v40) = 0;
            v14 = *MEMORY[0x277CBECE8];
            v15 = *MEMORY[0x277CBECF0];
            while (1)
            {
              v16 = SrtySZG0();
              v17 = v16;
              if ((v16 + 71775) < 3)
              {
                break;
              }

              if (v16)
              {
                goto LABEL_68;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              v18 = CMBlockBufferCreateWithMemoryBlock(v14, memoryBlock, dataLength, v15, 0, 0, dataLength, 0, &cf);
              if (v18)
              {
                v17 = v18;
                legacyPairing_PerformSetup_cold_6();
                goto LABEL_87;
              }

              memoryBlock = 0;
              if (v41)
              {
                CFRelease(v41);
                v41 = 0;
              }

              v19 = *(DerivedStorage + 24);
              v20 = cf;
              v21 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (!v21)
              {
                v17 = 4294954514;
                goto LABEL_87;
              }

              v22 = v21(v19, 1886613612, v20, &v41);
              if (v22 == 200470)
              {
LABEL_68:
                v17 = 200401;
                goto LABEL_87;
              }

              v17 = v22;
              if (v22)
              {
                goto LABEL_87;
              }

              dataLength = 0;
              dataPointerOut = 0;
              if (v41)
              {
                CMBlockBufferGetDataPointer(v41, 0, &dataLength, 0, &dataPointerOut);
              }
            }

            if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            APSLogErrorAt();
          }
        }

LABEL_87:
        if (v41)
        {
          CFRelease(v41);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (memoryBlock)
        {
          free(memoryBlock);
          memoryBlock = 0;
        }

        if (!v17 || gLogCategory_APPairingClientLegacy > 50 || gLogCategory_APPairingClientLegacy == -1 && !_LogCategory_Initialize())
        {
          return v17;
        }

LABEL_96:
        LogPrintF();
        return v17;
      }
    }

    else if (a2)
    {
      goto LABEL_6;
    }

    v35 = *(DerivedStorage + 24);
    v36 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v36)
    {
      v37 = v36(v35, 1886417780, 0, 0);
      if (v37)
      {
        v17 = v37;
      }

      else
      {
        v17 = 200401;
      }
    }

    else
    {
      v17 = 4294954514;
    }

    goto LABEL_87;
  }

  memoryBlock = 0;
  dataPointerOut = 0;
  v44 = 0;
  cf = 0;
  dataLength = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  *bytes = 0u;
  v48 = 0u;
  CMBaseObjectGetDerivedStorage();
  v23 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
  {
    legacyPairing_PerformSetup_cold_7();
  }

  XoN3GgjZNCvkN1T8I3();
  v24 = *MEMORY[0x277CBECE8];
  v25 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, 0x60uLL, *MEMORY[0x277CBECF0], 0, 0, 0x60uLL, 1u, &dataLength);
  if (v25)
  {
    v17 = v25;
    legacyPairing_PerformSetup_cold_8();
    goto LABEL_53;
  }

  DataPointer = CMBlockBufferGetDataPointer(dataLength, 0, &v41, 0, &cf);
  if (DataPointer)
  {
    v17 = DataPointer;
    legacyPairing_PerformSetup_cold_9();
    goto LABEL_53;
  }

  memoryBlock = 0;
  dataPointerOut = 0;
  v44 = 0;
  v27 = h4BvW7X();
  if (v27)
  {
LABEL_38:
    v17 = v27;
LABEL_53:
    v32 = 0;
    goto LABEL_54;
  }

  while (!v44)
  {
    if (v40)
    {
      CFRelease(v40);
      v40 = 0;
    }

    v28 = CMBlockBufferCreateWithBufferReference(v24, dataLength, 0, memoryBlock, 0, &v40);
    if (v28)
    {
      v17 = v28;
      legacyPairing_PerformSetup_cold_12();
      goto LABEL_53;
    }

    if (v39)
    {
      CFRelease(v39);
      v39 = 0;
    }

    v29 = *(v23 + 24);
    v30 = v40;
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v31)
    {
      v32 = 0;
      v17 = 4294954514;
      goto LABEL_54;
    }

    v27 = v31(v29, 1886614892, v30, &v39);
    if (!v27)
    {
      memoryBlock = 0;
      dataPointerOut = 0;
      if (v39)
      {
        CMBlockBufferGetDataPointer(v39, 0, &memoryBlock, 0, &dataPointerOut);
      }

      v27 = h4BvW7X();
      if (!v27)
      {
        continue;
      }
    }

    goto LABEL_38;
  }

  if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
  {
    legacyPairing_PerformSetup_cold_10();
  }

  aMoe8v8GNE9T();
  v33 = CFDataCreate(v24, bytes, 32);
  v32 = v33;
  if (v33)
  {
    v34 = *(v23 + 16);
    *(v23 + 16) = v33;
    CFRetain(v33);
    if (v34)
    {
      CFRelease(v34);
    }

    if (a7)
    {
      *a7 = 0;
    }

    v17 = 0;
    if (a8)
    {
      *a8 = v32;
      goto LABEL_53;
    }
  }

  else
  {
    v17 = 4294895526;
    legacyPairing_PerformSetup_cold_11();
  }

LABEL_54:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (dataLength)
  {
    CFRelease(dataLength);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v17 && gLogCategory_APPairingClientLegacy <= 60 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_96;
  }

  return v17;
}

uint64_t APCarPlayXPCUtils_UnpackASBD(void *a1, const char *a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    v7 = 4294960591;
LABEL_9:
    APSLogErrorAt();
    return v7;
  }

  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    v7 = 4294960569;
    goto LABEL_9;
  }

  if (xpc_data_get_bytes(value, a4, 0, 40 * a3) != 40 * a3)
  {
    v7 = 4294960550;
    goto LABEL_9;
  }

  return 0;
}

uint64_t APCarPlayAVVCServerGetTypeID()
{
  if (gAPCarPlayAVVCServerInitOnce != -1)
  {
    APCarPlayAVVCServerGetTypeID_cold_1();
  }

  return gAPCarPlayAVVCServerTypeID;
}

uint64_t _APCarPlayAVVCServerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPCarPlayAVVCServerTypeID = result;
  return result;
}

uint64_t APCarPlayAVVCServerRegisterEndpoint(const void *a1)
{
  v1 = gCarPlayAVVCServer;
  if (gCarPlayAVVCServer)
  {
    v3 = *(gCarPlayAVVCServer + 24);
    if (v3)
    {
      APCarPlayAVVCServerRemoveEndpoint(v3);
      v4 = *(v1 + 24);
    }

    else
    {
      v4 = 0;
    }

    *(v1 + 24) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (gLogCategory_APCarPlayAVVCServer <= 30 && (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize()))
    {
      APCarPlayAVVCServerRegisterEndpoint_cold_1();
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CC0D38], 0, 0, 1u);
    return 0;
  }

  else
  {
    APCarPlayAVVCServerRegisterEndpoint_cold_2();
    return 4294960578;
  }
}

uint64_t APCarPlayAVVCServerRemoveEndpoint(const void *a1)
{
  v1 = gCarPlayAVVCServer;
  if (gCarPlayAVVCServer)
  {
    v3 = *(gCarPlayAVVCServer + 24);
    if (v3 == a1)
    {
      if (gLogCategory_APCarPlayAVVCServer <= 30)
      {
        if (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize())
        {
          APCarPlayAVVCServerRemoveEndpoint_cold_1();
        }

        v3 = *(v1 + 24);
      }

      if (v3)
      {
        CFRelease(v3);
        *(v1 + 24) = 0;
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CC0D40], 0, 0, 1u);
    return 0;
  }

  else
  {
    APCarPlayAVVCServerRemoveEndpoint_cold_2();
    return 4294960578;
  }
}

uint64_t APCarPlayAVVCServerRegisterStream(const void *a1)
{
  v1 = gCarPlayAVVCServer;
  if (!gCarPlayAVVCServer)
  {
    APCarPlayAVVCServerRegisterStream_cold_2();
    return 4294960578;
  }

  v3 = *(gCarPlayAVVCServer + 32);
  if (v3)
  {
    APCarPlayAVVCServerRemoveStream(v3);
    v4 = *(v1 + 32);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + 32) = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (gLogCategory_APCarPlayAVVCServer > 30)
  {
    return 0;
  }

  if (gLogCategory_APCarPlayAVVCServer != -1 || (result = _LogCategory_Initialize(), result))
  {
    APCarPlayAVVCServerRegisterStream_cold_1();
    return 0;
  }

  return result;
}

uint64_t APCarPlayAVVCServerRemoveStream(uint64_t a1)
{
  v1 = gCarPlayAVVCServer;
  if (gCarPlayAVVCServer)
  {
    result = *(gCarPlayAVVCServer + 32);
    if (result == a1)
    {
      if (gLogCategory_APCarPlayAVVCServer <= 30)
      {
        if (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize())
        {
          APCarPlayAVVCServerRemoveStream_cold_1();
        }

        result = *(v1 + 32);
      }

      if (result)
      {
        CFRelease(result);
        result = 0;
        *(v1 + 32) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APCarPlayAVVCServerRemoveStream_cold_2();
    return 4294960578;
  }

  return result;
}

void APCarPlayAVVCServerStatesIncompatibleWithAuxIn()
{
  if (gLogCategory_APCarPlayAVVCServer <= 50 && (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAVVCServerStatesIncompatibleWithAuxIn_cold_1();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CarPlayAVVCEndpointStateIncompatibleWithJarvis", 0, 0, 1u);
}

uint64_t APCarPlayAVVCServerInit()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APCarPlayAVVCServerInit_block_invoke;
  block[3] = &unk_27849F838;
  block[4] = &v5;
  if (gCarPlayInputServerOnce != -1)
  {
    dispatch_once(&gCarPlayInputServerOnce, block);
  }

  v0 = v6;
  if (*(v6 + 6))
  {
    if (gLogCategory_APCarPlayAVVCServer <= 90)
    {
      if (gLogCategory_APCarPlayAVVCServer != -1 || (v1 = _LogCategory_Initialize(), v0 = v6, v1))
      {
        LogPrintF();
        v0 = v6;
      }
    }
  }

  v2 = *(v0 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __APCarPlayAVVCServerInit_block_invoke(uint64_t a1)
{
  if (gAPCarPlayAVVCServerInitOnce != -1)
  {
    APCarPlayAVVCServerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return __APCarPlayAVVCServerInit_block_invoke_cold_5(a1);
  }

  Instance[2] = 0;
  v3 = Instance + 2;
  Instance[3] = 0;
  Instance[4] = 0;
  gCarPlayAVVCServer = Instance;
  v4 = FigXPCServerStart();
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = v4;
  result = *(*(*v5 + 8) + 24);
  if (result)
  {
    return __APCarPlayAVVCServerInit_block_invoke_cold_2();
  }

  if (!*v3)
  {
    return __APCarPlayAVVCServerInit_block_invoke_cold_4(v5);
  }

  if (gLogCategory_APCarPlayAVVCServer <= 50)
  {
    if (gLogCategory_APCarPlayAVVCServer != -1)
    {
      return __APCarPlayAVVCServerInit_block_invoke_cold_3();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __APCarPlayAVVCServerInit_block_invoke_cold_3();
    }
  }

  return result;
}

uint64_t APCarPlayAVVCServer_MessageHandler(uint64_t a1, void *a2)
{
  v3 = CFRetain(gCarPlayAVVCServer);
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v7 = OpCode;
    APCarPlayAVVCServer_MessageHandler_cold_1();
    goto LABEL_5;
  }

  if (xpc_dictionary_get_uint64(a2, *MEMORY[0x277CC0990]))
  {
    v5 = FigXPCServerLookupAndRetainAssociatedObject();
    if (v5)
    {
      v7 = v5;
      APCarPlayAVVCServer_MessageHandler_cold_2();
      goto LABEL_5;
    }

    APCarPlayAVVCServer_MessageHandler_cold_20();
  }

  else
  {
    APCarPlayAVVCServer_MessageHandler_cold_21();
  }

  v7 = 0;
LABEL_5:
  if (v3)
  {
    CFRelease(v3);
  }

  return v7;
}

uint64_t APCarPlayAVVCServer_VerifyConnectionCallback()
{
  has_entitlement = xpc_connection_has_entitlement();
  if ((has_entitlement & 1) == 0 && gLogCategory_APCarPlayAVVCServer <= 90 && (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAVVCServer_VerifyConnectionCallback_cold_1();
  }

  return has_entitlement;
}

uint64_t StreamServer_StreamDestructor()
{
  if (gLogCategory_APCarPlayAVVCServer <= 30 && (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize()))
  {
    StreamServer_StreamDestructor_cold_1();
  }

  v0 = APSGetFBOPropertyInt64();
  result = 0;
  if (v0)
  {
    result = FigEndpointStreamSuspendSync();
    if (result)
    {
      return StreamServer_StreamDestructor_cold_3();
    }
  }

  return result;
}

void StreamServer_SinkDestructor(const void *a1)
{
  if (gLogCategory_APCarPlayAVVCServer <= 30 && (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize()))
  {
    StreamServer_SinkDestructor_cold_1();
  }

  v2 = *(CMBaseObjectGetVTable() + 16);
  if (*v2 >= 2uLL)
  {
    v3 = v2[4];
    if (v3)
    {
      v3(a1);
    }
  }

  CFRelease(a1);
}

uint64_t APStarkModeCreateDictionaryRepresentation(uint64_t a1, __CFDictionary **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v4)
    {
      v5 = v4;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      v6 = CFArrayEnsureCreatedAndAppend();
      CFRelease(v5);
      if (v6)
      {
        APStarkModeCreateDictionaryRepresentation_cold_1();
      }

      else
      {
        v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v7)
        {
          v8 = v7;
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          v6 = CFArrayEnsureCreatedAndAppend();
          CFRelease(v8);
          if (v6)
          {
            APStarkModeCreateDictionaryRepresentation_cold_2();
          }

          else
          {
            v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v9)
            {
              v10 = v9;
              CFDictionarySetInt64();
              CFDictionarySetInt64();
              v6 = CFArrayEnsureCreatedAndAppend();
              CFRelease(v10);
              if (v6)
              {
                APStarkModeCreateDictionaryRepresentation_cold_3();
              }

              else
              {
                v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v11)
                {
                  v12 = v11;
                  CFDictionarySetInt64();
                  CFDictionarySetInt64();
                  CFDictionarySetInt64();
                  v6 = CFArrayEnsureCreatedAndAppend();
                  CFRelease(v12);
                  if (v6)
                  {
                    APStarkModeCreateDictionaryRepresentation_cold_4();
                  }

                  else
                  {
                    v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (v13)
                    {
                      v14 = v13;
                      CFDictionarySetInt64();
                      CFDictionarySetInt64();
                      CFDictionarySetInt64();
                      v6 = CFArrayEnsureCreatedAndAppend();
                      CFRelease(v14);
                      if (v6)
                      {
                        APStarkModeCreateDictionaryRepresentation_cold_5();
                      }

                      else
                      {
                        CFDictionarySetValue(Mutable, @"appStates", 0);
                        CFDictionarySetValue(Mutable, @"resources", 0);
                        *a2 = Mutable;
                        Mutable = 0;
                      }
                    }

                    else
                    {
                      v6 = 4294895246;
                      APStarkModeCreateDictionaryRepresentation_cold_6();
                    }
                  }
                }

                else
                {
                  v6 = 4294895246;
                  APStarkModeCreateDictionaryRepresentation_cold_7();
                }
              }
            }

            else
            {
              v6 = 4294895246;
              APStarkModeCreateDictionaryRepresentation_cold_8();
            }
          }
        }

        else
        {
          v6 = 4294895246;
          APStarkModeCreateDictionaryRepresentation_cold_9();
        }
      }
    }

    else
    {
      v6 = 4294895246;
      APStarkModeCreateDictionaryRepresentation_cold_10();
    }
  }

  else
  {
    v6 = 4294895246;
    APStarkModeCreateDictionaryRepresentation_cold_11();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

const __CFArray *APStarkModeInitialOwnerRequestMakeFromDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a4 + 8) = 0;
  *a4 = 0;
  CFArrayGetTypeID();
  result = CFDictionaryGetTypedValue();
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; v8 != i; ++i)
      {
        CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
        if (gLogCategory_APReceiverNTPClient <= 40 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
        {
          APStarkModeInitialOwnerRequestMakeFromDictionary_cold_1();
          if (TypedValueAtIndex)
          {
LABEL_8:
            Int64 = CFDictionaryGetInt64();
            if (Int64 == 2)
            {
              v15 = CFDictionaryGetInt64();
              v16 = v15 == 2;
              if (v15 == 1)
              {
                v16 = 2;
              }

              *a4 = v16;
              if (v15 == 1)
              {
                v17 = 100;
                *(a4 + 4) = 100;
              }

              else
              {
                v19 = CFDictionaryGetInt64();
                if (v19 != 100 && v19 != 1000 && v19 != 500)
                {
                  v19 = 100;
                }

                *(a4 + 4) = v19;
                v17 = CFDictionaryGetInt64();
                if (v17 != 100 && v17 != 1000 && v17 != 500)
                {
                  v17 = 100;
                }
              }

              *(a4 + 8) = v17;
              if (gLogCategory_APReceiverNTPClient <= 40 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
              {
                APStarkModeInitialOwnerRequestMakeFromDictionary_cold_2();
              }
            }

            else if (Int64 == 1)
            {
              v12 = CFDictionaryGetInt64();
              v13 = v12 == 2;
              if (v12 == 1)
              {
                v13 = 2;
              }

              *a3 = v13;
              if (v12 == 1)
              {
                v14 = 100;
                *(a3 + 4) = 100;
              }

              else
              {
                v18 = CFDictionaryGetInt64();
                if (v18 != 100 && v18 != 1000 && v18 != 500)
                {
                  v18 = 100;
                }

                *(a3 + 4) = v18;
                v14 = CFDictionaryGetInt64();
                if (v14 != 100 && v14 != 1000 && v14 != 500)
                {
                  v14 = 100;
                }
              }

              *(a3 + 8) = v14;
              if (gLogCategory_APReceiverNTPClient <= 40 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
              {
                APStarkModeInitialOwnerRequestMakeFromDictionary_cold_3();
              }
            }
          }
        }

        else if (TypedValueAtIndex)
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t APStarkModeChangeRequestMakeFromDictionary(uint64_t a1, int a2, uint64_t a3)
{
  v23 = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *a3 = 0x100000001;
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    Count = CFArrayGetCount(TypedValue);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; v7 != i; ++i)
      {
        CFDictionaryGetTypeID();
        if (CFArrayGetTypedValueAtIndex())
        {
          Int64 = CFDictionaryGetInt64();
          switch(Int64)
          {
            case 1:
              if (a2 && *(a3 + 56))
              {
LABEL_50:
                v22 = -72052;
                goto LABEL_51;
              }

              v12 = CFDictionaryGetInt64();
              v13 = -1;
              switch(v12)
              {
                case -1:
                  goto LABEL_32;
                case 1:
                  v13 = 10;
LABEL_32:
                  *(a3 + 56) = v13;
                  goto LABEL_33;
                case 2:
                  v14 = 11;
                  break;
                default:
                  v14 = 0;
                  break;
              }

              *(a3 + 56) = v14;
              if (a2 && v12 != 2)
              {
                v22 = -72051;
LABEL_51:
                APSLogErrorAt();
                v23 = v22;
                APSLogErrorAt();
                goto LABEL_44;
              }

              if (v12 != 2)
              {
                v13 = -1;
                goto LABEL_32;
              }

              break;
            case 3:
              if (a2 && *(a3 + 64))
              {
                goto LABEL_50;
              }

              if (CFDictionaryGetInt64())
              {
                v11 = 1;
              }

              else
              {
                v11 = -1;
              }

              *(a3 + 64) = v11;
              break;
            case 2:
              if (a2 && *(a3 + 60))
              {
                goto LABEL_50;
              }

              if (CFDictionaryGetInt64())
              {
                v10 = 1;
              }

              else
              {
                v10 = -1;
              }

              *(a3 + 60) = v10;
              break;
          }
        }

LABEL_33:
        v23 = 0;
      }
    }
  }

  CFArrayGetTypeID();
  v15 = CFDictionaryGetTypedValue();
  if (v15)
  {
    v16 = CFArrayGetCount(v15);
    if (v16 >= 1)
    {
      v17 = v16;
      for (j = 0; v17 != j; ++j)
      {
        CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
        if (TypedValueAtIndex)
        {
          v20 = CFDictionaryGetInt64();
          if (v20 == 2)
          {
            v23 = apStarkMode_parseResourceChangeRequest(TypedValueAtIndex, a2, a3 + 32);
            if (v23)
            {
              APStarkModeChangeRequestMakeFromDictionary_cold_3();
              break;
            }
          }

          else if (v20 == 1)
          {
            v23 = apStarkMode_parseResourceChangeRequest(TypedValueAtIndex, a2, a3 + 8);
            if (v23)
            {
              APStarkModeChangeRequestMakeFromDictionary_cold_4();
              break;
            }
          }
        }

        v23 = 0;
      }
    }
  }

LABEL_44:
  if (!a2 && v23)
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 0x100000001;
    return 0;
  }

  return v23;
}

uint64_t apStarkMode_parseResourceChangeRequest(const __CFDictionary *a1, int a2, uint64_t a3)
{
  v15 = 0;
  if (*a3)
  {
    apStarkMode_parseResourceChangeRequest_cold_1();
    goto LABEL_47;
  }

  Int64 = CFDictionaryGetInt64();
  if (Int64 > 2)
  {
    if (Int64 == 4)
    {
      v7 = 23;
      goto LABEL_21;
    }

    if (Int64 != 3)
    {
LABEL_9:
      *a3 = 0;
LABEL_46:
      APSLogErrorAt();
      v15 = -72051;
      goto LABEL_47;
    }

    v8 = 22;
  }

  else
  {
    if (Int64 != 1)
    {
      if (Int64 == 2)
      {
        v7 = 21;
LABEL_21:
        *a3 = v7;
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    v8 = 20;
  }

  *a3 = v8;
  if (*(a3 + 4))
  {
    apStarkMode_parseResourceChangeRequest_cold_3();
    goto LABEL_47;
  }

  v9 = CFDictionaryGetInt64();
  if (v15)
  {
    apStarkMode_parseResourceChangeRequest_cold_4();
    goto LABEL_47;
  }

  if (v9 == 500)
  {
    v10 = 500;
  }

  else
  {
    v10 = 0;
  }

  if (v9 == 100)
  {
    v10 = 100;
  }

  *(a3 + 4) = v10;
  if (!v10)
  {
    apStarkMode_parseResourceChangeRequest_cold_11(&v15);
    goto LABEL_47;
  }

  v7 = *a3;
LABEL_22:
  if ((v7 & 0xFFFFFFFE) == 0x16)
  {
    *(a3 + 8) = CFDictionaryGetValue(a1, @"borrowID");
    v7 = *a3;
  }

  if (v7 == 22)
  {
    if (*(a3 + 16))
    {
      apStarkMode_parseResourceChangeRequest_cold_5();
    }

    else
    {
      v13 = CFDictionaryGetInt64();
      if (!v15)
      {
        if (v13 == 100 || v13 == 1000 || v13 == 500)
        {
          *(a3 + 16) = v13;
          goto LABEL_47;
        }

        *(a3 + 16) = 0;
        goto LABEL_46;
      }

      apStarkMode_parseResourceChangeRequest_cold_6();
    }

    goto LABEL_47;
  }

  if (v7 != 20)
  {
    goto LABEL_47;
  }

  if (*(a3 + 16))
  {
    apStarkMode_parseResourceChangeRequest_cold_7();
    goto LABEL_47;
  }

  v11 = CFDictionaryGetInt64();
  if (v15)
  {
    apStarkMode_parseResourceChangeRequest_cold_8();
    goto LABEL_47;
  }

  if (v11 != 100 && v11 != 500 && v11 != 1000)
  {
    *(a3 + 16) = 0;
    goto LABEL_46;
  }

  *(a3 + 16) = v11;
  if (*(a3 + 20))
  {
    apStarkMode_parseResourceChangeRequest_cold_9();
  }

  else
  {
    v12 = CFDictionaryGetInt64();
    if (!v15)
    {
      if (v12 == 100 || v12 == 1000 || v12 == 500)
      {
        *(a3 + 20) = v12;
        goto LABEL_47;
      }

      *(a3 + 20) = 0;
      goto LABEL_46;
    }

    apStarkMode_parseResourceChangeRequest_cold_10();
  }

LABEL_47:
  result = v15;
  if (!a2)
  {
    if (v15)
    {
      result = 0;
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  return result;
}

uint64_t APStarkModeChangeRequestToString(_DWORD *a1, uint64_t a2)
{
  SNPrintF_Add();
  if (a1[2])
  {
    SNPrintF_Add();
    SNPrintF_Add();
    v4 = a1[2];
    if (v4 == 22 || v4 == 20)
    {
      SNPrintF_Add();
    }
  }

  if (a1[8])
  {
    SNPrintF_Add();
    SNPrintF_Add();
    v5 = a1[8];
    if (v5 == 22 || v5 == 20)
    {
      SNPrintF_Add();
    }
  }

  if (a1[14])
  {
    SNPrintF_Add();
    SNPrintF_Add();
  }

  if (a1[15])
  {
    SNPrintF_Add();
    SNPrintF_Add();
  }

  if (a1[16])
  {
    SNPrintF_Add();
    SNPrintF_Add();
  }

  return a2;
}

uint64_t APStarkInitialOwnerRequestToString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SNPrintF_Add();
  if (a1)
  {
    SNPrintF_Add();
    SNPrintF_Add();
  }

  SNPrintF_Add();
  SNPrintF_Add();
  if (a2)
  {
    SNPrintF_Add();
    SNPrintF_Add();
  }

  SNPrintF_Add();
  return a3;
}

uint64_t airPlayDescriptionMock_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t airPlayDescriptionMock_HasFeature()
{
  CMBaseObjectGetDerivedStorage();

  return APSFeaturesHasFeature();
}

uint64_t APRealTimeAudioFileWriterGetTypeID()
{
  if (gAPRealTimeAudioFileWriterInitOnce != -1)
  {
    APRealTimeAudioFileWriterGetTypeID_cold_1();
  }

  return gAPRealTimeAudioFileWriterTypeID;
}

uint64_t _APRealTimeAudioFileWriterGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPRealTimeAudioFileWriterTypeID = result;
  return result;
}

uint64_t APRealTimeAudioFileWriterCreate(const void *a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v20 = 0;
  if (!a2)
  {
    APRealTimeAudioFileWriterCreate_cold_9(&v20);
    return v20;
  }

  if (!a4)
  {
    APRealTimeAudioFileWriterCreate_cold_8(&v20);
    return v20;
  }

  if (gAPRealTimeAudioFileWriterInitOnce != -1)
  {
    APRealTimeAudioFileWriterGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APRealTimeAudioFileWriterCreate_cold_7(&v20);
    return v20;
  }

  v9 = Instance;
  *(Instance + 16) = 0u;
  v10 = Instance + 16;
  *(Instance + 160) = 0;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  v11 = *a2;
  v12 = a2[1];
  *(Instance + 72) = *(a2 + 4);
  *(Instance + 56) = v12;
  *(Instance + 40) = v11;
  if (a3)
  {
    v13 = *MEMORY[0x277CBED28];
    *(Instance + 80) = v13 == FigCFDictionaryGetBooleanValue();
  }

  if (a1)
  {
    *(v9 + 104) = CFRetain(a1);
  }

  else
  {
    v14 = CFStringCreateF();
    v15 = v20;
    *(v9 + 104) = v14;
    if (v15)
    {
      APRealTimeAudioFileWriterCreate_cold_2();
      goto LABEL_24;
    }
  }

  v16 = dispatch_queue_create("APRealTimeAudioFileWrite", 0);
  *(v9 + 32) = v16;
  if (!v16)
  {
    APRealTimeAudioFileWriterCreate_cold_6(&v20);
    goto LABEL_24;
  }

  v20 = APAudioSourceConduitCreate(*MEMORY[0x277CBECE8], (v10 + 24), v10);
  if (v20)
  {
    APRealTimeAudioFileWriterCreate_cold_3();
    goto LABEL_24;
  }

  v17 = *v10;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v18)
  {
    v20 = -12782;
    goto LABEL_23;
  }

  v20 = v18(v17);
  if (v20)
  {
LABEL_23:
    APRealTimeAudioFileWriterCreate_cold_5();
LABEL_24:
    CFRelease(v9);
    return v20;
  }

  *(v9 + 160) = FigSimpleMutexCreate();
  v20 = APSRealTimeSignalCreate();
  if (v20)
  {
    APRealTimeAudioFileWriterCreate_cold_4();
    goto LABEL_24;
  }

  *(v9 + 128) = APSSettingsGetIntWithDefault();
  if (gLogCategory_APRealTimeAudioFileWriter <= 50 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *a4 = v9;
  return v20;
}

uint64_t APRealTimeAudioFileWriterSignalWhenDone(uint64_t a1, NSObject *a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (atomic_load((a1 + 148)))
  {
    *(a1 + 152) = a2;
    dispatch_retain(a2);
  }

  else
  {
    dispatch_semaphore_signal(a2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t apRealTimeAudioFileWriter_CloseFile(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = ExtAudioFileDispose(v2);
    *(a1 + 88) = 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 96) = 0;
  }

  return v3;
}

uint64_t _APRealTimeAudioFileWriterFinalize(uint64_t result)
{
  v1 = result;
  if (gLogCategory_APRealTimeAudioFileWriter <= 30)
  {
    if (gLogCategory_APRealTimeAudioFileWriter != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = _APRealTimeAudioFileWriterFinalize_cold_1();
    }
  }

  if (*(v1 + 144))
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 24) = 0;
    }

    v3 = *(v1 + 32);
    if (v3)
    {
      dispatch_release(v3);
      *(v1 + 32) = 0;
    }

    v4 = *(v1 + 152);
    if (v4)
    {
      dispatch_release(v4);
      *(v1 + 152) = 0;
    }

    v5 = *(v1 + 16);
    if (v5)
    {
      CFRelease(v5);
      *(v1 + 16) = 0;
    }

    v6 = *(v1 + 96);
    if (v6)
    {
      CFRelease(v6);
      *(v1 + 96) = 0;
    }

    v7 = *(v1 + 104);
    if (v7)
    {
      CFRelease(v7);
      *(v1 + 104) = 0;
    }

    return FigSimpleMutexDestroy();
  }

  else
  {
    if (gLogCategory_APRealTimeAudioFileWriter <= 100)
    {
      if (gLogCategory_APRealTimeAudioFileWriter != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = _APRealTimeAudioFileWriterFinalize_cold_2();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t APEndpointDescriptionAirPlayCreateWithBonjourInfo(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, CFTypeRef *a4)
{
  v12 = 0;
  cf = 0;
  if (theDict)
  {
    if (a4)
    {
      if (CFDictionaryGetValue(theDict, @"txt"))
      {
        if (CFDictionaryGetValue(theDict, @"name"))
        {
          v8 = APEndpointDescriptionAirPlayCreateWithTransportDevice(a1, 0, a3, &v12);
          if (v8)
          {
            v10 = v8;
            APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_1();
          }

          else
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            v10 = APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName();
            if (v10)
            {
              APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_2();
            }

            else
            {
              FigSimpleMutexLock();
              airPlayDescription_updateWithAdvertiserAndPSGInfosNotifyingClients(v12, cf, *(DerivedStorage + 80), 0);
              FigSimpleMutexUnlock();
              *a4 = v12;
              v12 = 0;
            }
          }
        }

        else
        {
          v10 = 4294895545;
          APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_3();
        }
      }

      else
      {
        v10 = 4294895545;
        APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_4();
      }
    }

    else
    {
      v10 = 4294895545;
      APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_5();
    }
  }

  else
  {
    v10 = 4294895545;
    APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_6();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

__CFString *airPlayDescription_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v5 = 0;
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  airPlayDescription_copyName(a1, &v5);
  FigSimpleMutexUnlock();
  v3 = v5;
  CFStringAppendFormat(Mutable, 0, @"<APEndpointDescriptionAirPlay %p, name=%@>", a1, v5);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t airPlayDescription_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    FigSimpleMutexLock();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (CFEqual(a2, @"PairingPeerCUAirPlayIdentifier"))
    {
      v7 = *(DerivedStorage + 32);
      *(DerivedStorage + 32) = a3;
      if (!a3)
      {
LABEL_9:
        if (!v7)
        {
LABEL_12:
          FigSimpleMutexUnlock();
          return 0;
        }

        v8 = v7;
LABEL_11:
        CFRelease(v8);
        goto LABEL_12;
      }

LABEL_8:
      CFRetain(a3);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"PairingPeerCUSystemIdentifier"))
    {
      v7 = *(DerivedStorage + 40);
      *(DerivedStorage + 40) = a3;
      if (!a3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"PairingPeerPublicKey"))
    {
      v7 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = a3;
      if (!a3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"PermanentSpeakerGroupingInfo"))
    {
      if (FigCFEqual())
      {
        goto LABEL_12;
      }

      ChangedNotificationPayload = airPlayDescription_createChangedNotificationPayload(@"ChangeSource_SetPSGInfo");
      airPlayDescription_updateWithAdvertiserAndPSGInfosNotifyingClients(a1, *(DerivedStorage + 16), a3, ChangedNotificationPayload);
    }

    else
    {
      if (!CFEqual(a2, @"uglServerInfo"))
      {
        if (CFEqual(a2, @"SupportsBufferedAudio"))
        {
          CMBaseObjectGetDerivedStorage();
          if (airPlayDescription_hasFeatureInternal(a1))
          {
            *(DerivedStorage + 65) = CFBooleanGetValue(a3);
            goto LABEL_12;
          }
        }

        if (CFEqual(a2, @"SupportsJarvis"))
        {
          *(DerivedStorage + 64) = CFBooleanGetValue(a3);
          goto LABEL_12;
        }

        if (!CFEqual(a2, @"HeadUnitRestrictions"))
        {
          if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
          {
            airPlayDescription_SetProperty_cold_1();
          }

          goto LABEL_12;
        }

        v7 = *(DerivedStorage + 72);
        *(DerivedStorage + 72) = a3;
        if (!a3)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      ChangedNotificationPayload = airPlayDescription_createChangedNotificationPayload(@"ChangeSource_SetUGLServerInfo");
      if (airPlayDescription_updateUGLServerInfo(a1, a3, @"-", ChangedNotificationPayload))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
      }
    }

    if (!ChangedNotificationPayload)
    {
      goto LABEL_12;
    }

    v8 = ChangedNotificationPayload;
    goto LABEL_11;
  }

  airPlayDescription_SetProperty_cold_2();
  return 4294895545;
}

uint64_t airPlayDescription_copyAudioLatencyForAV(const __CFAllocator *a1, CFNumberRef *a2)
{
  valuePtr = APSAudioLatencyForAVMs();
  v4 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  airPlayDescription_copyAudioLatencyForAV_cold_1();
  return 4294895546;
}

uint64_t airPlayDescription_copyAudioLatencyOffsetForAV(const __CFAllocator *a1, CFNumberRef *a2)
{
  valuePtr = APSAudioLatencyOffsetForAVMs();
  v4 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  airPlayDescription_copyAudioLatencyOffsetForAV_cold_1();
  return 4294895546;
}

uint64_t airPlayDescription_copyPairingPeerCUAirPlayIdentifier(uint64_t a1, uint64_t *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 32);
  if (v3)
  {
    result = CFRetain(v3);
  }

  else
  {
    result = APAdvertiserInfoCopyProperty();
  }

  *a2 = result;
  return result;
}

uint64_t airPlayDescription_hasCarPlayVideoFeatureInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (airPlayDescription_copyCarPlayVideoFeaturesInternal(a1, &cf))
  {
    airPlayDescription_hasCarPlayVideoFeatureInternal_cold_1();
    HasFeature = 0;
  }

  else
  {
    HasFeature = APSFeaturesHasFeature();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return HasFeature;
}

uint64_t airPlayDescription_hasFeaturesInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v5 = 0;
  if (airPlayDescription_copyFeaturesInternal(a1, &v5))
  {
    APSLogErrorAt();
    HasAllFeatures = 0;
    v2 = v5;
    if (!v5)
    {
      return HasAllFeatures;
    }

    goto LABEL_3;
  }

  v2 = v5;
  HasAllFeatures = APSFeaturesHasAllFeatures();
  if (v2)
  {
LABEL_3:
    CFRelease(v2);
  }

  return HasAllFeatures;
}

void airPlayDescription_copyCarPlayAudioFormats(uint64_t a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  BOOLean = 0;
  Mutable = CFDictionaryCreateMutable(a2, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    airPlayDescription_copyCarPlayAudioFormats_cold_4();
    return;
  }

  v8 = Mutable;
  airPlayDescription_copyIsConnectedOverUSB(a1, &BOOLean);
  Value = CFBooleanGetValue(BOOLean);
  v10 = *(DerivedStorage + 56);
  if (Value)
  {
    if (APCarPlayAudioFormatsCopyFormatsForAudioType(v10, 100, @"media", &v11, 0, 0))
    {
      airPlayDescription_copyCarPlayAudioFormats_cold_1();
LABEL_14:
      CFRelease(v8);
      return;
    }
  }

  else if (APCarPlayAudioFormatsCopyFormatsForAudioType(v10, 102, @"media", &v11, 0, 0))
  {
    airPlayDescription_copyCarPlayAudioFormats_cold_2();
    goto LABEL_14;
  }

  CFDictionarySetInt64();
  if (*(CMBaseObjectGetDerivedStorage() + 65))
  {
    if (APCarPlayAudioFormatsCopyFormatsForAudioType(*(DerivedStorage + 56), 103, @"media", &v11, 0, 0))
    {
      airPlayDescription_copyCarPlayAudioFormats_cold_3();
      goto LABEL_14;
    }

    CFDictionarySetInt64();
  }

  *a3 = v8;
}

uint64_t airPlayDescription_copyAirPlayAudioFormats(uint64_t a1, const __CFAllocator *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    airPlayDescription_copyAirPlayAudioFormats_cold_1();
    return 4294895545;
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {
    Value = CFDictionaryGetValue(v7, @"supportedFormats");
    if (Value)
    {
      v9 = CFRetain(Value);
      if (v9)
      {
        goto LABEL_15;
      }
    }
  }

  v14 = 0;
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = airPlayDescription_copyFeaturesInternal(a1, &v14);
  if (v11)
  {
    APSLogErrorAt();
    v9 = 0;
    v12 = v14;
    if (v14)
    {
LABEL_11:
      CFRelease(v12);
    }
  }

  else
  {
    v12 = v14;
    APSFeaturesHasFeature();
    if (APSFeaturesHasFeature())
    {
      APSSettingsIsFeatureEnabled();
    }

    APSFeaturesHasFeature();
    APSFeaturesHasFeature();
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (APSFeaturesHasFeature())
    {
      APAudioFormatGetSupportedTransportAudioFormatsLowLatencySender();
      CFDictionarySetInt64();
    }

    v9 = Mutable;
    Mutable = 0;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v11)
  {
LABEL_15:
    v11 = 0;
    *a3 = v9;
    return v11;
  }

  APSLogErrorAt();
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

uint64_t airPlayDescription_copyAirPlayAudioFormatsExtended(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    if (v4 && (Value = CFDictionaryGetValue(v4, @"supportedAudioFormatsExtended")) != 0)
    {
      v6 = CFRetain(Value);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *a2 = v6;
  }

  else
  {
    airPlayDescription_copyAirPlayAudioFormatsExtended_cold_1();
    return 4294895545;
  }

  return result;
}

CFTypeRef airPlayDescription_copySupportsRFC2617DigestAuth(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (CFObjectGetPropertyInt64Sync())
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    isSourceVersionAtLeast = airPlayDescription_isSourceVersionAtLeast(a1, 0x125048u);
    v4 = MEMORY[0x277CBED28];
    if (!isSourceVersionAtLeast)
    {
      v4 = MEMORY[0x277CBED10];
    }
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t airPlayDescription_copyDisplayDescriptionArray(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  v20 = airPlayDescription_copyFeaturesInternal(a1, &cf);
  if (v20)
  {
    airPlayDescription_copyDisplayDescriptionArray_cold_1();
LABEL_20:
    Mutable = 0;
    goto LABEL_21;
  }

  v7 = cf;
  if (!APSFeaturesHasFeature())
  {
    Mutable = 0;
    v20 = -71754;
    goto LABEL_21;
  }

  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    airPlayDescription_copyDisplayDescriptionArray_cold_6();
    goto LABEL_21;
  }

  v9 = *(DerivedStorage + 24);
  if (!v9)
  {
    v20 = APEndpointDisplayDescriptionCreateDefaultWithEndpointFeatures(a2, v7, &value);
    if (v20)
    {
      airPlayDescription_copyDisplayDescriptionArray_cold_4();
      goto LABEL_21;
    }

    CFArrayAppendValue(Mutable, value);
    goto LABEL_16;
  }

  v10 = CFDictionaryGetValue(v9, @"displays");
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = CFGetTypeID(v10);
  if (v12 != CFArrayGetTypeID())
  {
    airPlayDescription_copyDisplayDescriptionArray_cold_2(&v20);
    goto LABEL_21;
  }

  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
LABEL_16:
    if (gLogCategory_APEndpointDescriptionAirPlay <= 50 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
    {
      airPlayDescription_copyDisplayDescriptionArray_cold_5(Mutable);
    }

    *a3 = Mutable;
    goto LABEL_20;
  }

  v14 = Count;
  v15 = 0;
  while (1)
  {
    CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    v20 = APEndpointDisplayDescriptionCreateWithDisplayInfo(a2, TypedValueAtIndex, &value);
    if (v20)
    {
      break;
    }

    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (v14 == ++v15)
    {
      goto LABEL_16;
    }
  }

  airPlayDescription_copyDisplayDescriptionArray_cold_3();
LABEL_21:
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

CFTypeRef airplayDescription_copySupportsAWDL(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  isThirdPartyDevice = airPlayDescription_isThirdPartyDevice(a1);
  v5 = airPlayDescription_supportsCUPairingAndEncryption(a1);
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1);
  if (!isThirdPartyDevice && v5 | hasFeatureInternal)
  {
    v7 = MEMORY[0x277CBED28];
  }

  else
  {
    v7 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v7);
  *a2 = result;
  return result;
}

CFTypeRef airplayDescription_copySupportsNAN(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (APSIsOpenNANSenderEnabled() && airPlayDescription_hasFeatureInternal(a1))
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

CFTypeRef airplayDescription_copySupportsSharedReceiverClock(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1);
  v5 = MEMORY[0x277CBED28];
  if (!hasFeatureInternal)
  {
    v5 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v5);
  *a2 = result;
  return result;
}

CFTypeRef airPlayDescription_copySupportsUnifiedMediaControl(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_copySupportsUnifiedMediaControl_checkPrefOnce != -1)
  {
    airPlayDescription_copySupportsUnifiedMediaControl_cold_1();
  }

  if (airPlayDescription_copySupportsUnifiedMediaControl_forceUnifiedMediaControlOverride == 1)
  {
    if (gLogCategory_APEndpointDescriptionAirPlay <= 60 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
    {
      airPlayDescription_copySupportsUnifiedMediaControl_cold_2();
    }
  }

  else
  {
    if (!airPlayDescription_copySupportsUnifiedMediaControl_forceUnifiedMediaControlOverride)
    {
      if (gLogCategory_APEndpointDescriptionAirPlay <= 60 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
      {
        airPlayDescription_copySupportsUnifiedMediaControl_cold_3();
      }

      goto LABEL_17;
    }

    if (!airPlayDescription_isSourceVersionAtLeast(a1, 0x287184u) || !airPlayDescription_hasFeatureInternal(a1) && !airPlayDescription_hasFeatureInternal(a1))
    {
LABEL_17:
      v4 = MEMORY[0x277CBED10];
      goto LABEL_18;
    }
  }

  v4 = MEMORY[0x277CBED28];
LABEL_18:
  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t airPlayDescription_copyEndpointInfoValueCFDictionary(uint64_t a1, const void *a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  airPlayDescription_copyEndpointInfoValue(a1, a2, &cf);
  v6 = cf;
  if (cf && (v7 = CFGetTypeID(cf), v7 != CFDictionaryGetTypeID()))
  {
    airPlayDescription_copyEndpointInfoValueCFDictionary_cold_1(v6);
    return 4294895541;
  }

  else
  {
    result = 0;
    *a3 = v6;
  }

  return result;
}

uint64_t airPlayDescription_copyOEMIcons(uint64_t a1, const __CFAllocator *a2, void *a3)
{
  values = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  v6 = airPlayDescription_copyEndpointInfoValueCFArray(a1, @"oemIcons", &cf);
  v7 = cf;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = cf == 0;
  }

  if (!v8)
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  CMBaseObjectGetDerivedStorage();
  v18 = 0;
  airPlayDescription_copyEndpointInfoValue(a1, @"oemIcon", &v18);
  v9 = v18;
  if (v18)
  {
    v10 = CFGetTypeID(v18);
    if (v10 == CFDataGetTypeID())
    {
      Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      values = Mutable;
      if (Mutable)
      {
        v12 = Mutable;
        CFDictionarySetValue(Mutable, @"imageData", v9);
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetValue(v12, @"prerendered", *MEMORY[0x277CBED10]);
        v7 = CFArrayCreate(a2, &values, 1, MEMORY[0x277CBF128]);
        cf = v7;
        if (v7)
        {
          if (!a3)
          {
LABEL_15:
            CFRelease(v7);
LABEL_16:
            v13 = 0;
            v14 = 0;
            if (!v9)
            {
              goto LABEL_19;
            }

            goto LABEL_17;
          }

LABEL_13:
          *a3 = v7;
          cf = 0;
          goto LABEL_16;
        }

        v13 = 4294895546;
        airPlayDescription_copyOEMIcons_cold_2();
      }

      else
      {
        v13 = 4294895546;
        airPlayDescription_copyOEMIcons_cold_3();
      }

LABEL_17:
      CFRelease(v9);
      v14 = v13;
      goto LABEL_19;
    }

    airPlayDescription_copyOEMIcons_cold_1(v9);
    v14 = 4294895541;
  }

  else
  {
    v14 = 0;
  }

LABEL_19:
  if (values)
  {
    CFRelease(values);
  }

  return v14;
}

uint64_t airPlayDescription_extendedFeaturesHasKey(uint64_t a1, const void *a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 24))
  {
    return 0;
  }

  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    return 0;
  }

  v4 = TypedValue;
  v5.length = CFArrayGetCount(TypedValue);
  v5.location = 0;

  return CFArrayContainsValue(v4, v5, a2);
}

uint64_t airplayDescription_copyReceiverModifiesMainHighLatency(uint64_t a1, void *a2)
{
  if (a2)
  {
    airplayDescription_copyReceiverModifiesMainHighLatency_cold_1(&v3, a1, a2, &v4);
    return v4;
  }

  else
  {
    airplayDescription_copyReceiverModifiesMainHighLatency_cold_2();
    return 4294960591;
  }
}

uint64_t airPlayDescription_checkIfUnifiedMediaControlIsForced(_DWORD *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  *a1 = result;
  return result;
}

__CFDictionary *airPlayDescription_createChangedNotificationPayload(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"ChangeSource", a1);
  return Mutable;
}

uint64_t airPlayDescription_updateUGLServerInfo(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 88);
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v9 = CFRetain(Value);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(DerivedStorage + 88);
  *(DerivedStorage + 88) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 88);
  FigCFDictionaryGetValue();
  if (!FigCFEqual() && gLogCategory_APEndpointDescriptionAirPlay <= 50 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!v7 && v11)
  {
    if (gLogCategory_APEndpointDescriptionAirPlay > 50 || gLogCategory_APEndpointDescriptionAirPlay == -1 && !_LogCategory_Initialize())
    {
      if (!a4)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    airPlayDescription_updateUGLServerInfo_cold_1();
    if (a4)
    {
LABEL_19:
      CFDictionarySetValue(a4, @"UGLServerInfoAdded", *MEMORY[0x277CBED28]);
    }
  }

LABEL_20:
  if (v9)
  {
    CFRelease(v9);
  }

  return (v7 != 0) ^ (v11 != 0);
}

uint64_t airPlayDescription_SetEndpointInfo(uint64_t a1, const void *a2)
{
  v55[27] = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2 || (v4 = CFGetTypeID(a2), v4 != CFDictionaryGetTypeID()))
  {
    airPlayDescription_SetEndpointInfo_cold_10();
    return 4294895545;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ArrayValue = FigCFDictionaryGetArrayValue();
  v7 = FigCFDictionaryGetArrayValue();
  v8 = MEMORY[0x277CBECE8];
  if (ArrayValue && !v7)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    FigCFDictionarySetValue();
    v10 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v11 = MutableCopy;
    goto LABEL_16;
  }

  v12 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a2;
  CFRetain(a2);
  if (v12)
  {
    v11 = v12;
LABEL_16:
    CFRelease(v11);
  }

  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!airPlayDescription_hasFeatureInternal(a1))
  {
    v15 = 0;
    v16 = *(DerivedStorage + 56);
    *(DerivedStorage + 56) = 0;
    goto LABEL_37;
  }

  if (APSSettingsGetInt64())
  {
    v13 = *(DerivedStorage + 72);
    if (!v13)
    {
      airPlayDescription_SetEndpointInfo_cold_1();
      Mutable = 0;
      goto LABEL_82;
    }

    v14 = CFDictionaryContainsKey(v13, @"kAPCarPlay_Disable24kHzTelephony");
  }

  else
  {
    v14 = 0;
  }

  v17 = *v8;
  if (*(DerivedStorage + 8))
  {
    v18 = APTransportDeviceIsConnectedOverUSB() == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(CMBaseObjectGetDerivedStorage() + 64);
  v20 = CMBaseObjectGetDerivedStorage();
  v15 = APCarPlayAudioFormatsCreate(v17, a2, v18, v19, *(v20 + 65), v14);
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v16 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = v15;
  if (!v15)
  {
LABEL_37:
    v21 = 1;
    if (!v16)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  CFRetain(v15);
  v21 = 0;
  if (v16)
  {
LABEL_38:
    CFRelease(v16);
  }

LABEL_39:
  if ((v21 & 1) == 0)
  {
    CFRelease(v15);
  }

  Mutable = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"ChangeSource", @"ChangeSource_SetEndpointInfo");
  Value = CFDictionaryGetValue(a2, @"name");
  if (*(DerivedStorage + 121))
  {
    v24 = CFDictionaryGetValue(a2, @"uglServerInfo");
    airPlayDescription_updateUGLServerInfo(a1, v24, Value, Mutable);
  }

  if (!CFDictionaryGetValue(a2, @"txtAirPlay"))
  {
    v52 = 0;
    v25 = CMBaseObjectGetDerivedStorage();
    v26 = *MEMORY[0x277CE4B78];
    v54 = @"deviceID";
    v55[0] = v26;
    v27 = *MEMORY[0x277CE4B68];
    v55[1] = @"company";
    v55[2] = v27;
    v28 = *MEMORY[0x277CE4B70];
    v55[3] = @"deviceEnclosureColor";
    v55[4] = v28;
    v29 = *MEMORY[0x277CE4B80];
    v55[5] = @"manufacturer";
    v55[6] = v29;
    v30 = *MEMORY[0x277CE4B88];
    v55[7] = @"model";
    v55[8] = v30;
    v31 = *MEMORY[0x277CE4B90];
    v55[9] = @"name";
    v55[10] = v31;
    v32 = *MEMORY[0x277CE4BE0];
    v55[11] = @"nameIsFactoryDefault";
    v55[12] = v32;
    v33 = *MEMORY[0x277CE4C30];
    v55[13] = @"protocolVersion";
    v55[14] = v33;
    v34 = *MEMORY[0x277CE4C38];
    v55[15] = @"pi";
    v55[16] = v34;
    v35 = *MEMORY[0x277CE4C40];
    v55[17] = @"psi";
    v55[18] = v35;
    v36 = *MEMORY[0x277CE4C48];
    v55[19] = @"pk";
    v55[20] = v36;
    v37 = *MEMORY[0x277CE4B50];
    v55[21] = @"sourceVersion";
    v55[22] = v37;
    v38 = *MEMORY[0x277CE4C60];
    v55[23] = @"statusFlags";
    v55[24] = v38;
    v39 = *MEMORY[0x277CE4C78];
    v55[25] = @"vv";
    v55[26] = v39;
    if (!*(v25 + 16))
    {
      airPlayDescription_SetEndpointInfo_cold_9();
      goto LABEL_82;
    }

    v51 = (CFObjectGetPropertyInt64Sync() >> 22) & 1;
    v40 = v55;
    v41 = 14;
    do
    {
      v42 = *(v40 - 1);
      if (CFDictionaryContainsKey(a2, v42))
      {
        v43 = CFDictionaryGetValue(a2, v42);
        if (CFEqual(v42, @"pk"))
        {
          if (!v43 || (v44 = CFGetTypeID(v43), v44 != CFDataGetTypeID()) || CFDataGetLength(v43) != 32)
          {
            APSLogErrorAt();
            goto LABEL_82;
          }

          v56.location = 0;
          v56.length = 32;
          CFDataGetBytes(v43, v56, buffer);
          DataToHexCStringEx();
          v45 = CFObjectSetPropertyCString();
        }

        else
        {
          v45 = APAdvertiserInfoSetProperty();
        }

        v52 = v45;
        if (v45)
        {
          airPlayDescription_SetEndpointInfo_cold_4();
          goto LABEL_82;
        }
      }

      v40 += 2;
      --v41;
    }

    while (v41);
    CFDictionaryGetValue(a2, @"featuresEx");
    CFDictionaryGetInt64();
    v46 = APSFeaturesCreateFromEndpointInfoFeatureRepresentations();
    if (!v52)
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        v47 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        if (*(v25 + 104))
        {
          v48 = APSFeaturesCreateMutableCopy();
          if (v48)
          {
            APSFeaturesSetAllFeatures();
            if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            CFRetain(v48);
            if (v46)
            {
              CFRelease(v46);
            }

            v46 = v48;
            goto LABEL_71;
          }

          airPlayDescription_SetEndpointInfo_cold_7(&v52);
LABEL_78:
          if (v46)
          {
            CFRelease(v46);
          }

          if (v48)
          {
            CFRelease(v48);
          }

          goto LABEL_82;
        }

        v48 = 0;
      }

      else
      {
        v48 = 0;
        v47 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
      }

LABEL_71:
      APAdvertiserInfoSetProperty();
      if (Mutable)
      {
        if (v51 != ((CFObjectGetPropertyInt64Sync() >> 22) & 1))
        {
          v49 = v47[56];
          if (v49 <= 50 && (v49 != -1 || _LogCategory_Initialize()))
          {
            airPlayDescription_SetEndpointInfo_cold_8();
          }

          CFDictionarySetValue(Mutable, @"UGLSessionActiveDidChange", *MEMORY[0x277CBED28]);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
      }

      goto LABEL_78;
    }

    airPlayDescription_SetEndpointInfo_cold_5();
    v48 = 0;
    goto LABEL_78;
  }

  if (Value)
  {
    if (APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName())
    {
      airPlayDescription_SetEndpointInfo_cold_2();
    }

    else
    {
      airPlayDescription_updateWithAdvertiserAndPSGInfosNotifyingClients(a1, 0, *(DerivedStorage + 80), Mutable);
    }
  }

  else
  {
    airPlayDescription_SetEndpointInfo_cold_3();
  }

LABEL_82:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t airPlayDescription_DescribesSameTransportDevice(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = CFEqual(*(DerivedStorage + 8), a2);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t APGetEndpointManager(void *a1)
{
  if (APGetEndpointManager_sCreateOnce != -1)
  {
    APGetEndpointManager_cold_1();
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    *a1 = qword_280FB1B28;
  }

LABEL_4:
  if (gLogCategory_APEndpointManagerFactory <= 50 && (gLogCategory_APEndpointManagerFactory != -1 || _LogCategory_Initialize()))
  {
    APGetEndpointManager_cold_2();
  }

  return _MergedGlobals_15;
}

void __APGetEndpointManager_block_invoke()
{
  if (!MEMORY[0x223DAEBE0]() || (v0 = getprogname(), strcmp(v0, "audiomxd")))
  {
    if (gLogCategory_APEndpointManagerFactory <= 50 && (gLogCategory_APEndpointManagerFactory != -1 || _LogCategory_Initialize()))
    {
      __APGetEndpointManager_block_invoke_cold_3();
    }

    v4 = 0;
    cf = 0;
    v1 = APEndpointManagerCreate(&cf);
    if (!v1)
    {
      if (APSSettingsIsFeatureEnabled())
      {
        v2 = APEndpointManagerPlusCreate(1, cf, &v4);
        if (v2)
        {
          v3 = v2;
          __APGetEndpointManager_block_invoke_cold_5();
          goto LABEL_13;
        }
      }

      else
      {
        v4 = CFRetain(cf);
      }

      if (!APSIsExplicitEndpointManagerInitializationEnabledInMX() && CMSessionMgrRegisterEndpointManager() && gLogCategory_APEndpointManagerFactory <= 90 && (gLogCategory_APEndpointManagerFactory != -1 || _LogCategory_Initialize()))
      {
        __APGetEndpointManager_block_invoke_cold_6();
      }

      v3 = 0;
      qword_280FB1B28 = v4;
      v4 = 0;
      goto LABEL_13;
    }

    v3 = v1;
    __APGetEndpointManager_block_invoke_cold_4();
LABEL_13:
    if (gLogCategory_APEndpointManagerFactory <= 50 && (gLogCategory_APEndpointManagerFactory != -1 || _LogCategory_Initialize()))
    {
      __APGetEndpointManager_block_invoke_cold_7();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v3)
    {
      __APGetEndpointManager_block_invoke_cold_8();
    }

    goto LABEL_32;
  }

  if (gLogCategory_APEndpointManagerFactory <= 50 && (gLogCategory_APEndpointManagerFactory != -1 || _LogCategory_Initialize()))
  {
    __APGetEndpointManager_block_invoke_cold_1();
  }

  v3 = FigEndpointManagerRemoteCopyAirPlayManager();
  if (v3)
  {
    __APGetEndpointManager_block_invoke_cold_2();
  }

LABEL_32:
  _MergedGlobals_15 = v3;
}

uint64_t SPHubbedDevicesProviderGetClassID()
{
  if (qword_280FB1B38 != -1)
  {
    SPHubbedDevicesProviderGetClassID_cold_1();
  }

  return qword_280FB1B40;
}

uint64_t hubbedDevicesProvider_registerClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&hubbedDevicesProvider_registerClass_sClassDesc, ClassID, 1, a1);
}

uint64_t SPHubbedDevicesProviderGetTypeID()
{
  if (qword_280FB1B38 != -1)
  {
    SPHubbedDevicesProviderGetClassID_cold_1();
  }

  v1 = qword_280FB1B40;

  return MEMORY[0x282111A98](v1);
}

uint64_t SPHubbedDevicesProviderAddListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    SPHubbedDevicesProviderAddListener_cold_3();
LABEL_15:
    v4 = 90;
    v3 = 4294960591;
    goto LABEL_7;
  }

  if (!a2)
  {
    SPHubbedDevicesProviderAddListener_cold_2();
    goto LABEL_15;
  }

  if (!a3)
  {
    SPHubbedDevicesProviderAddListener_cold_1();
    goto LABEL_15;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v3 = CMNotificationCenterAddListener();
  if (v3)
  {
    v4 = 90;
  }

  else
  {
    v4 = 50;
  }

LABEL_7:
  if (v4 >= gLogCategory_SPHubbedDevicesProvider && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v3;
}

uint64_t SPHubbedDevicesProviderRemoveListener(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    SPHubbedDevicesProviderRemoveListener_cold_2();
LABEL_13:
    v3 = 90;
    v2 = 4294960591;
    goto LABEL_6;
  }

  if (!a2)
  {
    SPHubbedDevicesProviderRemoveListener_cold_1();
    goto LABEL_13;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v2 = CMNotificationCenterRemoveListener();
  if (v2)
  {
    v3 = 90;
  }

  else
  {
    v3 = 50;
  }

LABEL_6:
  if (v3 >= gLogCategory_SPHubbedDevicesProvider && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v2;
}