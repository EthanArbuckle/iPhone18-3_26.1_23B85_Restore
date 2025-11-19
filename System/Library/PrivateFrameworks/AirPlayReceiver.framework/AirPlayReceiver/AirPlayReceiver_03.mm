void *__getMRNowPlayingSessionManagerStartSessionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRNowPlayingSessionManagerStartSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRNowPlayingSessionManagerStartSessionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E9CBF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_MRMediaRemoteSetNowPlayingApplicationOverrideEnabled(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr;
  v9 = getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr;
  if (!getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr)
  {
    v3 = MediaRemoteLibrary();
    v7[3] = dlsym(v3, "MRMediaRemoteSetNowPlayingApplicationOverrideEnabled");
    getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

uint64_t soft_MRMediaRemoteSetCanBeNowPlayingApplication(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr;
  v9 = getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr;
  if (!getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr)
  {
    v3 = MediaRemoteLibrary();
    v7[3] = dlsym(v3, "MRMediaRemoteSetCanBeNowPlayingApplication");
    getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

void *__getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRMediaRemoteSetCanBeNowPlayingApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRMediaRemoteSetNowPlayingApplicationOverrideEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APAdvertiserGetTypeID()
{
  if (APAdvertiserGetTypeID_initOnce != -1)
  {
    dispatch_once_f(&APAdvertiserGetTypeID_initOnce, &APAdvertiserGetTypeID_typeID, _APAdvertiserClassRegister);
  }

  return APAdvertiserGetTypeID_typeID;
}

uint64_t _APAdvertiserClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void _APAdvertiserFinalize(uint64_t a1)
{
  _APAdvertiserDestroySubAdvertiser(a1 + 136);
  _APAdvertiserDestroySubAdvertiser(a1 + 144);
  _APAdvertiserDestroySubAdvertiser(a1 + 152);
  _APAdvertiserDestroySubAdvertiser(a1 + 160);
  _APAdvertiserDestroySubAdvertiser(a1 + 168);
  _APAdvertiserDestroySubAdvertiser(a1 + 176);
  _APAdvertiserDestroySubAdvertiser(a1 + 184);
  v2 = *(a1 + 104);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 104) = 0;
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 112) = 0;
  }

  v4 = *(a1 + 232);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 232) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    dispatch_source_cancel(*(a1 + 64));
    dispatch_release(v8);
    *(a1 + 64) = 0;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    dispatch_release(v9);
    *(a1 + 16) = 0;
  }
}

void _APAdvertiserDestroySubAdvertiser(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[1])
    {
      BonjourAdvertiserStop();
      CFRelease(*(*a1 + 8));
      *(*a1 + 8) = 0;
      v2 = *a1;
    }

    if (!v2[2] || (BonjourAdvertiserStop(), CFRelease(*(*a1 + 16)), *(*a1 + 16) = 0, (v2 = *a1) != 0))
    {
      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t APAdvertiserCreate(const __CFDictionary *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (APAdvertiserGetTypeID_initOnce != -1)
  {
    dispatch_once_f(&APAdvertiserGetTypeID_initOnce, &APAdvertiserGetTypeID_typeID, _APAdvertiserClassRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
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
    v6 = dispatch_queue_create("APAdvertiser", 0);
    *(v5 + 16) = v6;
    if (v6)
    {
      v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v5 + 96) = v7;
      if (v7)
      {
        *(v5 + 128) = 1;
        if (a1)
        {
          *(v5 + 196) = CFDictionaryGetInt64() != 0;
          *(v5 + 197) = CFDictionaryGetInt64() != 0;
          if (CFDictionaryGetValue(a1, @"interfaceName"))
          {
            CFGetCString();
            if (v17[0])
            {
              v8 = if_nametoindex(v17);
              if (v8)
              {
                *(v5 + 28) = v8;
              }
            }
          }

          *(v5 + 24) = CFDictionaryGetInt64Ranged();
          Value = CFDictionaryGetValue(a1, @"systemInfo");
          *(v5 + 232) = Value;
          if (Value)
          {
            CFRetain(Value);
          }
        }

        *(v5 + 129) = IsAppleTV();
        FigCFDictionaryGetBooleanIfPresent();
        if (*(v5 + 197))
        {
          *(v5 + 128) = 0;
          _APAdvertiserEnsureAssistedModeInfoCreated(v5, 0);
          v10 = 0;
        }

        else if (*(v5 + 196))
        {
          v10 = 0;
          *(v5 + 128) = 0;
        }

        else
        {
          v10 = 1;
        }

        SharedHelper = APConnectivityHelperGetSharedHelper();
        if (SharedHelper)
        {
          v12 = CFRetain(SharedHelper);
          *(v5 + 40) = v12;
          if (v12)
          {
            if (!APConnectivityHelperRegisterEventHandler() || gLogCategory_APAdvertiser > 90 || gLogCategory_APAdvertiser == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_31;
            }

            goto LABEL_27;
          }
        }

        else
        {
          *(v5 + 40) = 0;
        }

        if (gLogCategory_APAdvertiser > 90 || gLogCategory_APAdvertiser == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_31;
        }

LABEL_27:
        LogPrintF();
LABEL_31:
        v13 = *(v5 + 16);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __APAdvertiserCreate_block_invoke;
        block[3] = &__block_descriptor_49_e5_v8__0l;
        v16 = v10;
        block[4] = v5;
        block[5] = a1;
        dispatch_sync(v13, block);
        result = 0;
        *a2 = v5;
        return result;
      }
    }

    APSLogErrorAt();
    APAdvertiserInvalidate(v5);
    CFRelease(v5);
  }

  else
  {
    APSLogErrorAt();
  }

  return 4294960568;
}

uint64_t _APAdvertiserEnsureAssistedModeInfoCreated(uint64_t result, int a2)
{
  v2 = result;
  v3 = (result + 198);
  if (a2 || !*(result + 198))
  {
    do
    {
LABEL_3:
      while (1)
      {
        RandomString();
        v4 = strlen(v3);
        if (v4 >= 0xA && v4 <= 0xF)
        {
          break;
        }

        APSLogErrorAt();
      }

      v5 = *v3;
      v6 = (v2 + 199);
    }

    while (!*v3);
    while ((v5 - 48) < 0xA)
    {
      v7 = *v6++;
      v5 = v7;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    return RandomString();
  }

  return result;
}

uint64_t __APAdvertiserCreate_block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(*(a1 + 32) + 56) |= 1u;
  }

  result = CFDictionaryGetValue(*(a1 + 40), @"P2PConfig");
  if (result)
  {
    result = _APAdvertiserProcessP2PConfig(*(a1 + 32));
    if (result)
    {

      return APSLogErrorAt();
    }
  }

  return result;
}

uint64_t APAdvertiserInvalidate(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  if (v1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAdvertiserInvalidate_block_invoke;
    block[3] = &unk_278C60820;
    block[5] = &v5;
    block[6] = a1;
    block[4] = &v9;
    dispatch_sync(v1, block);
    v2 = *(v10 + 6);
    if (!v2)
    {
      v2 = *(v6 + 6);
    }
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __APAdvertiserInvalidate_block_invoke(void *a1)
{
  _APAdvertiserStop(a1[6]);
  v2 = a1[6];
  if (v2[5])
  {
    APConnectivityHelperRemoveAllRegistrations();
    v2 = a1[6];
  }

  v3 = v2[12];
  if (v3)
  {
    CFRelease(v3);
    *(a1[6] + 96) = 0;
    v2 = a1[6];
  }

  v4 = v2[13];
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = [v5 internalQueue];
    block = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __APAdvertiserBTLEManagerInvalidate_block_invoke;
    v12 = &unk_278C608C8;
    v13 = v5;
    dispatch_sync(v6, &block);
    *(*(a1[4] + 8) + 24) = 0;
    v2 = a1[6];
  }

  v7 = v2[14];
  if (v7)
  {
    if (gLogCategory_APAdvertiserRapportManager <= 50 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v8 = v7[5];
    block = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __APAdvertiserRapportManagerInvalidate_block_invoke;
    v12 = &__block_descriptor_40_e5_v8__0l;
    v13 = v7;
    dispatch_sync(v8, &block);
    *(*(a1[5] + 8) + 24) = 0;
    v2 = a1[6];
  }

  _APAdvertiserSetNeedsNIRangingSession(v2, 0);
}

uint64_t _APAdvertiserStop(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    *(result + 32) = 0;
    if (*(result + 40))
    {
      _APAdvertiserStopListeningForNetwork(result, 1, *(result + 48));
      _APAdvertiserStopListeningForNetwork(v1, 7, *(v1 + 49));
    }

    return _APAdvertiserUpdate(v1);
  }

  return result;
}

void _APAdvertiserSetNeedsNIRangingSession(uint64_t a1, int a2)
{
  if (*(a1 + 240) != a2)
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 240) = a2;
    if (*(a1 + 232))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      if (a2)
      {
        FigNotificationCenterAddWeakListener();
      }

      else
      {
        FigNotificationCenterRemoveWeakListener();
      }

      _APAdvertiserUpdateNIRangingSession(a1, v4);
    }

    else if (gLogCategory_APAdvertiser <= 90 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {

      LogPrintF();
    }
  }
}

void _APAdvertiserUpdateNIRangingSession(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 232);
  if (!v3)
  {
    APSLogErrorAt();
    goto LABEL_46;
  }

  v4 = APReceiverSystemInfoCopyProperty(v3, a2, @"BluetoothAddress", 0, 0);
  if (!v4)
  {
LABEL_46:
    v6 = 0;
LABEL_48:
    v8 = 1;
    goto LABEL_12;
  }

  v5 = v4;
  BytePtr = CFDataGetBytePtr(v4);
  v6 = CFStringCreateF();
  if (!v6)
  {
    APSLogErrorAt();
    CFRelease(v5);
    goto LABEL_48;
  }

  CFRelease(v5);
  if (*(a1 + 240))
  {
    if (*(a1 + 248))
    {
      if (!APSIsProximityReceiverEnabled())
      {
        goto LABEL_44;
      }

      v7 = *(a1 + 248);
      if (!v7)
      {
        goto LABEL_44;
      }

      if (gLogCategory_APAdvertiser > 50)
      {
        goto LABEL_23;
      }

      if (gLogCategory_APAdvertiser == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_23:
          v10 = dispatch_semaphore_create(0);
          if (v10)
          {
            v11 = v10;
            v12 = *(a1 + 248);
            v23 = MEMORY[0x277D85DD0];
            v24 = 3221225472;
            v25 = ___APAdvertiserUpdateNIRangingSessionWithDeviceIdentifier_block_invoke;
            v26 = &unk_278C5F7D0;
            v27 = v11;
            v28 = a1;
            [v12 updateResponderDeviceIdentifier:v6 completionHandler:{&v23, BytePtr}];
            dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
            dispatch_release(v11);
          }

          else
          {
            APSLogErrorAt();
          }

          goto LABEL_44;
        }

        v7 = *(a1 + 248);
      }

      BytePtr = v7;
      LogPrintF();
      goto LABEL_23;
    }

    if (APSIsProximityReceiverEnabled())
    {
      if (!*(a1 + 248))
      {
        if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v23 = 0;
        v24 = &v23;
        v25 = 0x3052000000;
        v26 = __Block_byref_object_copy__258;
        v27 = __Block_byref_object_dispose__259;
        v28 = getNISpatialBrowsingConfigurationClass_softClass;
        if (!getNISpatialBrowsingConfigurationClass_softClass)
        {
          v18 = MEMORY[0x277D85DD0];
          v19 = 3221225472;
          v20 = __getNISpatialBrowsingConfigurationClass_block_invoke;
          v21 = &unk_278C5FC48;
          v22 = &v23;
          __getNISpatialBrowsingConfigurationClass_block_invoke(&v18);
        }

        _Block_object_dispose(&v23, 8);
        v14 = objc_opt_new();
        v15 = v14;
        if (!v14)
        {
          goto LABEL_52;
        }

        [v14 setResponder:{1, BytePtr}];
        [v15 setDeviceIdentifier:v6];
        v23 = 0;
        v24 = &v23;
        v25 = 0x3052000000;
        v26 = __Block_byref_object_copy__258;
        v27 = __Block_byref_object_dispose__259;
        v28 = getNISessionClass_softClass;
        if (!getNISessionClass_softClass)
        {
          v18 = MEMORY[0x277D85DD0];
          v19 = 3221225472;
          v20 = __getNISessionClass_block_invoke;
          v21 = &unk_278C5FC48;
          v22 = &v23;
          __getNISessionClass_block_invoke(&v18);
        }

        _Block_object_dispose(&v23, 8);
        v16 = objc_opt_new();
        *(a1 + 248) = v16;
        if (v16)
        {
          [v16 runWithConfiguration:v15];
          if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        else
        {
LABEL_52:
          APSLogErrorAt();
        }

        goto LABEL_43;
      }

      APSLogErrorAt();
    }

    v15 = 0;
LABEL_43:

LABEL_44:
    CFRelease(v6);
    return;
  }

  v8 = 0;
LABEL_12:
  if (APSIsProximityReceiverEnabled())
  {
    v9 = *(a1 + 248);
    if (v9)
    {
      if (gLogCategory_APAdvertiser <= 50)
      {
        if (gLogCategory_APAdvertiser != -1 || (v13 = _LogCategory_Initialize(), v9 = *(a1 + 248), v13))
        {
          BytePtr = v9;
          LogPrintF();
          v9 = *(a1 + 248);
        }
      }

      [(UInt8 *)v9 invalidate];

      *(a1 + 248) = 0;
      if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_44;
  }
}

void sub_23E9CD934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNISpatialBrowsingConfigurationClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary();
  result = objc_getClass("NISpatialBrowsingConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getNISpatialBrowsingConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np();
    return __getNISessionClass_block_invoke(v3);
  }

  return result;
}

void __getNISessionClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("NISession");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getNISessionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    abort_report_np();
    NearbyInteractionLibrary();
  }
}

void NearbyInteractionLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!NearbyInteractionLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __NearbyInteractionLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278C5F7F0;
    v3 = 0;
    NearbyInteractionLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (NearbyInteractionLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __NearbyInteractionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NearbyInteractionLibraryCore_frameworkLibrary = result;
  return result;
}

void _APAdvertiserInfoHandleBluetoothAddressChanged(int a1, NSObject **cf)
{
  CFRetain(cf);
  v3 = cf[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___APAdvertiserInfoHandleBluetoothAddressChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = cf;
  dispatch_async(v3, block);
}

uint64_t _APAdvertiserStopListeningForNetwork(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    result = APConnectivityHelperDeregisterForEvent();
    if (result)
    {
      result = APSLogErrorAt();
      if (gLogCategory_APAdvertiser <= 90)
      {
        if (gLogCategory_APAdvertiser != -1)
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
  }

  return result;
}

uint64_t _APAdvertiserUpdate(uint64_t a1)
{
  v2 = (a1 + 168);
  v3 = _APAdvertiserWantSubAdvertiserToBeStarted(a1, 6u, *(a1 + 168), 0, 0);
  v6 = *(a1 + 72);
  if (v3)
  {
    if (!v6)
    {
      LODWORD(v76) = 0;
      WORD2(block) = 0;
      LODWORD(block) = 0;
      APSGetDeviceID();
      p_block = &block;
      v9 = CFStringCreateF();
      if (v76)
      {
        APSLogErrorAt();
      }

      _APAdvertiserUpdateAdvertiserInfoCorrelationID(a1, v9, v7, v8);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  else if (v6)
  {
    _APAdvertiserUpdateAdvertiserInfoCorrelationID(a1, 0, v4, v5);
  }

  updated = _APAdvertiserUpdateSubAdvertiserState(a1, 0, (a1 + 136));
  if (*(a1 + 129))
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = _APAdvertiserUpdateSubAdvertiserState(a1, v11, (a1 + 144));
  if (!updated)
  {
    updated = v12;
  }

  v13 = _APAdvertiserUpdateSubAdvertiserState(a1, 3u, (a1 + 152));
  if (!updated)
  {
    updated = v13;
  }

  v14 = _APAdvertiserUpdateSubAdvertiserState(a1, 5u, (a1 + 160));
  if (!updated)
  {
    updated = v14;
  }

  v15 = _APAdvertiserUpdateSubAdvertiserState(a1, 6u, v2);
  if (updated)
  {
    v16 = updated;
  }

  else
  {
    v16 = v15;
  }

  v17 = _APAdvertiserUpdateSubAdvertiserState(a1, 4u, (a1 + 176));
  if (!v16)
  {
    v16 = v17;
  }

  v18 = _APAdvertiserUpdateSubAdvertiserState(a1, 8u, (a1 + 184));
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  if (*(a1 + 197) || !*(a1 + 49) || (*(a1 + 129) && (v20 = *(a1 + 144)) != 0 && *(v20 + 4) && !*(a1 + 194) ? (v21 = *(a1 + 195) != 0) : (v21 = 1), *(a1 + 192) && v21 == *(a1 + 193)))
  {
    v24 = 0;
  }

  else
  {
    if (APSIsVirtualMachine())
    {
      if (gLogCategory_APAdvertiser > 50 || gLogCategory_APAdvertiser == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    if ([objc_msgSend(MEMORY[0x277D7BB18] "currentState")])
    {
      v22 = *(a1 + 120);
      if (v21)
      {
        if (!v22)
        {
          v23 = APSWiFiTransactionCreate();
          if (v23)
          {
            v24 = v23;
            APSLogErrorAt();
            goto LABEL_51;
          }
        }
      }

      else if (v22)
      {
        CFRelease(v22);
        *(a1 + 120) = 0;
      }

      if (gLogCategory_APAdvertiser > 50 || gLogCategory_APAdvertiser == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_50;
      }

      v25 = "Enable";
      if (!v21)
      {
        v25 = "Disable";
      }

      p_block = v25;
      v66 = 0;
LABEL_48:
      LogPrintF();
LABEL_50:
      v24 = 0;
      *(a1 + 193) = v21;
      *(a1 + 192) = 1;
      goto LABEL_51;
    }

    APSLogErrorAt();
    v24 = -6735;
  }

LABEL_51:
  if (v19)
  {
    v26 = v19;
  }

  else
  {
    v26 = v24;
  }

  LOWORD(v68) = 0;
  v27 = *(a1 + 56);
  v28 = ((v27 & 2) == 0 || (*(a1 + 52) & 2) != 0 || !*(a1 + 49)) && ((v27 & 8) == 0 || (*(a1 + 52) & 8) != 0 || !*(a1 + 49)) && ((v27 & 0x20) == 0 || (*(a1 + 52) & 0x20) != 0 || !*(a1 + 48)) && ((v27 & 0x40) == 0 || (*(a1 + 52) & 0x40) != 0 || !*(a1 + 48));
  if (*(a1 + 197))
  {
    goto LABEL_137;
  }

  v29 = *(a1 + 104);
  if (*(a1 + 32))
  {
    v30 = MEMORY[0x277CBED28];
    if (v29)
    {
LABEL_72:
      v76 = 0;
      v77 = &v76;
      v78 = 0x2020000000;
      v79 = 0;
      v39 = *(v29 + 16);
      v40 = [v39 internalQueue];
      block = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __APAdvertiserBTLEManagerGetBTLEMode_block_invoke;
      v72 = &unk_278C60940;
      v73 = v39;
      v74 = &v76;
      v75 = &v68;
      dispatch_sync(v40, &block);
      _Block_object_dispose(&v76, 8);
      v41 = MEMORY[0x277CBED10];
      if (!v28)
      {
        v41 = v30;
      }

      v42 = APAdvertiserBTLEManagerSetProperty(*(*(a1 + 104) + 16), @"isP2PAllowed", *v41);
      if (v42)
      {
        v43 = v42;
      }

      else if (v68 == 1)
      {
        if (!*(a1 + 80) || !*(a1 + 88))
        {
          goto LABEL_91;
        }

        if (gLogCategory_APAdvertiser <= 40 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v45 = _APAdvertiserSetBTLEParameters(a1);
        if (!v45)
        {
          v46 = *(*(a1 + 104) + 16);
          v47 = [v46 internalQueue];
          block = MEMORY[0x277D85DD0];
          v70 = 3221225472;
          v71 = __APAdvertiserBTLEManagerRestartAdvertising_block_invoke;
          v72 = &unk_278C608C8;
          v73 = v46;
          dispatch_sync(v47, &block);
          goto LABEL_91;
        }

        v43 = v45;
      }

      else
      {
        v44 = _APAdvertiserSetBTLEParameters(a1);
        if (v44)
        {
          v43 = v44;
        }

        else
        {
          v43 = APAdvertiserBTLEManagerSetBTLEMode(*(*(a1 + 104) + 16), 1);
          if (!v43)
          {
            goto LABEL_92;
          }
        }
      }

      goto LABEL_169;
    }

    if (gAPAdvertiserBTLEManagerInitOnce != -1)
    {
      dispatch_once(&gAPAdvertiserBTLEManagerInitOnce, &__block_literal_global_5828);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance && (v32 = Instance, *(Instance + 16) = 0, v33 = [[APAdvertiserBTLEManager alloc] initWithEventContext:Instance], (*(v32 + 16) = v33) != 0))
    {
      *(a1 + 104) = v32;
      if (*(a1 + 196))
      {
        v34 = APAdvertiserBTLEManagerSetProperty(v33, @"requireAltBrowser", *v30);
        if (v34)
        {
          v43 = v34;
          goto LABEL_168;
        }

        v33 = *(*(a1 + 104) + 16);
      }

      v35 = [(APAdvertiserBTLEManager *)v33 setEventHandler:_APAdvertiserBTLEEventHandler withContext:*(a1 + 96), p_block, v66];
      if (!v35)
      {
        v36 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, (a1 + 24));
        if (!v36)
        {
          APSLogErrorAt();
          v43 = -6728;
          goto LABEL_169;
        }

        v37 = v36;
        v38 = APAdvertiserBTLEManagerSetProperty(*(*(a1 + 104) + 16), @"receiverPort", v36);
        if (v38)
        {
          v43 = v38;
          APSLogErrorAt();
          CFRelease(v37);
          goto LABEL_169;
        }

        CFRelease(v37);
        v29 = *(a1 + 104);
        if (!v29)
        {
          APSLogErrorAt();
          goto LABEL_91;
        }

        goto LABEL_72;
      }

      v43 = v35;
    }

    else
    {
      APSLogErrorAt();
      v43 = -72312;
    }

LABEL_168:
    APSLogErrorAt();
    goto LABEL_169;
  }

  if (!v29)
  {
LABEL_91:
    v43 = 0;
    goto LABEL_92;
  }

  v43 = APAdvertiserBTLEManagerSetBTLEMode(*(v29 + 16), 0);
  if (!v43)
  {
    goto LABEL_92;
  }

LABEL_169:
  APSLogErrorAt();
LABEL_92:
  v48 = *(a1 + 197);
  if (!v26)
  {
    v26 = v43;
  }

  v67 = 0;
  if (v48)
  {
    goto LABEL_137;
  }

  v49 = *(a1 + 112);
  if (!*(a1 + 32))
  {
    if (!v49)
    {
      goto LABEL_137;
    }

    v52 = APAdvertiserRapportManagerSetMode(v49, 0);
    if (!v52)
    {
      goto LABEL_138;
    }

    goto LABEL_152;
  }

  if (v49)
  {
LABEL_117:
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v57 = *(v49 + 40);
    block = MEMORY[0x277D85DD0];
    v70 = 3221225472;
    v71 = __APAdvertiserRapportManagerGetMode_block_invoke;
    v72 = &unk_278C607D0;
    v73 = &v76;
    v74 = v49;
    v75 = &v67;
    dispatch_sync(v57, &block);
    _Block_object_dispose(&v76, 8);
    if (v67 != 1)
    {
      v61 = _APAdvertiserSetRapportParameters(a1, v58, v59, v60);
      if (v61)
      {
        v52 = v61;
      }

      else
      {
        v52 = APAdvertiserRapportManagerSetMode(*(a1 + 112), 1);
        if (!v52)
        {
          goto LABEL_138;
        }
      }

      goto LABEL_152;
    }

    if (*(a1 + 80) && *(a1 + 88))
    {
      v52 = _APAdvertiserSetRapportParameters(a1, v58, v59, v60);
      if (!v52)
      {
        goto LABEL_138;
      }

      goto LABEL_152;
    }

LABEL_137:
    v52 = 0;
    goto LABEL_138;
  }

  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  if (gAPAdvertiserRapportManagerInitOnce != -1)
  {
    dispatch_once(&gAPAdvertiserRapportManagerInitOnce, &__block_literal_global_5606);
  }

  v50 = _CFRuntimeCreateInstance();
  v51 = v50;
  if (!v50)
  {
    APSLogErrorAt();
    v52 = -72412;
    *(v77 + 6) = -72412;
    _Block_object_dispose(&v76, 8);
    goto LABEL_152;
  }

  *(v50 + 16) = 0u;
  *(v50 + 80) = 0;
  *(v50 + 48) = 0u;
  *(v50 + 64) = 0u;
  *(v50 + 32) = 0u;
  if (gLogCategory_APAdvertiserRapportManager <= 50 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v68 = 0;
  if (_APAdvertiserRapportManager_getActiveManagers_once != -1)
  {
    dispatch_once(&_APAdvertiserRapportManager_getActiveManagers_once, &__block_literal_global_10);
  }

  if (FigCFWeakReferenceTableAddValueAndGetKey())
  {
    APSLogErrorAt();
  }

  v53 = v68;
  v51[2] = v68;
  if (v53)
  {
    v54 = dispatch_queue_create("APAdvertiserRapportManagerInternalQueue", 0);
    v51[5] = v54;
    if (v54)
    {
      v55 = dispatch_queue_create("APAdvertiserRapportManagerEventQueue", 0);
      v51[4] = v55;
      if (v55)
      {
        v56 = v51[5];
        block = MEMORY[0x277D85DD0];
        v70 = 3221225472;
        v71 = __APAdvertiserRapportManagerCreate_block_invoke;
        v72 = &unk_278C60738;
        v73 = &v76;
        v74 = v51;
        dispatch_sync(v56, &block);
        if (!*(v77 + 6))
        {
          *(a1 + 112) = v51;
          _Block_object_dispose(&v76, 8);
          goto LABEL_116;
        }

        APSLogErrorAt();
        goto LABEL_162;
      }
    }

    APSLogErrorAt();
    v64 = -72412;
  }

  else
  {
    APSLogErrorAt();
    v64 = -6728;
  }

  *(v77 + 6) = v64;
LABEL_162:
  CFRelease(v51);
  v52 = *(v77 + 6);
  _Block_object_dispose(&v76, 8);
  if (!v52)
  {
LABEL_116:
    v49 = *(a1 + 112);
    if (!v49)
    {
      APSLogErrorAt();
      goto LABEL_137;
    }

    goto LABEL_117;
  }

LABEL_152:
  APSLogErrorAt();
  v63 = *(a1 + 112);
  if (v63)
  {
    APAdvertiserRapportManagerSetMode(v63, 0);
  }

LABEL_138:
  if (v26)
  {
    result = v26;
  }

  else
  {
    result = v52;
  }

  *(a1 + 88) = 0;
  return result;
}

void sub_23E9CEAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _APAdvertiserWantSubAdvertiserToBeStarted(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4, char *a5)
{
  if (a3)
  {
    v5 = *(a3 + 4);
  }

  else
  {
    v5 = 0;
  }

  if ((*(a1 + 56) & (1 << a2)) == 0 || (*(a1 + 52) & (1 << a2)) != 0)
  {
    v6 = 0;
    v8 = 0;
    goto LABEL_21;
  }

  v6 = 0;
  if (a2 > 8)
  {
    v8 = 0;
    goto LABEL_21;
  }

  if (((1 << a2) & 0x10E) != 0)
  {
    v7 = 49;
  }

  else
  {
    if (((1 << a2) & 0x70) == 0)
    {
      v8 = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    v7 = 48;
  }

  v8 = *(a1 + v7);
  if (!v8)
  {
    v6 = 0;
    goto LABEL_21;
  }

LABEL_12:
  v8 = *(a1 + 32);
  if (*(a1 + 32))
  {
    v8 = *(a1 + 194) || (*(a1 + 195) != 0);
    if ((a2 & 0xFFFFFFFD) != 1)
    {
      if ((a2 > 6) | (0x15u >> a2) & 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = *(a1 + 194) & 1;
      }
    }
  }

  v6 = 1;
LABEL_21:
  if (a4)
  {
    *a4 = v5;
  }

  if (a5)
  {
    *a5 = v6;
  }

  return v8;
}

void _APAdvertiserUpdateAdvertiserInfoCorrelationID(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_APAdvertiser <= 30 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a1 + 72);
  *(a1 + 72) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (*(a1 + 80))
  {
    if (gLogCategory_APAdvertiser <= 30 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    APAdvertiserInfoSetProperty(*(a1 + 80), cf, @"correlationID", a4, *(a1 + 72));
    *(a1 + 88) = 1;
  }
}

uint64_t _APAdvertiserUpdateSubAdvertiserState(uint64_t a1, unsigned int a2, void **a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v32[0] = 0;
  LOBYTE(cf) = 0;
  if (!_APAdvertiserWantSubAdvertiserToBeStarted(a1, a2, v6, v32, &cf) || a2 == 6 && !*(a1 + 72))
  {
    if (v32[0])
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && *(v6 + 4) && v6[1])
    {
      BonjourAdvertiserStop();
      if (v6[2])
      {
        BonjourAdvertiserStop();
      }

      if (*v6 == 8)
      {
        _APAdvertiserEnsureAssistedModeInfoCreated(a1, 1);
      }

      *(v6 + 4) = 0;
      if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    return 0;
  }

  v7 = v32[0];
  if (!v32[0])
  {
    if (v6)
    {
      goto LABEL_33;
    }

    v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
    if (!v10)
    {
      APSLogErrorAt();
      v8 = 4294960568;
      goto LABEL_106;
    }

    v6 = v10;
    *v10 = a2;
    v11 = BonjourAdvertiserCreate();
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      BonjourAdvertiserSetDispatchQueue();
      if (a2 > 2 || !*(a1 + 128))
      {
        goto LABEL_32;
      }

      v12 = BonjourAdvertiserCreate();
      if (!v12)
      {
        BonjourAdvertiserSetDispatchQueue();
LABEL_32:
        *a3 = v6;
LABEL_33:
        v34 = 0u;
        v35 = 0u;
        *v32 = 0u;
        v33 = 0u;
        v30 = 0;
        cf = 0;
        if (*(v6 + 4))
        {
LABEL_81:
          v8 = 0;
          goto LABEL_82;
        }

        if (!v6[1])
        {
          APSLogErrorAt();
          v8 = 4294960587;
          goto LABEL_82;
        }

        LODWORD(v13) = 0;
        v14 = 0;
        v15 = *v6;
        if (*v6 > 8u)
        {
          v16 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          goto LABEL_71;
        }

        if (((1 << v15) & 0x127) != 0)
        {
          if (!*(a1 + 196))
          {
            if (v15 == 5)
            {
              v16 = "com.apple.airplay";
            }

            else if (v15 == 8)
            {
              v16 = v32;
              __sprintf_chk(v32, 0, 0x40uLL, "_%s._%s.", (a1 + 198), "tcp");
              cf = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 214), 0x8000100u);
              if (cf)
              {
LABEL_41:
                if (*v6 == 5)
                {
                  v14 = 0;
                  v20 = 0x280000000000000;
                  v19 = 2304;
LABEL_69:
                  v18 = 1;
                  goto LABEL_70;
                }

                if (!*v6)
                {
                  v18 = 0;
                  v19 = 0;
                  v20 = 0;
                  v14 = *(a1 + 28);
LABEL_70:
                  v13 = "local.";
                  goto LABEL_71;
                }

                v22 = if_nametoindex("awdl0");
                if (v22)
                {
                  v14 = v22;
                  v19 = 0;
                  v20 = 0;
                  goto LABEL_69;
                }

LABEL_107:
                APSLogErrorAt();
                v8 = 4294960534;
                goto LABEL_82;
              }
            }

            else
            {
              v16 = "_airplay._tcp.";
            }

LABEL_40:
            v17 = APAdvertiserInfoCreateAirPlayServiceName(*(a1 + 80), &cf);
            if (v17)
            {
              v8 = v17;
              goto LABEL_109;
            }

            goto LABEL_41;
          }

          if (v15 == 1)
          {
            v16 = "_airplay-alt._tcp.";
            goto LABEL_40;
          }
        }

        else
        {
          v16 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          if (((1 << v15) & 0x58) == 0)
          {
LABEL_71:
            v25 = _APAdvertiserSetupBonjourAdvertiser(v6[1], v13, v16, cf, v14, *(a1 + 24), v18, v20, v19);
            if (v25)
            {
              v8 = v25;
              goto LABEL_109;
            }

            if (!v6[2])
            {
LABEL_76:
              updated = _APAdvertiserUpdateSubAdvertiserTXTRecordsAndStartIfNecessary(a1, v6);
              if (!updated)
              {
                *(v6 + 4) = 1;
                if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                goto LABEL_81;
              }

              v8 = updated;
              goto LABEL_109;
            }

            if (!*(a1 + 196))
            {
              RAOPServiceName = APAdvertiserInfoCreateRAOPServiceName(*(a1 + 80), &v30);
              if (RAOPServiceName)
              {
                v8 = RAOPServiceName;
              }

              else
              {
                v27 = _APAdvertiserSetupBonjourAdvertiser(v6[2], "local.", "_raop._tcp.", v30, v14, *(a1 + 24), v18, 0, 0);
                if (!v27)
                {
                  goto LABEL_76;
                }

                v8 = v27;
              }

LABEL_109:
              APSLogErrorAt();
LABEL_82:
              if (cf)
              {
                CFRelease(cf);
              }

              if (v30)
              {
                CFRelease(v30);
              }

              if (!v8)
              {
                return v8;
              }

LABEL_106:
              APSLogErrorAt();
LABEL_9:
              if (gLogCategory_APAdvertiser <= 90 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              return v8;
            }

            goto LABEL_102;
          }

          if (!*(a1 + 196))
          {
            if (v15 == 6)
            {
              v16 = "com.apple.airplay";
            }

            else
            {
              v16 = "_airplay-p2p._tcp.";
            }

            if (v15 == 3)
            {
              v21 = if_nametoindex("awdl0");
              if (!v21)
              {
                goto LABEL_107;
              }

              v14 = v21;
              v20 = 0;
              v19 = 0;
            }

            else if (v15 == 6)
            {
              v23 = APAdvertiserInfoCreateAirPlayServiceName(*(a1 + 80), &cf);
              if (v23)
              {
                v8 = v23;
                goto LABEL_109;
              }

              v14 = 0;
              v19 = 2304;
              v20 = 0x280000000000000;
              if (cf)
              {
                v18 = 1;
                v16 = "com.apple.airplay";
                goto LABEL_70;
              }
            }

            else
            {
              v14 = 0;
              v19 = 2304;
              v20 = 0x280000000000000;
            }

            v24 = APAdvertiserInfoCreateRAOPServiceName(*(a1 + 80), &cf);
            if (v24)
            {
              v8 = v24;
              goto LABEL_109;
            }

            goto LABEL_69;
          }
        }

LABEL_102:
        APSLogErrorAt();
        goto LABEL_81;
      }

      v8 = v12;
    }

    APSLogErrorAt();
    free(v6);
    goto LABEL_106;
  }

  if (*(a1 + 88))
  {
    v8 = _APAdvertiserUpdateSubAdvertiserTXTRecordsAndStartIfNecessary(a1, v6);
    if (v8)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != 1)
  {
    goto LABEL_9;
  }

  return v8;
}

uint64_t _APAdvertiserSetBTLEParameters(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    if (*(a1 + 104))
    {
      PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
      result = APAdvertiserBTLEManagerSetProperty(*(*(a1 + 104) + 16), @"accessControlType", [MEMORY[0x277CCABB0] numberWithUnsignedInt:PropertyInt64Sync]);
      v4 = result;
      if (result)
      {
        APSLogErrorAt();
        return v4;
      }
    }

    else
    {
      APSLogErrorAt();
      return 0;
    }
  }

  return result;
}

uint64_t _APAdvertiserSetRapportParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v5 = *(a1 + 80);
  if (v5)
  {
    if (*(a1 + 112))
    {
      v6 = APAdvertiserInfoCopyProperty(v5, a2, @"deviceID", a4, &v11);
      if (v11)
      {
        APSLogErrorAt();
        v11 = -6705;
      }

      else
      {
        v7 = *(a1 + 112);
        v13 = 0;
        v14 = &v13;
        v15 = 0x2020000000;
        v16 = 0;
        v8 = *(v7 + 40);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __APAdvertiserRapportManagerSetProperty_block_invoke;
        block[3] = &unk_278C60780;
        block[4] = &v13;
        block[5] = v7;
        block[6] = @"deviceID";
        block[7] = v6;
        dispatch_sync(v8, block);
        v9 = *(v14 + 6);
        _Block_object_dispose(&v13, 8);
        v11 = v9;
        if (v9)
        {
          APSLogErrorAt();
        }
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    else
    {
      APSLogErrorAt();
    }
  }

  return v11;
}

void _APAdvertiserBTLEEventHandler(uint64_t a1, int a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___APAdvertiserBTLEEventHandler_block_invoke;
    v6[3] = &__block_descriptor_44_e5_v8__0l;
    v7 = a2;
    v6[4] = v4;
    dispatch_sync(v5, v6);
    CFRelease(v4);
  }
}

uint64_t _APAdvertiserHandleSourceDeviceNearbyEvent(uint64_t a1, char a2)
{
  if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(a1 + 194) = a2;
  result = _APAdvertiserUpdate(a1);
  if (result)
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t _APAdvertiserUpdateSubAdvertiserTXTRecordsAndStartIfNecessary(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  if (!*(a2 + 8))
  {
    APSLogErrorAt();
    BinaryTXTRecordFromTXTRecordBytes = 0;
    v9 = 4294960587;
    goto LABEL_37;
  }

  v18 = 0;
  v16 = 0;
  cf = 0;
  v4 = *(a1 + 80);
  if (v4)
  {
    BinaryTXTRecordFromTXTRecordBytes = 0;
    v6 = *a2;
    if (*a2 <= 3)
    {
      if (v6 >= 3)
      {
        if (v6 != 3)
        {
          goto LABEL_22;
        }

        v18 = APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(v4, 0, 0, &v15);
        if (!v18)
        {
          goto LABEL_12;
        }

        goto LABEL_51;
      }

      goto LABEL_11;
    }

    if (v6 - 5 >= 2)
    {
      if (v6 == 4)
      {
        v18 = APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(v4, 0, 2, &v15);
        if (!v18)
        {
          goto LABEL_12;
        }

        goto LABEL_51;
      }

      if (v6 != 8)
      {
        goto LABEL_22;
      }

LABEL_11:
      v18 = APAdvertiserInfoCopyAirPlayDataWithNANServiceType(v4, 0, &v15);
      if (!v18)
      {
LABEL_12:
        BinaryTXTRecordFromTXTRecordBytes = 0;
        goto LABEL_22;
      }

LABEL_51:
      APSLogErrorAt();
      goto LABEL_12;
    }

    v18 = APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(v4, v6 != 5, 2, &v16);
    if (v18)
    {
      goto LABEL_51;
    }

    if (*a2 == 5)
    {
      p_cf = &cf;
      v18 = APAdvertiserInfoCopyAirPlayDataWithNANServiceType(*(a1 + 80), 2u, &cf);
      if (v18)
      {
        goto LABEL_51;
      }
    }

    else
    {
      p_cf = &v16;
    }

    v8 = *p_cf;
    CFDataGetBytePtr(v8);
    CFDataGetLength(v8);
    BinaryTXTRecordFromTXTRecordBytes = CreateBinaryTXTRecordFromTXTRecordBytes();
    if (v18)
    {
      APSLogErrorAt();
      if (BinaryTXTRecordFromTXTRecordBytes)
      {
        CFRelease(BinaryTXTRecordFromTXTRecordBytes);
        goto LABEL_12;
      }
    }

    else
    {
      v15 = v16;
      v16 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    BinaryTXTRecordFromTXTRecordBytes = 0;
    v18 = -6709;
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v9 = v18;
  if (v18)
  {
    goto LABEL_50;
  }

  updated = _APAdvertiserUpdateBonjourAdvertiser(a2, 1, v15, BinaryTXTRecordFromTXTRecordBytes);
  if (updated)
  {
    v9 = updated;
LABEL_50:
    APSLogErrorAt();
    goto LABEL_37;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_31;
  }

  v11 = APAdvertiserInfoCopyRAOPData(*(a1 + 80), &v14);
  if (v11)
  {
    v9 = v11;
    goto LABEL_50;
  }

  v12 = _APAdvertiserUpdateBonjourAdvertiser(a2, 0, v14, 0);
  if (v12)
  {
    v9 = v12;
    goto LABEL_50;
  }

LABEL_31:
  if (*(a2 + 4) && gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = 0;
LABEL_37:
  if (v15)
  {
    CFRelease(v15);
  }

  if (BinaryTXTRecordFromTXTRecordBytes)
  {
    CFRelease(BinaryTXTRecordFromTXTRecordBytes);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v9;
}

uint64_t _APAdvertiserSetupBonjourAdvertiser(int a1, int a2, const char *a3, CFStringRef theString, int a5, int a6, int a7, uint64_t a8, unsigned int a9)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  if (!CFStringGetCString(theString, v17, 256, 0x8000100u))
  {
    APSLogErrorAt();
    return 4294960534;
  }

  v11 = BonjourAdvertiserSetDomain();
  if (v11)
  {
    v14 = v11;
LABEL_21:
    APSLogErrorAt();
    return v14;
  }

  v12 = BonjourAdvertiserSetName();
  if (v12)
  {
    v14 = v12;
    goto LABEL_21;
  }

  v13 = BonjourAdvertiserSetServiceType();
  if (v13)
  {
    v14 = v13;
    goto LABEL_21;
  }

  v14 = a9;
  if ((a8 & 0x200000000000000) != 0)
  {
    if (!strcmp(a3, "com.apple.airplay"))
    {
      v15 = ((a9 >> 10) & 2) + 1;
    }

    else
    {
      v15 = (a9 >> 10) & 2;
    }

    if (v15)
    {
      BonjourAdvertiserSetNANControlFlags();
    }
  }

  else
  {
    BonjourAdvertiserSetInterfaceIndex();
  }

  BonjourAdvertiserSetPort();
  BonjourAdvertiserSetP2P();
  if (a8)
  {
    BonjourAdvertiserSetFlags();
  }

  if (a9)
  {
    BonjourAdvertiserSetTrafficFlags();
    return 0;
  }

  return v14;
}

uint64_t _APAdvertiserUpdateBonjourAdvertiser(uint64_t a1, int a2, CFDataRef theData, const __CFData *a4)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
  }

  v7 = BonjourAdvertiserSetTXTRecord();
  if (v7)
  {
    v9 = v7;
LABEL_17:
    APSLogErrorAt();
    return v9;
  }

  BonjourAdvertiserSetNANCustomData();
  if (gLogCategory_APAdvertiser <= 10 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    if (a4)
    {
      CFDataGetLength(a4);
    }

    LogPrintF();
  }

  if (*(a1 + 4))
  {
    v8 = BonjourAdvertiserUpdate();
  }

  else
  {
    v8 = BonjourAdvertiserStart();
  }

  v9 = v8;
  if (v8)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t _APAdvertiserProcessP2PConfig(uint64_t a1)
{
  if (*(a1 + 197))
  {
    return 0;
  }

  v2 = *(a1 + 129);
  Int64 = CFDictionaryGetInt64();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (Int64)
  {
    v5 = *(a1 + 56) | v4;
  }

  else
  {
    v5 = *(a1 + 56) & ~v4;
  }

  *(a1 + 56) = v5;
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFF7 | (8 * (CFDictionaryGetInt64() != 0));
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFDF | (32 * (CFDictionaryGetInt64() != 0));
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFBF | ((CFDictionaryGetInt64() != 0) << 6);
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFEF | (16 * (CFDictionaryGetInt64() != 0));
  v6 = _APAdvertiserUpdate(a1);
  if (v6)
  {
    APSLogErrorAt();
  }

  return v6;
}

void _APAdvertiserHandleConnectivityHelperEvent(const void *a1, int a2, uint64_t a3, void *a4)
{
  CFRetain(a1);
  CFRetain(a4);
  v7 = a4[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___APAdvertiserHandleConnectivityHelperEvent_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v9 = a2;
  block[4] = a4;
  block[5] = a1;
  dispatch_async(v7, block);
}

uint64_t APAdvertiserStart(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APAdvertiserStart_block_invoke;
  v4[3] = &unk_278C60738;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __APAdvertiserStart_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 32))
  {
    v3 = 0;
    goto LABEL_7;
  }

  if (*(v2 + 24) <= 0 || !*(v2 + 80))
  {
    APSLogErrorAt();
    v3 = -6745;
LABEL_11:
    result = _APAdvertiserStop(v2);
    goto LABEL_7;
  }

  *(v2 + 32) = 1;
  if (*(v2 + 40))
  {
    _APAdvertiserStartListeningForNetwork(v2, 1, *(v2 + 48));
    _APAdvertiserStartListeningForNetwork(v2, 7, *(v2 + 49));
  }

  result = _APAdvertiserUpdate(v2);
  v3 = result;
  if (result)
  {
    APSLogErrorAt();
    goto LABEL_11;
  }

LABEL_7:
  *(*(*(v1 + 32) + 8) + 24) = v3;
  return result;
}

uint64_t _APAdvertiserStartListeningForNetwork(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    result = APConnectivityHelperRegisterForEvent();
    if (result)
    {
      if (gLogCategory_APAdvertiser <= 90)
      {
        if (gLogCategory_APAdvertiser != -1)
        {
          return LogPrintF();
        }

        v4 = result;
        v3 = _LogCategory_Initialize();
        result = v4;
        if (v3)
        {
          return LogPrintF();
        }
      }
    }
  }

  return result;
}

uint64_t APAdvertiserFlushBonjourRecords(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAdvertiserFlushBonjourRecords_block_invoke;
  block[3] = &unk_278C60820;
  block[5] = v10;
  block[6] = a1;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v3;
}

void sub_23E9D080C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void __APAdvertiserFlushBonjourRecords_block_invoke(void *a1)
{
  v2 = a1[6];
  if (!*(v2 + 64))
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 16));
    v4 = a1[6];
    v4[8] = v3;
    if (!v3)
    {
      APSLogErrorAt();
      *(*(a1[4] + 8) + 24) = -6728;
      return;
    }

    *(*(a1[5] + 8) + 24) = CFRetain(v4);
    v5 = *(a1[6] + 64);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __APAdvertiserFlushBonjourRecords_block_invoke_2;
    handler[3] = &unk_278C5FC48;
    handler[4] = a1[5];
    dispatch_source_set_event_handler(v5, handler);
    v6 = *(a1[6] + 64);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __APAdvertiserFlushBonjourRecords_block_invoke_3;
    v10[3] = &unk_278C5FC48;
    v10[4] = a1[5];
    dispatch_source_set_cancel_handler(v6, v10);
    dispatch_resume(*(a1[6] + 64));
    v2 = a1[6];
  }

  if (*(v2 + 129))
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  *(v2 + 52) |= 0x109 | v7;
  _APAdvertiserUpdate(v2);
  v8 = *(a1[6] + 64);
  v9 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

uint64_t __APAdvertiserFlushBonjourRecords_block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (*(v1 + 129))
  {
    v2 = -270;
  }

  else
  {
    v2 = -268;
  }

  *(v1 + 52) &= v2;
  return _APAdvertiserUpdate(v1);
}

void __APAdvertiserFlushBonjourRecords_block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t APAdvertiserStop(uint64_t a1)
{
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAdvertiserStop_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t APAdvertiserSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (a2 && a3)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APAdvertiserSetProperty_block_invoke;
    v6[3] = &unk_278C60780;
    v6[4] = &v7;
    v6[5] = a2;
    v6[6] = a1;
    v6[7] = a3;
    dispatch_sync(v3, v6);
    v4 = *(v8 + 6);
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294960591;
    *(v8 + 6) = -6705;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void __APAdvertiserSetProperty_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), @"advertiserInfo"))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
    block[0] = 0;
    v4 = *(v2 + 80);
    if (v4 == v3 || v3 && v4 && CFEqual(v4, v3))
    {
      v5 = 0;
    }

    else
    {
      v9 = APAdvertiserInfoCopy(*MEMORY[0x277CBECE8], v3, block);
      if (v9)
      {
        v5 = v9;
      }

      else
      {
        v12 = *(v2 + 72);
        if (v12)
        {
          if (gLogCategory_APAdvertiser <= 30)
          {
            if (gLogCategory_APAdvertiser != -1 || (v18 = _LogCategory_Initialize(), v12 = *(v2 + 72), v18))
            {
              LogPrintF();
              v12 = *(v2 + 72);
            }
          }

          APAdvertiserInfoSetProperty(block[0], v10, @"correlationID", v11, v12);
        }

        v19 = *(v2 + 80);
        if (v19)
        {
          CFRelease(v19);
        }

        *(v2 + 80) = block[0];
        *(v2 + 88) = 1;
        v5 = _APAdvertiserUpdate(v2);
        if (!v5)
        {
          goto LABEL_32;
        }
      }

      APSLogErrorAt();
    }

LABEL_32:
    *(*(*(a1 + 32) + 8) + 24) = v5;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      APSLogErrorAt();
    }

    return;
  }

  if (CFEqual(*(a1 + 40), @"P2PConfig"))
  {
    *(*(*(a1 + 32) + 8) + 24) = _APAdvertiserProcessP2PConfig(*(a1 + 48));
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v6 = *(*(a1 + 48) + 104);
      if (v6)
      {
        v22[0] = 0;
        v22[1] = v22;
        v22[2] = 0x2020000000;
        v23 = 0;
        v7 = *(v6 + 16);
        v8 = [v7 internalQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __APAdvertiserBTLEManagerUpdatePreferences_block_invoke;
        block[3] = &unk_278C60990;
        block[4] = v7;
        block[5] = v22;
        dispatch_sync(v8, block);
        _Block_object_dispose(v22, 8);
      }

      return;
    }

    goto LABEL_45;
  }

  if (CFEqual(*(a1 + 40), @"enforceSolo"))
  {
    v13 = CFGetInt64();
    v14 = v13 != 0;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      goto LABEL_45;
    }

    v15 = *(a1 + 48);
    if (*(v15 + 197) || *(v15 + 195) == v14)
    {
      v20 = 0;
    }

    else
    {
      if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v15 + 195) = v14;
      v20 = _APAdvertiserUpdate(v15);
      if (v20)
      {
        APSLogErrorAt();
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = v20;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
LABEL_45:

      APSLogErrorAt();
    }
  }

  else
  {
    if (!CFEqual(*(a1 + 40), @"allowAssistedModeAdvertisingOverAWDL"))
    {
      *(*(*(a1 + 32) + 8) + 24) = -6727;
      return;
    }

    v16 = CFGetInt64();
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      goto LABEL_45;
    }

    v17 = *(a1 + 48);
    *(v17 + 56) = *(v17 + 56) & 0xFFFFFEFF | ((v16 != 0) << 8);
    *(*(*(a1 + 32) + 8) + 24) = _APAdvertiserUpdate(v17);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      goto LABEL_45;
    }
  }
}

void sub_23E9D1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAdvertiserCopyProperty(uint64_t a1, CFTypeRef cf1, CFTypeRef *a3)
{
  if (!CFEqual(cf1, @"assistedModeInfo"))
  {
    return 4294960569;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = *(a1 + 16);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___APAdvertiserCopyAssistedModeInfo_block_invoke;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = a1;
    v10[5] = v6;
    dispatch_sync(v7, v10);
    *a3 = CFRetain(v6);
    CFRelease(v6);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    v8 = 4294960568;
    APSLogErrorAt();
  }

  return v8;
}

uint64_t APAdvertiserDebugShow(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), v4, _APAdvertiserDebugShow);
  return v5;
}

void _APAdvertiserDebugShow(uint64_t *a1)
{
  v19 = 0;
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = a1[2];
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  v7 = *(v2 + 80);
  if (v7)
  {
    v8 = APAdvertiserInfoCopyProperty(v7, v5, @"deviceID", v6, &v19);
    FigCFStringGetCStringPtrAndBufferToFree();
    CFStringGetLength(v8);
    TextToHardwareAddressScalar();
  }

  else
  {
    v8 = 0;
  }

  DataBuffer_AppendF();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  _APAdvertiserAddSubAdvertiserInfo();
  _APAdvertiserAddSubAdvertiserInfo();
  DataBuffer_AppendF();
  _APAdvertiserAddSubAdvertiserInfo();
  _APAdvertiserAddSubAdvertiserInfo();
  _APAdvertiserAddSubAdvertiserInfo();
  _APAdvertiserAddSubAdvertiserInfo();
  if (*(v2 + 197))
  {
    _APAdvertiserAddSubAdvertiserInfo();
    DataBuffer_AppendF();
  }

  if (*(v2 + 194))
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  if (*(v2 + 195))
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  v17 = v9;
  v18 = v10;
  DataBuffer_AppendF();
  if (*(v2 + 80))
  {
    DataBuffer_AppendF();
    v19 = APAdvertiserInfoDebugShow(*(v2 + 80), v3, v4);
  }

  if (*(v2 + 104))
  {
    DataBuffer_AppendF();
    v11 = *(v2 + 104);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v12 = *(v11 + 16);
    v13 = [v12 internalQueue];
    block = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __APAdvertiserBTLEManagerDebugShow_block_invoke;
    v23 = &unk_278C60968;
    v24 = v12;
    v25 = &v28;
    v26 = v4;
    v27 = v3;
    dispatch_sync(v13, &block);
    LODWORD(v12) = *(v29 + 6);
    _Block_object_dispose(&v28, 8);
    v19 = v12;
  }

  if (*(v2 + 112))
  {
    DataBuffer_AppendF();
    v14 = *(v2 + 112);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v15 = *(v14 + 40);
    block = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __APAdvertiserRapportManagerDebugShow_block_invoke;
    v23 = &unk_278C607F8;
    v24 = &v28;
    v25 = v14;
    v27 = v3;
    v26 = v4;
    dispatch_sync(v15, &block);
    v16 = *(v29 + 6);
    _Block_object_dispose(&v28, 8);
    v19 = v16;
  }

  DataBuffer_AppendF();
  *(a1 + 6) = v19;
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t APAdvertiserReportNANIssue(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __APAdvertiserReportNANIssue_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_sync(v2, v4);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }
}

uint64_t __APAdvertiserReportNANIssue_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2[20])
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = BonjourAdvertiserReportNANIssue();
    v2 = *(v1 + 32);
  }

  if (v2[21])
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = BonjourAdvertiserReportNANIssue();
    v2 = *(v1 + 32);
  }

  if (v2[22])
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return BonjourAdvertiserReportNANIssue();
  }

  return result;
}

uint64_t APAdvertiserUpdateNANLinkStatus(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __APAdvertiserUpdateNANLinkStatus_block_invoke;
    v4[3] = &__block_descriptor_44_e5_v8__0l;
    v4[4] = a1;
    v5 = a2 != 0;
    dispatch_sync(v2, v4);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }
}

uint64_t __APAdvertiserUpdateNANLinkStatus_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2[20])
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = BonjourAdvertiserUpdateLinkStatusNAN();
    v2 = *(v1 + 32);
  }

  if (v2[21])
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = BonjourAdvertiserUpdateLinkStatusNAN();
    v2 = *(v1 + 32);
  }

  if (v2[22])
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return BonjourAdvertiserUpdateLinkStatusNAN();
  }

  return result;
}

uint64_t APAdvertiserCopyNANWifiStats(uint64_t a1, void *a2)
{
  v21 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v13 = 4294960591;
    goto LABEL_15;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v13 = 4294960568;
    goto LABEL_15;
  }

  v5 = dispatch_semaphore_create(0);
  if (!v5)
  {
    APSLogErrorAt();
    v13 = 4294960568;
    goto LABEL_14;
  }

  v6 = v5;
  v7 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAdvertiserCopyNANWifiStats_block_invoke;
  block[3] = &unk_278C608F0;
  block[6] = a1;
  block[7] = Mutable;
  block[4] = v6;
  block[5] = &v17;
  dispatch_sync(v7, block);
  if (!*(v18 + 24))
  {
    v13 = 4294960561;
    goto LABEL_13;
  }

  v8 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    APSLogErrorAt();
    v13 = 4294960574;
    goto LABEL_13;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
  v10 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_12;
  }

  v11 = CFGetTypeID(ValueAtIndex);
  if (v11 != CFDictionaryGetTypeID())
  {
    v14 = CFGetTypeID(v10);
    if (v14 == CFNumberGetTypeID() && FigCFArrayGetInt64AtIndex())
    {
      v13 = v21;
      goto LABEL_13;
    }

LABEL_12:
    v13 = 4294960587;
    goto LABEL_13;
  }

  v12 = CFRetain(v10);
  v13 = 0;
  *a2 = v12;
LABEL_13:
  dispatch_release(v6);
LABEL_14:
  CFRelease(Mutable);
LABEL_15:
  _Block_object_dispose(&v17, 8);
  return v13;
}

void sub_23E9D1F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APAdvertiserCopyNANWifiStats_block_invoke(uint64_t result)
{
  if (*(*(result + 48) + 176))
  {
    v1 = result;
    *(*(*(result + 40) + 8) + 24) = 1;
    CFRetain(*(result + 56));
    dispatch_retain(*(v1 + 32));
    return BonjourAdvertiserGenerateStatisticsNAN();
  }

  return result;
}

void __APAdvertiserCopyNANWifiStats_block_invoke_2(uint64_t a1)
{
  if (NSErrorToOSStatus())
  {
    CFArrayAppendInt64();
  }

  else if (APTNANDataSessionStatisticsReportCopyDictionary())
  {
    APSLogErrorAt();
  }

  else
  {
    CFArrayAppendValue(*(a1 + 40), 0);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t APReceiverRemoteControlSessionGetClassID()
{
  if (APReceiverRemoteControlSessionGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APReceiverRemoteControlSessionGetClassID_sRegisterOnce, &APReceiverRemoteControlSessionGetClassID_sClassID, rcs_getClassID);
  }

  return APReceiverRemoteControlSessionGetClassID_sClassID;
}

uint64_t rcs_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&rcs_getClassID_sClassDesc, ClassID, 1, a1);
}

uint64_t APReceiverRemoteControlSessionGetTypeID()
{
  if (APReceiverRemoteControlSessionGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APReceiverRemoteControlSessionGetClassID_sRegisterOnce, &APReceiverRemoteControlSessionGetClassID_sClassID, rcs_getClassID);
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t __APReceiverRequestProcessorGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APReceiverRequestProcessorGetClassID_classDesc, ClassID, 1, &APReceiverRequestProcessorGetClassID_classID);
}

uint64_t APReceiverAudioSessionRealTimeCreate(uint64_t a1, const void *a2, uint64_t a3, _OWORD *a4, const __CFDictionary *a5, uint64_t *a6)
{
  v150 = *MEMORY[0x277D85DE8];
  v137 = 0;
  memset(v136, 0, 28);
  *&v133.sa_len = 0;
  *&v133.sa_data[6] = 0;
  v135 = 0;
  v134 = 0;
  v132 = 0;
  AudioFormatIndex = 0;
  if (gLogCategory_APReceiverAudioSessionRealTime <= 30 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = malloc_type_calloc(1uLL, 0x24D0uLL, 0x10F0040BEA07A60uLL);
  if (!v11)
  {
    APSLogErrorAt();
    return -72150;
  }

  v12 = v11;
  *v11 = a1;
  v11[4] = CFRetain(a2);
  *(v12 + 24) = 96;
  v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v12 + 8) = v13;
  if (!v13)
  {
    goto LABEL_283;
  }

  v138 = APSRTCReportingAgentCreate();
  if (v138)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v138 = 0;
  }

  else if (gLogCategory_APReceiverAudioSessionRealTime <= 40 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14 = FigSimpleMutexCreate();
  *(v12 + 2360) = v14;
  if (!v14)
  {
LABEL_283:
    APSLogErrorAt();
    v20 = 0;
    v21 = -72150;
    goto LABEL_37;
  }

  v15 = dispatch_queue_create("APReceiverAudioSessionPeriodicTaskQueue", 0);
  *(v12 + 9032) = v15;
  if (!v15 || (v16 = dispatch_queue_create("APReceiverAudioSessionLogQueue", 0), (*(v12 + 9152) = v16) == 0))
  {
    APSLogErrorAt();
    v20 = 0;
    v138 = APSSignalErrorAt();
    goto LABEL_447;
  }

  if (CFDictionaryGetInt64())
  {
    v17 = 0;
  }

  else
  {
    v17 = APSSettingsGetIntWithDefault() != 0;
  }

  *(v12 + 9304) = v17;
  Int64 = CFDictionaryGetInt64();
  if (v138)
  {
    APSLogErrorAt();
    v20 = 0;
    goto LABEL_447;
  }

  if (CFDictionaryGetInt64Ranged() != 1381257248)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v20 = 0;
    goto LABEL_36;
  }

  v126 = a6;
  if (CFDictionaryContainsKey(a5, @"MediaDataControl"))
  {
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    Count = CFArrayGetCount(TypedValue);
    if (Count)
    {
      if (Count != 1)
      {
        if (Count != 2)
        {
          v20 = 0;
          v21 = -6705;
          goto LABEL_37;
        }

        CFDataGetTypeID();
        CFArrayGetTypedValueAtIndex();
      }

      CFDataGetTypeID();
      CFArrayGetTypedValueAtIndex();
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v20 = Mutable;
    if (!Mutable)
    {
LABEL_332:
      APSLogErrorAt();
      v21 = -6728;
      goto LABEL_37;
    }

    v23 = MEMORY[0x277CBED28];
    if (!Int64)
    {
      v23 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"MDC::AllowP2P", *v23);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    CFDictionarySetValue(v20, @"MDC::Label", @"RT");
    CFDictionarySetInt64();
    FigCFDictionarySetInt32();
    *&v129 = a1;
    *(&v129 + 1) = audioSession_handleMediaDataControlRequest;
    v130 = 0;
    *&inSourceFormat.mSampleRate = *a4;
    *&inSourceFormat.mFormatFlags = *(a4 + 12);
    v138 = APMediaDataControlServerCreate(&inSourceFormat, v20, &v129, (v12 + 40));
    if (v138)
    {
      goto LABEL_330;
    }

    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v20 = 0;
  }

  *(v12 + 72) = CFDictionaryGetInt64();
  if (v138)
  {
    goto LABEL_330;
  }

  Value = CFDictionaryGetValue(a5, @"AudioFormat");
  if (Value)
  {
    v25 = CFRetain(Value);
    *(v12 + 2368) = v25;
    if (v25)
    {
      AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
      goto LABEL_56;
    }
  }

  else
  {
    *(v12 + 2368) = 0;
  }

  v138 = APCompressionTypeToAPAudioFormatIndex();
  if (v138)
  {
    goto LABEL_330;
  }

  v138 = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
  if (v138)
  {
    goto LABEL_330;
  }

LABEL_56:
  ASBD = APSAudioFormatDescriptionGetASBD();
  *(v12 + 92) = APAudioFormatIndexGetBitsPerChannel();
  if (!*(v12 + 72))
  {
    *(v12 + 72) = APAudioFormatIDToAPCompressionType();
  }

  *(v12 + 76) = *ASBD;
  v27 = *(ASBD + 28);
  *(v12 + 80) = v27;
  v28 = *(ASBD + 24);
  *(v12 + 84) = v28;
  if (!v28)
  {
    *(v12 + 84) = (((*(v12 + 92) + 7) & 0xFFFFFFF8) * v27) >> 3;
  }

  v29 = CFDictionaryGetValue(a5, @"NetworkClock");
  *(v12 + 2376) = v29;
  if (!v29)
  {
    goto LABEL_64;
  }

  v30 = CFGetTypeID(v29);
  if (v30 == APSNetworkClockGetTypeID())
  {
    v31 = *(v12 + 2376);
    if (v31)
    {
      CFRetain(v31);
    }

LABEL_64:
    *(v12 + 572) = 0;
    *(v12 + 568) = CFDictionaryGetInt64();
    if (!v138)
    {
      *(v12 + 2384) = CFDictionaryGetInt64() != 0;
      if (!v138)
      {
        v32 = CFDictionaryGetInt64();
        if (!v138)
        {
          if (v32)
          {
            audioSession_updateCallDurationMetric(v12, 1);
          }

          v33 = CFDictionaryGetValue(a5, @"StatsCollector");
          *(v12 + 2416) = v33;
          if (v33)
          {
            CFRetain(v33);
          }

          *(v12 + 9160) = FigGetCFPreferenceNumberWithDefault();
          v34 = CFDictionaryGetInt64();
          if (v34 >= 1)
          {
            v35 = v34;
          }

          else
          {
            v35 = 6001;
          }

          *(v12 + 1608) = v35;
          v36 = CFDictionaryGetInt64();
          if (v36)
          {
            v37 = *(v12 + 76) * v36 / 0x3E8u;
            *(v12 + 1652) = v37;
          }

          else
          {
            *(v12 + 1652) = CFDictionaryGetInt64();
            v37 = CFDictionaryGetInt64();
          }

          *(v12 + 1656) = v37;
          if (*(v12 + 2384))
          {
            v38 = 11;
          }

          else
          {
            v38 = 10;
          }

          *(v12 + 1664) = v38;
          if (CFDictionaryContainsKey(a5, @"ClientDeviceModel"))
          {
            v39 = CFDictionaryGetValue(a5, @"ClientDeviceModel");
            *(v12 + 136) = v39;
            if (v39)
            {
              CFRetain(v39);
            }
          }

          if (CFDictionaryContainsKey(a5, @"ClientOSBuildVersion"))
          {
            v40 = CFDictionaryGetValue(a5, @"ClientOSBuildVersion");
            *(v12 + 144) = v40;
            if (v40)
            {
              CFRetain(v40);
            }
          }

          *(v12 + 156) = CFDictionaryGetInt64();
          *(v12 + 152) = CFDictionaryGetInt64();
          v41 = CFDictionaryGetInt64();
          *(v12 + 88) = v41;
          v42 = *(v12 + 76);
          v43 = *(v12 + 84);
          CFDictionaryGetData();
          if (v138 == -6727)
          {
            cf = 0;
            v138 = 0;
            goto LABEL_94;
          }

          if (!v138)
          {
            if (v137 == 32)
            {
              for (i = 160; i != 464; ++i)
              {
                *(v12 + i) = 0;
              }

              __memcpy_chk();
              *(v12 + 160) = 1;
              v45 = CFDataCreate(*MEMORY[0x277CBECE8], (v12 + 424), 32);
              if (v45)
              {
                cf = v45;
                v138 = APSCryptorChaCha20Poly1305Create();
                if (v138)
                {
                  APSLogErrorAt();
                  v121 = cf;
LABEL_445:
                  CFRelease(v121);
LABEL_446:
                  if (!v12)
                  {
                    goto LABEL_448;
                  }

                  goto LABEL_447;
                }

LABEL_94:
                LODWORD(v46) = (v41 + v41 / (v42 / 0x3E8) + 16) * v43;
                *(v12 + 1668) = 512;
                if (v46 <= 0x5C0)
                {
                  v46 = 1472;
                }

                else
                {
                  v46 = v46;
                }

                *(v12 + 1672) = v46 + 12;
                v47 = UpTicksPerSecond();
                v48 = mach_absolute_time();
                *(v12 + 1784) = SecondsToUpTicks();
                *(v12 + 1792) = v48;
                *(v12 + 1904) = 60 * v47;
                *(v12 + 1896) = v48 + 60 * v47;
                *(v12 + 2016) = v47;
                *(v12 + 2008) = v48 + v47;
                *(v12 + 1976) = 10 * v47;
                *(v12 + 1968) = v48 + 10 * v47;
                *(v12 + 1984) = v48;
                *(v12 + 2040) = 0x7FFFFFFFFFFFFFFFLL;
                *(v12 + 2048) = 0x7FFFFFFFFFFFFFFFLL;
                *(v12 + 2064) = 0;
                *(v12 + 2056) = v48 + 8 * v47;
                v49 = (v47 * FigGetCFPreferenceNumberWithDefault()) / 1000.0;
                *(v12 + 9176) = v49;
                v50 = v48 + v49;
                *(v12 + 9168) = v50;
                *(v12 + 9184) = v49;
                *(v12 + 9192) = v50;
                *(v12 + 9201) = FigGetCFPreferenceNumberWithDefault();
                *(v12 + 9240) = 0;
                *(v12 + 9253) = 0;
                APSSettingsGetIntWithDefault();
                *(v12 + 9312) = MillisecondsToUpTicks() + v48;
                *(v12 + 9336) = 0;
                atomic_store(0, (v12 + 9352));
                *(v12 + 9340) = APSSettingsGetIntWithDefault();
                v51 = v47 * FigGetCFPreferenceNumberWithDefault();
                *(v12 + 9384) = v51;
                *(v12 + 9376) = v51 + v48;
                *(v12 + 8892) = 0;
                *(v12 + 8912) = 0;
                *(v12 + 8936) = 0;
                APSIOReporterCreate();
                v138 = 0;
                APSSettingsGetIntWithDefault();
                *(v12 + 9008) = SecondsToUpTicks();
                *(v12 + 9016) = mach_absolute_time();
                *(v12 + 9024) = 0;
                *(v12 + 1660) = (*(v12 + 1656) * 1000.0) / *(v12 + 76);
                *(v12 + 9232) = FigGetCFPreferenceNumberWithDefault();
                *(v12 + 9224) = FigGetCFPreferenceNumberWithDefault();
                v52 = CFDictionaryGetInt64();
                *(v12 + 1920) = v48;
                *(v12 + 1928) = v52 * v47;
                *(v12 + 1936) = v47;
                *(v12 + 1944) = 0;
                *(v12 + 1952) = v48;
                *(v12 + 1960) = 10 * v47;
                *(v12 + 9200) = 0;
                v53 = *MEMORY[0x277CBECE8];
                v138 = APSAtomicMessageQueueCreate();
                if (v138)
                {
                  goto LABEL_349;
                }

                v138 = APSAtomicMessageQueueCreate();
                if (v138)
                {
                  goto LABEL_349;
                }

                v138 = ServerSocketOpenEx2();
                if (v138)
                {
                  if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
                  {
                    goto LABEL_444;
                  }

                  goto LABEL_315;
                }

                if (Int64)
                {
                  SocketSetP2P();
                }

                SocketSetPacketTimestamps();
                SocketSetQoS();
                SockAddrCopy();
                SockAddrSetPort();
                *(v12 + 1612) = v136[0];
                *(v12 + 1624) = *(v136 + 12);
                Size = SockAddrGetSize();
                *(v12 + 1640) = Size;
                v138 = connect(*(v12 + 1600), (v12 + 1612), Size);
                if (v138)
                {
                  if (*__error())
                  {
                    v138 = *__error();
                    if (!v138)
                    {
LABEL_107:
                      *(v12 + 1644) = 1;
                      v132 = 28;
                      getsockname(*(v12 + 1600), &v133, &v132);
                      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF();
                      }

                      APTTrafficMetricsCreate();
                      APTTrafficMetricsConnectionFormed();
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    v138 = -6700;
                  }

                  *(v12 + 1644) = 0;
                  if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

LABEL_116:
                  if (CFDictionaryGetInt64() || *(v12 + 568))
                  {
                    *(v12 + 2240) = 1;
                  }

                  else
                  {
                    v65 = malloc_type_malloc(0x5000uLL, 0x102004012755DA7uLL);
                    *(v12 + 2216) = v65;
                    if (!v65)
                    {
                      goto LABEL_451;
                    }

                    v66 = 0;
                    v67 = xmmword_23EAA1810;
                    v68 = vdupq_n_s64(0x1FFuLL);
                    v69 = vdupq_n_s64(1uLL);
                    v70 = vdupq_n_s64(2uLL);
                    do
                    {
                      v71 = vaddq_s64(v67, v69);
                      if (vmovn_s64(vcgtq_u64(v68, v67)).u8[0])
                      {
                        v65[v66] = &v65[5 * v71.i64[0]];
                      }

                      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFuLL), *&v67)).i32[1])
                      {
                        v65[v66 + 5] = &v65[5 * v71.i64[1]];
                      }

                      v67 = vaddq_s64(v67, v70);
                      v66 += 10;
                    }

                    while (v66 != 2560);
                    v65[2555] = 0;
                    *(v12 + 2224) = v65;
                    *(v12 + 2248) = 0x7FFFFFFFFFFFFFFFLL;
                    *(v12 + 2256) = xmmword_23EAA1820;
                    *(v12 + 2280) = 100000000;
                    if (*(v12 + 568))
                    {
                      v72 = 1;
                    }

                    else
                    {
                      v72 = FigGetCFPreferenceNumberWithDefault() != 0;
                    }

                    *(v12 + 2240) = v72;
                    *(v12 + 2304) = -1;
                    *(v12 + 2328) = -1;
                    *(v12 + 2344) = 128;
                    v138 = APSAtomicMessageQueueCreate();
                    if (v138)
                    {
                      goto LABEL_349;
                    }
                  }

                  v138 = APSRTPPassThroughJitterBufferCreate();
                  if (v138)
                  {
                    goto LABEL_349;
                  }

                  BufferSize = APCompressionTypeGetBufferSize();
                  if (!BufferSize)
                  {
                    APSLogErrorAt();
                    v119 = -6735;
                    goto LABEL_452;
                  }

                  v56 = BufferSize;
                  *(v12 + 9096) = 0;
                  *(v12 + 9128) = 0;
                  *(v12 + 9080) = 0;
                  *(v12 + 9086) = 0;
                  v57 = (*(v12 + 84) * *(v12 + 88));
                  *(v12 + 9112) = v57;
                  *(v12 + 9120) = v57;
                  v58 = malloc_type_malloc(v57, 0x77F455ACuLL);
                  *(v12 + 9104) = v58;
                  if (v58)
                  {
                    if (*(v12 + 72) == 1)
                    {
                      goto LABEL_171;
                    }

                    memset(&inSourceFormat, 0, sizeof(inSourceFormat));
                    memset(&inDestinationFormat, 0, sizeof(inDestinationFormat));
                    inPropertyData = 3;
                    v59 = APCompressionTypeFillStreamDescription();
                    if (v59)
                    {
                      v122 = v59;
                    }

                    else
                    {
                      if (*(v12 + 88))
                      {
                        inSourceFormat.mFramesPerPacket = *(v12 + 88);
                      }

                      LODWORD(v60) = *(v12 + 76);
                      inDestinationFormat.mSampleRate = v60;
                      *&inDestinationFormat.mFormatID = 0xC6C70636DLL;
                      v61 = *(v12 + 80);
                      v62 = *(v12 + 92);
                      inDestinationFormat.mBytesPerPacket = (v62 >> 3) * v61;
                      inDestinationFormat.mFramesPerPacket = 1;
                      inDestinationFormat.mBytesPerFrame = inDestinationFormat.mBytesPerPacket;
                      inDestinationFormat.mChannelsPerFrame = v61;
                      inDestinationFormat.mBitsPerChannel = v62;
                      inDestinationFormat.mReserved = 0;
                      v63 = (v12 + 1840);
                      v64 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, (v12 + 1840));
                      if (v64)
                      {
                        v122 = v64;
                      }

                      else
                      {
                        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF();
                        }

                        if (((*(v12 + 72) - 4) & 0xFFFFFFFB) != 0)
                        {
                          if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                          {
                            LogPrintF();
                          }

                          v76 = malloc_type_calloc(1uLL, 0x4020uLL, 0x1010040784321C2uLL);
                          *(v12 + 9080) = v76;
                          if (!v76)
                          {
                            v122 = -72150;
                            goto LABEL_348;
                          }

                          APSPacketLossConcealerReset();
                          *(v12 + 9093) = 0;
                          *(v12 + 9096) = 0;
                          v75 = &unk_27E37D000;
                        }

                        else
                        {
                          outPropertyData = 0;
                          ioPropertyDataSize = 8;
                          v73 = AudioConverterSetProperty(*v63, 0x636F6E6Du, 4u, &inPropertyData);
                          if (v73)
                          {
                            v122 = v73;
                            goto LABEL_348;
                          }

                          Property = AudioConverterGetProperty(*v63, 0x7072696Du, &ioPropertyDataSize, &outPropertyData);
                          v75 = &unk_27E37D000;
                          if (Property)
                          {
                            v122 = Property;
                            goto LABEL_348;
                          }

                          if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                          {
                            LogPrintF();
                          }

                          v77 = outPropertyData;
                          if (inPropertyData == 5)
                          {
                            v77 = 1;
                          }

                          *(v12 + 9088) = v77;
                          *(v12 + 9093) = 1;
                          *(v12 + 9096) = 0;
                        }

                        if (*(v12 + 80) < 3u)
                        {
                          goto LABEL_455;
                        }

                        ioPropertyDataSize = 0;
                        outPropertyData = 0;
                        v78 = v75[662];
                        if (v78 <= 50 && (v78 != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF();
                        }

                        APAudioFormatGetMagicCookieForAACELD();
                        v79 = AudioConverterSetProperty(*(v12 + 1840), 0x646D6763u, ioPropertyDataSize, outPropertyData);
                        if (v79)
                        {
                          v122 = v79;
                        }

                        else
                        {
LABEL_455:
                          if (inSourceFormat.mFormatID != 1634492771 || (LODWORD(outPropertyData) = bswap32(inSourceFormat.mFramesPerPacket), BYTE5(outPropertyData) = *(v12 + 92), HIWORD(outPropertyData) = 2600, v140 = 14, v80 = *(v12 + 76), v141 = *(v12 + 80), v142 = -256, BYTE4(outPropertyData) = 0, v143 = 0, v144 = 0, v145 = bswap32(v80), (v81 = AudioConverterSetProperty(*(v12 + 1840), 0x646D6763u, 0x18u, &outPropertyData)) == 0))
                          {
                            v138 = 0;
LABEL_171:
                            *(v12 + 1704) = v56;
                            v82 = malloc_type_malloc(v56, 0x100004077774924uLL);
                            *(v12 + 1696) = v82;
                            if (v82)
                            {
                              *(v12 + 1720) = v56;
                              v83 = malloc_type_malloc(v56, 0x100004077774924uLL);
                              *(v12 + 1712) = v83;
                              if (v83)
                              {
                                *(v12 + 1736) = v56;
                                v84 = malloc_type_malloc(v56, 0x100004077774924uLL);
                                *(v12 + 1728) = v84;
                                if (v84)
                                {
                                  *(v12 + 1752) = v56;
                                  v85 = malloc_type_malloc(v56, 0x100004077774924uLL);
                                  *(v12 + 1744) = v85;
                                  if (v85)
                                  {
                                    gAirPlayAudioStats = xmmword_23EAA1830;
                                    byte_27E37EED0 = 0;
                                    qword_27E37EED8 = 0;
                                    dword_27E37EEE0 = 0;
                                    *(v12 + 9408) = 16842752;
                                    *(v12 + 9412) = 0;
                                    v86 = CFDictionaryGetValue(a5, @"ReceiverSession");
                                    if (!v86)
                                    {
                                      goto LABEL_303;
                                    }

                                    *(v12 + 9420) = v86[124];
                                    v87 = &unk_27E37D000;
                                    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                    {
                                      LogPrintF();
                                    }

                                    v88 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                                    *(v12 + 16) = v88;
                                    if (!v88)
                                    {
LABEL_303:
                                      APSLogErrorAt();
                                      v138 = APSSignalErrorAt();
                                      goto LABEL_444;
                                    }

                                    v89 = nw_activity_create();
                                    *(v12 + 104) = v89;
                                    if (!v89)
                                    {
                                      APSLogErrorAt();
                                      v138 = -6728;
                                      if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
                                      {
                                        goto LABEL_444;
                                      }

                                      goto LABEL_315;
                                    }

                                    nw_activity_activate();
                                    v90 = CFDictionaryContainsKey(a5, @"NetworkInfoRemoteRTP");
                                    *(v12 + 96) = v90;
                                    if (!v90)
                                    {
                                      v138 = ServerSocketOpen();
                                      if (v138)
                                      {
                                        goto LABEL_349;
                                      }

                                      v99 = v126;
                                      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                      {
                                        LogPrintF();
                                      }

                                      APTTrafficMetricsCreate();
                                      APTTrafficMetricsConnectionFormed();
                                      if (Int64)
                                      {
                                        SocketSetP2P();
                                      }

                                      v117 = CFDictionaryGetInt64();
                                      if (v138)
                                      {
                                        goto LABEL_349;
                                      }

                                      if (!v117)
                                      {
                                        SocketSetQoS();
                                      }

                                      goto LABEL_256;
                                    }

                                    CFDictionaryGetTypeID();
                                    v91 = CFDictionaryGetTypedValue();
                                    if (v138)
                                    {
                                      goto LABEL_349;
                                    }

                                    LODWORD(outPropertyData) = 0;
                                    inSourceFormat.mSampleRate = 0.0;
                                    inDestinationFormat.mSampleRate = 0.0;
                                    IntWithDefault = APSSettingsGetIntWithDefault();
                                    v93 = APSSettingsGetIntWithDefault();
                                    CFStringGetTypeID();
                                    CFDictionaryGetTypedValue();
                                    if (outPropertyData)
                                    {
                                      APSLogErrorAt();
                                    }

                                    else
                                    {
                                      v128 = v91;
                                      v94 = CFDictionaryCreateMutable(v53, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                      if (v94)
                                      {
                                        v95 = v94;
                                        v96 = v20;
                                        v97 = IntWithDefault | v93;
                                        *(v12 + 112) = dispatch_queue_create("APReceiverAudioSessionRealTime.callbackQueue", 0);
                                        v98 = *MEMORY[0x277CBED28];
                                        CFDictionarySetValue(v95, *MEMORY[0x277CE4E88], *MEMORY[0x277CBED28]);
                                        CFDictionarySetInt64();
                                        if (v97)
                                        {
                                          LODWORD(outPropertyData) = APSRealTimeReadableRingBufferCreate();
                                          if (outPropertyData)
                                          {
                                            APSLogErrorAt();
                                            v20 = v96;
                                            v99 = v126;
                                            v87 = &unk_27E37D000;
                                            goto LABEL_250;
                                          }

                                          CFDictionarySetValue(v95, *MEMORY[0x277CE4F20], *(v12 + 128));
                                          if (IntWithDefault)
                                          {
                                            CFDictionarySetValue(v95, *MEMORY[0x277CE4F18], v98);
                                          }
                                        }

                                        if (APSGetAllowPersistentGroupsOnInfra())
                                        {
                                          CFDictionarySetValue(v95, *MEMORY[0x277CE4F10], v98);
                                        }

                                        LODWORD(outPropertyData) = APTransportConnectionUDPNWCreate();
                                        v20 = v96;
                                        if (outPropertyData)
                                        {
                                          APSLogErrorAt();
                                          v87 = &unk_27E37D000;
                                          v99 = v126;
                                          if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
                                          {
                                            goto LABEL_250;
                                          }

                                          goto LABEL_225;
                                        }

                                        v87 = &unk_27E37D000;
                                        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                        {
                                          LogPrintF();
                                        }

                                        LODWORD(outPropertyData) = APSNetworkAddressCreateWithString();
                                        if (outPropertyData)
                                        {
                                          APSLogErrorAt();
                                          v99 = v126;
                                          if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
                                          {
                                            goto LABEL_250;
                                          }

                                          goto LABEL_225;
                                        }

                                        LODWORD(outPropertyData) = APSNetworkAddressCopyInterfaceName();
                                        if (outPropertyData)
                                        {
LABEL_249:
                                          APSLogErrorAt();
                                          v99 = v126;
                                          goto LABEL_250;
                                        }

                                        mSampleRate = inSourceFormat.mSampleRate;
                                        CMBaseObject = APTransportConnectionGetCMBaseObject();
                                        v102 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                        if (v102)
                                        {
                                          LODWORD(outPropertyData) = v102(CMBaseObject, *MEMORY[0x277CE4EF8], *&mSampleRate);
                                          if (!outPropertyData)
                                          {
                                            v103 = inDestinationFormat.mSampleRate;
                                            if (!*&inDestinationFormat.mSampleRate)
                                            {
                                              goto LABEL_211;
                                            }

                                            v104 = APTransportConnectionGetCMBaseObject();
                                            v105 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                            if (v105)
                                            {
                                              LODWORD(outPropertyData) = v105(v104, *MEMORY[0x277CE4ED8], *&v103);
                                              if (!outPropertyData)
                                              {
                                                if (*&inDestinationFormat.mSampleRate && CFStringHasPrefix(*&inDestinationFormat.mSampleRate, @"llw"))
                                                {
                                                  *(v12 + 9252) = APSSettingsGetIntWithDefault() != 0;
                                                  *(v12 + 9254) = APSSettingsGetIntWithDefault() != 0;
                                                  APSSettingsGetIntWithDefault();
                                                  *(v12 + 9256) = SecondsToUpTicks();
                                                }

LABEL_211:
                                                v106 = APTransportConnectionGetCMBaseObject();
                                                v107 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                                if (v107)
                                                {
                                                  LODWORD(outPropertyData) = v107(v106, *MEMORY[0x277CE4F00], v128);
                                                  if (!outPropertyData)
                                                  {
                                                    v108 = *(v12 + 112);
                                                    v109 = *(v12 + 120);
                                                    v110 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                                                    if (v110)
                                                    {
                                                      LODWORD(outPropertyData) = v110(v109, v12, audioSession_eventCallback, v108, 0);
                                                      if (!outPropertyData)
                                                      {
                                                        v111 = APTransportConnectionGetCMBaseObject();
                                                        v112 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                                        if (v112)
                                                        {
                                                          LODWORD(outPropertyData) = v112(v111, *MEMORY[0x277CE4EF0], *MEMORY[0x277CE4EC0]);
                                                          if (!outPropertyData)
                                                          {
                                                            v113 = *(v12 + 120);
                                                            v114 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                                            if (v114)
                                                            {
                                                              LODWORD(outPropertyData) = v114(v113);
                                                              if (!outPropertyData)
                                                              {
                                                                v115 = APTransportConnectionGetCMBaseObject();
                                                                v116 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                                                if (v116)
                                                                {
                                                                  LODWORD(outPropertyData) = v116(v115, *MEMORY[0x277CE4EE0], v53, v12 + 520);
                                                                  v99 = v126;
                                                                  if (!outPropertyData)
                                                                  {
LABEL_250:
                                                                    CFRelease(v95);
LABEL_251:
                                                                    if (*&inSourceFormat.mSampleRate)
                                                                    {
                                                                      CFRelease(*&inSourceFormat.mSampleRate);
                                                                    }

                                                                    if (*&inDestinationFormat.mSampleRate)
                                                                    {
                                                                      CFRelease(*&inDestinationFormat.mSampleRate);
                                                                    }

                                                                    v138 = outPropertyData;
                                                                    if (!outPropertyData)
                                                                    {
LABEL_256:
                                                                      v138 = OpenSelfConnectedLoopbackSocket();
                                                                      if (!v138)
                                                                      {
                                                                        PIDInit();
                                                                        *(v12 + 2120) = CFDictionaryGetInt64() != 0;
                                                                        v118 = v87[662];
                                                                        if (v118 <= 30 && (v118 != -1 || _LogCategory_Initialize()))
                                                                        {
                                                                          if (APSAudioFormatDescriptionGetAudioFormatIndex() != 6 && APSAudioFormatDescriptionGetAudioFormatIndex() != 10 && APSAudioFormatDescriptionGetAudioFormatIndex() != 11 && APSAudioFormatDescriptionGetAudioFormatIndex() != 15 && APSAudioFormatDescriptionGetAudioFormatIndex() != 18 && APSAudioFormatDescriptionGetAudioFormatIndex() != 22 && APSAudioFormatDescriptionGetAudioFormatIndex() != 24 && APSAudioFormatDescriptionGetAudioFormatIndex() != 2 && APSAudioFormatDescriptionGetAudioFormatIndex() != 3 && APSAudioFormatDescriptionGetAudioFormatIndex() != 4 && APSAudioFormatDescriptionGetAudioFormatIndex() != 5)
                                                                          {
                                                                            if (APSAudioFormatDescriptionGetAudioFormatIndex() != 7
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 8
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 9
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 12
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 13
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 14
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 16
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 17
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 45
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 46
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 44
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 38
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 78
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 80
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 82
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 84
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 93
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 47
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 48
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 79
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 81
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 83
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 69
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 94
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 85
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 19
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 20
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 86
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 21
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 40
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 39
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 90
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 23
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 42
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 41
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 25
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 26
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 27
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 28
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 29
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 30
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 31
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 32
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 43
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 49
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 50
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 51
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 52
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 53
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 54
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 55
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 56
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 57
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 58
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 60
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 89
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 61
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 62
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 63
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 33
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 34
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 35
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 87
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 88
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 91
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 64
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 65
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 66
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 67
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 76
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 77
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 68
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 92
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 70
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 71
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 72
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 73
                                                                              && APSAudioFormatDescriptionGetAudioFormatIndex() != 74)
                                                                            {
                                                                              APSAudioFormatDescriptionGetAudioFormatIndex();
                                                                            }

                                                                            v99 = v126;
                                                                          }

                                                                          LogPrintF();
                                                                        }

                                                                        *(v12 + 1768) = 8;
                                                                        v123 = malloc_type_calloc(1uLL, 8uLL, 0x457A0FEuLL);
                                                                        *(v12 + 1760) = v123;
                                                                        if (v123)
                                                                        {
                                                                          *(v12 + 2356) = 0;
                                                                          if (v99)
                                                                          {
                                                                            *v99 = v12;
                                                                            v12 = 0;
                                                                          }

LABEL_444:
                                                                          v121 = cf;
                                                                          if (!cf)
                                                                          {
                                                                            goto LABEL_446;
                                                                          }

                                                                          goto LABEL_445;
                                                                        }

                                                                        goto LABEL_451;
                                                                      }

LABEL_349:
                                                                      APSLogErrorAt();
                                                                      goto LABEL_444;
                                                                    }

                                                                    APSLogErrorAt();
                                                                    v120 = v87[662];
                                                                    if (v120 > 90 || v120 == -1 && !_LogCategory_Initialize())
                                                                    {
                                                                      goto LABEL_444;
                                                                    }

LABEL_315:
                                                                    LogPrintF();
                                                                    goto LABEL_444;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  LODWORD(outPropertyData) = -12782;
                                                                }

                                                                APSLogErrorAt();
                                                                v99 = v126;
                                                                if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
                                                                {
                                                                  goto LABEL_250;
                                                                }

LABEL_225:
                                                                LogPrintF();
                                                                goto LABEL_250;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(outPropertyData) = -12782;
                                                            }

                                                            APSLogErrorAt();
                                                            v99 = v126;
                                                            if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
                                                            {
                                                              goto LABEL_250;
                                                            }

                                                            goto LABEL_225;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(outPropertyData) = -12782;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(outPropertyData) = -12782;
                                                    }

                                                    goto LABEL_249;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(outPropertyData) = -12782;
                                                }

                                                APSLogErrorAt();
                                                v99 = v126;
                                                if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
                                                {
                                                  goto LABEL_250;
                                                }

                                                goto LABEL_225;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(outPropertyData) = -12782;
                                            }

                                            APSLogErrorAt();
                                            v99 = v126;
                                            if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
                                            {
                                              goto LABEL_250;
                                            }

                                            goto LABEL_225;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(outPropertyData) = -12782;
                                        }

                                        v99 = v126;
                                        APSLogErrorAt();
                                        if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
                                        {
                                          goto LABEL_250;
                                        }

                                        goto LABEL_225;
                                      }

                                      APSLogErrorAt();
                                      LODWORD(outPropertyData) = -72150;
                                    }

                                    v99 = v126;
                                    goto LABEL_251;
                                  }
                                }
                              }
                            }

                            APSLogErrorAt();
                            v119 = -72150;
LABEL_452:
                            v138 = v119;
                            goto LABEL_444;
                          }

                          v122 = v81;
                        }
                      }
                    }

LABEL_348:
                    APSLogErrorAt();
                    v138 = v122;
                    goto LABEL_349;
                  }

LABEL_451:
                  APSLogErrorAt();
                  v119 = -6728;
                  goto LABEL_452;
                }

                v138 = 0;
                goto LABEL_107;
              }

              goto LABEL_332;
            }

            goto LABEL_331;
          }
        }
      }
    }

LABEL_330:
    APSLogErrorAt();
    goto LABEL_447;
  }

LABEL_331:
  APSLogErrorAt();
LABEL_36:
  v21 = -72151;
LABEL_37:
  v138 = v21;
LABEL_447:
  free(v12);
LABEL_448:
  if (v20)
  {
    CFRelease(v20);
  }

  return v138;
}

uint64_t audioSession_updateCallDurationMetric(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 9368);
  if (a2)
  {
    if (!v3)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      result = mach_absolute_time();
      *(v2 + 9368) = result;
      return result;
    }
  }

  else if (!v3)
  {
    return result;
  }

  mach_absolute_time();
  result = UpTicksToSeconds();
  *(v2 + 9360) += result;
  *(v2 + 9368) = 0;
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime != -1)
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

uint64_t audioSession_eventCallback(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 7)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      if (APSRTPPassThroughJitterBufferAcquireRelinquishedNode())
      {
        APSLogErrorAt();
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_13;
      }

      v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v7)
      {
        v8 = v7(a2);
        if (v8)
        {
          v9 = v8;
          DataLength = CMBlockBufferGetDataLength(v8);
          CMBlockBufferCopyDataBytes(v9, 0, DataLength, MEMORY[0x18]);
          MEMORY[0x30] = mach_absolute_time();
          if (!audioSession_processPacket(a3))
          {
LABEL_18:
            CFRelease(v9);
LABEL_19:
            if (v5)
            {
              goto LABEL_20;
            }

            return 0;
          }

LABEL_17:
          if (!v9)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }
    }

    APSLogErrorAt();
    APSSignalErrorAt();
LABEL_13:
    v9 = 0;
    goto LABEL_17;
  }

  if (a1 == 6)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v5)
    {
      AirPlayReceiverSessionControl(v5, v4, @"sessionDied", 0, 0, 0);
LABEL_20:
      CFRelease(v5);
    }
  }

  return 0;
}

uint64_t audioSession_processPacket(uint64_t a1)
{
  kdebug_trace();
  v2 = APSRTPPacketProcessorProcessPacket();
  v3 = v2;
  if (v2)
  {
    if (v2 != -6757)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    atomic_fetch_add((a1 + 1992), 1u);
    atomic_fetch_add((a1 + 1996), 0);
    if (gLogCategory_APReceiverAudioSessionRealTime <= 10 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    kdebug_trace();
  }

  return v3;
}

uint64_t audioSession_enqueueNodeCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = atomic_load((*a3 + 1808));
  mach_absolute_time();
  _X26 = 0;
  _X27 = 0;
  __asm { CASPAL          X26, X27, X26, X27, [X9] }

  if ((v4 & 0xFF000000000000) != 0 && *(a2 + 32) - v4 < 1)
  {
    return 4294960539;
  }

  else
  {
    return APSRTPPassThroughJitterBufferInsertNode();
  }
}

void audioSession_receiverLogger(const void **a1)
{
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *a1;
  if (*a1)
  {

    CFRelease(v2);
  }
}

void audioSession_endToEndLogger(const void **a1)
{
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *a1;
  if (*a1)
  {

    CFRelease(v2);
  }
}

uint64_t audioSession_shouldProcessPacketCallback(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, _BYTE *a5)
{
  v7 = *a4;
  v8 = *(a1 + 24);
  audioSession_sessionLock(*(*a4 + 2360));
  audioSession_processEnqueuedRetransmitCommands(v7);
  v9 = *(v8 + 2);
  if (*(v7 + 572))
  {
    v10 = *(v7 + 574);
    v11 = (v9 - v10);
    if (v11 <= 0 && (v9 == v10 || v11 < -511) || *(v7 + 576 + 2 * (v9 & 0x1FF)) == v9)
    {
      if (!*(v7 + 568) && gLogCategory_APReceiverAudioSessionRealTimeStats <= 40 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *a5 = 0;
      goto LABEL_59;
    }

    *(v7 + 576 + 2 * (v9 & 0x1FF)) = v9;
  }

  else
  {
    v12 = 0;
    v13 = vdupq_n_s16(v9);
    do
    {
      *(v7 + 576 + v12) = v13;
      v12 += 16;
    }

    while (v12 != 1024);
    *(v7 + 572) = 1;
  }

  *(v7 + 574) = v9;
  if (!a2)
  {
    v14 = *(v8 + 2);
    if (*(v7 + 1912))
    {
      v15 = *(v7 + 1800);
      v16 = v15 + 1;
      if (v14 != (v15 + 1))
      {
        v17 = v15 + 1;
        v18 = v14 - v16;
        if ((v14 - v16) < 1)
        {
          if (v14 != v15 && !*(v7 + 568) && gLogCategory_APReceiverAudioSessionRealTime <= 30 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_53;
        }

        v19 = (v14 - v16);
        LODWORD(qword_27E37EED8) = qword_27E37EED8 + v18;
        v20 = *(v7 + 2416);
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 60), v19, memory_order_relaxed);
        }

        if (*(v7 + 2348) < v19)
        {
          *(v7 + 2348) = v19;
        }

        if (*(v7 + 2344) >= v19)
        {
          if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 30 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (!*(v7 + 2240))
          {
            v21 = (v7 + 2232);
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
            mach_absolute_time();
            v23 = UpTicksToNanoseconds();
            v24 = 0;
            while (1)
            {
              v25 = *(v7 + 2224);
              if (!v25)
              {
                break;
              }

              *(v7 + 2224) = *v25;
              *v25 = 0;
              *(v25 + 8) = v24 + v17;
              *(v25 + 10) = 0;
              *(v25 + 16) = v23;
              *(v25 + 32) = v23;
              *v22 = v25;
              ++v24;
              v22 = v25;
              if (v24 >= v18)
              {
                goto LABEL_52;
              }
            }

            if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 60 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }
          }
        }

        else
        {
          if (gLogCategory_APReceiverAudioSessionRealTime <= 30 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          ++*(v7 + 2352);
          audioSession_retransmitsAbortAll(v7);
        }
      }
    }

LABEL_52:
    *(v7 + 1800) = v14;
    *(v7 + 1804) = *(v8 + 4);
  }

LABEL_53:
  if (!*(v7 + 2240))
  {
    v29 = *(v8 + 2);
    mach_absolute_time();
    v30 = UpTicksToNanoseconds();
    v31 = v30;
    v32 = (v7 + 2232);
    v33 = v7 + 2232;
    while (1)
    {
      v34 = v33;
      v33 = *v33;
      if (!v33)
      {
        break;
      }

      if (*(v33 + 8) == v29)
      {
        if (!a2)
        {
          goto LABEL_95;
        }

        v35 = v30 - *(v33 + 16);
        v36 = *(v7 + 2304);
        if (v35 < v36)
        {
          *(v7 + 2304) = v35;
          v36 = v35;
        }

        v37 = *(v7 + 2312);
        if (v35 <= v37)
        {
          if (v35 > v36 && v35 < v37)
          {
            *(v7 + 2320) = (v35 - *(v7 + 2320) + (*(v7 + 2320) << 6)) >> 6;
          }
        }

        else
        {
          *(v7 + 2312) = v35;
        }

        if (*(v33 + 10) > 1u)
        {
          goto LABEL_95;
        }

        v39 = v30 - *(v33 + 24);
        if (v39 >= *(v7 + 2248))
        {
          if (v39 <= *(v7 + 2256))
          {
            v40 = *(v7 + 2264);
            v41 = __OFSUB__(v39, v40);
            v42 = v39 - v40;
            if (v42 >= 0)
            {
              v43 = v42;
            }

            else
            {
              v43 = -v42;
            }

            if (v42 < 0 != v41)
            {
              v42 += 7;
            }

            v44 = v40 + (v42 >> 3);
            *(v7 + 2264) = v44;
            v45 = *(v7 + 2272);
            v46 = v43 < v45;
            v47 = v43 - v45;
            if (v46)
            {
              v47 += 3;
            }

            v48 = v45 + (v47 >> 2);
            *(v7 + 2272) = v48;
            v49 = 4 * v48 + 2 * v44;
            if (v49 >= 100000000)
            {
              v49 = 100000000;
            }

            *(v7 + 2280) = v49;
            goto LABEL_95;
          }
        }

        else
        {
          *(v7 + 2248) = v39;
          if (v39 <= *(v7 + 2256))
          {
            goto LABEL_95;
          }
        }

        *(v7 + 2256) = v39;
LABEL_95:
        *v34 = *v33;
        *v33 = *(v7 + 2224);
        *(v7 + 2224) = v33;
        goto LABEL_96;
      }
    }

    if (a2)
    {
      if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 40 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      ++*(v7 + 2300);
    }

LABEL_96:
    v50 = *v32;
    if (*v32)
    {
      v51 = 3;
      do
      {
        if (v31 >= v50[4])
        {
          v52 = v50[2];
          v53 = *(v50 + 5);
          *(v50 + 5) = v53 + 1;
          if (v53)
          {
            v54 = v31 - v52;
            if (v54 < *(v7 + 2328))
            {
              *(v7 + 2328) = v54;
            }

            if (v54 > *(v7 + 2336))
            {
              *(v7 + 2336) = v54;
            }
          }

          v55 = *(v7 + 2280) + v31;
          v50[3] = v31;
          v50[4] = v55;
          LODWORD(v55) = *(v50 + 4);
          v61 = 0;
          v58 = 16831872;
          v59 = bswap32(v55) >> 16;
          v60 = 256;
          v56 = *(v7 + 1600);
          v57 = *(v7 + 1644) ? send(v56, &v58, 8uLL, 0) : sendto(v56, &v58, 8uLL, 0, (v7 + 1612), *(v7 + 1640));
          if (v57 == 8 || *__error() && !*__error())
          {
            ++*(v7 + 2288);
          }

          else
          {
            APSLogErrorAt();
          }

          if (!--v51)
          {
            break;
          }
        }

        v50 = *v50;
      }

      while (v50);
    }
  }

  if (!a2)
  {
    v26 = *(v7 + 1912);
    if ((v26 + 1) > 1)
    {
      v27 = v26 + 1;
    }

    else
    {
      v27 = 1;
    }

    *(v7 + 1912) = v27;
  }

LABEL_59:
  audioSession_sessionUnlock(*(v7 + 2360));
  return 0;
}

uint64_t audioSession_sessionLock(uint64_t a1)
{
  if (!a1 || (result = FigSimpleMutexLock(), v1 = vars8, result))
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t audioSession_processEnqueuedRetransmitCommands(uint64_t a1)
{
  result = *(a1 + 2208);
  if (result)
  {
    while (1)
    {
      result = APSAtomicMessageQueueReadMessage();
      if (!result)
      {
        break;
      }

      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  return result;
}

uint64_t audioSession_retransmitsAbortAll(uint64_t a1)
{
  v2 = *(a1 + 2232);
  if (v2)
  {
    if (gLogCategory_APReceiverAudioSessionRealTimeStats > 40)
    {
      goto LABEL_7;
    }

    if (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    v2 = *(a1 + 2232);
    if (v2)
    {
LABEL_7:
      v3 = *(a1 + 2224);
      do
      {
        v4 = v2;
        v2 = *v2;
        *v4 = v3;
        v3 = v4;
      }

      while (v2);
      *(a1 + 2232) = 0;
      *(a1 + 2224) = v4;
    }
  }

  return audioSession_processEnqueuedRetransmitCommands(a1);
}

uint64_t audioSession_sessionUnlock(uint64_t a1)
{
  if (!a1 || (result = FigSimpleMutexUnlock(), v1 = vars8, result))
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t audioSession_handleMediaDataControlRequest(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const __CFDictionary *cf, uint64_t a6)
{
  v27 = 0;
  v11 = *(a6 + 40);
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a3 > 1752458867)
  {
    switch(a3)
    {
      case 1752458868:
        Int64 = CFDictionaryGetInt64();
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        audioSession_updateCallDurationMetric(v11, Int64 != 0);
        return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v27);
      case 1936549491:
        CFBooleanGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          CFBooleanGetValue(TypedValue);
          LogPrintF();
        }

        v27 = APReceiverAudioSessionPlatformSetProperty(*v11, v22, @"RASP::MuteStream", v23, TypedValue);
        if (v27)
        {
          goto LABEL_44;
        }

        return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v27);
      case 1953653603:
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        audioSession_triggerCoreCapture(v11, cf);
        return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v27);
    }

LABEL_24:
    v20 = -6714;
LABEL_25:
    v27 = v20;
    return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v27);
  }

  if (a3 == 1634562925)
  {
    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    v27 = APReceiverAudioSessionPlatformSetProperty(*v11, v17, @"RASP::AudioMode", v18, v16);
    if (v27)
    {
      goto LABEL_44;
    }

    return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v27);
  }

  if (a3 == 1701733219)
  {
    if (cf)
    {
      v21 = CFDictionaryGetInt64();
      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      atomic_store(v21 != 0, v11 + 9352);
    }

    return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v27);
  }

  if (a3 != 1718383464)
  {
    goto LABEL_24;
  }

  if (!cf || (v12 = CFGetTypeID(cf), v12 != CFDictionaryGetTypeID()))
  {
    APSLogErrorAt();
    v20 = -6756;
    goto LABEL_25;
  }

  CFDictionaryGetInt64Ranged();
  Int64Ranged = CFDictionaryGetInt64Ranged();
  APSAudioTransportTimeMakeWithRTPTime();
  v27 = APReceiverAudioSessionRealTimeFlushAudio(v11, 0, v14, v15, v26, Int64Ranged, 0);
  if (v27)
  {
LABEL_44:
    APSLogErrorAt();
  }

  return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v27);
}

uint64_t APReceiverAudioSessionRealTimeFlushAudio(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, _OWORD *a7)
{
  if (*a5 != 1)
  {
    APSLogErrorAt();
    return 4294895145;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  audioSession_sessionLock(*(a1 + 2360));
  APReceiverAudioSessionPlatformControl(*a1, @"RASP::FlushAudio");
  *(a1 + 1792) = mach_absolute_time();
  atomic_load((a1 + 1808));
  atomic_store(0, (a1 + 1808));
  while (!APSAtomicMessageQueueSendMessage())
  {
    usleep(1u);
  }

  if (*(a1 + 568))
  {
    v9 = 1;
  }

  else
  {
    v9 = FigGetCFPreferenceNumberWithDefault() != 0;
  }

  *(a1 + 2240) = v9;
  *(a1 + 1912) = 0;
  v10 = APSRTPPassThroughJitterBufferFlush();
  if (v10)
  {
    v12 = v10;
    APSLogErrorAt();
    goto LABEL_18;
  }

  audioSession_retransmitsAbortAll(a1);
  v11 = *(a1 + 1840);
  if (v11)
  {
    v12 = AudioConverterReset(v11);
    if (!a7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = 0;
  if (a7)
  {
LABEL_17:
    APSAudioTransportTimeMakeWithRTPTime();
    *a7 = *v14;
    *(a7 + 12) = *&v14[12];
  }

LABEL_18:
  audioSession_sessionUnlock(*(a1 + 2360));
  return v12;
}

void audioSession_triggerCoreCapture(uint64_t a1, const __CFDictionary *a2)
{
  v4 = (a1 + 0x2000);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!APSSettingsGetIntWithDefault())
  {
    v4[832] = 0;
    if (gLogCategory_APReceiverAudioSessionRealTime > 50 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_17;
    }

LABEL_6:
    LogPrintF();
    goto LABEL_17;
  }

  if (v4[1060])
  {
    CFDictionaryGetInt64Ranged();
    CFDictionaryGetInt64Ranged();
  }

  v4[832] = 1;
  if (v5)
  {
    ++*(a1 + 8976);
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    AirPlayReceiverSessionControl(v5, v6, @"reportIssue", 0, a2, 0);
  }

  if (!v4[1060])
  {
    goto LABEL_16;
  }

  if (CFAppendPrintF())
  {
    APSLogErrorAt();
    if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  APSW5LogCollect();
LABEL_16:
  atomic_store(0, v4 + 1160);
LABEL_17:
  if (v5)
  {
    CFRelease(v5);
  }
}

void APReceiverAudioSessionRealTimeFinalize(uint64_t a1)
{
  if (*(a1 + 9072))
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRelease(0);
  }

  if (*(a1 + 64))
  {
    SendSelfConnectedLoopbackMessage();
    pthread_join(*(a1 + 56), 0);
    *(a1 + 64) = 0;
  }

  v2 = *(a1 + 48);
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) && *__error())
    {
      __error();
    }

    *(a1 + 48) = -1;
  }

  if (*(a1 + 104))
  {
    nw_activity_complete_with_reason();
    nw_release(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  if (*(a1 + 96))
  {
    v3 = *(a1 + 112);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 112) = 0;
    }

    if (*(a1 + 120))
    {
      CMBaseObject = APTransportConnectionGetCMBaseObject();
      if (CMBaseObject)
      {
        v5 = CMBaseObject;
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v6)
        {
          v6(v5);
        }
      }

      v7 = *(a1 + 120);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 120) = 0;
      }
    }
  }

  else
  {
    v8 = *(a1 + 52);
    if ((v8 & 0x80000000) == 0)
    {
      if (close(v8) && *__error())
      {
        __error();
      }

      *(a1 + 52) = -1;
    }

    APTTrafficMetricsConnectionClosed();
  }

  v9 = *(a1 + 2424);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 2424) = 0;
  }

  if (*(a1 + 2360))
  {
    FigSimpleMutexDestroy();
    *(a1 + 2360) = 0;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 8) = 0;
  }

  v11 = *(a1 + 128);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 128) = 0;
  }

  v12 = *(a1 + 2072);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 2072) = 0;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 40) = 0;
  }

  v14 = *(a1 + 2376);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 2376) = 0;
  }

  v15 = *(a1 + 2416);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 2416) = 0;
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 16) = 0;
  }

  audioSession_logHistograms(a1);
  v17 = *(a1 + 2448);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 2448) = 0;
  }

  v18 = *(a1 + 2440);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 2440) = 0;
  }

  *(a1 + 512) = 0;
  v19 = *(a1 + 1600);
  if ((v19 & 0x80000000) == 0)
  {
    if (close(v19) && *__error())
    {
      __error();
    }

    *(a1 + 1600) = -1;
  }

  APTTrafficMetricsConnectionClosed();
  v20 = *(a1 + 2432);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 2432) = 0;
  }

  v21 = *(a1 + 520);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 520) = 0;
  }

  v22 = *(a1 + 2208);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 2208) = 0;
  }

  v23 = *(a1 + 9136);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 9136) = 0;
  }

  v24 = *(a1 + 2216);
  if (v24)
  {
    free(v24);
    *(a1 + 2216) = 0;
  }

  v25 = *(a1 + 1680);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 1680) = 0;
  }

  v26 = *(a1 + 1696);
  if (v26)
  {
    free(v26);
    *(a1 + 1696) = 0;
  }

  v27 = *(a1 + 1712);
  if (v27)
  {
    free(v27);
    *(a1 + 1712) = 0;
  }

  v28 = *(a1 + 1728);
  if (v28)
  {
    free(v28);
    *(a1 + 1728) = 0;
  }

  v29 = *(a1 + 1744);
  if (v29)
  {
    free(v29);
    *(a1 + 1744) = 0;
  }

  v30 = *(a1 + 1840);
  if (v30)
  {
    AudioConverterDispose(v30);
    *(a1 + 1840) = 0;
  }

  *(a1 + 1912) = 0;
  v31 = *(a1 + 2368);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 2368) = 0;
  }

  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  AES_CBCFrame_Final();
  v32 = *(a1 + 472);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 472) = 0;
  }

  v33 = *(a1 + 9288);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(a1 + 9296);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(a1 + 9032);
  if (v35)
  {
    dispatch_release(v35);
    *(a1 + 9032) = 0;
  }

  v36 = *(a1 + 9152);
  if (v36)
  {
    dispatch_release(v36);
    *(a1 + 9152) = 0;
  }

  v37 = *(a1 + 1760);
  if (v37)
  {
    free(v37);
  }

  v38 = *(a1 + 9080);
  if (v38)
  {
    free(v38);
  }

  v39 = *(a1 + 9104);
  if (v39)
  {
    free(v39);
  }

  v40 = *(a1 + 136);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 136) = 0;
  }

  v41 = *(a1 + 144);
  if (v41)
  {
    CFRelease(v41);
    *(a1 + 144) = 0;
  }

  v42 = *(a1 + 9400);
  if (v42)
  {
    CFRelease(v42);
    *(a1 + 9400) = 0;
  }

  v43 = *(a1 + 8952);
  if (v43)
  {
    CFRelease(v43);
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v44 = *(a1 + 32);
  if (v44)
  {
    CFRelease(v44);
  }

  free(a1);
}

uint64_t audioSession_logHistograms(uint64_t a1)
{
  audioSession_flushHistogramMessageQueue(a1);
  result = *(a1 + 2440);
  if (result)
  {

    return CFDictionaryApplyBlock();
  }

  return result;
}

uint64_t audioSession_flushHistogramMessageQueue(uint64_t a1)
{
  if (a1)
  {
    result = *(a1 + 2448);
    if (result)
    {
      while (1)
      {
        result = APSAtomicMessageQueueReadMessage();
        if (!result)
        {
          break;
        }

        if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }
    }
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

void __audioSession_logHistograms_block_invoke()
{
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

const __CFDictionary *audioSession_addHistogramValue(const __CFDictionary *result, const void *a2, double a3)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v4.n128_f64[0] = a3;

      return MEMORY[0x28213CA70](v4);
    }
  }

  return result;
}

uint64_t APReceiverAudioSessionRealTimeInvalidate(uint64_t a1)
{
  result = *(a1 + 120);
  if (result)
  {
    result = APTransportConnectionGetCMBaseObject();
    if (result)
    {
      v2 = result;
      VTable = CMBaseObjectGetVTable();
      v4 = *(VTable + 8);
      result = VTable + 8;
      v5 = *(v4 + 24);
      if (v5)
      {
        result = v5(v2);
      }
    }
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime != -1)
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

uint64_t APReceiverAudioSessionRealTimeReadAudio(uint64_t a1, int a2, uint64_t a3, char *a4, unint64_t a5)
{
  _X24 = a3;
  kdebug_trace();
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  __dst = a4;
  if (*(a1 + 2080))
  {
    v10 = *(a1 + 1824);
    do
    {
      _X3 = *(a1 + 1832);
      __asm { CASPAL          X2, X3, X24, X25, [X8] }

      _ZF = _X2 == v10;
      v10 = _X2;
    }

    while (!_ZF);
  }

  v129 = 0;
  v15 = *(a1 + 120);
  if (v15)
  {
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v16)
    {
      v16(v15);
    }
  }

  if (*(a1 + 128) && (APSRTPPassThroughJitterBufferAcquireRelinquishedNode() || APSRealTimeReadableRingBufferRead()))
  {
    APSLogErrorAt();
  }

  v122 = a5;
  v17 = (a1 + 8913);
  v115 = (a1 + 2084);
  v126 = (a1 + 2092);
  v117 = (a1 + 1884);
  v129 = 0;
  v130 = 0;
  v18 = &unk_27E37D000;
  v131 = 0;
  v121 = a2;
  while (APSAtomicMessageQueueReadMessage())
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v19 = mach_absolute_time();
  v127 = *(a1 + 84);
  v132 = 0;
  v129 = 0;
  v130 = 0;
  do
  {
    v20 = *(a1 + 8872);
    v21 = *(a1 + 8872);
    atomic_compare_exchange_strong((a1 + 8872), &v21, v20 | 1);
  }

  while (v21 != v20);
  v22 = a1 + 3208 * ((v20 >> 1) & 1);
  v119 = v22 + 2456;
  v120 = *(v22 + 5656) % 0xC8u;
  v128 = a2 - *(a1 + 464);
  v23 = v128 + a5 / v127;
  if (!*(a1 + 2080))
  {
    if ((a5 / v127 - 1) < 0)
    {
      goto LABEL_204;
    }

    v116 = v19;
    v118 = 0;
    v93 = 1;
    v96 = a2 - *(a1 + 464);
LABEL_187:
    v98 = v23 - v96;
    if (*v17)
    {
      v99 = *(a1 + 2084) + *(a1 + 1776);
      v100 = v96;
      if (v17[159] == 1)
      {
        if (!v17[340])
        {
          v17[340] = 1;
          audioSession_triggerAsyncGlitchLog(a1);
          v99 = *(a1 + 2084) + *(a1 + 1776);
        }

        v101 = v119 + 16 * v120;
        *v101 = v116;
        *(v101 + 8) = v100 - v99;
        *(v101 + 12) = v98;
        ++v120;
        kdebug_trace();
      }
    }

    audioSession_plc(a1, __dst, (v98 * v127), __dst);
    v102 = v18[662];
    if (v102 <= 10 && (v102 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v93)
    {
      a2 = v121;
      goto LABEL_204;
    }

    v97 = v118 + 1;
    audioSession_enqueueRetransmitCommand(a1);
    a2 = v121;
    goto LABEL_200;
  }

  v116 = v19;
  v118 = 0;
  v124 = v23 + 441000;
  v125 = v128 + a5 / v127;
  v114 = &__dst[a5];
  v24 = *(a1 + 1688);
  v132 = v24;
  v25 = v24 == 0;
  v26 = 1;
  do
  {
    while (1)
    {
LABEL_23:
      if (v25)
      {
        APSRTPPassThroughJitterBufferAcquireLowestInsertedNode();
        v24 = v132;
        if (!v132)
        {
          v33 = 0;
LABEL_183:
          v93 = v26;
          goto LABEL_184;
        }
      }

      v17[179] = 0;
      v27 = *(v24 + 32);
      v28 = *v126;
      if (*v126)
      {
        if (v27 - *(a1 + 2096) < 0)
        {
          v28 = 1;
        }

        else
        {
          v29 = v18[662];
          if (v29 <= 30 && (v29 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v28 = 0;
          *(a1 + 2084) = *(a1 + 2088);
          *(a1 + 2092) = 0;
          *(a1 + 1884) = 1;
        }
      }

      v30 = *(a1 + 2084) + v27 + *(a1 + 1776);
      if (v28 && v30 - v124 >= 1)
      {
        v31 = v18[662];
        if (v31 <= 30 && (v31 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v32 = *(a1 + 2088);
        *(a1 + 2084) = v32;
        *(a1 + 2092) = 0;
        *(a1 + 1884) = 1;
        v30 = v32 + v27 + *(a1 + 1776);
      }

      v33 = v132;
      if (v30 - v23 >= 0)
      {
        goto LABEL_183;
      }

      v34 = *(*v132 + 2);
      v35 = atomic_load((a1 + 1808));
      if ((v35 & 0xFF000000000000) != 0 && (v34 - WORD2(v35)) >= 2)
      {
        HIDWORD(qword_27E37EED8) += (v34 - WORD2(v35) - 1);
        v36 = *(a1 + 2416);
        if (v36)
        {
          atomic_fetch_add_explicit((v36 + 64), (v34 - WORD2(v35) - 1), memory_order_relaxed);
        }

        if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 30 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      atomic_store(v35 & 0xFF00000000000000 | (v34 << 32) | v27 | 0x1000000000000, (a1 + 1808));
      v37 = v132;
      v38 = *(a1 + 72);
      if (v38 != 1 && *(v132 + 8) == *v132 + 12)
      {
        LODWORD(v39) = *(a1 + 88);
      }

      else
      {
        v39 = *(v132 + 16) / v127;
      }

      v40 = v30 - v128;
      if (v39 + v30 - v128 <= 0)
      {
        v25 = 1;
        audioSession_discardLatePacket(a1);
        v24 = 0;
        v26 = 0;
        v132 = 0;
        v23 = v125;
        continue;
      }

      v41 = *(v132 + 8);
      if (v41 != (*v132 + 12))
      {
        goto LABEL_54;
      }

      v45 = *(v132 + 16);
      v46 = *(a1 + 1672) - 12;
      if (v38 == 1)
      {
        if (v45 > v46)
        {
          goto LABEL_175;
        }

        Swap16Mem();
        v133[0] = v45;
        v47 = v45;
      }

      else
      {
        v133[0] = 0;
        if (audioSession_audioDecoderDecodeFrame(a1, v41, v45, *(a1 + 1696), *(a1 + 1704), v133) || (*(a1 + 9120) = *(a1 + 9112), v47 = v133[0], v133[0] > v46))
        {
LABEL_175:
          APSLogErrorAt();
          v17 = (a1 + 8913);
          v18 = &unk_27E37D000;
          goto LABEL_101;
        }

        memcpy(v41, *(a1 + 1696), v133[0]);
      }

      v17 = (a1 + 8913);
      if (!*(a1 + 9201))
      {
        goto LABEL_82;
      }

      if (v47 < 8 || *(a1 + 9200))
      {
        goto LABEL_81;
      }

      v48 = v47 >> 3;
      while (!*v41)
      {
LABEL_80:
        ++v41;
        if (!--v48)
        {
          goto LABEL_81;
        }
      }

      *(a1 + 9200) = 1;
      if (*(a1 + 9136))
      {
        if (!APSAtomicMessageQueueSendMessage() && gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        mach_absolute_time();
        if (!APSAtomicMessageQueueSendMessage() && gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_80;
      }

      if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

LABEL_81:
      v47 = v133[0];
LABEL_82:
      if (v47)
      {
        v49 = 10000 * v45 / v47;
      }

      else
      {
        LODWORD(v49) = 0;
      }

      v18 = &unk_27E37D000;
      *(a1 + 1880) = (v49 - *(a1 + 1880) + (*(a1 + 1880) << 6)) >> 6;
      *(v37 + 16) = v47;
      v50 = v132;
      if (*(v132 + 16))
      {
        break;
      }

LABEL_101:
      v59 = v18[662];
      v23 = v125;
      if (v59 <= 90 && (v59 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      APSRTPPassThroughJitterBufferRelinquishNode();
      v24 = 0;
      v26 = 0;
      v132 = 0;
      v25 = 1;
    }

    ++*(a1 + 8936);
    if ((*(v50 + 36) & 2) == 0)
    {
      v51 = *(*v50 + 2);
      v52 = *(v50 + 32);
      v53 = *(a1 + 8920);
      v54 = *(a1 + 8924);
      v55 = v51 - v53;
      if (v51 - v53 < 0)
      {
        v55 = v53 - v51;
      }

      v56 = v52 - v54;
      if (v52 - v54 < 0)
      {
        v56 = v54 - v52;
      }

      *(a1 + 8913) = 1;
      *(a1 + 8914) = v53;
      *(a1 + 8916) = v54;
      *(a1 + 8920) = v51;
      *(a1 + 8924) = v52;
      _ZF = v51 == v53 || v52 == v54;
      if (!_ZF && v56 >= v55)
      {
        v60 = v56 / v55;
        *(a1 + 8928) = v60;
        if (v60 != *(a1 + 88) && gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(a1 + 8928) = *(a1 + 88);
      }
    }

LABEL_54:
    v42 = v132;
    v43 = v128;
    v44 = v30 + *(v132 + 16) / v127;
    if (v44 - v128 <= 0)
    {
      audioSession_discardLatePacket(a1);
      v24 = 0;
      v26 = 0;
      v132 = 0;
      v25 = 1;
      v23 = v125;
      goto LABEL_23;
    }

    v61 = v128 - v30;
    if (v128 - v30 < 0)
    {
      if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 20 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (*(a1 + 8936) >= 2uLL)
      {
        kdebug_trace();
        if (!v17[340])
        {
          v17[340] = 1;
          audioSession_triggerAsyncGlitchLog(a1);
        }

        v64 = v119 + 16 * v120;
        *v64 = v116;
        *(v64 + 8) = v128 - (*(a1 + 2084) + *(a1 + 1776));
        *(v64 + 12) = v40;
        ++v120;
      }

      audioSession_enqueueRetransmitCommand(a1);
      audioSession_plc(a1, *(v132 + 8), (v40 * v127), __dst);
      __dst += (v40 * v127);
      ++v118;
      v42 = v132;
      v43 = v30;
LABEL_130:
      v63 = v125;
      goto LABEL_133;
    }

    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    ++dword_27E37EEE0;
    v62 = *(a1 + 2416);
    if (v62)
    {
      atomic_fetch_add_explicit((v62 + 68), 1u, memory_order_relaxed);
    }

    v63 = v125;
    if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 20 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    audioSession_enqueueRetransmitCommand(a1);
    v43 = v128;
    v65 = (v61 * v127);
    v42 = v132;
    v66 = *(v132 + 16);
    *(v132 + 8) += v65;
    *(v42 + 16) = v66 - v65;
    *(v42 + 32) += v61;
    ++v118;
    v30 = v128;
LABEL_133:
    v113 = v61;
    if (*(a1 + 2121) && (v67 = *(v42 + 8), v67 == (*v42 + 12)))
    {
      v69 = *(a1 + 2192);
      if (v69 < 1)
      {
        if (v69 < 0)
        {
          v76 = v43;
          v77 = *(a1 + 1744);
          memcpy(v77, v67, *(v42 + 16));
          v78 = *(a1 + 84);
          v80 = *(v42 + 8);
          v79 = *(v42 + 16);
          if ((v79 / v78) < 1)
          {
            v82 = *(v42 + 8);
          }

          else
          {
            v81 = &v77[v79 / v78];
            v82 = *(v42 + 8);
            do
            {
              v83 = *v77;
              v84 = *(a1 + 2196) + 1;
              *(a1 + 2196) = v84;
              if (v84 >= *(a1 + 2200))
              {
                *(a1 + 2196) = 0;
                *v82++ = v83;
              }

              *v82++ = v83;
              ++v77;
            }

            while (v77 < v81);
            v78 = *(a1 + 84);
          }

          v94 = v82 - v80;
          v95 = &v94[-v79] / v78;
          *(v42 + 16) = v94;
          *(v42 + 32) -= v95;
          *v115 = vadd_s32(*v115, vdup_n_s32(v95));
          v42 = v132;
          v43 = v76;
        }
      }

      else
      {
        v70 = *(v42 + 16);
        v71 = *(a1 + 84);
        if ((v70 / v71) < 1)
        {
          v73 = *(v42 + 8);
        }

        else
        {
          v72 = &v67[4 * (v70 / v71)];
          v73 = *(v42 + 8);
          v74 = v73;
          do
          {
            v75 = *(a1 + 2196) + 1;
            *(a1 + 2196) = v75;
            if (v75 >= *(a1 + 2200))
            {
              *(a1 + 2196) = 0;
            }

            else
            {
              *v73 = *v74;
              v73 += 4;
            }

            v74 += 4;
          }

          while (v74 < v72);
          v71 = *(a1 + 84);
        }

        v85 = v73 - v67;
        v86 = (v70 - v85) / v71;
        *(v42 + 16) = v85;
        *(v42 + 32) += v86;
        *v115 = vsub_s32(*v115, vdup_n_s32(v86));
      }

      v68 = v43;
      v44 = v30 + *(v42 + 16) / v127;
    }

    else
    {
      v68 = v43;
    }

    v87 = v44 - v63;
    if (v44 - v63 <= 0)
    {
      v88 = v44;
    }

    else
    {
      v88 = v63;
    }

    v89 = v88 - v30;
    v90 = ((v88 - v30) * v127);
    memcpy(__dst, *(v42 + 8), v90);
    kdebug_trace();
    if (v17[340] == 1)
    {
      v17[340] = 0;
      audioSession_triggerAsyncGlitchLog(a1);
    }

    if ((v113 & 0x80000000) == 0)
    {
      APSPacketLossConcealerSaveData();
    }

    __dst += v90;
    v128 = v89 + v68;
    if (v87 >= 1)
    {
      v93 = 0;
      v33 = v132;
      v112 = *(v132 + 16) - v90;
      *(v132 + 8) += v90;
      *(v33 + 16) = v112;
      *(v33 + 32) += v89;
      v18 = &unk_27E37D000;
      v23 = v125;
      break;
    }

    atomic_fetch_add((a1 + 2000), 1u);
    v91 = v132;
    v18 = &unk_27E37D000;
    if ((*(v132 + 36) & 2) != 0)
    {
      atomic_fetch_add((a1 + 2004), 1u);
      v91 = v132;
    }

    v23 = v125;
    if (*(a1 + 2448))
    {
      v92 = *(v91 + 40);
      LODWORD(v129) = 1919247468;
      LODWORD(v130) = v92;
      APSAtomicMessageQueueSendMessage();
    }

    APSRTPPassThroughJitterBufferRelinquishNode();
    v24 = 0;
    v26 = 0;
    v33 = 0;
    v93 = 0;
    v132 = 0;
    v25 = 1;
  }

  while (__dst < v114);
LABEL_184:
  *(a1 + 1688) = v33;
  v96 = v128;
  if (v128 - v23 < 0)
  {
    goto LABEL_187;
  }

  a2 = v121;
  v97 = v118;
  if (v93)
  {
    goto LABEL_204;
  }

LABEL_200:
  if (!APSRTPPassThroughJitterBufferIsFlushing() && v97 >= 1 && *v117)
  {
    *v117 = 0;
  }

LABEL_204:
  if (*v17)
  {
    *(v119 + 3200) = v120;
  }

  v103 = atomic_load((a1 + 1808));
  if ((v103 & 0xFF000000000000) != 0 && gLogCategory_APReceiverAudioSessionRealTimeStats <= 50 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
  {
    v104 = *(a1 + 1804) - v103;
    if (byte_27E37EED0)
    {
      v105 = *(&gAirPlayAudioStats + 1) + *&gAirPlayAudioStats * (v104 - *(&gAirPlayAudioStats + 1));
    }

    else
    {
      v105 = v104;
      byte_27E37EED0 = 1;
    }

    *(&gAirPlayAudioStats + 1) = v105;
    v106 = ((*(a1 + 76) >> 1) + v105 * 1000.0) / *(a1 + 76);
    v107 = v18[662];
    if (v107 <= 10 && (v107 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v108 = *(a1 + 2416);
    if (v108)
    {
      *(v108 + 56) = v106;
    }
  }

  atomic_exchange((a1 + 8872), *(a1 + 8872) & 0xFFFFFFFE);
  v109 = v122 / *(a1 + 84);
  if (*(a1 + 9240) && *(a1 + 9248) + *(a1 + 9244) != a2)
  {
    atomic_fetch_add((a1 + 8944), 1u);
    v110 = *(a1 + 32);
    if (v110)
    {
      CFRetain(v110);
    }

    APSAsyncLoggerGetSharedLogger();
    APSAsyncLoggerLogMessage();
  }

  kdebug_trace();
  result = 0;
  *(a1 + 9240) = 1;
  *(a1 + 9244) = a2;
  *(a1 + 9248) = v109;
  return result;
}

uint64_t audioSession_discardLatePacket(uint64_t a1)
{
  ++dword_27E37EEE0;
  v2 = *(a1 + 2416);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 68), 1u, memory_order_relaxed);
  }

  if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 30 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  kdebug_trace();
  audioSession_enqueueRetransmitCommand(a1);

  return APSRTPPassThroughJitterBufferRelinquishNode();
}

uint64_t audioSession_audioDecoderDecodeFrame(void *inInputDataProcUserData, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, void *a6)
{
  if (!a2 || !a4)
  {
    goto LABEL_13;
  }

  v7 = *(inInputDataProcUserData + 22);
  v8 = *(inInputDataProcUserData + 21) * v7;
  if (v8 > a5)
  {
    APSLogErrorAt();
    return 4294960553;
  }

  if (!a6)
  {
LABEL_13:
    APSLogErrorAt();
    return 4294960591;
  }

  *&v13.mNumberBuffers = 1;
  *(inInputDataProcUserData + 231) = a2;
  *(inInputDataProcUserData + 232) = a2 + a3;
  ioOutputDataPacketSize = v7;
  v13.mBuffers[0].mNumberChannels = *(inInputDataProcUserData + 20);
  v13.mBuffers[0].mDataByteSize = v8;
  v13.mBuffers[0].mData = a4;
  v10 = AudioConverterFillComplexBuffer(*(inInputDataProcUserData + 230), audioSession_audioDecoderDecodeCallback, inInputDataProcUserData, &ioOutputDataPacketSize, &v13, 0);
  if (v10 != -6750 && (v11 = v10, v10))
  {
    APSLogErrorAt();
  }

  else
  {
    v11 = 0;
    *a6 = *(inInputDataProcUserData + 21) * ioOutputDataPacketSize;
  }

  return v11;
}

uint64_t audioSession_triggerAsyncGlitchLog(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    CFRetain(v1);
  }

  APSAsyncLoggerGetSharedLogger();
  return APSAsyncLoggerLogMessage();
}

uint64_t audioSession_enqueueRetransmitCommand(uint64_t result)
{
  if (*(result + 2208))
  {
    if (*(result + 2232) && gLogCategory_APReceiverAudioSessionRealTime <= 40 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    mach_absolute_time();
    UpTicksToNanoseconds();
    result = APSAtomicMessageQueueSendMessage();
    if (!result)
    {
      return APSLogErrorAt();
    }
  }

  return result;
}

void audioSession_plc(uint64_t a1, uint64_t a2, size_t a3, char *a4)
{
  v8 = a1 + 0x2000;
  v15 = 0;
  v9.i32[0] = 1;
  v9.i32[1] = a3 / *(a1 + 84);
  *(a1 + 9128) = vadd_s32(*(a1 + 9128), v9);
  bzero(a4, a3);
  *(v8 + 900) = 1;
  if (((*(a1 + 72) - 4) & 0xFFFFFFFB) != 0 || !*(v8 + 901))
  {
    *(a1 + 9100) = APSPacketLossConcealerConceal();
    return;
  }

  if (a3)
  {
    v10 = 0;
    v11 = *(a1 + 9120);
    do
    {
      v12 = *(a1 + 9112);
      if (v11 == v12)
      {
        bzero(*(a1 + 9104), v11);
        if (audioSession_audioDecoderDecodeFrame(a1, a2, 0, *(a1 + 9104), *(a1 + 9112), &v15))
        {
          APSLogErrorAt();
          return;
        }

        v11 = 0;
        *(a1 + 9120) = 0;
        v12 = *(a1 + 9112);
      }

      v13 = v12 - v11;
      if (a3 - v10 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = a3 - v10;
      }

      memcpy(&a4[v10], (*(a1 + 9104) + v11), v14);
      v10 += v14;
      v11 = *(a1 + 9120) + v14;
      *(a1 + 9120) = v11;
    }

    while (v10 < a3);
  }

  *(a1 + 9100) = *(a1 + 9096);
}

void audioSession_ioDiscontinuityLogger(const void **a1)
{
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *a1;
  if (*a1)
  {

    CFRelease(v2);
  }
}

void audioSession_glitchLogger(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = *a1;
  if (!*a1)
  {
    return;
  }

  v4 = v2;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    v14 = v3;
LABEL_25:

    CFRelease(v14);
    return;
  }

  v6 = v5;
  v7 = *(v5 + 40);
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = *(a1 + 8);
  if (strcmp(v9, "[Glitch Gap Start]") && strcmp(v9, "[Glitch Underrun Start]"))
  {
    goto LABEL_21;
  }

  if (*(v7 + 9304))
  {
    notify_post("com.apple.airplay.AmbientAudioGlitched");
  }

  if (!*(v7 + 9254) || *(v7 + 9024) || v4 < *(v7 + 9312))
  {
    goto LABEL_21;
  }

  if (*(v7 + 9336) || (v10 = *(v7 + 8876), v10 < *(v7 + 9340)) || ((v11 = UpTicksToSeconds()) == 0 ? (v12 = 0) : (v12 = 3600 * v10 / v11), v12 < *(v7 + 9340)))
  {
    v13 = atomic_load(&audioSession_glitchLogger_sNextIssueReportTicks);
    if (v4 < v13)
    {
LABEL_21:
      v14 = 0;
      goto LABEL_22;
    }

    v25 = v13;
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v26 = 1;
  }

  else
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v26 = 0;
    v25 = 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = Mutable;
  if (!Mutable || (CFDictionarySetValue(Mutable, *MEMORY[0x277CEA1F0], *MEMORY[0x277CEA1F8]), CFDictionarySetInt64()) || CFDictionarySetInt64())
  {
    APSLogErrorAt();
    goto LABEL_22;
  }

  v16 = *MEMORY[0x277CBED28];
  v17 = *MEMORY[0x277CBED10];
  if (v26)
  {
    v18 = *MEMORY[0x277CBED10];
  }

  else
  {
    v18 = *MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(v14, *MEMORY[0x277CEA1D8], v18);
  v19 = atomic_load((v7 + 9352));
  v20 = *MEMORY[0x277CEA1D0];
  if (v19)
  {
    CFDictionarySetValue(v14, v20, v16);
    if (v26)
    {
      if (!APSSettingsGetIntWithDefault())
      {
        v21 = v25;
        v22 = v25;
        atomic_compare_exchange_strong(&audioSession_glitchLogger_sNextIssueReportTicks, &v22, *(v7 + 9256) + v4);
        if (v22 != v21)
        {
          if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      *(v7 + 9336) = 1;
    }

    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v24 = *(v7 + 40);
    if (v24)
    {
      APMediaDataControlServerSendRequest(v24, 1919513459, v14, 0, 0);
    }

    audioSession_triggerCoreCapture(v7, v14);
  }

  else
  {
    CFDictionarySetValue(v14, v20, v17);
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v23 = *(v7 + 40);
    if (v23)
    {
      APMediaDataControlServerSendRequest(v23, 1919513459, v14, 0, 0);
    }
  }

LABEL_22:
  CFRelease(v3);
  CFRelease(v6);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v14)
  {
    goto LABEL_25;
  }
}

uint64_t audioSession_audioDecoderDecodeCallback(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = *(a5 + 1848);
  v6 = *(a5 + 1856);
  if (v5 == v6 && !*(a5 + 9092))
  {
    *a2 = 0;
    return 4294960546;
  }

  else
  {
    result = 0;
    *a2 = 1;
    *a3 = 1;
    *(a3 + 8) = *(a5 + 80);
    *(a3 + 12) = v6 - v5;
    *(a3 + 16) = v5;
    *(a5 + 1848) = v6;
    *(a5 + 1864) = 0;
    *(a5 + 1872) = 0;
    *(a5 + 1876) = v6 - v5;
    *a4 = a5 + 1864;
  }

  return result;
}

uint64_t audioSession_consumeNetworkDataBufferPacket(uint64_t result, int a2, NSObject *a3)
{
  v3 = result;
  if (a2)
  {
    *(*(result + 8) + 48) = mach_absolute_time();
    size = dispatch_data_get_size(a3);
    if (size > *(*v3 + 1672))
    {
      result = APSLogErrorAt();
      v7 = -6743;
    }

    else
    {
      v6 = size;
      result = APSDispatchDataCopyBytes();
      v7 = result;
      if (result)
      {
        result = APSLogErrorAt();
      }

      else
      {
        *(v3 + 16) = v6;
      }
    }
  }

  else
  {
    v7 = 0;
    *(result + 16) = 0;
  }

  *(v3 + 24) = v7;
  return result;
}

uint64_t APReceiverAudioSessionRealTimeConvertProgressRTPTimeToSecond(uint64_t a1, int a2, int a3, int a4, double *a5, double *a6, double a7, double a8)
{
  if (a1)
  {
    v10 = atomic_load((a1 + 1808));
    if ((v10 & 0xFF000000000000) == 0)
    {
      LODWORD(v10) = a3;
    }

    LODWORD(a8) = *(a1 + 76);
    v11 = *&a8;
    v12 = (v10 - a2) / v11;
    v13 = (a4 - a2) / v11;
    if (gLogCategory_APReceiverAudioSessionRealTime <= 40 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (a5)
    {
      *a5 = v12;
    }

    result = 0;
    if (a6)
    {
      *a6 = v13;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895144;
  }

  return result;
}

uint64_t APReceiverAudioSessionRealTimeSetSecurityInfo(uint64_t a1, const UInt8 *a2, const UInt8 *a3)
{
  if (!a1)
  {
    return 4294895144;
  }

  v6 = a1 + 480;
  AES_CBCFrame_Final();
  *(a1 + 504) = 0;
  v7 = AES_CBCFrame_Init();
  if (v7)
  {
    v13 = v7;
    APSLogErrorAt();
    return v13;
  }

  *(a1 + 504) = v6;
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = CFDataCreate(*MEMORY[0x277CBECE8], a2, 16);
  if (!v9)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v10 = v9;
  v11 = CFDataCreate(v8, a3, 16);
  if (!v11)
  {
    APSLogErrorAt();
    CFRelease(v10);
    return 4294960568;
  }

  v12 = v11;
  v13 = APSCryptorCBCCreate();
  if (v13)
  {
    APSLogErrorAt();
  }

  else
  {
    v14 = *(a1 + 472);
    *(a1 + 472) = 0;
    if (v14)
    {
      CFRelease(v14);
    }
  }

  CFRelease(v10);
  CFRelease(v12);
  return v13;
}

uint64_t APReceiverAudioSessionRealTimeStartPacketProcesser(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  v2 = a1 + 0x2000;
  if (*(a1 + 9072))
  {
    v38 = 4294895143;
    goto LABEL_62;
  }

  if (!*(a1 + 64))
  {
    *(a1 + 9040) = mach_absolute_time();
    v3 = pthread_create((a1 + 56), 0, audioSession_networkThread, a1);
    if (v3)
    {
      v38 = v3;
    }

    else
    {
      *(a1 + 64) = a1 + 56;
      *(a1 + 1952) = *(a1 + 9040);
      v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 9032));
      *(a1 + 9056) = v4;
      if (!v4 || (v5 = v4, dispatch_set_context(v4, a1), dispatch_source_set_event_handler_f(v5, audioSession_performPeriodicTasks), v6 = dispatch_time(0, 250000000), dispatch_source_set_timer(v5, v6, 0xEE6B280uLL, 0xEE6B280uLL), dispatch_resume(v5), v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 9152)), (*(a1 + 9144) = v7) == 0))
      {
        APSLogErrorAt();
        return 4294960596;
      }

      dispatch_set_context(v7, a1);
      dispatch_source_set_event_handler_f(*(a1 + 9144), audioSession_log);
      dispatch_source_set_timer(*(a1 + 9144), 0, 1000000 * *(a1 + 9160), 0);
      dispatch_resume(*(a1 + 9144));
      *(a1 + 8880) = 0;
      *(a1 + 8888) = 0;
      *(a1 + 8872) = 0;
      *(a1 + 8936) = 0;
      *(v2 + 720) = 0;
      v40 = v2;
      *(v2 + 832) = 0;
      *(a1 + 8976) = 0;
      bzero((a1 + 2456), 0xC84uLL);
      bzero((a1 + 5664), 0xC84uLL);
      APSIOReporterGetCoreCaptureCount();
      *(a1 + 9272) = mach_absolute_time();
      *(a1 + 9280) = FigGetCFPreferenceNumberWithDefault();
      *(a1 + 9392) = *(a1 + 9040);
      v8 = *MEMORY[0x277CBECE8];
      v9 = MEMORY[0x277CBF138];
      v10 = MEMORY[0x277CBF150];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v12 = CFDictionaryCreateMutable(v8, 0, v9, v10);
      v13 = *(a1 + 2440);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 2440) = 0;
      }

      v14 = *(a1 + 2448);
      if (v14)
      {
        CFRelease(v14);
        *(a1 + 2448) = 0;
      }

      v15 = *MEMORY[0x277CEA338];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CEA338], @"ms");
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      v16 = MEMORY[0x277CEA330];
      if (Mutable && v12)
      {
        v17 = *MEMORY[0x277CEA330];
        CFDictionarySetValue(Mutable, *MEMORY[0x277CEA330], @"Histogram_GlitchDuration");
        v18 = APSStatsHistogramCreate();
        if (v18)
        {
          v19 = v18;
          CFDictionarySetValue(v12, @"Histogram_GlitchDuration", v18);
          CFRelease(v19);
        }

        CFDictionarySetValue(Mutable, v17, @"Histogram_StartupGlitchDuration");
        v20 = APSStatsHistogramCreate();
        if (v20)
        {
          v21 = v20;
          CFDictionarySetValue(v12, @"Histogram_StartupGlitchDuration", v20);
          CFRelease(v21);
        }

        CFDictionarySetValue(Mutable, v17, @"Histogram_NonStartupGlitchDuration");
        v22 = APSStatsHistogramCreate();
        if (v22)
        {
          v23 = v22;
          CFDictionarySetValue(v12, @"Histogram_NonStartupGlitchDuration", v22);
          CFRelease(v23);
        }

        CFDictionarySetValue(Mutable, v17, @"Histogram_LiveAdaptiveGlitchDuration");
        v24 = APSStatsHistogramCreate();
        if (v24)
        {
          v25 = v24;
          CFDictionarySetValue(v12, @"Histogram_LiveAdaptiveGlitchDuration", v24);
          CFRelease(v25);
        }
      }

      else
      {
        APSLogErrorAt();
        APSLogErrorAt();
        APSLogErrorAt();
        APSLogErrorAt();
      }

      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      if (Mutable && v12)
      {
        CFDictionarySetValue(Mutable, *v16, @"Histogram_NetworkTransitTime");
        v26 = APSStatsHistogramCreate();
        if (v26)
        {
          v27 = v26;
          CFDictionarySetValue(v12, @"Histogram_NetworkTransitTime", v26);
          CFRelease(v27);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      if (Mutable && v12)
      {
        CFDictionarySetValue(Mutable, *v16, @"Histogram_HLANetworkTransitTime");
        v28 = APSStatsHistogramCreate();
        if (v28)
        {
          v29 = v28;
          CFDictionarySetValue(v12, @"Histogram_HLANetworkTransitTime", v28);
          CFRelease(v29);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      CFDictionaryRemoveValue(Mutable, v15);
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      if (Mutable && v12)
      {
        CFDictionarySetValue(Mutable, *v16, @"Histogram_RenderRedundancyLevel");
        v30 = APSStatsHistogramCreate();
        if (v30)
        {
          v31 = v30;
          CFDictionarySetValue(v12, @"Histogram_RenderRedundancyLevel", v30);
          CFRelease(v31);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      if (Mutable && v12)
      {
        CFDictionarySetValue(Mutable, *v16, @"Histogram_GlitchFreeDuration");
        v32 = APSStatsHistogramCreate();
        if (v32)
        {
          v33 = v32;
          CFDictionarySetValue(v12, @"Histogram_GlitchFreeDuration", v32);
          CFRelease(v33);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      APSAtomicMessageQueueCreate();
      CFRelease(Mutable);
      *(a1 + 2440) = v12;
      v34 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 9032));
      *(a1 + 9064) = v34;
      if (!v34)
      {
        APSLogErrorAt();
        return 4294960568;
      }

      dispatch_set_context(v34, a1);
      dispatch_source_set_event_handler_f(*(a1 + 9064), audioSession_performGlitchCollection);
      v35 = *(a1 + 9064);
      v36 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v35, v36, 0x3B9ACA00uLL, 0x3B9ACA00uLL);
      dispatch_resume(*(a1 + 9064));
      v37 = *(a1 + 40);
      if (!v37 || (context = *(a1 + 40), v42 = 0, dispatch_sync_f(*(v37 + 112), &context, controlServer_startInternal), v38 = v42, !v42))
      {
        APSCopyTightSyncInfo();
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(v40 + 880) = 1;
        return 0;
      }
    }

LABEL_62:
    APSLogErrorAt();
    return v38;
  }

  return 0;
}

uint64_t audioSession_performGlitchCollection(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result + 0x2000;
    APSAsyncLoggerGetSharedLogger();
    result = APSAsyncLoggerLogMessage();
    v3 = 0;
    v4 = 0;
    for (i = 0; i != 100; ++i)
    {
      v6 = *(v1 + 8872);
      if ((v6 & 1) == 0)
      {
        v4 = (v6 >> 1) & 1;
        v7 = *(v1 + 8872);
        atomic_compare_exchange_strong((v1 + 8872), &v7, (v6 & 0xFFFFFFFC | (2 * v4)) ^ 2);
        if (v7 == v6)
        {
          break;
        }
      }

      result = usleep(0xAu);
      v3 = i > 0x62;
    }

    v8 = v1 + 3208 * v4;
    v9 = (v8 + 2456);
    v10 = v3;
    v11 = v10 ? 0 : v8 + 2456;
    if (!v10)
    {
      v12 = *(v8 + 5656);
      v13 = *(v2 + 720);
      result = mach_absolute_time();
      v40 = result;
      if (v12 > 0xC8)
      {
        goto LABEL_83;
      }

      v14 = v12;
      if (v12 != 200)
      {
        goto LABEL_19;
      }

      if (*(v2 + 700) == 1)
      {
LABEL_83:
        if (gLogCategory_APReceiverAudioSessionRealTime <= 90)
        {
          if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (result = _LogCategory_Initialize(), result))
          {
            result = LogPrintF();
          }
        }
      }

      v14 = 200;
LABEL_19:
      if (*(v2 + 700) == 1)
      {
        result = memmove(v9 + 4, v9, (16 * v14));
        *v9 = *(v1 + 8896);
        ++v12;
      }

      if (v12 < 2)
      {
        v15 = 0;
        if (v13)
        {
LABEL_28:
          if (v14 || *(v2 + 700))
          {
            v20 = v15 + 1;
            v21 = 1;
            goto LABEL_45;
          }

          v21 = 1;
          goto LABEL_44;
        }
      }

      else
      {
        v15 = 0;
        v16 = v12 - 1;
        v17 = (v11 + 28);
        do
        {
          v18 = v11 + 16 * v15;
          v19 = *(v18 + 12);
          if (v19 + *(v18 + 8) == *(v17 - 1))
          {
            *(v18 + 12) = *v17 + v19;
          }

          else
          {
            *(v11 + 16 * ++v15) = *(v17 - 3);
          }

          v17 += 4;
          --v16;
        }

        while (v16);
        if (v13)
        {
          goto LABEL_28;
        }
      }

      if (!v14)
      {
        v22 = *(v2 + 700);
        v23 = v22 == 1;
        if (v22 == 1)
        {
          v24 = v15 + 1;
        }

        else
        {
          v24 = v15;
        }

        v25 = v22 == 0;
        if (*(v2 + 700))
        {
          v20 = v24;
        }

        else
        {
          v20 = v15;
        }

        v21 = v25 || v23;
LABEL_45:
        if (*(v2 + 833))
        {
          if (v40 < *(v1 + 9016))
          {
LABEL_80:
            v9[800] = 0;
            return result;
          }

          *(v2 + 832) = 0;
        }

        v38 = v21;
        v39 = v9;
        v26 = 0;
        if (v20)
        {
          v27 = v20;
          v28 = v11;
          v41 = v2;
          while (1)
          {
            if (*(v2 + 721))
            {
              v29 = ((*(v28 + 12) * 1000.0) / *(v1 + 76));
              v30 = *v28;
              v31 = *(v1 + 9312);
              if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
              CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.airplay.realTimeAudioUnderrun", 0, 0, 1u);
              audioSession_addHistogramValue(*(v1 + 2440), @"Histogram_GlitchDuration", v29);
              v33 = *(v1 + 2440);
              if (v30 >= v31)
              {
                audioSession_addHistogramValue(v33, @"Histogram_NonStartupGlitchDuration", v29);
                v2 = v41;
                if (*(v1 + 2384) && APSSettingsIsFeatureEnabled())
                {
                  audioSession_addHistogramValue(*(v1 + 2440), @"Histogram_LiveAdaptiveGlitchDuration", v29);
                }
              }

              else
              {
                audioSession_addHistogramValue(v33, @"Histogram_StartupGlitchDuration", v29);
                v2 = v41;
              }

              v34 = UpTicksToMilliseconds();
              if (v34 >= 0x36EE80)
              {
                v35 = 5.0;
              }

              else
              {
                v35 = 4.0;
              }

              if (v34 < 0x927C0)
              {
                v35 = 3.0;
              }

              if (v34 >> 5 < 0x753)
              {
                v35 = 2.0;
              }

              if (v34 < 0x3E8)
              {
                v35 = 1.0;
              }

              if (v34 < 0x64)
              {
                v35 = 0.0;
              }

              audioSession_addHistogramValue(*(v1 + 2440), @"Histogram_GlitchFreeDuration", v35);
              v36 = *v28;
              result = MillisecondsToUpTicks();
              *(v1 + 9392) = result + v36;
              ++v26;
              if (*(v2 + 832))
              {
                break;
              }
            }

            v28 += 16;
            if (!--v27)
            {
              goto LABEL_75;
            }
          }

          v37 = 0;
          v9 = v39;
          *(v1 + 9016) = *(v1 + 9008) + v40;
          *(v2 + 833) = 1;
          *(v1 + 8876) += v26;
        }

        else
        {
LABEL_75:
          *(v1 + 8876) += v26;
          v9 = v39;
          if (v38)
          {
            v37 = 0;
          }

          else
          {
            *(v1 + 8896) = *(v11 + 16 * v15);
            v37 = 1;
          }
        }

        *(v2 + 700) = v37;
        goto LABEL_80;
      }

      v21 = 0;
LABEL_44:
      v20 = v15;
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t audioSession_log(uint64_t a1)
{
  result = APSRTPPassThroughJitterBufferGetInsertedNodeCount();
  if (*(a1 + 1668) > 0 && *(a1 + 76))
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (result = _LogCategory_Initialize(), result))
      {
        APSSGetGasGaugeStringForPercent();
        return LogPrintF();
      }
    }
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

void audioSession_performPeriodicTasks(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return;
  }

  audioSession_sessionLock(*(a1 + 2360));
  audioSession_processEnqueuedRetransmitCommands(a1);
  audioSession_sessionUnlock(*(a1 + 2360));
  audioSession_flushHistogramMessageQueue(a1);
  v2 = mach_absolute_time();
  if (*(a1 + 1912) != *(a1 + 1916))
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = v2 - *(a1 + 1920);
  if (v2 - *(a1 + 1952) > *(a1 + 1960))
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 40 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      UpTicksPerSecond();
      LogPrintF();
    }

    *(a1 + 1952) = v3;
  }

  if (v4 <= *(a1 + 1928))
  {
LABEL_10:
    v5 = mach_absolute_time();
    if (v5 < *(a1 + 1896))
    {
LABEL_26:
      if (v5 >= *(a1 + 2008))
      {
        atomic_exchange((a1 + 2024), 0);
        atomic_exchange((a1 + 2028), 0);
        atomic_exchange((a1 + 2032), 0);
        v8 = atomic_exchange((a1 + 1992), 0);
        atomic_exchange((a1 + 1996), 0);
        v9 = atomic_exchange((a1 + 2000), 0);
        atomic_exchange((a1 + 2004), 0);
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v8 && gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v9 && gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(a1 + 2008) = *(a1 + 2016) + v5;
      }

      if (v5 >= *(a1 + 9168))
      {
        audioSession_logHistograms(a1);
        *(a1 + 9168) = *(a1 + 9176) + v5;
      }

      if (v5 >= *(a1 + 2056))
      {
        audioSession_reportAudioPerformance(a1, 0);
        v10 = *(a1 + 2064);
        if ((v10 + 1) <= 4)
        {
          *(a1 + 2064) = ++v10;
        }

        v11 = kAirPlayReportRenderDeadlineBackoffSec[v10];
        *(a1 + 2056) = v5 + UpTicksPerSecond() * v11;
      }

      if (APSSettingsIsFeatureEnabled() && *(a1 + 2384) && v5 >= *(a1 + 1968))
      {
        audioSession_reportAudioPerformance(a1, 1);
        *(a1 + 1968) = *(a1 + 1976) + v5;
      }

      if (v5 >= *(a1 + 9376))
      {
        if (*(a1 + 2440) && *(a1 + 40))
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          v13 = *(a1 + 2440);
          if (v13)
          {
            CFDictionaryGetValue(v13, @"Histogram_GlitchDuration");
            v14 = APSStatsHistogramCopyValuesAsRTCString();
            APSStatsHistogramGetTotalSampleCount();
            FigCFDictionarySetInt64();
            CFDictionarySetValue(Mutable, @"glitchDurationHistogram", v14);
            if (v14)
            {
              CFRelease(v14);
            }

            CFDictionaryGetValue(*(a1 + 2440), @"Histogram_GlitchFreeDuration");
            v15 = APSStatsHistogramCopyValuesAsRTCString();
            APSStatsHistogramGetTotalSampleCount();
            FigCFDictionarySetInt64();
            CFDictionarySetValue(Mutable, @"glitchFreeDurationHistogram", v15);
            if (v15)
            {
              CFRelease(v15);
            }

            CFDictionaryGetValue(*(a1 + 2440), @"Histogram_HLANetworkTransitTime");
            v16 = APSStatsHistogramCopyValuesAsRTCString();
            APSStatsHistogramGetTotalSampleCount();
            FigCFDictionarySetInt64();
            CFDictionarySetValue(Mutable, @"receiverNetworkTransitTimeHistogram", v16);
            if (v16)
            {
              CFRelease(v16);
            }
          }

          v17 = CFPreferencesCopyValue(@"ExperimentGroup", @"com.apple.da", @"mobile", *MEMORY[0x277CBF010]);
          if (FigCFEqual())
          {
            FigCFDictionarySetInt64();
          }

          APMediaDataControlServerSendRequest(*(a1 + 40), 1920101748, Mutable, 0, 0);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v17)
          {
            CFRelease(v17);
          }
        }

        *(a1 + 9376) = *(a1 + 9384) + v5;
      }

      if (v5 >= *(a1 + 9192))
      {
        memset(v32, 0, sizeof(v32));
        if (!*(a1 + 9136))
        {
          goto LABEL_98;
        }

        v18 = 0;
        v33 = 0;
        v34 = 0;
        while (1)
        {
          if (!APSAtomicMessageQueueReadMessage())
          {
            goto LABEL_98;
          }

          if (v34 == 1)
          {
            v22 = *(a1 + 2376);
            v23 = v33;
            v24 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v24 || v24(v22, v23, v32))
            {
              APSLogErrorAt();
              if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
              {
LABEL_98:
                *(a1 + 9192) = *(a1 + 9184) + v5;
                break;
              }

LABEL_94:
              LogPrintF();
              goto LABEL_98;
            }

            if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
            {
LABEL_84:
              mach_absolute_time();
              UpTicksToMilliseconds();
              LogPrintF();
            }
          }

          else if (v34 == 2)
          {
            v19 = *(a1 + 2376);
            v20 = v33;
            v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v21 || v21(v19, v20, v32))
            {
              APSLogErrorAt();
              if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
              {
                goto LABEL_98;
              }

              goto LABEL_94;
            }

            if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
            {
              goto LABEL_84;
            }
          }

          ++v18;
        }
      }

      UpTicksToSecondsF();
      if (*(a1 + 9280) <= v25 && (*(a1 + 9272) = v5, (v26 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0))
      {
        v28 = v26;
        AirPlayReceiverSessionControl(v26, v27, @"nanWifiStats", 0, 0, &cf);
        v29 = cf;
        if (cf)
        {
          v30 = *(a1 + 9296);
          CFRetain(cf);
          *(a1 + 9296) = v29;
          if (v30)
          {
            CFRelease(v30);
          }
        }

        APSNetworkClockLogCurrentNetworkTime();
        CFRelease(v28);
      }

      else
      {
        APSNetworkClockLogCurrentNetworkTime();
      }

      goto LABEL_106;
    }

    ++*(a1 + 1888);
    v6 = *(a1 + 8876);
    v7 = v6 - *(a1 + 8880);
    *(a1 + 8880) = v6;
    if (v7 < 1)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
      {
        if (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }
    }

    else
    {
      ++*(a1 + 8888);
      if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
      {
        if (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize())
        {
LABEL_17:
          LogPrintF();
        }

LABEL_21:
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }
    }

    *(a1 + 1896) = *(a1 + 1904) + v5;
    goto LABEL_26;
  }

LABEL_106:
  if (cf)
  {
    CFRelease(cf);
  }
}

void audioSession_reportAudioPerformance(uint64_t a1, int a2)
{
  v3 = *(a1 + 2440);
  if (v3)
  {
    if (*(a1 + 40) && *(a1 + 2040) != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a2)
      {
        v5 = @"Histogram_LiveAdaptiveGlitchDuration";
      }

      else
      {
        v5 = @"Histogram_NonStartupGlitchDuration";
      }

      Value = CFDictionaryGetValue(v3, v5);
      if (!Value)
      {
        goto LABEL_20;
      }

      if (!APSStatsHistogramCreateSerializedDictionary())
      {
        if (a2)
        {
          APSStatsHistogramRemoveAllValues();
          v7 = mach_absolute_time();
          UpTicksToSeconds();
          *(a1 + 1984) = v7;
        }

        else
        {
          mach_absolute_time();
          UpTicksToSeconds();
        }

        Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Value && !FigCFDictionarySetInt32() && !CFDictionarySetInt64())
        {
          if (a2)
          {
            v8 = CFDictionarySetInt64();
            *(a1 + 2048) = 0x7FFFFFFFFFFFFFFFLL;
            if (!v8)
            {
              goto LABEL_19;
            }
          }

          else if (!CFDictionarySetInt64())
          {
LABEL_19:
            FigCFDictionarySetValue();
            APMediaDataControlServerSendRequest(*(a1 + 40), 1918989680, Value, 0, 0);
            goto LABEL_20;
          }
        }

        APSLogErrorAt();
LABEL_28:
        if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_20;
      }

      APSLogErrorAt();
      if (gLogCategory_APReceiverAudioSessionRealTime <= 90)
      {
        if (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }

        Value = 0;
        goto LABEL_28;
      }
    }

    Value = 0;
LABEL_20:
    if (Value)
    {
      CFRelease(Value);
    }
  }
}

uint64_t audioSession_networkThread(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 96))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 52);
  }

  v3 = *(a1 + 1600);
  v4 = *(a1 + 48);
  pthread_setname_np("AirPlayAudioReceiver");
  if (*(a1 + 96))
  {
    FigThreadGetMachThreadPriorityValue();
  }

  SetCurrentThreadPriority();
  if (v2 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v2;
  }

  v6 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v5 = -1;
  }

  if (v3 > v5)
  {
    v5 = v3;
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  memset(&v23, 0, sizeof(v23));
  v8 = v4 >> 5;
  v22 = 1 << v2;
  v21 = v2 >> 5;
  v9 = 1 << v3;
  v10 = v3 >> 5;
  v11 = 1 << v4;
  v20 = v7;
  v19 = v2;
  if (!v6)
  {
LABEL_17:
    if (__darwin_check_fd_set_overflow(v2, &v23, 0))
    {
      v23.fds_bits[v21] |= v22;
    }

    goto LABEL_19;
  }

  while (1)
  {
LABEL_19:
    if (__darwin_check_fd_set_overflow(v3, &v23, 0))
    {
      v23.fds_bits[v10] |= v9;
    }

    if (__darwin_check_fd_set_overflow(v4, &v23, 0))
    {
      v23.fds_bits[v8] |= v11;
    }

    v12 = select(v7 + 1, &v23, 0, 0, 0);
    if (v12 > 0)
    {
      break;
    }

    if (!v12 || !*__error())
    {
      goto LABEL_42;
    }

    v15 = *__error();
    if (!v15)
    {
      break;
    }

    if (v15 != 4)
    {
LABEL_42:
      usleep(0x186A0u);
    }

LABEL_68:
    if (!*(a1 + 96))
    {
      goto LABEL_17;
    }
  }

  if (!*(a1 + 96) && __darwin_check_fd_set_overflow(v2, &v23, 0) && (v23.fds_bits[v21] & v22) != 0)
  {
    v30 = 0;
    v16 = *(a1 + 560);
    *&v24 = 0;
    if (!APSRTPPassThroughJitterBufferAcquireRelinquishedNode())
    {
      APTTrafficMetricsMessageReadStarted();
      v17 = SocketRecvFrom();
      APTTrafficMetricsMessageReadFinished();
      if (v17 == 35)
      {
LABEL_51:
        APTTrafficMetricsMessageProcessed();
        v7 = v20;
        if (v30)
        {
          APSRTPPassThroughJitterBufferRelinquishNode();
        }

        APSNetworkClockLogCurrentNetworkTime();
        v2 = v19;
        goto LABEL_25;
      }

      if (!v17)
      {
        if (!v16 && *(a1 + 560) && gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        atomic_fetch_add((a1 + 2024), v24);
        if (!audioSession_processPacket(a1))
        {
          v30 = 0;
        }

        goto LABEL_51;
      }
    }

    APSLogErrorAt();
    goto LABEL_51;
  }

LABEL_25:
  if (__darwin_check_fd_set_overflow(v3, &v23, 0) && (v23.fds_bits[v10] & v9) != 0)
  {
    bzero(&v30, 0x5A4uLL);
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    APTTrafficMetricsMessageReadStarted();
    v13 = SocketRecvFrom();
    APTTrafficMetricsMessageReadFinished();
    if (v13 == 35)
    {
      goto LABEL_65;
    }

    if (v13)
    {
      goto LABEL_80;
    }

    atomic_fetch_add((a1 + 2028), v28);
    v14 = v28 - 4;
    if (v28 < 4 || (v30 & 0xC0) != 0x80)
    {
      goto LABEL_65;
    }

    if (BYTE1(v30) == 215)
    {
      if (v28 > 0x1B)
      {
        LODWORD(v24) = 2;
        BYTE8(v24) = v30;
        *(&v25 + 1) = bswap64(v31) / 1000000000.0;
        HIDWORD(v24) = bswap32(HIDWORD(v30));
        LODWORD(v25) = bswap32(v32);
        v26 = bswap64(v33);
        while (!APSAtomicMessageQueueSendMessage())
        {
          usleep(1u);
        }

        goto LABEL_64;
      }

LABEL_80:
      APSLogErrorAt();
      goto LABEL_65;
    }

    if (BYTE1(v30) != 214)
    {
      if (BYTE1(v30) == 212)
      {
        if (v28 > 0x13)
        {
          BYTE8(v24) = v30;
          LODWORD(v24) = 1;
          *(&v25 + 1) = bswap32(v31) + bswap32(HIDWORD(v31)) * 2.32830644e-10 + -2208988800.0;
          HIDWORD(v24) = bswap32(HIDWORD(v30));
          LODWORD(v25) = bswap32(v32);
          v26 = 0;
          while (!APSAtomicMessageQueueSendMessage())
          {
            usleep(1u);
          }

LABEL_64:
          audioSession_logTimeAnnounce(a1, &v24);
          kdebug_trace();
          goto LABEL_65;
        }

        goto LABEL_80;
      }

LABEL_65:
      APTTrafficMetricsMessageProcessed();
      v7 = v20;
      goto LABEL_66;
    }

    if (v28 == 8)
    {
      WORD2(v30) = bswap32(WORD2(v30)) >> 16;
      audioSession_enqueueRetransmitCommand(a1);
      ++*(a1 + 2296);
      goto LABEL_65;
    }

    if (v28 < 0x10)
    {
      goto LABEL_65;
    }

    v29 = 0;
    if (*(a1 + 2240))
    {
      if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_91;
      }
    }

    else
    {
      if (!*(a1 + 96))
      {
        if (APSRTPPassThroughJitterBufferAcquireRelinquishedNode() || *(a1 + 1672) < v14)
        {
          APSLogErrorAt();
        }

        else
        {
          memcpy(*(v29 + 24), &v30 + 4, v14);
          if (!audioSession_processPacket(a1))
          {
            v29 = 0;
LABEL_77:
            APSNetworkClockLogCurrentNetworkTime();
            ++*(a1 + 2292);
            goto LABEL_65;
          }
        }

LABEL_91:
        if (v29)
        {
          APSRTPPassThroughJitterBufferRelinquishNode();
        }

        goto LABEL_77;
      }

      if (gLogCategory_APReceiverAudioSessionRealTime > 90 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_91;
      }
    }

    LogPrintF();
    goto LABEL_91;
  }

LABEL_66:
  if (!__darwin_check_fd_set_overflow(v4, &v23, 0) || (v23.fds_bits[v8] & v11) == 0)
  {
    goto LABEL_68;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 30 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t audioSession_logTimeAnnounce(uint64_t result, _DWORD *a2)
{
  if ((*a2 - 3) >= 0xFFFFFFFE)
  {
    v9 = v2;
    v10 = v3;
    memset(v8, 0, sizeof(v8));
    v4 = *(result + 2376);
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 16);
    result = VTable + 16;
    v7 = *(v6 + 8);
    if (v7)
    {
      result = v7(v4, v8);
    }

    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime != -1)
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

uint64_t APReceiverAudioSessionRealTimeStopPacketProcesser(uint64_t a1, const __CFDictionary *a2)
{
  v2 = a1;
  v16 = 0;
  if (!a1)
  {
    return v2;
  }

  if (*(a1 + 9072))
  {
    if (*(a1 + 64) && *(a1 + 48))
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        context[0] = *(a1 + 40);
        context[1] = 0;
        dispatch_sync_f(*(v4 + 112), context, controlServer_stopInternal);
      }

      SendSelfConnectedLoopbackMessage();
      pthread_join(*(v2 + 56), 0);
      *(v2 + 64) = 0;
      *(v2 + 8912) = 1;
      audioSession_performGlitchCollection(v2);
      *(v2 + 8913) = 0;
      APSIOReporterGetCoreCaptureCount();
      v5 = *(v2 + 9032);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke;
      block[3] = &__block_descriptor_tmp_494;
      block[4] = v2;
      dispatch_sync(v5, block);
      v6 = *(v2 + 9152);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke_2;
      v14[3] = &__block_descriptor_tmp_171;
      v14[4] = v2;
      dispatch_sync(v6, v14);
      v7 = *(v2 + 9032);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke_3;
      v13[3] = &__block_descriptor_tmp_172;
      v13[4] = v2;
      dispatch_sync(v7, v13);
      APSCopyTightSyncInfo();
      if (v16)
      {
        *(v2 + 9409) = 1;
      }

      if (a2)
      {
        *(v2 + 8984) = CFDictionaryGetInt64();
        *(v2 + 8992) = CFDictionaryGetInt64();
        *(v2 + 9000) = CFDictionaryGetInt64();
        *(v2 + 9320) = CFDictionaryGetInt64();
        *(v2 + 9328) = CFDictionaryGetInt64();
        v8 = *(v2 + 9288);
        Value = CFDictionaryGetValue(a2, @"senderNANWifiStats");
        v10 = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        *(v2 + 9288) = v10;
        if (v8)
        {
          CFRelease(v8);
        }
      }

      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v2 + 9048) = mach_absolute_time();
      *(v2 + 9072) = 0;
      v2 = *(v2 + 120);
      if (!v2)
      {
        goto LABEL_22;
      }

      v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v11)
      {
        v11(v2, 0);
      }
    }

    v2 = 0;
  }

  else
  {
    APSLogErrorAt();
    v2 = 4294895143;
  }

LABEL_22:
  if (v16)
  {
    CFRelease(v16);
  }

  return v2;
}

void __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 9056);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 9056));
    dispatch_release(v2);
    *(*(a1 + 32) + 9056) = 0;
  }
}

void __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 9144);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 9144));
    dispatch_release(v2);
    *(*(a1 + 32) + 9144) = 0;
  }
}

void __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 9064);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 9064));
    dispatch_release(v2);
    *(*(a1 + 32) + 9064) = 0;
  }
}

uint64_t APReceiverAudioSessionRealTimeUpdateLatency(_DWORD *a1)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  v2 = a1[413];
  v3 = a1[412];
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v5 < 0 != v4)
  {
    if (v3 < 22051)
    {
      v5 = -v3;
    }

    else
    {
      v5 = -441000;
      a1[444] = -441000;
      if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
      {
        if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (v7 = _LogCategory_Initialize(), v5 = a1[444], v7))
        {
          LogPrintF();
          v5 = a1[444];
        }
      }
    }
  }

  a1[444] = v5 - a1[2272] * a1[22] + gAirTunesRelativeTimeOffset;
  if (gLogCategory_APReceiverAudioSessionRealTime > 50)
  {
    return 0;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APReceiverAudioSessionRealTimeCopyMetrics(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
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
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      return 0;
    }

    else
    {
      APSLogErrorAt();
      return 4294895145;
    }
  }

  else
  {
    v2 = 4294895144;
    APSLogErrorAt();
  }

  return v2;
}

uint64_t APReceiverAudioSessionRealTimeLogEnded(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    APSLogErrorAt();
    return 4294895145;
  }

  v2 = result;
  v3 = *(result + 2320);
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = (v3 / 0xF4240);
  }

  v5 = *(result + 2328);
  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v5 / 0xF4240);
  }

  v7 = *(result + 2336);
  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v7 / 0xF4240);
  }

  v9 = UpTicksToSeconds();
  DataBuffer_AppendF();
  *(&v46 + 1) = v6;
  v47 = v8;
  *&v46 = v4;
  DataBuffer_AppendF();
  v42 = dword_27E37EEE0;
  v43 = *(v2 + 2348);
  v44 = *(v2 + 2352);
  v45 = *(v2 + 1880) / 0x64uLL;
  DataBuffer_AppendF();
  v41 = *(v2 + 2116);
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = *(v2 + 8968);
  v12 = *(v2 + 8960);
  if (v11 >= v12)
  {
    v13 = v11 - v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v2 + 8976);
  if (v13 >= v14)
  {
    v15 = v13 - v14;
  }

  else
  {
    v15 = 0;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime != -1)
    {
LABEL_20:
      v49 = *(v2 + 9320);
      v50 = *(v2 + 9328);
      v47 = *(v2 + 9000);
      v48 = *(v2 + 8944);
      v46 = *(v2 + 8984);
      v44 = v14;
      v45 = v15;
      v42 = v11;
      v43 = v13;
      v41 = v12;
      LogPrintF();
      goto LABEL_22;
    }

    if (_LogCategory_Initialize())
    {
      v12 = *(v2 + 8960);
      v11 = *(v2 + 8968);
      v14 = *(v2 + 8976);
      goto LABEL_20;
    }
  }

LABEL_22:
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  audioSession_updateCallDurationMetric(v2, 0);
  FigCFDictionarySetInt64();
  v16 = *(v2 + 9288);
  if (v16)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (v17 = _LogCategory_Initialize(), v16 = *(v2 + 9288), v17))
      {
        v41 = v16;
        LogPrintF();
      }
    }

    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFBooleanGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
  }

  v18 = *(v2 + 9296);
  if (v18)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (v19 = _LogCategory_Initialize(), v18 = *(v2 + 9296), v19))
      {
        v41 = v18;
        LogPrintF();
      }
    }

    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFBooleanGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
  }

  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v20 = *(v2 + 2440);
  if (v20)
  {
    CFDictionaryGetValue(v20, @"Histogram_GlitchDuration");
    v21 = APSStatsHistogramCopyValuesAsRTCString();
    APSStatsHistogramGetTotalSampleCount();
    FigCFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"glitchDurationHistogram", v21);
    if (v21)
    {
      CFRelease(v21);
    }

    CFDictionaryGetValue(*(v2 + 2440), @"Histogram_StartupGlitchDuration");
    v22 = APSStatsHistogramCopyValuesAsRTCString();
    APSStatsHistogramGetTotalSampleCount();
    FigCFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"startupGlitchDurationHistogram", v22);
    if (v22)
    {
      CFRelease(v22);
    }

    CFDictionaryGetValue(*(v2 + 2440), @"Histogram_NetworkTransitTime");
    v23 = APSStatsHistogramCopyValuesAsRTCString();
    APSStatsHistogramGetTotalSampleCount();
    FigCFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"receiverRenderDeadlineHistogram", v23);
    if (v23)
    {
      CFRelease(v23);
    }

    CFDictionaryGetValue(*(v2 + 2440), @"Histogram_RenderRedundancyLevel");
    v24 = APSStatsHistogramCopyValuesAsRTCString();
    APSStatsHistogramGetTotalSampleCount();
    FigCFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"renderRedundancyLevelHistogram", v24);
    if (v24)
    {
      CFRelease(v24);
    }
  }

  v25 = *MEMORY[0x277CBECE8];
  v26 = *(v2 + 156);
  if (v26 <= 15)
  {
    if (v26 > 3)
    {
      if (v26 == 4)
      {
        v27 = "AWDL";
        goto LABEL_67;
      }

      if (v26 == 8)
      {
        v27 = "USB";
        goto LABEL_67;
      }
    }

    else
    {
      if (v26 == 1)
      {
        v27 = "Enet";
        goto LABEL_67;
      }

      if (v26 == 2)
      {
        v27 = "WiFi";
        goto LABEL_67;
      }
    }
  }

  else if (v26 <= 63)
  {
    if (v26 == 16)
    {
      v27 = "Direct";
      goto LABEL_67;
    }

    if (v26 == 32)
    {
      v27 = "BTLE";
      goto LABEL_67;
    }
  }

  else
  {
    switch(v26)
    {
      case 64:
        v27 = "WFD";
        goto LABEL_67;
      case 128:
        v27 = "NAN";
        goto LABEL_67;
      case 256:
        v27 = "IPsecBT";
        goto LABEL_67;
    }
  }

  if (v26 == 512)
  {
    v27 = "IPSecWiFi";
  }

  else
  {
    v27 = "?";
  }

LABEL_67:
  v28 = CFStringCreateWithFormat(v25, 0, @"%s", v27, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v29 = *(v2 + 72);
  if (v29 <= 31)
  {
    if (v29 <= 3)
    {
      if (v29 == 1)
      {
        v30 = "PCM";
        goto LABEL_97;
      }

      if (v29 == 2)
      {
        v30 = "ALAC";
        goto LABEL_97;
      }
    }

    else
    {
      switch(v29)
      {
        case 4:
          v30 = "AAC-LC";
          goto LABEL_97;
        case 8:
          v30 = "AAC-ELD";
          goto LABEL_97;
        case 16:
          v30 = "H.264";
          goto LABEL_97;
      }
    }

LABEL_92:
    if (v29 == 2048)
    {
      v30 = "QLAC";
    }

    else if (v29 == 4096)
    {
      v30 = "APAC";
    }

    else
    {
      v30 = "?";
    }

    goto LABEL_97;
  }

  if (v29 > 255)
  {
    switch(v29)
    {
      case 256:
        v30 = "QC3";
        goto LABEL_97;
      case 512:
        v30 = "QAAC-HE";
        goto LABEL_97;
      case 1024:
        v30 = "QAAC-LC";
        goto LABEL_97;
    }

    goto LABEL_92;
  }

  if (v29 == 32)
  {
    v30 = "Opus";
    goto LABEL_97;
  }

  if (v29 == 64)
  {
    v30 = "HEVC";
    goto LABEL_97;
  }

  if (v29 != 128)
  {
    goto LABEL_92;
  }

  v30 = "DDPLUS";
LABEL_97:
  v31 = CFStringCreateWithFormat(v25, 0, @"%s", v30);
  v32 = *(v2 + 136);
  if (v32)
  {
    CFDictionarySetValue(Mutable, @"clientDeviceModel", v32);
  }

  v33 = *(v2 + 144);
  if (v33)
  {
    CFDictionarySetValue(Mutable, @"clientOSBuildVersionNumber", v33);
  }

  CFDictionarySetValue(Mutable, @"transportType", v28);
  CFDictionarySetValue(Mutable, @"codecType", v31);
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  v35 = 600;
  if (v9 > 0x258)
  {
    v35 = v9;
  }

  LODWORD(v34) = *(v2 + 76);
  v36 = (v34 * 0.1 * v35);
  v37 = 2 * v35;
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  v38 = *(v2 + 9128);
  if (v37 <= v38)
  {
    LODWORD(v38) = v37;
  }

  *(v2 + 9128) = v38;
  FigCFDictionarySetInt64();
  v39 = *(v2 + 9132);
  if (v39 >= v36)
  {
    LODWORD(v39) = v36;
  }

  *(v2 + 9132) = v39;
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, @"sessionType", @"AudioRealTime");
  v40 = CFPreferencesCopyValue(@"ExperimentGroup", @"com.apple.da", @"mobile", *MEMORY[0x277CBF010]);
  if (FigCFEqual())
  {
    FigCFDictionarySetInt64();
  }

  APSRTCReportingAgentSendMediaEvent();
  APSRTCReportingAgentSendEvent();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  return 0;
}

CFMutableDictionaryRef APReceiverAudioSessionRealTimeCopyAudioBufferInfo(uint64_t a1, int *a2)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v4 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (v4)
      {
        CFRelease(v4);
        v5 = 0;
      }

      else
      {
        v5 = -72150;
        APSLogErrorAt();
        CFRelease(Mutable);
        Mutable = 0;
      }
    }

    else
    {
      v5 = -72150;
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    Mutable = 0;
    v5 = -72152;
  }

  if (a2)
  {
    *a2 = v5;
  }

  return Mutable;
}

uint64_t APReceiverAudioSessionRealTimeCopyProperty(uint64_t a1, CFTypeRef cf1, int *a3)
{
  v13 = 0;
  if (!a1)
  {
    goto LABEL_30;
  }

  if (!cf1)
  {
    APSLogErrorAt();
    result = 0;
    v10 = -72151;
    goto LABEL_32;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 30 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(cf1, @"AudioFormat"))
  {
    v6 = *(a1 + 2368);
    goto LABEL_9;
  }

  if (CFEqual(cf1, @"CompressionType"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 72);
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"MediaDataControlPort"))
  {
    result = CFNumberCreateInt64();
    if (a3)
    {
      goto LABEL_20;
    }

    return result;
  }

  if (CFEqual(cf1, @"MaximumLatency"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 1656);
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"MinimumLatency"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 1652);
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"NumberOfChannels"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 80);
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"PlatformAudioLatency"))
  {
    audioSession_sessionLock(*(a1 + 2360));
    v12 = *(a1 + 1648);
    audioSession_sessionUnlock(*(a1 + 2360));
    v8 = *MEMORY[0x277CBECE8];
    v9 = &v12;
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"RTCPPort"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 1604);
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"RTCPPortRemote"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 1608);
    goto LABEL_13;
  }

  if (!CFEqual(cf1, @"AudioPort"))
  {
    if (CFEqual(cf1, @"AudioNetworkInfo"))
    {
      v6 = *(a1 + 520);
      if (!v6)
      {
LABEL_30:
        APSLogErrorAt();
        result = 0;
        v10 = -72152;
        goto LABEL_32;
      }
    }

    else
    {
      if (CFEqual(cf1, @"SampleRate"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 76);
LABEL_13:
        result = CFNumberCreate(v8, kCFNumberSInt32Type, v9);
        if (!a3)
        {
          return result;
        }

        goto LABEL_20;
      }

      if (!CFEqual(cf1, @"IsUsingScreen"))
      {
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        result = 0;
        v10 = -72154;
        goto LABEL_32;
      }

      v11 = MEMORY[0x277CBED28];
      if (!*(a1 + 2384))
      {
        v11 = MEMORY[0x277CBED10];
      }

      v6 = *v11;
    }

LABEL_9:
    result = CFRetain(v6);
    if (!a3)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!*(a1 + 96))
  {
LABEL_40:
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 512);
    goto LABEL_13;
  }

  if (*(a1 + 520))
  {
    *(a1 + 512) = CFDictionaryGetInt64();
    goto LABEL_40;
  }

  APSLogErrorAt();
  result = 0;
  v10 = -72153;
LABEL_32:
  v13 = v10;
  if (a3)
  {
LABEL_20:
    *a3 = v13;
  }

  return result;
}

uint64_t APReceiverAudioSessionRealTimeSetProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3)
{
  v12 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    return -72152;
  }

  if (!cf1 || !a3)
  {
    APSLogErrorAt();
    return -72151;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 30 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!CFEqual(cf1, @"VolumeLinear"))
  {
    if (CFEqual(cf1, @"PlatformAudioLatency"))
    {
      v8 = CFGetInt64Ranged();
      audioSession_sessionLock(*(a1 + 2360));
      *(a1 + 1648) = v8;
LABEL_14:
      audioSession_sessionUnlock(*(a1 + 2360));
      return v12;
    }

    if (CFEqual(cf1, @"RTCMetadata"))
    {
      APSRTCReportingAgentSendMediaEvent();
      return v12;
    }

    if (CFEqual(cf1, @"timelineOffset"))
    {
      v10 = CFGetInt64();
      if ((v10 - 251) > 0xFFFFFE0A)
      {
        audioSession_sessionLock(*(a1 + 2360));
        gAirTunesRelativeTimeOffset = v10;
        goto LABEL_14;
      }

      APSLogErrorAt();
      return -6710;
    }

    else
    {
      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return -72154;
    }
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = APReceiverAudioSessionPlatformSetProperty(*a1, v6, @"RASP::VolumeLinear", v7, a3);
  if (v12)
  {
    APSLogErrorAt();
  }

  return v12;
}

uint64_t APReceiverStatsCollectorGetTypeID()
{
  if (APReceiverStatsCollectorGetTypeID_once != -1)
  {
    dispatch_once(&APReceiverStatsCollectorGetTypeID_once, &__block_literal_global_536);
  }

  return APReceiverStatsCollectorGetTypeID_typeID;
}

uint64_t __APReceiverStatsCollectorGetTypeID_block_invoke()
{
  APReceiverStatsCollectorGetTypeID_statsCollectorClass = 0;
  unk_27E37EBE0 = "APReceiverStatsCollector";
  qword_27E37EBE8 = aprstats_Init;
  unk_27E37EBF0 = 0;
  qword_27E37EBF8 = aprstats_Finalize;
  unk_27E37EC00 = 0;
  qword_27E37EC08 = 0;
  unk_27E37EC10 = 0;
  qword_27E37EC18 = aprstats_CopyDebugDescription;
  result = _CFRuntimeRegisterClass();
  APReceiverStatsCollectorGetTypeID_typeID = result;
  return result;
}

CFStringRef aprstats_CopyDebugDescription(const void *a1)
{
  ASPrintF();
  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithFormat(v2, 0, @"<APReceiverStatsCollector %p %s>", a1, 0);
  free(0);
  return v3;
}

void aprstats_Finalize(void *a1)
{
  if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  APReceiverStatsCollectorDisableHUD(a1);
  v2 = a1[25];
  if (v2)
  {
    CFRelease(v2);
    a1[25] = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }

  v4 = a1[15];
  if (v4)
  {
    CFRelease(v4);
    a1[15] = 0;
  }

  v5 = a1[16];
  if (v5)
  {
    CFRelease(v5);
    a1[16] = 0;
  }

  v6 = a1[17];
  if (v6)
  {
    CFRelease(v6);
    a1[17] = 0;
  }

  v7 = a1[34];
  if (v7)
  {
    CFRelease(v7);
    a1[34] = 0;
  }

  v8 = a1[2];
  if (v8)
  {
    dispatch_release(v8);
    a1[2] = 0;
  }
}

void APReceiverStatsCollectorDisableHUD(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __APReceiverStatsCollectorDisableHUD_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(v2, block);
    }
  }
}

uint64_t __APReceiverStatsCollectorDisableHUD_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 256))
  {
    v2 = result;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [*(v1 + 32) removeFromSuperlayer];

    *(v1 + 32) = 0;
    [*(v1 + 40) removeFromSuperlayer];

    *(v1 + 40) = 0;
    *(v1 + 24) = 0;
    v3 = *(v1 + 264);
    if (v3)
    {
      [objc_msgSend(v3 "layer")];

      *(v1 + 264) = 0;
    }

    result = [MEMORY[0x277CD9FF0] commit];
    if (gLogCategory_APReceiverStatsCollector <= 30)
    {
      if (gLogCategory_APReceiverStatsCollector != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    *(*(v2 + 32) + 256) = 0;
  }

  return result;
}