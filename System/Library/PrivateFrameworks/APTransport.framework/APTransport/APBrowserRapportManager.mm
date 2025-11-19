@interface APBrowserRapportManager
@end

@implementation APBrowserRapportManager

void __APBrowserRapportManager_ensureScanningStarted_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  v5 = __APBrowserRapportManager_ensureScanningStarted_block_invoke_6;
  v6 = &unk_278BC8108;
  v7 = v2;
  APBrowserRapportManager_runOnQueue(v3, v4);
}

uint64_t __APBrowserRapportManager_runOnQueue_block_invoke(uint64_t result)
{
  if (!*(*(result + 40) + 51))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __APBrowserRapportManager_ensureScanningStarted_block_invoke_6(uint64_t result)
{
  if (*(result + 32))
  {
    if (gLogCategory_APBrowserRapportManager <= 90)
    {
      if (gLogCategory_APBrowserRapportManager != -1)
      {
        return __APBrowserRapportManager_ensureScanningStarted_block_invoke_6_cold_1();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __APBrowserRapportManager_ensureScanningStarted_block_invoke_6_cold_1();
      }
    }
  }

  return result;
}

void __APBrowserRapportManager_ensureScanningStarted_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 32) idsDeviceIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = [v2 effectiveIdentifier];
      v7 = [v2 model];
      v8 = [v2 mediaRouteIdentifier];
      if (([v7 containsString:@"Mac"] & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"RealityDevice") & 1) == 0 && (!APSCanSendToAltReceiver() || (objc_msgSend(v7, "hasPrefix:", @"iPhone") & 1) == 0 && !objc_msgSend(v7, "hasPrefix:", @"iPad")))
      {
        OUTLINED_FUNCTION_5_10();
        return;
      }

      v9 = [v2 statusFlags];
      v10 = [v2 serviceTypes];
      if (v10)
      {
        v41 = [objc_msgSend(v2 "serviceTypes")];
      }

      else
      {
        v41 = 1;
      }

      v40 = a2;
      v11 = *(a2 + 80);
      CFDictionaryGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      v13 = TypedValue;
      if (TypedValue)
      {
        CFRetain(TypedValue);
      }

      v14 = (v9 >> 19) & 1;
      if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
      {
        [v2 name];
        [v2 model];
        LogPrintF();
      }

      v15 = MEMORY[0x277CBED28];
      if (v13)
      {
        CFSetGetTypeID();
        v16 = CFDictionaryGetTypedValue();
        if (v16)
        {
          v17 = v6;
          v38 = v16;
          v39 = v5;
          CFRetain(v16);
          Int64 = CFDictionaryGetInt64();
          v19 = CFDictionaryGetInt64();
          v20 = CFDictionaryGetInt64() != 0;
          CFStringGetTypeID();
          v21 = CFDictionaryGetTypedValue();
          if (v14 == Int64)
          {
            v22 = 0;
          }

          else
          {
            CFDictionarySetInt64();
            v22 = 1;
          }

          v32 = v40;
          if (v8 && v8 != v21 && (!v21 || !CFEqual(v8, v21)))
          {
            FigCFDictionarySetValue();
            v22 = 1;
          }

          if (v10)
          {
            v6 = v17;
            if (!v19)
            {
              CFDictionarySetValue(v13, @"isServiceAvailabilityKnown", *MEMORY[0x277CBED28]);
              v22 = 1;
            }

            v30 = v41;
            v25 = v38;
            if (v41 == v20)
            {
              v5 = v39;
            }

            else
            {
              v34 = MEMORY[0x277CBED10];
              if (v41)
              {
                v34 = MEMORY[0x277CBED28];
              }

              CFDictionarySetValue(v13, @"isServiceAvailable", *v34);
              v5 = v39;
              if (v41)
              {
                CFSetRemoveAllValues(v38);
                v30 = 1;
              }

              v22 = 1;
            }
          }

          else
          {
            v30 = v20;
            v6 = v17;
            v25 = v38;
            v5 = v39;
          }

          CFStringGetTypeID();
          v33 = CFDictionaryGetTypedValue();
          if (!v22)
          {
            goto LABEL_52;
          }

          goto LABEL_48;
        }

        goto LABEL_81;
      }

      v23 = *MEMORY[0x277CBECE8];
      Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
      if (Mutable)
      {
        v25 = Mutable;
        v26 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v26)
        {
          v13 = v26;
          CFDictionarySetValue(v26, @"rapportDeviceID", v5);
          CFDictionarySetInt64();
          v27 = *v15;
          v28 = *MEMORY[0x277CBED10];
          if (v10)
          {
            v29 = v27;
          }

          else
          {
            v29 = *MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(v13, @"isServiceAvailabilityKnown", v29);
          v30 = v41;
          if (v41)
          {
            v31 = v27;
          }

          else
          {
            v31 = v28;
          }

          CFDictionarySetValue(v13, @"isServiceAvailable", v31);
          CFDictionarySetValue(v13, @"effectiveIDsAttempted", v25);
          FigCFDictionarySetValue();
          v32 = v40;
          CFDictionarySetValue(*(v40 + 80), v5, v13);
          v33 = 0;
LABEL_48:
          if (v33 | v8)
          {
            if (APBrowserRapportManager_sendDeviceEvent(v32, v13))
            {
              APSLogErrorAt();
              if (gLogCategory_APBrowserRapportManager > 90 || gLogCategory_APBrowserRapportManager == -1 && !_LogCategory_Initialize())
              {
                goto LABEL_58;
              }

              goto LABEL_73;
            }
          }

          else
          {
            v33 = 0;
          }

LABEL_52:
          if (v33 | v8)
          {
            if (gLogCategory_APBrowserRapportManager > 30 || gLogCategory_APBrowserRapportManager == -1 && !OUTLINED_FUNCTION_8_0())
            {
              goto LABEL_58;
            }
          }

          else if (CFDictionaryGetValue(v13, @"directClient"))
          {
            if (gLogCategory_APBrowserRapportManager > 30 || gLogCategory_APBrowserRapportManager == -1 && !OUTLINED_FUNCTION_8_0())
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (CFSetContainsValue(v25, v6))
            {
              goto LABEL_58;
            }

            if (v30)
            {
              if (APBrowserRapportManager_sendGetInfo(v32, v2, v5, v6))
              {
                APSLogErrorAt();
              }

              goto LABEL_58;
            }

            if (gLogCategory_APBrowserRapportManager > 30 || gLogCategory_APBrowserRapportManager == -1 && !OUTLINED_FUNCTION_8_0())
            {
LABEL_58:
              CFRelease(v25);
LABEL_59:
              OUTLINED_FUNCTION_5_10();

              CFRelease(v35);
              return;
            }
          }

LABEL_73:
          LogPrintF();
          goto LABEL_58;
        }

LABEL_81:
        APSLogErrorAt();
        goto LABEL_59;
      }
    }
  }

  OUTLINED_FUNCTION_5_10();

  APSLogErrorAt();
}

void __APBrowserRapportManager_dispatchEvent_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __APBrowserRapportManager_ensureScanningStarted_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __APBrowserRapportManager_ensureScanningStarted_block_invoke_2;
  v3[3] = &unk_278BC8108;
  v3[4] = a2;
  APBrowserRapportManager_runOnQueue(v2, v3);
}

uint64_t ___APBrowserRapportManager_getActiveManagers_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  result = FigCFWeakReferenceTableCreate();
  if (result)
  {
    if (gLogCategory_APBrowserRapportManager <= 100)
    {
      if (gLogCategory_APBrowserRapportManager != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = ___APBrowserRapportManager_getActiveManagers_block_invoke_cold_1();
      }
    }

    __break(1u);
  }

  return result;
}

void __APBrowserRapportManager_sendGetInfo_block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!v3)
  {
    __APBrowserRapportManager_sendGetInfo_block_invoke_2_cold_3();
LABEL_25:

    APBrowserRapportManager_tryNextEffectiveID(a2, v3);
    return;
  }

  v6 = *(a2 + 80);
  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    __APBrowserRapportManager_sendGetInfo_block_invoke_2_cold_2();
    goto LABEL_25;
  }

  v8 = TypedValue;
  if (!*(a2 + 48))
  {
LABEL_24:
    CFDictionaryRemoveValue(v8, @"directClient");
    goto LABEL_25;
  }

  if (v5)
  {
    if (CFErrorGetCode(v5) == -71165)
    {
      CFDictionarySetValue(v8, @"isServiceAvailabilityKnown", *MEMORY[0x277CBED28]);
      CFDictionarySetValue(v8, @"isServiceAvailable", *MEMORY[0x277CBED10]);

      CFDictionaryRemoveValue(v8, @"directClient");
      return;
    }

    goto LABEL_24;
  }

  v9 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(TypedValue, @"isServiceAvailabilityKnown", *MEMORY[0x277CBED28]);
  CFDictionarySetValue(v8, @"isServiceAvailable", v9);
  if (!CFDictionaryGetValue(v8, @"directClient") || (Value = APSWrapperGetValue()) == 0 || (v11 = Value, (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0))
  {
    __APBrowserRapportManager_sendGetInfo_block_invoke_2_cold_1();
    goto LABEL_24;
  }

  v13 = Mutable;
  if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14 = *(a2 + 40);
  CFRetain(v3);
  CFRetain(v4);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __APBrowserRapportManager_handleDirectClientActivation_block_invoke;
  v15[3] = &__block_descriptor_56_e51_v32__0__NSDictionary_8__NSDictionary_16__NSError_24l;
  v15[4] = v14;
  v15[5] = v3;
  v15[6] = v4;
  [v11 sendRequestID:@"com.apple.airplay.discovery.getinfo" request:v13 options:0 responseHandler:v15];
  CFRelease(v13);
}

void __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[4];
  v6 = a1[6];
  if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v3)
  {
    v7 = *(a2 + 80);
    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v9 = TypedValue;
      if (*(a2 + 48))
      {
        if (v6)
        {
          if (CFErrorGetCode(v6) == -71165)
          {
            CFDictionarySetValue(v9, @"isServiceAvailabilityKnown", *MEMORY[0x277CBED28]);
            CFDictionarySetValue(v9, @"isServiceAvailable", *MEMORY[0x277CBED10]);
            v10 = 0;
            v11 = 1;
LABEL_31:
            CFDictionaryRemoveValue(v9, @"directClient");
            goto LABEL_32;
          }
        }

        else
        {
          v12 = *MEMORY[0x277CBED28];
          CFDictionarySetValue(TypedValue, @"isServiceAvailabilityKnown", *MEMORY[0x277CBED28]);
          CFDictionarySetValue(v9, @"isServiceAvailable", v12);
          if (v5)
          {
            if (CFDictionaryContainsKey(v9, @"bonjourDeviceID"))
            {
              if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }
            }

            else
            {
              v13 = *MEMORY[0x277CE9F28];
              CFStringGetTypeID();
              v14 = CFDictionaryGetTypedValue();
              if (v14)
              {
                v15 = v14;
                if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                CFDictionarySetValue(v9, @"bonjourDeviceID", v15);
                if (APBrowserRapportManager_sendDeviceEvent(a2, v9))
                {
                  __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2_cold_1();
                }

                v11 = 0;
                goto LABEL_30;
              }

              __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2_cold_2();
            }
          }

          else
          {
            __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2_cold_3();
          }
        }
      }

      v11 = 1;
LABEL_30:
      v10 = 1;
      goto LABEL_31;
    }

    __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2_cold_4();
  }

  else
  {
    __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2_cold_5();
  }

  v10 = 1;
  v11 = 1;
LABEL_32:
  if (v10 && v11)
  {

    APBrowserRapportManager_tryNextEffectiveID(a2, v3);
  }
}

uint64_t __APBrowserRapportManager_copyShowInfo_block_invoke(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  CFDictionaryGetValue(theDict, @"rapportDeviceID");
  CFDictionaryGetValue(theDict, @"bonjourDeviceID");
  CFDictionaryGetValue(theDict, @"systemPairingID");
  CFDictionaryGetValue(theDict, @"deviceRelationship");
  v5 = *(a1 + 32);
  return CFStringAppendF();
}

void __APBrowserRapportManager_ensureScanningStarted_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  v5 = __APBrowserRapportManager_ensureScanningStarted_block_invoke_4;
  v6 = &unk_278BC8108;
  v7 = v2;
  APBrowserRapportManager_runOnQueue(v3, v4);
}

uint64_t __APBrowserRapportManager_ensureScanningStarted_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 && [*(a1 + 32) idsDeviceIdentifier])
  {
    [v2 effectiveIdentifier];
    v4 = *(a2 + 80);
    CFDictionaryGetTypeID();
    result = OUTLINED_FUNCTION_6_8();
    if (result)
    {
      if (gLogCategory_APBrowserRapportManager <= 30)
      {
        if (gLogCategory_APBrowserRapportManager != -1)
        {
          return LogPrintF();
        }

        result = OUTLINED_FUNCTION_8_0();
        if (result)
        {
          return LogPrintF();
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

void __APBrowserRapportManager_sendGetInfo_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  v6 = __APBrowserRapportManager_sendGetInfo_block_invoke_2;
  v7 = &unk_278BC8198;
  v9 = *(a1 + 40);
  v8 = v3;
  APBrowserRapportManager_runOnQueue(v4, v5);
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

void __APBrowserRapportManager_handleDirectClientActivation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  v8 = __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2;
  v9 = &unk_278BC81E0;
  v13 = *(a1 + 40);
  v10 = v3;
  v11 = v4;
  v12 = v5;
  APBrowserRapportManager_runOnQueue(v6, v7);
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

@end