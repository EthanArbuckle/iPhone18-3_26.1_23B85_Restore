uint64_t SPHubbedDevicesProviderStartAsync(const void *a1)
{
  if (a1)
  {
    CFRetain(a1);
    global_queue = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __SPHubbedDevicesProviderStartAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_33;
    block[4] = a1;
    dispatch_async(global_queue, block);
    v3 = 0;
    v4 = 50;
  }

  else
  {
    SPHubbedDevicesProviderStartAsync_cold_1();
    v3 = 4294960591;
    v4 = 90;
  }

  if (v4 >= gLogCategory_SPHubbedDevicesProvider && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v3;
}

void __SPHubbedDevicesProviderStartAsync_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v3(v2);
  }

  if (gLogCategory_SPHubbedDevicesProvider <= 50 && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    __SPHubbedDevicesProviderStartAsync_block_invoke_cold_1();
  }

  v4 = *(a1 + 32);

  CFRelease(v4);
}

uint64_t SPHubbedDevicesProviderStartService(void *a1)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (!MEMORY[0x223DAEBE0]() || FigServer_IsAirplayd())
  {
    SPHubbedDevicesProviderStartService_cold_2();
    v3 = 90;
    result = 4294960561;
    goto LABEL_13;
  }

  if (SPHubbedDevicesProviderStartService_onceToken != -1)
  {
    SPHubbedDevicesProviderStartService_cold_1();
  }

  result = _MergedGlobals_16;
  if (a1 && !_MergedGlobals_16)
  {
    *a1 = qword_280FB1B48;
LABEL_12:
    v3 = 50;
    goto LABEL_13;
  }

  if (!_MergedGlobals_16)
  {
    goto LABEL_12;
  }

  v3 = 90;
LABEL_13:
  if (v3 >= gLogCategory_SPHubbedDevicesProvider)
  {
    if (gLogCategory_SPHubbedDevicesProvider != -1 || (v4 = _LogCategory_Initialize(), result = _MergedGlobals_16, v4))
    {
      LogPrintF();
      return _MergedGlobals_16;
    }
  }

  return result;
}

void __SPHubbedDevicesProviderStartService_block_invoke()
{
  v4 = 0;
  v0 = SPGetEndpointManager(&v4);
  _MergedGlobals_16 = v0;
  if (v0)
  {
    if (v0 == -72390)
    {
      _MergedGlobals_16 = -6735;
    }

    else
    {
      APSLogErrorAt();
    }
  }

  else if (v4)
  {
    __SPHubbedDevicesProviderStartService_block_invoke_cold_1(&v4);
  }

  else
  {
    __SPHubbedDevicesProviderStartService_block_invoke_cold_2();
  }

  v1 = qword_280FB1B48;
  if (_MergedGlobals_16)
  {
    v2 = qword_280FB1B48 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(v1);
    }

    if (qword_280FB1B48)
    {
      CFRelease(qword_280FB1B48);
      qword_280FB1B48 = 0;
    }
  }
}

void hubbedDevicesProviderRemote_updateRemoteManager(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!a1)
  {
    hubbedDevicesProviderRemote_updateRemoteManager_cold_4();
LABEL_23:
    v4 = 90;
    goto LABEL_14;
  }

  if (!a2)
  {
    hubbedDevicesProviderRemote_updateRemoteManager_cold_3();
    goto LABEL_23;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(a2, @"HubbedDevices", *MEMORY[0x277CBECE8], &cf))
  {
LABEL_12:
    APSLogErrorAt();
LABEL_13:
    v4 = 90;
    goto LABEL_14;
  }

  if (!cf)
  {
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6 && !v6(CMBaseObject, @"SPEndpointManagerProperty_HubbedDeviceIDs", 0))
    {
      v4 = 50;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (FigCFSetCopyValuesAsCFArray())
  {
    hubbedDevicesProviderRemote_updateRemoteManager_cold_1();
    goto LABEL_13;
  }

  hubbedDevicesProviderRemote_updateRemoteManager_cold_2();
  v4 = 90;
LABEL_14:
  if (v4 >= gLogCategory_SPHubbedDevicesProvider && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t APCarPlay_AddSignPostTimeInfoToTimeStore(const void *a1, uint64_t a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (IsAppleInternalBuild())
  {
    v4 = mach_absolute_time();
  }

  else
  {
    v4 = 0;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__5;
  v5 = getCARConnectionTimeStoreClass_softClass;
  v29 = __Block_byref_object_dispose__5;
  v30 = getCARConnectionTimeStoreClass_softClass;
  if (!getCARConnectionTimeStoreClass_softClass)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getCARConnectionTimeStoreClass_block_invoke;
    v23 = &unk_27849ACC8;
    v24 = &v25;
    __getCARConnectionTimeStoreClass_block_invoke(&v20);
    v5 = v26[5];
  }

  _Block_object_dispose(&v25, 8);
  v6 = objc_alloc_init(v5);
  v15[5] = v6;
  if (v6)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3052000000;
    v28 = __Block_byref_object_copy__5;
    v7 = getCARConnectionEventClass_softClass;
    v29 = __Block_byref_object_dispose__5;
    v30 = getCARConnectionEventClass_softClass;
    if (!getCARConnectionEventClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getCARConnectionEventClass_block_invoke;
      v23 = &unk_27849ACC8;
      v24 = &v25;
      __getCARConnectionEventClass_block_invoke(&v20);
      v7 = v26[5];
    }

    _Block_object_dispose(&v25, 8);
    v8 = [v7 eventWithName:a1 type:3 date:objc_msgSend(MEMORY[0x277CBEAA8] payload:{"date"), a2}];
    if (a1)
    {
      CFRetain(a1);
    }

    v9 = v15[5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __APCarPlay_AddSignPostTimeInfoToTimeStore_block_invoke;
    v12[3] = &unk_27849F960;
    v12[6] = a1;
    v12[7] = v4;
    v12[4] = v13;
    v12[5] = &v14;
    [v9 sendConnectionEvent:v8 completion:v12];
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = 0;
  }

  else
  {
    APSLogErrorAt();
    v10 = 4294960568;
  }

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void sub_22213ACE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose((v10 - 128), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlay_CRFetchInstrumentClusterURLs(CFTypeRef *a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (IsAppleInternalBuild())
  {
    v3 = mach_absolute_time();
  }

  else
  {
    v3 = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __APCarPlay_CRFetchInstrumentClusterURLs_block_invoke;
  v12[3] = &unk_27849F988;
  v12[5] = &v18;
  v12[6] = v13;
  v12[7] = &v14;
  v12[8] = v3;
  v12[4] = v2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v4 = getCRFetchInstrumentClusterURLsSymbolLoc_ptr;
  v30 = getCRFetchInstrumentClusterURLsSymbolLoc_ptr;
  if (!getCRFetchInstrumentClusterURLsSymbolLoc_ptr)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getCRFetchInstrumentClusterURLsSymbolLoc_block_invoke;
    v25 = &unk_27849ACC8;
    v26 = &v27;
    v5 = CarKitLibrary();
    v6 = dlsym(v5, "CRFetchInstrumentClusterURLs");
    *(v26[1] + 24) = v6;
    getCRFetchInstrumentClusterURLsSymbolLoc_ptr = *(v26[1] + 24);
    v4 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (v4)
  {
    v4(v12);
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v2, v7))
    {
      if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v19 + 6) = -1;
    }

    v8 = v15[3];
    if (v8)
    {
      if (a1)
      {
        *a1 = CFRetain(v8);
        v8 = v15[3];
      }

      CFRelease(v8);
    }

    dispatch_release(v2);
    v9 = *(v19 + 6);
    _Block_object_dispose(v13, 8);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
    return v9;
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    result = [v11 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_CRFetchInstrumentClusterURLs(void (^)(NSArray<NSURL *> * description:{NSError *))"), @"APCarPlayCarServicesInterface.m", 69, @"%s", dlerror()}];
    __break(1u);
  }

  return result;
}

void sub_22213B228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose((v28 - 96), 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v6 = dispatch_semaphore_create(0);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (IsAppleInternalBuild())
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke;
  v16[3] = &unk_27849F988;
  v16[5] = &v22;
  v16[6] = v17;
  v16[7] = &v18;
  v16[8] = v7;
  v16[4] = v6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v8 = getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_ptr;
  v34 = getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_ptr;
  if (!getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_ptr)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_block_invoke;
    v29 = &unk_27849ACC8;
    v30 = &v31;
    v9 = CarKitLibrary();
    v10 = dlsym(v9, "CRFetchScaledDisplaysForCertificateSerialNumber");
    *(v30[1] + 24) = v10;
    getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_ptr = *(v30[1] + 24);
    v8 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (v8)
  {
    v8(a1, a2, v16);
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v6, v11))
    {
      if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v23 + 6) = -1;
    }

    v12 = v19[3];
    if (v12)
    {
      if (a3)
      {
        *a3 = CFRetain(v12);
        v12 = v19[3];
      }

      CFRelease(v12);
    }

    dispatch_release(v6);
    v13 = *(v23 + 6);
    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
    return v13;
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    result = [v15 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_CRFetchScaledDisplaysForCertificateSerialNumber(NSData * description:{NSArray<NSDictionary *> *, void (^)(NSArray<NSDictionary *> *, NSError *))"), @"APCarPlayCarServicesInterface.m", 74, @"%s", dlerror()}];
    __break(1u);
  }

  return result;
}

void sub_22213B75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose((v28 - 112), 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlay_FetchUIContextMasterURLList(CFTypeRef *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = dispatch_semaphore_create(0);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v3 = objc_alloc_init(getCRSAppHistoryControllerClass());
  if (v3)
  {
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (IsAppleInternalBuild())
    {
      v4 = mach_absolute_time();
    }

    else
    {
      v4 = 0;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __APCarPlay_FetchUIContextMasterURLList_block_invoke;
    v9[3] = &unk_27849F988;
    v9[5] = &v15;
    v9[6] = v10;
    v9[7] = &v11;
    v9[8] = v4;
    v9[4] = v2;
    [v3 fetchUIContextsWithCompletion:v9];
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v2, v5))
    {
      if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v16 + 6) = -1;
    }

    v6 = v12[3];
    if (v6)
    {
      if (a1)
      {
        *a1 = CFRetain(v6);
        v6 = v12[3];
      }

      CFRelease(v6);
    }

    if (objc_opt_respondsToSelector())
    {
      [v3 invalidate];
    }
  }

  else
  {
    APSLogErrorAt();
    *(v16 + 6) = -6728;
  }

  dispatch_release(v2);
  v7 = *(v16 + 6);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v7;
}

void sub_22213BBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlay_FetchSessionFeatureKeysWithIdentifier(uint64_t a1, CFTypeRef *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v4 = dispatch_semaphore_create(0);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:a1];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__5;
  v6 = getCRFeatureAvailabilityClass_softClass;
  v28 = __Block_byref_object_dispose__5;
  v29 = getCRFeatureAvailabilityClass_softClass;
  if (!getCRFeatureAvailabilityClass_softClass)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __getCRFeatureAvailabilityClass_block_invoke;
    v23[3] = &unk_27849ACC8;
    v23[4] = &v24;
    __getCRFeatureAvailabilityClass_block_invoke(v23);
    v6 = v25[5];
  }

  _Block_object_dispose(&v24, 8);
  v7 = objc_alloc_init(v6);
  if (v7)
  {
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (IsAppleInternalBuild())
    {
      v8 = mach_absolute_time();
    }

    else
    {
      v8 = 0;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __APCarPlay_FetchSessionFeatureKeysWithIdentifier_block_invoke;
    v13[3] = &unk_27849F9B0;
    v13[8] = a1;
    v13[9] = v8;
    v13[6] = v14;
    v13[7] = &v15;
    v13[4] = v4;
    v13[5] = &v19;
    [v7 fetchSupportedAirPlayFeaturesForVehicleIdentifier:v5 completion:v13];
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v4, v9))
    {
      if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v20 + 6) = -1;
    }

    v10 = v16[3];
    if (v10)
    {
      if (a2)
      {
        *a2 = CFRetain(v10);
        v10 = v16[3];
      }

      CFRelease(v10);
    }
  }

  else
  {
    APSLogErrorAt();
    *(v20 + 6) = -6728;
  }

  dispatch_release(v4);
  v11 = *(v20 + 6);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v11;
}

void sub_22213C0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose((v28 - 128), 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlayHasDeviceUnlockedSinceBoot()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v6 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    APCarPlayHasDeviceUnlockedSinceBoot_cold_1();
  }

  return v0();
}

void sub_22213C338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL APCarPlayHasSpringboardStarted()
{
  out_token = -1;
  notify_register_check(kAPCarPlaySpringBoardStartNotificationKey, &out_token);
  if (out_token == -1)
  {
    return 0;
  }

  v2 = 0;
  notify_get_state(out_token, &v2);
  v0 = v2 != 0;
  notify_cancel(out_token);
  return v0;
}

uint64_t APCarPlayGetHeadUnitRestrictionsDictionary(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_time(0, 3000000000);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  *a1 = 0;
  dispatch_retain(v2);
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (IsAppleInternalBuild())
  {
    v4 = mach_absolute_time();
  }

  else
  {
    v4 = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __APCarPlayGetHeadUnitRestrictionsDictionary_block_invoke;
  v11[3] = &unk_27849F9D8;
  v11[6] = v12;
  v11[7] = v4;
  v11[8] = a1;
  v11[4] = v2;
  v11[5] = &v13;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v5 = getCRFetchCarPlayCapabilitiesSymbolLoc_ptr;
  v25 = getCRFetchCarPlayCapabilitiesSymbolLoc_ptr;
  if (!getCRFetchCarPlayCapabilitiesSymbolLoc_ptr)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getCRFetchCarPlayCapabilitiesSymbolLoc_block_invoke;
    v20 = &unk_27849ACC8;
    v21 = &v22;
    v6 = CarKitLibrary();
    v7 = dlsym(v6, "CRFetchCarPlayCapabilities");
    *(v21[1] + 24) = v7;
    getCRFetchCarPlayCapabilitiesSymbolLoc_ptr = *(v21[1] + 24);
    v5 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (v5)
  {
    v5(v11);
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (dispatch_semaphore_wait(v2, v3))
    {
      if (gLogCategory_APCarPlayCarServicesInterface <= 60 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v14 + 6) = -6722;
    }

    dispatch_release(v2);
    v8 = *(v14 + 6);
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v13, 8);
    return v8;
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    result = [v10 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_CRFetchCarPlayCapabilities(void (^)(NSDictionary * description:{NSError *))"), @"APCarPlayCarServicesInterface.m", 79, @"%s", dlerror()}];
    __break(1u);
  }

  return result;
}

void sub_22213C708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose((v12 - 96), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __APCarPlayGetHeadUnitRestrictionsDictionary_block_invoke(uint64_t a1, CFTypeRef cf, void *a3)
{
  if (a3)
  {
    if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlayGetHeadUnitRestrictionsDictionary_block_invoke_cold_1(a3);
    }

    *(*(*(a1 + 40) + 8) + 24) = -71148;
  }

  else if (IsAppleInternalBuild())
  {
    *(*(*(a1 + 48) + 8) + 24) = mach_absolute_time();
    if (gLogCategory_APCarPlayCarServicesInterface <= 50 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlayGetHeadUnitRestrictionsDictionary_block_invoke_cold_2();
    }
  }

  if (cf)
  {
    v6 = CFRetain(cf);
  }

  else
  {
    v6 = 0;
  }

  **(a1 + 64) = v6;
  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *(a1 + 32);

  dispatch_release(v7);
}

Class __getCARConnectionTimeStoreClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CARConnectionTimeStore");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCARConnectionTimeStoreClass_block_invoke_cold_1();
  }

  getCARConnectionTimeStoreClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t CarKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CarKitLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27849FA20;
    v4 = 0;
    CarKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = CarKitLibraryCore_frameworkLibrary_0;
  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    CarKitLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CarKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getCARConnectionEventClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CARConnectionEvent");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCARConnectionEventClass_block_invoke_cold_1();
  }

  getCARConnectionEventClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getCRFetchInstrumentClusterURLsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CRFetchInstrumentClusterURLs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRFetchInstrumentClusterURLsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CRFetchScaledDisplaysForCertificateSerialNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCRSAppHistoryControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CarPlayServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CarPlayServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849FA38;
    v5 = 0;
    CarPlayServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CarPlayServicesLibraryCore_frameworkLibrary_0)
  {
    __getCRSAppHistoryControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CRSAppHistoryController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCRSAppHistoryControllerClass_block_invoke_cold_1();
  }

  getCRSAppHistoryControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CarPlayServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CarPlayServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getCRFeatureAvailabilityClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CRFeatureAvailability");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCRFeatureAvailabilityClass_block_invoke_cold_1();
  }

  getCRFeatureAvailabilityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MobileKeyBagLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27849FA50;
    v6 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCRFetchCarPlayCapabilitiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CRFetchCarPlayCapabilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRFetchCarPlayCapabilitiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APCarPlayInitiateJarvisProcessing(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v11 = 4294954514;
LABEL_13:
    APSLogErrorAt();
    a3(a1, 0);
    return v11;
  }

  v8 = v7(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
  if (v8)
  {
    v11 = v8;
    goto LABEL_13;
  }

  if (gLogCategory_APCarPlaySiriInterface <= 50 && (gLogCategory_APCarPlaySiriInterface != -1 || _LogCategory_Initialize()))
  {
    APCarPlayInitiateJarvisProcessing_cold_1();
  }

  v9 = cf;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __APCarPlayInitiateJarvisProcessing_block_invoke;
  v13[3] = &__block_descriptor_56_e20_v20__0B8__NSError_12l;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v10 = getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_ptr;
  v19 = getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_ptr;
  if (!getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_ptr)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_block_invoke;
    v15[3] = &unk_27849ACC8;
    v15[4] = &v16;
    __getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_block_invoke(v15);
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v10)
  {
    APCarPlayInitiateJarvisProcessing_cold_2();
  }

  (v10)(a2, v9, 0, v13);
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t __APCarPlayInitiateJarvisProcessing_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APCarPlaySiriInterface <= 50 && (gLogCategory_APCarPlaySiriInterface != -1 || _LogCategory_Initialize()))
  {
    __APCarPlayInitiateJarvisProcessing_block_invoke_cold_1(a2, a3);
  }

  kdebug_trace();
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);

  return v7(v6, a2);
}

uint64_t APCarPlayIsSiriSwitchOn()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__6;
  v0 = getVTPreferencesClass_softClass;
  v7 = __Block_byref_object_dispose__6;
  v8 = getVTPreferencesClass_softClass;
  if (!getVTPreferencesClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getVTPreferencesClass_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getVTPreferencesClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return [objc_msgSend(v0 "sharedPreferences")];
}

void sub_22213D2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlayGetJarvisLanguageFromList(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = dispatch_semaphore_create(0);
  dispatch_retain(v6);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__6;
  v7 = getCSCoreSpeechServicesClass_softClass;
  v25 = __Block_byref_object_dispose__6;
  v26 = getCSCoreSpeechServicesClass_softClass;
  if (!getCSCoreSpeechServicesClass_softClass)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __getCSCoreSpeechServicesClass_block_invoke;
    v20[3] = &unk_27849ACC8;
    v20[4] = &v21;
    __getCSCoreSpeechServicesClass_block_invoke(v20);
    v7 = v22[5];
  }

  _Block_object_dispose(&v21, 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __APCarPlayGetJarvisLanguageFromList_block_invoke;
  v11[3] = &unk_27849FA90;
  v11[5] = &v16;
  v11[6] = &v12;
  v11[4] = v6;
  [v7 voiceTriggerJarvisLanguageList:a1 jarvisSelectedLanguage:a2 completion:v11];
  v8 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v8);
  if (v6)
  {
    dispatch_release(v6);
  }

  *a3 = v13[3];
  v9 = *(v17 + 6);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_22213D4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose((v8 - 128), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __APCarPlayGetJarvisLanguageFromList_block_invoke(uint64_t a1, const void *a2, void *a3)
{
  if ([a3 code])
  {
    if (gLogCategory_APCarPlaySiriInterface <= 90 && (gLogCategory_APCarPlaySiriInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlayGetJarvisLanguageFromList_block_invoke_cold_1(a3);
    }

    *(*(*(a1 + 40) + 8) + 24) = [a3 code];
  }

  else if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = CFRetain(a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v6 = *(a1 + 32);
  if (v6)
  {

    dispatch_release(v6);
  }
}

void *__getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27849FAB0;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    __getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AFSiriActivationCarPlayDeviceVoice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVTPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __VoiceTriggerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849FAC8;
    v5 = 0;
    VoiceTriggerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    __getVTPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTPreferences");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVTPreferencesClass_block_invoke_cold_1();
  }

  getVTPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __VoiceTriggerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceTriggerLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCSCoreSpeechServicesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreSpeechLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849FAE0;
    v5 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    __getCSCoreSpeechServicesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CSCoreSpeechServices");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCSCoreSpeechServicesClass_block_invoke_cold_1();
  }

  getCSCoreSpeechServicesClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CoreSpeechLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreSpeechLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t metadataSender_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMetadataSenderCreate(uint64_t a1, const void *a2, int a3, NSObject *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (!a3)
  {
    APMetadataSenderCreate_cold_5();
    return 4294960591;
  }

  if (!a4)
  {
    APMetadataSenderCreate_cold_4();
    return 4294960591;
  }

  if (!a5)
  {
    APMetadataSenderCreate_cold_3();
    return 4294960591;
  }

  if (_MergedGlobals_17 != -1)
  {
    APMetadataSenderCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v17 = Instance;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 24) = a4;
    dispatch_retain(a4);
    *(v17 + 20) = a3;
    *(v17 + 32) = CFRetain(a5);
    *(v17 + 48) = CFRetain(a2);
    *(v17 + 56) = a6;
    *(v17 + 64) = a7;
    *(v17 + 72) = a8;
    v18 = *MEMORY[0x277CBECE8];
    v19 = MEMORY[0x277CBF138];
    v20 = MEMORY[0x277CBF150];
    *(v17 + 80) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v17 + 96) = CFDictionaryCreateMutable(v18, 0, v19, v20);
    *(v17 + 112) = CFDictionaryCreateMutable(v18, 0, v19, v20);
    *(v17 + 40) = APMetadataSourceAddEventCallback(*(v17 + 32), v17, metadataSender_handleMetadataEvent);
    if (gLogCategory_APMetadataSender <= 50 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = 0;
    *a9 = v17;
  }

  else
  {
    APMetadataSenderCreate_cold_2();
    return 4294960568;
  }

  return result;
}

void APMetadataSenderSendInitialMetadata(void *a1)
{
  CFRetain(a1);
  v2 = a1[3];

  dispatch_async_f(v2, a1, metadataSender_sendInitialMetadataInternal);
}

void metadataSender_sendMRNowPlayingInfo(uint64_t a1, const __CFDictionary *a2, const void *a3, int a4)
{
  cf[0] = 0;
  if (!a2 || *(a1 + 16))
  {
    goto LABEL_35;
  }

  if (!a3)
  {
    metadataSender_sendMRNowPlayingInfo_cold_7();
LABEL_35:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    return;
  }

  if ((*(a1 + 20) & 0x20) == 0)
  {
    if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
    {
      metadataSender_sendMRNowPlayingInfo_cold_6();
    }

    goto LABEL_35;
  }

  if (!a4 && !(*(a1 + 64))(*(a1 + 56)))
  {
    if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
    {
      metadataSender_sendMRNowPlayingInfo_cold_5();
    }

    goto LABEL_35;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(a1 + 48));
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = *MEMORY[0x277CBECE8];
    v8(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], cf);
    if (cf[0])
    {
      getkMRMediaRemoteNowPlayingInfoMediaType();
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (TypedValue == getkMRMediaRemoteNowPlayingInfoTypeVideo() || TypedValue && getkMRMediaRemoteNowPlayingInfoTypeVideo() && (v11 = getkMRMediaRemoteNowPlayingInfoTypeVideo(), CFEqual(TypedValue, v11)))
      {
        if (gLogCategory_APMetadataSender <= 50 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
        {
          metadataSender_sendMRNowPlayingInfo_cold_1();
        }

        MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, a2);
        v13 = getkMRMediaRemoteNowPlayingInfoMediaType();
        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v14 = getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_ptr;
        v24 = getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_ptr;
        if (!getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_ptr)
        {
          cf[1] = MEMORY[0x277D85DD0];
          cf[2] = 3221225472;
          cf[3] = __getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_block_invoke;
          cf[4] = &unk_27849ACC8;
          v20 = &v21;
          v15 = MediaRemoteLibrary_0();
          v16 = dlsym(v15, "kMRMediaRemoteNowPlayingInfoTypeAudio");
          *(v20[1] + 24) = v16;
          getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_ptr = *(v20[1] + 24);
          v14 = v22[3];
        }

        _Block_object_dispose(&v21, 8);
        if (!v14)
        {
          metadataSender_sendMRNowPlayingInfo_cold_4();
        }

        CFDictionarySetValue(MutableCopy, v13, *v14);
      }

      else
      {
        MutableCopy = CFRetain(a2);
      }

      Mutable = CFDictionaryCreateMutable(v9, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v18 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"type", @"npi-text");
        CFDictionarySetValue(v18, @"params", MutableCopy);
        CFDictionarySetValue(v18, @"mergePolicy", a3);
        if (metadataSender_sendMRMetadata(cf[0], @"updateMRNowPlayingInfo", v18))
        {
          metadataSender_sendMRNowPlayingInfo_cold_2();
        }

        else if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        metadataSender_sendMRNowPlayingInfo_cold_3();
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      goto LABEL_35;
    }
  }
}

void sub_22213E188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void metadataSender_appendDictionaryKeyAndValue(void *key, const void *a2, uint64_t a3)
{
  CFDictionaryGetValue(*(a3 + 8), key);
  if (!FigCFEqual())
  {
    *a3 = 1;
    v6 = *(a3 + 8);

    CFDictionarySetValue(v6, key, a2);
  }
}

uint64_t getkMRMediaRemoteNowPlayingInfoTypeVideo()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary_0();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoTypeVideo");
    getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoTypeVideo_cold_1();
  }

  return *v0;
}

void sub_22213E2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t metadataSender_sendMRMetadata(uint64_t a1, const void *a2, const void *a3)
{
  if (!a2)
  {
    metadataSender_sendMRMetadata_cold_4();
    return 4294960591;
  }

  if (!a3)
  {
    metadataSender_sendMRMetadata_cold_3();
    return 4294960591;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetValue(Mutable, @"type", a2);
    CFDictionarySetValue(v6, @"params", a3);
    v7 = APTransportStreamSendPlistMessage();
    if (v7)
    {
      metadataSender_sendMRMetadata_cold_1();
    }

    CFRelease(v6);
  }

  else
  {
    metadataSender_sendMRMetadata_cold_2();
    return 4294960568;
  }

  return v7;
}

void *__getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaRemoteLibrary_0();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoMediaType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaRemoteLibrary_0()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary_1)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MediaRemoteLibraryCore_block_invoke_1;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27849FC10;
    v4 = 0;
    MediaRemoteLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = MediaRemoteLibraryCore_frameworkLibrary_1;
  if (!MediaRemoteLibraryCore_frameworkLibrary_1)
  {
    MediaRemoteLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __MediaRemoteLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary_0();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary_0();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTypeAudio");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __metadataSender_handleMRNowPlayingInfoChanged_block_invoke(uint64_t a1)
{
  metadataSender_sendMRNowPlayingInfo(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 48);

  CFRelease(v2);
}

uint64_t SPHubbedDevicesProviderDefaultsCreate(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    SPHubbedDevicesProviderDefaultsCreate_cold_5();
    return 4294960591;
  }

  SPHubbedDevicesProviderGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v12 = v5;
    SPHubbedDevicesProviderDefaultsCreate_cold_1();
    return v12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2 || (Value = CFDictionaryGetValue(a2, @"HubbedDevicesKeyName")) == 0 || (v8 = Value, v9 = CFGetTypeID(Value), v9 != CFStringGetTypeID()))
  {
    v8 = @"sidePlayHubbedDevices";
  }

  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 8) = CFRetain(v8);
  v10 = FigSimpleMutexCreate();
  *DerivedStorage = v10;
  if (!v10)
  {
    SPHubbedDevicesProviderDefaultsCreate_cold_4();
    return 4294960568;
  }

  SNPrintF();
  v11 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 16) = v11;
  if (!v11)
  {
    SPHubbedDevicesProviderDefaultsCreate_cold_3();
    return 4294960568;
  }

  *(DerivedStorage + 24) = -1;
  *(DerivedStorage + 32) = 0;
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    SPHubbedDevicesProviderDefaultsCreate_cold_2();
  }

  v12 = 0;
  *a3 = 0;
  return v12;
}

uint64_t hdpd_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    hdpd_Invalidate_cold_1();
  }

  dispatch_sync_f(*(DerivedStorage + 16), a1, hdpd_invalidateInternal);
  return 0;
}

void hdpd_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    hdpd_Finalize_cold_1();
  }

  if (*(DerivedStorage + 40))
  {
    v1 = *(DerivedStorage + 32);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 32) = 0;
    }

    v2 = *(DerivedStorage + 16);
    if (v2)
    {
      dispatch_release(v2);
      *(DerivedStorage + 16) = 0;
    }

    FigSimpleMutexDestroy();
    v3 = *(DerivedStorage + 8);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 8) = 0;
    }
  }

  else
  {
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 90 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      hdpd_Finalize_cold_2();
    }

    __break(1u);
  }
}

__CFString *hdpd_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<SPHubbedDevicesProviderDefaults %p>", a1);
  return Mutable;
}

uint64_t hdpd_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFSetRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2)
  {
    hdpd_CopyProperty_cold_6();
    return 4294960591;
  }

  if (!a4)
  {
    hdpd_CopyProperty_cold_5();
    return 4294960591;
  }

  FigSimpleMutexLock();
  if (!CFEqual(a2, @"HubbedDevices"))
  {
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      hdpd_CopyProperty_cold_4();
    }

    v10 = 4294954512;
    goto LABEL_24;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 32);
  if (!v8)
  {
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      hdpd_CopyProperty_cold_2();
    }

    Copy = CFSetCreate(a3, 0, 0, MEMORY[0x277CBF158]);
    if (Copy)
    {
      goto LABEL_23;
    }

    hdpd_CopyProperty_cold_3();
LABEL_32:
    v10 = 4294960568;
    goto LABEL_24;
  }

  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30)
  {
    v9 = DerivedStorage;
    if (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || (v12 = _LogCategory_Initialize(), v8 = *(v9 + 32), v12))
    {
      LogPrintF();
      v8 = *(v9 + 32);
    }
  }

  Copy = CFSetCreateCopy(a3, v8);
  if (!Copy)
  {
    hdpd_CopyProperty_cold_1();
    goto LABEL_32;
  }

LABEL_23:
  v10 = 0;
  *a4 = Copy;
LABEL_24:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t hdpd_invalidateInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = *(DerivedStorage + 24);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(DerivedStorage + 24) = -1;
  }

  *(DerivedStorage + 40) = 1;
  return result;
}

uint64_t hdpd_Start(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __hdpd_Start_block_invoke;
  handler[3] = &__block_descriptor_tmp_34;
  handler[4] = a1;
  notify_register_dispatch("com.apple.airplay.prefsChanged", (DerivedStorage + 24), v3, handler);
  hdpd_handlePreferencesChanged();
  return 0;
}

void hdpd_handlePreferencesChanged()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    hdpd_handlePreferencesChanged_cold_1();
  }

  APSSettingsSynchronize();
  FigSimpleMutexLock();
  v1 = APSSettingsCopyValue();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v1 && (v2 = CFGetTypeID(v1), v2 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(v1);
    v4 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v8.location = 0;
    v8.length = Count;
    CFArrayGetValues(v1, v8, v4);
    v5 = CFSetCreate(*MEMORY[0x277CBECE8], v4, Count, MEMORY[0x277CBF158]);
    free(v4);
  }

  else
  {
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      hdpd_handlePreferencesChanged_cold_2();
    }

    v5 = 0;
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      hdpd_handlePreferencesChanged_cold_3();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  if (v1)
  {
    CFRelease(v1);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t APAudioZeroTimeStampProviderGetTypeID()
{
  if (_MergedGlobals_18 != -1)
  {
    APAudioZeroTimeStampProviderGetTypeID_cold_1();
  }

  return qword_280FB1B68;
}

uint64_t __APAudioZeroTimeStampProviderGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_280FB1B68 = result;
  return result;
}

uint64_t APEndpointStreamAudioCreate(const __CFAllocator *a1, CFTypeRef cf, const void *a3, CFTypeRef a4, const void *a5, const void *a6, const void *a7, const void *a8, CFTypeRef cfa, void **a10)
{
  v51 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v47 = 0;
  context = 0;
  v46 = 0;
  if (!cf || (v18 = CFGetTypeID(cf), v18 != CFStringGetTypeID()))
  {
    APEndpointStreamAudioCreate_cold_30();
    goto LABEL_67;
  }

  if (a5)
  {
    v19 = CFGetTypeID(a5);
    if (v19 != CFDictionaryGetTypeID())
    {
      APEndpointStreamAudioCreate_cold_1();
      goto LABEL_67;
    }
  }

  if (!a6 || (v20 = CFGetTypeID(a6), v20 != APSenderSessionGetTypeID()))
  {
    APEndpointStreamAudioCreate_cold_29();
    goto LABEL_67;
  }

  if (!cfa || (v21 = CFGetTypeID(cfa), v21 != APEndpointDescriptionGetTypeID()))
  {
    APEndpointStreamAudioCreate_cold_28();
    goto LABEL_67;
  }

  if (!a4)
  {
    APEndpointStreamAudioCreate_cold_27();
    goto LABEL_67;
  }

  v22 = CFGetTypeID(a4);
  if (v22 != CFStringGetTypeID())
  {
    APEndpointStreamAudioCreate_cold_2();
    goto LABEL_67;
  }

  v45 = a3;
  v23 = CFEqual(a4, *MEMORY[0x277CC1960]);
  v24 = MEMORY[0x277CC1970];
  if (!v23 && !CFEqual(a4, *MEMORY[0x277CC1970]))
  {
    APEndpointStreamAudioCreate_cold_26();
    goto LABEL_67;
  }

  if (!a10)
  {
    APEndpointStreamAudioCreate_cold_25();
    goto LABEL_67;
  }

  if (!a7)
  {
    APEndpointStreamAudioCreate_cold_24();
    goto LABEL_67;
  }

  if (!a8)
  {
    APEndpointStreamAudioCreate_cold_23();
    goto LABEL_67;
  }

  FigEndpointStreamGetClassID();
  v49 = CMDerivedObjectCreate();
  if (v49)
  {
    APEndpointStreamAudioCreate_cold_3();
    goto LABEL_67;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 252) = 0;
  *(DerivedStorage + 24) = CFRetain(cf);
  *(DerivedStorage + 40) = CFRetain(a4);
  SNPrintF();
  *(DerivedStorage + 16) = os_transaction_create();
  *(DerivedStorage + 56) = CFRetain(a6);
  *(DerivedStorage + 80) = CFRetain(cfa);
  *(DerivedStorage + 64) = CFRetain(a7);
  *(DerivedStorage + 72) = CFRetain(a8);
  v26 = FigSimpleMutexCreate();
  *(DerivedStorage + 144) = v26;
  if (!v26)
  {
    APEndpointStreamAudioCreate_cold_22();
    goto LABEL_67;
  }

  SNPrintF();
  v27 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 288) = v27;
  if (!v27)
  {
    APEndpointStreamAudioCreate_cold_21();
    goto LABEL_67;
  }

  atomic_store(0, (DerivedStorage + 297));
  *(DerivedStorage + 464) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 472) = FigGetCFPreferenceNumberWithDefault();
  SNPrintF();
  v28 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 304) = v28;
  if (!v28)
  {
    APEndpointStreamAudioCreate_cold_20();
    goto LABEL_67;
  }

  v29 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v28);
  *(DerivedStorage + 312) = v29;
  dispatch_set_context(v29, context);
  dispatch_source_set_event_handler_f(*(DerivedStorage + 312), audioStream_statsTimerFired);
  dispatch_source_set_timer(*(DerivedStorage + 312), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  dispatch_resume(*(DerivedStorage + 312));
  SNPrintF();
  v30 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v30;
  if (!v30)
  {
    APEndpointStreamAudioCreate_cold_19();
    goto LABEL_67;
  }

  if (!a5)
  {
    APEndpointStreamAudioCreate_cold_18();
    goto LABEL_67;
  }

  if (*v24 == a4)
  {
    v31 = 0;
  }

  else if (*v24)
  {
    v31 = CFEqual(a4, *v24) == 0;
  }

  else
  {
    v31 = 1;
  }

  *(DerivedStorage + 112) = v31;
  *(DerivedStorage + 113) = CFDictionaryGetInt64() != 0;
  Int64 = CFDictionaryGetInt64();
  *(DerivedStorage + 132) = CFDictionaryGetInt64() != 0;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 80));
  v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v34)
  {
    v49 = -12782;
    goto LABEL_75;
  }

  v35 = *MEMORY[0x277CBECE8];
  v49 = v34(CMBaseObject, @"SupportedAudioFormats", *MEMORY[0x277CBECE8], &v47);
  if (v49)
  {
LABEL_75:
    APEndpointStreamAudioCreate_cold_17();
    goto LABEL_67;
  }

  if (FigCFEqual())
  {
    CFDictionaryGetInt64();
    if (v49)
    {
      APEndpointStreamAudioCreate_cold_4();
      goto LABEL_67;
    }
  }

  else
  {
    CFDictionaryGetInt64();
    if (v49)
    {
      APEndpointStreamAudioCreate_cold_5();
      goto LABEL_67;
    }
  }

  if (!APSSettingsGetIntWithDefault())
  {
    v49 = APSAudioFormatDescriptionListCreateWithLegacyAudioFormatMask();
    if (v49)
    {
      APEndpointStreamAudioCreate_cold_8();
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  v36 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 80));
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v37)
  {
    v49 = -12782;
    goto LABEL_38;
  }

  v38 = v37(v36, @"SupportedAudioFormatsExtended", v35, &v46);
  if (v38 == -12784)
  {
    v49 = 0;
    goto LABEL_77;
  }

  v49 = v38;
  if (v38)
  {
LABEL_38:
    APSLogErrorAt();
    goto LABEL_67;
  }

LABEL_77:
  if (v46)
  {
    if (FigCFDictionaryGetValue())
    {
      v49 = APSAudioFormatDescriptionListCreateWithAdvertisementArray();
      if (v49)
      {
        APEndpointStreamAudioCreate_cold_6();
        goto LABEL_67;
      }
    }
  }

  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    APEndpointStreamAudioCreate_cold_7();
  }

LABEL_40:
  v39 = *(DerivedStorage + 113);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (v39)
  {
    v41 = @"%@-%llu-screen";
  }

  else
  {
    v41 = @"%@-%llu-airplay";
  }

  *(DerivedStorage + 32) = CFStringCreateWithFormat(a1, 0, v41, v45, UpTimeNanoseconds);
  if (v45)
  {
    v42 = CFRetain(v45);
  }

  else
  {
    v42 = 0;
  }

  *(DerivedStorage + 48) = v42;
  *(DerivedStorage + 120) = CFRetain(*MEMORY[0x277CC17B8]);
  *(DerivedStorage + 128) = APSGetFBOPropertyInt64() != 0;
  if (v49)
  {
    APEndpointStreamAudioCreate_cold_9();
  }

  else
  {
    *(DerivedStorage + 129) = APSGetFBOPropertyInt64() != 0;
    if (v49)
    {
      APEndpointStreamAudioCreate_cold_10();
    }

    else
    {
      *(DerivedStorage + 130) = APSGetFBOPropertyInt64() != 0;
      if (v49)
      {
        APEndpointStreamAudioCreate_cold_11();
      }

      else
      {
        v43 = CFDictionaryGetInt64();
        *(DerivedStorage + 131) = v43 != 0;
        if (v43 && gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
        {
          APEndpointStreamAudioCreate_cold_12();
        }

        if (CFDictionaryContainsKey(a5, @"MediaPresentationLatencyMs") && (*(DerivedStorage + 96) = CFDictionaryGetInt64Ranged(), v49))
        {
          APEndpointStreamAudioCreate_cold_13();
        }

        else
        {
          if (CFDictionaryGetInt64())
          {
            *(DerivedStorage + 240) = 1;
          }

          if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
          {
            APEndpointStreamAudioCreate_cold_14();
          }

          v49 = audioStream_setupEventRecorder(context, a5);
          if (v49)
          {
            APEndpointStreamAudioCreate_cold_15();
          }

          else
          {
            if (Int64)
            {
              audioStream_startSilentAudio(context);
            }

            APSIOReporterCreate();
            v49 = 0;
            if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
            {
              APEndpointStreamAudioCreate_cold_16();
            }

            *a10 = context;
            context = 0;
          }
        }
      }
    }
  }

LABEL_67:
  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (context)
  {
    CFRelease(context);
  }

  return v49;
}

void audioStream_statsTimerFired()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 20 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_statsTimerFired_cold_1();
  }

  v1 = mach_absolute_time();
  UpTicksToSecondsF();
  if (DerivedStorage[49] <= v2)
  {
    DerivedStorage[48] = v1;
    v3 = DerivedStorage[40];
    if (v3 > DerivedStorage[41] || DerivedStorage[42] > DerivedStorage[43])
    {
      if (gLogCategory_APEndpointStreamAudio <= 50)
      {
        if (gLogCategory_APEndpointStreamAudio != -1 || (v4 = _LogCategory_Initialize(), v3 = DerivedStorage[40], v4))
        {
          LogPrintF();
          v3 = DerivedStorage[40];
        }
      }

      DerivedStorage[41] = v3;
      DerivedStorage[43] = DerivedStorage[42];
    }
  }

  UpTicksToSecondsF();
  if (DerivedStorage[51] <= v5)
  {
    DerivedStorage[50] = v1;
    v6 = CMBaseObjectGetDerivedStorage();
    v10 = 0;
    cf = 0;
    FigSimpleMutexLock();
    v7 = MEMORY[0x277CBECE8];
    if (*(v6 + 168))
    {
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, *MEMORY[0x277CE5050], *v7, &cf);
      }
    }

    FigSimpleMutexUnlock();
    if (cf)
    {
      if (APTNANDataSessionCreateStatisticsReport())
      {
        audioStream_statsTimerFired_cold_2();
      }

      else if (APTNANDataSessionStatisticsReportCopyDictionary())
      {
        audioStream_statsTimerFired_cold_3();
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t audioStream_setupEventRecorder(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFDictionaryGetValue(a2, @"EventRecorder");
  }

  v4 = *(DerivedStorage + 136);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 136) = 0;
  }

  v5 = APSEventRecorderCreate();
  if (v5)
  {
    audioStream_setupEventRecorder_cold_1();
  }

  return v5;
}

void audioStream_startSilentAudio(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF();
  v3 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 480) = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioStream_startSilentAudio_block_invoke;
  block[3] = &__block_descriptor_tmp_171;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v3, block);
}

uint64_t audioStream_Finalize_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_Finalize_cold_1_0();
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[1] = 0;
  }

  audioStream_dissociateInternal_0(a1);
  v4 = DerivedStorage[17];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[17] = 0;
  }

  v5 = DerivedStorage[62];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[62] = 0;
  }

  v6 = DerivedStorage[57];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[7];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[7] = 0;
  }

  v8 = DerivedStorage[9];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[9] = 0;
  }

  v9 = DerivedStorage[10];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[10] = 0;
  }

  v10 = DerivedStorage[3];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[3] = 0;
  }

  v11 = DerivedStorage[4];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[4] = 0;
  }

  v12 = DerivedStorage[5];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[5] = 0;
  }

  v13 = DerivedStorage[6];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[6] = 0;
  }

  v14 = DerivedStorage[13];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[13] = 0;
  }

  v15 = DerivedStorage[15];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[15] = 0;
  }

  v16 = DerivedStorage[8];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[8] = 0;
  }

  v17 = DerivedStorage[2];
  if (v17)
  {
    os_release(v17);
    DerivedStorage[2] = 0;
  }

  v18 = DerivedStorage[32];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = DerivedStorage[36];
  if (v19)
  {
    dispatch_release(v19);
    DerivedStorage[36] = 0;
  }

  v20 = DerivedStorage[38];
  if (v20)
  {
    dispatch_release(v20);
    DerivedStorage[38] = 0;
  }

  v21 = DerivedStorage[60];
  if (v21)
  {
    dispatch_release(v21);
    DerivedStorage[60] = 0;
  }

  v22 = DerivedStorage[24];
  if (v22)
  {
    CFRelease(v22);
    DerivedStorage[24] = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *audioStream_CopyDebugDescription_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamAudio %p '%@'>", a1, *(DerivedStorage + 24));
  return Mutable;
}

uint64_t audioStream_SetProperty_0(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    audioStream_SetProperty_cold_1_0();
    return 4294950534;
  }

  if (!a2)
  {
    audioStream_SetProperty_cold_6_0();
    return 4294950536;
  }

  if (CFEqual(a2, @"IsTimelineEstablished") || CFEqual(a2, *MEMORY[0x277CEA0C8]))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFBooleanGetTypeID())
      {
        FigSimpleMutexLock();
        if (DerivedStorage[185])
        {
          Value = CFBooleanGetValue(a3);
          if (DerivedStorage[184] != Value)
          {
            DerivedStorage[184] = Value;
            if (Value)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
            }
          }

          v9 = 0;
        }

        else
        {
          v9 = APSSignalErrorAt();
        }

        FigSimpleMutexUnlock();
        return v9;
      }
    }

    audioStream_SetProperty_cold_2_0();
    return 4294950536;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v11 = CFGetTypeID(a3), v11 != CFStringGetTypeID()))
    {
      audioStream_SetProperty_cold_3_0();
      return 4294950536;
    }

    CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a3);
    APSDispatchAsyncFHelper();
    return 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    return 0;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v12 = CFGetTypeID(a3), v12 != CFBooleanGetTypeID()))
    {
      audioStream_SetProperty_cold_4_0();
      return 4294950536;
    }

    CFBooleanGetValue(a3);
    audioStream_setEchoCancellationIsEnabled_0(a1);
    return 0;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v13 = CFGetTypeID(a3), v13 != CFBooleanGetTypeID()))
    {
      audioStream_SetProperty_cold_5_0();
      return 4294950536;
    }

    audioStream_setHTFTIsActive(a1, a3);
    return 0;
  }

  if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294954512;
}

void audioStream_invalidateTransportMDCStream_0()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 176);
  if (v1)
  {
    v2 = CFRetain(v1);
    FigSimpleMutexUnlock();
    if (v2)
    {
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      if (CMBaseObject)
      {
        v4 = CMBaseObject;
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v5)
        {
          v5(v4);
        }
      }

      CFRelease(v2);
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

uint64_t audioStream_suspendAndDissociateInternal_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  audioStream_suspendInternal_0(a1);
  *DerivedStorage = 1;
  return 0;
}

void audioStream_invalidateTransportStreams()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 160);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(DerivedStorage + 168);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexUnlock();
  if (v2)
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v6 = CMBaseObject;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }
  }

  if (v4)
  {
    v8 = FigTransportStreamGetCMBaseObject();
    if (v8)
    {
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v10)
      {
        v10(v9);
      }
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

void audioStream_stopTimer(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 208);
  *(DerivedStorage + 208) = 0;
  *(DerivedStorage + 216) = 0;
  FigSimpleMutexUnlock();
  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v6 = *(ProtocolVTable + 16)) != 0)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v7(v4, v2, 0);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = -12782;
    }
  }

  else
  {
    v8 = -12788;
  }

  APSLogErrorAt();
LABEL_8:
  v9 = a1[1];
  if (v9)
  {
    *v9 = v8;
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

void audioStream_updateIsResumedAndPostNotification(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 185) != a2)
  {
    v4 = DerivedStorage;
    APSWiFiTransactionUpdateTransaction();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = Mutable;
    v7 = MEMORY[0x277CBED10];
    if (a2)
    {
      v7 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsPlaying", *v7);
    *(v4 + 185) = a2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v6);
  }
}

uint64_t __audioStream_stopSilentAudio_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 488);
  if (result)
  {
    result = AudioQueueDispose(result, 1u);
    *(*(a1 + 32) + 488) = 0;
    if (gLogCategory_APEndpointStreamAudio <= 50)
    {
      if (gLogCategory_APEndpointStreamAudio != -1)
      {
        return __audioStream_stopSilentAudio_block_invoke_cold_1();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __audioStream_stopSilentAudio_block_invoke_cold_1();
      }
    }
  }

  return result;
}

uint64_t audioStream_createSupportedPCMFormatArray_0(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 80));
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    DescriptionArray = -12782;
    goto LABEL_13;
  }

  DescriptionArray = v6(CMBaseObject, @"SupportedAudioFormats", *MEMORY[0x277CBECE8], &cf);
  if (DescriptionArray)
  {
LABEL_13:
    audioStream_createSupportedPCMFormatArray_cold_4();
    goto LABEL_14;
  }

  if (CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1960]))
  {
    CFDictionaryGetInt64();
    if (DescriptionArray)
    {
      audioStream_createSupportedPCMFormatArray_cold_1_0();
      goto LABEL_14;
    }
  }

  else
  {
    if (!CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1970]))
    {
      DescriptionArray = APSSignalErrorAt();
      goto LABEL_14;
    }

    CFDictionaryGetInt64();
    if (DescriptionArray)
    {
      audioStream_createSupportedPCMFormatArray_cold_2();
      goto LABEL_14;
    }
  }

  DescriptionArray = APAudioFormatCreateDescriptionArray();
  if (DescriptionArray)
  {
    audioStream_createSupportedPCMFormatArray_cold_3();
  }

  else if (a3)
  {
    *a3 = 0;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return DescriptionArray;
}

__CFDictionary *audioStream_copyShowInfo_0()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v2 = Mutable;
  v3 = MEMORY[0x277CBED28];
  if (!*(DerivedStorage + 185))
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"Resumed", *v3);
  CFDictionarySetValue(v2, @"Type", *(DerivedStorage + 40));
  CFDictionarySetValue(v2, @"Name", *(DerivedStorage + 24));
  return v2;
}

uint64_t audioStream_setEchoCancellationIsEnabled_0(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return FigSimpleMutexUnlock();
}

uint64_t audioStream_setHTFTIsActive(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  return APSDispatchAsyncFHelper();
}

void audioStream_setEchoCancellationIsEnabledInternal_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_1_0();
  }

  if (*DerivedStorage)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_2_0();
    v8 = 0;
    v4 = 0;
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  if (!Mutable)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_6();
    goto LABEL_15;
  }

  v5 = MEMORY[0x277CBED28];
  if (!*(a1 + 8))
  {
    v5 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"MuteForStream", *v5);
  if (!*(DerivedStorage + 129))
  {
    v9 = *(DerivedStorage + 56);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (!v10 || v10(v9, v4))
    {
      audioStream_setEchoCancellationIsEnabledInternal_cold_5_0();
    }

    goto LABEL_15;
  }

  v6 = *(DerivedStorage + 176);
  if (!v6 || (v7 = CFRetain(v6)) == 0)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_4_0();
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = v7;
  if (APTransportStreamSendPlistMessageCreatingPlistReply())
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_3_0();
  }

LABEL_16:
  if (*a1)
  {
    CFRelease(*a1);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v8)
  {

    CFRelease(v8);
  }
}

void audioStream_setHTFTIsActiveInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    audioStream_setHTFTIsActiveInternal_cold_1();
LABEL_17:
    v9 = 0;
    v5 = 0;
    goto LABEL_18;
  }

  v3 = DerivedStorage;
  DerivedStorage[296] = CFBooleanGetValue(*(a1 + 8));
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!v3[129])
  {
    goto LABEL_17;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (!Mutable)
  {
    audioStream_setHTFTIsActiveInternal_cold_4();
    goto LABEL_15;
  }

  v6 = MEMORY[0x277CBED28];
  if (!*(a1 + 8))
  {
    v6 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"value", *v6);
  v7 = *(v3 + 22);
  if (!v7 || (v8 = CFRetain(v7)) == 0)
  {
    audioStream_setHTFTIsActiveInternal_cold_3();
LABEL_15:
    v9 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  if (APTransportStreamSendPlistMessageCreatingPlistReply())
  {
    audioStream_setHTFTIsActiveInternal_cold_2();
  }

LABEL_18:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *audioStream_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamAudio <APSEndpointStreamAudioHoseProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioStream_audioHoseFlush_0(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

void audioStream_audioHoseFlushInternal_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  cf = 0;
  if (*(a1 + 12) != 1)
  {
    audioStream_audioHoseFlushInternal_cold_1_0();
    Mutable = 0;
    v9 = 0;
    Data = 0;
    v13 = 4294960561;
    goto LABEL_30;
  }

  v3 = DerivedStorage;
  if (gLogCategory_APEndpointStreamAudio <= 40 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseFlushInternal_cold_2_0();
  }

  if (*(v3 + 129))
  {
    v4 = *(v3 + 176);
    if (v4)
    {
      cf = CFRetain(v4);
      if (cf)
      {
        v5 = *MEMORY[0x277CBECE8];
        goto LABEL_9;
      }
    }

    else
    {
      cf = 0;
    }

    audioStream_audioHoseFlushInternal_cold_3_0();
    Mutable = 0;
    v9 = 0;
    Data = 0;
    v13 = 4294960578;
    goto LABEL_30;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(v3 + 56));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v13 = 4294954514;
    goto LABEL_27;
  }

  v5 = *MEMORY[0x277CBECE8];
  v12 = v11(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
  if (v12)
  {
    v13 = v12;
LABEL_27:
    APSLogErrorAt();
    Mutable = 0;
LABEL_28:
    v9 = 0;
LABEL_29:
    Data = 0;
    goto LABEL_30;
  }

LABEL_9:
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v13 = 4294894966;
    audioStream_audioHoseFlushInternal_cold_9();
    goto LABEL_28;
  }

  if (*(v3 + 129))
  {
    v7 = CFDictionarySetInt64();
    if (v7)
    {
      v13 = v7;
      audioStream_audioHoseFlushInternal_cold_4();
    }

    else
    {
      v8 = CFDictionarySetInt64();
      if (!v8)
      {
        v9 = 0;
        goto LABEL_19;
      }

      v13 = v8;
      audioStream_audioHoseFlushInternal_cold_5();
    }

    goto LABEL_28;
  }

  v9 = CFStringCreateWithFormat(v5, 0, @"seq=%u;rtptime=%u", *(a1 + 8), *(a1 + 16));
  if (!v9)
  {
    v13 = 4294894966;
    audioStream_audioHoseFlushInternal_cold_8();
    goto LABEL_29;
  }

  CFDictionarySetValue(Mutable, @"RTP-Info", v9);
LABEL_19:
  Data = CFPropertyListCreateData(v5, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v13 = BlockBufferWithCFDataNoCopy;
      audioStream_audioHoseFlushInternal_cold_6();
    }

    else
    {
      v16 = cf;
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v17)
      {
        v13 = v17(v16, 1718383464, v23, 0);
        if (!v13)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v13 = 4294954514;
      }

      APSLogErrorAt();
    }
  }

  else
  {
    v13 = 4294894966;
    audioStream_audioHoseFlushInternal_cold_7();
  }

LABEL_30:
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = *a1;
    v20 = *(a1 + 8);
    v21 = *(a1 + 48);
    v22[0] = *(a1 + 12);
    *(v22 + 12) = *(a1 + 24);
    v18(v19, v20, v22, v13, v21);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  CFRelease(*a1);
}

uint64_t audioStream_Suspend_0(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_Resume_0(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_Control_0(const void *a1, uint64_t a2, const void *a3)
{
  if (FigCFEqual())
  {
    CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      audioStream_Control_cold_1_0();
      return 0;
    }

    audioStream_Control_cold_2_0();
  }

  else
  {
    if (FigCFEqual())
    {
      v14 = 0;
      CMBaseObjectGetDerivedStorage();
      v13 = 0;
      if (a1)
      {
        v5 = CFRetain(a1);
      }

      else
      {
        v5 = 0;
      }

      cf = v5;
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      if (!FigCFEqual())
      {
        return 0;
      }

      goto LABEL_20;
    }

    if (FigCFEqual())
    {
      v14 = 0;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      cf = 0;
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      if (FigCFEqual())
      {
        if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
        {
          audioStream_Control_cold_5();
        }

        if (APSSettingsGetIntWithDefault())
        {
          FigSimpleMutexLock();
          if (*(DerivedStorage + 168))
          {
            CMBaseObject = FigTransportStreamGetCMBaseObject();
            v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v8)
            {
              v8(CMBaseObject, *MEMORY[0x277CE5010], *MEMORY[0x277CBECE8], &cf);
            }
          }

          FigSimpleMutexUnlock();
          if (!cf)
          {
            return 0;
          }

          audioStream_Control_cold_6(DerivedStorage, cf, a3, &v14);
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }

    if (FigCFEqual())
    {
      v14 = 0;
      CMBaseObjectGetDerivedStorage();
      if (a1)
      {
        v10 = CFRetain(a1);
      }

      else
      {
        v10 = 0;
      }

      cf = v10;
      if (a3)
      {
        v11 = CFRetain(a3);
      }

      else
      {
        v11 = 0;
      }

      v13 = v11;
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      if (FigCFEqual())
      {
        return 0;
      }

      if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_Control_cold_8();
      }

LABEL_20:
      APSDispatchAsyncFHelper();
      return 0;
    }

    if (gLogCategory_APEndpointStreamAudio <= 90 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return 4294950536;
}

void audioStream_completionCallback(uint64_t a1)
{
  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24));
  v2 = *a1;

  CFRelease(v2);
}

void audioStream_resumeAsync(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  audioStream_resumeInternal(*a1, *(a1 + 8));
  if (*(a1 + 16))
  {
    CFRetain(*a1);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t FigTransportStreamSetMessageCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 0, a3);
}

uint64_t audioStream_receivedAudioDataMessage_0(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2 == 1684628836)
  {
    if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
    {
      audioStream_receivedAudioDataMessage_cold_1_0();
    }

    CMNotificationCenterGetDefaultLocalCenter();

    return FigDispatchAsyncPostNotification();
  }

  return result;
}

uint64_t audioStream_receivedAudioControlMessage(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  if (a3)
  {
    CFRetain(a3);
  }

  return APSDispatchAsyncFHelper();
}

void audioStream_receivedAudioControlMessageInternal(uint64_t a1)
{
  if (*(a1 + 8) == 1634168383)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf = 0;
    if (!*(DerivedStorage + 131))
    {
      v3 = DerivedStorage;
      FigSimpleMutexLock();
      v4 = *(v3 + 208);
      if (v4)
      {
        v5 = CFRetain(v4);
      }

      else
      {
        v5 = 0;
      }

      v8 = 0;
      FigSimpleMutexUnlock();
      if (v5)
      {
        if (APSTransportMessageGetRetransmitRequest())
        {
          audioStream_receivedAudioControlMessageInternal_cold_1();
        }

        else if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
        {
          audioStream_receivedAudioControlMessageInternal_cold_2();
        }
      }

      else
      {
        audioStream_receivedAudioControlMessageInternal_cold_7();
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  CFRelease(*a1);
  v6 = *(a1 + 16);
  if (v6)
  {
    CFRelease(v6);
  }
}

void audioStream_receivedMediaDataEventMessage_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  error = 0;
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2 != 1918989680 && a2 != 1920101748 && a2 != 1919513459)
  {
    goto LABEL_56;
  }

  v6 = *MEMORY[0x277CBECE8];
  if (FigCreateCFDataWithBlockBufferNoCopy())
  {
    audioStream_receivedMediaDataEventMessage_cold_1_0();
LABEL_56:
    v8 = 0;
    goto LABEL_57;
  }

  v7 = CFPropertyListCreateWithData(v6, 0, 0, 0, &error);
  v8 = v7;
  if (error)
  {
    audioStream_receivedMediaDataEventMessage_cold_2(&error, a4, v7, &v24);
    v8 = v24;
    goto LABEL_57;
  }

  if (!v7)
  {
    audioStream_receivedMediaDataEventMessage_cold_18();
    goto LABEL_57;
  }

  if (a2 != 1918989680)
  {
    if (a2 == 1919513459)
    {
      v14 = CFGetTypeID(v7);
      if (v14 == CFDictionaryGetTypeID())
      {
        CMBaseObjectGetDerivedStorage();
        if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CMBaseObjectGetDerivedStorage();
        CFStringGetTypeID();
        CFDictionaryGetTypedValue();
        if (FigCFEqual())
        {
          MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, v8);
          if (MutableCopy)
          {
            v17 = MutableCopy;
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            CFRelease(v17);
          }

          else
          {
            audioStream_receivedMediaDataEventMessage_cold_17();
          }
        }
      }

      else
      {
        audioStream_receivedMediaDataEventMessage_cold_16();
      }
    }

    else
    {
      v9 = CFGetTypeID(v7);
      if (v9 == CFDictionaryGetTypeID())
      {
        audioStream_receivedMediaDataEventMessage_cold_4();
      }

      else
      {
        audioStream_receivedMediaDataEventMessage_cold_3();
      }
    }

    goto LABEL_57;
  }

  v10 = CFGetTypeID(v7);
  if (v10 != CFDictionaryGetTypeID())
  {
    audioStream_receivedMediaDataEventMessage_cold_5();
    goto LABEL_57;
  }

  v23 = 0;
  v24 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_receivedMediaDataEventMessage_cold_6();
  }

  CFDictionaryGetInt64Ranged();
  if (v23)
  {
    audioStream_receivedMediaDataEventMessage_cold_7();
    goto LABEL_49;
  }

  CFDictionaryGetInt64Ranged();
  if (v23)
  {
    audioStream_receivedMediaDataEventMessage_cold_8();
    goto LABEL_49;
  }

  CFDictionaryGetInt64();
  if (v23)
  {
    audioStream_receivedMediaDataEventMessage_cold_9();
    goto LABEL_49;
  }

  v12 = *MEMORY[0x277CE9F38];
  if (CFDictionaryContainsKey(v8, *MEMORY[0x277CE9F38]))
  {
    v13 = v12;
    goto LABEL_30;
  }

  v15 = *MEMORY[0x277CE9F30];
  if (CFDictionaryContainsKey(v8, *MEMORY[0x277CE9F30]))
  {
    v13 = v15;
LABEL_30:
    if (CFDictionaryGetValue(v8, v13))
    {
      if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v23 = APSStatsHistogramCreateFromSerializedDictionary();
      if (v23)
      {
        audioStream_receivedMediaDataEventMessage_cold_10();
      }

      else
      {
        v18 = APSStatsHistogramCopyAsRTCString();
        if (v18)
        {
          v19 = v18;
          if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (*(DerivedStorage + 48))
          {
            Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (Mutable)
            {
              v21 = Mutable;
              CFDictionarySetValue(Mutable, *MEMORY[0x277CEA068], *(DerivedStorage + 48));
              FigSimpleMutexLock();
              FigSimpleMutexUnlock();
              FigCFDictionarySetInt64();
              FigCFDictionarySetInt64();
              FigCFDictionarySetInt64();
              FigCFDictionarySetBoolean();
              CFDictionarySetValue(v21, *MEMORY[0x277CEA070], v24);
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
              CFRelease(v21);
            }

            else
            {
              audioStream_receivedMediaDataEventMessage_cold_11();
            }
          }

          else
          {
            audioStream_receivedMediaDataEventMessage_cold_12(&v23);
          }

          CFRelease(v19);
        }

        else
        {
          audioStream_receivedMediaDataEventMessage_cold_13();
        }
      }

      goto LABEL_49;
    }
  }

  audioStream_receivedMediaDataEventMessage_cold_14();
LABEL_49:
  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    audioStream_receivedMediaDataEventMessage_cold_15();
  }

LABEL_57:
  if (error)
  {
    CFRelease(error);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t __audioStream_startSilentAudio_block_invoke(uint64_t a1)
{
  inFormat.mSampleRate = 44100.0;
  *&inFormat.mFormatID = xmmword_2222985E0;
  *&inFormat.mBytesPerFrame = xmmword_2222985F0;
  if (AudioQueueNewOutput(&inFormat, audioStream_silentAudioCallback, 0, 0, 0, 0, (*(a1 + 32) + 488)))
  {
    return __audioStream_startSilentAudio_block_invoke_cold_1();
  }

  result = AudioQueueStart(*(*(a1 + 32) + 488), 0);
  if (result)
  {
    return __audioStream_startSilentAudio_block_invoke_cold_2();
  }

  if (gLogCategory_APEndpointStreamAudio <= 50)
  {
    if (gLogCategory_APEndpointStreamAudio != -1)
    {
      return __audioStream_startSilentAudio_block_invoke_cold_3();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __audioStream_startSilentAudio_block_invoke_cold_3();
    }
  }

  return result;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_13_8(int a1, int a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CFAllocatorRef allocator)
{

  return CFDictionaryCreateMutable(allocator, 0, a3, a4);
}

uint64_t mrcs_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMediaRemoteCommandSinkCreateWithNowPlayingAppPID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__7;
  v6 = getMRClientClass_softClass_0;
  v24 = __Block_byref_object_dispose__7;
  v25 = getMRClientClass_softClass_0;
  if (!getMRClientClass_softClass_0)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMRClientClass_block_invoke_0;
    v18 = &unk_27849ACC8;
    v19 = &v20;
    __getMRClientClass_block_invoke_0(&v15);
    v6 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  v7 = [[v6 alloc] initWithProcessIdentifier:a2 bundleIdentifier:0];
  if (!v7)
  {
    APMediaRemoteCommandSinkCreateWithNowPlayingAppPID_cold_4();
    v10 = 0;
    v9 = 0;
LABEL_18:
    v12 = 4294960568;
    goto LABEL_13;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__7;
  v8 = getMRPlayerPathClass_softClass_0;
  v24 = __Block_byref_object_dispose__7;
  v25 = getMRPlayerPathClass_softClass_0;
  if (!getMRPlayerPathClass_softClass_0)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMRPlayerPathClass_block_invoke_0;
    v18 = &unk_27849ACC8;
    v19 = &v20;
    __getMRPlayerPathClass_block_invoke_0(&v15);
    v8 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  v9 = [[v8 alloc] initWithOrigin:0 client:v7 player:0];
  if (!v9)
  {
    APMediaRemoteCommandSinkCreateWithNowPlayingAppPID_cold_3();
    v10 = 0;
    goto LABEL_18;
  }

  v10 = [objc_alloc(getMRDestinationClass_0()) initWithPlayerPath:v9];
  if (!v10)
  {
    APMediaRemoteCommandSinkCreateWithNowPlayingAppPID_cold_2();
    goto LABEL_18;
  }

  v11 = mrcs_createWithMRDestination(a1, v10, &cf);
  if (v11)
  {
    v12 = v11;
    APSLogErrorAt();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
    {
      APMediaRemoteCommandSinkCreateWithNowPlayingAppPID_cold_1(&cf, v9);
    }

    v12 = 0;
    *a3 = cf;
  }

LABEL_13:

  return v12;
}

void sub_2221433A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMRDestinationClass_0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__7;
  v0 = getMRDestinationClass_softClass_0;
  v7 = __Block_byref_object_dispose__7;
  v8 = getMRDestinationClass_softClass_0;
  if (!getMRDestinationClass_softClass_0)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMRDestinationClass_block_invoke_0;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getMRDestinationClass_block_invoke_0(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_222143498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t mrcs_createWithMRDestination(uint64_t a1, uint64_t a2, void *a3)
{
  if (_MergedGlobals_19 != -1)
  {
    mrcs_createWithMRDestination_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    mrcs_createWithMRDestination_cold_4();
    return 4294960568;
  }

  v6 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  if (!a2)
  {
    mrcs_createWithMRDestination_cold_3();
    v9 = 4294960591;
LABEL_13:
    CFRelease(v6);
    return v9;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__7;
  v7 = getMRNowPlayingControllerClass_softClass_0;
  v16 = __Block_byref_object_dispose__7;
  v17 = getMRNowPlayingControllerClass_softClass_0;
  if (!getMRNowPlayingControllerClass_softClass_0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getMRNowPlayingControllerClass_block_invoke_0;
    v11[3] = &unk_27849ACC8;
    v11[4] = &v12;
    __getMRNowPlayingControllerClass_block_invoke_0(v11);
    v7 = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  v8 = [[v7 alloc] initWithDestination:a2];
  v6[3] = v8;
  if (!v8)
  {
    mrcs_createWithMRDestination_cold_2();
    v9 = 4294960568;
    goto LABEL_13;
  }

  v9 = 0;
  *a3 = v6;
  return v9;
}

void sub_222143624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APMediaRemoteCommandSinkCreateWithRoutingContextUUID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v5 = [objc_alloc(getMRDestinationClass_0()) initWithOutputContextUID:a2];
  if (v5)
  {
    v6 = mrcs_createWithMRDestination(a1, v5, &cf);
    if (v6)
    {
      v7 = v6;
      APSLogErrorAt();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v7 = 0;
      *a3 = cf;
    }
  }

  else
  {
    APMediaRemoteCommandSinkCreateWithRoutingContextUUID_cold_1();
    v7 = 4294960568;
  }

  return v7;
}

uint64_t APMediaRemoteCommandSinkHandleAPCommand(uint64_t result, int a2)
{
  v3 = result;
  if (gLogCategory_APMediaRemoteCommandSink <= 50)
  {
    if (gLogCategory_APMediaRemoteCommandSink != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  if (a2 <= 1886154866)
  {
    if (a2 <= 1852404844)
    {
      if (a2 <= 1685086580)
      {
        if (a2 == 1650878052)
        {
          *(v3 + 16) = 1;
          v4 = 8;
          goto LABEL_60;
        }

        if (a2 == 1651668836)
        {
          *(v3 + 16) = -1;
          v4 = 10;
          goto LABEL_60;
        }

        goto LABEL_51;
      }

      if (a2 != 1685086581)
      {
        if (a2 == 1852008560)
        {
          v4 = 100;
          goto LABEL_60;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (a2 > 1885959276)
      {
        if (a2 != 1885959277)
        {
          if (a2 == 1886151033)
          {
            if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
            {
              APMediaRemoteCommandSinkHandleAPCommand_cold_2();
            }

            v4 = 0;
            goto LABEL_60;
          }

          if (a2 == 1886151528)
          {
            v4 = 101;
LABEL_60:

            return APMediaRemoteCommandSinkHandleMRCommand(v3, v4, 0);
          }

          goto LABEL_51;
        }

LABEL_33:
        v4 = 5;
        goto LABEL_60;
      }

      if (a2 == 1852404845)
      {
        v4 = 4;
        goto LABEL_60;
      }

      if (a2 != 1885435251)
      {
        goto LABEL_51;
      }
    }

    v4 = 1;
    goto LABEL_60;
  }

  if (a2 <= 1936225382)
  {
    if (a2 <= 1919967587)
    {
      if (a2 == 1886154867)
      {
        v4 = 2;
        goto LABEL_60;
      }

      if (a2 == 1886155379)
      {
        v5 = *(v3 + 16);
        if (v5 == -1)
        {
          v4 = 11;
        }

        else if (v5 == 1)
        {
          v4 = 9;
        }

        else
        {
          if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
          {
            APMediaRemoteCommandSinkHandleAPCommand_cold_1();
          }

          v4 = 0;
        }

        *(v3 + 16) = 0;
        goto LABEL_60;
      }

      goto LABEL_51;
    }

    if (a2 == 1919967588)
    {
      v4 = 7;
      goto LABEL_60;
    }

    if (a2 != 1920166260)
    {
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  if (a2 <= 1936420965)
  {
    if (a2 == 1936225383)
    {
      v4 = 6;
      goto LABEL_60;
    }

    if (a2 == 1936420962)
    {
      v4 = 18;
      goto LABEL_60;
    }
  }

  else
  {
    switch(a2)
    {
      case 1936420966:
        v4 = 17;
        goto LABEL_60;
      case 1936748403:
        v4 = 24;
        goto LABEL_60;
      case 1937010544:
        v4 = 3;
        goto LABEL_60;
    }
  }

LABEL_51:
  if (gLogCategory_APMediaRemoteCommandSink <= 60)
  {
    if (gLogCategory_APMediaRemoteCommandSink != -1)
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

uint64_t APMediaRemoteCommandSinkHandleMRCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a1 + 24);

  return [v6 sendCommand:a2 options:a3 completion:0];
}

void mrcs_Finalize(uint64_t a1)
{
  if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
  {
    mrcs_Finalize_cold_1();
  }

  *(a1 + 24) = 0;
}

Class __getMRClientClass_block_invoke_0(uint64_t a1)
{
  MediaRemoteLibrary_1();
  result = objc_getClass("MRClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRClientClass_block_invoke_cold_1();
  }

  getMRClientClass_softClass_0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void MediaRemoteLibrary_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary_2)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __MediaRemoteLibraryCore_block_invoke_2;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_27849FD08;
    v2 = 0;
    MediaRemoteLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!MediaRemoteLibraryCore_frameworkLibrary_2)
  {
    MediaRemoteLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __MediaRemoteLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getMRPlayerPathClass_block_invoke_0(uint64_t a1)
{
  MediaRemoteLibrary_1();
  result = objc_getClass("MRPlayerPath");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRPlayerPathClass_block_invoke_cold_1();
  }

  getMRPlayerPathClass_softClass_0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMRDestinationClass_block_invoke_0(uint64_t a1)
{
  MediaRemoteLibrary_1();
  result = objc_getClass("MRDestination");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRDestinationClass_block_invoke_cold_1();
  }

  getMRDestinationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMRNowPlayingControllerClass_block_invoke_0(uint64_t a1)
{
  MediaRemoteLibrary_1();
  result = objc_getClass("MRNowPlayingController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRNowPlayingControllerClass_block_invoke_cold_1();
  }

  getMRNowPlayingControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t endpointCluster_getSubEndpointDeviceClass(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (a2)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v3 || v3(CMBaseObject, *MEMORY[0x277CC14F0], *MEMORY[0x277CBECE8], &cf))
    {
      if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = 0;
    }

    else
    {
      v4 = FigEndpointSubTypeToGestaltDeviceClass(cf);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    endpointCluster_getSubEndpointDeviceClass_cold_1();
    return 0;
  }

  return v4;
}

uint64_t endpointCluster_handleSubEndpointVolumeDidChange(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (!a5)
  {
    return endpointCluster_handleSubEndpointVolumeDidChange_cold_2();
  }

  v9 = DerivedStorage;
  CFNumberGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (endpointCluster_isSubEndpointVolumeLeader(a2, a4))
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*v9 == 3)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(CMBaseObject, @"RoomUUID", *MEMORY[0x277CBECE8], &key);
        if (key)
        {
          CFDictionaryReplaceValue(*(v9 + 632), key, TypedValue);
        }
      }
    }

    if (*v9 == 3)
    {
      v13 = a4;
    }

    else
    {
      v13 = 0;
    }

    endpointCluster_postVolumeDidChange(a2, v13, TypedValue);
  }

  else if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointCluster_handleSubEndpointIsMutedDidChange(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (endpointCluster_isSubEndpointVolumeLeader(a2, a4))
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*DerivedStorage == 3)
    {
      v7 = a4;
    }

    else
    {
      v7 = 0;
    }

    endpointCluster_postIsMutedDidChange(a2, v7);
  }

  else if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointCluster_handleLocalEndpointFinishedDeactivation(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 376))
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_handleLocalEndpointFinishedDeactivation_cold_1();
    }

    endpointCluster_updateClusterChangeProgress(a2, 0, 1);
    endpointCluster_handleSubEndpointResult(a2, *(DerivedStorage + 384), *(DerivedStorage + 8), -72277, 1);
    endpointCluster_postNeedDeactivationForClusterChange(a2, 0);
    endpointCluster_sendActivationMetrics(a2, 261);
  }

  else
  {
    if (*(DerivedStorage + 488))
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_handleLocalEndpointFinishedDeactivation_cold_2();
      }

      v4 = a2;
      v5 = 0;
    }

    else
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_handleLocalEndpointFinishedDeactivation_cold_3();
      }

      v4 = a2;
      v5 = 1;
    }

    endpointCluster_updateClusterChangeProgress(v4, v5, 1);
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointCluster_handleSubEndpointDescriptionChanged(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a5)
  {
    v8 = CFDictionaryGetInt64() || CFDictionaryGetInt64() || CFDictionaryGetInt64() != 0;
    v9 = CFDictionaryGetInt64() != 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  endpointCluster_updateFromSubEndpoint(a2, a4, 0, v8, v9, 1);

  return FigSimpleMutexUnlock();
}

uint64_t CompletionCallbackContextAddSubEndpoint(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if (!CFDictionaryContainsKey(*(a1 + 88), a2))
  {
    CFDictionarySetValue(*(a1 + 88), a2, *MEMORY[0x277CBEEE8]);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointCluster_handleSubEndpointNonPersistentReceiverSessionStarted()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t endpointCluster_activateSubEndpoint(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if ((*(DerivedStorage + 376) - 4) <= 0xFFFFFFFD)
  {
    return endpointCluster_activateSubEndpoint_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CFRetain(a2);
  v4 = *(DerivedStorage + 320);
  if (!v4 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 448);
  v6 = CFRetain(*(DerivedStorage + 384));
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 32);
  result = VTable + 32;
  v10 = *(v9 + 8);
  if (v10)
  {

    return v10(v4, a2, v5, endpointCluster_activateSubEndpointCallback, v6);
  }

  return result;
}

uint64_t APEndpointClusterRemoveSubEndpoint(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (!a2)
  {
    APEndpointClusterRemoveSubEndpoint_cold_3();
    v6 = 4294950576;
    goto LABEL_26;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(DerivedStorage + 8) && *DerivedStorage == 2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if ((*(DerivedStorage + 376) & 0xFFFFFFFE) == 2)
  {
    v5 = *(DerivedStorage + 320);
    if (!v5 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      APSLogErrorAt();
      v6 = 4294949690;
      goto LABEL_26;
    }

    endpointCluster_deactivateSubEndpoint(a1, v5, a2);
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v13.length = CFArrayGetCount(*(v7 + 336));
  v13.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v7 + 336), v13, a2);
  if (FirstIndexOfValue == -1)
  {
    APEndpointClusterRemoveSubEndpoint_cold_1();
  }

  else
  {
    CFArrayRemoveValueAtIndex(*(v7 + 336), FirstIndexOfValue);
    v9 = *(v7 + 384);
    if (v9)
    {
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(*(v9 + 88), a2);
      updated = completionCallbackContext_updateStateFromResponses(v9);
      FigSimpleMutexUnlock();
      if (updated)
      {
        endpointCluster_handleClusterFatalError(a1, -17606, 1);
      }
    }
  }

  v11 = endpointCluster_updateFromSubEndpoint(a1, a2, 1, 1, 1, 1);
  if (v11)
  {
    v6 = v11;
    APEndpointClusterRemoveSubEndpoint_cold_2();
  }

  else
  {
    endpointCluster_failDelayManageSubEndpoint(a1, a2, 2);
    if (*(DerivedStorage + 432))
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFSetRemoveValue(*(DerivedStorage + 432), a2);
    }

    endpointCluster_updateHealthState(a1);
    v6 = 0;
  }

LABEL_26:
  FigSimpleMutexUnlock();
  return v6;
}

void endpointCluster_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 40) = 0;
  }

  FigSimpleMutexDestroy();
  if (*(DerivedStorage + 376))
  {
    if (gLogCategory_APEndpointCluster <= 100 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_Finalize_cold_1();
    }

    __break(1u);
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(DerivedStorage + 616);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 616) = 0;
    }

    v3 = *(DerivedStorage + 592);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 592) = 0;
    }

    v4 = *(DerivedStorage + 600);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 600) = 0;
    }

    v5 = *(DerivedStorage + 608);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 608) = 0;
    }

    v6 = *(DerivedStorage + 336);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 336) = 0;
    }

    v7 = *(DerivedStorage + 288);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 288) = 0;
    }

    v8 = *(DerivedStorage + 296);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 296) = 0;
    }

    v9 = *(DerivedStorage + 368);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 368) = 0;
    }

    v10 = *(DerivedStorage + 344);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 344) = 0;
    }

    v11 = *(DerivedStorage + 352);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 352) = 0;
    }

    v12 = *(DerivedStorage + 360);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 360) = 0;
    }

    v13 = *(DerivedStorage + 624);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 624) = 0;
    }

    v14 = *(DerivedStorage + 632);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 632) = 0;
    }

    v15 = *(DerivedStorage + 648);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 648) = 0;
    }

    v16 = *(DerivedStorage + 16);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 16) = 0;
    }

    v17 = *(DerivedStorage + 32);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 32) = 0;
    }

    v18 = *(DerivedStorage + 8);
    if (v18)
    {
      CFRelease(v18);
      *(DerivedStorage + 8) = 0;
    }

    v19 = *(DerivedStorage + 96);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 96) = 0;
    }

    v20 = *(DerivedStorage + 104);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 104) = 0;
    }

    v21 = *(DerivedStorage + 192);
    if (v21)
    {
      CFRelease(v21);
      *(DerivedStorage + 192) = 0;
    }
  }
}

uint64_t endpointCluster_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpointCluster_SetProperty_cold_5();
    return 4294950576;
  }

  if (!a3)
  {
    endpointCluster_SetProperty_cold_4();
    return 4294950576;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, *MEMORY[0x277CC15A8]) || CFEqual(a2, *MEMORY[0x277CC15C0]))
  {
    v7 = CMBaseObjectGetDerivedStorage();
    Count = CFArrayGetCount(*(v7 + 336));
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (Count >= 1)
    {
      if (endpointCluster_getSubEndpointVolumeLeader(a1))
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v10)
        {
          v11 = v10(CMBaseObject, a2, a3);
          if (!v11)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v11 = 4294954514;
        }

        APSLogErrorAt();
        if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_26;
      }

      endpointCluster_SetProperty_cold_1();
    }

    v11 = 4294949690;
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC12E0]))
    {
      Value = CFBooleanGetValue(a3);
      if (*(DerivedStorage + 509) == Value)
      {
        v11 = 0;
      }

      else
      {
        *(DerivedStorage + 509) = Value;
        v11 = endpointCluster_addOrRemoveLocalSubEndpointForEchoCancellationIfNeeded();
        if (v11)
        {
          endpointCluster_SetProperty_cold_2();
        }
      }

      goto LABEL_27;
    }

    if (!*(DerivedStorage + 320))
    {
      endpointCluster_SetProperty_cold_3();
      v11 = 4294954509;
      goto LABEL_27;
    }

    v14 = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v11 = v15(v14, a2, a3);
      if (!v11)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v11 = 4294954514;
    }
  }

LABEL_26:
  APSLogErrorAt();
LABEL_27:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t endpointCluster_copyShowInfoDictionary(uint64_t a1, __CFDictionary **a2)
{
  v27 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value[0] = 0;
  value[1] = 0;
  v26 = 0;
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      endpointCluster_copyShowInfoDictionary_cold_1();
      return 0;
    }

    v8 = Mutable;
    SNPrintF();
    CFDictionarySetCString();
    v9 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v8, @"IsClusterEndpoint", *MEMORY[0x277CBED28]);
    v10 = *MEMORY[0x277CBED10];
    if (*(v5 + 8))
    {
      v11 = v9;
    }

    else
    {
      v11 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v8, @"IsLocal", v11);
    if (*(v5 + 376) == 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    CFDictionarySetValue(v8, @"Activated", v12);
    v13 = *(v5 + 288);
    if (!v13)
    {
      v13 = *(v5 + 296);
    }

    CFDictionarySetValue(v8, @"Name", v13);
    endpointCluster_copyClusterCompositionAsArray(a1, value);
    v14 = value[0];
    CFDictionarySetValue(v8, @"ClusterComposition", value[0]);
    v15 = *(v5 + 368);
    if (v15)
    {
      CFDictionarySetValue(v8, @"ClusterLeaderUUID", v15);
    }

    CFDictionarySetValue(v8, @"PersistentGroupUUID", *(v5 + 16));
    v16 = APSClusterTypeToDescriptionString();
    CFDictionarySetValue(v8, @"PersistentGroupType", v16);
    CFDictionarySetInt64();
    Count = CFArrayGetCount(*(v5 + 336));
    if (Count <= 0)
    {
      *a2 = v8;
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v18 = Count;
      v19 = CFArrayCreateMutable(v6, Count, MEMORY[0x277CBF128]);
      for (i = 0; i != v18; ++i)
      {
        cf = 0;
        CFArrayGetValueAtIndex(*(v5 + 336), i);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v22)
        {
          v22(CMBaseObject, @"EndpointShowInfo", v6, &cf);
        }

        if (cf)
        {
          CFArrayAppendValue(v19, cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      CFDictionarySetValue(v8, @"SubEndpointShowInfoDicts", v19);
      *a2 = v8;
      if (v19)
      {
        CFRelease(v19);
      }

      if (!v14)
      {
        return 0;
      }
    }

    CFRelease(v14);
    return 0;
  }

  endpointCluster_copyShowInfoDictionary_cold_2();
  return 4294950576;
}

uint64_t endpointCluster_getClusterModelBasedOnClusterMembersModels()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 336);
  v2 = *DerivedStorage;

  return endpointCluster_getClusterModelBasedOnAnyMemberModels(v2, v1);
}

uint64_t FigEndpointCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

CFTypeRef __endpointCluster_copyClusterHierarchyAsArray_block_invoke_3()
{
  result = FigCFDictionaryGetValue();
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void __endpointCluster_getClusterModelBasedOnAnyMemberModels_block_invoke(void *a1)
{
  v2 = (*(a1[4] + 16))();
  if (v2)
  {
    v3 = v2;
    *(*(a1[5] + 8) + 24) |= CFStringHasPrefix(v2, @"AudioAccessory5");
    *(*(a1[6] + 8) + 24) |= CFStringHasPrefix(v3, @"AudioAccessory6");

    CFRelease(v3);
  }
}

uint64_t __endpointCluster_getClusterModelBasedOnClusterMembersModels_block_invoke()
{
  v3 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v1)
  {
    return 0;
  }

  v1(CMBaseObject, *MEMORY[0x277CC1440], *MEMORY[0x277CBECE8], &v3);
  return v3;
}

__CFString *endpointCluster_subEndpointSupportProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointCluster <FigEndpointSubEndpointSupportProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t endpointCluster_CopySubEndpointProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 320);
  FigEndpointSubEndpointSupportProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v12 = *(ProtocolVTable + 16)) == 0)
  {
    v15 = 4294954508;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_18;
  }

  v13 = *(v12 + 8);
  if (!v13)
  {
    v15 = 4294954514;
    goto LABEL_17;
  }

  v14 = v13(v10, a2, a3, a4, a5);
  v15 = v14;
  if (v14 != -12784 && v14 != -6727 && v14 != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t endpointCluster_SetSubEndpointProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 320);
  FigEndpointSubEndpointSupportProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v10 = *(ProtocolVTable + 16)) == 0)
  {
    v13 = 4294954508;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_18;
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
    v13 = 4294954514;
    goto LABEL_17;
  }

  v12 = v11(v8, a2, a3, a4);
  v13 = v12;
  if (v12 != -12784 && v12 != -6727 && v12 != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t endpointCluster_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 336));
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 8);
  v12 = APSClusterTypeToDescriptionString();
  v13 = "Local";
  if (!v11)
  {
    v13 = "Remote";
  }

  v14 = (*(a5 + 16))(a5, a3, "ClusterEndpoint:[%{ptr}] (%s %@) %''@ PGUUID:%@ Parent:[%{ptr}]\n", a1, v13, v12, *(DerivedStorage + 288), *(DerivedStorage + 16), a2);
  if (v14)
  {
    v21 = v14;
    endpointCluster_DumpHierarchy_cold_1();
    goto LABEL_21;
  }

  if (Count >= 1)
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 336), v15);
      APSHierarchyReporterProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (!ProtocolVTable)
      {
        break;
      }

      v18 = *(ProtocolVTable + 16);
      if (!v18)
      {
        break;
      }

      v19 = *(v18 + 8);
      if (!v19)
      {
        v21 = 4294954514;
        goto LABEL_15;
      }

      v20 = v19(ValueAtIndex, a1, a3 + 1, 0, a5);
      v21 = v20;
      if (v20 == -12782 || v20 == -12788)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (v21)
      {
        endpointCluster_DumpHierarchy_cold_2();
        goto LABEL_21;
      }

      if (Count == ++v15)
      {
        goto LABEL_20;
      }
    }

    v21 = 4294954508;
LABEL_15:
    v21 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", ValueAtIndex, 0, " ", 0, 0, v21, a1);
    goto LABEL_16;
  }

LABEL_20:
  v21 = 0;
LABEL_21:
  FigSimpleMutexUnlock();
  return v21;
}

uint64_t endpointCluster_Activate(const void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    CFDictionaryGetInt64();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
  }

  v10 = &unk_27CFF1000;
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_Activate_cold_1();
    updated = 4294950573;
    goto LABEL_68;
  }

  if (endpointCluster_usesPersistentConnection() && !CFDictionaryGetInt64())
  {
    if (*(DerivedStorage + 376))
    {
      updated = endpointCluster_updateFeaturesInternal(a1, 1, *(DerivedStorage + 400) | a2, a3, a4, a5);
      goto LABEL_53;
    }

    if (endpointCluster_Activate_cold_2())
    {
      v39 = 0;
      updated = 4294951716;
LABEL_75:
      endpointCluster_CallActivationCompletionCallback(a1, *(DerivedStorage + 456), v39, updated, a4);
      goto LABEL_53;
    }

    updated = v42;
LABEL_68:
    v38 = v10[654];
    if (v38 <= 50 && (v38 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (updated == -16727)
    {
      v39 = a2;
    }

    else
    {
      v39 = 0;
    }

    goto LABEL_75;
  }

  if (*(DerivedStorage + 376))
  {
    endpointCluster_Activate_cold_3();
    updated = 4294950569;
    goto LABEL_68;
  }

  if (*(DerivedStorage + 320))
  {
    endpointCluster_Activate_cold_4();
    updated = 4294949690;
    goto LABEL_68;
  }

  if (CFArrayGetCount(*(DerivedStorage + 336)) <= 0)
  {
    endpointCluster_Activate_cold_11();
    updated = 4294895306;
    goto LABEL_68;
  }

  APSEventRecorderRecordEventWithFlags();
  v11 = *MEMORY[0x277CBECE8];
  v12 = *(DerivedStorage + 288);
  if (!v12)
  {
    v12 = *(DerivedStorage + 296);
  }

  AsCluster = APEndpointAggregateCreateAsCluster(*MEMORY[0x277CBECE8], *(DerivedStorage + 16), v12, *(DerivedStorage + 8) != 0, a1, *(DerivedStorage + 32), *(DerivedStorage + 104), (DerivedStorage + 320));
  if (AsCluster)
  {
    updated = AsCluster;
    endpointCluster_Activate_cold_5();
    goto LABEL_68;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  *(DerivedStorage + 416) = 1;
  if (!a3)
  {
    goto LABEL_22;
  }

  if (CFDictionaryGetInt64())
  {
    *(DerivedStorage + 416) = 0;
    goto LABEL_23;
  }

  if (*(DerivedStorage + 416))
  {
LABEL_22:
    CMNotificationCenterGetDefaultLocalCenter();
    APSRemoteConfigGetShared();
    FigNotificationCenterAddWeakListener();
  }

LABEL_23:
  v15 = *(DerivedStorage + 320);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v16)
  {
    v16(v15, DerivedStorage + 208);
  }

  if (*DerivedStorage == 3)
  {
    v17 = *(DerivedStorage + 320);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v18)
    {
      v18(v17, DerivedStorage + 248);
    }
  }

  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v19 = endpointCluster_updateActivationState(a1, a3);
  if (v19)
  {
    updated = v19;
    goto LABEL_68;
  }

  allocator = v11;
  v20 = a2;
  v21 = a5;
  if (a3 && !CFDictionaryGetInt64())
  {
    APSRTCReportingAgentCreate();
  }

  v22 = *(DerivedStorage + 456) + 1;
  *(DerivedStorage + 456) = v22;
  v23 = *(DerivedStorage + 8) != 0;
  v24 = *(DerivedStorage + 184);
  v25 = *DerivedStorage;
  v26 = *(DerivedStorage + 24);
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_Activate_cold_6();
  }

  if (gCompletionCallbackContextInitOnce != -1)
  {
    endpointCluster_Activate_cold_7();
  }

  Instance = _CFRuntimeCreateInstance();
  v28 = Instance;
  if (!Instance)
  {
    updated = 4294960568;
    a2 = v20;
LABEL_64:
    v10 = &unk_27CFF1000;
LABEL_66:
    endpointCluster_Activate_cold_10(v28 == 0, updated, v28);
    goto LABEL_68;
  }

  *(Instance + 96) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 16) = CFRetain(a1);
  *(v28 + 24) = v23;
  *(v28 + 28) = v24;
  *(v28 + 32) = v25;
  *(v28 + 40) = v26;
  *(v28 + 48) = v22;
  a2 = v20;
  *(v28 + 56) = v20;
  *(v28 + 64) = a4;
  *(v28 + 72) = v21;
  v29 = FigSimpleMutexCreate();
  *(v28 + 80) = v29;
  if (!v29)
  {
    updated = 4294950575;
    goto LABEL_64;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v28 + 88) = Mutable;
  v10 = &unk_27CFF1000;
  if (!Mutable)
  {
    updated = 4294950575;
    goto LABEL_66;
  }

  *(DerivedStorage + 384) = v28;
  CFArrayGetCount(*(DerivedStorage + 336));
  CFArrayApplyBlock();
  v31 = malloc_type_calloc(1uLL, 0x18uLL, 0x60040A44E5E0CuLL);
  if (!v31)
  {
    endpointCluster_Activate_cold_9();
    updated = 4294950575;
    goto LABEL_68;
  }

  v32 = v31;
  *v31 = CFRetain(*(DerivedStorage + 320));
  v33 = *(DerivedStorage + 448);
  if (v33)
  {
    v33 = CFRetain(v33);
  }

  v32[1] = v33;
  v32[2] = CFRetain(*(DerivedStorage + 384));
  *(DerivedStorage + 376) = 1;
  endpointCluster_postIsInUseDidChangeNotification(a1, 1);
  *(DerivedStorage + 441) = endpointCluster_isEngaged();
  endpointCluster_updateHealthState(a1);
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_Activate_cold_8();
  }

  *(DerivedStorage + 400) = v20;
  *(DerivedStorage + 508) = 0;
  v34 = *(DerivedStorage + 320);
  v35 = *(DerivedStorage + 448);
  v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v36)
  {
    v36(v34, v20, v35, endpointCluster_handleInternalAggregateActivationCompletionCallback, v32);
  }

  updated = 0;
  *(DerivedStorage + 328) = 1;
LABEL_53:
  FigSimpleMutexUnlock();
  return updated;
}

uint64_t endpointCluster_Deactivate(const void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_Deactivate_cold_1();
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 376))
  {
    endpointCluster_Deactivate_cold_6(DerivedStorage, a1, &v19);
    updated = v19;
    goto LABEL_44;
  }

  if (!*(DerivedStorage + 320))
  {
    endpointCluster_Deactivate_cold_5();
    updated = 4294951716;
LABEL_44:
    endpointCluster_CallCompletionCallback(a1, *(DerivedStorage + 456), *(DerivedStorage + 400), updated, a3);
    if (*(DerivedStorage + 488))
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_Deactivate_cold_7();
      }

      endpointCluster_updateClusterChangeProgress(a1, 1, 0);
    }

    goto LABEL_18;
  }

  endpointCluster_sendActivationMetrics(a1, 251);
  *(DerivedStorage + 641) = 0;
  if (!*(DerivedStorage + 8))
  {
LABEL_15:
    v9 = 1;
LABEL_16:
    v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040069F93ABuLL);
    if (v10)
    {
      v11 = v10;
      *v10 = CFRetain(a1);
      v12 = CFRetain(*(DerivedStorage + 320));
      *(v11 + 24) = *(DerivedStorage + 456);
      v13 = *(DerivedStorage + 400);
      *(v11 + 8) = v12;
      *(v11 + 16) = v13;
      *(v11 + 32) = *(DerivedStorage + 488);
      *(v11 + 33) = *(DerivedStorage + 508);
      *(v11 + 34) = v9;
      *(v11 + 40) = a3;
      *(v11 + 48) = a4;
      endpointCluster_cancelPendingUpdateFeatureRequests();
      endpointCluster_resetActivationState(a1, a2, endpointCluster_handleInternalAggregateDeactivationCompletionCallback, v11);
      updated = 0;
      goto LABEL_18;
    }

    endpointCluster_Deactivate_cold_4();
    updated = 4294950575;
    goto LABEL_44;
  }

  if (CFDictionaryGetInt64())
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_Deactivate_cold_2();
    }

    if (!*(DerivedStorage + 488) && CFDictionaryGetInt64())
    {
      v18 = -71992;
      if (gLogCategory_APEndpointCluster > 50)
      {
        v9 = 1;
      }

      else
      {
        if (gLogCategory_APEndpointCluster != -1)
        {
          v9 = 1;
          goto LABEL_38;
        }

        v18 = -71992;
        v9 = 1;
        if (_LogCategory_Initialize())
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (*DerivedStorage != 1)
      {
        goto LABEL_15;
      }

      v18 = -71993;
      if (gLogCategory_APEndpointCluster > 50)
      {
        v9 = 0;
      }

      else
      {
        if (gLogCategory_APEndpointCluster != -1)
        {
          v9 = 0;
          goto LABEL_38;
        }

        v9 = 0;
        if (_LogCategory_Initialize())
        {
LABEL_38:
          LogPrintF();
        }
      }
    }

    endpointCluster_updateStatus(a1, v18, 1, 0);
    goto LABEL_16;
  }

  v16 = *(DerivedStorage + 400);
  if (!endpointCluster_usesPersistentConnection())
  {
    goto LABEL_15;
  }

  v17 = (v16 & (32 * (*DerivedStorage == 2)));
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_Deactivate_cold_3();
  }

  updated = endpointCluster_updateFeaturesInternal(a1, 2, v17, a2, a3, a4);
LABEL_18:
  FigSimpleMutexUnlock();
  return updated;
}

uint64_t endpointCluster_Dissociate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_Dissociate_cold_1();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 442) = 1;
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_Dissociate_cold_2();
  }

  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return 0;
}

uint64_t endpointCluster_SetDelegate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v3;
    v11 = *(a2 + 32);
    v8[1] = 0;
    v8[0] = *&v10[0];
    v9 = *(a2 + 48);
    v4 = endpointCluster_SetDelegateRouting(a1, v10);
    if (v4)
    {
      v5 = v4;
      endpointCluster_SetDelegate_cold_1();
    }

    else
    {
      v5 = endpointCluster_SetDelegateRemoteControl(a1, v8);
      if (v5)
      {
        endpointCluster_SetDelegate_cold_2();
      }
    }
  }

  else
  {
    v6 = endpointCluster_SetDelegateRouting(a1, 0);
    if (v6)
    {
      v5 = v6;
      endpointCluster_SetDelegate_cold_3();
    }

    else
    {
      v5 = endpointCluster_SetDelegateRemoteControl(a1, 0);
      if (v5)
      {
        endpointCluster_SetDelegate_cold_4();
      }
    }
  }

  return v5;
}

uint64_t endpointCluster_CreatePlaybackSession(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_CreatePlaybackSession_cold_1();
    v6 = 4294949690;
    goto LABEL_7;
  }

  v4 = *(DerivedStorage + 320);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v5)
  {
    v6 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    goto LABEL_7;
  }

  v6 = v5(v4, a2);
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t endpointCluster_UpdateFeatures(const void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  updated = endpointCluster_updateFeaturesInternal(a1, 0, a2, a3, a4, a5);
  FigSimpleMutexUnlock();
  return updated;
}

uint64_t endpointCluster_updateFeaturesInternal(const void *a1, int a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13 = *(DerivedStorage + 376);
  if (!v13)
  {
    endpointCluster_updateFeaturesInternal_cold_7();
    goto LABEL_65;
  }

  if (*(DerivedStorage + 488) || *(DerivedStorage + 508))
  {
    if (gLogCategory_APEndpointCluster > 90)
    {
      v31 = 0;
      v29 = 4294951716;
LABEL_80:
      endpointCluster_CallCompletionCallback(a1, *(DerivedStorage + 456), v31, v29, a5);
      endpointCluster_updateFeaturesFromSavedIfNeeded(a1);
      return v29;
    }

    if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    v29 = 4294951716;
    goto LABEL_73;
  }

  if (v13 == 3)
  {
    if (*(DerivedStorage + 400) == a3)
    {
      APSLogErrorAt();
      if (a2 == 2)
      {
        v29 = 4294951716;
      }

      else
      {
        v29 = 4294950569;
      }

      goto LABEL_73;
    }

    if (*(DerivedStorage + 320))
    {
      if (a2 != 1)
      {
LABEL_14:
        *(DerivedStorage + 400) = a3;
        v15 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A00407034790EuLL);
        if (v15)
        {
          v16 = v15;
          *v15 = a1;
          CFRetain(a1);
          v17 = *(DerivedStorage + 456);
          v16[1] = a3;
          v16[2] = v17;
          v16[3] = a5;
          v16[4] = a6;
          endpointCluster_addOrRemoveLocalSubEndpointForEchoCancellationIfNeeded();
          v18 = *(DerivedStorage + 320);
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v19)
          {
            v19(v18, a3, a4, endpointCluster_handleAggregateEndpointUpdateFeaturesCompleted, v16);
          }

          return 0;
        }

        endpointCluster_updateFeaturesInternal_cold_5();
        v29 = 4294950575;
        goto LABEL_73;
      }

      updated = endpointCluster_updateActivationState(a1, a4);
      if (!updated)
      {
        a4 = *(DerivedStorage + 448);
        goto LABEL_14;
      }

      v29 = updated;
LABEL_73:
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v29 == -16727)
      {
        v31 = a3;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_80;
    }

    endpointCluster_updateFeaturesInternal_cold_6();
LABEL_65:
    v29 = 4294949690;
    goto LABEL_73;
  }

  v20 = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(v20 + 624));
  if (Count <= 0)
  {
    v24 = gLogCategory_APEndpointCluster;
  }

  else
  {
    v32 = a6;
    v22 = Count - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(*(v20 + 624), Count - 1);
    v24 = gLogCategory_APEndpointCluster;
    if (gLogCategory_APEndpointCluster <= 40)
    {
      if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      v24 = gLogCategory_APEndpointCluster;
    }

    if (a2 == 2 && *(ValueAtIndex + 4) == 1)
    {
      if (v24 <= 50)
      {
        if (v24 != -1 || _LogCategory_Initialize())
        {
          endpointCluster_updateFeaturesInternal_cold_1();
        }

        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      endpointCluster_CallCompletionCallback(a1, *(v20 + 456), 0, 4294949692, ValueAtIndex[5]);
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      endpointCluster_CallCompletionCallback(a1, *(v20 + 456), a3, 0, a5);
      CFArrayRemoveValueAtIndex(*(v20 + 624), v22);
      return 0;
    }

    a6 = v32;
  }

  if (v24 <= 50 && (v24 != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_updateFeaturesInternal_cold_2();
  }

  v25 = CMBaseObjectGetDerivedStorage();
  if (gUpdateFeaturesRequestInitOnce != -1)
  {
    endpointCluster_updateFeaturesInternal_cold_3();
  }

  Instance = _CFRuntimeCreateInstance();
  v27 = Instance;
  if (!Instance)
  {
    v29 = 4294960568;
LABEL_72:
    endpointCluster_updateFeaturesInternal_cold_4(v27 == 0, v29, v27);
    goto LABEL_73;
  }

  *(Instance + 48) = 0;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(v27 + 24) = a3;
  if (a4)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a4);
    *(v27 + 32) = Copy;
    if (!Copy)
    {
      v29 = 4294950575;
      goto LABEL_72;
    }
  }

  *(v27 + 16) = a2;
  *(v27 + 40) = a5;
  *(v27 + 48) = a6;
  CFArrayAppendValue(*(v25 + 624), v27);
  CFRelease(v27);
  return 0;
}

void endpointCluster_forwardInternalAggregateNotification()
{
  CMBaseObjectGetDerivedStorage();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v1 = MutableCopy;
    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      CFDictionarySetInt64();
      FigSimpleMutexUnlock();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v1);
  }

  else
  {
    endpointCluster_forwardInternalAggregateNotification_cold_1();
  }
}

uint64_t endpointCluster_handleSubEndpointEngagedStateChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 320) != a4)
  {
    endpointCluster_updateIdleState(a2);
  }

  endpointCluster_updateEngagedState(a2);

  return FigSimpleMutexUnlock();
}

uint64_t endpointCluster_updateActivationState(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v6 = MutableCopy;
    if (a2)
    {
      CFDictionaryMergeDictionary();
    }

    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    Int64 = CFDictionaryGetInt64();
    v11 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v6, @"NoIdleTimeout", *MEMORY[0x277CBED28]);
    if (*DerivedStorage == 2 && !*(DerivedStorage + 8))
    {
      CFDictionarySetValue(v6, @"IsRemoteHTGroup", v11);
    }

    CFDictionarySetInt64();
    if (*(DerivedStorage + 8))
    {
      v12 = v11;
    }

    else
    {
      v12 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v6, @"IsPartOfLocalCluster", v12);
    CFDictionarySetValue(v6, @"Container", a1);
    v13 = *(DerivedStorage + 448);
    *(DerivedStorage + 448) = v6;
    CFRetain(v6);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(DerivedStorage + 472);
    *(DerivedStorage + 472) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(DerivedStorage + 480);
    *(DerivedStorage + 480) = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    *(DerivedStorage + 444) = Int64 != 0;
    if (Int64)
    {
      *(DerivedStorage + 496) = 1;
      *(DerivedStorage + 504) = 0;
    }

    v16 = *(DerivedStorage + 464);
    *(DerivedStorage + 464) = TypedValue;
    if (TypedValue)
    {
      CFRetain(TypedValue);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    CFRelease(v6);
    return 0;
  }

  else
  {
    endpointCluster_updateActivationState_cold_1();
    return 4294950575;
  }
}

void endpointCluster_postIsInUseDidChangeNotification(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    v5 = MEMORY[0x277CBED10];
    if (a2)
    {
      v5 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsInUse", *v5);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_postIsInUseDidChangeNotification_cold_1();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v4);
  }

  else
  {
    endpointCluster_postIsInUseDidChangeNotification_cold_2();
  }
}

uint64_t endpointCluster_isEngaged()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((!*(DerivedStorage + 8) || endpointCluster_usesPersistentConnection()) && *(DerivedStorage + 376) || !endpointCluster_isIdle())
  {
    return 1;
  }

  result = *(DerivedStorage + 320);
  if (result)
  {
    return APSGetFBOPropertyInt64() != 0;
  }

  return result;
}

void endpointCluster_handleInternalAggregateActivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v7 = *(*(a5 + 16) + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 112);
  if (v9)
  {
    if (gLogCategory_APEndpointCluster <= 50)
    {
      if (gLogCategory_APEndpointCluster != -1 || (v10 = _LogCategory_Initialize(), v9 = *(DerivedStorage + 112), v10))
      {
        LogPrintF();
        v9 = *(DerivedStorage + 112);
      }
    }

    sleep(v9);
  }

  FigSimpleMutexLock();
  if (a4)
  {
    *(DerivedStorage + 328) = 0;
  }

  v11 = *(a5 + 16);
  if (*(v11 + 48) != *(DerivedStorage + 456))
  {
    v13 = 4294949692;
    goto LABEL_16;
  }

  v12 = *(DerivedStorage + 376);
  if (!a4 && v12 == 1)
  {
    *(DerivedStorage + 376) = 2;
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (CFArrayGetCount(*(DerivedStorage + 336)) > 0)
    {
      if (*(DerivedStorage + 8))
      {
        if (APSIsLocalClusterWithStaticLeadershipEnabled())
        {
          endpointCluster_manageActivationTimeoutTimer(v7, *(a5 + 16));
        }

        else if (*DerivedStorage != 2 || *(DerivedStorage + 184) != 7)
        {
          goto LABEL_25;
        }

        endpointCluster_handleSubEndpointResult(v7, *(a5 + 16), *(DerivedStorage + 8), 0, 0);
      }

LABEL_25:
      endpointCluster_activateSubEndpointsIfNeeded(*(*(a5 + 16) + 16));
      goto LABEL_26;
    }

    APSLogErrorAt();
    v11 = *(a5 + 16);
    v13 = 4294949690;
LABEL_16:
    CompletionCallbackContextSetError(v11, v13);
    goto LABEL_26;
  }

  if (v12 == 1)
  {
    v13 = a4;
  }

  else
  {
    v13 = 4294949692;
  }

  if (v13)
  {
    goto LABEL_16;
  }

LABEL_26:
  FigSimpleMutexUnlock();
  CFRelease(*a5);
  v14 = *(a5 + 8);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a5 + 16);
  if (v15)
  {
    CFRelease(v15);
  }

  free(a5);
}

uint64_t endpointCluster_CallActivationCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    endpointCluster_cancelPendingUpdateFeatureRequests();
    endpointCluster_resetActivationState(a1, 0, 0, 0);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  Count = CFArrayGetCount(*(DerivedStorage + 336));
  if (Count)
  {
    v12 = Count;
    if (Count <= 0)
    {
      v13 = 0;
      v18 = *(DerivedStorage + 648);
      *(DerivedStorage + 648) = 0;
      if (!v18)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v20 = a2;
      v21 = a3;
      v13 = 0;
      v14 = 0;
      v15 = *MEMORY[0x277CBECE8];
      do
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 336), v14);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v17 && !v17(CMBaseObject, @"ActualTransportType", v15, &cf))
        {
          if (v13)
          {
            if (!CFEqual(cf, v13))
            {
              if (@"Mixed")
              {
                CFRetain(@"Mixed");
              }

              CFRelease(v13);
              v13 = @"Mixed";
            }
          }

          else
          {
            v13 = CFRetain(cf);
          }
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        ++v14;
      }

      while (v12 != v14);
      v18 = *(DerivedStorage + 648);
      *(DerivedStorage + 648) = v13;
      if (v13)
      {
        CFRetain(v13);
      }

      a2 = v20;
      a3 = v21;
      if (!v18)
      {
        goto LABEL_24;
      }
    }

    CFRelease(v18);
LABEL_24:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  endpointCluster_sendActivationMetrics(a1, 250);
  return endpointCluster_CallCompletionCallback(a1, a2, a3, a4, a5);
}

void endpointCluster_handleAggregateEndpointUpdateFeaturesCompleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a5[3])
  {
    CFRetain(*a5);
    APSDispatchAsyncFHelper();
  }

  FigSimpleMutexLock();
  endpointCluster_updateFeaturesFromSavedIfNeeded(*a5);
  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  CFRelease(*a5);
  free(a5);
}

uint64_t endpointCluster_CallCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    CFRetain(a1);
    return APSDispatchAsyncFHelper();
  }

  return result;
}

void endpointCluster_updateFeaturesFromSavedIfNeeded(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 624)) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 624), 0);
    v4 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 624), 0);
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    endpointCluster_updateFeaturesInternal(a1, *(v4 + 4), *(v4 + 3), *(v4 + 4), *(v4 + 5), *(v4 + 6));

    CFRelease(v4);
  }
}

uint64_t _UpdateFeaturesRequestGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gUpdateFeaturesRequestTypeID = result;
  return result;
}

void _UpdateFeaturesRequestFinalize(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }

  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    _UpdateFeaturesRequestFinalize_cold_1();
  }
}

uint64_t endpointCluster_isIdle()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 336)) < 1)
  {
    return 1;
  }

  v1 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 336), v1);
    if (APSGetFBOPropertyInt64())
    {
      break;
    }

    if (++v1 >= CFArrayGetCount(*(DerivedStorage + 336)))
    {
      return 1;
    }
  }

  return 0;
}

void endpointCluster_deferredHandleIdleStateChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a1 + 8) && *(DerivedStorage + 408) && *(DerivedStorage + 376) == 3)
  {
    v3 = *a1;
    v4 = CMBaseObjectGetDerivedStorage();
    v5 = v4;
    v6 = *(v4 + 56);
    if (v6)
    {
      dispatch_source_cancel(*(v4 + 56));
      dispatch_release(v6);
      *(v5 + 56) = 0;
    }

    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(v5 + 56) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v5 + 40));
    CFRetain(v3);
    dispatch_set_context(*(v5 + 56), v3);
    dispatch_source_set_event_handler_f(*(v5 + 56), endpointCluster_inactivityTimerFired);
    dispatch_source_set_cancel_handler_f(*(v5 + 56), endpointCluster_inactivityTimerCancelled);
    v8 = *(v5 + 56);
    v9 = dispatch_time(0, 1000000000 * *(v5 + 176));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(v5 + 56));
  }

  else
  {
    v7 = *(DerivedStorage + 56);
    if (v7)
    {
      dispatch_source_cancel(*(DerivedStorage + 56));
      dispatch_release(v7);
      *(DerivedStorage + 56) = 0;
    }
  }

  FigSimpleMutexUnlock();
  v10 = *a1;

  CFRelease(v10);
}

uint64_t endpointCluster_inactivityTimerFired(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 56));
    dispatch_release(v3);
    *(DerivedStorage + 56) = 0;
  }

  if (endpointCluster_isIdle() && *(DerivedStorage + 376) == 3)
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_inactivityTimerFired_cold_1();
    }

    endpointCluster_updateStatus(a1, -72276, 1, 1);
  }

  return FigSimpleMutexUnlock();
}

void endpointCluster_inactivityTimerCancelled(CFTypeRef cf)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_inactivityTimerCancelled_cold_1();
  }

  CFRelease(cf);
}

void endpointCluster_postNeedDeactivationForClusterChange(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    v5 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v5 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"ClusterFailed", *v5);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v4);
  }

  else
  {
    endpointCluster_postNeedDeactivationForClusterChange_cold_1();
  }
}

void __endpointCluster_callDelegateHandleFailed_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    __endpointCluster_callDelegateHandleFailed_block_invoke_cold_1();
  }

  (*(a1 + 48))(*(a1 + 32), *(a1 + 56), *(a1 + 40), *(a1 + 64));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    CFRelease(v3);
  }
}

void endpointCluster_handleClusterFatalError(const void *a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  v7 = *(DerivedStorage + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __endpointCluster_handleClusterFatalError_block_invoke;
  block[3] = &__block_descriptor_tmp_181_0;
  block[4] = DerivedStorage;
  block[5] = a1;
  v9 = a2;
  v10 = a3;
  dispatch_async(v7, block);
}

CFIndex endpointCluster_activateSubEndpointsIfNeeded(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 336));
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 336), i);
      if (endpointCluster_shouldActivateSubEndpoint(a1, ValueAtIndex))
      {
        endpointCluster_activateSubEndpoint(a1, ValueAtIndex);
      }

      result = CFArrayGetCount(*(DerivedStorage + 336));
    }
  }

  return result;
}

uint64_t _CompletionCallbackContextGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gCompletionCallbackContextTypeID = result;
  return result;
}

uint64_t _CompletionCallbackContextFinalize(uint64_t a1)
{
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    _CompletionCallbackContextFinalize_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 88) = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t endpointCluster_manageActivationTimeoutTimer(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  return APSDispatchAsyncFHelper();
}

void endpointCluster_handleSubEndpointResult(const void *a1, uint64_t a2, const void *a3, int a4, int a5)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFDictionarySetInt64();
  updated = completionCallbackContext_updateStateFromResponses(a2);
  FigSimpleMutexUnlock();
  if (updated)
  {

    endpointCluster_handleClusterFatalError(a1, a4, a5);
  }

  else
  {
LABEL_10:
    if (a4)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a5 || !APSGetFBOPropertyInt64())
      {
        if (*(DerivedStorage + 376))
        {
          if (!*(DerivedStorage + 432))
          {
            if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
            {
              endpointCluster_handleSubEndpointResult_cold_1();
            }

            *(DerivedStorage + 432) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
          }

          if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CFSetAddValue(*(DerivedStorage + 432), a3);
        }

        endpointCluster_failDelayManageSubEndpoint(a1, a3, 1);
      }

      else
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        endpointCluster_triggerLostClusterBuddyReconnectionLogic(a1, a3);
      }
    }
  }
}

uint64_t CompletionCallbackContextSetError(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  completionCallbackContext_setState(a1, 1, a2);

  return FigSimpleMutexUnlock();
}

void endpointCluster_deferredConfigureActivationTimeoutTimer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a1 + 16) && (v3 = *(a1 + 8)) != 0 && (FigSimpleMutexLock(), v4 = *(v3 + 96), FigSimpleMutexUnlock(), !v4))
  {
    v6 = *(a1 + 8);
    v7 = CMBaseObjectGetDerivedStorage();
    if (*(v7 + 48))
    {
      endpointCluster_deferredConfigureActivationTimeoutTimer_cold_1();
    }

    else
    {
      v8 = v7;
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v8 + 48) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v8 + 40));
      CFRetain(v6);
      dispatch_set_context(*(v8 + 48), v6);
      dispatch_source_set_event_handler_f(*(v8 + 48), endpointCluster_activationTimerFired);
      dispatch_source_set_cancel_handler_f(*(v8 + 48), endpointCluster_activationTimerCancelled);
      v9 = *(v8 + 48);
      v10 = dispatch_time(0, 1000000000 * *(v8 + 180));
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      dispatch_resume(*(v8 + 48));
    }
  }

  else
  {
    v5 = *(DerivedStorage + 48);
    if (v5)
    {
      dispatch_source_cancel(*(DerivedStorage + 48));
      dispatch_release(v5);
      *(DerivedStorage + 48) = 0;
    }
  }

  FigSimpleMutexUnlock();
  v11 = *(a1 + 8);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *a1;

  CFRelease(v12);
}

uint64_t endpointCluster_activationTimerFired(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 48));
    dispatch_release(v3);
    *(DerivedStorage + 48) = 0;
  }

  FigSimpleMutexLock();
  v4 = *(a1 + 96);
  FigSimpleMutexUnlock();
  if (!v4)
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_activationTimerFired_cold_1();
    }

    CompletionCallbackContextSetError(a1, 4294950572);
  }

  return FigSimpleMutexUnlock();
}

void endpointCluster_activationTimerCancelled(CFTypeRef cf)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_activationTimerCancelled_cold_1();
  }

  CFRelease(cf);
}

uint64_t completionCallbackContext_updateStateFromResponses(uint64_t a1)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3000000000;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = *(a1 + 32);
  CFDictionaryApplyBlock();
  if (!*(v12 + 24))
  {
    if (v2 == 2)
    {
      v5 = *(v24 + 6);
      v3 = *(v8 + 6);
      if (*(a1 + 24) && *(a1 + 28) == 7)
      {
LABEL_12:
        v3 = 0;
LABEL_26:
        v4 = 1;
        goto LABEL_45;
      }

      if (*(v28 + 24))
      {
        if (!v5)
        {
          v4 = 0;
          v3 = *(v24 + 6);
          goto LABEL_45;
        }

        if (v5 != 1)
        {
          goto LABEL_26;
        }

        if (!*(a1 + 24) || v18[4] > 0)
        {
          goto LABEL_12;
        }

        if (v18[3] <= 0 && (*(a1 + 28) != 4 || v18[5] >= *(a1 + 40) - 1))
        {
          goto LABEL_26;
        }
      }

      else if (v18[3] <= 0)
      {
        if (gLogCategory_APEndpointCluster > 90)
        {
          v4 = 1;
          v3 = 4294949690;
          goto LABEL_6;
        }

        if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
        {
          completionCallbackContext_updateStateFromResponses_cold_2();
        }

        v4 = 1;
        v3 = 4294949690;
LABEL_45:
        if (gLogCategory_APEndpointCluster > 50 || gLogCategory_APEndpointCluster == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        goto LABEL_47;
      }

      v3 = 0;
      v4 = 0;
      goto LABEL_45;
    }

    if (v18[4] <= 0)
    {
      if (v18[3] > 0)
      {
        v4 = 0;
        v3 = 0;
        goto LABEL_29;
      }

      if (v18[5] <= 0)
      {
        v3 = 4294949690;
      }

      else
      {
        v3 = *(v8 + 6);
      }
    }

    else
    {
      v3 = 0;
    }

    v4 = 1;
LABEL_29:
    if (gLogCategory_APEndpointCluster > 50 || gLogCategory_APEndpointCluster == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_6;
    }

LABEL_47:
    LogPrintF();
    goto LABEL_6;
  }

  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    completionCallbackContext_updateStateFromResponses_cold_1();
  }

  v3 = *(v8 + 6);
  v4 = 1;
LABEL_6:
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return completionCallbackContext_setState(a1, v4, v3);
}

uint64_t completionCallbackContext_setState(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 96))
  {
    *(a1 + 97) = a2;
    *(a1 + 100) = a3;
    if (!a2)
    {
      goto LABEL_43;
    }

    *(a1 + 96) = 1;
    v7 = *(a1 + 16);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf = 0;
    endpointCluster_manageActivationTimeoutTimer(v7, a1);
    v9 = *(a1 + 48);
    if (v9 != *(DerivedStorage + 456) || (*(DerivedStorage + 376) - 3) < 0xFFFFFFFE)
    {
      v10 = 0;
      v11 = 4294949692;
      goto LABEL_41;
    }

    if (a3)
    {
      if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (a3 == -72100)
      {
        v11 = 4294951715;
      }

      else if (a3 == -72101)
      {
        v11 = 4294951714;
      }

      else
      {
        v11 = a3;
        if (a3 == -72277)
        {
          v11 = 4294949695;
        }
      }

      if (*(DerivedStorage + 488))
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          completionCallbackContext_setState_cold_1();
        }

        endpointCluster_updateClusterChangeProgress(v7, 1, 0);
      }

      v9 = *(a1 + 48);
      if (v11 && v11 != -16727)
      {
        v10 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(DerivedStorage + 376) = 3;
      APSEventRecorderRecordEvent();
      *(DerivedStorage + 408) = 1;
      endpointCluster_manageInactivityTimer(v7);
      v12 = CFGetAllocator(v7);
      APEndpointCreateEndpointActivationNotificationPayload(v12, *(a1 + 56), *(a1 + 48), &cf);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (*(DerivedStorage + 8))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
      }

      CFRetain(v7);
      v13 = *(DerivedStorage + 40);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __endpointCluster_finalizeActivation_block_invoke;
      block[3] = &__block_descriptor_tmp_203_0;
      block[4] = v7;
      dispatch_async(v13, block);
      endpointCluster_updateFeaturesFromSavedIfNeeded(v7);
      v11 = 0;
      v9 = *(a1 + 48);
    }

    v10 = *(a1 + 56);
LABEL_41:
    endpointCluster_CallActivationCompletionCallback(v7, v9, v10, v11, *(a1 + 64));
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_43;
  }

  if (!*(a1 + 97))
  {
LABEL_43:
    v5 = 0;
    goto LABEL_44;
  }

  v5 = 0;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2 == 0;
  }

  if (v6 && !*(a1 + 100))
  {
    v5 = 1;
    *(a1 + 97) = 1;
    *(a1 + 100) = -71991;
  }

LABEL_44:
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v5;
}

uint64_t __completionCallbackContext_computeState_block_invoke(void *a1, uint64_t a2, const void *a3)
{
  result = APSGetFBOPropertyInt64();
  v12 = 0;
  if (*(*(a1[4] + 8) + 24) != 2)
  {
    v7 = result;
    if (endpointCluster_isSubEndpointStaticLeader(*(a1[10] + 16), a2))
    {
      *(*(a1[5] + 8) + 24) = 1;
      result = completionCallbackContext_getSubEndpointStatus(a3, &v12);
      *(*(a1[6] + 8) + 24) = result;
    }

    else
    {
      result = completionCallbackContext_getSubEndpointStatus(a3, &v12);
      v11 = *(a1[7] + 8);
      if (result == 2)
      {
        ++v11[5];
      }

      else if (result == 1)
      {
        ++v11[4];
      }

      else
      {
        result = 0;
        ++v11[3];
      }
    }

    if (v7)
    {
      *(*(a1[4] + 8) + 24) = result;
    }

    if (result == 2)
    {
      v8 = *(a1[8] + 8);
      if (!*(v8 + 24))
      {
        v9 = v12;
        if (v12)
        {
          if (v7)
          {
            v10 = 1;
          }

          else
          {
            v10 = (v12 + 72099) >= 0xFFFFFFFE;
          }

          if (v10)
          {
            *(v8 + 24) = 1;
          }
        }

        *(*(a1[9] + 8) + 24) = v9;
      }
    }
  }

  return result;
}

uint64_t completionCallbackContext_getSubEndpointStatus(const void *a1, int *a2)
{
  valuePtr = 0;
  v4 = CFEqual(a1, *MEMORY[0x277CBEEE8]);
  v5 = 0;
  result = 0;
  if (!v4)
  {
    if (a1 && (v7 = CFGetTypeID(a1), v7 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
      v5 = valuePtr;
      if (valuePtr)
      {
        result = 2;
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = 2;
      v5 = -17606;
    }
  }

  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t endpointCluster_manageInactivityTimer(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void __endpointCluster_finalizeActivation_block_invoke(uint64_t a1)
{
  endpointCluster_deferredConfigureActivationMetricsTimer(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t endpointCluster_deferredConfigureActivationMetricsTimer(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 376);
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = v4;
  if (v3 == 3)
  {
    v6 = *(v4 + 144);
    v7 = *(v4 + 88);
    if (v7)
    {
      dispatch_source_cancel(*(v4 + 88));
      dispatch_release(v7);
      *(v5 + 88) = 0;
    }

    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = 1000000000 * v6;
    v10 = dispatch_time(0, 1000000000 * v6);
    *(v5 + 88) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v5 + 40));
    CFRetain(a1);
    dispatch_set_context(*(v5 + 88), a1);
    dispatch_source_set_event_handler_f(*(v5 + 88), endpointCluster_metricsTimerFired);
    dispatch_source_set_cancel_handler_f(*(v5 + 88), endpointCluster_metricsTimerCanceled);
    dispatch_source_set_timer(*(v5 + 88), v10, v9, 0x3B9ACA00uLL);
    dispatch_resume(*(v5 + 88));
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_deferredConfigureActivationMetricsTimer_cold_1();
    }

    v8 = *(v5 + 88);
    if (v8)
    {
      dispatch_source_cancel(*(v5 + 88));
      dispatch_release(v8);
      *(v5 + 88) = 0;
    }
  }

  return FigSimpleMutexUnlock();
}

void endpointCluster_updateClusterChangeProgress(uint64_t a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_updateClusterChangeProgress_cold_1();
  }

  v6 = DerivedStorage[489];
  if (DerivedStorage[489] && DerivedStorage[490])
  {
    endpointCluster_updateClusterChangeProgress_cold_2();
  }

  else
  {
    DerivedStorage[488] = 1;
    if (a2)
    {
      DerivedStorage[489] = 1;
      v6 = 1;
    }

    if (a3)
    {
      DerivedStorage[490] = 1;
    }

    if (v6 && DerivedStorage[490])
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_updateClusterChangeProgress_cold_3();
      }

      endpointCluster_postFinishedDeactivationForClusterUUIDChangeOrFailure();
    }
  }
}

uint64_t endpointCluster_metricsTimerFired(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_metricsTimerFired_cold_1();
  }

  FigSimpleMutexLock();
  endpointCluster_sendActivationMetrics(a1, 253);

  return FigSimpleMutexUnlock();
}

void endpointCluster_metricsTimerCanceled(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_metricsTimerCanceled_cold_1();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  CFRelease(a1);
}

void endpointCluster_postFinishedDeactivationForClusterUUIDChangeOrFailure()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v2 = Mutable;
    CFDictionarySetValue(Mutable, @"SourceEndpoint", *(DerivedStorage + 8));
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v2);
  }

  else
  {
    endpointCluster_postFinishedDeactivationForClusterUUIDChangeOrFailure_cold_1();
  }
}

void endpointCluster_triggerLostClusterBuddyReconnectionLogic(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetValue(Mutable, @"SubEndpoint", a2);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v4);
  }

  else
  {
    endpointCluster_triggerLostClusterBuddyReconnectionLogic_cold_1();
  }
}

void endpointCluster_cancelPendingUpdateFeatureRequests()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayGetCount(*(DerivedStorage + 624));
  CFArrayApplyBlock();
  CFArrayRemoveAllValues(*(DerivedStorage + 624));
}

void endpointCluster_resetActivationState(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_resetActivationState_cold_1();
  }

  CMBaseObjectGetDerivedStorage();
  APSEventRecorderReset();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(DerivedStorage + 416))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    APSRemoteConfigGetShared();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(DerivedStorage + 320))
  {
    Count = CFArrayGetCount(*(DerivedStorage + 336));
    if (Count >= 1)
    {
      endpointCluster_resetActivationState_cold_2((DerivedStorage + 336), (DerivedStorage + 320), a1, Count);
    }

    v10 = *(DerivedStorage + 320);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v11)
    {
      v11(v10, 0);
    }

    if (*DerivedStorage == 3)
    {
      v12 = *(DerivedStorage + 320);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v13)
      {
        v13(v12, 0);
      }
    }

    if (*(DerivedStorage + 328))
    {
      v14 = *(DerivedStorage + 320);
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v15)
      {
        v15(v14, a2, a3, a4);
      }
    }
  }

  *(DerivedStorage + 328) = 0;
  *(DerivedStorage + 376) = 0;
  *(DerivedStorage + 400) = 0;
  endpointCluster_postIsInUseDidChangeNotification(a1, 0);
  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  *(DerivedStorage + 408) = 0;
  *(DerivedStorage + 440) = 1;
  *(DerivedStorage + 392) = 0;
  *(DerivedStorage + 444) = 0;
  *(DerivedStorage + 496) = 0;
  *(DerivedStorage + 491) = 0;
  *(DerivedStorage + 412) = 0;
  *(DerivedStorage + 416) = 0;
  *(DerivedStorage + 640) = 0;
  CFDictionaryRemoveAllValues(*(DerivedStorage + 632));
  v16 = *(DerivedStorage + 432);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 432) = 0;
  }

  v17 = *(DerivedStorage + 464);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 464) = 0;
  }

  v18 = *(DerivedStorage + 472);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 472) = 0;
  }

  v19 = *(DerivedStorage + 480);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 480) = 0;
  }

  v20 = *(DerivedStorage + 448);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 448) = 0;
  }

  v21 = *(DerivedStorage + 320);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 320) = 0;
  }

  v22 = *(DerivedStorage + 384);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 384) = 0;
  }

  v23 = *(DerivedStorage + 512);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 512) = 0;
  }

  endpointCluster_manageActivationTimeoutTimer(a1, 0);
  endpointCluster_manageInactivityTimer(a1);
  endpointCluster_failDelayManageSubEndpoint(a1, 0, 0);
  endpointCluster_updateHealthState(a1);
  CFRetain(a1);
  v24 = *(DerivedStorage + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __endpointCluster_resetActivationState_block_invoke;
  block[3] = &__block_descriptor_tmp_275;
  block[4] = a1;
  dispatch_async(v24, block);
}

uint64_t __endpointCluster_cancelPendingUpdateFeatureRequests_block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    __endpointCluster_cancelPendingUpdateFeatureRequests_block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 456);
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = v6 == -16727;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = *(a2 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + 40);

  return endpointCluster_CallCompletionCallback(v4, v5, v8, v6, v9);
}

void __endpointCluster_resetActivationState_block_invoke(uint64_t a1)
{
  endpointCluster_deferredManagePresentationModeProcessDemiseListening(*(a1 + 32));
  endpointCluster_deferredConfigureActivationMetricsTimer(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t endpointCluster_deferredManagePresentationModeProcessDemiseListening(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 80));
    dispatch_release(v3);
    *(DerivedStorage + 80) = 0;
  }

  if (*(DerivedStorage + 376) == 3 && *(DerivedStorage + 496) == 1)
  {
    v4 = *(DerivedStorage + 504);
    if (v4)
    {
      *(DerivedStorage + 80) = APEndpointCreateAndStartProcessDemiseListener(a1, v4, *(DerivedStorage + 40), endpointCluster_handlePresentationModeProcessDemise);
    }
  }

  return FigSimpleMutexUnlock();
}

void endpointCluster_handlePresentationModeProcessDemise(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_handlePresentationModeProcessDemise_cold_1();
  }

  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 80));
    dispatch_release(v3);
    *(DerivedStorage + 80) = 0;
  }

  SecondDisplayModeCommandParams = APEndpointCreateSecondDisplayModeCommandParams();
  if (SecondDisplayModeCommandParams)
  {
    v5 = SecondDisplayModeCommandParams;
    FigSimpleMutexLock();
    endpointCluster_setSecondDisplayMode(a1);
    FigSimpleMutexUnlock();

    CFRelease(v5);
  }

  else
  {
    endpointCluster_handlePresentationModeProcessDemise_cold_2();
  }
}

void __endpointCluster_setSecondDisplayMode_block_invoke(uint64_t a1)
{
  endpointCluster_deferredManagePresentationModeProcessDemiseListening(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t endpointCluster_setSecondDisplayModeOnSubEndpoint(uint64_t a1)
{
  SecondDisplayModeCommandParams = APEndpointCreateSecondDisplayModeCommandParams();
  if (!SecondDisplayModeCommandParams)
  {
    endpointCluster_setSecondDisplayModeOnSubEndpoint_cold_1();
    return 4294950575;
  }

  v3 = SecondDisplayModeCommandParams;
  if (a1 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v4 = *(*(CMBaseObjectGetVTable() + 24) + 72);
    if (!v4)
    {
      v5 = 4294954514;
LABEL_9:
      APSLogErrorAt();
      goto LABEL_10;
    }

    v5 = v4(a1, *MEMORY[0x277CC1758], v3, 0, 0);
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294950576;
  }

LABEL_10:
  CFRelease(v3);
  return v5;
}

void endpointCluster_handleInternalAggregateDeactivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  v10 = *(a5 + 24) == *(DerivedStorage + 456) && *(DerivedStorage + 376) == 0;
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v10)
  {
    if (!a4)
    {
      v11 = CFGetAllocator(v8);
      APEndpointCreateEndpointActivationNotificationPayload(v11, *(a5 + 16), *(a5 + 24), &cf);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (*(a5 + 34) && *(a5 + 33) && !*(a5 + 32) && *(DerivedStorage + 8))
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          endpointCluster_handleInternalAggregateDeactivationCompletionCallback_cold_1();
        }

        endpointCluster_postFinishedDeactivationForClusterUUIDChangeOrFailure();
      }

      a4 = 0;
    }
  }

  else
  {
    a4 = 4294949692;
  }

  if (a4 == -16727 || a4 == 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0;
  }

  endpointCluster_CallCompletionCallback(v8, *(DerivedStorage + 456), v13, a4, *(a5 + 40));
  if (*(a5 + 32))
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_handleInternalAggregateDeactivationCompletionCallback_cold_2();
    }

    endpointCluster_updateClusterChangeProgress(v8, 1, 0);
  }

  FigSimpleMutexUnlock();
  CFRelease(*a5);
  CFRelease(*(a5 + 8));
  free(a5);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t endpointCluster_BorrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_BorrowScreen_cold_1();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_BorrowScreen_cold_2();
    v8 = 4294950573;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_BorrowScreen_cold_3();
    v8 = 4294951716;
    goto LABEL_15;
  }

  if (!*(DerivedStorage + 444))
  {
    endpointCluster_BorrowScreen_cold_4();
    v8 = 4294950570;
    goto LABEL_15;
  }

  v6 = *(DerivedStorage + 320);
  if (v6 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v7 = *(*(CMBaseObjectGetVTable() + 24) + 16);
    if (!v7)
    {
      v8 = 4294954514;
LABEL_14:
      APSLogErrorAt();
      goto LABEL_15;
    }

    v8 = v7(v6, a2, a3);
    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    APSLogErrorAt();
    v8 = 4294949690;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t endpointCluster_UnborrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_UnborrowScreen_cold_1();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_UnborrowScreen_cold_2();
    v8 = 4294950573;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_UnborrowScreen_cold_3();
    v8 = 4294951716;
    goto LABEL_15;
  }

  if (!*(DerivedStorage + 444))
  {
    endpointCluster_UnborrowScreen_cold_4();
    v8 = 4294950570;
    goto LABEL_15;
  }

  v6 = *(DerivedStorage + 320);
  if (v6 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v7 = *(*(CMBaseObjectGetVTable() + 24) + 24);
    if (!v7)
    {
      v8 = 4294954514;
LABEL_14:
      APSLogErrorAt();
      goto LABEL_15;
    }

    v8 = v7(v6, a2, a3);
    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    APSLogErrorAt();
    v8 = 4294949690;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t endpointCluster_DuckAudio(uint64_t a1, uint64_t a2)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_DuckAudio_cold_1();
    v6 = 4294951716;
    goto LABEL_14;
  }

  v4 = *(DerivedStorage + 320);
  if (v4 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v5 = *(*(CMBaseObjectGetVTable() + 24) + 48);
    if (!v5)
    {
      v6 = 4294954514;
LABEL_13:
      APSLogErrorAt();
      goto LABEL_14;
    }

    v6 = v5(v4, a2);
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294950570;
  }

LABEL_14:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t endpointCluster_SendCommand(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v14 = endpointCluster_setSecondDisplayMode(FigEndpoint);
    FigSimpleMutexUnlock();
    if (v14)
    {
      endpointCluster_SendCommand_cold_1();
    }
  }

  else
  {
    if (!FigCFEqual())
    {
LABEL_22:
      v14 = 0;
      goto LABEL_23;
    }

    FigSimpleMutexLock();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (CFDictionaryContainsKey(a3, *MEMORY[0x277CC1770]))
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_SendCommand_cold_2();
      }

      v8 = *(DerivedStorage + 616);
      *(DerivedStorage + 616) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      v9 = *(DerivedStorage + 336);
      if (v9)
      {
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v11 = Count;
          for (i = 0; i != v11; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
            if (!APSGetFBOPropertyInt64())
            {
              endpointCluster_setMRInfoOnSubEndpoint(ValueAtIndex, a3);
            }
          }
        }
      }

      FigSimpleMutexUnlock();
      goto LABEL_22;
    }

    endpointCluster_SendCommand_cold_3();
    v14 = 4294950576;
  }

LABEL_23:
  if (a4)
  {
    CFRetain(FigEndpoint);
    APSDispatchAsyncFHelper();
  }

  return v14;
}

uint64_t endpointCluster_SendData(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (endpointCluster_isRelaySupported())
  {
    RCSendDataCompletionContext = APEndpointCreateRCSendDataCompletionContext(a1, a2, *(DerivedStorage + 40), a4, a5);
    if (RCSendDataCompletionContext)
    {
      v12 = RCSendDataCompletionContext;
      v13 = *(DerivedStorage + 320);
      if (!v13 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v13 = 0;
      }

      v14 = *(*(CMBaseObjectGetVTable() + 24) + 96);
      if (v14)
      {
        v15 = v14(v13, a2, a3, APEndpointCallRCSendDataCompletionFromContextAsync, v12);
        if (!v15)
        {
          goto LABEL_13;
        }

        v16 = v15;
      }

      else
      {
        v16 = -12782;
      }

      APSLogErrorAt();
    }

    else
    {
      endpointCluster_SendData_cold_1();
      v16 = -16721;
    }
  }

  else
  {
    endpointCluster_SendData_cold_2();
    v16 = -17606;
  }

  if (a4)
  {
    APEndpointCallRCSendDataCompletionAsync(a1, a2, v16, *(DerivedStorage + 40), a4, a5);
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t endpointCluster_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!endpointCluster_isRelaySupported())
  {
    endpointCluster_CloseCommChannel_cold_1();
    v6 = 4294949690;
    goto LABEL_10;
  }

  v4 = *(DerivedStorage + 320);
  if (!v4 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v4 = 0;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 24) + 104);
  if (!v5)
  {
    v6 = 4294954514;
LABEL_9:
    APSLogErrorAt();
    goto LABEL_10;
  }

  v6 = v5(v4, a2);
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t endpointCluster_AcquireAndCopyResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_AcquireAndCopyResource_cold_1();
    v10 = 4294950573;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_AcquireAndCopyResource_cold_2();
    v10 = 4294951716;
    goto LABEL_15;
  }

  v8 = *(DerivedStorage + 320);
  if (!v8 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v8 = 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 24) + 128);
  if (!v9)
  {
    v10 = 4294954514;
LABEL_14:
    APSLogErrorAt();
    goto LABEL_15;
  }

  v10 = v9(v8, a2, a3, a4);
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t endpointCluster_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (!a3)
  {
    endpointCluster_RelinquishResource_cold_3();
    v8 = 4294950576;
    goto LABEL_16;
  }

  if (*(DerivedStorage + 442))
  {
    endpointCluster_RelinquishResource_cold_1();
    v8 = 4294950573;
    goto LABEL_16;
  }

  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_RelinquishResource_cold_2();
    v8 = 4294951716;
    goto LABEL_16;
  }

  v6 = *(DerivedStorage + 320);
  if (!v6 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 24) + 136);
  if (!v7)
  {
    v8 = 4294954514;
LABEL_15:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v8 = v7(v6, a2, a3);
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_16:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t endpointCluster_CloseAllCommChannels()
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (endpointCluster_isRelaySupported())
  {
    v1 = *(DerivedStorage + 320);
    if (!v1 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      v1 = 0;
    }

    v2 = *(*(CMBaseObjectGetVTable() + 24) + 144);
    if (v2)
    {
      v2(v1);
    }
  }

  else
  {
    endpointCluster_CloseAllCommChannels_cold_1();
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointCluster_setMRInfoOnSubEndpoint(uint64_t a1, uint64_t a2)
{
  if (a1 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v4 = *(*(CMBaseObjectGetVTable() + 24) + 72);
    if (!v4)
    {
      return endpointCluster_setMRInfoOnSubEndpoint_cold_1();
    }

    result = v4(a1, *MEMORY[0x277CC1750], a2, 0, 0);
    if (result)
    {
      return endpointCluster_setMRInfoOnSubEndpoint_cold_1();
    }
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t endpointCluster_isRelaySupported()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage == 3 && DerivedStorage[94] == 3)
  {
    return 1;
  }

  endpointCluster_isRelaySupported_cold_1();
  return 0;
}

void endpointCluster_failureDelayTimerCancelled(CFTypeRef *a1)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_failureDelayTimerCancelled_cold_1();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void __endpointCluster_failureDelayTimerFired_block_invoke(uint64_t a1, const void *a2)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(a1 + 32);

  endpointCluster_triggerLostClusterBuddyReconnectionLogic(v4, a2);
}

void endpointCluster_activateSubEndpointCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a6[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  key = 0;
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (FigCFArrayContainsValue())
  {
    if (a5 && APSGetFBOPropertyInt64())
    {
      endpointCluster_activateSubEndpointCallback_cold_1();
    }

    else if (a6[6] == *(DerivedStorage + 456) && (*(DerivedStorage + 376) - 4) > 0xFFFFFFFD)
    {
      if (a5)
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        endpointCluster_updateHealthState(v9);
        endpointCluster_updateSecondDisplayModeOnSubEndpointListChange(v9, a2, 1);
        endpointCluster_setMRInfoOnSubEndpoint(a2, *(DerivedStorage + 616));
      }

      endpointCluster_handleSubEndpointResult(v9, a6, a2, a5, 0);
      endpointCluster_sendActivationMetrics(v9, 260);
      if (*DerivedStorage == 3)
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12 && (v12(CMBaseObject, @"RoomUUID", *MEMORY[0x277CBECE8], &key), key))
        {
          if (*(DerivedStorage + 632))
          {
            CFNumberGetTypeID();
            TypedValue = CFDictionaryGetTypedValue();
            if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v14 = FigEndpointGetCMBaseObject();
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v15)
            {
              v15(v14, *MEMORY[0x277CC15A8], TypedValue);
            }
          }

          else
          {
            endpointCluster_activateSubEndpointCallback_cold_4();
          }
        }

        else
        {
          endpointCluster_activateSubEndpointCallback_cold_5();
        }
      }

      else if (endpointCluster_isSubEndpointVolumeLeader(v9, a2))
      {
        if (!*(DerivedStorage + 640))
        {
          if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          APEndpointApplyInitialVolume(a2);
          *(DerivedStorage + 640) = 1;
        }

        v16 = FigEndpointGetCMBaseObject();
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v17 && (v17(v16, *MEMORY[0x277CC15A8], *MEMORY[0x277CBECE8], &value), (v18 = value) != 0))
        {
          if (gLogCategory_APEndpointCluster <= 50)
          {
            if (gLogCategory_APEndpointCluster != -1 || (v19 = _LogCategory_Initialize(), v18 = value, v19))
            {
              LogPrintF();
              v18 = value;
            }
          }

          endpointCluster_postVolumeDidChange(v9, 0, v18);
          if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          endpointCluster_postIsMutedDidChange(v9, 0);
        }

        else
        {
          endpointCluster_activateSubEndpointCallback_cold_2();
        }
      }

      else if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      CompletionCallbackContextSetError(a6, 4294949692);
    }
  }

  else
  {
    endpointCluster_activateSubEndpointCallback_cold_6();
  }

  FigSimpleMutexUnlock();
  CFRelease(a2);
  CFRelease(a6);
  if (value)
  {
    CFRelease(value);
  }

  if (key)
  {
    CFRelease(key);
  }
}

void endpointCluster_postVolumeDidChange(uint64_t a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  VolumeMuteNotificationPayload = endpointCluster_createVolumeMuteNotificationPayload(a1, a2);
  if (VolumeMuteNotificationPayload)
  {
    v7 = VolumeMuteNotificationPayload;
    CFDictionarySetValue(VolumeMuteNotificationPayload, *MEMORY[0x277CC15A8], a3);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v7);
  }

  else
  {
    endpointCluster_postVolumeDidChange_cold_1();
  }
}

void endpointCluster_postIsMutedDidChange(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  VolumeMuteNotificationPayload = endpointCluster_createVolumeMuteNotificationPayload(a1, a2);
  if (VolumeMuteNotificationPayload)
  {
    v5 = VolumeMuteNotificationPayload;
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v5);
  }

  else
  {
    endpointCluster_postIsMutedDidChange_cold_1();
  }
}

__CFDictionary *endpointCluster_createVolumeMuteNotificationPayload(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = Mutable;
  if (Mutable)
  {
    v7 = *MEMORY[0x277CC1368];
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC1368], *(DerivedStorage + 16));
    if (a2)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, *MEMORY[0x277CC1550], v4, &value);
        v10 = value;
        if (value)
        {
          goto LABEL_8;
        }
      }

      v11 = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(v11, v7, v4, &value);
      }

      v10 = value;
      if (value)
      {
LABEL_8:
        CFDictionarySetValue(v6, *MEMORY[0x277CC0CE0], v10);
      }

      else
      {
        if (gLogCategory_APEndpointCluster > 60)
        {
          return v6;
        }

        if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }
      }
    }
  }

  else
  {
    endpointCluster_createVolumeMuteNotificationPayload_cold_1();
  }

  if (value)
  {
    CFRelease(value);
  }

  return v6;
}

uint64_t endpointCluster_handleAuthRequiredInternal(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 528))
  {
    if (*(DerivedStorage + 592) && (v13 = FigCFWeakReferenceHolderCopyReferencedObject(), *(DerivedStorage + 592)) && !v13)
    {
      if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_handleAuthRequiredInternal_cold_1();
      }
    }

    else
    {
      v14 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
      if (a2)
      {
        v15 = CFRetain(a2);
      }

      else
      {
        v15 = 0;
      }

      *v14 = v15;
      v14[1] = a6;
      v14[2] = a7;
      if (a4)
      {
        CFRetain(a4);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      *(DerivedStorage + 641) = 1;
      APSDispatchAsyncFHelper();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointCluster_handleFailedInternal(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC0A10]);
  result = CFDictionaryGetInt64();
  if (Value)
  {
    v9 = result;
    FigSimpleMutexLock();
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = *(DerivedStorage + 8);
    if (v10)
    {
      if (v9 == -72277 && Value == v10)
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        endpointCluster_updateClusterChangeProgress(a4, 0, 0);
      }
    }

    endpointCluster_handleSubEndpointResult(a4, *(DerivedStorage + 384), Value, v9, 1);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t endpointCluster_handleDidReceiveDataFromCommChannelInternal(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5)
{
  if (!a1)
  {
    return endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_6();
  }

  if (!a3)
  {
    return endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_5();
  }

  if (!a4)
  {
    return endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_4();
  }

  if (!a5)
  {
    return endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_3();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (endpointCluster_isRelaySupported())
  {
    if (*(DerivedStorage + 320) == a1)
    {
      APEndpointCallRCDelegateDidReceiveDataAsync(a5, *(DerivedStorage + 456), a3, a4, *(DerivedStorage + 40), *(DerivedStorage + 576), *(DerivedStorage + 600));
    }

    else
    {
      endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_1();
    }
  }

  else
  {
    endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_2();
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointCluster_handleDidCloseCommChannelInternal(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  if (!a1)
  {
    return endpointCluster_handleDidCloseCommChannelInternal_cold_5();
  }

  if (!a3)
  {
    return endpointCluster_handleDidCloseCommChannelInternal_cold_4();
  }

  if (!a4)
  {
    return endpointCluster_handleDidCloseCommChannelInternal_cold_3();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_handleDidCloseCommChannelInternal_cold_1();
  }

  else if (*(DerivedStorage + 320) == a1)
  {
    APEndpointCallRCDelegateDidCloseAsync(a4, *(DerivedStorage + 456), a3, *(DerivedStorage + 40), *(DerivedStorage + 584), *(DerivedStorage + 600));
  }

  else
  {
    endpointCluster_handleDidCloseCommChannelInternal_cold_2();
  }

  return FigSimpleMutexUnlock();
}

void endpointCluster_authHandlingCompletionCallbackInternal(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[1];
  if (v5)
  {
    v5(*a4, a2, a3, a4[2]);
  }

  if (*a4)
  {
    CFRelease(*a4);
  }

  free(a4);
}

void endpointCluster_callDelegateHandleAuthRequiredInternal(uint64_t a1)
{
  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
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

void endpointCluster_deferredHandleClusterHealthStateChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a1 + 8) == 1)
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_deferredHandleClusterHealthStateChanged_cold_2();
    }

    v3 = *a1;
    v4 = *(a1 + 12);
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = v5;
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v5 + 128);
    }

    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = *(v6 + 64);
    if (v9)
    {
      dispatch_source_cancel(*(v6 + 64));
      dispatch_release(v9);
      *(v6 + 64) = 0;
    }

    *(v6 + 64) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v6 + 40));
    CFRetain(v3);
    dispatch_set_context(*(v6 + 64), v3);
    dispatch_source_set_event_handler_f(*(v6 + 64), endpointCluster_healthMonitoringTimerFired);
    dispatch_source_set_cancel_handler_f(*(v6 + 64), endpointCluster_healthMonitoringTimerCancelled);
    v10 = *(v6 + 64);
    v11 = dispatch_time(0, 1000000000 * v7);
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(v6 + 64));
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_deferredHandleClusterHealthStateChanged_cold_1();
    }

    v8 = *(DerivedStorage + 64);
    if (v8)
    {
      dispatch_source_cancel(*(DerivedStorage + 64));
      dispatch_release(v8);
      *(DerivedStorage + 64) = 0;
    }
  }

  FigSimpleMutexUnlock();
  v12 = *a1;

  CFRelease(v12);
}

uint64_t endpointCluster_desiredSubEndpointsActivated(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 336)) < 1)
  {
    return 1;
  }

  endpointCluster_desiredSubEndpointsActivated_cold_1((DerivedStorage + 336), a1, &v4);
  return v4;
}

void endpointCluster_healthMonitoringTimerCancelled(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_healthMonitoringTimerCancelled_cold_1();
  }

  FigSimpleMutexLock();
  endpointCluster_setNeedsDiscoveryAndNotifyIfNeeded(a1, 0);
  FigSimpleMutexUnlock();

  CFRelease(a1);
}

uint64_t endpointCluster_setNeedsDiscoveryAndNotifyIfNeeded(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 443) != a2)
  {
    v4 = result;
    if (gLogCategory_APEndpointCluster >= 51)
    {
      *(result + 443) = a2;
    }

    else
    {
      if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      v5 = gLogCategory_APEndpointCluster;
      *(v4 + 443) = a2;
      if (v5 <= 30 && (v5 != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_setNeedsDiscoveryAndNotifyIfNeeded_cold_1();
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();

    return FigDispatchAsyncPostNotification();
  }

  return result;
}

uint64_t APEndpointStreamInterruptingWrapperCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    APEndpointStreamInterruptingWrapperCreate_cold_6();
    return 4294950536;
  }

  if (!a3)
  {
    APEndpointStreamInterruptingWrapperCreate_cold_5();
    return 4294950536;
  }

  FigEndpointStreamAirPlayGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v13 = v9;
    APEndpointStreamInterruptingWrapperCreate_cold_1();
    return v13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = CFRetain(a2);
  *DerivedStorage = CFRetain(a3);
  SNPrintF();
  v11 = dispatch_queue_create(label, 0);
  DerivedStorage[3] = v11;
  if (!v11)
  {
    APEndpointStreamInterruptingWrapperCreate_cold_4();
    return 4294950535;
  }

  SNPrintF();
  v12 = dispatch_queue_create(label, 0);
  DerivedStorage[2] = v12;
  if (!v12)
  {
    APEndpointStreamInterruptingWrapperCreate_cold_3();
    return 4294950535;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  if (!a4)
  {
    APEndpointStreamInterruptingWrapperCreate_cold_2();
    return 4294950536;
  }

  DerivedStorage[4] = CFRetain(a4);
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
    FigNotificationCenterAddWeakListener();
  }

  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13 = 0;
  *a5 = 0;
  return v13;
}

uint64_t interruptingStreamWrapper_interruptibleStreamNotificationCallback()
{
  result = FigCFEqual();
  if (result)
  {

    return interruptingStreamWrapper_yieldToInterruptibleIfNecessary();
  }

  return result;
}

CFStringRef interruptingStreamWrapper_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v3, 0, @"<APEndpointStreamInterruptingWrapper %p; sub: %p; interruptible: %p>", a1, DerivedStorage[1], *DerivedStorage);
}

uint64_t interruptingStreamWrapper_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t interruptingStreamWrapper_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, a2, a3);
}

uint64_t interruptingStreamWrapper_subStreamNotificationCallback()
{
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t interruptingStreamWrapper_yieldToInterruptibleIfNecessary()
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v14 = 0;
  if (*(DerivedStorage + 40))
  {
    if (gLogCategory_APEndpointStreamInterruptingWrapper > 50 || gLogCategory_APEndpointStreamInterruptingWrapper == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
  v2 = *(DerivedStorage + 32);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v3)
  {
    v3(SharedInstance, v2, &v14);
    if (v14)
    {
      if (gLogCategory_APEndpointStreamInterruptingWrapper > 50 || gLogCategory_APEndpointStreamInterruptingWrapper == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_31;
      }

      goto LABEL_15;
    }
  }

  v4 = *MEMORY[0x277CBECE8];
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, *MEMORY[0x277CC1880], v4, &cf);
  }

  if (FigCFEqual())
  {
    if (gLogCategory_APEndpointStreamInterruptingWrapper > 50 || gLogCategory_APEndpointStreamInterruptingWrapper == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_31;
    }

LABEL_15:
    LogPrintF();
LABEL_31:
    v11 = 0;
    v8 = 0;
    goto LABEL_32;
  }

  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"InterruptingStreamDidYield", *MEMORY[0x277CBED28]);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    FigEndpointStream = FigEndpointStreamAirPlayGetFigEndpointStream();
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v10)
    {
      v11 = v10(FigEndpointStream, 0, 0, 0);
      if (!v11)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v11 = 4294954514;
    }

    APSLogErrorAt();
  }

  else
  {
    interruptingStreamWrapper_yieldToInterruptibleIfNecessary_cold_1();
    v11 = 4294960568;
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v11;
}