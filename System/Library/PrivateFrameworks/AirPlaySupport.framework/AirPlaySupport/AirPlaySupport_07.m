uint64_t __APSRTPJitterBufferSimRead_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 10)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v3 = *(v1 + 40);
      v4 = *(v1 + 48);
      v2 = *(*(v1 + 32) + 16);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t __APSRTPJitterBufferSimRead_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(v1 + 32);
      v4 = (*(v2 + 136) * *(v1 + 40));
      v3 = *(v2 + 16);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t __APSRTPJitterBufferSimRead_block_invoke_3(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 10)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(v1 + 32);
      v6 = *(v1 + 48);
      v7 = *(v2 + 228);
      v4 = *(v1 + 40);
      v5 = *(v1 + 44);
      v3 = *(v2 + 16);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t __APSRTPJitterBufferSimRead_block_invoke_4(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSimMaxFreq <= 50)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSimMaxFreq != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(v1 + 32);
      v5 = *(v1 + 44);
      v6 = *(v1 + 48);
      v3 = *(v2 + 16);
      v4 = 1000 * *(v1 + 40) / *(v2 + 112);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APSSimulatedReceiverCreate(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4)
{
  v20 = 0;
  if (APSSimulatedReceiverGetTypeID_once != -1)
  {
    dispatch_once(&APSSimulatedReceiverGetTypeID_once, &__block_literal_global_2549);
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (!Instance)
  {
    APSLogErrorAt(0);
    v9 = 0;
LABEL_18:
    v19 = -6728;
    goto LABEL_20;
  }

  *(Instance + 96) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  v9 = CFStringCreateF();
  v10 = *(a3 + 32);
  v11 = *(a3 + 16);
  *(v8 + 24) = *a3;
  *(v8 + 40) = v11;
  *(v8 + 56) = v10;
  *(v8 + 88) = mach_absolute_time();
  *(v8 + 96) = 0;
  *(v8 + 100) = 1;
  v12 = *a3;
  *(v8 + 80) = *a3;
  *(v8 + 16) = APSRTPJitterBufferSimCreate(*MEMORY[0x277CBECE8], a2, a3, (a4 * 1000.0 / v12), 1, v9, &v20);
  if (v20)
  {
    APSLogErrorAt(v20);
LABEL_8:
    if (!v20)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v13 = FigDispatchQueueCreateWithPriority();
  *(v8 + 72) = v13;
  if (!v13)
  {
    APSLogErrorAt(0);
    goto LABEL_18;
  }

  v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v13);
  *(v8 + 64) = v14;
  if (v14)
  {
    dispatch_set_context(v14, v8);
    dispatch_source_set_event_handler_f(*(v8 + 64), simulatedReceiverReadDataBlock);
    v15 = *(v8 + 64);
    v16 = dispatch_time(0, 10000000);
    dispatch_source_set_timer(v15, v16, 0x989680uLL, 0x1F4uLL);
    dispatch_resume(*(v8 + 64));
    goto LABEL_8;
  }

  APSLogErrorAt(0);
  v19 = -6718;
LABEL_20:
  v20 = v19;
LABEL_9:
  v17 = *(v8 + 16);
  if (v17)
  {
    CFRelease(v17);
    *(v8 + 16) = 0;
  }

  CFRelease(v8);
  v8 = 0;
LABEL_12:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

uint64_t simulatedReceiverReadDataBlock(uint64_t result)
{
  if (*(result + 100))
  {
    v1 = result;
    v2 = mach_absolute_time();
    v3 = *(v1 + 88);
    UpTicksToSecondsF();
    v5 = (v4 * *(v1 + 80));
    result = APSRTPJitterBufferSimRead(*(v1 + 16), *(v1 + 96), *(v1 + 48) * v5);
    *(v1 + 88) = v2;
    *(v1 + 96) += v5;
  }

  return result;
}

uint64_t __APSSimulatedReceiverGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APSSimulatedReceiverGetTypeID_typeID = result;
  return result;
}

void _APSSimulatedReceiverFinalize(uint64_t a1)
{
  v1 = *(a1 + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___APSSimulatedReceiverFinalize_block_invoke;
  block[3] = &__block_descriptor_tmp_6;
  block[4] = a1;
  dispatch_sync(v1, block);
}

uint64_t APSSimulatedReceiverWritePacket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  EmptyPacket = APSRTPJitterBufferSimGetEmptyPacket(*(a1 + 16), &v9);
  v7 = v9;
  if (v9)
  {
    goto LABEL_7;
  }

  if (!EmptyPacket)
  {
    v7 = 0;
LABEL_7:
    APSLogErrorAt(v7);
    return v9;
  }

  EmptyPacket[1] = *a2;
  *(EmptyPacket + 1) = *(a2 + 2);
  *(EmptyPacket + 2) = a3;
  APSRTPJitterBufferSimEnqueuePacket(*(a1 + 16), EmptyPacket);
  return v9;
}

void APSSimulatedReceiverUpdateReadSampleRate(uint64_t a1, double a2)
{
  v2 = *(a1 + 72);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __APSSimulatedReceiverUpdateReadSampleRate_block_invoke;
  v3[3] = &__block_descriptor_tmp_2555;
  v3[4] = a1;
  *&v3[5] = a2;
  dispatch_async(v2, v3);
}

double __APSSimulatedReceiverUpdateReadSampleRate_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 80) = result;
  return result;
}

uint64_t APSPSGDataSourceCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (APSPSGDataSourceGetClassID_sRegisterOnce != -1)
    {
      dispatch_once_f(&APSPSGDataSourceGetClassID_sRegisterOnce, &APSPSGDataSourceGetClassID_sClassID, psgDataSource_registerBaseClass);
    }

    v3 = CMDerivedObjectCreate();
    if (v3)
    {
      v7 = v3;
      APSLogErrorAt(v3);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = -1;
      v5 = dispatch_queue_create("com.apple.airplay.APSPSGDataSource.queue", 0);
      *(DerivedStorage + 32) = v5;
      if (v5 && (v6 = dispatch_queue_create("com.apple.airplay.APSPSGDataSource.notificationQueue", 0), (*(DerivedStorage + 8) = v6) != 0))
      {
        if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v7 = 0;
        *a2 = 0;
      }

      else
      {
        APSLogErrorAt(0);
        return 4294960568;
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v7;
}

uint64_t dataSource_Stop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage != -1)
  {
    notify_cancel(*DerivedStorage);
    *DerivedStorage = -1;
  }

  return 0;
}

uint64_t dataSource_Start(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __dataSource_Start_block_invoke;
  handler[3] = &__block_descriptor_40_e8_v12__0i8l;
  handler[4] = a1;
  notify_register_dispatch("com.apple.airplay.prefsChanged", DerivedStorage, v3, handler);
  v4 = *(DerivedStorage + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __dataSource_Start_block_invoke_2;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = a1;
  dispatch_sync(v4, v6);
  return 0;
}

void dataSource_updateDevicePSGInfos(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = APSSettingsCopyKeys(0);
    if (v6)
    {
      v7 = v6;
      v8 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v8)
      {
        CFArrayGetCount(v7);
        CFArrayApplyBlock();
        CFDictionaryApplyBlock();
        v9 = DerivedStorage[3];
        v10 = v26[3];
        if (!FigCFEqual())
        {
          if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
          {
            v18 = DerivedStorage[3];
            v20 = v26[3];
            LogPrintF();
          }

          v11 = DerivedStorage[3];
          v12 = v26[3];
          if (v12)
          {
            CFRetain(v26[3]);
          }

          DerivedStorage[3] = v12;
          if (v11)
          {
            CFRelease(v11);
          }
        }

        v13 = DerivedStorage[2];
        if (!FigCFEqual())
        {
          if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
          {
            v19 = DerivedStorage[2];
            LogPrintF();
          }

          v14 = DerivedStorage[2];
          CFRetain(Mutable);
          DerivedStorage[2] = Mutable;
          if (v14)
          {
            CFRelease(v14);
          }

          if (a2)
          {
            v15 = DerivedStorage[1];
            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
          }
        }
      }

      else
      {
        APSLogErrorAt(0);
      }

      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
    APSLogErrorAt(0);
    v8 = 0;
  }

  v16 = v22[3];
  if (v16)
  {
    CFRelease(v16);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v17 = v26[3];
  if (v17)
  {
    CFRelease(v17);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
}

void sub_2223247FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void __dataSource_updateDevicePSGInfos_block_invoke(uint64_t a1, CFStringRef theString)
{
  if (!CFStringHasPrefix(theString, @"PSGDataSource::PSGInfo::"))
  {
    return;
  }

  v4 = *MEMORY[0x277CBECE8];
  Length = CFStringGetLength(theString);
  MutableCopy = CFStringCreateMutableCopy(v4, Length, theString);
  if (!MutableCopy)
  {

    APSLogErrorAt(0);
    return;
  }

  v7 = MutableCopy;
  v25.length = CFStringGetLength(@"PSGDataSource::PSGInfo::");
  v25.location = 0;
  CFStringReplace(v7, v25, &stru_28358B348);
  v8 = APSSettingsCopyValueEx(theString, 0, 0);
  if (!v8)
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSPSGDataSource <= 90 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
    {
      v23 = *(a1 + 56);
      LogPrintF();
    }

    v22 = v7;
    goto LABEL_36;
  }

  v9 = v8;
  v10 = CFDictionaryCreateMutableCopy(v4, 0, v8);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_30;
  }

  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    Value = CFDictionaryGetValue(v10, @"PGLeaderUUID");
    if (Value)
    {
      v13 = Value;
      v14 = CFStringGetLength(Value);
      *(*(*(a1 + 32) + 8) + 24) = CFStringCreateMutableCopy(v4, v14, v13);
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
LABEL_30:
        APSLogErrorAt(0);
        goto LABEL_31;
      }
    }

    else
    {
      if (CFDictionaryGetInt64())
      {
        v15 = CFStringGetLength(v7);
        *(*(*(a1 + 32) + 8) + 24) = CFStringCreateMutableCopy(v4, v15, v7);
        v16 = *(*(*(a1 + 32) + 8) + 24);
        if (!v16)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v16 = *(*(*(a1 + 32) + 8) + 24);
        if (!v16)
        {
          goto LABEL_14;
        }
      }

      CFDictionarySetValue(v11, @"PGLeaderUUID", v16);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

LABEL_14:
  if (!CFDictionaryContainsKey(v11, @"IsLocalDevice"))
  {
    CFDictionarySetValue(v11, @"IsLocalDevice", *MEMORY[0x277CBED10]);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  CFDictionaryGetValue(v11, @"PGUUID");
  v17 = *(a1 + 64);
  CFDictionaryGetInt64();
  v18 = *(a1 + 64);
  CFDictionarySetInt64();
  CFDictionarySetValue(*(a1 + 72), v7, v11);
  if (CFDictionaryGetInt64())
  {
    *(*(*(a1 + 48) + 8) + 24) = CFDictionaryCreateMutableCopy(v4, 0, v9);
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_30;
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 24))
  {
LABEL_31:
    v20 = 0;
    goto LABEL_32;
  }

  v19 = CFStringCreateF();
  v20 = v19;
  if (v19)
  {
    if (CFEqual(v19, @"wirelessdisplay_enable_timestamps_diagnostic"))
    {
      v21 = @"com.apple.coremedia";
    }

    else
    {
      v21 = @"com.apple.airplay";
    }

    CFPreferencesSetAppValue(v20, v11, v21);
  }

  else
  {
    APSLogErrorAt(0);
  }

LABEL_32:
  CFRelease(v7);
  CFRelease(v9);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v20)
  {
    v22 = v20;
LABEL_36:

    CFRelease(v22);
  }
}

uint64_t __dataSource_updateDevicePSGInfos_block_invoke_2(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  CFDictionaryGetValue(theDict, @"PGUUID");
  v4 = *(a1 + 32);

  return FigCFDictionarySetValueFromKeyInDict();
}

uint64_t dataSource_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a3)
  {
    v7 = *(DerivedStorage + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __dataSource_SetProperty_block_invoke;
    block[3] = &unk_2784A3CE0;
    block[4] = &v11;
    block[5] = a2;
    block[6] = a1;
    block[7] = a3;
    block[8] = DerivedStorage;
    dispatch_sync(v7, block);
    v8 = *(v12 + 6);
  }

  else
  {
    APSLogErrorAt(0);
    v8 = 4294960591;
    *(v12 + 6) = -6705;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t dataSource_SetDevicePSGInfoInternal(uint64_t a1, const void *a2)
{
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFDictionaryCopyArrayOfKeys();
  if (!v3)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v4 = v3;
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  v5 = APSSettingsCopyKeys(0);
  if (!v5)
  {
LABEL_46:
    v13 = 0;
LABEL_50:
    if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_52;
    }

    goto LABEL_56;
  }

  for (i = 0; i < CFArrayGetCount(v5); ++i)
  {
    CFStringGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    if (CFStringHasPrefix(TypedValueAtIndex, @"PSGDataSource::PSGInfo::"))
    {
      if (CFEqual(TypedValueAtIndex, @"wirelessdisplay_enable_timestamps_diagnostic"))
      {
        v8 = @"com.apple.coremedia";
      }

      else
      {
        v8 = @"com.apple.airplay";
      }

      CFPreferencesSetAppValue(TypedValueAtIndex, 0, v8);
      v22 = 0;
    }
  }

  v9 = 0;
  v10 = *MEMORY[0x277CBECE8];
  while (1)
  {
    if (v9 >= CFArrayGetCount(v4))
    {
      v19 = *(DerivedStorage + 16);
      if (a2)
      {
        CFRetain(a2);
      }

      *(DerivedStorage + 16) = a2;
      if (v19)
      {
        CFRelease(v19);
      }

      goto LABEL_46;
    }

    CFStringGetTypeID();
    v11 = CFArrayGetTypedValueAtIndex();
    Value = CFDictionaryGetValue(a2, v11);
    v13 = CFStringCreateF();
    if (v11)
    {
      break;
    }

    v14 = *(DerivedStorage + 16);
    if (v14 && CFDictionaryContainsKey(v14, v13))
    {
      v15 = CFEqual(v13, @"wirelessdisplay_enable_timestamps_diagnostic") ? @"com.apple.coremedia" : @"com.apple.airplay";
      CFPreferencesSetAppValue(v13, 0, v15);
      v22 = 0;
      if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    v17 = 0;
    if (v13)
    {
LABEL_35:
      CFRelease(v13);
    }

LABEL_36:
    if (v17)
    {
      CFRelease(v17);
    }

    ++v9;
  }

  if (!CFDictionaryGetValue(Value, @"PGUUID") || !CFDictionaryGetValue(Value, @"PGName") || !CFDictionaryGetValue(Value, @"PGType") || !CFDictionaryGetValue(Value, @"PGMemberID"))
  {
    APSLogErrorAt(0);
    goto LABEL_50;
  }

  if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, Value);
  if (MutableCopy)
  {
    v17 = MutableCopy;
    if (CFEqual(v13, @"wirelessdisplay_enable_timestamps_diagnostic"))
    {
      v18 = @"com.apple.coremedia";
    }

    else
    {
      v18 = @"com.apple.airplay";
    }

    CFPreferencesSetAppValue(v13, v17, v18);
    v22 = 0;
    if (v13)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  APSLogErrorAt(0);
  v22 = -6728;
  if (gLogCategory_APSPSGDataSource > 90 || gLogCategory_APSPSGDataSource == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_56;
  }

LABEL_52:
  LogPrintF();
LABEL_56:
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  notify_post("com.apple.airplay.prefsChanged");
  if (v13)
  {
    CFRelease(v13);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(v4);
  return v22;
}

uint64_t dataSource_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a4)
  {
    v7 = *(DerivedStorage + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __dataSource_CopyProperty_block_invoke;
    v10[3] = &unk_2784A3CB8;
    v10[6] = a4;
    v10[7] = DerivedStorage;
    v10[4] = &v11;
    v10[5] = a2;
    dispatch_sync(v7, v10);
    v8 = *(v12 + 6);
  }

  else
  {
    APSLogErrorAt(0);
    v8 = 4294960591;
    *(v12 + 6) = -6705;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

void dataSource_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dataSource_Stop();
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 32) = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t APSPSGDataSourceSetDevicePSGInfo(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APSPSGDataSourceSetDevicePSGInfo_block_invoke;
  block[3] = &unk_2784A3C80;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_2223256F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APSPSGDataSourceSetDevicePSGInfo_block_invoke(uint64_t a1)
{
  result = dataSource_SetDevicePSGInfoInternal(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

const void *APSPSGDataSourceCopyDevicePSGInfo(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (a2 && (v2 = CFStringCreateF()) != 0)
  {
    v3 = v2;
    CFPreferencesAppSynchronize(@"com.apple.airplay");
    CFPreferencesAppSynchronize(@"com.apple.coremedia");
    TypeID = CFDictionaryGetTypeID();
    v5 = APSSettingsCopyValueEx(v3, TypeID, &v8);
    v6 = v5;
    if (v8)
    {
      if (!v5)
      {
        APSLogErrorAt(0);
        v8 = -6727;
      }
    }

    else if (gLogCategory_APSPSGDataSource <= 90 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRelease(v3);
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v6;
}

uint64_t APSPSGDataSourceGetShared(void *a1)
{
  if (APSPSGDataSourceGetShared_once != -1)
  {
    dispatch_once(&APSPSGDataSourceGetShared_once, &__block_literal_global_2585);
  }

  *a1 = APSPSGDataSourceGetShared_psgDataSource;
  return APSPSGDataSourceGetShared_err;
}

uint64_t __APSPSGDataSourceGetShared_block_invoke()
{
  result = APSPSGDataSourceCreate(*MEMORY[0x277CBECE8], &APSPSGDataSourceGetShared_psgDataSource);
  APSPSGDataSourceGetShared_err = result;
  if (!result)
  {
    v1 = APSPSGDataSourceGetShared_psgDataSource;
    VTable = CMBaseObjectGetVTable();
    v3 = *(*(VTable + 16) + 8);
    if (v3)
    {
      v4 = *(VTable + 16) + 8;
      result = v3(v1);
      APSPSGDataSourceGetShared_err = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = 4294954514;
      APSPSGDataSourceGetShared_err = -12782;
    }
  }

  return APSLogErrorAt(result);
}

uint64_t APSCFArrayGetEmpty()
{
  if (APSCFArrayGetEmpty_sAPSCFArrayEmptyOnce != -1)
  {
    dispatch_once(&APSCFArrayGetEmpty_sAPSCFArrayEmptyOnce, &__block_literal_global_2589);
  }

  return APSCFArrayGetEmpty_sAPSCFArrayEmpty;
}

CFArrayRef __APSCFArrayGetEmpty_block_invoke()
{
  result = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
  APSCFArrayGetEmpty_sAPSCFArrayEmpty = result;
  return result;
}

uint64_t APSCFArraySetUInt64AtIndex(__CFArray *a1, CFIndex a2)
{
  if (a1)
  {
    Int64 = CFNumberCreateInt64();
    if (Int64)
    {
      v5 = Int64;
      CFArraySetValueAtIndex(a1, a2, Int64);
      CFRelease(v5);
      return 0;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSCFArrayGetUInt64AtIndex(const __CFArray *a1, CFIndex a2, uint64_t *a3)
{
  if (a1)
  {
    CFArrayGetValueAtIndex(a1, a2);
    v4 = CFGetInt64();
    result = 0;
    *a3 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

void APSCFArrayReverse(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  v3 = CFArrayGetCount(a1);
  if (v3 >= 2)
  {
    v4 = 0;
    v5 = v3 / 2;
    v6 = Count - 1;
    do
    {
      CFArrayExchangeValuesAtIndices(a1, v4++, v6--);
    }

    while (v5 != v4);
  }
}

CFStringRef APSCreateNewUUIDString()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v2 = CFUUIDCreateString(v0, v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t APSCFStringParseUInt32s(const __CFString *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  theSet = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *buffer = 0u;
  v34 = 0u;
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  v6 = Length;
  theString = a1;
  v44 = 0;
  v45 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v42 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v46 = 0;
  v47 = 0;
  v13 = 64;
  v43 = CStringPtr;
  do
  {
    if (v12 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v12;
    }

    v15 = v45;
    if (v45 <= v12)
    {
      v17 = 0;
    }

    else
    {
      if (v42)
      {
        v16 = &v42[v44];
LABEL_12:
        v17 = v16[v12];
        goto LABEL_14;
      }

      if (!v43)
      {
        v22 = v46;
        if (v47 <= v12 || v46 > v12)
        {
          v24 = v14 + v9;
          v25 = v13 - v14;
          v26 = v12 - v14;
          v27 = v26 + 64;
          if (v26 + 64 >= v45)
          {
            v27 = v45;
          }

          v46 = v26;
          v47 = v27;
          if (v45 >= v25)
          {
            v15 = v25;
          }

          v48.location = v26 + v44;
          v48.length = v15 + v24;
          CFStringGetCharacters(theString, v48, buffer);
          v22 = v46;
        }

        v16 = &buffer[-v22];
        goto LABEL_12;
      }

      v17 = v43[v44 + v12];
    }

LABEL_14:
    IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, v17);
    if (IsCharacterMember)
    {
      if (10 * v11 + v17 - 48 < v11)
      {
        APSLogErrorAt(0);
        return 4294960553;
      }

      v10 = 1;
      v11 = 10 * v11 + v17 - 48;
    }

    else
    {
      if (v10)
      {
        v19 = 0;
      }

      else
      {
        v19 = v11;
      }

      if (v10 && a2)
      {
        v20 = a2(v11, a3);
        if (v20)
        {
          v28 = v20;
LABEL_47:
          APSLogErrorAt(v20);
          return v28;
        }

        v19 = 0;
      }

      v21 = CFCharacterSetIsCharacterMember(theSet, v17);
      if (!v21)
      {
        APSLogErrorAt(v21);
        return 4294960579;
      }

      v10 = 0;
      v11 = v19;
    }

    ++v12;
    --v9;
    ++v13;
  }

  while (v6 != v12);
  v28 = 0;
  if (a2)
  {
    if (IsCharacterMember)
    {
      v20 = a2(v11, a3);
      v28 = v20;
      if (v20)
      {
        goto LABEL_47;
      }
    }
  }

  return v28;
}

uint64_t APSCFStringCountUInt32s(const __CFString *a1, void *a2)
{
  v6 = 0;
  v3 = APSCFStringParseUInt32s(a1, apsCFUtils_stringCountUInt32sCallback, &v6);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else if (a2)
  {
    *a2 = v6;
  }

  return v4;
}

BOOL APSCFDictionaryPairIsKeyPresentAndEqual()
{
  Value = FigCFDictionaryGetValue();
  v1 = FigCFDictionaryGetValue();
  result = 0;
  if (Value)
  {
    if (v1)
    {
      return CFEqual(Value, v1) != 0;
    }
  }

  return result;
}

uint64_t APSCFDataCreateWithBase64String(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x277CBEA90]);

    return [v2 initWithBase64EncodedString:a1 options:0];
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t APSCFDictionaryGetBooleanIfPresent(uint64_t a1, uint64_t a2, BOOL *a3)
{
  Int64 = CFDictionaryGetInt64();
  if (a3)
  {
    *a3 = Int64 != 0;
  }

  return 1;
}

void APSCFSetAddSet(void *context, CFSetRef theSet)
{
  if (context)
  {
    if (theSet)
    {
      CFSetApplyFunction(theSet, apsCFUtils_setAddSetApplier, context);
    }
  }
}

uint64_t APSSockAddrToCFString(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 && a3)
  {
    v4 = SockAddrToString();
    if (v4)
    {
      v6 = v4;
      APSLogErrorAt(v4);
    }

    else
    {
      v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
      *a3 = v5;
      if (v5)
      {
        v6 = 0;
      }

      else
      {
        APSLogErrorAt(0);
        v6 = 4294960568;
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    v6 = 4294960591;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t APSCFStringToSockAddr(uint64_t CString, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!CString)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    CString = 0;
LABEL_10:
    APSLogErrorAt(CString);
    v4 = 4294960591;
    goto LABEL_7;
  }

  v2 = CString;
  if (!CFStringGetCStringPtr(CString, 0x8000100u))
  {
    CString = CFStringGetCString(v2, buffer, 128, 0x8000100u);
    if (!CString)
    {
      goto LABEL_10;
    }
  }

  v3 = StringToSockAddr();
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t APSCFDictionarySetSockAddr(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  value = 0;
  if (a1 && a2 && a3)
  {
    if (*(a3 + 1))
    {
      v7 = APSSockAddrToCFString(a3, a4, &value);
      v4 = v7;
      if (v7)
      {
        APSLogErrorAt(v7);
      }

      else
      {
        CFDictionarySetValue(a1, a2, value);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  return v4;
}

uint64_t APSCFDictionaryGetSockAddr(const __CFDictionary *a1, const void *a2, void *a3, unint64_t a4, uint64_t *a5)
{
  v12 = 0;
  if (a3)
  {
    if (a4 <= 0xF)
    {
      APSLogErrorAt(0);
      v7 = 4294960553;
    }

    else
    {
      v7 = 0;
      v12 = 16;
      *a3 = 0;
      a3[1] = 0;
      if (a1)
      {
        if (a2)
        {
          Value = CFDictionaryGetValue(a1, a2);
          v7 = Value;
          if (Value)
          {
            v9 = CFGetTypeID(Value);
            if (v9 == CFStringGetTypeID())
            {
              v10 = APSCFStringToSockAddr(v7, a3);
              v7 = v10;
              if (v10)
              {
                APSLogErrorAt(v10);
              }
            }

            else
            {
              APSLogErrorAt(0);
              v7 = 4294960540;
            }
          }
        }
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    v7 = 4294960591;
  }

  if (a5)
  {
    *a5 = v12;
  }

  return v7;
}

uint64_t APSIntrospectorAddCommand(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (APSIntrospectorInit_once != -1)
  {
    dispatch_once_f(&APSIntrospectorInit_once, 0, introsp_init);
  }

  result = gIntrospector;
  if (gIntrospector)
  {
    if (a1 && a3 && a4)
    {

      return introsp_addCommand(result, a1, a2, a3, a4, 0);
    }

    else
    {

      return APSLogErrorAt(0);
    }
  }

  return result;
}

uint64_t introsp_addCommand(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, char a6)
{
  if (a2 && a4)
  {
    v12 = *(a1 + 8);
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*a1, a2);
    if (Value)
    {
      v14 = Value;
      v15 = *(a1 + 8);
      result = FigSimpleMutexUnlock();
      if (*v14 != a4)
      {
        if (gLogCategory_APSIntrospector <= 90)
        {
          if (gLogCategory_APSIntrospector != -1)
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

      v19 = v14[3];
      FigSimpleMutexLock();
      v14[1] = a3;
      v20 = v14[3];
    }

    else
    {
      v17 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040A81CF768uLL);
      *v17 = a4;
      v17[1] = a3;
      if (a5)
      {
        v18 = CFRetain(a5);
      }

      else
      {
        v18 = 0;
      }

      v17[2] = v18;
      v17[3] = FigReentrantMutexCreate();
      *(v17 + 32) = a6;
      CFDictionaryAddValue(*a1, a2, v17);
      v21 = *(a1 + 8);
    }

    return FigSimpleMutexUnlock();
  }

  return APSLogErrorAt(0);
}

void introsp_init()
{
  if (!IsAppleInternalBuild())
  {
    return;
  }

  gIntrospector = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040FB85C623uLL);
  *gIntrospector = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  v0 = FigSimpleMutexCreate();
  v1 = gIntrospector;
  *(gIntrospector + 8) = v0;
  *(v1 + 40) = -1;
  *(v1 + 44) = 0;
  *&v18.sa_len = 0;
  *&v18.sa_data[6] = 0;
  v20 = 0;
  v19 = 0;
  v17 = 1;
  v2 = socket(2, 1, 6);
  if (v2 < 0)
  {
    if (*__error())
    {
      v3 = *__error();
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = 4294960596;
    }

    v7 = v3;
    goto LABEL_28;
  }

LABEL_5:
  setsockopt(v2, 0xFFFF, 4130, &v17, 4u);
  v17 = 1;
  if (!setsockopt(v2, 0xFFFF, 4, &v17, 4u))
  {
    goto LABEL_8;
  }

  if (!*__error())
  {
    v4 = 4294960596;
    goto LABEL_23;
  }

  v4 = *__error();
  if (v4)
  {
LABEL_23:
    v7 = v4;
    goto LABEL_28;
  }

LABEL_8:
  v5 = 0;
  *&v18.sa_data[6] = 0;
  *&v18.sa_len = 528;
  *&v18.sa_data[2] = 16777343;
  while (1)
  {
    *v18.sa_data = bswap32(v5 + 6060) >> 16;
    if (!bind(v2, &v18, 0x10u))
    {
      break;
    }

    if (*__error())
    {
      v6 = *__error();
      if (!v6)
      {
        break;
      }
    }

    else
    {
      v6 = 4294960596;
    }

    if (++v5 == 10)
    {
      v7 = v6;
      goto LABEL_28;
    }
  }

  if (!listen(v2, 5))
  {
    goto LABEL_19;
  }

  if (*__error())
  {
    v8 = *__error();
    if (!v8)
    {
LABEL_19:
      *(v1 + 40) = v2;
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __introsp_savePort_block_invoke;
      block[3] = &__block_descriptor_tmp_18_2596;
      v22 = v5 + 6060;
      dispatch_async(global_queue, block);
      introsp_addCommand(v1, @"echo", 0, introsp_cmdEcho, @"output arguments in single quotes", 0);
      introsp_addCommand(v1, @"exit", v1, introsp_cmdQuit, @"quit (same as 'quit')", 1);
      introsp_addCommand(v1, @"fignote", 0, introsp_cmdFigNote, @"change or show fignote log variables", 0);
      introsp_addCommand(v1, @"help", v1, introsp_cmdHelp, @"list available commands and their brief descriptions", 0);
      introsp_addCommand(v1, @"logging", 0, introsp_cmdLogging, @"modify or show current log settings", 0);
      introsp_addCommand(v1, @"progname", 0, introsp_cmdProgName, @"show the program name", 0);
      introsp_addCommand(v1, @"prompt", v1, introsp_cmdPrompt, @"turn the prompt on/off", 0);
      introsp_addCommand(v1, @"quit", v1, introsp_cmdQuit, @"quit (same as 'exit')", 1);
      introsp_addCommand(v1, @"GET", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"HEAD", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"POST", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"PUT", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"DELETE", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"CONNECT", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"OPTIONS", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"TRACE", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"PATCH", v1, introsp_cmdQuit, 0, 1);
      v10 = dispatch_queue_create("com.apple.airplay.introspector", 0);
      *(v1 + 24) = v10;
      v11 = dispatch_source_create(MEMORY[0x277D85D28], *(v1 + 40), 0, v10);
      *(v1 + 32) = v11;
      dispatch_set_context(v11, v1);
      dispatch_source_set_event_handler_f(*(v1 + 32), introsp_serverHandleConnection);
      dispatch_resume(*(v1 + 32));
      if (gLogCategory_APSIntrospector <= 50 && (gLogCategory_APSIntrospector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return;
    }
  }

  else
  {
    v8 = 4294960596;
  }

  v7 = v8;
LABEL_28:
  APSLogErrorAt(v7);
  if (gLogCategory_APSIntrospector <= 90 && (gLogCategory_APSIntrospector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = gIntrospector;
  if (gIntrospector)
  {
    v13 = *(gIntrospector + 32);
    if (v13)
    {
      dispatch_source_cancel(*(gIntrospector + 32));
      dispatch_release(v13);
      v12 = gIntrospector;
      *(gIntrospector + 32) = 0;
    }

    v14 = *(v12 + 24);
    if (v14)
    {
      dispatch_release(v14);
      v12 = gIntrospector;
      *(gIntrospector + 24) = 0;
    }

    if (*v12)
    {
      CFRelease(*v12);
      v12 = gIntrospector;
    }

    if (*(v12 + 8))
    {
      FigSimpleMutexDestroy();
      v12 = gIntrospector;
    }

    free(*(v12 + 16));
    v15 = *(v12 + 40);
    if (v15 < 0)
    {
      v16 = gIntrospector;
    }

    else
    {
      if (close(v15) && *__error())
      {
        __error();
      }

      v16 = gIntrospector;
      *(gIntrospector + 40) = -1;
    }

    free(v16);
    gIntrospector = 0;
  }

  if ((v2 & 0x80000000) == 0 && close(v2) && *__error())
  {
    __error();
  }
}

void __introsp_savePort_block_invoke(uint64_t a1)
{
  name = 0;
  out_token = 0;
  getprogname();
  ASPrintF();
  v2 = notify_register_check(0, &out_token);
  if (v2)
  {
    APSLogErrorAt(v2);
  }

  else
  {
    notify_set_state(out_token, *(a1 + 32));
    notify_post(name);
  }

  free(name);
}

uint64_t introsp_serverHandleConnection(uint64_t a1)
{
  v1 = a1;
  v62 = *MEMORY[0x277D85DE8];
  v2 = accept(*(a1 + 40), 0, 0);
  if (v2 < 0)
  {
    result = __error();
    if (!*result || (result = __error(), *result))
    {
      if (gLogCategory_APSIntrospector <= 90)
      {
        if (gLogCategory_APSIntrospector != -1 || (result = _LogCategory_Initialize(), result))
        {
          result = LogPrintF();
        }
      }

      goto LABEL_115;
    }
  }

  v60 = 1;
  setsockopt(v2, 0xFFFF, 4130, &v60, 4u);
  v3 = malloc_type_malloc(0x800uLL, 0xED218EF3uLL);
  v57 = malloc_type_malloc(0x800uLL, 0xDC30F0ADuLL);
  v59 = malloc_type_malloc(0x208uLL, 0x10040436913F5uLL);
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x1010040787528ABuLL);
  v5 = malloc_type_malloc(0x1000uLL, 0x6988A0D7uLL);
  *(v4 + 1) = v5;
  *v4 = v5;
  *(v4 + 1) = xmmword_22234D420;
  *(v4 + 8) = v2;
  v4[36] = 0;
  v6 = fdopen(v2, "w");
  v58 = v6;
  if (!v6)
  {
    APSLogErrorAt(0);
    goto LABEL_101;
  }

  setlinebuf(v6);
  if (!*(v1 + 16))
  {
    APSGetDeviceNameCString(v61, 64);
    getprogname();
    ASPrintF();
  }

  v7 = MEMORY[0x277CBECE8];
  *(v1 + 44) = 0;
  alloc = *v7;
  v8 = MEMORY[0x277D85DE0];
  v54 = v3;
  v55 = v1;
  while (1)
  {
    v11 = 0;
    v12 = v3;
    while (1)
    {
      v13 = *(v4 + 3);
      v14 = (v4 + 8);
      if (v13 <= 0)
      {
        break;
      }

LABEL_15:
      v15 = *v14;
      *(v4 + 3) = v13 - 1;
      *(v4 + 1) = v15 + 1;
      LOBYTE(v15) = *v15;
      *v12++ = v15;
      if (v15 == 10)
      {
        goto LABEL_20;
      }

LABEL_16:
      if (++v11 == 2047)
      {
LABEL_20:
        *v12 = 0;
        goto LABEL_21;
      }
    }

    do
    {
      v13 = read(*(v4 + 8), *v4, *(v4 + 2));
      *(v4 + 3) = v13;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

    while (*__error() == 4);
    v13 = *(v4 + 3);
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_14:
      v14 = v4;
      if (v13)
      {
        goto LABEL_15;
      }

      v16 = -1;
      goto LABEL_97;
    }

    APSLogErrorAt(0);
    v16 = *__error();
    if (!v16)
    {
      *v12++ = 0;
      goto LABEL_16;
    }

LABEL_97:
    *v12 = 0;
    v2 = -1;
    if (!v11 || v16 != -1)
    {
      goto LABEL_101;
    }

LABEL_21:
    v17 = 0;
    v18 = 0;
    v19 = v3;
LABEL_22:
    if (v17 == 64)
    {
      goto LABEL_72;
    }

    v20 = *v19;
    if (*v19)
    {
      break;
    }

LABEL_67:
    v37 = v58;
    v36 = v59;
    if (v17)
    {
      goto LABEL_73;
    }

LABEL_94:
    if (*(v1 + 44))
    {
      v9 = *(v1 + 16);
      v10 = "\n";
      if (!*(v1 + 45))
      {
        v10 = "";
      }

      fprintf(v37, "%s%s", *(v1 + 16), v10);
      fflush(v37);
    }
  }

  while (1)
  {
    if ((v20 & 0x80) == 0)
    {
      if ((*(v8 + 4 * v20 + 60) & 0x4000) == 0)
      {
        break;
      }

      goto LABEL_28;
    }

    if (!__maskrune(v20, 0x4000uLL))
    {
      break;
    }

LABEL_28:
    v21 = *++v19;
    v20 = v21;
    if (!v21)
    {
      goto LABEL_67;
    }
  }

  if (!*v19 || *v19 == 35)
  {
    goto LABEL_67;
  }

  v22 = v3;
  v23 = 0;
  v24 = v18;
  v25 = v57;
  v59[v17] = &v57[v18];
  if (v18 <= 2046)
  {
    v26 = 2046;
  }

  else
  {
    v26 = v18;
  }

  v27 = v26 + 1;
  while (2)
  {
    while (2)
    {
      v28 = v19;
      v30 = *v19++;
      v29 = v30;
      v31 = v30;
      if (v30 > 38)
      {
        if (v29 != 39)
        {
          if (v29 != 92)
          {
            goto LABEL_57;
          }

          v32 = *v19;
          if (*v19)
          {
            v33 = v23 == 0;
            if (v32 == 92)
            {
              v33 = 1;
            }

            v34 = v32 == v23 || v33;
            v35 = v28 + 2;
            if (v34)
            {
              v19 = v35;
              LOBYTE(v31) = v32;
            }

            else
            {
              LOBYTE(v31) = 92;
            }
          }

          else
          {
            LOBYTE(v31) = 92;
          }

          goto LABEL_64;
        }

LABEL_41:
        if (!v23 || v31 == v23)
        {
          if (v23)
          {
            v23 = 0;
          }

          else
          {
            v23 = v31;
          }

          continue;
        }

        v19 = v28 + 1;
        goto LABEL_64;
      }

      break;
    }

    if (v29 == 34)
    {
      goto LABEL_41;
    }

    if (v29)
    {
LABEL_57:
      if ((v31 & 0x80000000) != 0)
      {
        if (!__maskrune(v31, 0x4000uLL))
        {
          goto LABEL_62;
        }
      }

      else if ((*(v8 + 4 * v31 + 60) & 0x4000) == 0)
      {
        goto LABEL_62;
      }

      if (!v23)
      {
        v18 = v24 + 1;
        v57[v24] = 0;
        ++v17;
        v3 = v22;
        v1 = v55;
        if (v31)
        {
          goto LABEL_22;
        }

        goto LABEL_67;
      }

LABEL_62:
      v25 = v57;
LABEL_64:
      v25[v24++] = v31;
      if (v27 == v24)
      {
        v49 = "line is too long";
LABEL_70:
        v37 = v58;
        fprintf(v58, "Parse error: %s\n", v49);
        v3 = v22;
        v1 = v55;
        goto LABEL_94;
      }

      continue;
    }

    break;
  }

  v25[v24] = 0;
  v49 = "unmatched quote";
  if (v23)
  {
    goto LABEL_70;
  }

  v17 = (v17 + 1);
  v3 = v22;
  v1 = v55;
LABEL_72:
  v37 = v58;
  v36 = v59;
LABEL_73:
  v38 = CFStringCreateWithCString(alloc, *v36, 0x8000100u);
  if (!v38)
  {
    v47 = *v36;
    fprintf(v37, "%s: command string could not be created\n");
    goto LABEL_87;
  }

  v39 = v38;
  v40 = *(v1 + 8);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*v1, v39);
  v42 = *(v1 + 8);
  FigSimpleMutexUnlock();
  CFRelease(v39);
  if (!Value)
  {
    v48 = *v36;
    fprintf(v37, "%s: no such command found, use 'help' to list available commands\n");
LABEL_87:
    if (*(v1 + 44))
    {
      goto LABEL_94;
    }

    goto LABEL_100;
  }

  if (*MEMORY[0x277D85E78] >= 2)
  {
    *MEMORY[0x277D85E78] = 1;
    *MEMORY[0x277D85E88] = 1;
  }

  v36[v17] = 0;
  if (gLogCategory_APSIntrospector <= 30 && (gLogCategory_APSIntrospector != -1 || _LogCategory_Initialize()))
  {
    Mutable = CFStringCreateMutable(alloc, 0);
    if (v17 >= 1)
    {
      v44 = v17;
      v45 = v59;
      do
      {
        v46 = *v45++;
        CFStringAppendFormat(Mutable, 0, @"'%s' ", v46);
        --v44;
      }

      while (v44);
    }

    if (gLogCategory_APSIntrospector <= 30 && (gLogCategory_APSIntrospector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRelease(Mutable);
    v37 = v58;
    v36 = v59;
    v3 = v54;
  }

  v50 = Value[3];
  FigSimpleMutexLock();
  (*Value)(Value[1], v37, v17, v36);
  v51 = Value[3];
  FigSimpleMutexUnlock();
  if (!*(Value + 32))
  {
    goto LABEL_94;
  }

LABEL_100:
  v2 = -1;
LABEL_101:
  free(*v4);
  if (v4[36])
  {
    close(*(v4 + 8));
  }

  free(v4);
  free(v3);
  free(v57);
  free(v59);
  result = v58;
  if (v58)
  {
    result = fclose(v58);
  }

  if ((v2 & 0x80000000) == 0)
  {
    result = close(v2);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }
  }

LABEL_115:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t introsp_cmdPrompt(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *(result + 44) = 1;
  if (a3 >= 2)
  {
    v4 = result;
    v5 = *(a4 + 8);
    result = strcmp(v5, "line");
    if (result)
    {
      result = strcmp(v5, "off");
      if (!result)
      {
        *(v4 + 44) = 0;
      }
    }

    else
    {
      *(v4 + 45) = 1;
    }
  }

  return result;
}

void introsp_cmdLogging(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    if (LogShow())
    {
      v9 = *a4;
      FPrintF();
    }

    else
    {
      FPrintF();
      free(0);
    }
  }

  else
  {
    v5 = 8 * a3;
    v6 = 8;
    do
    {
      v7 = a4[v6 / 8];
      if (LogControl())
      {
        v10 = a4[v6 / 8];
        v8 = *a4;
        FPrintF();
      }

      v6 += 8;
    }

    while (v5 != v6);
  }
}

void introsp_cmdHelp(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v7 = a3 - 1;
  v8 = *(a1 + 8);
  FigSimpleMutexLock();
  if (v7)
  {
    v9 = v7;
    v10 = malloc_type_malloc(16 * v7, 0x600405BB7FD7CuLL);
    v25[3] = 0;
    if (a3 >= 2)
    {
      v11 = 0;
      v12 = a4 + 8;
      v13 = *MEMORY[0x277CBECE8];
      do
      {
        v14 = CFStringCreateWithCString(v13, *(v12 + 8 * v11), 0x8000100u);
        v10[2 * v25[3]] = v14;
        Value = CFDictionaryGetValue(*a1, v10[2 * v25[3]]);
        if (Value)
        {
          v16 = Value[2];
        }

        else
        {
          v16 = 0;
        }

        v10[2 * v25[3] + 1] = v16;
        v11 = v25[3] + 1;
        v25[3] = v11;
      }

      while (v11 < v7);
    }

    v17 = *(a1 + 8);
    FigSimpleMutexUnlock();
  }

  else
  {
    Count = CFDictionaryGetCount(*a1);
    v10 = malloc_type_malloc(16 * Count, 0x600405BB7FD7CuLL);
    v19 = *a1;
    CFDictionaryApplyBlock();
    v9 = v25[3];
    v20 = *(a1 + 8);
    FigSimpleMutexUnlock();
    qsort(v10, v9, 0x10uLL, compareDescriptions);
  }

  v25[3] = 0;
  if (v9 >= 1)
  {
    for (i = 0; i < v9; v25[3] = i)
    {
      v22 = &v10[2 * i];
      v23 = *v22;
      v22[1];
      FPrintF();
      CFRelease(v10[2 * v25[3]]);
      i = v25[3] + 1;
    }
  }

  free(v10);
  _Block_object_dispose(&v24, 8);
}

CFTypeRef __introsp_cmdHelp_block_invoke(CFTypeRef result, CFTypeRef cf, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = result;
    result = CFRetain(cf);
    *(*(v4 + 40) + 16 * *(*(*(v4 + 32) + 8) + 24)) = result;
    *(*(v4 + 40) + 16 * (*(*(*(v4 + 32) + 8) + 24))++ + 8) = *(a3 + 16);
  }

  return result;
}

void introsp_cmdFigNote(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (a3 < 3)
  {
LABEL_25:
    v17 = *a4;
    FPrintF();
    return;
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[2], 0x8000100u);
  v8 = a4[1];
  if (!strcmp(v8, "change"))
  {
    if (a3 == 5)
    {
      v10 = CFStringCreateWithCString(v6, a4[3], 0x8000100u);
      v12 = a4[4];
      TextToInt32();
      Value = FigNote_ChangeValue();
      goto LABEL_18;
    }
  }

  else
  {
    if (strcmp(v8, "show"))
    {
      goto LABEL_4;
    }

    if (a3 == 3)
    {
      Value = FigNote_CopyKeys();
      if (!Value)
      {
        Count = CFArrayGetCount(0);
        if (Count >= 1)
        {
          v14 = Count;
          for (i = 0; i != v14; ++i)
          {
            CFArrayGetValueAtIndex(0, i);
            FPrintF();
          }
        }

        CFRelease(0);
      }

      v10 = 0;
      goto LABEL_18;
    }

    if (a3 == 4)
    {
      v10 = CFStringCreateWithCString(v6, a4[3], 0x8000100u);
      Value = FigNote_GetValue();
      if (!Value)
      {
        FPrintF();
      }

LABEL_18:
      v11 = 1;
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

LABEL_4:
  Value = 0;
  v10 = 0;
  v11 = 0;
  if (v7)
  {
LABEL_19:
    CFRelease(v7);
  }

LABEL_20:
  if (v10)
  {
    CFRelease(v10);
  }

  if (Value)
  {
    v16 = *a4;
    FPrintF();
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_25;
  }
}

uint64_t introsp_cmdQuit(uint64_t result)
{
  if (result)
  {
    if (*(result + 44))
    {
      return FPrintF();
    }
  }

  return result;
}

uint64_t introsp_cmdEcho(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a3 - 1;
    v5 = (a4 + 8);
    do
    {
      v6 = *v5++;
      FPrintF();
      --v4;
    }

    while (v4);
  }

  return FPrintF();
}

void APSIntrospectorSetCommandContext(const void *a1, uint64_t a2)
{
  if (APSIntrospectorInit_once != -1)
  {
    dispatch_once_f(&APSIntrospectorInit_once, 0, introsp_init);
  }

  v4 = gIntrospector;
  if (gIntrospector)
  {
    if (a1)
    {
      v5 = *(gIntrospector + 8);
      FigSimpleMutexLock();
      Value = CFDictionaryGetValue(*v4, a1);
      v7 = *(v4 + 8);
      FigSimpleMutexUnlock();
      if (Value)
      {
        v8 = Value[3];
        FigSimpleMutexLock();
        Value[1] = a2;
        v9 = Value[3];

        FigSimpleMutexUnlock();
      }

      else if (gLogCategory_APSIntrospector <= 90 && (gLogCategory_APSIntrospector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {

      APSLogErrorAt(0);
    }
  }
}

void APSIntrospectorCollectionShow(NSObject **a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    v7 = *a1;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __APSIntrospectorCollectionShow_block_invoke_2;
    v10[3] = &__block_descriptor_tmp_12_2711;
    v10[4] = a1;
    v10[5] = a2;
    v8 = v10;
  }

  else
  {
    if (strcmp(a4[1], "count"))
    {
      v9 = *a4;
      FPrintF();
      return;
    }

    v7 = *a1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APSIntrospectorCollectionShow_block_invoke;
    block[3] = &__block_descriptor_tmp_2709;
    block[4] = a1;
    block[5] = a2;
    v8 = block;
  }

  dispatch_sync(v7, v8);
}

uint64_t __APSIntrospectorCollectionShow_block_invoke(uint64_t a1)
{
  CFSetGetCount(*(*(a1 + 32) + 8));
  v2 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 16);
  return FPrintF();
}

void __APSIntrospectorCollectionShow_block_invoke_2(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 1;
  v1 = *(*(a1 + 32) + 8);
  v2 = *(a1 + 40);
  CFSetApplyBlock();
  _Block_object_dispose(v3, 8);
}

uint64_t __APSIntrospectorCollectionShow_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  result = FPrintF();
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

void APSIntrospectorInit()
{
  if (APSIntrospectorInit_once != -1)
  {
    dispatch_once_f(&APSIntrospectorInit_once, 0, introsp_init);
  }
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATGetTypeID()
{
  if (gAPSAudioProtocolDriverSenderHoseControllerAPATInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioProtocolDriverSenderHoseControllerAPATInitOnce, 0, _APSAudioProtocolDriverSenderHoseControllerAPATGetTypeID);
  }

  return gAPSAudioProtocolDriverSenderHoseControllerAPATTypeID;
}

uint64_t _APSAudioProtocolDriverSenderHoseControllerAPATGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSAudioProtocolDriverSenderHoseControllerAPATTypeID = result;
  return result;
}

uint64_t _APSAudioProtocolDriverSenderHoseControllerAPATFinalize(void *a1)
{
  APSRateControllerAVCWrapperStop(a1[31]);
  v2 = a1[2];
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 8) + 56);
  if (v4)
  {
    v5 = *(VTable + 8) + 56;
    v4(v2, @"APSAudioProtocolDriverHoseProperty_DataPacer", 0);
  }

  v6 = a1[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[22];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[24];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[37];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[38];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[31];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[26];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[27];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[11];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[12];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[13];
  result = FigSimpleMutexDestroy();
  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
  {
    if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1)
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

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATCreate(const void *a1, int a2, __int16 a3, uint64_t *a4, const void *a5, uint64_t a6, const void *a7, const void *a8, uint64_t *a9)
{
  v56 = 0;
  cf = 0;
  if (!a8)
  {
    APSLogErrorAt(0);
    return -6705;
  }

  if (!a9)
  {
    APSLogErrorAt(0);
    v18 = 0;
    v36 = 0;
    v46 = 0;
    v48 = 0;
    v51 = -6705;
LABEL_102:
    v56 = v51;
    goto LABEL_80;
  }

  if (gAPSAudioProtocolDriverSenderHoseControllerAPATInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioProtocolDriverSenderHoseControllerAPATInitOnce, 0, _APSAudioProtocolDriverSenderHoseControllerAPATGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  v18 = Instance;
  if (!Instance)
  {
    goto LABEL_98;
  }

  *(Instance + 352) = 0;
  *(Instance + 320) = 0u;
  *(Instance + 336) = 0u;
  *(Instance + 288) = 0u;
  *(Instance + 304) = 0u;
  *(Instance + 256) = 0u;
  *(Instance + 272) = 0u;
  *(Instance + 224) = 0u;
  *(Instance + 240) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 208) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  if (a1)
  {
    v19 = CFRetain(a1);
  }

  else
  {
    v19 = 0;
  }

  *(v18 + 16) = v19;
  *(v18 + 112) = a2;
  *(v18 + 114) = a2 - 1;
  *(v18 + 184) = -1;
  v20 = MEMORY[0x277CC0898];
  *(v18 + 124) = *MEMORY[0x277CC0898];
  *(v18 + 140) = *(v20 + 16);
  *(v18 + 80) = a3;
  if (*a4)
  {
    v21 = *a4;
  }

  *(v18 + 56) = *a4;
  v22 = a4[1];
  if (v22)
  {
    v23 = a4[1];
  }

  *(v18 + 64) = v22;
  *(v18 + 72) = a4[2];
  v24 = a5 ? CFRetain(a5) : 0;
  *(v18 + 48) = v24;
  v25 = FigSimpleMutexCreate();
  *(v18 + 104) = v25;
  if (!v25)
  {
LABEL_98:
    APSLogErrorAt(0);
    v36 = 0;
LABEL_100:
    v46 = 0;
LABEL_101:
    v48 = 0;
    v51 = -6728;
    goto LABEL_102;
  }

  v26 = APSGetFBOPropertyInt64(a1, @"APSAudioProtocolDriverHoseProperty_AudioBufferSize", &v56);
  LODWORD(v27) = v26 / 5;
  if (v26 / 5 >= 0x4000)
  {
    v27 = 0x4000;
  }

  else
  {
    v27 = v27;
  }

  *(v18 + 24) = v26 - v27;
  *(v18 + 40) = APSGetFBOPropertyInt64(a1, @"APSAudioProtocolDriverHoseProperty_AudioBatchMaxSize", &v56);
  if (v56)
  {
    *(v18 + 40) = 64;
    v56 = 0;
  }

  *(v18 + 32) = APSGetFBOPropertyInt64(a1, @"APSAudioProtocolDriverHoseProperty_AudioBatchTargetDurationMs", &v56) * 0.001;
  if (v56)
  {
    *(v18 + 32) = 0x3FD0000000000000;
    v56 = 0;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
  {
    if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1)
    {
LABEL_26:
      v54 = *(v18 + 40);
      v53 = *(v18 + 24);
      LogPrintF();
      goto LABEL_28;
    }

    if (_LogCategory_Initialize())
    {
      v52 = *(v18 + 32);
      goto LABEL_26;
    }
  }

LABEL_28:
  v28 = *MEMORY[0x277CBECE8];
  v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v29)
  {
    v29(a1, @"APSAudioProtocolDriverHoseProperty_Name", v28, v18 + 88);
  }

  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v30)
  {
    v30(a1, @"APSAudioProtocolDriverHoseProperty_InputEncryptionKey", v28, &cf);
  }

  if (cf)
  {
    v31 = APSCryptorChaCha20Poly1305Create(v28, cf, 1, (v18 + 208));
    v56 = v31;
    if (v31)
    {
      goto LABEL_103;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  else
  {
    if (APSCryptorGetNull_sAPSCryptorNullOnce != -1)
    {
      dispatch_once_f(&APSCryptorGetNull_sAPSCryptorNullOnce, &APSCryptorGetNull_sAPSCryptorNull, nullCryptor_create);
    }

    *(v18 + 208) = CFRetain(APSCryptorGetNull_sAPSCryptorNull);
  }

  v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v32)
  {
    v32(a1, @"APSAudioProtocolDriverHoseProperty_OutputEncryptionKey", v28, &cf);
  }

  if (cf)
  {
    v31 = APSCryptorChaCha20Poly1305Create(v28, cf, 1, (v18 + 216));
    v56 = v31;
    if (!v31)
    {
      v33 = *(v18 + 216);
      v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v34)
      {
        v35 = v34(v33);
      }

      else
      {
        v35 = 0;
      }

      *(v18 + 224) = v35;
      *(v18 + 232) = APSSettingsGetIntWithOverrideAndDefault(@"apatSRTCPEncrypt", 0, 1) != 0;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_51;
    }

LABEL_103:
    APSLogErrorAt(v31);
    v36 = 0;
    goto LABEL_78;
  }

  if (APSCryptorGetNull_sAPSCryptorNullOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetNull_sAPSCryptorNullOnce, &APSCryptorGetNull_sAPSCryptorNull, nullCryptor_create);
  }

  *(v18 + 216) = CFRetain(APSCryptorGetNull_sAPSCryptorNull);
LABEL_51:
  *(v18 + 337) = 0u;
  *(v18 + 312) = 0u;
  *(v18 + 328) = 0u;
  *(v18 + 117) = 1;
  v36 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v36)
  {
    APSLogErrorAt(0);
    goto LABEL_100;
  }

  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v38 = *(ProtocolVTable + 16)) == 0)
  {
    Mutable = 4294954508;
LABEL_76:
    v56 = Mutable;
    goto LABEL_77;
  }

  v39 = *(v38 + 8);
  if (!v39)
  {
    Mutable = 4294954514;
    goto LABEL_76;
  }

  v40 = *(v38 + 8);
  Mutable = v39(a1, APSAudioProtocolDriverSenderHoseControllerAPATCreate_rtpCallbacks, v36);
  v56 = Mutable;
  if (!Mutable)
  {
    pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
    v42 = CMBaseObjectGetProtocolVTable();
    if (v42 && (v43 = *(v42 + 16)) != 0)
    {
      v44 = *(v43 + 24);
      if (v44)
      {
        v45 = *(v43 + 24);
        Mutable = v44(a1, APSAudioProtocolDriverSenderHoseControllerAPATCreate_rtcpCallbacks, v36);
        v56 = Mutable;
        if (!Mutable)
        {
          Mutable = APSRTCPCCFBProcessorCreate((v18 + 176));
          v56 = Mutable;
          if (!Mutable)
          {
            Mutable = APSRTCPCCFBProcessorHintLimitSeqNum(*(v18 + 176), a2);
            v56 = Mutable;
            if (!Mutable)
            {
              Mutable = APSRTCPCCFBProcessorSetRateControlFeedbackInformationCallback(*(v18 + 176), hoseControllerAPAT_processCCFBRateControlFeedbackInformationCallback, v36);
              v56 = Mutable;
              if (!Mutable)
              {
                Mutable = APSRTPSeqNumRangeSetCreateMutable(v28, (v18 + 192));
                v56 = Mutable;
                if (!Mutable)
                {
                  Mutable = APSRTCPCCFBProcessorSetRequestRetransmitCallback(*(v18 + 176), hoseControllerAPAT_processCCFBRetransmitRequestCallback, v36);
                  v56 = Mutable;
                  if (!Mutable)
                  {
                    v46 = CFDictionaryCreateMutable(v28, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (v46)
                    {
                      FigCFDictionarySetInt32();
                      v47 = APSDataPacerBitRateCreate(v28, 0, v46, (v18 + 304));
                      v56 = v47;
                      if (!v47)
                      {
                        v48 = CFStringCreateF();
                        v49 = v56;
                        if (v56)
                        {
                          goto LABEL_112;
                        }

                        v49 = APSRateControllerAVCWrapperCreate(v48, a6, (v18 + 248));
                        v56 = v49;
                        if (v49 || (v49 = APSRateControllerAVCWrapperSetProbingSequenceRequestedCallback(*(v18 + 248), hoseControllerAPAT_ProbingSequenceRequestedWithIDCallback, v36), (v56 = v49) != 0) || (v49 = APSDataPacerCongestionControlCreate(v28, *(v18 + 248), *(v18 + 304), a8, (v18 + 296)), (v56 = v49) != 0) || (v49 = APSAudioProtocolDriverHoseSetProperty(a1, *(v18 + 296)), (v56 = v49) != 0))
                        {
LABEL_112:
                          APSLogErrorAt(v49);
                        }

                        else
                        {
                          APSRateControllerAVCWrapperStart(*(v18 + 248));
                          v56 = 0;
                          if (a7)
                          {
                            *(v18 + 96) = CFRetain(a7);
                          }

                          *a9 = v18;
                          v18 = 0;
                        }

                        goto LABEL_80;
                      }

                      APSLogErrorAt(v47);
                      goto LABEL_79;
                    }

                    APSLogErrorAt(0);
                    goto LABEL_101;
                  }
                }
              }
            }
          }
        }

        goto LABEL_77;
      }

      Mutable = 4294954514;
    }

    else
    {
      Mutable = 4294954508;
    }

    v56 = Mutable;
  }

LABEL_77:
  APSLogErrorAt(Mutable);
LABEL_78:
  v46 = 0;
LABEL_79:
  v48 = 0;
LABEL_80:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v56;
}

uint64_t APSAudioProtocolDriverHoseSetProperty(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, @"APSAudioProtocolDriverHoseProperty_DataPacer", a2);
}

uint64_t hoseControllerAPAT_ProbingSequenceRequestedWithIDCallback(uint64_t a1, int a2, int a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = v5;
  if (a3 && v5)
  {
    v7 = *(v5 + 104);
    FigSimpleMutexCheckIsLockedOnThisThread();
    *(v6 + 260) = a2;
    *(v6 + 264) = a3;
    *(v6 + 257) = 1;
  }

  else if (!v5)
  {
    return 0;
  }

  CFRelease(v6);
  return 0;
}

uint64_t hoseControllerAPAT_processCCFBRetransmitRequestCallback(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v3 + 104);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = v4[24];
  if (v6)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v14 = 4294960591;
LABEL_23:
    v15 = v14;
    goto LABEL_18;
  }

  v8 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a2, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_addRangeApplier, v6);
  if (v8)
  {
    v14 = v8;
    goto LABEL_23;
  }

  v9 = v4[2];
  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v11 = *(ProtocolVTable + 16)) == 0)
  {
    v14 = 4294954508;
LABEL_17:
    v15 = v14;
LABEL_18:
    APSLogErrorAt(v15);
    goto LABEL_19;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    v14 = 4294954514;
    goto LABEL_17;
  }

  v13 = *(v11 + 16);
  v14 = v12(v9);
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_19:
  CFRelease(v4);
  return v14;
}

uint64_t hoseControllerAPAT_processCCFBRateControlFeedbackInformationCallback(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (a2)
  {
    if (CFDictionaryGetCount(*(a2 + 24)))
    {
      v5 = *(v4 + 104);
      FigSimpleMutexCheckIsLockedOnThisThread();
      v6 = APSRateControllerAVCWrapperAddFeedbackReport(*(v4 + 248), a2);
      if (v6)
      {
        a2 = v6;
        APSLogErrorAt(v6);
        goto LABEL_8;
      }

      if (!*(v4 + 256))
      {
        *(v4 + 256) = 1;
        APSDataPacerCongestionControlSetRateControllerPrimed(*(v4 + 296), 1);
      }
    }

    a2 = 0;
  }

LABEL_8:
  CFRelease(v4);
  return a2;
}

uint64_t hoseControllerAPAT_ReceiveRTCPDataBBuf(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = v5;
  if (!a3 || !v5)
  {
    v11 = 0;
    if (!v5)
    {
      return v11;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v7 = *(v5 + 16);
  v8 = FigCFEqual();
  if (!v8)
  {
LABEL_11:
    APSLogErrorAt(v8);
    v11 = 4294960591;
    goto LABEL_6;
  }

  v9 = v6[13];
  FigSimpleMutexLock();
  v13.length = CFArrayGetCount(a3);
  v13.location = 0;
  CFArrayApplyFunction(a3, v13, hoseControllerAPAT_receiveSecureRTCPDataBBufApplierInternal, v6);
  v10 = v6[13];
  FigSimpleMutexUnlock();
  v11 = 0;
LABEL_6:
  CFRelease(v6);
  return v11;
}

void hoseControllerAPAT_receiveSecureRTCPDataBBufApplierInternal(void *a1, uint64_t a2)
{
  cf = 0;
  CMGetAttachment(a1, @"arrivalTicks", 0);
  UInt64 = FigCFNumberGetUInt64();
  if (!UInt64)
  {
    UInt64 = mach_absolute_time();
  }

  if (APSRTCPBBufIsKnown(a1))
  {
    if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
    {
      dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
    }

    v5 = APSSRTCPBBufCopyRTCPBBuf(a1, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, *(a2 + 208), &cf);
    v6 = v5;
    if (v5 == -6754)
    {
      APSAudioHoseMetricCollectorIncrementRTCPSignatureFailureCountForHose(*(a2 + 96), *(a2 + 16));
LABEL_8:
      v7 = v6;
LABEL_9:
      APSLogErrorAt(v7);
      goto LABEL_12;
    }

    if (v5)
    {
      goto LABEL_8;
    }

    v8 = *MEMORY[0x277CBECE8];
    v9[0] = a2;
    v9[1] = UInt64;
    v7 = APSCompoundRTCPBBufApplyFunction(cf, v8, hoseControllerAPAT_receiveRTCPDataBBufApplierInternal, v9);
    if (v7)
    {
      goto LABEL_9;
    }
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t hoseControllerAPAT_receiveRTCPDataBBufApplierInternal(OpaqueCMBlockBuffer *a1, uint64_t *a2)
{
  if (!APSRTCPBBufIsCCFB(a1))
  {
    return 0;
  }

  v5 = *a2;
  v4 = a2[1];
  cf = 0;
  v15 = 0;
  v6 = APSCompactNTPMakeWithUpTicks(v4, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  v14 = -1;
  v7 = *(v5 + 104);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v8 = APSRTCPBBufIsCCFB(a1);
  if (!v8)
  {
    APSLogErrorAt(v8);
    v12 = 4294960591;
    goto LABEL_10;
  }

  ReportTimestamp = APSRTCPCCFBBBufGetReportTimestamp(a1, &v15);
  if (ReportTimestamp)
  {
    v12 = ReportTimestamp;
LABEL_21:
    APSLogErrorAt(ReportTimestamp);
    goto LABEL_10;
  }

  ReportTimestamp = APSRTCPCCFBBBufGetTrailingUnReceivedRangeWithMediaSourceSSRC(a1, *(v5 + 80) << 16, &v14);
  if (ReportTimestamp)
  {
    v12 = ReportTimestamp;
    goto LABEL_21;
  }

  *(v5 + 184) = v14;
  ReportTimestamp = APSRTCPCCFBBBufCopyRecordsWithMediaSourceSSRC(a1, *MEMORY[0x277CBECE8], *(v5 + 80) << 16, &cf);
  if (ReportTimestamp)
  {
    v12 = ReportTimestamp;
    goto LABEL_21;
  }

  if (!cf)
  {
    *(v5 + 188) = 1;
    return 0;
  }

  v10 = CFDictionaryGetCount(*(cf + 3)) == 0;
  v11 = cf;
  *(v5 + 188) = v10;
  if (!v11)
  {
    return 0;
  }

  if (!CFDictionaryGetCount(v11[3]))
  {
    v12 = 0;
    goto LABEL_10;
  }

  ReportTimestamp = APSRTCPCCFBProcessorUpdateFeedback(*(v5 + 176), cf, v15, v6);
  v12 = ReportTimestamp;
  if (ReportTimestamp)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    APSLogErrorAt(v12);
  }

  return v12;
}

uint64_t hoseControllerAPAT_CopyRTCPDataBBufsToSend(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (a2)
  {
    v7 = *(v5 + 16);
    v8 = FigCFEqual();
    if (v8)
    {
      *a3 = 0;
      v9 = *(v6 + 104);
      FigSimpleMutexLock();
      if (!*(v6 + 200))
      {
LABEL_21:
        v20 = 0;
        v19 = 0;
        *(v6 + 328) = *(v6 + 328);
        *a3 = 0;
        goto LABEL_22;
      }

      cf = 0;
      values = 0;
      v10 = *(v6 + 104);
      FigSimpleMutexCheckIsLockedOnThisThread();
      v11 = *(v6 + 176);
      if (v11 && (v12 = *(v11 + 16)) != 0)
      {
        v13 = *(v12 + 16);
      }

      else
      {
        v13 = 0;
      }

      if (hoseControllerAPAT_shouldGenerateRTCPDiscardReportPacketInternal(v6, v13))
      {
        v14 = *MEMORY[0x277CBECE8];
        v15 = APSRTCPXRRLEBlockBBufCreateWithSeqNumRangeSet(*MEMORY[0x277CBECE8], 0x19u, *(v6 + 80) << 16, v13, 1, &values);
        if (v15)
        {
          v19 = v15;
          APSLogErrorAt(v15);
          v20 = 0;
        }

        else
        {
          v16 = CFArrayCreate(v14, &values, 1, MEMORY[0x277CBF128]);
          if (v16)
          {
            v17 = v16;
            v18 = APSRTCPXRBBufCreateWithRTCPXRBlockBBufs(v14, *(v6 + 80) << 16, v16, &cf);
            v19 = v18;
            if (v18)
            {
              APSLogErrorAt(v18);
              if (cf)
              {
                CFRelease(cf);
              }

              v20 = 0;
            }

            else
            {
              v20 = cf;
              cf = 0;
            }

            CFRelease(v17);
          }

          else
          {
            APSLogErrorAt(0);
            v20 = 0;
            v19 = 4294960568;
          }
        }
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      if (values)
      {
        CFRelease(values);
      }

      if (v19)
      {
        v21 = v19;
      }

      else
      {
        if (!v20)
        {
          v19 = 0;
          goto LABEL_22;
        }

        v21 = CFArrayEnsureCreatedAndAppend();
        if (!v21)
        {
          *(v6 + 200) = 0;
          CFRelease(v20);
          values = 0;
          goto LABEL_21;
        }

        v19 = v21;
      }

      APSLogErrorAt(v21);
LABEL_22:
      v22 = *(v6 + 104);
      FigSimpleMutexUnlock();
      if (v20)
      {
        CFRelease(v20);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = 0;
  }

  APSLogErrorAt(v8);
  v19 = 4294960591;
LABEL_24:
  CFRelease(v6);
  return v19;
}

BOOL hoseControllerAPAT_shouldGenerateRTCPDiscardReportPacketInternal(uint64_t a1, uint64_t a2)
{
  Span = APSRTPSeqNumRangeSetGetSpan(a2);
  v4 = *(a1 + 104);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (HIWORD(Span))
  {
    return 1;
  }

  result = 1;
  if (*(a1 + 184) <= 0x8000FFFF && *(a1 + 184) == Span)
  {
    return *(a1 + 188) == 0;
  }

  return result;
}

uint64_t hoseControllerAPAT_CopyAudioDataBBufs(uint64_t a1, uint64_t a2, const __CFArray **a3, char *a4)
{
  v93 = 0.0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (a2)
  {
    v9 = *(v7 + 16);
    v91 = *&a2;
    if (FigCFEqual())
    {
      if (a3)
      {
        if (a4)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          if (Mutable)
          {
            v11 = Mutable;
            v12 = (*(v8 + 64))(*(v8 + 48));
            if (v12)
            {
              APSLogErrorAt(v12);
              goto LABEL_121;
            }

            v13 = *(v8 + 104);
            FigSimpleMutexLock();
            ++*(v8 + 240);
            v14 = mach_absolute_time();
            v15 = APSCompactNTPMakeWithUpTicks(v14, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
            LODWORD(time2.value) = 0;
            v16 = *(v8 + 104);
            FigSimpleMutexCheckIsLockedOnThisThread();
            v17 = *(v8 + 176);
            if (v17)
            {
              v18 = *(v17 + 16);
              if (v18)
              {
                v19 = *(v18 + 16);
                if (v19)
                {
                  if (*(v19 + 24) && *(v17 + 24))
                  {
                    v20 = *(v17 + 32);
                    RTOEstimate = APSRTCPCCFBProcessorGetRTOEstimate(v17, &time2);
                    if (!RTOEstimate)
                    {
                      time.value = MEMORY[0x277D85DD0];
                      *&time.timescale = 0x40000000;
                      time.epoch = __hoseControllerAPAT_copyAudioDataBBufsForRetransmissionInternal_block_invoke;
                      v95 = &__block_descriptor_tmp_2724;
                      v96 = &v93;
                      v97 = v8;
                      v98 = v11;
                      v99 = vrev64_s32(v20);
                      value = time2.value;
                      v101 = v15;
                      v22 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(v19, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_blockApplier, &time);
                      if (!v22)
                      {
                        goto LABEL_15;
                      }

                      v84 = v22;
LABEL_146:
                      v82 = v84;
                      goto LABEL_130;
                    }

                    v84 = RTOEstimate;
                    if (RTOEstimate != -6718)
                    {
                      APSLogErrorAt(RTOEstimate);
                      goto LABEL_146;
                    }
                  }
                }
              }
            }

LABEL_15:
            v23 = *(v8 + 104);
            FigSimpleMutexCheckIsLockedOnThisThread();
            v89 = a3;
            v90 = a4;
            if (*(v8 + 116))
            {
              if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 10 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v68 = 0;
              v53 = 0;
              goto LABEL_105;
            }

            v24 = *(v8 + 120);
            if (!v24)
            {
              goto LABEL_22;
            }

            if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
            {
              if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_21;
                }

                v24 = *(v8 + 120);
              }

              v87 = v24;
              v85 = v8;
              v86 = v91;
              LogPrintF();
            }

LABEL_21:
            *(v8 + 116) = 0;
LABEL_22:
            v25 = MEMORY[0x277CC0898];
            v92 = *MEMORY[0x277CBED28];
            v26 = 1;
            v27 = v91;
            while (1)
            {
              v28 = *(v8 + 116);
              if (!v26)
              {
                goto LABEL_99;
              }

              if (*(v8 + 116))
              {
                goto LABEL_101;
              }

              if (v93 >= *(v8 + 32))
              {
                goto LABEL_100;
              }

              if (CFArrayGetCount(v11) >= *(v8 + 40))
              {
                v28 = *(v8 + 116);
LABEL_99:
                if (v28)
                {
                  goto LABEL_101;
                }

LABEL_100:
                if (!CFArrayGetCount(v11))
                {
LABEL_101:
                  updated = hoseControllerAPAT_processAndUpdateProbingSequenceInternal(v8, 1, 0);
                  if (updated)
                  {
                    v53 = updated;
                    goto LABEL_131;
                  }
                }

                if ((*(v8 + 160) & 1) != 0 && (time = *(v8 + 148), time2 = *(v8 + 124), !CMTimeCompare(&time, &time2)))
                {
                  v68 = 1;
                  v80 = hoseControllerAPAT_processAndUpdateProbingSequenceInternal(v8, 1, 0);
                  v53 = v80;
                  if (v80)
                  {
                    APSLogErrorAt(v80);
                  }
                }

                else
                {
                  v53 = 0;
                  v68 = *(v8 + 116);
                }

LABEL_105:
                *(v8 + 117) = CFArrayGetCount(v11) == 0;
                if (v53)
                {
                  v82 = v53;
                  goto LABEL_130;
                }

                time.value = 0;
                Count = CFArrayGetCount(v11);
                if (Count < 1)
                {
                  v71 = 0;
LABEL_116:
                  *(v8 + 336) += v71;
                  *(v8 + 328) += CFArrayGetCount(v11);
                  if (!*(v8 + 352) && v71)
                  {
                    *(v8 + 352) = 1;
                    hoseControllerAPAT_updateHoseStatsInternal(v8);
                  }

                  *v89 = v11;
                  v11 = 0;
                  *v90 = v68;
                }

                else
                {
                  v70 = Count;
                  v71 = 0;
                  v72 = 0;
                  while (1)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v11, v72);
                    if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
                    {
                      dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
                    }

                    v74 = APSSRTPBBufCreateWithRTPBBuf(APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, ValueAtIndex, *(v8 + 216), &time);
                    if (v74)
                    {
                      break;
                    }

                    DataLength = CMBlockBufferGetDataLength(time.value);
                    CFArraySetValueAtIndex(v11, v72, time.value);
                    if (time.value)
                    {
                      CFRelease(time.value);
                      time.value = 0;
                    }

                    v71 += DataLength;
                    if (v70 == ++v72)
                    {
                      goto LABEL_116;
                    }
                  }

                  v81 = v74;
                  APSLogErrorAt(v74);
                  if (time.value)
                  {
                    CFRetain(time.value);
                  }

                  v82 = v81;
LABEL_130:
                  APSLogErrorAt(v82);
                }

                v76 = *(v8 + 104);
                FigSimpleMutexUnlock();
LABEL_121:
                v77 = (*(v8 + 72))(*(v8 + 48));
                CFRelease(v8);
                if (v11)
                {
                  v78 = v11;
                  goto LABEL_123;
                }

                return v77;
              }

              v110 = 0;
              v109 = 0;
              v107 = *v25;
              v108 = 0;
              v106 = 0.0;
              v105 = 0;
              v104 = 0;
              v103 = v107;
              v102 = 0;
              v29 = *(v8 + 104);
              FigSimpleMutexCheckIsLockedOnThisThread();
              v30 = *(v8 + 184);
              *&v31 = *(v8 + 112);
              if (v30 <= 0x8000FFFF && (((v30 - 0x10000) & 0x80000000) != 0 || (v30 - LOWORD(v31)) > 0 || HIWORD(v30) <= (LOWORD(v31) - v30)))
              {
                if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 30)
                {
                  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1)
                  {
                    goto LABEL_85;
                  }

                  if (_LogCategory_Initialize())
                  {
                    *&v31 = *(v8 + 112);
LABEL_85:
                    v85 = v8;
                    v86 = v31;
                    LogPrintF();
                  }
                }

                v26 = 0;
                v53 = 0;
                goto LABEL_71;
              }

              PayloadType = (*(v8 + 56))(*(v8 + 48), COERCE_DOUBLE(*&v31), &v109, &v108, &v107, &v106, &v105, &v110, v85, COERCE_FLOAT64(*&v86), v87, COERCE_FLOAT64(*&Seconds));
              if (PayloadType)
              {
                v53 = PayloadType;
                goto LABEL_59;
              }

              if (!v110)
              {
                v64 = *(v8 + 112);
                if (*(v8 + 114) == v64)
                {
                  v65 = 30;
                }

                else
                {
                  v65 = 50;
                }

                if (v65 >= gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT)
                {
                  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1)
                  {
                    goto LABEL_81;
                  }

                  v66 = _LogCategory_Initialize();
                  v64 = *(v8 + 112);
                  if (v66)
                  {
                    v67 = *(v8 + 114);
LABEL_81:
                    time = *(v8 + 124);
                    Seconds = CMTimeGetSeconds(&time);
                    v86 = v27;
                    v87 = v64;
                    v85 = v8;
                    LogPrintF();
                    LOWORD(v64) = *(v8 + 112);
                  }
                }

                v26 = 0;
                v53 = 0;
                *(v8 + 114) = v64;
                goto LABEL_71;
              }

              v33 = CMBlockBufferGetDataLength(v110);
              v34 = *(v8 + 224);
              PayloadType = APSRTPBBufGetPayloadType(v110, &v104);
              if (PayloadType)
              {
                v53 = PayloadType;
                goto LABEL_59;
              }

              v35 = v104;
              v36 = v109;
              *(v8 + 114) = v109;
              v37 = v36 + 1;
              *(v8 + 112) = v36 + 1;
              if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 10)
              {
                if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_38;
                  }

                  v37 = *(v8 + 112);
                }

                time = v107;
                v86 = CMTimeGetSeconds(&time);
                v85 = v37;
                LogPrintF();
              }

LABEL_38:
              if (v35 == 115 || v35 == 112)
              {
                CMGetAttachment(v110, @"startWaterMark", 0);
                if (FigCFEqual())
                {
                  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
                  {
                    v86 = v27;
                    v87 = v109;
                    v85 = v8;
                    LogPrintF();
                  }

                  *(v8 + 200) = 1;
                  v38 = *(v8 + 16);
                  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
                  ProtocolVTable = CMBaseObjectGetProtocolVTable();
                  if (ProtocolVTable)
                  {
                    v40 = *(ProtocolVTable + 16);
                    if (v40)
                    {
                      v41 = *(v40 + 32);
                      if (v41)
                      {
                        v42 = *(v40 + 32);
                        v41(v38);
                      }
                    }
                  }
                }

                v43 = *&v107.value;
                *(v8 + 124) = *&v107.value;
                epoch = v107.epoch;
                *(v8 + 140) = v107.epoch;
                *&time2.value = v43;
                time2.epoch = epoch;
                pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
                v45 = CMBaseObjectGetProtocolVTable();
                if (!v45 || (v46 = *(v45 + 16)) == 0)
                {
                  v53 = 4294954508;
LABEL_58:
                  PayloadType = v53;
                  goto LABEL_59;
                }

                v47 = *(v46 + 8);
                if (!v47)
                {
                  v53 = 4294954514;
                  goto LABEL_58;
                }

                v48 = *(v46 + 8);
                time = time2;
                v49 = v47(*&v27, &time);
                if (v49)
                {
                  v53 = v49;
                  goto LABEL_58;
                }
              }

              v50 = v108;
              v51 = *(v8 + 104);
              FigSimpleMutexCheckIsLockedOnThisThread();
              v52 = *(v8 + 24);
              if (*&v52 <= v50)
              {
                if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 10)
                {
                  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1)
                  {
                    goto LABEL_56;
                  }

                  if (_LogCategory_Initialize())
                  {
                    v52 = *(v8 + 24);
LABEL_56:
                    v85 = v50;
                    v86 = v52;
                    LogPrintF();
                  }
                }

                *(v8 + 116) = 1;
              }

              v54 = v105;
              v55 = v108;
              v56 = *(v8 + 104);
              FigSimpleMutexCheckIsLockedOnThisThread();
              v57 = *(v8 + 24);
              v58 = *(v8 + 104);
              FigSimpleMutexCheckIsLockedOnThisThread();
              if (v54 >= 3 && v57 - 1000 > v55 && *(v8 + 257))
              {
                *(v8 + 272) = *(v8 + 260);
                *(v8 + 280) = 0;
                *(v8 + 284) = *(v8 + 240);
                *(v8 + 257) = 0;
                APSDataPacerCongestionControlSetProbing(*(v8 + 296), 1);
                *(v8 + 288) = 1;
              }

              v59 = v34 + v33;
              PayloadType = APSDataPacerBitRateUpdate(*(v8 + 304), v59, v106);
              v27 = v91;
              if (PayloadType)
              {
                v53 = PayloadType;
              }

              else
              {
                PayloadType = hoseControllerAPAT_processAndUpdateProbingSequenceInternal(v8, 0, &v102);
                if (PayloadType)
                {
                  v53 = PayloadType;
                }

                else
                {
                  HostTimeClock = CMClockGetHostTimeClock();
                  CMClockGetTime(&v103, HostTimeClock);
                  v61 = *(v8 + 176);
                  v62 = v109;
                  time2 = v103;
                  CMTimeConvertScale(&time, &time2, 0x10000, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
                  v63 = *(v8 + 272);
                  PayloadType = APSRTCPCCFBProcessorAddPacketSizeAndSendTime(v61, v62, v59, LODWORD(time.value), v102);
                  v53 = PayloadType;
                  if (!PayloadType)
                  {
                    CFArrayAppendValue(v11, v110);
                    v93 = v106 + v93;
                    v26 = 1;
                    goto LABEL_71;
                  }
                }
              }

LABEL_59:
              APSLogErrorAt(PayloadType);
              v26 = 0;
LABEL_71:
              if (v110)
              {
                CFRelease(v110);
              }

              if (v53)
              {
                updated = v53;
LABEL_131:
                APSLogErrorAt(updated);
                v68 = 0;
                goto LABEL_105;
              }
            }
          }

          v77 = 4294960568;
        }

        else
        {
          v77 = 4294960591;
        }
      }

      else
      {
        v77 = 4294960591;
      }
    }

    else
    {
      v77 = 4294960591;
    }
  }

  else
  {
    v77 = 4294960591;
  }

  APSLogErrorAt(0);
  v78 = v8;
LABEL_123:
  CFRelease(v78);
  return v77;
}

uint64_t __hoseControllerAPAT_copyAudioDataBBufsForRetransmissionInternal_block_invoke(uint64_t a1, int a2)
{
  v25 = 0;
  v22 = *MEMORY[0x277CC0898];
  v23 = *(MEMORY[0x277CC0898] + 16);
  v24 = 0;
  key_4 = 0.0;
  key = 0;
  destinationBuffer = 0;
  cf = 0;
  v17 = 0;
  if ((a2 & 0xFFFF0000) != 0)
  {
    v3 = 0;
    v4 = *MEMORY[0x277CBECE8];
    v5 = HIWORD(a2);
    v6 = a2;
    do
    {
      v7 = *(a1 + 40);
      if (**(a1 + 32) >= *(v7 + 32))
      {
        break;
      }

      Count = *(a1 + 48);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
        v7 = *(a1 + 40);
      }

      if (Count >= *(v7 + 40))
      {
        break;
      }

      MostRecentPacketSendTime = APSRTCPCCFBProcessorGetMostRecentPacketSendTime(*(v7 + 176), v6, &v25 + 1, &v25, &v17);
      if (MostRecentPacketSendTime)
      {
        goto LABEL_40;
      }

      v10 = APSRTPSeqNumRangeSetContainsSeqNum(*(*(a1 + 40) + 192), v6);
      if (v10)
      {
        APSRTPSeqNumRangeSetRemoveSeqNumRange(*(*(a1 + 40) + 192), v6 | 0x10000);
      }

      if (*(a1 + 56) - v25 >= 1)
      {
        v11 = v10 && !v17;
        if (v11 || (*(a1 + 60) - HIDWORD(v25)) >= *(a1 + 64))
        {
          MostRecentPacketSendTime = (*(*(a1 + 40) + 56))(*(*(a1 + 40) + 48), v6, &key, &v24, &v22, &key_4, &key + 2, &cf);
          if (MostRecentPacketSendTime)
          {
            goto LABEL_40;
          }

          v12 = cf;
          if (!cf)
          {
            if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT > 50)
            {
              goto LABEL_30;
            }

            if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize())
            {
              v16 = *(a1 + 40);
              LogPrintF();
            }

            break;
          }

          if (key != v6)
          {
            goto LABEL_24;
          }

          MostRecentPacketSendTime = APSRTPBBufCreateMutableHeaderCopy(cf, v4, &destinationBuffer);
          if (MostRecentPacketSendTime)
          {
            goto LABEL_40;
          }

          sourceBytes = bswap32((*(*(a1 + 40) + 80) << 16) | 0xBAD);
          if (!destinationBuffer)
          {
            MostRecentPacketSendTime = 4294960591;
LABEL_40:
            APSLogErrorAt(MostRecentPacketSendTime);
            break;
          }

          MostRecentPacketSendTime = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 8uLL, 4uLL);
          if (MostRecentPacketSendTime)
          {
            goto LABEL_40;
          }

          CFArrayAppendValue(*(a1 + 48), destinationBuffer);
          v13 = *(a1 + 40);
          **(a1 + 32) = key_4 + **(a1 + 32);
          ++*(v13 + 320);
          v14 = *(a1 + 68);
          MostRecentPacketSendTime = APSRTCPCCFBProcessorSetRetransmitTime(*(v13 + 176), key);
          if (MostRecentPacketSendTime)
          {
            goto LABEL_40;
          }

          v12 = cf;
          if (cf)
          {
LABEL_24:
            CFRelease(v12);
            cf = 0;
          }

          if (destinationBuffer)
          {
            CFRelease(destinationBuffer);
            destinationBuffer = 0;
          }
        }
      }

      ++v6;
      ++v3;
    }

    while (v3 < v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_30:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return 0;
}

uint64_t hoseControllerAPAT_processAndUpdateProbingSequenceInternal(uint64_t a1, int a2, _BYTE *a3)
{
  v6 = *(a1 + 104);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v7 = *(a1 + 288);
  if (v7 == 2)
  {
    if (*(a1 + 240) != *(a1 + 284))
    {
      APSDataPacerCongestionControlSetProbing(*(a1 + 296), 0);
      result = 0;
      *(a1 + 288) = 0;
      return result;
    }

    return 0;
  }

  if (v7 != 1)
  {
    return 0;
  }

  v8 = *(a1 + 280);
  if (v8 < *(a1 + 276))
  {
    if (a2)
    {
      if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
      {
        if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          v10 = *(a1 + 280);
        }

        v12 = *(a1 + 272);
        v11 = *(a1 + 88);
        LogPrintF();
      }

LABEL_13:
      result = 0;
      *(a1 + 288) = 2;
      return result;
    }

    *(a1 + 280) = v8 + 1;
    *(a1 + 284) = *(a1 + 240);
    *a3 = 1;
    if (*(a1 + 280) == *(a1 + 276))
    {
      goto LABEL_13;
    }

    return 0;
  }

  APSLogErrorAt(0);
  return 4294960587;
}

double hoseControllerAPAT_updateHoseStatsInternal(uint64_t a1)
{
  value[0] = 0;
  v2 = *(a1 + 104);
  FigSimpleMutexCheckIsLockedOnThisThread();
  mach_absolute_time();
  if ((UpTicksToMilliseconds() - *(a1 + 312)) < 0x3E9)
  {
    return result;
  }

  v4 = *(a1 + 176);
  if (!v4)
  {
    APSLogErrorAt(0);
    goto LABEL_36;
  }

  if (!*(v4 + 40))
  {
LABEL_36:
    v5 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  CMTimeMake(&time, *(v4 + 44), 0x10000);
  CMTimeConvertScale(&value[1], &time, 1000, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  v5 = 1;
  v6 = *&value[1];
LABEL_5:
  if (!APSRTCPCCFBProcessorGetRTOEstimate(*(a1 + 176), value))
  {
    CMTimeMake(&time, value[0], 0x10000);
    CMTimeConvertScale(&value[1], &time, 1000, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  }

  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
  {
    if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize())
    {
      v7 = *(a1 + 88);
      v8 = *(a1 + 112);
      time = *(a1 + 124);
      Seconds = CMTimeGetSeconds(&time);
      v32 = *(a1 + 328);
      v33 = *(a1 + 320);
      v30 = *(a1 + 344) + *(a1 + 336);
      v28 = Seconds;
      v26 = v7;
      v27 = v8;
      v25 = a1;
      LogPrintF();
    }

    if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
    {
      if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize())
      {
        v10 = *(a1 + 88);
        [*(*(a1 + 248) + 24) bandwidthEstimation];
        [*(*(a1 + 248) + 24) owrd];
        v31 = *(a1 + 304);
        APSRateControllerAVCWrapperGetMaxBitrate(*(a1 + 248));
        LogPrintF();
      }

      if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
      {
        v11 = *(a1 + 88);
        v12 = *(a1 + 176);
        if (v12)
        {
          v13 = *(v12 + 16);
          if (v13)
          {
            v14 = *(v13 + 16);
          }
        }

        v29 = *(a1 + 186) + *(a1 + 184);
        LogPrintF();
      }
    }
  }

  if (*(a1 + 352))
  {
    v15 = *(a1 + 176);
    if (v15 && (v16 = *(v15 + 16)) != 0)
    {
      v17 = *(v16 + 16);
    }

    else
    {
      v17 = 0;
    }

    Span = APSRTPSeqNumRangeSetGetSpan(v17);
    if (v17)
    {
      v19 = *(v17 + 24);
    }

    else
    {
      v19 = 0;
    }

    APSAudioHoseMetricCollectorUpdateSendWindowDataForHose(*(a1 + 96), *(a1 + 16), HIWORD(Span), v19);
    v20 = *(a1 + 96);
    v21 = *(a1 + 16);
    TargetBitrate = APSRateControllerAVCWrapperGetTargetBitrate(*(a1 + 248));
    MinBitrate = APSRateControllerAVCWrapperGetMinBitrate(*(a1 + 248));
    MaxBitrate = APSRateControllerAVCWrapperGetMaxBitrate(*(a1 + 248));
    APSAudioHoseMetricCollectorUpdateRateControllerDataForHose(v20, v21, TargetBitrate, MinBitrate, MaxBitrate, 1000 * [*(*(a1 + 248) + 24) bandwidthEstimation], objc_msgSend(*(*(a1 + 248) + 24), "owrd"));
    APSAudioHoseMetricCollectorUpdateAPATTransmissionDataForHose(*(a1 + 96), *(a1 + 16), *(a1 + 328), *(a1 + 320), *(a1 + 336), *(a1 + 344));
    if (v5)
    {
      APSAudioHoseMetricCollectorUpdateRoundTripTimeDataForHose(*(a1 + 96), *(a1 + 16), v6);
    }

    APSAudioHoseMetricCollectorUpdateSlotsAvailableCountForHose(*(a1 + 96), *(a1 + 16), *(a1 + 186));
  }

  mach_absolute_time();
  *(a1 + 312) = UpTicksToMilliseconds();
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  return result;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATTriggerBurst(uint64_t a1)
{
  v2 = *(a1 + 104);
  FigSimpleMutexLock();
  *(a1 + 116) = 0;
  v3 = *(a1 + 120);
  v4 = *(a1 + 104);
  FigSimpleMutexUnlock();
  if (v3)
  {
    return 0;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 10 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
  {
    v12 = *(a1 + 16);
    LogPrintF();
  }

  v5 = *(a1 + 16);
  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v7 = *(ProtocolVTable + 16)) == 0)
  {
    v10 = 4294954508;
LABEL_12:
    APSLogErrorAt(v10);
    return v10;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    v10 = 4294954514;
    goto LABEL_12;
  }

  v9 = *(v7 + 16);
  v10 = v8(v5);
  if (v10)
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerNotifyPendingFlushForHose(uint64_t a1)
{
  v2 = *(a1 + 104);
  FigSimpleMutexLock();
  ++*(a1 + 120);
  v3 = *(a1 + 104);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerNotifyFlushCompleteForHose(uint64_t a1)
{
  v2 = *(a1 + 104);
  FigSimpleMutexLock();
  --*(a1 + 120);
  v3 = *(a1 + 104);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATNotifyAudioDataAvailableIfNecessary(uint64_t a1)
{
  v2 = *(a1 + 104);
  FigSimpleMutexLock();
  v3 = *(a1 + 116);
  v4 = *(a1 + 117);
  v5 = *(a1 + 104);
  FigSimpleMutexUnlock();
  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 10 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
  {
    v6 = *(a1 + 16);
    LogPrintF();
  }

  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (v7)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v11 = *(ProtocolVTable + 16)) == 0)
  {
    v8 = 4294954508;
LABEL_17:
    APSLogErrorAt(v8);
    return v8;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    v8 = 4294954514;
    goto LABEL_17;
  }

  v13 = *(v11 + 16);
  v8 = v12(v9);
  if (v8)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATForceTransmitDataAtMediaTime(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  FigSimpleMutexLock();
  v5 = *(a2 + 16);
  *(a1 + 148) = *a2;
  *(a1 + 164) = v5;
  v6 = *(a1 + 104);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATCancelAllForcedDataTransmissions(uint64_t a1)
{
  v2 = *(a1 + 104);
  FigSimpleMutexLock();
  v3 = MEMORY[0x277CC0898];
  *(a1 + 148) = *MEMORY[0x277CC0898];
  *(a1 + 164) = *(v3 + 16);
  v4 = *(a1 + 104);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATPrunePacketsWithinRange(void *a1, unsigned int a2)
{
  if (a2 > 0x8000FFFF)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v4 = a1[13];
  FigSimpleMutexLock();
  v5 = APSRTCPCCFBProcessorFlushPacketsWithinRange(a1[22], a2);
  if (v5)
  {
    v6 = v5;
    goto LABEL_10;
  }

  v5 = APSRTCPCCFBProcessorHintLimitSeqNum(a1[22], (HIWORD(a2) + a2));
  if (v5)
  {
    v6 = v5;
    goto LABEL_10;
  }

  v5 = APSRTPSeqNumRangeSetRemoveSeqNumRange(a1[24], a2);
  v6 = v5;
  if (v5)
  {
LABEL_10:
    APSLogErrorAt(v5);
  }

  v7 = a1[13];
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATFlush(uint64_t a1)
{
  v2 = *(a1 + 104);
  FigSimpleMutexLock();
  v3 = *(a1 + 16);
  pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0)
  {
    v8 = 4294954508;
LABEL_7:
    APSLogErrorAt(v8);
    goto LABEL_8;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    v8 = 4294954514;
    goto LABEL_7;
  }

  v7 = *(v5 + 8);
  v11 = *MEMORY[0x277CC08F0];
  v12 = *(MEMORY[0x277CC08F0] + 16);
  v8 = v6(v3, &v11);
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  v9 = *(a1 + 104);
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATFlushFromTime(uint64_t a1, CMTime *a2)
{
  v4 = *(a1 + 104);
  FigSimpleMutexLock();
  time1 = *a2;
  v14 = *(a1 + 124);
  if (CMTimeCompare(&time1, &v14) < 0)
  {
    v6 = *&a2->value;
    *(a1 + 140) = a2->epoch;
    *(a1 + 124) = v6;
    v7 = *(a1 + 16);
    v14 = *a2;
    pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        v11 = *(v9 + 8);
        time1 = v14;
        v5 = v10(v7, &time1);
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v5 = 4294954514;
      }
    }

    else
    {
      v5 = 4294954508;
    }

    APSLogErrorAt(v5);
    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:
  v12 = *(a1 + 104);
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATTick(uint64_t a1)
{
  v2 = *(a1 + 104);
  FigSimpleMutexLock();
  v3 = *(a1 + 176);
  if (v3 && (v4 = *(v3 + 16)) != 0)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  if (!hoseControllerAPAT_shouldGenerateRTCPDiscardReportPacketInternal(a1, v5))
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 16);
  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v8 = *(ProtocolVTable + 16)) == 0)
  {
    v12 = 4294954508;
LABEL_13:
    APSLogErrorAt(v12);
    goto LABEL_14;
  }

  v9 = *(v8 + 32);
  if (!v9)
  {
    v12 = 4294954514;
    goto LABEL_13;
  }

  v10 = *(v8 + 32);
  v11 = v9(v6);
  if (v11)
  {
    v12 = v11;
    goto LABEL_13;
  }

  *(a1 + 200) = 1;
LABEL_11:
  hoseControllerAPAT_updateHoseStatsInternal(a1);
  v12 = 0;
LABEL_14:
  v13 = *(a1 + 104);
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATGetLastDeliveredSeqNum(uint64_t a1, _WORD *a2)
{
  if (a2 && a1)
  {
    v4 = *(a1 + 104);
    FigSimpleMutexLock();
    if (*(a1 + 136))
    {
      v5 = *(a1 + 176);
      if (v5 && (v6 = *(v5 + 16)) != 0)
      {
        v7 = *(v6 + 16);
      }

      else
      {
        v7 = 0;
      }

      v8 = 0;
      *a2 = APSRTPSeqNumRangeSetGetSpan(v7) - 1;
    }

    else
    {
      APSLogErrorAt(0);
      v8 = 4294960569;
    }

    v9 = *(a1 + 104);
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v8;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATProbingSequenceRequestedWithID(uint64_t a1, int a2, int a3)
{
  if (a1 && a3)
  {
    v6 = *(a1 + 104);
    FigSimpleMutexLock();
    *(a1 + 260) = a2;
    *(a1 + 264) = a3;
    *(a1 + 257) = 1;
    v7 = *(a1 + 104);
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATProbingStatus(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 104);
    FigSimpleMutexLock();
    v3 = *(a1 + 288);
    v4 = *(a1 + 104);
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v3;
}

uint64_t APSCMNotificationCenterPostNotificationAsync(const void *a1, const void *a2, const void *a3, const void *a4, int a5, NSObject *a6, dispatch_qos_class_t qos_class)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APSCMNotificationCenterPostNotificationAsync_block_invoke;
  block[3] = &__block_descriptor_tmp_2746;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = a4;
  v16 = a5;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos_class, 0, block);
  if (!v12)
  {
    return 4294960568;
  }

  v13 = v12;
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  dispatch_async(a6, v13);
  _Block_release(v13);
  return 0;
}

void __APSCMNotificationCenterPostNotificationAsync_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  CMNotificationCenterPostNotification();
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 56);
  if (v10)
  {

    CFRelease(v10);
  }
}

double APSRoundToSignificantFigures(int a1, double a2)
{
  if (a2 == 0.0 || a1 == 0)
  {
    return 0.0;
  }

  v5 = log10(fabs(a2));
  v6 = __exp10(floor(v5) - (a1 - 1));
  return v6 * round(a2 / v6);
}

uint64_t APSHTTPParseByteRangeRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  *a4 = 0;
  *a5 = -1;
  result = HTTPParseByteRangeRequest();
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    if (*a4 < 0)
    {
      if (v10 != -1)
      {
        return 4294960586;
      }

      *a4 = v9 + a3;
    }

    else if ((v10 & 0x8000000000000000) == 0 && v10 <= a3)
    {
LABEL_9:
      if (v10 <= a3 && v9 < v10)
      {
        return 0;
      }

LABEL_13:
      if (gLogCategory_AirPlayHTTPUtilities <= 50)
      {
        if (gLogCategory_AirPlayHTTPUtilities == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return 4294960586;
          }

          v11 = *a4;
          v12 = *a5;
        }

        LogPrintF();
      }

      return 4294960586;
    }

    *a5 = a3;
    v9 = *a4;
    v10 = a3;
    if (*a4 < 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t APSHTTPOpenLocalFile(const __CFString *a1, int *a2, off_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x401uLL);
  memset(&v12, 0, sizeof(v12));
  CString = CFStringGetCString(a1, buffer, 1025, 0x8000100u);
  v7 = -1;
  v8 = 4294960585;
  if (!CString || !buffer[0])
  {
    goto LABEL_21;
  }

  v7 = open(buffer, 0);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_6:
    if (fcntl(v7, 48, 1) && *__error())
    {
      __error();
    }

    if (fcntl(v7, 45, 1) && *__error())
    {
      __error();
    }

    if (!fstat(v7, &v12))
    {
      v8 = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    if (*__error())
    {
      v8 = *__error();
      if (v7 < 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 4294960596;
      if (v7 < 0)
      {
        goto LABEL_21;
      }
    }

    if (v8)
    {
      close(v7);
      v7 = -1;
    }

LABEL_21:
    if (a2)
    {
      goto LABEL_22;
    }

LABEL_26:
    close(v7);
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (*__error())
  {
    v8 = *__error();
    if (v8)
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  v8 = 4294960596;
  if (!a2)
  {
    goto LABEL_26;
  }

LABEL_22:
  *a2 = v7;
  if (a3)
  {
LABEL_23:
    tv_sec = v12.st_mtimespec.tv_sec;
    *a3 = v12.st_size;
    a3[1] = tv_sec;
  }

LABEL_24:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t APSCryptorCBCCreate(uint64_t a1, const __CFData *a2, const __CFData *a3, void *a4)
{
  if (!a2)
  {
    v8 = 4294895585;
    APSLogErrorAt(0);
    return v8;
  }

  if (!a3)
  {
    v8 = 4294895585;
    v7 = 0;
LABEL_19:
    APSLogErrorAt(v7);
    return v8;
  }

  if (APSCryptorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetClassID_sRegisterOnce, &APSCryptorGetClassID_sClassID, cryptor_registerBaseClass);
  }

  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v8 = v7;
    goto LABEL_19;
  }

  CMBaseObjectGetDerivedStorage();
  CFDataGetBytePtr(a2);
  CFDataGetBytePtr(a3);
  v7 = AES_CBCFrame_Init();
  if (v7)
  {
    v8 = v7;
    goto LABEL_19;
  }

  CFDataGetBytePtr(a2);
  CFDataGetBytePtr(a3);
  v7 = AES_CBCFrame_Init();
  if (v7)
  {
    v8 = v7;
    goto LABEL_19;
  }

  if (gLogCategory_APSCryptorCBC <= 30 && (gLogCategory_APSCryptorCBC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = 0;
  *a4 = 0;
  return v8;
}

uint64_t cbcCryptor_DecryptMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t *a8)
{
  CMBaseObjectGetDerivedStorage();
  if (a7 < a5)
  {
    APSLogErrorAt(0);
    return 4294895585;
  }

  else
  {
    v11 = AES_CBCFrame_Update();
    if (v11)
    {
      v12 = v11;
      APSLogErrorAt(v11);
    }

    else
    {
      v12 = 0;
      if (a8)
      {
        *a8 = a5;
      }
    }
  }

  return v12;
}

uint64_t cbcCryptor_EncryptMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  CMBaseObjectGetDerivedStorage();
  if (a7 < a5)
  {
    APSLogErrorAt(0);
    return 4294895585;
  }

  else
  {
    v9 = AES_CBCFrame_Update();
    v10 = v9;
    if (v9)
    {
      APSLogErrorAt(v9);
    }
  }

  return v10;
}

__CFString *cbcCryptor_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSCryptorCBC %p>", a1);
  return Mutable;
}

uint64_t cbcCryptor_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSCryptorCBC <= 30 && (gLogCategory_APSCryptorCBC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  AES_CBCFrame_Final();

  return AES_CBCFrame_Final();
}

uint64_t APSWiFiTransactionGetTypeID()
{
  if (gAPSWiFiTransactionInitOnce != -1)
  {
    dispatch_once_f(&gAPSWiFiTransactionInitOnce, 0, _APSWiFiTransactionGetTypeID);
  }

  return gAPSWiFiTransactionTypeID;
}

uint64_t _APSWiFiTransactionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSWiFiTransactionTypeID = result;
  return result;
}

void _APSWiFiTransactionFinalize(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 16);
    v7 = *(a1 + 48);
    v3 = [MEMORY[0x277D7BB38] shared];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___APSWiFiTransactionFinalize_block_invoke;
    v8[3] = &__block_descriptor_64_e8_v16__0q8l;
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = v2;
    v11 = a1;
    [v3 endTransaction:v2 completionHandler:v8];
  }

  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___APSWiFiTransactionPostTransactionReleasedEvent_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v4, block);
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    _Block_release(v6);
    *(a1 + 24) = 0;
  }
}

uint64_t APSWiFiTransactionCreate(unsigned int a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  *label = 0u;
  v22 = 0u;
  if (!a4)
  {
    APSLogErrorAt(0);
    v13 = 4294960591;
    goto LABEL_14;
  }

  if (gAPSWiFiTransactionInitOnce != -1)
  {
    dispatch_once_f(&gAPSWiFiTransactionInitOnce, 0, _APSWiFiTransactionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    v13 = 4294960568;
    goto LABEL_14;
  }

  v9 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = a2;
  *(Instance + 56) = a3;
  v18 = Instance;
  SNPrintF();
  v10 = dispatch_queue_create(label, 0);
  *(v9 + 32) = v10;
  if (!v10)
  {
    APSLogErrorAt(0);
    v13 = 4294960568;
    goto LABEL_13;
  }

  if (a1 >= 4)
  {
    v14 = **(v9 + 56);
    if (v14 <= 90)
    {
      if (v14 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v17 = *(v9 + 56);
      }

      v19 = *(v9 + 48);
      LogPrintF();
    }

LABEL_12:
    v13 = 4294960591;
    goto LABEL_13;
  }

  *(v9 + 16) = qword_22234DB78[a1];
  CFRetain(v9);
  v11 = [MEMORY[0x277D7BB38] shared];
  v12 = *(v9 + 16);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __APSWiFiTransactionCreate_block_invoke;
  v20[3] = &__block_descriptor_40_e8_v16__0q8l;
  v20[4] = v9;
  [v11 beginTransaction:v12 completionHandler:v20];
  v13 = 0;
  *a4 = CFRetain(v9);
LABEL_13:
  CFRelease(v9);
LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void __APSWiFiTransactionCreate_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 90;
  }

  else
  {
    v4 = 50;
  }

  v5 = *(a1 + 32);
  v6 = **(v5 + 56);
  if (v4 >= v6)
  {
    if (v6 != -1)
    {
LABEL_6:
      v7 = *(v5 + 16);
      v11 = *(v5 + 48);
      LogPrintF();
      v5 = *(a1 + 32);
      goto LABEL_8;
    }

    v8 = *(v5 + 56);
    v9 = _LogCategory_Initialize();
    v5 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v5 + 56);
      goto LABEL_6;
    }
  }

LABEL_8:
  *(v5 + 40) = a2 == 0;

  CFRelease(v5);
}

void APSWiFiTransactionUpdateTransaction(int *a1, uint64_t a2, unsigned int a3, int a4, CFTypeRef *a5)
{
  if (a5)
  {
    if (a3 < 4)
    {
      if (*a1 <= 50)
      {
        v10 = off_2784A3F30[a3];
        v11 = qword_22234DB78[a3];
        if (*a1 != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }
      }

      v13 = *a5;
      if (a4)
      {
        if (!v13)
        {

          APSWiFiTransactionCreate(a3, a2, a1, a5);
        }
      }

      else if (v13)
      {
        CFRelease(v13);
        *a5 = 0;
      }

      return;
    }

    v12 = 4294960591;
  }

  else
  {
    v12 = 0;
  }

  APSLogErrorAt(v12);
}

void APSWiFiTransactionSetReleaseHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __APSWiFiTransactionSetReleaseHandler_block_invoke;
  v3[3] = &unk_2784A3EF0;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_sync(v2, v3);
}

void __APSWiFiTransactionSetReleaseHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _Block_copy(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  if (v5)
  {
    _Block_release(v5);
    v4 = *(a1 + 40);
  }

  *(v4 + 24) = v3;
}

uint64_t APSKeyHolderGetClassID()
{
  if (APSKeyHolderGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSKeyHolderGetClassID_sRegisterOnce, &APSKeyHolderGetClassID_sClassID, keyHolder_registerBaseClass);
  }

  return APSKeyHolderGetClassID_sClassID;
}

uint64_t keyHolder_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&keyHolder_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSKeyHolderGetTypeID()
{
  if (APSKeyHolderGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSKeyHolderGetClassID_sRegisterOnce, &APSKeyHolderGetClassID_sClassID, keyHolder_registerBaseClass);
  }

  v1 = APSKeyHolderGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSContiguousAllocatorGetTypeID()
{
  if (gAPSContiguousAllocatorInitOnce != -1)
  {
    dispatch_once_f(&gAPSContiguousAllocatorInitOnce, 0, _APSContiguousAllocatorGetTypeID);
  }

  return gAPSContiguousAllocatorTypeID;
}

uint64_t _APSContiguousAllocatorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSContiguousAllocatorTypeID = result;
  return result;
}

void _APSContiguousAllocatorFinalize(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    malloc_zone_free(*(a1 + 16), v1);
    *(a1 + 24) = 0;
  }
}

uint64_t APSContiguousAllocatorCreate(size_t a1, malloc_zone_t *a2, int a3, unsigned int a4, uint64_t *a5)
{
  if (gAPSContiguousAllocatorInitOnce != -1)
  {
    dispatch_once_f(&gAPSContiguousAllocatorInitOnce, 0, _APSContiguousAllocatorGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v11 = Instance;
  v12 = 4294895215;
  *(Instance + 96) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  if (a1 < 5)
  {
LABEL_22:
    APSLogErrorAt(0);
    CFRelease(v11);
    return v12;
  }

  if (!a2)
  {
    a2 = malloc_default_zone();
  }

  *(v11 + 16) = a2;
  *(v11 + 72) = a3;
  *(v11 + 88) = a1;
  *(v11 + 56) = a1;
  *(v11 + 64) = a4;
  if (a4)
  {
    v13 = malloc_type_zone_memalign(a2, a4, a1, 0x2246DD45uLL);
  }

  else
  {
    v13 = malloc_type_zone_calloc(a2, 1uLL, a1, 0x100004077774924uLL);
  }

  *(v11 + 24) = v13;
  if (!v13)
  {
    v12 = 4294895216;
    goto LABEL_22;
  }

  if (*(v11 + 64))
  {
    bzero(v13, a1);
    v13 = *(v11 + 24);
  }

  *(v11 + 32) = &v13[*(v11 + 56)];
  *(v11 + 40) = v13;
  *(v11 + 48) = v13;
  if (gLogCategory_APSContiguousAllocator > 50)
  {
    goto LABEL_17;
  }

  if (gLogCategory_APSContiguousAllocator == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_17;
    }

    v15 = *(v11 + 56);
  }

  LogPrintF();
LABEL_17:
  v12 = 0;
  *a5 = v11;
  return v12;
}

uint64_t APSContiguousAllocatorAcquireBlock(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    v15 = 4294895215;
LABEL_39:
    APSLogErrorAt(0);
    goto LABEL_29;
  }

  if (*(a1 + 72) > a2)
  {
    v15 = 4294895215;
    goto LABEL_39;
  }

  v4 = *(a1 + 64);
  if (v4 && a2 % v4)
  {
    v15 = 4294895215;
    goto LABEL_39;
  }

  if (a2 >= 0xFFFFFFFC)
  {
    v15 = 4294895215;
    goto LABEL_39;
  }

  if (!a3)
  {
    v15 = 4294895215;
    goto LABEL_39;
  }

  v5 = a2 + 4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7 <= v6 && *(a1 + 80))
  {
    if (v7 < v6)
    {
      if (v5 > v6 - v7)
      {
        goto LABEL_22;
      }

LABEL_15:
      v9 = v7 + v5;
      *v7 = a2;
      v10 = v7 + 1;
      *(a1 + 48) = v9;
      v11 = *(a1 + 80);
      v12 = v11 + v5;
      *(a1 + 80) = v12;
      v13 = *(a1 + 56);
      if (v12 <= v13)
      {
        v14 = *(a1 + 88);
        *(a1 + 88) = v14 - v5;
        if (v14 - v5 >= 0 && v14 + v11 == v13)
        {
          *a3 = v10;
          if (gLogCategory_APSContiguousAllocator <= 10)
          {
            if (gLogCategory_APSContiguousAllocator == -1)
            {
              if (!_LogCategory_Initialize())
              {
                return 0;
              }

              v17 = *(a1 + 56);
              v18 = *(a1 + 80);
              v19 = *(a1 + 88);
            }

            v21 = *(a1 + 96);
            v20 = *(a1 + 40);
            LogPrintF();
          }

          return 0;
        }
      }

LABEL_40:
      APSLogErrorAt(0);
      v15 = 4294895214;
      goto LABEL_29;
    }

    if (*(a1 + 88) != *(a1 + 96))
    {
      goto LABEL_40;
    }
  }

  else
  {
    v8 = *(a1 + 32) - v7;
    if (v5 <= v8)
    {
      goto LABEL_15;
    }

    v7 = *(a1 + 24);
    if (v5 <= v6 - v7)
    {
      *(a1 + 96) = v8;
      goto LABEL_15;
    }
  }

LABEL_22:
  v15 = 4294895212;
  if (gLogCategory_APSContiguousAllocator > 20)
  {
    return v15;
  }

  if (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize())
  {
    LogPrintF();
  }

LABEL_29:
  if (gLogCategory_APSContiguousAllocator <= 20 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v15;
}

uint64_t APSContiguousAllocatorGetFirstAcquiredBlock(uint64_t a1, void *a2)
{
  v2 = 4294895213;
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      if (*(a1 + 80))
      {
        *a2 = *(a1 + 40) + 4;
      }

      else
      {
        *a2 = 0;
      }

      return v2;
    }

    v2 = 4294895215;
  }

  APSLogErrorAt(0);
  if (gLogCategory_APSContiguousAllocator <= 90 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v2;
}

uint64_t APSContiguousAllocatorRelinquishBlock(void *a1, unint64_t a2, unsigned int a3, _DWORD *a4)
{
  v8 = 4294895215;
  if (!a1 || !a3 || !a2 || a1[5] + 4 != a2 || a1[3] > a2 || a1[4] <= a2)
  {
    goto LABEL_37;
  }

  v9 = *(a2 - 4);
  if (gLogCategory_APSContiguousAllocator <= 10)
  {
    if (gLogCategory_APSContiguousAllocator == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v18 = a1[5];
    }

    LogPrintF();
  }

LABEL_11:
  if (v9 != a3)
  {
    goto LABEL_37;
  }

  bzero((a1[5] + 4), a3);
  *(a2 - 4) = 0;
  v10 = a1[4];
  v11 = (a1[5] + a3 + 4);
  a1[5] = v11;
  if (v11 >= v10 || ((v10 - v11) & 0xFFFFFFFC) == 0 || !*v11 && v11 != a1[6])
  {
    v11 = a1[3];
    a1[5] = v11;
    a1[12] = 0;
  }

  if (a4 && v11 + 1 != a4 && gLogCategory_APSContiguousAllocator <= 90 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = a1[10] - (a3 + 4);
  a1[10] = v12;
  v8 = 4294895214;
  if (v12 < 0)
  {
    goto LABEL_37;
  }

  v13 = a1[11] + a3 + 4;
  a1[11] = v13;
  v14 = a1[7];
  if (v13 <= v14 || gLogCategory_APSContiguousAllocator > 90)
  {
    goto LABEL_29;
  }

  if (gLogCategory_APSContiguousAllocator == -1)
  {
    v15 = _LogCategory_Initialize();
    v13 = a1[11];
    v14 = a1[7];
    if (!v15)
    {
      goto LABEL_29;
    }

    v19 = a1[10];
  }

  LogPrintF();
  v13 = a1[11];
  v14 = a1[7];
LABEL_29:
  if (v13 <= v14)
  {
    if (gLogCategory_APSContiguousAllocator <= 10)
    {
      if (gLogCategory_APSContiguousAllocator != -1 || (v16 = _LogCategory_Initialize(), v13 = a1[11], v14 = a1[7], v16))
      {
        v22 = a1[12];
        v20 = a1[10];
        LogPrintF();
        v13 = a1[11];
        v14 = a1[7];
      }
    }

    if (a1[10] + v13 == v14)
    {
      return 0;
    }
  }

LABEL_37:
  APSLogErrorAt(0);
  if (gLogCategory_APSContiguousAllocator <= 90 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    v21 = a1[5];
    LogPrintF();
  }

  return v8;
}

uint64_t APSContiguousAllocatorRelinquishBlockFromAddress(void *a1, unint64_t a2, int a3)
{
  v3 = 4294895214;
  if (!a1)
  {
    v3 = 4294895215;
    goto LABEL_33;
  }

  if (!a3 || !a2 || (v7 = a1[3], v7 > a2) || a1[4] <= a2)
  {
    v3 = 4294895215;
    goto LABEL_33;
  }

  v8 = (a2 - 4);
  if (a2 - 4 < v7)
  {
    v3 = 4294895215;
    goto LABEL_33;
  }

  v9 = *v8;
  if (gLogCategory_APSContiguousAllocator <= 30 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    v30 = a1[11];
    v31 = a1[12];
    v27 = a1[7];
    v28 = a1[10];
    v26 = a1[6];
    v24 = a1[5];
    LogPrintF();
  }

  if (!v9)
  {
    return 0;
  }

  if (v9 != a3)
  {
    v3 = 4294895215;
    goto LABEL_33;
  }

  v11 = a1[5];
  v10 = a1[6];
  if (v10 > v11)
  {
    if (v10 >= a1[4])
    {
      goto LABEL_33;
    }

    v12 = v10 - v8;
    bzero((a2 - 4), v10 - v8);
    v13 = a1[11] + v12;
    a1[11] = v13;
    if (v13 > a1[7])
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  if (v8 < v10)
  {
    v12 = v10 - v8;
    bzero((a2 - 4), v10 - v8);
    v14 = a1[11] + v12;
    a1[11] = v14;
    if (v14 > a1[7])
    {
      goto LABEL_33;
    }

LABEL_19:
    a1[10] -= v12;
    goto LABEL_24;
  }

  if (v8 >= v11)
  {
    v15 = a1[3];
    v16 = v10 - v15;
    bzero(v15, v10 - v15);
    v17 = a1[11] + v16;
    a1[11] = v17;
    if (v17 <= a1[7])
    {
      a1[10] -= v16;
      v18 = a1[4] - (v8 + a1[12]);
      bzero((a2 - 4), v18);
      v19 = a1[11] + v18;
      a1[11] = v19;
      if (v19 <= a1[7])
      {
        a1[10] -= v18;
        a1[12] = 0;
LABEL_24:
        a1[6] = v8;
        if (gLogCategory_APSContiguousAllocator > 30)
        {
          goto LABEL_28;
        }

        if (gLogCategory_APSContiguousAllocator == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_28:
            if (a1[10] + a1[11] != a1[7])
            {
              goto LABEL_33;
            }

            return 0;
          }

          v21 = a1[7];
          v23 = a1[10];
          v22 = a1[11];
        }

        v29 = a1[12];
        v25 = a1[5];
        LogPrintF();
        goto LABEL_28;
      }
    }
  }

LABEL_33:
  APSLogErrorAt(0);
  if (gLogCategory_APSContiguousAllocator <= 90 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v3;
}

uint64_t APSContiguousAllocatorGetTotalFreeBlockSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 88);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSContiguousAllocatorGetNextAvailableBlockSize(void *a1)
{
  if (!a1)
  {
    APSLogErrorAt(a1);
    return 0;
  }

  v2 = a1[5];
  v1 = a1[6];
  if (v1 > v2 || !a1[10])
  {
    v3 = a1[4] - v1;
    v4 = v2 - a1[3];
    if (v4 > v3)
    {
      v3 = v4;
    }

    goto LABEL_8;
  }

  if (v1 < v2)
  {
    v3 = v2 - v1;
LABEL_8:
    v5 = v3 >= 4;
    v6 = v3 - 4;
    if (!v5)
    {
      v6 = 0;
    }

    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  if (v6 >= 0xFFFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

float APSVolumeConvertDBToLinearGain(float a1)
{
  result = 0.0;
  if (a1 > -30.0)
  {
    result = __exp10f(a1 / 20.0);
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

float APSVolumeConvertLinearGainToDB(float a1)
{
  if (a1 <= 0.0)
  {
    return -144.0;
  }

  else
  {
    return log10f(a1) * 20.0;
  }
}

uint64_t APSVolumeConvertDBToClampedSliderValue()
{
  TranslateValue();
  *&v0 = v0;
  if (*&v0 > 1.0 || (result = TranslateValue(), v3 = v2, v3 >= 0.0))
  {
    result = TranslateValue();
    *&v4 = v4;
    if (*&v4 <= 1.0)
    {
      return TranslateValue();
    }
  }

  return result;
}

float APSVolumeConvertSliderValueToLinearGain()
{
  TranslateValue();
  v1 = v0;
  result = 0.0;
  if (v1 > -30.0)
  {
    result = __exp10f(v1 / 20.0);
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

float APSVolumeConvertLinearGainToSliderValue(float a1)
{
  if (a1 > 0.0)
  {
    log10f(a1);
  }

  TranslateValue();
  return v1;
}

BOOL APSVolumeDBValuesAreNoticeablyDifferent(float a1, float a2)
{
  TranslateValue();
  *&v4 = v4;
  v5 = fabsf(*&v4 + 30.0);
  TranslateValue();
  *&v6 = v6;
  v7 = fabsf(*&v6 + 30.0);
  v8 = fabsf(a1 + 144.0);
  if (v8 < v5)
  {
    v9 = -30.0;
  }

  else
  {
    v9 = a1;
  }

  v10 = fabsf(a2 + 144.0);
  if (v10 < v5)
  {
    v11 = -30.0;
  }

  else
  {
    v11 = a2;
  }

  if (fabsf(v9 + 30.0) >= 0.00000011921)
  {
    v12 = fabsf(v11 + 30.0) < 0.00000011921;
    v14 = v8 < v5;
    v13 = fabsf(a1);
    v14 = !v14 && v13 < 0.00000011921;
    v15 = v14;
    v16 = fabsf(a2);
    v18 = v10 >= v5 && v16 < 0.00000011921;
    if (((v12 | (v15 | v18)) & 1) == 0)
    {
      v7 = v5;
    }
  }

  return vabds_f32(v9, v11) >= v7;
}

BOOL APSVolumeSliderValuesAreNoticeablyDifferent(float a1, float a2)
{
  TranslateValue();
  *&v4 = v4;
  if (vabds_f32(a1, *&v4) < 0.0099999)
  {
    TranslateValue();
    a1 = v5;
  }

  TranslateValue();
  *&v6 = v6;
  if (vabds_f32(a2, *&v6) < 0.0099999)
  {
    TranslateValue();
    a2 = v7;
  }

  TranslateValue();
  *&v8 = v8;
  v9 = vabds_f32(a1, *&v8);
  v10 = 0.00000011921;
  if (v9 >= 0.00000011921)
  {
    TranslateValue();
    *&v11 = v11;
    v12 = vabds_f32(a2, *&v11);
    v10 = 0.00000011921;
    if (v12 >= 0.00000011921)
    {
      TranslateValue();
      *&v13 = v13;
      v14 = vabds_f32(a1, *&v13);
      v10 = 0.00000011921;
      if (v14 >= 0.00000011921)
      {
        TranslateValue();
        *&v15 = v15;
        v16 = vabds_f32(a2, *&v15);
        v10 = 0.00000011921;
        if (v16 >= 0.00000011921)
        {
          v10 = 0.0099999;
        }
      }
    }
  }

  return vabds_f32(a1, a2) >= v10;
}

const char *APSGetVolumeFadeTypeName(int a1)
{
  v1 = "Invalid";
  if (a1 == 2)
  {
    v1 = "FadeOut";
  }

  if (a1 == 1)
  {
    return "FadeIn";
  }

  else
  {
    return v1;
  }
}

uint64_t APSVolumeControlTypeFromEx(int a1, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  if (a2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (a1 != 10)
  {
    v3 = 0;
  }

  if (a1 != 9)
  {
    v2 = v3;
  }

  if (a1 == 8)
  {
    v4 = 4;
  }

  else
  {
    v4 = v2;
  }

  if (a1 == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  if (a1 == 2)
  {
    v5 = 2;
  }

  if (a1 == 1)
  {
    v5 = 1;
  }

  if (a1 <= 7)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t APSVolumeControlTypeToEx(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_22234D4B0[a1 - 1];
  }
}

const char *APSGetAPVolumeControlTypeName(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_2784A3F50[a1];
  }
}

const char *APSGetFigEndpointVolumeControlTypeName(unint64_t a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_2784A3F78[a1];
  }
}

const char *APSGetAPMuteControlTypeName(int a1)
{
  if ((a1 - 1) > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_2784A3F98[a1 - 1];
  }
}

uint64_t APSRTPSeqNumRangeSetGetTypeID()
{
  if (APSRTPSeqNumRangeSetGetTypeID_sOnce != -1)
  {
    dispatch_once_f(&APSRTPSeqNumRangeSetGetTypeID_sOnce, &APSRTPSeqNumRangeSetGetTypeID_sTypeID, rtpSeqNumRangeSet_registerClass);
  }

  return APSRTPSeqNumRangeSetGetTypeID_sTypeID;
}

uint64_t rtpSeqNumRangeSet_registerClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

CFStringRef rtpSeqNumRangeSet_CopyFormattingDesc(uint64_t a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFGetAllocator(a1);
  if (*(a1 + 28))
  {
    v6 = *(a1 + 26);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(v4, a2, @"<APSRTPSeqNumRangeSet %p [%p]>{ rtpSeqNumCount = %u, rtpSeqNumLimit = %d, rtpSeqNumRanges = %@ }", a1, v5, *(a1 + 24), v6, *(a1 + 16));
}

void rtpSeqNumRangeSet_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t APSRTPSeqNumRangeSetCreateMutable(const __CFAllocator *a1, void *a2)
{
  if (!a2)
  {
    return 4294960591;
  }

  if (APSRTPSeqNumRangeSetGetTypeID_sOnce != -1)
  {
    dispatch_once_f(&APSRTPSeqNumRangeSetGetTypeID_sOnce, &APSRTPSeqNumRangeSetGetTypeID_sTypeID, rtpSeqNumRangeSet_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    *(Instance + 24) = 0;
    *(Instance + 28) = 0;
    memset(&v8, 0, 24);
    v8.copyDescription = rtpSeqNumRangeSet_ArrayValueCopyDesc;
    v8.equal = 0;
    v6 = CFArrayCreateMutable(a1, 0, &v8);
    v5[2] = v6;
    if (v6)
    {
      result = 0;
      *a2 = v5;
      return result;
    }

    CFRelease(v5);
  }

  return 4294960568;
}

uint64_t APSRTPSeqNumRangeSetCreateMutableCopy(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  result = 4294960591;
  if (a2 && a3)
  {
    if (APSRTPSeqNumRangeSetGetTypeID_sOnce != -1)
    {
      dispatch_once_f(&APSRTPSeqNumRangeSetGetTypeID_sOnce, &APSRTPSeqNumRangeSetGetTypeID_sTypeID, rtpSeqNumRangeSet_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      *(Instance + 24) = 0;
      *(Instance + 28) = 0;
      MutableCopy = CFArrayCreateMutableCopy(a1, 0, *(a2 + 16));
      *(v8 + 16) = MutableCopy;
      if (MutableCopy)
      {
        result = 0;
        *(v8 + 24) = *(a2 + 24);
        *(v8 + 28) = *(a2 + 28);
        *a3 = v8;
        return result;
      }

      CFRelease(v8);
    }

    return 4294960568;
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetContainsSeqNum(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  Count = CFArrayGetCount(*(result + 16));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 16), 0);
  if ((ValueAtIndex - a2) > 0)
  {
    return 0;
  }

  if ((ValueAtIndex + HIWORD(ValueAtIndex) - a2) > 0)
  {
    return 1;
  }

  if (v5 == 1)
  {
    return 0;
  }

  v7 = CFArrayGetValueAtIndex(*(v3 + 16), v5 - 1);
  if (((a2 - (v7 + HIWORD(v7))) & 0x8000) == 0)
  {
    return 0;
  }

  if (((a2 - v7) & 0x8000) == 0)
  {
    return 1;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v10.location = 0;
  v10.length = v5;
  v8 = CFArrayBSearchValues(*(v3 + 16), v10, (a2 | 0xFFFF0000), rtpSeqNumRangeSet_ArrayValueCompare, 0);
  v9 = CFArrayGetValueAtIndex(*(v3 + 16), v8 - 1);
  result = 0;
  if (((v9 - 0x10000) & 0x80000000) == 0 && (v9 - a2) <= 0)
  {
    return HIWORD(v9) > (a2 - v9);
  }

  return result;
}

unint64_t rtpSeqNumRangeSet_ArrayValueCompare(uint64_t a1, uint64_t a2)
{
  v2 = (a1 - a2);
  if (!((a1 - a2) << 48))
  {
    v2 = WORD1(a1) - WORD1(a2);
  }

  return (v2 != 0) | (v2 >> 63);
}

uint64_t APSRTPSeqNumRangeSetGetSeqNumCount(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetSeqNumRangeCount(uint64_t result)
{
  if (result)
  {
    LOWORD(result) = CFArrayGetCount(*(result + 16));
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetSpan(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count <= 0)
    {
      v6 = 0;
      LOWORD(a1) = *(v1 + 26);
    }

    else
    {
      v3 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 16), 0);
      v5 = CFArrayGetValueAtIndex(*(v1 + 16), v3 - 1);
      LODWORD(a1) = APSRTPSeqNumRangeUnion(ValueAtIndex, v5);
      v6 = a1 & 0xFFFF0000;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 | a1;
}

uint64_t APSRTPSeqNumRangeSetRemoveAllSeqNumRanges(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  CFArrayRemoveAllValues(*(a1 + 16));
  result = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t APSRTPSeqNumRangeSetAddSeqNumRange(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  v3 = WORD1(a2);
  if (WORD1(a2) > 0x8000u)
  {
    return 4294960591;
  }

  if (!WORD1(a2))
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 16));
  v6 = *(a1 + 16);
  if (!Count)
  {
    CFArrayAppendValue(v6, (a2 | (v3 << 16)));
    *(a1 + 24) = WORD1(a2);
    goto LABEL_9;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
  v8 = CFArrayGetValueAtIndex(*(a1 + 16), Count - 1);
  v9 = APSRTPSeqNumRangeUnion(ValueAtIndex, v8);
  if (APSRTPSeqNumRangeUnion(v9, a2 | (v3 << 16)) > 0x8000FFFF)
  {
    return 4294960545;
  }

  if (((v8 - a2 + HIWORD(v8)) & 0x8000) != 0)
  {
    CFArrayAppendValue(*(a1 + 16), (a2 | (v3 << 16)));
    *(a1 + 24) += WORD1(a2);
LABEL_9:
    if (!*(a1 + 28) || ((*(a1 + 26) - ((a2 >> 16) + a2)) & 0x8000) != 0)
    {
      result = 0;
      *(a1 + 26) = WORD1(a2) + a2;
      *(a1 + 28) = 1;
      return result;
    }

    return 0;
  }

  if (rtpSeqNumRangeSet_tryOrderedMergeIntoIndex(a1, Count - 1, v8, a2 | (v3 << 16), 0))
  {
    goto LABEL_9;
  }

  if (((a2 - ValueAtIndex) & 0x8000) != 0 && v3 < (ValueAtIndex - a2))
  {
    v11 = *(a1 + 16);
    v12 = 0;
  }

  else
  {
    if (rtpSeqNumRangeSet_tryOrderedMergeIntoIndex(a1, 0, ValueAtIndex, a2 | (v3 << 16), 1))
    {
      return 0;
    }

    v17.location = 0;
    v17.length = Count;
    v13 = CFArrayBSearchValues(*(a1 + 16), v17, (a2 | 0xFFFF0000), rtpSeqNumRangeSet_ArrayValueCompare, 0);
    v14 = v13 - 1;
    if (v13 >= 1)
    {
      v15 = CFArrayGetValueAtIndex(*(a1 + 16), v14);
      if (rtpSeqNumRangeSet_tryOrderedMergeIntoIndex(a1, v14, v15, a2 | (v3 << 16), 0))
      {
        return 0;
      }
    }

    v16 = CFArrayGetValueAtIndex(*(a1 + 16), v13);
    if (rtpSeqNumRangeSet_tryOrderedMergeIntoIndex(a1, v13, v16, a2 | (v3 << 16), 1))
    {
      return 0;
    }

    v11 = *(a1 + 16);
    v12 = v13;
  }

  CFArrayInsertValueAtIndex(v11, v12, (a2 | (v3 << 16)));
  result = 0;
  *(a1 + 24) += WORD1(a2);
  return result;
}

uint64_t rtpSeqNumRangeSet_tryOrderedMergeIntoIndex(uint64_t a1, CFIndex a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = APSRTPSeqNumRangeMerge(a3, a4);
  if (v10 < 0x10000)
  {
    return 0;
  }

  v11 = v10;
  if (!a5 && v10 != a3)
  {
    return 0;
  }

  v12 = HIWORD(v10);
  if (HIWORD(v10) > HIWORD(a3))
  {
    v13 = a2 + 1;
    *(a1 + 24) = *(a1 + 24) - HIWORD(a3) + HIWORD(v10);
    Count = CFArrayGetCount(*(a1 + 16));
    if (a2 + 1 < Count)
    {
      v15 = Count;
      v16 = a2 + 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v16);
        v5 = v5 & 0xFFFFFFFF00000000 | v11 | (v12 << 16);
        v18 = APSRTPSeqNumRangeMerge(v5, ValueAtIndex);
        if (v18 < 0x10000)
        {
          break;
        }

        v19 = HIWORD(v18) - v12;
        if (HIWORD(v18) <= v12)
        {
          LOWORD(v19) = 0;
        }

        *(a1 + 24) = *(a1 + 24) - HIWORD(ValueAtIndex) + v19;
        ++v16;
        v11 = v18;
        v12 = HIWORD(v18);
        if (v15 == v16)
        {
          v12 = HIWORD(v18);
          v11 = v18;
          v16 = v15;
          break;
        }
      }

      if (v16 > v13)
      {
        v21.location = a2 + 1;
        v21.length = v16 - v13;
        CFArrayReplaceValues(*(a1 + 16), v21, 0, 0);
      }
    }

    CFArraySetValueAtIndex(*(a1 + 16), a2, (v11 | (v12 << 16)));
  }

  return 1;
}

uint64_t APSRTPSeqNumRangeSetRemoveSeqNumRange(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (a2 > 0x8000FFFF)
  {
    return 4294960591;
  }

  if ((a2 & 0xFFFF0000) == 0)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 16));
  v5 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
  v8 = CFArrayGetValueAtIndex(*(a1 + 16), v5);
  v9 = v8;
  v10 = ValueAtIndex;
  v11 = v8;
  v12 = APSRTPSeqNumRangeUnion(v10, v8);
  v13 = v12;
  v14 = APSRTPSeqNumRangeIntersection(v12, a2);
  if (v14 < 0x10000)
  {
    return 0;
  }

  v15 = v14;
  if (v13 != v14 && (v14 | v13) >= 0x10000 && (v13 < 0x80010000 || v14 < 0x80010000))
  {
    if (rtpSeqNumRangeSet_tryOrderedSubtractAtIndex(a1, 0, v10, v14))
    {
      return 0;
    }

    if ((v9 - v15) <= 0)
    {
      v21 = a1;
      v22 = v5;
      v20 = v11;
    }

    else
    {
      v23.location = 0;
      v23.length = v6;
      v18 = CFArrayBSearchValues(*(a1 + 16), v23, a2, rtpSeqNumRangeSet_ArrayValueCompare, 0);
      v19 = CFArrayGetValueAtIndex(*(a1 + 16), v18 - 1);
      if (rtpSeqNumRangeSet_tryOrderedSubtractAtIndex(a1, v18 - 1, v19, v15))
      {
        return 0;
      }

      v20 = CFArrayGetValueAtIndex(*(a1 + 16), v18);
      v21 = a1;
      v22 = v18;
    }

    rtpSeqNumRangeSet_tryOrderedSubtractAtIndex(v21, v22, v20, v15);
    return 0;
  }

  CFArrayRemoveAllValues(*(a1 + 16));
  result = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t rtpSeqNumRangeSet_tryOrderedSubtractAtIndex(uint64_t a1, CFIndex a2, unsigned int ValueAtIndex, unsigned int a4)
{
  Count = CFArrayGetCount(*(a1 + 16));
  v9 = 0;
  v10 = a4;
  v11 = a2;
  while (1)
  {
    v12 = APSRTPSeqNumRangeIntersection(ValueAtIndex, v10);
    if (v12 < 0x10000)
    {
      break;
    }

    *(a1 + 24) -= HIWORD(v12);
    v13 = HIWORD(ValueAtIndex) - HIWORD(v12);
    if (ValueAtIndex == v12)
    {
      if (HIWORD(ValueAtIndex) != HIWORD(v12))
      {
        v19 = *(a1 + 16);
        if ((HIWORD(ValueAtIndex) - HIWORD(v12)) <= 0x8000u)
        {
          v20 = (HIWORD(v12) + v12) | (v13 << 16);
        }

        else
        {
          v20 = 0xFFFFFFFFLL;
        }

        CFArraySetValueAtIndex(*(a1 + 16), a2, v20);
LABEL_21:
        v9 = 1;
        break;
      }
    }

    else
    {
      v14 = v12 - ValueAtIndex;
      v15 = *(a1 + 16);
      if ((HIWORD(ValueAtIndex) - HIWORD(v12)) > (v12 - ValueAtIndex))
      {
        v16 = v13 - v14;
        if (v16 <= 0x8000u)
        {
          v17 = (HIWORD(v12) + v12) | (v16 << 16);
        }

        else
        {
          v17 = 0xFFFFFFFFLL;
        }

        CFArraySetValueAtIndex(*(a1 + 16), a2, v17);
        if (v14 <= 0x8000u)
        {
          v18 = ValueAtIndex | (v14 << 16);
        }

        else
        {
          v18 = 0xFFFFFFFFLL;
        }

        CFArrayInsertValueAtIndex(*(a1 + 16), a2, v18);
        goto LABEL_21;
      }

      CFArraySetValueAtIndex(*(a1 + 16), a2, (ValueAtIndex | (v13 << 16)));
      ++v11;
    }

    if (++a2 >= Count)
    {
      goto LABEL_21;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), a2);
    v9 = 1;
  }

  if (a2 > v11)
  {
    v22.location = v11;
    v22.length = a2 - v11;
    CFArrayReplaceValues(*(a1 + 16), v22, 0, 0);
  }

  return v9;
}

uint64_t APSRTPSeqNumRangeSetHintLimitSeqNum(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (*(a1 + 28) && ((*(a1 + 26) - a2) & 0x8000) == 0)
  {
    return 0;
  }

  result = 0;
  *(a1 + 26) = a2;
  *(a1 + 28) = 1;
  return result;
}

uint64_t APSRTPSeqNumRangeSetAddSeqNumRangeSet(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a2, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_addRangeApplier, a1);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(uint64_t a1, char a2, unsigned int a3, uint64_t (*a4)(CFIndex, uint64_t), uint64_t a5)
{
  if (a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  result = 4294960591;
  if (a1 && a4)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    v12 = Count - 1;
    if (Count >= 1)
    {
      if (a3 > 0x8000FFFF)
      {
        v13 = 0;
        v14 = 0;
        IndexOfRangeForSeqNum = 0;
        goto LABEL_12;
      }

      if ((a3 & 0xFFFF0000) != 0)
      {
        Span = APSRTPSeqNumRangeSetGetSpan(a1);
        v17 = APSRTPSeqNumRangeIntersection(Span, a3);
        if (v17 >= 0x10000)
        {
          v18 = v17;
          v14 = v17;
          IndexOfRangeForSeqNum = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(a1, Count, v17);
          v12 = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(a1, Count, (v18 + HIWORD(v18) - 1));
          v13 = v18 & 0xFFFF0000;
LABEL_12:
          if (a2)
          {
            v19 = IndexOfRangeForSeqNum;
          }

          else
          {
            v19 = v12;
          }

          if (a2)
          {
            v20 = v12;
          }

          else
          {
            v20 = IndexOfRangeForSeqNum;
          }

          v21 = v19 + v6;
          if (v20 != v19 + v6)
          {
            v22 = v14 | v13;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v20);
              v24 = ValueAtIndex;
              if (a3 > 0x8000FFFF)
              {
                goto LABEL_23;
              }

              IndexOfRangeForSeqNum = ValueAtIndex | IndexOfRangeForSeqNum & 0xFFFFFFFF00000000;
              v14 = v14 & 0xFFFFFFFF00000000 | v22;
              v25 = APSRTPSeqNumRangeIntersection(IndexOfRangeForSeqNum, v14);
              if (v25 >= 0x10000)
              {
                break;
              }

LABEL_24:
              v20 += v6;
              if (v21 == v20)
              {
                return 0;
              }
            }

            v24 = v25;
LABEL_23:
            Count = Count & 0xFFFFFFFF00000000 | v24;
            result = a4(Count, a5);
            if (result)
            {
              return result;
            }

            goto LABEL_24;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

CFIndex rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(uint64_t a1, CFIndex a2, unsigned int a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
  if ((ValueAtIndex - a3) > 0 || (ValueAtIndex - 0x10000) >= 0 && HIWORD(ValueAtIndex) > (a3 - ValueAtIndex))
  {
    return 0;
  }

  v7 = CFArrayGetValueAtIndex(*(a1 + 16), a2 - 1);
  if (((a3 - (v7 + HIWORD(v7))) & 0x8000) != 0)
  {
    if (((v7 - 0x10000) & 0x80000000) != 0 || (v7 - a3) > 0 || HIWORD(v7) <= (a3 - v7))
    {
      v10.location = 0;
      v10.length = a2;
      a2 = CFArrayBSearchValues(*(a1 + 16), v10, (a3 | 0xFFFF0000), rtpSeqNumRangeSet_ArrayValueCompare, 0);
      v8 = CFArrayGetValueAtIndex(*(a1 + 16), a2 - 1);
      if (((v8 - 0x10000) & 0x80000000) == 0 && (v8 - a3) <= 0 && HIWORD(v8) > (a3 - v8))
      {
        --a2;
      }
    }

    else
    {
      --a2;
    }
  }

  return a2;
}

uint64_t APSRTPSeqNumRangeSetRemoveSeqNumRangeSet(const void *a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v10 = 0u;
  *cf = 0u;
  v2 = 4294960591;
  if (a1 && a2)
  {
    Span = APSRTPSeqNumRangeSetGetSpan(a1);
    if (Span < 0x10000 || (v6 = Span, v7 = APSRTPSeqNumRangeSetGetSpan(a2), v7 < 0x10000) || APSRTPSeqNumRangeIntersection(v6, v7) < 0x10000)
    {
      v2 = 0;
    }

    else
    {
      v8 = CFGetAllocator(a1);
      if (APSRTPSeqNumRangeSetGetTypeID_sOnce != -1)
      {
        dispatch_once_f(&APSRTPSeqNumRangeSetGetTypeID_sOnce, &APSRTPSeqNumRangeSetGetTypeID_sTypeID, rtpSeqNumRangeSet_registerClass);
      }

      _CFRuntimeInitStaticInstance();
      LODWORD(cf[1]) = 0;
      BYTE4(cf[1]) = 0;
      memset(&callBacks, 0, 24);
      callBacks.copyDescription = rtpSeqNumRangeSet_ArrayValueCopyDesc;
      callBacks.equal = 0;
      cf[0] = CFArrayCreateMutable(v8, 0, &callBacks);
      if (cf[0])
      {
        v12 = &v10;
        LOWORD(v13) = v6;
        v2 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a2, 0, v6, rtpSeqNumRangeSet_invertApplier, &v12);
        if (!v2)
        {
          rtpSeqNumRangeSet_invertApplier((HIWORD(v6) + v6), &v12);
          v2 = APSRTPSeqNumRangeSetFilterWithRangeSet(a1, &v10);
        }
      }

      else
      {
        v2 = 4294960568;
      }
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v2;
}

uint64_t rtpSeqNumRangeSet_invertApplier(int a1, unsigned __int16 *a2)
{
  v4 = a2[4];
  if (v4 != a1)
  {
    v5 = (a1 - v4);
    v6 = v4 | ((a1 - v4) << 16);
    if (v5 > 0x8000)
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = v6;
    }

    CFArrayAppendValue(*(*a2 + 16), v7);
    *(*a2 + 24) += WORD1(v7);
  }

  a2[4] = a1 + HIWORD(a1);
  return 0;
}

uint64_t APSRTPSeqNumRangeSetFilterWithRangeSet(unint64_t a1, unint64_t a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    Span = APSRTPSeqNumRangeSetGetSpan(a1);
    if (Span < 0x10000)
    {
      return 0;
    }

    else
    {
      v6 = Span;
      v7 = APSRTPSeqNumRangeSetGetSpan(a2);
      if (v7 >= 0x10000 && APSRTPSeqNumRangeIntersection(v6, v7) >> 16)
      {
        Count = CFArrayGetCount(*(a1 + 16));
        v9 = *(a1 + 24);
        result = APSRTPSeqNumRangeSetApplyFunctionWithFilterRangeSet(a1, 0, a2, rtpSeqNumRangeSet_appendApplier, a1);
        if (!result)
        {
          v10.location = 0;
          v10.length = Count;
          CFArrayReplaceValues(*(a1 + 16), v10, 0, 0);
          result = 0;
          *(a1 + 24) -= v9;
        }
      }

      else
      {
        CFArrayRemoveAllValues(*(a1 + 16));
        result = 0;
        *(a1 + 24) = 0;
      }
    }
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetApplyFunctionWithFilterRangeSet(unint64_t a1, char a2, unint64_t a3, uint64_t (*a4)(CFIndex, uint64_t), uint64_t a5)
{
  v7 = 1;
  if (a2)
  {
    v7 = -1;
  }

  v42 = v7;
  result = 4294960591;
  if (a1 && a4)
  {
    v10 = a3;
    if (a3)
    {
      Count = CFArrayGetCount(*(a1 + 16));
      if (Count < 1)
      {
        return 0;
      }

      v13 = Count;
      v14 = CFArrayGetCount(*(v10 + 16));
      if (v14 < 1)
      {
        return 0;
      }

      v15 = v14;
      Span = APSRTPSeqNumRangeSetGetSpan(a1);
      v17 = APSRTPSeqNumRangeSetGetSpan(v10);
      v18 = APSRTPSeqNumRangeIntersection(Span, v17);
      if (v18 < 0x10000)
      {
        return 0;
      }

      else
      {
        v38 = a4;
        v19 = v18;
        IndexOfRangeForSeqNum = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(a1, v13, v18);
        v21 = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(a1, v13, (v19 + WORD1(v19) - 1));
        v41 = v19;
        v22 = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(v10, v15, v19);
        v23 = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(v10, v15, (v19 + WORD1(v19) - 1));
        if (a2)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        v35 = v24;
        if (a2)
        {
          v25 = v23;
        }

        else
        {
          v25 = v22;
        }

        if (a2)
        {
          v26 = IndexOfRangeForSeqNum;
        }

        else
        {
          v26 = v21;
        }

        v40 = v26;
        if (a2)
        {
          IndexOfRangeForSeqNum = v21;
        }

        v27 = a1;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), IndexOfRangeForSeqNum);
        v34 = v10;
        v29 = CFArrayGetValueAtIndex(*(v10 + 16), v25);
LABEL_21:
        v37 = v25;
        v30 = v29;
        v31 = v29 + HIWORD(v29);
        while (1)
        {
          v22 = v22 & 0xFFFFFFFF00000000 | ValueAtIndex;
          v32 = APSRTPSeqNumRangeIntersection(v22, v30);
          if (v32 >= 0x10000)
          {
            a1 = a1 & 0xFFFFFFFF00000000 | v32;
            result = v38(a1, a5);
            if (result)
            {
              break;
            }
          }

          v33 = (ValueAtIndex - v31 + HIWORD(ValueAtIndex));
          if (v33 <= 0)
          {
            if (v40 == IndexOfRangeForSeqNum)
            {
              return 0;
            }

            IndexOfRangeForSeqNum += v42;
            ValueAtIndex = CFArrayGetValueAtIndex(*(v27 + 16), IndexOfRangeForSeqNum);
            v10 = v10 & 0xFFFFFFFF00000000 | ValueAtIndex;
            v5 = v5 & 0xFFFFFFFF00000000 | v41;
            if (APSRTPSeqNumRangeIntersection(v10, v5) < 0x10000)
            {
              return 0;
            }

            if (v33 < 0)
            {
              continue;
            }
          }

          if (v37 != v35)
          {
            v25 = v37 + v42;
            v29 = CFArrayGetValueAtIndex(*(v34 + 16), v37 + v42);
            v36 = v36 & 0xFFFFFFFF00000000 | v41;
            if (APSRTPSeqNumRangeIntersection(v29, v41) >> 16)
            {
              goto LABEL_21;
            }
          }

          return 0;
        }
      }
    }

    else
    {

      return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a1, a2, 0xFFFFFFFF, a4, a5);
    }
  }

  return result;
}

uint64_t rtpSeqNumRangeSet_appendApplier(void *value, uint64_t a2)
{
  v3 = WORD1(value);
  CFArrayAppendValue(*(a2 + 16), value);
  *(a2 + 24) += v3;
  return 0;
}

uint64_t APSRTPSeqNumRangeSetGetFirstSeqNum(uint64_t a1, _WORD *a2)
{
  v5 = 0;
  result = 4294960591;
  if (a1 && a2)
  {
    result = APSRTPSeqNumRangeSetGetFirstSeqNumRange(a1, &v5);
    if (!result)
    {
      *a2 = v5;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetFirstSeqNumRange(uint64_t a1, unsigned int *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    if (CFArrayGetCount(*(a1 + 16)) < 1)
    {
      return 4294960532;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
      result = 0;
      *a2 = ValueAtIndex;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetLastSeqNum(uint64_t a1, _WORD *a2)
{
  v5 = 0;
  result = 4294960591;
  if (a1 && a2)
  {
    result = APSRTPSeqNumRangeSetGetLastSeqNumRange(a1, &v5);
    if (!result)
    {
      *a2 = v5 + HIWORD(v5) - 1;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetLastSeqNumRange(uint64_t a1, unsigned int *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      return 4294960532;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), Count - 1);
      result = 0;
      *a2 = ValueAtIndex;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetSeqNumAfterSeqNum(uint64_t a1, int a2, _WORD *a3)
{
  v3 = 4294960591;
  if (a1 && a3)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      return 4294960546;
    }

    v8 = Count;
    v9 = a2 + 1;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), Count - 1);
    if (((v9 - (ValueAtIndex + HIWORD(ValueAtIndex))) & 0x8000) == 0)
    {
      return 4294960546;
    }

    if (((v9 - ValueAtIndex) & 0x8000) != 0)
    {
      if (v8 == 1)
      {
        goto LABEL_13;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
      if (((v9 - ValueAtIndex) & 0x8000) != 0)
      {
        goto LABEL_13;
      }

      if (((v9 - (ValueAtIndex + HIWORD(ValueAtIndex))) & 0x8000) == 0)
      {
        v14.location = 0;
        v14.length = v8;
        v11 = CFArrayBSearchValues(*(a1 + 16), v14, (v9 | 0xFFFF0000), rtpSeqNumRangeSet_ArrayValueCompare, 0);
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v11 - 1);
        if (((ValueAtIndex - 0x10000) & 0x80000000) != 0 || (ValueAtIndex - v9) > 0 || (v12 = HIWORD(ValueAtIndex) > (v9 - ValueAtIndex), LOWORD(ValueAtIndex) = v9, !v12))
        {
          LOWORD(ValueAtIndex) = CFArrayGetValueAtIndex(*(a1 + 16), v11);
        }

        goto LABEL_13;
      }
    }

    LOWORD(ValueAtIndex) = v9;
LABEL_13:
    v3 = 0;
    *a3 = ValueAtIndex;
  }

  return v3;
}

uint64_t APSRTPSeqNumRangeSetGetSeqNumBeforeSeqNum(uint64_t a1, int a2, _WORD *a3)
{
  result = 4294960591;
  if (a1 && a3)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      return 4294960546;
    }

    v8 = Count;
    v9 = a2 - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
    if (((v9 - ValueAtIndex) & 0x8000) != 0)
    {
      return 4294960546;
    }

    if (((v9 - (ValueAtIndex + HIWORD(ValueAtIndex))) & 0x8000) != 0)
    {
      goto LABEL_14;
    }

    if (v8 == 1)
    {
      v15 = ValueAtIndex + HIWORD(ValueAtIndex);
    }

    else
    {
      v11 = CFArrayGetValueAtIndex(*(a1 + 16), v8 - 1);
      v12 = v11 + HIWORD(v11);
      if (((v9 - v12) & 0x8000) == 0)
      {
        LOWORD(v9) = v12 - 1;
        goto LABEL_14;
      }

      if (((v9 - v11) & 0x8000) == 0)
      {
        goto LABEL_14;
      }

      v16.location = 0;
      v16.length = v8;
      v13 = CFArrayBSearchValues(*(a1 + 16), v16, (v9 | 0xFFFF0000), rtpSeqNumRangeSet_ArrayValueCompare, 0);
      v14 = CFArrayGetValueAtIndex(*(a1 + 16), v13 - 1);
      if (((v14 - 0x10000) & 0x80000000) == 0 && (v14 - v9) <= 0 && HIWORD(v14) > (v9 - v14))
      {
        goto LABEL_14;
      }

      LOWORD(v15) = v14 + HIWORD(v14);
    }

    LOWORD(v9) = v15 - 1;
LABEL_14:
    result = 0;
    *a3 = v9;
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetApplyBlock(uint64_t a1, char a2, uint64_t a3)
{
  if (a1 && a3)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a1, a2, 0xFFFFFFFF, rtpSeqNumRangeSet_blockApplier, a3);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPSeqNumRangeSetApplyBlockWithFilterRange(uint64_t a1, char a2, unsigned int a3, uint64_t a4)
{
  if (a1 && a4)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a1, a2, a3, rtpSeqNumRangeSet_blockApplier, a4);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPSeqNumRangeSetApplyBlockWithFilterRangeSet(unint64_t a1, char a2, unint64_t a3, uint64_t a4)
{
  if (a1 && a4)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRangeSet(a1, a2, a3, rtpSeqNumRangeSet_blockApplier, a4);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPSeqNumRangeSetGetLimitSeqNum(uint64_t a1, _WORD *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    if (*(a1 + 28))
    {
      result = 0;
      *a2 = *(a1 + 26);
    }

    else
    {
      return 4294960578;
    }
  }

  return result;
}

uint64_t APSRotatingKeyMapperInitialize(uint64_t a1)
{
  if (*a1)
  {
    APSLogErrorAt(0);
    return 0;
  }

  else
  {
    v2 = FigSimpleMutexCreate();
    *(a1 + 8) = v2;
    if (!v2)
    {
      goto LABEL_10;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 16) = Mutable;
    if (!Mutable)
    {
      goto LABEL_10;
    }

    v4 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 24) = v4;
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 32) = v5;
    if (v5 && (v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(a1 + 40) = v6) != 0) && (v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(a1 + 48) = v7) != 0))
    {
      result = 0;
      *a1 = 1;
    }

    else
    {
LABEL_10:
      APSLogErrorAt(0);
      APSRotatingKeyMapperClear(a1);
      return 4294960568;
    }
  }

  return result;
}

void APSRotatingKeyMapperClear(uint64_t a1)
{
  v2 = *(a1 + 8);
  FigSimpleMutexDestroy();
  *(a1 + 8) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 48) = 0;
  }

  *a1 = 0;
}

_BYTE *APSRotatingKeyMapperIsInitialized(_BYTE *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t APSRotatingKeyMapperSetDesiredKeyForID(uint64_t a1, const void *a2, const void *a3, const void **a4)
{
  v8 = *(a1 + 8);
  FigSimpleMutexLock();
  if (a3)
  {
    v9 = CFDictionaryContainsKey(*(a1 + 32), a3) != 0;
  }

  else
  {
    v9 = 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  v11 = CFDictionaryGetValue(*(a1 + 40), a2);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = Value;
  }

  if (v12 == a3)
  {
    goto LABEL_22;
  }

  v13 = v11;
  if (a3)
  {
    if (v12 && CFEqual(a3, v12))
    {
      goto LABEL_22;
    }
  }

  if (a3 == 0 || v9)
  {
    if (v13)
    {
      CFDictionaryRemoveValue(*(a1 + 40), a2);
      CFDictionaryRemoveValue(*(a1 + 48), v13);
    }

    if (!v9)
    {
      goto LABEL_22;
    }

LABEL_19:
    if (Value)
    {
      CFDictionaryRemoveValue(*(a1 + 32), Value);
      CFDictionaryRemoveValue(*(a1 + 24), a2);
    }

    CFDictionarySetValue(*(a1 + 16), a2, a3);
    CFDictionarySetValue(*(a1 + 24), a3, a2);
    goto LABEL_22;
  }

  if (v13)
  {
    CFDictionaryRemoveValue(*(a1 + 48), v13);
  }

  CFDictionarySetValue(*(a1 + 40), a2, a3);
  CFDictionarySetValue(*(a1 + 48), a3, a2);
  if (v9)
  {
    goto LABEL_19;
  }

LABEL_22:
  v14 = *(a1 + 8);
  FigSimpleMutexUnlock();
  if (a4)
  {
    *a4 = APSRotatingKeyMapperCopyDataForID(a1, a2);
  }

  return 0;
}

const void *APSRotatingKeyMapperCopyDataForID(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 8);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  if (Value)
  {
    v6 = CFDictionaryGetValue(*(a1 + 32), Value);
    v7 = v6;
    if (v6)
    {
      CFRetain(v6);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 8);
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t APSRotatingKeyMapperRemoveID(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 8);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  v6 = CFDictionaryGetValue(*(a1 + 40), a2);
  CFDictionaryRemoveValue(*(a1 + 16), a2);
  if (Value)
  {
    CFDictionaryRemoveValue(*(a1 + 24), Value);
  }

  if (v6)
  {
    CFDictionaryRemoveValue(*(a1 + 40), a2);
    CFDictionaryRemoveValue(*(a1 + 48), v6);
  }

  v7 = *(a1 + 8);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSRotatingKeyMapperSetDataForKey(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  v8 = *(a1 + 8);
  FigSimpleMutexLock();
  if (CFDictionaryContainsKey(*(a1 + 32), a2))
  {
    Value = CFDictionaryGetValue(*(a1 + 24), 0);
  }

  else
  {
    Value = CFDictionaryGetValue(*(a1 + 48), a2);
    if (Value)
    {
      v10 = CFDictionaryGetValue(*(a1 + 16), Value);
      if (v10)
      {
        v11 = v10;
        CFDictionaryRemoveValue(*(a1 + 32), v10);
        CFDictionaryRemoveValue(*(a1 + 24), v11);
      }

      CFDictionaryRemoveValue(*(a1 + 40), Value);
      CFDictionaryRemoveValue(*(a1 + 48), a2);
      CFDictionarySetValue(*(a1 + 16), Value, a2);
      CFDictionarySetValue(*(a1 + 24), a2, Value);
    }
  }

  CFDictionarySetValue(*(a1 + 32), a2, a3);
  v12 = *(a1 + 8);
  FigSimpleMutexUnlock();
  if (a4)
  {
    *a4 = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  return 0;
}

uint64_t APSRemoteConfigGetTypeID()
{
  if (gAPSRemoteConfigInitOnce != -1)
  {
    dispatch_once_f(&gAPSRemoteConfigInitOnce, 0, _APSRemoteConfigGetTypeID);
  }

  return gAPSRemoteConfigTypeID;
}

uint64_t _APSRemoteConfigGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRemoteConfigTypeID = result;
  return result;
}

void _APSRemoteConfigFinalize(uint64_t a1)
{
  if (gLogCategory_APSRemoteConfig <= 50 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_source_cancel(v2);
    if (*(a1 + 64))
    {
      dispatch_resume(*(a1 + 56));
      *(a1 + 64) = 0;
    }

    dispatch_release(*(a1 + 56));
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    dispatch_sync_f(v3, 0, remoteConfig_nop);
    v4 = *(a1 + 48);
    if (v4)
    {
      dispatch_release(v4);
      *(a1 + 48) = 0;
    }
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 32) = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 40) = 0;
  }

  v8 = *(a1 + 24);
  FigSimpleMutexDestroy();
  v9 = *(a1 + 16);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 16) = 0;
  }
}

CFTypeRef _APSRemoteConfigCreate(const __CFSet *a1, unsigned int a2)
{
  if (gAPSRemoteConfigInitOnce != -1)
  {
    dispatch_once_f(&gAPSRemoteConfigInitOnce, 0, _APSRemoteConfigGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    Instance[3] = 0u;
    Instance[4] = 0u;
    Instance[1] = 0u;
    Instance[2] = 0u;
    v6 = *MEMORY[0x277CBECE8];
    Copy = CFSetCreateCopy(*MEMORY[0x277CBECE8], a1);
    *(v5 + 16) = Copy;
    if (!Copy)
    {
      goto LABEL_21;
    }

    v8 = FigSimpleMutexCreate();
    *(v5 + 24) = v8;
    if (!v8)
    {
      goto LABEL_21;
    }

    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v5 + 32) = Mutable;
    if (!Mutable)
    {
      goto LABEL_21;
    }

    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v11 = dispatch_queue_create("APSRemoteConfig.update", v10);
    *(v5 + 48) = v11;
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v11);
    *(v5 + 56) = v12;
    if (v12 && (*(v5 + 64) = 1, v13 = dispatch_queue_create("APSRemoteConfig.notification", 0), (*(v5 + 72) = v13) != 0))
    {
      remoteConfig_update(v5, 1);
      if (a2)
      {
        dispatch_set_context(*(v5 + 56), v5);
        dispatch_source_set_event_handler_f(*(v5 + 56), remoteConfig_updateTimerFire);
        v14 = *(v5 + 56);
        v15 = dispatch_time(0, 1000000000 * a2);
        dispatch_source_set_timer(v14, v15, 1000000000 * a2, 0x3B9ACA00uLL);
        if (*(v5 + 64))
        {
          *(v5 + 64) = 0;
          dispatch_resume(*(v5 + 56));
        }
      }

      if (gLogCategory_APSRemoteConfig <= 50 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v16 = CFRetain(v5);
    }

    else
    {
LABEL_21:
      APSLogErrorAt(0);
      v16 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v16;
}

void remoteConfig_update(uint64_t a1, int a2)
{
  cf = 0;
  theDict = 0;
  context = a1;
  v4 = *MEMORY[0x277CD6390];
  Mutable = FigRCLCreateConfiguration();
  if (Mutable)
  {
    goto LABEL_15;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  theDict = Mutable;
  if (!Mutable)
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 24);
  FigSimpleMutexLock();
  CFSetApplyFunction(*(a1 + 16), remoteConfig_updateApplier, &context);
  v7 = *(a1 + 24);
  FigSimpleMutexUnlock();
  Count = CFDictionaryGetCount(theDict);
  if (!a2 && Count >= 1)
  {
    if (gLogCategory_APSRemoteConfig <= 50 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = *(a1 + 72);
    CMNotificationCenterGetDefaultLocalCenter();
    Mutable = FigDispatchAsyncPostNotification();
    if (Mutable)
    {
LABEL_15:
      APSLogErrorAt(Mutable);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }
}

void remoteConfig_updateTimerFire(uint64_t a1)
{
  if (gLogCategory_APSRemoteConfig <= 50 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  remoteConfig_update(a1, 0);
}

void remoteConfig_updateApplier(void *key, CFMutableDictionaryRef *a2)
{
  v4 = *(*a2 + 5);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, key);
    if (Value)
    {
      v5 = CFRetain(Value);
      goto LABEL_4;
    }
  }

  else if (a2[1])
  {
    v5 = FigRCLCopyCFType();
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:
  v7 = CFDictionaryGetValue(*(*a2 + 4), key);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  if (FigCFEqual())
  {
    Mutable = 0;
  }

  else
  {
    if (gLogCategory_APSRemoteConfig <= 50 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
    {
      v12 = *a2;
      LogPrintF();
    }

    v9 = *(*a2 + 4);
    if (v6)
    {
      CFDictionarySetValue(v9, key, v6);
    }

    else
    {
      CFDictionaryRemoveValue(v9, key);
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      CFDictionaryAddValue(a2[2], key, Mutable);
    }

    else
    {
      APSLogErrorAt(0);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t APSRemoteConfigGetShared()
{
  if (APSRemoteConfigGetShared_once != -1)
  {
    dispatch_once_f(&APSRemoteConfigGetShared_once, &APSRemoteConfigGetShared_config, remoteConfig_createShared);
  }

  return APSRemoteConfigGetShared_config;
}

void remoteConfig_createShared(CFTypeRef *a1)
{
  v2 = CFSetCreate(*MEMORY[0x277CBECE8], kAPSRemoteConfigKeyList, 4, MEMORY[0x277CBF158]);
  if (v2)
  {
    v3 = v2;
    IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"remoteConfigUpdateIntervalSecs", 0, 3600);
    v5 = _APSRemoteConfigCreate(v3, IntWithOverrideAndDefault);
    if (v5)
    {
      v6 = v5;
      *a1 = CFRetain(v5);
      CFRelease(v3);
      v7 = v6;
    }

    else
    {
      APSLogErrorAt(0);
      *a1 = 0;
      v7 = v3;
    }

    CFRelease(v7);
  }

  else
  {
    APSLogErrorAt(0);
    *a1 = 0;
  }
}

CFTypeRef APSRemoteConfigCopyValue(uint64_t a1, void *value)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v2 = value;
  if (!value)
  {
    APSLogErrorAt(0);
    return v2;
  }

  v4 = CFSetContainsValue(*(a1 + 16), value);
  if (!v4)
  {
    APSLogErrorAt(v4);
    if (gLogCategory_APSRemoteConfig <= 90 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 0;
  }

  v5 = *(a1 + 24);
  FigSimpleMutexLock();
  v6 = CFDictionaryGetValue(*(a1 + 32), v2);
  if (v6)
  {
    v2 = CFRetain(v6);
  }

  else
  {
    v2 = 0;
  }

  v7 = *(a1 + 24);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APSRemoteConfigGetBooleanIfPresent(uint64_t a1, void *a2, Boolean *a3)
{
  if (a1 && a2 && (v4 = APSRemoteConfigCopyValue(a1, a2)) != 0)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      if (a3)
      {
        *a3 = CFBooleanGetValue(v5);
      }

      v7 = 1;
    }

    else
    {
      APSLogErrorAt(0);
      v7 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v7;
}

uint64_t _APSRemoteConfigSetFakeRCLData(uint64_t a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v5 = *(a1 + 24);
    FigSimpleMutexLock();
    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 40) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a2);
    }

    v7 = *(a1 + 24);

    return FigSimpleMutexUnlock();
  }

  else
  {

    return APSLogErrorAt(0);
  }
}

void _APSRemoteConfigUpdateNow(uint64_t a1)
{
  if (a1)
  {
    remoteConfig_update(a1, 0);
  }

  else
  {
    APSLogErrorAt(0);
  }
}

const void *APSFeaturesCreateFromEndpointInfoFeatureRepresentations(const __CFString *a1, unint64_t a2, unsigned int *a3)
{
  v6 = 0;
  if (a1)
  {
    v4 = APSFeaturesCreateFromStringRepresentation(a1, &v6);
    if (v6)
    {
      APSLogErrorAt(v6);
      if (v6)
      {
        if (v4)
        {
          CFRelease(v4);
          v4 = 0;
          if (!a3)
          {
            return v4;
          }

          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v4 = APSFeaturesCreateFromLegacyFlags(a2);
    if (!v4)
    {
      APSLogErrorAt(0);
      v6 = -6728;
      if (!a3)
      {
        return v4;
      }

      goto LABEL_9;
    }
  }

  if (a3)
  {
LABEL_9:
    *a3 = v6;
  }

  return v4;
}

BOOL APSFeaturesIsEmpty(const __CFData *a1)
{
  if (!a1)
  {
    return 1;
  }

  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (Length < 1)
  {
    return 1;
  }

  if (*BytePtr)
  {
    return 0;
  }

  v5 = 0;
  while (Length - 1 != v5)
  {
    if (BytePtr[++v5])
    {
      return v5 >= Length;
    }
  }

  v5 = Length;
  return v5 >= Length;
}

uint64_t APSFeaturesHasFeature(const __CFData *a1, uint64_t a2)
{
  if (a2 >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = a2 + 7;
  }

  if (!a1)
  {
LABEL_8:
    APSLogErrorAt(0);
    return 0;
  }

  v3 = a2;
  if (v2 >> 3 < CFDataGetLength(a1))
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (BytePtr)
    {
      return (BytePtr[v2 >> 3] >> (v3 - (v2 & 0xF8))) & 1;
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t APSFeaturesHasAllFeatures(CFDataRef theData, const __CFData *a2)
{
  BytePtr = theData;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    BytePtr = CFDataGetBytePtr(BytePtr);
    if (!a2)
    {
      return 1;
    }
  }

  else
  {
    Length = 0;
    if (!a2)
    {
      return 1;
    }
  }

  v5 = CFDataGetLength(a2);
  v6 = CFDataGetBytePtr(a2);
  if (v5 < 1)
  {
    return 1;
  }

  v7 = 0;
  while (!v6[v7] || v7 < Length && (v6[v7] & ~*(BytePtr + v7)) == 0)
  {
    if (v5 == ++v7)
    {
      return 1;
    }
  }

  return 0;
}

UInt8 *APSFeaturesSetFeature(__CFData *a1, uint64_t a2)
{
  if (CFDataGetLength(a1) <= a2 / 8)
  {
    CFDataSetLength(a1, a2 / 8 + 1);
  }

  result = CFDataGetMutableBytePtr(a1);
  result[a2 / 8] |= 1 << (a2 % 8);
  return result;
}

const UInt8 *APSFeaturesSetAllFeatures(__CFData *a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  if (CFDataGetLength(a1) < Length)
  {
    CFDataSetLength(a1, Length);
  }

  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  result = CFDataGetBytePtr(theData);
  if (Length >= 1)
  {
    do
    {
      v7 = *result++;
      *MutableBytePtr++ |= v7;
      --Length;
    }

    while (Length);
  }

  return result;
}

uint64_t APSFeaturesClearFeature(const __CFData *a1, uint64_t a2)
{
  result = CFDataGetLength(a1);
  v5 = a2 + 7;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  if (result > v5 >> 3)
  {
    v6 = v5 >> 3;
    v7 = a2 - 8 * (v5 >> 3);
    result = CFDataGetMutableBytePtr(a1);
    *(result + v6) &= ~(1 << v7);
  }

  return result;
}

const UInt8 *APSFeaturesClearAllFeatures(CFDataRef theData, const __CFData *a2)
{
  MutableBytePtr = theData;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    MutableBytePtr = CFDataGetMutableBytePtr(MutableBytePtr);
    if (a2)
    {
LABEL_3:
      v5 = CFDataGetLength(a2);
      result = CFDataGetBytePtr(a2);
      goto LABEL_6;
    }
  }

  else
  {
    Length = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  result = 0;
LABEL_6:
  if (v5 >= Length)
  {
    v7 = Length;
  }

  else
  {
    v7 = v5;
  }

  if (v7 >= 1)
  {
    do
    {
      v8 = *result++;
      *MutableBytePtr &= ~v8;
      MutableBytePtr = (MutableBytePtr + 1);
      --v7;
    }

    while (v7);
  }

  return result;
}

unint64_t APSFeaturesGetLegacyFlags(unint64_t result, _DWORD *a2)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = result;
  Length = CFDataGetLength(result);
  BytePtr = CFDataGetBytePtr(v3);
  v6 = Length - 1;
  if (Length >= 1)
  {
    v7 = BytePtr;
    v8 = 0;
    result = 0;
    if (v6 >= 7)
    {
      v6 = 7;
    }

    v9 = 8 * v6 + 8;
    do
    {
      v10 = *v7++;
      result |= v10 << v8;
      v8 += 8;
    }

    while (v9 != v8);
LABEL_7:
    if (!a2)
    {
      return result;
    }

    goto LABEL_8;
  }

  result = 0;
  if (!a2)
  {
    return result;
  }

LABEL_8:
  *a2 = 0;
  return result;
}

uint64_t APSPriorityDispatchSourceGetTypeID()
{
  if (gAPSPriorityDispatchSourceInitOnce != -1)
  {
    dispatch_once_f(&gAPSPriorityDispatchSourceInitOnce, 0, _APSPriorityDispatchSourceGetTypeID);
  }

  return gAPSPriorityDispatchSourceTypeID;
}

uint64_t _APSPriorityDispatchSourceGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSPriorityDispatchSourceTypeID = result;
  return result;
}

void _APSPriorityDispatchSourceFinalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && !*(a1 + 88))
  {
    atomic_store(1u, (v2 + 56));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    dispatch_source_cancel(v3);
    if (*(a1 + 89))
    {
      dispatch_resume(*(a1 + 80));
      *(a1 + 89) = 0;
    }

    dispatch_release(*(a1 + 80));
    *(a1 + 80) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 72) = 0;
  }

  if (*(a1 + 56))
  {
    FigSimpleMutexDestroy();
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t APSPriorityDispatchSourceCreate(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5, const void *a6, __int128 *a7, CFTypeRef *a8)
{
  v8 = 4294960591;
  if (a4 && a7 && a8 && *(a7 + 1))
  {
    if (gAPSPriorityDispatchSourceInitOnce != -1)
    {
      dispatch_once_f(&gAPSPriorityDispatchSourceInitOnce, 0, _APSPriorityDispatchSourceGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v18 = Instance;
      *(Instance + 112) = 0;
      *(Instance + 80) = 0u;
      *(Instance + 96) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 64) = 0u;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      if (gAPSPriorityDispatchSourceSharedContextInitOnce != -1)
      {
        dispatch_once_f(&gAPSPriorityDispatchSourceSharedContextInitOnce, 0, _APSPriorityDispatchSourceSharedContextGetTypeID);
      }

      v19 = _CFRuntimeCreateInstance();
      *(v18 + 40) = v19;
      if (!v19)
      {
        goto LABEL_21;
      }

      v19[2] = 0u;
      v19[3] = 0u;
      v19[1] = 0u;
      *(v18 + 16) = a1;
      *(v18 + 24) = a2;
      *(v18 + 32) = a3;
      v20 = a6 ? CFRetain(a6) : 0;
      *(v18 + 48) = v20;
      dispatch_retain(a4);
      v21 = *(v18 + 40);
      *(v21 + 16) = a4;
      v22 = *a7;
      *(v21 + 40) = *(a7 + 2);
      *(v21 + 24) = v22;
      atomic_store(0, (*(v18 + 40) + 56));
      v23 = FigSimpleMutexCreate();
      *(v18 + 56) = v23;
      if (v23)
      {
        *(v18 + 64) = a5;
        *(v18 + 72) = 0;
        *(v18 + 80) = 0;
        *(v18 + 89) = 1;
        *(v18 + 96) = -1;
        *(v18 + 104) = -1;
        *(v18 + 112) = -1;
        if (*(v18 + 16) == MEMORY[0x277D85D00])
        {
          *(v18 + 96) = 0;
          *(v18 + 104) = a2;
        }

        v8 = priorityDispatchSource_setPriority(v18, a5, 1);
        if (!v8)
        {
          *a8 = CFRetain(v18);
        }
      }

      else
      {
LABEL_21:
        v8 = 4294960568;
      }

      CFRelease(v18);
    }

    else
    {
      return 4294960568;
    }
  }

  return v8;
}

uint64_t priorityDispatchSource_setPriority(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 56);
  FigSimpleMutexLock();
  if (*(a1 + 88))
  {
    v21 = 4294960573;
    goto LABEL_40;
  }

  if (!a3 && *(a1 + 64) == a2)
  {
    v21 = 0;
    goto LABEL_40;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    Queue = APSPriorityDispatchQueuePoolGetQueue(v7, a2);
    if (Queue)
    {
      v9 = Queue;
      dispatch_retain(Queue);
      goto LABEL_10;
    }

    v21 = 4294960569;
LABEL_40:
    v24 = *(a1 + 56);
    FigSimpleMutexUnlock();
    return v21;
  }

  if (a2 == 5)
  {
    dispatch_retain(*(*(a1 + 40) + 16));
    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = FigDispatchQueueCreateWithPriority();
    if (!v9)
    {
      v21 = 4294960568;
      goto LABEL_40;
    }
  }

LABEL_10:
  v10 = dispatch_source_create(*(a1 + 16), *(a1 + 24), *(a1 + 32), v9);
  if (v10 && (v11 = *(a1 + 89), (v12 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL)) != 0))
  {
    v13 = v12;
    *v12 = v10;
    v12[1] = CFRetain(*(a1 + 40));
    v14 = *(a1 + 80);
    if (v14)
    {
      dispatch_source_cancel(v14);
      if (*(a1 + 89))
      {
        dispatch_resume(*(a1 + 80));
        *(a1 + 89) = 0;
      }

      dispatch_release(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    v15 = *(a1 + 72);
    if (v15)
    {
      dispatch_release(v15);
      *(a1 + 72) = 0;
    }

    v16 = *(a1 + 16);
    if (v16 == MEMORY[0x277D85D38] || v16 == MEMORY[0x277D85D00])
    {
      dispatch_source_set_timer(v10, *(a1 + 96), *(a1 + 104), *(a1 + 112));
    }

    dispatch_set_context(v10, v13);
    v17 = *(a1 + 48) == 0;
    v18 = a2 == 5;
    if (v18 && v17)
    {
      v19 = priorityDispatchSource_targetQueueEventHandler;
    }

    else
    {
      v19 = priorityDispatchSource_sourceEventHandler;
    }

    if (v18 && v17)
    {
      v20 = priorityDispatchSource_targetQueueCancelHandler;
    }

    else
    {
      v20 = priorityDispatchSource_sourceCancelHandler;
    }

    dispatch_source_set_event_handler_f(v10, v19);
    dispatch_source_set_cancel_handler_f(v10, v20);
    *(a1 + 64) = a2;
    dispatch_retain(v9);
    *(a1 + 72) = v9;
    dispatch_retain(v10);
    *(a1 + 80) = v10;
    *(a1 + 89) = v11;
    if (!v11)
    {
      dispatch_resume(v10);
    }

    v21 = 0;
  }

  else
  {
    v21 = 4294960568;
  }

  v22 = *(a1 + 56);
  FigSimpleMutexUnlock();
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  return v21;
}

void priorityDispatchSource_sourceCancelHandler(CFTypeRef *a1)
{
  v2 = CFRetain(a1[1]);
  dispatch_sync_f(*(a1[1] + 2), a1, priorityDispatchSource_targetQueueCancelHandler);

  CFRelease(v2);
}

void priorityDispatchSource_targetQueueCancelHandler(void *a1)
{
  v2 = 1;
  atomic_compare_exchange_strong_explicit((a1[1] + 56), &v2, 2u, memory_order_relaxed, memory_order_relaxed);
  v3 = a1[1];
  if (v2 == 1)
  {
    v4 = v3[5];
    if (v4)
    {
      v4(v3[3]);
      v3 = a1[1];
    }
  }

  CFRelease(v3);

  free(a1);
}

uint64_t _APSPriorityDispatchSourceSharedContextGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSPriorityDispatchSourceSharedContextTypeID = result;
  return result;
}

void _APSPriorityDispatchSourceSharedContextFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }
}

uintptr_t APSPriorityDispatchSourceGetData(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 48)) != 0)
  {
    return dispatch_source_get_data(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t APSPriorityDispatchSourceSetTimer(uint64_t a1, dispatch_time_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294960591;
  }

  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D85D38];
  if (v5 != MEMORY[0x277D85D38] && v5 != MEMORY[0x277D85D00])
  {
    return 4294960540;
  }

  v11 = *(a1 + 56);
  FigSimpleMutexLock();
  if (*(a1 + 88))
  {
    v14 = 4294960573;
  }

  else
  {
    *(a1 + 96) = a2;
    if (*(a1 + 16) == v6)
    {
      a2 = dispatch_time(a2, 0);
      *(a1 + 96) = a2;
    }

    *(a1 + 104) = a3;
    *(a1 + 112) = a4;
    dispatch_source_set_timer(*(a1 + 80), a2, a3, a4);
    v14 = 0;
  }

  v12 = *(a1 + 56);
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t APSPriorityDispatchSourceSetPriority(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    return priorityDispatchSource_setPriority(a1, a2, 0);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSPriorityDispatchSourceCancel(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 56);
  FigSimpleMutexLock();
  if (!*(a1 + 88))
  {
    atomic_store(1u, (*(a1 + 40) + 56));
    v3 = *(a1 + 80);
    if (v3)
    {
      dispatch_source_cancel(v3);
      if (*(a1 + 89))
      {
        dispatch_resume(*(a1 + 80));
        *(a1 + 89) = 0;
      }

      dispatch_release(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    *(a1 + 88) = 1;
  }

  v4 = *(a1 + 56);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSVersionUtilsGetShortVersionLength(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    v4 = *(a1 + v2++);
  }

  while ((v4 - 48) < 0xA);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v4 != 46)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    result = v5;
    v7 = *(a1 + v5++);
  }

  while ((v7 - 48) < 0xA);
  if (result == v2)
  {
    goto LABEL_9;
  }

  if (v7)
  {
    if (v7 != 46)
    {
      goto LABEL_9;
    }

    v8 = v5;
    do
    {
      result = v8;
      v9 = *(a1 + v8++) - 48;
    }

    while (v9 < 0xA);
    if (result == v5)
    {
LABEL_9:
      APSLogErrorAt(0);
      if (gLogCategory_APSVersionUtils <= 90 && (gLogCategory_APSVersionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return 0;
    }
  }

  return result;
}

void APSGetFBOPropertyCMTime(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, CMTime *a4@<X8>)
{
  v8 = MEMORY[0x277CC0898];
  *&a4->value = *MEMORY[0x277CC0898];
  a4->epoch = *(v8 + 16);
  cf = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(a1, a2, *MEMORY[0x277CBECE8], &cf);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = cf == 0;
    }

    if (!v11)
    {
      v12 = CFGetTypeID(cf);
      if (v12 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(a4, cf);
      }

      v10 = 0;
    }

    if (a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = -12782;
    if (a3)
    {
LABEL_10:
      *a3 = v10;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t APSGetFBOPropertyCString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  cf = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v11 = 0;
    v9 = -12782;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = v8(a1, a2, *MEMORY[0x277CBECE8], &cf);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = cf == 0;
  }

  if (!v10)
  {
    v11 = CFGetCString();
    v9 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }

LABEL_9:
    *a5 = v9;
    goto LABEL_10;
  }

  v11 = 0;
  if (a5)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

double APSGetFBOPropertyDouble(uint64_t a1, uint64_t a2, int *a3)
{
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v7 = 0.0;
  if (v6)
  {
    v8 = v6(a1, a2, *MEMORY[0x277CBECE8], &cf);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = cf == 0;
    }

    if (!v9)
    {
      CFGetDouble();
      v7 = v10;
      v8 = 0;
    }

    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = -12782;
    if (a3)
    {
LABEL_8:
      *a3 = v8;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

CFTypeRef APSIsFBOPropertyNonNull(uint64_t a1, uint64_t a2, int *a3)
{
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v7 = -12782;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = v6(a1, a2, *MEMORY[0x277CBECE8], &cf);
  if (a3)
  {
LABEL_5:
    *a3 = v7;
  }

LABEL_6:
  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return (cf != 0);
  }

  return result;
}