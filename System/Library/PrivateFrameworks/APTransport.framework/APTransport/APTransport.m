uint64_t browser_setModeInternal(void *a1, signed int a2)
{
  v109 = *MEMORY[0x277D85DE8];
  v97 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    v97 = -6723;
    goto LABEL_157;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 24) == a2)
  {
    v97 = 0;
    goto LABEL_157;
  }

  v6 = *DerivedStorage;
  v7 = **DerivedStorage;
  if (v7 <= 50)
  {
    if (v7 != -1)
    {
LABEL_5:
      browser_getStringForMode(a2, v6);
      browser_getStringForMode(*(v5 + 12), *v5);
      LogPrintF();
      goto LABEL_7;
    }

    v8 = *DerivedStorage;
    if (_LogCategory_Initialize())
    {
      v6 = *v5;
      goto LABEL_5;
    }
  }

LABEL_7:
  v95 = APSGetCurrentLocalTimeString();
  cf = CFStringCreateF();
  v9 = v5[4];
  v10 = cf;
  if (cf)
  {
    CFRetain(cf);
    v10 = cf;
  }

  v5[4] = v10;
  if (v9)
  {
    CFRelease(v9);
  }

  v11 = *(v5 + 12);
  *(v5 + 12) = a2;
  v12 = CMBaseObjectGetDerivedStorage();
  if (IsAppleInternalBuild() && APSSettingsGetInt64() && !IsAppleTV())
  {
    v13 = *(v12 + 48);
    if ((a2 & 0xFFFE) == 2)
    {
      if (!v13)
      {
        v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v12 + 8));
        *(v12 + 48) = v14;
        if (v14)
        {
          v15 = CFRetain(a1);
          v16 = *(v12 + 48);
          handler = MEMORY[0x277D85DD0];
          v99 = 3221225472;
          v100 = __browser_updateDetailedDiscoveryThresholdTimer_block_invoke;
          v101 = &__block_descriptor_40_e5_v8__0l;
          v102 = v15;
          dispatch_source_set_event_handler(v16, &handler);
          v17 = *(v12 + 48);
          v103 = MEMORY[0x277D85DD0];
          v104 = 3221225472;
          v105 = __browser_updateDetailedDiscoveryThresholdTimer_block_invoke_2;
          v106 = &__block_descriptor_48_e5_v8__0l;
          v107 = v12;
          v108 = v15;
          dispatch_source_set_cancel_handler(v17, &v103);
          v18 = *(v12 + 48);
          v19 = dispatch_time(0, 3600000000000);
          dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          dispatch_resume(*(v12 + 48));
        }

        else
        {
          browser_setModeInternal_cold_2();
        }
      }
    }

    else if (v13)
    {
      dispatch_source_cancel(*(v12 + 48));
      dispatch_release(v13);
      *(v12 + 48) = 0;
    }
  }

  v20 = *(v5 + 12);
  v21 = CMBaseObjectGetDerivedStorage();
  v22 = mach_absolute_time();
  CFAbsoluteTimeGetCurrent();
  if (v11 == v20)
  {
    browser_setModeInternal_cold_39();
LABEL_167:
    browser_setModeInternal_cold_40();
    goto LABEL_155;
  }

  if (v11 >= 2 && v20 <= 1)
  {
    browser_ensureDetailedForeverTimerStopped();
  }

  v23 = CMBaseObjectGetDerivedStorage();
  v24 = (v23 + 400);
  if (v11)
  {
    v24 = 0;
  }

  if (v11 == 1)
  {
    v24 = (v23 + 408);
  }

  if (v11 == 2)
  {
    v24 = (v23 + 416);
  }

  if (v11 == 3)
  {
    v24 = (v23 + 424);
  }

  *v24 += v22 - *(v23 + 432);
  *(v23 + 432) = v22;
  if (v20 <= 1)
  {
    if (v20)
    {
      v25 = 0;
      goto LABEL_47;
    }

    v26 = **v21;
    if (v26 <= 30)
    {
      if (v26 != -1)
      {
LABEL_40:
        LogPrintF();
        goto LABEL_61;
      }

      if (_LogCategory_Initialize())
      {
        v91 = *v21;
        goto LABEL_40;
      }
    }

LABEL_61:
    browser_batchAndSendDiscoveredDeviceRTCMetrics();
    v39 = CMBaseObjectGetDerivedStorage();
    v40 = **v39;
    if (v40 <= 30)
    {
      if (v40 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_65;
        }

        v92 = *v39;
      }

      LogPrintF();
    }

LABEL_65:
    v41 = *(v39 + 384);
    APSEventRecorderResetEvent();
    v42 = *(v39 + 384);
    APSEventRecorderResetEvent();
    v43 = *(v39 + 384);
    APSEventRecorderResetEvent();
    v44 = *(v39 + 384);
    APSEventRecorderResetEvent();
    browser_ensureDiscoverySessionThresholdTimerStopped();
    *(v21 + 440) = 0;
    *(v21 + 444) = 0;
    goto LABEL_76;
  }

  if (v20 == 3)
  {
    v27 = *(v21 + 384);
    APSEventRecorderRecordEventWithFlagsAtTime();
  }

  else if (v20 != 2)
  {
    goto LABEL_76;
  }

  v28 = *(v21 + 384);
  APSEventRecorderRecordEventWithFlagsAtTime();
  v29 = CMBaseObjectGetDerivedStorage();
  if (IsAppleInternalBuild() || *(v29 + 376))
  {
    goto LABEL_46;
  }

  v30 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v29 + 8));
  *(v29 + 376) = v30;
  if (v30)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = __browser_ensureDetailedForeverTimerStarted_block_invoke;
    v106 = &__block_descriptor_40_e5_v8__0l;
    v107 = a1;
    dispatch_source_set_event_handler(v30, &v103);
    CFRetain(a1);
    v31 = *(v29 + 376);
    handler = MEMORY[0x277D85DD0];
    v99 = 3221225472;
    v100 = __browser_ensureDetailedForeverTimerStarted_block_invoke_2;
    v101 = &__block_descriptor_40_e5_v8__0l;
    v102 = a1;
    dispatch_source_set_cancel_handler(v31, &handler);
    v32 = *(v29 + 376);
    v33 = dispatch_time(0, 600000000000);
    dispatch_source_set_timer(v32, v33, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(v29 + 376));
LABEL_46:
    v25 = 0;
    goto LABEL_47;
  }

  browser_setModeInternal_cold_3();
  v25 = -6728;
LABEL_47:
  v34 = *(v21 + 384);
  APSEventRecorderRecordEventWithFlagsAtTime();
  if (*(v21 + 440) >= v20)
  {
    goto LABEL_73;
  }

  v35 = **v21;
  if (v35 <= 30)
  {
    if (v35 != -1)
    {
LABEL_50:
      LogPrintF();
      goto LABEL_52;
    }

    if (_LogCategory_Initialize())
    {
      v90 = *v21;
      goto LABEL_50;
    }
  }

LABEL_52:
  *(v21 + 440) = v20;
  v36 = CMBaseObjectGetDerivedStorage();
  v37 = *(v36 + 384);
  if (APSEventRecorderGetEventTimeRecursive())
  {
    browser_setModeInternal_cold_4();
    v25 = v103;
    goto LABEL_73;
  }

  v38 = **v36;
  if (*(v36 + 448))
  {
    if (v38 <= 50)
    {
      if (v38 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_72;
        }

        v45 = *v36;
      }

      LogPrintF();
    }

LABEL_72:
    v49 = *(v36 + 448);
    v50 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v49, v50, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v25 = 0;
    goto LABEL_73;
  }

  if (v38 <= 50)
  {
    if (v38 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_70;
      }

      v94 = *v36;
    }

    LogPrintF();
  }

LABEL_70:
  v46 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v36 + 8));
  *(v36 + 448) = v46;
  if (v46)
  {
    CFRetain(a1);
    v47 = *(v36 + 448);
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = __browser_startOrExtendDiscoverySessionThresholdTimer_block_invoke;
    v106 = &__block_descriptor_40_e5_v8__0l;
    v107 = a1;
    dispatch_source_set_event_handler(v47, &v103);
    v48 = *(v36 + 448);
    handler = MEMORY[0x277D85DD0];
    v99 = 3221225472;
    v100 = __browser_startOrExtendDiscoverySessionThresholdTimer_block_invoke_2;
    v101 = &__block_descriptor_40_e5_v8__0l;
    v102 = a1;
    dispatch_source_set_cancel_handler(v48, &handler);
    dispatch_resume(*(v36 + 448));
    goto LABEL_72;
  }

  browser_setModeInternal_cold_5();
  v25 = -6728;
LABEL_73:
  if (v20 > v11)
  {
    ++*(v21 + 392);
  }

  v97 = v25;
  if (v25)
  {
    goto LABEL_167;
  }

LABEL_76:
  if (a2 > 1)
  {
    if (a2 != 3)
    {
      if (a2 != 2)
      {
        goto LABEL_103;
      }

      v97 = browser_removeP2PServicesForNearbyDevices(a1);
      if (v97)
      {
        browser_setModeInternal_cold_20();
        goto LABEL_155;
      }
    }

    CMBaseObjectGetDerivedStorage();
    v58 = CMBaseObjectGetDerivedStorage();
    v59 = *(v58 + 40);
    if (v59)
    {
      CFRelease(v59);
      *(v58 + 40) = 0;
    }

    v60 = *MEMORY[0x277CBECE8];
    v61 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    *(v58 + 40) = v61;
    if (!v61 || (v62 = CFUUIDCreateString(v60, v61)) == 0)
    {
      browser_setModeInternal_cold_38();
      updated = -6728;
      goto LABEL_194;
    }

    v63 = **v58;
    if (v63 <= 40)
    {
      if (v63 != -1)
      {
LABEL_102:
        v95 = v62;
        LogPrintF();
        goto LABEL_115;
      }

      if (_LogCategory_Initialize())
      {
        v87 = *v58;
        goto LABEL_102;
      }
    }

LABEL_115:
    CFRelease(v62);
    v67 = CMBaseObjectGetDerivedStorage();
    v68 = *(v67 + 216);
    v69 = CFDictionaryCopyKeys();
    v54 = v69;
    if (v69)
    {
      Count = CFArrayGetCount(v69);
      if (Count >= 1)
      {
        v71 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v54, v71);
          if (!ValueAtIndex)
          {
            browser_setModeInternal_cold_23();
            updated = -6762;
            goto LABEL_163;
          }

          Value = CFDictionaryGetValue(*(v67 + 216), ValueAtIndex);
          if (!Value)
          {
            browser_setModeInternal_cold_22();
            updated = -6727;
            goto LABEL_163;
          }

          if (CFDictionaryGetInt64())
          {
            updated = browser_updateDevice(a1, ValueAtIndex, Value);
            if (updated)
            {
              break;
            }
          }

          if (Count == ++v71)
          {
            goto LABEL_123;
          }
        }

        browser_setModeInternal_cold_21();
        goto LABEL_163;
      }

LABEL_123:
      CFRelease(v54);
    }

    updated = browser_ensureWiFiPowerChangedListeningStarted(a1);
    if (updated)
    {
      browser_setModeInternal_cold_24();
      goto LABEL_194;
    }

    updated = browser_ensureAWDLSoloSupportedListeningStarted(a1);
    if (updated)
    {
      browser_setModeInternal_cold_25();
      goto LABEL_194;
    }

    updated = browser_updateBTLEBrowsing(a1);
    if (updated)
    {
      browser_setModeInternal_cold_26();
      goto LABEL_194;
    }

    updated = browser_updateRapportBrowsing();
    if (updated)
    {
      browser_setModeInternal_cold_27();
      goto LABEL_194;
    }

    updated = browser_updateBrokerBrowsing(a1);
    if (updated)
    {
      browser_setModeInternal_cold_28();
      goto LABEL_194;
    }

    updated = browser_updateBonjourBrowsing(a1);
    if (updated)
    {
      browser_setModeInternal_cold_29();
      goto LABEL_194;
    }

    v74 = CMBaseObjectGetDerivedStorage();
    if (!APSIsProximitySenderEnabled())
    {
      browser_setModeInternal_cold_34();
      v84 = v103;
      goto LABEL_149;
    }

    v75 = CMBaseObjectGetDerivedStorage();
    v76 = v75;
    if (v75[34])
    {
LABEL_141:
      v82 = **v74;
      if (v82 <= 50)
      {
        if (v82 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_145;
          }

          v89 = *v74;
        }

        LogPrintF();
      }

LABEL_145:
      v103 = 0;
      v104 = &v103;
      v105 = 0x3052000000;
      v106 = __Block_byref_object_copy__6;
      v107 = __Block_byref_object_dispose__6;
      v108 = getNISpatialBrowsingConfigurationClass_softClass;
      if (!getNISpatialBrowsingConfigurationClass_softClass)
      {
        handler = MEMORY[0x277D85DD0];
        v99 = 3221225472;
        v100 = __getNISpatialBrowsingConfigurationClass_block_invoke;
        v101 = &unk_278BC7CE0;
        v102 = &v103;
        __getNISpatialBrowsingConfigurationClass_block_invoke(&handler);
        v83 = *(v104 + 40);
      }

      _Block_object_dispose(&v103, 8);
      v84 = objc_opt_new();
      if (v84)
      {
        [*(v74 + 272) runWithConfiguration:v84];
LABEL_149:

        goto LABEL_150;
      }

      browser_setModeInternal_cold_31();
LABEL_181:
      v84 = 0;
      goto LABEL_149;
    }

    v77 = *v75;
    v78 = **v76;
    if (v78 <= 50)
    {
      if (v78 != -1)
      {
LABEL_134:
        LogPrintF();
        goto LABEL_136;
      }

      if (_LogCategory_Initialize())
      {
        v88 = *v76;
        goto LABEL_134;
      }
    }

LABEL_136:
    v79 = [[BrowserNIDelegate alloc] initWithBrowser:a1, v95];
    v76[35] = v79;
    if (v79)
    {
      v103 = 0;
      v104 = &v103;
      v105 = 0x3052000000;
      v106 = __Block_byref_object_copy__6;
      v107 = __Block_byref_object_dispose__6;
      v108 = getNISessionClass_softClass;
      if (!getNISessionClass_softClass)
      {
        handler = MEMORY[0x277D85DD0];
        v99 = 3221225472;
        v100 = __getNISessionClass_block_invoke;
        v101 = &unk_278BC7CE0;
        v102 = &v103;
        __getNISessionClass_block_invoke(&handler);
        v80 = *(v104 + 40);
      }

      _Block_object_dispose(&v103, 8);
      v81 = objc_opt_new();
      v76[34] = v81;
      if (v81)
      {
        [v81 setDelegate:v76[35]];
        [v76[34] setDelegateQueue:v76[1]];
        if (!APSRotatingKeyMapperInitialize())
        {
          goto LABEL_141;
        }

        browser_setModeInternal_cold_30();
      }

      else
      {
        browser_setModeInternal_cold_32();
      }
    }

    else
    {
      browser_setModeInternal_cold_33();
    }

    browser_setModeInternal_cold_35();
    goto LABEL_181;
  }

  if (!a2)
  {
    v65 = CMBaseObjectGetDerivedStorage();
    v66 = *(v65 + 40);
    if (v66)
    {
      CFRelease(v66);
      *(v65 + 40) = 0;
    }

    updated = browser_updateBTLEBrowsing(a1);
    if (updated)
    {
      browser_setModeInternal_cold_6();
      goto LABEL_194;
    }

    updated = browser_updateRapportBrowsing();
    if (updated)
    {
      browser_setModeInternal_cold_7();
      goto LABEL_194;
    }

    updated = browser_updateBrokerBrowsing(a1);
    if (updated)
    {
      browser_setModeInternal_cold_8();
      goto LABEL_194;
    }

    updated = browser_updateBonjourBrowsing(a1);
    if (updated)
    {
      browser_setModeInternal_cold_9();
      goto LABEL_194;
    }

    browser_stopNI();
    CFDictionaryRemoveAllValues(*(v65 + 208));
    CFDictionaryRemoveAllValues(*(v65 + 216));
    *(v65 + 240) = 0;
    updated = browser_dispatchEvent(a1, 7, 0);
    if (updated)
    {
      browser_setModeInternal_cold_10();
      goto LABEL_194;
    }

    v97 = 0;
    browser_setModeInternal_cold_37(v5);
LABEL_152:
    browser_sendPowerLogDiscoveryModeEvent();
    goto LABEL_155;
  }

  if (a2 != 1)
  {
LABEL_103:
    v64 = **v5;
    if (v64 <= 90)
    {
      if (v64 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_154;
        }

        v93 = *v5;
      }

      LogPrintF();
    }

LABEL_154:
    v97 = -6727;
    goto LABEL_155;
  }

  CMBaseObjectGetDerivedStorage();
  updated = browser_ensureWiFiPowerChangedListeningStarted(a1);
  if (updated)
  {
    browser_setModeInternal_cold_11();
    goto LABEL_194;
  }

  updated = browser_ensureAWDLSoloSupportedListeningStarted(a1);
  if (updated)
  {
    browser_setModeInternal_cold_12();
    goto LABEL_194;
  }

  updated = browser_updateBTLEBrowsing(a1);
  if (updated)
  {
    browser_setModeInternal_cold_13();
    goto LABEL_194;
  }

  updated = browser_updateRapportBrowsing();
  if (updated)
  {
    browser_setModeInternal_cold_14();
    goto LABEL_194;
  }

  updated = browser_updateBrokerBrowsing(a1);
  if (updated)
  {
    browser_setModeInternal_cold_15();
    goto LABEL_194;
  }

  updated = browser_updateBonjourBrowsing(a1);
  if (updated)
  {
    browser_setModeInternal_cold_16();
    goto LABEL_194;
  }

  browser_stopNI();
  updated = browser_removeP2PServicesForNearbyDevices(a1);
  if (updated)
  {
    browser_setModeInternal_cold_17();
    goto LABEL_194;
  }

  v52 = *(CMBaseObjectGetDerivedStorage() + 216);
  v53 = CFDictionaryCopyKeys();
  v54 = v53;
  if (!v53)
  {
    v97 = 0;
    goto LABEL_151;
  }

  v55 = CFArrayGetCount(v53);
  if (v55 < 1)
  {
LABEL_92:
    CFRelease(v54);
LABEL_150:
    v97 = 0;
LABEL_151:
    browser_setModeInternal_cold_36(v5);
    goto LABEL_152;
  }

  v56 = 0;
  while (1)
  {
    v57 = CFArrayGetValueAtIndex(v54, v56);
    if (!v57)
    {
      browser_setModeInternal_cold_19();
      updated = -6762;
      goto LABEL_163;
    }

    updated = browser_updateEventInfoForDevice(a1, v57);
    if (updated)
    {
      break;
    }

    if (v55 == ++v56)
    {
      goto LABEL_92;
    }
  }

  browser_setModeInternal_cold_18();
LABEL_163:
  CFRelease(v54);
  APSLogErrorAt();
LABEL_194:
  v97 = updated;
  APSLogErrorAt();
LABEL_155:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_157:
  result = v97;
  v86 = *MEMORY[0x277D85DE8];
  return result;
}

const char *browser_getStringForMode(unsigned int a1, int *a2)
{
  if (a1 < 4)
  {
    return off_278BCA320[a1];
  }

  if (*a2 <= 60 && (*a2 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return "Unrecognized";
}

uint64_t browser_SetMode()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = APSDispatchSyncTask();
  if (v1)
  {
    browser_SetMode_cold_1();
  }

  return v1;
}

uint64_t browser_removeP2PServicesForNearbyDevices(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v3 = *(DerivedStorage + 216);
  v4 = CFDictionaryCopyKeys();
  theArray = v4;
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count)
    {
      v6 = CFGetAllocator(a1);
      Mutable = CFArrayCreateMutable(v6, 3, MEMORY[0x277CBF128]);
      v8 = Mutable;
      if (Mutable)
      {
        CFArrayAppendValue(Mutable, @"AirPlayP2PBonjourInfo");
        CFArrayAppendValue(v8, @"AirPlayNANFullBonjourInfo");
        CFArrayAppendValue(v8, @"AirPlayNANPartialBonjourInfo");
        if (Count < 1)
        {
LABEL_9:
          v11 = 0;
        }

        else
        {
          v9 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
            if (!ValueAtIndex)
            {
              APSLogErrorAt();
              v11 = 4294960534;
              goto LABEL_10;
            }

            if (!CFDictionaryGetValue(*(DerivedStorage + 216), ValueAtIndex))
            {
              break;
            }

            CFArrayGetCount(v8);
            CFArrayApplyBlock();
            if (Count == ++v9)
            {
              goto LABEL_9;
            }
          }

          APSLogErrorAt();
          v11 = 4294960569;
        }
      }

      else
      {
        APSLogErrorAt();
        v8 = 0;
        v11 = 4294960568;
      }
    }

    else
    {
      v11 = 0;
      v8 = 0;
    }

LABEL_10:
    CFRelease(theArray);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  return v11;
}

void sub_23D2ABA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t browser_ensureWiFiPowerChangedListeningStarted(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[196] || DerivedStorage[197])
  {
    return 0;
  }

  if (DerivedStorage[192])
  {
    started = browser_startWiFiPowerChangedListener(a1);
    if (started)
    {
LABEL_9:
      APSLogErrorAt();
    }
  }

  else
  {
    DerivedStorage[197] = 1;
    started = browser_ensureWiFiAvailableListeningStarted(a1);
    if (started)
    {
      goto LABEL_9;
    }
  }

  return started;
}

uint64_t browser_ensureAWDLSoloSupportedListeningStarted(const void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 131) || (v3 = DerivedStorage, *(DerivedStorage + 130)))
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (APSIsVirtualMachine())
  {
    OUTLINED_FUNCTION_1_29();
    if (!(v6 ^ v7 | v5))
    {
LABEL_11:
      *(v3 + 131) = 1;
      v12 = @"isAWDLSoloSupported";
      v13[0] = MEMORY[0x277CBEC28];
      v8 = browser_handleConnectivityHelperEventInternal(a1, 8, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1]);
      if (!v8)
      {
        goto LABEL_12;
      }

LABEL_14:
      APSLogErrorAt();
      goto LABEL_12;
    }

    if (v4 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_11;
      }

      v11 = *v3;
    }

    OUTLINED_FUNCTION_11();
    goto LABEL_11;
  }

  v8 = APConnectivityHelperRegisterForEvent(*(v3 + 184), a1, 8);
  if (v8)
  {
    goto LABEL_14;
  }

  *(v3 + 131) = 1;
LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t browser_updateBTLEBrowsing(CFStringRef (__cdecl *a1)(const void *))
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v3 + 24);
  if (v4 >= 4)
  {
    v7 = v3;
    v8 = **v3;
    if (v8 <= 60)
    {
      if (v8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        v38 = *v7;
        v39 = *(v7 + 24);
      }

      LogPrintF();
    }

LABEL_38:
    v36 = 4294960534;
    goto LABEL_39;
  }

  v5 = 0x2000100010000uLL >> (16 * v4);
  v6 = APBrowserBTLEManagerSetMode(*(DerivedStorage + 96), v5 & 3);
  if (v6)
  {
    v36 = v6;
    browser_updateBTLEBrowsing_cold_1();
    return v36;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      browser_ensureConnectivityCheckTimerStopped();
    }

    else
    {
      if (*(CMBaseObjectGetDerivedStorage() + 112))
      {
        handler.version = MEMORY[0x277D85DD0];
        handler.info = 3221225472;
        handler.retain = __browser_flushAllBTLEDevices_block_invoke;
        handler.release = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
        handler.copyDescription = a1;
        CFDictionaryApplyBlock();
      }

      CFDictionaryRemoveAllValues(*(DerivedStorage + 112));
      updated = browser_updateAVDevicePresent(a1);
      if (updated)
      {
        v36 = updated;
        browser_updateBTLEBrowsing_cold_6();
        return v36;
      }

      browser_ensureConnectivityCheckTimerStopped();
      v32 = CMBaseObjectGetDerivedStorage();
      v33 = *(v32 + 136);
      if (!v33)
      {
        return 0;
      }

      SCDynamicStoreSetDispatchQueue(v33, 0);
      v34 = *(v32 + 136);
      if (v34)
      {
        CFRelease(v34);
        *(v32 + 136) = 0;
      }

      CFRelease(a1);
      v35 = **v32;
      if (v35 > 40)
      {
        return 0;
      }

      if (v35 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 0;
        }

        v40 = *v32;
      }

      LogPrintF();
    }

    return 0;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v10 = v9;
  if (!*(v9 + 120))
  {
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v9 + 8));
    *(v10 + 120) = v11;
    if (!v11)
    {
      browser_updateBTLEBrowsing_cold_5();
      return 4294960568;
    }

    handler.version = MEMORY[0x277D85DD0];
    handler.info = 3221225472;
    handler.retain = __browser_ensureConnectivityCheckTimerStarted_block_invoke;
    handler.release = &__block_descriptor_40_e5_v8__0l;
    handler.copyDescription = a1;
    dispatch_source_set_event_handler(v11, &handler);
    CFRetain(a1);
    v12 = *(v10 + 120);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __browser_ensureConnectivityCheckTimerStarted_block_invoke_2;
    v42[3] = &__block_descriptor_40_e5_v8__0l;
    v42[4] = a1;
    dispatch_source_set_cancel_handler(v12, v42);
    v13 = *(v10 + 120);
    v14 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v13, v14, 0x2540BE400uLL, 0x3B9ACA00uLL);
    dispatch_resume(*(v10 + 120));
  }

  *(v10 + 128) = 1;
  v15 = CMBaseObjectGetDerivedStorage();
  handler.version = 0;
  memset(&handler.retain, 0, 24);
  handler.info = a1;
  if (*(v15 + 136))
  {
    return 0;
  }

  v16 = v15;
  v17 = CFGetAllocator(a1);
  v18 = SCDynamicStoreCreate(v17, @"APBrowser:IPv4Listener", browser_handleIPv4EventInternal, &handler);
  if (v18)
  {
LABEL_16:
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      browser_updateBTLEBrowsing_cold_4();
      v36 = 4294960568;
      if (!v18)
      {
LABEL_52:
        if (!v36)
        {
          return v36;
        }

        goto LABEL_39;
      }

LABEL_51:
      CFRelease(v18);
      goto LABEL_52;
    }

    v21 = Mutable;
    v22 = *MEMORY[0x277CE1648];
    v23 = *MEMORY[0x277CE1628];
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], *MEMORY[0x277CE1688]);
    if (NetworkInterfaceEntity)
    {
      v25 = NetworkInterfaceEntity;
      CFArrayAppendValue(v21, NetworkInterfaceEntity);
      CFRelease(v25);
      v26 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v22, v23, *MEMORY[0x277CE16A8]);
      if (v26)
      {
        v27 = v26;
        CFArrayAppendValue(v21, v26);
        CFRelease(v27);
        if (SCDynamicStoreSetNotificationKeys(v18, 0, v21))
        {
          goto LABEL_22;
        }

        if (SCError())
        {
          v28 = SCError();
          if (!v28)
          {
LABEL_22:
            if (SCDynamicStoreSetDispatchQueue(v18, *(v16 + 8)))
            {
              goto LABEL_25;
            }

            if (SCError())
            {
              v29 = SCError();
              if (!v29)
              {
LABEL_25:
                *(v16 + 136) = v18;
                CFRetain(a1);
                v30 = **v16;
                if (v30 <= 40)
                {
                  if (v30 == -1)
                  {
                    if (!_LogCategory_Initialize())
                    {
                      goto LABEL_47;
                    }

                    v41 = *v16;
                  }

                  LogPrintF();
                }

LABEL_47:
                v36 = 0;
                v18 = 0;
                goto LABEL_50;
              }

              v36 = v29;
            }

            else
            {
              v36 = 4294960596;
            }

            goto LABEL_49;
          }

          v36 = v28;
        }

        else
        {
          v36 = 4294960596;
        }

LABEL_49:
        APSLogErrorAt();
        goto LABEL_50;
      }

      browser_updateBTLEBrowsing_cold_2();
    }

    else
    {
      browser_updateBTLEBrowsing_cold_3();
    }

    v36 = 4294960568;
LABEL_50:
    CFRelease(v21);
    if (!v18)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (SCError())
  {
    v19 = SCError();
    if (!v19)
    {
      goto LABEL_16;
    }

    v36 = v19;
  }

  else
  {
    v36 = 4294960596;
  }

  APSLogErrorAt();
LABEL_39:
  APSLogErrorAt();
  return v36;
}

uint64_t APBrowserBTLEManagerSetMode(uint64_t a1, __int16 a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *(a1 + 16);
  v4 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserBTLEManagerSetMode_block_invoke;
  block[3] = &unk_278BC6D70;
  block[4] = v3;
  block[5] = &v9;
  v8 = a2;
  dispatch_sync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_23D2AC330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APBrowserBTLEManagerSetMode_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setBTLEMode:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_6_5@<X0>(size_t dataLength@<X2>, CMBlockBufferRef *a2@<X8>, CMBlockBufferRef *blockBufferOut)
{

  return CMBlockBufferCreateWithMemoryBlock(v3, 0, dataLength, v4, 0, 0, dataLength, 1u, a2);
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return CFDictionaryGetTypedValue();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_15()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{
  v2 = *(a1 + 96);

  return FigSimpleMutexCheckIsLockedOnThisThread();
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = *(a1 + 48);
  return result;
}

Float64 OUTLINED_FUNCTION_5_0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, CMTime *time, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 timea, uint64_t time_16)
{
  v15 = *(a1 + 224);
  timea = *a2;
  time_16 = *(a2 + 2);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_11()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return [v29 countByEnumeratingWithState:&a19 objects:&a29 count:16];
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_5_13(uint64_t result)
{
  *(v2 + 8 * *(v1 + 672)) += result - *(v1 + 688);
  *(v1 + 688) = result;
  v3 = *(v1 + 72);
  return result;
}

void OUTLINED_FUNCTION_11_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char block, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  a18 = v22;
  a14 = v20;
  a15 = v19;
  a16 = v18;
  a17 = v21;

  dispatch_async(a1, &block);
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return [v12 countByEnumeratingWithState:va objects:v13 - 216 count:16];
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return APSSignalErrorAt();
}

_BYTE *OUTLINED_FUNCTION_9_2(const void *a1, uint64_t a2)
{

  return httpconnection_callEventCallbacks(a1, a2, v2, 0);
}

uint64_t _APConnectivityHelperHandleDynamicStoreNetworkEntityValueChange(int a1, CFArrayRef theArray, uint64_t a3)
{
  if (theArray && !*(a3 + 232))
  {
    if (*(a3 + 168))
    {
      CFArrayGetCount(theArray);
      return CFArrayApplyBlock();
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  a11 = v15;
  a12 = v14;
  a13 = v16;
  a14 = v17;

  return [a1 activateWithCompletion:&a9];
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, CMTime *time2, uint64_t a4, CMTime *time1, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 time2a, uint64_t time2_16, uint64_t a13, uint64_t time1a)
{
  time2a = *(v14 + 400);
  time2_16 = *(v14 + 416);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_2_3(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-6728 userInfo:0];
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26)
{
  a23 = 0;
  a24 = &a23;
  a25 = v26;
  a26 = 0;
  return *(a1 + 16);
}

void OUTLINED_FUNCTION_2_10(NSObject *a1)
{

  dispatch_source_set_event_handler_f(a1, connectionlistener_listenerSocketEventHandler);
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return _LogCategory_Initialize();
}

unsigned __int8 *OUTLINED_FUNCTION_2_18(unsigned __int8 *result)
{
  v1 = result[177];
  v2 = result[64];
  v3 = result[112];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_2_21()
{
  result = *v0;
  v2 = **v0;
  return result;
}

void browser_ensureConnectivityCheckTimerStopped()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 120);
  if (v2)
  {
    dispatch_source_cancel(*(DerivedStorage + 120));
    dispatch_release(v2);
    *(v1 + 120) = 0;
  }

  *(v1 + 128) = 0;
}

uint64_t browser_updateRapportBrowsing()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (!*(v1 + 264) || (v2 = v1, v3 = *(v1 + 24), v3 < 2))
  {
    v5 = APBrowserRapportManagerSetMode(*(DerivedStorage + 144), 0);
    if (v5)
    {
      v4 = v5;
      goto LABEL_18;
    }

    v6 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = CFRetain(*(v6 + 160));
      v10 = *(v6 + 160);
      *(v6 + 160) = v8;
      CFRetain(v8);
      if (v10)
      {
        CFRelease(v10);
      }

      CFDictionaryApplyBlock();
      CFDictionaryRemoveAllValues(*(v6 + 152));
      CFDictionaryRemoveAllValues(*(v6 + 168));
      if (v9)
      {
        CFRelease(v9);
      }

      CFRelease(v8);
      return 0;
    }

    else
    {
      browser_updateRapportBrowsing_cold_1();
      return 4294960568;
    }
  }

  if (v3 - 2 >= 2)
  {
    v11 = *v1;
    v12 = **v2;
    if (v12 <= 60)
    {
      if (v12 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        v14 = *v2;
        v15 = *(v2 + 24);
      }

      LogPrintF();
    }

LABEL_17:
    v4 = 4294960534;
LABEL_18:
    APSLogErrorAt();
    return v4;
  }

  v4 = APBrowserRapportManagerSetMode(*(DerivedStorage + 144), 1);
  if (v4)
  {
    goto LABEL_18;
  }

  return v4;
}

uint64_t APBrowserRapportManagerSetMode(uint64_t a1, __int16 a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserRapportManagerSetMode_block_invoke;
  block[3] = &unk_278BC8090;
  block[4] = &v7;
  block[5] = a1;
  v6 = a2;
  dispatch_sync(v2, block);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __APBrowserRapportManagerSetMode_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 51))
  {
    v4 = -72284;
    goto LABEL_10;
  }

  v3 = *(result + 48);
  if (*(v2 + 48) == v3)
  {
    goto LABEL_19;
  }

  if (v3 == 1)
  {
    v5 = APBrowserRapportManager_ensurePreferencesUpdated(*(result + 40), 0);
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || OUTLINED_FUNCTION_7()))
      {
        OUTLINED_FUNCTION_5();
        LogPrintF();
      }

      *(v2 + 48) = 1;
      result = APBrowserRapportManager_update(v2);
      if (!result)
      {
        goto LABEL_19;
      }

      v4 = result;
    }

    APSLogErrorAt();
    goto LABEL_24;
  }

  if (!*(result + 48))
  {
    result = APBrowserRapportManager_stop(*(result + 40));
    if (result)
    {
      v4 = result;
LABEL_24:
      result = APSLogErrorAt();
      goto LABEL_10;
    }

LABEL_19:
    v4 = 0;
    goto LABEL_10;
  }

  if (gLogCategory_APBrowserRapportManager <= 90)
  {
    if (gLogCategory_APBrowserRapportManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  v4 = -6705;
LABEL_10:
  *(*(*(v1 + 32) + 8) + 24) = v4;
  return result;
}

uint64_t APBrowserRapportManager_ensurePreferencesUpdated(_BYTE *a1, int a2)
{
  if (a1[51])
  {
    return 4294895012;
  }

  if (!a2 && a1[52])
  {
    return 0;
  }

  a1[50] = 1;
  v3 = APBrowserRapportManager_update(a1);
  if (v3)
  {
    APSLogErrorAt();
  }

  else
  {
    a1[52] = 1;
  }

  return v3;
}

uint64_t APBrowserRapportManager_update(uint64_t a1)
{
  if (*(a1 + 50) && *(a1 + 48))
  {
    if (!*(a1 + 72))
    {
      if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || OUTLINED_FUNCTION_7()))
      {
        OUTLINED_FUNCTION_5();
        LogPrintF();
      }

      v2 = objc_alloc_init(MEMORY[0x277D44160]);
      if (!v2)
      {
        v5 = 4294895016;
        APSLogErrorAt();
        APSLogErrorAt();
        return v5;
      }

      v3 = v2;
      [v2 setDispatchQueue:*(a1 + 32)];
      [v3 setServiceType:@"com.apple.airplay.discovery.service"];
      [v3 setControlFlags:{objc_msgSend(v3, "controlFlags") | 2}];
      v4 = *(a1 + 40);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __APBrowserRapportManager_ensureScanningStarted_block_invoke;
      v13[3] = &__block_descriptor_40_e31_v16__0__RPCompanionLinkDevice_8l;
      v13[4] = v4;
      [v3 setDeviceFoundHandler:v13];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __APBrowserRapportManager_ensureScanningStarted_block_invoke_3;
      v12[3] = &__block_descriptor_40_e31_v16__0__RPCompanionLinkDevice_8l;
      v12[4] = v4;
      [v3 setDeviceLostHandler:v12];
      OUTLINED_FUNCTION_1_2();
      v8 = 3221225472;
      v9 = __APBrowserRapportManager_ensureScanningStarted_block_invoke_5;
      v10 = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v11 = v4;
      [v3 activateWithCompletion:v7];
      *(a1 + 72) = v3;
    }
  }

  else if (*(a1 + 72))
  {
    if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || OUTLINED_FUNCTION_7()))
    {
      OUTLINED_FUNCTION_5();
      LogPrintF();
    }

    [*(a1 + 72) invalidate];

    *(a1 + 72) = 0;
    CFDictionaryRemoveAllValues(*(a1 + 80));
  }

  return 0;
}

void *OUTLINED_FUNCTION_1_7()
{

  return malloc_type_calloc(1uLL, 0x20uLL, 0x10620408E24C83AuLL);
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return APSSignalErrorAt();
}

void OUTLINED_FUNCTION_1_14(NSObject *a1)
{

  dispatch_source_set_cancel_handler_f(a1, connectionlistener_listenerSocketCancelHandler);
}

Float64 OUTLINED_FUNCTION_1_23(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 timea, uint64_t time_16)
{
  timea = *a1;
  time_16 = *(a1 + 2);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_1_29()
{
  result = *v0;
  v2 = **v0;
  return result;
}

uint64_t browser_updateBrokerBrowsing(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (!v2)
  {
    browser_updateBrokerBrowsing_cold_3();
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v5 = *(DerivedStorage + 344);
  if (v5)
  {
    if (!*(v4 + 352))
    {
      *&v10 = browser_handleBrokerGroupAddOrUpdate;
      *(&v10 + 1) = browser_handleBrokerGroupAddOrUpdate;
      *&v11 = browser_handleBrokerGroupRemove;
      *(&v11 + 1) = browser_handleBrokeredReceiverAddOrUpdate;
      *&v12 = browser_handleBrokeredReceiverAddOrUpdate;
      *(&v12 + 1) = browser_handleBrokeredReceiverRemoved;
      v6 = APBrokerManagerSetDelegate(v5, a1, &v10);
      if (v6)
      {
        v8 = v6;
        browser_updateBrokerBrowsing_cold_1();
        goto LABEL_12;
      }

      *(v4 + 352) = 1;
      v5 = *(v4 + 344);
    }

    v7 = APBrokerManagerSetBrowseMode(v5, v2);
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    browser_updateBrokerBrowsing_cold_2();
LABEL_12:
    APSLogErrorAt();
    return v8;
  }

  return 0;
}

uint64_t APBrokerManagerSetDelegate(uint64_t a1, const void *a2, __int128 *a3)
{
  OUTLINED_FUNCTION_6_1(a1);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v6 = *(v3 + 96);
  FigSimpleMutexLock();
  v7 = *(v3 + 192);
  if (v7)
  {
    CFRelease(v7);
    *(v3 + 192) = 0;
  }

  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  ++*(v3 + 200);
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

    *(v3 + 192) = v8;
    v9 = *a3;
    v10 = a3[2];
    *(v3 + 160) = a3[1];
    *(v3 + 176) = v10;
    *(v3 + 144) = v9;
    v11 = *(v3 + 96);
    FigSimpleMutexCheckIsLockedOnThisThread();
  }

  v12 = *(v3 + 96);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APBrokerManagerSetBrowseMode(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_6_1(a1);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v4 = *(v2 + 96);
  FigSimpleMutexLock();
  if (*(v2 + 130) == a2)
  {
    updated = 0;
  }

  else
  {
    *(v2 + 130) = a2;
    global_queue = dispatch_get_global_queue(17, 0);
    dispatch_async(global_queue, &__block_literal_global_0);
    if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || OUTLINED_FUNCTION_8_0()))
    {
      v9 = *(v2 + 130);
      OUTLINED_FUNCTION_7_0();
    }

    updated = _APBrokerManagerUpdateBrowsing(v2);
    if (updated)
    {
      APSLogErrorAt();
    }
  }

  v7 = *(v2 + 96);
  FigSimpleMutexUnlock();
  return updated;
}

uint64_t _APBrokerManagerUpdateBrowsing(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v2 = *(v1 + 96);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (!*(v1 + 280))
  {
    *(v1 + 280) = 1;
    CFRetain(v1);
    v3 = *(v1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v1;
    dispatch_async(v3, block);
  }

  v4 = *(v1 + 96);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v5 = *(v1 + 130);
  if ((v5 - 2) < 2)
  {
LABEL_15:
    v5 = 2;
    goto LABEL_20;
  }

  if (*(v1 + 130))
  {
    if (v5 == 1)
    {
      if (APSSettingsGetInt64())
      {
        OUTLINED_FUNCTION_5_1();
        if (!(v8 ^ v9 | v7) || v6 == -1 && !OUTLINED_FUNCTION_8())
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_3_1();
        goto LABEL_13;
      }

      if (*(v1 + 281))
      {
        goto LABEL_15;
      }

      if (gLogCategory_APBrokerManager > 30 || gLogCategory_APBrokerManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (gLogCategory_APBrokerManager > 60)
      {
LABEL_19:
        v5 = 0;
        goto LABEL_20;
      }

      if (gLogCategory_APBrokerManager == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v10 = *(v1 + 130);
      }
    }

LABEL_13:
    LogPrintF();
    goto LABEL_19;
  }

LABEL_20:
  if (v5 != *(v1 + 128))
  {
    *(v1 + 128) = v5;
    if (gLogCategory_APBrokerManager <= 30)
    {
      if (gLogCategory_APBrokerManager == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_25;
        }

        v25 = *(v1 + 128);
      }

      LogPrintF();
LABEL_25:
      v5 = *(v1 + 128);
    }
  }

  if (v5 == 2)
  {
    v15 = *(v1 + 96);
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (!*(v1 + 137))
    {
      v16 = *(v1 + 112);
      CFDictionaryApplyBlock();
      OUTLINED_FUNCTION_5_1();
      if (v8 ^ v9 | v7 && (v17 != -1 || OUTLINED_FUNCTION_8()))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      *(v1 + 137) = 1;
    }
  }

  else
  {
    if (v5 != 1)
    {
      v5 = 0;
    }

    if (*(v1 + 132))
    {
      v11 = 1;
    }

    else
    {
      v11 = v5;
    }

    v12 = *(v1 + 96);
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (*(v1 + 137))
    {
      v13 = *(v1 + 112);
      CFDictionaryApplyBlock();
      OUTLINED_FUNCTION_5_1();
      if (v8 ^ v9 | v7)
      {
        if (v14 != -1 || OUTLINED_FUNCTION_8())
        {
          OUTLINED_FUNCTION_3_1();
          LogPrintF();
        }
      }
    }

    *(v1 + 137) = 0;
    if (!v11)
    {
      v18 = *(v1 + 96);
      FigSimpleMutexCheckIsLockedOnThisThread();
      if (*(v1 + 136))
      {
        _APBrokerManagerDiscoveryDelegateStop(v1);
        _APBrokerManagerRemoveAllBrokerGroups(v1);
        OUTLINED_FUNCTION_5_1();
        if (v8 ^ v9 | v7 && (v19 != -1 || OUTLINED_FUNCTION_8()))
        {
          OUTLINED_FUNCTION_3_1();
          LogPrintF();
        }

        v22 = 0;
        *(v1 + 136) = 0;
        return v22;
      }

      return 0;
    }
  }

  v20 = *(v1 + 96);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(v1 + 136))
  {
    return 0;
  }

  LODWORD(block[0]) = 0;
  if (*(v1 + 48))
  {
    v21 = _APBrokerManagerCopyReferencedObjectIfNecessary(*(v1 + 72), block);
    if (LODWORD(block[0]) || (LODWORD(block[0]) = (*(v1 + 48))(v21, *(v1 + 80))) != 0)
    {
      APSLogErrorAt();
      if (!v21)
      {
LABEL_57:
        v22 = LODWORD(block[0]);
        if (LODWORD(block[0]))
        {
          APSLogErrorAt();
          APSLogErrorAt();
          return v22;
        }

        goto LABEL_58;
      }
    }

    else if (!v21)
    {
      goto LABEL_57;
    }

    CFRelease(v21);
    goto LABEL_57;
  }

LABEL_58:
  OUTLINED_FUNCTION_5_1();
  if (v8 ^ v9 | v7 && (v23 != -1 || OUTLINED_FUNCTION_8()))
  {
    OUTLINED_FUNCTION_3_1();
    LogPrintF();
  }

  v22 = 0;
  *(v1 + 136) = 1;
  return v22;
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_3_11()
{
  v2 = *(v0 + 56);

  return APSAtomicMessageQueueSendMessage();
}

uint64_t _APBrokerManagerCopyReferencedObjectIfNecessary(uint64_t result, int *a2)
{
  if (a2)
  {
    if (result && (result = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
    {
      _APBrokerManagerCopyReferencedObjectIfNecessary_cold_1();
      result = 0;
      v3 = -6723;
    }

    else
    {
      v3 = 0;
    }

    *a2 = v3;
  }

  else
  {
    _APBrokerManagerCopyReferencedObjectIfNecessary_cold_2();
    return 0;
  }

  return result;
}

uint64_t BonjourDiscoveryDelegateStart(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = BonjourBrowser_Start();
  if (v3)
  {
    BonjourDiscoveryDelegateStart_cold_1();
  }

  return v3;
}

uint64_t browser_updateBonjourBrowsing(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  browser_ensureWiFiAvailableListeningStarted(a1);
  v3 = CMBaseObjectGetDerivedStorage();
  if (!*(v3 + 195))
  {
    v4 = v3;
    if (!*(v3 + 193))
    {
      if (!APSIsVirtualMachine())
      {
        if (!APConnectivityHelperRegisterForEvent(*(v4 + 184), a1, 7))
        {
          *(v4 + 195) = 1;
          goto LABEL_13;
        }

LABEL_23:
        APSLogErrorAt();
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_3_12(*v4);
      if (v7 ^ v8 | v6)
      {
        if (v5 == -1)
        {
          if (!OUTLINED_FUNCTION_7())
          {
            goto LABEL_12;
          }

          v9 = *v4;
        }

        OUTLINED_FUNCTION_11();
      }

LABEL_12:
      *(v4 + 195) = 1;
      if (!browser_handleConnectivityHelperEventInternal(a1, 7, 0))
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

LABEL_13:
  browser_ensureAWDLSoloSupportedListeningStarted(a1);
  v10 = CMBaseObjectGetDerivedStorage();
  v11 = *(v10 + 24);
  if (v11 >= 4)
  {
    v13 = v10;
    v14 = **v10;
    if (v14 <= 60)
    {
      if (v14 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v16 = *v13;
        v17 = *(v13 + 24);
      }

      LogPrintF();
    }

LABEL_20:
    v12 = 4294960534;
LABEL_21:
    APSLogErrorAt();
    return v12;
  }

  v12 = APBonjourBrowserSetMode(*(DerivedStorage + 88), (0x2000300010000uLL >> (16 * v11)) & 3);
  if (v12)
  {
    goto LABEL_21;
  }

  return v12;
}

uint64_t browser_ensureWiFiAvailableListeningStarted(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 194))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 192))
  {
    return 0;
  }

  if (APSIsVirtualMachine())
  {
    OUTLINED_FUNCTION_2_21();
    if (!(v6 ^ v7 | v5))
    {
LABEL_11:
      *(v3 + 194) = 1;
      v8 = browser_handleConnectivityHelperEventInternal(a1, 1, 0);
      if (!v8)
      {
        return v8;
      }

LABEL_14:
      APSLogErrorAt();
      return v8;
    }

    if (v4 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_11;
      }

      v10 = *v3;
    }

    OUTLINED_FUNCTION_11();
    goto LABEL_11;
  }

  v8 = APConnectivityHelperRegisterForEvent(*(v3 + 184), a1, 1);
  if (v8)
  {
    goto LABEL_14;
  }

  *(v3 + 194) = 1;
  return v8;
}

uint64_t APBonjourBrowserSetMode(uint64_t a1, unsigned __int16 a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_sync_f(*(a1 + 16), &v3, _APBonjourBrowserSetMode);
  return HIDWORD(v4);
}

void _APBonjourBrowserSetMode(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(*a1 + 32);
  if (!v4)
  {
    if (!*(v2 + 211))
    {
      goto LABEL_8;
    }

LABEL_4:
    LODWORD(v2) = 0;
LABEL_18:
    v7 = 0;
    goto LABEL_19;
  }

  do
  {
    OUTLINED_FUNCTION_14_1(v4);
  }

  while (v4);
  if (*(v2 + 211))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_16();
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_8:
  if (!*(v2 + 216))
  {
LABEL_17:
    OUTLINED_FUNCTION_13_3();
    APSLogErrorAt();
    goto LABEL_18;
  }

  if (v3 >= 4)
  {
    if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_17;
  }

  v6 = OUTLINED_FUNCTION_1_7();
  v7 = v6;
  if (!v6)
  {
    APSLogErrorAt();
    LODWORD(v2) = -72210;
    goto LABEL_19;
  }

  *v6 = 0;
  v6[4] = v3;
  LODWORD(v2) = _APBonjourBrowserEnqueueOperation(v2, v6);
  if (!v2)
  {
    goto LABEL_18;
  }

  APSLogErrorAt();
LABEL_19:
  _APBonjourBrowserOperationDisposeNullSafe(v7);
  *(a1 + 12) = v2;
}

uint64_t _APBonjourBrowserEnqueueOperation(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 32);
    do
    {
      v5 = v4;
      v4 = *(v4 + 24);
    }

    while (v4);
    if (!*(a1 + 211) && *v5 != 2)
    {
      do
      {
        OUTLINED_FUNCTION_14_1(v2);
      }

      while (v2);
      v3 = (v7 + 24);
      goto LABEL_11;
    }

    return 0;
  }

  if (*(a1 + 211))
  {
    return 0;
  }

LABEL_11:
  *v3 = a2;
  *(a2 + 24) = 0;
  v6 = _APBonjourBrowserProcessOperationQueue(a1);
  if (v6)
  {
    APSLogErrorAt();
  }

  return v6;
}

uint64_t _APBonjourBrowserProcessOperationQueue(char *cf)
{
  v1 = *(cf + 4);
  if (v1)
  {
    v3 = (cf + 40);
    while (1)
    {
      v4 = *v1;
      if (*v1 > 2u)
      {
        break;
      }

      if (!*v1)
      {
        goto LABEL_12;
      }

      if (v4 == 1)
      {
        v15 = *(v1 + 1);
        v16 = *(cf + 6);
        if (v15)
        {
          CFRetain(*(v1 + 1));
        }

        *(cf + 6) = v15;
        if (v16)
        {
          CFRelease(v16);
        }

        goto LABEL_55;
      }

      if (v4 != 2)
      {
        goto LABEL_35;
      }

      if (*(v1 + 16))
      {
        v5 = 0;
      }

      else
      {
        v5 = _APBonjourBrowserSetModeInternal(cf, 0, 0, 0, v1 + 5);
        if (*(cf + 29))
        {
          if (gLogCategory_APBonjourBrowser <= 50 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
          {
            _APBonjourBrowserProcessOperationQueue_cold_1(cf + 10);
          }

          [*(cf + 29) invalidate];

          *(cf + 29) = 0;
        }
      }

      v6 = *(v1 + 5);
      *(v1 + 16) = v6 != 0;
      if (!v6)
      {
        _APBonjourBrowserHandleModeChangeCompleteInternal(cf, 0);
        _APBonjourBrowserDispatchEvent(cf, 3, 0);
        v5 = 0;
        cf[211] = 1;
      }

LABEL_56:
      if (*(v1 + 16))
      {
        return v5;
      }

      v22 = *(cf + 4);
      if (!v22)
      {
        _APBonjourBrowserProcessOperationQueue_cold_4();
        return 4294895083;
      }

      *(cf + 4) = *(v22 + 24);
      _APBonjourBrowserOperationDisposeNullSafe(v1);
      v1 = *(cf + 4);
      if (!v1)
      {
        return 0;
      }
    }

    if ((v4 - 3) <= 1)
    {
LABEL_12:
      if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
      {
        _APBonjourBrowserProcessOperationQueue_cold_2(v3);
      }

      v7 = v1 + 4;
      v8 = *v1;
      if (*v1)
      {
        v7 = v3;
      }

      v9 = *v7;
      if (v8 == 3)
      {
        v10 = 1;
      }

      else
      {
        v10 = cf[56];
        if (v8 == 4)
        {
          v11 = 1;
          goto LABEL_22;
        }
      }

      v11 = cf[57];
LABEL_22:
      if (*(v1 + 16))
      {
        if (gLogCategory_APBonjourBrowser <= 30)
        {
          if (gLogCategory_APBonjourBrowser != -1)
          {
LABEL_25:
            StringForMode = _APBonjourBrowserGetStringForMode(v9);
            v13 = "yes";
            if (v10)
            {
              v14 = "yes";
            }

            else
            {
              v14 = "no";
            }

            if (!v11)
            {
              v13 = "no";
            }

            v30 = v14;
            v31 = v13;
            v28 = v8;
            v29 = StringForMode;
            v27 = cf;
            LogPrintF();
            goto LABEL_39;
          }

          if (_LogCategory_Initialize())
          {
            v8 = *v1;
            goto LABEL_25;
          }
        }

LABEL_39:
        v5 = 0;
LABEL_40:
        v17 = *(v1 + 5);
        *(v1 + 16) = v17 != 0;
        if (v17)
        {
          goto LABEL_56;
        }

        if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
        {
          v18 = *v1;
          v19 = _APBonjourBrowserGetStringForMode(v9);
          v20 = "yes";
          if (v10)
          {
            v21 = "yes";
          }

          else
          {
            v21 = "no";
          }

          if (!v11)
          {
            v20 = "no";
          }

          v30 = v21;
          v31 = v20;
          v28 = v18;
          v29 = v19;
          v27 = cf;
          LogPrintF();
        }

        _APBonjourBrowserHandleModeChangeCompleteInternal(cf, v9);
        if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
        {
          _APBonjourBrowserProcessOperationQueue_cold_3(v3);
        }

        goto LABEL_55;
      }

      if (gLogCategory_APBonjourBrowser <= 30)
      {
        if (gLogCategory_APBonjourBrowser != -1)
        {
LABEL_64:
          v23 = _APBonjourBrowserGetStringForMode(v9);
          v24 = "yes";
          if (v10)
          {
            v25 = "yes";
          }

          else
          {
            v25 = "no";
          }

          if (!v11)
          {
            v24 = "no";
          }

          v30 = v25;
          v31 = v24;
          v28 = v8;
          v29 = v23;
          v27 = cf;
          LogPrintF();
          goto LABEL_70;
        }

        if (_LogCategory_Initialize())
        {
          v8 = *v1;
          goto LABEL_64;
        }
      }

LABEL_70:
      v5 = _APBonjourBrowserSetModeInternal(cf, v9, v10, v11, v1 + 5);
      goto LABEL_40;
    }

LABEL_35:
    if (gLogCategory_APBonjourBrowser <= 90)
    {
      if (gLogCategory_APBonjourBrowser == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_55;
        }

        v4 = *v1;
      }

      v27 = v4;
      LogPrintF();
    }

LABEL_55:
    v5 = 0;
    goto LABEL_56;
  }

  return 0;
}

uint64_t _APBonjourBrowserSetModeInternal(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5)
{
  v104 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == a2 && *(a1 + 56) == a3 && *(a1 + 57) == a4)
  {
    goto LABEL_104;
  }

  if (a3)
  {
    if (!*(a1 + 56))
    {
      *(a1 + 56) = 1;
      if (gLogCategory_APBonjourBrowser <= 50 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  if (*(a1 + 57) != a4)
  {
    *(a1 + 57) = 1;
    if (gLogCategory_APBonjourBrowser <= 50 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (!a2)
  {
    v14 = OUTLINED_FUNCTION_7_3();
    _APBonjourBrowserStopBrowsing(v14, v15);
    v16 = OUTLINED_FUNCTION_7_3();
    _APBonjourBrowserStopBrowsingForP2PInfra(v16, v17);
    v18 = OUTLINED_FUNCTION_7_3();
    _APBonjourBrowserStopBrowsingOpenNAN(v18, v19);
    goto LABEL_103;
  }

  *buffer = 0;
  v100 = 0;
  v101 = 0;
  v9 = *(a1 + 72);
  v10 = *(a1 + 88);
  if (APSIsDemoModeEnabled())
  {
    v11 = v10 | 0x30000000000000;
  }

  else
  {
    v11 = v10;
  }

  if (*(a1 + 208))
  {
    v12 = *(a1 + 57) && a2 == 2;
    if (v12)
    {
      v11 |= 0x400000000000000uLL;
    }
  }

  LOBYTE(v102) = 0;
  if (IsAppleTV() || APSIsAPMSpeaker())
  {
    LOBYTE(v102) = 1;
  }

  v13 = 30;
  if (IsAppleInternalBuild())
  {
    if (APSSettingsGetBooleanIfPresent())
    {
      v13 = 50;
    }

    else
    {
      v13 = 30;
    }
  }

  if ((v13 & 0x3E) >= gLogCategory_APBonjourBrowser && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_20();
    LogPrintF();
  }

  if (v102)
  {
    v20 = v11 | 0x43000000000000;
  }

  else
  {
    v20 = v11;
  }

  if (a2 == 1)
  {
    v20 |= 0x4000000000000000uLL;
  }

  if (*(a1 + 209))
  {
    v21 = v20 | 0x3000000000000000;
  }

  else
  {
    v21 = v20;
  }

  OUTLINED_FUNCTION_21();
  if (v23 ^ v24 | v12 && (v22 != -1 || OUTLINED_FUNCTION_7()))
  {
    _APBonjourBrowserGetStringForMode(a2);
    *(a1 + 209);
    v25 = *(a1 + 208);
    OUTLINED_FUNCTION_20();
    *(a1 + 129);
    *(a1 + 56);
    *(a1 + 57);
    OUTLINED_FUNCTION_11();
  }

  buffer[0] = 0;
  v26 = *(a1 + 48);
  if (!v26 || CFStringGetCString(v26, buffer, 17, 0x8000100u))
  {
    if (*(a1 + 129))
    {
      v27 = *(a1 + 136);
      v28 = *(a1 + 64);
      v29 = OUTLINED_FUNCTION_17_0();
      started = _APBonjourBrowserStartBonjourBrowser(v29, v30, v31, v32, v33, v34, v35, v36);
      if (started)
      {
        v59 = started;
        goto LABEL_80;
      }
    }

    if (*(a1 + 56))
    {
      v38 = *(a1 + 232);
      if (v38)
      {
        [v38 forceReportCachedDevices];
      }
    }

    v39 = *(a1 + 96);
    v40 = *(a1 + 64);
    v41 = OUTLINED_FUNCTION_17_0();
    v48 = _APBonjourBrowserStartBonjourBrowser(v41, v42, v43, v44, v45, v21, v46, v47);
    if (v48)
    {
      v59 = v48;
      goto LABEL_80;
    }

    if (*(a1 + 104))
    {
      v51 = OUTLINED_FUNCTION_17_0();
      v58 = _APBonjourBrowserStartBonjourBrowser(v51, v52, v53, v54, v55, v21, v56, v57);
      if (v58)
      {
        v59 = v58;
LABEL_80:
        APSLogErrorAt();
        goto LABEL_81;
      }
    }

    if (*(a1 + 114))
    {
      if (*(a1 + 129))
      {
        v60 = *(a1 + 152);
        v61 = OUTLINED_FUNCTION_17_0();
        v69 = _APBonjourBrowserStartBonjourBrowser(v61, v62, v63, v64, v65, v66, v67, v68);
        if (v69)
        {
          v59 = v69;
          goto LABEL_80;
        }
      }

      v70 = *(a1 + 120);
      v71 = OUTLINED_FUNCTION_17_0();
      v78 = _APBonjourBrowserStartBonjourBrowser(v71, v72, v73, v74, v75, v21, v76, v77);
      if (v78)
      {
        v59 = v78;
        goto LABEL_80;
      }
    }

    if (*(a1 + 160) && a2 == 2 && *(a1 + 57))
    {
      v103 = 0;
      v102 = *"awdl0";
      if (*(a1 + 161))
      {
        goto LABEL_84;
      }

      v49 = *(a1 + 168);
      if (!BonjourBrowser_Start())
      {
        CFRetain(a1);
        *(a1 + 161) = 1;
        OUTLINED_FUNCTION_21();
        if (v23 ^ v24 | v12 && (v50 != -1 || OUTLINED_FUNCTION_7()))
        {
          OUTLINED_FUNCTION_11();
        }

LABEL_84:
        if (*(a1 + 176) && a2 == 2 && *(a1 + 56))
        {
          v103 = 0;
          v102 = *"nan0";
          if (!*(a1 + 177))
          {
            v83 = *(a1 + 184);
            v84 = BonjourBrowser_Start();
            if (v84)
            {
              v59 = v84;
              APSLogErrorAt();
              if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v95 = OUTLINED_FUNCTION_7_3();
              _APBonjourBrowserStopBrowsingOpenNAN(v95, v96);
              goto LABEL_80;
            }

            CFRetain(a1);
            *(a1 + 177) = 1;
            OUTLINED_FUNCTION_21();
            if (v23 ^ v24 | v12 && (v85 != -1 || OUTLINED_FUNCTION_7()))
            {
              OUTLINED_FUNCTION_11();
            }
          }
        }

        else
        {
          v86 = OUTLINED_FUNCTION_7_3();
          _APBonjourBrowserStopBrowsingOpenNAN(v86, v87);
        }

        if (*(a1 + 192) && a2 == 2 && *(a1 + 56))
        {
          v103 = 0;
          v102 = *"nan0";
          if (!*(a1 + 193))
          {
            v88 = *(a1 + 200);
            v89 = BonjourBrowser_Start();
            if (v89)
            {
              v59 = v89;
              APSLogErrorAt();
              if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v97 = OUTLINED_FUNCTION_7_3();
              _APBonjourBrowserStopBrowsingSecureNANPartial(v97, v98);
              goto LABEL_80;
            }

            CFRetain(a1);
            *(a1 + 193) = 1;
            OUTLINED_FUNCTION_21();
            if (v23 ^ v24 | v12 && (v90 != -1 || OUTLINED_FUNCTION_7()))
            {
              OUTLINED_FUNCTION_11();
            }
          }

LABEL_104:
          v59 = 0;
          goto LABEL_105;
        }

LABEL_103:
        v91 = OUTLINED_FUNCTION_7_3();
        _APBonjourBrowserStopBrowsingSecureNANPartial(v91, v92);
        goto LABEL_104;
      }

      APSLogErrorAt();
    }

    v81 = OUTLINED_FUNCTION_7_3();
    _APBonjourBrowserStopBrowsingForP2PInfra(v81, v82);
    goto LABEL_84;
  }

  APSLogErrorAt();
  v59 = 4294895084;
LABEL_81:
  v79 = OUTLINED_FUNCTION_7_3();
  _APBonjourBrowserStopBrowsing(v79, v80);
  APSLogErrorAt();
LABEL_105:
  *a5 = 0;
  v93 = *MEMORY[0x277D85DE8];
  return v59;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{
  v2 = *(a1 + 384);

  return udpconnection_markSignPostExplicit(v2);
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

const char *_APBonjourBrowserGetStringForMode(unsigned int a1)
{
  if (a1 < 4)
  {
    return off_278BC76F0[a1];
  }

  if (gLogCategory_APBonjourBrowser <= 60 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
  {
    _APBonjourBrowserGetStringForMode_cold_1();
  }

  return "Unrecognized";
}

uint64_t OUTLINED_FUNCTION_23()
{

  return CFGetInt64Ranged();
}

uint64_t _APBonjourBrowserStartBonjourBrowser(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  if (a2)
  {
    v10 = BonjourBrowser_Start();
    if (v10)
    {
      v11 = v10;
      APSLogErrorAt();
      return v11;
    }

    if (!*a8)
    {
      CFRetain(a1);
      *a8 = 1;
    }

    if (gLogCategory_APBonjourBrowser <= 40 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_7()))
    {
      OUTLINED_FUNCTION_11();
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v16 = *(*(v14 - 88) + 24);

  _Block_object_dispose(va, 8);
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return CFDictionaryGetTypedValue();
}

uint64_t OUTLINED_FUNCTION_7_7@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 40);
  v3 = *(v1 + 40);
  return result;
}

void APBrokerKeychainUtilsRemoveExpiredAuthTokens()
{
  v57 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v0 = objc_opt_new();
  if (v0 && (v37 = objc_opt_new()) != 0)
  {
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    v2 = v1;
    v3 = _CopyAllAuthTokenKeychainItems(v0, &v55);
    v4 = NSErrorToOSStatus();
    if (!v4)
    {
      v12 = OUTLINED_FUNCTION_5_3(v4, v5, v6, v7, v8, v9, v10, v11, v31, v33, v35, v37, v38, v40, v42, v43, v44, v45, 0, 0, 0, 0, 0, 0, 0, 0, v54, v55, v56);
      if (v12)
      {
        v13 = v12;
        v14 = *v48;
        v36 = &v42;
        do
        {
          v15 = 0;
          do
          {
            if (*v48 != v14)
            {
              objc_enumerationMutation(v3);
            }

            v16 = *(v47 + 8 * v15);
            [objc_msgSend(objc_msgSend(v16 metadata];
            v18 = v17;
            v45 = 0;
            [objc_msgSend(v16 "dateModified")];
            if (v2 - v19 >= v18)
            {
              [v0 removeItemMatchingItem:v16 error:&v55];
              if (v55)
              {
                if (gLogCategory_APBrokerKeychainUtils <= 90 && (gLogCategory_APBrokerKeychainUtils != -1 || _LogCategory_Initialize()))
                {
                  v32 = [v16 identifier];
                  v34 = v55;
                  LogPrintF();
                }

                v55 = 0;
              }

              else if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0()))
              {
                v32 = [v16 identifier];
                OUTLINED_FUNCTION_1();
                LogPrintF();
              }

              if (APSIsPairingGroupEnabled())
              {
                APBrokerKeychainUtilsCopyInfoFromKeychainItemID([v16 identifier], 0, &v45);
                v39 = MEMORY[0x277D85DD0];
                v41 = 3221225472;
                v42 = __APBrokerKeychainUtilsRemoveExpiredAuthTokens_block_invoke;
                v43 = &unk_278BC7220;
                v44 = v45;
                [v37 updatePairedPeersWithGroupID:? groupInfo:? options:? completion:?];
              }
            }

            ++v15;
          }

          while (v13 != v15);
          v28 = OUTLINED_FUNCTION_5_3(v20, v21, v22, v23, v24, v25, v26, v27, v32, v34, v36, v37, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
          v13 = v28;
        }

        while (v28);
      }
    }
  }

  else
  {
    APSLogErrorAt();
    v3 = 0;
    v37 = 0;
    v55 = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v30, *MEMORY[0x277CCA590]);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t _APBonjourBrowserStopBrowsingForP2PInfra(uint64_t result, _DWORD *a2)
{
  v3 = *(result + 161);
  if (*(result + 161))
  {
    *(result + 161) = 0;
    v4 = *(result + 168);
    result = BonjourBrowser_Stop();
    if (gLogCategory_APBonjourBrowser <= 40)
    {
      if (gLogCategory_APBonjourBrowser != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = _APBonjourBrowserStopBrowsingForP2PInfra_cold_1();
      }
    }

    v3 = 1;
  }

  if (a2)
  {
    *a2 += v3;
  }

  return result;
}

void *_CopyAllAuthTokenKeychainItems(void *a1, void *a2)
{
  v3 = a1;
  v7 = 0;
  if (a1)
  {
    v4 = objc_opt_new();
    v5 = v4;
    if (v4)
    {
      [v4 setAccessGroup:@"com.apple.airplay"];
      [v5 setType:@"APBroker"];
      v3 = [v3 copyItemsMatchingItem:v5 flags:0 error:&v7];
    }

    else
    {
      _CopyAllAuthTokenKeychainItems_cold_1();
      v3 = 0;
    }
  }

  else
  {
    _CopyAllAuthTokenKeychainItems_cold_2();
    v5 = 0;
  }

  if (a2)
  {
    *a2 = v7;
  }

  return v3;
}

uint64_t _APBonjourBrowserStopBrowsingSecureNANPartial(uint64_t result, _DWORD *a2)
{
  v3 = *(result + 193);
  if (*(result + 193))
  {
    *(result + 193) = 0;
    v4 = *(result + 200);
    result = BonjourBrowser_Stop();
    if (gLogCategory_APBonjourBrowser <= 40)
    {
      if (gLogCategory_APBonjourBrowser != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = _APBonjourBrowserStopBrowsingSecureNANPartial_cold_1();
      }
    }

    v3 = 1;
  }

  if (a2)
  {
    *a2 += v3;
  }

  return result;
}

void _APBonjourBrowserOperationDisposeNullSafe(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if ((v2 - 2) >= 3 && v2 != 0)
  {
    if (v2 == 1)
    {
      v4 = a1[1];
      if (v4)
      {
        CFRelease(v4);
      }

      goto LABEL_7;
    }

    if (gLogCategory_APBonjourBrowser <= 60)
    {
      if (gLogCategory_APBonjourBrowser == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        v5 = *a1;
      }

      LogPrintF();
    }
  }

LABEL_7:

  free(a1);
}

uint64_t _APBonjourBrowserHandleModeChangeCompleteInternal(uint64_t cf, unsigned int a2)
{
  if (*(cf + 40) == a2)
  {
    return cf;
  }

  v3 = cf;
  *(cf + 40) = a2;
  if (gLogCategory_APBonjourBrowser <= 30)
  {
    v4 = a2;
    if (gLogCategory_APBonjourBrowser != -1)
    {
LABEL_4:
      _APBonjourBrowserGetStringForMode(v4);
      *(v3 + 56);
      v5 = *(v3 + 57);
      OUTLINED_FUNCTION_6_7();
      cf = OUTLINED_FUNCTION_7_0();
      goto LABEL_6;
    }

    cf = OUTLINED_FUNCTION_8_0();
    if (cf)
    {
      v4 = *(v3 + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  if (!a2)
  {

    return _APBonjourBrowserDispatchEvent(v3, 2, 0);
  }

  return cf;
}

uint64_t browser_setModeInternal_cold_34()
{
  OUTLINED_FUNCTION_2_5();
  result = OUTLINED_FUNCTION_4_14(v2);
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      result = OUTLINED_FUNCTION_8_0();
      if (!result)
      {
        goto LABEL_5;
      }

      v5 = *v1;
    }

    OUTLINED_FUNCTION_1();
    result = LogPrintF();
  }

LABEL_5:
  *v0 = 0;
  return result;
}

uint64_t browser_setModeInternal_cold_36(uint64_t result)
{
  if (!*(result + 368))
  {
    v1 = result;
    SNPrintF();
    result = os_transaction_create();
    *(v1 + 368) = result;
  }

  return result;
}

void browser_sendPowerLogDiscoveryModeEvent()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) == @"AirPlay")
  {
    if (APBrowserGetModeString(*(DerivedStorage + 24)) && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) != 0)
    {
      v2 = Mutable;
      CFDictionarySetCString();
      PLLogRegisteredEvent();

      CFRelease(v2);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

const char *APBrowserGetModeString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_278BC7A38[a1];
  }
}

uint64_t OUTLINED_FUNCTION_4_4(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-6705 userInfo:0];
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return APSSignalErrorAt();
}

void OUTLINED_FUNCTION_4_12()
{
  v1 = v0[177];
  v2 = v0[64];
  v3 = v0[112] == 0;
}

unsigned int *OUTLINED_FUNCTION_4_14(unsigned int **a1)
{
  result = *a1;
  v2 = *result;
  return result;
}

void APBrowserRapportManager_runOnQueue(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_20);
  }

  v3 = FigCFWeakReferenceTableCopyValue();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APBrowserRapportManager_runOnQueue_block_invoke;
    v6[3] = &unk_278BC8170;
    v6[4] = a2;
    v6[5] = v4;
    dispatch_sync(v5, v6);
    CFRelease(v4);
  }
}

void __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (!*(v2 + 48))
  {
    goto LABEL_108;
  }

  v3 = *(a1 + 64);
  if (v3 <= 8)
  {
    if (v3 == 3)
    {
      goto LABEL_30;
    }

    if (v3 != 4)
    {
      if (v3 == 6)
      {
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        CMBaseObjectGetDerivedStorage();
        if (v12)
        {
          Value = CFDictionaryGetValue(v12, @"networkInterfaceName");
          v14 = CFDictionaryGetValue(v12, @"IPv6Addresses");
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          *buf = 0;
          *buffer = 0;
          v46 = 0;
          LOBYTE(v47) = 0;
          if (Value)
          {
            v16 = DerivedStorage;
            if (CFStringHasPrefix(Value, @"anpi"))
            {
              __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_11();
            }

            else
            {
              v17 = *(v16 + 96);
              if (FigCFEqual())
              {
                v18 = *(v16 + 96);
                if (v18)
                {
                  CFRelease(v18);
                  *(v16 + 96) = 0;
                }

                if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
                {
                  __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_12(v16);
                }
              }

              if (v14 && !*(v16 + 96) && CFArrayGetCount(v14) >= 1)
              {
                if (CFStringGetCString(Value, buffer, 17, 0x8000100u))
                {
                  if (SocketGetInterfaceInfo())
                  {
                    __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_13();
                  }

                  else if (*buf == 16)
                  {
                    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
                    {
                      __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_14(v16);
                    }

                    v39 = *(v16 + 96);
                    *(v16 + 96) = Value;
                    CFRetain(Value);
                    if (v39)
                    {
                      CFRelease(v39);
                    }
                  }
                }

                else
                {
                  __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_15();
                }
              }
            }
          }

          else
          {
            __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_16();
          }

          if (carPlayHelperSession_updateIPAddresses(v11, Value, v14, 6))
          {
            __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_17();
          }
        }

        else
        {
          __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_18();
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
        if (*(*(*(a1 + 32) + 8) + 24))
        {
          __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_19();
        }

        goto LABEL_108;
      }

      goto LABEL_31;
    }

    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    *buffer = 0;
    v22 = CMBaseObjectGetDerivedStorage();
    if (v21)
    {
      v23 = v22;
      v24 = CFDictionaryGetValue(v21, @"networkInterfaceName");
      v25 = v24;
      v26 = v24 == 0;
      if (v24 && CFStringHasPrefix(v24, @"anpi"))
      {
        __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_2();
      }

      else
      {
        Int64 = CFDictionaryGetInt64();
        if (CFDictionaryGetInt64())
        {
          if (v25 && *(v23 + 32))
          {
            APSPowerAssertionRaiseTemporary();
            v26 = 0;
          }
        }

        else
        {
          v28 = *(v23 + 80);
          if (!FigCFEqual())
          {
            goto LABEL_99;
          }

          v25 = 0;
          v26 = 1;
        }

        v29 = *(v23 + 80);
        if (!FigCFEqual())
        {
          if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
          {
            __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_4(v23);
          }

          if (*(v23 + 264))
          {
            if (v26)
            {
              APSEventRecorderRecordEvent();
              v30 = LogCategoryCopyOSLogHandle();
              v31 = v30;
              if (v30)
              {
                v32 = v30;
              }

              else
              {
                v32 = MEMORY[0x277D86220];
              }

              if (os_signpost_enabled(v32))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_23D2A9000, v32, OS_SIGNPOST_EVENT, 0x2B8D08DCuLL, "AP_SIGNPOST_CAR_USB_LINKDOWN", "", buf, 2u);
              }

              if (v31)
              {
              }

              v33 = *(v23 + 80);
              *(v23 + 80) = v25;
              goto LABEL_82;
            }

            APSEventRecorderRecordEvent();
            v34 = LogCategoryCopyOSLogHandle();
            v35 = v34;
            if (v34)
            {
              v36 = v34;
            }

            else
            {
              v36 = MEMORY[0x277D86220];
            }

            if (os_signpost_enabled(v36))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_23D2A9000, v36, OS_SIGNPOST_EVENT, 0x2B8D07FCuLL, "AP_SIGNPOST_CAR_USB_LINKUP", "", buf, 2u);
            }

            if (v35)
            {
            }

            v33 = *(v23 + 80);
            *(v23 + 80) = v25;
          }

          else
          {
            v33 = *(v23 + 80);
            *(v23 + 80) = v25;
            if (v26)
            {
              goto LABEL_82;
            }
          }

          CFRetain(v25);
LABEL_82:
          if (v33)
          {
            CFRelease(v33);
          }

          if (v26)
          {
            *(v23 + 88) = 0;
            *(v23 + 72) = 0;
            v37 = *(v23 + 184);
            if (v37 && *(v23 + 208) == 1)
            {

              *(v23 + 184) = 0;
              v38 = *(v23 + 192);
              if (v38)
              {
                CFRelease(v38);
                *(v23 + 192) = 0;
              }

              *(v23 + 200) = 0;
              *(v23 + 208) = 0;
              if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
              {
                __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_5(v23);
              }
            }
          }

          else
          {
            *(v23 + 88) = Int64;
            *(v23 + 72) = CFAbsoluteTimeGetCurrent();
          }

          if (!*(v23 + 177))
          {
            if (_MergedGlobals_18 != -1)
            {
              APCarPlayHelperSessionCreate_cold_4();
            }

            [qword_281309C60 checkCarPlayControlAdvertisingForUSB];
          }

          *buffer = carPlayHelperSession_updateNetworkAndSessionState(v20);
          if (*buffer)
          {
            __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_7();
          }
        }
      }
    }

    else
    {
      __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_8();
    }

LABEL_99:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_9();
    }

    goto LABEL_108;
  }

  if (v3 <= 102)
  {
    if (v3 != 9)
    {
      if (v3 == 10)
      {
        v4 = *(a1 + 48);
        v5 = *(a1 + 56);
        v6 = CMBaseObjectGetDerivedStorage();
        *buf = 0;
        v42 = buf;
        v43 = 0x2020000000;
        v44 = 0;
        if (!v5)
        {
          goto LABEL_10;
        }

        v7 = v6;
        v8 = CFDictionaryGetValue(v5, @"networkInterfaceName");
        if (!v8)
        {
          goto LABEL_10;
        }

        CFDictionaryGetValue(v5, @"IPv4Addresses");
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        *(v42 + 3) = Mutable;
        if (!Mutable)
        {
          goto LABEL_10;
        }

        *buffer = MEMORY[0x277D85DD0];
        v46 = 3221225472;
        v47 = __carPlayHelperSession_IPv4InterfaceAddressesChanged_block_invoke;
        v48 = &unk_278BC8288;
        v49 = buf;
        v50 = v4;
        v51 = v7;
        FigCFArrayApplyBlock();
        if (carPlayHelperSession_updateIPAddresses(v4, v8, *(v42 + 3), 4))
        {
LABEL_10:
          APSLogErrorAt();
        }

        v10 = *(v42 + 3);
        if (v10)
        {
          CFRelease(v10);
        }

        _Block_object_dispose(buf, 8);
        *(*(*(a1 + 32) + 8) + 24) = 0;
        if (*(*(*(a1 + 32) + 8) + 24))
        {
          __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_10();
        }

        goto LABEL_108;
      }

      goto LABEL_31;
    }

LABEL_30:
    __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_1(a1);
    goto LABEL_108;
  }

  if (v3 == 103)
  {
    carPlayHelperSession_wifiNetworkListeningStopped(*(a1 + 48));
    goto LABEL_108;
  }

  if (v3 == 104)
  {
    v19 = *(a1 + 48);
    carPlayHelperSession_usbInterfaceListeningStopped();
    goto LABEL_108;
  }

LABEL_31:
  if (gLogCategory_APBrowserCarSessionHelper <= 30)
  {
    if (gLogCategory_APBrowserCarSessionHelper == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_108;
      }

      v2 = *(a1 + 40);
    }

    __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_20(a1 + 64, a1, v2);
  }

LABEL_108:
  __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_21(a1);
  v40 = *MEMORY[0x277D85DE8];
}

void sub_23D2B0EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperHandleUSBNetworkChangedEvent(uint64_t result, const __CFString *a2, CFStringRef theString, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a4 + 120))
  {
    goto LABEL_40;
  }

  v7 = result;
  *buffer = 0;
  v21 = 0;
  v22 = 0;
  if (*(a4 + 80) && CFStringHasPrefix(theString, @"APCHTestInterface"))
  {
    if (CFStringHasSuffix(theString, @"USB"))
    {
      v8 = 8;
    }

    else if (CFStringHasSuffix(theString, @"DirectLink"))
    {
      v8 = 16;
    }

    else
    {
      v8 = 2 * (CFStringHasSuffix(theString, @"WiFi") != 0);
    }
  }

  else
  {
    CFStringGetCString(theString, buffer, 17, 0x8000100u);
    v8 = 0;
    SocketGetInterfaceInfo();
  }

  v9 = SCDynamicStoreCopyValue(v7, a2);
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x277CE17A0];
    v12 = CFDictionaryGetInt64() != 0;
    CFRelease(v10);
  }

  else
  {
    v13 = SCError();
    if (v13 != 1004)
    {
      if (gLogCategory_APConnectivityHelper > 90)
      {
        v12 = 0;
        goto LABEL_28;
      }

      v14 = v13;
      if (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize())
      {
        SCErrorString(v14);
        LogPrintF();
      }
    }

    v12 = 0;
  }

  if (gLogCategory_APConnectivityHelper <= 40)
  {
    v15 = __CFADD__(gLogCategory_APConnectivityHelper, 1);
    v16 = gLogCategory_APConnectivityHelper == -1;
    if (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7())
    {
      if (v16 || !v15)
      {
        switch(v8)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
            break;
          default:
            JUMPOUT(0);
        }
      }

      OUTLINED_FUNCTION_11();
    }
  }

LABEL_28:
  result = CFDictionaryContainsKey(*(a4 + 112), theString);
  v18 = (v8 & 0x18) == 0 || !v12;
  if (result)
  {
    if (v18)
    {
      result = _APConnectivityHelperHandleUSBInterfaceChange(a4, theString, v8, 0);
      if (result)
      {
LABEL_41:
        result = APSLogErrorAt();
      }
    }
  }

  else if (!v18)
  {
    result = _APConnectivityHelperHandleUSBInterfaceChange(a4, theString, v8, 1);
    if (result)
    {
      goto LABEL_41;
    }
  }

LABEL_40:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _APConnectivityHelperHandleUSBInterfaceChange(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  v4 = 4294895095;
  if (!a2)
  {
    goto LABEL_18;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v4 = 4294895096;
LABEL_18:
    _APConnectivityHelperHandleUSBInterfaceChange_cold_2();
    return v4;
  }

  v9 = Mutable;
  CFDictionarySetValue(Mutable, @"networkInterfaceName", a2);
  CFDictionarySetInt64();
  v10 = MEMORY[0x277CBED28];
  if (!a4)
  {
    v10 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v9, @"isAddEvent", *v10);
  if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = *(a1 + 112);
  if (a4)
  {
    CFDictionarySetValue(v11, a2, v9);
  }

  else
  {
    CFDictionaryRemoveValue(v11, a2);
  }

  v4 = _APConnectivityHelperDispatchEvent(a1, 4, v9);
  if (v4)
  {
    _APConnectivityHelperHandleUSBInterfaceChange_cold_1();
  }

  CFRelease(v9);
  return v4;
}

uint64_t _APConnectivityHelperDispatchEvent(uint64_t a1, void *key, const void *a3)
{
  if (*(a1 + 232))
  {
    return 0;
  }

  v4 = key;
  if (!*(a1 + 216))
  {
    if (key > 0x62)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
      if (!Mutable)
      {
        APSLogErrorAt();
        return 4294960568;
      }

      v10 = Mutable;
      v12 = *(a1 + 240);
      CFDictionaryApplyBlock();
    }

    else
    {
      Value = CFDictionaryGetValue(*(a1 + 248), key);
      if (Value)
      {
        v10 = CFRetain(Value);
      }

      else
      {
        v10 = 0;
      }
    }

    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      APConnectivityHelperGetEventString(v4);
      if (v10)
      {
        CFSetGetCount(v10);
      }

      LogPrintF();
    }

    if (v10)
    {
      CFSetApplyBlock();
    }

    if (v4 <= 0xA && ((1 << v4) & 0x5DA) != 0)
    {
      v13 = *MEMORY[0x277CBEEE8];
      if (a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = *MEMORY[0x277CBEEE8];
      }

      CFDictionarySetValue(*(a1 + 264), v4, v14);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }

  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E00404FF7FCA9uLL);
  if (v6)
  {
    v7 = v6;
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(a1 + 224);
    *v7 = *(a1 + 216);
    v7[1] = a1;
    *(v7 + 4) = v4;
    v7[3] = a3;
    v7[4] = v8;
    if (gLogCategory_APConnectivityHelper <= 20 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      APConnectivityHelperGetEventString(v4);
      LogPrintF();
    }

    dispatch_async_f(*(a1 + 32), v7, _APConnectivityHelperDispatchEventExternal);
    return 0;
  }

  APSLogErrorAt();
  return 4294895096;
}

const char *APConnectivityHelperGetEventString(int a1)
{
  if (a1 <= 99)
  {
    if (a1 <= 5)
    {
      if (a1 > 2)
      {
        if (a1 == 3)
        {
          return "WiFi Network Changed";
        }

        if (a1 == 4)
        {
          return "USB Interface Changed";
        }
      }

      else
      {
        if (a1 == 1)
        {
          return "WiFi Available";
        }

        if (a1 == 2)
        {
          return "WiFi Power Changed";
        }
      }
    }

    else
    {
      if (a1 <= 7)
      {
        if (a1 == 6)
        {
          return "IPv6 Addresses Changed";
        }

        else
        {
          return "AWDL Available";
        }
      }

      switch(a1)
      {
        case 8:
          return "AWDL Solo Support";
        case 9:
          return "Link Debounce Failed";
        case 10:
          return "IPv4 Addresses Changed";
      }
    }

    return "Unknown";
  }

  if (a1 > 105)
  {
    if (a1 > 107)
    {
      switch(a1)
      {
        case 'l':
          return "AWDL Solo Support Listening Stopped";
        case 'm':
          return "Link Debounce Failed Listening Stopped";
        case 'n':
          return "IPv4 Addresses Changed Listening Stopped";
      }

      return "Unknown";
    }

    if (a1 == 106)
    {
      return "IPv6 Addresses Changed Listening Stopped";
    }

    else
    {
      return "AWDL Available Listening Stopped";
    }
  }

  else
  {
    if (a1 > 101)
    {
      switch(a1)
      {
        case 'f':
          return "WiFi Power Changed Listening Stopped";
        case 'g':
          return "WiFi Network Changed Listening Stopped";
        case 'h':
          return "USB Interface Changed Listening Stopped";
      }

      return "Unknown";
    }

    if (a1 == 100)
    {
      return "Invalidated";
    }

    else
    {
      return "WiFi Available Listening Stopped";
    }
  }
}

uint64_t carPlayHelperSession_updateNetworkAndSessionState(const void *a1)
{
  v165 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  *__str = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  memset(v150, 0, sizeof(v150));
  v4 = *(DerivedStorage + 176) == 0;
  value = 0;
  cf = 0;
  v5 = 168;
  if (v4)
  {
    v5 = 160;
  }

  v6 = *(DerivedStorage + v5);
  v7 = (DerivedStorage + 177);
  v8 = (DerivedStorage + 112);
  if (*(DerivedStorage + 177))
  {
    if (*(DerivedStorage + 112))
    {
      if (*(DerivedStorage + 128))
      {
        v9 = *(DerivedStorage + 136);
        v10 = *(v3 + 144);
        if (FigCFEqual())
        {
          if (*(v3 + 200) - *(v3 + 120) > -*(v3 + 56))
          {
            v11 = *(v3 + 184);
            if (v11)
            {
              if ([v11 wirelessIPv6Addresses])
              {
                if ([objc_msgSend(*(v3 + 184) "wirelessIPv6Addresses")])
                {
                  v12 = CFDictionaryGetValue(v6, *(v3 + 128));
                  if (v12)
                  {
                    if (CFArrayGetCount(v12))
                    {
                      v13 = 1;
                      goto LABEL_71;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      if (!*v8)
      {
        v13 = 0;
        strcpy(__str, "<disabled>");
        goto LABEL_71;
      }

      if (!*(v3 + 128))
      {
        v13 = 0;
        strcpy(__str, "No Network SSID");
        goto LABEL_71;
      }

      v14 = *(v3 + 136);
      v15 = *(v3 + 144);
      v16 = FigCFEqual();
      if (v16)
      {
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v18 = snprintf(__str, 0x80uLL, "%sUUID Mismatch", "");
        v17 = 1;
      }

      if (*(v3 + 200) - *(v3 + 120) <= -*(v3 + 56))
      {
        v36 = "";
        if (!v16)
        {
          v36 = ", ";
        }

        v18 += snprintf(&__str[v18], 128 - v18, "%sSession Start Timeout", v36);
        v17 = 1;
      }

      v37 = *(v3 + 184);
      if (!v37 || ![v37 wirelessIPv6Addresses] || !objc_msgSend(objc_msgSend(*(v3 + 184), "wirelessIPv6Addresses"), "count"))
      {
        v38 = ", ";
        if (!v17)
        {
          v38 = "";
        }

        v18 += snprintf(&__str[v18], 128 - v18, "%sNo Remote IP", v38);
        v17 = 1;
      }

      v39 = CFDictionaryGetValue(v6, *(v3 + 128));
      if (!v39 || !CFArrayGetCount(v39))
      {
        v40 = ", ";
        if (!v17)
        {
          v40 = "";
        }

        snprintf(&__str[v18], 128 - v18, "%sNo Local IP", v40);
      }
    }

    v13 = 0;
LABEL_71:
    if (!*(v3 + 64) || !*(v3 + 80) || (v41 = *(v3 + 184)) == 0 || (*(v3 + 88) & 0x10) == 0 && (![v41 isWiredCarPlaySimulator] || (*(v3 + 88) & 8) == 0) || *(v3 + 200) - *(v3 + 72) <= -*(v3 + 56) || (v42 = *(v3 + 184)) == 0 || !objc_msgSend(v42, "wiredIPv6Addresses") || !objc_msgSend(objc_msgSend(*(v3 + 184), "wiredIPv6Addresses"), "count") || (v43 = CFDictionaryGetValue(v6, *(v3 + 80))) == 0 || !CFArrayGetCount(v43))
    {
      if (gLogCategory_APBrowserCarSessionHelper <= 50)
      {
        if (gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_139;
        }

        if (*(v3 + 64))
        {
          if (*(v3 + 80))
          {
            v44 = *(v3 + 200) - *(v3 + 72);
            v45 = -*(v3 + 56);
            if (v44 <= v45)
            {
              v46 = snprintf(v150, 0x80uLL, "%sSession Start Timeout", "");
              v47 = 1;
            }

            else
            {
              v46 = 0;
              v47 = 0;
            }

            v48 = *(v3 + 184);
            if (!v48 || ![v48 wiredIPv6Addresses] || !objc_msgSend(objc_msgSend(*(v3 + 184), "wiredIPv6Addresses"), "count"))
            {
              v49 = ", ";
              if (v44 > v45)
              {
                v49 = "";
              }

              v46 += snprintf(&v150[v46], 128 - v46, "%sNo Remote IP", v49);
              v47 = 1;
            }

            v50 = *(v3 + 184);
            if (!v50 || (*(v3 + 88) & 0x10) != 0 || [v50 isWiredCarPlaySimulator] && (*(v3 + 88) & 8) != 0)
            {
              goto LABEL_134;
            }

            v51 = *(v3 + 184);
            if (!v51)
            {
              goto LABEL_134;
            }

            v52 = [v51 isWiredCarPlaySimulator];
            v53 = *(v3 + 88);
            if (v52)
            {
              if ((v53 & 8) == 0)
              {
                v54 = "%sUSB transport type mismatch:%d, Sim:Yes";
LABEL_131:
                v60 = ", ";
                if (!v47)
                {
                  v60 = "";
                }

                v46 += snprintf(&v150[v46], 128 - v46, v54, v60, v53);
                v47 = 1;
              }
            }

            else if ((v53 & 8) != 0)
            {
              v54 = "%sUSB transport type mismatch:%d, Sim:No";
              goto LABEL_131;
            }

LABEL_134:
            v61 = CFDictionaryGetValue(v6, *(v3 + 80));
            if (!v61 || !CFArrayGetCount(v61))
            {
              v62 = ", ";
              if (!v47)
              {
                v62 = "";
              }

              snprintf(&v150[v46], 128 - v46, "%sNo Local IP", v62);
            }

            goto LABEL_139;
          }

          goto LABEL_94;
        }

LABEL_93:
        strcpy(v150, "<disabled>");
LABEL_139:
        v30 = 1;
        goto LABEL_140;
      }

LABEL_89:
      if (v13)
      {
LABEL_147:
        v66 = *(v3 + 128);
        CFRetain(v66);
        v67 = *(v3 + 184);
        if (v67)
        {
          v68 = [v67 wirelessIPv6Addresses];
        }

        else
        {
          v68 = 0;
        }

        v69 = 2;
        v70 = 1;
LABEL_191:
        v83 = *(v3 + 224);
        if (FigCFEqual())
        {
          if (gLogCategory_APBrowserCarSessionHelper <= 30 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
          {
            v84 = *(v3 + 64);
            if (*(v3 + 177))
            {
              if (*(v3 + 64))
              {
                v85 = "[Session/WiFi/USB]";
                v86 = "[Session/USB]";
LABEL_214:
                if (*(v3 + 112))
                {
                  v90 = v85;
                }

                else
                {
                  v90 = v86;
                }

                v128 = *(v3 + 224);
                v130 = v66;
                v126 = a1;
                v127 = v90;
                LogPrintF();
                goto LABEL_236;
              }

              v85 = "[Session/WiFi]";
            }

            else
            {
              if (*(v3 + 64))
              {
                v85 = "[Bonjour/WiFi/USB]";
                v86 = "[Bonjour/USB]";
                goto LABEL_214;
              }

              v85 = "[Bonjour/WiFi]";
            }

            v86 = "<Invalid>";
            goto LABEL_214;
          }

LABEL_236:
          if (!*v7 || !*(v3 + 224) || !*(v3 + 184))
          {
            Mutable = 0;
            v105 = 0;
            v106 = 0;
            *(v3 + 216) = 0;
            goto LABEL_309;
          }

          v138 = v69;
          v139 = v70;
          v137 = v8;
          v97 = a1;
          v144 = 0uLL;
          v146 = 0;
          v145 = 0;
          v98 = [v68 firstObject];
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v99 = [v68 countByEnumeratingWithState:&v140 objects:v149 count:16];
          if (v99)
          {
            v100 = v99;
            v101 = *v141;
            while (2)
            {
              for (i = 0; i != v100; ++i)
              {
                if (*v141 != v101)
                {
                  objc_enumerationMutation(v68);
                }

                v103 = *(*(&v140 + 1) + 8 * i);
                [v103 cStringUsingEncoding:{4, v126, v127, v128, v130, v131, v132, v133, v134, v135, v136}];
                StringToSockAddr();
                if (BYTE1(v144) == 30 && BYTE8(v144) == 254 && (BYTE9(v144) & 0xC0) == 0x80)
                {
                  v98 = v103;
                  goto LABEL_254;
                }

                if (BYTE1(v144) == 30)
                {
                  v98 = v103;
                }
              }

              v100 = [v68 countByEnumeratingWithState:&v140 objects:v149 count:16];
              if (v100)
              {
                continue;
              }

              break;
            }
          }

LABEL_254:
          if (!v98)
          {
            Mutable = 0;
            v105 = 0;
LABEL_308:
            v106 = 0;
            goto LABEL_309;
          }

          v107 = v97;
          Mutable = APSFeaturesCreateMutable();
          if (Mutable)
          {
            APSFeaturesSetFeature();
            APSFeaturesSetFeature();
            APSFeaturesSetFeature();
            APSFeaturesSetFeature();
            APSFeaturesSetFeature();
            if (![*(v3 + 184) supportsMutualAuthentication])
            {
              if (gLogCategory_APBrowserCarSessionHelper <= 30 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
              {
                carPlayHelperSession_updateNetworkAndSessionState_cold_2(v7, v3, v137);
              }

              APSFeaturesSetFeature();
              v105 = 0;
              goto LABEL_281;
            }

            APSFeaturesSetFeature();
            v108 = CFGetAllocator(v97);
            v105 = CFDictionaryCreateMutable(v108, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!v105)
            {
              carPlayHelperSession_updateNetworkAndSessionState_cold_8();
              goto LABEL_340;
            }

            CFDictionarySetValue(v105, @"authenticationCertificateSerial", [*(v3 + 184) authenticationCertificateSerial]);
            if (gLogCategory_APBrowserCarSessionHelper > 30 || gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_281;
            }

            v109 = *(v3 + 64);
            if (*(v3 + 177))
            {
              if (*(v3 + 64))
              {
                v110 = "[Session/WiFi/USB]";
                v111 = "[Session/USB]";
LABEL_277:
                if (*(v3 + 112))
                {
                  v112 = v110;
                }

                else
                {
                  v112 = v111;
                }

                v127 = v112;
                v128 = v105;
                v126 = v97;
                LogPrintF();
LABEL_281:
                if ([*(v3 + 184) pairedVehicleIdentifier])
                {
                  if (!v105)
                  {
                    v113 = CFGetAllocator(v97);
                    v105 = CFDictionaryCreateMutable(v113, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (!v105)
                    {
                      carPlayHelperSession_updateNetworkAndSessionState_cold_3();
                      goto LABEL_340;
                    }
                  }

                  CFDictionarySetValue(v105, @"pairedVehicleIdentifier", [objc_msgSend(*(v3 + 184) "pairedVehicleIdentifier")]);
                  if (gLogCategory_APBrowserCarSessionHelper <= 30 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
                  {
                    *(v3 + 64);
                    *(v3 + 112);
                    LogPrintF();
                  }
                }

                v114 = *(v3 + 192);
                if (!v114)
                {
LABEL_296:
                  v116 = APAdvertiserInfoCreate(*MEMORY[0x277CBECE8], &value);
                  if (v116)
                  {
                    v106 = v116;
                    carPlayHelperSession_updateNetworkAndSessionState_cold_5();
                    goto LABEL_309;
                  }

                  APAdvertiserInfoSetProperty(value, 0, @"airPlayVersion", 0, [*(v3 + 184) sourceVersion]);
                  APAdvertiserInfoSetProperty(value, 0, @"deviceID", 0, [*(v3 + 184) deviceIdentifier]);
                  APAdvertiserInfoSetProperty(value, 0, @"deviceName", 0, [*(v3 + 184) displayName]);
                  APAdvertiserInfoSetProperty(value, 0, @"featuresEx", 0, Mutable);
                  APAdvertiserInfoSetProperty(value, 0, @"publicCUAirPlayPairingIdentity", 0, [*(v3 + 184) publicKey]);
                  [v98 cStringUsingEncoding:4];
                  StringToSockAddr();
                  v117 = APSNetworkAddressCreateWithSocketAddr();
                  if (v117)
                  {
                    v106 = v117;
                    carPlayHelperSession_updateNetworkAndSessionState_cold_6();
                    goto LABEL_309;
                  }

                  [*(v3 + 184) port];
                  APSNetworkAddressSetPort();
                  v118 = *(v3 + 224);
                  APSNetworkAddressSetInterfaceName();
                  if (gLogCategory_APBrowserCarSessionHelper <= 30 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
                  {
                    *(v3 + 64);
                    *(v3 + 112);
                    LogPrintF();
                  }

                  v119 = CFGetAllocator(v97);
                  v120 = CFDictionaryCreateMutable(v119, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (v120)
                  {
                    v121 = v120;
                    CFDictionarySetValue(v120, @"advertiserInfo", value);
                    CFDictionarySetValue(v121, @"networkAddress", cf);
                    CFDictionarySetInt64();
                    if (v105)
                    {
                      CFDictionarySetValue(v121, @"sessionHostInfo", v105);
                    }

                    *(v3 + 208) = v138;
                    v122 = 0;
                    if (v139)
                    {
                      v122 = *(v3 + 120);
                    }

                    *(v3 + 216) = v122;
                    carPlayHelperSession_dispatchEvent(v107, 1, v121);
                    CFRelease(v121);
                    goto LABEL_308;
                  }

                  carPlayHelperSession_updateNetworkAndSessionState_cold_7();
                  goto LABEL_340;
                }

                if (v105)
                {
LABEL_292:
                  CFDictionarySetValue(v105, @"requestIdentifier", v114);
                  if (gLogCategory_APBrowserCarSessionHelper <= 30 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
                  {
                    *(v3 + 64);
                    *(v3 + 112);
                    v129 = *(v3 + 192);
                    LogPrintF();
                  }

                  goto LABEL_296;
                }

                v115 = CFGetAllocator(v97);
                v105 = CFDictionaryCreateMutable(v115, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v105)
                {
                  v114 = *(v3 + 192);
                  goto LABEL_292;
                }

                carPlayHelperSession_updateNetworkAndSessionState_cold_4();
LABEL_340:
                v106 = 4294954510;
                goto LABEL_309;
              }

              v110 = "[Session/WiFi]";
            }

            else
            {
              if (*(v3 + 64))
              {
                v110 = "[Bonjour/WiFi/USB]";
                v111 = "[Bonjour/USB]";
                goto LABEL_277;
              }

              v110 = "[Bonjour/WiFi]";
            }

            v111 = "<Invalid>";
            goto LABEL_277;
          }

          carPlayHelperSession_updateNetworkAndSessionState_cold_9();
LABEL_333:
          v105 = 0;
          goto LABEL_340;
        }

        if (gLogCategory_APBrowserCarSessionHelper > 30 || gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
        {
LABEL_224:
          v92 = *(v3 + 224);
          *(v3 + 224) = v66;
          if (v66)
          {
            CFRetain(v66);
          }

          if (v92)
          {
            CFRelease(v92);
          }

          v93 = CFGetAllocator(a1);
          v94 = CFDictionaryCreateMutable(v93, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v94)
          {
            carPlayHelperSession_updateNetworkAndSessionState_cold_10();
            Mutable = 0;
            goto LABEL_333;
          }

          v95 = v94;
          v96 = *(v3 + 224);
          if (v96)
          {
            CFDictionarySetValue(v94, @"interfaceName", v96);
          }

          if (*(v3 + 256) && *(v3 + 224))
          {
            CFDictionarySetValue(v95, @"setUpForOSTransaction", *MEMORY[0x277CBED28]);
            CFDictionarySetInt64();
          }

          else
          {
            *(v3 + 256) = 0;
          }

          carPlayHelperSession_dispatchEvent(a1, 0, v95);
          CFRelease(v95);
          goto LABEL_236;
        }

        v87 = *(v3 + 64);
        if (*(v3 + 177))
        {
          if (*(v3 + 64))
          {
            v88 = "[Session/WiFi/USB]";
            v89 = "[Session/USB]";
LABEL_220:
            if (*(v3 + 112))
            {
              v91 = v88;
            }

            else
            {
              v91 = v89;
            }

            v127 = v91;
            v128 = v66;
            v126 = a1;
            LogPrintF();
            goto LABEL_224;
          }

          v88 = "[Session/WiFi]";
        }

        else
        {
          if (*(v3 + 64))
          {
            v88 = "[Bonjour/WiFi/USB]";
            v89 = "[Bonjour/USB]";
            goto LABEL_220;
          }

          v88 = "[Bonjour/WiFi]";
        }

        v89 = "<Invalid>";
        goto LABEL_220;
      }

LABEL_176:
      v70 = 0;
      v69 = 0;
      v68 = 0;
      v66 = 0;
      goto LABEL_191;
    }

    goto LABEL_43;
  }

  if (*(DerivedStorage + 112) && *(DerivedStorage + 128) && (v19 = *(DerivedStorage + 136), v20 = *(v3 + 144), FigCFEqual()) && *(v3 + 152) - *(v3 + 120) > -*(v3 + 56) && (v21 = CFDictionaryGetValue(v6, *(v3 + 128))) != 0 && CFArrayGetCount(v21))
  {
    v13 = 1;
  }

  else if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    if (*v8)
    {
      if (*(v3 + 128))
      {
        v22 = v8;
        v23 = *(v3 + 136);
        v24 = *(v3 + 144);
        v25 = FigCFEqual();
        if (v25)
        {
          v26 = 0;
          v27 = 0;
        }

        else
        {
          v27 = snprintf(__str, 0x80uLL, "%sUUID Mismatch", "");
          v26 = 1;
        }

        if (*(v3 + 152) - *(v3 + 120) <= -*(v3 + 56))
        {
          v57 = "";
          if (!v25)
          {
            v57 = ", ";
          }

          v27 += snprintf(&__str[v27], 128 - v27, "%sSession Start Timeout", v57);
          v26 = 1;
        }

        v58 = CFDictionaryGetValue(v6, *(v3 + 128));
        if (!v58 || !CFArrayGetCount(v58))
        {
          v59 = ", ";
          if (!v26)
          {
            v59 = "";
          }

          snprintf(&__str[v27], 128 - v27, "%sNo Local IP", v59);
        }

        v13 = 0;
        v8 = v22;
      }

      else
      {
        v13 = 0;
        strcpy(__str, "No Network SSID");
      }
    }

    else
    {
      v13 = 0;
      strcpy(__str, "<disabled>");
    }
  }

  else
  {
    v13 = 0;
  }

  if (*(v3 + 64))
  {
    v28 = *(v3 + 80);
    if (v28)
    {
      if (*(v3 + 104) - *(v3 + 72) > -*(v3 + 56))
      {
        v29 = CFDictionaryGetValue(v6, v28);
        if (v29)
        {
          if (CFArrayGetCount(v29))
          {
LABEL_43:
            v30 = 0;
            goto LABEL_140;
          }
        }
      }
    }
  }

  if (gLogCategory_APBrowserCarSessionHelper > 50)
  {
    goto LABEL_89;
  }

  if (gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_139;
  }

  if (!*(v3 + 64))
  {
    goto LABEL_93;
  }

  v31 = *(v3 + 80);
  if (!v31)
  {
LABEL_94:
    strcpy(v150, "No Network Interface");
    goto LABEL_139;
  }

  v32 = v8;
  v33 = *(v3 + 104) - *(v3 + 72);
  v34 = -*(v3 + 56);
  if (v33 <= v34)
  {
    v35 = snprintf(v150, 0x80uLL, "%sSession Start Timeout", "");
    v31 = *(v3 + 80);
  }

  else
  {
    v35 = 0;
  }

  v55 = CFDictionaryGetValue(v6, v31);
  if (!v55 || !CFArrayGetCount(v55))
  {
    v56 = ", ";
    if (v33 > v34)
    {
      v56 = "";
    }

    snprintf(&v150[v35], 128 - v35, "%sNo Local IP", v56);
  }

  v30 = 1;
  v8 = v32;
LABEL_140:
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    v63 = *(v3 + 64);
    if (*(v3 + 177))
    {
      if (*(v3 + 64))
      {
        v64 = "[Session/WiFi/USB]";
        v65 = "[Session/USB]";
        goto LABEL_156;
      }

      v64 = "[Session/WiFi]";
    }

    else
    {
      if (*(v3 + 64))
      {
        v64 = "[Bonjour/WiFi/USB]";
        v65 = "[Bonjour/USB]";
        goto LABEL_156;
      }

      v64 = "[Bonjour/WiFi]";
    }

    v65 = "<Invalid>";
LABEL_156:
    if (*(v3 + 112))
    {
      v71 = v64;
    }

    else
    {
      v71 = v65;
    }

    v72 = "";
    v73 = " (";
    if (v30)
    {
      v74 = " (";
    }

    else
    {
      v74 = "";
    }

    if (v30)
    {
      v75 = ")";
    }

    else
    {
      v75 = "";
    }

    if (v30)
    {
      v76 = 78;
    }

    else
    {
      v76 = 89;
    }

    if (v13)
    {
      v73 = "";
    }

    else
    {
      v72 = ")";
    }

    v126 = a1;
    v127 = v71;
    v135 = v150;
    v136 = v75;
    v133 = v76;
    v134 = v74;
    if (v13)
    {
      v77 = 89;
    }

    else
    {
      v77 = 78;
    }

    v131 = __str;
    v132 = v72;
    v128 = v77;
    v130 = v73;
    LogPrintF();
    if (v13)
    {
      goto LABEL_147;
    }

    goto LABEL_175;
  }

  if (v13)
  {
    goto LABEL_147;
  }

LABEL_175:
  if (v30)
  {
    goto LABEL_176;
  }

  v78 = *(v3 + 80);
  CFRetain(v78);
  v79 = *(v3 + 184);
  if (!v79)
  {
    v70 = 0;
    v68 = 0;
    goto LABEL_190;
  }

  v68 = [v79 wiredIPv6Addresses];
  if (![*(v3 + 184) isWiredCarPlaySimulator] || !objc_msgSend(*(v3 + 184), "isRemoteDeviceConnected"))
  {
    v70 = 0;
LABEL_190:
    v69 = 1;
    v66 = v78;
    goto LABEL_191;
  }

  v66 = *(v3 + 96);
  if (v66)
  {
    CFRetain(*(v3 + 96));
    if (v78)
    {
      CFRelease(v78);
    }

    if (gLogCategory_APBrowserCarSessionHelper > 50 || gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_330;
    }

    v80 = *(v3 + 64);
    if (*(v3 + 177))
    {
      if (*(v3 + 64))
      {
        v81 = "[Session/WiFi/USB]";
        v82 = "[Session/USB]";
LABEL_326:
        if (*(v3 + 112))
        {
          v125 = v81;
        }

        else
        {
          v125 = v82;
        }

        v127 = v125;
        v128 = v66;
        v126 = a1;
        LogPrintF();
LABEL_330:
        v70 = 0;
        v69 = 1;
        goto LABEL_191;
      }

      v81 = "[Session/WiFi]";
    }

    else
    {
      if (*(v3 + 64))
      {
        v81 = "[Bonjour/WiFi/USB]";
        v82 = "[Bonjour/USB]";
        goto LABEL_326;
      }

      v81 = "[Bonjour/WiFi]";
    }

    v82 = "<Invalid>";
    goto LABEL_326;
  }

  carPlayHelperSession_updateNetworkAndSessionState_cold_1();
  Mutable = 0;
  v105 = 0;
  v106 = 4294960587;
  v66 = v78;
LABEL_309:
  if (v66)
  {
    CFRelease(v66);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  v123 = *MEMORY[0x277D85DE8];
  return v106;
}

uint64_t carPlayHelperSession_updateNetworkAndSessionState_cold_2(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = *(a2 + 64);
  v5 = *a3;
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_7_0();
}

void _APConnectivityHelperDispatchEventToClient(uint64_t a1, const void *a2, int a3, const void *a4)
{
  Value = CFDictionaryGetValue(*(a1 + 240), a2);
  if (Value)
  {
    if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      APConnectivityHelperGetEventString(a3);
      LogPrintF();
    }

    CFRetain(a1);
    CFRetain(a2);
    if (a4)
    {
      CFRetain(a4);
    }

    v9 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___APConnectivityHelperDispatchEventToClient_block_invoke;
    block[3] = &__block_descriptor_68_e5_v8__0l;
    block[4] = Value;
    block[5] = a1;
    v11 = a3;
    block[6] = a4;
    block[7] = a2;
    dispatch_async(v9, block);
  }

  else
  {
    _APConnectivityHelperDispatchEventToClient_cold_1(gLogCategory_APConnectivityHelper, a3);
  }
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return kdebug_trace();
}

void carPlayHelperSession_handleConnectivityHelperEvent(uint64_t a1, int a2, const void *a3, const void *a4)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  if (a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CFRetain(a4);
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke;
    block[3] = &unk_278BC9BE8;
    v10 = a2;
    block[4] = v11;
    block[5] = DerivedStorage;
    block[6] = a4;
    block[7] = a3;
    dispatch_async(v8, block);
  }

  _Block_object_dispose(v11, 8);
}

void _APConnectivityHelperHandleIPv6ChangedEvent(const __SCDynamicStore *a1, const __CFString *a2)
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
      _APConnectivityHelperHandleIPv6ChangedEvent_cold_1();
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
      _APConnectivityHelperHandleIPv6ChangedEvent_cold_2();
    }

    else
    {
      _APConnectivityHelperHandleIPv6ChangedEvent_cold_3();
    }
  }

  else
  {
    _APConnectivityHelperHandleIPv6ChangedEvent_cold_1();
  }

  CFRelease(v4);
  if (v3)
  {
LABEL_16:

    CFRelease(v3);
  }
}

void _APConnectivityHelperHandleIPv6ChangedEvent_cold_2()
{
  OUTLINED_FUNCTION_10_5();
  CFDictionarySetValue(v4, @"networkInterfaceName", v2);
  CFDictionarySetValue(v0, @"IPv6Addresses", v3);
  Count = CFArrayGetCount(v3);
  v6 = *(v1 + 128);
  if (Count)
  {
    CFDictionarySetValue(v6, v2, v0);
  }

  else
  {
    CFDictionaryRemoveValue(v6, v2);
  }

  if (_APConnectivityHelperDispatchEvent(v1, 6, v0))
  {
    APSLogErrorAt();
  }

  CFRelease(v0);
}

uint64_t __tcpunbuf_networkInfoUpdate_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (v1 > 0.0)
  {
    if (*(v2 + 256))
    {
      *(v2 + 248) = *(v2 + 248) + *(v2 + 240) * (v1 - *(v2 + 248));
    }

    else
    {
      *(v2 + 248) = v1;
      *(v2 + 256) = 1;
    }
  }

  if (*(v2 + 280))
  {
    *(v2 + 272) = *(v2 + 272) + *(v2 + 264) * (*(result + 48) - *(v2 + 272));
  }

  else
  {
    *(v2 + 272) = *(result + 48);
    *(v2 + 280) = 1;
  }

  *(v2 + 288) = *(result + 80);
  return result;
}

uint64_t stream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    stream_CopyProperty_cold_1(v16);
  }

  else
  {
    v9 = DerivedStorage;
    if (CFEqual(a2, *MEMORY[0x277CC1B28]))
    {
      v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, v9);
      *a4 = v10;
      if (!v10)
      {
        stream_CopyProperty_cold_2(v16);
      }
    }

    else
    {
      v11 = v9[2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __stream_CopyProperty_block_invoke;
      block[3] = &unk_278BC7DB8;
      block[4] = &v15;
      block[5] = a1;
      block[6] = a2;
      block[7] = a3;
      block[8] = a4;
      dispatch_sync(v11, block);
    }
  }

  v12 = *(v16[0] + 24);
  _Block_object_dispose(&v15, 8);
  return v12;
}

uint64_t stream_CopyProperty_0(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    stream_CopyProperty_cold_1_0();
    return 4294950679;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, *MEMORY[0x277CC1B28]))
  {
    v8 = 56;
    if (!*(v7 + 24))
    {
      v8 = 48;
    }

    v9 = *(v7 + v8);
    if (APTransportStreamIDGetStreamCategory(*v7) == 2 && !*(v9 + 9))
    {
      stream_CopyProperty_cold_3(&v15);
      return v15;
    }

    v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, v7);
    if (!v10)
    {
      stream_CopyProperty_cold_2_0();
      return 4294950685;
    }

    goto LABEL_12;
  }

  if (CFEqual(a2, @"IssueReporter"))
  {
    v12 = *(v7 + 8);
    if (v12)
    {
LABEL_11:
      v10 = CFRetain(v12);
LABEL_12:
      v13 = v10;
LABEL_13:
      result = 0;
      *a4 = v13;
      return result;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"NANDataSession"))
  {
    v12 = *(v7 + 16);
    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v14 = *(v7 + 64);

  return FigDispatchSyncCopyPropertyImplementation();
}

void tcpunbuf_networkInfoUpdate(uint64_t a1)
{
  v18 = 424;
  mach_absolute_time();
  v2 = UpTicksToNanoseconds();
  if (*(a1 + 180) == 5)
  {
    v3 = v2;
    v4 = *(a1 + 152);
    Value = APSWrapperGetValue();
    if (Value)
    {
      if ((v3 - *(a1 + 296)) >= 0x2FAF081)
      {
        v6 = Value;
        bzero(__src, 0x1A8uLL);
        if (getsockopt(*(v6 + 4), 6, 512, __src, &v18))
        {
          APSLogErrorAt();
          if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
          {
            v15 = *(v6 + 4);
            LogPrintF();
          }
        }

        else
        {
          v7 = *&__src[19];
          v8 = *&__src[21];
          v10 = *(a1 + 304);
          v9 = *(a1 + 312);
          *(a1 + 304) = *&__src[19];
          *(a1 + 312) = v8;
          v11 = 0.0;
          v12 = v7 - v10;
          if (v12)
          {
            v11 = (v8 - v9) / v12;
          }

          if (*(a1 + 320))
          {
            v13 = *&__src[33];
          }

          else
          {
            v13 = 8000000.0;
          }

          v14 = *(a1 + 232);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __tcpunbuf_networkInfoUpdate_block_invoke;
          block[3] = &__block_descriptor_tmp_29_0;
          *&block[4] = v13;
          block[5] = a1;
          *&block[6] = v11;
          memcpy(v17, __src, sizeof(v17));
          dispatch_sync(v14, block);
          if (gLogCategory_APTransportConnectionTCPUnbuffered <= 20 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          *(a1 + 296) = v3;
        }
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

double __tcpunbuf_networkInfoCopy_block_invoke(void *a1)
{
  v1 = a1[7];
  *(*(a1[4] + 8) + 24) = *(v1 + 248);
  result = *(v1 + 272);
  *(*(a1[5] + 8) + 24) = result;
  *(*(a1[6] + 8) + 24) = *(v1 + 288);
  return result;
}

uint64_t tcpunbuf_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"NetworkInfo"))
  {
    if (CFEqual(a2, @"MaxPackageSize"))
    {
      v18[0] = 0;
      v13 = *(DerivedStorage + 192);
      if (v13)
      {
        v14 = v13(v18);
        if (v14)
        {
          v16 = v14;
          tcpunbuf_CopyProperty_cold_1();
          return v16;
        }

        v15 = CFNumberCreate(a3, kCFNumberIntType, v18);
        *a4 = v15;
        if (!v15)
        {
          tcpunbuf_CopyProperty_cold_2();
          return 4294894973;
        }

        return 0;
      }

      tcpunbuf_CopyProperty_cold_3();
    }

    else if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
    {
      tcpunbuf_CopyProperty_cold_4();
    }

    return 4294954512;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = *(DerivedStorage + 232);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 0x40000000;
  v18[2] = __tcpunbuf_networkInfoCopy_block_invoke;
  v18[3] = &unk_278BC8AE0;
  v18[4] = &v27;
  v18[5] = &v23;
  v18[6] = &v19;
  v18[7] = DerivedStorage;
  dispatch_sync(v9, v18);
  v10 = v28[3];
  FigCFDictionarySetDouble();
  v11 = v24[3];
  FigCFDictionarySetDouble();
  v12 = *(v20 + 6);
  FigCFDictionarySetInt32();
  *a4 = Mutable;
  dispatch_async_f(*(DerivedStorage + 8), DerivedStorage, tcpunbuf_networkInfoUpdate);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  return 0;
}

uint64_t APTTrafficMetricsDataAvailable(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13(result);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_1_28();
    mach_absolute_time();
    OUTLINED_FUNCTION_0_10();
    v2 = *(v1 + 64);
    return APSRealTimeSignalRaise();
  }

  return result;
}

void tcpunbuf_signalDataAvailable(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  APTTrafficMetricsDataAvailable(*(DerivedStorage + 584));
  if (*(DerivedStorage + 168) && *(DerivedStorage + 176))
  {
    APSPriorityDispatchSourceResume();
    *(DerivedStorage + 176) = 0;
  }

  if (*(DerivedStorage + 340))
  {
    v3 = CMBaseObjectGetDerivedStorage();
    if (!*(v3 + 340))
    {
      return;
    }

    v4 = v3;
    v5 = CMBaseObjectGetDerivedStorage();
    if (*(v5 + 384))
    {
      goto LABEL_10;
    }

    v6 = v5;
    if (!*(v5 + 340))
    {
      goto LABEL_10;
    }

    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v5 + 8));
    *(v6 + 384) = v7;
    if (v7)
    {
      handler.value = MEMORY[0x277D85DD0];
      *&handler.timescale = 0x40000000;
      handler.epoch = __tcpunbuf_ensureStallMonitorTimerCreated_block_invoke;
      v11 = &__block_descriptor_tmp_61_0;
      v12 = a1;
      dispatch_source_set_event_handler(v7, &handler);
      dispatch_source_set_timer(*(v6 + 384), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_resume(*(v6 + 384));
LABEL_10:
      handler = *(v4 + 360);
      Seconds = CMTimeGetSeconds(&handler);
      v9 = dispatch_time(0, (Seconds * 1000000000.0));
      dispatch_source_set_timer(*(v4 + 384), v9, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      return;
    }

    APSLogErrorAt();
    APSLogErrorAt();
    if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {

    tcpunbuf_requestAndSendData(a1);
  }
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return APSLogErrorAt();
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_0_10()
{
  v2 = *(v0 + 56);

  return APSAtomicMessageQueueSendMessage();
}

uint64_t APTransportPackageGetClassID()
{
  if (_MergedGlobals_3 != -1)
  {
    APTransportPackageGetClassID_cold_1();
  }

  return qword_281309B60;
}

uint64_t aptTrafficMetrics_handleQueuedEvents(uint64_t a1)
{
  if (!a1 || !*(a1 + 56))
  {
    return aptTrafficMetrics_handleQueuedEvents_cold_2();
  }

  for (result = APSAtomicMessageQueueReadMessage(); result; result = APSAtomicMessageQueueReadMessage())
  {
    v3 = **(a1 + 16);
    if (v3 <= 10)
    {
      if (v3 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        v5 = *(a1 + 16);
      }

      v6 = *(a1 + 24);
      LogPrintF();
    }

LABEL_8:
    v4 = *(a1 + 56);
  }

  return result;
}

uint64_t stream_SignalDataAvailable()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __stream_SignalDataAvailable_block_invoke;
  v4[3] = &unk_278BC7F80;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t tcpunbuf_SignalDataAvailable(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_async_f(*(DerivedStorage + 8), a1, tcpunbuf_signalDataAvailable);
  return 0;
}

void __stream_readyToSendCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 24))
  {
    __stream_readyToSendCallback_block_invoke_cold_1();
  }

  else
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      *(*(*(a1 + 32) + 8) + 24) = v2(*(v1 + 80), *(a1 + 64), *(*(a1 + 40) + 8) + 24);
    }

    else
    {
      __stream_readyToSendCallback_block_invoke_cold_2(a1);
    }
  }
}

uint64_t APTransportPackageScreenCreateWithBBuf(uint64_t a1, const void *a2, void *a3)
{
  v8 = 0;
  APTransportPackageGetClassID();
  v5 = CMDerivedObjectCreate();
  v6 = v5;
  if (v5)
  {
    APTransportPackageScreenCreateWithBBuf_cold_1(v5, &v8);
  }

  else
  {
    *CMBaseObjectGetDerivedStorage() = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (gLogCategory_APTransportPackageScreen <= 30 && (gLogCategory_APTransportPackageScreen != -1 || _LogCategory_Initialize()))
    {
      APTransportPackageScreenCreateWithBBuf_cold_2(&v8);
    }

    *a3 = v8;
  }

  return v6;
}

void tcpunbuf_canWriteData(void **a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 340))
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 180) == 5)
    {
      APTTrafficMetricsCanWriteData(*(DerivedStorage + 584));
      if (*(v4 + 392) == 1)
      {
        *(v4 + 392) = 0;
        if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_9();
        }
      }

      dispatch_source_set_timer(*(v4 + 384), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    }
  }

  v5 = *a1;

  tcpunbuf_requestAndSendData(v5);
}

void tcpunbuf_requestAndSendData(void *a1)
{
  v39 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 152);
  Value = APSWrapperGetValue();
  if (*(DerivedStorage + 180) != 5)
  {
    v6 = 0;
    *(DerivedStorage + 224) = -72320;
    goto LABEL_42;
  }

  v5 = Value;
  if (*(DerivedStorage + 72) && *(DerivedStorage + 568))
  {
    v6 = 0;
    goto LABEL_24;
  }

  v7 = *(DerivedStorage + 200);
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 208))
  {
LABEL_60:
    if (*(DerivedStorage + 168) && !*(DerivedStorage + 176))
    {
      APSPriorityDispatchSourceSuspend();
      *(DerivedStorage + 176) = 1;
    }

    v6 = 0;
    *(DerivedStorage + 224) = 0;
    goto LABEL_52;
  }

  v8 = (*(DerivedStorage + 184))(*MEMORY[0x277CBECE8], &cf);
  if (!v8)
  {
    APTTrafficMetricsRequestDataStarted(*(DerivedStorage + 584));
    (*(DerivedStorage + 208))(*(DerivedStorage + 216), &cf, *(DerivedStorage + 224));
    APTTrafficMetricsRequestDataFinished(*(DerivedStorage + 584));
    if (cf || (APTTrafficMetricsConsumedAllData(*(DerivedStorage + 584)), cf))
    {
      v9 = *(DerivedStorage + 200);
      FigSimpleMutexUnlock();
      v10 = cf;
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v11 && (v12 = v11(v10)) != 0)
      {
        v6 = v12;
        IOVecArrayWithBlockBuffer = FigMakeIOVecArrayWithBlockBuffer();
        if (!IOVecArrayWithBlockBuffer)
        {
          v14 = cf;
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 136);
          if (v15)
          {
            v16 = v15(v14) == 0;
          }

          else
          {
            v16 = 1;
          }

          v17 = CMBaseObjectGetDerivedStorage();
          if (*(v17 + 342))
          {
            if (*(v17 + 344) != v16)
            {
              *(v17 + 344) = v16;
              v18 = *(v17 + 152);
              v19 = APSWrapperGetValue();
              tcpunbuf_setAggregationSocketOption(*(v19 + 4), v16);
              if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }
            }
          }

          if (!*(DerivedStorage + 72))
          {
            goto LABEL_29;
          }

          *(DerivedStorage + 560) = DerivedStorage + 400;
          *(DerivedStorage + 568) = v39;
          v20 = *(DerivedStorage + 576);
          *(DerivedStorage + 576) = v6;
          CFRetain(v6);
          if (v20)
          {
            CFRelease(v20);
          }

LABEL_24:
          if (*(DerivedStorage + 72))
          {
            v21 = *(DerivedStorage + 568);
            if (v21 >= 1)
            {
              v22 = 0;
              v23 = (*(DerivedStorage + 560) + 8);
              do
              {
                v24 = *v23;
                v23 += 2;
                v22 += v24;
                --v21;
              }

              while (v21);
            }

            goto LABEL_30;
          }

LABEL_29:
          CMBlockBufferGetDataLength(v6);
LABEL_30:
          APTTrafficMetricsSendStarted(*(DerivedStorage + 584));
          if (*(DerivedStorage + 72))
          {
            NetSocket_GetNative();
            v25 = (DerivedStorage + 568);
            v26 = SocketWriteData();
            if (v26 == 35)
            {
              v34 = *v25;
              if (*v25 >= 1)
              {
                v35 = 0;
                v36 = (*(DerivedStorage + 560) + 8);
                do
                {
                  v37 = *v36;
                  v36 += 2;
                  v35 += v37;
                  --v34;
                }

                while (v34);
              }

              if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
              {
                tcpunbuf_requestAndSendData_cold_3();
              }
            }

            else
            {
              v27 = v26;
              v28 = *(DerivedStorage + 576);
              if (v28)
              {
                CFRelease(v28);
                *(DerivedStorage + 576) = 0;
              }

              *v25 = 0;
              if (v27)
              {
                APSLogErrorAt();
                if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                *(DerivedStorage + 224) = v27;
                if (*(DerivedStorage + 180) == 5)
                {
                  dispatch_async_f(*(DerivedStorage + 8), a1, tcpunbuf_requestAndSendData);
                }

                goto LABEL_42;
              }
            }

            goto LABEL_39;
          }

          v29 = (*(v5 + 40))(v5, DerivedStorage + 400, v39, *(DerivedStorage + 328));
          if (!v29)
          {
LABEL_39:
            APTTrafficMetricsSendFinished(*(DerivedStorage + 584));
            tcpunbuf_networkInfoUpdate(DerivedStorage);
            if (!*(DerivedStorage + 340))
            {
              dispatch_async_f(*(DerivedStorage + 8), a1, tcpunbuf_requestAndSendData);
            }

            goto LABEL_41;
          }

          v30 = v29;
          if (v29 == -6723)
          {
LABEL_41:
            *(DerivedStorage + 224) = 0;
            goto LABEL_42;
          }

          APSLogErrorAt();
          if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_48;
        }

        v30 = IOVecArrayWithBlockBuffer;
        tcpunbuf_requestAndSendData_cold_2();
      }

      else
      {
        v30 = -72323;
        tcpunbuf_requestAndSendData_cold_4();
        v6 = 0;
      }

LABEL_48:
      v31 = 1;
      goto LABEL_49;
    }

    goto LABEL_60;
  }

  v30 = v8;
  tcpunbuf_requestAndSendData_cold_1();
  v31 = 0;
  v6 = 0;
LABEL_49:
  v32 = *(DerivedStorage + 180);
  *(DerivedStorage + 224) = v30;
  if (v32 == 5)
  {
    dispatch_async_f(*(DerivedStorage + 8), a1, tcpunbuf_requestAndSendData);
  }

  if ((v31 & 1) == 0)
  {
LABEL_52:
    v33 = *(DerivedStorage + 200);
    FigSimpleMutexUnlock();
  }

LABEL_42:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t APTTrafficMetricsCanWriteData(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13(result);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_1_28();
    mach_absolute_time();
    OUTLINED_FUNCTION_0_10();
    v2 = *(v1 + 64);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTTrafficMetricsRequestDataStarted(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13(result);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_1_28();
    mach_absolute_time();
    OUTLINED_FUNCTION_0_10();
    v2 = *(v1 + 64);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTransportPackageScreenCreate(uint64_t a1, void *a2)
{
  v2 = APTransportPackageScreenCreateWithBBuf(a1, 0, a2);
  if (v2)
  {
    APTransportPackageScreenCreate_cold_1();
  }

  return v2;
}

void stream_readyToSendCallback(uint64_t a1, CFTypeRef *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (a2)
  {
    v6 = *(DerivedStorage + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __stream_readyToSendCallback_block_invoke;
    block[3] = &unk_278BC7F58;
    block[6] = DerivedStorage;
    block[7] = a2;
    v20 = a3;
    block[4] = &v25;
    block[5] = &v21;
    dispatch_sync(v6, block);
    v7 = v26[3];
    v8 = *a2;
    if (v7)
    {
      v9 = *a2;
      VTable = CMBaseObjectGetVTable();
      v11 = *(*(VTable + 16) + 16);
      if (v11)
      {
        v12 = *(VTable + 16) + 16;
        v11(v8, v7);
      }

      v13 = *a2;
      v14 = *(v22 + 6);
      v15 = CMBaseObjectGetVTable();
      v16 = *(*(v15 + 16) + 32);
      if (v16)
      {
        v17 = *(v15 + 16) + 32;
        v16(v13, v14);
      }
    }

    else if (v8)
    {
      CFRelease(*a2);
      *a2 = 0;
    }
  }

  else
  {
    stream_readyToSendCallback_cold_1();
  }

  v18 = v26[3];
  if (v18)
  {
    CFRelease(v18);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void screenpackage_SetMessageData(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  *DerivedStorage = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t APTTrafficMetricsConsumedAllData(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13(result);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_1_28();
    mach_absolute_time();
    OUTLINED_FUNCTION_0_10();
    v2 = *(v1 + 64);
    return APSRealTimeSignalRaise();
  }

  return result;
}

CFTypeRef screenpackage_CreateBBufRepresentation()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *DerivedStorage;
  if (*DerivedStorage)
  {
    CFRetain(*DerivedStorage);
  }

  return v1;
}

void screenpackage_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageScreen <= 30 && (gLogCategory_APTransportPackageScreen != -1 || _LogCategory_Initialize()))
  {
    screenpackage_Finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t APTTrafficMetricsRequestDataFinished(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13(result);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_1_28();
    mach_absolute_time();
    OUTLINED_FUNCTION_0_10();
    v2 = *(v1 + 64);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTTrafficMetricsSendFinished(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13(result);
    kdebug_trace();
    OUTLINED_FUNCTION_1_28();
    mach_absolute_time();
    OUTLINED_FUNCTION_3_11();
    v2 = *(v1 + 64);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTTrafficMetricsSendStarted(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13(result);
    OUTLINED_FUNCTION_10_9();
    OUTLINED_FUNCTION_1_28();
    mach_absolute_time();
    OUTLINED_FUNCTION_3_11();
    v2 = *(v1 + 64);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t httpconnection_handleEvent(uint64_t a1, void *a2)
{
  v6 = *(a1 + 384);
  dataPointerOut = 0;
  v47 = 0;
  if (!v6)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_10_3();
    v7 = 0;
LABEL_65:
    v29 = 0;
    DataLength = 0;
    v34 = 0;
    v44 = 400;
    goto LABEL_41;
  }

  v4 = a2;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    OUTLINED_FUNCTION_10_3();
    goto LABEL_65;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 232))
  {
    APSPowerAssertionRaise();
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v3 = dispatch_semaphore_create(0);
  if (!v3)
  {
    APSLogErrorAt();
    LODWORD(v10) = 0;
LABEL_18:
    v22 = 400;
    goto LABEL_19;
  }

  v9 = *(DerivedStorage + 272);
  FigSimpleMutexLock();
  v10 = (*(DerivedStorage + 296) + 1);
  *(DerivedStorage + 296) = v10;
  *(DerivedStorage + 280) = v3;
  dispatch_retain(v3);
  v11 = *(DerivedStorage + 272);
  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_11_3();
  if (v14 ^ v15 | v13 && (v12 != -1 || OUTLINED_FUNCTION_8()))
  {
    v41 = v4[1066];
    v40 = v4[1027];
    OUTLINED_FUNCTION_3_1();
    LogPrintF();
  }

  if (APTransportPackageHTTPCreateWithHTTPMessage(*MEMORY[0x277CBECE8], v4, &v47))
  {
    APSLogErrorAt();
    goto LABEL_18;
  }

  v16 = v47;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v17)
  {
    v17(v16, 1937337955);
  }

  v18 = v47;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v19)
  {
    v19(v18, v10);
  }

  v20 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __httpconnection_handleEvent_block_invoke;
  block[3] = &__block_descriptor_tmp_108;
  block[4] = v7;
  block[5] = v47;
  block[6] = v3;
  dispatch_sync(v20, block);
  v21 = dispatch_time(0, 5000000000);
  if (!dispatch_semaphore_wait(v3, v21))
  {
    goto LABEL_18;
  }

  APSLogErrorAt();
  v22 = 408;
LABEL_19:
  v44 = v22;
  v23 = *(DerivedStorage + 272);
  FigSimpleMutexLock();
  v24 = *(DerivedStorage + 280);
  v4 = *(DerivedStorage + 288);
  *(DerivedStorage + 288) = 0;
  if (v24)
  {
    dispatch_release(v24);
    *(DerivedStorage + 280) = 0;
  }

  v25 = *(DerivedStorage + 272);
  FigSimpleMutexUnlock();
  v43 = v8;
  if (!v4)
  {
    v35 = 0;
    v29 = 0;
    DataLength = 0;
    v34 = 0;
LABEL_41:
    v42 = 1;
    goto LABEL_42;
  }

  v26 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v26)
  {
    v27 = v26(v4) == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v28)
  {
    v29 = v28(v4);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v30)
  {
    v31 = v30(v4);
  }

  else
  {
    v31 = 0;
  }

  if (v31 == v10 && (!v27 ? (v32 = v44) : (v32 = 200), v44 = v32, v29))
  {
    DataLength = CMBlockBufferGetDataLength(v29);
    if (DataLength)
    {
      CMBlockBufferGetDataPointer(v29, 0, 0, 0, &dataPointerOut);
      v42 = 0;
      v34 = "application/x-apple-binary-plist";
      v35 = dataPointerOut;
      goto LABEL_42;
    }

    v35 = 0;
    v42 = 0;
  }

  else
  {
    v35 = 0;
    v42 = 0;
    DataLength = 0;
  }

  v34 = 0;
LABEL_42:
  v36 = MEMORY[0x23EEDD8F0](a1, v44, 0, v34, v35, DataLength);
  if (v36)
  {
    v37 = 90;
  }

  else
  {
    v37 = 50;
  }

  if (v37 >= gLogCategory_APTransportConnectionHTTP && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v43)
  {
    v38 = *(DerivedStorage + 232);
    APSPowerAssertionRelease();
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if ((v42 & 1) == 0)
  {
    CFRelease(v4);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v36;
}

_BYTE *httpconnection_callEventCallbacks(const void *a1, uint64_t a2, const void *a3, NSObject *a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v8 = result;
    if (a3)
    {
      CFRetain(a3);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a4)
    {
      dispatch_retain(a4);
    }

    v9 = *(v8 + 10);
    return APSDispatchAsyncFHelper();
  }

  return result;
}

uint64_t APTransportPackageHTTPCreateWithHTTPMessage(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (a2)
  {
    v3 = httppackage_createWithHTTPMessage(a1, a2, a3);
    if (v3)
    {
      APTransportPackageHTTPCreateWithHTTPMessage_cold_1();
    }
  }

  else
  {
    APTransportPackageHTTPCreateWithHTTPMessage_cold_2();
    return 4294960591;
  }

  return v3;
}

CMBlockBufferRef httppackage_CopyMessageData(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  blockBufferOut = 0;
  v22 = 0;
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    blockBufferOut = CFRetain(v3);
  }

  else
  {
    v4 = *(DerivedStorage + 24);
    v5 = *(v4 + 8528);
    if (v5)
    {
      v6 = *(v4 + 8520);
      HIDWORD(customBlockSource.AllocateBlock) = 0;
      *&customBlockSource.version = 0;
      customBlockSource.FreeBlock = httppackage_bbufFree;
      customBlockSource.refCon = CFRetain(a1);
      v7 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v6, v5, *MEMORY[0x277CBED00], &customBlockSource, 0, v5, 0, &blockBufferOut);
      if (v7)
      {
        httppackage_CopyMessageData_cold_1(v7, &customBlockSource, &blockBufferOut);
        return blockBufferOut;
      }
    }

    else
    {
      v12 = 0;
      *&customBlockSource.version = 0;
      time.value = 0;
      v13 = 1;
      do
      {
        v14 = v13;
        v15 = *(*(DerivedStorage + 24) + 8216);
        v16 = off_278BC9858[v12];
        if (!HTTPGetHeaderField())
        {
          break;
        }

        v13 = 0;
        v12 = 1;
      }

      while ((v14 & 1) != 0);
    }
  }

  v8 = *(*(DerivedStorage + 24) + 8216);
  HTTPGetHeaderField();
  if (v23)
  {
    v20.tv_sec = 0;
    *&v20.tv_usec = 0;
    v18 = 0;
    v19 = 0;
    *&customBlockSource.version = *MEMORY[0x277CC08F0];
    *(&customBlockSource.FreeBlock + 4) = *(MEMORY[0x277CC08F0] + 16);
    gettimeofday(&v20, 0);
    if (ParseFractionalDateString())
    {
      APSLogErrorAt();
    }

    else
    {
      CMTimeMake(&customBlockSource, 1000000 * (v20.tv_sec - v18) - v19 + v20.tv_usec, 1000000);
      v9 = *MEMORY[0x277CBECE8];
      *&time.value = *&customBlockSource.version;
      time.epoch = *(&customBlockSource.FreeBlock + 4);
      v10 = CMTimeCopyAsDictionary(&time, v9);
      CMSetAttachment(blockBufferOut, *MEMORY[0x277CEA358], v10, 0);
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  return blockBufferOut;
}

uint64_t httppackage_SetReplySequenceNumber(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 44) = a2;
  return result;
}

uint64_t httppackage_createWithHTTPMessage(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  APTransportPackageGetClassID();
  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    httppackage_createWithHTTPMessage_cold_1();
    goto LABEL_34;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = HTTPMessageCopy();
    *(DerivedStorage + 24) = v6;
    if (v17)
    {
      httppackage_createWithHTTPMessage_cold_2();
      goto LABEL_34;
    }

    *(v6 + 9672) = *(a2 + 9672);
    *(v6 + 9680) = *(a2 + 9680);
    *(v6 + 9696) = *(a2 + 9696);
  }

  else
  {
    v17 = HTTPMessageCreate();
    if (v17)
    {
      httppackage_createWithHTTPMessage_cold_3();
      goto LABEL_34;
    }

    v6 = *(DerivedStorage + 24);
  }

  *(DerivedStorage + 40) = 1634957678;
  v7 = *(v6 + 8248);
  if (!v7)
  {
    if (*(v6 + 8272))
    {
      if (gLogCategory_APTransportPackageHTTP > 60)
      {
LABEL_26:
        *a3 = cf;
        return v17;
      }

      if (gLogCategory_APTransportPackageHTTP == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        v12 = *(v6 + 8272);
      }

      v14 = *(v6 + 8264);
      v15 = *(v6 + 8392);
      LogPrintF();
    }

LABEL_23:
    if (gLogCategory_APTransportPackageHTTP <= 30 && (gLogCategory_APTransportPackageHTTP != -1 || _LogCategory_Initialize()))
    {
      httppackage_createWithHTTPMessage_cold_4(&cf);
    }

    goto LABEL_26;
  }

  v8 = *(v6 + 8240);
  v9 = *(v6 + 8344);
  v10 = *(v6 + 8352);
  if (httppackage_matchIncomingMessageMethodAndURL(v8, v7, "SETUP", v9, v10, ""))
  {
    v11 = 1937012080;
LABEL_22:
    *(DerivedStorage + 8) = v11;
    v17 = 0;
    goto LABEL_23;
  }

  if (httppackage_matchIncomingMessageMethodAndURL(v8, v7, "TEARDOWN", v9, v10, ""))
  {
    v11 = 1952741230;
    goto LABEL_22;
  }

  if (httppackage_matchIncomingMessageMethodAndURL(v8, v7, "POST", v9, v10, "/event"))
  {
    v11 = 1702260340;
    goto LABEL_22;
  }

  if (httppackage_matchIncomingMessageMethodAndURL(v8, v7, "POST", v9, v10, "/command"))
  {
    v11 = 1668116068;
    goto LABEL_22;
  }

  APSLogErrorAt();
  if (gLogCategory_APTransportPackageHTTP <= 50 && (gLogCategory_APTransportPackageHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v17 = -16643;
  APSLogErrorAt();
LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t httppackage_SetPackageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 40) = a2;
  return result;
}

uint64_t httppackage_GetGroupID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 32);
  if (!result)
  {
    result = *(DerivedStorage + 24);
    if (result)
    {
      HTTPMessageGetHeaderField();
      return 0;
    }
  }

  return result;
}

uint64_t httpconnection_AcquirePackage(const void *a1, CFTypeRef *a2)
{
  v3 = CFGetAllocator(a1);
  v4 = APTransportPackageHTTPCreate(v3, a2);
  if (v4)
  {
    httpconnection_AcquirePackage_cold_1();
  }

  else if (gLogCategory_APTransportConnectionHTTP <= 30 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    v6 = *a2;
    LogPrintF();
  }

  return v4;
}

void httppackage_SetMessageData(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (a2)
  {
    CFRetain(a2);
  }

  *(DerivedStorage + 16) = a2;
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t httpconnection_SendPackage(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v5 && v5(a2) == 1919970425)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v6)
    {
      v7 = v6(a2);
    }

    else
    {
      v7 = 0;
    }

    v10 = *(DerivedStorage + 272);
    FigSimpleMutexLock();
    v11 = *(DerivedStorage + 280);
    if (v11 && *(DerivedStorage + 296) == v7)
    {
      if (a2)
      {
        v12 = CFRetain(a2);
        v11 = *(DerivedStorage + 280);
      }

      else
      {
        v12 = 0;
      }

      *(DerivedStorage + 288) = v12;
      dispatch_semaphore_signal(v11);
    }

    else if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v13 = *(DerivedStorage + 272);
    FigSimpleMutexUnlock();
  }

  else
  {
    CFRetain(a1);
    CFRetain(a2);
    v8 = *(DerivedStorage + 8);
    APSDispatchAsyncFHelper();
  }

  return 0;
}

uint64_t httppackage_SetReplyToken(uint64_t a1, unint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(result + 24);
  *(v4 + 9680) = HIDWORD(a2);
  *(v4 + 9688) = a2;
  return result;
}

uint64_t httpconnection_RelinquishPackage(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

BOOL httppackage_matchIncomingMessageMethodAndURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = strncmpx();
  v8 = strncmp_prefix();
  v9 = strncmpx();
  v10 = strncmp_prefix();
  if (v7)
  {
    if (v8)
    {
      return 0;
    }

    return *a6 == 0;
  }

  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  result = v12;
  if (!v12 && !v8)
  {
    return *a6 == 0;
  }

  return result;
}

_BYTE *__httpconnection_handleEvent_block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v4)
  {
    v4(v2);
  }

  return httpconnection_callEventCallbacks(v1, 7, v2, v3);
}

void httppackage_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageHTTP <= 30 && (gLogCategory_APTransportPackageHTTP != -1 || _LogCategory_Initialize()))
  {
    httppackage_Finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }
}

uint64_t APTransportPackageGetTypeID()
{
  if (_MergedGlobals_3 != -1)
  {
    APTransportPackageGetClassID_cold_1();
  }

  v1 = qword_281309B60;

  return MEMORY[0x282111A98](v1);
}

uint64_t httpconnection_iterateOnEventCallbacks(int a1, CFArrayRef theArray, _BYTE **a3)
{
  CFArrayGetValueAtIndex(theArray, 2);
  v7 = *(*a3 + 2);
  v6 = *(*a3 + 2);
  CFArrayGetValueAtIndex(theArray, 1);
  CFArrayGetValueAtIndex(theArray, 0);
  result = APSDispatchSyncTask();
  if (!result)
  {
    *a3[1] = 1;
  }

  return result;
}

uint64_t stream_handleEventFromSendConnection(int a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a3);
  if (a2)
  {
    CFRetain(a2);
  }

  v7 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __stream_handleEventFromSendConnection_block_invoke;
  block[3] = &__block_descriptor_tmp_21;
  v10 = a1;
  block[4] = a3;
  block[5] = a2;
  dispatch_async(v7, block);
  return 0;
}

void stream_handleEventFromConnection(const void *a1, int a2, const void *a3, char a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v9 = *(DerivedStorage + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __stream_handleEventFromConnection_block_invoke;
  v10[3] = &__block_descriptor_tmp_173;
  v11 = a2;
  v10[4] = a1;
  v10[5] = a3;
  v12 = a4;
  v10[6] = DerivedStorage;
  dispatch_async(v9, v10);
}

void httpconnection_deferCallEventCallbackForGroupID(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  context[0] = a1;
  context[1] = &v10;
  v4 = *(DerivedStorage + 96);
  if (*(a1 + 32))
  {
    CFDictionaryApplyFunction(*(DerivedStorage + 96), httpconnection_iterateOnEventCallbacks, context);
  }

  else
  {
    v5 = a1[5];
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      httpconnection_iterateOnEventCallbacks(TypedValue, TypedValue, context);
    }
  }

  if (!v10 && a1[3])
  {
    if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      httpconnection_deferCallEventCallbackForGroupID_cold_1(a1);
    }

    dispatch_semaphore_signal(a1[3]);
  }

  v7 = a1[2];
  if (v7)
  {
    CFRelease(v7);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v8 = a1[3];
  if (v8)
  {
    dispatch_release(v8);
  }
}

void __stream_handleEventFromConnection_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 48;
  if (!*(a1 + 60))
  {
    v5 = 56;
  }

  v6 = *(*(a1 + 48) + v5);
  v69 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v68 = 0;
  theData = 0;
  if (*(DerivedStorage + 72))
  {
    v65 = -16617;
    goto LABEL_144;
  }

  v8 = DerivedStorage;
  if (v2 == 7)
  {
    v9 = 30;
  }

  else
  {
    v9 = 50;
  }

  if (v9 >= gLogCategory_APTransportStream && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
  {
    if ((v2 - 1) < 6)
    {
      v10 = off_278BCA018[v2 - 1];
    }

    v11 = *(v6 + 24);
    if (gLogCategory_APTransportStream == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

  if (*(v6 + 9))
  {
    if (v4)
    {
      v12 = CFGetTypeID(v4);
      if (v12 == APTransportPackageGetTypeID())
      {
        v13 = v8[12];
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        v15 = v14 ? v14(v4) : 0;
        if (v13 != v15)
        {
          APSLogErrorAt();
          v65 = -16618;
          goto LABEL_144;
        }
      }
    }

    switch(v2)
    {
      case 1:
      case 2:
      case 3:
        stream_recordConnectionEvent(v3, v2, v4);
        goto LABEL_131;
      case 4:
        *(v6 + 16) = 0;
        if (gLogCategory_APTransportStream <= 90 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (*(v6 + 9))
        {
          *(v6 + 8) = 0;
          if (v4)
          {
            v48 = CFGetTypeID(v4);
            if (v48 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v4, kCFNumberSInt32Type, (v6 + 12));
              FigCreateBlockBufferCopyingMemoryBlock();
            }
          }

          CFRetain(v3);
          if (v68)
          {
            CFRetain(v68);
          }

          v49 = v8[23];
          OUTLINED_FUNCTION_2_19();
          v71 = 0x40000000;
          v72 = __stream_eventReceived_block_invoke_2_0;
          v73 = &__block_descriptor_tmp_188;
          v74 = v8;
          v75 = v3;
          v76 = v50;
          dispatch_async(v51, &valuePtr);
        }

        OUTLINED_FUNCTION_13_6();
        goto LABEL_121;
      case 5:
        stream_recordConnectionEvent(v3, 5, v4);
        if (v8[6] == v8[7])
        {
          goto LABEL_34;
        }

        CMBaseObject = APTransportConnectionGetCMBaseObject(*(v6 + 24));
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v17)
        {
          v69 = v17(CMBaseObject, @"RemoteNetworkIPAddress", 0, &cf);
          if (!v69)
          {
            v18 = *(v6 + 40);
            v19 = cf;
            *(v6 + 40) = cf;
            if (v19)
            {
              CFRetain(v19);
            }

            if (v18)
            {
              CFRelease(v18);
            }

LABEL_34:
            v20 = *(v6 + 24);
            *(v6 + 76) = APSGetFBOPropertyInt64();
            if (v69)
            {
              if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8_0()))
              {
                OUTLINED_FUNCTION_7_0();
              }

              v69 = 0;
            }

            v58 = APTransportConnectionGetCMBaseObject(*(v6 + 24));
            v59 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v59)
            {
              v69 = v59(v58, @"LocalNetworkIPAddress", 0, &theData);
              if (!v69 && theData)
              {
                if (CFDataGetLength(theData) == 28)
                {
                  v83.location = 0;
                  v83.length = 28;
                  CFDataGetBytes(theData, v83, (v6 + 48));
LABEL_119:
                  *(v6 + 16) = 0;
                  if (*(v6 + 9))
                  {
                    *(v6 + 8) = 1;
                    *(v6 + 12) = 0;
                    CFRetain(v3);
                    v60 = v8[23];
                    OUTLINED_FUNCTION_1_27();
                    v71 = 0x40000000;
                    v72 = __stream_eventReceived_block_invoke_0;
                    v73 = &__block_descriptor_tmp_186;
                    v74 = v8;
                    v75 = v3;
                    dispatch_async(v61, &valuePtr);
                  }

LABEL_121:
                  v39 = *v6;
LABEL_122:
                  dispatch_semaphore_signal(v39);
                  goto LABEL_131;
                }

                APSLogErrorAt();
                v65 = -6742;
LABEL_144:
                v69 = v65;
                goto LABEL_131;
              }
            }

            else
            {
              v69 = -12782;
            }

            if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8_0()))
            {
              OUTLINED_FUNCTION_7_0();
            }

            v69 = 0;
            goto LABEL_119;
          }
        }

        else
        {
          v69 = -12782;
        }

        APSLogErrorAt();
        goto LABEL_131;
      case 6:
        *(v6 + 16) = 0;
        *(v6 + 8) = 0;
        if (v4)
        {
          v25 = CFGetTypeID(v4);
          if (v25 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
            FigCreateBlockBufferCopyingMemoryBlock();
          }
        }

        CFRetain(v3);
        if (v68)
        {
          CFRetain(v68);
        }

        v40 = v8[23];
        OUTLINED_FUNCTION_2_19();
        v71 = 0x40000000;
        v72 = __stream_eventReceived_block_invoke_3_0;
        v73 = &__block_descriptor_tmp_189;
        v74 = v8;
        v75 = v3;
        v76 = v41;
        dispatch_async(v42, &valuePtr);
        OUTLINED_FUNCTION_13_6();
        goto LABEL_131;
      case 7:
        v26 = CMBaseObjectGetDerivedStorage();
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v27)
        {
          v28 = v27(v4);
        }

        else
        {
          v28 = 0;
        }

        v29 = 1634957678;
        v30 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (v30)
        {
          v29 = v30(v4);
        }

        if (*(v26 + 72))
        {
          v63 = -16617;
          if (v28)
          {
LABEL_129:
            CFRelease(v28);
          }
        }

        else
        {
          v31 = *(v26 + 24);
          v32 = v31 == 0;
          v33 = 56;
          if (v31)
          {
            v34 = 56;
          }

          else
          {
            v34 = 48;
          }

          if (!v32)
          {
            v33 = 48;
          }

          v35 = *(v26 + v33);
          if (v29 == 1937337955)
          {
            v81[0] = 0;
            v81[1] = v81;
            v81[2] = 0x2000000000;
            v82 = 0;
            v46 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v46)
            {
              v47 = v46(v4);
            }

            else
            {
              v47 = 0;
            }

            v54 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            if (v54)
            {
              v55 = v54(v4);
            }

            else
            {
              v55 = 0;
            }

            if (*(v35 + 9))
            {
              CFRetain(v3);
              if (v4)
              {
                CFRetain(v4);
              }

              if (v28)
              {
                CFRetain(v28);
              }

              v56 = *(v26 + 184);
              OUTLINED_FUNCTION_1_27();
              v71 = 0x40000000;
              v72 = __stream_packageReceived_block_invoke_2;
              v73 = &unk_278BC9FA8;
              v74 = v81;
              v75 = v26;
              v76 = v3;
              v77 = v4;
              v78 = v28;
              v79 = v47;
              v80 = v55;
              dispatch_async(v57, &valuePtr);
            }

            _Block_object_dispose(v81, 8);
          }

          else if (v29 == 1919970425)
          {
            v43 = *(v26 + v34);
            v44 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v44)
            {
              v45 = v44(v4);
            }

            else
            {
              v45 = 0;
            }

            if (v45 == v3)
            {
              if (*(v43 + 9))
              {
                v52 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                v53 = v52 ? v52(v4) : 0;
                *(v26 + 152) = v53;
                *(v26 + 160) = v28;
                v28 = 0;
              }

              else
              {
                *(v26 + 152) = -16613;
              }

              v62 = *(v26 + 168);
              if (v62)
              {
                dispatch_semaphore_signal(v62);
              }
            }
          }

          else if (v29 == 1634957678 && *(v35 + 9))
          {
            CFRetain(v3);
            if (v4)
            {
              CFRetain(v4);
            }

            if (v28)
            {
              CFRetain(v28);
            }

            v36 = *(v26 + 184);
            OUTLINED_FUNCTION_1_27();
            v71 = 0x40000000;
            v72 = __stream_packageReceived_block_invoke_0;
            v73 = &__block_descriptor_tmp_196;
            v74 = v26;
            v75 = v3;
            v76 = v4;
            v77 = v28;
            dispatch_async(v37, &valuePtr);
          }

          v63 = 0;
          if (v28)
          {
            goto LABEL_129;
          }
        }

        v69 = v63;
        goto LABEL_131;
      case 8:
        v21 = CMBaseObjectGetDerivedStorage();
        if (*(v21 + 72))
        {
          goto LABEL_131;
        }

        v22 = v21;
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        v24 = v23 ? v23(v4) : 0;
        if (v24 != v3)
        {
          goto LABEL_131;
        }

        *(v22 + 152) = -16612;
        v38 = *(v22 + 160);
        if (v38)
        {
          CFRelease(v38);
          *(v22 + 160) = 0;
        }

        v39 = *(v22 + 168);
        goto LABEL_122;
      default:
        goto LABEL_131;
    }
  }

  if ((v2 - 4) <= 2)
  {
    *(v6 + 16) = v2;
  }

LABEL_131:
  if (v68)
  {
    CFRelease(v68);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v69 && v69 != -16618)
  {
    APSLogErrorAt();
  }

  v64 = *(a1 + 40);
  if (v64)
  {
    CFRelease(v64);
  }

  CFRelease(*(a1 + 32));
}

void __stream_packageReceived_block_invoke_2(uint64_t a1)
{
  v18 = 0;
  v2 = *(*(a1 + 40) + 208);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v6 = v5(v4);
    }

    else
    {
      v6 = 0;
    }

    v2(v3, v6, *(a1 + 64), *(*(a1 + 40) + 192), &v18);
  }

  OUTLINED_FUNCTION_8_1();
  *(v8 + 24) = v7;
  OUTLINED_FUNCTION_8_1();
  if (*(v9 + 24) != -16618)
  {
    CFRetain(*(a1 + 48));
    if (v18)
    {
      CFRetain(v18);
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(*(a1 + 40) + 64);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 0x40000000;
    v16[2] = __stream_packageReceived_block_invoke_3;
    v16[3] = &unk_278BC9F80;
    v12 = *(a1 + 48);
    v13 = *(a1 + 72);
    v17 = *(a1 + 80);
    v16[4] = *(a1 + 32);
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v10;
    dispatch_async(v11, v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(*(a1 + 48));
}

void __stream_packageReceived_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v51 = 0;
  if (*(DerivedStorage + 72))
  {
    __stream_packageReceived_block_invoke_3_cold_1();
    v10 = 0;
  }

  else
  {
    v8 = DerivedStorage;
    v9 = 48;
    if (!*(DerivedStorage + 24))
    {
      v9 = 56;
    }

    v10 = *(DerivedStorage + v9);
    v11 = *(v10 + 24);
    VTable = CMBaseObjectGetVTable();
    v13 = *(*(VTable + 16) + 32);
    if (!v13 || (v14 = *(VTable + 16) + 32, v13(v11, &v51)))
    {
      __stream_packageReceived_block_invoke_3_cold_3();
    }

    else
    {
      v15 = v51;
      v16 = CMBaseObjectGetVTable();
      v17 = *(*(v16 + 16) + 16);
      if (v17)
      {
        v18 = *(v16 + 16) + 16;
        v17(v15, v5);
      }

      v19 = *(v8 + 96);
      if (v19)
      {
        v20 = v51;
        v21 = CMBaseObjectGetVTable();
        v22 = *(*(v21 + 16) + 72);
        if (v22)
        {
          v23 = *(v21 + 16) + 72;
          v22(v20, v19);
        }
      }

      v24 = v51;
      v25 = CMBaseObjectGetVTable();
      v26 = *(*(v25 + 16) + 48);
      if (v26)
      {
        v27 = *(v25 + 16) + 48;
        v26(v24, v6);
      }

      v28 = v51;
      v29 = CMBaseObjectGetVTable();
      v30 = *(*(v29 + 16) + 104);
      if (v30)
      {
        v31 = *(v29 + 16) + 104;
        v30(v28, v4);
      }

      v32 = v51;
      v33 = CMBaseObjectGetVTable();
      v34 = *(*(v33 + 16) + 160);
      if (v34)
      {
        v35 = *(v33 + 16) + 160;
        v34(v32, v2);
      }

      v36 = v51;
      v37 = CMBaseObjectGetVTable();
      v38 = *(*(v37 + 16) + 88);
      if (v38)
      {
        v39 = *(v37 + 16) + 88;
        v38(v36, 1919970425);
      }

      if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v40 = *(v10 + 24);
      v41 = v51;
      v42 = CMBaseObjectGetVTable();
      v43 = *(*(v42 + 16) + 56);
      if (!v43 || (v44 = *(v42 + 16) + 56, v43(v40, v41)))
      {
        __stream_packageReceived_block_invoke_3_cold_2();
      }
    }
  }

  v45 = v51;
  if (v51)
  {
    v46 = *(v10 + 24);
    v47 = CMBaseObjectGetVTable();
    v48 = *(*(v47 + 16) + 48);
    if (v48)
    {
      v49 = *(v47 + 16) + 48;
      v48(v46, v45);
    }
  }

  v50 = *(a1 + 56);
  if (v50)
  {
    CFRelease(v50);
  }

  CFRelease(*(a1 + 40));
}

uint64_t httppackage_SetReplyStatus(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 48) = a2;
  return result;
}

uint64_t APTransportPackageHTTPCreate(uint64_t a1, CFTypeRef *a2)
{
  v2 = httppackage_createWithHTTPMessage(a1, 0, a2);
  if (v2)
  {
    APTransportPackageHTTPCreate_cold_1();
  }

  return v2;
}

void httpconnection_stallMonitorCancelledCallback(const void *a1)
{
  httpconnection_checkIfNetworkStalled();

  CFRelease(a1);
}

void standardKeepAliveController_sendKeepAliveCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v20 = 0;
  context[0] = a1;
  context[1] = &v20;
  dispatch_sync_f(*(DerivedStorage + 16), context, standardKeepAliveController_copyTransportStreamCallback);
  if (!v20)
  {
    standardKeepAliveController_sendKeepAliveCallback_cold_4();
    v6 = -71761;
    goto LABEL_22;
  }

  if (*(DerivedStorage + 32))
  {
    if (gLogCategory_APTransportKeepAliveControllerStandard <= 30 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      standardKeepAliveController_sendKeepAliveCallback_cold_1();
    }

    v3 = v20;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v4)
    {
      v6 = -12782;
      goto LABEL_21;
    }

    v5 = v4(v3, 1818977637, 0, 0);
    if (v5)
    {
      v6 = v5;
LABEL_21:
      APSLogErrorAt();
LABEL_22:
      *&v21.timescale = 0;
      if (a1)
      {
        v12 = CFRetain(a1);
      }

      else
      {
        v12 = 0;
      }

      v21.value = v12;
      v21.timescale = v6;
      v13 = *(DerivedStorage + 8);
LABEL_40:
      APSDispatchAsyncFHelper();
      goto LABEL_41;
    }
  }

  else
  {
    if (gLogCategory_APTransportKeepAliveControllerStandard <= 30 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      standardKeepAliveController_sendKeepAliveCallback_cold_2();
    }

    v7 = v20;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v8)
    {
      v6 = -12782;
      goto LABEL_21;
    }

    v9 = v8(v7, 1801807216, 0, &v22);
    if (v9)
    {
      v6 = v9;
      goto LABEL_21;
    }

    v10 = v22;
    context[0] = v22;
    v11 = CMBaseObjectGetDerivedStorage();
    if (v10)
    {
      v10 = CFDictionaryCreate(*MEMORY[0x277CBECE8], kAPTransportKeepAliveControllerNotificationKey_BlockBuffer, context, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    if (gLogCategory_APTransportKeepAliveControllerStandard <= 30 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(v11 + 33))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  context[0] = a1;
  v17 = *MEMORY[0x277CC0898];
  *&context[1] = *MEMORY[0x277CC0898];
  v14 = *(MEMORY[0x277CC0898] + 16);
  context[3] = v14;
  dispatch_sync_f(*(DerivedStorage + 16), context, standardKeepAliveController_setKeepAliveReceivedCallback);
  v21 = *&context[1];
  CMTimeMake(context, *(DerivedStorage + 36), 1000);
  time1 = v21;
  if (CMTimeCompare(&time1, context) >= 1 && gLogCategory_APTransportKeepAliveControllerStandard <= 60 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    standardKeepAliveController_sendKeepAliveCallback_cold_3(&v21);
  }

  CMTimeMake(context, 10, 1);
  time1 = v21;
  if (CMTimeCompare(&time1, context) >= 1)
  {
    *(DerivedStorage + 128) = v17;
    *(DerivedStorage + 144) = v14;
    memset(&context[1], 0, 32);
    if (a1)
    {
      v15 = CFRetain(a1);
    }

    else
    {
      v15 = 0;
    }

    context[0] = v15;
    LOBYTE(context[1]) = 0;
    *(&context[1] + 4) = v21;
    v16 = *(DerivedStorage + 8);
    goto LABEL_40;
  }

LABEL_41:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t standardKeepAliveController_copyTransportStreamCallback(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(CMBaseObjectGetDerivedStorage() + 40);
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  *a1[1] = result;
  return result;
}

void standardKeepAliveController_timerFiredCallback(void *a1)
{
  if (a1)
  {
    v29 = v1;
    v30 = v2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    memset(&v23, 0, sizeof(v23));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v23, HostTimeClock);
    lhs[0] = v23;
    standardKeepAliveController_timerFiredCheck(a1, lhs, 1);
    if (*(DerivedStorage + 92))
    {
      v6 = CMBaseObjectGetDerivedStorage();
      v28 = **&MEMORY[0x277CC0898];
      epoch = v28.epoch;
      v22 = *&v28.value;
      v27 = v28;
      v8 = CMClockGetHostTimeClock();
      CMClockGetTime(&v28, v8);
      ++*(v6 + 152);
      lhs[0] = v28;
      rhs = *(v6 + 80);
      CMTimeSubtract(&v27, lhs, &rhs);
      if (gLogCategory_APTransportKeepAliveControllerStandard <= 60 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
      {
        standardKeepAliveController_timerFiredCallback_cold_1(&v27.value, v6 + 152, a1, v9, v10, v11, v12, v13);
      }

      CMTimeMake(lhs, 10, 1);
      rhs = v27;
      if ((CMTimeCompare(&rhs, lhs) & 0x80000000) == 0)
      {
        *&rhs.value = v22;
        rhs.epoch = epoch;
        lhs[0] = v28;
        time1 = *(v6 + 128);
        CMTimeSubtract(&rhs, lhs, &time1);
        if ((*(v6 + 140) & 1) == 0 || (CMTimeMake(lhs, 180, 1), time1 = rhs, CMTimeCompare(&time1, lhs) >= 1))
        {
          memset(&lhs[0].timescale, 0, 32);
          lhs[0].value = CFRetain(a1);
          LOBYTE(lhs[0].timescale) = 1;
          *(v6 + 128) = v28;
          ++*(v6 + 156);
          if (gLogCategory_APTransportKeepAliveControllerStandard <= 60 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
          {
            standardKeepAliveController_timerFiredCallback_cold_2(&v27.value, v6 + 156, a1, v14, v15, v16, v17, v18);
          }

          *&lhs[0].flags = v27;
          v19 = *(v6 + 8);
          APSDispatchAsyncFHelper();
          IsAppleInternalBuild();
          if (IsAppleInternalBuild())
          {
            v20 = 50;
          }

          else
          {
            v20 = 30;
          }

          if (v20 >= gLogCategory_APTransportKeepAliveControllerStandard)
          {
            if (gLogCategory_APTransportKeepAliveControllerStandard != -1 || (IsAppleInternalBuild(), _LogCategory_Initialize()))
            {
              standardKeepAliveController_timerFiredCallback_cold_3();
            }
          }

          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.airplay.connection.stalled", 0, 0, 1u);
        }
      }
    }

    else
    {
      CFRetain(a1);
      *(DerivedStorage + 80) = v23;
      dispatch_async_f(*DerivedStorage, a1, standardKeepAliveController_sendKeepAliveCallback);
    }
  }
}

uint64_t stream_copyPackageForBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3, char *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 72))
  {
    stream_copyPackageForBBuf_cold_1();
    return 4294950679;
  }

  v8 = DerivedStorage;
  if (!a2)
  {
    goto LABEL_11;
  }

  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v21 = 0;
  DataPointer = CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, &v21, &dataPointerOut);
  if (DataPointer)
  {
    v15 = DataPointer;
    goto LABEL_23;
  }

  if (lengthAtOffsetOut == v21)
  {
    v10 = *(v8 + 40);
    if (v10)
    {
      APTransportStreamSendBackingProviderCopyPackageForAcquiredBBuf(v10, a2, &cf);
    }

    else
    {
      Value = CFDictionaryGetValue(*(v8 + 112), dataPointerOut);
      cf = Value;
      if (!Value)
      {
LABEL_11:
        v13 = *(v8 + 40);
        if (v13)
        {
          v14 = APTransportStreamSendBackingProviderCopyPackageForGivenBBuf(v13, a2, &cf);
          if (v14)
          {
            v15 = v14;
            stream_copyPackageForBBuf_cold_2();
            return v15;
          }

          goto LABEL_13;
        }

        v17 = 56;
        if (!*(v8 + 24))
        {
          v17 = 48;
        }

        v18 = *(*(v8 + v17) + 24);
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v19)
        {
          v20 = v19(v18, &cf);
          if (!v20)
          {
            if (cf)
            {
              CFRetain(cf);
            }

LABEL_13:
            v12 = 1;
            goto LABEL_14;
          }

          v15 = v20;
        }

        else
        {
          v15 = 4294954514;
        }

LABEL_23:
        APSLogErrorAt();
        return v15;
      }

      CFRetain(Value);
    }
  }

  if (!cf)
  {
    goto LABEL_11;
  }

  v12 = 0;
LABEL_14:
  v15 = 0;
  *a3 = cf;
  *a4 = v12;
  return v15;
}

uint64_t httppackage_SetMessageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = a2;
  return result;
}

void httpconnection_httpResponseReceived(uint64_t a1)
{
  v2 = *(a1 + 9672);
  v3 = *(a1 + 9696);
  cf = 0;
  mach_absolute_time();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v7 = DerivedStorage;
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v8)
      {
        v8(v3);
      }

      if (v7[61])
      {
        v9 = UpTicksToMilliseconds();
        v7[61] = 0;
        v7[58] += v9;
        if (!HTTPMessageGetHeaderField())
        {
          SNScanF();
          v10 = v9 + v7[60];
          v7[59] = v7[59];
          v7[60] = v10;
        }
      }

      if ((*(a1 + 8456) - 100) > 0x1F3)
      {
        httpconnection_callEventCallbacks(v5, 8, v3, 0);
      }

      else
      {
        if (gLogCategory_APTransportConnectionHTTP <= 30)
        {
          if (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize())
          {
            v11 = v7[33];
            HTTPClientGetClientID();
            LogPrintF();
          }

          if (gLogCategory_APTransportConnectionHTTP < 11 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
          {
            v12 = *(a1 + 8216);
            v13 = *(a1 + 8520);
            v14 = *(a1 + 8528);
            LogHTTP();
          }
        }

        v15 = *(a1 + 8216);
        v16 = *(a1 + 8528);
        APTTrafficMetricsResponseReceived(v7[63]);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (!v17 || v17(v3) != 1937337955)
        {
          goto LABEL_29;
        }

        if (!APTransportPackageHTTPCreateWithHTTPMessage(*MEMORY[0x277CBECE8], a1, &cf))
        {
          v18 = cf;
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 88);
          if (v19)
          {
            v19(v18, 1919970425);
          }

          v20 = cf;
          v21 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v21)
          {
            v22 = v21(v3);
          }

          else
          {
            v22 = 0;
          }

          v23 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (v23)
          {
            v23(v20, v22);
          }

          httpconnection_callEventCallbacks(v5, 7, cf, 0);
LABEL_29:
          v24 = CMBaseObjectGetDerivedStorage();
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(&v29, HostTimeClock);
          *(v24 + 376) = v29;
          v26 = *(v24 + 372) - 1;
          *(v24 + 372) = v26;
          if (!v26)
          {
            v27 = *(v24 + 424);
            if (v27)
            {
              dispatch_source_cancel(*(v24 + 424));
              dispatch_release(v27);
              *(v24 + 424) = 0;
            }
          }

          goto LABEL_32;
        }

        APSLogErrorAt();
      }
    }

LABEL_32:
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void stream_sendMessageExpectingReplyInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  cf = 0;
  v31 = 0;
  if (*(DerivedStorage + 72))
  {
    stream_sendMessageExpectingReplyInternal_cold_1();
    v6 = 0;
    v21 = -16617;
  }

  else
  {
    v5 = 56;
    if (!*(DerivedStorage + 24))
    {
      v5 = 48;
    }

    v6 = *(DerivedStorage + v5);
    if (*(v6 + 9))
    {
      v7 = stream_copyPackageForBBuf(*a1, *(a1 + 16), &cf, &v31);
      if (v7)
      {
        v21 = v7;
        stream_sendMessageExpectingReplyInternal_cold_2();
      }

      else
      {
        v8 = cf;
        v9 = *(a1 + 8);
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v10)
        {
          v10(v8, v9);
        }

        v11 = *(a1 + 16);
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v12)
        {
          v12(v8, v11);
        }

        v13 = *a1;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v14)
        {
          v14(v8, v13);
        }

        v15 = *(v4 + 96);
        if (v15)
        {
          v16 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (v16)
          {
            v16(v8, v15);
          }
        }

        v17 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v17)
        {
          v17(v8, 1937337955);
        }

        if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
        {
          v29 = *(a1 + 16);
          v30 = *a1;
          v28 = *(a1 + 8);
          LogPrintF();
        }

        v18 = *(v6 + 24);
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v19)
        {
          v20 = v19(v18, v8);
          if (!v20)
          {
            goto LABEL_28;
          }

          v21 = v20;
        }

        else
        {
          v21 = -12782;
        }

        APSLogErrorAt();
      }
    }

    else
    {
      stream_sendMessageExpectingReplyInternal_cold_3();
      v21 = -16614;
    }
  }

  if (!*(v4 + 72))
  {
    *(v4 + 152) = v21;
    dispatch_semaphore_signal(*(v4 + 168));
  }

LABEL_28:
  if (v31)
  {
    v22 = *(v4 + 40);
    if (v22)
    {
      APTransportStreamSendBackingProviderRelinquishBBuf(v22, *(a1 + 16));
    }

    else
    {
      v25 = *(v6 + 24);
      v26 = cf;
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v27)
      {
        v27(v25, v26);
      }
    }
  }

  CFRelease(*a1);
  v23 = *(a1 + 16);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = cf;
  if (cf)
  {

    CFRelease(v24);
  }
}

void httpconnection_sendPackageInternal(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 108) != 5)
  {
    goto LABEL_30;
  }

  v4 = DerivedStorage;
  if (!*(DerivedStorage + 264))
  {
    httpconnection_sendPackageInternal_cold_6();
LABEL_30:
    httpconnection_sendPackageInternal_cold_7(a1);
    goto LABEL_24;
  }

  if (*(DerivedStorage + 360))
  {
    CFObjectSetValue();
  }

  v5 = (a1 + 1);
  APTransportPackageHTTPSetURL(a1[1], *(v4 + 280));
  v6 = APTransportPackageHTTPGetHTTPMessage(a1[1]);
  if (!v6)
  {
    httpconnection_sendPackageInternal_cold_5();
    goto LABEL_30;
  }

  v7 = v6;
  ++*(v4 + 272);
  HTTPHeader_SetField();
  if (*(v4 + 336))
  {
    v23 = *(v4 + 328);
    HTTPHeader_SetField();
    v24 = *(v4 + 336);
    HTTPHeader_SetField();
  }

  if (*(v4 + 32))
  {
    v25 = *(v4 + 32);
    HTTPHeader_SetField();
  }

  v7[1209] = CFRetain(*(v4 + 216));
  v8 = *v5;
  v7[1212] = *v5;
  if (v8)
  {
    CFRetain(v8);
  }

  v7[1214] = httpconnection_httpResponseReceived;
  if (gLogCategory_APTransportConnectionHTTP <= 30)
  {
    if (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize())
    {
      httpconnection_sendPackageInternal_cold_1(a1, a1 + 1);
    }

    if (gLogCategory_APTransportConnectionHTTP <= 10 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      httpconnection_sendPackageInternal_cold_2(v7);
    }
  }

  v9 = v7[1027];
  v10 = v7[1066];
  APTTrafficMetricsSendStarted(*(v4 + 504));
  *(v4 + 488) = mach_absolute_time();
  v11 = *(v4 + 264);
  v12 = HTTPClientSendMessage();
  v13 = v7[1027];
  v14 = v7[1066];
  APTTrafficMetricsSendFinished(*(v4 + 504));
  if (v12)
  {
    httpconnection_sendPackageInternal_cold_3();
    goto LABEL_30;
  }

  v15 = *a1;
  v16 = CMBaseObjectGetDerivedStorage();
  if (!*(v16 + 372))
  {
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v26, HostTimeClock);
    *(v16 + 376) = v26;
    v18 = CMBaseObjectGetDerivedStorage();
    v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (!*(v18 + 424))
    {
      v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v18 + 8));
      *(v18 + 424) = v20;
      if (v20)
      {
        dispatch_set_context(v20, v19);
        dispatch_source_set_event_handler_f(*(v18 + 424), httpconnection_checkIfNetworkStalled);
        dispatch_source_set_cancel_handler_f(*(v18 + 424), httpconnection_stallMonitorCancelledCallback);
        v21 = *(v18 + 424);
        v22 = dispatch_time(0, 2000000000);
        dispatch_source_set_timer(v21, v22, 0x77359400uLL, 0x174876E800uLL);
        dispatch_resume(*(v18 + 424));
        goto LABEL_23;
      }

      httpconnection_sendPackageInternal_cold_4();
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

LABEL_23:
  ++*(v16 + 372);
LABEL_24:
  CFRelease(a1[1]);
  CFRelease(*a1);
}

uint64_t APTransportPackageHTTPGetHTTPMessage(void *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  data = 0;
  v48 = 0;
  v4 = *(DerivedStorage + 8);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  if (v4 <= 1885435251)
  {
    if (v4 > 1768842862)
    {
      if (v4 <= 1835428127)
      {
        if (v4 <= 1818977636)
        {
          switch(v4)
          {
            case 1768842863:
              v6 = 0;
              goto LABEL_145;
            case 1785750887:
              v6 = 0;
              goto LABEL_144;
            case 1801807216:
              v6 = 0;
              goto LABEL_145;
          }

          goto LABEL_208;
        }

        if (v4 > 1819243875)
        {
          if (v4 == 1819243876)
          {
            v6 = 0;
            goto LABEL_144;
          }

          if (v4 == 1835100003)
          {
            v6 = 0;
            goto LABEL_144;
          }

          goto LABEL_208;
        }

        if (v4 != 1818977637)
        {
          if (v4 == 1819240307)
          {
            v6 = 0;
            goto LABEL_145;
          }

          goto LABEL_208;
        }

        goto LABEL_97;
      }

      if (v4 <= 1885430127)
      {
        if (v4 == 1835428128)
        {
          v6 = 0;
          goto LABEL_145;
        }

        if (v4 != 1835428205)
        {
          if (v4 == 1852796517)
          {
            v6 = 0;
            goto LABEL_144;
          }

          goto LABEL_208;
        }

        v5 = 0;
      }

      else if (v4 > 1885434479)
      {
        if (v4 == 1885434480)
        {
          v5 = 0;
        }

        else
        {
          if (v4 != 1885434725)
          {
            goto LABEL_208;
          }

          v5 = 0;
        }
      }

      else if (v4 == 1885430128)
      {
        v5 = 0;
      }

      else
      {
        if (v4 != 1885432944)
        {
          goto LABEL_208;
        }

        v5 = 0;
      }
    }

    else
    {
      if (v4 <= 1668247141)
      {
        if (v4 <= 1634627170)
        {
          switch(v4)
          {
            case 1633907822:
              v6 = 0;
              goto LABEL_145;
            case 1634562925:
              v6 = 0;
              goto LABEL_145;
            case 1634624360:
              v6 = 0;
              goto LABEL_144;
          }

          goto LABEL_208;
        }

        if (v4 <= 1635087463)
        {
          if (v4 == 1634627171)
          {
            v6 = 0;
            goto LABEL_144;
          }

          if (v4 == 1634956656)
          {
            v5 = 0;
            goto LABEL_128;
          }

LABEL_208:
          if (gLogCategory_APTransportPackageHTTP <= 50 && (gLogCategory_APTransportPackageHTTP != -1 || _LogCategory_Initialize()))
          {
            APTransportPackageHTTPGetHTTPMessage_cold_21();
          }

          APSLogErrorAt();
          goto LABEL_212;
        }

        if (v4 != 1635087464)
        {
          if (v4 == 1668246893)
          {
            v6 = 0;
            goto LABEL_145;
          }

          goto LABEL_208;
        }

LABEL_97:
        v6 = 0;
        goto LABEL_145;
      }

      if (v4 > 1718628916)
      {
        if (v4 <= 1735422065)
        {
          if (v4 == 1718628917)
          {
            v6 = 0;
            goto LABEL_145;
          }

          if (v4 == 1718839394)
          {
            v6 = 0;
            goto LABEL_144;
          }

          goto LABEL_208;
        }

        if (v4 != 1735422066)
        {
          if (v4 == 1735815020)
          {
            v6 = 0;
            goto LABEL_144;
          }

          goto LABEL_208;
        }

LABEL_104:
        v5 = 1;
        goto LABEL_128;
      }

      if (v4 == 1668247142)
      {
        v6 = 0;
        goto LABEL_145;
      }

      if (v4 == 1702064240)
      {
        v6 = 0;
        goto LABEL_145;
      }

      if (v4 != 1718383464)
      {
        goto LABEL_208;
      }

      v5 = 1;
    }

    goto LABEL_128;
  }

  if (v4 <= 1936024938)
  {
    if (v4 > 1886613611)
    {
      if (v4 <= 1918984563)
      {
        if (v4 == 1886613612)
        {
          v6 = 0;
          goto LABEL_145;
        }

        if (v4 == 1886614892)
        {
          v6 = 0;
          goto LABEL_145;
        }

        v7 = 1886809964;
      }

      else
      {
        if (v4 > 1919119971)
        {
          if (v4 == 1919119972)
          {
            v6 = 0;
            goto LABEL_144;
          }

          if (v4 != 1920164128)
          {
            goto LABEL_208;
          }

          goto LABEL_97;
        }

        if (v4 == 1918984564)
        {
          v6 = 0;
          goto LABEL_145;
        }

        v7 = 1918989413;
      }

      if (v4 != v7)
      {
        goto LABEL_208;
      }

      v5 = 1;
      goto LABEL_128;
    }

    if (v4 <= 1886283374)
    {
      switch(v4)
      {
        case 1885435252:
          v5 = 0;
          break;
        case 1885435493:
          v5 = 0;
          break;
        case 1886151033:
          v6 = 0;
          goto LABEL_145;
        default:
          goto LABEL_208;
      }

      goto LABEL_128;
    }

    if (v4 <= 1886417779)
    {
      if (v4 == 1886283375)
      {
        v6 = 0;
        goto LABEL_145;
      }

      if (v4 == 1886283552)
      {
        v6 = 0;
        goto LABEL_144;
      }

      goto LABEL_208;
    }

    if (v4 == 1886417780)
    {
      v5 = 0;
      goto LABEL_128;
    }

    v8 = 1886547815;
LABEL_84:
    if (v4 == v8)
    {
      v6 = 0;
      goto LABEL_144;
    }

    goto LABEL_208;
  }

  if (v4 > 1937011315)
  {
    if (v4 > 1952741229)
    {
      if (v4 > 1953719407)
      {
        if (v4 == 1953719408)
        {
          v6 = 0;
          goto LABEL_144;
        }

        if (v4 == 2053925920)
        {
          v6 = 0;
          goto LABEL_144;
        }
      }

      else
      {
        if (v4 == 1952741230)
        {
          v6 = 0;
          goto LABEL_144;
        }

        if (v4 == 1952807028)
        {
          v6 = 0;
          goto LABEL_144;
        }
      }

      goto LABEL_208;
    }

    if (v4 == 1937011316)
    {
      v6 = 0;
      goto LABEL_144;
    }

    if (v4 == 1937012080)
    {
      v6 = 0;
      goto LABEL_144;
    }

    v8 = 1937141612;
    goto LABEL_84;
  }

  if (v4 <= 1936748657)
  {
    if (v4 != 1936024939)
    {
      if (v4 == 1936027749)
      {
        v6 = 0;
        goto LABEL_144;
      }

      if (v4 == 1936027768)
      {
        v6 = 0;
        goto LABEL_144;
      }

      goto LABEL_208;
    }

    goto LABEL_104;
  }

  if (v4 > 1936942191)
  {
    if (v4 == 1936942192)
    {
      v6 = 0;
      goto LABEL_144;
    }

    if (v4 == 1937010544)
    {
      v6 = 0;
      goto LABEL_145;
    }

    goto LABEL_208;
  }

  if (v4 != 1936748658)
  {
    if (v4 == 1936875892)
    {
      v6 = 0;
      goto LABEL_144;
    }

    goto LABEL_208;
  }

  v5 = 1;
LABEL_128:
  if (!*(DerivedStorage + 16))
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

  v9 = *MEMORY[0x277CBECE8];
  if (FigCreateCFDataWithBlockBufferNoCopy())
  {
    APTransportPackageHTTPGetHTTPMessage_cold_1();
    goto LABEL_212;
  }

  v10 = CFPropertyListCreateWithData(v9, data, 0, 0, 0);
  v6 = v10;
  if (!v10 || (v11 = CFGetTypeID(v10), v11 != CFDictionaryGetTypeID()))
  {
    APTransportPackageHTTPGetHTTPMessage_cold_2();
    goto LABEL_213;
  }

  v12 = *MEMORY[0x277CEA380];
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v14 = *v3;
    *v3 = TypedValue;
    CFRetain(TypedValue);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (v5)
  {
LABEL_144:
    v15 = *v3;
    if (CFStringCopyUTF8CString())
    {
      APTransportPackageHTTPGetHTTPMessage_cold_3();
      goto LABEL_213;
    }
  }

LABEL_145:
  v16 = *(v3 + 24);
  if (HTTPHeader_InitRequest())
  {
    APTransportPackageHTTPGetHTTPMessage_cold_4();
    goto LABEL_213;
  }

  v17 = *(v3 + 8);
  switch(v17)
  {
    case 1886151033:
      v20 = *(v3 + 24);
      MakeFractionalDateString();
      HTTPHeader_SetField();
      break;
    case 1768842863:
      v19 = *(v3 + 24);
      APSSystemGetUserVersion();
      if (HTTPHeader_SetField())
      {
        APTransportPackageHTTPGetHTTPMessage_cold_5();
        goto LABEL_213;
      }

      break;
    case 1718628917:
      v18 = *(v3 + 24);
      if (HTTPHeader_SetField())
      {
        APTransportPackageHTTPGetHTTPMessage_cold_6();
LABEL_213:
        v36 = 0;
        goto LABEL_194;
      }

      break;
  }

  if (*(v3 + 32))
  {
    v21 = *(v3 + 24);
    v42 = *(v3 + 32);
    if (HTTPHeader_SetField())
    {
      APTransportPackageHTTPGetHTTPMessage_cold_7();
      goto LABEL_213;
    }
  }

  if (v6)
  {
    CFDictionaryApplyFunction(v6, httppackage_appendCustomHeaderField, a1);
    v22 = *MEMORY[0x277CEA360];
    CFDataGetTypeID();
    v23 = CFDictionaryGetTypedValue();
    if (v23)
    {
      v24 = v23;
      CFDataGetLength(v23);
      CFDataGetBytePtr(v24);
      v25 = *(v3 + 24);
      if (HTTPMessageSetBody())
      {
        APTransportPackageHTTPGetHTTPMessage_cold_8();
        goto LABEL_213;
      }
    }

    goto LABEL_169;
  }

  v26 = *(v3 + 16);
  if (!v26)
  {
LABEL_169:
    v29 = 1;
    goto LABEL_188;
  }

  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (CMBlockBufferGetDataPointer(v26, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut))
  {
    APTransportPackageHTTPGetHTTPMessage_cold_9();
    goto LABEL_212;
  }

  v27 = *(v3 + 8);
  if (v27 <= 1886547814)
  {
    if (v27 != 1785750887 && v27 != 1852796517 && v27 != 1886283552)
    {
      goto LABEL_204;
    }
  }

  else if (v27 > 1936942191)
  {
    if (v27 != 1952807028)
    {
      if (v27 == 1936942192)
      {
        if (lengthAtOffsetOut != totalLengthOut)
        {
          APTransportPackageHTTPGetHTTPMessage_cold_17();
          goto LABEL_212;
        }

        v30 = *(v3 + 24);
        if (HTTPHeader_SetField())
        {
          APTransportPackageHTTPGetHTTPMessage_cold_18();
          goto LABEL_212;
        }

        goto LABEL_186;
      }

      goto LABEL_204;
    }
  }

  else if (v27 != 1886547815)
  {
    if (v27 == 1920164128)
    {
      if (lengthAtOffsetOut != totalLengthOut)
      {
        APTransportPackageHTTPGetHTTPMessage_cold_15();
        goto LABEL_212;
      }

      v28 = *(v3 + 24);
      if (HTTPHeader_SetField())
      {
        APTransportPackageHTTPGetHTTPMessage_cold_16();
LABEL_212:
        v6 = 0;
        goto LABEL_213;
      }

      goto LABEL_186;
    }

LABEL_204:
    if (lengthAtOffsetOut != totalLengthOut)
    {
      APTransportPackageHTTPGetHTTPMessage_cold_19();
      goto LABEL_212;
    }

    v40 = *(v3 + 24);
    v41 = HTTPMessageSetBody();
    if (IsAppleInternalBuild())
    {
      httpPackage_computeMessageTypeString();
      v34 = 1;
      if (!v41)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v34 = 0;
      if (!v41)
      {
        goto LABEL_187;
      }
    }

    APTransportPackageHTTPGetHTTPMessage_cold_20();
    goto LABEL_212;
  }

  v31 = *(v3 + 24);
  v43 = *dataPointerOut;
  if (HTTPHeader_SetField())
  {
    APTransportPackageHTTPGetHTTPMessage_cold_10();
    goto LABEL_212;
  }

  if (totalLengthOut < 5)
  {
    v33 = *(v3 + 24);
    if (HTTPMessageSetBody())
    {
      APTransportPackageHTTPGetHTTPMessage_cold_11();
      goto LABEL_212;
    }
  }

  else
  {
    if (CMBlockBufferGetDataPointer(*(v3 + 16), 4uLL, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut))
    {
      APTransportPackageHTTPGetHTTPMessage_cold_12();
      goto LABEL_212;
    }

    if (lengthAtOffsetOut + 4 != totalLengthOut)
    {
      APTransportPackageHTTPGetHTTPMessage_cold_13();
      goto LABEL_212;
    }

    v32 = *(v3 + 24);
    if (HTTPMessageSetBody())
    {
      APTransportPackageHTTPGetHTTPMessage_cold_14();
      goto LABEL_212;
    }
  }

LABEL_186:
  v34 = 0;
LABEL_187:
  v29 = v34 == 0;
LABEL_188:
  if (IsAppleInternalBuild() || (v39 = *(v3 + 8), v39 == 1952741230) || v39 == 1937012080)
  {
    if (v29)
    {
      httpPackage_computeMessageTypeString();
    }

    if (v53)
    {
      v35 = *(v3 + 24);
      HTTPMessageSetClientMessageType();
    }
  }

  v36 = *(v3 + 24);
LABEL_194:
  if (v48)
  {
    free(v48);
    v48 = 0;
  }

  if (data)
  {
    CFRelease(data);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}