void stream_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStreamUnbuffered <= 50 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
  {
    stream_Finalize_cold_1(DerivedStorage);
  }

  if (*(DerivedStorage + 24))
  {
    v1 = *(DerivedStorage + 56);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 56) = 0;
    }

    v2 = *(DerivedStorage + 8);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 8) = 0;
    }

    v3 = *(DerivedStorage + 32);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 32) = 0;
    }

    v4 = *(DerivedStorage + 64);
    if (v4)
    {
      dispatch_release(v4);
      *(DerivedStorage + 64) = 0;
    }

    v5 = *(DerivedStorage + 104);
    if (v5)
    {
      dispatch_release(v5);
      *(DerivedStorage + 104) = 0;
    }

    v6 = *(DerivedStorage + 16);
    if (v6)
    {
      dispatch_release(v6);
      *(DerivedStorage + 16) = 0;
    }
  }

  else
  {
    if (gLogCategory_APTransportStreamUnbuffered <= 100 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
    {
      stream_Finalize_cold_2();
    }

    __break(1u);
  }
}

void stream_Finalize_0()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
  {
    stream_Finalize_cold_1_0(DerivedStorage);
  }

  if (*(DerivedStorage + 72))
  {
    if (*(DerivedStorage + 48) == *(DerivedStorage + 56))
    {
      *(DerivedStorage + 56) = 0;
    }

    stream_forgetConnectionState((DerivedStorage + 48));
    stream_forgetConnectionState((DerivedStorage + 56));
    v1 = *(DerivedStorage + 136);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 136) = 0;
    }

    v2 = *(DerivedStorage + 144);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 144) = 0;
    }

    v3 = *(DerivedStorage + 88);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 88) = 0;
    }

    v4 = *(DerivedStorage + 80);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 80) = 0;
    }

    v5 = *(DerivedStorage + 168);
    if (v5)
    {
      dispatch_release(v5);
      *(DerivedStorage + 168) = 0;
    }

    v6 = *(DerivedStorage + 32);
    if (v6)
    {
      dispatch_release(v6);
      *(DerivedStorage + 32) = 0;
    }

    v7 = *(DerivedStorage + 184);
    if (v7)
    {
      dispatch_release(v7);
      *(DerivedStorage + 184) = 0;
    }

    v8 = *(DerivedStorage + 64);
    if (v8)
    {
      dispatch_release(v8);
      *(DerivedStorage + 64) = 0;
    }
  }

  else
  {
    if (gLogCategory_APTransportStream <= 100 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
    {
      stream_Finalize_cold_2_0();
    }

    __break(1u);
  }
}

void session_unregisterStreamInternal(const void **a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    session_unregisterStreamInternal_cold_1();
  }

  else
  {
    v4 = DerivedStorage;
    APTransportStreamIDGetToken(a1[1]);
    v5 = *(v4 + 6);
    FigCFWeakReferenceTableRemoveValue();
  }

  v6 = *a1;
  if (*a1)
  {

    CFRelease(v6);
  }
}

uint64_t __stream_invalidateInternal_block_invoke(uint64_t result)
{
  *(*(result + 32) + 112) = 0;
  *(*(result + 32) + 120) = 0;
  return result;
}

uint64_t __stream_invalidateInternal_block_invoke_0(uint64_t result)
{
  *(*(result + 32) + 200) = 0;
  *(*(result + 32) + 208) = 0;
  *(*(result + 32) + 192) = 0;
  return result;
}

uint64_t stream_Finalize_cold_1(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  return LogPrintF();
}

uint64_t stream_Finalize_cold_1_0(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 80);
  return OUTLINED_FUNCTION_9();
}

void __stream_readyToSendCallback_block_invoke_cold_2(uint64_t a1)
{
  v2 = **(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
    **(a1 + 56) = 0;
  }
}

uint64_t browser_createBonjourInfoForBTLEDevice(uint64_t a1, int a2, __CFDictionary **a3, __CFDictionary **a4)
{
  v30 = 0;
  value = 0;
  memset(cf, 0, sizeof(cf));
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (!CFDictionaryGetInt64Ranged())
  {
    browser_createBonjourInfoForBTLEDevice_cold_14(&v30 + 1);
    goto LABEL_21;
  }

  HIDWORD(v30) = browser_cfstringToSockAddr(v8);
  if (HIDWORD(v30))
  {
    browser_createBonjourInfoForBTLEDevice_cold_4();
    goto LABEL_21;
  }

  SockAddrSetPort();
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = CFStringCreateF();
  if (!v10)
  {
    browser_createBonjourInfoForBTLEDevice_cold_13();
    goto LABEL_21;
  }

  v11 = v10;
  HIDWORD(v30) = browser_createBTLEBonjourServiceArray(v10, &value);
  if (HIDWORD(v30))
  {
    browser_createBonjourInfoForBTLEDevice_cold_6();
LABEL_31:
    v26 = v11;
    goto LABEL_20;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    browser_createBonjourInfoForBTLEDevice_cold_12();
    goto LABEL_31;
  }

  v13 = Mutable;
  CFDictionarySetValue(Mutable, @"deviceID", TypedValue);
  CFDictionarySetValue(v13, @"dnsName", v11);
  if (a2)
  {
    CFDictionarySetValue(v13, @"removedServices", value);
    v14 = @"serviceType";
    v15 = @"_airplay._tcp.";
    v16 = v13;
    goto LABEL_10;
  }

  CFDictionarySetValue(v13, @"services", value);
  CFDictionarySetValue(v13, @"serviceType", @"_airplay._tcp.");
  CFDataGetTypeID();
  v17 = CFDictionaryGetTypedValue();
  if (!HIDWORD(v30))
  {
    CFDictionarySetValue(v13, @"name", v9);
    v14 = @"txt";
    v16 = v13;
    v15 = v17;
LABEL_10:
    CFDictionarySetValue(v16, v14, v15);
    v18 = CFStringCreateF();
    v19 = v18;
    if (v18)
    {
      HIDWORD(v30) = browser_createBTLEBonjourServiceArray(v18, cf);
      if (HIDWORD(v30))
      {
        browser_createBonjourInfoForBTLEDevice_cold_8();
      }

      else
      {
        v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v20)
        {
          v21 = v20;
          CFDictionarySetValue(v20, @"deviceID", TypedValue);
          CFDictionarySetValue(v21, @"dnsName", v19);
          if (a2)
          {
            CFDictionarySetValue(v21, @"removedServices", cf[0]);
            v22 = @"serviceType";
            v23 = @"_raop._tcp.";
            v24 = v21;
          }

          else
          {
            CFDictionarySetValue(v21, @"services", cf[0]);
            CFDictionarySetValue(v21, @"serviceType", @"_raop._tcp.");
            CFDataGetTypeID();
            v25 = CFDictionaryGetTypedValue();
            if (HIDWORD(v30))
            {
              browser_createBonjourInfoForBTLEDevice_cold_9(HIDWORD(v30), v13, v21);
              goto LABEL_18;
            }

            CFDictionarySetValue(v21, @"name", v9);
            v22 = @"txt";
            v24 = v21;
            v23 = v25;
          }

          CFDictionarySetValue(v24, v22, v23);
          *a3 = v13;
          *a4 = v21;
LABEL_18:
          CFRelease(v11);
LABEL_19:
          v26 = v19;
LABEL_20:
          CFRelease(v26);
          goto LABEL_21;
        }

        browser_createBonjourInfoForBTLEDevice_cold_10();
      }
    }

    else
    {
      browser_createBonjourInfoForBTLEDevice_cold_11();
    }

    goto LABEL_36;
  }

  browser_createBonjourInfoForBTLEDevice_cold_7();
  v19 = 0;
LABEL_36:
  CFRelease(v13);
  CFRelease(v11);
  if (v19)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (value)
  {
    CFRelease(value);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return HIDWORD(v30);
}

uint64_t browser_cfstringToSockAddr(const __CFString *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  if (CFStringGetCString(a1, v4, 128, 0x600u))
  {
    v1 = StringToSockAddr();
    if (v1)
    {
      browser_cfstringToSockAddr_cold_1();
    }
  }

  else
  {
    browser_cfstringToSockAddr_cold_2();
    v1 = 4294960591;
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t APBrowserCreateAdvertiserInfoForDevice(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, CFDictionaryRef theDict, CFTypeRef *a5)
{
  cf = 0;
  if (!a2 && !a3 && !theDict)
  {
    APBrowserCreateAdvertiserInfoForDevice_cold_7();
    return 4294960591;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"txt");
    if (!Value)
    {
      APBrowserCreateAdvertiserInfoForDevice_cold_2();
      return 4294960534;
    }

    v11 = Value;
    v12 = CFDictionaryGetValue(theDict, @"name");
    if (!v12)
    {
      APBrowserCreateAdvertiserInfoForDevice_cold_1();
      return 4294960534;
    }

    v13 = v12;
    if (a3)
    {
LABEL_8:
      v14 = CFDictionaryGetValue(a3, @"txt");
      if (!v14)
      {
        APBrowserCreateAdvertiserInfoForDevice_cold_4();
        return 4294960534;
      }

      v15 = v14;
      v16 = CFDictionaryGetValue(a3, @"name");
      if (!v16)
      {
        APBrowserCreateAdvertiserInfoForDevice_cold_3();
        return 4294960534;
      }

      v13 = v16;
      if (a2)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  v15 = 0;
  if (a2)
  {
LABEL_11:
    v17 = CFDictionaryGetValue(a2, @"txt");
    if (v17)
    {
      v18 = v17;
      v19 = CFDictionaryGetValue(a2, @"name");
      if (v19)
      {
        v13 = v19;
        goto LABEL_17;
      }

      APBrowserCreateAdvertiserInfoForDevice_cold_5();
    }

    else
    {
      APBrowserCreateAdvertiserInfoForDevice_cold_6();
    }

    return 4294960534;
  }

LABEL_16:
  v18 = 0;
LABEL_17:
  v20 = APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName(a1, v11, v18, v15, v13, &cf);
  if (v20)
  {
    APSLogErrorAt();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a5 = cf;
  }

  return v20;
}

uint64_t browser_skipBonjourUpdate(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!APSSettingsGetInt64())
  {
    return 0;
  }

  v5 = CFGetAllocator(a1);
  if (APBrowserCopyDeviceIDFromBonjourInfo(v5, a2, &cf))
  {
    APSLogErrorAt();
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_10_10(*DerivedStorage);
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      if (!OUTLINED_FUNCTION_8_0())
      {
        goto LABEL_8;
      }

      v29 = *DerivedStorage;
    }

    OUTLINED_FUNCTION_1();
    LogPrintF();
  }

LABEL_8:
  Int64 = APSSettingsGetInt64();
  if (Int64 != FigCFNumberGetUInt64())
  {
LABEL_32:
    v26 = 0;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_10_10(*DerivedStorage);
  if (!(v8 ^ v9 | v7))
  {
    goto LABEL_14;
  }

  if (v11 == -1)
  {
    if (!OUTLINED_FUNCTION_8_0())
    {
      goto LABEL_14;
    }

    v30 = *DerivedStorage;
  }

  OUTLINED_FUNCTION_1();
  LogPrintF();
LABEL_14:
  v32 = DerivedStorage;
  CFStringGetTypeID();
  if (CFDictionaryGetTypedValue() == @"com.apple.airplay" || (CFStringGetTypeID(), CFDictionaryGetTypedValue()) && (CFStringGetTypeID(), v12 = CFDictionaryGetTypedValue(), CFEqual(@"com.apple.airplay", v12)))
  {
    v13 = 0;
    v14 = 1;
    v15 = @"removedServices";
    v16 = @"services";
    do
    {
      v17 = v14;
      v18 = v15;
      v19 = v16;
      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      v21 = TypedValue;
      v22 = 0;
      if (v13 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v13;
      }

      if (TypedValue)
      {
LABEL_22:
        Count = CFArrayGetCount(v21);
        goto LABEL_24;
      }

      while (1)
      {
        Count = 0;
LABEL_24:
        if (v22 >= Count)
        {
          break;
        }

        CFDictionaryGetTypeID();
        CFArrayGetTypedValueAtIndex();
        CFStringGetTypeID();
        v25 = CFDictionaryGetTypedValue();
        if (v23 == v13 || v25 != @"nan0" && (!v25 || !CFEqual(v25, @"nan0")))
        {
          goto LABEL_33;
        }

        ++v22;
        ++v13;
        if (v21)
        {
          goto LABEL_22;
        }
      }

      v14 = 0;
      v15 = v18;
      v16 = v19;
    }

    while ((v17 & 1) != 0);
    goto LABEL_32;
  }

LABEL_33:
  OUTLINED_FUNCTION_10_10(*v32);
  if (v8 ^ v9 | v7)
  {
    if (v27 == -1)
    {
      if (!OUTLINED_FUNCTION_8_0())
      {
        goto LABEL_38;
      }

      v31 = *v32;
    }

    OUTLINED_FUNCTION_1();
    LogPrintF();
  }

LABEL_38:
  v26 = 1;
LABEL_39:
  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

uint64_t APBrowserCopyDeviceIDFromBonjourInfo(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  v9 = 0;
  if (a2)
  {
    DeviceID = BonjourDevice_GetDeviceID();
    v5 = CFGetAllocator(a1);
    v6 = CFNumberCreate(v5, kCFNumberSInt64Type, &DeviceID);
    if (v6)
    {
      *a3 = v6;
    }

    else
    {
      APBrowserCopyDeviceIDFromBonjourInfo_cold_2(&v9);
    }
  }

  else
  {
    APBrowserCopyDeviceIDFromBonjourInfo_cold_3(&v9);
  }

  return v9;
}

uint64_t browser_createBTLEBonjourServiceArray(const void *a1, CFArrayRef *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    CFDictionarySetValue(Mutable, @"domain", @"local.");
    CFDictionarySetValue(v5, @"ifname", @"btle0");
    CFDictionarySetInt64();
    CFDictionarySetValue(v5, @"dnsName", a1);
    v8[0] = v5;
    *a2 = CFArrayCreate(0, v8, 1, MEMORY[0x277CBF128]);
    CFRelease(v5);
    result = 0;
  }

  else
  {
    browser_createBTLEBonjourServiceArray_cold_1();
    result = 4294960568;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t browser_removeBonjourWithBTLE(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v13 = 0;
  Value = CFDictionaryGetValue(*(DerivedStorage + 112), a2);
  if (Value)
  {
    v6 = CFDictionaryGetValue(Value, @"lastInfo");
    if (v6)
    {
      v7 = browser_createBonjourInfoForBTLEDevice(v6, 1, &v13, &cf);
      if (v7)
      {
        v10 = v7;
        APSLogErrorAt();
        v8 = v13;
      }

      else
      {
        v8 = v13;
        v9 = browser_removeService(a1, @"AirPlay", v13);
        if (v9)
        {
          v10 = v9;
          browser_removeBonjourWithBTLE_cold_1();
        }

        else
        {
          v10 = browser_removeService(a1, @"RAOP", cf);
          if (v10)
          {
            browser_removeBonjourWithBTLE_cold_2();
          }
        }
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    browser_removeBonjourWithBTLE_cold_3(DerivedStorage, a2, &v14);
    v10 = v14;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t browser_removeService(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  Transports = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  key = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_59;
  }

  v7 = DerivedStorage;
  if (browser_skipBonjourUpdate(a1, a3))
  {
    goto LABEL_54;
  }

  CFDictionaryGetValue(a3, @"name");
  if (@"RAOP" == a2 || @"RAOP" && CFEqual(a2, @"RAOP"))
  {
    v8 = @"RAOPBonjourInfo";
    goto LABEL_25;
  }

  v9 = *(v7 + 72);
  if (v9 == a2 || v9 && CFEqual(a2, v9))
  {
    v8 = *(v7 + 64);
    if (v8)
    {
      v10 = *(v7 + 80);
      goto LABEL_25;
    }

LABEL_59:
    APSLogErrorAt();
    Transports = -6705;
    goto LABEL_54;
  }

  if (@"AirPlayNANFull" == a2 || @"AirPlayNANFull" && CFEqual(a2, @"AirPlayNANFull"))
  {
    v8 = @"AirPlayNANFullBonjourInfo";
  }

  else if (@"AirPlayNANPartial" == a2 || @"AirPlayNANPartial" && CFEqual(a2, @"AirPlayNANPartial"))
  {
    v8 = @"AirPlayNANPartialBonjourInfo";
  }

  else
  {
    if (@"AirPlayPartial" != a2 && (!@"AirPlayPartial" || !CFEqual(a2, @"AirPlayPartial")))
    {
      goto LABEL_59;
    }

    v8 = @"AirPlayP2PBonjourInfo";
  }

LABEL_25:
  v11 = CFGetAllocator(a1);
  Transports = APBrowserCopyDeviceIDFromBonjourInfo(v11, a3, &key);
  if (Transports)
  {
    goto LABEL_53;
  }

  v12 = CFDictionaryGetValue(*(v7 + 216), key);
  if (!v12)
  {
    OUTLINED_FUNCTION_2_21();
    if (!(v17 ^ v18 | v20))
    {
      goto LABEL_82;
    }

    if (v25 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_82;
      }

      v28 = *v7;
    }

LABEL_70:
    OUTLINED_FUNCTION_11();
LABEL_82:
    Transports = 0;
    goto LABEL_54;
  }

  v13 = v12;
  v14 = CFDictionaryGetValue(v12, v8);
  value = v14;
  if (!v14)
  {
    OUTLINED_FUNCTION_2_21();
    if (!(v17 ^ v18 | v20))
    {
      goto LABEL_82;
    }

    if (v26 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_82;
      }

      v30 = *v7;
    }

    goto LABEL_70;
  }

  v15 = v14;
  Transports = APBrowserGetTransports(a3, 1, &v33);
  if (Transports)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_2_21();
  if (v17 ^ v18 | v20)
  {
    v19 = __CFADD__(v16, 1);
    v20 = v16 == -1;
    if (v16 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_39;
      }

      v21 = *v7;
    }

    if (v20 || !v19)
    {
      switch(v33)
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

LABEL_39:
  CFRetain(v15);
  CFDictionaryRemoveValue(v13, v8);
  Transports = BonjourDevice_MergeInfo();
  if (Transports)
  {
    goto LABEL_53;
  }

  CFDictionarySetValue(v13, v8, value);
  CFRelease(value);
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (Transports != -6727)
  {
    if (Transports)
    {
      goto LABEL_53;
    }
  }

  Transports = 0;
  if (TypedValue && CFArrayGetCount(TypedValue))
  {
    v23 = 0;
  }

  else
  {
    CFDictionaryRemoveValue(v13, v8);
    Transports = browser_queryServiceAvailabilityForDevice(a1, key, &v32 + 1, &v32, &v31);
    if (Transports)
    {
      goto LABEL_53;
    }

    v23 = ((HIBYTE(v32) | v32) | v31) == 0;
  }

  if (!CFDictionaryGetInt64())
  {
LABEL_51:
    if (!v23)
    {
      Transports = browser_updateEventInfoForDevice(a1, key);
      if (!Transports)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    Transports = browser_removeNearbyDevice(a1, key);
    if (Transports)
    {
LABEL_53:
      APSLogErrorAt();
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (*(v7 + 24) != 1)
  {
    if ((v33 & 4) != 0)
    {
      Transports = browser_cacheP2PDNSAddresses(a1, key, v13);
      if (Transports)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_51;
  }

  OUTLINED_FUNCTION_2_21();
  if (v17 ^ v18 | v20)
  {
    if (v27 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_54;
      }

      v29 = *v7;
    }

    OUTLINED_FUNCTION_11();
  }

LABEL_54:
  if (key)
  {
    CFRelease(key);
  }

  return Transports;
}

void __browser_handleBTLEQueryEventExternal_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  BonjourInfoForBTLEDevice = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  cf = 0;
  value = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *cStr = 0u;
  v38 = 0u;
  if (!v3)
  {
    __browser_handleBTLEQueryEventExternal_block_invoke_cold_13();
LABEL_27:
    Mutable = 0;
    goto LABEL_28;
  }

  v7 = DerivedStorage;
  v8 = CFDictionaryGetValue(*(DerivedStorage + 112), v3);
  if (!v8)
  {
    __browser_handleBTLEQueryEventExternal_block_invoke_cold_12(v7, &BonjourInfoForBTLEDevice);
    goto LABEL_50;
  }

  v9 = v8;
  if (v4)
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    if (TypedValue && v11)
    {
      v33 = 0;
      v34 = 0;
      v36 = 0;
      v35 = 0;
      v29 = 0;
      v30 = 0;
      v32 = 0;
      v31 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      CFGetCString();
      if (StringToSockAddr())
      {
        __browser_handleBTLEQueryEventExternal_block_invoke_cold_1();
        goto LABEL_9;
      }

      CFGetCString();
      if (StringToSockAddr())
      {
        __browser_handleBTLEQueryEventExternal_block_invoke_cold_2();
        goto LABEL_9;
      }

      if (SockAddrCompareAddr())
      {
LABEL_9:
        v12 = **v7;
        if (v12 > 50)
        {
          goto LABEL_22;
        }

        if (v12 != -1)
        {
          goto LABEL_11;
        }

        if (_LogCategory_Initialize())
        {
          v23 = *v7;
LABEL_11:
          LogPrintF();
        }

LABEL_22:
        v19 = **v7;
        if (v19 > 20)
        {
          goto LABEL_26;
        }

        if (v19 == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_26:
            DebugGetErrorString();
            v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
            CFDictionarySetValue(v9, @"connectionError", v3);
            v20 = CFDictionaryGetValue(v9, @"lastInfo");
            if (v20)
            {
              BonjourInfoForBTLEDevice = browser_createBonjourInfoForBTLEDevice(v20, 1, &cf, &v26);
              if (BonjourInfoForBTLEDevice)
              {
                __browser_handleBTLEQueryEventExternal_block_invoke_cold_9();
              }

              else
              {
                BonjourInfoForBTLEDevice = browser_removeService(v2, @"AirPlay", cf);
                if (BonjourInfoForBTLEDevice)
                {
                  __browser_handleBTLEQueryEventExternal_block_invoke_cold_10();
                }

                else
                {
                  BonjourInfoForBTLEDevice = browser_removeService(v2, @"RAOP", v26);
                  if (BonjourInfoForBTLEDevice)
                  {
                    __browser_handleBTLEQueryEventExternal_block_invoke_cold_11();
                  }
                }
              }
            }

            goto LABEL_27;
          }

          v24 = *v7;
        }

        LogPrintF();
        goto LABEL_26;
      }
    }

    if (v5)
    {
      goto LABEL_22;
    }

    CFDictionarySetValue(v9, @"lastInfo", v4);
    BonjourInfoForBTLEDevice = browser_createBonjourInfoForBTLEDevice(v4, 0, &cf, &v26);
    if (BonjourInfoForBTLEDevice)
    {
      __browser_handleBTLEQueryEventExternal_block_invoke_cold_3();
    }

    else
    {
      CFStringGetTypeID();
      v13 = CFDictionaryGetTypedValue();
      if (BonjourInfoForBTLEDevice)
      {
        __browser_handleBTLEQueryEventExternal_block_invoke_cold_4();
      }

      else
      {
        v14 = CFGetAllocator(v2);
        v15 = cf;
        BonjourInfoForBTLEDevice = APBrowserCopyDeviceIDFromBonjourInfo(v14, cf, &value);
        if (!BonjourInfoForBTLEDevice)
        {
          CFDictionarySetValue(v9, @"deviceName", v13);
          CFDictionarySetValue(v9, @"bonjourDeviceID", value);
          CFDictionarySetValue(v9, @"connectionError", @"No Error");
          v16 = CFGetAllocator(v2);
          Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v18 = CFDictionaryGetValue(v9, @"btleRSSI");
            FigCFDictionarySetValueFromKeyInDict();
            CFDictionarySetValue(Mutable, @"btleRSSI", v18);
            BonjourInfoForBTLEDevice = browser_addOrUpdateService(v2, @"AirPlay", v15, Mutable);
            if (BonjourInfoForBTLEDevice)
            {
              __browser_handleBTLEQueryEventExternal_block_invoke_cold_6();
            }

            else
            {
              BonjourInfoForBTLEDevice = browser_addOrUpdateService(v2, @"RAOP", v26, Mutable);
              if (BonjourInfoForBTLEDevice)
              {
                __browser_handleBTLEQueryEventExternal_block_invoke_cold_7();
              }
            }
          }

          else
          {
            __browser_handleBTLEQueryEventExternal_block_invoke_cold_8();
          }

          goto LABEL_20;
        }

        __browser_handleBTLEQueryEventExternal_block_invoke_cold_5();
      }
    }

LABEL_50:
    Mutable = 0;
LABEL_20:
    v3 = 0;
    goto LABEL_28;
  }

  if (v5)
  {
    goto LABEL_22;
  }

  APSLogErrorAt();
  Mutable = 0;
  v3 = 0;
  BonjourInfoForBTLEDevice = -6705;
LABEL_28:
  CFRelease(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  v21 = *(a1 + 48);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t browser_queryServiceAvailabilityForDevice(uint64_t a1, const void *a2, BOOL *a3, BOOL *a4, BOOL *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v10 = DerivedStorage;
    Value = CFDictionaryGetValue(*(DerivedStorage + 216), a2);
    if (Value)
    {
      v12 = Value;
      v13 = CFDictionaryGetValue(Value, *(v10 + 64));
      v14 = (v13 | CFDictionaryGetValue(v12, @"AirPlayNANFullBonjourInfo")) != 0;
      v15 = CFDictionaryGetValue(v12, @"RAOPBonjourInfo") != 0;
      v16 = CFDictionaryGetValue(v12, @"AirPlayP2PBonjourInfo");
      v17 = (v16 | CFDictionaryGetValue(v12, @"AirPlayNANPartialBonjourInfo")) != 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v17 = 0;
    }

    *a3 = v14;
    *a4 = v15;
    result = 0;
    if (a5)
    {
      *a5 = v17;
    }
  }

  else
  {
    browser_queryServiceAvailabilityForDevice_cold_1();
    return 4294960591;
  }

  return result;
}

uint64_t APBrowserGetTransportsRequiringBroker(const __CFDictionary *a1, _DWORD *a2)
{
  if (a1 && (v3 = CFDictionaryGetValue(a1, @"services")) != 0 && (v4 = v3, Count = CFArrayGetCount(v3), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
      if (CFDictionaryGetValue(ValueAtIndex, @"ifname") == @"broker0" || CFDictionaryGetValue(ValueAtIndex, @"ifname") && (Value = CFDictionaryGetValue(ValueAtIndex, @"ifname"), CFEqual(@"broker0", Value)))
      {
        v8 |= CFDictionaryGetInt64();
      }

      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return 0;
}

void _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(const __CFString *a1, __CFString **a2)
{
  if (a1)
  {
    if (CFStringHasSuffix(a1, @"")))
    {
      result.location = 0;
      result.length = 0;
      Length = CFStringGetLength(a1);
      v18.location = 0;
      v18.length = Length;
      if (CFStringFindWithOptions(a1, @" ("), v18, 4uLL, &result)
      {
        v5 = Length - result.location;
        result.length = Length - result.location;
        if (result.location)
        {
          if (v5 >= 4)
          {
            v19.length = v5 - 3;
            v6 = *MEMORY[0x277CBECE8];
            v19.location = result.location + 2;
            v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a1, v19);
            v16.location = 0;
            v16.length = CFStringGetLength(v7);
            v8 = CFNumberFormatterCreate(v6, 0, kCFNumberFormatterNoStyle);
            if (v8)
            {
              v9 = CFNumberFormatterCreateNumberFromString(v6, v8, v7, &v16, 1uLL);
              if (v9)
              {
                v10 = v16.length;
                if (v10 == CFStringGetLength(v7))
                {
                  v11 = CFStringCreateWithSubstring(v6, a1, result);
                  if (v11)
                  {
                    v12 = v11;
                    v13 = CFStringGetLength(a1);
                    MutableCopy = CFStringCreateMutableCopy(v6, v13, a1);
                    if (MutableCopy)
                    {
                      v15 = MutableCopy;
                      CFStringTrim(MutableCopy, v12);
                      *a2 = v15;
                    }

                    else
                    {
                      APSLogErrorAt();
                    }

                    CFRelease(v12);
                  }

                  else
                  {
                    APSLogErrorAt();
                  }
                }
              }
            }

            else
            {
              APSLogErrorAt();
              v9 = 0;
            }

            if (v7)
            {
              CFRelease(v7);
            }

            if (v8)
            {
              CFRelease(v8);
            }

            if (v9)
            {
              CFRelease(v9);
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
  }
}

uint64_t APAdvertiserInfoGetBitListValueFromTXTRecord(const __CFString *a1, CFDataRef theData, _DWORD *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = theData;
    v11 = 0;
    valueLen = 0;
    BytePtr = CFDataGetBytePtr(theData);
    LOWORD(v4) = CFDataGetLength(v4);
    buffer[0] = 0;
    CFStringGetCString(a1, buffer, 256, 0x8000100u);
    if (TXTRecordGetValuePtr(v4, BytePtr, buffer, &valueLen))
    {
      v7 = BitListString_Parse();
      if (v7)
      {
        APSLogErrorAt();
      }

      else
      {
        *a3 = v11;
      }
    }

    else
    {
      v7 = 4294960569;
    }
  }

  else
  {
    APSLogErrorAt();
    v7 = 4294960591;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t APAdvertiserInfoCreate(uint64_t a1, void *a2)
{
  if (_MergedGlobals_1 != -1)
  {
    APAdvertiserInfoGetTypeID_cold_1();
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
    v7 = v6;
    if (v6)
    {
      APAdvertiserInfoCreate_cold_2(v6, v4);
    }

    else
    {
      *a2 = v4;
    }
  }

  else
  {
    APAdvertiserInfoCreate_cold_3();
    return 4294960568;
  }

  return v7;
}

uint64_t _APAdvertiserInfoSetLegacyFeatures(const __CFDictionary *a1)
{
  CFDictionarySetInt64();
  if (CFDictionaryGetValue(a1, @"featuresEx"))
  {
    MutableCopy = APSFeaturesCreateMutableCopy();
  }

  else
  {
    MutableCopy = APSFeaturesCreateMutable();
  }

  v3 = MutableCopy;
  if (MutableCopy)
  {
    APSFeaturesSetLegacyFlags();
    CFDictionarySetValue(a1, @"featuresEx", v3);
    CFRelease(v3);
    return 0;
  }

  else
  {
    _APAdvertiserInfoSetLegacyFeatures_cold_1();
    return 4294960568;
  }
}

uint64_t transportDevice_Finalize(void *a1)
{
  if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
  {
    transportDevice_Finalize_cold_1();
  }

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

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
    a1[10] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    CFRelease(v9);
    a1[11] = 0;
  }

  result = a1[7];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    a1[7] = 0;
  }

  return result;
}

void __queryManagerGetInfo_queryDeviceInternal_block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 9648) && (*(a2 + 8456) - 200) <= 0x63)
  {
    v4 = *(a1 + 32);
    if (HTTPClientGetSelfAddress())
    {
      if (gLogCategory_APBrowserDeviceQueryManagerGetInfo <= 60 && (gLogCategory_APBrowserDeviceQueryManagerGetInfo != -1 || _LogCategory_Initialize()))
      {
        __queryManagerGetInfo_queryDeviceInternal_block_invoke_cold_1();
      }
    }

    else
    {
      SockAddrToString();
    }
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APBrowserDeviceQueryManagerGetInfo <= 40 && (gLogCategory_APBrowserDeviceQueryManagerGetInfo != -1 || _LogCategory_Initialize()))
  {
    v18 = *(a2 + 9648);
    v19 = *(a2 + 8456);
    LogPrintF();
  }

  v11 = *(a2 + 9648);
  if (v11)
  {
    v12 = 0;
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = *(a2 + 8456);
  if ((v13 - 200) > 0x63)
  {
    v12 = 0;
    v11 = (v13 + 200000);
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = *(a2 + 8520);
  v15 = *(a2 + 8528);
  CFDictionaryGetTypeID();
  v12 = CFCreateWithPlistBytes();
  CFDictionarySetValue(v12, @"address", v8);
  CFDictionarySetValue(v12, @"controlPort", v7);
  v11 = 0;
  if (v10)
  {
LABEL_20:
    v10(v5, v6, v12, v9, v11);
  }

LABEL_21:
  if (v12)
  {
    CFRelease(v12);
  }

  CFDictionaryRemoveValue(*(*(a1 + 88) + 24), *(a1 + 48));
  v16 = *(a1 + 32);
  HTTPClientInvalidate();
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 64));
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
  v17 = *MEMORY[0x277D85DE8];
}

void browser_handleBTLEQueryEventExternal(uint64_t a1, const void *a2, const void *a3, const void *a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  CFRetain(a2);
  if (a3)
  {
    CFRetain(a3);
  }

  v10 = *(DerivedStorage + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __browser_handleBTLEQueryEventExternal_block_invoke;
  v11[3] = &__block_descriptor_60_e5_v8__0l;
  v11[4] = a4;
  v11[5] = a2;
  v11[6] = a3;
  v12 = a5;
  dispatch_async(v10, v11);
}

uint64_t browser_setEventInfoForDevice(const void *a1, const void *a2, const void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 216), a2);
  if (!Value)
  {
    APSLogErrorAt();
    v16 = -6762;
    goto LABEL_17;
  }

  v8 = Value;
  v9 = CFDictionaryGetValue(Value, @"LastEventInfo");
  Int64 = CFDictionaryGetInt64();
  v16 = 0;
  if (v9 != a3)
  {
    v11 = Int64;
    if (!a3 || !v9 || !CFEqual(a3, v9))
    {
      CFDictionarySetValue(v8, @"LastEventInfo", a3);
      if (CFDictionaryContainsKey(a3, @"deviceInfo"))
      {
        if (*(DerivedStorage + 24))
        {
          if (v11)
          {
            v12 = 4;
          }

          else
          {
            v12 = 3;
          }

          v16 = browser_dispatchEvent(a1, v12, a3);
          if (!v16)
          {
            APSGetCurrentLocalTimeString();
            v13 = CFStringCreateF();
            CFDictionarySetValue(v8, @"DispatchTimeStamp", v13);
            CFDictionarySetValue(v8, @"WasLastEventInfoDispatched", *MEMORY[0x277CBED28]);
            if (v13)
            {
              CFRelease(v13);
            }

            goto LABEL_17;
          }

          APSLogErrorAt();
        }

        CFDictionarySetValue(v8, @"WasLastEventInfoDispatched", *MEMORY[0x277CBED10]);
      }
    }
  }

LABEL_17:
  result = v16;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t browser_dispatchEvent(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 248))
  {
    return 4294960587;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 245))
  {
    return 4294960587;
  }

  v13 = *(DerivedStorage + 248);
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
    CFDictionaryGetValue(a3, @"deviceID");
  }

  v9 = **v7;
  if (v9 <= 20)
  {
    if (v9 != -1)
    {
LABEL_8:
      APBrowserGetEventString(a2);
      if (**v7 == -1)
      {
        _LogCategory_Initialize();
      }

      LogPrintF();
      goto LABEL_14;
    }

    v10 = *v7;
    if (_LogCategory_Initialize())
    {
      v11 = *v7;
      goto LABEL_8;
    }
  }

LABEL_14:
  v12 = *(v7 + 16);
  APSDispatchAsyncFHelper();
  return 0;
}

const char *APBrowserGetEventString(int a1)
{
  if ((a1 - 1) > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_278BC79F8[a1 - 1];
  }
}

uint64_t APTransportDeviceCreate(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  if (!a2)
  {
    APTransportDeviceCreate_cold_4();
    return 4294954516;
  }

  if (!a3)
  {
    APTransportDeviceCreate_cold_3();
    return 4294954516;
  }

  v7 = transportDevice_create();
  if (v7)
  {
    v8 = v7;
    *(v7 + 2) = CFRetain(a2);
    v8[3] = CFRetain(a3);
    v9 = FigSimpleMutexCreate();
    v8[7] = v9;
    if (v9)
    {
      if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      result = 0;
      *a4 = v8;
    }

    else
    {
      APTransportDeviceCreate_cold_1(v8);
      return 4294960568;
    }
  }

  else
  {
    APTransportDeviceCreate_cold_2();
    return 4294954510;
  }

  return result;
}

_OWORD *transportDevice_create()
{
  if (_MergedGlobals_11 != -1)
  {
    APTransportDeviceGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (Instance)
  {
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
  }

  else
  {
    transportDevice_create_cold_2();
  }

  return v1;
}

CFHashCode transportDevice_Hash(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 24), @"deviceID");

  return CFHash(Value);
}

BOOL transportDevice_Equal(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  Int64 = CFDictionaryGetInt64();
  v6 = *(a2 + 24);
  v7 = CFDictionaryGetInt64();
  return *(a1 + 16) == *(a2 + 16) && Int64 == v7;
}

uint64_t APTransportDeviceCopyInfo(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    APTransportDeviceCopyInfo_cold_3();
    return 4294960591;
  }

  Value = CFDictionaryGetValue(*(a1 + 24), @"deviceID");
  if (!Value)
  {
    APTransportDeviceCopyInfo_cold_2();
    return 4294960587;
  }

  v7 = Value;
  v8 = *(a1 + 16);
  if (!v8)
  {
    APTransportDeviceCopyInfo_cold_1();
    return 4294960587;
  }

  return APBrowserCopyAirPlayBonjourInfo(v8, v7, a2, a3);
}

uint64_t APBrowserCopyAirPlayBonjourInfo(uint64_t a1, void *a2, void *a3, void *a4)
{
  values[2] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (a2 && a3)
  {
    v8 = DerivedStorage;
    v9 = *MEMORY[0x277CBECE8];
    values[0] = a2;
    values[1] = @"AirPlayBonjourInfo";
    v10 = CFArrayCreate(v9, values, 2, 0);
    v11 = *(v8 + 8);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __APBrowserCopyAirPlayBonjourInfo_block_invoke;
    v19[3] = &unk_278BCA100;
    v19[4] = &v28;
    v19[5] = &v24;
    v19[8] = v10;
    v19[9] = a4;
    v19[6] = &v20;
    v19[7] = v8;
    v19[10] = a2;
    dispatch_sync(v11, v19);
    if (!*(v29 + 6))
    {
      v12 = v25;
      *a3 = v25[3];
      v12[3] = 0;
      if (a4)
      {
        v13 = v21;
        *a4 = v21[3];
        v13[3] = 0;
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v31 = -6705;
    APSLogErrorAt();
  }

  v14 = v21[3];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = v25[3];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(v29 + 6);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_23D2CE1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 104), 8);
  _Unwind_Resume(a1);
}

void __APBrowserCopyAirPlayBonjourInfo_block_invoke(uint64_t a1)
{
  APBrowserDeepCopyPlistAtKeyPath(*(*(a1 + 56) + 216), *(a1 + 64), (*(*(a1 + 40) + 8) + 24));
  OUTLINED_FUNCTION_8_1();
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_8_1();
  if (*(v4 + 24))
  {
    return;
  }

  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (!v5)
  {
LABEL_11:
    *(v4 + 24) = -6727;
    return;
  }

  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_11;
  }

  if (*(a1 + 72))
  {
    v7 = *MEMORY[0x277CBECE8];
    *(*(*(a1 + 48) + 8) + 24) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = *(*(a1 + 56) + 208);
    v9 = *(a1 + 80);
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      Copy = CFStringCreateCopy(v7, Value);
      v12 = *(*(*(a1 + 48) + 8) + 24);
      FigCFDictionarySetValue();
      if (Copy)
      {

        CFRelease(Copy);
      }
    }
  }
}

uint64_t APBrowserDeepCopyPlistAtKeyPath(const void *a1, const void *a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  Value = a1;
  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v7 = CFGetTypeID(a2);
  if (v7 != CFArrayGetTypeID() || !a3)
  {
    goto LABEL_17;
  }

  if (CFArrayGetCount(a2) < 1)
  {
LABEL_12:
    if (CFPropertyListIsValid(Value, kCFPropertyListBinaryFormat_v1_0))
    {
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], Value, 0);
      if (DeepCopy)
      {
        Value = 0;
        *a3 = DeepCopy;
        return Value;
      }

      Value = 4294960568;
LABEL_20:
      APSLogErrorAt();
      return Value;
    }

LABEL_17:
    OUTLINED_FUNCTION_1_22();
    goto LABEL_20;
  }

  v8 = 0;
  while (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 != CFDictionaryGetTypeID())
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
    Value = CFDictionaryGetValue(Value, ValueAtIndex);
    if (++v8 >= CFArrayGetCount(a2))
    {
      if (Value)
      {
        goto LABEL_12;
      }

      return 4294960569;
    }
  }

  return 4294960569;
}

void browser_callEventHandler(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  (*(a1 + 24))(*a1, *(a1 + 8), v2, *(a1 + 32));
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(v1);
}

uint64_t browser_startBTLEDeviceQuery(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (!a2)
  {
    browser_startBTLEDeviceQuery_cold_4();
    return 4294960591;
  }

  v5 = DerivedStorage;
  Value = CFDictionaryGetValue(*(DerivedStorage + 112), a2);
  if (!Value)
  {
    browser_startBTLEDeviceQuery_cold_3();
    return 4294960534;
  }

  v7 = Value;
  v8 = CFDictionaryGetValue(Value, @"IPAddress");
  shouldQueryIPAddress = browser_shouldQueryIPAddress(v8, &v18);
  if (shouldQueryIPAddress)
  {
    v16 = shouldQueryIPAddress;
    browser_startBTLEDeviceQuery_cold_1();
    return v16;
  }

  if (v18 == 1)
  {
    v10 = CFDictionaryGetValue(v7, @"port");
    v11 = *(v5 + 104);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v12)
    {
      v13 = v12(v11, a2, v8, v10, @"BT", browser_handleBTLEQueryEventExternal, a1);
      if (!v13)
      {
        CFRetain(a1);
        mach_absolute_time();
        Int64 = CFNumberCreateInt64();
        if (!Int64)
        {
          browser_startBTLEDeviceQuery_cold_2();
          return 4294960568;
        }

        v15 = Int64;
        CFDictionarySetValue(v7, @"lastQueryTicks", Int64);
        CFRelease(v15);
        return 0;
      }

      v16 = v13;
    }

    else
    {
      v16 = 4294954514;
    }

    APSLogErrorAt();
    return v16;
  }

  if (!v18)
  {
    browser_removeBonjourWithBTLE(a1, a2);
  }

  return 0;
}

uint64_t browser_shouldQueryIPAddress(const __CFString *a1, _BYTE *a2)
{
  v3 = browser_cfstringToSockAddr(a1);
  if (v3)
  {
    browser_shouldQueryIPAddress_cold_1();
  }

  else
  {
    *a2 = 1;
  }

  return v3;
}

uint64_t queryManagerGetInfo_QueryDevice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = *(CMBaseObjectGetDerivedStorage() + 8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __queryManagerGetInfo_QueryDevice_block_invoke;
  v17[3] = &unk_278BC7418;
  v17[4] = &v18;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a6;
  v17[11] = a7;
  dispatch_sync(v14, v17);
  v15 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return v15;
}

uint64_t browser_updateAVDevicePresent(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryGetCount(*(DerivedStorage + 112)) < 1)
  {
    v3 = 0;
    v4 = 2;
  }

  else
  {
    v3 = *(DerivedStorage + 198) != 0;
    if (*(DerivedStorage + 198))
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  if (*(DerivedStorage + 244) != v3)
  {
    v6 = browser_dispatchEvent(a1, v4, 0);
    if (v6)
    {
      v5 = v6;
      browser_updateAVDevicePresent_cold_1();
      return v5;
    }

    v7 = **DerivedStorage;
    if (v7 > 50)
    {
      goto LABEL_13;
    }

    if (v7 == -1)
    {
      v8 = *DerivedStorage;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v10 = *DerivedStorage;
    }

    APBrowserGetEventString(v4);
    LogPrintF();
LABEL_13:
    v5 = 0;
    *(DerivedStorage + 244) = v3;
    return v5;
  }

  return 0;
}

uint64_t APConnectivityHelperQueryWiFiPower(uint64_t a1, uint64_t a2)
{
  context[1] = a2;
  v4 = 0;
  context[0] = a1;
  dispatch_sync_f(*(a1 + 16), context, _APConnectivityHelperQueryWiFiPower);
  return v4;
}

uint64_t browser_removeNearbyDevice(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (APSRotatingKeyMapperIsInitialized() && APSRotatingKeyMapperRemoveID())
  {
    APSLogErrorAt();
  }

  v5 = CFGetAllocator(a1);
  DetailedModeEventInfoDictionary = APBrowserCreateDetailedModeEventInfoDictionary(v5, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &cf);
  if (DetailedModeEventInfoDictionary)
  {
    v17 = DetailedModeEventInfoDictionary;
LABEL_22:
    APSLogErrorAt();
    goto LABEL_16;
  }

  if (*(DerivedStorage + 24))
  {
    v7 = browser_dispatchEvent(a1, 5, cf);
    if (v7)
    {
      v17 = v7;
      goto LABEL_22;
    }
  }

  v8 = OUTLINED_FUNCTION_14_4();
  if (CFDictionaryGetValue(v8, v9))
  {
    if (CFDictionaryGetInt64())
    {
      v10 = CMBaseObjectGetDerivedStorage();
      --*(v10 + 240);
    }

    v11 = OUTLINED_FUNCTION_14_4();
    CFDictionaryRemoveValue(v11, v12);
    OUTLINED_FUNCTION_1_29();
    if (!(v15 ^ v16 | v14))
    {
      goto LABEL_15;
    }

    if (v13 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_15;
      }

      v19 = *DerivedStorage;
    }

    OUTLINED_FUNCTION_11();
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  APSLogErrorAt();
  v17 = 4294960569;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x282158188](a1, 0, 0, 0xFFFFFFFFLL, a5, 0);
}

uint64_t OUTLINED_FUNCTION_13_1()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v3 + 200);
  v5 = *(v3 + 96);

  return FigSimpleMutexUnlock();
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return CFDictionaryGetTypedValue();
}

uint64_t OUTLINED_FUNCTION_13_6()
{
  v4 = *(v2 + 80);

  return APTransportSessionHandleStreamEvent(v4, v0, 0, v1);
}

void _APConnectivityHelperQueryWiFiPower(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (*(v2 + 232))
  {
    APSLogErrorAt();
    v4 = -72203;
  }

  else
  {
    v4 = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(v2);
    if (v4)
    {
      APSLogErrorAt();
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v7 = ___APConnectivityHelperQueryWiFiPower_block_invoke;
      v8 = &unk_278BC7668;
      v9 = &v11;
      v10 = v2;
      qos_class = dispatch_queue_get_qos_class(*(v2 + 24), 0);
      if (qos_class_self() >= qos_class)
      {
        v7(block);
      }

      else
      {
        dispatch_async_and_wait(*(v2 + 24), block);
      }

      if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        *(v12 + 24);
        LogPrintF();
      }

      v4 = 0;
      *v3 = *(v12 + 24);
    }
  }

  *(a1 + 16) = v4;
  _Block_object_dispose(&v11, 8);
}

void sub_23D2CF284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped(uint64_t a1)
{
  v1 = _APConnectivityHelperStopWiFiDeviceAttachmentListener(a1);
  if (v1)
  {
    _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped_cold_1();
  }

  return v1;
}

void _APConnectivityHelperTrySettingWiFiDevice(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  if (*(a1 + 56))
  {
    goto LABEL_2;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v7 = ___APConnectivityHelperTrySettingWiFiDevice_block_invoke;
  v8 = &unk_278BC7668;
  v9 = &v11;
  v10 = a1;
  qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v7(block);
  }

  else
  {
    dispatch_async_and_wait(*(a1 + 24), block);
  }

  v3 = v12[5];
  if (v3)
  {
    *(a1 + 56) = v3;
    if (gLogCategory_APConnectivityHelper > 40)
    {
      goto LABEL_13;
    }

    if (gLogCategory_APConnectivityHelper == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_2;
      }

      v5 = *(a1 + 56);
    }

    LogPrintF();
LABEL_2:
    if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_13:
    if (*(a1 + 87))
    {
      started = _APConnectivityHelperDispatchEvent(a1, 1, 0);
      if (started)
      {
        goto LABEL_34;
      }

      *(a1 + 87) = 0;
    }

    if (*(a1 + 86))
    {
      started = _APConnectivityHelperStartWiFiPowerListener(a1);
      if (started)
      {
        goto LABEL_34;
      }

      *(a1 + 86) = 0;
    }

    if (*(a1 + 82))
    {
      started = _APConnectivityHelperStartWiFiNetworkListener(a1);
      if (started)
      {
        goto LABEL_34;
      }

      *(a1 + 82) = 0;
    }

    if (*(a1 + 84))
    {
      started = _APConnectivityHelperStartLinkDebounceFailedListener(a1);
      if (started)
      {
        goto LABEL_34;
      }

      *(a1 + 84) = 0;
    }

    if (!*(a1 + 210))
    {
      started = 0;
      goto LABEL_29;
    }

    started = _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted(a1);
    if (!started)
    {
      *(a1 + 210) = 0;
      goto LABEL_29;
    }

LABEL_34:
    APSLogErrorAt();
LABEL_29:
    _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped(a1);
    if (started)
    {
      APSLogErrorAt();
    }
  }

  _Block_object_dispose(&v11, 8);
}

void sub_23D2CF5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(uint64_t a1)
{
  if (!*(a1 + 88) && !*(a1 + 56))
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted_cold_1();
    }

    *(a1 + 88) = 1;
    updated = _APConnectivityHelperUpdateInterfaceAddedListener(a1);
    if (updated)
    {
      v7 = updated;
      _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted_cold_2(updated, a1);
      return v7;
    }

    if (!_APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted_cold_4())
    {
      CFGetAllocator(a1);
      v3 = WiFiManagerClientCreate();
      if (v3)
      {
        v4 = v3;
        v5 = *MEMORY[0x277D298C8];
        v6 = *MEMORY[0x277CBED28];
        WiFiManagerClientSetProperty();
        CFRelease(v4);
      }

      else if (gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted_cold_3();
      }
    }
  }

  _APConnectivityHelperTrySettingWiFiDevice(a1);
  return 0;
}

uint64_t _APConnectivityHelperStopWiFiDeviceAttachmentListener(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    return 0;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7()))
  {
    OUTLINED_FUNCTION_11();
  }

  *(a1 + 88) = 0;
  _APConnectivityHelperUpdateInterfaceAddedListener(a1);
  if (!*(a1 + 216))
  {
    return 0;
  }

  v2 = _APConnectivityHelperDispatchEvent(a1, 0x65, 0);
  if (v2)
  {
    APSLogErrorAt();
  }

  return v2;
}

uint64_t browser_getDeviceRelationship(uint64_t a1, const void *a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = v6[20];
  CFDictionaryGetTypeID();
  if (!CFDictionaryGetTypedValue())
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    v8 = APAdvertiserInfoCopyProperty(a3, 0, @"publicCUSystemPairingIdentity", 0, 0);
    v9 = v6[21];
    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      CFDictionarySetValue(v6[20], a2, TypedValue);
      CFDictionaryRemoveValue(v6[21], v8);
      CFStringGetTypeID();
      v17[0] = @"rapportBonjourCorrelationType";
      v17[1] = @"rapportBonjourCorrelationID";
      v18[0] = &unk_284F652D8;
      v18[1] = a2;
      v11 = CFDictionaryGetTypedValue();
      CFDictionarySetValue(v6[19], v11, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2]);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (!TypedValue)
    {
      goto LABEL_13;
    }
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged >= 3)
  {
    v13 = **DerivedStorage;
    if (v13 <= 90)
    {
      if (v13 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v16 = *DerivedStorage;
      }

      LogPrintF();
    }

LABEL_13:
    Int64Ranged = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return Int64Ranged;
}

uint64_t APBrowserCreateDetailedModeEventInfoDictionary(const __CFAllocator *a1, const void *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9, int a10, char a11, uint64_t a12, __CFDictionary **a13)
{
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(a1, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v19 = Mutable;
      CFDictionarySetValue(Mutable, @"deviceID", a2);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v20 = *MEMORY[0x277CBED28];
      v21 = *MEMORY[0x277CBED10];
      if (a5)
      {
        v22 = *MEMORY[0x277CBED28];
      }

      else
      {
        v22 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v19, @"isLegacyPresent", v22);
      if (a11)
      {
        v23 = v20;
      }

      else
      {
        v23 = v21;
      }

      CFDictionarySetValue(v19, @"isLocallyAdvertised", v23);
      if (a6)
      {
        v24 = v20;
      }

      else
      {
        v24 = v21;
      }

      CFDictionarySetValue(v19, @"isModernPresent", v24);
      if (a7)
      {
        v25 = v20;
      }

      else
      {
        v25 = v21;
      }

      CFDictionarySetValue(v19, @"isModernPresentOnInfra", v25);
      if (a8)
      {
        v26 = v20;
      }

      else
      {
        v26 = v21;
      }

      CFDictionarySetValue(v19, @"isPresentOnInfra", v26);
      CFDictionarySetInt64();
      FigCFDictionarySetValue();
      if (a9)
      {
        CFDictionarySetInt64();
      }

      result = 0;
      *a13 = v19;
    }

    else
    {
      APBrowserCreateDetailedModeEventInfoDictionary_cold_1();
      return 4294960568;
    }
  }

  else
  {
    APBrowserCreateDetailedModeEventInfoDictionary_cold_2();
    return 4294960591;
  }

  return result;
}

uint64_t browser_copyDeviceEventRecorder(const __CFDictionary *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    browser_copyDeviceEventRecorder_cold_2();
    return 4294960591;
  }

  if (!a2)
  {
    browser_copyDeviceEventRecorder_cold_1();
    return 4294960591;
  }

  Value = CFDictionaryGetValue(a1, @"eventRecorder");
  if (Value)
  {
    v7 = Value;
    CFRetain(Value);
    v8 = 0;
LABEL_7:
    v10 = 0;
    *a3 = v7;
    goto LABEL_8;
  }

  v8 = CFStringCreateWithFormat(0, 0, @"APBrowser-%@", a2);
  v9 = APSEventRecorderCreate();
  if (!v9)
  {
    CFDictionarySetValue(a1, @"eventRecorder", 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = v9;
  APSLogErrorAt();
LABEL_8:
  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
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

uint64_t _APAdvertiserInfoAddStringToTXTRecord(const __CFString *a1, TXTRecordRef *a2, const char *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    _APAdvertiserInfoAddStringToTXTRecord_cold_4();
LABEL_9:
    v7 = 4294960591;
    goto LABEL_6;
  }

  if (!CFStringGetLength(a1))
  {
    _APAdvertiserInfoAddStringToTXTRecord_cold_3();
    goto LABEL_9;
  }

  buffer[0] = 0;
  if (CFStringGetCString(a1, buffer, 256, 0x8000100u))
  {
    v6 = strlen(buffer);
    v7 = TXTRecordSetValue(a2, a3, v6, buffer);
    if (v7)
    {
      _APAdvertiserInfoAddStringToTXTRecord_cold_1();
    }
  }

  else
  {
    _APAdvertiserInfoAddStringToTXTRecord_cold_2();
    v7 = 4294960559;
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t APTransportDeviceCopyCUDNSNames(uint64_t a1)
{
  v10 = 0;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24);
    Int64 = CFDictionaryGetInt64();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 16) + 80);
    if (!v5 || (v6 = *(VTable + 16) + 80, (v7 = v5(v1, Int64, &v10), v7 != -6727) ? (v8 = v7 == 0) : (v8 = 1), !v8))
    {
      APSLogErrorAt();
    }
  }

  return v10;
}

uint64_t browser_CopyCUDNSNamesForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __browser_CopyCUDNSNamesForDeviceID_block_invoke;
  v9[3] = &unk_278BC80E0;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_23D2D0094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAdvertiserInfoCopyAirPlayDataWithNANServiceType(uint64_t a1, unsigned int a2, CFDataRef *a3)
{
  v97 = *MEMORY[0x277D85DE8];
  v93 = 0;
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (a3)
  {
    v6 = *(a1 + 80);
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged)
    {
      v8 = snprintf(__str, 0x100uLL, "%u", Int64Ranged);
      v93 = TXTRecordSetValue(&txtRecord, "act", v8, __str);
      if (v93)
      {
        APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_1();
        goto LABEL_94;
      }
    }

    v9 = *(a1 + 80);
    v10 = CFDictionaryGetInt64Ranged();
    v11 = snprintf(__str, 0x100uLL, "%u", v10);
    v93 = TXTRecordSetValue(&txtRecord, "acl", v11, __str);
    if (v93)
    {
      APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_2();
    }

    else
    {
      Value = CFDictionaryGetValue(*(a1 + 80), @"bluetoothAddress");
      cf = Value;
      if (Value)
      {
        if (CFStringGetLength(Value))
        {
          v93 = _APAdvertiserInfoAddStringToTXTRecord(cf, &txtRecord, "btaddr");
          if (v93)
          {
            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_3();
            goto LABEL_94;
          }
        }
      }

      v13 = CFDictionaryGetValue(*(a1 + 80), @"deviceID");
      v93 = _APAdvertiserInfoAddStringToTXTRecord(v13, &txtRecord, "deviceid");
      if (v93)
      {
        APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_4();
      }

      else if (!a2 && (v70 = *(a1 + 80), CFStringGetTypeID(), v71 = CFDictionaryGetTypedValue(), (cft = v71) != 0) && CFStringGetLength(v71) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cft, &txtRecord, "cid")) != 0)
      {
        APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_5();
      }

      else
      {
        v14 = *(a1 + 80);
        CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        cfa = TypedValue;
        if (TypedValue)
        {
          if (CFStringGetLength(TypedValue))
          {
            v93 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "c");
            if (v93)
            {
              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_6();
              goto LABEL_94;
            }
          }
        }

        if (CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
        {
          v93 = APSFeaturesCopyStringRepresentation();
          if (v93)
          {
            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_7();
            goto LABEL_94;
          }

          v93 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "fex");
          CFRelease(cfa);
          if (v93)
          {
            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_8();
            goto LABEL_94;
          }

          LegacyFlags = APSFeaturesGetLegacyFlags();
          TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, __str);
          v93 = TXTRecordSetValue(&txtRecord, "features", TXTRecordNumberCString, __str);
          if (v93)
          {
            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_9();
            goto LABEL_94;
          }
        }

        v18 = *(a1 + 80);
        Int64 = CFDictionaryGetInt64();
        if (Int64 && (v20 = _APAdvertiserInfoGetTXTRecordNumberCString(Int64, __str), (v93 = TXTRecordSetValue(&txtRecord, "rsf", v20, __str)) != 0))
        {
          APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_10();
        }

        else
        {
          v21 = CFDictionaryGetValue(*(a1 + 80), @"firmwareVersion");
          cfb = v21;
          if (v21)
          {
            if (CFStringGetLength(v21))
            {
              v93 = _APAdvertiserInfoAddStringToTXTRecord(cfb, &txtRecord, "fv");
              if (v93)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_11();
                goto LABEL_94;
              }
            }
          }

          v22 = *(a1 + 80);
          v23 = CFDictionaryGetInt64Ranged();
          if (v23 && (v24 = snprintf(__str, 0x100uLL, "0x%x", v23), (v93 = TXTRecordSetValue(&txtRecord, "flags", v24, __str)) != 0))
          {
            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_12();
          }

          else
          {
            v25 = CFDictionaryGetValue(*(a1 + 80), @"groupID");
            cfc = v25;
            if (v25 && CFStringGetLength(v25))
            {
              v93 = _APAdvertiserInfoAddStringToTXTRecord(cfc, &txtRecord, "gid");
              if (v93)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_13();
                goto LABEL_94;
              }

              v26 = *(a1 + 80);
              v27 = CFDictionaryGetInt64();
              v28 = snprintf(__str, 0x100uLL, "%u", v27 != 0);
              v93 = TXTRecordSetValue(&txtRecord, "igl", v28, __str);
              if (v93)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_14();
                goto LABEL_94;
              }

              v29 = *(a1 + 80);
              v30 = CFDictionaryGetInt64();
              v31 = snprintf(__str, 0x100uLL, "%u", v30 != 0);
              v93 = TXTRecordSetValue(&txtRecord, "gcgl", v31, __str);
              if (v93)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_15();
                goto LABEL_94;
              }

              v32 = CFDictionaryGetValue(*(a1 + 80), @"groupPublicName");
              cfd = v32;
              if (v32)
              {
                if (CFStringGetLength(v32))
                {
                  v93 = _APAdvertiserInfoAddStringToTXTRecord(cfd, &txtRecord, "gpn");
                  if (v93)
                  {
                    APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_16();
                    goto LABEL_94;
                  }
                }
              }
            }

            if (a2 >= 2)
            {
              TXTString = APSNANServiceTypeGetTXTString();
              if (!TXTString)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_40();
                goto LABEL_94;
              }

              v93 = _APAdvertiserInfoAddStringToTXTRecord(TXTString, &txtRecord, "nanST");
              if (v93)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_17();
                goto LABEL_94;
              }
            }

            v34 = *(a1 + 80);
            v35 = CFDictionaryGetInt64Ranged();
            v36 = snprintf(__str, 0x100uLL, "%u", v35);
            v93 = TXTRecordSetValue(&txtRecord, "psgsz", v36, __str);
            if (v93)
            {
              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_18();
              goto LABEL_94;
            }

            v37 = *(a1 + 80);
            v38 = CFDictionaryGetInt64Ranged();
            v39 = snprintf(__str, 0x100uLL, "%u", v38);
            v93 = TXTRecordSetValue(&txtRecord, "psgtp", v39, __str);
            if (v93)
            {
              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_19();
              goto LABEL_94;
            }

            v40 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupUUID");
            cfe = v40;
            if (v40 && CFStringGetLength(v40) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfe, &txtRecord, "psgid")) != 0)
            {
              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_20();
            }

            else
            {
              v41 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupModel");
              cff = v41;
              if (v41 && CFStringGetLength(v41) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cff, &txtRecord, "pgm")) != 0)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_21();
              }

              else
              {
                v42 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupMemberID");
                cfg = v42;
                if (v42 && CFStringGetLength(v42) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfg, &txtRecord, "pgmid")) != 0)
                {
                  APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_22();
                }

                else
                {
                  v43 = CFDictionaryGetValue(*(a1 + 80), @"parentGroupID");
                  cfh = v43;
                  if (v43 && CFStringGetLength(v43))
                  {
                    v93 = _APAdvertiserInfoAddStringToTXTRecord(cfh, &txtRecord, "pgid");
                    if (v93)
                    {
                      APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_23();
                      goto LABEL_94;
                    }

                    v44 = *(a1 + 80);
                    v45 = CFDictionaryGetInt64();
                    v46 = snprintf(__str, 0x100uLL, "%u", v45 != 0);
                    v93 = TXTRecordSetValue(&txtRecord, "pgcgl", v46, __str);
                    if (v93)
                    {
                      APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_24();
                      goto LABEL_94;
                    }
                  }

                  v47 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncUUID");
                  cfi = v47;
                  if (v47 && CFStringGetLength(v47) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfi, &txtRecord, "tsid")) != 0)
                  {
                    APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_25();
                  }

                  else
                  {
                    v48 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncGroupModel");
                    cfj = v48;
                    if (v48 && CFStringGetLength(v48) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfj, &txtRecord, "tsm")) != 0)
                    {
                      APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_26();
                    }

                    else
                    {
                      v49 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel");
                      cfk = v49;
                      if (v49 && CFStringGetLength(v49) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfk, &txtRecord, "model")) != 0)
                      {
                        APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_27();
                      }

                      else
                      {
                        v50 = CFDictionaryGetValue(*(a1 + 80), @"manufacturer");
                        cfl = v50;
                        if (v50 && CFStringGetLength(v50) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfl, &txtRecord, "manufacturer")) != 0)
                        {
                          APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_28();
                        }

                        else
                        {
                          v51 = CFDictionaryGetValue(*(a1 + 80), @"serialNumber");
                          cfm = v51;
                          if (v51 && CFStringGetLength(v51) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfm, &txtRecord, "serialNumber")) != 0)
                          {
                            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_29();
                          }

                          else
                          {
                            v52 = *(a1 + 80);
                            v53 = CFDictionaryGetInt64Ranged();
                            v54 = snprintf(__str, 0x100uLL, "%u", v53);
                            v93 = TXTRecordSetValue(&txtRecord, "at", v54, __str);
                            if (v93)
                            {
                              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_30();
                            }

                            else
                            {
                              v93 = 0;
                              v55 = *(a1 + 80);
                              if (CFDictionaryGetInt64() && (v93 = TXTRecordSetValue(&txtRecord, "pw", 1u, "1")) != 0)
                              {
                                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_31();
                              }

                              else
                              {
                                v56 = CFDictionaryGetValue(*(a1 + 80), @"protocolVersion");
                                cfn = v56;
                                if (v56 && CFStringGetLength(v56) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfn, &txtRecord, "protovers")) != 0)
                                {
                                  APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_32();
                                }

                                else
                                {
                                  v57 = CFDictionaryGetValue(*(a1 + 80), @"publicCUAirPlayPairingIdentity");
                                  cfo = v57;
                                  if (v57 && CFStringGetLength(v57) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfo, &txtRecord, "pi")) != 0)
                                  {
                                    APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_33();
                                  }

                                  else
                                  {
                                    v58 = CFDictionaryGetValue(*(a1 + 80), @"publicCUSystemPairingIdentity");
                                    cfp = v58;
                                    if (v58 && CFStringGetLength(v58) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfp, &txtRecord, "psi")) != 0)
                                    {
                                      APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_34();
                                    }

                                    else
                                    {
                                      v59 = CFDictionaryGetValue(*(a1 + 80), @"publicKey");
                                      cfq = v59;
                                      if (v59 && CFStringGetLength(v59) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfq, &txtRecord, "pk")) != 0)
                                      {
                                        APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_35();
                                      }

                                      else
                                      {
                                        v60 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
                                        cfr = v60;
                                        if (v60 && CFStringGetLength(v60) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfr, &txtRecord, "srcvers")) != 0)
                                        {
                                          APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_36();
                                        }

                                        else
                                        {
                                          v61 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
                                          cfs = v61;
                                          if (v61 && CFStringGetLength(v61) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cfs, &txtRecord, "osvers")) != 0)
                                          {
                                            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_37();
                                          }

                                          else
                                          {
                                            v62 = *(a1 + 80);
                                            v63 = CFDictionaryGetInt64Ranged();
                                            if (v63 && (v64 = snprintf(__str, 0x100uLL, "%u", v63), (v93 = TXTRecordSetValue(&txtRecord, "vv", v64, __str)) != 0))
                                            {
                                              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_38();
                                            }

                                            else
                                            {
                                              BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
                                              Length = TXTRecordGetLength(&txtRecord);
                                              v67 = CFDataCreate(0, BytesPtr, Length);
                                              if (v67)
                                              {
                                                *a3 = v67;
                                              }

                                              else
                                              {
                                                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_39();
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

  else
  {
    APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_41();
  }

LABEL_94:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  result = v93;
  v69 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _APAdvertiserInfoGetTXTRecordNumberCString(unint64_t a1, char *__str)
{
  if (HIDWORD(a1))
  {
    return snprintf(__str, 0x100uLL, "0x%X,0x%X");
  }

  else
  {
    return snprintf(__str, 0x100uLL, "0x%X");
  }
}

uint64_t _APAdvertiserInfoAddAirPlayData(uint64_t a1, uint64_t a2)
{
  value = 0;
  v55 = 0;
  cf[0] = 0;
  cf[1] = 0;
  Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (Int64FromTXTRecord != -6727)
  {
    v5 = Int64FromTXTRecord;
    if (Int64FromTXTRecord)
    {
      goto LABEL_178;
    }

    v6 = *(a1 + 80);
    CFDictionarySetInt64();
  }

  v7 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v7 != -6727)
  {
    v5 = v7;
    if (v7)
    {
      goto LABEL_178;
    }

    v8 = *(a1 + 80);
    CFDictionarySetInt64();
  }

  v9 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v9 != -6727)
  {
    v5 = v9;
    if (v9)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"bluetoothAddress", value);
  }

  if (APSTXTRecordUtilsCopyCFStringFromTXTRecord())
  {
    _APAdvertiserInfoAddAirPlayData_cold_1();
    v5 = v57;
    goto LABEL_179;
  }

  CFDictionarySetValue(*(a1 + 80), @"deviceID", value);
  v10 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v10 != -6727)
  {
    v5 = v10;
    if (v10)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"correlationID", value);
  }

  APSFeaturesFromTXTRecord = APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(a2, @"fex", @"features", cf);
  if (APSFeaturesFromTXTRecord != -6727)
  {
    v5 = APSFeaturesFromTXTRecord;
    if (APSFeaturesFromTXTRecord)
    {
      goto LABEL_178;
    }

    v12 = cf[0];
    _APAdvertiserInfoSetFeaturesEx(*(a1 + 80), cf[0]);
    if (v12)
    {
      CFRelease(v12);
      cf[0] = 0;
    }
  }

  v13 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v13 != -6727)
  {
    v5 = v13;
    if (v13)
    {
      goto LABEL_178;
    }

    v14 = *(a1 + 80);
    CFDictionarySetInt64();
  }

  v15 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v15 != -6727)
  {
    v5 = v15;
    if (v15)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"firmwareVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v16 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v16 != -6727)
  {
    v5 = v16;
    if (v16)
    {
      goto LABEL_178;
    }

    v17 = *(a1 + 80);
    CFDictionarySetInt64();
  }

  BooleanFromTXTRecord = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (BooleanFromTXTRecord != -6727)
  {
    v5 = BooleanFromTXTRecord;
    if (BooleanFromTXTRecord)
    {
      goto LABEL_178;
    }

    v19 = MEMORY[0x277CBED28];
    if (!v55)
    {
      v19 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(a1 + 80), @"groupContainsDiscoverableLeader", *v19);
  }

  v20 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v20 != -6727)
  {
    v5 = v20;
    if (v20)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"groupID", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v21 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v21 != -6727)
  {
    v5 = v21;
    if (v21)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"groupPublicName", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v22 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (v22 != -6727)
  {
    v5 = v22;
    if (v22)
    {
      goto LABEL_178;
    }

    v23 = MEMORY[0x277CBED28];
    if (!v55)
    {
      v23 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(a1 + 80), @"isGroupLeader", *v23);
  }

  v24 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v24 != -6727)
  {
    v5 = v24;
    if (v24)
    {
      goto LABEL_178;
    }

    v25 = *(a1 + 80);
    CFDictionarySetInt64();
  }

  v26 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v26 != -6727)
  {
    v5 = v26;
    if (v26)
    {
      goto LABEL_178;
    }

    v27 = *(a1 + 80);
    CFDictionarySetInt64();
  }

  v28 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v28 != -6727)
  {
    v5 = v28;
    if (v28)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"persistentGroupUUID", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v29 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v29 != -6727)
  {
    v5 = v29;
    if (v29)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"persistentGroupModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v30 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v30 != -6727)
  {
    v5 = v30;
    if (v30)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"persistentGroupMemberID", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v31 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (v31 != -6727)
  {
    v5 = v31;
    if (v31)
    {
      goto LABEL_178;
    }

    v32 = MEMORY[0x277CBED28];
    if (!v55)
    {
      v32 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(a1 + 80), @"parentGroupContainsDiscoverableLeader", *v32);
  }

  v33 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v33 != -6727)
  {
    v5 = v33;
    if (v33)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"parentGroupID", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v34 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v34 != -6727)
  {
    v5 = v34;
    if (v34)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"tightSyncUUID", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v35 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v35 != -6727)
  {
    v5 = v35;
    if (v35)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"tightSyncGroupModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v36 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v36 != -6727)
  {
    v5 = v36;
    if (v36)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"deviceModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v37 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v37 != -6727)
  {
    v5 = v37;
    if (v37)
    {
      goto LABEL_178;
    }

    if (APSIsValidDeviceEnclosureColorString())
    {
      CFDictionarySetValue(*(a1 + 80), @"deviceEnclosureColor", value);
    }

    else if (gLogCategory_APAdvertiserInfo <= 60 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
    {
      _APAdvertiserInfoAddAirPlayData_cold_2(&value);
    }

    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v38 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v38 != -6727)
  {
    v5 = v38;
    if (v38)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"manufacturer", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v39 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v39 != -6727)
  {
    v5 = v39;
    if (v39)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"company", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v40 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v40 != -6727)
  {
    v5 = v40;
    if (v40)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"serialNumber", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v41 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v41 != -6727)
  {
    v5 = v41;
    if (v41)
    {
      goto LABEL_178;
    }

    v42 = *(a1 + 80);
    CFDictionarySetInt64();
  }

  v43 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (v43 != -6727)
  {
    v5 = v43;
    if (v43)
    {
      goto LABEL_178;
    }

    v44 = MEMORY[0x277CBED28];
    if (!v55)
    {
      v44 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(a1 + 80), @"password", *v44);
  }

  v45 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v45 != -6727)
  {
    v5 = v45;
    if (v45)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"protocolVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v46 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v46 != -6727)
  {
    v5 = v46;
    if (v46)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"publicCUAirPlayPairingIdentity", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v47 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v47 != -6727)
  {
    v5 = v47;
    if (v47)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"publicCUSystemPairingIdentity", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v48 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v48 != -6727)
  {
    v5 = v48;
    if (v48)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"publicKey", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v49 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v49 != -6727)
  {
    v5 = v49;
    if (v49)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"airPlayVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v50 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v50 != -6727)
  {
    v5 = v50;
    if (v50)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"OSVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v51 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v51 == -6727)
  {
    v5 = 0;
    goto LABEL_179;
  }

  v5 = v51;
  if (!v51)
  {
    v52 = *(a1 + 80);
    CFDictionarySetInt64();
    goto LABEL_179;
  }

LABEL_178:
  APSLogErrorAt();
LABEL_179:
  if (value)
  {
    CFRelease(value);
  }

  return v5;
}

uint64_t APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  Int64FromTXTRecord = v6;
  if (v6 != -6727)
  {
    if (v6)
    {
      APSLogErrorAt();
      return Int64FromTXTRecord;
    }

    v7 = APSFeaturesCreateFromStringRepresentation();
    goto LABEL_7;
  }

  if (a3)
  {
    Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (Int64FromTXTRecord)
    {
      APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx_cold_1();
      return Int64FromTXTRecord;
    }

    v7 = APSFeaturesCreateFromLegacyFlags();
    if (!v7)
    {
      APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx_cold_2();
      return Int64FromTXTRecord;
    }

LABEL_7:
    *a4 = v7;
  }

  return Int64FromTXTRecord;
}

uint64_t _APAdvertiserInfoSetFeaturesEx(CFMutableDictionaryRef theDict, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDataGetTypeID())
    {
      _APAdvertiserInfoSetFeaturesEx_cold_1();
      return 0;
    }

    CFDictionarySetValue(theDict, @"featuresEx", cf);
    APSFeaturesGetLegacyFlags();
  }

  else
  {
    CFDictionaryRemoveValue(theDict, @"featuresEx");
  }

  CFDictionarySetInt64();
  return 0;
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
      _APAdvertiserInfoCompare_cold_2();
      return 0;
    }
  }

  else
  {
    _APAdvertiserInfoCompare_cold_1();
    return 1;
  }
}

uint64_t APBrowserRapportManager_sendDeviceEvent(void *a1, uint64_t a2)
{
  v2 = 4294895013;
  if (!a2)
  {
    v2 = 4294895015;
LABEL_13:
    APBrowserRapportManager_sendDeviceEvent_cold_1();
    return v2;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    goto LABEL_13;
  }

  v5 = TypedValue;
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  if (!(v6 | CFDictionaryGetTypedValue()))
  {
    goto LABEL_13;
  }

  CFNumberGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v2 = 4294895016;
    goto LABEL_13;
  }

  v10 = Mutable;
  CFDictionarySetValue(Mutable, @"rapportDeviceID", v5);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  CFDictionarySetValue(v10, @"deviceRelationship", v8);
  APBrowserRapportManager_dispatchEvent(a1, 0, v10);
  CFRelease(v10);
  return 0;
}

void APBrowserRapportManager_dispatchEvent(void *cf, int a2, const void *a3)
{
  v3 = cf[7];
  if (v3 && !*(cf + 51))
  {
    v7 = cf[8];
    CFRetain(cf);
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = cf[3];
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    v11 = __APBrowserRapportManager_dispatchEvent_block_invoke;
    v12 = &__block_descriptor_68_e5_v8__0l;
    v13 = v3;
    v14 = cf;
    v17 = a2;
    v15 = a3;
    v16 = v7;
    dispatch_async(v9, block);
  }
}

void browser_handleRapportEventExternal(uint64_t a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  if (a3)
  {
    CFRetain(a3);
  }

  v8 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __browser_handleRapportEventExternal_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v10 = a2;
  block[4] = a4;
  block[5] = a3;
  dispatch_async(v8, block);
}

void __browser_handleRapportEventExternal_block_invoke(uint64_t a1)
{
  v48[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v20 = *DerivedStorage;
      v21 = **v6;
      if (v21 > 40)
      {
        goto LABEL_53;
      }

      if (v21 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_53;
        }

        v27 = *v6;
      }

      goto LABEL_24;
    }

    if (v2 != 4)
    {
LABEL_22:
      v22 = *DerivedStorage;
      v23 = **v6;
      if (v23 > 60)
      {
        goto LABEL_53;
      }

      if (v23 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_53;
        }

        v28 = *v6;
      }

LABEL_24:
      LogPrintF();
      goto LABEL_53;
    }

    v15 = *DerivedStorage;
    v16 = **v6;
    if (v16 <= 40)
    {
      if (v16 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_36;
        }

        v42 = *v6;
      }

      LogPrintF();
    }

LABEL_36:
    CFRelease(v3);
    goto LABEL_53;
  }

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      LODWORD(v48[0]) = 0;
      v18 = CMBaseObjectGetDerivedStorage();
      v19 = **v18;
      if (v19 <= 20)
      {
        if (v19 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_40;
          }

          v43 = *v18;
        }

        LogPrintF();
      }

LABEL_40:
      if (!TypedValue || (v29 = *(v18 + 152), CFDictionaryGetTypeID(), v30 = CFDictionaryGetTypedValue(), Int64 = CFDictionaryGetInt64(), (Value = CFDictionaryGetValue(v30, @"rapportBonjourCorrelationID")) == 0))
      {
        APSLogErrorAt();
LABEL_66:
        APSLogErrorAt();
        goto LABEL_53;
      }

      v33 = Value;
      if (Int64 == 1)
      {
        v36 = CFRetain(Value);
        v37 = 160;
      }

      else
      {
        if (Int64)
        {
          LODWORD(v48[0]) = -6736;
          APSLogErrorAt();
          goto LABEL_52;
        }

        v34 = *(v18 + 176);
        CFNumberGetTypeID();
        v35 = CFDictionaryGetTypedValue();
        if (v35)
        {
          v36 = CFRetain(v35);
        }

        else
        {
          v36 = 0;
        }

        CFDictionaryRemoveValue(*(v18 + 176), v33);
        v37 = 168;
      }

      CFDictionaryRemoveValue(*(v18 + v37), v33);
      CFDictionaryRemoveValue(*(v18 + 152), TypedValue);
      if (v36)
      {
        browser_updateEventInfoForDevice(v3, v36);
        CFRelease(v36);
      }

LABEL_52:
      if (!LODWORD(v48[0]))
      {
        goto LABEL_53;
      }

      goto LABEL_66;
    }

    goto LABEL_22;
  }

  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  v8 = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (!v7)
  {
    __browser_handleRapportEventExternal_block_invoke_cold_7();
LABEL_59:
    v26 = -6705;
    goto LABEL_60;
  }

  if (!v4)
  {
    __browser_handleRapportEventExternal_block_invoke_cold_6();
    goto LABEL_59;
  }

  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!(v9 | v10))
  {
    __browser_handleRapportEventExternal_block_invoke_cold_5();
    goto LABEL_59;
  }

  if (v9)
  {
    v11 = *(v8 + 176);
    CFNumberGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    if (!v12 || (v13 = CFRetain(v12), (key = v13) == 0))
    {
      v47[0] = @"rapportBonjourCorrelationType";
      v47[1] = @"rapportBonjourCorrelationID";
      v48[0] = &unk_284F652F0;
      v48[1] = v9;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
      CFDictionarySetValue(*(v8 + 168), v9, v4);
      CFDictionarySetValue(*(v8 + 152), v7, v14);
      goto LABEL_53;
    }

LABEL_28:
    v45[0] = @"rapportBonjourCorrelationType";
    v45[1] = @"rapportBonjourCorrelationID";
    v46[0] = &unk_284F652D8;
    v46[1] = v13;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    CFDictionarySetValue(*(v8 + 160), key, v4);
    CFDictionarySetValue(*(v8 + 152), v7, v25);
    browser_updateEventInfoForDevice(v3, key);
    v26 = 0;
    goto LABEL_29;
  }

  if (!v10)
  {
    goto LABEL_53;
  }

  DeviceIDFromString = APBrowserCreateDeviceIDFromString(v10, &key);
  if (!DeviceIDFromString)
  {
    v13 = key;
    if (!key)
    {
      goto LABEL_53;
    }

    goto LABEL_28;
  }

  v26 = DeviceIDFromString;
  __browser_handleRapportEventExternal_block_invoke_cold_4();
LABEL_60:
  CFDictionaryRemoveValue(*(v8 + 152), v7);
  if (key)
  {
    CFDictionaryRemoveValue(*(v8 + 160), key);
  }

  else
  {
    v40 = **v8;
    if (v40 <= 90)
    {
      if (v40 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_29;
        }

        v41 = *v8;
      }

      LogPrintF();
    }
  }

LABEL_29:
  if (key)
  {
    CFRelease(key);
  }

  if (v26)
  {
    __browser_handleRapportEventExternal_block_invoke_cold_8();
  }

LABEL_53:
  CFRelease(*(a1 + 32));
  v38 = *(a1 + 40);
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void _APBonjourBrowserHandleRAOPEvent(int a1, uint64_t a2, _WORD *a3)
{
  if (a3)
  {
    switch(a1)
    {
      case 1:
        if (a3[20])
        {
          v4 = OUTLINED_FUNCTION_18();
          if (_APBonjourBrowserHandleDeviceEvent(v4, v5, v6, v7))
          {
            goto LABEL_28;
          }
        }

        break;
      case 2:
        if (a3[20])
        {
          v9 = OUTLINED_FUNCTION_19();
          if (_APBonjourBrowserHandleDeviceEvent(v9, v10, v11, v12))
          {
            goto LABEL_28;
          }
        }

        break;
      case 3:
        if (gLogCategory_APBonjourBrowser <= 40 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_7()))
        {
          OUTLINED_FUNCTION_11();
        }

        if (_APBonjourBrowserHandleStopEvent(a3))
        {
          goto LABEL_28;
        }

        CFRelease(a3);
        break;
      case 4:
        if (gLogCategory_APBonjourBrowser <= 60)
        {
          OUTLINED_FUNCTION_5_6();
          if (!v8 || _LogCategory_Initialize())
          {
            LogPrintF();
          }
        }

        if (_APBonjourBrowserHandleRestartedEvent(a3, @"RAOP"))
        {
          goto LABEL_28;
        }

        break;
      default:
        if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        break;
    }
  }

  else
  {
LABEL_28:

    APSLogErrorAt();
  }
}

uint64_t browser_handleBonjourAddOrUpdate(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  v8 = 0;
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a2)
    {
      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      v8 = 0;
      if (TypedValue && CFArrayGetCount(TypedValue))
      {
        browser_handleBonjourAddOrUpdate_cold_1(a1, a2, a3, &v8);
      }

      else
      {
        browser_handleBonjourAddOrUpdate_cold_2(a1, a2, a3, &v8);
      }
    }

    else
    {
      browser_handleBonjourAddOrUpdate_cold_3();
    }
  }

  else
  {
    browser_handleBonjourAddOrUpdate_cold_4();
  }

  return v8;
}

uint64_t browser_handleBonjourAddOrUpdate_cold_2(const void *a1, __CFString *a2, const __CFDictionary *a3, _DWORD *a4)
{
  result = browser_addOrUpdateService(a1, a2, a3, 0);
  *a4 = result;
  if (result)
  {
    return APSLogErrorAt();
  }

  return result;
}

uint64_t _APBonjourBrowserHandleDeviceEvent(const void *a1, uint64_t a2, const __CFDictionary *a3, const void *a4)
{
  v15 = 0;
  v14 = 0;
  BonjourDevice_GetDeviceID();
  if (!CFDictionaryGetValue(a3, @"name"))
  {
    _APBonjourBrowserHandleDeviceEvent_cold_3(&v15);
    return v15;
  }

  v8 = gLogCategory_APBonjourBrowser;
  if (gLogCategory_APBonjourBrowser <= 20)
  {
    if (gLogCategory_APBonjourBrowser == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v8 = gLogCategory_APBonjourBrowser;
    }

    if (v8 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_10:
  Value = CFDictionaryGetValue(a3, @"txt");
  if (gLogCategory_APBonjourBrowser <= 10)
  {
    v10 = Value;
    if (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize())
    {
      _APBonjourBrowserHandleDeviceEvent_cold_2(v10);
    }
  }

  v11 = CFGetAllocator(a1);
  v15 = _APBonjourBrowserCreateEventInfoDictionary(v11, a3, a4, &v14);
  if (v15)
  {
    APSLogErrorAt();
    v12 = v14;
    if (!v14)
    {
      return v15;
    }

    goto LABEL_15;
  }

  v12 = v14;
  _APBonjourBrowserDispatchEvent(a1, a2, v14);
  v15 = 0;
  if (v12)
  {
LABEL_15:
    CFRelease(v12);
  }

  return v15;
}

uint64_t _APBonjourBrowserDispatchEvent(uint64_t cf, uint64_t a2, const void *a3)
{
  if (*(cf + 216))
  {
    v3 = cf;
    if (!*(cf + 211))
    {
      v6 = *(cf + 216);
      CFRetain(cf);
      if (a3)
      {
        CFRetain(a3);
      }

      v5 = *(v3 + 24);
      return APSDispatchAsyncFHelper();
    }
  }

  return cf;
}

void _APBonjourBrowserHandleAirPlayEvent(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (a3)
  {
    if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_8_0()))
    {
      if ((a1 - 1) < 3)
      {
        v6 = off_278BC76D8[a1 - 1];
      }

      OUTLINED_FUNCTION_7_0();
    }

    switch(a1)
    {
      case 1:
        if (!*(a3 + 40))
        {
          return;
        }

        if (theDict && *(a3 + 232))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
          if (MutableCopy)
          {
            [*(a3 + 232) deviceFound:MutableCopy];
            theDict = MutableCopy;
          }
        }

        else
        {
          MutableCopy = 0;
        }

        v14 = *(a3 + 80);
        v15 = OUTLINED_FUNCTION_18();
        if (_APBonjourBrowserHandleDeviceEvent(v15, v16, theDict, v17))
        {
          APSLogErrorAt();
          if (MutableCopy)
          {
            goto LABEL_33;
          }
        }

        else if (MutableCopy)
        {
LABEL_33:
          v18 = MutableCopy;
          goto LABEL_37;
        }

        break;
      case 2:
        if (*(a3 + 40))
        {
          if (!theDict || (v9 = *(a3 + 232)) == 0 || ([v9 deviceLost:theDict] & 1) == 0)
          {
            v10 = *(a3 + 80);
            v11 = OUTLINED_FUNCTION_19();
            if (_APBonjourBrowserHandleDeviceEvent(v11, v12, theDict, v13))
            {
              goto LABEL_45;
            }
          }
        }

        return;
      case 3:
        if (gLogCategory_APBonjourBrowser <= 40)
        {
          OUTLINED_FUNCTION_15_0();
          if (!v8 || _LogCategory_Initialize())
          {
            v19 = *(a3 + 80);
            LogPrintF();
          }
        }

        if (_APBonjourBrowserHandleStopEvent(a3))
        {
          goto LABEL_45;
        }

        v18 = a3;
LABEL_37:

        CFRelease(v18);
        return;
      case 4:
        if (gLogCategory_APBonjourBrowser <= 60)
        {
          OUTLINED_FUNCTION_15_0();
          if (!v8 || _LogCategory_Initialize())
          {
            v20 = *(a3 + 80);
            LogPrintF();
          }
        }

        if (_APBonjourBrowserHandleRestartedEvent(a3, *(a3 + 80)))
        {
          goto LABEL_45;
        }

        return;
      default:
        if (gLogCategory_APBonjourBrowser <= 90)
        {
          OUTLINED_FUNCTION_15_0();
          if (!v8 || _LogCategory_Initialize())
          {
            v21 = *(a3 + 80);
            LogPrintF();
          }
        }

        return;
    }
  }

  else
  {
LABEL_45:

    APSLogErrorAt();
  }
}

uint64_t _APBonjourBrowserCreateEventInfoDictionary(const __CFAllocator *a1, const void *a2, const void *a3, __CFDictionary **a4)
{
  Mutable = CFDictionaryCreateMutable(a1, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"deviceInfo", a2);
    }

    CFDictionarySetValue(v8, @"serviceType", a3);
    result = 0;
    *a4 = v8;
  }

  else
  {
    _APBonjourBrowserCreateEventInfoDictionary_cold_1();
    return 4294895086;
  }

  return result;
}

void _APBonjourBrowserDispatchEventCallback(uint64_t a1)
{
  (*(a1 + 24))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *a1;

  CFRelease(v3);
}

void browser_handleBonjourEvent(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        v8 = *DerivedStorage;
        v9 = **v5;
        if (v9 > 60)
        {
          goto LABEL_29;
        }

        if (v9 != -1)
        {
          goto LABEL_24;
        }

        if (!_LogCategory_Initialize())
        {
          goto LABEL_29;
        }

        v17 = *v5;
LABEL_24:
        LogPrintF();
        goto LABEL_29;
      }

LABEL_22:
      v15 = *DerivedStorage;
      v16 = **v5;
      if (v16 > 60)
      {
        goto LABEL_29;
      }

      if (v16 != -1)
      {
        goto LABEL_24;
      }

      if (!_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      v18 = *v5;
      goto LABEL_24;
    }

    v10 = *DerivedStorage;
    v11 = **v5;
    if (v11 <= 40)
    {
      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }

        v24 = *v5;
      }

      LogPrintF();
    }

LABEL_28:
    CFRelease(v1);
    goto LABEL_29;
  }

  if (!v2)
  {
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"serviceType");
      if (Value)
      {
        v13 = Value;
        v14 = CFDictionaryGetValue(v3, @"deviceInfo");
        if (v14)
        {
          if (browser_handleBonjourAddOrUpdate(v1, v13, v14))
          {
            browser_handleBonjourEvent_cold_4();
          }
        }

        else
        {
          browser_handleBonjourEvent_cold_5();
        }
      }

      else
      {
        browser_handleBonjourEvent_cold_6();
      }

      goto LABEL_20;
    }

    v23 = 3638;
LABEL_42:
    browser_handleBonjourEvent_cold_7(v23, v1);
    return;
  }

  if (v2 == 2)
  {
    v6 = *DerivedStorage;
    v7 = **v5;
    if (v7 > 40)
    {
      goto LABEL_29;
    }

    if (v7 != -1)
    {
      goto LABEL_24;
    }

    if (_LogCategory_Initialize())
    {
      v19 = *v5;
      goto LABEL_24;
    }

LABEL_29:
    CFRelease(v1);
    if (!v3)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v2 != 1)
  {
    goto LABEL_22;
  }

  if (!v3)
  {
    v23 = 3650;
    goto LABEL_42;
  }

  v20 = CFDictionaryGetValue(v3, @"serviceType");
  if (v20)
  {
    v21 = v20;
    v22 = CFDictionaryGetValue(v3, @"deviceInfo");
    if (v22)
    {
      browser_handleBonjourEvent_cold_1(v1, v21, v22);
    }

    else
    {
      browser_handleBonjourEvent_cold_2();
    }
  }

  else
  {
    browser_handleBonjourEvent_cold_3();
  }

LABEL_20:
  CFRelease(v1);
LABEL_30:

  CFRelease(v3);
}

uint64_t browser_handleBonjourEventExternal(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 8);
  return APSDispatchAsyncFHelper();
}

uint64_t APAdvertiserInfoCopyClusterCompatibleAirPlayData(uint64_t a1, int a2, CFDataRef *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v67 = 0;
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a3)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_30();
    goto LABEL_66;
  }

  v6 = *(a1 + 80);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v8 = snprintf(__str, 0x100uLL, "%u", Int64Ranged);
  v67 = TXTRecordSetValue(&txtRecord, "acl", v8, __str);
  if (v67)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_1();
    goto LABEL_66;
  }

  if (CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
  {
    MutableCopy = APSFeaturesCreateMutableCopy();
    if (!MutableCopy)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_5();
      goto LABEL_66;
    }

    v10 = MutableCopy;
    if (a2 == 2)
    {
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
    }

    v67 = APSFeaturesCopyStringRepresentation();
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_2();
      goto LABEL_65;
    }

    v67 = _APAdvertiserInfoAddStringToTXTRecord(0, &txtRecord, "fex");
    CFRelease(0);
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_3();
      goto LABEL_65;
    }

    LegacyFlags = APSFeaturesGetLegacyFlags();
    TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, __str);
    v67 = TXTRecordSetValue(&txtRecord, "features", TXTRecordNumberCString, __str);
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_4();
LABEL_65:
      CFRelease(v10);
      goto LABEL_66;
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = *(a1 + 80);
  Int64 = CFDictionaryGetInt64();
  if (Int64)
  {
    v15 = _APAdvertiserInfoGetTXTRecordNumberCString(Int64, __str);
    v67 = TXTRecordSetValue(&txtRecord, "rsf", v15, __str);
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_6();
      goto LABEL_64;
    }
  }

  v16 = *(a1 + 80);
  v17 = CFDictionaryGetInt64Ranged();
  if (CFDictionaryGetValue(*(a1 + 80), @"tightSyncUUID") && !CFDictionaryGetValue(*(a1 + 80), @"persistentGroupUUID"))
  {
    v18 = 0x2000;
  }

  else
  {
    v18 = -8969;
  }

  v19 = v18 & v17;
  if (v19)
  {
    v20 = snprintf(__str, 0x100uLL, "0x%x", v19);
    v67 = TXTRecordSetValue(&txtRecord, "flags", v20, __str);
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_7();
      goto LABEL_64;
    }
  }

  v21 = *(a1 + 80);
  if (a2 == 1)
  {
    Value = CFDictionaryGetValue(v21, @"tightSyncUUID");
    cf = Value;
    if (!Value || !CFStringGetLength(Value))
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_29();
      goto LABEL_64;
    }

    v67 = _APAdvertiserInfoAddStringToTXTRecord(cf, &txtRecord, "tsid");
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_15();
      goto LABEL_64;
    }

    v23 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncGroupModel");
    cfa = v23;
    if (v23)
    {
      if (CFStringGetLength(v23))
      {
        v67 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "tsm");
        if (v67)
        {
          APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_16();
          goto LABEL_64;
        }
      }
    }
  }

  else
  {
    v24 = CFDictionaryGetValue(v21, @"persistentGroupUUID");
    cfb = v24;
    if (!v24 || !CFStringGetLength(v24))
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_14();
      goto LABEL_64;
    }

    v67 = _APAdvertiserInfoAddStringToTXTRecord(cfb, &txtRecord, "psgid");
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_8();
      goto LABEL_64;
    }

    v25 = *(a1 + 80);
    v26 = CFDictionaryGetInt64Ranged();
    v27 = snprintf(__str, 0x100uLL, "%u", v26);
    v67 = TXTRecordSetValue(&txtRecord, "psgsz", v27, __str);
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_10();
      goto LABEL_64;
    }

    v28 = *(a1 + 80);
    v29 = CFDictionaryGetInt64Ranged();
    v30 = snprintf(__str, 0x100uLL, "%u", v29);
    v67 = TXTRecordSetValue(&txtRecord, "psgtp", v30, __str);
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_12();
      goto LABEL_64;
    }

    v31 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupModel");
    cfc = v31;
    if (v31)
    {
      if (CFStringGetLength(v31))
      {
        v67 = _APAdvertiserInfoAddStringToTXTRecord(cfc, &txtRecord, "pgm");
        if (v67)
        {
          APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_13();
          goto LABEL_64;
        }
      }
    }
  }

  v32 = CFDictionaryGetValue(*(a1 + 80), @"groupID");
  cfd = v32;
  if (!v32 || !CFStringGetLength(v32))
  {
    goto LABEL_44;
  }

  v67 = _APAdvertiserInfoAddStringToTXTRecord(cfd, &txtRecord, "gid");
  if (v67)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_17();
    goto LABEL_64;
  }

  v33 = *(a1 + 80);
  v34 = CFDictionaryGetInt64();
  v35 = snprintf(__str, 0x100uLL, "%u", v34 != 0);
  v67 = TXTRecordSetValue(&txtRecord, "igl", v35, __str);
  if (v67)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_18();
    goto LABEL_64;
  }

  v36 = *(a1 + 80);
  v37 = CFDictionaryGetInt64();
  v38 = snprintf(__str, 0x100uLL, "%u", v37 != 0);
  v67 = TXTRecordSetValue(&txtRecord, "gcgl", v38, __str);
  if (v67)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_19();
    goto LABEL_64;
  }

  v39 = CFDictionaryGetValue(*(a1 + 80), @"groupPublicName");
  cfe = v39;
  if (v39 && CFStringGetLength(v39) && (v67 = _APAdvertiserInfoAddStringToTXTRecord(cfe, &txtRecord, "gpn")) != 0)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_20();
  }

  else
  {
LABEL_44:
    v40 = CFDictionaryGetValue(*(a1 + 80), @"parentGroupID");
    cff = v40;
    if (!v40 || !CFStringGetLength(v40))
    {
      goto LABEL_48;
    }

    v67 = _APAdvertiserInfoAddStringToTXTRecord(cff, &txtRecord, "pgid");
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_21();
      goto LABEL_64;
    }

    v41 = *(a1 + 80);
    v42 = CFDictionaryGetInt64();
    v43 = snprintf(__str, 0x100uLL, "%u", v42 != 0);
    v67 = TXTRecordSetValue(&txtRecord, "pgcgl", v43, __str);
    if (v67)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_22();
    }

    else
    {
LABEL_48:
      v44 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel");
      cfg = v44;
      if (v44 && CFStringGetLength(v44) && (v67 = _APAdvertiserInfoAddStringToTXTRecord(cfg, &txtRecord, "model")) != 0)
      {
        APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_23();
      }

      else
      {
        v45 = CFDictionaryGetValue(*(a1 + 80), @"protocolVersion");
        cfh = v45;
        if (v45 && CFStringGetLength(v45) && (v67 = _APAdvertiserInfoAddStringToTXTRecord(cfh, &txtRecord, "protovers")) != 0)
        {
          APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_24();
        }

        else
        {
          v46 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
          cfi = v46;
          if (v46 && CFStringGetLength(v46) && (v67 = _APAdvertiserInfoAddStringToTXTRecord(cfi, &txtRecord, "srcvers")) != 0)
          {
            APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_25();
          }

          else
          {
            v47 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
            cfj = v47;
            if (v47 && CFStringGetLength(v47) && (v67 = _APAdvertiserInfoAddStringToTXTRecord(cfj, &txtRecord, "osvers")) != 0)
            {
              APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_26();
            }

            else
            {
              v48 = *(a1 + 80);
              v49 = CFDictionaryGetInt64Ranged();
              if (v49 && (v50 = snprintf(__str, 0x100uLL, "%u", v49), (v67 = TXTRecordSetValue(&txtRecord, "vv", v50, __str)) != 0))
              {
                APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_27();
              }

              else
              {
                BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
                Length = TXTRecordGetLength(&txtRecord);
                v53 = CFDataCreate(0, BytesPtr, Length);
                if (v53)
                {
                  *a3 = v53;
                }

                else
                {
                  APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_28();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_64:
  if (v10)
  {
    goto LABEL_65;
  }

LABEL_66:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  result = v67;
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APTPackageRTPBufferedCreateWithBBuf(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  memset(dataLength, 0, sizeof(dataLength));
  blockBufferOut = 0;
  APTransportPackageGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v13 = v6;
    APTPackageRTPBufferedCreateWithBBuf_cold_1();
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = APTransportParcelMake(3uLL, 0, DerivedStorage);
  if (v8)
  {
    v13 = v8;
    APTPackageRTPBufferedCreateWithBBuf_cold_2();
    goto LABEL_17;
  }

  if (a2)
  {
    v9 = CMBlockBufferGetDataLength(a2);
    if (v9 <= 2)
    {
      v13 = 4294894936;
      APTPackageRTPBufferedCreateWithBBuf_cold_8();
      goto LABEL_17;
    }

    v10 = v9;
    PayloadSize = APTPackageRTPBufferedGetPayloadSize(a2, dataLength);
    if (PayloadSize)
    {
      v13 = PayloadSize;
      APTPackageRTPBufferedCreateWithBBuf_cold_3();
      goto LABEL_17;
    }

    if (v10 != dataLength[0] + 3)
    {
      v13 = 4294894936;
      APTPackageRTPBufferedCreateWithBBuf_cold_4();
      goto LABEL_17;
    }

    if (dataLength[0])
    {
      v12 = CMBlockBufferCreateWithBufferReference(a1, a2, 3uLL, dataLength[0], 0, &blockBufferOut);
      if (v12)
      {
        v13 = v12;
        APTPackageRTPBufferedCreateWithBBuf_cold_5();
        goto LABEL_17;
      }
    }

    else
    {
      v14 = CMBlockBufferCreateEmpty(a1, 0, 0, &blockBufferOut);
      if (v14)
      {
        v13 = v14;
        APTPackageRTPBufferedCreateWithBBuf_cold_6();
        goto LABEL_17;
      }
    }

    v15 = APTransportParcelSetMessageData(*DerivedStorage, blockBufferOut);
    if (v15)
    {
      v13 = v15;
      APTPackageRTPBufferedCreateWithBBuf_cold_7();
      goto LABEL_17;
    }

    APTransportParcelSetMessageType(*DerivedStorage, 1651861089);
  }

  if (gLogCategory_APTPackageRTPBuffered <= 30 && (gLogCategory_APTPackageRTPBuffered != -1 || _LogCategory_Initialize()))
  {
    APTPackageRTPBufferedCreateWithBBuf_cold_9(&dataLength[1]);
  }

  v13 = 0;
  *a3 = *&dataLength[1];
  *&dataLength[1] = 0;
LABEL_17:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (*&dataLength[1])
  {
    CFRelease(*&dataLength[1]);
  }

  return v13;
}

uint64_t APTPackageRTPBufferedGetPayloadSize(OpaqueCMBlockBuffer *a1, _DWORD *a2)
{
  v9 = 0;
  destination = 0;
  if (a1)
  {
    if (a2)
    {
      if (CMBlockBufferGetDataLength(a1) <= 2)
      {
        v6 = 4294894936;
        APTPackageRTPBufferedGetPayloadSize_cold_4();
      }

      else
      {
        v4 = CMBlockBufferCopyDataBytes(a1, 0, 3uLL, &destination);
        if (v4)
        {
          v6 = v4;
          APTPackageRTPBufferedGetPayloadSize_cold_1();
        }

        else if (v9 == 128)
        {
          v5 = bswap32(destination) >> 16;
          if (v5 <= 2)
          {
            v6 = 4294894936;
            APTPackageRTPBufferedGetPayloadSize_cold_3();
          }

          else
          {
            v6 = 0;
            *a2 = v5 - 3;
          }
        }

        else
        {
          v6 = 4294894936;
          APTPackageRTPBufferedGetPayloadSize_cold_2();
        }
      }
    }

    else
    {
      v6 = 4294894936;
      APTPackageRTPBufferedGetPayloadSize_cold_5();
    }
  }

  else
  {
    v6 = 4294894936;
    APTPackageRTPBufferedGetPayloadSize_cold_6();
  }

  return v6;
}

uint64_t APTPackageRTPBufferedGetHeaderSize(_DWORD *a1)
{
  if (a1)
  {
    result = 0;
    *a1 = 3;
  }

  else
  {
    APTPackageRTPBufferedGetHeaderSize_cold_1();
    return 4294894936;
  }

  return result;
}

uint64_t APTPackageRTPBufferedGetMaxPayloadSize(void *a1)
{
  if (a1)
  {
    *a1 = 65534;
  }

  else
  {
    APTPackageRTPBufferedGetMaxPayloadSize_cold_1();
  }

  return 0;
}

void rtpbufpackage_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTPackageRTPBuffered <= 30 && (gLogCategory_APTPackageRTPBuffered != -1 || _LogCategory_Initialize()))
  {
    rtpbufpackage_Finalize_cold_1();
  }

  APTransportParcelFree(*DerivedStorage);
  *DerivedStorage = 0;
}

__CFString *rtpbufpackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTPackageRTPBuffered %p>", a1);
  return Mutable;
}

const void *rtpbufpackage_CopyMessageData()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  v2 = MessageData;
  if (MessageData)
  {
    CFRetain(MessageData);
  }

  return v2;
}

uint64_t rtpbufpackage_SetMessageData(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageData(v3, a2);
}

uint64_t rtpbufpackage_GetMessageType()
{
  v0 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelGetMessageType(v0);
}

uint64_t rtpbufpackage_SetMessageType(uint64_t a1, int a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageType(v3, a2);
}

CMBlockBufferRef rtpbufpackage_CreateBBufRepresentation()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = 0;
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  v4 = bswap32(CMBlockBufferGetDataLength(MessageData) + 3) >> 16;
  v5 = 0x80;
  APTransportParcelCreateBBufRepresentation(*DerivedStorage, *MEMORY[0x277CBECE8], &v4, &v3);
  return v3;
}

uint64_t APBrowserBTLEManagerGetTypeID()
{
  if (gAPBrowserBTLEManagerInitOnce != -1)
  {
    APBrowserBTLEManagerGetTypeID_cold_1();
  }

  return gAPBrowserBTLEManagerTypeID;
}

uint64_t __APBrowserBTLEManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gAPBrowserBTLEManagerTypeID = result;
  return result;
}

uint64_t APBrowserBTLEManagerCreate(uint64_t a1, id **a2)
{
  if (gAPBrowserBTLEManagerInitOnce != -1)
  {
    APBrowserBTLEManagerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    *(Instance + 16) = 0;
    v6 = [[APBrowserBTLEManager alloc] initWithEventContext:Instance];
    v5[2] = v6;
    if (v6)
    {
      if (a1)
      {
        [v5[2] setBrowseForAltReceiver:CFDictionaryGetInt64() != 0];
      }

      v7 = 0;
      *a2 = v5;
    }

    else
    {
      v7 = 4294895076;
      APBrowserBTLEManagerCreate_cold_2(v5);
    }
  }

  else
  {
    v7 = 4294895076;
    APBrowserBTLEManagerCreate_cold_3();
  }

  return v7;
}

uint64_t APBrowserBTLEManagerInvalidate(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = *(a1 + 16);
  v2 = [v1 queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __APBrowserBTLEManagerInvalidate_block_invoke;
  v5[3] = &unk_278BC6D48;
  v5[4] = v1;
  v5[5] = &v6;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_23D2D4EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APBrowserBTLEManagerInvalidate_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APBrowserBTLEManagerGetMode(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = *(a1 + 16);
  v4 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserBTLEManagerGetMode_block_invoke;
  block[3] = &unk_278BC6D98;
  block[4] = v3;
  block[5] = &v8;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_23D2D4FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APBrowserBTLEManagerGetMode_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getBTLEMode:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APBrowserBTLEManagerSetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = *(a1 + 16);
  v7 = [v6 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserBTLEManagerSetEventHandler_block_invoke;
  block[3] = &unk_278BC6DC0;
  block[4] = v6;
  block[5] = &v11;
  block[6] = a2;
  block[7] = a3;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

void sub_23D2D50D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APBrowserBTLEManagerSetEventHandler_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setEventHandler:*(a1 + 48) context:*(a1 + 56) managerRef:*(a1 + 64)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APBrowserBTLEManagerCopyShowInfo(uint64_t a1, int a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = *(a1 + 16);
  v6 = [v5 queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __APBrowserBTLEManagerCopyShowInfo_block_invoke;
  v9[3] = &unk_278BC6DE8;
  v9[4] = v5;
  v9[5] = &v11;
  v9[6] = a3;
  v10 = a2;
  dispatch_sync(v6, v9);
  v7 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_23D2D51F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APBrowserBTLEManagerCopyShowInfo_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) copyShowInfo:*(a1 + 48) verbose:*(a1 + 56) != 0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APBrowserBTLEManagerUpdatePreferences(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = *(a1 + 16);
  v2 = [v1 queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __APBrowserBTLEManagerUpdatePreferences_block_invoke;
  v5[3] = &unk_278BC6D48;
  v5[4] = v1;
  v5[5] = &v6;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_23D2D5300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APBrowserBTLEManagerUpdatePreferences_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) ensurePreferencesUpdatedWithShouldForce:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APBrowserBTLEManagerSetLocalDeviceSupportsSolo(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *(a1 + 16);
  v4 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserBTLEManagerSetLocalDeviceSupportsSolo_block_invoke;
  block[3] = &unk_278BC6E10;
  block[4] = v3;
  block[5] = &v9;
  v8 = a2;
  dispatch_sync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_23D2D5410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APBrowserBTLEManagerSetLocalDeviceSupportsSolo_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setSupportsSolo:*(a1 + 48) != 0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APTransportSessionCreate(const __CFAllocator *a1, int a2, const void *a3, const void *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v41 = *MEMORY[0x277D85DE8];
  cf = 0;
  FigTransportSessionGetClassID();
  v38 = CMDerivedObjectCreate();
  if (v38)
  {
    APTransportSessionCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 32) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    UUIDGet();
    *&v42.byte0 = 0;
    *&v42.byte8 = 0;
    v13 = CFUUIDCreateFromUUIDBytes(a1, v42);
    *(DerivedStorage + 40) = v13;
    if (v13)
    {
      SNPrintF();
      v14 = dispatch_queue_create(label, 0);
      *(DerivedStorage + 8) = v14;
      if (v14)
      {
        v15 = dispatch_queue_create("APTransportSession.notifications", 0);
        *(DerivedStorage + 16) = v15;
        if (v15)
        {
          *(DerivedStorage + 24) = a2;
          v38 = FigCFWeakReferenceTableCreate();
          if (v38)
          {
            APTransportSessionCreate_cold_2();
          }

          else
          {
            v38 = FigCFWeakReferenceTableCreate();
            if (!v38)
            {
              *(DerivedStorage + 152) = 0;
              v16 = MEMORY[0x277CC0898];
              *(DerivedStorage + 124) = -1;
              *(DerivedStorage + 248) = *v16;
              *(DerivedStorage + 264) = *(v16 + 16);
              if (!a5)
              {
                goto LABEL_52;
              }

              Value = CFDictionaryGetValue(a5, @"OwningService");
              if (Value)
              {
                Value = CFRetain(Value);
              }

              *(DerivedStorage + 184) = Value;
              *(DerivedStorage + 124) = CFDictionaryGetInt64();
              if (v38)
              {
                *(DerivedStorage + 124) = -1;
                v38 = 0;
              }

              v18 = CFDictionaryGetValue(a5, @"TransportTester_RemoteNetworkAddress");
              if (v18)
              {
                v18 = CFRetain(v18);
              }

              *(DerivedStorage + 128) = v18;
              *(DerivedStorage + 152) = CFDictionaryGetInt64();
              if (v38)
              {
                *(DerivedStorage + 152) = 0;
                v38 = 0;
              }

              if (gLogCategory_APTransportSession <= 40)
              {
                if (gLogCategory_APTransportSession != -1)
                {
LABEL_20:
                  LogPrintF();
                  goto LABEL_22;
                }

                if (_LogCategory_Initialize())
                {
                  v35 = *(DerivedStorage + 152);
                  goto LABEL_20;
                }
              }

LABEL_22:
              *(DerivedStorage + 156) = CFDictionaryGetInt64();
              if (v38)
              {
                *(DerivedStorage + 156) = 0;
                v38 = 0;
              }

              if (gLogCategory_APTransportSession > 40)
              {
                goto LABEL_28;
              }

              if (gLogCategory_APTransportSession == -1)
              {
                if (!_LogCategory_Initialize())
                {
LABEL_28:
                  if (FigCFDictionaryGetCMTimeIfPresent() && gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
                  {
                    APTransportSessionCreate_cold_4(&cf, (DerivedStorage + 248));
                  }

                  *(DerivedStorage + 161) = CFDictionaryGetInt64() != 0;
                  *(DerivedStorage + 160) = CFDictionaryGetInt64() != 0;
                  v19 = CFDictionaryGetValue(a5, @"HandleNANAuthorizationRequestBlock");
                  if (v19)
                  {
                    v19 = CFRetain(v19);
                  }

                  *(DerivedStorage + 88) = v19;
                  v20 = CFDictionaryGetValue(a5, @"SetNANAuthorizationStringBlock");
                  if (v20)
                  {
                    v20 = CFRetain(v20);
                  }

                  *(DerivedStorage + 96) = v20;
                  v21 = CFDictionaryGetValue(a5, @"NANAuthorizationType");
                  if (v21)
                  {
                    v21 = CFRetain(v21);
                  }

                  *(DerivedStorage + 104) = v21;
                  v22 = CFDictionaryGetValue(a5, @"NANAuthorizationLogContext");
                  if (v22)
                  {
                    v22 = CFRetain(v22);
                  }

                  *(DerivedStorage + 112) = v22;
                  v23 = CMBaseObjectGetDerivedStorage();
                  if (CFDictionaryGetValue(a5, @"EventRecorder"))
                  {
                    v24 = *(v23 + 272);
                    if (v24)
                    {
                      CFRelease(v24);
                      *(v23 + 272) = 0;
                    }

                    APSEventRecorderCopyChildEventRecorderOfType();
                    if (!*(v23 + 272))
                    {
                      SNPrintF();
                      v25 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
                      if (APSEventRecorderCreate() && gLogCategory_APTransportSession <= 60 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF();
                      }

                      v26 = *(v23 + 272);
                      APSEventRecorderAddSignPostForEvent();
                      if (v25)
                      {
                        CFRelease(v25);
                      }
                    }
                  }

                  v38 = 0;
LABEL_52:
                  *(DerivedStorage + 216) = 0;
                  if (a4)
                  {
                    v27 = CFRetain(a4);
                  }

                  else
                  {
                    v27 = 0;
                  }

                  *(DerivedStorage + 64) = v27;
                  v28 = cf;
                  v29 = CMBaseObjectGetDerivedStorage();
                  if (!*(v29 + 240))
                  {
                    v30 = v29;
                    SharedHelper = APConnectivityHelperGetSharedHelper();
                    if (SharedHelper)
                    {
                      v32 = CFRetain(SharedHelper);
                      *(v30 + 240) = v32;
                      if (v32)
                      {
                        if (APConnectivityHelperRegisterEventHandler(v32, v28, session_handleConnectivityHelperEvents))
                        {
                          APTransportSessionCreate_cold_5();
                        }

                        else if (APConnectivityHelperRegisterForEvent(*(v30 + 240), v28, 1))
                        {
                          APTransportSessionCreate_cold_6();
                        }

                        else if (*(v30 + 161) && APConnectivityHelperRegisterForEvent(*(v30 + 240), v28, 4))
                        {
                          APTransportSessionCreate_cold_7();
                        }

                        goto LABEL_63;
                      }
                    }

                    else
                    {
                      *(v30 + 240) = 0;
                    }

                    APTransportSessionCreate_cold_8();
                  }

LABEL_63:
                  if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  APSIntrospectorAddCommand();
                  *a6 = cf;
                  goto LABEL_68;
                }

                v36 = *(DerivedStorage + 156);
              }

              LogPrintF();
              goto LABEL_28;
            }

            APTransportSessionCreate_cold_3();
          }
        }

        else
        {
          APTransportSessionCreate_cold_9();
        }
      }

      else
      {
        APTransportSessionCreate_cold_10();
      }
    }

    else
    {
      APTransportSessionCreate_cold_11();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_68:
  result = v38;
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APTransportSessionHandleStreamEvent(const void *a1, const void *a2, int a3, const void *a4)
{
  v16 = 0;
  if (a3)
  {
    return APSSignalErrorAt();
  }

  else
  {
    v7 = *MEMORY[0x277CC1B28];
    v8 = APSGetFBOPropertyInt64();
    if (v8 == 1702260340 || v8 == 1668575852)
    {
      v15 = 0;
      if (a4)
      {
        v10 = CFGetTypeID(a4);
        if (v10 != CFNumberGetTypeID())
        {
          APTransportSessionHandleStreamEvent_cold_2(&v16);
          return v16;
        }

        CFNumberGetValue(a4, kCFNumberSInt32Type, &v15);
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v18 = a2;
      v17 = a1;
      v19 = v11;
      CFRetain(a1);
      CFRetain(a2);
      v13 = *(DerivedStorage + 8);
      APSDispatchAsyncFHelper();
    }
  }

  return v16;
}

void session_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  session_invalidateInternal(a1);
  if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    v9 = DerivedStorage[4];
    LogPrintF();
  }

  v3 = DerivedStorage[34];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[34] = 0;
  }

  v4 = DerivedStorage[4];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[4] = 0;
  }

  v5 = DerivedStorage[5];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[5] = 0;
  }

  v6 = DerivedStorage[30];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[30] = 0;
  }

  v7 = DerivedStorage[1];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[1] = 0;
  }

  v8 = DerivedStorage[2];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[2] = 0;
  }
}

__CFString *session_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportSession %p '%@'>", a1, *(DerivedStorage + 32));
  return Mutable;
}

uint64_t session_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    session_SetProperty_cold_1();
    return 4294954511;
  }

  else if (a2)
  {
    v7 = *(DerivedStorage + 8);

    return MEMORY[0x2821127C0](v7, session_setPropertyInternal, a1, a2, a3);
  }

  else
  {
    session_SetProperty_cold_2();
    return 4294950696;
  }
}

void session_performWifiManagerRegistration(uint64_t a1, int a2)
{
  cf = 0;
  APTransportGetSharedTransport();
  CMBaseObject = FigTransportGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, @"WifiManagerClient", *MEMORY[0x277CBECE8], &cf))
  {
    session_performWifiManagerRegistration_cold_3();
  }

  else if (a2)
  {
    if (a2 == 1 && !*(a1 + 168))
    {
      if (APTransportWifiManagerClientRegister(cf))
      {
        session_performWifiManagerRegistration_cold_2();
      }

      else
      {
        *(a1 + 168) = 1;
      }
    }
  }

  else if (*(a1 + 168))
  {
    v6 = APTransportWifiManagerClientUnregister(cf);
    *(a1 + 168) = 0;
    if (v6)
    {
      session_performWifiManagerRegistration_cold_1();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t session_suspendKeepAliveInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  KeepAliveController = session_getKeepAliveController(a1, &v22);
  if (KeepAliveController)
  {
    session_suspendKeepAliveInternal_cold_1();
  }

  else
  {
    v4 = v22;
    if (v22)
    {
      VTable = CMBaseObjectGetVTable();
      v6 = *(*(VTable + 16) + 16);
      if (v6)
      {
        v7 = *(VTable + 16) + 16;
        v6(v4);
      }

      *(DerivedStorage + 201) = 0;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMBaseObject = APTransportKeepAliveControllerGetCMBaseObject(v22, v8, v9, v10);
      v12 = *(CMBaseObjectGetVTable() + 8);
      if (*v12 >= 2uLL)
      {
        v13 = v12[8];
        if (v13)
        {
          v14 = v12[8];
          v13(CMBaseObject);
        }
      }

      v15 = *(DerivedStorage + 232);
      if (v15)
      {
        CFRelease(v15);
        if (*(DerivedStorage + 232))
        {
          v16 = *(DerivedStorage + 48);
          APTransportStreamIDGetToken(1802529910);
          v17 = FigCFWeakReferenceTableCopyValue();
          if (v17)
          {
            CFRelease(v17);
          }
        }
      }

      *(DerivedStorage + 232) = 0;
      v18 = *(DerivedStorage + 224);
      if (v18)
      {
        CFRelease(v18);
        if (*(DerivedStorage + 224))
        {
          v19 = *(DerivedStorage + 48);
          APTransportStreamIDGetToken(1668575852);
          v20 = FigCFWeakReferenceTableCopyValue();
          if (v20)
          {
            CFRelease(v20);
          }
        }
      }

      *(DerivedStorage + 224) = 0;
    }
  }

  return KeepAliveController;
}

uint64_t session_getKeepAliveController(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    session_getKeepAliveController_cold_1(&v8);
    return v8;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 216);
  if ((v5 - 1) < 2)
  {
    result = 0;
    v7 = *(v4 + 224);
LABEL_8:
    *a2 = v7;
    return result;
  }

  if (v5 == 4)
  {
    result = 0;
    v7 = *(v4 + 232);
    goto LABEL_8;
  }

  if (v5)
  {
    return 4294950696;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t session_handleKeepAliveStallStateChanged(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  v23 = **&MEMORY[0x277CC0898];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v9 = CFGetTypeID(a5);
    if (v9 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a5, @"StallDuration");
      CMTimeMakeFromDictionary(&v23, Value);
      if (CFEqual(a3, @"APTransportKeepAliveControllerNotification_Stalled"))
      {
        if (gLogCategory_APTransportSession <= 90 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
        {
          session_handleKeepAliveStallStateChanged_cold_1(DerivedStorage, &v23.value, a2, v11, v12, v13, v14, v15);
        }

        v16 = 1;
      }

      else
      {
        if (!CFEqual(a3, @"APTransportKeepAliveControllerNotification_NotStalled"))
        {
          return session_reportNetworkStatus(a2);
        }

        if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
        {
          session_handleKeepAliveStallStateChanged_cold_2(DerivedStorage, &v23.value, a2, v17, v18, v19, v20, v21);
        }

        v16 = 0;
      }

      *(DerivedStorage + 200) = v16;
      return session_reportNetworkStatus(a2);
    }
  }

  return session_handleKeepAliveStallStateChanged_cold_3(DerivedStorage);
}

uint64_t session_handleKeepAliveFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    return session_handleKeepAliveFailed_cold_2(DerivedStorage);
  }

  v8 = CFGetTypeID(a5);
  if (v8 != CFDictionaryGetTypeID())
  {
    return session_handleKeepAliveFailed_cold_2(DerivedStorage);
  }

  CFDictionaryGetInt64();
  result = 0;
  if (gLogCategory_APTransportSession <= 90)
  {
    if (gLogCategory_APTransportSession != -1 || (result = _LogCategory_Initialize(), result))
    {
      v10 = *(DerivedStorage + 224);
      result = LogPrintF();
    }
  }

  if (*(DerivedStorage + 200))
  {
    return session_reportNetworkStatus(a2);
  }

  return result;
}

uint64_t session_reportNetworkStatus(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v3 = *(DerivedStorage + 8);
  return APSDispatchAsyncFHelper();
}

__CFDictionary *session_copyShowInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v12 = 0;
    cf = 0;
    v3 = *(DerivedStorage + 56);
    v4 = FigCFWeakReferenceTableCopyValue();
    if (v4)
    {
      v5 = v4;
      CMBaseObject = APTransportConnectionGetCMBaseObject(v4);
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v7 || v7(CMBaseObject, @"RemoteNetworkIPAddress", v1, &cf) || (v8 = APTransportConnectionGetCMBaseObject(v5), (v9 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v9(v8, @"RemoteNetworkPort", v1, &v12))
      {
        v10 = 0;
      }

      else
      {
        CFGetInt64Ranged();
        APSNetworkAddressSetPort();
        v10 = APSNetworkAddressCopyStringRepresentation() == 0;
      }

      CFRelease(v5);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v10)
      {
        CFDictionarySetValue(Mutable, @"PeerIPPort", 0);
      }
    }
  }

  else
  {
    session_copyShowInfo_cold_1();
  }

  return Mutable;
}

uint64_t session_setPropertyInternal(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    session_setPropertyInternal_cold_1(&v14);
    return v14;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"TransportRegistrationToken"))
  {
    *(v6 + 22) = CFGetInt64();
    if (v14)
    {
      session_setPropertyInternal_cold_2();
    }
  }

  else if (CFEqual(a2, @"ServiceRegistrationToken"))
  {
    *(v6 + 24) = CFGetInt64();
    if (v14)
    {
      session_setPropertyInternal_cold_3();
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CC1AF8]))
  {
    valuePtr = 0;
    if (!CFNumberGetValue(a3, kCFNumberIntType, &valuePtr))
    {
      session_setPropertyInternal_cold_6(&v14);
      return v14;
    }

    v7 = valuePtr;
    v8 = CMBaseObjectGetDerivedStorage();
    if (*(v8 + 201))
    {
      session_setPropertyInternal_cold_4(&v15);
      v11 = v15;
    }

    else
    {
      if (v7 <= 4 && v7 != 3)
      {
        *(v8 + 216) = v7;
        return 0;
      }

      v11 = APSSignalErrorAt();
    }

    v14 = v11;
    if (v11)
    {
      session_setPropertyInternal_cold_5();
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CC1AF0]))
  {
    if (v6[201])
    {
      session_setPropertyInternal_cold_7(&v14);
    }

    else if (a3 && (v9 = CFGetTypeID(a3), v9 == CFNumberGetTypeID()))
    {
      v10 = *(v6 + 26);
      *(v6 + 26) = a3;
      CFRetain(a3);
      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
      session_setPropertyInternal_cold_8(&v14);
    }
  }

  else
  {
    return -12784;
  }

  return v14;
}

uint64_t session_SetEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8[0] = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8[1] = DerivedStorage + 136;
  v8[2] = &v7;
  v8[3] = 8;
  v8[4] = DerivedStorage + 144;
  v8[5] = v8;
  v8[6] = 8;
  v4 = *(DerivedStorage + 8);
  APSDispatchSyncBatchAssignment();
  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t session_Resume(uint64_t a1)
{
  v3 = a1;
  v4 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 8), &v3, session_resumeInternal);
  return v4;
}

uint64_t session_CreateStream(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_12;
  }

  v4 = *MEMORY[0x277CC1B20];
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v6 = 1;
  if (Int64Ranged <= 1702260339)
  {
    if (Int64Ranged == 1668575852)
    {
      goto LABEL_13;
    }

LABEL_12:
    v6 = 2;
    goto LABEL_13;
  }

  if (Int64Ranged != 1702260340 && Int64Ranged != 1869570660 && Int64Ranged != 1919120492)
  {
    goto LABEL_12;
  }

LABEL_13:
  v9 = *(DerivedStorage + 164) + 1;
  *(DerivedStorage + 164) = v9;
  APTransportStreamIDMake(0, v6, v9);
  v10 = *(DerivedStorage + 8);
  return APSDispatchSyncTask();
}

uint64_t session_ResumeKeepAlive()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    session_ResumeKeepAlive_cold_1(&v3);
    return v3;
  }

  else
  {
    v1 = *(DerivedStorage + 8);

    return APSDispatchSyncTask();
  }
}

uint64_t session_SuspendKeepAlive()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    session_SuspendKeepAlive_cold_1(&v3);
    return v3;
  }

  else
  {
    v1 = *(DerivedStorage + 8);

    return APSDispatchSyncTask();
  }
}

void session_resumeInternal(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = CMBaseObjectGetDerivedStorage();
      if ((*(v5 + 152) - 5) >= 0xFFFFFFFE)
      {
        v6 = v5;
        if (!*(v5 + 64))
        {
          session_resumeInternal_cold_4();
          v8 = -16600;
          goto LABEL_18;
        }

        if (*(v5 + 72) || *(v5 + 80))
        {
          session_resumeInternal_cold_1();
          v8 = -6709;
          goto LABEL_18;
        }

        IntWithDefault = APSSettingsGetIntWithDefault();
        if (IntWithDefault == 2)
        {
          v8 = -72101;
          goto LABEL_17;
        }

        if (IntWithDefault == 1)
        {
          v8 = -72100;
LABEL_17:
          APSLogErrorAt();
LABEL_18:
          APSLogErrorAt();
          goto LABEL_19;
        }

        if ((*(v6 + 156) & 4) != 0)
        {
          v11 = session_activateNANDS(v2, 2, (v6 + 80));
          if (v11)
          {
            v8 = v11;
            session_resumeInternal_cold_2();
            goto LABEL_18;
          }
        }

        v12 = session_activateNANDS(v2, 1, (v6 + 72));
        if (v12)
        {
          v8 = v12;
          session_resumeInternal_cold_3();
          goto LABEL_18;
        }
      }

      session_resumeInternal_cold_5(v2, v14, &v13);
      v8 = v13;
      goto LABEL_19;
    }
  }

  else
  {
    v9 = DerivedStorage;
    if (*(DerivedStorage + 124) != -1 && *(DerivedStorage + 144))
    {
      if (v2)
      {
        CFRetain(v2);
      }

      dispatch_async_f(*(v9 + 16), v2, session_sendEventRemoteWantsNewStreamCallback);
    }
  }

  v8 = 0;
LABEL_19:
  *(a1 + 8) = v8;
  v10 = *MEMORY[0x277D85DE8];
}

void session_sendEventRemoteWantsNewStreamCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 1668575852;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  (*(DerivedStorage + 144))(0, v3, *(DerivedStorage + 136));
  if (v3)
  {
    CFRelease(v3);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t session_activateNANDS(uint64_t a1, int a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 152);
  cf = 0;
  v8 = APTransportDeviceCopyNANDataSession(*(DerivedStorage + 64), a2, v7 == 4, &cf);
  if (v8)
  {
    v26 = v8;
    session_activateNANDS_cold_1();
    goto LABEL_30;
  }

  if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = *(DerivedStorage + 88);
  if (v9)
  {
    v10 = cf;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v11)
    {
      v26 = 4294954514;
      goto LABEL_29;
    }

    v12 = v11(v10, @"APTNANDataSessionProperty_HandleAuthorizationRequestBlock", v9);
    if (v12)
    {
      v26 = v12;
      goto LABEL_29;
    }
  }

  v13 = *(DerivedStorage + 96);
  if (v13)
  {
    v14 = cf;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v15)
    {
      v26 = 4294954514;
      goto LABEL_29;
    }

    v16 = v15(v14, @"APTNANDataSessionProperty_SetAuthorizationStringBlock", v13);
    if (v16)
    {
      v26 = v16;
      goto LABEL_29;
    }
  }

  v17 = *(DerivedStorage + 104);
  if (v17)
  {
    v18 = cf;
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v19)
    {
      v26 = 4294954514;
      goto LABEL_29;
    }

    v20 = v19(v18, @"APTNANDataSessionProperty_AuthorizationType", v17);
    if (v20)
    {
      v26 = v20;
      goto LABEL_29;
    }
  }

  v21 = *(DerivedStorage + 112);
  if (v21)
  {
    v22 = cf;
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v23)
    {
      v24 = v23(v22, @"APTNANDataSessionProperty_AuthorizationLogContext", v21);
      if (!v24)
      {
        goto LABEL_18;
      }

      v26 = v24;
    }

    else
    {
      v26 = 4294954514;
    }

LABEL_29:
    APSLogErrorAt();
    goto LABEL_30;
  }

LABEL_18:
  session_updateNANDSNotificationRegistry(a1, cf, 1);
  do
  {
    v25 = APTNANDataSessionRetainActivation(cf);
    v26 = v25;
    if (v25 <= -6755)
    {
      if (v25 == -72401)
      {
        v26 = 4294895195;
      }

      else if (v25 == -72400)
      {
        v26 = 4294895196;
      }

      goto LABEL_37;
    }
  }

  while (v25 == -6754);
  if (v25)
  {
LABEL_37:
    APSLogErrorAt();
    session_updateNANDSNotificationRegistry(a1, cf, 0);
    goto LABEL_30;
  }

  v27 = cf;
  if (cf)
  {
    v27 = CFRetain(cf);
  }

  v26 = 0;
  *a3 = v27;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

uint64_t session_copyStreamWithIDInternal(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    session_copyStreamWithIDInternal_cold_1();
    return 4294954511;
  }

  else
  {
    v4 = DerivedStorage;
    APTransportStreamIDGetToken(a1[1]);
    v5 = *(v4 + 6);
    v6 = FigCFWeakReferenceTableCopyValue();
    if (v6)
    {
      v7 = v6;
      if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
      {
        v10 = a1[1];
        v9 = *a1;
        LogPrintF();
      }

      result = 0;
      *a1[2] = v7;
    }

    else
    {
      session_copyStreamWithIDInternal_cold_2();
      return 4294960578;
    }
  }

  return result;
}

uint64_t session_ensureKeepAliveControllerCreatedAndResumed(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = v3;
  v5 = *(v3 + 216);
  v6 = 4294950696;
  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_24;
    }

    if (v5 != 1)
    {
      goto LABEL_45;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      CFDictionarySetValue(Mutable, @"UseLegacyProtocol", *MEMORY[0x277CBED28]);
      goto LABEL_14;
    }

    session_ensureKeepAliveControllerCreatedAndResumed_cold_6(&v26);
LABEL_44:
    v6 = v26;
    if (v26)
    {
      goto LABEL_45;
    }

    goto LABEL_24;
  }

  if (v5 == 2)
  {
    v8 = 0;
LABEL_14:
    if (*(v4 + 224))
    {
      v6 = 0;
      v11 = 0;
    }

    else
    {
      v13 = *(v4 + 48);
      APTransportStreamIDGetToken(1668575852);
      v11 = FigCFWeakReferenceTableCopyValue();
      if (v11)
      {
        v6 = APTransportKeepAliveControllerStandardCreate(0, v8, v11, (v4 + 224));
        if (v6)
        {
          session_ensureKeepAliveControllerCreatedAndResumed_cold_4();
        }
      }

      else
      {
        session_ensureKeepAliveControllerCreatedAndResumed_cold_5(&v26);
        v6 = v26;
      }
    }

    if (!v8)
    {
LABEL_21:
      if (!v11)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_20:
    CFRelease(v8);
    goto LABEL_21;
  }

  if (v5 != 4)
  {
    goto LABEL_45;
  }

  if (!*(v3 + 232))
  {
    v9 = *(v3 + 48);
    APTransportStreamIDGetToken(1802529910);
    v10 = FigCFWeakReferenceTableCopyValue();
    if (v10)
    {
      v11 = v10;
      v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v12)
      {
        session_ensureKeepAliveControllerCreatedAndResumed_cold_2(&v26);
        v6 = v26;
LABEL_22:
        CFRelease(v11);
LABEL_23:
        if (v6)
        {
          goto LABEL_45;
        }

        goto LABEL_24;
      }

      v8 = v12;
      CFDictionarySetValue(v12, @"SessionUUID", *(v4 + 40));
      v6 = APTKeepAliveControllerLowPowerCreate(*MEMORY[0x277CBECE8], v8, v11, (v4 + 232));
      if (v6)
      {
        session_ensureKeepAliveControllerCreatedAndResumed_cold_1();
      }

      goto LABEL_20;
    }

    session_ensureKeepAliveControllerCreatedAndResumed_cold_3(&v26);
    goto LABEL_44;
  }

LABEL_24:
  KeepAliveController = session_getKeepAliveController(a1, &v25);
  if (KeepAliveController)
  {
    v6 = KeepAliveController;
    session_ensureKeepAliveControllerCreatedAndResumed_cold_7();
    return v6;
  }

  if (v25)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    v18 = *(DerivedStorage + 208);
    if (v18)
    {
      CMBaseObject = APTransportKeepAliveControllerGetCMBaseObject(v25, v15, v16, v17);
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if ((!v20 || v20(CMBaseObject, @"KeepAliveInterval", v18)) && gLogCategory_APTransportSession <= 60 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
      {
        v24 = *(DerivedStorage + 208);
        LogPrintF();
      }
    }

    v21 = v25;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v22)
    {
      v6 = v22(v21);
      if (!v6)
      {
        *(DerivedStorage + 201) = 1;
        return v6;
      }
    }

    else
    {
      v6 = 4294954514;
    }

LABEL_45:
    APSLogErrorAt();
    return v6;
  }

  return 0;
}

void session_dispatchConnectionDroppedInternal(uint64_t a1)
{
  v2 = *(a1 + 16);
  session_handleConnectionDroppedInternal(*a1, *(a1 + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t session_handleConnectivityHelperEvents(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 8);
  return APSDispatchAsyncFHelper();
}

void session_handleConnectivityHelperEventsInternal(uint64_t a1)
{
  v2 = *(a1 + 24);
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    session_handleConnectivityHelperEventsInternal_cold_1(a1);
  }

  v3 = *(a1 + 8);
  switch(v3)
  {
    case 4:
      v9 = *(a1 + 16);
      v8 = *(a1 + 24);
      v15 = 0;
      if (!*(CMBaseObjectGetDerivedStorage() + 120))
      {
        if (v9)
        {
          CFDictionaryGetValue(v9, @"networkInterfaceName");
          Int64 = CFDictionaryGetInt64();
          if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (!Int64)
          {
            session_handleConnectivityHelperEventsInternal_cold_2(v8, &v15);
          }
        }

        else
        {
          session_handleConnectivityHelperEventsInternal_cold_3();
        }
      }

      break;
    case 2:
      v6 = *(a1 + 24);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v13 = 0;
      if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
      {
        session_handleConnectivityHelperEventsInternal_cold_4();
      }

      if (!*(DerivedStorage + 120))
      {
        session_handleConnectivityHelperEventsInternal_cold_5(v6, &v14, DerivedStorage, &v13);
      }

      break;
    case 1:
      v4 = *(a1 + 24);
      v5 = CMBaseObjectGetDerivedStorage();
      if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
      {
        session_handleConnectivityHelperEventsInternal_cold_6();
      }

      if (APConnectivityHelperRegisterForEvent(*(v5 + 240), v4, 2))
      {
        session_handleConnectivityHelperEventsInternal_cold_7();
      }

      else
      {
        if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
        {
          session_handleConnectivityHelperEventsInternal_cold_8();
        }

        if (APConnectivityHelperDeregisterForEvent(*(v5 + 240), v4, 1))
        {
          session_handleConnectivityHelperEventsInternal_cold_9();
        }
      }

      break;
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
}

uint64_t APTDiagnosticMulticastDataToAllHosts(uint64_t a1, int a2, uint64_t a3, const __CFData *a4)
{
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v6 = StringToSockAddr();
  if (v6 || (SockAddrSetPort(), v6 = StringToSockAddr(), v6))
  {
    v7 = v6;
    goto LABEL_4;
  }

  SockAddrSetPort();
  if (!getifaddrs(&v19))
  {
    goto LABEL_15;
  }

  if (*__error())
  {
    v7 = *__error();
    if (!v7)
    {
LABEL_15:
      v10 = v19;
      if (!v19)
      {
        return 0;
      }

      v7 = 0;
      if (a2 == 2)
      {
        v11 = v22;
      }

      else
      {
        v11 = v24;
      }

      v8 = -1;
      while (1)
      {
        if (v10->ifa_flags)
        {
          if (v10->ifa_addr)
          {
            if (v10->ifa_name)
            {
              v12 = strlen(v10->ifa_name);
              if (!strncmpx() && (v10->ifa_flags & 0x8018) == 0x8000)
              {
                if (if_nametoindex(v10->ifa_name))
                {
                  p_sa_len = &v10->ifa_addr->sa_len;
                  if (p_sa_len[1] == a2 && (a2 != 30 || p_sa_len[8] == 254 && (p_sa_len[9] & 0xC0) == 0x80))
                  {
                    if ((v8 & 0x80000000) == 0 && close(v8) && *__error())
                    {
                      __error();
                    }

                    v8 = socket(a2, 2, 17);
                    if ((v8 & 0x80000000) == 0)
                    {
LABEL_35:
                      ifa_name = v10->ifa_name;
                      v15 = SocketSetMulticastInterface();
                      if (v15)
                      {
                        v7 = v15;
                      }

                      else
                      {
                        BytePtr = CFDataGetBytePtr(a4);
                        Length = CFDataGetLength(a4);
                        v18 = &v20;
                        if (a2 == 2)
                        {
                          v18 = &v21;
                        }

                        sendto(v8, BytePtr, Length, 0, v11, *v18);
                        v7 = 0;
                      }

                      goto LABEL_44;
                    }

                    if (*__error())
                    {
                      v7 = *__error();
                      if (!v7)
                      {
                        goto LABEL_35;
                      }
                    }

                    else
                    {
                      v7 = 4294960596;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_44:
        v10 = v10->ifa_next;
        if (!v10)
        {
          goto LABEL_5;
        }
      }
    }
  }

  else
  {
    v7 = 4294960596;
  }

LABEL_4:
  v8 = -1;
LABEL_5:
  if (v19)
  {
    MEMORY[0x23EEDE3C0]();
  }

  if ((v8 & 0x80000000) == 0 && close(v8) && *__error())
  {
    __error();
  }

  return v7;
}

uint64_t APTransportStreamSendPlistMessage(uint64_t a1, uint64_t a2, CFPropertyListRef propertyList)
{
  if (propertyList)
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!Data)
    {
      APTransportStreamSendPlistMessage_cold_2();
      return 4294950685;
    }

    v6 = Data;
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v9 = BlockBufferWithCFDataNoCopy;
      APTransportStreamSendPlistMessage_cold_1();
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v8)
  {
    v9 = v8(a1, a2, 0);
    if (!v9)
    {
      if (!v6)
      {
        return v9;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  APSLogErrorAt();
  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

  return v9;
}

uint64_t APTransportStreamSendPlistMessageCreatingReply(uint64_t a1, uint64_t a2, CFPropertyListRef propertyList, uint64_t a4)
{
  if (propertyList)
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!Data)
    {
      APTransportStreamSendPlistMessageCreatingReply_cold_2();
      return 4294950685;
    }

    v8 = Data;
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v11 = BlockBufferWithCFDataNoCopy;
      APTransportStreamSendPlistMessageCreatingReply_cold_1();
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v10)
  {
    v11 = v10(a1, a2, 0, a4);
    if (!v11)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v11 = 4294954514;
  }

  APSLogErrorAt();
  if (v8)
  {
LABEL_12:
    CFRelease(v8);
  }

  return v11;
}

uint64_t APTransportStreamSendData(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CBECE8];
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    v7 = BlockBufferWithCFDataNoCopy;
    APTransportStreamSendData_cold_1();
    return v7;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    return v7;
  }

  v7 = v6(a1, a2, 0);
  if (v7)
  {
    goto LABEL_6;
  }

  return v7;
}

uint64_t APTransportStreamSendDataCreatingReplyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  cf = 0;
  v7 = *MEMORY[0x277CBECE8];
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    CFDataWithBlockBufferNoCopy = BlockBufferWithCFDataNoCopy;
    APTransportStreamSendDataCreatingReplyData_cold_1();
    goto LABEL_10;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v9)
  {
    CFDataWithBlockBufferNoCopy = 4294954514;
    goto LABEL_9;
  }

  CFDataWithBlockBufferNoCopy = v9(a1, a2, cf, &v12);
  if (CFDataWithBlockBufferNoCopy)
  {
LABEL_9:
    APSLogErrorAt();
    goto LABEL_10;
  }

  if (a4)
  {
    if (v12)
    {
      CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
      if (CFDataWithBlockBufferNoCopy)
      {
        APTransportStreamSendDataCreatingReplyData_cold_2();
      }
    }
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return CFDataWithBlockBufferNoCopy;
}

uint64_t APBrokerManagerGetTypeID()
{
  if (gAPBrokerManagerInitOnce != -1)
  {
    APBrokerManagerGetTypeID_cold_1();
  }

  return gAPBrokerManagerTypeID;
}

uint64_t _APBrokerManagerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPBrokerManagerTypeID = result;
  return result;
}

uint64_t APBrokerManagerCreateWithDiscoveryDelegate(__int128 *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  *label = 0u;
  v22 = 0u;
  if (a2)
  {
    if (gAPBrokerManagerInitOnce != -1)
    {
      APBrokerManagerGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Instance[1] = 0u;
      v6 = Instance + 1;
      Instance[16] = 0u;
      Instance[17] = 0u;
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
      v7 = FigSimpleMutexCreate();
      v6[10] = v7;
      if (!v7)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_11();
        goto LABEL_35;
      }

      SNPrintF();
      v8 = dispatch_queue_create(label, 0);
      *(v5 + 11) = v8;
      if (!v8)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_10();
        goto LABEL_35;
      }

      SNPrintF();
      v9 = dispatch_queue_create(label, 0);
      *(v5 + 3) = v9;
      if (!v9)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_9();
        goto LABEL_35;
      }

      *(v5 + 64) = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v5 + 14) = Mutable;
      if (!Mutable)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_8();
        goto LABEL_35;
      }

      v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v5 + 15) = v11;
      if (!v11)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_7();
        goto LABEL_35;
      }

      if (a1)
      {
        v13 = *a1;
        v12 = a1[1];
        *(v5 + 8) = *(a1 + 4);
        v5[2] = v13;
        v5[3] = v12;
        if (*(v5 + 4))
        {
          v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          *(v5 + 9) = v14;
          if (!v14)
          {
            APBrokerManagerCreateWithDiscoveryDelegate_cold_2();
LABEL_35:
            v16 = 4294960568;
            goto LABEL_36;
          }
        }
      }

      else
      {
        v5[2] = 0u;
        v5[3] = 0u;
        *(v5 + 5) = BonjourDiscoveryDelegateSetup;
        *(v5 + 6) = BonjourDiscoveryDelegateStart;
        *(v5 + 7) = BonjourDiscoveryDelegateStop;
        *(v5 + 8) = 0;
        *(v5 + 8) = BonjourDiscoveryDelegateCleanup;
      }

      v20 = 0;
      if (*(v5 + 5))
      {
        v15 = _APBrokerManagerCopyReferencedObjectIfNecessary(*(v5 + 9), &v20);
        if (v20)
        {
          APBrokerManagerCreateWithDiscoveryDelegate_cold_3();
        }

        else
        {
          *(v5 + 10) = (*(v5 + 5))(v15, _APBrokerManagerHandleBonjourEvent, v5, &v20);
          if (v20)
          {
            APBrokerManagerCreateWithDiscoveryDelegate_cold_4();
          }
        }

        if (v15)
        {
          CFRelease(v15);
        }

        v16 = v20;
        if (v20)
        {
          APBrokerManagerCreateWithDiscoveryDelegate_cold_5();
LABEL_36:
          CFRelease(v5);
          goto LABEL_24;
        }
      }

      v17 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:{2, v5}];
      *v6 = v17;
      if (!v17)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_6();
        goto LABEL_35;
      }

      [v17 activate];
      v16 = 0;
      *a2 = v5;
    }

    else
    {
      APBrokerManagerCreateWithDiscoveryDelegate_cold_12();
      v16 = 4294960568;
    }
  }

  else
  {
    APBrokerManagerCreateWithDiscoveryDelegate_cold_13();
    v16 = 4294960591;
  }

LABEL_24:
  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t APBrokerManagerInvalidate(uint64_t a1)
{
  v2 = *(a1 + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 96);
  FigSimpleMutexLock();
  ++*(a1 + 200);
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  _APBrokerManagerUpdateBrowsing(a1);
  _APBrokerManagerClearAuthCallbackState(a1);
  _APBrokerManagerDiscoveryDelegateStop(a1);
  [*(a1 + 16) invalidate];
  *(a1 + 104) = 1;
  v4 = *(a1 + 96);

  return FigSimpleMutexUnlock();
}

void _APBrokerManagerClearAuthCallbackState(uint64_t a1)
{
  v2 = *(a1 + 96);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v3 = *(a1 + 208);
  if (v3)
  {
    _Block_release(v3);
    *(a1 + 208) = 0;
  }

  *(a1 + 216) = 0;
  v4 = *(a1 + 224);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 224) = 0;
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 232) = 0;
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    dispatch_source_cancel(*(a1 + 240));
    dispatch_release(v6);
    *(a1 + 240) = 0;
  }
}

uint64_t APBrokerManagerAuthenticateBrokerGroup(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  if (!a3)
  {
    APBrokerManagerAuthenticateBrokerGroup_cold_2();
    v19 = 4294960591;
    goto LABEL_19;
  }

  v8 = *(a1 + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v9 = *(a1 + 96);
  FigSimpleMutexLock();
  if (!*(a1 + 104))
  {
    if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
    {
      APBrokerManagerAuthenticateBrokerGroup_cold_1(a2);
    }

    if (*(a1 + 240))
    {
      v19 = 4294960575;
    }

    else
    {
      v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
      *(a1 + 240) = v10;
      if (v10)
      {
        *(a1 + 208) = _Block_copy(a4);
        _APBrokerManagerRequestBrokerDiscovery(a1);
        CFRetain(a1);
        v11 = *(a1 + 240);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __APBrokerManagerAuthenticateBrokerGroup_block_invoke;
        handler[3] = &__block_descriptor_40_e5_v8__0l;
        handler[4] = a1;
        dispatch_source_set_event_handler(v11, handler);
        v12 = *(a1 + 240);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __APBrokerManagerAuthenticateBrokerGroup_block_invoke_2;
        v22[3] = &__block_descriptor_40_e5_v8__0l;
        v22[4] = a1;
        dispatch_source_set_cancel_handler(v12, v22);
        v13 = *(a1 + 240);
        v14 = dispatch_time(0, 24000000000);
        dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        dispatch_resume(*(a1 + 240));
        *(a1 + 224) = CFRetain(a3);
        if (a2)
        {
          *(a1 + 232) = CFRetain(a2);
          v15 = *(a1 + 96);
          FigSimpleMutexCheckIsLockedOnThisThread();
          Value = CFDictionaryGetValue(*(a1 + 112), a2);
          if (Value)
          {
            _APBrokerManagerAuthenticateBrokerGroup(a1, Value, a3);
          }
        }

        else
        {
          *(a1 + 232) = 0;
          v17 = *(a1 + 112);
          CFDictionaryApplyBlock();
        }

        goto LABEL_13;
      }

      v19 = 4294960568;
    }

    APSLogErrorAt();
    _APBrokerManagerClearAuthCallbackState(a1);
    v21 = *(a1 + 96);
    FigSimpleMutexUnlock();
LABEL_19:
    _APBrokerManagerCallAuthenticationCallback(a1, v19, 0, a4);
    return v19;
  }

LABEL_13:
  v18 = *(a1 + 96);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t __APBrokerManagerAuthenticateBrokerGroup_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(v1 + 96);
  FigSimpleMutexLock();
  v4 = *(v1 + 216);
  if (!v4)
  {
    v4 = -6722;
    *(v1 + 216) = -6722;
  }

  if (gLogCategory_APBrokerManager <= 90)
  {
    if (gLogCategory_APBrokerManager != -1 || (v5 = _LogCategory_Initialize(), v4 = *(v1 + 216), v5))
    {
      LogPrintF();
      v4 = *(v1 + 216);
    }
  }

  _APBrokerManagerCallAuthenticationCallback(v1, v4, 0, *(v1 + 208));
  _APBrokerManagerClearAuthCallbackState(v1);
  v6 = *(v1 + 96);

  return FigSimpleMutexUnlock();
}

void __APBrokerManagerAuthenticateBrokerGroup_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(*(a1 + 32) + 96);
  FigSimpleMutexLock();
  _APBrokerManagerReleaseBrokerDiscovery(*(a1 + 32));
  v4 = *(*(a1 + 32) + 96);
  FigSimpleMutexUnlock();
  v5 = *(a1 + 32);

  CFRelease(v5);
}

uint64_t _APBrokerManagerReleaseBrokerDiscovery(uint64_t a1)
{
  v2 = *(a1 + 96);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v3 = (a1 + 132);
  v4 = *(a1 + 132);
  if (!v4)
  {
    return _APBrokerManagerReleaseBrokerDiscovery_cold_2();
  }

  v5 = (v4 - 1);
  *v3 = v5;
  if (gLogCategory_APBrokerManager <= 30)
  {
    _APBrokerManagerReleaseBrokerDiscovery_cold_1(gLogCategory_APBrokerManager, v5, a1, v3);
  }

  return _APBrokerManagerUpdateBrowsing(a1);
}

void _APBrokerManagerAuthenticateBrokerGroup(const void *a1, uint64_t a2, const void *a3)
{
  CFRetain(a1);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___APBrokerManagerAuthenticateBrokerGroup_block_invoke;
  aBlock[3] = &__block_descriptor_40_e44_v28__0i8____CFString__12____CFDictionary__20l;
  aBlock[4] = a1;
  APBrokerGroupAuthenticate(a2, a3, aBlock);
}

uint64_t APBrokerManagerGetInfoFromBrokerGroup(uint64_t a1, const void *a2, const void *a3)
{
  v7 = a1 + 96;
  v6 = *(a1 + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v8 = *v7;
  FigSimpleMutexLock();
  if (!*(v7 + 8))
  {
    if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
    {
      APBrokerManagerGetInfoFromBrokerGroup_cold_1(a2);
    }

    if (*(a1 + 272))
    {
      v18 = 4294960575;
      v20 = 1563;
    }

    else
    {
      v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
      *(a1 + 272) = v9;
      if (v9)
      {
        *(a1 + 248) = _Block_copy(a3);
        _APBrokerManagerRequestBrokerDiscovery(a1);
        CFRetain(a1);
        v10 = *(a1 + 272);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __APBrokerManagerGetInfoFromBrokerGroup_block_invoke;
        handler[3] = &__block_descriptor_40_e5_v8__0l;
        handler[4] = a1;
        dispatch_source_set_event_handler(v10, handler);
        v11 = *(a1 + 272);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __APBrokerManagerGetInfoFromBrokerGroup_block_invoke_2;
        v21[3] = &__block_descriptor_40_e5_v8__0l;
        v21[4] = a1;
        dispatch_source_set_cancel_handler(v11, v21);
        v12 = *(a1 + 272);
        v13 = dispatch_time(0, 3000000000);
        dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        dispatch_resume(*(a1 + 272));
        if (a2)
        {
          *(a1 + 256) = CFRetain(a2);
          v14 = *(a1 + 96);
          FigSimpleMutexCheckIsLockedOnThisThread();
          Value = CFDictionaryGetValue(*(a1 + 112), a2);
          if (Value)
          {
            _APBrokerManagerGetInfoFromBrokerGroup(a1, Value);
          }
        }

        else
        {
          *(a1 + 256) = 0;
          v16 = *(a1 + 112);
          CFDictionaryApplyBlock();
        }

        goto LABEL_12;
      }

      v18 = 4294960568;
      v20 = 1567;
    }

    APBrokerManagerGetInfoFromBrokerGroup_cold_2(v20, a1, v7, v18, a3);
    return v18;
  }

LABEL_12:
  v17 = *v7;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t __APBrokerManagerGetInfoFromBrokerGroup_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(v1 + 96);
  FigSimpleMutexLock();
  if (*(v1 + 264))
  {
    if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
    {
      __APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_1();
    }

    v4 = 0;
  }

  else
  {
    if (gLogCategory_APBrokerManager <= 60 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
    {
      __APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_2();
    }

    v4 = -6722;
  }

  _APBrokerManagerCallGetInfoCallback(v1, v4, *(v1 + 264), *(v1 + 248));
  _APBrokerManagerClearGetInfoCallbackState(v1);
  v5 = *(v1 + 96);

  return FigSimpleMutexUnlock();
}

void __APBrokerManagerGetInfoFromBrokerGroup_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(*(a1 + 32) + 96);
  FigSimpleMutexLock();
  _APBrokerManagerReleaseBrokerDiscovery(*(a1 + 32));
  v4 = *(*(a1 + 32) + 96);
  FigSimpleMutexUnlock();
  v5 = *(a1 + 32);

  CFRelease(v5);
}

void _APBrokerManagerGetInfoFromBrokerGroup(const void *a1, uint64_t a2)
{
  CFRetain(a1);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke;
  aBlock[3] = &__block_descriptor_40_e44_v28__0i8____CFString__12____CFDictionary__20l;
  aBlock[4] = a1;
  APBrokerGroupGetInfo(a2, aBlock);
}

void _APBrokerManagerClearGetInfoCallbackState(uint64_t a1)
{
  v2 = *(a1 + 96);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v3 = *(a1 + 248);
  if (v3)
  {
    _Block_release(v3);
    *(a1 + 248) = 0;
  }

  v4 = *(a1 + 264);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 264) = 0;
  }

  v5 = *(a1 + 272);
  if (v5)
  {
    dispatch_source_cancel(*(a1 + 272));
    dispatch_release(v5);
    *(a1 + 272) = 0;
  }
}

void APBrokerManagerResolveBrokeredReceiverDNSName(uint64_t a1, CFStringRef theString, void *a3)
{
  v17 = 0;
  v18 = 0;
  if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!theString)
  {
    APBrokerManagerResolveBrokeredReceiverDNSName_cold_5();
    goto LABEL_28;
  }

  if (!a3)
  {
    APBrokerManagerResolveBrokeredReceiverDNSName_cold_4();
    goto LABEL_19;
  }

  APBrokeredReceiverCopyInfoFromDNSName(theString, &v18, &v17);
  if (!v18)
  {
    APBrokerManagerResolveBrokeredReceiverDNSName_cold_3();
    goto LABEL_28;
  }

  if (!v17)
  {
    APBrokerManagerResolveBrokeredReceiverDNSName_cold_2();
LABEL_28:
    v11 = -6705;
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_11;
  }

  while (1)
  {
    v6 = *(a1 + 96);
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    v7 = *(a1 + 96);
    FigSimpleMutexLock();
    v8 = v18;
    v9 = *(a1 + 96);
    FigSimpleMutexCheckIsLockedOnThisThread();
    Value = CFDictionaryGetValue(*(a1 + 112), v8);
    if (Value)
    {
      APBrokerGroupResolveReceiverDNSName(Value, v17, a3);
      v11 = 0;
    }

    else
    {
      APBrokerManagerResolveBrokeredReceiverDNSName_cold_1();
      v11 = -6705;
    }

    v12 = *(a1 + 96);
    FigSimpleMutexUnlock();
LABEL_16:
    if (!v11)
    {
      break;
    }

    v13 = _Block_copy(a3);
    if (v13)
    {
      v14 = *(a1 + 88);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __APBrokerManagerResolveBrokeredReceiverDNSName_block_invoke;
      block[3] = &unk_278BC7098;
      block[4] = v13;
      v16 = v11;
      dispatch_async(v14, block);
      break;
    }

    FatalErrorF();
LABEL_11:
    LogPrintF();
  }

LABEL_19:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void __APBrokerManagerResolveBrokeredReceiverDNSName_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 32);

  _Block_release(v3);
}

uint64_t _APBrokerManagerFinalize(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v10 = 0;
    if (!*(a1 + 64))
    {
      goto LABEL_6;
    }

    v1 = _APBrokerManagerCopyReferencedObjectIfNecessary(*(a1 + 72), &v10);
    if (!v10)
    {
      (*(a1 + 64))(v1, *(a1 + 80));
      *(a1 + 80) = 0;
      if (!v1)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else
  {
    FatalErrorF();
  }

  _APBrokerManagerFinalize_cold_1();
  if (v1)
  {
LABEL_5:
    CFRelease(v1);
  }

LABEL_6:
  v3 = *(a1 + 192);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 192) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 72) = 0;
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 112) = 0;
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 120) = 0;
  }

  *(a1 + 16) = 0;
  v7 = *(a1 + 88);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 88) = 0;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    dispatch_release(v8);
    *(a1 + 24) = 0;
  }

  result = *(a1 + 96);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(a1 + 96) = 0;
  }

  return result;
}

void _APBrokerManagerHandleBonjourEvent(int a1, const void *a2, uint64_t a3)
{
  if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if ((a1 - 3) >= 2)
  {
    if (a1 == 2)
    {
      cf1 = 0;
      v21 = *(a3 + 96);
      FigSimpleMutexCheckIsNotLockedOnThisThread();
      v22 = *(a3 + 96);
      FigSimpleMutexLock();
      if (*(a3 + 136))
      {
        if (APBrokerCopyBrokerInfoFromBonjourInfo(a2, 0, &cf1))
        {
          _APBrokerManagerHandleBonjourEvent_cold_2();
        }

        else
        {
          v23 = cf1;
          v24 = *(a3 + 96);
          FigSimpleMutexCheckIsLockedOnThisThread();
          Value = CFDictionaryGetValue(*(a3 + 112), v23);
          if (Value)
          {
            v26 = Value;
            CFRetain(Value);
            if (APBrokerGroupRemoveBroker(v26, a2))
            {
              _APBrokerManagerHandleBonjourEvent_cold_3();
            }

            else if (APBrokerGroupIsEmpty(v26))
            {
              v31 = *(a3 + 112);
              GroupID = APBrokerGroupGetGroupID(v26);
              CFDictionaryRemoveValue(v31, GroupID);
              _APBrokerManagerCleanupBrokerGroup(a3, v26);
            }

            v27 = *(a3 + 96);
            FigSimpleMutexUnlock();
            v17 = v26;
            goto LABEL_44;
          }
        }
      }

      v33 = *(a3 + 96);
      FigSimpleMutexUnlock();
      goto LABEL_45;
    }

    if (a1 != 1)
    {
      return;
    }

    v35 = 0;
    cf1 = 0;
    v6 = *(a3 + 96);
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    v7 = *(a3 + 96);
    FigSimpleMutexLock();
    if (*(a3 + 136))
    {
      if (APBrokerCopyBrokerInfoFromBonjourInfo(a2, 0, &cf1))
      {
        _APBrokerManagerHandleBonjourEvent_cold_4();
        goto LABEL_29;
      }

      v8 = cf1;
      v9 = *(a3 + 96);
      FigSimpleMutexCheckIsLockedOnThisThread();
      v10 = CFDictionaryGetValue(*(a3 + 112), v8);
      v35 = v10;
      if (!v10)
      {
        if (APBrokerGroupCreate(cf1, &v35))
        {
          _APBrokerManagerHandleBonjourEvent_cold_5();
          goto LABEL_29;
        }

        v34 = _APBrokerManagerHandleBrokeredReceiversChanged;
        if (!APBrokerGroupSetDelegate(v35, a3, &v34))
        {
          CFDictionarySetValue(*(a3 + 112), cf1, v35);
          v11 = *(a3 + 96);
          FigSimpleMutexCheckIsLockedOnThisThread();
          if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v12 = *(a3 + 144);
          _APBrokerManagerFireBrokerGroupEvent(a3);
          if (!APBrokerGroupAddOrUpdateBroker(v35, a2))
          {
            v13 = *(a3 + 224);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *(a3 + 232);
            if (v14)
            {
              if (!CFEqual(cf1, v14))
              {
                goto LABEL_23;
              }

              v13 = *(a3 + 224);
            }

            _APBrokerManagerAuthenticateBrokerGroup(a3, v35, v13);
LABEL_23:
            if (*(a3 + 272))
            {
              v15 = *(a3 + 256);
              if (!v15 || CFEqual(cf1, v15))
              {
                _APBrokerManagerGetInfoFromBrokerGroup(a3, v35);
              }
            }

            if (*(a3 + 137))
            {
              APBrokerGroupStartReceiverPolling(v35);
            }

            goto LABEL_29;
          }
        }

LABEL_59:
        APSLogErrorAt();
        goto LABEL_29;
      }

      v28 = v10;
      CFRetain(v10);
      v29 = *(a3 + 96);
      FigSimpleMutexCheckIsLockedOnThisThread();
      if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v30 = *(a3 + 152);
      _APBrokerManagerFireBrokerGroupEvent(a3);
      if (APBrokerGroupAddOrUpdateBroker(v28, a2))
      {
        goto LABEL_59;
      }
    }

LABEL_29:
    v16 = *(a3 + 96);
    FigSimpleMutexUnlock();
    v17 = v35;
    if (!v35)
    {
LABEL_45:
      if (cf1)
      {
        CFRelease(cf1);
      }

      return;
    }

LABEL_44:
    CFRelease(v17);
    goto LABEL_45;
  }

  v18 = *(a3 + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v19 = *(a3 + 96);
  FigSimpleMutexLock();
  if (*(a3 + 136) && _APBrokerManagerRemoveAllBrokerGroups(a3))
  {
    _APBrokerManagerHandleBonjourEvent_cold_1();
  }

  v20 = *(a3 + 96);

  FigSimpleMutexUnlock();
}

uint64_t _APBrokerManagerHandleBrokeredReceiversChanged(uint64_t a1, void *a2)
{
  GroupID = APBrokerGroupGetGroupID(a1);
  v4 = a2[12];
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v5 = a2[12];
  FigSimpleMutexLock();
  CFRetain(a2);
  CFRetain(GroupID);
  v6 = a2[11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  v9[4] = a2;
  v9[5] = GroupID;
  dispatch_async(v6, v9);
  v7 = a2[12];
  return FigSimpleMutexUnlock();
}

void _APBrokerManagerUpdateBrokerGroupReceiversWithList(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = *(a1 + 96);
  FigSimpleMutexCheckIsLockedOnThisThread();
  Value = CFDictionaryGetValue(*(a1 + 120), a2);
  if (Value && (v8 = CFRetain(Value)) != 0)
  {
    v9 = v8;
    v10 = *MEMORY[0x277CBECE8];
  }

  else
  {
    v10 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      _APBrokerManagerUpdateBrokerGroupReceiversWithList_cold_2();
      return;
    }

    v9 = Mutable;
    CFDictionarySetValue(*(a1 + 120), a2, Mutable);
  }

  v12 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v12)
  {
    v13 = v12;
    CFDictionaryApplyBlock();
    CFDictionaryApplyBlock();
    if (a3)
    {
      CFDictionaryApplyBlock();
    }

    CFRelease(v13);
  }

  else
  {
    _APBrokerManagerUpdateBrokerGroupReceiversWithList_cold_1();
  }

  CFRelease(v9);
}

CFTypeRef *BonjourDiscoveryDelegateSetup(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (v5)
  {
    v6 = BonjourBrowser_CreateEx();
    v7 = v6;
    if (v6)
    {
      BonjourDiscoveryDelegateSetup_cold_1(v6, v5);
      v5 = 0;
    }

    else
    {
      v8 = *v5;
      BonjourBrowser_SetEventHandler();
    }
  }

  else
  {
    BonjourDiscoveryDelegateSetup_cold_2();
    v7 = -6728;
  }

  if (a4)
  {
    *a4 = v7;
  }

  return v5;
}

void BonjourDiscoveryDelegateCleanup(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      BonjourBrowser_Stop();
      CFRelease(*a2);
    }

    free(a2);
  }
}

uint64_t healthReporter_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTSessionHealthReporterCreate(const __CFAllocator *a1, const __CFString *a2, const void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v17 = 4294895125;
    APTSessionHealthReporterCreate_cold_4();
    goto LABEL_17;
  }

  if (_MergedGlobals_0 != -1)
  {
    APTSessionHealthReporterCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APTSessionHealthReporterCreate_cold_3();
    v17 = 4294895126;
    goto LABEL_17;
  }

  v13 = Instance;
  Instance[1] = 0u;
  v14 = Instance + 1;
  Instance[4] = 0u;
  Instance[5] = 0u;
  Instance[2] = 0u;
  Instance[3] = 0u;
  if (gLogCategory_APTSessionHealthReporter <= 30 && (gLogCategory_APTSessionHealthReporter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  arc4random_buf(v14, 8uLL);
  if (a2)
  {
    if (CFStringGetCString(a2, v13 + 76, 17, 0x8000100u))
    {
      v15 = if_nametoindex(v13 + 76);
      *(v13 + 18) = v15;
      if (v15)
      {
        goto LABEL_12;
      }

      v20 = "Failed to map interface name to index";
      v21 = 169;
    }

    else
    {
      v20 = "Invalid local interface name";
      v21 = 166;
    }

    APTSessionHealthReporterCreate_cold_2(v21, v20, v13, v22);
    v17 = v22[0];
    goto LABEL_17;
  }

LABEL_12:
  if (a4)
  {
    APSNetworkAddressGetSocketAddr();
    v16 = *&v22[3];
    *(v13 + 24) = *v22;
    *(v13 + 36) = v16;
    SockAddrToString();
    *(v13 + 7) = CFStringCreateWithFormat(a1, 0, @"rtsp://%s:%d/", v22, a5);
  }

  *(v13 + 8) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v17 = 0;
  *a6 = v13;
LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t APTSessionHealthReporterReportNetworkStatus(uint64_t a1, int a2)
{
  if (a2 != 1 && a2 != 2)
  {
    return 0;
  }

  if (!*(a1 + 56))
  {
    v10 = 4294895122;
    APTSessionHealthReporterReportNetworkStatus_cold_12();
LABEL_39:
    APSLogErrorAt();
    return v10;
  }

  if (!*(a1 + 64))
  {
    v10 = 4294895122;
    APTSessionHealthReporterReportNetworkStatus_cold_11();
    goto LABEL_39;
  }

  if (healthReporter_getSymptomReporter_onceToken != -1)
  {
    APTSessionHealthReporterReportNetworkStatus_cold_1();
  }

  if (!healthReporter_getSymptomReporter_symptomReporter && (APTSessionHealthReporterReportNetworkStatus_cold_2(&v17) & 1) == 0)
  {
    v10 = v17;
    goto LABEL_39;
  }

  if (symptom_new())
  {
    v3 = *(a1 + 16);
    if (symptom_set_qualifier())
    {
      APTSessionHealthReporterReportNetworkStatus_cold_3(&v17);
    }

    else
    {
      v4 = *(a1 + 72);
      if (symptom_set_qualifier())
      {
        APTSessionHealthReporterReportNetworkStatus_cold_4(&v17);
      }

      else if (symptom_set_additional_qualifier())
      {
        APTSessionHealthReporterReportNetworkStatus_cold_5(&v17);
      }

      else
      {
        v5 = *(a1 + 56);
        v6 = healthReporter_setStringSymptomQualifier();
        if (v6)
        {
          v10 = v6;
          APTSessionHealthReporterReportNetworkStatus_cold_6();
          goto LABEL_39;
        }

        v7 = *(a1 + 64);
        v8 = healthReporter_setStringSymptomQualifier();
        if (v8)
        {
          v10 = v8;
          APTSessionHealthReporterReportNetworkStatus_cold_7();
          goto LABEL_39;
        }

        v18 = 0;
        v17 = 0;
        if (!strcmp((a1 + 76), "awdl0"))
        {
          PeerMACAddress = GetPeerMACAddress();
          if (PeerMACAddress)
          {
            v10 = PeerMACAddress;
            APTSessionHealthReporterReportNetworkStatus_cold_8();
LABEL_38:
            APSLogErrorAt();
            goto LABEL_39;
          }

          if (symptom_set_additional_qualifier())
          {
            APSLogErrorAt();
            v12 = APSSignalErrorAt();
            if (v12)
            {
              v10 = v12;
              goto LABEL_38;
            }
          }
        }

        if (!symptom_send())
        {
          if (gLogCategory_APTSessionHealthReporter <= 50 && (gLogCategory_APTSessionHealthReporter != -1 || _LogCategory_Initialize()))
          {
            v15 = *(a1 + 72);
            v16 = *(a1 + 56);
            v13 = *(a1 + 64);
            v14 = *(a1 + 16);
            LogPrintF();
          }

          return 0;
        }

        APTSessionHealthReporterReportNetworkStatus_cold_9(&v17);
      }
    }
  }

  else
  {
    APTSessionHealthReporterReportNetworkStatus_cold_10(&v17);
  }

  v10 = v17;
  if (v17)
  {
    goto LABEL_39;
  }

  return v10;
}

void healthReporter_Finalize(uint64_t a1)
{
  if (gLogCategory_APTSessionHealthReporter <= 30 && (gLogCategory_APTSessionHealthReporter != -1 || _LogCategory_Initialize()))
  {
    healthReporter_Finalize_cold_1();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

uint64_t healthReporter_setStringSymptomQualifier()
{
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (!CStringPtrAndBufferToFree)
  {
    healthReporter_setStringSymptomQualifier_cold_2(&v3);
LABEL_7:
    v1 = v3;
    goto LABEL_4;
  }

  strlen(CStringPtrAndBufferToFree);
  if (symptom_set_additional_qualifier())
  {
    healthReporter_setStringSymptomQualifier_cold_1(&v3);
    goto LABEL_7;
  }

  v1 = 0;
LABEL_4:
  free(0);
  return v1;
}

uint64_t __healthReporter_getSymptomReporter_block_invoke()
{
  result = symptom_framework_init();
  healthReporter_getSymptomReporter_symptomReporter = result;
  return result;
}

void sub_23D2DBD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D2DE148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void bonjourCacheHomeKit_introspector_cmd_showInfo(void *a1)
{
  v1 = [a1 copyDescription];
  FPrintF();
}

void bonjourCacheHomeKit_introspector_cmd_purgeCache(void *a1, uint64_t a2)
{
  v4 = [a1 internalQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __bonjourCacheHomeKit_introspector_cmd_purgeCache_block_invoke;
  v5[3] = &unk_278BC72B0;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void bonjourCacheHomeKit_introspector_cmd_applyEvictions(void *a1, uint64_t a2)
{
  v4 = [a1 internalQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __bonjourCacheHomeKit_introspector_cmd_applyEvictions_block_invoke;
  v5[3] = &unk_278BC72B0;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void bonjourCacheHomeKit_introspector_cmd_injectDevices(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    bonjourCacheHomeKit_introspector_cmd_injectDevices_cold_1();
  }

  if (a3 > 1)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithCString:*(a4 + 8) encoding:4];
    if ([v8 length])
    {
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = [v9 objectForKeyedSubscript:@"Items"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_17;
      }

      if ([v10 count])
      {
        v11 = [a1 internalQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __bonjourCacheHomeKit_introspector_cmd_injectDevices_block_invoke;
        block[3] = &unk_278BC72D8;
        block[5] = v10;
        block[6] = a2;
        block[4] = a1;
        dispatch_sync(v11, block);
        return;
      }
    }
  }

LABEL_17:
  FPrintF();
}

uint64_t __bonjourCacheHomeKit_introspector_cmd_purgeCache_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  v3 = [*(a1 + 32) getCacheDirectoryURLWithParentDirectory:@"APBonjourCacheHomeKit" creatingIfNecessary:0];
  if (!v3)
  {
    result = __bonjourCacheHomeKit_introspector_cmd_purgeCache_block_invoke_cold_1(&v8, &v9);
    if (!v9)
    {
      return result;
    }

    goto LABEL_5;
  }

  v4 = v3;
  v5 = *(a1 + 40);
  FPrintF();
  if ([v2 fileExistsAtPath:{objc_msgSend(objc_msgSend(v4, "standardizedURL", v4), "path")}])
  {
    [v2 removeItemAtURL:v4 error:&v8];
  }

  [*(a1 + 32) forceReportCachedDevicesLost];
  [*(a1 + 32) loadCache];
  result = [*(a1 + 32) forceReportCachedDevicesFound];
  if (v8)
  {
LABEL_5:
    v7 = *(a1 + 40);
    return FPrintF();
  }

  return result;
}

uint64_t __bonjourCacheHomeKit_introspector_cmd_applyEvictions_block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "cachedDevices")];
  [*(a1 + 32) checkAndEvictCachedDevicesIfNecessary];
  v3 = *(a1 + 40);
  v5 = v2 - [objc_msgSend(*(a1 + 32) "cachedDevices")];
  return FPrintF();
}

uint64_t __bonjourCacheHomeKit_introspector_cmd_injectDevices_block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentNetworkSignature];
  if (v2)
  {
    v3 = v2;
    v31 = @"networkSignature";
    v32[0] = v2;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v5 = *(a1 + 48);
    FPrintF();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = *(a1 + 40);
    result = [obj countByEnumeratingWithState:&v26 objects:v30 count:{16, v3}];
    if (!result)
    {
      goto LABEL_20;
    }

    v7 = result;
    v8 = *v27;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = [*(a1 + 40) objectForKeyedSubscript:{v10, v21}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = *(a1 + 48);
          v21 = v10;
LABEL_18:
          FPrintF();
          goto LABEL_14;
        }

        v12 = [APBonjourCacheHomeKit prepareDeviceInfo:v11];
        if (!v12)
        {
          v17 = *(a1 + 48);
          v21 = v10;
          goto LABEL_18;
        }

        v13 = v12;
        v14 = [v12 objectForKeyedSubscript:@"name"];
        v15 = *(a1 + 48);
        v22 = v10;
        v23 = v14;
        FPrintF();
        if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
        {
          v23 = v10;
          v24 = v14;
          v22 = *(a1 + 32);
          LogPrintF();
        }

        [*(a1 + 32) cacheDevice:{+[APBonjourCacheHomeKitItem itemWithDeviceInfo:userInfo:](APBonjourCacheHomeKitItem, "itemWithDeviceInfo:userInfo:", v13, v4, v22, v23, v24)}];
LABEL_14:
        ++v9;
      }

      while (v7 != v9);
      result = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v7 = result;
      if (!result)
      {
LABEL_20:
        v18 = *MEMORY[0x277D85DE8];
        return result;
      }
    }
  }

  v19 = *(a1 + 48);
  v20 = *MEMORY[0x277D85DE8];

  return FPrintF();
}

uint64_t APBrokerKeychainUtilsStoreAuthToken(__CFString *a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  cf = 0;
  v15 = 0;
  if (!a1)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_8(&v15);
LABEL_27:
    v9 = 0;
LABEL_28:
    v11 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_7(&v15);
    goto LABEL_27;
  }

  if (!a3)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_6(&v15);
    goto LABEL_27;
  }

  if (!a4)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_5(&v15);
    goto LABEL_27;
  }

  if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  KeychainItemID = APBrokerKeychainUtilsCreateKeychainItemID(a1, a2, &cf);
  if (KeychainItemID)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_1(KeychainItemID, &v15);
    goto LABEL_27;
  }

  v9 = objc_opt_new();
  if (!v9)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_4(&v15);
    goto LABEL_28;
  }

  v10 = objc_opt_new();
  v11 = v10;
  if (v10)
  {
    [v10 setAccessGroup:@"com.apple.airplay"];
    [v11 setAccessibleType:2];
    [v11 setIdentifier:cf];
    v16[0] = @"authToken";
    v16[1] = @"authTokenTTL";
    v17[0] = a3;
    v17[1] = a4;
    [v11 setMetadata:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, v16, 2)}];
    [v11 setType:@"APBroker"];
    [v9 addOrUpdateOrReAddItem:v11 flags:0 logCategory:&gLogCategory_APBrokerKeychainUtils logLabel:@"Broker auth token" error:&v15];
    if (NSErrorToOSStatus())
    {
      APBrokerKeychainUtilsStoreAuthToken_cold_2();
    }
  }

  else
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_3(&v15);
  }

LABEL_14:

  if (cf)
  {
    CFRelease(cf);
  }

  if (v15 && gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = NSErrorToOSStatus();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APBrokerKeychainUtilsCreateKeychainItemID(__CFString *a1, __CFString *a2, uint64_t *a3)
{
  v6 = 0;
  if (_IsValidKeychainItemIDComponent(a1))
  {
    if (_IsValidKeychainItemIDComponent(a2))
    {
      *a3 = CFStringCreateF();
    }

    else
    {
      APBrokerKeychainUtilsCreateKeychainItemID_cold_2(&v6);
    }
  }

  else
  {
    APBrokerKeychainUtilsCreateKeychainItemID_cold_3(&v6);
  }

  return v6;
}