void carManager_asyncRegisterCarPlayHALDriver(const void *a1, unsigned int a2)
{
  if (a1)
  {
    CFRetain(a1);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = dispatch_time(0, 1000000000 * a2);
    v6 = *(DerivedStorage + 328);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carManager_asyncRegisterCarPlayHALDriver_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a1;
    dispatch_after(v5, v6, block);
  }

  else
  {
    carManager_asyncRegisterCarPlayHALDriver_cold_1();
  }
}

void __APEndpointManagerCarPlayCreate_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = 0;
  *(*(a1 + 32) + 48) = APSPowerAssertionCreate();
  if (*(*(a1 + 32) + 48))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v32[0] = xmmword_222298490;
    v32[1] = unk_2222984A0;
    v33[0] = xmmword_2222984B0;
    *(v33 + 12) = *(&xmmword_2222984B0 + 12);
    v3 = *(DerivedStorage + 352);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 352) = 0;
    }

    v4 = APSEventRecorderCreate();
    if (v4)
    {
      __APEndpointManagerCarPlayCreate_block_invoke_cold_1(v4, v32, &v31);
    }

    else
    {
      v31 = 0;
      v5 = MGCopyAnswer();
      if (v5)
      {
        v6 = v5;
        v7 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v9 = Mutable;
          CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D30], *(*(a1 + 32) + 352));
          v10 = *(a1 + 40);
          ShortVersionLength = APSVersionUtilsGetShortVersionLength();
          v12 = CFStringCreateWithBytesNoCopy(v10, "920.10.1", ShortVersionLength, 0x600u, 0, *MEMORY[0x277CBED00]);
          if (v12)
          {
            v13 = v12;
            v31 = APCarPlayControlServerCreate();
            if (v31)
            {
              __APEndpointManagerCarPlayCreate_block_invoke_cold_2();
              v14 = 0;
              goto LABEL_33;
            }

            v14 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionarySetValue(v14, *MEMORY[0x277CE4CD0], *(*(a1 + 32) + 48));
            CFDictionarySetValue(v14, *MEMORY[0x277CE4CB0], *(*(a1 + 32) + 352));
            if (!*(*(a1 + 32) + 360) && (!CFPrefs_GetInt64() ? (v15 = v31 == -6727) : (v15 = 1), v15))
            {
              v16 = MEMORY[0x277CBED28];
            }

            else
            {
              v16 = MEMORY[0x277CBED10];
            }

            CFDictionarySetValue(v14, @"enableNewDiscoveryMode", *v16);
            *(*(a1 + 32) + 256) = *(a1 + 48);
            v17 = *(a1 + 32);
            *(v17 + 224) = 2;
            *(v17 + 232) = "USB";
            v31 = APBrowserCarBonjourCreate();
            if (v31)
            {
              __APEndpointManagerCarPlayCreate_block_invoke_cold_3();
              goto LABEL_33;
            }

            v18 = *(a1 + 32);
            v19 = *(v18 + 240);
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v20)
            {
              v31 = v20(v19, carManager_browserEventHandler, v18 + 224);
              if (!v31)
              {
                if (APSIsVirtualMachine())
                {
                  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
                  {
                    __APEndpointManagerCarPlayCreate_block_invoke_cold_4();
                  }
                }

                else
                {
                  *(*(a1 + 32) + 184) = *(a1 + 48);
                  v21 = *(a1 + 32);
                  *(v21 + 152) = 1;
                  *(v21 + 160) = "WiFi";
                  v31 = APBrowserCarBonjourCreate();
                  if (v31)
                  {
                    __APEndpointManagerCarPlayCreate_block_invoke_cold_5();
                    goto LABEL_33;
                  }

                  v31 = APBrowserSetEventHandler(*(*(a1 + 32) + 168), *(a1 + 32) + 152);
                  if (v31)
                  {
                    __APEndpointManagerCarPlayCreate_block_invoke_cold_6();
                    goto LABEL_33;
                  }
                }

                *(*(a1 + 32) + 112) = *(a1 + 48);
                v22 = *(a1 + 32);
                *(v22 + 80) = 0;
                *(v22 + 88) = "Session";
                v31 = APBrowserCarSessionCreate();
                if (v31)
                {
                  __APEndpointManagerCarPlayCreate_block_invoke_cold_7();
                  goto LABEL_33;
                }

                v23 = *(a1 + 32);
                v24 = *(v23 + 96);
                v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (v25)
                {
                  v31 = v25(v24, carManager_browserEventHandler, v23 + 80);
                  if (!v31)
                  {
                    FigCFWeakReferenceInit();
                    v31 = AirPlayDebugIPCEnableForEndpointManager(*(a1 + 48));
                    if (v31)
                    {
                      __APEndpointManagerCarPlayCreate_block_invoke_cold_8();
                    }

                    else
                    {
                      v26 = *(a1 + 48);
                      if (v26)
                      {
                        CFRetain(v26);
                        v27 = *(a1 + 48);
                      }

                      else
                      {
                        v27 = 0;
                      }

                      v28 = *(a1 + 32);
                      v29 = *(v28 + 24);
                      block[0] = MEMORY[0x277D85DD0];
                      block[1] = 3221225472;
                      block[2] = __APEndpointManagerCarPlayCreate_block_invoke_2;
                      block[3] = &__block_descriptor_48_e5_v8__0l;
                      block[4] = v28;
                      block[5] = v27;
                      dispatch_async(v29, block);
                    }

LABEL_33:
                    CFRelease(v13);
                    CFRelease(v9);
                    if (v14)
                    {
                      CFRelease(v14);
                    }

                    goto LABEL_35;
                  }
                }

                else
                {
                  v31 = -12782;
                }

                __APEndpointManagerCarPlayCreate_block_invoke_cold_9();
                goto LABEL_33;
              }
            }

            else
            {
              v31 = -12782;
            }

            __APEndpointManagerCarPlayCreate_block_invoke_cold_10();
            goto LABEL_33;
          }

          __APEndpointManagerCarPlayCreate_block_invoke_cold_11(&v31, v9);
        }

        else
        {
          __APEndpointManagerCarPlayCreate_block_invoke_cold_12(&v31);
        }

LABEL_35:
        CFRelease(v6);
        goto LABEL_36;
      }

      __APEndpointManagerCarPlayCreate_block_invoke_cold_13(&v31);
    }
  }

  else
  {
    __APEndpointManagerCarPlayCreate_block_invoke_cold_14(&v31);
  }

LABEL_36:
  CFRelease(*(a1 + 48));
  if (v31)
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    __APEndpointManagerCarPlayCreate_block_invoke_cold_15();
  }
}

uint64_t carManager_handleControlServerEvent(uint64_t a1, uint64_t a2, const char *a3, size_t a4, const void *a5)
{
  v17 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!strncmp(a3, "connect", a4))
  {
    if (*(DerivedStorage + 352))
    {
      APSEventRecorderRecordEvent();
    }

    v9 = LogCategoryCopyOSLogHandle();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v11, OS_SIGNPOST_EVENT, 0x2B8D07E0uLL, "AP_SIGNPOST_CAR_CONTROLCOMMAND_CONNECT", &unk_2222A918B, buf, 2u);
    }

    if (v10)
    {
    }

    APSPowerAssertionRaiseTemporary();
    if (a5)
    {
      CFRetain(a5);
    }

    v12 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carManager_handleControlServerEvent_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a5;
    block[6] = v17;
    dispatch_async(v12, block);
    return 0;
  }

  else
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 90 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v13 = 4294960582;
    APSLogErrorAt();
  }

  return v13;
}

uint64_t APBrowserSetEventHandler(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, carManager_browserEventHandler, a2);
}

void carManager_browserEventHandler(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __carManager_browserEventHandler_block_invoke;
  v8[3] = &unk_27849C5A0;
  v9 = a2;
  v8[5] = a4;
  v8[6] = a3;
  v8[4] = v10;
  dispatch_sync(v7, v8);
  _Block_object_dispose(v10, 8);
}

void sub_2220DE0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APEndpointManagerCarPlayCreate_block_invoke_2(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = [[APEndpointManagerCarPlayDelegate alloc] initWithEndpointManager:*(a1 + 40)];
  *(*(a1 + 32) + 40) = v2;
  if (v2 && (v3 = objc_alloc_init(APCarPlayPreferences), v4 = *(a1 + 32), (*(v4 + 32) = v3) != 0))
  {
    [(APCarPlayPreferences *)v3 setDelegate:*(v4 + 40)];
    if ([*(*(a1 + 32) + 32) isCarPlayEnabled])
    {
      block[0] = MEMORY[0x277D85DD0];
      v12 = *(a1 + 32);
      v5 = *(v12 + 8);
      block[1] = 3221225472;
      block[2] = __APEndpointManagerCarPlayCreate_block_invoke_3;
      block[3] = &unk_27849BEC0;
      block[4] = &v13;
      dispatch_sync(v5, block);
    }

    CMBaseObjectGetDerivedStorage();
    v6 = APSGetAirPlayNonSystemPeersCount();
    Int64 = APSSettingsGetInt64();
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v6 >= 0x1F5 && !Int64)
    {
      mach_absolute_time();
      v8 = APSRemoveAirPlayNonSystemPeers();
      mach_absolute_time();
      if (v8)
      {
        v9 = 90;
      }

      else
      {
        v9 = 50;
      }

      if (v9 >= gLogCategory_APEndpointManagerCarPlay && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        UpTicksToMilliseconds();
        LogPrintF();
      }

      if (!v8)
      {
        CFPrefs_SetValue();
      }
    }
  }

  else
  {
    APSLogErrorAt();
    *(v14 + 6) = -16711;
  }

  if (*(v14 + 6))
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
LABEL_27:
      LogPrintF();
    }
  }

  else if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_27;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __APEndpointManagerCarPlayCreate_block_invoke_3(uint64_t a1)
{
  APSPowerAssertionRaise();
  *(*(*(a1 + 32) + 8) + 24) = carManager_startDiscovery();

  return APSPowerAssertionRelease();
}

uint64_t carManager_startDiscovery()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    carManager_startDiscovery_cold_1();
  }

  v1 = (DerivedStorage + 104);
  v2 = 3;
  while (1)
  {
    v3 = *(v1 - 1);
    if (v3)
    {
      break;
    }

LABEL_9:
    v1 += 72;
    if (!--v2)
    {
      return 0;
    }
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    v6 = 4294954514;
    goto LABEL_12;
  }

  v5 = v4(v3, 3);
  if (!v5)
  {
    *v1 = 1;
    goto LABEL_9;
  }

  v6 = v5;
LABEL_12:
  APSLogErrorAt();
  carManager_stopDiscovery();
  return v6;
}

uint64_t carManager_getBrowserContextForEndpoint(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  for (i = DerivedStorage + 80; !*(i + 16); i += 72)
  {
    result = 0;
LABEL_9:
    if (v4++ >= 2)
    {
      return result;
    }
  }

  if (*(i + 40) == a2)
  {
    result = i;
  }

  else
  {
    result = 0;
  }

  if (!result)
  {
    goto LABEL_9;
  }

  return result;
}

void carManager_updateBrowserContext(const void *a1, uint64_t a2, const void *a3, int a4, int a5, int a6, int a7, int a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = (a2 + 40);
  v16 = *(a2 + 40);
  if (gLogCategory_APEndpointManagerCarPlay > 30)
  {
    goto LABEL_28;
  }

  if (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize())
  {
    v17 = "y";
    v18 = "n";
    if (a4)
    {
      v19 = "y";
    }

    else
    {
      v19 = "n";
    }

    if (a5)
    {
      v20 = "y";
    }

    else
    {
      v20 = "n";
    }

    if (a6)
    {
      v21 = "-";
    }

    else
    {
      v21 = "n";
    }

    if (a6 == 1)
    {
      v21 = "y";
    }

    if (a7)
    {
      v22 = "-";
    }

    else
    {
      v22 = "n";
    }

    if (a7 == 1)
    {
      v22 = "y";
    }

    if (a8)
    {
      v18 = "-";
    }

    if (a8 != 1)
    {
      v17 = v18;
    }

    v47 = v22;
    v48 = v17;
    v45 = v20;
    v46 = v21;
    v43 = a3;
    v44 = v19;
    v42 = *(a2 + 8);
    LogPrintF();
  }

  if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    carManager_updateBrowserContext_cold_1();
    if (!a5)
    {
      goto LABEL_44;
    }
  }

  else
  {
LABEL_28:
    if (!a5)
    {
      goto LABEL_44;
    }
  }

  if (v16 == a3)
  {
    *(a2 + 50) = 0;
    goto LABEL_31;
  }

LABEL_44:
  if (!a6 && *(a2 + 50))
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      carManager_updateBrowserContext_cold_2();
    }

    *(a2 + 50) = 0;
    if (!v16)
    {
      v23 = 0;
      a3 = 0;
      goto LABEL_59;
    }

    goto LABEL_50;
  }

LABEL_31:
  v23 = v16 != 0;
  if (a3 || !v16)
  {
    goto LABEL_59;
  }

  if (!a4)
  {
    if (*(a2 + 48))
    {
      if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(a2 + 50) = 1;
      goto LABEL_78;
    }

    if (gLogCategory_APEndpointManagerCarPlay > 50 || gLogCategory_APEndpointManagerCarPlay == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_56;
    }

    v42 = *(a2 + 8);
    v43 = v16;
    goto LABEL_53;
  }

LABEL_50:
  if (gLogCategory_APEndpointManagerCarPlay > 50 || gLogCategory_APEndpointManagerCarPlay == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_56;
  }

  v42 = *(a2 + 8);
  v43 = v16;
LABEL_53:
  LogPrintF();
LABEL_56:
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v24)
  {
    v24(v16);
  }

  a3 = 0;
  v23 = 1;
LABEL_59:
  if (a3 != v16)
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      v43 = v16;
      v44 = a3;
      v42 = *(a2 + 8);
      LogPrintF();
    }

    if (v23)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (*(a2 + 48))
      {
        *(a2 + 48) = 0;
        carManager_handleEndpointActivationChanged(a1, a2);
      }

      [*(a2 + 56) setDelegate:{0, v42, v43, v44, v45, v46, v47, v48}];

      *(a2 + 56) = 0;
    }

    v25 = *v15;
    *v15 = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (a3)
    {
      if (carManager_isEndpointWireless())
      {
        v26 = [[APCarPlayPolicyMonitor alloc] initWithEndpoint:a3];
        *(a2 + 56) = v26;
        [(APCarPlayPolicyMonitor *)v26 setDelegate:*(DerivedStorage + 40)];
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }

    *(a2 + 50) = 0;
  }

  v16 = a3;
  if (a3)
  {
LABEL_78:
    if (a6 != -1)
    {
      *(a2 + 48) = a6 == 1;
    }

    if (APSGetFBOPropertyInt64())
    {
      v27 = a1;
      if (a7 == -1)
      {
LABEL_86:
        if (a8 != -1)
        {
          *(a2 + 64) = a8 == 1;
        }

        if (*(a2 + 49))
        {
          v30 = *(a2 + 64) == 0;
        }

        else
        {
          v30 = 0;
        }

        if (*(a2 + 48))
        {
          v29 = 0;
        }

        else
        {
          v37 = *MEMORY[0x277CC1278];
          v29 = APSGetFBOPropertyInt64() == 0 && v30;
          if (v30)
          {
            v38 = MEMORY[0x277CBED28];
          }

          else
          {
            v38 = MEMORY[0x277CBED10];
          }

          v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v39)
          {
            v39(v16, v37, *v38);
          }
        }

        goto LABEL_93;
      }

      v28 = a7 == 1;
    }

    else
    {
      v28 = 1;
      v27 = a1;
    }

    *(a2 + 49) = v28;
    goto LABEL_86;
  }

  v29 = 0;
  *(a2 + 48) = 0;
  *(a2 + 64) = 0;
  v27 = a1;
LABEL_93:
  if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    carManager_updateBrowserContext_cold_3();
  }

  v31 = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  while (1)
  {
    if (!*(v31 + v32 + 96) || !*(v31 + v32 + 120))
    {
      goto LABEL_106;
    }

    v33 = v31 + v32;
    if (!*(v31 + v32 + 144))
    {
      if (*(v33 + 129))
      {
        break;
      }
    }

    v34 = *(v33 + 128);
    v35 = gLogCategory_APEndpointManagerCarPlay;
    if (v34)
    {
      v36 = v31 + v32 + 80;
      if (gLogCategory_APEndpointManagerCarPlay <= 30)
      {
        if (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize())
        {
          goto LABEL_128;
        }

        goto LABEL_109;
      }

      goto LABEL_110;
    }

    if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_106:
    v32 += 72;
    if (v32 == 216)
    {
      v36 = 0;
      goto LABEL_109;
    }
  }

  v35 = gLogCategory_APEndpointManagerCarPlay;
  v36 = v31 + v32 + 80;
  if (gLogCategory_APEndpointManagerCarPlay <= 30)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize())
    {
LABEL_128:
      LogPrintF();
    }

LABEL_109:
    v35 = gLogCategory_APEndpointManagerCarPlay;
  }

LABEL_110:
  if (((v36 == *(v31 + 296)) & ~v29) != 0)
  {
    if (v35 <= 30 && (v35 != -1 || _LogCategory_Initialize()))
    {
      carManager_updateBrowserContext_cold_4();
    }
  }

  else
  {
    if (v35 <= 50 && (v35 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRetain(v27);
    v40 = *(v31 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carManager_updateCurrentEndpoint_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = v31;
    block[5] = v27;
    dispatch_async(v40, block);
    if (!v36 || !*(v31 + 296))
    {
      if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        carManager_updateBrowserContext_cold_5();
      }

      CFRetain(v27);
      v41 = *(v31 + 16);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __carManager_updateCurrentEndpoint_block_invoke_256;
      v51[3] = &__block_descriptor_40_e5_v8__0l;
      v51[4] = v27;
      dispatch_async(v41, v51);
    }

    if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      carManager_updateBrowserContext_cold_6();
    }

    *(v31 + 296) = v36;
  }
}

void sub_2220DF464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t carManager_stopDiscovery()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = result;
  if (gLogCategory_APEndpointManagerCarPlay <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = carManager_stopDiscovery_cold_1();
    }
  }

  v2 = (v1 + 104);
  v3 = 3;
  do
  {
    v4 = *(v2 - 1);
    if (v4)
    {
      VTable = CMBaseObjectGetVTable();
      v6 = *(VTable + 16);
      result = VTable + 16;
      v7 = *(v6 + 16);
      if (v7)
      {
        result = v7(v4, 0);
      }

      *v2 = 0;
    }

    v2 += 72;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t carManager_invalidate(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __carManager_invalidate_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v2, block);
  return 0;
}

void carManager_finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    carManager_finalize_cold_1();
  }

  carManager_invalidateInternal(a1);
  MEMORY[0x223DB15B0](DerivedStorage + 304);
  v3 = *(DerivedStorage + 320);
  if (v3)
  {
    [v3 invalidate];

    *(DerivedStorage + 320) = 0;
  }

  v4 = *(DerivedStorage + 328);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 328) = 0;
  }

  if (*(DerivedStorage + 344))
  {
    if (carManager_getWeakRefTable_once != -1)
    {
      carManager_finalize_cold_2();
    }

    FigCFWeakReferenceTableRemoveValue();
    *(DerivedStorage + 344) = 0;
  }

  v5 = *(DerivedStorage + 336);
  if (v5)
  {
    (*(*v5 + 24))(v5);
    *(DerivedStorage + 336) = 0;
  }

  v6 = *(DerivedStorage + 352);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 352) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  v9 = *(DerivedStorage + 64);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 64) = 0;
  }

  v10 = (DerivedStorage + 136);
  v11 = 3;
  do
  {
    v12 = *(v10 - 5);
    if (v12)
    {
      CFRelease(v12);
      *(v10 - 5) = 0;
      v13 = *(v10 - 2);
      if (v13)
      {
        CFRelease(v13);
        *(v10 - 2) = 0;
      }

      [*v10 setDelegate:0];

      *v10 = 0;
    }

    v10 += 9;
    --v11;
  }

  while (v11);
  v14 = *(DerivedStorage + 8);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 8) = 0;
  }

  v15 = *(DerivedStorage + 16);
  if (v15)
  {
    dispatch_release(v15);
    *(DerivedStorage + 16) = 0;
  }

  v16 = *(DerivedStorage + 24);
  if (v16)
  {
    dispatch_release(v16);
    *(DerivedStorage + 24) = 0;
  }

  [*(DerivedStorage + 32) setDelegate:0];

  *(DerivedStorage + 32) = 0;
  *(DerivedStorage + 40) = 0;
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    carManager_finalize_cold_3();
  }
}

__CFString *carManager_copyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"<APEndpointManagerCarPlay %p>", a1);
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, @"ShowInfo", v2, &cf))
  {
    carManager_copyDebugDescription_cold_1();
  }

  else
  {
    v6 = ASPrintF();
    if (v6 && *(v6 - 1) == 10)
    {
      *(v6 - 1) = 0;
    }

    CFStringAppendFormat(Mutable, 0, @"%s", 0);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  free(0);
  if (!Mutable)
  {
    return CFRetain(@"<APEndpointManagerCarPlay>");
  }

  return Mutable;
}

uint64_t carManager_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManagerCarPlay <= 10 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __carManager_copyProperty_block_invoke;
  block[3] = &unk_27849C550;
  block[4] = &v13;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[7] = a1;
  block[8] = a3;
  block[9] = a4;
  dispatch_sync(v9, block);
  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t carManager_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManagerCarPlay <= 10 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __carManager_setProperty_block_invoke;
  block[3] = &unk_27849C578;
  block[4] = &v11;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[7] = a3;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __carManager_getWeakRefTable_block_invoke()
{
  result = FigCFWeakReferenceTableCreate();
  if (result)
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 50)
    {
      if (gLogCategory_APEndpointManagerCarPlay != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __carManager_getWeakRefTable_block_invoke_cold_1();
      }
    }

    __break(1u);
  }

  return result;
}

void __carManager_copyProperty_block_invoke(uint64_t a1)
{
  if (**(a1 + 40))
  {
    __carManager_copyProperty_block_invoke_cold_1();
    return;
  }

  v2 = (a1 + 48);
  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC0C30]))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(CMBaseObjectGetDerivedStorage() + 296);
    if (v5)
    {
      v6 = (v5 + 40);
      v7 = v3;
      v8 = 1;
    }

    else
    {
      v7 = v3;
      v6 = 0;
      v8 = 0;
    }

    v12 = CFArrayCreate(v7, v6, v8, MEMORY[0x277CBF128]);
    if (v12)
    {
      v13 = 0;
      *v4 = v12;
    }

    else
    {
      __carManager_copyProperty_block_invoke_cold_2();
      v13 = -16711;
    }

    *(*(*(a1 + 32) + 8) + 24) = v13;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carManager_copyProperty_block_invoke_cold_3();
    }

    return;
  }

  if (CFEqual(*v2, *MEMORY[0x277CC0C40]))
  {
    v9 = *(a1 + 72);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 296))
    {
      v11 = MEMORY[0x277CBED10];
    }

    *v9 = CFRetain(*v11);
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carManager_copyProperty_block_invoke_cold_4();
    }

    return;
  }

  if (CFEqual(*v2, *MEMORY[0x277CC0C50]))
  {
    **(a1 + 72) = CFRetain(*MEMORY[0x277CC0C78]);
    return;
  }

  if (CFEqual(*v2, @"ShowInfo"))
  {
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v42 = *(a1 + 56);
    v16 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(v14, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      theDict = Mutable;
      v41 = v14;
      v18 = CFStringCreateMutable(v14, 0);
      if (v18)
      {
        v19 = v18;
        v40 = *MEMORY[0x277CE4D20];
        key = *MEMORY[0x277CE4D28];
        v20 = (v16 + 120);
        v21 = 3;
        v37 = *MEMORY[0x277CE4FB8];
        do
        {
          v44[0] = 0;
          if (*(v20 - 3))
          {
            CMBaseObject = APBrowserGetCMBaseObject();
            v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v23)
            {
              if (!v23(CMBaseObject, v40, v41, v44))
              {
                Value = CFDictionaryGetValue(v44[0], key);
                CFStringAppendFormat(v19, 0, @"\n%@", Value);
                if (v44[0])
                {
                  CFRelease(v44[0]);
                }
              }
            }

            CFStringAppend(v19, @"\n");
            CFStringAppendFormat(v19, 0, @"+-+ Car browser %s state +-+\n", *(v20 - 4));
            CFStringAppend(v19, @"\n");
            if (*(v20 - 16))
            {
              v25 = 89;
            }

            else
            {
              v25 = 78;
            }

            CFStringAppendFormat(v19, 0, @"browsing %c", v25);
            CFStringAppend(v19, @"\n");
            if (*v20)
            {
              v43 = 0;
              CFStringAppend(v19, @"\n");
              CFStringAppend(v19, @"+-+ Endpoint state +-+\n");
              CFStringAppend(v19, @"\n");
              v26 = APSGetFBOPropertyInt64() ? 89 : 78;
              CFStringAppendFormat(v19, 0, @"Connected: %c\n", v26);
              v27 = CFGetAllocator(v42);
              v28 = FigEndpointGetCMBaseObject();
              v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v29)
              {
                if (!v29(v28, @"EndpointShowInfo", v27, &v43))
                {
                  v30 = v43;
                  if (v43)
                  {
                    CFDictionaryGetValue(v43, @"Name");
                    CFStringAppendF();
                    CFDictionaryGetValue(v30, @"DeviceID");
                    CFStringAppendF();
                    CFDictionaryGetValue(v30, @"Model");
                    CFStringAppendF();
                    CFDictionaryGetValue(v30, @"SourceVersion");
                    CFStringAppendF();
                    CFDictionaryGetValue(v30, @"AirPlayFeatures");
                    CFStringAppendF();
                    CFDictionaryGetInt64();
                    CFStringAppendF();
                    CFDictionaryGetTypeID();
                    if (CFDictionaryGetTypedValue())
                    {
                      CFDictionaryGetTypeID();
                      TypedValue = CFDictionaryGetTypedValue();
                      if (TypedValue)
                      {
                        if (CFDictionaryGetValue(TypedValue, v37))
                        {
                          CFStringAppendF();
                        }
                      }
                    }

                    CFDictionaryGetInt64();
                    CFStringAppendF();
                    CFStringAppendF();
                    v32 = CFDictionaryGetValue(v30, @"StreamInfo_MainAudio");
                    carManager_appendEndpointStreamShowInfo(v32);
                    v33 = CFDictionaryGetValue(v30, @"StreamInfo_AltAudio");
                    carManager_appendEndpointStreamShowInfo(v33);
                    v34 = CFDictionaryGetValue(v30, @"StreamInfo_Screen");
                    carManager_appendEndpointStreamShowInfo(v34);
                    v35 = v43;
                  }

                  else
                  {
                    v35 = 0;
                  }

                  CFRelease(v35);
                }
              }
            }
          }

          v20 += 9;
          --v21;
        }

        while (v21);
        CFDictionarySetValue(theDict, @"DetailedDescription", v19);
        *v15 = theDict;
        CFRelease(v19);
        v36 = 0;
        goto LABEL_46;
      }

      __carManager_copyProperty_block_invoke_cold_5(theDict);
    }

    else
    {
      __carManager_copyProperty_block_invoke_cold_6();
    }

    v36 = -6728;
LABEL_46:
    *(*(*(a1 + 32) + 8) + 24) = v36;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carManager_copyProperty_block_invoke_cold_7();
    }

    return;
  }

  if (gLogCategory_APEndpointManagerCarPlay <= 60 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carManager_copyProperty_block_invoke_cold_8();
  }

  *(*(*(a1 + 32) + 8) + 24) = -12784;

  APSLogErrorAt();
}

void __carManager_setProperty_block_invoke(uint64_t a1)
{
  if (**(a1 + 40))
  {
    __carManager_setProperty_block_invoke_cold_1();
  }

  else if (CFEqual(*(a1 + 48), @"OverrideEndpointManagerEnabled"))
  {
    v2 = *(a1 + 56);
    if (v2 && (v3 = CFGetTypeID(v2), v3 == CFBooleanGetTypeID()))
    {
      Value = CFBooleanGetValue(*(a1 + 56));
      *(*(a1 + 40) + 312) = Value;
      if (Value)
      {
        *(*(*(a1 + 32) + 8) + 24) = carManager_startDiscovery();
        if (*(*(*(a1 + 32) + 8) + 24))
        {
          __carManager_setProperty_block_invoke_cold_2();
        }
      }

      else
      {

        carManager_stopDiscovery();
      }
    }

    else
    {
      __carManager_setProperty_block_invoke_cold_3(a1);
    }
  }

  else
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 60 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carManager_setProperty_block_invoke_cold_4();
    }

    *(*(*(a1 + 32) + 8) + 24) = -12784;

    APSLogErrorAt();
  }
}

void __carManager_asyncRegisterCarPlayHALDriver_block_invoke(uint64_t a1)
{
  v2 = AudioServerPlugInRegisterRemote();
  if (v2)
  {
    v3 = 60;
  }

  else
  {
    v3 = 50;
  }

  if (v3 >= gLogCategory_APEndpointManagerCarPlay && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v2)
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    carManager_asyncRegisterCarPlayHALDriver(*(a1 + 40), 1);
  }

  CFRelease(*(a1 + 40));
}

void __carManager_asyncRegisterCarPlayHALDriver_block_invoke_2()
{
  if (carManager_getWeakRefTable_once != -1)
  {
    carManager_finalize_cold_2();
  }

  v0 = FigCFWeakReferenceTableCopyValue();
  if (v0)
  {
    v1 = v0;
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carManager_asyncRegisterCarPlayHALDriver_block_invoke_2_cold_2();
    }

    carManager_asyncRegisterCarPlayHALDriver(v1, 1);

    CFRelease(v1);
  }

  else if (gLogCategory_APEndpointManagerCarPlay <= 90 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carManager_asyncRegisterCarPlayHALDriver_block_invoke_2_cold_3();
  }
}

void __carManager_handleControlServerEvent_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 64) = 0;
  }

  CFGetAllocator(*(a1 + 40));
  *(*(a1 + 32) + 64) = FigCFNumberCreateUInt64();
  *(*(a1 + 32) + 72) = CFAbsoluteTimeGetCurrent();
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  carManager_handlePendingAutoconnect(*(a1 + 40));
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void carManager_handlePendingAutoconnect(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Current = CFAbsoluteTimeGetCurrent();
  if (*(DerivedStorage + 64))
  {
    v4 = Current - *(DerivedStorage + 72);
    UInt64 = FigCFNumberGetUInt64();
    v18 = UInt64;
    if (v4 >= 0.0 && v4 <= 5.0)
    {
      v7 = *(DerivedStorage + 296);
      if (v7)
      {
        if (carManager_getDiscoveryIDForEndpoint(*(v7 + 40)) == UInt64)
        {
          v8 = *(*(DerivedStorage + 296) + 48);
          v9 = APSGetFBOPropertyInt64() != 0;
        }

        else
        {
          v8 = 0;
          v9 = 0;
        }

        if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      if (!v8 && !v9)
      {
        v14 = DerivedStorage + 80;
        v15 = 3;
        while (1)
        {
          if (*(v14 + 16))
          {
            v16 = *(v14 + 40);
            if (v16)
            {
              DiscoveryIDForEndpoint = carManager_getDiscoveryIDForEndpoint(*(v14 + 40));
              if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              if (DiscoveryIDForEndpoint == v18)
              {
                break;
              }
            }
          }

          v14 += 72;
          if (!--v15)
          {
            if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
            {
              carManager_handlePendingAutoconnect_cold_1();
            }

            return;
          }
        }

        carManager_updateBrowserContext(a1, v14, v16, 0, 0, -1, 1, -1);
        v17 = *(DerivedStorage + 64);
        if (v17)
        {
          CFRelease(v17);
          *(DerivedStorage + 64) = 0;
        }
      }
    }

    else
    {
      if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v10 = DerivedStorage + 80;
      v11 = 3;
      while (1)
      {
        if (*(v10 + 16))
        {
          v12 = *(v10 + 40);
          if (v12)
          {
            if (carManager_getDiscoveryIDForEndpoint(*(v10 + 40)) == v18)
            {
              break;
            }
          }
        }

        v10 += 72;
        if (!--v11)
        {
          goto LABEL_29;
        }
      }

      carManager_updateBrowserContext(a1, v10, v12, 0, 0, -1, 0, -1);
LABEL_29:
      v13 = *(DerivedStorage + 64);
      if (v13)
      {
        CFRelease(v13);
        *(DerivedStorage + 64) = 0;
      }

      *(DerivedStorage + 72) = 0;
    }
  }

  else if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    carManager_handlePendingAutoconnect_cold_2();
  }
}

uint64_t carManager_getDiscoveryIDForEndpoint(const void *a1)
{
  cf = 0;
  v11 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(CMBaseObject, @"EndpointDescription", 0, &v11))
  {
    carManager_getDiscoveryIDForEndpoint_cold_3();
  }

  else
  {
    v4 = v11;
    v5 = CFGetAllocator(a1);
    v6 = APEndpointDescriptionGetCMBaseObject(v4);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v7 || v7(v6, @"TransportDevice", v5, &cf))
    {
      carManager_getDiscoveryIDForEndpoint_cold_2();
    }

    else
    {
      if (APTransportDeviceGetDiscoveryID())
      {
        UInt64 = FigCFNumberGetUInt64();
        goto LABEL_10;
      }

      carManager_getDiscoveryIDForEndpoint_cold_1();
    }
  }

  UInt64 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return UInt64;
}

uint64_t __carManager_browserEventHandler_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carManager_browserEventHandler_block_invoke_cold_1();
  }

  result = *(a1 + 56);
  if (result <= 6)
  {
    if ((result - 3) >= 2)
    {
      if ((result - 5) < 2)
      {
        v3 = *(a1 + 40);
        v4 = *(v3 + 32);
        v5 = *(v3 + 40);
        CMBaseObjectGetDerivedStorage();
        if (v5)
        {
          carManager_updateBrowserContext(v4, v3, 0, 1, 0, -1, -1, -1);
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
        result = *(*(*(a1 + 32) + 8) + 24);
        if (result)
        {
          return __carManager_browserEventHandler_block_invoke_cold_3();
        }

        return result;
      }

      goto LABEL_13;
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(v6 + 32);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = CFGetAllocator(v8);
    v29 = 0;
    v30 = 0;
    if (!v7)
    {
      __carManager_browserEventHandler_block_invoke_cold_8();
      v28 = -6762;
LABEL_62:
      if (v30)
      {
        CFRelease(v30);
      }

      *(*(*(a1 + 32) + 8) + 24) = v28;
      result = *(*(*(a1 + 32) + 8) + 24);
      if (result)
      {
        return __carManager_browserEventHandler_block_invoke_cold_9();
      }

      return result;
    }

    v11 = v10;
    v12 = APTransportDeviceCreate();
    if (v12)
    {
      v28 = v12;
      __carManager_browserEventHandler_block_invoke_cold_4();
      goto LABEL_60;
    }

    v13 = *(v6 + 40);
    if (v13)
    {
      v29 = CFRetain(v13);
      cf = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v15)
      {
        goto LABEL_81;
      }

      v15(CMBaseObject, @"EndpointDescription", 0, &cf);
      v16 = cf;
      if (!cf)
      {
        goto LABEL_81;
      }

      v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v17)
      {
        v18 = v17(v16, v30) == 0;
      }

      else
      {
        v18 = 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (!v18)
      {
        if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
LABEL_81:
        if (gLogCategory_APEndpointManagerCarPlay <= 90 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carManager_browserEventHandler_block_invoke_cold_5();
        }
      }

      v27 = -1;
      goto LABEL_59;
    }

    if (*(DerivedStorage + 360))
    {
      v20 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"carPlayTestControlMode", *MEMORY[0x277CBED28]);
      v22 = *(DerivedStorage + 352);
      if (!v22)
      {
LABEL_35:
        v24 = *MEMORY[0x277CE4D18];
        if (CFDictionaryContainsKey(v7, *MEMORY[0x277CE4D18]))
        {
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          Value = CFDictionaryGetValue(v7, v24);
          CFDictionarySetValue(Mutable, @"sessionHostInfo", Value);
        }

        v26 = APEndpointCarPlayCreateWithTransportDevice(v11, v30, Mutable, &v29);
        if (!v26)
        {
          if (!*v6)
          {
            carManager_isEndpointWireless();
          }

          if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
          {
            __carManager_browserEventHandler_block_invoke_cold_7();
            if (!Mutable)
            {
              goto LABEL_47;
            }
          }

          else if (!Mutable)
          {
LABEL_47:
            v27 = 0;
LABEL_59:
            carManager_updateBrowserContext(v8, v6, v29, 1, 1, v27, -1, -1);
            carManager_handlePendingAutoconnect(v8);
            v28 = 0;
            goto LABEL_60;
          }

          CFRelease(Mutable);
          goto LABEL_47;
        }

        v28 = v26;
        __carManager_browserEventHandler_block_invoke_cold_6();
LABEL_60:
        if (v29)
        {
          CFRelease(v29);
        }

        goto LABEL_62;
      }

      if (Mutable)
      {
LABEL_34:
        CFDictionarySetValue(Mutable, @"EventRecorder", v22);
        goto LABEL_35;
      }

      v23 = (DerivedStorage + 352);
    }

    else
    {
      if (!*(DerivedStorage + 352))
      {
        Mutable = 0;
        goto LABEL_35;
      }

      v23 = (DerivedStorage + 352);
      v20 = *MEMORY[0x277CBECE8];
    }

    Mutable = CFDictionaryCreateMutable(v20, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v22 = *v23;
    goto LABEL_34;
  }

  if (result != 7)
  {
    if (result == 8)
    {
      return result;
    }

LABEL_13:
    if (gLogCategory_APEndpointManagerCarPlay <= 90)
    {
      if (gLogCategory_APEndpointManagerCarPlay != -1 || (result = _LogCategory_Initialize(), result))
      {
        APBrowserGetEventString();
        return LogPrintF();
      }
    }

    return result;
  }

  v19 = *(a1 + 40);
  CMBaseObjectGetDerivedStorage();
  if (*(v19 + 40))
  {
    carManager_updateBrowserContext(*(v19 + 32), v19, 0, 1, 0, -1, -1, -1);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __carManager_browserEventHandler_block_invoke_cold_2();
  }

  return result;
}

BOOL carManager_isEndpointWireless()
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v2 = 0;
  if (v1)
  {
    v1(CMBaseObject, *MEMORY[0x277CC1558], 0, &cf);
    if (cf)
    {
      if (FigCFEqual())
      {
        v2 = 1;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

void carManager_handleEndpointActivated(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v10 = *(DerivedStorage + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __carManager_handleEndpointActivated_block_invoke;
  v11[3] = &__block_descriptor_64_e5_v8__0l;
  v11[4] = a2;
  v11[5] = a4;
  v11[6] = a5;
  v11[7] = a3;
  dispatch_async(v10, v11);
}

void carManager_handleEndpointDeactivatedOrDissociated(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFEqual(a3, *MEMORY[0x277CC0D40]);
  CFRetain(a2);
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v10 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __carManager_handleEndpointDeactivatedOrDissociated_block_invoke;
  block[3] = &unk_27849C578;
  block[4] = v12;
  block[5] = a2;
  block[6] = a4;
  block[7] = a5;
  block[8] = a3;
  dispatch_async(v10, block);
  _Block_object_dispose(v12, 8);
}

void sub_2220E1838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void carManager_handleEndpointActivationChanged(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFAbsoluteTimeGetCurrent();
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    carManager_handleEndpointActivationChanged_cold_1();
  }

  CFRetain(a1);
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __carManager_handleEndpointActivationChanged_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v5, block);
  v6 = *(DerivedStorage + 320);
  if (*(a2 + 48))
  {
    if (!v6)
    {
      v23 = 0.0;
      v24 = &v23;
      v25 = 0x3052000000;
      v26 = __Block_byref_object_copy__1;
      v7 = getCRSSessionControllerClass_softClass;
      v27 = __Block_byref_object_dispose__1;
      v28 = getCRSSessionControllerClass_softClass;
      if (!getCRSSessionControllerClass_softClass)
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __getCRSSessionControllerClass_block_invoke;
        v22[3] = &unk_27849ACC8;
        v22[4] = &v23;
        __getCRSSessionControllerClass_block_invoke(v22);
        v7 = *(v24 + 5);
      }

      _Block_object_dispose(&v23, 8);
      *(DerivedStorage + 320) = objc_alloc_init(v7);
    }

    v8 = MEMORY[0x223DB15F0](DerivedStorage + 304);
    v9 = *(a2 + 68);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Current = CFAbsoluteTimeGetCurrent();
    v23 = 0.0;
    mach_absolute_time();
    if (carManager_getEndpointActivationStateFilePath_once != -1)
    {
      carManager_handleEndpointActivationChanged_cold_2();
    }

    v12 = CFPropertyListCreateFromFilePath();
    mach_absolute_time();
    if (v12)
    {
      FigCFDictionaryGetDoubleIfPresent();
      if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        carManager_handleEndpointActivationChanged_cold_3();
      }

      CFRelease(v12);
      v13 = v23;
    }

    else
    {
      v13 = 0.0;
    }

    if (v9 == 1)
    {
      if (gLogCategory_APEndpointManagerCarPlay <= 40 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        carManager_handleEndpointActivationChanged_cold_5();
      }
    }

    else
    {
      v14 = Current - v13;
      if (v14 <= 0.0 || v14 >= 15.0)
      {
        v16 = getpid();
        LODWORD(v23) = 0;
        if (carManager_getEndpointActivationStateFilePath_once != -1)
        {
          carManager_handleEndpointActivationChanged_cold_2();
        }

        v17 = CFPropertyListCreateFromFilePath();
        if (v17)
        {
          v18 = v17;
          FigCFDictionaryGetInt32IfPresent();
          if (LODWORD(v23) == v16 || CFDictionaryContainsKey(v18, @"deactivation_time"))
          {
            CFRelease(v18);
          }

          else
          {
            if (gLogCategory_APEndpointManagerCarPlay <= 60 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            CFRelease(v18);
            CFDictionarySetValue(Mutable, @"APCarPlay_sessionCrash", *MEMORY[0x277CBED28]);
          }
        }
      }

      else
      {
        if (FigCFEqual())
        {
          v15 = @"APCarPlay_sessionSoftReset";
        }

        else
        {
          v15 = @"APCarPlay_sessionHardReset";
        }

        CFDictionarySetValue(Mutable, v15, *MEMORY[0x277CBED28]);
      }
    }

    if (FigCFDictionaryGetCount() >= 1)
    {
      if (gLogCategory_APEndpointManagerCarPlay <= 40 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        carManager_handleEndpointActivationChanged_cold_6();
      }

      APSSetFBOPropertyDictionary();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    *(a2 + 68) = 0;
    FigCFWeakReferenceStore();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else if (v6)
  {
    [v6 invalidate];

    *(DerivedStorage + 320) = 0;
  }

  getpid();
  v19 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v19)
  {
    v20 = v19;
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetDouble();
    if (carManager_getEndpointActivationStateFilePath_once != -1)
    {
      carManager_handleEndpointActivationChanged_cold_2();
    }

    if (CFPropertyListWriteToFilePath())
    {
      carManager_handleEndpointActivationChanged_cold_8();
    }

    CFRelease(v20);
  }

  else
  {
    carManager_handleEndpointActivationChanged_cold_9();
  }
}

void sub_2220E1E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __carManager_handleEndpointActivated_block_invoke(uint64_t *a1)
{
  BrowserContextForEndpoint = carManager_getBrowserContextForEndpoint(a1[4], a1[5]);
  if (BrowserContextForEndpoint)
  {
    v3 = BrowserContextForEndpoint;
    carManager_updateBrowserContext(a1[4], BrowserContextForEndpoint, a1[5], 0, 0, 1, 0, 0xFFFFFFFFLL);
    carManager_handleEndpointActivationChanged(a1[4], v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[4];

  CFRelease(v7);
}

void __carManager_handleEndpointDeactivatedOrDissociated_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = carManager_getBrowserContextForEndpoint(a1[5], a1[6]);
  if (*(*(a1[4] + 8) + 24))
  {
    FigCFDictionaryGetInt32IfPresent();
    if (gLogCategory_APEndpointManagerCarPlay <= 40 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carManager_handleEndpointDeactivatedOrDissociated_block_invoke_cold_1();
    }

    carManager_updateBrowserContext(a1[5], *(*(a1[4] + 8) + 24), a1[6], 0, 0, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL);
    carManager_handleEndpointActivationChanged(a1[5], *(*(a1[4] + 8) + 24));
    carManager_handlePendingAutoconnect(a1[5]);
  }

  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];

  CFRelease(v5);
}

void __carManager_handleEndpointActivationChanged_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 352))
  {
    APSEventRecorderRecordEvent();
  }

  v2 = LogCategoryCopyOSLogHandle();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v4, OS_SIGNPOST_EVENT, 0x2B8D08E0uLL, "AP_SIGNPOST_CAR_ACTIVATED_ENDPOINTS_CHANGED_SEND", &unk_2222A918B, v5, 2u);
  }

  if (v3)
  {
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CFRelease(*(a1 + 40));
}

Class __getCRSSessionControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CarPlayServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CarPlayServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849C5C0;
    v5 = 0;
    CarPlayServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CarPlayServicesLibraryCore_frameworkLibrary)
  {
    __getCRSSessionControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CRSSessionController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCRSSessionControllerClass_block_invoke_cold_1();
  }

  getCRSSessionControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CarPlayServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CarPlayServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __carManager_getEndpointActivationStateFilePath_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  NSTemporaryDirectory();
  SNPrintF();
  if (gLogCategory_APEndpointManagerCarPlay <= 40 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carManager_getEndpointActivationStateFilePath_block_invoke_cold_1();
  }

  objc_autoreleasePoolPop(v0);
}

void __carManager_updateCurrentEndpoint_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 352))
  {
    APSEventRecorderRecordEvent();
  }

  v2 = LogCategoryCopyOSLogHandle();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v4, OS_SIGNPOST_EVENT, 0x2B160190uLL, "AP_SIGNPOST_SETAUTOCONNECTENDPOINT", &unk_2222A918B, v5, 2u);
  }

  if (v3)
  {
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CFRelease(*(a1 + 40));
}

void __carManager_updateCurrentEndpoint_block_invoke_256(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t APEndpointDisplayDescriptionGetTypeID()
{
  if (APEndpointDisplayDescriptionGetTypeID_sAPEndpointDisplayDescriptionOnce != -1)
  {
    APEndpointDisplayDescriptionGetTypeID_cold_1();
  }

  return sAPEndpointDisplayDescriptionTypeID;
}

uint64_t __APEndpointDisplayDescriptionGetTypeID_block_invoke()
{
  sAPEndpointDisplayDescriptionClass = 0;
  unk_27D0087A0 = "APEndpointDisplayDescription";
  qword_27D0087A8 = 0;
  unk_27D0087B0 = 0;
  qword_27D0087C0 = 0;
  unk_27D0087C8 = 0;
  qword_27D0087B8 = bonjourDisplayDescription_Finalize;
  qword_27D0087D0 = bonjourDisplayDescription_CopyFormattingDesc;
  qword_27D0087D8 = bonjourDisplayDescription_CopyDebugDescription;
  result = _CFRuntimeRegisterClass();
  sAPEndpointDisplayDescriptionTypeID = result;
  return result;
}

uint64_t APEndpointDisplayDescriptionCreateWithDisplayInfo(uint64_t a1, const void *a2, void *a3)
{
  if (!a3)
  {
    v10 = 4294895515;
    APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_6();
    return v10;
  }

  if (!a2)
  {
    v10 = 4294895515;
    APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_5();
    return v10;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v10 = 4294895515;
    APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_1();
    return v10;
  }

  if (APEndpointDisplayDescriptionGetTypeID_sAPEndpointDisplayDescriptionOnce != -1)
  {
    APEndpointDisplayDescriptionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_4();
    return 4294895516;
  }

  v7 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  v8 = dispatch_queue_create("com.apple.AirPlay.APEndpointDisplayDescription", 0);
  v7[2] = v8;
  if (!v8)
  {
    APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_3(v7);
    return 4294895516;
  }

  v9 = CFRetain(a2);
  v10 = 0;
  v7[3] = v9;
  *a3 = v7;
  return v10;
}

uint64_t APEndpointDisplayDescriptionCreateDefaultWithEndpointFeatures(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  APSFeaturesHasFeature();
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(v6, @"uuid", @"86E62046-B752-490D-AF0B-6D7672A89101");
    v7 = APEndpointDisplayDescriptionCreateWithDisplayInfo(a1, v6, a3);
    if (v7)
    {
      APEndpointDisplayDescriptionCreateDefaultWithEndpointFeatures_cold_1();
    }

    CFRelease(v6);
  }

  else
  {
    APEndpointDisplayDescriptionCreateDefaultWithEndpointFeatures_cold_2();
    return 4294895516;
  }

  return v7;
}

uint64_t APEndpointDisplayDescriptionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (gLogCategory_APEndpointDisplayDescription <= 30 && (gLogCategory_APEndpointDisplayDescription != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    if (a4)
    {
      v8 = *(a1 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __APEndpointDisplayDescriptionCopyProperty_block_invoke;
      block[3] = &unk_27849C708;
      block[4] = &v12;
      block[5] = a1;
      block[6] = a2;
      block[7] = a3;
      block[8] = a4;
      dispatch_sync(v8, block);
      v9 = *(v13 + 6);
    }

    else
    {
      v9 = 4294895515;
      APEndpointDisplayDescriptionCopyProperty_cold_1();
    }
  }

  else
  {
    v9 = 4294895515;
    APEndpointDisplayDescriptionCopyProperty_cold_2();
  }

  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __APEndpointDisplayDescriptionCopyProperty_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[8];
  if (CFEqual(v2, @"EDID"))
  {
    v5 = *(v3 + 24);
    v6 = @"edid";
LABEL_15:
    result = CFDictionaryGetValue(v5, v6);
    if (result)
    {
      result = CFRetain(result);
    }

    v8 = 0;
    *v4 = result;
    goto LABEL_18;
  }

  if (CFEqual(v2, @"UUID"))
  {
    v5 = *(v3 + 24);
    v6 = @"uuid";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"ViewAreas"))
  {
    v5 = *(v3 + 24);
    v6 = @"viewAreas";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"InitialViewArea"))
  {
    v5 = *(v3 + 24);
    v6 = @"initialViewArea";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"AdjacentViewAreas"))
  {
    v5 = *(v3 + 24);
    v6 = @"adjacentViewAreas";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"PrimaryInputDevice"))
  {
    v5 = *(v3 + 24);
    v6 = @"primaryInputDevice";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"MaxFPS"))
  {
LABEL_14:
    v5 = *(v3 + 24);
    v6 = @"maxFPS";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"SupportsRotation"))
  {
    v9 = *(v3 + 24);
    v10 = @"rotation";
    goto LABEL_21;
  }

  if (CFEqual(v2, @"HDRInfo"))
  {
    v5 = *(v3 + 24);
    v6 = @"HDRInfo";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"receiverSupports444"))
  {
    v9 = *(v3 + 24);
    v10 = @"receiverSupports444";
    goto LABEL_21;
  }

  if (CFEqual(v2, @"receiverSupportsHDRMirroring"))
  {
    v9 = *(v3 + 24);
    v10 = @"receiverSupportsHDRMirroring";
    goto LABEL_21;
  }

  if (CFEqual(v2, @"IsOverscanned"))
  {
    v9 = *(v3 + 24);
    v10 = @"overscanned";
LABEL_21:
    result = CFDictionaryGetValue(v9, v10);
    if (!result)
    {
      result = *MEMORY[0x277CBED10];
    }

    goto LABEL_23;
  }

  if (CFEqual(v2, @"RefreshRate"))
  {
    goto LABEL_14;
  }

  if (CFEqual(v2, @"PhysicalSize"))
  {
    Int64 = CFDictionaryGetInt64();
    v23.height = CFDictionaryGetInt64();
    v23.width = Int64;
    result = CGSizeCreateDictionaryRepresentation(v23);
    *v4 = result;
    if (!result)
    {
      v8 = -71780;
      result = __APEndpointDisplayDescriptionCopyProperty_block_invoke_cold_1();
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (CFEqual(v2, @"PixelSize"))
  {
    v12 = CFDictionaryGetInt64();
    v24.height = CFDictionaryGetInt64();
    v24.width = v12;
    result = CGSizeCreateDictionaryRepresentation(v24);
    *v4 = result;
    if (!result)
    {
      v8 = -71780;
      result = __APEndpointDisplayDescriptionCopyProperty_block_invoke_cold_2();
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (CFEqual(v2, @"PixelSizeMax"))
  {
    v13 = CFDictionaryGetInt64();
    v25.height = CFDictionaryGetInt64();
    v25.width = v13;
    result = CGSizeCreateDictionaryRepresentation(v25);
    *v4 = result;
    if (!result)
    {
      v8 = -71780;
      result = __APEndpointDisplayDescriptionCopyProperty_block_invoke_cold_3();
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (CFEqual(v2, @"ZoomFactor"))
  {
    v5 = *(v3 + 24);
    v6 = @"zoomFactor";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"SupportsKnobInput"))
  {
    v14 = CFDictionaryGetInt64();
    v15 = MEMORY[0x277CBED28];
    v16 = MEMORY[0x277CBED10];
    v17 = (v14 & 2) == 0;
    goto LABEL_54;
  }

  if (CFEqual(v2, @"SupportsLowFidelityTouch"))
  {
    v18 = CFDictionaryGetInt64();
    v15 = MEMORY[0x277CBED28];
    v16 = MEMORY[0x277CBED10];
    v17 = (v18 & 4) == 0;
    goto LABEL_54;
  }

  if (CFEqual(v2, @"SupportsHighFidelityTouch"))
  {
    v19 = CFDictionaryGetInt64();
    v15 = MEMORY[0x277CBED28];
    v16 = MEMORY[0x277CBED10];
    v17 = (v19 & 8) == 0;
    goto LABEL_54;
  }

  if (CFEqual(v2, @"SupportsTouchpadInput"))
  {
    v20 = CFDictionaryGetInt64();
    v15 = MEMORY[0x277CBED28];
    v16 = MEMORY[0x277CBED10];
    v17 = (v20 & 0x10) == 0;
LABEL_54:
    if (v17)
    {
      v15 = v16;
    }

    goto LABEL_56;
  }

  if (CFEqual(v2, @"cornerMasks") || CFEqual(v2, @"IsNightMode") || CFEqual(v2, @"IsLimitedUI"))
  {
    FigCFDictionaryGetBooleanIfPresent();
    v15 = MEMORY[0x277CBED10];
LABEL_56:
    result = *v15;
LABEL_23:
    *v4 = result;
    if (result)
    {
      result = CFRetain(result);
    }

LABEL_25:
    v8 = 0;
    goto LABEL_18;
  }

  if (CFEqual(v2, @"LimitedUIElements"))
  {
    Value = CFDictionaryGetValue(*(v3 + 24), @"limitedUIElements");
    if (Value)
    {
      v22 = Value;
      result = CFRetain(Value);
    }

    else
    {
      result = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v22 = result;
      if (!result)
      {
        v8 = -71780;
        result = __APEndpointDisplayDescriptionCopyProperty_block_invoke_cold_4();
        goto LABEL_18;
      }
    }

    v8 = 0;
    *v4 = v22;
  }

  else
  {
    if (CFEqual(v2, @"Url"))
    {
      v5 = *(v3 + 24);
      v6 = @"url";
      goto LABEL_15;
    }

    result = CFEqual(v2, @"InitialUrl");
    if (result)
    {
      v5 = *(v3 + 24);
      v6 = @"initialURL";
      goto LABEL_15;
    }

    v8 = -71782;
    if (gLogCategory_APEndpointDisplayDescription <= 30)
    {
      if (gLogCategory_APEndpointDisplayDescription != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __APEndpointDisplayDescriptionCopyProperty_block_invoke_cold_5();
      }
    }
  }

LABEL_18:
  *(*(a1[4] + 8) + 24) = v8;
  return result;
}

void bonjourDisplayDescription_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }
}

__CFString *bonjourDisplayDescription_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APEndpointDisplayDescription %p>", a1);
  return Mutable;
}

uint64_t APSenderSessionLegacyAudioCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  cf = 0;
  v25 = 0;
  APSenderSessionGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v22 = v9;
    APSenderSessionLegacyAudioCreate_cold_1();
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 72) = v11;
  if (!v11)
  {
    APSenderSessionLegacyAudioCreate_cold_8();
LABEL_33:
    v22 = 4294895476;
    goto LABEL_21;
  }

  SNPrintF();
  v12 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 40) = v12;
  if (!v12)
  {
    APSenderSessionLegacyAudioCreate_cold_7();
    goto LABEL_33;
  }

  SNPrintF();
  v13 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v13;
  if (!v13)
  {
    APSenderSessionLegacyAudioCreate_cold_6();
    goto LABEL_33;
  }

  if (!a2)
  {
    v22 = 4294895475;
    APSenderSessionLegacyAudioCreate_cold_5();
    goto LABEL_21;
  }

  *DerivedStorage = CFRetain(a2);
  if (!a3)
  {
    v22 = 4294895475;
    APSenderSessionLegacyAudioCreate_cold_4();
    goto LABEL_21;
  }

  *(DerivedStorage + 24) = CFRetain(a3);
  if (!a4)
  {
    v22 = 4294895475;
    APSenderSessionLegacyAudioCreate_cold_3();
    goto LABEL_21;
  }

  *(DerivedStorage + 32) = CFRetain(a4);
  *(DerivedStorage + 124) = vdup_n_s32(0xC479C000);
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 24));
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    v22 = 4294954514;
LABEL_20:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v16 = *MEMORY[0x277CBECE8];
  v17 = v15(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
  if (v17)
  {
    v22 = v17;
    goto LABEL_20;
  }

  SharedTransport = APTransportGetSharedTransport();
  v19 = cf;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v20)
  {
    v22 = 4294954514;
    goto LABEL_20;
  }

  v21 = v20(SharedTransport, v16, a2, v19, 0, DerivedStorage + 16);
  if (v21)
  {
    v22 = v21;
    goto LABEL_20;
  }

  if (gLogCategory_APSenderSessionSDP <= 50)
  {
    if (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize())
    {
      APSenderSessionLegacyAudioCreate_cold_2();
    }

    if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v22 = 0;
  *a5 = v25;
  v25 = 0;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v22;
}

uint64_t sdpsession_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sdpsession_invalidateTransportControlStream(a1, 1);
  dispatch_sync_f(*(DerivedStorage + 40), a1, sdpsession_cleanup);
  return 0;
}

void sdpsession_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 88))
  {
    if (gLogCategory_APSenderSessionSDP <= 100 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_Finalize_cold_1();
    }

    __break(1u);
  }

  else
  {
    v1 = *(DerivedStorage + 24);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 24) = 0;
    }

    v2 = *(DerivedStorage + 32);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 32) = 0;
    }

    v3 = *(DerivedStorage + 8);
    if (v3)
    {
      dispatch_release(v3);
      *(DerivedStorage + 8) = 0;
    }

    FigSimpleMutexDestroy();
    v4 = *(DerivedStorage + 40);
    if (v4)
    {
      dispatch_release(v4);
      *(DerivedStorage + 40) = 0;
    }

    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }

    v5 = *(DerivedStorage + 16);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 16) = 0;
    }
  }
}

__CFString *sdpsession_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSenderSessionSDP %p %@>", a1, *DerivedStorage);
  return Mutable;
}

uint64_t sdpsession_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 10 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a4)
  {
    sdpsession_CopyProperty_cold_5();
    return 4294960591;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"TransportControlStream"))
  {
    v9 = sdpsession_ensureTransportControlStreamCreated(a1);
    if (v9)
    {
      sdpsession_CopyProperty_cold_1();
      goto LABEL_13;
    }

    v10 = CFRetain(*(DerivedStorage + 88));
    goto LABEL_9;
  }

  if (CFEqual(a2, @"InitialVolumeDB"))
  {
    v11 = CFNumberCreate(a3, kCFNumberFloat32Type, (DerivedStorage + 124));
    *a4 = v11;
    if (!v11)
    {
      v9 = 4294895476;
      sdpsession_CopyProperty_cold_2();
      goto LABEL_13;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"IsConnectedOnPeerToPeerInterface"))
  {
    v10 = CFRetain(*MEMORY[0x277CBED10]);
  }

  else
  {
    if (CFEqual(a2, @"ControlConnectionInterfaceLatencyHint"))
    {
      if (!*(DerivedStorage + 88))
      {
        sdpsession_CopyProperty_cold_4();
        v9 = 4294895466;
        goto LABEL_13;
      }

      Int64 = CFNumberCreateInt64();
      *a4 = Int64;
      if (!Int64)
      {
        v9 = 4294895476;
        sdpsession_CopyProperty_cold_3();
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (!CFEqual(a2, @"ShowInfo"))
    {
      v9 = 4294954512;
      goto LABEL_13;
    }

    v10 = sdpsession_copyShowInfo();
  }

  v9 = 0;
LABEL_9:
  *a4 = v10;
LABEL_13:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t sdpsession_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    FigSimpleMutexLock();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!CFEqual(a2, @"AuthorizationString"))
    {
      if (CFEqual(a2, @"DACPID"))
      {
        *(DerivedStorage + 112) = CFGetInt64();
      }

      else if (CFEqual(a2, @"DACPRemoteID"))
      {
        *(DerivedStorage + 120) = CFGetInt64();
      }

      else if (CFEqual(a2, @"PendingVolumeDB"))
      {
        CFGetDouble();
        *&v12 = v12;
        *(DerivedStorage + 128) = LODWORD(v12);
      }

      goto LABEL_22;
    }

    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 != CFStringGetTypeID())
      {
        sdpsession_SetProperty_cold_1();
LABEL_22:
        FigSimpleMutexUnlock();
        return 0;
      }

      v8 = (DerivedStorage + 104);
      v7 = *(DerivedStorage + 104);
      *(DerivedStorage + 104) = a3;
      CFRetain(a3);
      if (v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = (DerivedStorage + 104);
      v7 = *(DerivedStorage + 104);
      *(DerivedStorage + 104) = 0;
      if (v7)
      {
LABEL_10:
        CFRelease(v7);
      }
    }

    if (*(DerivedStorage + 88))
    {
      v9 = *v8;
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(CMBaseObject, *MEMORY[0x277CE5070], v9);
      }
    }

    goto LABEL_22;
  }

  sdpsession_SetProperty_cold_5();
  return 4294895475;
}

uint64_t sdpsession_invalidateTransportControlStream(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 132))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 132) = 0;
  }

  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v5(v4, 0, 0, 0);
    }

    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v7 = CMBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    v9 = *(DerivedStorage + 88);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 88) = 0;
    }
  }

  if (a2)
  {
    *(DerivedStorage + 80) = 1;
  }

  return FigSimpleMutexUnlock();
}

uint64_t sdpsession_cleanup(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[7];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[7] = 0;
  }

  sdpsession_stopNetworkClock(a1);
  v4 = DerivedStorage[2];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v5)
  {
    v5(v4);
  }

  CMBaseObject = FigTransportSessionGetCMBaseObject();
  if (CMBaseObject)
  {
    v7 = CMBaseObject;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v8)
    {
      v8(v7);
    }
  }

  FigSimpleMutexLock();
  v9 = DerivedStorage[13];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[13] = 0;
  }

  v10 = DerivedStorage[12];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[12] = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t sdpsession_handleTransportSessionDisconnected(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigSimpleMutexUnlock();
  if (gLogCategory_APSenderSessionSDP <= 50 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_handleTransportSessionDisconnected_cold_1();
  }

  sdpsession_invalidateTransportControlStream(a2, 1);

  return sdpsession_postFailedNotificationAsync(a2);
}

uint64_t sdpsession_postFailedNotificationAsync(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void sdpsession_postFailedNotificationCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  CMBaseObjectGetDerivedStorage();
  v4 = CFGetAllocator(v2);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetInt64();
    CFDictionarySetValue(v6, @"SessionState", v3);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v6);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v7 = *a1;

  CFRelease(v7);
}

uint64_t sdpsession_ensureTransportControlStreamCreated(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80))
  {
    sdpsession_ensureTransportControlStreamCreated_cold_1();
    return 4294895467;
  }

  v3 = DerivedStorage;
  v4 = (DerivedStorage + 88);
  if (*(DerivedStorage + 88))
  {
    return 0;
  }

  v6 = *(DerivedStorage + 16);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7)
  {
    v5 = 4294954514;
LABEL_28:
    APSLogErrorAt();
    return v5;
  }

  v8 = v7(v6, 1668575852, 0, v4);
  if (v8)
  {
    v5 = v8;
    goto LABEL_28;
  }

  v9 = *v4;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    v5 = 4294954514;
    goto LABEL_28;
  }

  v11 = v10(v9, sdpsession_controlStreamMessageCallback, 0, a1);
  if (v11)
  {
    v5 = v11;
    goto LABEL_28;
  }

  v12 = *MEMORY[0x277CBECE8];
  ShortVersionLength = APSVersionUtilsGetShortVersionLength();
  v14 = CFStringCreateWithFormat(v12, 0, @"AirPlay/%.*s", ShortVersionLength, "920.10.1");
  if (!v14)
  {
    sdpsession_ensureTransportControlStreamCreated_cold_3();
    return 4294960568;
  }

  v15 = v14;
  v16 = APSGetFBOPropertyInt64();
  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v18)
  {
    v18(CMBaseObject, *MEMORY[0x277CE50B8], v15);
  }

  v19 = FigTransportStreamGetCMBaseObject();
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v20)
  {
    v20(v19, *MEMORY[0x277CE50C0], @"iTunes");
  }

  v21 = *(v3 + 104);
  v22 = FigTransportStreamGetCMBaseObject();
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v23)
  {
    v23(v22, *MEMORY[0x277CE5070], v21);
  }

  v24 = *v4;
  if (v16)
  {
    v25 = MEMORY[0x277CBED28];
  }

  else
  {
    v25 = MEMORY[0x277CBED10];
  }

  v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v26)
  {
    v26(v24, *MEMORY[0x277CE50B0], *v25);
  }

  APSenderSessionMessageSendTimeout();
  APSSetFBOPropertyInt64();
  if ((!*(v3 + 112) || !*(v3 + 120)) && gLogCategory_APSenderSessionSDP <= 60 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_ensureTransportControlStreamCreated_cold_2();
  }

  APSSetFBOPropertyInt64();
  APSSetFBOPropertyInt64();
  CFRelease(v15);
  return 0;
}

__CFDictionary *sdpsession_copyShowInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v1 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  v4 = *MEMORY[0x277CBED28];
  v5 = *MEMORY[0x277CBED10];
  if (*(DerivedStorage + 132))
  {
    v6 = *MEMORY[0x277CBED28];
  }

  else
  {
    v6 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"isConnected", v6);
  if (*(DerivedStorage + 133))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  CFDictionarySetValue(v3, @"isSessionStarted", v7);
  if (*(DerivedStorage + 16))
  {
    CMBaseObject = FigTransportSessionGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9 || v9(CMBaseObject, *MEMORY[0x277CE4FA8], v1, &value))
    {
      sdpsession_copyShowInfo_cold_1();
    }

    else
    {
      CFDictionarySetValue(v3, @"TransportSessionInfo", value);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  return v3;
}

uint64_t sdpsession_controlStreamMessageCallback(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void sdpsession_controlStreamMessageCallbackInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = *(a1 + 16);
  if (v2 != 1651470958)
  {
    if (v2 == 1684628836)
    {
      if (*a1)
      {
        CFRetain(*a1);
      }

      v3 = *(a1 + 8);
      if (v3)
      {
        CFRetain(v3);
      }

      APSDispatchAsyncFHelper();
    }

    else if (gLogCategory_APSenderSessionSDP <= 50 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  CFRelease(*a1);
  v4 = *(a1 + 8);

  CFRelease(v4);
}

void sdpsession_handleTransportStreamDisconnected(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 90 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_handleTransportStreamDisconnected_cold_1();
  }

  FigSimpleMutexLock();
  if (a1[1] == *(DerivedStorage + 88))
  {
    FigSimpleMutexUnlock();
    sdpsession_invalidateTransportControlStream(*a1, 1);
    sdpsession_postFailedNotificationAsync(*a1);
  }

  else
  {
    if (gLogCategory_APSenderSessionSDP <= 50 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_handleTransportStreamDisconnected_cold_2();
    }

    FigSimpleMutexUnlock();
    APSLogErrorAt();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[1];
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sdpsession_IsConnected()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 132);
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t sdpsession_IsActive()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 133);
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t sdpsession_EnsureStarted()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return APSDispatchSyncTask();
}

uint64_t sdpsession_CreateTransportStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_5:
    APSLogErrorAt();
    return v7;
  }

  v7 = v6(v5, a2, a3);
  if (v7)
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t sdpsession_CreateTransportStreamWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 16);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    v9 = 4294954514;
LABEL_5:
    APSLogErrorAt();
    return v9;
  }

  v9 = v8(v7, a2, a3, a4);
  if (v9)
  {
    goto LABEL_5;
  }

  return v9;
}

uint64_t sdpsession_ensureStartedInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v2 = sdpsession_ensureTransportControlStreamResumedSync(a1);
  if (v2)
  {
    v8 = v2;
    sdpsession_ensureStartedInternal_cold_1();
    return v8;
  }

  sdpsession_copyTransportControlStream(a1, &v13);
  v3 = v13;
  if (!v13)
  {
    sdpsession_ensureStartedInternal_cold_6();
    return 4294895475;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v4)
  {
    v5 = v4(v3, 1635087464, 0, 0);
    if (!v5)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 49))
      {
LABEL_23:
        v8 = 0;
        goto LABEL_24;
      }

      v7 = DerivedStorage;
      if (gLogCategory_APSenderSessionSDP <= 40 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v9 = *(v7 + 32);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v10)
      {
        v14 = v10(v9, a1);
        if (!v14)
        {
          *(v7 + 49) = 1;
          v11 = APSGetFBOPropertyInt64();
          if (v14)
          {
            sdpsession_ensureStartedInternal_cold_2();
          }

          else
          {
            *(v7 + 64) = v11;
            if (gLogCategory_APSenderSessionSDP <= 50 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }
          }

LABEL_22:
          if (v14)
          {
            if (gLogCategory_APSenderSessionSDP <= 90)
            {
              sdpsession_ensureStartedInternal_cold_4(gLogCategory_APSenderSessionSDP);
            }

            sdpsession_stopNetworkClock(a1);
            v8 = v14;
            if (v14)
            {
              sdpsession_ensureStartedInternal_cold_5();
            }

            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v14 = -12782;
      }

      sdpsession_ensureStartedInternal_cold_3();
      goto LABEL_22;
    }

    v8 = v5;
  }

  else
  {
    v8 = 4294954514;
  }

  APSLogErrorAt();
LABEL_24:
  CFRelease(v3);
  return v8;
}

uint64_t sdpsession_copyTransportControlStream(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;

  return FigSimpleMutexUnlock();
}

uint64_t sdpsession_setupStreamCreatingResponseInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_setupStreamCreatingResponseInternal_cold_1();
  }

  if (*(a1 + 8) != 96)
  {
    v4 = 4294895471;
    sdpsession_setupStreamCreatingResponseInternal_cold_2();
    goto LABEL_85;
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 133);
  FigSimpleMutexUnlock();
  if (!v3)
  {
    v6 = sdpsession_ensureTransportControlStreamResumedSync(*a1);
    if (v6)
    {
      v4 = v6;
      sdpsession_setupStreamCreatingResponseInternal_cold_3();
      goto LABEL_85;
    }

    v7 = *a1;
    LODWORD(v39) = 0;
    v8 = CMBaseObjectGetDerivedStorage();
    v41 = 0;
    v42 = 0;
    FigSimpleMutexLock();
    v9 = *(v8 + 96);
    if (v9)
    {
      v10 = CFRetain(v9);
    }

    else
    {
      v10 = 0;
    }

    cf = v10;
    FigSimpleMutexUnlock();
    v11 = MEMORY[0x277CBECE8];
    if (v10)
    {
LABEL_41:
      CFRelease(v10);
LABEL_42:
      if (v42)
      {
        CFRelease(v42);
      }

      if (v41)
      {
        CFRelease(v41);
      }

      v4 = v39;
      if (v39)
      {
        sdpsession_setupStreamCreatingResponseInternal_cold_12();
        goto LABEL_85;
      }

      v21 = CMBaseObjectGetDerivedStorage();
      v41 = 0;
      v42 = 0;
      v39 = 0;
      cf = 0;
      if (*(v21 + 56))
      {
        v4 = 0;
        goto LABEL_63;
      }

      v22 = v21;
      FigSimpleMutexLock();
      v23 = *(v22 + 96);
      if (v23)
      {
        v24 = CFRetain(v23);
      }

      else
      {
        v24 = 0;
      }

      FigSimpleMutexUnlock();
      v25 = *v11;
      v26 = APKeyHolderSharedKeyCreate(*v11, 0, 0, 0, &v41);
      if (v26)
      {
        v4 = v26;
        sdpsession_setupStreamCreatingResponseInternal_cold_13();
      }

      else
      {
        v27 = v41;
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v28)
        {
          v29 = v28(v27, &cf, &v39);
          if (!v29)
          {
            v30 = APKeyHolderSharedKeyCreate(v25, v24, cf, v39, &v42);
            if (v30)
            {
              v4 = v30;
              sdpsession_setupStreamCreatingResponseInternal_cold_14();
            }

            else
            {
              v4 = *(v22 + 56);
              v31 = v42;
              *(v22 + 56) = v42;
              if (v31)
              {
                CFRetain(v31);
              }

              if (v4)
              {
                CFRelease(v4);
                v4 = 0;
              }
            }

            goto LABEL_61;
          }

          v4 = v29;
        }

        else
        {
          v4 = 4294954514;
        }

        APSLogErrorAt();
      }

LABEL_61:
      if (v24)
      {
        CFRelease(v24);
      }

LABEL_63:
      if (v42)
      {
        CFRelease(v42);
      }

      if (v41)
      {
        CFRelease(v41);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      if (v4)
      {
        APSLogErrorAt();
      }

      else
      {
        v32 = sdpsession_sendAnnounce(*a1);
        if (v32)
        {
          v4 = v32;
          sdpsession_setupStreamCreatingResponseInternal_cold_15();
        }

        else
        {
          v33 = sdpsession_sendSetup(*a1, *(a1 + 16), *(a1 + 24));
          if (v33)
          {
            v4 = v33;
            sdpsession_setupStreamCreatingResponseInternal_cold_16();
          }

          else
          {
            v34 = sdpsession_ensureInitialVolumeFetched(*a1);
            if (v34)
            {
              v4 = v34;
              sdpsession_setupStreamCreatingResponseInternal_cold_17();
            }

            else
            {
              started = sdpsession_startSession(*a1);
              if (started)
              {
                v4 = started;
                sdpsession_setupStreamCreatingResponseInternal_cold_18();
              }

              else
              {
                v36 = sdpsession_sendPendingSetVolumeCommand(*a1);
                if (v36)
                {
                  v4 = v36;
                  sdpsession_setupStreamCreatingResponseInternal_cold_19();
                }

                else
                {
                  v37 = sdpsession_copyCryptor(*a1, *(a1 + 32));
                  if (v37)
                  {
                    v4 = v37;
                    sdpsession_setupStreamCreatingResponseInternal_cold_20();
                  }

                  else
                  {
                    v38 = sdpsession_ensureKeepAliveResumed();
                    if (!v38)
                    {
                      if (gLogCategory_APSenderSessionSDP <= 40 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
                      {
                        sdpsession_setupStreamCreatingResponseInternal_cold_22();
                      }

                      CMNotificationCenterGetDefaultLocalCenter();
                      FigDispatchAsyncPostNotification();
                      return 0;
                    }

                    v4 = v38;
                    sdpsession_setupStreamCreatingResponseInternal_cold_21();
                  }
                }
              }
            }
          }
        }
      }

LABEL_85:
      sdpsession_postFailedNotificationAsync(*a1);
      sdpsession_teardownTransportControlStream(*a1);
      return v4;
    }

    sdpsession_copyTransportControlStream(v7, &v41);
    LODWORD(v39) = 0;
    v12 = v41;
    if (!v41)
    {
      sdpsession_setupStreamCreatingResponseInternal_cold_11();
      goto LABEL_40;
    }

    v13 = APSGetFBOPropertyInt64();
    switch(v13)
    {
      case 8:
        LODWORD(v39) = APAuthenticationClientMFiCreate(*v11, v12, &cf);
        if (v39)
        {
          sdpsession_setupStreamCreatingResponseInternal_cold_6();
          goto LABEL_40;
        }

        break;
      case 4:
        LODWORD(v39) = APAuthenticationClientFairPlayCreate(*v11, v12, &cf);
        if (v39)
        {
          sdpsession_setupStreamCreatingResponseInternal_cold_5();
          goto LABEL_40;
        }

        break;
      case 1:
        CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v8 + 24));
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v15)
        {
          v16 = *v11;
          LODWORD(v39) = v15(CMBaseObject, @"MACAddress", *v11, &v42);
          if (!v39)
          {
            LODWORD(v39) = APAuthenticationClientRSACreate(v16, v12, v42, &cf);
            if (v39)
            {
              sdpsession_setupStreamCreatingResponseInternal_cold_7();
              goto LABEL_40;
            }

            break;
          }
        }

        else
        {
          LODWORD(v39) = -12782;
        }

        sdpsession_setupStreamCreatingResponseInternal_cold_9();
        goto LABEL_40;
      default:
        if (gLogCategory_APSenderSessionSDP <= 90 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
        {
          sdpsession_setupStreamCreatingResponseInternal_cold_10();
        }

        LODWORD(v39) = -71824;
LABEL_40:
        v10 = cf;
        if (!cf)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
    }

    v17 = cf;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v18)
    {
      LODWORD(v39) = v18(v17);
      if (!v39)
      {
        FigSimpleMutexLock();
        v19 = *(v8 + 96);
        v20 = cf;
        *(v8 + 96) = cf;
        if (v20)
        {
          CFRetain(v20);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        FigSimpleMutexUnlock();
        goto LABEL_40;
      }
    }

    else
    {
      LODWORD(v39) = -12782;
    }

    sdpsession_setupStreamCreatingResponseInternal_cold_8();
    goto LABEL_40;
  }

  return 0;
}

uint64_t sdpsession_sendAnnounce(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  Base64EncodedKeyAndIV = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  uuid = 0;
  v3 = 0uLL;
  memset(v44, 0, sizeof(v44));
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *cStr = 0u;
  v37 = 0u;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  if (gLogCategory_APSenderSessionSDP <= 30)
  {
    if (gLogCategory_APSenderSessionSDP != -1 || (v4 = _LogCategory_Initialize(), v3 = 0uLL, v4))
    {
      sdpsession_sendAnnounce_cold_1();
      v3 = 0uLL;
    }
  }

  theData = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  *buffer = 0;
  v32 = 0;
  v26 = v3;
  v27 = v3;
  sdpsession_copyTransportControlStream(a1, &v22);
  Base64EncodedKeyAndIV = 0;
  v5 = v22;
  if (!v22)
  {
    sdpsession_sendAnnounce_cold_13();
    Mutable = 0;
    goto LABEL_44;
  }

  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    sdpsession_sendAnnounce_cold_12();
    goto LABEL_44;
  }

  CMBaseObject = FigTransportSessionGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    Base64EncodedKeyAndIV = -12782;
    goto LABEL_29;
  }

  Base64EncodedKeyAndIV = v9(CMBaseObject, *MEMORY[0x277CC1B00], v6, &uuid);
  if (Base64EncodedKeyAndIV)
  {
LABEL_29:
    sdpsession_sendAnnounce_cold_11();
    goto LABEL_44;
  }

  v10 = *&CFUUIDGetUUIDBytes(uuid);
  v11 = FigTransportStreamGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    Base64EncodedKeyAndIV = -12782;
    goto LABEL_31;
  }

  Base64EncodedKeyAndIV = v12(v11, *MEMORY[0x277CE5030], v6, &theData);
  if (Base64EncodedKeyAndIV)
  {
LABEL_31:
    sdpsession_sendAnnounce_cold_10();
    goto LABEL_44;
  }

  if (CFDataGetLength(theData) != 28)
  {
    sdpsession_sendAnnounce_cold_2();
    goto LABEL_44;
  }

  v13 = theData;
  v46.length = CFDataGetLength(theData);
  v46.location = 0;
  CFDataGetBytes(v13, v46, buffer);
  Base64EncodedKeyAndIV = SockAddrToString();
  if (Base64EncodedKeyAndIV)
  {
    sdpsession_sendAnnounce_cold_3();
    goto LABEL_44;
  }

  if (buffer[1] == 2)
  {
    v14 = "IP4";
  }

  else
  {
    if (buffer[1] != 30)
    {
      goto LABEL_21;
    }

    v14 = "IP6";
  }

  APSGetDeviceNameCString();
  CFStringAppendCString(Mutable, "v=0\r\n", 0x8000100u);
  CFStringAppendFormat(Mutable, 0, @"o=AirTunes %llu 0 IN %s %s\r\n", bswap64(v10), v14, v44);
  CFStringAppendCString(Mutable, "s=AirTunes\r\n", 0x8000100u);
  CFStringAppendCString(Mutable, "i=", 0x8000100u);
  CFStringAppendCString(Mutable, cStr, 0x600u);
  CFStringAppendCString(Mutable, "\r\n", 0x8000100u);
  CFStringAppendFormat(Mutable, 0, @"c=IN %s %s\r\n", v14, v44);
  CFStringAppendCString(Mutable, "t=0 0\r\n", 0x8000100u);
  CFStringAppendFormat(Mutable, 0, @"m=audio 0 RTP/AVP %u\r\n", 96);
  CFDictionaryGetInt64();
  if (Base64EncodedKeyAndIV)
  {
    sdpsession_sendAnnounce_cold_4();
    goto LABEL_44;
  }

  Base64EncodedKeyAndIV = APAudioFormatToASBD();
  if (Base64EncodedKeyAndIV)
  {
    sdpsession_sendAnnounce_cold_5();
    goto LABEL_44;
  }

  if (DWORD2(v26) != 1634492771)
  {
    if (DWORD2(v26) == 1819304813)
    {
      CFStringAppendFormat(Mutable, 0, @"a=rtpmap:%u L%u/%u/%u\r\n", 96, v25, *&v26, HIDWORD(v27));
      goto LABEL_24;
    }

LABEL_21:
    v15 = -71821;
LABEL_22:
    Base64EncodedKeyAndIV = v15;
    goto LABEL_44;
  }

  CFStringAppendFormat(Mutable, 0, @"a=rtpmap:%u AppleLossless\r\n", 96);
  CFStringAppendFormat(Mutable, 0, @"a=fmtp:%u %u 0 %u 40 10 14 %u 255 0 0 %u\r\n", 96, DWORD1(v27), v25, HIDWORD(v27), *&v26);
LABEL_24:
  AuthenticationType = APSKeyHolderGetAuthenticationType(*(DerivedStorage + 56));
  if (AuthenticationType == 8)
  {
    v17 = "mfiaeskey";
    goto LABEL_34;
  }

  if (AuthenticationType == 4)
  {
    v17 = "fpaeskey";
    goto LABEL_34;
  }

  if (AuthenticationType != 1)
  {
    v15 = -71824;
    goto LABEL_22;
  }

  v17 = "rsaaeskey";
LABEL_34:
  Base64EncodedKeyAndIV = sdpsession_makeBase64EncodedKeyAndIV(*(DerivedStorage + 56), &v24, &v23);
  if (Base64EncodedKeyAndIV)
  {
    APSLogErrorAt();
    v18 = v24;
  }

  else
  {
    v18 = v24;
    CFStringAppendFormat(Mutable, 0, @"a=%s:%s\r\n", v17, v24);
    CFStringAppendFormat(Mutable, 0, @"a=aesiv:%s\r\n", v23);
    Int64 = CFDictionaryGetInt64();
    if (Base64EncodedKeyAndIV)
    {
      sdpsession_sendAnnounce_cold_6();
    }

    else
    {
      v20 = CFDictionaryGetInt64();
      if (Base64EncodedKeyAndIV)
      {
        sdpsession_sendAnnounce_cold_7();
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"a=min-latency:%u\r\n", Int64);
        CFStringAppendFormat(Mutable, 0, @"a=max-latency:%u\r\n", v20);
        if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
        {
          sdpsession_sendAnnounce_cold_8();
        }

        Base64EncodedKeyAndIV = sdpsession_sendMessageCreatingReply(v5, 1634627171, Mutable, 0);
        if (Base64EncodedKeyAndIV)
        {
          sdpsession_sendAnnounce_cold_9();
        }
      }
    }
  }

  if (v18)
  {
    free(v18);
  }

LABEL_44:
  if (v23)
  {
    free(v23);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (uuid)
  {
    CFRelease(uuid);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return Base64EncodedKeyAndIV;
}

uint64_t sdpsession_sendSetup(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  theBuffer = 0;
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_sendSetup_cold_1();
  }

  sdpsession_copyTransportControlStream(a1, &v17);
  v19 = 0;
  v6 = v17;
  if (!v17)
  {
    sdpsession_sendSetup_cold_17();
    goto LABEL_40;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    sdpsession_sendSetup_cold_16();
    goto LABEL_40;
  }

  v9 = Mutable;
  CFStringAppendFormat(Mutable, 0, @"%s;unicast;mode=record;timing_port=%d", "RTP/AVP/UDP", *(DerivedStorage + 64));
  Int64 = CFDictionaryGetInt64();
  if (v19)
  {
    sdpsession_sendSetup_cold_2();
    goto LABEL_39;
  }

  CFStringAppendFormat(v9, 0, @";control_port=%d", Int64);
  v19 = sdpsession_sendMessageCreatingReply(v6, 1936942192, v9, &theBuffer);
  if (v19)
  {
    sdpsession_sendSetup_cold_3();
    goto LABEL_39;
  }

  totalLengthOut = 0;
  v27 = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    v13 = DataPointer;
    sdpsession_sendSetup_cold_4();
    goto LABEL_15;
  }

  if (totalLengthOut != lengthAtOffsetOut)
  {
    sdpsession_sendSetup_cold_5();
    goto LABEL_47;
  }

  v12 = HTTPParseParameter();
  if (v12)
  {
    v13 = v12;
    sdpsession_sendSetup_cold_6();
    goto LABEL_15;
  }

  if (strnicmpx())
  {
    v13 = -71826;
    if (gLogCategory_APSenderSessionSDP <= 90 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_sendSetup_cold_7();
    }

    goto LABEL_15;
  }

  if (HTTPParseParameter())
  {
LABEL_46:
    sdpsession_sendSetup_cold_14();
LABEL_47:
    v13 = -71821;
LABEL_15:
    v19 = v13;
    APSLogErrorAt();
    goto LABEL_39;
  }

  do
  {
    if (!strnicmpx())
    {
      if (SNScanF() == 1)
      {
        if (SHIDWORD(v27) > 0)
        {
          continue;
        }

        sdpsession_sendSetup_cold_15();
        goto LABEL_53;
      }

      sdpsession_sendSetup_cold_11();
LABEL_51:
      v13 = -71827;
      goto LABEL_15;
    }

    if (!strnicmpx())
    {
      if (SNScanF() == 1)
      {
        if (v27 > 0)
        {
          continue;
        }

        sdpsession_sendSetup_cold_10();
LABEL_53:
        v13 = -71828;
        goto LABEL_15;
      }

      sdpsession_sendSetup_cold_9();
      goto LABEL_51;
    }

    if (strnicmpx() && strnicmpx() && strnicmpx() && strnicmpx() && strnicmpx() && strnicmpx() && gLogCategory_APSenderSessionSDP <= 40 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_sendSetup_cold_8();
    }
  }

  while (!HTTPParseParameter());
  if (SHIDWORD(v27) <= 0)
  {
    goto LABEL_46;
  }

  if (v27 <= 0)
  {
    sdpsession_sendSetup_cold_13();
    goto LABEL_47;
  }

  v19 = 0;
  v14 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v14)
  {
    v15 = v14;
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    *a3 = v15;
  }

  else
  {
    sdpsession_sendSetup_cold_12();
  }

LABEL_39:
  CFRelease(v9);
LABEL_40:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v19;
}

uint64_t sdpsession_ensureInitialVolumeFetched(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v6 = 0;
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_ensureInitialVolumeFetched_cold_1();
  }

  if (*(DerivedStorage + 48))
  {
    return 0;
  }

  if (!APSGetFBOPropertyInt64())
  {
    if (gLogCategory_APSenderSessionSDP <= 50 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_ensureInitialVolumeFetched_cold_5();
    }

    *(DerivedStorage + 48) = 1;
    FigSimpleMutexLock();
    *(DerivedStorage + 124) = -998653952;
    FigSimpleMutexUnlock();
    return 0;
  }

  sdpsession_copyTransportControlStream(a1, &v6);
  v4 = v6;
  if (v6)
  {
    InitialVolume = APSenderSessionUtilityFetchInitialVolume(v6, &v7);
    if (InitialVolume)
    {
      sdpsession_ensureInitialVolumeFetched_cold_2();
    }

    else
    {
      if (gLogCategory_APSenderSessionSDP <= 50 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
      {
        sdpsession_ensureInitialVolumeFetched_cold_3();
      }

      FigSimpleMutexLock();
      *(DerivedStorage + 124) = v7;
      FigSimpleMutexUnlock();
      *(DerivedStorage + 48) = 1;
    }

    CFRelease(v4);
  }

  else
  {
    sdpsession_ensureInitialVolumeFetched_cold_4();
    return 4294895475;
  }

  return InitialVolume;
}

uint64_t sdpsession_startSession(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_startSession_cold_1();
  }

  sdpsession_copyTransportControlStream(a1, &v7);
  v3 = v7;
  if (!v7)
  {
    sdpsession_startSession_cold_2();
    return 4294895475;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    v5 = 4294954514;
    goto LABEL_9;
  }

  v5 = v4(v3, 1919119972, 0, 0);
  if (v5)
  {
LABEL_9:
    APSLogErrorAt();
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 133) = 1;
  FigSimpleMutexUnlock();
LABEL_10:
  CFRelease(v3);
  return v5;
}

uint64_t sdpsession_sendPendingSetVolumeCommand(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  cf = 0;
  sdpsession_copyTransportControlStream(a1, &v10);
  v3 = v10;
  if (v10)
  {
    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 128);
    *(DerivedStorage + 128) = -998653952;
    FigSimpleMutexUnlock();
    if (APSVolumeDBValuesAreNoticeablyDifferent())
    {
      if (gLogCategory_APSenderSessionSDP <= 50)
      {
        sdpsession_sendPendingSetVolumeCommand_cold_4(gLogCategory_APSenderSessionSDP);
      }

      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      if (Mutable)
      {
        v6 = Mutable;
        CFStringAppendFormat(Mutable, 0, @"volume: %f\r\n", v4);
        BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
        if (BlockBufferWithCFString)
        {
          v8 = BlockBufferWithCFString;
          sdpsession_sendPendingSetVolumeCommand_cold_1();
        }

        else
        {
          sdpsession_sendPendingSetVolumeCommand_cold_3(&cf, v3, &v12);
          v8 = v12;
        }

        CFRelease(v6);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        sdpsession_sendPendingSetVolumeCommand_cold_2();
        v8 = 4294895476;
      }
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v8 = 4294895475;
    sdpsession_sendPendingSetVolumeCommand_cold_5();
  }

  return v8;
}

uint64_t sdpsession_copyCryptor(uint64_t a1, void *a2)
{
  v9 = 0;
  cf = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 56);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    v7 = 4294954514;
LABEL_10:
    APSLogErrorAt();
    goto LABEL_11;
  }

  v5 = v4(v3, &cf, &v9);
  if (v5)
  {
    v7 = v5;
    goto LABEL_10;
  }

  v6 = APSCryptorCBCCreate();
  if (v6)
  {
    v7 = v6;
    sdpsession_copyCryptor_cold_1();
  }

  else
  {
    if (gLogCategory_APSenderSessionSDP <= 40 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_copyCryptor_cold_2();
    }

    v7 = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v7;
}

uint64_t sdpsession_ensureKeepAliveResumed()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = APSSetFBOPropertyInt64();
  if (v1)
  {
    v4 = v1;
    sdpsession_ensureKeepAliveResumed_cold_1();
    return v4;
  }

  v2 = *(DerivedStorage + 16);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v3)
  {
    v4 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    return v4;
  }

  v4 = v3(v2);
  if (v4)
  {
    goto LABEL_6;
  }

  return v4;
}

uint64_t APSKeyHolderGetAuthenticationType(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t sdpsession_makeBase64EncodedKeyAndIV(uint64_t a1, void *a2, void *a3)
{
  v13 = 0;
  theData = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    v11 = 4294954514;
LABEL_8:
    APSLogErrorAt();
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = v6(a1, &theData, &v13);
  if (v7)
  {
    v11 = v7;
    goto LABEL_8;
  }

  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  v8 = Base64EncodeCopyEx();
  if (v8)
  {
    v11 = v8;
    sdpsession_makeBase64EncodedKeyAndIV_cold_1();
    goto LABEL_9;
  }

  Length = CFDataGetLength(v13);
  v10 = malloc_type_malloc((4 * ((Length + 2) / 3)) | 1, 0x100004077774924uLL);
  if (v10)
  {
    CFDataGetBytePtr(v13);
    CFDataGetLength(v13);
    CFDataGetLength(v13);
    v11 = Base64EncodeEx();
    if (!v11)
    {
      *v10 = 0;
      *a2 = 0;
      *a3 = v10;
      goto LABEL_12;
    }

    sdpsession_makeBase64EncodedKeyAndIV_cold_2();
  }

  else
  {
    sdpsession_makeBase64EncodedKeyAndIV_cold_3();
    v11 = 4294895476;
  }

LABEL_10:
  if (v10)
  {
    free(v10);
  }

LABEL_12:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v11;
}

uint64_t sdpsession_sendMessageCreatingReply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
    if (BlockBufferWithCFString)
    {
      v9 = BlockBufferWithCFString;
      sdpsession_sendMessageCreatingReply_cold_1();
      return v9;
    }
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8)
  {
    v9 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    return v9;
  }

  v9 = v8(a1, a2, 0, a4);
  if (v9)
  {
    goto LABEL_7;
  }

  return v9;
}

uint64_t sdpsession_teardownStreamInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_teardownStreamInternal_cold_1();
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 88);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 133);
  v6 = *(DerivedStorage + 80);
  FigSimpleMutexUnlock();
  if (*(a1 + 8) != 96)
  {
    sdpsession_teardownStreamInternal_cold_2();
    v10 = 4294895471;
    if (!v4)
    {
      return v10;
    }

    goto LABEL_17;
  }

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7 && v4 != 0)
  {
    sdpsession_teardownStreamInternal_cold_3(v4, a1);
    v10 = 0;
LABEL_17:
    CFRelease(v4);
    return v10;
  }

  v10 = 0;
  if (v4)
  {
    goto LABEL_17;
  }

  return v10;
}

uint64_t APAuthenticationClientTokenCreate(uint64_t a1, const void *a2, void *a3)
{
  if (a2)
  {
    APAuthenticationClientGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v6 = v5;
      APSLogErrorAt();
    }

    else
    {
      *CMBaseObjectGetDerivedStorage() = a2;
      CFRetain(a2);
      if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
      {
        APAuthenticationClientTokenCreate_cold_1();
      }

      v6 = 0;
      *a3 = 0;
    }
  }

  else
  {
    APAuthenticationClientTokenCreate_cold_2();
    return 4294895495;
  }

  return v6;
}

void tokenAuthentication_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
  {
    tokenAuthentication_Finalize_cold_1();
  }
}

__CFString *tokenAuthentication_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAuthenticationClientToken %p>", a1);
  return Mutable;
}

uint64_t tokenAuthentication_AuthenticateEndpoint()
{
  result = tokenAuthentication_authenticateEndpointInternal();
  if (result == 409)
  {
    if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
    {
      tokenAuthentication_AuthenticateEndpoint_cold_1();
    }

    return tokenAuthentication_authenticateEndpointInternal();
  }

  return result;
}

uint64_t tokenAuthentication_authenticateEndpointInternal()
{
  v47 = *MEMORY[0x277D85DE8];
  v32 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
  {
    tokenAuthentication_authenticateEndpointInternal_cold_1();
  }

  v1 = *DerivedStorage;
  *values = xmmword_27849C7F0;
  v42 = @"uuid";
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 3, MEMORY[0x277CBF128]);
  if (!v3)
  {
    APSLogErrorAt();
    v13 = 0;
    v12 = 0;
    v14 = 4294895496;
    goto LABEL_65;
  }

  cf = 0;
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    LODWORD(v33) = -71800;
LABEL_68:
    APSLogErrorAt();
LABEL_72:
    v12 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  FigCFDictionarySetInt();
  CFDictionarySetValue(Mutable, @"tkrd", v3);
  v5 = tokenAuthentication_sendAuthSetupRequestCreatingReply(v1, Mutable);
  if (v5)
  {
    tokenAuthentication_authenticateEndpointInternal_cold_2();
    v6 = 0;
  }

  else
  {
    v6 = cf;
    cf = 0;
  }

  CFRelease(Mutable);
  LODWORD(v33) = v5;
  if (v5)
  {
    goto LABEL_68;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  CFDataGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  Value = CFDictionaryGetValue(v6, @"pair");
  v10 = Value;
  if (Value)
  {
    v11 = CFGetTypeID(Value);
    if (v11 != CFDataGetTypeID())
    {
      tokenAuthentication_authenticateEndpointInternal_cold_5(&v33);
      goto LABEL_72;
    }
  }

  v12 = CFRetain(TypedValue);
  v13 = CFRetain(v8);
  v32 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

LABEL_14:
  CFRelease(v3);
  v14 = v33;
  if (v33)
  {
LABEL_65:
    APSLogErrorAt();
    v20 = 0;
    goto LABEL_66;
  }

  v15 = v32;
  cf = 0;
  p_cf = &cf;
  v39 = 0x2020000000;
  LOBYTE(v40) = 0;
  if (v32)
  {
    v16 = dispatch_semaphore_create(0);
    if (v16)
    {
      v17 = v16;
      v18 = [MEMORY[0x277D24E28] sharedManager];
      values[0] = MEMORY[0x277D85DD0];
      values[1] = 3221225472;
      v42 = __tokenAuthentication_verifyPairing_block_invoke;
      v43 = &unk_27849C810;
      v44 = v17;
      v45 = &cf;
      [v18 verifyPairingWithToken:v32 completionHandler:values];
      tokenAuthentication_authenticateEndpointInternal_cold_6(v17);
    }

    else
    {
      APSLogErrorAt();
      *(p_cf + 24) = 0;
    }
  }

  if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v19 = *(p_cf + 24);
  _Block_object_dispose(&cf, 8);
  if (!v19)
  {
    if (!v13 || ([MEMORY[0x277D24E30] isTokenValidForFeatures:2 token:v13] & 1) == 0)
    {
      tokenAuthentication_authenticateEndpointInternal_cold_18();
      v20 = 0;
      v21 = 0;
      v14 = 4294895494;
      goto LABEL_53;
    }

    cf = 0;
    p_cf = &cf;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v22 = dispatch_semaphore_create(0);
    if (v22)
    {
      v23 = v22;
      v24 = [MEMORY[0x277D24E30] sharedManager];
      values[0] = MEMORY[0x277D85DD0];
      values[1] = 3221225472;
      v42 = __tokenAuthentication_rollAuthToken_block_invoke;
      v43 = &unk_27849C838;
      v45 = &v33;
      v46 = &cf;
      v44 = v23;
      [v24 requestActivationForAuthToken:v13 withUUID:v12 completionHandler:values];
      dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
      v20 = p_cf[3];
      dispatch_release(v23);
      v14 = *(v34 + 6);
    }

    else
    {
      APSLogErrorAt();
      v20 = 0;
      v14 = 4294895496;
      *(v34 + 6) = -71800;
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&cf, 8);
    if (v14)
    {
      tokenAuthentication_authenticateEndpointInternal_cold_7();
    }

    else
    {
      if (!v20)
      {
        tokenAuthentication_authenticateEndpointInternal_cold_17();
        v20 = 0;
        goto LABEL_87;
      }

      if (v15)
      {
        v25 = 0;
        goto LABEL_35;
      }

      v14 = tokenAuthentication_generatePairingToken(&v32);
      if (!v14)
      {
        v25 = v32;
        if (v32)
        {
LABEL_35:
          v26 = *DerivedStorage;
          values[0] = 0;
          v27 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v28 = v27;
          if (!v27)
          {
            APSLogErrorAt();
            v21 = 0;
            v14 = 4294895496;
            goto LABEL_77;
          }

          CFDictionarySetValue(v27, @"auth", v20);
          if (v25)
          {
            CFDictionarySetValue(v28, @"pair", v25);
          }

          v29 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v29)
          {
            tokenAuthentication_authenticateEndpointInternal_cold_12(&cf);
            v21 = 0;
LABEL_44:
            CFRelease(v28);
LABEL_45:
            v14 = cf;
            if (!cf)
            {
              v14 = tokenAuthentication_confirmAuthTokenActivation(v21, v12);
              if (v14)
              {
                tokenAuthentication_authenticateEndpointInternal_cold_13();
                goto LABEL_53;
              }

              v14 = tokenAuthentication_savePairingToken(v32);
              if (v14)
              {
                tokenAuthentication_authenticateEndpointInternal_cold_14();
                goto LABEL_53;
              }

              goto LABEL_48;
            }

LABEL_77:
            APSLogErrorAt();
            goto LABEL_53;
          }

          FigCFDictionarySetInt();
          CFDictionarySetValue(v29, @"tkwr", v28);
          LODWORD(cf) = tokenAuthentication_sendAuthSetupRequestCreatingReply(v26, v29);
          if (cf)
          {
            tokenAuthentication_authenticateEndpointInternal_cold_9();
          }

          else if (values[0])
          {
            CFDataGetTypeID();
            v30 = CFDictionaryGetTypedValue();
            if (!cf)
            {
              v21 = CFRetain(v30);
              goto LABEL_43;
            }

            tokenAuthentication_authenticateEndpointInternal_cold_10();
          }

          else
          {
            tokenAuthentication_authenticateEndpointInternal_cold_11(&cf);
          }

          v21 = 0;
LABEL_43:
          CFRelease(v28);
          CFRelease(v29);
          v28 = values[0];
          if (!values[0])
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        tokenAuthentication_authenticateEndpointInternal_cold_16();
LABEL_87:
        v21 = 0;
        v14 = 4294895493;
        goto LABEL_53;
      }

      tokenAuthentication_authenticateEndpointInternal_cold_8();
    }

LABEL_66:
    v21 = 0;
    goto LABEL_53;
  }

  v20 = 0;
  v21 = 0;
LABEL_48:
  if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
  {
    tokenAuthentication_authenticateEndpointInternal_cold_15();
  }

  v14 = 0;
LABEL_53:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v14;
}

void sub_2220E7960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t tokenAuthentication_generatePairingToken(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = dispatch_semaphore_create(0);
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277D24E28] sharedManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __tokenAuthentication_generatePairingToken_block_invoke;
    v7[3] = &unk_27849C838;
    v7[5] = &v8;
    v7[6] = &v12;
    v7[4] = v3;
    [v4 generatePairingTokenWithCompletionHandler:v7];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    *a1 = v13[3];
    dispatch_release(v3);
    v5 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294895496;
    *(v9 + 6) = -71800;
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void sub_2220E7AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t tokenAuthentication_confirmAuthTokenActivation(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = dispatch_semaphore_create(0);
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277D24E30] sharedManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __tokenAuthentication_confirmAuthTokenActivation_block_invoke;
    v9[3] = &unk_27849C860;
    v9[4] = v5;
    v9[5] = &v10;
    [v6 confirmActivationForAuthToken:a1 withUUID:a2 completionHandler:v9];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
    v7 = *(v11 + 6);
  }

  else
  {
    APSLogErrorAt();
    v7 = 4294895496;
    *(v11 + 6) = -71800;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_2220E7C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t tokenAuthentication_savePairingToken(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = dispatch_semaphore_create(0);
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277D24E28] sharedManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __tokenAuthentication_savePairingToken_block_invoke;
    v7[3] = &unk_27849C860;
    v7[4] = v3;
    v7[5] = &v8;
    [v4 addPairingWithToken:a1 completionHandler:v7];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
    v5 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294895496;
    *(v9 + 6) = -71800;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_2220E7D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t tokenAuthentication_sendAuthSetupRequestCreatingReply(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    Data = CFPropertyListCreateData(v3, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v7 = Data;
      CFDataGetBytePtr(Data);
      CFDataGetLength(v7);
      CFDictionarySetData();
      snprintf(__str, 0x20uLL, "%d", 16);
      CFDictionarySetCString();
      v8 = APTransportStreamSendPlistMessageCreatingPlistReply();
      if (v8)
      {
        tokenAuthentication_sendAuthSetupRequestCreatingReply_cold_1();
      }

      CFRelease(v7);
    }

    else
    {
      v8 = 4294895496;
      tokenAuthentication_sendAuthSetupRequestCreatingReply_cold_2();
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 4294895496;
    tokenAuthentication_sendAuthSetupRequestCreatingReply_cold_3();
  }

  return v8;
}

intptr_t __tokenAuthentication_verifyPairing_block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 && gLogCategory_APAuthenticationClientToken <= 90 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

intptr_t __tokenAuthentication_rollAuthToken_block_invoke(void *a1, void *a2, void *a3)
{
  if (a3)
  {
    if (gLogCategory_APAuthenticationClientToken <= 90 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
    {
      __tokenAuthentication_rollAuthToken_block_invoke_cold_1();
    }

    *(*(a1[5] + 8) + 24) = [a3 code];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
  }

  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t __tokenAuthentication_generatePairingToken_block_invoke(void *a1, void *a2, void *a3)
{
  if (a3)
  {
    if (gLogCategory_APAuthenticationClientToken <= 90 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
    {
      __tokenAuthentication_generatePairingToken_block_invoke_cold_1();
    }

    *(*(a1[5] + 8) + 24) = [a3 code];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
  }

  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t __tokenAuthentication_confirmAuthTokenActivation_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (gLogCategory_APAuthenticationClientToken <= 90 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
    {
      __tokenAuthentication_confirmAuthTokenActivation_block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

intptr_t __tokenAuthentication_savePairingToken_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (gLogCategory_APAuthenticationClientToken <= 90 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
    {
      __tokenAuthentication_savePairingToken_block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

uint64_t APAudioEngineCarPlayCreate(uint64_t a1, uint64_t a2, void *a3)
{
  APAudioEngineGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    v8 = v4;
    APAudioEngineCarPlayCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 16) = v6;
    if (v6)
    {
      v7 = FigDispatchQueueCreateWithPriority();
      *(DerivedStorage + 128) = v7;
      if (v7)
      {
        *DerivedStorage = CFDictionaryGetInt64Ranged();
        *(DerivedStorage + 8) = 0;
        if (gLogCategory_APAudioEngineCarPlay <= 50 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
        {
          APAudioEngineCarPlayCreate_cold_2();
        }

        *a3 = 0;
        return 0;
      }

      else
      {
        v8 = 4294895226;
        APAudioEngineCarPlayCreate_cold_3();
      }
    }

    else
    {
      v8 = 4294895226;
      APAudioEngineCarPlayCreate_cold_4();
    }
  }

  return v8;
}

void audioEngineCarPlay_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[9];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[9] = 0;
  }

  v2 = DerivedStorage[10];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[10] = 0;
  }

  v3 = DerivedStorage[11];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[11] = 0;
  }

  v4 = DerivedStorage[12];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[12] = 0;
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[2] = 0;
  }

  v6 = DerivedStorage[23];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[23] = 0;
  }

  v7 = DerivedStorage[24];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[24] = 0;
  }

  v8 = DerivedStorage[25];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[25] = 0;
  }

  v9 = DerivedStorage[26];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[26] = 0;
  }

  v10 = DerivedStorage[16];
  if (v10)
  {
    dispatch_release(v10);
    DerivedStorage[16] = 0;
  }

  if (gLogCategory_APAudioEngineCarPlay <= 50 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
  {
    audioEngineCarPlay_Finalize_cold_1();
  }
}

uint64_t audioEngineCarPlay_CopyProperty(int a1, CFTypeRef cf1, uint64_t a3, uint64_t a4)
{
  if (cf1)
  {
    if (a4)
    {
      if (CFEqual(cf1, @"audioSource"))
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v6 = *(DerivedStorage + 16);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 0x40000000;
        v9[2] = __audioEngineCarPlay_copyAudioSource_block_invoke;
        v9[3] = &__block_descriptor_tmp_16;
        v9[4] = a4;
        v9[5] = DerivedStorage;
        dispatch_sync(v6, v9);
        return 0;
      }

      else
      {
        return 4294954509;
      }
    }

    else
    {
      v7 = 4294895225;
      audioEngineCarPlay_CopyProperty_cold_1();
    }
  }

  else
  {
    v7 = 4294895225;
    audioEngineCarPlay_CopyProperty_cold_2();
  }

  return v7;
}

CFTypeRef __audioEngineCarPlay_copyAudioSource_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 72);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

void __audioEngineCarPlay_setCryptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 120))
  {
    __audioEngineCarPlay_setCryptor_block_invoke_cold_1();
  }

  else
  {
    v2 = *(v1 + 80);
    v3 = *(a1 + 48);
    *(v1 + 80) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void __audioEngineCarPlay_setAudioSource_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 120))
  {
    __audioEngineCarPlay_setAudioSource_block_invoke_cold_1();
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(a1 + 48);
    *(v2 + 72) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  CFRelease(*(a1 + 56));
  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __audioEngineCarPlay_setMessageRingCapacity_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 120))
  {
    __audioEngineCarPlay_setMessageRingCapacity_block_invoke_cold_1();
  }

  else
  {
    v3 = *(a1 + 48);

    CFNumberGetValue(v3, kCFNumberSInt64Type, (v2 + 64));
  }
}

uint64_t audioEngineCarPlay_RegisterStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x2000000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (*(a6 + 16))
    {
      v11 = 4294895225;
      audioEngineCarPlay_RegisterStream_cold_1(v15);
    }

    else
    {
      v10 = *(DerivedStorage + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __audioEngineCarPlay_RegisterStream_block_invoke;
      block[3] = &unk_27849C930;
      block[4] = &v14;
      block[5] = DerivedStorage;
      block[6] = a3;
      block[7] = a2;
      block[8] = a6;
      dispatch_sync(v10, block);
      if (*(v15[0] + 24))
      {
        APSLogErrorAt();
        v11 = *(v15[0] + 24);
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 4294895225;
    audioEngineCarPlay_RegisterStream_cold_2(v15);
  }

  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t audioEngineCarPlay_DeregisterStream(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioEngineCarPlay_DeregisterStream_block_invoke;
  block[3] = &unk_27849C958;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t audioEngineCarPlay_Resume(const void *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v3 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioEngineCarPlay_Resume_block_invoke;
  block[3] = &unk_27849C9A0;
  block[4] = &v7;
  block[5] = DerivedStorage;
  block[6] = a1;
  dispatch_async(v3, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t audioEngineCarPlay_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __audioEngineCarPlay_Suspend_block_invoke;
  v5[3] = &__block_descriptor_tmp_28_1;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

uint64_t audioEngineCarPlay_Flush(const void *a1, int a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    audioEngineCarPlay_Flush_cold_1();
    return 4294895225;
  }

  else
  {
    v7 = DerivedStorage;
    CFRetain(a1);
    v8 = *(v7 + 128);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __audioEngineCarPlay_Flush_block_invoke;
    block[3] = &__block_descriptor_tmp_30_0;
    v11 = *a3;
    v12 = *(a3 + 2);
    block[4] = v7;
    block[5] = a1;
    dispatch_async(v8, block);
    return 0;
  }
}

uint64_t audioEngineCarPlay_CopyMessageAtSequenceNumber(uint64_t a1, __int16 a2, uint64_t a3)
{
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = *(DerivedStorage + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __audioEngineCarPlay_CopyMessageAtSequenceNumber_block_invoke;
    v9[3] = &unk_27849CA28;
    v9[4] = &v11;
    v9[5] = DerivedStorage;
    v10 = a2;
    v9[6] = a3;
    dispatch_sync(v6, v9);
    v7 = *(v12[0] + 24);
  }

  else
  {
    audioEngineCarPlay_CopyMessageAtSequenceNumber_cold_1(v12);
    v7 = 4294895225;
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t APAudioSourceConduitCreate(uint64_t a1, __int128 *a2, void *a3)
{
  if (!a3)
  {
    APAudioSourceConduitCreate_cold_7();
    return 4294950525;
  }

  FigEndpointAudioSourceGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v13 = v5;
    APAudioSourceConduitCreate_cold_1();
    return v13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1) = 1;
  v7 = *(a2 + 4);
  v8 = *a2;
  *(DerivedStorage + 24) = a2[1];
  *(DerivedStorage + 40) = v7;
  *(DerivedStorage + 8) = v8;
  v9 = MirroredRingBufferInit();
  if (v9)
  {
    v13 = v9;
    APAudioSourceConduitCreate_cold_2();
    return v13;
  }

  v10 = APSRingBufferFlushControllerInit();
  if (v10)
  {
    v13 = v10;
    APAudioSourceConduitCreate_cold_3();
    return v13;
  }

  v11 = dispatch_semaphore_create(1);
  *(DerivedStorage + 120) = v11;
  if (!v11)
  {
    APAudioSourceConduitCreate_cold_6();
    return 4294950526;
  }

  *(DerivedStorage + 192) = 0;
  *(DerivedStorage + 200) = 0;
  v12 = FigSimpleMutexCreate();
  *(DerivedStorage + 208) = v12;
  if (!v12)
  {
    APAudioSourceConduitCreate_cold_5();
    return 4294950526;
  }

  if (gLogCategory_APAudioSourceConduit <= 30 && (gLogCategory_APAudioSourceConduit != -1 || _LogCategory_Initialize()))
  {
    APAudioSourceConduitCreate_cold_4();
  }

  v13 = 0;
  *a3 = 0;
  return v13;
}

__CFString *conduitsource_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioSourceConduit>");
  return Mutable;
}

uint64_t conduitsource_Resume()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceConduit <= 30 && (gLogCategory_APAudioSourceConduit != -1 || _LogCategory_Initialize()))
  {
    conduitsource_Resume_cold_1();
  }

  *(DerivedStorage + 1) = 0;
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 96) = 0;
  *(DerivedStorage + 192) = 0;
  *(DerivedStorage + 200) = 0;
  return 0;
}

uint64_t conduitsource_Suspend()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceConduit <= 30 && (gLogCategory_APAudioSourceConduit != -1 || _LogCategory_Initialize()))
  {
    conduitsource_Suspend_cold_1();
  }

  *(DerivedStorage + 1) = 1;
  return 0;
}

uint64_t conduitsource_Flush()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceConduit <= 30 && (gLogCategory_APAudioSourceConduit != -1 || _LogCategory_Initialize()))
  {
    conduitsource_Flush_cold_1();
  }

  v0 = APSRingBufferFlushControllerFlush();
  if (v0)
  {
    conduitsource_Flush_cold_2();
  }

  return v0;
}

BOOL conduitsource_CanProduceBytes(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  __dmb(0xBu);
  return v4 <= (*(DerivedStorage + 76) - *(DerivedStorage + 72));
}

uint64_t conduitsource_GetRingBuffer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 88) + (*(DerivedStorage + 72) / *(DerivedStorage + 32));
  }

  return DerivedStorage + 48;
}

uint64_t conduitsource_FillBuffer(uint64_t a1, void *a2, size_t a3, size_t *a4, void *a5, void *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a7)
  {
    v14 = DerivedStorage;
    v15 = *(DerivedStorage + 72);
    v16 = *(DerivedStorage + 76) - v15;
    if (v16)
    {
      if (v16 < a3)
      {
        a3 = *(DerivedStorage + 76) - v15;
      }

      memcpy(a2, (*(DerivedStorage + 48) + (*(DerivedStorage + 68) & v15)), a3);
      *a4 = a3;
      v17 = *(v14 + 32);
      v18 = a3 / v17;
      *a5 = v18;
      v19 = *(v14 + 72);
      if (a6)
      {
        *a6 = *(v14 + 88) + v19 / v17;
      }

      result = 0;
      *(v14 + 72) = v19 + a3;
      *(v14 + 192) += v18;
    }

    else
    {
      conduitsource_FillBuffer_cold_1();
      return 4294950522;
    }
  }

  else
  {
    conduitsource_FillBuffer_cold_2();
    return 4294950525;
  }

  return result;
}

BOOL conduitsource_CanAcceptBytes()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  __dmb(0xBu);
  return DerivedStorage[18] - DerivedStorage[19] + DerivedStorage[16] != 0;
}

uint64_t conduitsource_WriteBytes(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = conduitsource_WriteDataInternal(a1, a2, a3, a4);
    if (v4)
    {
      conduitsource_WriteBytes_cold_1();
    }
  }

  else
  {
    conduitsource_WriteBytes_cold_2();
    return 4294950525;
  }

  return v4;
}

BOOL conduitsource_IsAcquiredBuffer(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    conduitsource_IsAcquiredBuffer_cold_1();
    return 0;
  }

  if (*(DerivedStorage + 48) > a2)
  {
    return 0;
  }

  return *(DerivedStorage + 56) > a2;
}

uint64_t conduitsource_GetAudioFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceConduit <= 30 && (gLogCategory_APAudioSourceConduit != -1 || _LogCategory_Initialize()))
  {
    conduitsource_GetAudioFormat_cold_1();
  }

  v4 = *(DerivedStorage + 8);
  v5 = *(DerivedStorage + 24);
  *(a2 + 32) = *(DerivedStorage + 40);
  *a2 = v4;
  *(a2 + 16) = v5;
  return 0;
}

BOOL conduitsource_CanProducePackets(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 * *(DerivedStorage + 28) * *(DerivedStorage + 32);
  v6 = CMBaseObjectGetDerivedStorage();
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  __dmb(0xBu);
  return v7 <= (*(v6 + 76) - *(v6 + 72));
}

uint64_t conduitsource_FillComplexBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(CMBaseObjectGetDerivedStorage() + 16) == 1819304813)
  {
    if (a9)
    {
      CMBaseObjectGetDerivedStorage();
      APSLogErrorAt();
      v9 = 4294950525;
      APSLogErrorAt();
    }

    else
    {
      conduitsource_FillComplexBuffer_cold_2();
      return 4294950525;
    }
  }

  else
  {
    conduitsource_FillComplexBuffer_cold_1();
    return 4294950524;
  }

  return v9;
}

uint64_t conduitsource_SetWriteHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1))
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    *(v6 + 104) = a2;
    *(v6 + 112) = a3;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    conduitsource_SetWriteHandler_cold_1();
    return 4294950524;
  }
}

uint64_t conduitsource_PrepareForFlush()
{
  CMBaseObjectGetDerivedStorage();
  v0 = APSRingBufferFlushControllerPrepareForFlush();
  if (v0)
  {
    conduitsource_PrepareForFlush_cold_1();
  }

  return v0;
}

uint64_t conduitsource_WriteDataInternal(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1))
  {
    conduitsource_WriteDataInternal_cold_1();
    return 4294950524;
  }

  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 200);
  *(DerivedStorage + 88) = a4 - v9;
  if (a2)
  {
    v11 = *(DerivedStorage + 72);
    v10 = *(DerivedStorage + 76);
    if (*(DerivedStorage + 64) - v10 + v11 < a3)
    {
      a3 = *(DerivedStorage + 64) - v10 + v11;
    }

    if (a3 >= 0xF4240)
    {
      conduitsource_WriteDataInternal_cold_2();
      return 4294960586;
    }

    memcpy((*(DerivedStorage + 48) + (*(DerivedStorage + 68) & v10)), a2, a3);
    __dmb(0xBu);
    v9 = *(v8 + 200);
  }

  *(v8 + 76) += a3;
  *(v8 + 200) = v9 + a3 / *(v8 + 32);
  if (*(v8 + 104))
  {
    result = FigSimpleMutexTryLock();
    if (!result)
    {
      return result;
    }

    (*(v8 + 104))(a3 / *(v8 + 32), a4, *(v8 + 112));
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t APAudioEngineRealTimeCreate(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  LatencyTier = 0;
  cf = 0;
  v35 = 0;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  value = 0;
  if (!a4)
  {
    APAudioEngineRealTimeCreate_cold_39();
    goto LABEL_133;
  }

  if (!a2)
  {
    APAudioEngineRealTimeCreate_cold_38();
    goto LABEL_133;
  }

  v5 = a3;
  if (!a3)
  {
    APAudioEngineRealTimeCreate_cold_37();
    goto LABEL_91;
  }

  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineRealTimeCreate_cold_1();
  }

  FigEndpointStreamAudioEngineGetClassID();
  LatencyTier = CMDerivedObjectCreate();
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_2();
    goto LABEL_133;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 64) = -1;
  LatencyTier = APSDispatchSectionCreate();
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_3();
    goto LABEL_133;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  *DerivedStorage = MutableCopy;
  if (!MutableCopy)
  {
    APAudioEngineRealTimeCreate_cold_36();
    goto LABEL_133;
  }

  CFDictionaryAddValue(MutableCopy, @"senderNetworkClock", a2);
  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 536) = v10;
  if (!v10)
  {
    APAudioEngineRealTimeCreate_cold_35();
    goto LABEL_133;
  }

  CFDictionaryGetValueIfPresent(v5, @"streamType", &value);
  Int64 = CFDictionaryGetInt64();
  *(DerivedStorage + 24) = Int64 != 0;
  if (Int64)
  {
    *(DerivedStorage + 416) = @"SCR";
    *(DerivedStorage + 32) = CFStringCreateF();
    if (LatencyTier)
    {
      APAudioEngineRealTimeCreate_cold_6();
      goto LABEL_133;
    }

    v12 = "com.apple.airplay.rtae.scr.latencyms";
  }

  else if (FigCFEqual())
  {
    *(DerivedStorage + 416) = @"LLA";
    *(DerivedStorage + 32) = CFStringCreateF();
    if (LatencyTier)
    {
      APAudioEngineRealTimeCreate_cold_4();
      goto LABEL_133;
    }

    v12 = "com.apple.airplay.rtae.lla.latencyms";
  }

  else
  {
    *(DerivedStorage + 416) = @"HLA";
    *(DerivedStorage + 32) = CFStringCreateF();
    if (LatencyTier)
    {
      APAudioEngineRealTimeCreate_cold_5();
      goto LABEL_133;
    }

    v12 = "com.apple.airplay.rtae.hla.latencyms";
  }

  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  SNPrintF();
  v13 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 128) = v13;
  if (!v13)
  {
    APAudioEngineRealTimeCreate_cold_34(&LatencyTier);
    goto LABEL_133;
  }

  *(DerivedStorage + 8) = 0;
  SNPrintF();
  v14 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 80) = v14;
  if (!v14)
  {
    APAudioEngineRealTimeCreate_cold_33(&LatencyTier);
    goto LABEL_133;
  }

  v15 = value;
  if (value)
  {
    v15 = CFRetain(value);
  }

  *(DerivedStorage + 16) = v15;
  CFDictionaryGetInt64();
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_7();
    goto LABEL_133;
  }

  LatencyTier = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_8();
    goto LABEL_133;
  }

  LatencyTier = APAudioFormatToASBD();
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_9();
    goto LABEL_133;
  }

  LatencyTier = realTimeAudioEngine_setTransportAudioFormatInternal(v35, v32);
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_10();
    goto LABEL_133;
  }

  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineRealTimeCreate_cold_11();
  }

  *(DerivedStorage + 40) = CFDictionaryGetInt64() != 0;
  *(DerivedStorage + 56) = 512;
  IntWithDefault = APSSettingsGetIntWithDefault();
  *(DerivedStorage + 96) = IntWithDefault;
  *(DerivedStorage + 528) = 0;
  if (IntWithDefault)
  {
    SNPrintF();
    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v18 = dispatch_queue_create(label, v17);
    *(DerivedStorage + 104) = v18;
    if (!v18)
    {
      APAudioEngineRealTimeCreate_cold_13(&LatencyTier);
      goto LABEL_133;
    }

    LatencyTier = APSAudioIOAssertionTimingControllerCreate();
    if (LatencyTier)
    {
      APAudioEngineRealTimeCreate_cold_12();
      goto LABEL_133;
    }
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineRealTimeCreate_cold_32();
    goto LABEL_133;
  }

  *(DerivedStorage + 424) = 0;
  if (CFDictionaryContainsKey(v5, @"perceivedClusterType"))
  {
    *(DerivedStorage + 424) = CFDictionaryGetInt64();
    if (LatencyTier)
    {
      APAudioEngineRealTimeCreate_cold_14();
      goto LABEL_133;
    }
  }

  if (!APSSettingsGetInt64())
  {
    if (FigCFEqual())
    {
      v19 = CFDictionaryGetInt64();
      if (LatencyTier)
      {
        APAudioEngineRealTimeCreate_cold_15();
        goto LABEL_133;
      }

      Ref = APSDynamicLatencyManagerGetRef();
      if (Ref)
      {
        v21 = CFRetain(Ref);
        *(DerivedStorage + 120) = v21;
        if (v21)
        {
          if (v19 < 3)
          {
            LatencyTier = APSDynamicLatencyManagerSetVariant();
            if (LatencyTier)
            {
              APAudioEngineRealTimeCreate_cold_16();
              goto LABEL_133;
            }

            LatencyTier = APSDynamicLatencyManagerGetLatencyTier();
            if (LatencyTier)
            {
              APAudioEngineRealTimeCreate_cold_17();
LABEL_133:
              v5 = 0;
              goto LABEL_91;
            }

            goto LABEL_54;
          }

          goto LABEL_90;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (!*(DerivedStorage + 24))
      {
        goto LABEL_54;
      }

      v22 = APSDynamicLatencyManagerGetRef();
      if (v22)
      {
        v23 = CFRetain(v22);
        *(DerivedStorage + 120) = v23;
        if (v23)
        {
LABEL_90:
          APSLogErrorAt();
          v5 = 0;
          LatencyTier = -15481;
LABEL_91:
          if (v35)
          {
            CFRelease(v35);
          }

          if (v5)
          {
            CFRelease(v5);
          }

          goto LABEL_86;
        }

LABEL_54:
        if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_58;
      }
    }

    *(DerivedStorage + 120) = 0;
    goto LABEL_54;
  }

LABEL_58:
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineRealTimeCreate_cold_31();
    goto LABEL_133;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineRealTimeCreate_cold_30();
    goto LABEL_133;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineRealTimeCreate_cold_29();
    goto LABEL_133;
  }

  *(DerivedStorage + 156) = 0;
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineRealTimeCreate_cold_28();
    goto LABEL_133;
  }

  *(DerivedStorage + 48) = APSSettingsGetIntWithDefault();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(DerivedStorage + 140) = 0 / 1000.0;
  *(DerivedStorage + 144) = 0 / 1000.0;
  *(DerivedStorage + 148) = 0 / 1000.0;
  *(DerivedStorage + 152) = 0 / 1000.0;
  Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x277CBF158]);
  *(DerivedStorage + 168) = Mutable;
  if (!Mutable)
  {
    APAudioEngineRealTimeCreate_cold_27();
    goto LABEL_133;
  }

  v25 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v5 = v25;
  if (!v25)
  {
    APAudioEngineRealTimeCreate_cold_26();
    goto LABEL_91;
  }

  v26 = *(DerivedStorage + 128);
  v27 = kAPAudioEngineRealTimeDispatchSpecificKey_WeakAudioEngineHolder;
  v28 = CFRetain(v25);
  dispatch_queue_set_specific(v26, v27, v28, MEMORY[0x277CBE550]);
  LatencyTier = APSRealTimeSignalCreate();
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_20();
    goto LABEL_91;
  }

  *(DerivedStorage + 72) = CFRetain(a2);
  if (*(DerivedStorage + 24) || FigCFEqual())
  {
    v29 = 5;
  }

  else
  {
    v29 = 30;
  }

  LatencyTier = APSRealTimeReadableCreate();
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_21();
    goto LABEL_133;
  }

  LatencyTier = APSAtomicMessageQueueCreate();
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_22();
    goto LABEL_133;
  }

  LatencyTier = realTimeAudioEngine_tas_Initialize(a1, DerivedStorage + 560, v29, *(DerivedStorage + 336), *(DerivedStorage + 344), v35);
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_23();
    goto LABEL_133;
  }

  LatencyTier = realTimeAudioEngine_initializeLogging();
  if (LatencyTier)
  {
    APAudioEngineRealTimeCreate_cold_24();
    goto LABEL_133;
  }

  if (IsAppleInternalBuild())
  {
    notify_register_dispatch(v12, (DerivedStorage + 64), *(DerivedStorage + 128), &__block_literal_global_12);
  }

  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineRealTimeCreate_cold_25();
  }

  *a4 = v35;
  v35 = 0;
LABEL_86:
  if (cf)
  {
    CFRelease(cf);
  }

  return LatencyTier;
}

uint64_t realTimeAudioEngine_setTransportAudioFormatInternal(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (FigCFEqual() || a2[2] == 1633772389 && a2[7] >= 3u)
    {
      APAudioFormatGetLowLatencyAudioFramesPerPacket();
      CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      a2[5] = CFPreferenceNumberWithDefault;
    }

    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v8 = *(v4 + 176);
    v7 = (v4 + 176);
    v6 = v8;
    if (v8)
    {
      CFRelease(v6);
      *v7 = 0;
    }

    v9 = APSAudioFormatDescriptionCreateWithASBD();
    if (v9)
    {
      realTimeAudioEngine_setTransportAudioFormatInternal_cold_1();
    }
  }

  else
  {
    realTimeAudioEngine_setTransportAudioFormatInternal_cold_2();
    return 4294951815;
  }

  return v9;
}

void FigCFRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t realTimeAudioEngine_tas_Initialize(const __CFAllocator *a1, uint64_t a2, int a3, const void *a4, const void *a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    realTimeAudioEngine_tas_Initialize_cold_14();
    return 4294950525;
  }

  if (!a6)
  {
    realTimeAudioEngine_tas_Initialize_cold_13();
    return 4294950525;
  }

  v13 = DerivedStorage;
  *a2 = a6;
  v14 = *(DerivedStorage + 32);
  if (!v14)
  {
    *(a2 + 8) = 0;
    goto LABEL_26;
  }

  v15 = CFRetain(v14);
  *(a2 + 8) = v15;
  if (!v15)
  {
LABEL_26:
    realTimeAudioEngine_tas_Initialize_cold_12();
    return 4294951816;
  }

  if (FigCFEqual())
  {
    v16 = *(v13 + 24) == 0;
  }

  else
  {
    v16 = 0;
  }

  *(a2 + 16) = v16;
  v17 = FigSimpleMutexCreate();
  *(a2 + 88) = v17;
  if (!v17)
  {
    realTimeAudioEngine_tas_Initialize_cold_11();
    return 4294951816;
  }

  SNPrintF();
  v18 = FigDispatchQueueCreateWithPriority();
  *(a2 + 104) = v18;
  if (!v18)
  {
    realTimeAudioEngine_tas_Initialize_cold_10(&v29);
    return v29;
  }

  *(a2 + 232) = -1;
  *(a2 + 256) = 0;
  SNPrintF();
  v19 = FigDispatchQueueCreateWithPriority();
  *(a2 + 272) = v19;
  if (!v19)
  {
    realTimeAudioEngine_tas_Initialize_cold_9(&v29);
    return v29;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, 0);
  *(a2 + 280) = Mutable;
  if (!Mutable)
  {
    realTimeAudioEngine_tas_Initialize_cold_8();
    return 4294951816;
  }

  CFArrayAppendValue(Mutable, a2);
  v21 = APSAtomicMessageQueueCreate();
  if (v21)
  {
    v27 = v21;
    realTimeAudioEngine_tas_Initialize_cold_1();
    return v27;
  }

  CFRetain(*(a2 + 280));
  v22 = APSRealTimeSignalCreate();
  if (v22)
  {
    v27 = v22;
    realTimeAudioEngine_tas_Initialize_cold_2();
    return v27;
  }

  v23 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a2 + 304) = v23;
  if (!v23)
  {
    realTimeAudioEngine_tas_Initialize_cold_7();
    return 4294951816;
  }

  v24 = APSRealTimeWritableCreate();
  if (v24)
  {
    v27 = v24;
    realTimeAudioEngine_tas_Initialize_cold_3();
  }

  else
  {
    CFDictionaryGetEmpty();
    v25 = APSCFRealTimeReadableCreate();
    if (v25)
    {
      v27 = v25;
      realTimeAudioEngine_tas_Initialize_cold_4();
    }

    else
    {
      v26 = APSAtomicMessageQueueCreate();
      if (v26)
      {
        v27 = v26;
        realTimeAudioEngine_tas_Initialize_cold_5();
      }

      else
      {
        *(a2 + 64) = CFRetain(a4);
        *(a2 + 32) = CFRetain(a5);
        *(a2 + 40) = a3;
        *(a2 + 80) = FigCFEqual() == 0;
        if (APSSettingsGetIntWithDefault())
        {
          if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
          {
            realTimeAudioEngine_tas_Initialize_cold_6();
          }

          v27 = 0;
          *(a2 + 80) = 0;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v27;
}

uint64_t realTimeAudioEngine_initializeLogging()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA330], @"Histogram_TimeLostOnSenderToTxPacket");
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA338], @"ms");
  FigCFDictionarySetDouble();
  FigCFDictionarySetDouble();
  FigCFDictionarySetInt32();
  v2 = APSStatsHistogramCreate();
  *(DerivedStorage + 352) = v2;
  if (!v2)
  {
    realTimeAudioEngine_initializeLogging_cold_1();
    v7 = 4294951816;
    if (!Mutable)
    {
      return v7;
    }

    goto LABEL_3;
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v10, CFPreferenceNumberWithDefault, 1000);
  *(DerivedStorage + 432) = v10;
  v4 = MEMORY[0x277CC08A0];
  v9 = *MEMORY[0x277CC08A0];
  *(DerivedStorage + 456) = *MEMORY[0x277CC08A0];
  v5 = *(v4 + 16);
  *(DerivedStorage + 472) = v5;
  v6 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v10, v6, 1000);
  v7 = 0;
  *(DerivedStorage + 480) = v10;
  *(DerivedStorage + 504) = v9;
  *(DerivedStorage + 520) = v5;
  if (Mutable)
  {
LABEL_3:
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t realTimeAudioEngine_setAudioLatency(float a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_setAudioLatency_cold_1();
    }

    *(DerivedStorage + 140) = a1;
  }

  else
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_setAudioLatency_cold_2();
    }

    *(DerivedStorage + 160) = a1 - *(DerivedStorage + 140);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

void realTimeAudioEngine_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 168);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 168) = 0;
  }

  realTimeAudioEngine_removeStreamNotificationListeners(a1, *(DerivedStorage + 200));
  v6 = *(DerivedStorage + 320);
  if (v6)
  {
    dispatch_source_cancel(v6);
    if (!*(DerivedStorage + 328))
    {
      dispatch_resume(*(DerivedStorage + 320));
    }

    v7 = *(DerivedStorage + 320);
    if (v7)
    {
      dispatch_source_cancel(*(DerivedStorage + 320));
      dispatch_release(v7);
      *(DerivedStorage + 320) = 0;
    }
  }

  v8 = *(DerivedStorage + 192);
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v9(v8);
    }

    v10 = *(DerivedStorage + 192);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v11)
    {
      v11(v10, 0, 0);
    }
  }

  v12 = *(DerivedStorage + 224);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 224) = 0;
  }

  v13 = *(DerivedStorage + 200);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 200) = 0;
  }

  v14 = *(DerivedStorage + 208);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 208) = 0;
  }

  v15 = *(DerivedStorage + 264);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 264) = 0;
  }

  v16 = *(DerivedStorage + 272);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 272) = 0;
  }

  v17 = *(DerivedStorage + 192);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 192) = 0;
  }

  v18 = *(DerivedStorage + 184);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 184) = 0;
  }

  v19 = *(DerivedStorage + 216);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 216) = 0;
  }

  v20 = *(DerivedStorage + 248);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 248) = 0;
  }

  v21 = *(DerivedStorage + 256);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 256) = 0;
  }

  v22 = *(DerivedStorage + 176);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 176) = 0;
  }

  v23 = *(DerivedStorage + 16);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 16) = 0;
  }

  v24 = *(DerivedStorage + 32);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 32) = 0;
  }

  v25 = *(DerivedStorage + 72);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 72) = 0;
  }

  v26 = *(DerivedStorage + 104);
  if (v26)
  {
    dispatch_release(v26);
    *(DerivedStorage + 104) = 0;
  }

  v27 = *(DerivedStorage + 112);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 112) = 0;
  }

  v28 = *(DerivedStorage + 120);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 120) = 0;
  }

  v29 = *(DerivedStorage + 336);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 336) = 0;
  }

  v30 = *(DerivedStorage + 344);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 344) = 0;
  }

  v31 = *(DerivedStorage + 352);
  if (v31)
  {
    CFRelease(v31);
    *(DerivedStorage + 352) = 0;
  }

  v32 = *(DerivedStorage + 312);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 312) = 0;
  }

  v33 = *(DerivedStorage + 544);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 544) = 0;
  }

  v34 = *(DerivedStorage + 552);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 552) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 536) = 0;
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v35 = *(DerivedStorage + 88);
  if (v35)
  {
    CFRelease(v35);
    *(DerivedStorage + 88) = 0;
  }

  v36 = *(DerivedStorage + 64);
  if (v36 != -1)
  {
    notify_cancel(v36);
    *(DerivedStorage + 64) = -1;
  }

  v37 = *(DerivedStorage + 128);
  if (v37)
  {
    dispatch_release(v37);
    *(DerivedStorage + 128) = 0;
  }

  v38 = *(DerivedStorage + 80);
  if (v38)
  {
    dispatch_release(v38);
    *(DerivedStorage + 80) = 0;
  }

  v39 = *(DerivedStorage + 864);
  if (v39)
  {
    CFRelease(v39);
    *(DerivedStorage + 864) = 0;
  }

  v40 = *(DerivedStorage + 624);
  if (v40)
  {
    CFRelease(v40);
    *(DerivedStorage + 624) = 0;
  }

  v41 = *(DerivedStorage + 584);
  if (v41)
  {
    CFRelease(v41);
    *(DerivedStorage + 584) = 0;
  }

  v42 = *(DerivedStorage + 592);
  if (v42)
  {
    CFRelease(v42);
    *(DerivedStorage + 592) = 0;
  }

  v43 = *(DerivedStorage + 568);
  if (v43)
  {
    CFRelease(v43);
    *(DerivedStorage + 568) = 0;
  }

  if (*(DerivedStorage + 840))
  {
    dispatch_sync_f(*(DerivedStorage + 832), (DerivedStorage + 560), realTimeAudioEngine_tas_hosesInvalidateAllMessages);
    v44 = *(DerivedStorage + 840);
    if (v44)
    {
      CFRelease(v44);
      *(DerivedStorage + 840) = 0;
    }
  }

  v45 = *(DerivedStorage + 848);
  if (v45)
  {
    CFRelease(v45);
    *(DerivedStorage + 848) = 0;
  }

  v46 = *(DerivedStorage + 856);
  if (v46)
  {
    CFRelease(v46);
    *(DerivedStorage + 856) = 0;
  }

  v47 = *(DerivedStorage + 808);
  if (v47)
  {
    CFRelease(v47);
    *(DerivedStorage + 808) = 0;
  }

  v48 = *(DerivedStorage + 696);
  if (v48)
  {
    CFRelease(v48);
    *(DerivedStorage + 696) = 0;
  }

  v49 = *(DerivedStorage + 832);
  if (v49)
  {
    dispatch_release(v49);
    *(DerivedStorage + 832) = 0;
  }

  v50 = *(DerivedStorage + 664);
  if (v50)
  {
    dispatch_release(v50);
    *(DerivedStorage + 664) = 0;
  }

  FigSimpleMutexDestroy();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_Finalize_cold_1();
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  CFRelease(v4);
}

__CFString *realTimeAudioEngine_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioEngineRealTime>");
  return Mutable;
}

uint64_t realTimeAudioEngine_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2)
  {
    realTimeAudioEngine_CopyProperty_cold_3();
    return 4294951815;
  }

  if (!a4)
  {
    realTimeAudioEngine_CopyProperty_cold_2();
    return 4294951815;
  }

  v6 = APSDispatchSyncTask();
  if (v6)
  {
    realTimeAudioEngine_CopyProperty_cold_1();
  }

  return v6;
}

uint64_t realTimeAudioEngine_SetProperty(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = a1;
  v20 = a2;
  v21 = a3;
  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2)
  {
    realTimeAudioEngine_SetProperty_cold_3();
    return 4294951815;
  }

  if (FigCFEqual())
  {
    CMTimeMakeFromDictionary(&v17, a3);
    value = v17.value;
    flags = v17.flags;
    timescale = v17.timescale;
    if ((v17.flags & 0x1D) == 1)
    {
      epoch = v17.epoch;
      v9 = *(DerivedStorage + 256);
      v10 = *(DerivedStorage + 264);
      time.value = value;
      time.timescale = timescale;
      time.flags = v17.flags;
      time.epoch = v17.epoch;
      CMSyncConvertTime(&v17, &time, v9, v10);
      v11 = v17.value;
      v18 = *&v17.timescale;
      APSAudioFormatDescriptionGetSampleRate();
      time.value = v11;
      *&time.timescale = v18;
      CMTimeConvertScale(&v17, &time, v12, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v13 = v17.value;
      v18 = *&v17.timescale;
      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        v17.value = value;
        v17.timescale = timescale;
        v17.flags = flags;
        v17.epoch = epoch;
        CMTimeGetSeconds(&v17);
        CMTimebaseGetTime(&v17, *(DerivedStorage + 256));
        CMTimeGetSeconds(&v17);
        v17.value = v13;
        *&v17.timescale = v18;
        CMTimeGetSeconds(&v17);
        CMTimebaseGetTime(&v17, *(DerivedStorage + 264));
        CMTimeGetSeconds(&v17);
        LogPrintF();
      }

      v14 = 0;
      *(DerivedStorage + 792) = v13;
      return v14;
    }

    realTimeAudioEngine_SetProperty_cold_1();
    return 4294951815;
  }

  v14 = APSDispatchSyncTask();
  if (v14)
  {
    realTimeAudioEngine_SetProperty_cold_2();
  }

  return v14;
}

void realTimeAudioEngine_GlitchReportNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    realTimeAudioEngine_GlitchReportNotificationListener_cold_12();
    return;
  }

  v29 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = mach_absolute_time();
  cf = 0;
  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  if (!FigCFEqual())
  {
    goto LABEL_43;
  }

  Int64 = CFDictionaryGetInt64();
  if (!FigCFEqual())
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_GlitchReportNotificationListener_cold_11();
    }

    goto LABEL_43;
  }

  if (!Int64)
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_GlitchReportNotificationListener_cold_1();
    }

    goto LABEL_43;
  }

  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_GlitchReportNotificationListener_cold_2();
  }

  realTimeAudioEngine_updateDynamicLatencyIfNeeded(a2, 1);
  IntWithDefault = APSSettingsGetIntWithDefault();
  v11 = APSSettingsGetIntWithDefault();
  v12 = atomic_load(&realTimeAudioEngine_maybeTriggerTTRForLowLatencyAudioGlitch_sNextSevereTTRTicks);
  if (IntWithDefault || v12 <= v8)
  {
    if (CFDictionaryContainsKey(a5, *MEMORY[0x277CEA1D0]) && !CFDictionaryGetInt64())
    {
      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        realTimeAudioEngine_GlitchReportNotificationListener_cold_3();
      }

      v25 = *(DerivedStorage + 200);
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v26)
      {
        v26(v25, @"EnableReceiverCoreCapture", a5);
      }

      goto LABEL_43;
    }

    v13 = *(DerivedStorage + 200);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v14)
    {
      v14(v13, @"TriggerReceiverCoreCapture", a5);
    }

    v15 = *(DerivedStorage + 200);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v16)
    {
      v16(v15, @"TriggerSenderCoreCapture", a5);
    }

    v27 = v11;
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v18 = *MEMORY[0x277CBECE8];
    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"TTR: Low Latency Audio %s RTPSeqNum=%u", "SEVERE Glitches", Int64Ranged);
    if (!v19)
    {
      realTimeAudioEngine_GlitchReportNotificationListener_cold_10(&v29);
      v20 = 0;
      goto LABEL_44;
    }

    CFDictionaryGetInt64Ranged();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    v20 = CFStringCreateF();
    if (*(DerivedStorage + 200))
    {
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v22)
      {
        v29 = v22(CMBaseObject, @"EndpointIDs", v18, &cf);
        if (!v29)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v29 = -12782;
      }

      realTimeAudioEngine_GlitchReportNotificationListener_cold_8();
      goto LABEL_44;
    }

LABEL_28:
    v23 = UpTicksPerSecond();
    v24 = v12;
    atomic_compare_exchange_strong(&realTimeAudioEngine_maybeTriggerTTRForLowLatencyAudioGlitch_sNextSevereTTRTicks, &v24, v8 + v23 * v27);
    if (v24 == v12)
    {
      if (!IntWithDefault)
      {
        if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        APSTapToRadarInvoke();
      }
    }

    else if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_GlitchReportNotificationListener_cold_9();
    }

    goto LABEL_44;
  }

  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    UpTicksToSeconds();
    LogPrintF();
  }

LABEL_43:
  v20 = 0;
  v19 = 0;
LABEL_44:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

uint64_t realTimeAudioEngine_DynamicLatencyOffsetDidChangeListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  if (!a5)
  {
    return realTimeAudioEngine_DynamicLatencyOffsetDidChangeListener_cold_3();
  }

  Value = CFDictionaryGetValue(a5, @"APEndpointStream_DynamicLatencyOffsetMs");
  if (!Value)
  {
    return realTimeAudioEngine_DynamicLatencyOffsetDidChangeListener_cold_2();
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_DynamicLatencyOffsetDidChangeListener_cold_1();
  }

  *(DerivedStorage + 156) = valuePtr;
  CMNotificationCenterGetDefaultLocalCenter();
  return FigDispatchAsyncPostNotification();
}

uint64_t realTimeAudioEngine_tas_hosesInvalidateAllMessages(uint64_t a1)
{
  CFArrayRemoveAllValues(*(a1 + 280));
  do
  {
    result = APSAtomicMessageQueueReadMessage();
  }

  while (result);
  return result;
}

uint64_t realTimeAudioEngine_copyPropertyDispatch(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v1)
  {
    realTimeAudioEngine_copyPropertyDispatch_cold_6();
    return 4294951815;
  }

  if (!v3)
  {
    realTimeAudioEngine_copyPropertyDispatch_cold_5();
    return 4294951815;
  }

  v5 = DerivedStorage;
  if (!CFEqual(v1, @"audioLatencyMs"))
  {
    if (CFEqual(v1, @"outputLatency"))
    {
      CMTimeMake(&time, ((*(v5 + 140) + *(v5 + 152)) * 1000.0), 1000);
      v7 = CMTimeCopyAsDictionary(&time, v2);
      *v3 = v7;
      if (!v7)
      {
        realTimeAudioEngine_copyPropertyDispatch_cold_2();
        return 4294951816;
      }
    }

    else
    {
      if (!CFEqual(v1, @"dynamicLatencyOffsetMs"))
      {
        if (CFEqual(v1, @"currentRTPTime"))
        {
          v10 = CMBaseObjectGetDerivedStorage();
          time = **&MEMORY[0x277CC0898];
          APSAudioFormatDescriptionGetSampleRate();
          if (!*(v10 + 8))
          {
            v12 = v11;
            APSRealTimeWritableRead();
            if (time.value)
            {
              CMTimeMake(&rhs, (*(v10 + 140) * v12), v12);
              v15 = time;
              CMTimeSubtract(&v17, &v15, &rhs);
              time = v17;
            }
          }

          v17 = time;
          v13 = CMTimeCopyAsDictionary(&v17, v2);
          if (!v13)
          {
            realTimeAudioEngine_copyPropertyDispatch_cold_4();
            return 4294951816;
          }
        }

        else
        {
          if (!CFEqual(v1, @"startupOptions"))
          {
            return 4294954509;
          }

          v13 = CFRetain(*v5);
        }

        v14 = v13;
        result = 0;
        *v3 = v14;
        return result;
      }

      SInt32 = FigCFNumberCreateSInt32();
      *v3 = SInt32;
      if (!SInt32)
      {
        realTimeAudioEngine_copyPropertyDispatch_cold_3();
        return 4294951816;
      }
    }

    return 0;
  }

  v6 = FigCFNumberCreateSInt32();
  *v3 = v6;
  if (v6)
  {
    return 0;
  }

  realTimeAudioEngine_copyPropertyDispatch_cold_1();
  return 4294951816;
}

uint64_t realTimeAudioEngine_setPropertyDispatchSync()
{
  CMBaseObjectGetDerivedStorage();
  APSLogErrorAt();
  return 4294954509;
}

__CFString *realTimeAudioEngine_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APAudioEngineRealTime <APSEndpointStreamAudioHoseRegistrarProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t realTimeAudioEngine_audioHoseRegistrarRegisterHose(const void *a1, const void *a2, const void *a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a2);
    if (a3)
    {
      CFRetain(a3);
    }

    APSDispatchAsyncFHelper();
    result = 0;
    *a4 = &realTimeAudioEngine_audioHoseRegistrarRegisterHose_callbacks;
  }

  else
  {
    realTimeAudioEngine_audioHoseRegistrarRegisterHose_cold_1();
    return 4294951815;
  }

  return result;
}

uint64_t realTimeAudioEngine_audioHoseRegistrarDeregisterHose(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a2);
    if (a3)
    {
      CFRetain(a3);
    }

    APSDispatchAsyncFHelper();
    return 0;
  }

  else
  {
    realTimeAudioEngine_audioHoseRegistrarDeregisterHose_cold_1();
    return 4294951815;
  }
}

uint64_t realTimeAudioEngine_TriggerTimeAnnounce(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 128);
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  dispatch_async_f(v2, v3, realTimeAudioEngine_triggerTimeAnnounceInternal);
  return 0;
}

void realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal(uint64_t a1)
{
  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_1(DerivedStorage);
  }

  if (CFSetContainsValue(*(DerivedStorage + 168), v2))
  {
    realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_2();
  }

  else
  {
    if (APSGetFBOPropertyInt64())
    {
      APSSettingsGetIntWithDefault();
    }

    if (APSDispatchSyncTask())
    {
      realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_3();
    }

    else
    {
      CFSetAddValue(*(DerivedStorage + 168), v2);
      realTimeAudioEngine_updateArrivalToRenderTicks();
      realTimeAudioEngine_updateCryptor();
      *(DerivedStorage + 305) = 1;
      realTimeAudioEngine_handleTimeAnnounce();
      if (CFDictionaryGetInt64())
      {
        *(DerivedStorage + 528) = 1;
        CFSetApplyFunction(*(DerivedStorage + 168), realTimeAudioEngine_setEchoCancellationIsEnabledToHose, (DerivedStorage + 528));
      }

      if (*(DerivedStorage + 528))
      {
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v4)
        {
          v4(v2, *MEMORY[0x277CEA0C0], *MEMORY[0x277CBED28]);
        }
      }

      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_4(DerivedStorage, (DerivedStorage + 168));
      }

      Count = CFSetGetCount(*(DerivedStorage + 168));
      *(DerivedStorage + 392) = Count;
      if (*(DerivedStorage + 396) < Count)
      {
        *(DerivedStorage + 396) = Count;
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    CFRelease(v7);
  }
}

void realTimeAudioEngine_triggerTimeAnnounceInternal(const void *a1)
{
  *(CMBaseObjectGetDerivedStorage() + 305) = 1;
  realTimeAudioEngine_handleTimeAnnounce();
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t realTimeAudioEngine_timeAnnounceHoseApplier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v5 = MEMORY[0x277CEA0C8];
  if (*(a2 + 36))
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(a1, *v5, *MEMORY[0x277CBED10]);
    }
  }

  if (v4)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(a1, *v5, *MEMORY[0x277CBED28]);
    }
  }

  v8 = *(a2 + 32);
  v9 = *(a2 + 24);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v12 = *(result + 16);
    result += 16;
    v11 = v12;
    if (v12)
    {
      v13 = *(v11 + 16);
      if (v13)
      {

        return v13(a1, v8, v9);
      }
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_setEchoCancellationIsEnabledToHose(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *MEMORY[0x277CEA0C0];
    v9 = *v3;

    return v7(a1, v8, v9);
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_addHoseDispatchInternal(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  if (CFDictionaryContainsKey(*(*a1 + 304), v1))
  {
    realTimeAudioEngine_tas_addHoseDispatchInternal_cold_1(v15);
    return v15[0];
  }

  else
  {
    v4 = MEMORY[0x277CBED28];
    if (!v3)
    {
      v4 = MEMORY[0x277CBED10];
    }

    CFDictionaryAddValue(*(v2 + 304), v1, *v4);
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(v2 + 304));
    if (Copy)
    {
      v6 = Copy;
      APSCFRealTimeReadableSetValue();
      v7 = atomic_load((v2 + 256));
      if (*(v2 + 16))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = v7 >> 16;
        if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        APSAudioTransportTimeMakeWithRTPTime();
        APSEndpointStreamAudioHoseProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (ProtocolVTable)
        {
          v11 = *(ProtocolVTable + 16);
          if (v11)
          {
            v12 = *(v11 + 24);
            if (v12)
            {
              *v15 = *v14;
              *&v15[3] = *&v14[12];
              v12(v1, v9, v15, 0, 0);
            }
          }
        }
      }

      CFRelease(v6);
    }

    else
    {
      realTimeAudioEngine_tas_addHoseDispatchInternal_cold_2();
    }

    return 0;
  }
}

unint64_t realTimeAudioEngine_updateArrivalToRenderTicksApplier(uint64_t a1, unint64_t *a2)
{
  result = APSGetFBOPropertyInt64();
  v4 = *a2;
  if (*a2 >= result)
  {
    v4 = result;
  }

  *a2 = v4;
  return result;
}

void realTimeAudioEngine_audioHoseRegistrarDeregisterHoseDispatchInternal(uint64_t a1)
{
  realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal(*a1, *(a1 + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

__n128 realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_1(DerivedStorage);
  }

  v4 = (DerivedStorage + 168);
  if (CFSetContainsValue(*(DerivedStorage + 168), a2))
  {
    if (APSDispatchSyncTask())
    {
      realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_2();
    }

    else
    {
      CFSetRemoveValue(*v4, a2);
      realTimeAudioEngine_updateArrivalToRenderTicks();
      if (CFDictionaryGetInt64())
      {
        *(DerivedStorage + 528) = 0;
        CFSetApplyFunction(*(DerivedStorage + 168), realTimeAudioEngine_setEchoCancellationIsEnabledToHose, (DerivedStorage + 528));
      }

      v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v5)
      {
        v5(a2, *MEMORY[0x277CEA0C8], *MEMORY[0x277CBED10]);
      }

      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_3(DerivedStorage, (DerivedStorage + 168));
      }

      *(DerivedStorage + 392) = CFSetGetCount(*(DerivedStorage + 168));
    }
  }

  else
  {
    realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_4();
  }

  if (!CFSetGetCount(*v4))
  {
    v7 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *(DerivedStorage + 280) = *MEMORY[0x277CC08F0];
    *(DerivedStorage + 296) = *(v7 + 16);
    *(DerivedStorage + 304) = 1;
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_removeHoseDispatchInternal(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (CFDictionaryContainsKey(*(*a1 + 304), v1))
  {
    CFDictionaryRemoveValue(*(v2 + 304), v1);
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(v2 + 304));
    if (Copy)
    {
      v4 = Copy;
      APSCFRealTimeReadableSetValue();
      CFRelease(v4);
    }

    else
    {
      realTimeAudioEngine_tas_removeHoseDispatchInternal_cold_1();
    }

    return 0;
  }

  else
  {
    realTimeAudioEngine_tas_removeHoseDispatchInternal_cold_2(&v6);
    return v6;
  }
}

void realTimeAudioEngine_Resume(const void *a1, const void *a2, void (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_Resume_cold_1();
  }

  v7 = malloc_type_malloc(0x30uLL, 0x10E004091CD38EAuLL);
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      v9 = CFRetain(a1);
    }

    else
    {
      v9 = 0;
    }

    *v8 = v9;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *(v8 + 1) = v10;
    *(v8 + 2) = a3;
    *(v8 + 4) = a4;
    *(v8 + 10) = 0;
    v11 = APSDispatchSectionEnter();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    realTimeAudioEngine_Resume_cold_2(v11, v8, v8 + 1);
  }

  else
  {
    realTimeAudioEngine_Resume_cold_3();
    v12 = 4294951816;
  }

  if (a3)
  {

    a3(a1, v12, a4);
  }
}

void realTimeAudioEngine_Suspend(const void *a1, const void *a2, void (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_Suspend_cold_1();
  }

  v7 = malloc_type_malloc(0x30uLL, 0x10E004091CD38EAuLL);
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      v9 = CFRetain(a1);
    }

    else
    {
      v9 = 0;
    }

    *v8 = v9;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *(v8 + 1) = v10;
    *(v8 + 3) = a3;
    *(v8 + 4) = a4;
    *(v8 + 10) = 0;
    v11 = APSDispatchSectionEnter();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    realTimeAudioEngine_Suspend_cold_2(v11, v8, v8 + 1);
  }

  else
  {
    realTimeAudioEngine_Suspend_cold_3();
    v12 = 4294951816;
  }

  if (a3)
  {

    a3(a1, v12, a4);
  }
}

uint64_t realTimeAudioEngine_SetEndpointStream(const void *a1, const void *a2, uint64_t (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v7 = malloc_type_malloc(0x28uLL, 0x10A0040DE786E1EuLL);
  if (!v7)
  {
    realTimeAudioEngine_SetEndpointStream_cold_2();
    v12 = 4294951816;
    goto LABEL_16;
  }

  v8 = v7;
  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  *v8 = v9;
  if (a2)
  {
    v10 = CFRetain(a2);
  }

  else
  {
    v10 = 0;
  }

  *(v8 + 1) = v10;
  *(v8 + 2) = a3;
  *(v8 + 3) = a4;
  *(v8 + 8) = 0;
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = APSDispatchSectionEnter();
  if (result)
  {
    v12 = result;
    realTimeAudioEngine_SetEndpointStream_cold_1(result, v8, v8 + 1);
LABEL_16:
    result = a3;
    if (a3)
    {

      return a3(a1, v12, a4);
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_resumeSubPhase3_Internal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 40 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_resumeSubPhase3_Internal_cold_1();
  }

  if ((APSAudioFormatDescriptionGetAudioFormatIndex() & 0x20000000003C0000) != 0)
  {
    goto LABEL_25;
  }

  if (APSSettingsGetIntWithDefault())
  {
    IntWithDefault = APSSettingsGetIntWithDefault();
    if ((IntWithDefault & 0x80000000) != 0)
    {
      v8 = 4294895205;
      realTimeAudioEngine_resumeSubPhase3_Internal_cold_6();
      return v8;
    }

    v2 = (4 * IntWithDefault) | 1;
    v3 = *(DerivedStorage + 216);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v4)
      {
        v5 = v4(v3);
      }

      else
      {
        v5 = 0;
      }

      v2 += v5;
    }

    if (*(DerivedStorage + 240) < v2)
    {
      v8 = 4294895205;
      realTimeAudioEngine_resumeSubPhase3_Internal_cold_5();
      return v8;
    }

    if (APSSettingsGetIntWithDefault() <= 0)
    {
      v8 = 4294895205;
      realTimeAudioEngine_resumeSubPhase3_Internal_cold_4();
      return v8;
    }

    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_resumeSubPhase3_Internal_cold_2();
    }

    v9 = APSSetFBOPropertyInt64();
    if (v9)
    {
      v8 = v9;
      realTimeAudioEngine_resumeSubPhase3_Internal_cold_3();
      return v8;
    }

LABEL_25:
    dispatch_resume(*(DerivedStorage + 320));
    v8 = 0;
    *(DerivedStorage + 328) = 1;
    return v8;
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_resumeSubPhase3_Internal_cold_7();
  }

  if (CFPreferenceNumberWithDefault < 1)
  {
    goto LABEL_25;
  }

  v7 = APSSetFBOPropertyInt64();
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v7;
  realTimeAudioEngine_resumeSubPhase3_Internal_cold_8();
  return v8;
}

uint64_t realTimeAudioEngine_tas_Resume(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9, const void *a10, const void *a11)
{
  FigSimpleMutexLock();
  if (*(a1 + 96))
  {
    realTimeAudioEngine_tas_Resume_cold_1();
LABEL_85:
    v47 = 4294950525;
    goto LABEL_70;
  }

  if (!a3)
  {
    realTimeAudioEngine_tas_Resume_cold_16();
    goto LABEL_85;
  }

  if (!a5)
  {
    realTimeAudioEngine_tas_Resume_cold_15();
    goto LABEL_85;
  }

  if (!a7)
  {
    realTimeAudioEngine_tas_Resume_cold_14();
    goto LABEL_85;
  }

  if (!a8)
  {
    realTimeAudioEngine_tas_Resume_cold_13();
    goto LABEL_85;
  }

  if (!a9)
  {
    realTimeAudioEngine_tas_Resume_cold_12();
    goto LABEL_85;
  }

  if (!a10)
  {
    realTimeAudioEngine_tas_Resume_cold_11();
    goto LABEL_85;
  }

  if (!a11)
  {
    realTimeAudioEngine_tas_Resume_cold_10();
    goto LABEL_85;
  }

  v49 = 0;
  v19 = *(a1 + 152);
  *(a1 + 152) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  *(a1 + 256) = 0;
  v20 = *(a1 + 160);
  *(a1 + 160) = a3;
  CFRetain(a3);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 168);
  *(a1 + 168) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 176);
  *(a1 + 176) = a5;
  CFRetain(a5);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 184);
  *(a1 + 184) = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 192);
  *(a1 + 192) = a7;
  CFRetain(a7);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 208);
  *(a1 + 208) = a8;
  CFRetain(a8);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 200);
  *(a1 + 200) = a9;
  CFRetain(a9);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(a1 + 216);
  *(a1 + 216) = a10;
  CFRetain(a10);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 224);
  *(a1 + 224) = a11;
  CFRetain(a11);
  if (v28)
  {
    CFRelease(v28);
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  v30 = MEMORY[0x277CBECE8];
  if (IntWithDefault)
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_tas_Resume_cold_2();
    }
  }

  else
  {
    v31 = *(a1 + 160);
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v32 && !v32(v31, realTimeAudioEngine_tas_compressionSourceWriteDataCallback, a1))
    {
      goto LABEL_52;
    }

    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v33 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 104));
  *(a1 + 112) = v33;
  if (!v33)
  {
    realTimeAudioEngine_tas_Resume_cold_8();
    goto LABEL_76;
  }

  Mutable = CFArrayCreateMutable(*v30, 1, 0);
  *(a1 + 128) = Mutable;
  if (!Mutable)
  {
    realTimeAudioEngine_tas_Resume_cold_7();
    goto LABEL_76;
  }

  CFArrayInsertValueAtIndex(Mutable, 0, a1);
  v35 = *(a1 + 112);
  v36 = *(a1 + 128);
  if (v36)
  {
    v37 = CFRetain(v36);
  }

  else
  {
    v37 = 0;
  }

  dispatch_set_context(v35, v37);
  dispatch_source_set_event_handler_f(*(a1 + 112), realTimeAudioEngine_tas_transcodeAndSendTimerEntry);
  dispatch_source_set_cancel_handler_f(*(a1 + 112), FigCFRelease);
  dispatch_source_set_timer(*(a1 + 112), 0, 1000000 * *(a1 + 40), 0);
  dispatch_resume(*(a1 + 112));
  *(a1 + 120) = 1;
LABEL_52:
  v38 = *(a1 + 40);
  APSAudioFormatDescriptionGetSampleRate();
  v40 = v38 * v39;
  FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
  if (v40 / (1000 * FramesPerPacket) + ((v40 / (1000 * FramesPerPacket)) >> 2) <= 0xC)
  {
    v42 = 12;
  }

  else
  {
    v42 = v40 / (1000 * FramesPerPacket) + ((v40 / (1000 * FramesPerPacket)) >> 2);
  }

  *(a1 + 144) = v42;
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    APSAudioFormatDescriptionGetASBD();
    LogPrintF();
  }

  v43 = *(a1 + 160);
  v44 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v44)
  {
    v50 = -12782;
    goto LABEL_72;
  }

  v50 = v44(v43);
  if (v50)
  {
LABEL_72:
    realTimeAudioEngine_tas_Resume_cold_6();
    goto LABEL_75;
  }

  CMBaseObject = FigEndpointAudioSourceGetCMBaseObject();
  v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v46)
  {
    v50 = -12782;
    goto LABEL_74;
  }

  v50 = v46(CMBaseObject, @"AlgorithmicLatency", *v30, &v49);
  if (v50)
  {
LABEL_74:
    realTimeAudioEngine_tas_Resume_cold_5();
    goto LABEL_75;
  }

  *(a1 + 240) = -CFGetInt64Ranged();
  if (v50)
  {
    realTimeAudioEngine_tas_Resume_cold_3();
    goto LABEL_75;
  }

  v50 = APSRealTimePTPClockCreate();
  if (v50)
  {
    realTimeAudioEngine_tas_Resume_cold_4();
LABEL_75:
    if (!v50)
    {
      goto LABEL_66;
    }

LABEL_76:
    realTimeAudioEngine_tas_SuspendInternal(a1);
    goto LABEL_66;
  }

  *(a1 + 96) = 1;
LABEL_66:
  if (v49)
  {
    CFRelease(v49);
  }

  v47 = v50;
  if (v50)
  {
    realTimeAudioEngine_tas_Resume_cold_9();
  }

LABEL_70:
  FigSimpleMutexUnlock();
  return v47;
}

void realTimeAudioEngine_resumeComplete(CFTypeRef *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_resumeComplete_cold_1();
  }

  v2 = a1[2];
  if (v2)
  {
    v2(*a1, *(a1 + 10), a1[4]);
  }

  APSDispatchSectionLeave();
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void realTimeAudioEngine_apsRTPPacketHandlerCleanUp(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t realTimeAudioEngine_createRedundantAudioDataMessageBBuf(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = APTransportStreamSendBackingProviderAcquireBBuf();
  v4 = v3;
  if (v3)
  {
    realTimeAudioEngine_createRedundantAudioDataMessageBBuf_cold_1(v3, &v6);
  }

  else
  {
    *a2 = v6;
  }

  return v4;
}

uint64_t realTimeAudioEngine_updateHostRateAndAnchorTimeRelativeToRemoteRTPTimebase()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  outRelativeRate = NAN;
  v4 = **&MEMORY[0x277CC0898];
  v5 = v4;
  HostTimeClock = CMClockGetHostTimeClock();
  if (CMSyncGetRelativeRateAndAnchorTime(HostTimeClock, *(DerivedStorage + 272), &outRelativeRate, &v4, &v5))
  {
    return realTimeAudioEngine_updateHostRateAndAnchorTimeRelativeToRemoteRTPTimebase_cold_1();
  }

  result = APSRealTimeReadableWrite();
  if (result)
  {
    return realTimeAudioEngine_updateHostRateAndAnchorTimeRelativeToRemoteRTPTimebase_cold_2();
  }

  return result;
}

uint64_t realTimeAudioEngine_serviceRenderDeadlineMessageQueue()
{
  CMBaseObjectGetDerivedStorage();
  v12 = 0;
  v13 = 0;
  result = APSAtomicMessageQueueReadMessage();
  if (result)
  {
    v10 = *MEMORY[0x277CC0898];
    v1 = *(MEMORY[0x277CC0898] + 16);
    do
    {
      memset(&v11, 0, sizeof(v11));
      v2 = v12;
      v3 = v13;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *&v11.value = v10;
      v11.epoch = v1;
      *&v17.value = v10;
      v17.epoch = v1;
      *&v16.value = v10;
      v16.epoch = v1;
      v5 = *(DerivedStorage + 272);
      if (v5 && CMTimebaseGetRate(v5) != 0.0)
      {
        APSAudioFormatDescriptionGetSampleRate();
        v7 = v6;
        CMClockMakeHostTimeFromSystemUnits(&time, v2);
        HostTimeClock = CMClockGetHostTimeClock();
        CMSyncConvertTime(&lhs, &time, HostTimeClock, *(DerivedStorage + 272));
        v18 = *&lhs.timescale;
        time = lhs;
        CMTimeConvertScale(&lhs, &time, v7, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        if (v3 - LODWORD(lhs.value) >= 0)
        {
          v9 = (v3 - LODWORD(lhs.value));
        }

        else
        {
          v9 = (LODWORD(lhs.value) - v3);
        }

        CMTimeMake(&v17, ((*(DerivedStorage + 140) + *(DerivedStorage + 148)) * v7), v7);
        CMTimeMake(&v16, v9, v7);
        lhs = v17;
        time = v16;
        CMTimeSubtract(&v11, &lhs, &time);
      }

      if (v11.flags)
      {
        v17 = v11;
        CMTimeGetSeconds(&v17);
        APSStatsHistogramAddValue();
      }

      result = APSAtomicMessageQueueReadMessage();
    }

    while (result);
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_compressionSourceWriteDataCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kdebug_trace();
  if (*(a3 + 80))
  {
    APSAtomicMessageQueueSendMessage();
    return APSRealTimeSignalRaise();
  }

  else
  {

    return realTimeAudioEngine_tas_transcodeAndSendEntry(a3);
  }
}

void realTimeAudioEngine_tas_SuspendInternal(uint64_t a1)
{
  *(a1 + 96) = 0;
  v2 = *(a1 + 112);
  if (v2)
  {
    dispatch_source_cancel(v2);
    if (!*(a1 + 120))
    {
      dispatch_resume(*(a1 + 112));
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      dispatch_source_cancel(*(a1 + 112));
      dispatch_release(v3);
      *(a1 + 112) = 0;
    }

    v4 = *(a1 + 128);
    if (v4)
    {
      dispatch_sync_f(*(a1 + 104), v4, realTimeAudioEngine_tas_transcodeAndSendTimerInvalidate);
    }
  }

  *(a1 + 120) = 0;
  v5 = *(a1 + 160);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(v5);
    }

    v7 = *(a1 + 160);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v8)
    {
      v8(v7, 0, 0);
    }
  }

  *(a1 + 240) = 0;
  APSRealTimeWritableWrite();
    ;
  }

  v9 = *(a1 + 152);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 152) = 0;
  }

  *(a1 + 256) = 0;
  v10 = *(a1 + 160);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 160) = 0;
  }

  v11 = *(a1 + 168);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 168) = 0;
  }

  v12 = *(a1 + 176);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 176) = 0;
  }

  v13 = *(a1 + 184);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 184) = 0;
  }

  v14 = *(a1 + 192);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 192) = 0;
  }

  v15 = *(a1 + 208);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 208) = 0;
  }

  v16 = *(a1 + 200);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 200) = 0;
  }

  v17 = *(a1 + 216);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 216) = 0;
  }

  v18 = *(a1 + 224);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 224) = 0;
  }

  v19 = *(a1 + 128);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 128) = 0;
  }

  v20 = *(a1 + 264);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 264) = 0;
  }
}

void realTimeAudioEngine_tas_flushHoses(uint64_t a1, unsigned __int16 a2, int a3)
{
  if (*(a1 + 80))
  {

    realTimeAudioEngine_tas_hosesFlushHoses(a1, a3, a2);
  }

  else
  {
    APSAtomicMessageQueueSendMessage();
    APSRealTimeSignalRaise();
  }
}

void realTimeAudioEngine_tas_hosesFlushHoses(uint64_t a1, int a2, unsigned __int16 a3)
{
  context[0] = a2;
  context[1] = a3;
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFDictionaryApplyFunction(*(a1 + 304), realTimeAudioEngine_tas_flushHosesDictionaryCallback, context);
}

uint64_t realTimeAudioEngine_tas_flushHosesDictionaryCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 4);
  APSAudioTransportTimeMakeWithRTPTime();
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v7 = *(result + 16);
    result += 16;
    v6 = v7;
    if (v7)
    {
      v8 = *(v6 + 24);
      if (v8)
      {
        v10[0] = *v9;
        *(v10 + 12) = *&v9[12];
        return v8(a1, v4, v10, 0, 0);
      }
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_createAndEncryptAudioDataMessage(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, CFTypeRef *a5)
{
  v28 = 0;
  theBuffer = 0;
  dataPointerOut = 0;
  v27 = 0;
  v24 = 0;
  lengthAtOffsetOut = 0;
  if (a4 && (v9 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
  {
    v10 = v9(a4);
  }

  else
  {
    v10 = 0;
  }

  APSRealTimeAllocatorGetDefault();
  ReferencingBBufWithAudioDataLength = APSTransportMessageCreateReferencingBBufWithAudioDataLength();
  if (ReferencingBBufWithAudioDataLength)
  {
    v22 = ReferencingBBufWithAudioDataLength;
    realTimeAudioEngine_tas_createAndEncryptAudioDataMessage_cold_1();
    goto LABEL_19;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  AudioAADPointer = APSTransportMessageGetAudioAADPointer();
  if (AudioAADPointer)
  {
    v22 = AudioAADPointer;
    realTimeAudioEngine_tas_createAndEncryptAudioDataMessage_cold_2();
    goto LABEL_19;
  }

  v13 = a3;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, a3 + 10, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    v22 = DataPointer;
    realTimeAudioEngine_tas_createAndEncryptAudioDataMessage_cold_3();
    goto LABEL_19;
  }

  if (v10)
  {
    v15 = CMBlockBufferGetDataPointer(theBuffer, a2 + 10, 0, 0, &v24);
    if (v15)
    {
      v22 = v15;
      realTimeAudioEngine_tas_createAndEncryptAudioDataMessage_cold_4();
      goto LABEL_19;
    }

    v16 = v24;
  }

  else
  {
    v16 = 0;
  }

  v18 = v27;
  v17 = v28;
  v19 = dataPointerOut;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v20)
  {
    v22 = 4294954514;
LABEL_18:
    APSLogErrorAt();
    goto LABEL_19;
  }

  v21 = v20(a4, v17, v18, v19, a2 - v13, v19, a2 - v13, v16, v10);
  if (v21)
  {
    v22 = v21;
    goto LABEL_18;
  }

LABEL_15:
  v22 = 0;
  if (a5)
  {
    *a5 = CFRetain(theBuffer);
  }

LABEL_19:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v22;
}

void realTimeAudioEngine_suspendEndpointStreamInternal(_DWORD *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (!*(DerivedStorage + 136))
  {
    Mutable = 0;
    v6 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v4 = *(DerivedStorage + 200);
  if (v4)
  {
    v5 = CFRetain(v4);
    if (v5)
    {
      v6 = v5;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        FigCFDictionaryGetValue();
        FigCFDictionarySetValue();
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v8)
        {
          v9 = v8(v6, Mutable, realTimeAudioEngine_endpointStreamSuspendCallback, a1);
          if (!v9)
          {
LABEL_11:
            CFRelease(v6);
LABEL_12:
            if (Mutable)
            {

              CFRelease(Mutable);
            }

            return;
          }

          v10 = v9;
        }

        else
        {
          v10 = -12782;
        }

        APSLogErrorAt();
      }

      else
      {
        realTimeAudioEngine_suspendEndpointStreamInternal_cold_1();
        v10 = -72070;
      }

LABEL_10:
      a1[10] = v10;
      dispatch_async_f(*(v3 + 80), a1, realTimeAudioEngine_suspendComplete);
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  realTimeAudioEngine_suspendInternal(a1);
}