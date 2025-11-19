uint64_t OUTLINED_FUNCTION_1()
{

  return LogPrintF();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EAE2D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Float64 OUTLINED_FUNCTION_4(__int128 *a1, uint64_t a2, CMTime *time, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 timea, uint64_t time_16)
{
  timea = *a1;
  time_16 = *(a1 + 2);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return LogPrintF();
}

void sub_23EAE9C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EAEC73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_23EAEC9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_23EAED3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23EAED4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t FigVideoQueueSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, a2, a3);
}

uint64_t FigVideoQueueStart(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1, 0);
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return _LogCategory_Initialize();
}

void ReachabilityCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:kReachabilityChangedNotification object:v4];
}

void sub_23EAEFFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EAF2F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23EAF487C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBufConsumerCreate(uint64_t a1)
{
  if (a1)
  {
    FigValeriaGetClassID();
    if (!CMDerivedObjectCreate())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = dispatch_queue_create("com.apple.AirPlayReceiver.sbufconsumer", 0);
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 10) = 0;
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        SBufConsumerCreate_cold_2();
      }

      return 0;
    }

    SBufConsumerCreate_cold_1();
  }

  else
  {
    SBufConsumerCreate_cold_3();
  }

  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    SBufConsumerCreate_cold_4();
  }

  return 0;
}

void *SBufConsumerRegisterVideoSampleBufferCallbackForRendering(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(a2);
  *(DerivedStorage + 24) = result;
  return result;
}

void *SBufConsumerRegisterAudioSampleBufferCallbackForRendering(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(a2);
  *(DerivedStorage + 16) = result;
  return result;
}

void *SBufConsumerRegisterCallbackForDisconnect(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(a2);
  *(DerivedStorage + 32) = result;
  return result;
}

void *SBufConsumerRegisterCallbackForCopyProperty(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(a2);
  *(DerivedStorage + 40) = result;
  return result;
}

void sbufConsumer_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    sbufConsumer_finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    _Block_release(v1);
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {

    _Block_release(v4);
  }
}

uint64_t sbufConsumer_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -12787;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *DerivedStorage;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __sbufConsumer_copyProperty_block_invoke;
  v10[3] = &unk_278C62DB8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = a2;
  v10[7] = a4;
  dispatch_sync(v7, v10);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

void sub_23EAF5D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __sbufConsumer_copyProperty_block_invoke(void *a1)
{
  result = *(a1[5] + 40);
  if (result)
  {
    result = (*(result + 16))(result, a1[6], a1[7]);
    *(*(a1[4] + 8) + 24) = result;
  }

  return result;
}

uint64_t sbufConsumer_connect()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __sbufConsumer_connect_block_invoke;
  block[3] = &unk_278C62DE0;
  block[4] = &v5;
  block[5] = DerivedStorage;
  dispatch_sync(v1, block);
  if (*(v6 + 6))
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
LABEL_8:
      LogPrintF();
    }
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_8;
  }

  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sbufConsumer_disconnect()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    sbufConsumer_disconnect_cold_1();
  }

  v1 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __sbufConsumer_disconnect_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    sbufConsumer_disconnect_cold_2();
  }

  return 0;
}

uint64_t sbufConsumer_enqueueVideoFrame(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __sbufConsumer_enqueueVideoFrame_block_invoke;
  block[3] = &unk_278C62E08;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t sbufConsumer_enqueueAudioSample(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __sbufConsumer_enqueueAudioSample_block_invoke;
  block[3] = &unk_278C62E08;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __sbufConsumer_connect_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 8))
  {
    return __sbufConsumer_connect_block_invoke_cold_1(result);
  }

  *(v1 + 8) = 257;
  return result;
}

uint64_t __sbufConsumer_enqueueVideoFrame_block_invoke(uint64_t result)
{
  v2 = *(result + 40);
  if (!*(v2 + 8))
  {
    return __sbufConsumer_enqueueVideoFrame_block_invoke_cold_1(result);
  }

  if (!*(v2 + 10))
  {
    *(v2 + 9) = 256;
  }

  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(result + 48);
    v5 = *(v3 + 16);

    return v5(v3, v4);
  }

  return result;
}

uint64_t __sbufConsumer_enqueueAudioSample_block_invoke(uint64_t result)
{
  v2 = *(result + 40);
  if (!*(v2 + 8))
  {
    return __sbufConsumer_enqueueAudioSample_block_invoke_cold_1(result);
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(result + 48);
    v5 = *(v3 + 16);

    return v5(v3, v4);
  }

  return result;
}

CFTypeRef UIControllerCreate()
{
  v3 = 0;
  APReceiverUIControllerGetClassID();
  v0 = CMDerivedObjectCreate();
  if (v0)
  {
    UIControllerCreate_cold_1(v0, &v3);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = 0;
    *(DerivedStorage + 16) = 0;
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      UIControllerCreate_cold_2();
    }
  }

  return v3;
}

uint64_t UIControllerPostVideoV1Event(uint64_t a1, const char *a2, const __CFDictionary *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    UIControllerPostVideoV1Event_cold_3();
    return 4294960591;
  }

  if (strcmp_prefix())
  {
    v6 = 0;
  }

  else
  {
    v6 = strcmp(a2, "userStop") != 0;
  }

  if (strcmp(a2, "stopAudio") && !v6)
  {
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v8 = MutableCopy;
    if (!MutableCopy)
    {
      UIControllerPostVideoV1Event_cold_2();
      return 4294960568;
    }

    CFDictionarySetNumber();
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!strcmp(a2, "ended") || !strcmp(a2, "loading") || !strcmp(a2, "paused") || !strcmp(a2, "playing") || !strcmp(a2, "stopped"))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 56))
      {
        v11 = DerivedStorage;
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(Mutable, @"category", @"video");
        if (!strcmp(a2, "ended"))
        {
          CFDictionarySetValue(Mutable, @"state", @"stopped");
          CFDictionarySetValue(Mutable, @"reason", @"ended");
        }

        else
        {
          CFDictionarySetCString();
        }

        uiController_relayCommonParams(v8, Mutable);
        CFDictionaryRemoveValue(v8, @"sessionID");
        if (CFDictionaryGetCount(v8) >= 1)
        {
          CFDictionarySetValue(Mutable, @"params", v8);
        }

        (*(v11 + 56))(*(v11 + 64), Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        UIControllerPostVideoV1Event_cold_1();
      }
    }

    else if (!strcmp(a2, "error"))
    {
      uiController_handleErrorEventV1(a1, v8);
    }

    else if (!strcmp(a2, "failedURLRequest"))
    {
      uiController_handleFailedURLRequestV1(a1, v8);
    }

    else if (!strcmp(a2, "metaDataChanged"))
    {
      uiController_handleMetaDataEventV1(a1, v8);
    }

    else if (!strcmp(a2, "currentItemChanged") || !strcmp(a2, "itemPlayedToEnd") || !strcmp(a2, "itemRemoved"))
    {
      uiController_handlePlaylistEventV1(a1, a2, v8);
    }

    else if (!strcmp(a2, "dateRange"))
    {
      uiController_handleDateRangeEventV1(a1, v8);
    }

    else if (!strcmp(a2, "fpsSecureStopGenerated") || !strcmp(a2, "userStop"))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    else
    {
      uiController_handleOtherEventV1(a1, a2, v8);
    }

    CFRelease(v8);
    return 0;
  }

  if (gLogCategory_AirPlayReceiverKit > 50)
  {
    return 0;
  }

  if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

void uiController_handleErrorEventV1(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 56))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"category", @"video");
      CFDictionarySetValue(Mutable, @"error", a2);
      uiController_relayCommonParams(a2, Mutable);
      (*(v4 + 56))(*(v4 + 64), Mutable);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }

    else
    {
      uiController_handleErrorEventV1_cold_1();
    }
  }

  else
  {
    uiController_handleErrorEventV1_cold_2();
  }
}

void uiController_handleFailedURLRequestV1(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 56))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"type", @"unhandledURLRequest");
      CFDictionarySetValue(Mutable, @"request", a2);
      uiController_relayCommonParams(a2, Mutable);
      (*(v4 + 56))(*(v4 + 64), Mutable);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }

    else
    {
      uiController_handleFailedURLRequestV1_cold_1();
    }
  }

  else
  {
    uiController_handleFailedURLRequestV1_cold_2();
  }
}

void uiController_handleMetaDataEventV1(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 56))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"category", @"video");
      CFDictionarySetValue(Mutable, @"type", @"timedMetadata");
      uiController_relayCommonParams(a2, Mutable);
      (*(v4 + 56))(*(v4 + 64), Mutable);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }

    else
    {
      uiController_handleMetaDataEventV1_cold_1();
    }
  }

  else
  {
    uiController_handleMetaDataEventV1_cold_2();
  }
}

void uiController_handlePlaylistEventV1(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v5 = DerivedStorage;
    if (*(DerivedStorage + 56))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"category", @"video");
      CFDictionarySetCString();
      Value = CFDictionaryGetValue(a3, @"item");
      if (Value)
      {
        CFDictionarySetValue(Mutable, @"item", Value);
      }

      uiController_relayCommonParams(a3, Mutable);
      v8 = CFDictionaryGetValue(a3, @"uuid");
      if (v8)
      {
        CFDictionarySetValue(Mutable, @"uuid", v8);
      }

      (*(v5 + 56))(*(v5 + 64), Mutable);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }

    else
    {
      uiController_handlePlaylistEventV1_cold_1();
    }
  }

  else
  {
    uiController_handlePlaylistEventV1_cold_2();
  }
}

void uiController_handleDateRangeEventV1(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 56))
    {
      v5 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"category", @"video");
      CFDictionarySetValue(Mutable, @"type", @"dateRange");
      Value = CFDictionaryGetValue(a2, @"dateRangeArray");
      if (Value)
      {
        v8 = Value;
        v9 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
        CFArrayGetCount(v8);
        CFArrayApplyBlock();
        if (v9)
        {
          CFDictionarySetValue(Mutable, @"dateRangeArray", v9);
        }
      }

      else
      {
        if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          uiController_handleDateRangeEventV1_cold_1();
        }

        v9 = 0;
      }

      v10 = CFDictionaryGetValue(a2, @"uuid");
      if (v10)
      {
        CFDictionarySetValue(Mutable, @"uuid", v10);
      }

      uiController_relayCommonParams(a2, Mutable);
      (*(v4 + 56))(*(v4 + 64), Mutable);
      if (v9)
      {
        CFRelease(v9);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      uiController_handleDateRangeEventV1_cold_2();
    }
  }

  else
  {
    uiController_handleDateRangeEventV1_cold_3();
  }
}

void uiController_handleOtherEventV1(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v5 = DerivedStorage;
    if (*(DerivedStorage + 56))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetCString();
      uiController_relayCommonParams(a3, Mutable);
      CFDictionaryRemoveValue(a3, @"sessionID");
      if (CFDictionaryGetCount(a3) >= 1)
      {
        CFDictionarySetValue(Mutable, @"params", a3);
      }

      (*(v5 + 56))(*(v5 + 64), Mutable);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }

    else
    {
      uiController_handleOtherEventV1_cold_1();
    }
  }

  else
  {
    uiController_handleOtherEventV1_cold_2();
  }
}

void UIControllerSetVideoV1Delegate(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 104);
  *(DerivedStorage + 104) = v4;
  v9 = v4;

  v8 = *(DerivedStorage + 112);
  *(DerivedStorage + 112) = v5;
}

uint64_t UIControllerPostNotificationForRendererStoppedEvent()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t UIControllerPostNotificationForStartRecordingEvent()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t UIControllerPostNotificationForStopRecordingEvent()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t UIControllerPostNotificationForKeyFrameRequest()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t UIControllerPostNotificationForFPSSecureStopGeneratedEvent()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t UIControllerPostNotificationForUpdateDisplayInfo()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void UIControllerSendUpstreamMessage(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && (v4 = DerivedStorage, (v5 = *(DerivedStorage + 48)) != 0))
  {
    v6 = v5;
    objc_sync_enter(v6);
    v7 = *(v4 + 24);
    objc_sync_exit(v6);

    if (v7)
    {
      if (a2)
      {
        if (*v4 && (v8 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
        {
          v9 = v8;
          v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v14 = 0;
          v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:a2 format:200 options:0 error:&v14];
          v12 = v14;
          if (v11)
          {
            [v10 setObject:v11 forKey:*MEMORY[0x277CE9DD0]];
          }

          if (v12)
          {
            if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
            {
              UIControllerSendUpstreamMessage_cold_1();
            }
          }

          else
          {
            [*(v4 + 48) currentVideoSessionID];
            Int64 = CFNumberCreateInt64();
            v7(v9, Int64, v10);
            if (Int64)
            {
              CFRelease(Int64);
            }
          }

          CFRelease(v9);
        }

        else if (gLogCategory_AirPlayReceiverKit <= 60 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        UIControllerSendUpstreamMessage_cold_2();
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      UIControllerSendUpstreamMessage_cold_3();
    }
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    UIControllerSendUpstreamMessage_cold_4();
  }
}

uint64_t UIControllerCopyTLSInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  if (*DerivedStorage)
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v1)
    {
      if (gLogCategory_AirPlayReceiverKit <= 60 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        UIControllerCopyTLSInfo_cold_1();
      }

      return 0;
    }
  }

  else
  {
    v1 = 0;
  }

  v3 = DerivedStorage[4];
  if (v3)
  {
    v3(v1, 0, &v4);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v4;
}

void uiController_finalize()
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_finalize_cold_1();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 48);
  objc_sync_enter(v1);
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  objc_sync_exit(v1);

  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    *(DerivedStorage + 48) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 40) = 0;
  }

  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 88) = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t uiController_copyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, *MEMORY[0x277CE9E50]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE9E18]))
    {
      result = *(DerivedStorage + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CE9E28]))
      {
        v11 = MEMORY[0x277CBED28];
        if (!*(DerivedStorage + 16))
        {
          v11 = MEMORY[0x277CBED10];
        }
      }

      else
      {
        if (!CFEqual(a2, *MEMORY[0x277CE9E38]))
        {
          return 4294954509;
        }

        v12 = [*(DerivedStorage + 48) isActive];
        v11 = MEMORY[0x277CBED28];
        if (!v12)
        {
          v11 = MEMORY[0x277CBED10];
        }
      }

      result = *v11;
    }

    v13 = CFRetain(result);
    result = 0;
    *a4 = v13;
    return result;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = SBufConsumerCreate(Mutable);
  if (v8)
  {
    v9 = v8;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __uiController_copyProperty_block_invoke;
    v17[3] = &__block_descriptor_40_e31_v16__0__opaqueCMSampleBuffer__8l;
    v17[4] = DerivedStorage;
    SBufConsumerRegisterVideoSampleBufferCallbackForRendering(v8, v17);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __uiController_copyProperty_block_invoke_2;
    v16[3] = &__block_descriptor_40_e31_v16__0__opaqueCMSampleBuffer__8l;
    v16[4] = DerivedStorage;
    SBufConsumerRegisterAudioSampleBufferCallbackForRendering(v9, v16);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __uiController_copyProperty_block_invoke_3;
    v15[3] = &__block_descriptor_40_e5_v8__0l;
    v15[4] = DerivedStorage;
    SBufConsumerRegisterCallbackForDisconnect(v9, v15);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __uiController_copyProperty_block_invoke_4;
    v14[3] = &__block_descriptor_40_e25_i24__0____CFString__8_v16l;
    v14[4] = DerivedStorage;
    SBufConsumerRegisterCallbackForCopyProperty(v9, v14);
    *a4 = CFRetain(v9);
    CFRelease(v9);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  else
  {
    uiController_copyProperty_cold_1();
    return 4294960534;
  }
}

uint64_t uiController_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CE9E50]))
  {
    goto LABEL_2;
  }

  if (!CFEqual(a2, *MEMORY[0x277CE9E18]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE9E28]))
    {
      *(DerivedStorage + 16) = *MEMORY[0x277CBED28] == a3;
      goto LABEL_2;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9E48]))
    {
      *(DerivedStorage + 17) = *MEMORY[0x277CBED28] == a3;
      goto LABEL_2;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9E40]))
    {
      *(DerivedStorage + 18) = *MEMORY[0x277CBED28] == a3;
      goto LABEL_2;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9E08]))
    {
      if (*(DerivedStorage + 80) && *(DerivedStorage + 72))
      {
        if (*(DerivedStorage + 104))
        {
          uiController_setProperty_cold_1(DerivedStorage, v23, &v24, a3);
        }

        else
        {
          *(v25 + 6) = -6762;
          APSLogErrorAt();
        }
      }

      goto LABEL_2;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9E10]))
    {
      CFDictionaryGetDouble();
      v10 = v9;
      CFDictionaryGetDouble();
      if (*(DerivedStorage + 104))
      {
        v12 = *(DerivedStorage + 112);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __uiController_setProperty_block_invoke_2;
        block[3] = &unk_278C62DB8;
        block[4] = &v24;
        block[5] = DerivedStorage;
        block[6] = v10;
        block[7] = v11;
        dispatch_sync(v12, block);
      }

      goto LABEL_2;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9E60]))
    {
      if (!a3)
      {
        v8 = *(DerivedStorage + 40);
        *(DerivedStorage + 40) = 0;
LABEL_32:
        if (!v8)
        {
          goto LABEL_2;
        }

        goto LABEL_7;
      }

      v13 = CFGetTypeID(a3);
      if (v13 == APReceiverStatsCollectorGetTypeID())
      {
        v8 = *(DerivedStorage + 40);
        *(DerivedStorage + 40) = a3;
        CFRetain(a3);
        goto LABEL_32;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x277CE9E68]))
    {
      if (a3)
      {
        v14 = CFGetTypeID(a3);
        if (v14 == CFNumberGetTypeID())
        {
          if (*(DerivedStorage + 48))
          {
            valuePtr = 0;
            CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
            LODWORD(v15) = valuePtr;
            [*(DerivedStorage + 48) setMirroringVolume:v15];
          }

          goto LABEL_2;
        }
      }
    }

    else if (CFEqual(a2, *MEMORY[0x277CE9E58]))
    {
      if (a3)
      {
        v16 = *(DerivedStorage + 48);
        if (v16)
        {
          [v16 setSessionReceiverAddress:a3];
        }

        goto LABEL_2;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x277CE9E30]))
    {
      if (a3)
      {
        v17 = CFGetTypeID(a3);
        if (v17 == CFDataGetTypeID())
        {
          [*(DerivedStorage + 48) setEnsembleInfo:a3];
          goto LABEL_2;
        }
      }
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CE9E20]))
      {
        v19 = v25;
        v20 = -12787;
LABEL_47:
        *(v19 + 6) = v20;
        goto LABEL_2;
      }

      if (a3)
      {
        v18 = CFGetTypeID(a3);
        if (v18 == CFDictionaryGetTypeID())
        {
          [*(DerivedStorage + 48) setDemoDeviceInfo:a3];
          goto LABEL_2;
        }
      }
    }

    APSLogErrorAt();
    v19 = v25;
    v20 = -12780;
    goto LABEL_47;
  }

  v8 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v8)
  {
LABEL_7:
    CFRelease(v8);
  }

LABEL_2:
  v6 = *(v25 + 6);
  _Block_object_dispose(&v24, 8);
  return v6;
}

void *__uiController_copyProperty_block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    return [result stop];
  }

  return result;
}

uint64_t __uiController_copyProperty_block_invoke_4(uint64_t a1, CFTypeRef cf1, void *a3)
{
  if (CFEqual(cf1, @"FigVideoQueueStats"))
  {
    result = *(*(a1 + 32) + 48);
    if (result)
    {
      v7 = [result videoQueuePerformanceDictionary];
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __uiController_copyProperty_block_invoke_4_cold_1();
      }

      result = 0;
      *a3 = v7;
    }
  }

  else if (CFEqual(cf1, @"DoNotUseForAudioRendering"))
  {
    v8 = +[APRKStreamRenderingManager sharedInstance];
    v9 = [v8 optimizeAudioRenderingLatency];
    v10 = MEMORY[0x277CBED28];
    if (!v9)
    {
      v10 = MEMORY[0x277CBED10];
    }

    *a3 = CFRetain(*v10);

    return 0;
  }

  else
  {
    return 4294954509;
  }

  return result;
}

uint64_t __uiController_setProperty_block_invoke(void *a1)
{
  result = [*(a1[5] + 104) airplayUIUpdateAudioMetaData:a1[6]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t __uiController_setProperty_block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 40) + 104) airplayUIUpdateAudioProgress:*(a1 + 48) duration:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t uiController_showPIN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_showPIN_cold_1();
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
  v8 = +[APRKStreamRenderingManager sharedInstance];
  [v8 processShowGlobalPasscodePromptRequest:v6 withClientName:v7];

  return 0;
}

uint64_t uiController_hidePIN()
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_hidePIN_cold_1();
  }

  v0 = +[APRKStreamRenderingManager sharedInstance];
  [v0 processHideGlobalPasscodePromptRequest];

  return 0;
}

uint64_t uiController_showMessage()
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t uiController_startScreenPresentation(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_startScreenPresentation_cold_1();
  }

  v4 = CFDictionaryGetInt64() != 0;
  v5 = +[APRKStreamRenderingManager sharedInstance];
  [v5 setShouldForwardLayers:v4];

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = +[APRKStreamRenderingManager sharedInstance];
  if (([v9 shouldForwardLayers] & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = +[APRKStreamRenderingManager sharedInstance];
  if (([v10 useCALayerForMirroring] & 1) == 0)
  {

LABEL_12:
    goto LABEL_13;
  }

  v11 = [*(DerivedStorage + 48) mirroringLayer];

  if (v11)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      uiController_startScreenPresentation_cold_2((DerivedStorage + 48));
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9DF8], [*(DerivedStorage + 48) mirroringLayer]);
  }

LABEL_13:
  v12 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = *MEMORY[0x277CE9D88];
  v14 = [*(DerivedStorage + 48) HUDLayer];
  CFDictionarySetValue(v12, v13, v14);

  APReceiverStatsCollectorSetHUDOptions();
  CFRelease(v12);
  v15 = ++uiController_startScreenPresentation_uniqueScreenSessionID;
  CFDictionarySetInt64();
  if (a3)
  {
    *a3 = Mutable;
  }

  else
  {
    CFRelease(Mutable);
  }

  if (CFDictionaryGetInt64())
  {
    [*(DerivedStorage + 48) setIsProtectedMirroring:1];
  }

  [*(DerivedStorage + 48) processStartScreenPresentationWithSessionID:v15];
  return 0;
}

uint64_t uiController_stopScreenPresentation()
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_stopScreenPresentation_cold_1();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  APReceiverStatsCollectorSetHUDOptions();
  [*(DerivedStorage + 48) processStopScreenPresentationWithSessionID:CFDictionaryGetInt64()];
  return 0;
}

uint64_t uiController_startVideoPlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_startVideoPlayback_cold_1();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  if (a4 && (v10 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*DerivedStorage = v10) == 0))
  {
    uiController_startVideoPlayback_cold_2();
    return 4294960568;
  }

  else
  {
    v11 = *(DerivedStorage + 48);
    objc_sync_enter(v11);
    *(DerivedStorage + 24) = a2;
    *(DerivedStorage + 32) = a3;
    objc_sync_exit(v11);

    Int64 = CFDictionaryGetInt64();
    Value = CFDictionaryGetValue(a5, *MEMORY[0x277CE9DE8]);
    if (Value)
    {
      [*(DerivedStorage + 48) setReceiverNetworkClock:Value];
    }

    [*(DerivedStorage + 48) processStartVideoPlaybackRequestWithWithSessionID:Int64 version:2];
    return 0;
  }
}

uint64_t uiController_stopVideoPlayback()
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_stopVideoPlayback_cold_1();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ([*(DerivedStorage + 48) processStopVideoPlaybackRequestWithSessionID:CFDictionaryGetInt64()])
  {
    v1 = *(DerivedStorage + 48);
    objc_sync_enter(v1);
    *(DerivedStorage + 24) = 0;
    *(DerivedStorage + 32) = 0;
    objc_sync_exit(v1);
  }

  return 0;
}

uint64_t uiController_controlVideoPlayback(int a1, CFDictionaryRef theDict, void *a3)
{
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CE9DD0]);
  v6 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE9DF0]);
  if (Value)
  {
    v7 = v6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 48))
    {
      v9 = DerivedStorage;
      v17 = 0;
      v10 = [MEMORY[0x277CCAC58] propertyListWithData:Value options:0 format:0 error:&v17];
      Value = v17;
      if (Value || !v10)
      {
        if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          uiController_controlVideoPlayback_cold_1();
        }
      }

      else if (FigCFDictionaryGetInt32IfPresent())
      {
        v11 = *MEMORY[0x277CBED28];
        v12 = [*(v9 + 48) backingMediaPlayer];
        v13 = v12;
        if (v11 == v7)
        {
          v14 = [v12 processMessageWithIDAndDictionarySync:v10 messageSessionID:0];

          if (a3)
          {
            *a3 = v14;
          }
        }

        else
        {
          [v12 processMessageWithIDAndDictionaryAsync:v10 messageSessionID:0];
        }
      }

      else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        uiController_controlVideoPlayback_cold_2();
      }
    }

    else
    {
      Value = 0;
    }
  }

  v15 = [Value code];

  return v15;
}

uint64_t uiController_startSession(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = +[APRKStreamRenderingManager sharedInstance];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v4 createStreamRendererWithUniqueID:v5 clientName:*(v3 + 8) UIController:a1];
  v7 = *(v3 + 48);
  *(v3 + 48) = v6;

  v8 = *(v3 + 48);
  if (v8)
  {
    [v8 setIsWiredLink:*(v3 + 17)];
    [*(v3 + 48) setIsP2PWiFi:*(v3 + 18)];
    return 0;
  }

  uiController_startSession_cold_1();
  return 4294960534;
}

uint64_t uiController_stopSession()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    v1 = DerivedStorage;
    v2 = +[APRKStreamRenderingManager sharedInstance];
    v3 = [*(v1 + 48) uniqueID];
    [v2 removeRendererWithUniqueID:v3];
  }

  return 0;
}

uint64_t uiController_startVideoPlaybackV1(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, CFMutableDictionaryRef *a5)
{
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v57 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    APSLogErrorAt();
    Mutable = 0;
    v37 = -6705;
    goto LABEL_108;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 72) || *(DerivedStorage + 80))
  {
    if (!*(DerivedStorage + 104))
    {
      *(v59 + 6) = -6762;
      APSLogErrorAt();
      Mutable = 0;
      goto LABEL_90;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    v9 = *(v7 + 112);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __uiController_startVideoPlaybackV1_block_invoke;
    block[3] = &unk_278C62E08;
    block[4] = &v58;
    block[5] = v7;
    block[6] = Mutable;
    dispatch_sync(v9, block);
    if (*(v59 + 6))
    {
      goto LABEL_109;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      v42 = *(v7 + 80);
      v44 = *(v7 + 72);
      LogPrintF();
    }

    [*(v7 + 48) processStopVideoPlaybackRequestWithSessionID:{*(v7 + 80), v42, v44}];
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    *(v7 + 84) = 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a4);
  Mutable = MutableCopy;
  if (!MutableCopy)
  {
    APSLogErrorAt();
    Mutable = 0;
    v37 = -6728;
    goto LABEL_108;
  }

  Value = CFDictionaryGetValue(MutableCopy, @"Content-Location");
  v12 = Value;
  if (!Value || (v13 = CFGetTypeID(Value), v13 != CFStringGetTypeID()))
  {
    APSLogErrorAt();
    v37 = -6756;
    goto LABEL_108;
  }

  v14 = CFDictionaryGetValue(Mutable, @"cookies");
  v15 = v14;
  if (!v14)
  {
    goto LABEL_35;
  }

  v16 = CFGetTypeID(v14);
  if (v16 != CFArrayGetTypeID())
  {
    goto LABEL_35;
  }

  if (!_CFHTTPCookieStorageGetDefault())
  {
    v41 = -6700;
    goto LABEL_101;
  }

  v17 = CFURLCreateWithString(0, v12, 0);
  if (!v17)
  {
    v41 = -6700;
    goto LABEL_101;
  }

  v18 = CFHTTPCookieStorageCopyCookiesForURL();
  CFRelease(v17);
  if (v18)
  {
    Count = CFArrayGetCount(v18);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(v18, i);
        CFHTTPCookieStorageDeleteCookie();
      }
    }

    CFRelease(v18);
  }

  v21 = CFArrayGetCount(v15);
  if (v21 >= 1)
  {
    v22 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, v22);
      if (!ValueAtIndex || (v24 = CFGetTypeID(ValueAtIndex), v24 != CFDictionaryGetTypeID()))
      {
        v41 = -6756;
        goto LABEL_101;
      }

      v25 = CFHTTPCookieCreateWithProperties();
      if (!v25)
      {
        break;
      }

      CFHTTPCookieStorageSetCookie();
      CFRelease(v25);
      if (v21 == ++v22)
      {
        goto LABEL_31;
      }
    }

    v41 = -6700;
LABEL_101:
    APSLogErrorAt();
    *(v59 + 6) = v41;
    if (gLogCategory_AirPlayReceiverKit <= 60 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

LABEL_31:
  *(v59 + 6) = 0;
  if (gLogCategory_AirPlayReceiverKit <= 20 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
LABEL_33:
    LogPrintF();
  }

LABEL_35:
  Int64 = CFDictionaryGetInt64();
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v28 = CFDictionaryGetTypedValue();
  if (CFDictionaryGetInt64() || v28 == @"music")
  {
    v29 = 1;
  }

  else if (v28)
  {
    v29 = CFEqual(v28, @"music") != 0;
  }

  else
  {
    v29 = 0;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!TypedValue || !CFEqual(@"default", TypedValue) && !CFEqual(@"moviePlayback", TypedValue))
  {
    if (!v29 && (!v28 || v28 == @"movie" || CFEqual(v28, @"movie") || v28 == @"tvshow" || CFEqual(v28, @"tvshow")))
    {
      TypedValue = @"moviePlayback";
    }

    else
    {
      TypedValue = @"default";
    }
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    v46 = a4;
    LogPrintF();
  }

  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 72) = Int64;
  do
  {
    add = atomic_fetch_add(&uiController_newVideoV1SessionID_sessionID, 1u);
  }

  while (!add);
  v57 = add;
  *(v7 + 80) = add;
  *(v7 + 84) = v29;
  v31 = *(v7 + 88);
  CFRetain(TypedValue);
  *(v7 + 88) = TypedValue;
  if (v31)
  {
    CFRelease(v31);
  }

  CFDictionarySetNumber();
  cf = 0;
  v43 = @"audioMode";
  v45 = *(v7 + 88);
  Formatted = CFPropertyListCreateFormatted();
  *(v59 + 6) = Formatted;
  if (Formatted)
  {
LABEL_109:
    APSLogErrorAt();
    goto LABEL_90;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (cf)
  {
    CFRelease(cf);
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    v43 = Mutable;
    LogPrintF();
  }

  if (!*(v7 + 104))
  {
    *(v59 + 6) = -6762;
    APSLogErrorAt();
    goto LABEL_90;
  }

  v33 = *(v7 + 112);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __uiController_startVideoPlaybackV1_block_invoke_2;
  v50[3] = &unk_278C62E70;
  v50[6] = v7;
  v50[7] = Mutable;
  v50[4] = &v58;
  v50[5] = &v53;
  dispatch_sync(v33, v50);
  if (!*(v59 + 6))
  {
    v34 = v54[3];
    if (v34)
    {
      v35 = CFDictionaryCreateMutableCopy(0, 0, v34);
      CFRelease(v54[3]);
      if (v35)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v35 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v35)
      {
LABEL_74:
        CFDictionarySetNumber();
        if (a5)
        {
          *a5 = v35;
          v36 = gLogCategory_AirPlayReceiverKit;
          if (gLogCategory_AirPlayReceiverKit > 30)
          {
            goto LABEL_83;
          }

          if (gLogCategory_AirPlayReceiverKit == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_82;
            }

            v35 = *a5;
          }

          v43 = v35;
          LogPrintF();
        }

        else
        {
          CFRelease(v35);
        }

LABEL_82:
        v36 = gLogCategory_AirPlayReceiverKit;
LABEL_83:
        if (v36 <= 50 && (v36 != -1 || _LogCategory_Initialize()))
        {
          v43 = v57;
          v45 = Int64;
          LogPrintF();
        }

        v38 = CFDictionaryGetInt64() != 0;
        if (*(v7 + 96) != v38)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          *(v7 + 96) = v38;
        }

        [*(v7 + 48) processStartVideoPlaybackRequestWithWithSessionID:*(v7 + 80) version:{1, v43, v45, v46}];
        goto LABEL_90;
      }
    }

    APSLogErrorAt();
    v37 = -6700;
LABEL_108:
    *(v59 + 6) = v37;
  }

LABEL_90:
  if (*(v59 + 6) && gLogCategory_AirPlayReceiverKit <= 60 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v39 = *(v59 + 6);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v58, 8);
  return v39;
}

void sub_23EAF9458(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t uiController_stopVideoPlaybackV1(uint64_t a1, __CFString *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    v4 = "\n";
    if (!a2)
    {
      v4 = " ";
    }

    v5 = @"<<no params>>";
    if (a2)
    {
      v5 = a2;
    }

    v10 = v4;
    v11 = v5;
    LogPrintF();
  }

  if (a2)
  {
    CFDictionaryGetInt64();
    Int64 = CFDictionaryGetInt64();
  }

  else
  {
    Int64 = 0;
  }

  if (Int64 == *(DerivedStorage + 80))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      v10 = a2;
      LogPrintF();
    }

    if (*(DerivedStorage + 104))
    {
      v7 = *(DerivedStorage + 112);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __uiController_stopVideoPlaybackV1_block_invoke;
      block[3] = &unk_278C62E08;
      block[4] = &v13;
      block[5] = DerivedStorage;
      block[6] = a2;
      dispatch_sync(v7, block);
      if (*(v14 + 6))
      {
        APSLogErrorAt();
      }

      else
      {
        if (*(DerivedStorage + 96))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          *(DerivedStorage + 96) = 0;
        }

        if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          v10 = Int64;
          v11 = *(DerivedStorage + 72);
          LogPrintF();
        }

        [*(DerivedStorage + 48) processStopVideoPlaybackRequestWithSessionID:{*(DerivedStorage + 80), v10, v11}];
        *(DerivedStorage + 72) = 0;
        *(DerivedStorage + 80) = 0;
        *(DerivedStorage + 84) = 0;
      }
    }

    else
    {
      *(v14 + 6) = -6762;
      APSLogErrorAt();
    }
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(v14 + 6) = 0;
  }

  v8 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t uiController_controlVideoPlaybackV1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 104))
  {
    v8 = *(DerivedStorage + 112);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __uiController_controlVideoPlaybackV1_block_invoke;
    block[3] = &unk_278C62E98;
    block[6] = DerivedStorage;
    block[7] = a2;
    block[8] = a3;
    block[4] = &v16;
    block[5] = &v12;
    dispatch_sync(v8, block);
    if (!*(v17 + 6))
    {
      *a4 = v13[3];
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  else
  {
    *(v17 + 6) = -6762;
    APSLogErrorAt();
  }

  v9 = *(v17 + 6);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_23EAF9A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t uiController_copyPropertyForQualifier(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 104))
  {
    v8 = *(DerivedStorage + 112);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __uiController_copyPropertyForQualifier_block_invoke;
    block[3] = &unk_278C62E98;
    block[6] = DerivedStorage;
    block[7] = a2;
    block[8] = a3;
    block[4] = &v16;
    block[5] = &v12;
    dispatch_sync(v8, block);
    v9 = *(v17 + 6);
    if (!v9)
    {
      *a4 = v13[3];
    }
  }

  else
  {
    *(v17 + 6) = -6762;
    APSLogErrorAt();
    v9 = *(v17 + 6);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_23EAF9B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t uiController_setPropertyWithQualifier(uint64_t a1, const __CFString *a2, uint64_t a3, const void *a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFStringCompare(a2, @"rate", 0) == kCFCompareEqualTo)
  {
    CFGetDouble();
    *&v9 = v9;
    if (*&v9 == 1.0 && *(DerivedStorage + 88))
    {
      if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      cf = 0;
      Formatted = CFPropertyListCreateFormatted();
      *(v18 + 6) = Formatted;
      if (Formatted)
      {
        goto LABEL_29;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (cf)
      {
        CFRelease(cf);
      }
    }

LABEL_21:
    if (*(DerivedStorage + 104))
    {
      v11 = *(DerivedStorage + 112);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __uiController_setPropertyWithQualifier_block_invoke;
      block[3] = &unk_278C62EC0;
      block[4] = &v17;
      block[5] = DerivedStorage;
      block[6] = a2;
      block[7] = a3;
      block[8] = a4;
      dispatch_sync(v11, block);
    }

    else
    {
      *(v18 + 6) = -6762;
      APSLogErrorAt();
    }

    goto LABEL_23;
  }

  if (CFStringCompare(a2, @"audioMode", 0))
  {
    goto LABEL_21;
  }

  if (*(DerivedStorage + 80))
  {
    v8 = *(DerivedStorage + 88);
    if (a4)
    {
      CFRetain(a4);
    }

    *(DerivedStorage + 88) = a4;
    if (v8)
    {
      CFRelease(v8);
      a4 = *(DerivedStorage + 88);
    }

    if (a4)
    {
      if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      cf = 0;
      v14 = CFPropertyListCreateFormatted();
      *(v18 + 6) = v14;
      if (!v14)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_23;
      }

LABEL_29:
      APSLogErrorAt();
    }
  }

LABEL_23:
  v12 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v12;
}

uint64_t uiController_startAudioSession()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_startAudioSession_cold_1();
  }

  [*(DerivedStorage + 48) processStartAudioSessionRequestWithSessionID:CFDictionaryGetInt64() isScreenAudio:Int64 != 0];
  return 0;
}

uint64_t uiController_stopAudioSession()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_stopAudioSession_cold_1();
  }

  [*(DerivedStorage + 48) processStopAudioSessionRequestWithSessionID:CFDictionaryGetInt64()];
  return 0;
}

uint64_t uiController_isAllowedToProceed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_isAllowedToProceed_cold_1();
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v6 = +[APRKStreamRenderingManager sharedInstance];
  v7 = [v6 isAllowedToProceedForClientWithName:v5 clientID:a3];

  return v7;
}

uint64_t uiController_handleSenderUIEventsChannelIncomingMessage(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uiController_handleSenderUIEventsChannelIncomingMessage_cold_1();
  }

  [*(DerivedStorage + 48) processSenderUIEvent:a2];
  return 0;
}

uint64_t __uiController_startVideoPlaybackV1_block_invoke(void *a1)
{
  result = [*(a1[5] + 104) airplayUIStopVideo:a1[6]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void __uiController_startVideoPlaybackV1_block_invoke_2(void *a1)
{
  v2 = a1[7];
  v3 = *(a1[6] + 104);
  v7 = 0;
  v4 = [v3 airplayUIStartVideo:v2 outputParams:&v7];
  v5 = v7;
  *(*(a1[4] + 8) + 24) = v4;
  *(*(a1[5] + 8) + 24) = v5;
  v6 = *(*(a1[5] + 8) + 24);
  if (v6)
  {
    CFRetain(v6);
  }
}

uint64_t __uiController_stopVideoPlaybackV1_block_invoke(void *a1)
{
  result = [*(a1[5] + 104) airplayUIStopVideo:a1[6]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void __uiController_controlVideoPlaybackV1_block_invoke(void *a1)
{
  v2 = a1[7];
  v3 = *(a1[6] + 104);
  v4 = a1[8];
  v8 = 0;
  v5 = [v3 airplayUIPerform:v2 inputParams:v4 outputParams:&v8];
  v6 = v8;
  *(*(a1[4] + 8) + 24) = v5;
  *(*(a1[5] + 8) + 24) = v6;
  v7 = *(*(a1[5] + 8) + 24);
  if (v7)
  {
    CFRetain(v7);
  }
}

uint64_t __uiController_copyPropertyForQualifier_block_invoke(void *a1)
{
  v2 = [*(a1[6] + 104) airplayUIGetProperty:a1[7] qualifier:a1[8] error:*(a1[4] + 8) + 24];
  *(*(a1[5] + 8) + 24) = v2;
  v3 = *(*(a1[5] + 8) + 24);
  if (v3)
  {
    v5 = v2;
    v3 = CFRetain(v3);
    v2 = v5;
  }

  return MEMORY[0x2821F96F8](v3, v2);
}

uint64_t __uiController_setPropertyWithQualifier_block_invoke(void *a1)
{
  result = [*(a1[5] + 104) airplayUISetProperty:a1[6] qualifier:a1[7] value:a1[8]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void uiController_relayCommonParams(const __CFDictionary *a1, __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"sessionID");
  if (Value)
  {
    CFDictionarySetValue(a2, @"sessionID", Value);
  }

  v5 = *MEMORY[0x277CC0E58];
  v6 = CFDictionaryGetValue(a1, *MEMORY[0x277CC0E58]);
  if (v6)
  {

    CFDictionarySetValue(a2, v5, v6);
  }
}

void __uiController_handleDateRangeEventV1_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 propertyList];
  if (v3)
  {
    CFArrayAppendValue(*(a1 + 32), v3);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __uiController_handleDateRangeEventV1_block_invoke_cold_1();
  }
}

void _HandleClearScreen(uint64_t a1, void *a2, const void *a3)
{
  v4 = a2;
  if (v4 && CFEqual(a3, *MEMORY[0x277CE9D90]))
  {
    if (gLogCategory_AirPlayReceiverKit <= 40 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = v4[17];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___HandleClearScreen_block_invoke;
    block[3] = &unk_278C626E8;
    v7 = v4;
    dispatch_sync(v5, block);
  }
}

uint64_t __sbufConsumer_disconnect_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8))
  {
    *(v1 + 8) = 0;
    *(v1 + 10) = 0;
    result = *(v1 + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void UIControllerCreate_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_8();
  }

  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }
}

void uiController_setProperty_cold_1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 112);
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __uiController_setProperty_block_invoke;
  a2[3] = &unk_278C62E08;
  a2[4] = a3;
  a2[5] = a1;
  a2[6] = a4;
  dispatch_sync(v4, a2);
}

void uiController_startScreenPresentation_cold_2(id *a1)
{
  v1 = [*a1 mirroringLayer];
  LogPrintF();
}