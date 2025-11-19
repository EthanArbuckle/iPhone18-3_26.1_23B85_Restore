uint64_t stream_ConfigureEncryption()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
  {
    stream_ConfigureEncryption_cold_1();
  }

  v1 = *(DerivedStorage + 64);
  v2 = APSDispatchSyncTask();
  if (v2)
  {
    stream_ConfigureEncryption_cold_2();
  }

  return v2;
}

void __stream_postCachedConnectionEvent_block_invoke_0(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 48), 0, *(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __stream_waitUntilConnectedInternal_block_invoke(void *a1)
{
  v2 = a1[7];
  if (*(v2 + 72))
  {
    __stream_waitUntilConnectedInternal_block_invoke_cold_1();
  }

  else
  {
    stream_getConnectionState(v2, 0, (*(a1[5] + 8) + 24));
    v3 = *(*(a1[6] + 8) + 24);
    v4 = *(*(a1[5] + 8) + 24);
    CFDictionarySetData();
    v5 = *(*(a1[6] + 8) + 24);
    v6 = *(*(*(a1[5] + 8) + 24) + 76);

    CFDictionarySetInt64();
  }
}

void stream_relinquishMessageBBufInternal(CFTypeRef *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dataPointerOut = 0;
  if (CFSetContainsValue(*(DerivedStorage + 104), a1[1]))
  {
    if (CMBlockBufferGetDataPointer(a1[1], 0, 0, 0, &dataPointerOut))
    {
      stream_relinquishMessageBBufInternal_cold_1();
    }

    else
    {
      Value = CFDictionaryGetValue(*(DerivedStorage + 112), dataPointerOut);
      if (Value)
      {
        v5 = Value;
        CFSetRemoveValue(*(DerivedStorage + 104), a1[1]);
        CFDictionaryRemoveValue(*(DerivedStorage + 112), dataPointerOut);
        v6 = 56;
        if (!*(DerivedStorage + 24))
        {
          v6 = 48;
        }

        v7 = *(*(DerivedStorage + v6) + 24);
        VTable = CMBaseObjectGetVTable();
        v9 = *(*(VTable + 16) + 48);
        if (!v9 || (v10 = *(VTable + 16) + 48, v9(v7, v5)))
        {
          stream_relinquishMessageBBufInternal_cold_2();
        }
      }

      else
      {
        stream_relinquishMessageBBufInternal_cold_3();
      }
    }
  }

  else
  {
    stream_relinquishMessageBBufInternal_cold_4();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

uint64_t stream_configureEncryptionInternal(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    stream_configureEncryptionInternal_cold_1();
    return 4294950679;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 120);
  v6 = a1[1];
  *(v4 + 120) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v7 = *(v4 + 128);
  v8 = a1[2];
  *(v4 + 128) = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v9 = 56;
  if (!*(v4 + 24))
  {
    v9 = 48;
  }

  v10 = *(*(v4 + v9) + 24);
  v12 = a1[1];
  v11 = a1[2];
  VTable = CMBaseObjectGetVTable();
  v14 = *(*(VTable + 16) + 80);
  if (!v14)
  {
    v16 = 4294954514;
LABEL_17:
    APSLogErrorAt();
    return v16;
  }

  v15 = *(VTable + 16) + 80;
  v16 = v14(v10, v12, v11);
  if (v16)
  {
    goto LABEL_17;
  }

  return v16;
}

void stream_sendBatchInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  Count = CFArrayGetCount(*(a1 + 16));
  if (*(DerivedStorage + 72))
  {
    stream_sendBatchInternal_cold_1();
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
      v7 = Count;
      v8 = CFGetAllocator(*(a1 + 16));
      Mutable = CFArrayCreateMutable(v8, v7, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v10 = Mutable;
        v11 = CFGetAllocator(*(a1 + 16));
        v12 = MEMORY[0x23EEDC950](v11, v7, 0x100004077774924, 0);
        if (v12)
        {
          v13 = v12;
          v34 = v6;
          bzero(v12, v7);
          if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
          {
            stream_sendBatchInternal_cold_2(a1);
          }

          v35 = DerivedStorage;
          if (v7 < 1)
          {
LABEL_22:
            if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
            {
              stream_sendBatchInternal_cold_4(a1);
            }

            v20 = v34;
            v21 = *(v34 + 24);
            v22 = *(*(CMBaseObjectGetVTable() + 16) + 88);
            v23 = v35;
            if (v22)
            {
              v24 = v22(v21, v10);
            }

            else
            {
              v24 = APTransportConnectionSendBatchSlow(v21, v10);
            }

            if (v24)
            {
              stream_sendBatchInternal_cold_5();
            }
          }

          else
          {
            v14 = 0;
            v15 = v13;
            v16 = v7;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v14);
              if (!ValueAtIndex || (v18 = ValueAtIndex, v19 = CFGetTypeID(ValueAtIndex), v19 != CMBlockBufferGetTypeID()))
              {
                stream_sendBatchInternal_cold_6();
                goto LABEL_50;
              }

              if (stream_copyFormattedAsyncPackageForBBuf(*a1, v18, *(a1 + 8), &value, v15))
              {
                break;
              }

              if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
              {
                v33 = *(a1 + 8);
                v32 = *a1;
                LogPrintF();
              }

              CFArrayAppendValue(v10, value);
              if (value)
              {
                CFRelease(value);
                value = 0;
              }

              ++v14;
              ++v15;
              if (!--v16)
              {
                goto LABEL_22;
              }
            }

            stream_sendBatchInternal_cold_3();
LABEL_50:
            v20 = v34;
            v23 = v35;
          }

          if (v7 >= 1)
          {
            for (i = 0; i != v7; ++i)
            {
              if (v13[i])
              {
                if (*(v23 + 40))
                {
                  v26 = CFArrayGetValueAtIndex(*(a1 + 16), i);
                  APTransportStreamSendBackingProviderRelinquishBBuf(*(v23 + 40), v26);
                }

                else
                {
                  v27 = CFArrayGetValueAtIndex(v10, i);
                  value = v27;
                  v28 = *(v20 + 24);
                  v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                  if (v29)
                  {
                    v29(v28, v27);
                  }
                }
              }
            }
          }

          v30 = CFGetAllocator(*(a1 + 16));
          CFAllocatorDeallocate(v30, v13);
        }

        else
        {
          stream_sendBatchInternal_cold_7();
        }

        CFRelease(v10);
      }

      else
      {
        stream_sendBatchInternal_cold_8();
      }
    }

    else
    {
      stream_sendBatchInternal_cold_9();
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v31 = *(a1 + 16);
  if (v31)
  {
    CFRelease(v31);
  }
}

void __stream_eventReceived_block_invoke_2_0(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 200);
  if (v3)
  {
    v3(a1[5], 1668179564, a1[6], *(v2 + 192));
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];

  CFRelease(v5);
}

void __stream_eventReceived_block_invoke_3_0(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 200);
  if (v3)
  {
    v3(a1[5], 1684628836, a1[6], *(v2 + 192));
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];

  CFRelease(v5);
}

uint64_t APTTrafficMetricsGetTypeID()
{
  if (_MergedGlobals_19 != -1)
  {
    APTTrafficMetricsGetTypeID_cold_1();
  }

  return qword_281309C70;
}

uint64_t _APTTrafficMetricsGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  qword_281309C70 = result;
  return result;
}

uint64_t APTransportPackageDatagramCreateWithBBuf(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (a3)
  {
    APTransportPackageGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      APTransportPackageDatagramCreateWithBBuf_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = 1684501101;
      if (a2)
      {
        v7 = CFRetain(a2);
      }

      else
      {
        v7 = 0;
      }

      *(DerivedStorage + 8) = v7;
      *a3 = CFRetain(0);
    }
  }

  else
  {
    APTransportPackageDatagramCreateWithBBuf_cold_2();
    return 4294894936;
  }

  return v5;
}

void datagramPackage_Finalize()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t datagramPackage_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  v5 = *DerivedStorage;
  v6 = *(DerivedStorage + 1);
  v3 = CFStringCreateF();
  if (!v3)
  {
    datagramPackage_CopyDebugDescription_cold_1();
  }

  return v3;
}

CFTypeRef datagramPackage_CopyMessageData()
{
  result = *(CMBaseObjectGetDerivedStorage() + 8);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

_DWORD *datagramPackage_SetMessageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *result = a2;
  return result;
}

CFTypeRef datagramPackage_CreateBBufRepresentation()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (!v1)
  {
    datagramPackage_CreateBBufRepresentation_cold_2();
    return 0;
  }

  if (CMBlockBufferIsEmpty(v1))
  {
    datagramPackage_CreateBBufRepresentation_cold_1();
    return 0;
  }

  v2 = *(DerivedStorage + 8);

  return CFRetain(v2);
}

uint64_t APBrowserCreate(const __CFAllocator *a1, const __CFDictionary *a2, _DWORD *a3, void *a4)
{
  if (!a3)
  {
    APBrowserCreate_cold_26();
    DerivedStorage = 0;
LABEL_80:
    v56 = 4294960591;
    goto LABEL_74;
  }

  APBrowserGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v56 = v8;
    APBrowserCreate_cold_1();
    DerivedStorage = 0;
    goto LABEL_74;
  }

  v72 = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a3;
  v10 = dispatch_queue_create("APBrowserInternalQueue", 0);
  DerivedStorage[1] = v10;
  if (!v10)
  {
    APBrowserCreate_cold_25();
LABEL_85:
    v56 = 4294960568;
    goto LABEL_74;
  }

  v11 = dispatch_queue_create("APBrowserEventQueue", 0);
  DerivedStorage[2] = v11;
  if (!v11)
  {
    APBrowserCreate_cold_24();
    goto LABEL_85;
  }

  if (!a2)
  {
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
LABEL_14:
    v22 = 1;
    v23 = "AirPlay";
    v24 = kAPBonjourBrowserServiceType_AirPlay;
    v25 = @"AirPlayBonjourInfo";
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(a2, @"EventRecorder");
  if (!Value)
  {
    DerivedStorage[48] = 0;
    goto LABEL_11;
  }

  v17 = CFRetain(Value);
  DerivedStorage[48] = v17;
  if (v17)
  {
    v18 = CFGetTypeID(v17);
    if (v18 != APSEventRecorderGetTypeID())
    {
      APBrowserCreate_cold_2();
      goto LABEL_80;
    }
  }

LABEL_11:
  DerivedStorage[54] = mach_absolute_time();
  *(DerivedStorage + 264) = CFDictionaryGetInt64() != 0;
  v14 = CFDictionaryGetInt64() == 0;
  v13 = CFDictionaryGetInt64() == 0;
  v12 = CFDictionaryGetInt64() == 0;
  Int64 = CFDictionaryGetInt64();
  v20 = CFDictionaryGetValue(a2, @"BrokerManager");
  v21 = 0;
  if (v20)
  {
    v21 = CFRetain(v20);
  }

  DerivedStorage[43] = v21;
  v15 = CFDictionaryGetInt64() == 0;
  if (!Int64)
  {
    goto LABEL_14;
  }

  v22 = 0;
  v23 = "SidePlay";
  v24 = &kAPBonjourBrowserServiceType_SidePlay;
  v25 = @"SidePlayBonjourInfo";
LABEL_16:
  v26 = *v24;
  DerivedStorage[8] = v25;
  DerivedStorage[9] = v26;
  DerivedStorage[10] = v23;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APBrowserCreate_cold_23();
    goto LABEL_85;
  }

  v28 = Mutable;
  CFDictionarySetInt64();
  v29 = *MEMORY[0x277CBED28];
  v30 = v22;
  v31 = v15;
  v32 = v12;
  v33 = *MEMORY[0x277CBED10];
  if (v30)
  {
    v34 = *MEMORY[0x277CBED28];
  }

  else
  {
    v34 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v28, @"raopEnabled", v34);
  CFDictionarySetValue(v28, @"localEnabled", v34);
  if (v14)
  {
    v35 = v33;
  }

  else
  {
    v35 = v29;
  }

  CFDictionarySetValue(v28, @"partialAWDLAllowed", v35);
  if (*(DerivedStorage + 264))
  {
    v36 = v29;
  }

  else
  {
    v36 = v33;
  }

  CFDictionarySetValue(v28, @"fullAWDLAllowed", v36);
  if (v13)
  {
    v37 = v33;
  }

  else
  {
    v37 = v29;
  }

  CFDictionarySetValue(v28, @"openNANAllowed", v37);
  if (v32)
  {
    v38 = v33;
  }

  else
  {
    v38 = v29;
  }

  CFDictionarySetValue(v28, @"securePartialNANAllowed", v38);
  if (v31)
  {
    v39 = v33;
  }

  else
  {
    v39 = v29;
  }

  CFDictionarySetValue(v28, @"browseForAltReceiver", v39);
  CFDictionarySetValue(v28, @"enableCache", v34);
  v40 = APBonjourBrowserCreate(a1, v28, DerivedStorage + 11);
  if (v40)
  {
    v56 = v40;
    APBrowserCreate_cold_3();
  }

  else
  {
    v41 = APBonjourBrowserSetEventHandler(DerivedStorage[11], browser_handleBonjourEventExternal, 0);
    if (v41)
    {
      v56 = v41;
      APBrowserCreate_cold_4();
    }

    else
    {
      CFRetain(0);
      *(DerivedStorage + 244) = 0;
      if (v31)
      {
        v42 = 0;
        goto LABEL_41;
      }

      v43 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v43)
      {
        v42 = v43;
        CFDictionarySetValue(v43, @"BrowseForAltReceivers", v29);
LABEL_41:
        v44 = APBrowserBTLEManagerCreate(v42, DerivedStorage + 12);
        if (v44)
        {
          v56 = v44;
          APBrowserCreate_cold_6();
          goto LABEL_71;
        }

        v45 = APBrowserBTLEManagerSetEventHandler(DerivedStorage[12], browser_handleBTLEEventExternal, 0);
        if (v45)
        {
          v56 = v45;
          APBrowserCreate_cold_7();
          goto LABEL_71;
        }

        CFRetain(0);
        v46 = APBrowserDeviceQueryManagerGetInfoCreate(DerivedStorage + 13);
        if (v46)
        {
          v56 = v46;
          APBrowserCreate_cold_8();
          goto LABEL_71;
        }

        v47 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[14] = v47;
        if (!v47)
        {
          APBrowserCreate_cold_22();
          goto LABEL_55;
        }

        v48 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[19] = v48;
        if (!v48)
        {
          APBrowserCreate_cold_21();
          goto LABEL_55;
        }

        v49 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[20] = v49;
        if (!v49)
        {
          APBrowserCreate_cold_20();
          goto LABEL_55;
        }

        v50 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[21] = v50;
        if (!v50)
        {
          APBrowserCreate_cold_19();
          goto LABEL_55;
        }

        v51 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[22] = v51;
        if (!v51)
        {
          APBrowserCreate_cold_18();
          goto LABEL_55;
        }

        v52 = APBrowserRapportManagerCreate();
        if (v52)
        {
          v56 = v52;
          APBrowserCreate_cold_9();
          goto LABEL_71;
        }

        v53 = APBrowserRapportManagerSetEventHandler(DerivedStorage[18], browser_handleRapportEventExternal, 0);
        if (v53)
        {
          v56 = v53;
          APBrowserCreate_cold_10();
          goto LABEL_71;
        }

        CFRetain(0);
        v54 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[45] = v54;
        if (!v54)
        {
          APBrowserCreate_cold_17();
          goto LABEL_55;
        }

        SharedHelper = APConnectivityHelperGetSharedHelper();
        if (!SharedHelper)
        {
          DerivedStorage[23] = 0;
LABEL_54:
          APBrowserCreate_cold_16();
LABEL_55:
          v56 = 4294960568;
          goto LABEL_71;
        }

        v57 = CFRetain(SharedHelper);
        DerivedStorage[23] = v57;
        if (!v57)
        {
          goto LABEL_54;
        }

        v58 = APConnectivityHelperRegisterEventHandler(v57, 0, browser_handleConnectivityHelperEventExternal);
        if (v58)
        {
          v56 = v58;
          APBrowserCreate_cold_11();
          goto LABEL_71;
        }

        v59 = objc_opt_new();
        DerivedStorage[25] = v59;
        if (!v59)
        {
          APBrowserCreate_cold_15();
          goto LABEL_55;
        }

        [v59 setDispatchQueue:DerivedStorage[1]];
        [DerivedStorage[25] activateWithCompletion:0];
        v60 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[26] = v60;
        if (!v60)
        {
          APBrowserCreate_cold_14();
          goto LABEL_55;
        }

        v61 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[27] = v61;
        if (!v61)
        {
          APBrowserCreate_cold_13();
          goto LABEL_55;
        }

        if (IsAppleInternalBuild())
        {
          v62 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          DerivedStorage[29] = v62;
          if (!v62)
          {
            APBrowserCreate_cold_12();
            goto LABEL_55;
          }
        }

        v63 = **DerivedStorage;
        if (v63 <= 50)
        {
          if (v63 != -1)
          {
LABEL_67:
            v70 = DerivedStorage[9];
            v71 = DerivedStorage[11];
            LogPrintF();
            goto LABEL_68;
          }

          if (_LogCategory_Initialize())
          {
            v64 = *DerivedStorage;
            goto LABEL_67;
          }
        }

LABEL_68:
        browser_sendPowerLogDiscoveryModeEvent();
        v69 = *(*DerivedStorage + 3);
        v65 = CFStringCreateF();
        DerivedStorage[7] = v65;
        if (v65)
        {
          FigInstallSysdiagnoseBlock();
        }

        v56 = 0;
        *v72 = 0;
LABEL_71:
        if (v42)
        {
          CFRelease(v42);
        }

        CFRelease(v28);
        if (!v56)
        {
          return v56;
        }

        goto LABEL_74;
      }

      APBrowserCreate_cold_5();
      v56 = 4294960568;
    }
  }

  CFRelease(v28);
LABEL_74:
  v66 = **DerivedStorage;
  if (v66 <= 90)
  {
    if (v66 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v56;
      }

      v68 = *DerivedStorage;
    }

    LogPrintF();
  }

  return v56;
}

void browser_handleConnectivityHelperEventExternal(uint64_t a1, int a2, const void *a3, const void *a4)
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
  block[2] = __browser_handleConnectivityHelperEventExternal_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v10 = a2;
  block[4] = a4;
  block[5] = a3;
  dispatch_async(v8, block);
}

void __APBrowserCreate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **v2;
  if (v3 <= 50)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v6 = *v2;
    }

    v7 = *(a1 + 40);
    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  v5 = *(v2 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserCreate_block_invoke_2;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = *(a1 + 40);
  block[5] = v2;
  dispatch_sync(v5, block);
}

uint64_t __APBrowserCreate_block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __APBrowserCreate_block_invoke_3;
  v3[3] = &__block_descriptor_40_e9_i16__0r_8l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return browser_dumpLifetimeMetrics(v1, v3);
}

uint64_t browser_dumpLifetimeMetrics(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  v5 = mach_absolute_time();
  result = CMBaseObjectGetDerivedStorage();
  v7 = (result + 400);
  if (v4)
  {
    v7 = 0;
  }

  if (v4 == 1)
  {
    v7 = (result + 408);
  }

  if (v4 == 2)
  {
    v7 = (result + 416);
  }

  if (v4 == 3)
  {
    v7 = (result + 424);
  }

  *v7 += v5 - *(result + 432);
  *(result + 432) = v5;
  if (a2)
  {
    v8 = *(DerivedStorage + 400);
    v9 = UpTicksToSeconds();
    (*(a2 + 16))(a2, "%-34s %3lluh %02llum %02llus\n", "Time spent in None mode:", v9 / 0xE10, v9 % 0xE10 / 0x3C, v9 % 0x3C);
    v10 = *(DerivedStorage + 408);
    v11 = UpTicksToSeconds();
    (*(a2 + 16))(a2, "%-34s %3lluh %02llum %02llus\n", "Time spent in Presence mode:", v11 / 0xE10, v11 % 0xE10 / 0x3C, v11 % 0x3C);
    v12 = *(DerivedStorage + 416);
    v13 = UpTicksToSeconds();
    (*(a2 + 16))(a2, "%-34s %3lluh %02llum %02llus\n", "Time spent in DetailedNonP2P mode:", v13 / 0xE10, v13 % 0xE10 / 0x3C, v13 % 0x3C);
    v14 = *(DerivedStorage + 424);
    v15 = UpTicksToSeconds();
    (*(a2 + 16))(a2, "%-34s %3lluh %02llum %02llus\n", "Time spent in Detailed mode:", v15 / 0xE10, v15 % 0xE10 / 0x3C, v15 % 0x3C);
    return (*(a2 + 16))(a2, "Discovery mode increase transitions: %u\n", *(DerivedStorage + 392));
  }

  return result;
}

uint64_t __APBrowserCreate_block_invoke_3(uint64_t a1)
{
  v2 = ***(a1 + 32);
  if (v2 <= 50)
  {
    if (v2 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return 0;
      }

      v4 = **(a1 + 32);
    }

    LogPrintV();
  }

  return 0;
}

uint64_t APBrowserTickleDetailedMode()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = APSDispatchSyncTask();
  if (v1)
  {
    APBrowserTickleDetailedMode_cold_1();
  }

  return v1;
}

uint64_t APBrowserDiscoverAndInjectDevice(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APBrowserDiscoverAndInjectDevice_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v5, block);
    return 0;
  }

  else
  {
    APBrowserDiscoverAndInjectDevice_cold_1();
    return 4294960591;
  }
}

uint64_t __APBrowserDiscoverAndInjectDevice_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **v2;
  if (v3 > 30)
  {
    goto LABEL_5;
  }

  if (v3 != -1)
  {
    goto LABEL_3;
  }

  v4 = _LogCategory_Initialize();
  v2 = *(a1 + 32);
  if (v4)
  {
    v9 = *v2;
LABEL_3:
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  v5 = *(v2 + 224);
  if (v5)
  {
    [v5 stopBrowsing];
  }

  else
  {
    v6 = objc_opt_new();
    v7 = *(a1 + 32);
    *(v7 + 224) = v6;
    [v6 setDispatchQueue:*(v7 + 8)];
  }

  CFRetain(*(a1 + 40));
  CFRetain(*(a1 + 48));
  v12 = *(a1 + 48);
  return [*(*(a1 + 32) + 224) startBrowsingFor:30.0 withTimeout:? deviceFoundHandler:?];
}

void __APBrowserDiscoverAndInjectDevice_block_invoke_2(uint64_t a1, const void *a2)
{
  v4 = NSErrorToOSStatus();
  cf = 0;
  value = 0;
  v5 = ***(a1 + 32);
  if (!v4)
  {
    if (v5 > 50)
    {
      goto LABEL_10;
    }

    if (v5 == -1)
    {
      v7 = **(a1 + 32);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v5 = ***(a1 + 32);
    }

    v6 = *(a1 + 40);
    if (v5 == -1)
    {
      _LogCategory_Initialize();
    }

    v18 = *(a1 + 48);
    LogPrintF();
LABEL_10:
    v8 = *MEMORY[0x277CBECE8];
    if (APBrowserCreateAdvertiserInfoForDevice(*MEMORY[0x277CBECE8], a2, 0, 0, &cf))
    {
      __APBrowserDiscoverAndInjectDevice_block_invoke_2_cold_1();
    }

    else if (APBrowserCopyDeviceIDFromBonjourInfo(v8, a2, &value))
    {
      __APBrowserDiscoverAndInjectDevice_block_invoke_2_cold_2();
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v8, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v10 = Mutable;
        CFDictionarySetValue(Mutable, @"deviceID", value);
        CFDictionarySetValue(v10, @"deviceInfo", cf);
        CFDictionarySetValue(v10, @"assistedInfo", *(a1 + 48));
        CFDictionarySetValue(v10, @"isModernPresent", *MEMORY[0x277CBED28]);
        v11 = CFDictionaryCreateMutable(v8, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v11)
        {
          __APBrowserDiscoverAndInjectDevice_block_invoke_2_cold_4();
LABEL_21:
          CFRelease(v10);
          goto LABEL_22;
        }

        v12 = v11;
        CFDictionarySetValue(v11, @"AirPlayBonjourInfo", a2);
        CFDictionarySetValue(v12, @"LastEventInfo", v10);
        CFDictionarySetValue(*(*(a1 + 32) + 216), value, v12);
        v13 = ***(a1 + 32);
        if (v13 <= 50)
        {
          if (v13 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_18;
            }

            v16 = **(a1 + 32);
          }

          v17 = *(a1 + 40);
          LogPrintF();
        }

LABEL_18:
        if (browser_dispatchEvent(*(a1 + 40), 3, v10))
        {
          __APBrowserDiscoverAndInjectDevice_block_invoke_2_cold_3();
        }

        CFRelease(v12);
        goto LABEL_21;
      }

      __APBrowserDiscoverAndInjectDevice_block_invoke_2_cold_5();
    }

    goto LABEL_22;
  }

  if (v5 > 90)
  {
    goto LABEL_22;
  }

  if (v5 == -1)
  {
    v15 = **(a1 + 32);
    if (!_LogCategory_Initialize())
    {
      goto LABEL_22;
    }

    v5 = ***(a1 + 32);
  }

  v14 = *(a1 + 40);
  if (v5 == -1)
  {
    _LogCategory_Initialize();
  }

  v19 = *(a1 + 48);
  LogPrintF();
LABEL_22:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

uint64_t APBrowserRemoveInjectedDevice(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APBrowserRemoveInjectedDevice_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a1;
    dispatch_sync(v5, block);
    return 0;
  }

  else
  {
    APBrowserRemoveInjectedDevice_cold_1();
    return 4294960591;
  }
}

uint64_t __APBrowserRemoveInjectedDevice_block_invoke(uint64_t a1)
{
  result = CFDictionaryContainsKey(*(*(a1 + 32) + 216), *(a1 + 40));
  if (result)
  {
    CFDictionaryRemoveValue(*(*(a1 + 32) + 216), *(a1 + 40));
    result = **(a1 + 32);
    if (*result <= 50)
    {
      if (*result != -1)
      {
LABEL_4:
        v4 = *(a1 + 48);
        v5 = *(a1 + 40);
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        v3 = **(a1 + 32);
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t browser_Invalidate()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = APSDispatchSyncTask();
  if (v1)
  {
    browser_Invalidate_cold_1();
  }

  return v1;
}

void browser_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 40) = 0;
  }

  v2 = *(DerivedStorage + 88);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 88) = 0;
  }

  *(DerivedStorage + 224) = 0;
  v3 = *(DerivedStorage + 384);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 384) = 0;
  }

  v4 = *(DerivedStorage + 96);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 96) = 0;
  }

  v5 = *(DerivedStorage + 104);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 104) = 0;
  }

  v6 = *(DerivedStorage + 112);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 112) = 0;
  }

  v7 = *(DerivedStorage + 144);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 144) = 0;
  }

  v8 = *(DerivedStorage + 152);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 152) = 0;
  }

  v9 = *(DerivedStorage + 160);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 160) = 0;
  }

  v10 = *(DerivedStorage + 168);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 168) = 0;
  }

  v11 = *(DerivedStorage + 176);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 176) = 0;
  }

  v12 = *(DerivedStorage + 344);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 344) = 0;
  }

  v13 = *(DerivedStorage + 360);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 360) = 0;
  }

  v14 = *(DerivedStorage + 184);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 184) = 0;
  }

  v15 = *(DerivedStorage + 32);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 32) = 0;
  }

  *(DerivedStorage + 200) = 0;
  v16 = *(DerivedStorage + 208);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 208) = 0;
  }

  v17 = *(DerivedStorage + 216);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 216) = 0;
  }

  v18 = *(DerivedStorage + 232);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 232) = 0;
  }

  v19 = *(DerivedStorage + 56);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 56) = 0;
  }

  v20 = *(DerivedStorage + 8);
  if (v20)
  {
    dispatch_release(v20);
    *(DerivedStorage + 8) = 0;
  }

  v21 = *(DerivedStorage + 16);
  if (v21)
  {
    dispatch_release(v21);
    *(DerivedStorage + 16) = 0;
  }

  v22 = *(DerivedStorage + 368);
  if (v22)
  {

    *(DerivedStorage + 368) = 0;
  }
}

CFTypeRef browser_CopyDescription()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (!APSDispatchSyncTask())
  {
    return 0;
  }

  APSLogErrorAt();
  return CFRetain(@"Description not available");
}

uint64_t browser_CopyProperty()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = FigDispatchSyncCopyPropertyImplementation();
  if (v1)
  {
    browser_CopyProperty_cold_1();
  }

  return v1;
}

uint64_t browser_copyDescription(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = CFGetAllocator(*a1);

  return browser_copyDescriptionInternal(v1, v4, v2, v3);
}

uint64_t browser_copyDescriptionInternal(uint64_t a1, const __CFAllocator *a2, unsigned int a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  Mutable = CFStringCreateMutable(a2, 0);
  v31[3] = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"+-+ APBrowser state +-+\n");
    CFStringAppend(v31[3], @"\n");
    v10 = v31[3];
    StringForMode = browser_getStringForMode(*(DerivedStorage + 24), *DerivedStorage);
    CFStringAppendFormat(v10, 0, @"mode=%s", StringForMode);
    if (*(DerivedStorage + 32))
    {
      CFStringAppendFormat(v31[3], 0, @" (%@)", *(DerivedStorage + 32));
    }

    if (*(DerivedStorage + 130))
    {
      if (*(DerivedStorage + 129))
      {
        v12 = "yes";
      }

      else
      {
        v12 = "no";
      }
    }

    else
    {
      v12 = "<not queried, assuming no>";
    }

    if (*(DerivedStorage + 192))
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (*(DerivedStorage + 193))
    {
      v14 = "yes";
    }

    else
    {
      v14 = "no";
    }

    if (*(DerivedStorage + 198))
    {
      v15 = "yes";
    }

    else
    {
      v15 = "no";
    }

    if (*(DerivedStorage + 244))
    {
      v16 = "yes";
    }

    else
    {
      v16 = "no";
    }

    CFStringAppendFormat(v31[3], 0, @" soloSupported=%s wifiSystemReady=%s awdlSystemReady=%s wifiPowered=%s avDevicePresent=%s", v12, v13, v14, v15, v16);
    if (*(DerivedStorage + 245))
    {
      v17 = "yes";
    }

    else
    {
      v17 = "no";
    }

    CFStringAppendFormat(v31[3], 0, @" invalidated=%s\n", v17);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __browser_copyDescriptionInternal_block_invoke;
    v27[3] = &unk_278BCA128;
    v27[4] = &v30;
    browser_dumpLifetimeMetrics(a1, v27);
    if (CFDictionaryGetCount(*(DerivedStorage + 216)))
    {
      context[0] = v31 + 3;
      context[1] = a1;
      context[2] = a2;
      v26 = a3;
      v18 = *(DerivedStorage + 72);
      HIDWORD(v26) = FigCFEqual();
      CFStringAppend(v31[3], @"\n");
      CFStringAppend(v31[3], @"Nearby devices:\n");
      CFDictionaryApplyFunction(*(DerivedStorage + 216), browser_copyDescriptionForDevice, context);
    }

    if (CFDictionaryGetCount(*(DerivedStorage + 112)))
    {
      CFStringAppend(v31[3], @"\n");
      CFStringAppend(v31[3], @"BTLE devices:\n");
      v19 = *(DerivedStorage + 112);
      CFDictionaryApplyBlock();
    }

    v20 = APBrowserBTLEManagerCopyShowInfo(*(DerivedStorage + 96), a3, &v29);
    if (v20)
    {
      goto LABEL_41;
    }

    CFStringAppend(v31[3], @"\n");
    CFStringAppendFormat(v31[3], 0, @"%@", v29);
    if (CFDictionaryGetCount(*(DerivedStorage + 152)))
    {
      CFStringAppend(v31[3], @"\n");
      CFStringAppend(v31[3], @"Rapport devices:\n");
      v21 = *(DerivedStorage + 152);
      CFDictionaryApplyBlock();
    }

    v20 = APBrowserRapportManagerCopyShowInfo(*(DerivedStorage + 144), a3, &v28);
    if (v20)
    {
LABEL_41:
      APSLogErrorAt();
    }

    else
    {
      CFStringAppend(v31[3], @"\n");
      CFStringAppendFormat(v31[3], 0, @"%@", v28);
      v20 = 0;
      v22 = v31;
      *a4 = v31[3];
      v22[3] = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v20 = 4294960568;
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  v23 = v31[3];
  if (v23)
  {
    CFRelease(v23);
  }

  _Block_object_dispose(&v30, 8);
  return v20;
}

uint64_t __browser_copyDescriptionInternal_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  v2 = CFStringAppendV();
  if (v2)
  {
    __browser_copyDescriptionInternal_block_invoke_cold_1();
  }

  return v2;
}

void browser_copyDescriptionForDevice(const void *a1, const __CFDictionary *a2, CFMutableStringRef **a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3[1];
  CMBaseObjectGetDerivedStorage();
  v46 = 0;
  v47 = 0;
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
  v51 = 0u;
  v52 = 0u;
  *buffer = 0u;
  v50 = 0u;
  v7 = *a3;
  v8 = *(a3 + 6);
  v9 = **a3;
  CFStringAppendF();
  if (*(a3 + 28))
  {
    Value = CFDictionaryGetValue(a2, @"SidePlayBonjourInfo");
    Transports = APBrowserGetTransports(Value, 0, &v47);
    v11 = "W";
    if ((v47 & 2) == 0)
    {
      v11 = "w";
    }

    if (v47)
    {
      v12 = "E";
    }

    else
    {
      v12 = "e";
    }

    CFStringAppendFormat(*v7, 0, @" _sideplay=%s%s", v11, v12);
  }

  else
  {
    v45 = v8;
    v47 = 0;
    v13 = CFDictionaryGetValue(a2, @"AirPlayBonjourInfo");
    v14 = v13;
    if (v13)
    {
      v44 = CFDictionaryGetValue(v13, @"cached");
    }

    else
    {
      v44 = *MEMORY[0x277CBED10];
    }

    APBrowserGetTransports(v14, 0, &v47);
    v46 = 0;
    v15 = CFDictionaryGetValue(a2, @"AirPlayNANFullBonjourInfo");
    APBrowserGetTransports(v15, 0, &v46);
    v16 = "w";
    if ((v47 & 2) != 0)
    {
      v16 = "W";
    }

    v17 = "a";
    if ((v47 & 4) != 0)
    {
      v17 = "A";
    }

    if ((v46 & 0x80) != 0)
    {
      v18 = "N";
    }

    else
    {
      v18 = "n";
    }

    v19 = "u";
    if ((v47 & 8) != 0)
    {
      v19 = "U";
    }

    v20 = "E";
    if ((v47 & 1) == 0)
    {
      v20 = "e";
    }

    if ((v47 & 0x10) != 0)
    {
      v21 = "D";
    }

    else
    {
      v21 = "d";
    }

    CFStringAppendFormat(*v7, 0, @" _airplay=%s%s%s%s%s%s", v16, v17, v18, v19, v20, v21);
    if ((v47 & 0x20) != 0)
    {
      v22 = "B";
    }

    else
    {
      v22 = "b";
    }

    CFStringAppendFormat(*v7, 0, @"%s", v22);
    DeviceRelationship = browser_getDeviceRelationship(a3[1], a1, 0);
    CFStringAppendFormat(*v7, 0, @"%s", off_278BCA3D8[DeviceRelationship]);
    v47 = 0;
    v24 = CFDictionaryGetValue(a2, @"RAOPBonjourInfo");
    APBrowserGetTransports(v24, 0, &v47);
    v25 = "w";
    if ((v47 & 2) != 0)
    {
      v25 = "W";
    }

    if ((v47 & 4) != 0)
    {
      v26 = "A";
    }

    else
    {
      v26 = "a";
    }

    v27 = "u";
    if ((v47 & 8) != 0)
    {
      v27 = "U";
    }

    v28 = "E";
    if ((v47 & 1) == 0)
    {
      v28 = "e";
    }

    if ((v47 & 0x10) != 0)
    {
      v29 = "D";
    }

    else
    {
      v29 = "d";
    }

    CFStringAppendFormat(*v7, 0, @" _raop=%s%s%s%s%s", v25, v26, v27, v28, v29);
    if ((v47 & 0x20) != 0)
    {
      v30 = "B";
    }

    else
    {
      v30 = "b";
    }

    CFStringAppendFormat(*v7, 0, @"%s", v30);
    v47 = 0;
    v31 = CFDictionaryGetValue(a2, @"AirPlayP2PBonjourInfo");
    APBrowserGetTransports(v31, 0, &v47);
    v46 = 0;
    v32 = CFDictionaryGetValue(a2, @"AirPlayNANPartialBonjourInfo");
    Transports = APBrowserGetTransports(v32, 0, &v46);
    if ((v47 & 4) != 0)
    {
      v33 = "A";
    }

    else
    {
      v33 = "a";
    }

    v34 = "n";
    if ((v46 & 0x80) != 0)
    {
      v34 = "N";
    }

    if ((v47 & 0x80) != 0)
    {
      v35 = "S";
    }

    else
    {
      v35 = "s";
    }

    CFStringAppendFormat(*v7, 0, @" _airplay-p2p=%s%s%s", v33, v34, v35);
    if (v44 == *MEMORY[0x277CBED28])
    {
      v36 = "Y";
    }

    else
    {
      v36 = "N";
    }

    CFStringAppendFormat(*v7, 0, @" cached=%s", v36);
    v8 = v45;
  }

  FigCFDictionaryGetValue();
  v37 = FigCFDictionaryGetValue();
  v38 = "yes";
  if (!v37)
  {
    v38 = "no";
  }

  CFStringAppendFormat(*v7, 0, @"    AdvertiserInfo:%-3s", v38);
  v39 = *v7;
  CFDictionaryGetValue(a2, @"DispatchTimeStamp");
  CFStringAppendF();
  if (v37)
  {
    v40 = APAdvertiserInfoCopyProperty(v37, 0, @"deviceName", 0, &Transports);
    if (!Transports)
    {
      v41 = v40;
      CFStringGetCString(v40, buffer, 256, 0x8000100u);
      if (v41)
      {
        CFRelease(v41);
      }
    }
  }

  v42 = *v7;
  CFStringAppendF();
  CFStringAppend(*v7, @"\n");
  if (v8)
  {
    CFStringAppendFormat(*v7, 0, @"        AdvertiserInfo=%@\n", v37);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __browser_copyDescriptionInternal_block_invoke_2(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *buffer = 0u;
  v17 = 0u;
  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"    DeviceID:%@", a2);
  Value = CFDictionaryGetValue(a3, @"IPAddress");
  CFStringGetCString(Value, buffer, 256, 0x8000100u);
  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @" IP=%-45s", buffer);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = CFDictionaryGetValue(a3, @"port");
  v8 = CFDictionaryGetValue(a3, @"supportsSolo");
  CFStringAppendFormat(v6, 0, @" port=%-5@ supportsSolo=%@", v7, v8);
  v9 = CFDictionaryGetValue(a3, @"deviceName");
  buffer[0] = 0;
  if (v9)
  {
    v10 = buffer;
    CFStringGetCString(v9, buffer, 256, 0x8000100u);
  }

  else
  {
    v10 = "N/A";
  }

  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @" name: %-15s", v10);
  v11 = CFDictionaryGetValue(a3, @"bonjourDeviceID");
  v12 = @"N/A";
  if (v11)
  {
    v12 = v11;
  }

  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @" bonjourID: %@", v12);
  if (!v11)
  {
    v13 = CFDictionaryGetValue(a3, @"connectionError");
    v14 = @"Pending";
    if (v13)
    {
      v14 = v13;
    }

    CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @" (%@)", v14);
  }

  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"\n");
  v15 = *MEMORY[0x277D85DE8];
}

void __browser_copyDescriptionInternal_block_invoke_3(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"rapportBonjourCorrelationID");
  Int64 = CFDictionaryGetInt64();
  v7 = "SystemPairingID";
  if (Int64 == 1)
  {
    v7 = "BonjourDeviceID";
  }

  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"    RapportDeviceID:%@ %s: %@\n", a2, v7, Value);
}

uint64_t browser_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    browser_copyPropertyInternal_cold_4();
    return 4294960591;
  }

  if (!CFEqual(a2, @"showInfo"))
  {
    v10 = 0;
    v12 = 4294954512;
    goto LABEL_10;
  }

  CMBaseObjectGetDerivedStorage();
  value = 0;
  v8 = browser_copyDescriptionInternal(a1, a3, 0, &value);
  if (v8)
  {
    v12 = v8;
    browser_copyPropertyInternal_cold_1();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a3, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      v11 = value;
      CFDictionaryAddValue(Mutable, @"detailedDescription", value);
      v12 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    browser_copyPropertyInternal_cold_2();
    v12 = 4294960568;
  }

  v10 = 0;
  v11 = value;
  if (value)
  {
LABEL_6:
    CFRelease(v11);
  }

LABEL_7:
  if (!v12)
  {
LABEL_10:
    *a4 = v10;
    return v12;
  }

  browser_copyPropertyInternal_cold_3();
  return v12;
}

uint64_t browser_GetMode()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = APSDispatchSyncTask();
  if (v1)
  {
    browser_GetMode_cold_1();
  }

  return v1;
}

uint64_t browser_SetEventHandler()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = APSDispatchSyncTask();
  if (v1)
  {
    browser_SetEventHandler_cold_1();
  }

  return v1;
}

uint64_t browser_StartTrackingDevice()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = APSDispatchSyncTask();
  if (v1)
  {
    browser_StartTrackingDevice_cold_1();
  }

  return v1;
}

uint64_t browser_StopTrackingDevice()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = APSDispatchSyncTask();
  if (v1)
  {
    browser_StopTrackingDevice_cold_1();
  }

  return v1;
}

uint64_t browser_ReconfirmDevice()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = APSDispatchSyncTask();
  if (v1)
  {
    browser_ReconfirmDevice_cold_1();
  }

  return v1;
}

uint64_t browser_TriggerWoLCachingIfNeeded(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v6 = *(DerivedStorage + 8);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t browser_CopyNANEndpointForDeviceID(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __browser_CopyNANEndpointForDeviceID_block_invoke;
  block[3] = &unk_278BCA288;
  block[4] = &v16;
  block[5] = a1;
  v14 = a3;
  v15 = a4;
  block[6] = a2;
  block[7] = a5;
  dispatch_sync(v10, block);
  v11 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v11;
}

void sub_23D31B238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void browser_ResolveAddress(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *(CMBaseObjectGetDerivedStorage() + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __browser_ResolveAddress_block_invoke;
  v13[3] = &unk_278BCA2B0;
  v13[6] = a2;
  v13[7] = a3;
  v14 = a4;
  v13[8] = a5;
  v13[4] = a6;
  v13[5] = a1;
  dispatch_sync(v12, v13);
}

uint64_t browser_CopyBrokerInfoForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __browser_CopyBrokerInfoForDeviceID_block_invoke;
  block[3] = &unk_278BCA300;
  block[4] = &v16;
  block[5] = a1;
  block[6] = a2;
  block[7] = a3;
  block[8] = a4;
  block[9] = a5;
  block[10] = a6;
  dispatch_sync(v12, block);
  v13 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_23D31B3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __browser_updateDetailedDiscoveryThresholdTimer_block_invoke_2(uint64_t a1)
{
  v2 = ***(a1 + 32);
  if (v2 <= 30)
  {
    if (v2 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v4 = **(a1 + 32);
      goto LABEL_3;
    }
  }

LABEL_5:
  v3 = *(a1 + 40);

  CFRelease(v3);
}

void browser_ensureDetailedForeverTimerStopped()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 376);
  if (v1)
  {
    v2 = DerivedStorage;
    dispatch_source_cancel(*(DerivedStorage + 376));
    dispatch_release(v1);
    *(v2 + 376) = 0;
  }
}

void browser_batchAndSendDiscoveredDeviceRTCMetrics()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[48];
  v2 = *(DerivedStorage + 111);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (!CFDictionaryGetCount(DerivedStorage[27]))
  {
    goto LABEL_22;
  }

  EventTimeRecursive = APSEventRecorderGetEventTimeRecursive();
  v4 = **DerivedStorage;
  if (EventTimeRecursive)
  {
    if (v4 > 50)
    {
      goto LABEL_22;
    }

    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v19 = *DerivedStorage;
    }

    LogPrintF();
    goto LABEL_22;
  }

  if (v4 <= 50)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v20 = *DerivedStorage;
    }

    LogPrintF();
  }

LABEL_7:
  if (!APSRTCReportingAgentCreate() && (v5 = *MEMORY[0x277CBECE8], Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v26[3] = Mutable) != 0) && (v7 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v22[3] = v7) != 0))
  {
    v8 = DerivedStorage[27];
    CFDictionaryApplyBlock();
    v9 = v26[3];
    FigCFDictionaryApplyBlock();
    v10 = v22[3];
    APSVersionUtilsGetShortVersionLength();
    CFDictionarySetCString();
    v11 = v22[3];
    CFDictionarySetInt64();
    if (v2)
    {
      CFDictionarySetValue(v22[3], @"userActivationSeen", *MEMORY[0x277CBED28]);
    }

    if ((v2 & 2) != 0)
    {
      CFDictionarySetValue(v22[3], @"backgroundActivationSeen", *MEMORY[0x277CBED28]);
    }

    v12 = v22[3];
    APSRTCReportingAgentSendEvent();
    v13 = **DerivedStorage;
    if (v13 <= 50)
    {
      if (v13 != -1 || (v15 = _LogCategory_Initialize(), v14 = *DerivedStorage, v15))
      {
        LogPrintF();
        v14 = *DerivedStorage;
      }

      if (*v14 <= 15 && (*v14 != -1 || _LogCategory_Initialize()))
      {
        v16 = v22[3];
        CFDictionaryApplyBlock();
      }
    }
  }

  else
  {
    APSLogErrorAt();
  }

LABEL_22:
  v17 = v26[3];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = v22[3];
  if (v18)
  {
    CFRelease(v18);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void sub_23D31B92C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void browser_ensureDiscoverySessionThresholdTimerStopped()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = **DerivedStorage;
  if (v1 > 50)
  {
    goto LABEL_5;
  }

  if (v1 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize())
  {
    v3 = *DerivedStorage;
LABEL_3:
    LogPrintF();
  }

LABEL_5:
  v2 = *(DerivedStorage + 448);
  if (v2)
  {
    dispatch_source_cancel(*(DerivedStorage + 448));
    dispatch_release(v2);
    *(DerivedStorage + 448) = 0;
  }
}

void __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v32 = 0;
  if (!browser_copyDeviceEventRecorder(a3, a2, &v32))
  {
    Value = CFDictionaryGetValue(a3, @"LastEventInfo");
    if (Value && (v6 = CFDictionaryGetValue(Value, @"deviceInfo")) != 0)
    {
      v7 = APAdvertiserInfoCopyProperty(v6, 0, @"deviceModel", 0, 0);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0;
    v29 = 0;
    v9 = v32;
    while (1)
    {
      v31 = 0;
      APBrowserGetStartEventForBrowserDeviceEvent(*(a1 + 48), v9, v8 + 268374016);
      if (v8 >= 0x13)
      {
        goto LABEL_28;
      }

      v10 = *(&off_278BCA340 + v8);
      if (!APSEventRecorderGetEventTimeRecursive())
      {
        goto LABEL_28;
      }

      v11 = *(a1 + 48);
      TimeBetweenEventsInMilliSecondRecursive = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx();
      v31 = TimeBetweenEventsInMilliSecondRecursive;
      if (TimeBetweenEventsInMilliSecondRecursive)
      {
        if (!v29)
        {
          v20 = TimeBetweenEventsInMilliSecondRecursive;
          v21 = ***(a1 + 56);
          if (v21 <= 90)
          {
            if (v21 != -1)
            {
              goto LABEL_37;
            }

            if (_LogCategory_Initialize())
            {
              v23 = **(a1 + 56);
              v20 = v31;
LABEL_37:
              v25 = v10;
              v26 = v20;
              v24 = a2;
              LogPrintF();
            }
          }
        }

        v29 = 1;
        goto LABEL_28;
      }

      if (!browser_ensureAndGetMutableArrayFromCFDictionary(*(*(*(a1 + 32) + 8) + 24), v10, &v31))
      {
        __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_5();
        goto LABEL_28;
      }

      FigCFArrayAppendInt64();
      v13 = ***(a1 + 56);
      if (v13 <= 15)
      {
        if (v13 != -1)
        {
          goto LABEL_13;
        }

        if (_LogCategory_Initialize())
        {
          break;
        }
      }

LABEL_15:
      if (!v8)
      {
        if (!v7)
        {
          goto LABEL_25;
        }

        v14 = *(*(*(a1 + 32) + 8) + 24);
        v33 = 0;
        if (v14)
        {
          GestaltProductTypeStringToDeviceClass();
          v15 = CUGestaltDeviceClassToString();
          if ([(__CFString *)v15 isEqualToString:@"?"])
          {
            v15 = @"AirPort";
            if (!CFStringHasPrefix(v7, @"AirPort"))
            {
              v15 = @"3rdParty";
            }
          }

          CFStringReplacingSuffix = browser_createCFStringReplacingSuffix(v10, [(__CFString *)v15 stringByAppendingString:@"Ms", v24, v25, v26, v27, v28]);
          if (!CFStringReplacingSuffix)
          {
            APSLogErrorAt();
            v31 = 0;
LABEL_25:
            if (*(*(*(a1 + 40) + 8) + 24))
            {
              v18 = browser_createCFStringReplacingSuffix(v10, @"Bucket1");
              if (v18)
              {
                v19 = v18;
                CFDictionaryGetInt64();
                FigCFDictionarySetInt64();
                CFRelease(v19);
              }

              else
              {
                __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_3();
              }
            }

            else
            {
              __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_4();
            }

            goto LABEL_28;
          }

          v17 = CFStringReplacingSuffix;
          if (browser_ensureAndGetMutableArrayFromCFDictionary(v14, CFStringReplacingSuffix, &v33))
          {
            CFArrayAppendInt64();
          }

          else
          {
            __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_1();
          }

          CFRelease(v17);
          v31 = v33;
          if (!v33)
          {
            goto LABEL_25;
          }
        }

        else
        {
          APSLogErrorAt();
          v31 = -6705;
        }

        __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_2();
      }

LABEL_28:
      if (++v8 == 19)
      {
        goto LABEL_46;
      }
    }

    v22 = **(a1 + 56);
LABEL_13:
    v27 = v10;
    v28 = 0;
    v25 = a2;
    v26 = v8 + 268374016;
    v24 = *(a1 + 64);
    LogPrintF();
    goto LABEL_15;
  }

  APSLogErrorAt();
  v7 = 0;
  v9 = v32;
LABEL_46:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

CFMutableArrayRef browser_ensureAndGetMutableArrayFromCFDictionary(const __CFDictionary *a1, const void *a2, int *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v7 = Value;
    v8 = 0;
    Mutable = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    CFDictionaryAddValue(a1, a2, Mutable);
    v8 = 0;
    v7 = Mutable;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  browser_ensureAndGetMutableArrayFromCFDictionary_cold_1();
  v7 = 0;
  v8 = -6728;
  if (a3)
  {
LABEL_6:
    *a3 = v8;
  }

LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

void __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2(uint64_t a1, const __CFString *a2, CFArrayRef theArray)
{
  if (a2)
  {
    if (theArray)
    {
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          v13.length = Count;
          v13.location = 0;
          CFArraySortValues(theArray, v13, MEMORY[0x277CBE548], 0);
          CFStringReplacingSuffix = browser_createCFStringReplacingSuffix(a2, @"P95Ms");
          if (CFStringReplacingSuffix)
          {
            v7 = CFStringReplacingSuffix;
            v8 = browser_createCFStringReplacingSuffix(a2, @"MedianMs");
            if (v8)
            {
              v9 = v8;
              v10 = CFArrayGetCount(theArray);
              if (v10)
              {
                v11 = (v10 - 1) * 0.95;
                if (vcvtps_s32_f32(v11) != vcvtms_s32_f32(v11))
                {
                  FigCFArrayGetInt64AtIndex();
                }

                FigCFArrayGetInt64AtIndex();
              }

              else
              {
                __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_1();
              }

              v12 = CFArrayGetCount(theArray);
              if (v12)
              {
                if ((v12 & 1) == 0)
                {
                  FigCFArrayGetInt64AtIndex();
                }

                FigCFArrayGetInt64AtIndex();
              }

              else
              {
                __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_2();
              }

              FigCFDictionarySetInt64();
              FigCFDictionarySetInt64();
              CFRelease(v9);
            }

            else
            {
              __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_3();
            }

            CFRelease(v7);
          }

          else
          {
            __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_4();
          }
        }

        else
        {
          __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_5();
        }
      }

      else
      {
        __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_6();
      }
    }

    else
    {
      __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_7();
    }
  }

  else
  {
    __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_8();
  }
}

int *__browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_3(uint64_t a1)
{
  result = **(a1 + 32);
  if (*result <= 15)
  {
    if (*result != -1)
    {
LABEL_3:
      v4 = *(a1 + 40);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = **(a1 + 32);
      goto LABEL_3;
    }
  }

  return result;
}

__CFString *browser_createCFStringReplacingSuffix(const __CFString *a1, const __CFString *a2)
{
  if (!CFStringHasSuffix(a1, @"Ms"))
  {
    browser_createCFStringReplacingSuffix_cold_3();
    return 0;
  }

  Length = CFStringGetLength(a1);
  v5 = Length - CFStringGetLength(@"Ms");
  v6 = CFStringGetLength(@"Ms");
  if (v5 < 0)
  {
    browser_createCFStringReplacingSuffix_cold_2();
    return 0;
  }

  v7 = v6;
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
  v9 = MutableCopy;
  if (MutableCopy)
  {
    v11.location = v5;
    v11.length = v7;
    CFStringReplace(MutableCopy, v11, a2);
  }

  else
  {
    browser_createCFStringReplacingSuffix_cold_1();
  }

  return v9;
}

void __browser_removeP2PServicesForNearbyDevices_block_invoke(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 48), a2);
  *(*(*(a1 + 32) + 8) + 24) = Value;
  if (!Value)
  {
    return;
  }

  *(*(*(a1 + 40) + 8) + 24) = CFDictionaryGetValue(*(*(*(a1 + 32) + 8) + 24), @"name");
  v5 = ***(a1 + 56);
  if (v5 <= 40)
  {
    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v7 = **(a1 + 56);
    }

    v9 = *(a1 + 72);
    v10 = *(*(*(a1 + 40) + 8) + 24);
    v8 = *(a1 + 64);
    LogPrintF();
  }

LABEL_7:
  v6 = *(a1 + 48);

  CFDictionaryRemoveValue(v6, a2);
}

uint64_t browser_updateDevice(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v9 = 0;
  if (a2)
  {
    if (!a3)
    {
      browser_updateDevice_cold_4();
      return 4294960591;
    }

    CFRetain(a3);
    v6 = browser_queryServiceAvailabilityForDevice(a1, a2, &v10 + 1, &v10, &v9);
    if (v6)
    {
      updated = v6;
      browser_updateDevice_cold_1();
    }

    else if (v10 || v9)
    {
      updated = browser_updateEventInfoForDevice(a1, a2);
      if (updated)
      {
        browser_updateDevice_cold_3();
      }
    }

    else
    {
      updated = browser_removeNearbyDevice(a1, a2);
      if (updated)
      {
        browser_updateDevice_cold_2();
      }
    }
  }

  else
  {
    updated = 4294960591;
    if (browser_updateDevice_cold_5(a3))
    {
      return updated;
    }
  }

  CFRelease(a3);
  return updated;
}

uint64_t browser_handleConnectivityHelperEventInternal(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = **DerivedStorage;
  if (v7 <= 40)
  {
    if (v7 != -1)
    {
LABEL_3:
      APConnectivityHelperGetEventString(a2);
      LogPrintF();
      goto LABEL_5;
    }

    v8 = DerivedStorage;
    v9 = *DerivedStorage;
    if (_LogCategory_Initialize())
    {
      v39 = *v8;
      goto LABEL_3;
    }
  }

LABEL_5:
  v10 = 0;
  if (a2 > 6)
  {
    if (a2 != 7)
    {
      if (a2 != 8)
      {
        return v10;
      }

      v50 = 0;
      v13 = CMBaseObjectGetDerivedStorage();
      if (!*(v13 + 131))
      {
LABEL_53:
        v33 = CMBaseObjectGetDerivedStorage();
        if (!*(v33 + 131))
        {
          goto LABEL_63;
        }

        if (!APSIsVirtualMachine())
        {
          if (APConnectivityHelperDeregisterForEvent(*(v33 + 184), a1, 8))
          {
            browser_handleConnectivityHelperEventInternal_cold_5();
          }

LABEL_63:
          *(v33 + 131) = 0;
          v10 = v50;
          if (!v50)
          {
            return v10;
          }

          goto LABEL_84;
        }

        v34 = **v33;
        if (v34 <= 40)
        {
          if (v34 != -1)
          {
LABEL_57:
            LogPrintF();
            goto LABEL_61;
          }

          if (_LogCategory_Initialize())
          {
            v46 = *v33;
            goto LABEL_57;
          }
        }

LABEL_61:
        if (browser_handleConnectivityHelperEventInternal(a1, 108, 0))
        {
          browser_handleConnectivityHelperEventInternal_cold_4();
        }

        goto LABEL_63;
      }

      if (!a3)
      {
        browser_handleConnectivityHelperEventInternal_cold_3();
        goto LABEL_53;
      }

      v14 = v13;
      v15 = CFDictionaryGetInt64() != 0;
      *(v14 + 129) = v15;
      *(v14 + 130) = 1;
      v16 = **v14;
      if (v16 <= 40)
      {
        if (v16 != -1)
        {
LABEL_17:
          LogPrintF();
          v15 = *(v14 + 129);
          goto LABEL_51;
        }

        v32 = _LogCategory_Initialize();
        v15 = *(v14 + 129);
        if (v32)
        {
          v45 = *v14;
          goto LABEL_17;
        }
      }

LABEL_51:
      v50 = APBrowserBTLEManagerSetLocalDeviceSupportsSolo(*(v14 + 96), v15);
      if (v50)
      {
        browser_handleConnectivityHelperEventInternal_cold_2();
      }

      goto LABEL_53;
    }

    v19 = CMBaseObjectGetDerivedStorage();
    v20 = **v19;
    if (v20 <= 40)
    {
      if (v20 != -1)
      {
LABEL_23:
        LogPrintF();
        goto LABEL_40;
      }

      if (_LogCategory_Initialize())
      {
        v42 = *v19;
        goto LABEL_23;
      }
    }

LABEL_40:
    *(v19 + 193) = 1;
    v27 = CMBaseObjectGetDerivedStorage();
    if (*(v27 + 195))
    {
      if (APSIsVirtualMachine())
      {
        v28 = **v27;
        if (v28 <= 40)
        {
          if (v28 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_66;
            }

            v47 = *v27;
          }

          LogPrintF();
        }

LABEL_66:
        v35 = browser_handleConnectivityHelperEventInternal(a1, 107, 0);
        if (!v35)
        {
          goto LABEL_67;
        }

        v10 = v35;
        browser_handleConnectivityHelperEventInternal_cold_8();
LABEL_81:
        *(v27 + 195) = 0;
        APSLogErrorAt();
        goto LABEL_84;
      }

      v29 = APConnectivityHelperDeregisterForEvent(*(v27 + 184), a1, 7);
      if (v29)
      {
        v10 = v29;
        browser_handleConnectivityHelperEventInternal_cold_9();
        goto LABEL_81;
      }
    }

LABEL_67:
    *(v27 + 195) = 0;
    v10 = APBonjourBrowserSetAWDLSystemReady(*(v19 + 88));
    if (!v10)
    {
      return v10;
    }

    browser_handleConnectivityHelperEventInternal_cold_10();
    goto LABEL_84;
  }

  if (a2 == 1)
  {
    v17 = CMBaseObjectGetDerivedStorage();
    v18 = **v17;
    if (v18 > 40)
    {
      goto LABEL_31;
    }

    if (v18 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_31:
        *(v17 + 192) = 1;
        if (*(v17 + 197))
        {
          started = browser_startWiFiPowerChangedListener(a1);
          if (started)
          {
            v10 = started;
            browser_handleConnectivityHelperEventInternal_cold_11();
            goto LABEL_84;
          }

          *(v17 + 197) = 0;
        }

        v24 = CMBaseObjectGetDerivedStorage();
        if (!*(v24 + 194))
        {
          goto LABEL_71;
        }

        if (!APSIsVirtualMachine())
        {
          v26 = APConnectivityHelperDeregisterForEvent(*(v24 + 184), a1, 1);
          if (!v26)
          {
LABEL_71:
            *(v24 + 194) = 0;
            v10 = APBonjourBrowserSetWiFiSystemReady(*(v17 + 88));
            if (!v10)
            {
              return v10;
            }

            browser_handleConnectivityHelperEventInternal_cold_14();
            goto LABEL_84;
          }

          v10 = v26;
          browser_handleConnectivityHelperEventInternal_cold_13();
LABEL_83:
          *(v24 + 194) = 0;
          APSLogErrorAt();
          goto LABEL_84;
        }

        v25 = **v24;
        if (v25 <= 40)
        {
          if (v25 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_70;
            }

            v48 = *v24;
          }

          LogPrintF();
        }

LABEL_70:
        v36 = browser_handleConnectivityHelperEventInternal(a1, 101, 0);
        if (!v36)
        {
          goto LABEL_71;
        }

        v10 = v36;
        browser_handleConnectivityHelperEventInternal_cold_12();
        goto LABEL_83;
      }

      v41 = *v17;
    }

    LogPrintF();
    goto LABEL_31;
  }

  if (a2 == 2)
  {
    v11 = CMBaseObjectGetDerivedStorage();
    v49 = 0;
    v12 = **v11;
    if (v12 > 40)
    {
      goto LABEL_25;
    }

    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_25:
        WiFiPower = APConnectivityHelperQueryWiFiPower(v11[23], &v49);
        if (WiFiPower)
        {
          browser_handleConnectivityHelperEventInternal_cold_6(v11, WiFiPower, &v51);
          v10 = v51;
          goto LABEL_84;
        }

        v22 = v49;
        if (v49 == *(v11 + 198))
        {
          return 0;
        }

        v23 = **v11;
        if (v23 > 40)
        {
          goto LABEL_48;
        }

        if (v23 == -1)
        {
          v30 = _LogCategory_Initialize();
          v22 = v49;
          if (!v30)
          {
            goto LABEL_48;
          }

          v43 = *v11;
          v44 = *(v11 + 198);
        }

        LogPrintF();
        v22 = v49;
LABEL_48:
        *(v11 + 198) = v22;
        updated = browser_updateAVDevicePresent(a1);
        if (!updated)
        {
          return 0;
        }

        v10 = updated;
        browser_handleConnectivityHelperEventInternal_cold_7();
LABEL_84:
        APSLogErrorAt();
        return v10;
      }

      v40 = *v11;
    }

    LogPrintF();
    goto LABEL_25;
  }

  return v10;
}

uint64_t browser_cacheP2PDNSAddresses(const void *a1, uint64_t a2, const __CFDictionary *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(cStr, 0x400uLL);
  bzero(__s1, 0x400uLL);
  if (!a2)
  {
    browser_cacheP2PDNSAddresses_cold_4();
    v10 = 4294960591;
    goto LABEL_39;
  }

  v7 = CFGetInt64();
  if (!v7)
  {
    browser_cacheP2PDNSAddresses_cold_3();
    v10 = 4294960534;
    goto LABEL_39;
  }

  v8 = v7;
  DNSForDeviceIDInternal = browser_getDNSForDeviceIDInternal(a1, v7, 1, 1, 0, 1, cStr, 0x400uLL, 0);
  if (DNSForDeviceIDInternal != -6727 && (v10 = DNSForDeviceIDInternal, DNSForDeviceIDInternal) || (v11 = browser_getDNSForDeviceIDInternal(a1, v8, 1, 0, 0, 1, __s1, 0x400uLL, 0), v11 != -6727) && (v10 = v11, v11))
  {
    APSLogErrorAt();
    goto LABEL_39;
  }

  if (!cStr[0])
  {
    Value = CFDictionaryGetValue(a3, @"CachedAirPlayP2PDNS");
    if (!Value)
    {
      goto LABEL_21;
    }

    v16 = **DerivedStorage;
    if (v16 <= 40)
    {
      if (v16 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v26 = *DerivedStorage;
      }

      LogPrintF();
    }

LABEL_20:
    CFDictionaryRemoveValue(a3, @"CachedAirPlayP2PDNS");
    Value = 0;
    goto LABEL_21;
  }

  v12 = CFGetAllocator(a1);
  v13 = CFStringCreateWithCString(v12, cStr, 0x8000100u);
  if (!v13)
  {
    browser_cacheP2PDNSAddresses_cold_1();
    v10 = 4294960568;
    goto LABEL_39;
  }

  Value = v13;
  CFDictionarySetValue(a3, @"CachedAirPlayP2PDNS", v13);
  v15 = **DerivedStorage;
  if (v15 <= 40)
  {
    if (v15 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v17 = *DerivedStorage;
    }

    LogPrintF();
  }

LABEL_21:
  if (!__s1[0] || !strncmp(__s1, cStr, 0x400uLL))
  {
    v19 = CFDictionaryGetValue(a3, @"CachedRAOPP2PDNS");
    if (!v19)
    {
      goto LABEL_32;
    }

    v21 = **DerivedStorage;
    if (v21 <= 40)
    {
      if (v21 != -1)
      {
LABEL_30:
        LogPrintF();
        goto LABEL_35;
      }

      if (_LogCategory_Initialize())
      {
        v25 = *DerivedStorage;
        goto LABEL_30;
      }
    }

LABEL_35:
    CFDictionaryRemoveValue(a3, @"CachedRAOPP2PDNS");
    v10 = 0;
    v19 = 0;
    if (!Value)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v18 = CFGetAllocator(a1);
  v19 = CFStringCreateWithCString(v18, __s1, 0x8000100u);
  if (v19)
  {
    CFDictionarySetValue(a3, @"CachedRAOPP2PDNS", v19);
    v20 = **DerivedStorage;
    if (v20 > 40)
    {
      goto LABEL_32;
    }

    if (v20 != -1)
    {
      goto LABEL_26;
    }

    if (_LogCategory_Initialize())
    {
      v24 = *DerivedStorage;
LABEL_26:
      LogPrintF();
    }

LABEL_32:
    v10 = 0;
    if (!Value)
    {
      goto LABEL_37;
    }

LABEL_36:
    CFRelease(Value);
    goto LABEL_37;
  }

  browser_cacheP2PDNSAddresses_cold_2();
  v10 = 4294960568;
  if (Value)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_39:
  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t browser_getDNSForDeviceIDInternal(const void *a1, uint64_t a2, int a3, int a4, int a5, int a6, char *a7, size_t a8, _BYTE *a9)
{
  v58 = *MEMORY[0x277D85DE8];
  valuePtr = a2;
  v54 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(buffer, 0x400uLL);
  if (*(DerivedStorage + 245))
  {
    v54 = -6723;
    goto LABEL_68;
  }

  v17 = CFGetAllocator(a1);
  v18 = CFNumberCreate(v17, kCFNumberSInt64Type, &valuePtr);
  if (!v18)
  {
    browser_getDNSForDeviceIDInternal_cold_9();
    goto LABEL_68;
  }

  v19 = v18;
  if (IsAppleInternalBuild())
  {
    v20 = *(CMBaseObjectGetDerivedStorage() + 232);
    if (v20)
    {
      Value = CFDictionaryGetValue(v20, v19);
      if (Value)
      {
        if (CFStringGetCString(Value, a7, a8, 0x8000100u))
        {
          v54 = 0;
        }

        else
        {
          browser_getDNSForDeviceIDInternal_cold_1(&v54);
        }

        goto LABEL_8;
      }
    }

    v54 = 0;
  }

  v23 = CFDictionaryGetValue(DerivedStorage[27], v19);
  if (!v23)
  {
    v54 = -6727;
    goto LABEL_8;
  }

  v24 = v23;
  v53 = a3;
  if (!a5)
  {
    if (a4 || (v36 = CFDictionaryGetValue(v23, @"RAOPBonjourInfo")) == 0)
    {
      v33 = 0;
    }

    else
    {
      v26 = v36;
      DNSName = BonjourDevice_GetDNSName();
      v54 = DNSName;
      v33 = -6727;
      if (DNSName != -6727)
      {
        goto LABEL_31;
      }
    }

    v34 = CFDictionaryGetValue(v24, DerivedStorage[8]);
    if (!v34 || (v26 = v34, DNSName = BonjourDevice_GetDNSName(), v54 = DNSName, v33 = -6727, DNSName == -6727))
    {
      v26 = CFDictionaryGetValue(v24, @"AirPlayP2PBonjourInfo");
      if (v26)
      {
        v33 = BonjourDevice_GetDNSName();
        v54 = v33;
      }

      if (a6)
      {
        goto LABEL_44;
      }

      goto LABEL_32;
    }

LABEL_31:
    v33 = DNSName;
    if (a6)
    {
      goto LABEL_44;
    }

LABEL_32:
    if (buffer[0])
    {
      v37 = v33 == -6727;
    }

    else
    {
      v37 = 1;
    }

    v38 = !v37;
    if (!v53 || (v38 & 1) != 0)
    {
      goto LABEL_44;
    }

    if (a4 || (v39 = CFDictionaryGetValue(v24, @"CachedRAOPP2PDNS")) == 0)
    {
      v39 = CFDictionaryGetValue(v24, @"CachedAirPlayP2PDNS");
      if (!v39)
      {
        goto LABEL_44;
      }
    }

    if (CFStringGetCString(v39, buffer, 1024, 0x8000100u))
    {
      v54 = 0;
      v49 = **DerivedStorage;
      if (v49 > 40)
      {
        goto LABEL_44;
      }

      if (v49 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_44;
        }

        v50 = *DerivedStorage;
      }

      LogPrintF();
      goto LABEL_44;
    }

    browser_getDNSForDeviceIDInternal_cold_2(&v54);
LABEL_8:
    v22 = v19;
LABEL_67:
    CFRelease(v22);
    goto LABEL_68;
  }

  v25 = CFDictionaryGetValue(v23, DerivedStorage[8]);
  v26 = v25;
  if (v25)
  {
    v27 = CFDictionaryGetValue(v25, @"services");
    if (v27)
    {
      v28 = v27;
      Count = CFArrayGetCount(v27);
      if (Count >= 1)
      {
        v30 = Count;
        v31 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v28, v31);
          CFStringGetTypeID();
          TypedValue = CFDictionaryGetTypedValue();
          if (TypedValue == @"broker0" || TypedValue && CFEqual(TypedValue, @"broker0"))
          {
            break;
          }

          if (v30 == ++v31)
          {
            goto LABEL_44;
          }
        }

        CFDictionaryGetCString();
      }
    }
  }

LABEL_44:
  if (a9)
  {
    *a9 = 0;
  }

  v40 = APSSettingsCopyValue();
  v41 = v40;
  if (v40 && CFStringGetLength(v40) >= 1)
  {
    buffer[0] = 0;
    v56 = 0;
    if (v26)
    {
      v42 = BonjourDevice_CopyConnectionInfo();
      if (v56)
      {
        browser_getDNSForDeviceIDInternal_cold_3();
      }

      else if (CFArrayGetCount(v42))
      {
        CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
        if (TypedValueAtIndex)
        {
          v44 = CFDictionaryGetValue(TypedValueAtIndex, @"dnsName");
          if (v44)
          {
            if (!CFStringGetCString(v44, buffer, 1024, 0x8000100u))
            {
              browser_getDNSForDeviceIDInternal_cold_4(&v56);
            }
          }

          else
          {
            browser_getDNSForDeviceIDInternal_cold_5(&v56);
          }
        }

        else
        {
          browser_getDNSForDeviceIDInternal_cold_6(&v56);
        }
      }

      else
      {
        browser_getDNSForDeviceIDInternal_cold_7(&v56);
      }

      if (v42)
      {
        CFRelease(v42);
      }
    }

    else
    {
      browser_getDNSForDeviceIDInternal_cold_8();
    }

    v54 = v56;
    v45 = **DerivedStorage;
    if (v45 <= 50)
    {
      if (v45 != -1)
      {
LABEL_59:
        LogPrintF();
        goto LABEL_61;
      }

      if (_LogCategory_Initialize())
      {
        v52 = *DerivedStorage;
        goto LABEL_59;
      }
    }
  }

LABEL_61:
  v46 = **DerivedStorage;
  if (v46 > 40)
  {
    goto LABEL_65;
  }

  if (v46 != -1)
  {
    goto LABEL_63;
  }

  if (_LogCategory_Initialize())
  {
    v51 = *DerivedStorage;
LABEL_63:
    LogPrintF();
  }

LABEL_65:
  strncpy(a7, buffer, a8);
  CFRelease(v19);
  if (v41)
  {
    v22 = v41;
    goto LABEL_67;
  }

LABEL_68:
  result = v54;
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __browser_ensureConnectivityCheckTimerStarted_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 112))
  {
    v3 = result;
    mach_absolute_time();
    v4 = *(v3 + 112);
    return CFDictionaryApplyBlock();
  }

  return result;
}

int *__browser_handleConnectivityCheckTimerFired_block_invoke(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  v12 = 0;
  if (!a2)
  {
    __browser_handleConnectivityCheckTimerFired_block_invoke_cold_4();
    goto LABEL_14;
  }

  if (!a3)
  {
    __browser_handleConnectivityCheckTimerFired_block_invoke_cold_3();
    goto LABEL_14;
  }

  CFDictionaryGetInt64();
  v6 = *(a1 + 32);
  result = UpTicksToSeconds();
  if (result < 0x3D)
  {
    return result;
  }

  Value = CFDictionaryGetValue(a3, @"IPAddress");
  result = browser_shouldQueryIPAddress(Value, &v12);
  if (result)
  {
    __browser_handleConnectivityCheckTimerFired_block_invoke_cold_1();
    goto LABEL_14;
  }

  if (v12 != 1)
  {
    return result;
  }

  v9 = ***(a1 + 40);
  if (v9 <= 20)
  {
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v11 = **(a1 + 40);
    }

    LogPrintF();
  }

LABEL_10:
  result = browser_startBTLEDeviceQuery(*(a1 + 48), a2);
  if (!result)
  {
    return result;
  }

  __browser_handleConnectivityCheckTimerFired_block_invoke_cold_2();
LABEL_14:
  result = **(a1 + 40);
  if (*result <= 60)
  {
    if (*result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v10 = **(a1 + 40);
      return LogPrintF();
    }
  }

  return result;
}

void browser_handleIPv4EventInternal(uint64_t a1, const __CFArray *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = **DerivedStorage;
  if (v4 <= 20)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      v13 = *DerivedStorage;
    }

    LogPrintF();
  }

LABEL_5:
  v5 = socket(2, 2, 0);
  if (v5 < 0 && (!*__error() || *__error()))
  {
    browser_handleIPv4EventInternal_cold_1();
  }

  else
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        CFArrayGetValueAtIndex(a2, i);
        v9 = CFCopyCString();
        if (v9)
        {
          v10 = v9;
          v11 = SNScanF();
          free(v10);
          if (v11 == 1)
          {
            SocketGetInterfaceInfo();
          }
        }
      }
    }

    if ((v5 & 0x80000000) == 0 && close(v5) && *__error())
    {
      __error();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

int *__browser_requeryBTLEDevices_block_invoke(uint64_t a1, const void *a2)
{
  if (a2)
  {
    result = browser_startBTLEDeviceQuery(*(a1 + 32), a2);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    __browser_requeryBTLEDevices_block_invoke_cold_1();
  }

  result = **(a1 + 40);
  if (*result <= 60)
  {
    if (*result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = **(a1 + 40);
      return LogPrintF();
    }
  }

  return result;
}

void __browser_flushAllBrokerResults_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v5 = ***(a1 + 32);
  if (v5 > 40)
  {
    goto LABEL_8;
  }

  if (v5 == -1)
  {
    v6 = **(a1 + 32);
    if (!_LogCategory_Initialize())
    {
      goto LABEL_8;
    }

    v5 = ***(a1 + 32);
  }

  v7 = *(a1 + 40);
  if (v5 == -1)
  {
    _LogCategory_Initialize();
  }

  APBrokeredReceiverGetDeviceID(a3);
  LogPrintF();
LABEL_8:
  APBrokeredReceiverCopyBonjourInfo(a3, 1, &cf);
  if (cf)
  {
    browser_removeService(*(a1 + 40), @"AirPlay", cf);
  }

  else
  {
    __browser_flushAllBrokerResults_block_invoke_cold_1();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

int *browser_handleBrokerGroupAddOrUpdate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *DerivedStorage;
  if (**DerivedStorage <= 50)
  {
    if (**DerivedStorage != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *DerivedStorage;
      return LogPrintF();
    }
  }

  return result;
}

int *browser_handleBrokerGroupRemove()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *DerivedStorage;
  if (**DerivedStorage <= 50)
  {
    if (**DerivedStorage != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *DerivedStorage;
      return LogPrintF();
    }
  }

  return result;
}

void browser_handleBrokeredReceiverAddOrUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v12 = 0;
  v7 = **DerivedStorage;
  if (v7 <= 50)
  {
    if (v7 == -1)
    {
      v8 = *DerivedStorage;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v7 = **v6;
    }

    if (v7 == -1)
    {
      _LogCategory_Initialize();
    }

    APBrokeredReceiverGetDeviceID(a2);
    LogPrintF();
  }

LABEL_9:
  v13 = APBrokeredReceiverCopyBonjourInfo(a2, 0, &v12);
  if (v13)
  {
    browser_handleBrokeredReceiverAddOrUpdate_cold_1();
  }

  else
  {
    BonjourDevice_GetDeviceID();
    if (v13)
    {
      browser_handleBrokeredReceiverAddOrUpdate_cold_2();
    }

    else
    {
      Int64 = CFNumberCreateInt64();
      v10 = v6[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __browser_handleBrokeredReceiverAddOrUpdate_block_invoke;
      block[3] = &__block_descriptor_72_e5_v8__0l;
      block[4] = v6;
      block[5] = Int64;
      block[6] = a2;
      block[7] = a3;
      block[8] = v12;
      dispatch_sync(v10, block);
      if (Int64)
      {
        CFRelease(Int64);
      }
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void browser_handleBrokeredReceiverRemoved(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v12 = 0;
  v7 = **DerivedStorage;
  if (v7 <= 50)
  {
    if (v7 == -1)
    {
      v8 = *DerivedStorage;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v7 = **v6;
    }

    if (v7 == -1)
    {
      _LogCategory_Initialize();
    }

    APBrokeredReceiverGetDeviceID(a2);
    LogPrintF();
  }

LABEL_9:
  v13 = APBrokeredReceiverCopyBonjourInfo(a2, 1, &v12);
  if (v13)
  {
    browser_handleBrokeredReceiverRemoved_cold_1();
  }

  else
  {
    BonjourDevice_GetDeviceID();
    if (v13)
    {
      browser_handleBrokeredReceiverRemoved_cold_2();
    }

    else
    {
      Int64 = CFNumberCreateInt64();
      v10 = v6[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __browser_handleBrokeredReceiverRemoved_block_invoke;
      block[3] = &__block_descriptor_64_e5_v8__0l;
      block[4] = v6;
      block[5] = Int64;
      block[6] = a3;
      block[7] = v12;
      dispatch_sync(v10, block);
      if (Int64)
      {
        CFRelease(Int64);
      }
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t __browser_handleBrokeredReceiverAddOrUpdate_block_invoke(uint64_t a1)
{
  CFDictionarySetValue(*(*(a1 + 32) + 360), *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);

  return browser_handleBonjourAddOrUpdate(v2, @"AirPlay", v3);
}

uint64_t __browser_handleBrokeredReceiverRemoved_block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(*(*(a1 + 32) + 360), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return browser_handleBonjourRemove(v2, @"AirPlay", v3);
}

uint64_t browser_cleanupNI()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (DerivedStorage[34])
  {
    v2 = *DerivedStorage;
    v3 = **v1;
    if (v3 <= 50)
    {
      if (v3 != -1)
      {
LABEL_4:
        LogPrintF();
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        v4 = *v1;
        goto LABEL_4;
      }
    }
  }

LABEL_6:

  v1[35] = 0;
  [v1[34] invalidate];

  v1[34] = 0;

  return MEMORY[0x28213C8D8](v1 + 36);
}

Class __getNISessionClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary_0();
  result = objc_getClass("NISession");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNISessionClass_block_invoke_cold_1();
  }

  getNISessionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t NearbyInteractionLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!NearbyInteractionLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __NearbyInteractionLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278BCA268;
    v5 = 0;
    NearbyInteractionLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = NearbyInteractionLibraryCore_frameworkLibrary_0;
  if (!NearbyInteractionLibraryCore_frameworkLibrary_0)
  {
    NearbyInteractionLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __NearbyInteractionLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NearbyInteractionLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getNISpatialBrowsingConfigurationClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary_0();
  result = objc_getClass("NISpatialBrowsingConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNISpatialBrowsingConfigurationClass_block_invoke_cold_1();
  }

  getNISpatialBrowsingConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t browser_stopNI()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = **DerivedStorage;
  if (v1 <= 50)
  {
    if (v1 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *DerivedStorage;
      goto LABEL_3;
    }
  }

LABEL_5:

  return browser_cleanupNI();
}

uint64_t browser_copyNANEndpointForOneDeviceID(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, CFTypeRef *a6)
{
  valuePtr = a2;
  v35 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    v16 = 0;
    v13 = 0;
    v27 = -6723;
    goto LABEL_33;
  }

  v11 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v11, 2, MEMORY[0x277CBF128]);
  v13 = Mutable;
  if (!Mutable)
  {
    browser_copyNANEndpointForOneDeviceID_cold_4();
    v16 = 0;
    goto LABEL_34;
  }

  if (a4)
  {
    v14 = @"AirPlayP2PBonjourInfo";
  }

  else
  {
    CFArrayAppendValue(Mutable, @"AirPlayNANFullBonjourInfo");
    v14 = @"AirPlayNANPartialBonjourInfo";
  }

  CFArrayAppendValue(v13, v14);
  v15 = CFGetAllocator(a1);
  v16 = CFNumberCreate(v15, kCFNumberSInt64Type, &valuePtr);
  if (!v16)
  {
    browser_copyNANEndpointForOneDeviceID_cold_3();
    goto LABEL_34;
  }

  v17 = *(DerivedStorage + 216);
  CFDictionaryGetTypeID();
  CFDictionaryGetTypedValue();
  v33 = a6;
  v34 = DerivedStorage;
  if (CFArrayGetCount(v13) < 1)
  {
LABEL_18:
    DerivedStorage = v34;
    if (!a5)
    {
      goto LABEL_32;
    }

    v39 = 0;
    v38 = 0;
    v37 = 0;
    CFDictionaryGetTypeID();
    CFDictionaryGetTypedValue();
    if (v39)
    {
      if (v39 == -6727)
      {
        goto LABEL_52;
      }
    }

    else
    {
      CFDataGetTypeID();
      CFDictionaryGetTypedValue();
      if (!v39)
      {
        v24 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
        v39 = v24;
        if (!v24)
        {
          FigCFStringGetCStringPtrAndBufferToFree();
          CFStringGetLength(v38);
          v25 = TextToHardwareAddressScalar();
          if (v37)
          {
            free(v37);
          }

          goto LABEL_24;
        }

        if (v24 != -6727)
        {
          goto LABEL_51;
        }

LABEL_52:
        v25 = 0;
LABEL_24:
        if (v38)
        {
          CFRelease(v38);
        }

        *a5 = v25;
        if (!v25)
        {
          goto LABEL_32;
        }

        v26 = **v34;
        if (v26 > 30)
        {
          goto LABEL_32;
        }

        if (v26 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_32;
          }

          v31 = *v34;
          v32 = *a5;
        }

        LogPrintF();
LABEL_32:
        APSLogErrorAt();
        v27 = -72065;
LABEL_33:
        v35 = v27;
        goto LABEL_34;
      }

      if (v39 == -6727)
      {
        goto LABEL_52;
      }
    }

LABEL_51:
    APSLogErrorAt();
    goto LABEL_52;
  }

  v18 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v13, v18);
    CFDictionaryGetTypeID();
    CFDictionaryGetTypedValue();
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (CFArrayGetCount(TypedValue) >= 1)
    {
      break;
    }

LABEL_10:
    if (++v18 >= CFArrayGetCount(v13))
    {
      goto LABEL_18;
    }
  }

  v20 = 0;
  while (1)
  {
    CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    Value = CFDictionaryGetValue(TypedValueAtIndex, @"nanEP");
    if (Value)
    {
      v23 = Value;
      if (APTNANEndpointSupportsServiceType(Value))
      {
        break;
      }
    }

    if (++v20 >= CFArrayGetCount(TypedValue))
    {
      goto LABEL_10;
    }
  }

  *v33 = CFRetain(v23);
  DerivedStorage = v34;
LABEL_34:
  v28 = **DerivedStorage;
  if (v28 > 50)
  {
    goto LABEL_38;
  }

  if (v28 != -1)
  {
    goto LABEL_36;
  }

  if (_LogCategory_Initialize())
  {
    v30 = *DerivedStorage;
LABEL_36:
    LogPrintF();
  }

LABEL_38:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v35;
}

void __browser_resolveBrokerAddress_block_invoke(uint64_t a1, int a2, const __CFArray *a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 40))
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v10)
    {
      __browser_resolveBrokerAddress_block_invoke_cold_1();
      v11 = cf;
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = **(a1 + 48);
  if (!a2)
  {
    if (v12 > 50)
    {
      goto LABEL_10;
    }

    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_10:
        v11 = CFStringCreateByCombiningStrings(*MEMORY[0x277CBECE8], a3, @"\x1E");
        if (!v11)
        {
          __browser_resolveBrokerAddress_block_invoke_cold_2();
          a5 = 0;
        }

        goto LABEL_12;
      }

      v15 = *(a1 + 48);
    }

    v17 = *(a1 + 56);
    LogPrintF();
    goto LABEL_10;
  }

  if (v12 <= 90)
  {
    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v16 = *(a1 + 48);
    }

    v18 = *(a1 + 56);
    LogPrintF();
  }

LABEL_25:
  v11 = 0;
  a5 = 0;
LABEL_12:
  (*(*(a1 + 32) + 16))(*(a1 + 32), v11, a4, a5);
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_14:
  v13 = *(a1 + 40);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v14 = *(a1 + 32);

  _Block_release(v14);
}

void __browser_handleConnectivityHelperEventExternal_block_invoke(uint64_t a1)
{
  browser_handleConnectivityHelperEventInternal(*(a1 + 32), *(a1 + 48), *(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void *__getNINearbyObjectDistanceNotAvailableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NearbyInteractionLibrary_0();
  result = dlsym(v2, "NINearbyObjectDistanceNotAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNINearbyObjectDistanceNotAvailableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];

  return CMBaseObjectGetDerivedStorage();
}

void APBrowserBTLEManagerCreate_cold_2(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t session_introspectReportNetworkStatus(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (result)
  {
    if (a3 <= 1)
    {
      APSLogErrorAt();

      return FPrintF();
    }

    else
    {
      v4 = result;
      strtol(*(a4 + 8), 0, 10);

      return session_reportNetworkStatus(v4);
    }
  }

  return result;
}

uint64_t session_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 8);
  v3 = APSDispatchSyncTask();
  if (v1[22])
  {
    SharedTransport = APTransportGetSharedTransport();
    APTransportUnregisterSession(SharedTransport, v1[22]);
  }

  else if (v1[24])
  {
    v6 = v1[23];
    if (v6)
    {
      APTransportServiceUnregisterSession(v6);
      v7 = v1[23];
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      APSLogErrorAt();
    }
  }

  return v3;
}

uint64_t session_invalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || OUTLINED_FUNCTION_8()))
    {
      v24 = *(v3 + 32);
      OUTLINED_FUNCTION_9();
    }

    *v3 = 1;
    APSIntrospectorSetCommandContext();
    if (*(v3 + 24) == 1)
    {
      session_performWifiManagerRegistration(v3, 0);
    }

    v4 = *(v3 + 240);
    if (v4)
    {
      APConnectivityHelperRemoveAllRegistrations(v4, a1);
    }

    session_suspendKeepAliveInternal(a1);
    v5 = *(v3 + 72);
    if (v5)
    {
      if (gLogCategory_APTransportSession <= 50)
      {
        if (gLogCategory_APTransportSession != -1 || (v20 = OUTLINED_FUNCTION_8(), v5 = *(v3 + 72), v20))
        {
          OUTLINED_FUNCTION_9();
          v5 = *(v3 + 72);
        }
      }

      session_updateNANDSNotificationRegistry(a1, v5, 0);
      v21 = *(v3 + 72);
      APTNANDataSessionReleaseActivation();
    }

    v6 = *(v3 + 80);
    if (v6)
    {
      if (gLogCategory_APTransportSession <= 50)
      {
        if (gLogCategory_APTransportSession != -1 || (v22 = OUTLINED_FUNCTION_8(), v6 = *(v3 + 80), v22))
        {
          OUTLINED_FUNCTION_9();
          v6 = *(v3 + 80);
        }
      }

      session_updateNANDSNotificationRegistry(a1, v6, 0);
      v23 = *(v3 + 80);
      APTNANDataSessionReleaseActivation();
    }

    v7 = *(v3 + 48);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 48) = 0;
    }

    v8 = *(v3 + 56);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 56) = 0;
    }

    v9 = *(v3 + 80);
    if (v9)
    {
      CFRelease(v9);
      *(v3 + 80) = 0;
    }

    v10 = *(v3 + 72);
    if (v10)
    {
      CFRelease(v10);
      *(v3 + 72) = 0;
    }

    v11 = *(v3 + 64);
    if (v11)
    {
      CFRelease(v11);
      *(v3 + 64) = 0;
    }

    v12 = *(v3 + 128);
    if (v12)
    {
      CFRelease(v12);
      *(v3 + 128) = 0;
    }

    v13 = *(v3 + 224);
    if (v13)
    {
      CFRelease(v13);
      *(v3 + 224) = 0;
    }

    v14 = *(v3 + 280);
    if (v14)
    {
      CFRelease(v14);
      *(v3 + 280) = 0;
    }

    v15 = *(v3 + 232);
    if (v15)
    {
      CFRelease(v15);
      *(v3 + 232) = 0;
    }

    v16 = *(v3 + 88);
    if (v16)
    {
      CFRelease(v16);
      *(v3 + 88) = 0;
    }

    v17 = *(v3 + 96);
    if (v17)
    {
      CFRelease(v17);
      *(v3 + 96) = 0;
    }

    v18 = *(v3 + 104);
    if (v18)
    {
      CFRelease(v18);
      *(v3 + 104) = 0;
    }
  }

  return 0;
}

uint64_t session_updateNANDSNotificationRegistry(uint64_t result, uint64_t a2, int a3)
{
  if (result && a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    if (a3)
    {
      OUTLINED_FUNCTION_3_3();

      return FigNotificationCenterAddWeakListener();
    }

    else
    {
      OUTLINED_FUNCTION_3_3();

      return FigNotificationCenterRemoveWeakListener();
    }
  }

  return result;
}

void session_reportNetworkStatusInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *a1;
  v17 = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v16 = 0;
  if (*(v5 + 280))
  {
    v9 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  v7 = *(v5 + 56);
  v8 = FigCFWeakReferenceTableCopyValue();
  v9 = v8;
  if (!v8)
  {
    APSLogErrorAt();
    v17 = -16600;
    goto LABEL_14;
  }

  CMBaseObject = APTransportConnectionGetCMBaseObject(v8);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v17 = -12782;
    goto LABEL_13;
  }

  v17 = v11(CMBaseObject, @"LocalInterfaceName", 0, &v16);
  if (v17)
  {
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  v12 = APTransportConnectionGetCMBaseObject(v9);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    v17 = -12782;
    goto LABEL_13;
  }

  v17 = v13(v12, @"RemoteNetworkIPAddress", 0, &cf);
  if (v17)
  {
    goto LABEL_13;
  }

  v14 = APSGetFBOPropertyInt64();
  if (v17)
  {
    goto LABEL_13;
  }

  v17 = APTSessionHealthReporterCreate(0, v16, *(v6 + 32), cf, v14, (v6 + 280));
  if (v17)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_16:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v17 || APTSessionHealthReporterReportNetworkStatus(*(DerivedStorage + 280), *(a1 + 8)))
  {
    APSLogErrorAt();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  OUTLINED_FUNCTION_13_0();
}

void session_handleNANDataSessionDisconnected(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFMutableDictionaryRef Mutable)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_20;
  }

  v8 = DerivedStorage;
  if (*(DerivedStorage + 72) != a4 && *(DerivedStorage + 80) != a4)
  {
    goto LABEL_20;
  }

  if (Mutable)
  {
    v9 = CFGetTypeID(Mutable);
    if (v9 == CFDictionaryGetTypeID() && CFDictionaryContainsKey(Mutable, @"APTNANDataSessionNotificationKey_DisconnectedReason"))
    {
      Int64 = CFDictionaryGetInt64();
      if (Int64 == -72400 || Int64 == -72401 || (Int64 + 72101) <= 1)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          CFDictionarySetInt64();
        }

        else
        {
          APSSignalErrorAt();
        }
      }

      else
      {
        Mutable = 0;
      }
    }

    else
    {
      Mutable = 0;
    }
  }

  if (gLogCategory_APTransportSession <= 90 && (gLogCategory_APTransportSession != -1 || OUTLINED_FUNCTION_9_0()))
  {
    *(v8 + 72);
    OUTLINED_FUNCTION_15();
  }

  v11 = *(v8 + 16);
  CMNotificationCenterGetDefaultLocalCenter();
  v12 = *MEMORY[0x277CC1AE0];
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {
    OUTLINED_FUNCTION_13_0();

    CFRelease(v13);
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_13_0();
  }
}

uint64_t session_getSessionTransportType(uint64_t a1, int *a2)
{
  number = 0;
  valuePtr = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 56);
  v4 = FigCFWeakReferenceTableCopyValue();
  v5 = v4;
  if (!v4)
  {
    goto LABEL_27;
  }

  CMBaseObject = APTransportConnectionGetCMBaseObject(v4);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v10 = 4294954514;
    goto LABEL_13;
  }

  v8 = v7(CMBaseObject, @"NetTransportType", *MEMORY[0x277CBECE8], &number);
  if (v8)
  {
    v10 = v8;
    if (v8 == -72320)
    {
LABEL_27:
      v10 = 4294950688;
      goto LABEL_21;
    }

LABEL_13:
    APSLogErrorAt();
    goto LABEL_21;
  }

  CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  v9 = valuePtr;
  if ((valuePtr - 1) >= 2)
  {
    switch(valuePtr)
    {
      case 128:
        v9 = 8;
        break;
      case 8:
        v9 = 4;
        break;
      case 16:
        v9 = 5;
        break;
      case 32:
        v9 = 6;
        break;
      case 64:
        v9 = 7;
        break;
      case 4:
        v9 = 3;
        break;
      default:
        v9 = 0;
        break;
    }
  }

  v10 = 0;
  *a2 = v9;
LABEL_21:
  if (number)
  {
    CFRelease(number);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v10;
}

uint64_t session_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = (*(a5 + 16))(a5, a3, "TransportSession:[%{ptr}] %''@ Parent:[%{ptr}]\n", a1, *(DerivedStorage + 32), a2);
  if (v10)
  {
    v24 = v10;
    APSLogErrorAt();
  }

  else
  {
    v11 = *(DerivedStorage + 48);
    v12 = FigCFWeakReferenceTableCopyValues();
    if (!v12)
    {
      v13 = FigCFDictionaryCopyArrayOfValues();
      v14 = v13;
      if (!v13 || (Count = CFArrayGetCount(v13), Count < 1))
      {
LABEL_20:
        v24 = 0;
        goto LABEL_21;
      }

      v16 = Count;
      v17 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
        APSHierarchyReporterProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (!ProtocolVTable)
        {
          break;
        }

        v20 = *(ProtocolVTable + 16);
        if (!v20)
        {
          break;
        }

        v21 = *(v20 + 8);
        if (!v21)
        {
          v24 = 4294954514;
          goto LABEL_15;
        }

        v22 = *(v20 + 8);
        v23 = v21(ValueAtIndex, a1, a3 + 1, 0, a5);
        v24 = v23;
        if (v23 == -12782 || v23 == -12788)
        {
          goto LABEL_15;
        }

LABEL_16:
        if (v24)
        {
          APSLogErrorAt();
          goto LABEL_21;
        }

        if (v16 == ++v17)
        {
          goto LABEL_20;
        }
      }

      v24 = 4294954508;
LABEL_15:
      v24 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", ValueAtIndex, 0, " ", 0, 0, v24, a1);
      goto LABEL_16;
    }

    v24 = v12;
  }

  v14 = 0;
LABEL_21:
  if (v14)
  {
    CFRelease(v14);
  }

  return v24;
}

uint64_t session_initBufferedAudioTransportQueuePool(void *a1)
{
  result = APSSettingsGetIntWithDefault();
  if (result)
  {
    if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || OUTLINED_FUNCTION_8()))
    {
      OUTLINED_FUNCTION_9();
    }

    result = APSPriorityDispatchQueuePoolCreate();
    if (result)
    {
      result = APSLogErrorAt();
    }
  }

  *a1 = 0;
  return result;
}

void session_handleConnectionDroppedInternal(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || (v4 = DerivedStorage, DerivedStorage[120]))
  {
    OUTLINED_FUNCTION_13_0();
    return;
  }

  DerivedStorage[120] = 1;
  if (a2)
  {
    v5 = *MEMORY[0x277CC1B28];
    APSGetFBOPropertyInt64();
    if (gLogCategory_APTransportSession <= 90 && (gLogCategory_APTransportSession != -1 || OUTLINED_FUNCTION_9_0()))
    {
LABEL_6:
      OUTLINED_FUNCTION_15();
    }
  }

  else if (gLogCategory_APTransportSession <= 90 && (gLogCategory_APTransportSession != -1 || OUTLINED_FUNCTION_9_0()))
  {
    goto LABEL_6;
  }

  if (CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
  {
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    v6 = *(v4 + 2);
    CMNotificationCenterGetDefaultLocalCenter();
    v7 = *MEMORY[0x277CC1AE0];
    FigDispatchAsyncPostNotification();
    OUTLINED_FUNCTION_13_0();

    CFRelease(v8);
  }

  else
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_13_0();

    APSSignalErrorAt();
  }
}

uint64_t APTransportSessionCreate_cold_4(uint64_t *a1, CMTime *a2)
{
  v2 = *a1;
  time = *a2;
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_11();
}

uint64_t APTransportSessionHandleStreamEvent_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  *a1 = -16600;
  return OUTLINED_FUNCTION_10_0();
}

uint64_t session_getKeepAliveController_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_10_0();
  *a1 = result;
  return result;
}

uint64_t session_handleKeepAliveStallStateChanged_cold_3(uint64_t a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportSession <= 90)
  {
    if (gLogCategory_APTransportSession != -1 || (result = OUTLINED_FUNCTION_9_0(), result))
    {
      v3 = *(a1 + 224);
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t session_handleKeepAliveFailed_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportSession <= 90)
  {
    if (gLogCategory_APTransportSession != -1 || (result = OUTLINED_FUNCTION_9_0(), result))
    {
      v3 = *(a1 + 224);
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t session_setPropertyInternal_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12785;
  return result;
}

uint64_t session_setPropertyInternal_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_setPropertyInternal_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_10_0();
  *a1 = result;
  return result;
}

uint64_t session_setPropertyInternal_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_setPropertyInternal_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16600;
  return result;
}

uint64_t session_ResumeKeepAlive_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_SuspendKeepAlive_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void session_resumeInternal_cold_5(uint64_t a1, _BYTE *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = 0;
  v6 = *(DerivedStorage + 152);
  if (v6 == 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  if ((v6 - 1) <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(DerivedStorage + 64);
  if (v10)
  {
    if (APTransportDeviceGetAddress(*(DerivedStorage + 64), v9, 0, a2, 1024, 0, 0))
    {
      APSLogErrorAt();
    }

    else
    {
      LODWORD(v10) = 0;
      if (*a2)
      {
        goto LABEL_20;
      }
    }
  }

  else if (*(DerivedStorage + 128))
  {
    goto LABEL_20;
  }

  if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
  }

  LODWORD(v10) = -16603;
LABEL_20:
  *a3 = v10;
  OUTLINED_FUNCTION_13_0();
}

uint64_t session_createStreamWithIDInternal_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12785;
  return result;
}

uint64_t session_createStreamWithIDInternal_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_createStreamWithIDInternal_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6719;
  return result;
}

void session_createStreamName_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t session_createConnectionForStream_cold_22(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16602;
  return result;
}

uint64_t session_createConnectionForStream_cold_33(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16600;
  return result;
}

uint64_t session_createConnectionForStream_cold_56(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_10_0();
  *a1 = result;
  return result;
}

uint64_t session_ensureKeepAliveControllerCreatedAndResumed_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_ensureKeepAliveControllerCreatedAndResumed_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_ensureKeepAliveControllerCreatedAndResumed_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_ensureKeepAliveControllerCreatedAndResumed_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void session_handleConnectivityHelperEventsInternal_cold_2(uint64_t a1, int *a2)
{
  SessionTransportType = session_getSessionTransportType(a1, a2);
  if (SessionTransportType)
  {
    if (SessionTransportType != -16608)
    {

      APSLogErrorAt();
    }
  }

  else if ((*a2 & 0xFFFFFFFE) == 4)
  {

    session_handleConnectionDroppedInternal(a1, 0);
  }
}

void session_handleConnectivityHelperEventsInternal_cold_5(uint64_t a1, int *a2, uint64_t a3, _BYTE *a4)
{
  CMBaseObjectGetDerivedStorage();
  *a2 = 0;
  SessionTransportType = session_getSessionTransportType(a1, a2);
  if (SessionTransportType)
  {
    if (SessionTransportType == -16608)
    {
      return;
    }

    APSLogErrorAt();

    goto LABEL_18;
  }

  v9 = (*a2 < 8) & (0x8Cu >> *a2);
  if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
  }

  if (v9)
  {
    if (!APConnectivityHelperQueryWiFiPower(*(a3 + 240), a4))
    {
      if (!*a4)
      {
        if (gLogCategory_APTransportSession <= 60 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        session_handleConnectionDroppedInternal(a1, 0);
      }

      return;
    }

LABEL_18:
    APSLogErrorAt();
  }
}

void _APBrokerManagerDiscoveryDelegateStop(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 56))
  {
    v2 = _APBrokerManagerCopyReferencedObjectIfNecessary(*(a1 + 72), &v3);
    if (v3)
    {
      APSLogErrorAt();
      if (!v2)
      {
        return;
      }
    }

    else
    {
      (*(a1 + 56))(v2, *(a1 + 80));
      if (!v2)
      {
        return;
      }
    }

    CFRelease(v2);
  }
}

uint64_t _APBrokerManagerRequestBrokerDiscovery(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  FigSimpleMutexCheckIsLockedOnThisThread();
  ++*(v1 + 132);
  if (gLogCategory_APBrokerManager <= 30)
  {
    if (gLogCategory_APBrokerManager == -1)
    {
      if (!OUTLINED_FUNCTION_8_0())
      {
        goto LABEL_6;
      }

      v2 = *(v1 + 132);
    }

    OUTLINED_FUNCTION_7_0();
  }

LABEL_6:

  return _APBrokerManagerUpdateBrowsing(v1);
}

void _APBrokerManagerCallAuthenticationCallback(uint64_t a1, int a2, const void *a3, void *aBlock)
{
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(a1 + 88);
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    v11 = ___APBrokerManagerCallAuthenticationCallback_block_invoke;
    v12 = &unk_278BC7160;
    v15 = a2;
    v13 = v7;
    v14 = a3;
    dispatch_async(v9, block);
  }
}

void _APBrokerManagerCallGetInfoCallback(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      FigCFDictionarySetValue();
      v8 = _Block_copy(a4);
      CFRetain(Mutable);
    }

    else
    {
      APSLogErrorAt();
      v8 = _Block_copy(a4);
      a2 = -6728;
    }

    v9 = *(a1 + 88);
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    v12 = ___APBrokerManagerCallGetInfoCallback_block_invoke;
    v13 = &unk_278BC7160;
    v16 = a2;
    v14 = v8;
    v15 = Mutable;
    dispatch_async(v10, block);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void _APBrokerManagerFireBrokeredReceiverEvent(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1);
  if (v2)
  {
    v4 = *(v3 + 200);
    v5 = *(v3 + 192);
    if (v5)
    {
      CFRetain(v5);
    }

    CFRetain(v3);
    CFRetain(v1);
    v6 = *(v3 + 88);
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_11_1(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, ___APBrokerManagerFireBrokeredReceiverEvent_block_invoke, &__block_descriptor_68_e5_v8__0l, v18, v19, v20, v21, v22);
  }
}

void _APBrokerManagerFireBrokerGroupEvent(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1);
  if (v2)
  {
    v4 = *(v3 + 200);
    v5 = *(v3 + 192);
    if (v5)
    {
      CFRetain(v5);
    }

    CFRetain(v3);
    CFRetain(v1);
    v6 = *(v3 + 88);
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_11_1(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, ___APBrokerManagerFireBrokerGroupEvent_block_invoke, &__block_descriptor_68_e5_v8__0l, v18, v19, v20, v21, v22);
  }
}

void _APBrokerManagerCleanupBrokerGroup(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(a1 + 137))
  {
    APBrokerGroupStopReceiverPolling(a2);
  }

  GroupID = APBrokerGroupGetGroupID(a2);
  _APBrokerManagerUpdateBrokerGroupReceiversWithList(a1, GroupID, 0);
  APBrokerGroupInvalidate(a2);
  v6 = *(a1 + 96);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  v7 = *(a1 + 160);

  _APBrokerManagerFireBrokerGroupEvent(a1);
}

uint64_t _APBrokerManagerRemoveAllBrokerGroups(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (CFDictionaryGetCount(*(v1 + 112)) >= 1)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(v1 + 112));
    CFDictionaryRemoveAllValues(*(v1 + 112));
    if (!Copy)
    {
      APSLogErrorAt();
      return 4294960568;
    }

    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    CFDictionaryApplyBlock();
    CFRelease(Copy);
  }

  return 0;
}

uint64_t APBrokerManagerAuthenticateBrokerGroup_cold_1(uint64_t a1)
{
  if (a1)
  {
    IsAppleInternalBuild();
  }

  IsAppleInternalBuild();
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

uint64_t _APBrokerManagerReleaseBrokerDiscovery_cold_1(int a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_8_0();
  if (result)
  {
    v6 = *a4;
    return OUTLINED_FUNCTION_7_0();
  }

  return result;
}

uint64_t APBrokerManagerGetInfoFromBrokerGroup_cold_1(uint64_t a1)
{
  if (a1)
  {
    IsAppleInternalBuild();
  }

  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

void APBrokerManagerGetInfoFromBrokerGroup_cold_2(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, const void *a5)
{
  APSLogErrorAt();
  _APBrokerManagerClearGetInfoCallbackState(a2);
  v9 = *a3;
  FigSimpleMutexUnlock();

  _APBrokerManagerCallGetInfoCallback(a2, a4, 0, a5);
}

void BonjourDiscoveryDelegateSetup_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    BonjourBrowser_Stop();
    CFRelease(*a2);
  }

  free(a2);
}

void APTSessionHealthReporterCreate_cold_2(uint64_t a1, uint64_t a2, const void *a3, _DWORD *a4)
{
  APSLogErrorAt();
  *a4 = APSSignalErrorAt();

  CFRelease(a3);
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  v2 = OUTLINED_FUNCTION_4();
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_4();
  *a1 = result;
  return result;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_4();
  *a1 = result;
  return result;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_4();
  *a1 = result;
  return result;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_8()
{
  result = APSLogErrorAt();
  if (gLogCategory_APTSessionHealthReporter <= 60)
  {
    if (gLogCategory_APTSessionHealthReporter != -1)
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

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

uint64_t healthReporter_setStringSymptomQualifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_4();
  *a1 = result;
  return result;
}

uint64_t healthReporter_setStringSymptomQualifier_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

uint64_t __bonjourCacheHomeKit_introspector_cmd_purgeCache_block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  APSLogErrorAt();
  result = [MEMORY[0x277CCA9B8] errorWithDomain:@"nil cache directory url" code:0 userInfo:0];
  *a2 = result;
  *a1 = result;
  return result;
}

uint64_t APBrokerKeychainUtilsCopyAuthToken(__CFString *a1, __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  v23 = 0;
  if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0()))
  {
    v20 = a1;
    v21 = a2;
    OUTLINED_FUNCTION_1();
    LogPrintF();
  }

  if (!a1)
  {
    APSLogErrorAt();
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA590];
    v15 = -6705;
LABEL_25:
    v17 = [v13 errorWithDomain:v14 code:v15 userInfo:{0, v20, v21}];
    v7 = 0;
LABEL_27:
    v9 = 0;
LABEL_29:
    v10 = 0;
    v23 = v17;
    goto LABEL_15;
  }

  KeychainItemID = APBrokerKeychainUtilsCreateKeychainItemID(a1, a2, &cf);
  if (KeychainItemID)
  {
    v16 = KeychainItemID;
    APSLogErrorAt();
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA590];
    v15 = v16;
    goto LABEL_25;
  }

  v7 = objc_opt_new();
  if (!v7)
  {
    APSLogErrorAt();
    v17 = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v18, *MEMORY[0x277CCA590]);
    goto LABEL_27;
  }

  v8 = objc_opt_new();
  v9 = v8;
  if (!v8)
  {
    APSLogErrorAt();
    v17 = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v19, *MEMORY[0x277CCA590]);
    goto LABEL_29;
  }

  [v8 setAccessGroup:@"com.apple.airplay"];
  [v9 setIdentifier:cf];
  [v9 setType:@"APBroker"];
  v10 = [v7 copyItemMatchingItem:v9 flags:0 error:&v23];
  if (!NSErrorToOSStatus())
  {
    v11 = [objc_msgSend(v10 "metadata")];
    if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0()))
    {
      OUTLINED_FUNCTION_1();
      LogPrintF();
    }

    *a3 = CFRetain(v11);
  }

LABEL_15:

  if (cf)
  {
    CFRelease(cf);
  }

  if (v23 && gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_1();
    LogPrintF();
  }

  return NSErrorToOSStatus();
}

uint64_t APBrokerKeychainUtilsCopyAllAuthTokens(CFTypeRef a1, __CFArray **a2)
{
  v37[17] = *MEMORY[0x277D85DE8];
  v37[0] = 0;
  if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0()))
  {
    v31 = a1;
    OUTLINED_FUNCTION_1();
    LogPrintF();
  }

  if (!a1 || !a2)
  {
    APSLogErrorAt();
    v28 = OUTLINED_FUNCTION_4_4(MEMORY[0x277CCA9B8], v27, *MEMORY[0x277CCA590]);
    Mutable = 0;
LABEL_39:
    v8 = 0;
    v5 = 0;
LABEL_41:
    v37[0] = v28;
    goto LABEL_29;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v28 = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v29, *MEMORY[0x277CCA590]);
    goto LABEL_39;
  }

  v5 = objc_opt_new();
  if (!v5)
  {
    APSLogErrorAt();
    v28 = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v30, *MEMORY[0x277CCA590]);
    v8 = 0;
    goto LABEL_41;
  }

  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  v7 = v6;
  v8 = _CopyAllAuthTokenKeychainItems(v5, v37);
  v9 = NSErrorToOSStatus();
  if (!v9)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = OUTLINED_FUNCTION_6_3(v9, v10, v11, v12);
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v8);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          [objc_msgSend(objc_msgSend(v17 metadata];
          v19 = v18;
          v20 = [objc_msgSend(v17 "dateModified")];
          cf2 = 0;
          if (v7 - v24 < v19)
          {
            APBrokerKeychainUtilsCopyInfoFromKeychainItemID([v17 identifier], &cf2, 0);
            v21 = cf2;
            if (cf2 == a1)
            {
              goto LABEL_19;
            }

            if (!cf2)
            {
              continue;
            }

            if (CFEqual(a1, cf2))
            {
LABEL_19:
              CFArrayAppendValue(Mutable, [objc_msgSend(v17 "metadata")]);
            }

            v20 = cf2;
            if (cf2)
            {
              CFRelease(cf2);
            }
          }
        }

        v14 = OUTLINED_FUNCTION_6_3(v20, v21, v22, v23);
      }

      while (v14);
    }

    if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0()))
    {
      OUTLINED_FUNCTION_1();
      LogPrintF();
    }

    *a2 = Mutable;
    Mutable = 0;
  }

LABEL_29:

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v37[0] && gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_1();
    LogPrintF();
  }

  result = NSErrorToOSStatus();
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void APBrokerKeychainUtilsCopyInfoFromKeychainItemID(CFStringRef theString, void *a2, void *a3)
{
  if (theString)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], theString, @"\x1C");
    v6 = ArrayBySeparatingStrings;
    if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) == 2 && (v7 = CFArrayGetValueAtIndex(v6, 0), _IsValidKeychainItemIDComponent(v7)) && (v8 = CFArrayGetValueAtIndex(v6, 1), _IsValidKeychainItemIDComponent(v8)))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      v10 = CFArrayGetValueAtIndex(v6, 1);
    }

    else
    {
      APSLogErrorAt();
      ValueAtIndex = 0;
      v10 = 0;
    }
  }

  else
  {
    ValueAtIndex = 0;
    v10 = 0;
    v6 = 0;
  }

  if (a2)
  {
    if (ValueAtIndex)
    {
      v11 = CFRetain(ValueAtIndex);
    }

    else
    {
      v11 = 0;
    }

    *a2 = v11;
  }

  if (a3)
  {
    if (v10)
    {
      v12 = CFRetain(v10);
    }

    else
    {
      v12 = 0;
    }

    *a3 = v12;
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t APBrokerKeychainUtilsStoreAuthToken_cold_1(int a1, uint64_t *a2)
{
  APSLogErrorAt();
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a1 userInfo:0];
  *a2 = result;
  return result;
}

uint64_t APBrokerKeychainUtilsStoreAuthToken_cold_3(uint64_t *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

uint64_t APBrokerKeychainUtilsStoreAuthToken_cold_4(uint64_t *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

uint64_t APBrokerKeychainUtilsStoreAuthToken_cold_5(uint64_t *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_4(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

uint64_t APBrokerKeychainUtilsStoreAuthToken_cold_6(uint64_t *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_4(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

uint64_t APBrokerKeychainUtilsStoreAuthToken_cold_7(uint64_t *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_4(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

uint64_t APBrokerKeychainUtilsStoreAuthToken_cold_8(uint64_t *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_4(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

void APBrokerKeychainUtilsCreateKeychainItemID_cold_1(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t APBrokerKeychainUtilsCreateKeychainItemID_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t APBrokerKeychainUtilsCreateKeychainItemID_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t httpconnection_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a1;
  context[1] = 1;
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (gLogCategory_APTransportConnectionHTTP <= 30 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      v5 = *(v3 + 3);
      OUTLINED_FUNCTION_7_0();
    }

    dispatch_sync_f(*(v3 + 1), context, httpconnection_deferInvalidate);
  }

  return 0;
}

void httpconnection_invalidateInternal(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || OUTLINED_FUNCTION_8()))
  {
    OUTLINED_FUNCTION_3_1();
    LogPrintF();
  }

  *DerivedStorage = 1;
  *(DerivedStorage + 108) = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = v5;
  v7 = (v5 + 240);
  if (*(v5 + 224))
  {
    v8 = *(v5 + 248);
    if ((v8 & 0x80000000) == 0)
    {
      if (close(v8) && *__error())
      {
        __error();
      }

      *(v6 + 248) = -1;
    }

    if (*v7)
    {
      APTConnectionListenerInvalidate(*v7);
      v9 = *v7;
      if (*v7)
      {
LABEL_13:
        CFRelease(v9);
        *v7 = 0;
      }
    }
  }

  else
  {
    if (*v7)
    {
      AsyncConnection_Release();
      *v7 = 0;
    }

    v7 = (v6 + 248);
    v9 = *(v6 + 248);
    if (v9)
    {
      goto LABEL_13;
    }
  }

  v10 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  *(v10 + 48);
  if (!*(v10 + 72))
  {
    goto LABEL_29;
  }

  v11 = v10;
  APTransportGetSharedTransport();
  CMBaseObject = FigTransportGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    v15 = -12782;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_30;
  }

  v14 = v13(CMBaseObject, @"TrafficRegistrar", *MEMORY[0x277CBECE8], &cf);
  if (v14)
  {
    v15 = v14;
    goto LABEL_21;
  }

  if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || OUTLINED_FUNCTION_8()))
  {
    v31 = *(v11 + 72);
    OUTLINED_FUNCTION_3_1();
    LogPrintF();
  }

  v16 = *(v11 + 72);
  if (v16)
  {
    CFRelease(v16);
    v15 = 0;
    *(v11 + 72) = 0;
    goto LABEL_30;
  }

LABEL_29:
  v15 = 0;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15 && gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v17 = *(v6 + 264);
  if (*(v6 + 256))
  {
    if (v17)
    {
      HTTPConnectionStopAsync();
      v18 = *(v6 + 264);
      if (v18)
      {
        CFRelease(v18);
        *(v6 + 264) = 0;
      }
    }

    v19 = *(v6 + 272);
    FigSimpleMutexLock();
    v20 = *(v6 + 280);
    if (v20)
    {
      dispatch_release(v20);
      *(v6 + 280) = 0;
    }

    v21 = *(v6 + 288);
    if (v21)
    {
      CFRelease(v21);
      *(v6 + 288) = 0;
    }

    v22 = *(v6 + 272);
    FigSimpleMutexUnlock();
  }

  else
  {
    if (v17)
    {
      HTTPClientInvalidate();
      CFRelease(*(v6 + 264));
      *(v6 + 264) = 0;
    }

    v23 = *(v6 + 280);
    if (v23)
    {
      CFRelease(v23);
      *(v6 + 280) = 0;
    }
  }

  if (a2)
  {
    dispatch_sync_f(*(DerivedStorage + 80), a1, httpconnection_clearCallbackState);
  }

  else
  {
    httpconnection_clearCallbackState(a1);
  }

  v24 = *(DerivedStorage + 128);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 128) = 0;
  }

  v25 = *(DerivedStorage + 352);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 352) = 0;
  }

  v26 = *(DerivedStorage + 360);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 360) = 0;
  }

  v27 = *(DerivedStorage + 32);
  if (v27)
  {
    free(v27);
    *(DerivedStorage + 32) = 0;
  }

  v28 = *(DerivedStorage + 112);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 112) = 0;
  }

  v29 = *(DerivedStorage + 120);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 120) = 0;
  }

  v30 = *(DerivedStorage + 424);
  if (v30)
  {
    dispatch_source_cancel(*(DerivedStorage + 424));
    dispatch_release(v30);
    *(DerivedStorage + 424) = 0;
  }
}

void httpconnection_handleConnectionFailure(const void *a1, int a2)
{
  valuePtr = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage && a2)
  {
    *(DerivedStorage + 108) = 4;
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    httpconnection_callEventCallbacks(a1, 4, v5, 0);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t httpconnection_connect(uint64_t a1, _BYTE *a2, int a3, int a4, int a5)
{
  v40 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v39 = 0;
  v38 = 0;
  bzero(&v22, 0xA0uLL);
  if (!a3)
  {
    a3 = *(DerivedStorage + 196);
  }

  if (*DerivedStorage)
  {
    v17 = 0;
    goto LABEL_30;
  }

  if (!a2 || !*a2)
  {
    APSLogErrorAt();
    v17 = APSSignalErrorAt();
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  time = *(DerivedStorage + 440);
  Seconds = CMTimeGetSeconds(&time);
  v10 = *(DerivedStorage + 48);
  if ((v10 & 0x1B) != 0)
  {
    v11 = 9;
  }

  else
  {
    v11 = 8;
  }

  if (*(DerivedStorage + 48) & 4 | a3)
  {
    v12 = v11;
  }

  else
  {
    v12 = (*(DerivedStorage + 48) & 0x1B) != 0;
  }

  if ((v10 & 0x20) != 0)
  {
    if (gLogCategory_APTransportConnectionHTTP <= 30 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_0();
    }

    v12 |= 0x10u;
  }

  if (a5)
  {
    v12 |= 0x8Cu;
    if (gLogCategory_APTransportConnectionHTTP <= 60 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (*(DerivedStorage + 340))
  {
    v13 = v12 | 0x1000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 | 0x400;
  if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  SNPrintF();
  v15 = CFRetain(*(DerivedStorage + 216));
  v16 = *(DerivedStorage + 8);
  v36[1] = 0u;
  v37 = 0u;
  v33 = 0;
  v36[0] = 0u;
  v34 = 160;
  v35 = &v38;
  v22 = a2;
  LODWORD(v37) = a3;
  v23 = a4;
  v24 = v14;
  v25 = 1000000000 * Seconds;
  v26 = -1;
  v27 = httpconnection_asyncConnectionProgressed;
  v28 = v15;
  v29 = httpconnection_asyncConnectionCompleted;
  v30 = v15;
  v31 = v16;
  v32 = &gLogCategory_AsyncCnxAirPlayHTTP;
  *(v36 + 12) = 0x10000007D0;
  v17 = AsyncConnection_ConnectEx();
  if (v17)
  {
    APSLogErrorAt();
    if (v15)
    {
      CFRelease(v15);
    }

LABEL_38:
    if (gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(DerivedStorage + 240))
    {
      AsyncConnection_Release();
      *(DerivedStorage + 240) = 0;
    }
  }

LABEL_30:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void httpconnection_asyncConnectionProgressed(uint64_t a1, const char *a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = MEMORY[0x277CBECE8];
  switch(a1)
  {
    case 1:
      if (gLogCategory_APTransportConnectionHTTP > 40)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_13_2();
      if (v8)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_31;
        }
      }

      goto LABEL_16;
    case 2:
      if (gLogCategory_APTransportConnectionHTTP <= 40)
      {
        OUTLINED_FUNCTION_13_2();
        if (!v8 || _LogCategory_Initialize())
        {
LABEL_16:
          LogPrintF();
        }
      }

LABEL_31:
      v21 = CFStringCreateWithCString(*v7, a2, 0x8000100u);
      goto LABEL_32;
    case 3:
      v9 = DerivedStorage;
      OUTLINED_FUNCTION_11_3();
      if (v11 ^ v12 | v8 && (v10 != -1 || OUTLINED_FUNCTION_8()))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      v14 = CMBaseObjectGetDerivedStorage();
      v15 = *(v14 + 48);
      v44 = 0;
      v43 = 0;
      v42 = 0;
      if (!*(v14 + 56))
      {
        if (gLogCategory_APTransportConnectionHTTP > 30)
        {
          goto LABEL_77;
        }

        if (gLogCategory_APTransportConnectionHTTP == -1)
        {
          OUTLINED_FUNCTION_6_4();
          if (!_LogCategory_Initialize())
          {
            goto LABEL_77;
          }
        }

        OUTLINED_FUNCTION_6_4();
        goto LABEL_76;
      }

      v16 = v14;
      v17 = (v14 + 72);
      if (*(v14 + 72))
      {
        goto LABEL_77;
      }

      v18 = v15 & 3;
      if (*a2)
      {
        v40 = v15;
        v41 = v15 & 3;
        if ((v15 & 3) == 0)
        {
          v19 = v7;
          v20 = *v7;
LABEL_53:
          APTransportGetSharedTransport();
          CMBaseObject = FigTransportGetCMBaseObject();
          v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v29)
          {
            v30 = v29(CMBaseObject, @"TrafficRegistrar", v20, &v42);
            if (!v30)
            {
              v7 = v19;
              v18 = v41;
              if (v41)
              {
                v31 = APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx(v42, &v43, 1, v40 & 2, v17);
                if (v31)
                {
                  v32 = v31;
LABEL_102:
                  APSLogErrorAt();
                  goto LABEL_60;
                }
              }

              else
              {
                v34 = APTransportTrafficRegistrarInfraTransactionCreate(v42, v17);
                if (v34)
                {
                  v32 = v34;
                  goto LABEL_102;
                }
              }

              OUTLINED_FUNCTION_11_3();
              if (v11 ^ v12 | v8 && (v35 != -1 || OUTLINED_FUNCTION_8()))
              {
                v36 = *v17;
                if (v41)
                {
                  v37 = *(v16 + 57) == 0;
                }

                v38 = *(v16 + 64);
                OUTLINED_FUNCTION_3_1();
LABEL_76:
                LogPrintF();
              }

LABEL_77:
              v32 = 0;
              goto LABEL_78;
            }

            v32 = v30;
          }

          else
          {
            v32 = -12782;
          }

          APSLogErrorAt();
          v7 = v19;
          v18 = v41;
LABEL_60:
          if (gLogCategory_APTransportConnectionHTTP <= 90)
          {
            if (gLogCategory_APTransportConnectionHTTP != -1 || (OUTLINED_FUNCTION_6_4(), _LogCategory_Initialize()))
            {
              if (v18)
              {
                v33 = *(v16 + 57) != 0;
              }

              v39 = *(v16 + 64);
              LogPrintF();
            }
          }

          goto LABEL_78;
        }

        if (gLogCategory_APTransportConnectionHTTP <= 30)
        {
          if (gLogCategory_APTransportConnectionHTTP != -1 || (OUTLINED_FUNCTION_6_4(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_4();
            LogPrintF();
          }
        }

        PeerMACAddress = GetPeerMACAddress();
        if (!PeerMACAddress)
        {
          OUTLINED_FUNCTION_11_3();
          if (v11 ^ v12 | v8 && (v24 != -1 || OUTLINED_FUNCTION_8()))
          {
            OUTLINED_FUNCTION_3_1();
            LogPrintF();
          }

          v45 = 0;
          cf = 0;
          APTransportGetSharedTransport();
          v19 = v7;
          v20 = *v7;
          v25 = FigTransportGetCMBaseObject();
          v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v26 || v26(v25, @"WifiManagerClient", v20, &cf) || APTransportWifiManagerClientGetPeerRSSI(cf, &v43, &v45))
          {
            APSLogErrorAt();
          }

          else
          {
            OUTLINED_FUNCTION_11_3();
            if (v11 ^ v12 | v8 && (v27 != -1 || OUTLINED_FUNCTION_8()))
            {
              OUTLINED_FUNCTION_3_1();
              LogPrintF();
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_53;
        }

        v32 = PeerMACAddress;
        APSLogErrorAt();
        if (gLogCategory_APTransportConnectionHTTP <= 90)
        {
          if (gLogCategory_APTransportConnectionHTTP != -1 || (OUTLINED_FUNCTION_6_4(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_4();
            LogPrintF();
          }

          goto LABEL_60;
        }
      }

      else
      {
        APSLogErrorAt();
        v32 = APSSignalErrorAt();
        if (v32)
        {
          goto LABEL_60;
        }
      }

LABEL_78:
      if (v42)
      {
        CFRelease(v42);
      }

      if (v32)
      {
        if (gLogCategory_APTransportConnectionHTTP <= 90)
        {
          if (gLogCategory_APTransportConnectionHTTP != -1 || (OUTLINED_FUNCTION_6_4(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_4();
            LogPrintF();
          }
        }

        *(v9 + 496) = v32;
        if (*(v9 + 240))
        {
          AsyncConnection_Release();
          *(v9 + 240) = 0;
        }
      }

      else
      {
        v21 = CFDataCreate(*v7, a2, 28);
LABEL_32:
        v22 = v21;
        if (v21)
        {
          OUTLINED_FUNCTION_9_2(v5, a1);
          CFRelease(v22);
        }
      }

LABEL_34:
      CFRelease(v5);
      return;
    case 4:
      OUTLINED_FUNCTION_11_3();
      if (v11 ^ v12 | v8 && (v13 != -1 || OUTLINED_FUNCTION_8()))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      goto LABEL_34;
    default:
      goto LABEL_34;
  }
}

void httpconnection_asyncConnectionCompleted(int a1, int a2, const void *a3)
{
  *&v15.sa_len = 0;
  *&v15.sa_data[6] = 0;
  v17 = 0;
  v16 = 0;
  v14 = 0;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6)
  {
    v10 = 0;
    if (a1 < 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  if (!a2 || (v9 = *(DerivedStorage + 496)) == 0)
  {
    v9 = a2;
  }

  if (*DerivedStorage)
  {
    goto LABEL_45;
  }

  if (v9)
  {
    APSLogErrorAt();
LABEL_45:
    v10 = 0;
    goto LABEL_13;
  }

  v14 = 28;
  if (getpeername(a1, &v15, &v14))
  {
    v10 = 0;
  }

  else
  {
    v10 = CFDataCreate(*MEMORY[0x277CBECE8], &v15.sa_len, 28);
  }

  v9 = httpconnection_handleConnectionEstablished(v6, a1);
  if (v9)
  {
    APSLogErrorAt();
  }

  else
  {
    *(v8 + 108) = 5;
    OUTLINED_FUNCTION_9_2(v6, 5);
  }

  a1 = -1;
LABEL_13:
  if (*(v8 + 240))
  {
    AsyncConnection_Release();
    *(v8 + 240) = 0;
  }

  a2 = v9;
  if ((a1 & 0x80000000) == 0)
  {
LABEL_16:
    if (close(a1) && *__error())
    {
      __error();
    }
  }

LABEL_19:
  if (a2)
  {
    if (gLogCategory_APTransportConnectionHTTP <= 90)
    {
      OUTLINED_FUNCTION_13_2();
      if (!v11 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }

    if (v6)
    {
      if (a2 == 97)
      {
        v12 = -71882;
      }

      else
      {
        v12 = a2;
      }

      if (a2 == 13)
      {
        v13 = -71880;
      }

      else
      {
        v13 = v12;
      }

      httpconnection_handleConnectionFailure(v6, v13);
    }
  }

  else if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || OUTLINED_FUNCTION_8()))
  {
    OUTLINED_FUNCTION_3_1();
    LogPrintF();
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(a3);
}

void httpconnection_handleConnectionClosed(uint64_t a1)
{
  v2 = *(a1 + 384);
  valuePtr = -72320;
  if (v2)
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v3)
    {
      v4 = v3;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!*DerivedStorage)
      {
        v6 = DerivedStorage;
        if (*(DerivedStorage + 108) == 5)
        {
          if (gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_15();
          }

          *(v6 + 108) = 6;
          v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
          OUTLINED_FUNCTION_9_2(v4, 6);
          if (v7)
          {
            CFRelease(v7);
          }
        }
      }

      CFRelease(v4);
    }
  }

  else
  {
    APSLogErrorAt();
  }

  v8 = *(a1 + 384);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 384) = 0;
  }
}

uint64_t APTransportConnectionHTTPCreate_cold_2(_DWORD *a1, uint64_t *a2)
{
  result = APSLogErrorAt();
  *a1 = -72322;
  if (gLogCategory_APTransportConnectionHTTP <= 90)
  {
    if (gLogCategory_APTransportConnectionHTTP != -1 || (result = _LogCategory_Initialize(), result))
    {
      v5 = *a2;
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t APTransportConnectionHTTPCreate_cold_3(uint64_t *a1, _BYTE *a2)
{
  *a2;
  v3 = *a1;
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

uint64_t APTransportConnectionHTTPCreate_cold_5(uint64_t *a1, CMTime *a2)
{
  v2 = *a1;
  time = *a2;
  CMTimeGetSeconds(&time);
  return LogPrintF();
}

uint64_t APTransportConnectionHTTPCreate_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionHTTPCreate_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionHTTPCreate_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionHTTPCreate_cold_10()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  return OUTLINED_FUNCTION_5_4();
}

uint64_t APTransportConnectionHTTPCreate_cold_11()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  return OUTLINED_FUNCTION_5_4();
}

uint64_t APTransportConnectionHTTPCreate_cold_12()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  return OUTLINED_FUNCTION_5_4();
}

uint64_t APTransportConnectionHTTPCreate_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12780;
  return result;
}

uint64_t httpconnection_resumeInternal_cold_2()
{
  if (gLogCategory_APTransportConnectionHTTP <= 30)
  {
    if (gLogCategory_APTransportConnectionHTTP != -1)
    {
      return OUTLINED_FUNCTION_7_0();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_7_0();
    }
  }

  return result;
}

uint64_t httpconnection_resumeInternal_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t httpconnection_deferCallEventCallbackForGroupID_cold_1(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

uint64_t httpconnection_handleListenerConnected_cold_4()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t httpconnection_handleListenerConnected_cold_5(int a1)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_15();
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t httpconnection_addEventCallbackInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t httpconnection_addEventCallbackInternal_cold_3()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t httpconnection_sendPackageInternal_cold_1(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 80);
  if (v5)
  {
    v6 = *(VTable + 16) + 80;
    v5(v3);
  }

  return OUTLINED_FUNCTION_7_0();
}

uint64_t httpconnection_sendPackageInternal_cold_2(void *a1)
{
  v1 = a1[1027];
  v2 = a1[1065];
  v3 = a1[1066];
  return LogHTTP();
}

_BYTE *httpconnection_sendPackageInternal_cold_7(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v3)
  {
    v3(v2);
  }

  return httpconnection_callEventCallbacks(v1, 8, v2, 0);
}

void tcpconnection_invalidateInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    APTTrafficMetricsConnectionClosed(*(DerivedStorage + 240));
    if (gLogCategory_APTransportConnectionTCP <= 30 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
    {
      v9 = *a1;
      v10 = *(v4 + 16);
      OUTLINED_FUNCTION_7_0();
    }

    *v4 = 1;
    v5 = *a1;
    tcpconnection_cleanUp();
    if (*(a1 + 8))
    {
      v6 = *(v4 + 24);
      v7 = *a1;

      dispatch_sync_f(v6, v7, tcpconnection_clearCallbackState);
    }

    else
    {
      v8 = *a1;

      tcpconnection_clearCallbackState();
    }
  }
}

_BYTE *tcpconnection_callEventCallback(const void *a1, uint64_t a2, const void *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v6 = result;
    if (a3)
    {
      CFRetain(a3);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v7 = *(v6 + 3);
    return APSDispatchAsyncFHelper();
  }

  return result;
}

void tcpconnection_receivedData(uint64_t *a1)
{
  v1 = *a1;
  valuePtr = 0;
  targetBBuf = 0;
  v21 = 0;
  theBuffer = 0;
  dataPointerOut = 0;
  cf = 0;
  if (v1)
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v2)
    {
      goto LABEL_18;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v4 = DerivedStorage;
      if (*(DerivedStorage + 176) == 5)
      {
        v5 = *MEMORY[0x277CBECE8];
        v6 = *MEMORY[0x277CBECF0];
        HIDWORD(valuePtr) = OUTLINED_FUNCTION_6_5(*(DerivedStorage + 200), &theBuffer, v15);
        if (HIDWORD(valuePtr))
        {
          goto LABEL_33;
        }

        HIDWORD(valuePtr) = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
        if (HIDWORD(valuePtr))
        {
          goto LABEL_33;
        }

        v7 = *(*(v4 + 152) + 24);
        v8 = *(v4 + 200);
        OUTLINED_FUNCTION_9_3();
        v10 = v9();
        HIDWORD(valuePtr) = v10;
        if (v10)
        {
          if (v10 != -6723)
          {
            APSLogErrorAt();
          }

          v13 = CMBaseObjectGetDerivedStorage();
          if (!*v13)
          {
            APTTrafficMetricsConnectionClosed(*(v13 + 240));
            tcpconnection_cleanUp();
          }

          v14 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr + 4);
          tcpconnection_callEventCallback(v2, 6, v14);
          if (v14)
          {
            CFRelease(v14);
          }

          goto LABEL_16;
        }

        HIDWORD(valuePtr) = (*(v4 + 208))(theBuffer, &valuePtr);
        if (HIDWORD(valuePtr))
        {
          goto LABEL_33;
        }

        if (valuePtr)
        {
          HIDWORD(valuePtr) = OUTLINED_FUNCTION_6_5(valuePtr, &targetBBuf, v16);
          if (HIDWORD(valuePtr))
          {
            goto LABEL_33;
          }

          HIDWORD(valuePtr) = CMBlockBufferGetDataPointer(targetBBuf, 0, 0, 0, &v21);
          if (HIDWORD(valuePtr))
          {
            goto LABEL_33;
          }

          v11 = *(*(v4 + 152) + 24);
          OUTLINED_FUNCTION_9_3();
          HIDWORD(valuePtr) = v12();
          if (HIDWORD(valuePtr))
          {
            goto LABEL_33;
          }

          HIDWORD(valuePtr) = CMBlockBufferAppendBufferReference(theBuffer, targetBBuf, 0, 0, 0);
          if (HIDWORD(valuePtr))
          {
            goto LABEL_33;
          }
        }

        HIDWORD(valuePtr) = (*(v4 + 216))(v5, theBuffer, &cf);
        if (HIDWORD(valuePtr))
        {
LABEL_33:
          APSLogErrorAt();
        }

        else
        {
          tcpconnection_callEventCallback(v2, 7, cf);
        }
      }

      else
      {
        HIDWORD(valuePtr) = -72320;
      }
    }
  }

  else
  {
    APSLogErrorAt();
    HIDWORD(valuePtr) = -72322;
    OUTLINED_FUNCTION_5_5(0xE57Eu);
    APSSignalErrorAt();
    v2 = 0;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_18:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (targetBBuf)
  {
    CFRelease(targetBBuf);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t APTransportConnectionTCPCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionTCPCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  *a1 = -72323;
  return OUTLINED_FUNCTION_5_4();
}

uint64_t APTransportConnectionTCPCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  *a1 = -72323;
  return OUTLINED_FUNCTION_5_4();
}

uint64_t APTransportConnectionTCPCreate_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_5();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t tcpconnection_copyPropertyInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t tcpconnection_copyPropertyInternal_cold_2()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE580u);

  return APSSignalErrorAt();
}

uint64_t tcpconnection_copyPropertyInternal_cold_4()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE580u);

  return APSSignalErrorAt();
}

uint64_t tcpconnection_resumeInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

void tcpconnection_resumeInternal_cold_4(CFTypeRef cf, CFTypeRef *a2, int a3)
{
  if (*a2)
  {
    CFRelease(*a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a3)
  {
    APSLogErrorAt();
  }
}

uint64_t tcpconnection_handleListenerConnected_cold_4()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t tcpconnection_setupDataSocketReadSource_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE57Du);

  return APSSignalErrorAt();
}

uint64_t tcpconnection_setupDataSocketReadSource_cold_2()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE57Du);

  return APSSignalErrorAt();
}

uint64_t tcpconnection_setupDataSocketReadSource_cold_3()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE57Cu);

  return APSSignalErrorAt();
}

uint64_t tcpconnection_acquirePackageInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t tcpconnection_acquirePackageInternal_cold_3(uint64_t *a1, uint64_t **a2)
{
  v3 = *a1;
  v4 = **a2;
  return OUTLINED_FUNCTION_7_0();
}

uint64_t tcpconnection_acquirePackageWithMessageSizeInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t tcpconnection_acquirePackageWithMessageSizeInternal_cold_3(uint64_t *a1, uint64_t **a2, uint64_t *a3)
{
  v5 = **a2;
  v6 = *a3;
  v4 = *a1;
  return OUTLINED_FUNCTION_7_0();
}

uint64_t tcpconnection_sendPackageInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t tcpconnection_sendPackageInternal_cold_5(uint64_t *a1)
{
  v1 = *a1;
  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 16) + 24);
  if (v3)
  {
    v4 = *(VTable + 16) + 24;
    v3(v1);
  }

  return LogPrintF();
}

uint64_t tcpconnection_sendPackageInternal_cold_6()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE57Du);

  return APSSignalErrorAt();
}

uint64_t APAdvertiserInfoCreateAirPlayServiceName(uint64_t a1, void *a2)
{
  if (!a2)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  if (!a1)
  {
    return 4294960591;
  }

  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), @"deviceName");
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  pthread_mutex_unlock((a1 + 16));
  result = 0;
  *a2 = v5;
  return result;
}

void APAdvertiserInfoCreate_cold_2(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  CFRelease(a2);
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(), result))
    {
      result = OUTLINED_FUNCTION_11();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_2()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(), result))
    {
      result = OUTLINED_FUNCTION_11();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_4()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(), result))
    {
      result = OUTLINED_FUNCTION_11();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_5()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(), result))
    {
      result = OUTLINED_FUNCTION_11();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t _APAdvertiserInfoAddAirPlayData_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(), result))
    {
      result = OUTLINED_FUNCTION_11();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCreateWithSidePlayDataAndDeviceName_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(), result))
    {
      result = OUTLINED_FUNCTION_11();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_4()
{
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1)
    {
      return OUTLINED_FUNCTION_11();
    }

    result = OUTLINED_FUNCTION_7();
    if (result)
    {
      return OUTLINED_FUNCTION_11();
    }
  }

  return result;
}

uint64_t APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType_cold_3()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(), result))
    {
      result = OUTLINED_FUNCTION_11();
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCopyRAOPData_cold_10()
{
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1)
    {
      return OUTLINED_FUNCTION_11();
    }

    result = OUTLINED_FUNCTION_7();
    if (result)
    {
      return OUTLINED_FUNCTION_11();
    }
  }

  return result;
}

uint64_t APAdvertiserInfoCopyRAOPData_cold_11()
{
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1)
    {
      return OUTLINED_FUNCTION_11();
    }

    result = OUTLINED_FUNCTION_7();
    if (result)
    {
      return OUTLINED_FUNCTION_11();
    }
  }

  return result;
}

void APAdvertiserInfoCreateRAOPServiceName_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx_cold_3(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

void _APBonjourBrowserHandleAirPlayPartialEvent(int a1, uint64_t a2, _WORD *a3)
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

        if (_APBonjourBrowserHandleRestartedEvent(a3, @"AirPlayPartial"))
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

void _APBonjourBrowserHandleAirPlayNANEvent(int a1, const __CFDictionary *a2, _WORD *a3)
{
  if (!a3)
  {
LABEL_32:

    APSLogErrorAt();
    return;
  }

  if ((a1 - 1) < 2)
  {
    if (a3[20])
    {
      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      CFArrayGetTypeID();
      v7 = CFDictionaryGetTypedValue();
      if (TypedValue)
      {
        Count = CFArrayGetCount(TypedValue);
        if (Count >= 1)
        {
          v9 = Count;
          for (i = 0; i != v9; ++i)
          {
            CFArrayGetValueAtIndex(TypedValue, i);
            v11 = OUTLINED_FUNCTION_18();
            _APBonjourBrowserHandleDeviceEventForAirPlayNANService(v11, v12, a2, v13);
          }
        }
      }

      if (v7)
      {
        v14 = CFArrayGetCount(v7);
        if (v14 >= 1)
        {
          v15 = v14;
          for (j = 0; j != v15; ++j)
          {
            CFArrayGetValueAtIndex(v7, j);
            v17 = OUTLINED_FUNCTION_19();
            _APBonjourBrowserHandleDeviceEventForAirPlayNANService(v17, v18, a2, v19);
          }
        }
      }
    }
  }

  else if (a1 == 3)
  {
    if (gLogCategory_APBonjourBrowser <= 40 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_7()))
    {
      OUTLINED_FUNCTION_11();
    }

    v20 = _APBonjourBrowserHandleStopEvent(a3);
    CFRelease(a3);
    if (v20)
    {
      goto LABEL_32;
    }
  }

  else if (a1 == 4)
  {
    if (gLogCategory_APBonjourBrowser <= 60)
    {
      OUTLINED_FUNCTION_5_6();
      if (!v4 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }

    if (_APBonjourBrowserHandleRestartedEvent(a3, @"AirPlayNAN"))
    {
      goto LABEL_32;
    }
  }

  else if (gLogCategory_APBonjourBrowser <= 90)
  {
    OUTLINED_FUNCTION_5_6();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void _APBonjourBrowserInvalidate(_DWORD *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (v3)
  {
    do
    {
      OUTLINED_FUNCTION_14_1(v3);
    }

    while (v3);
    if (!*(v2 + 211))
    {
      OUTLINED_FUNCTION_16();
      if (!v5)
      {
        goto LABEL_8;
      }
    }

LABEL_4:
    v4 = 0;
    goto LABEL_10;
  }

  if (*(v2 + 211))
  {
    goto LABEL_4;
  }

LABEL_8:
  v6 = OUTLINED_FUNCTION_1_7();
  v7 = v6;
  if (!v6)
  {
    APSLogErrorAt();
    v4 = -72210;
    goto LABEL_11;
  }

  *v6 = 2;
  v4 = _APBonjourBrowserEnqueueOperation(v2, v6);
  if (v4)
  {
    APSLogErrorAt();
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  _APBonjourBrowserOperationDisposeNullSafe(v7);
  a1[2] = v4;
}

uint64_t *_APBonjourBrowserGetMode(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 32);
  if (v2)
  {
    v3 = *(*result + 32);
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    if (!*(v1 + 211) && *v4 != 2)
    {
      *(result + 4) = *(v1 + 40);
      do
      {
        if (!*v2)
        {
          *(result + 4) = *(v2 + 8);
        }

        v2 = *(v2 + 24);
      }

      while (v2);
    }
  }

  else if (!*(v1 + 211))
  {
    *(result + 4) = *(v1 + 40);
  }

  *(result + 3) = 0;
  return result;
}

void __APBonjourBrowserSetWiFiSystemReady_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    if (*(v2 + 211) || *v4 == 2)
    {
      goto LABEL_14;
    }
  }

  else if (*(v2 + 211))
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (!*(v2 + 216))
  {
    APSLogErrorAt();
    v6 = 0;
    OUTLINED_FUNCTION_3_6();
LABEL_20:
    *(v10 + 24) = v11;
    goto LABEL_15;
  }

  v5 = OUTLINED_FUNCTION_1_7();
  v6 = v5;
  if (!v5)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_3_6();
    v11 = v12 + 1;
    goto LABEL_20;
  }

  *v5 = 3;
  if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_8_0()))
  {
    v13 = *(a1 + 40);
    OUTLINED_FUNCTION_7_0();
  }

  _APBonjourBrowserEnqueueOperation(*(a1 + 40), v6);
  OUTLINED_FUNCTION_8_1();
  *(v8 + 24) = v7;
  OUTLINED_FUNCTION_8_1();
  if (!*(v9 + 24))
  {
    goto LABEL_14;
  }

  APSLogErrorAt();
LABEL_15:

  _APBonjourBrowserOperationDisposeNullSafe(v6);
}

void __APBonjourBrowserSetAWDLSystemReady_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    if (*(v2 + 211) || *v4 == 2)
    {
      goto LABEL_14;
    }
  }

  else if (*(v2 + 211))
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (!*(v2 + 216))
  {
    APSLogErrorAt();
    v6 = 0;
    OUTLINED_FUNCTION_3_6();
LABEL_20:
    *(v10 + 24) = v11;
    goto LABEL_15;
  }

  v5 = OUTLINED_FUNCTION_1_7();
  v6 = v5;
  if (!v5)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_3_6();
    v11 = v12 + 1;
    goto LABEL_20;
  }

  *v5 = 4;
  if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_8_0()))
  {
    v13 = *(a1 + 40);
    OUTLINED_FUNCTION_7_0();
  }

  _APBonjourBrowserEnqueueOperation(*(a1 + 40), v6);
  OUTLINED_FUNCTION_8_1();
  *(v8 + 24) = v7;
  OUTLINED_FUNCTION_8_1();
  if (!*(v9 + 24))
  {
    goto LABEL_14;
  }

  APSLogErrorAt();
LABEL_15:

  _APBonjourBrowserOperationDisposeNullSafe(v6);
}

uint64_t _APBonjourBrowserSetEventHandler(uint64_t result)
{
  v1 = result;
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(*result + 32);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *(v4 + 24);
    }

    while (v4);
    if (!*(v2 + 211) && *v5 != 2)
    {
      goto LABEL_8;
    }

LABEL_4:
    v6 = 0;
    goto LABEL_14;
  }

  if (*(v2 + 211))
  {
    goto LABEL_4;
  }

LABEL_8:
  v7 = *(v2 + 216);
  if (v7)
  {
    v8 = v7 == v3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v6 = 0;
    *(v2 + 216) = v3;
  }

  else
  {
    result = APSLogErrorAt();
    v6 = -72211;
  }

LABEL_14:
  *(v1 + 24) = v6;
  return result;
}

void _APBonjourBrowserReconfirmDevice(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(*a1 + 32);
  if (v7)
  {
    do
    {
      OUTLINED_FUNCTION_14_1(v7);
    }

    while (v7);
    if (*(v4 + 211))
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_16();
    if (v8)
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 211))
  {
    goto LABEL_36;
  }

  if (!v3 || !v6)
  {
    goto LABEL_38;
  }

  if (!*(v4 + 40))
  {
    APSLogErrorAt();
    v1 = -72213;
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(v3, @"name");
  if (!Value)
  {
    APSLogErrorAt();
    v1 = -72212;
    goto LABEL_37;
  }

  v1 = Value;
  if (CFEqual(v6, *(v4 + 80)))
  {
    v10 = *(v4 + 96);
    BonjourBrowser_ReconfirmDeviceEx();
    if (gLogCategory_APBonjourBrowser <= 40 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_7()))
    {
      OUTLINED_FUNCTION_11();
    }

    if (!*(v4 + 104))
    {
      goto LABEL_36;
    }

    BonjourBrowser_ReconfirmDeviceEx();
    if (gLogCategory_APBonjourBrowser > 40 || gLogCategory_APBonjourBrowser == -1 && !OUTLINED_FUNCTION_7())
    {
      goto LABEL_36;
    }

LABEL_30:
    OUTLINED_FUNCTION_11();
    goto LABEL_36;
  }

  if (CFStringHasPrefix(v6, @"AirPlayNAN"))
  {
    if (*(v4 + 176))
    {
      v11 = *(v4 + 184);
      BonjourBrowser_ReconfirmDeviceEx();
      if (gLogCategory_APBonjourBrowser > 40 || gLogCategory_APBonjourBrowser == -1 && !OUTLINED_FUNCTION_7())
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (CFEqual(v6, @"RAOP"))
  {
    if (*(v4 + 114))
    {
      v12 = *(v4 + 120);
      BonjourBrowser_ReconfirmDeviceEx();
      if (gLogCategory_APBonjourBrowser > 40 || gLogCategory_APBonjourBrowser == -1 && !OUTLINED_FUNCTION_7())
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

LABEL_38:
    OUTLINED_FUNCTION_13_3();
    APSLogErrorAt();
    goto LABEL_37;
  }

LABEL_36:
  v1 = 0;
LABEL_37:
  *(a1 + 8) = v1;
}

void _APBonjourBrowserTickleDetailedMode(_DWORD *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (!v3)
  {
    if (!*(v2 + 211))
    {
      goto LABEL_8;
    }

LABEL_4:
    v4 = 0;
    goto LABEL_37;
  }

  do
  {
    OUTLINED_FUNCTION_14_1(v3);
  }

  while (v3);
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
  if (*(v2 + 40) != 2)
  {
    APSLogErrorAt();
    v4 = -72213;
    goto LABEL_37;
  }

  if (APSIsAPMSpeaker() || !*(v2 + 57))
  {
    goto LABEL_4;
  }

  *&v11.sa_len = 0;
  *&v11.sa_data[6] = 0;
  v13 = 0;
  v12 = 0;
  v6 = socket(30, 2, 0);
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  if (!*__error())
  {
    v4 = -6700;
    goto LABEL_28;
  }

  v4 = *__error();
  if (v4)
  {
LABEL_28:
    APSLogErrorAt();
LABEL_29:
    APSLogErrorAt();
    goto LABEL_37;
  }

LABEL_14:
  v14 = if_nametoindex("awdl0");
  if (!v14)
  {
    APSLogErrorAt();
    v4 = -72214;
    goto LABEL_32;
  }

  v7 = StringToSockAddr();
  if (v7)
  {
    v4 = v7;
LABEL_45:
    APSLogErrorAt();
    goto LABEL_32;
  }

  v8 = setsockopt(v6, 41, 125, &v14, 4u);
  if (v8)
  {
    v4 = v8;
    goto LABEL_45;
  }

  SocketSetP2P();
  v9 = SocketSetNonBlocking();
  if (v9)
  {
    v4 = v9;
    goto LABEL_45;
  }

  if (sendto(v6, "dummy", 6uLL, 0, &v11, 0x1Cu) == 6 || *__error() && !*__error())
  {
    if (gLogCategory_APBonjourBrowser <= 40 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_7()))
    {
      OUTLINED_FUNCTION_11();
    }

    v4 = 0;
  }

  else
  {
    v4 = -72215;
    APSLogErrorAt();
    if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
    {
      v10 = *__error();
      LogPrintF();
    }
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0 && close(v6) && *__error())
  {
    __error();
  }

  if (v4)
  {
    goto LABEL_29;
  }

LABEL_37:
  a1[2] = v4;
}

void **_APBonjourBrowserCopyInterfaceName(void **result)
{
  v1 = result;
  v2 = *result;
  v3 = (*result)[4];
  if (v3)
  {
    v4 = (*result)[4];
    do
    {
      v5 = v4;
      v4 = *(v4 + 24);
    }

    while (v4);
    if (!*(v2 + 211) && *v5 != 2)
    {
      v6 = v2[6];
      do
      {
        if (*v3 == 1)
        {
          v6 = *(v3 + 8);
        }

        v3 = *(v3 + 24);
      }

      while (v3);
      if (v6)
      {
LABEL_11:
        result = CFStringCreateCopy(*MEMORY[0x277CBECE8], v6);
        *v1[1] = result;
        if (!*v1[1])
        {
          result = APSLogErrorAt();
          v7 = -72210;
          goto LABEL_16;
        }

        goto LABEL_12;
      }

LABEL_15:
      v7 = 0;
      *result[1] = 0;
      goto LABEL_16;
    }
  }

  else if (!*(v2 + 211))
  {
    v6 = v2[6];
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = 0;
LABEL_16:
  *(v1 + 4) = v7;
  return result;
}

void _APBonjourBrowserSetInterfaceName(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(v3 + 32);
  if (v4)
  {
    do
    {
      OUTLINED_FUNCTION_14_1(v4);
    }

    while (v4);
    if (!*(v3 + 211))
    {
      OUTLINED_FUNCTION_16();
      if (!v7)
      {
        goto LABEL_8;
      }
    }

LABEL_4:
    v5 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  if (*(v3 + 211))
  {
    goto LABEL_4;
  }

LABEL_8:
  if (v2)
  {
    if (!CFStringGetLength(v2))
    {
      APSLogErrorAt();
      v5 = 0;
      v6 = -72211;
      goto LABEL_16;
    }

    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 8));
    if (!Copy)
    {
      v6 = -72210;
      APSLogErrorAt();
LABEL_15:
      v5 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    Copy = 0;
  }

  v9 = OUTLINED_FUNCTION_1_7();
  v5 = v9;
  if (v9)
  {
    *v9 = 1;
    v9[1] = Copy;
    v6 = _APBonjourBrowserEnqueueOperation(v3, v9);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = -72210;
  }

  APSLogErrorAt();
  if (Copy)
  {
    CFRetain(Copy);
  }

LABEL_16:
  _APBonjourBrowserOperationDisposeNullSafe(v5);
  *(a1 + 16) = v6;
}

void _APBonjourBrowserHandleDeviceEventForAirPlayNANService(const void *a1, uint64_t a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_5();
  if (v10 ^ v11 | v9 && (v8 != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  v12 = IsAppleInternalBuild();
  v13 = MEMORY[0x277CBECE8];
  if (!v12)
  {
    goto LABEL_29;
  }

  v43 = 0;
  bzero(v45, 0x400uLL);
  bzero(bytes, 0x200uLL);
  length = 0;
  if (!IsAppleInternalBuild() || (DeviceID = BonjourDevice_GetDeviceID()) == 0)
  {
LABEL_98:
    APSLogErrorAt();
    goto LABEL_29;
  }

  if (DeviceID != APSSettingsGetInt64() || !APSSettingsGetCString())
  {
LABEL_29:
    Value = CFDictionaryGetValue(a4, @"nanEP");
    if (!Value)
    {
      goto LABEL_84;
    }

    v21 = [Value customData];
    if (!v21)
    {
      goto LABEL_84;
    }

    v18 = CFRetain(v21);
    if (!v18)
    {
      goto LABEL_84;
    }

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_5();
  if (v10 ^ v11 | v9 && (v15 != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  v43 = HexToData();
  if (v43)
  {
    v43 = -6705;
    if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_4_5();
  if (v10 ^ v11 | v9 && (v16 != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  v17 = CFDataCreate(*v13, bytes, length);
  if (!v17)
  {
    goto LABEL_98;
  }

  v18 = v17;
  OUTLINED_FUNCTION_4_5();
  if (v10 ^ v11 | v9 && (v19 != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_4_5();
  if (v10 ^ v11 | v9)
  {
    if (v23 != -1 || OUTLINED_FUNCTION_8_0())
    {
      OUTLINED_FUNCTION_7_0();
    }

LABEL_32:
    OUTLINED_FUNCTION_4_5();
    if (v10 ^ v11 | v9 && (v22 != -1 || OUTLINED_FUNCTION_8_0()))
    {
      OUTLINED_FUNCTION_7_0();
    }
  }

  TXTRecordFromBinaryTXTRecord = CreateTXTRecordFromBinaryTXTRecord();
  OUTLINED_FUNCTION_4_5();
  if (v10 ^ v11 | v9 && (v25 != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  *bytes = a4;
  LOBYTE(length) = 0;
  bzero(v45, 0x100uLL);
  v26 = *v13;
  MutableCopy = CFDictionaryCreateMutableCopy(*v13, 0, a3);
  if (!MutableCopy)
  {
    APSLogErrorAt();
    goto LABEL_73;
  }

  v28 = CFArrayCreate(v26, bytes, 1, MEMORY[0x277CBF128]);
  if (!v28)
  {
    APSLogErrorAt();
LABEL_92:
    CFRelease(MutableCopy);
    MutableCopy = 0;
    goto LABEL_73;
  }

  v29 = v28;
  if (a2)
  {
    v30 = @"removedServices";
  }

  else
  {
    v30 = @"services";
  }

  if (a2)
  {
    v31 = @"services";
  }

  else
  {
    v31 = @"removedServices";
  }

  CFDictionarySetValue(MutableCopy, v30, v28);
  CFDictionaryRemoveValue(MutableCopy, v31);
  CFDictionaryGetCString();
  v32 = CFDataGetLength(TXTRecordFromBinaryTXTRecord);
  BytePtr = CFDataGetBytePtr(TXTRecordFromBinaryTXTRecord);
  if (!TXTRecordGetValuePtr(v32, BytePtr, "deviceid", &length))
  {
    APSLogErrorAt();
    CFRelease(v29);
    goto LABEL_92;
  }

  if (strncmpx())
  {
    OUTLINED_FUNCTION_4_5();
    if (v10 ^ v11 | v9 && (v34 != -1 || OUTLINED_FUNCTION_8_0()))
    {
      OUTLINED_FUNCTION_7_0();
    }

    CFDictionarySetCString();
  }

  v35 = CFDataGetLength(TXTRecordFromBinaryTXTRecord);
  v36 = CFDataGetBytePtr(TXTRecordFromBinaryTXTRecord);
  if (TXTRecordContainsKey(v35, v36, "model"))
  {
    v37 = @"AirPlayNANFull";
  }

  else
  {
    v37 = @"AirPlayNANFull";
    if (!TXTRecordContainsKey(v35, v36, "serialNumber") && !TXTRecordContainsKey(v35, v36, "psi"))
    {
      v37 = @"AirPlayNANPartial";
    }
  }

  CFDictionarySetValue(MutableCopy, @"serviceType", v37);
  CFDictionarySetValue(MutableCopy, @"txt", TXTRecordFromBinaryTXTRecord);
  OUTLINED_FUNCTION_4_5();
  if (v10 ^ v11 | v9 && (v38 != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  CFRelease(v29);
LABEL_73:
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  OUTLINED_FUNCTION_4_5();
  if (v10 ^ v11 | v9 && (v40 != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  if (_APBonjourBrowserHandleDeviceEvent(a1, a2, MutableCopy, TypedValue))
  {
    APSLogErrorAt();
    if (!MutableCopy)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (MutableCopy)
  {
LABEL_80:
    CFRelease(MutableCopy);
  }

LABEL_81:
  if (TXTRecordFromBinaryTXTRecord)
  {
    CFRelease(TXTRecordFromBinaryTXTRecord);
  }

  CFRelease(v18);
LABEL_84:
  v41 = *MEMORY[0x277D85DE8];
}

uint64_t APBonjourBrowserCreate_cold_2(uint64_t a1)
{
  v1 = *(a1 + 208);
  OUTLINED_FUNCTION_20();
  return LogPrintF();
}

uint64_t APBonjourBrowserCreate_cold_11(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_20();
  return OUTLINED_FUNCTION_7_0();
}

uint64_t _APBonjourBrowserProcessOperationQueue_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_22(a1);
  *v2;
  v3 = *v1;
  OUTLINED_FUNCTION_6_7();
  return OUTLINED_FUNCTION_7_0();
}

uint64_t _APBonjourBrowserProcessOperationQueue_cold_3(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_22(a1);
  *v2;
  v3 = *v1;
  OUTLINED_FUNCTION_6_7();
  return OUTLINED_FUNCTION_7_0();
}

uint64_t _APBonjourBrowserProcessOperationQueue_cold_4()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t _APBonjourBrowserHandleDeviceEvent_cold_2(const __CFData *a1)
{
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  return LogPrintF();
}

uint64_t _APBonjourBrowserHandleDeviceEvent_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72212;
  return result;
}

void udpconnection_offlineContextFinalizer(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      nw_release(v3);
    }

    free(a1);
  }
}

uint64_t udpconnection_SendBatch(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || !a2)
  {
    OUTLINED_FUNCTION_18_0();
    APSLogErrorAt();
    return a1;
  }

  v5 = DerivedStorage;
  if (*DerivedStorage)
  {
    APSLogErrorAt();
    return 4294894970;
  }

  if (CFArrayGetCount(a2) < 1)
  {
    return 0;
  }

  v6 = *(v5 + 48);
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = v7;
  if (v6 == 3)
  {
    if (*(v7 + 144) == 5)
    {
      v9 = *(v7 + 72);
      *(v9 + 72) = mach_absolute_time();
      v10 = v8[7];
      APSWrapperGetValue();
      if (FigSimpleMutexTryLock())
      {
        udpconnection_sendBatchInternal(a1, a2);
        v11 = v8[7];
        APSWrapperGetValue();
        FigSimpleMutexUnlock();
      }

      else if (gLogCategory_APTransportConnectionUDPNW <= 30)
      {
        if (gLogCategory_APTransportConnectionUDPNW != -1 || (OUTLINED_FUNCTION_10_4(), _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_1();
          LogPrintF();
        }
      }
    }

    return 0;
  }

  cf = CFRetain(a1);
  v16 = CFRetain(a2);
  v12 = v8[11];
  if (APSAtomicMessageQueueSendMessage())
  {
    cf = 0;
    v16 = 0;
    v13 = v8[12];
    APSRealTimeSignalRaise();
    a1 = 0;
  }

  else
  {
    APSLogErrorAt();
    a1 = 4294960549;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return a1;
}

uint64_t udpconnection_RunInline()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 192) != 3)
  {
    return 4294894975;
  }

  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 72);
  *(v2 + 72) = mach_absolute_time();
  v3 = v1[8];
  if ((atomic_fetch_or_explicit(APSWrapperGetValue(), 0, memory_order_relaxed) & 3) != 1)
  {
    v4 = v1[10];
    APSRealTimeSignalRaise();
    return 0;
  }

  v6 = v1[7];
  Value = APSWrapperGetValue();
  if (udpconnection_runInlineInternal(Value, v1[4], 0) || gLogCategory_APTransportConnectionUDPNW > 30)
  {
    return 0;
  }

  if (gLogCategory_APTransportConnectionUDPNW != -1 || (OUTLINED_FUNCTION_10_4(), result = _LogCategory_Initialize(), result))
  {
    OUTLINED_FUNCTION_1();
    LogPrintF();
    return 0;
  }

  return result;
}

void udpconnectionInlineInactivityMonitor_fire(uint64_t a1)
{
  v2 = mach_absolute_time();
  v24 = 0;
  if (a1)
  {
    v3 = v2;
    v4 = *(a1 + 72);
    v5 = MillisecondsToUpTicks();
    v6 = *(a1 + 64);
    if (v5 + v4 > v3)
    {
      if (*(a1 + 64))
      {
        if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || OUTLINED_FUNCTION_8()))
        {
          v21 = *(a1 + 24);
          OUTLINED_FUNCTION_3_1();
          LogPrintF();
        }

        *(a1 + 64) = 0;
      }

      v7 = UpTicksToNanoseconds();
      v8 = dispatch_time(0, v7);
      v9 = *(a1 + 40);
      CFRetain(a1);
      OUTLINED_FUNCTION_5_7();
      dispatch_after_f(v8, v9, v10, v11);
      goto LABEL_10;
    }

    if (!*(a1 + 64))
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || OUTLINED_FUNCTION_8()))
      {
        v22 = *(a1 + 24);
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      *(a1 + 64) = 1;
    }

    v12 = *(a1 + 32);
    v13 = FigCFWeakReferenceHolderCopyReferencedObject();
    v14 = *(a1 + 56);
    Value = APSWrapperGetValue();
    udpconnection_runInlineInternal(Value, *(a1 + 48), &v24);
    if (v24 && (*(a1 + 17) & 1) != 0)
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || OUTLINED_FUNCTION_8()))
      {
        v23 = *(a1 + 24);
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      v20 = *(a1 + 48);
      nw_context_cancel();
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = dispatch_time(0, 20000000);
      v17 = *(a1 + 40);
      CFRetain(a1);
      OUTLINED_FUNCTION_5_7();
      dispatch_after_f(v16, v17, v18, v19);
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    CFRelease(v13);
LABEL_10:
    CFRelease(a1);
  }
}

uint64_t udpconnection_runInlineInternal(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = FigSimpleMutexTryLock();
  if (v4)
  {
    OUTLINED_FUNCTION_20_0();
    v5 = nw_context_run_queued_blocks_inline();
    OUTLINED_FUNCTION_20_0();
    FigSimpleMutexUnlock();
    if (a3)
    {
      *a3 = v5 ^ 1;
    }
  }

  return v4;
}

uint64_t udpconnection_receiveDataLoop(uint64_t result)
{
  if (!*(result + 16))
  {
    v1 = result;
    APTTrafficMetricsMessageReadStarted(*(result + 88));
    CFRetain(v1);
    v2 = v1[5];
    return nw_connection_receive_multiple();
  }

  return result;
}

void __udpconnection_receiveDataLoop_block_invoke(uint64_t a1, dispatch_data_t data, uint64_t a3, int a4, NSObject *a5)
{
  v9 = *(*(a1 + 32) + 88);
  if (data)
  {
    dispatch_data_get_size(data);
    if (!a5)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a5)
  {
LABEL_3:
    nw_error_get_error_code(a5);
  }

LABEL_5:
  APTTrafficMetricsMessageReadFinished(v9);
  v10 = *(a1 + 32);
  cf = 0;
  v26 = 0;
  if (*(v10 + 16))
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_36;
  }

  if (!a5)
  {
    if (!data)
    {
      APSLogErrorAt();
      if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || OUTLINED_FUNCTION_9_0()))
      {
        v24 = *(v10 + 24);
        OUTLINED_FUNCTION_15();
      }

      goto LABEL_31;
    }

    if (*(v10 + 80))
    {
      if (APSRealTimeReadableRingBufferWrite())
      {
        APSLogErrorAt();
        goto LABEL_31;
      }

      v14 = *(v10 + 96);
      v15 = *(v10 + 72);
      v28 = 0;
      v27 = 0;
      if (v15 == APTransportPackageRTPCreateWithBBuf && APSDispatchDataCopyBytes())
      {
        APSLogErrorAt();
      }

      udpconnection_markSignPostExplicit(v14);
      v12 = 0;
    }

    else
    {
      v16 = *(v10 + 32);
      v12 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (!v12)
      {
        goto LABEL_33;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      APSRealTimeAllocatorGetDefault();
      if (APSCMBlockBufferCreateWithDispatchData())
      {
        APSLogErrorAt();
        APSSignalErrorAt();
        goto LABEL_33;
      }

      v18 = *(DerivedStorage + 152);
      Default = APSRealTimeAllocatorGetDefault();
      if (v18(Default, v26, &cf))
      {
        APSLogErrorAt();
        goto LABEL_33;
      }

      udpconnection_getSequenceNumberForPackage(cf);
      v20 = CMBaseObjectGetDerivedStorage();
      udpconnection_markSignPostExplicit(*(v20 + 384));
      udpconnection_callEventCallback(v12, 7, cf);
    }

    if (*(v10 + 64) && (atomic_fetch_and_explicit(APSWrapperGetValue(), 0xFFFFFFFD, memory_order_relaxed) & 2) != 0 && gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      v23 = *(v10 + 24);
      LogPrintF();
    }

    goto LABEL_33;
  }

  error_code = nw_error_get_error_code(a5);
  if (nw_error_get_error_domain(a5) == nw_error_domain_posix && error_code == 89)
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_34;
  }

  v12 = nw_error_copy_cf_error(a5);
  if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || OUTLINED_FUNCTION_9_0()))
  {
    v22 = *(v10 + 24);
    OUTLINED_FUNCTION_15();
  }

  if (v12)
  {
    CFRelease(v12);
LABEL_31:
    v13 = 0;
    v12 = 0;
    goto LABEL_34;
  }

LABEL_33:
  v13 = 0;
LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_36:
  if (v26)
  {
    CFRelease(v26);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  APTTrafficMetricsMessageProcessed(*(*(a1 + 32) + 88));
  if (v13 || a4)
  {
    if (!v13)
    {
      udpconnection_receiveDataLoop(*(a1 + 32));
    }

    v21 = *(a1 + 32);
    if (v21)
    {
      CFRelease(v21);
    }
  }

  else
  {
    APTTrafficMetricsMessageReadStarted(*(*(a1 + 32) + 88));
  }
}