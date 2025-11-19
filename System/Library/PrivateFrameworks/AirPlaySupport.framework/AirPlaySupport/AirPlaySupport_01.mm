intptr_t APSPowerAssertionRaiseTemporary(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL);
  if (gLogCategory_APSPowerAssertion <= 50 && (gLogCategory_APSPowerAssertion != -1 || _LogCategory_Initialize()))
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 40);
    LogPrintF();
  }

  IOPMAssertionSetProperty(*(a1 + 48), @"TimeoutSeconds", *(a1 + 40));
  IOPMAssertionSetProperty(*(a1 + 48), @"AssertLevel", *(a1 + 24));
  v2 = *(a1 + 16);

  return dispatch_semaphore_signal(v2);
}

intptr_t APSPowerAssertionRaise(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 52);
  *(a1 + 52) = v2 + 1;
  if (v2)
  {
    if (gLogCategory_APSPowerAssertion > 50)
    {
      goto LABEL_12;
    }

    if (gLogCategory_APSPowerAssertion != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *(a1 + 52);
LABEL_4:
      v6 = *(a1 + 64);
      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_APSPowerAssertion <= 50 && (gLogCategory_APSPowerAssertion != -1 || _LogCategory_Initialize()))
    {
      v7 = *(a1 + 64);
      LogPrintF();
    }

    IOPMAssertionSetProperty(*(a1 + 56), @"AssertLevel", *(a1 + 24));
  }

LABEL_12:
  v4 = *(a1 + 16);

  return dispatch_semaphore_signal(v4);
}

intptr_t APSPowerAssertionRelease(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 52);
  if (v2 < 1)
  {
    v3 = *(a1 + 52);
LABEL_7:
    if (gLogCategory_APSPowerAssertion > 50)
    {
      goto LABEL_14;
    }

    if (gLogCategory_APSPowerAssertion == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v4 = *(a1 + 52);
    }

    v8 = *(a1 + 64);
    LogPrintF();
    goto LABEL_14;
  }

  *(a1 + 52) = v2 - 1;
  if (v2 != 1)
  {
    goto LABEL_7;
  }

  if (gLogCategory_APSPowerAssertion <= 50 && (gLogCategory_APSPowerAssertion != -1 || _LogCategory_Initialize()))
  {
    v7 = *(a1 + 64);
    LogPrintF();
  }

  IOPMAssertionSetProperty(*(a1 + 56), @"AssertLevel", *(a1 + 32));
LABEL_14:
  v5 = *(a1 + 16);

  return dispatch_semaphore_signal(v5);
}

uint64_t APCompressionTypeGetBufferSize(int a1, uint64_t a2)
{
  if (a1 > 3)
  {
    if (a1 != 4 && a1 != 8)
    {
      return 0;
    }
  }

  else if (a1 != 1)
  {
    if (a1 == 2)
    {
      return iceil2();
    }

    return 0;
  }

  return a2;
}

uint64_t APCompressionTypeFillStreamDescription(int a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  switch(a1)
  {
    case 2:
      *a2 = a3;
      *(a2 + 8) = 1634492771;
      if (a4 == 24)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }

      if (a4 == 20)
      {
        v8 = 2;
      }

      else
      {
        v8 = v7;
      }

      if (a4 == 16)
      {
        v5 = 1;
      }

      else
      {
        v5 = v8;
      }

      v6 = 352;
      goto LABEL_16;
    case 8:
      v5 = 0;
      *a2 = a3;
      *(a2 + 8) = 1633772389;
      v6 = 480;
      goto LABEL_16;
    case 4:
      v5 = 0;
      *a2 = a3;
      *(a2 + 8) = 1633772320;
      v6 = 1024;
LABEL_16:
      result = 0;
      *(a2 + 12) = v5;
      *(a2 + 16) = 0;
      *(a2 + 20) = v6;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 28) = a5;
      return result;
  }

  return 4294960561;
}

uint64_t APSAPAPExtensionConvertSbufTracerDictToBBuf(uint64_t a1, void *a2)
{
  v11 = 0;
  blockBufferOut = 0;
  if (!a2)
  {
    APSLogErrorAt(0);
    v3 = 0;
    v9 = -6705;
LABEL_13:
    v11 = v9;
    goto LABEL_10;
  }

  v3 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
  if (!v3)
  {
    v9 = -6728;
    goto LABEL_13;
  }

  v4 = *MEMORY[0x277CD62D0];
  *v3 = CFDictionaryGetInt64Ranged();
  if (!v11)
  {
    v5 = *MEMORY[0x277CD62C8];
    CFDictionaryGetCString();
    v11 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v3, 0x14uLL, *MEMORY[0x277CBECF0], 0, 0, 0x14uLL, 0, &blockBufferOut);
    if (blockBufferOut)
    {
      v6 = CFRetain(blockBufferOut);
      v7 = blockBufferOut;
      *a2 = v6;
      if (v7)
      {
        CFRelease(v7);
      }

      v3 = 0;
    }

    else
    {
      v3 = 0;
      *a2 = 0;
    }
  }

LABEL_10:
  free(v3);
  return v11;
}

uint64_t APSAPAPExtensionConvertSbufTracerBBufToSbufTracerDict(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  dataPointerOut = 0;
  if (a2 && (CMBlockBufferGetDataPointer(a1, 0, 0, 0, &dataPointerOut), CMBlockBufferGetDataLength(a1) == 20))
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = *dataPointerOut;
      UInt32 = FigCFNumberCreateUInt32();
      if (UInt32)
      {
        v9 = UInt32;
        v10 = CFStringCreateWithCString(v4, dataPointerOut + 4, 0x8000100u);
        if (v10)
        {
          v11 = v10;
          CFDictionarySetValue(v6, *MEMORY[0x277CD62D0], v9);
          CFDictionarySetValue(v6, *MEMORY[0x277CD62C8], v11);
          *a2 = CFRetain(v6);
          CFRelease(v9);
          v12 = v11;
        }

        else
        {
          APSLogErrorAt(0);
          v12 = v9;
        }

        CFRelease(v12);
      }

      else
      {
        APSLogErrorAt(0);
      }

      CFRelease(v6);
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

uint64_t APSRTCReportingGetTypeID()
{
  if (gAPSRTCReportingInitOnce != -1)
  {
    dispatch_once_f(&gAPSRTCReportingInitOnce, 0, _APSRTCReportingGetTypeID);
  }

  return gAPSRTCReportingTypeID;
}

uint64_t _APSRTCReportingGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRTCReportingTypeID = result;
  return result;
}

void _APSRTCReportingFinalize(void *a1)
{
  if (gLogCategory_APSRTCReporting <= 50 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    if (apsrr_getWeakRefTable_once != -1)
    {
      dispatch_once(&apsrr_getWeakRefTable_once, &__block_literal_global_230);
    }

    v6 = apsrr_getWeakRefTable_table;

    MEMORY[0x282112758](v6, v5);
  }
}

uint64_t __apsrr_getWeakRefTable_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  result = FigCFWeakReferenceTableCreate();
  if (result)
  {
    if (gLogCategory_APSRTCReporting <= 90)
    {
      if (gLogCategory_APSRTCReporting != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t APSRTCReportingCreateOrCopy(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, _DWORD *a5)
{
  cf = 0;
  v17 = 0;
  if (!a4)
  {
    APSLogErrorAt(0);
    return 72301;
  }

  if (FigCFDictionaryGetCount() || CFPreferencesGetAppBooleanValue(@"useDynamicRTCSessionIDs", @"com.apple.airplay", 0))
  {
    v10 = APSRTCReportingCreate(a1, a2, a3, &cf, &v17);
    if (!v10)
    {
      if (gLogCategory_APSRTCReporting <= 50 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_16;
    }

    v14 = v10;
    APSLogErrorAt(v10);
    v13 = cf;
    if (!cf)
    {
      return v14;
    }

LABEL_21:
    CFRelease(v13);
    return v14;
  }

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
  v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@", a1, a2);
  if (apsrr_initializeReporterStash_onceToken != -1)
  {
    dispatch_once(&apsrr_initializeReporterStash_onceToken, &__block_literal_global_73);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __apsrr_copyOrCreateSharedReporterForClientAndService_block_invoke;
  block[3] = &unk_2784A2610;
  block[4] = &v20;
  block[5] = &v24;
  block[8] = a1;
  block[9] = a2;
  block[6] = &v28;
  block[7] = v11;
  dispatch_sync(gAPReporting_SharedAgentStashQueue, block);
  v12 = *(v29 + 6);
  if (!v12)
  {
    v13 = v21[3];
    cf = v13;
    v21[3] = 0;
    v17 = *(v25 + 6);
    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  APSLogErrorAt(v12);
  v16 = v21[3];
  if (v16)
  {
    CFRelease(v16);
  }

  v13 = 0;
  if (v11)
  {
LABEL_14:
    CFRelease(v11);
  }

LABEL_15:
  v14 = *(v29 + 6);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  if (v14)
  {
    APSLogErrorAt(v14);
    if (!v13)
    {
      return v14;
    }

    goto LABEL_21;
  }

LABEL_16:
  *a4 = cf;
  v14 = 0;
  if (a5)
  {
    *a5 = v17;
  }

  return v14;
}

void sub_2222C68B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t APSRTCReportingCreate(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, uint32_t *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  if (CFPreferencesGetAppBooleanValue(@"useDynamicRTCSessionIDs", @"com.apple.airplay", 0))
  {
    v7 = arc4random();
  }

  else
  {
    v7 = 1234;
  }

  v28 = 0;
  pthread_once(&gAPReportingInitOnce, apsrr_RTCReportingInitOnce);
  if ((sRTCreportingFrameworkIsValid & 1) == 0)
  {
    APSLogErrorAt(0);
    v21 = 72302;
    goto LABEL_30;
  }

  if (!a4)
  {
    APSLogErrorAt(0);
    v21 = 72301;
    goto LABEL_30;
  }

  if (![objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")])
  {
    [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v21 = 72300;
    APSLogErrorAt(0);
    APSLogErrorAt(72300);
    goto LABEL_30;
  }

  v9 = Mutable;
  FigCFDictionarySetValue();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v10 = CFRetain(v9);
  CFRelease(v9);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v21 = 72300;
    APSLogErrorAt(0);
    APSLogErrorAt(72300);
    v13 = 0;
    goto LABEL_26;
  }

  v12 = MutableCopy;
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v13 = CFRetain(v12);
  CFRelease(v12);
  if (!v13)
  {
    v21 = 72300;
    APSLogErrorAt(0);
    goto LABEL_26;
  }

  if (gAPSRTCReportingInitOnce != -1)
  {
    dispatch_once_f(&gAPSRTCReportingInitOnce, 0, _APSRTCReportingGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    v21 = 4294960568;
    goto LABEL_26;
  }

  v15 = Instance;
  *(Instance + 48) = 0;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  SNPrintF();
  Key = dispatch_queue_create(label, 0);
  v15[2] = Key;
  if (Key)
  {
    Key = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v15[5] = Key;
    if (Key)
    {
      if (apsrr_getWeakRefTable_once != -1)
      {
        dispatch_once(&apsrr_getWeakRefTable_once, &__block_literal_global_230);
      }

      Key = FigCFWeakReferenceTableAddValueAndGetKey();
      if (!Key)
      {
        v15[4] = v28;
        v17 = sRTCReportingAPI_InitWithSessionInfoDict(v10, v13, gFrameworkList, &__block_literal_global_14);
        v15[3] = v17;
        if (v17)
        {
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __APSRTCReportingCreate_block_invoke_2;
          v27[3] = &__block_descriptor_48_e21_v16__0____CFString__8l;
          v27[4] = v15;
          v27[5] = 0;
          sRTCReportingAPI_SetMessageBlock(v17, v27);
          v18 = v15[3];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __APSRTCReportingCreate_block_invoke_3;
          v26[3] = &__block_descriptor_48_e20_v16__0____CFArray__8l;
          v26[4] = v28;
          v26[5] = v15;
          sRTCReportingAPI_StartConfiguration(v18, v26);
          CFRetain(v15);
          v19 = dispatch_time(0, 30000000000);
          v20 = v15[2];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __APSRTCReportingCreate_block_invoke_4;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = v15;
          dispatch_after(v19, v20, block);
          if (gLogCategory_APSRTCReporting <= 40 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
          {
            v24 = v15[3];
            LogPrintF();
          }

          v21 = 0;
          *a4 = CFRetain(v15);
          *a5 = v7;
        }

        else
        {
          APSLogErrorAt(0);
          v21 = 0;
        }

        goto LABEL_25;
      }

      v21 = Key;
    }

    else
    {
      v21 = 72300;
    }
  }

  else
  {
    v21 = 72300;
  }

  APSLogErrorAt(Key);
LABEL_25:
  CFRelease(v15);
LABEL_26:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_30:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void __apsrr_copyOrCreateSharedReporterForClientAndService_block_invoke(void *a1)
{
  v2 = a1[7];
  v3 = *(a1[4] + 8);
  v4 = *(a1[5] + 8);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (!CFDictionaryGetValue(gAPReporting_SharedAgentWeakReferences, v2))
  {
    goto LABEL_12;
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = *(v5 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __apsrr_copySharedReportingForClientAndServiceInternal_block_invoke;
  block[3] = &unk_2784A3308;
  block[4] = &v28;
  block[5] = v6;
  dispatch_sync(v7, block);
  if (*(v29 + 24))
  {
    CFDictionaryRemoveValue(gAPReporting_SharedAgentWeakReferences, v2);
    if (gLogCategory_APSRTCReporting <= 90 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRelease(v6);
LABEL_12:
    _Block_object_dispose(&v28, 8);
    v9 = a1[7];
    v8 = a1[8];
    v10 = a1[9];
    v11 = *(a1[4] + 8);
    v12 = *(a1[5] + 8);
    block[0] = 0;
    LODWORD(v28) = 0;
    v13 = APSRTCReportingCreate(v8, v10, 0, block, &v28);
    if (v13)
    {
      v17 = v13;
      APSLogErrorAt(v13);
    }

    else
    {
      v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v14)
      {
        v15 = v14;
        CFDictionarySetValue(gAPReporting_SharedAgentWeakReferences, v9, v14);
        v16 = v28;
        FigCFDictionarySetInt32();
        *(v11 + 24) = block[0];
        block[0] = 0;
        *(v12 + 24) = v16;
        CFRelease(v15);
        v17 = 0;
      }

      else
      {
        v17 = 72300;
        APSLogErrorAt(0);
        APSSignalErrorAt(72300);
      }
    }

    if (block[0])
    {
      CFRelease(block[0]);
    }

    *(*(a1[6] + 8) + 24) = v17;
    if (gLogCategory_APSRTCReporting <= 50 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
    {
      v25 = a1[9];
      v26 = *(*(a1[6] + 8) + 24);
      v21 = *(*(a1[5] + 8) + 24);
      v23 = a1[8];
      v19 = *(*(a1[4] + 8) + 24);
      goto LABEL_20;
    }

    return;
  }

  *(v3 + 24) = v6;
  FigCFDictionaryGetInt32IfPresent();
  _Block_object_dispose(&v28, 8);
  if (gLogCategory_APSRTCReporting <= 30 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
  {
    v22 = a1[8];
    v24 = a1[9];
    v18 = *(*(a1[4] + 8) + 24);
    v20 = *(*(a1[5] + 8) + 24);
LABEL_20:
    LogPrintF();
  }
}

void sub_2222C72BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef __apsrr_initializeReporterStash_block_invoke()
{
  gAPReporting_SharedAgentStashQueue = dispatch_queue_create("APSRTCReportingStashQueue", 0);
  v0 = *MEMORY[0x277CBECE8];
  v1 = MEMORY[0x277CBF138];
  v2 = MEMORY[0x277CBF150];
  gAPReporting_SharedAgentWeakReferences = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = CFDictionaryCreateMutable(v0, 0, v1, v2);
  gAPReporting_SharedAgentSessionIDs = result;
  return result;
}

uint64_t __APSRTCReportingCreate_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTCReporting <= 40)
  {
    v1 = result;
    if (gLogCategory_APSRTCReporting != -1 || (result = _LogCategory_Initialize(), result))
    {
      v3 = *(v1 + 40);
      v2 = *(v1 + 32);
      return LogPrintF();
    }
  }

  return result;
}

void __APSRTCReportingCreate_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (apsrr_getWeakRefTable_once != -1)
  {
    dispatch_once(&apsrr_getWeakRefTable_once, &__block_literal_global_230);
  }

  v3 = FigCFWeakReferenceTableCopyValue();
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_APSRTCReporting <= 50 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
    {
      v7 = v4[3];
      LogPrintF();
    }

    v5 = v4[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __apsrr_setIsSetupToSendMsg_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v4;
    dispatch_sync(v5, block);
    CFRelease(v4);
  }

  else if (gLogCategory_APSRTCReporting <= 50 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
  {
    v6 = *(a1 + 40);
    LogPrintF();
  }
}

void __APSRTCReportingCreate_block_invoke_4(uint64_t a1)
{
  apsrr_setReportingToDead(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void apsrr_setReportingToDead(uint64_t a1)
{
  if (!*(a1 + 49) && !*(a1 + 48))
  {
    *(a1 + 49) = 1;
    if (gLogCategory_APSRTCReporting <= 90 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
    {
      CFArrayGetCount(*(a1 + 40));
      LogPrintF();
    }

    v2 = *(a1 + 40);

    CFArrayRemoveAllValues(v2);
  }
}

void __apsrr_setIsSetupToSendMsg_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 49))
  {
    *(v1 + 48) = 1;
    CFArrayGetCount(*(v1 + 40));
    CFArrayApplyBlock();
    CFArrayRemoveAllValues(*(v1 + 40));
    return;
  }

  if (gLogCategory_APSRTCReporting <= 60)
  {
    if (gLogCategory_APSRTCReporting != -1)
    {
LABEL_6:
      LogPrintF();
      return;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *(a1 + 32);
      goto LABEL_6;
    }
  }
}

void __apsrr_sendCachedMsgs_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  Int64 = CFDictionaryGetInt64();
  v5 = CFDictionaryGetInt64();
  Value = CFDictionaryGetValue(a2, @"MsgPayload");
  v7 = CFDictionaryGetValue(a2, @"CompletionHandler");
  v8 = *(a1 + 32);

  apsrr_sendOneMsg(v8, Int64, v5, Value, v7);
}

void apsrr_sendOneMsg(void *a1, __int16 a2, __int16 a3, CFTypeRef cf, uint64_t a5)
{
  v6 = 72301;
  if (a1)
  {
    if (sRTCreportingFrameworkIsValid == 1)
    {
      if (cf)
      {
        CFRetain(cf);
        CFRetain(a1);
        v11 = a1[2];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __apsrr_sendOneMsg_block_invoke;
        v13[3] = &unk_2784A2638;
        v14 = a2;
        v15 = a3;
        v13[5] = a1;
        v13[6] = cf;
        v13[4] = a5;
        dispatch_async(v11, v13);
        return;
      }

      v6 = 72303;
    }

    else
    {
      v6 = 72302;
    }
  }

  APSLogErrorAt(0);
  if (a5)
  {
    v12 = *(a5 + 16);

    v12(a5, 0, v6);
  }
}

void __apsrr_sendOneMsg_block_invoke(uint64_t a1)
{
  v14 = 0;
  v2 = *(*(a1 + 40) + 24);
  if (!v2)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_22;
    }

    v3 = 0;
LABEL_18:
    Code = 0;
    goto LABEL_19;
  }

  v3 = sRTCReportingAPI_SendMessageWithError(v2, *(a1 + 56), *(a1 + 58), *(a1 + 48), &v14);
  if (gLogCategory_APSRTCReporting <= 40 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
  {
    v13 = *(a1 + 58);
    v10 = *(a1 + 56);
    v12 = *(a1 + 48);
    v8 = *(a1 + 40);
    LogPrintF();
  }

  v5 = v14;
  if ((v3 & 1) == 0 && v14)
  {
    if (gLogCategory_APSRTCReporting <= 90 && (gLogCategory_APSRTCReporting != -1 || (v6 = _LogCategory_Initialize(), v5 = v14, v6)))
    {
      v11 = *(a1 + 56);
      v9 = *(a1 + 40);
      LogPrintF();
      v3 = 0;
      v5 = v14;
    }

    else
    {
      v3 = 0;
    }
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_20;
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  Code = CFErrorGetCode(v5);
  v4 = *(a1 + 32);
LABEL_19:
  (*(v4 + 16))(v4, v3, Code);
  v5 = v14;
LABEL_20:
  if (v5)
  {
    CFRelease(v5);
  }

LABEL_22:
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

void *apsrr_RTCReportingInitOnce()
{
  result = dlopen("/System/Library/PrivateFrameworks/RTCReporting.framework/RTCReporting", 1);
  if (result)
  {
    v1 = result;
    gFrameworkList = CFArrayCreate(*MEMORY[0x277CBECE8], &apsrr_RTCReportingInitOnce_frameworkList, 1, 0);
    sRTCReportingAPI_InitWithSessionInfo = dlsym(v1, "RTCReportingInitWithSessionInfo");
    sRTCReportingAPI_InitWithSessionInfoDict = dlsym(v1, "RTCReportingInitWithSessionInfoDict");
    sRTCReportingAPI_StartConfiguration = dlsym(v1, "RTCReportingStartConfiguration");
    sRTCReportingAPI_FetchStatesWithUserInfo = dlsym(v1, "RTCReportingFetchStatesWithUserInfo");
    sRTCReportingAPI_SetMessageBlock = dlsym(v1, "RTCReportingSetMessageBlock");
    sRTCReportingAPI_SendMessageWithError = dlsym(v1, "RTCReportingSendMessageWithError");
    sRTCReportingAPI_SendMessageWithDictionary = dlsym(v1, "RTCReportingSendMessageWithDictionary");
    sRTCReportingAPI_UploadLogWithArray = dlsym(v1, "RTCReportingUploadLogWithArray");
    v2 = dlsym(v1, "kRTCReportingSessionInfoClientBundleID");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    sRTCReportingConfigParams_0 = v3;
    v4 = dlsym(v1, "kRTCReportingSessionInfoClientType");
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    sRTCReportingConfigParams_1 = v5;
    v6 = dlsym(v1, "kRTCReportingSessionInfoClientVersion");
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    sRTCReportingConfigParams_2 = v7;
    v8 = dlsym(v1, "kRTCReportingSessionInfoSessionID");
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    sRTCReportingConfigParams_3 = v9;
    v10 = dlsym(v1, "kRTCReportingSessionInfoBatchEvent");
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    sRTCReportingConfigParams_4 = v11;
    v12 = dlsym(v1, "kRTCReportingSessionInfoRequireUserInfo");
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    sRTCReportingConfigParams_5 = v13;
    v14 = dlsym(v1, "kRTCReportingSessionInfoHierarchyToken");
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    sRTCReportingConfigParams_6 = v15;
    v16 = dlsym(v1, "kRTCReportingUserInfoClientName");
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    sRTCReportingConfigParams_7 = v17;
    v18 = dlsym(v1, "kRTCReportingUserInfoServiceName");
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    sRTCReportingConfigParams_8 = v19;
    v20 = dlsym(v1, "kRTCReportingMessageParametersCategory");
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    sRTCReportingConfigParams_9 = v21;
    v22 = dlsym(v1, "kRTCReportingMessageParametersFlag");
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }

    sRTCReportingConfigParams_10 = v23;
    v24 = dlsym(v1, "kRTCReportingMessageParametersPayload");
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    sRTCReportingConfigParams_12 = v25;
    result = dlsym(v1, "kRTCReportingMessageParametersType");
    if (result)
    {
      v26 = *result;
    }

    else
    {
      v26 = 0;
    }

    sRTCReportingConfigParams_11 = v26;
    if (sRTCReportingAPI_InitWithSessionInfo)
    {
      v27 = sRTCReportingAPI_InitWithSessionInfoDict == 0;
    }

    else
    {
      v27 = 1;
    }

    v47 = !v27 && sRTCReportingAPI_StartConfiguration != 0 && sRTCReportingAPI_FetchStatesWithUserInfo != 0 && sRTCReportingAPI_SetMessageBlock != 0 && sRTCReportingAPI_SendMessageWithError != 0 && sRTCReportingAPI_SendMessageWithDictionary != 0 && sRTCReportingAPI_UploadLogWithArray != 0 && sRTCReportingConfigParams_0 != 0 && sRTCReportingConfigParams_1 != 0 && sRTCReportingConfigParams_2 != 0 && sRTCReportingConfigParams_3 != 0 && sRTCReportingConfigParams_4 != 0 && sRTCReportingConfigParams_5 != 0 && sRTCReportingConfigParams_6 != 0 && sRTCReportingConfigParams_8 != 0 && sRTCReportingConfigParams_7 != 0 && sRTCReportingConfigParams_9 != 0 && sRTCReportingConfigParams_10 != 0 && sRTCReportingConfigParams_12 != 0 && v26 != 0;
    sRTCreportingFrameworkIsValid = v47;
    if (gLogCategory_APSRTCReporting <= 40)
    {
      if (gLogCategory_APSRTCReporting != -1)
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

  else if (gLogCategory_APSRTCReporting <= 90)
  {
    if (gLogCategory_APSRTCReporting != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF();
    }
  }

  return result;
}

uint64_t APSRTCReportingSendMsg(uint64_t a1, __int16 a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v6 = 72301;
  if (a1)
  {
    if (sRTCreportingFrameworkIsValid == 1)
    {
      if (a4)
      {
        v7 = *(a1 + 16);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __APSRTCReportingSendMsg_block_invoke;
        v9[3] = &unk_2784A2580;
        v11 = a2;
        v12 = a3;
        v9[5] = a1;
        v9[6] = a4;
        v9[4] = a5;
        v10 = 0;
        dispatch_sync(v7, v9);
        return 0;
      }

      v6 = 72303;
    }

    else
    {
      v6 = 72302;
    }
  }

  APSLogErrorAt(0);
  if (a5)
  {
    (*(a5 + 16))(a5, 0, v6);
  }

  return v6;
}

void __APSRTCReportingSendMsg_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 49))
  {
    if (gLogCategory_APSRTCReporting <= 60)
    {
      if (gLogCategory_APSRTCReporting == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v12 = *(a1 + 40);
      }

      LogPrintF();
    }
  }

  else
  {
    v3 = *(a1 + 60);
    v4 = *(a1 + 62);
    v5 = *(a1 + 32);
    if (*(v2 + 48))
    {
      apsrr_sendOneMsg(*(a1 + 40), *(a1 + 60), *(a1 + 62), *(a1 + 48), *(a1 + 32));
      goto LABEL_16;
    }

    if ((sRTCreportingFrameworkIsValid & 1) == 0 || !*(a1 + 48))
    {
      goto LABEL_29;
    }

    if (CFArrayGetCount(*(v2 + 40)) >= 30)
    {
      if (gLogCategory_APSRTCReporting <= 50 && (gLogCategory_APSRTCReporting != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      apsrr_setReportingToDead(v2);
      goto LABEL_16;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
LABEL_29:
      APSLogErrorAt(0);
      goto LABEL_16;
    }

    v7 = Mutable;
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetValue();
    if (v5)
    {
      v8 = _Block_copy(v5);
      CFDictionarySetValue(v7, @"CompletionHandler", v8);
      _Block_release(v8);
    }

    CFArrayAppendValue(*(v2 + 40), v7);
    CFRelease(v7);
  }

LABEL_16:
  if (*(*(a1 + 40) + 49))
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(a1 + 56);
      v11 = *(v9 + 16);

      v11();
    }
  }
}

uint64_t APSCryptorGetNull()
{
  if (APSCryptorGetNull_sAPSCryptorNullOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetNull_sAPSCryptorNullOnce, &APSCryptorGetNull_sAPSCryptorNull, nullCryptor_create);
  }

  return APSCryptorGetNull_sAPSCryptorNull;
}

void nullCryptor_create(CFTypeRef *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (APSCryptorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetClassID_sRegisterOnce, &APSCryptorGetClassID_sClassID, cryptor_registerBaseClass);
  }

  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    *a1 = CFRetain(0);
  }
}

uint64_t nullCryptor_DecryptMessage(int a1, int a2, int a3, void *__src, size_t __len, void *__dst, size_t a7, void *a8)
{
  if (a7 < __len)
  {
    APSLogErrorAt(0);
    return 4294895585;
  }

  else
  {
    if (__dst != __src)
    {
      memmove(__dst, __src, __len);
    }

    result = 0;
    if (a8)
    {
      *a8 = __len;
    }
  }

  return result;
}

uint64_t nullCryptor_EncryptMessage(int a1, int a2, int a3, void *__src, size_t __len, void *__dst, size_t a7)
{
  if (a7 < __len)
  {
    APSLogErrorAt(0);
    return 4294895585;
  }

  else
  {
    if (__dst != __src)
    {
      memmove(__dst, __src, __len);
    }

    return 0;
  }
}

__CFString *nullCryptor_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSCryptorNull %p>", a1);
  return Mutable;
}

uint64_t APSDataPacerCongestionControlCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  v25 = 0;
  cf = 0;
  if (a5 && a2 && a3)
  {
    if (APSDataPacerGetClassID_sRegisterOnce != -1)
    {
      dispatch_once_f(&APSDataPacerGetClassID_sRegisterOnce, &APSDataPacerGetClassID_sClassID, dataPacer_registerBaseClass);
    }

    v9 = CMDerivedObjectCreate();
    v27 = v9;
    if (v9)
    {
      APSLogErrorAt(v9);
      goto LABEL_28;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 72) = CFRetain(a2);
    v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v11)
    {
      v12 = v11;
      updated = APSRateControllerAVCWrapperSetTargetBitrateDidChangeCallback(a2, congestionControlDataPacer_targetBitrateDidChangeCallback, v11);
      v27 = updated;
      if (!updated)
      {
        v14 = a4 ? CFRetain(a4) : 0;
        *(DerivedStorage + 8) = v14;
        CMNotificationCenterGetDefaultLocalCenter();
        v15 = *(DerivedStorage + 8);
        updated = FigNotificationCenterAddWeakListener();
        v27 = updated;
        if (!updated)
        {
          *DerivedStorage = CFRetain(a3);
          CMNotificationCenterGetDefaultLocalCenter();
          v16 = *DerivedStorage;
          updated = FigNotificationCenterAddWeakListener();
          v27 = updated;
          if (!updated)
          {
            APSSettingsGetDouble(@"congestionControlDataPacerInitialRateMultiplier", &v27);
            *(DerivedStorage + 24) = v17;
            *(DerivedStorage + 32) = v27 == 0;
            v27 = 0;
            APSSettingsGetDouble(@"congestionControlDataPacerMaxRateMultiplier", &v27);
            *(DerivedStorage + 40) = v18;
            *(DerivedStorage + 48) = v27 == 0;
            v27 = 0;
            updated = congestionControlDataPacer_updateRateMultiplierInternal();
            v27 = updated;
            if (!updated)
            {
              *(DerivedStorage + 16) = APSSettingsGetIntWithOverrideAndDefault(@"congestionControlDataPacerProbingRateBps", 0, 625000);
              v19 = *DerivedStorage;
              v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (v20)
              {
                updated = v20(v19, &v25);
                v27 = updated;
                if (!updated)
                {
                  v21 = v25;
                  if (v25 >> 61)
                  {
                    v21 = 0x1FFFFFFFFFFFFFFFLL;
                    v25 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  APSRateControllerAVCWrapperConfigure(*(DerivedStorage + 72), (*(DerivedStorage + 96) * (8 * v21)), 8 * v21, (*(DerivedStorage + 88) * (8 * v21)));
                  v27 = 0;
                  *(DerivedStorage + 64) = (*(DerivedStorage + 88) * v25);
                  v22 = FigSimpleMutexCreate();
                  *(DerivedStorage + 56) = v22;
                  if (v22)
                  {
                    if (gLogCategory_APSDataPacerCongestionControl <= 50 && (gLogCategory_APSDataPacerCongestionControl != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }

                    *a5 = cf;
                    cf = 0;
                  }

                  else
                  {
                    APSLogErrorAt(0);
                    v27 = -12786;
                  }

                  goto LABEL_27;
                }
              }

              else
              {
                updated = 4294954514;
                v27 = -12782;
              }
            }
          }
        }
      }

      APSLogErrorAt(updated);
LABEL_27:
      CFRelease(v12);
      goto LABEL_28;
    }

    APSLogErrorAt(0);
    v24 = -6728;
  }

  else
  {
    APSLogErrorAt(0);
    v24 = -12780;
  }

  v27 = v24;
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  return v27;
}

uint64_t congestionControlDataPacer_updateRateMultiplierInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  Count = APSDataPacerHoseCountGetCount(*(DerivedStorage + 8), &v12);
  if (Count)
  {
    v8 = Count;
    APSLogErrorAt(Count);
    return v8;
  }

  v2 = 0;
  v3 = kRateMultiplierConfig;
  do
  {
    v4 = *v3;
    v3 += 3;
    if (v12 <= v4)
    {
      break;
    }

    ++v2;
  }

  while (v2 != 3);
  v5 = &kRateMultiplierConfig[3 * v2];
  v6 = v5 + 1;
  if (*(DerivedStorage + 32))
  {
    v6 = (DerivedStorage + 24);
  }

  *(DerivedStorage + 88) = *v6;
  v7 = v5 + 2;
  if (*(DerivedStorage + 48))
  {
    v7 = (DerivedStorage + 40);
  }

  *(DerivedStorage + 96) = *v7;
  if (gLogCategory_APSDataPacerCongestionControl <= 50)
  {
    if (gLogCategory_APSDataPacerCongestionControl == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return 0;
      }

      v10 = *(DerivedStorage + 88);
      v11 = *(DerivedStorage + 96);
    }

    LogPrintF();
  }

  return 0;
}

uint64_t congestionControlDataPacer_handleDataPacingRateDidChange(uint64_t a1, uint64_t a2)
{
  result = congestionControlDataPacer_updateRateConstraints(a2, 0);
  if (result)
  {
    if (gLogCategory_APSDataPacerCongestionControl <= 90)
    {
      if (gLogCategory_APSDataPacerCongestionControl != -1)
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

uint64_t congestionControlDataPacer_updateRateConstraints(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v4 = *DerivedStorage;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5)
  {
    v6 = v5(v4, &v15);
    if (!v6)
    {
      v7 = v15;
      if (v15 >> 61)
      {
        v7 = 0x1FFFFFFFFFFFFFFFLL;
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      v8 = 8 * v7;
      v9 = *(DerivedStorage + 56);
      FigSimpleMutexLock();
      if (*(DerivedStorage + 81))
      {
        APSRateControllerAVCWrapperSetMinBitrate(*(DerivedStorage + 72), v8);
        APSRateControllerAVCWrapperSetMaxBitrate(*(DerivedStorage + 72), (*(DerivedStorage + 96) * v8));
      }

      else
      {
        if (a2)
        {
          updated = congestionControlDataPacer_updateRateMultiplierInternal();
          if (updated)
          {
            v10 = updated;
            APSLogErrorAt(updated);
            goto LABEL_16;
          }
        }

        APSRateControllerAVCWrapperConfigure(*(DerivedStorage + 72), (*(DerivedStorage + 96) * v8), v8, (*(DerivedStorage + 88) * v8));
        *(DerivedStorage + 64) = (*(DerivedStorage + 88) * v15);
        if (gLogCategory_APSDataPacerCongestionControl <= 50)
        {
          if (gLogCategory_APSDataPacerCongestionControl == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_15;
            }

            v14 = *(DerivedStorage + 64);
          }

          LogPrintF();
        }
      }

LABEL_15:
      v10 = 0;
LABEL_16:
      v12 = *(DerivedStorage + 56);
      FigSimpleMutexUnlock();
      return v10;
    }

    v10 = v6;
  }

  else
  {
    v10 = 4294954514;
  }

  APSLogErrorAt(v10);
  return v10;
}

uint64_t congestionControlDataPacer_handleHoseCountDataPacerRateDidChange(uint64_t a1, uint64_t a2)
{
  if (congestionControlDataPacer_updateRateConstraints(a2, 1) && gLogCategory_APSDataPacerCongestionControl <= 90 && (gLogCategory_APSDataPacerCongestionControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t congestionControlDataPacer_targetBitrateDidChangeCallback(uint64_t a1, unint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 56);
    FigSimpleMutexLock();
    if (*(DerivedStorage + 81))
    {
      v7 = *(DerivedStorage + 56);
      v8 = *(DerivedStorage + 64);
      *(DerivedStorage + 64) = a2 >> 3;
      FigSimpleMutexUnlock();
      if (v8 != a2 >> 3)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }
    }

    else
    {
      v9 = *(DerivedStorage + 56);
      FigSimpleMutexUnlock();
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t congestionControlDataPacer_GetPacedRate(uint64_t a1, unint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = 0;
  if (!a2)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 8);
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 16) + 8);
  if (!v7)
  {
    v19 = 4294954514;
LABEL_17:
    v20 = v19;
LABEL_20:
    APSLogErrorAt(v20);
    return v19;
  }

  v8 = *(VTable + 16) + 8;
  v9 = v7(v5, &v23);
  if (v9)
  {
    v19 = v9;
    goto LABEL_17;
  }

  v10 = *v4;
  v11 = CMBaseObjectGetVTable();
  v12 = *(*(v11 + 16) + 8);
  if (!v12)
  {
    v19 = 4294954514;
LABEL_19:
    v20 = v19;
    goto LABEL_20;
  }

  v13 = *(v11 + 16) + 8;
  v14 = v12(v10, &v22);
  if (v14)
  {
    v19 = v14;
    goto LABEL_19;
  }

  v15 = *(v4 + 56);
  FigSimpleMutexLock();
  v16 = 16;
  if (!*(v4 + 80))
  {
    v16 = 64;
  }

  v17 = *(v4 + v16);
  if (!*(v4 + 80))
  {
    if (v17 >= v23)
    {
      v17 = v23;
    }

    if (v22 > v23)
    {
      v17 = v22;
    }
  }

  *a2 = v17;
  v18 = *(v4 + 56);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t congestionControlDataPacer_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSDataPacerCongestionControl <= 30 && (gLogCategory_APSDataPacerCongestionControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = *(DerivedStorage + 72);
  if (v1)
  {
    CFRelease(v1);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 56);

  return FigSimpleMutexDestroy();
}

uint64_t APSDataPacerCongestionControlSetProbing(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 56);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 80) == a2)
  {
    v5 = *(DerivedStorage + 56);
    FigSimpleMutexUnlock();
  }

  else
  {
    *(DerivedStorage + 80) = a2;
    v6 = *(DerivedStorage + 56);
    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return 0;
}

uint64_t APSDataPacerCongestionControlSetRateControllerPrimed(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 56);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 81) == a2)
  {
    v5 = *(DerivedStorage + 56);
    FigSimpleMutexUnlock();
  }

  else
  {
    *(DerivedStorage + 81) = a2;
    v6 = *(DerivedStorage + 56);
    FigSimpleMutexUnlock();
    if (gLogCategory_APSDataPacerCongestionControl <= 50 && (gLogCategory_APSDataPacerCongestionControl != -1 || _LogCategory_Initialize()))
    {
      *(DerivedStorage + 81);
      LogPrintF();
    }
  }

  return 0;
}

uint64_t APSIOReporterGetTypeID()
{
  if (gAPSIOReporterInitOnce != -1)
  {
    dispatch_once_f(&gAPSIOReporterInitOnce, 0, _APSIOReporterGetTypeID);
  }

  return gAPSIOReporterTypeID;
}

uint64_t _APSIOReporterGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSIOReporterTypeID = result;
  return result;
}

void _APSIOReporterFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  if (gLogCategory_APSIOReporter <= 50 && (gLogCategory_APSIOReporter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t APSIOReporterCreate(void *a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (gAPSIOReporterInitOnce != -1)
  {
    dispatch_once_f(&gAPSIOReporterInitOnce, 0, _APSIOReporterGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v4 = IOServiceNameMatching("CCPipe");
    if (!v4)
    {
      APSLogErrorAt(0);
      if (gLogCategory_APSIOReporter <= 90 && (gLogCategory_APSIOReporter != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = 0;
      v6 = 0;
      goto LABEL_33;
    }

    v5 = v4;
    v6 = IOReportCopyChannelsForDrivers();
    if (v6)
    {
      Subscription = IOReportCreateSubscription();
      v3[2] = Subscription;
      if (Subscription)
      {
        if (gLogCategory_APSIOReporter <= 50 && (gLogCategory_APSIOReporter != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v8 = 0;
        *a1 = v3;
        v3 = 0;
        goto LABEL_13;
      }

      APSLogErrorAt(0);
      if (gLogCategory_APSIOReporter > 90 || gLogCategory_APSIOReporter == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_33;
      }
    }

    else
    {
      APSLogErrorAt(0);
      if (gLogCategory_APSIOReporter > 90 || gLogCategory_APSIOReporter == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_33;
      }
    }

    LogPrintF();
LABEL_33:
    v8 = 4294960534;
    goto LABEL_13;
  }

  APSLogErrorAt(0);
  v5 = 0;
  v6 = 0;
  v8 = 4294960568;
LABEL_13:
  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

uint64_t APSIOReporterGetCoreCaptureCount(uint64_t a1, void *a2)
{
  v14 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    Samples = 0;
    v8 = 4294960591;
    goto LABEL_11;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  Samples = IOReportCreateSamples();
  if (Samples)
  {
    v7 = v14 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if ((IOReportSelectChannelsInGroup() & 1) == 0 && !v14)
    {
      IOReportIterate();
      v8 = 0;
      *a2 = v11[3];
      goto LABEL_11;
    }

    APSLogErrorAt(0);
    if (gLogCategory_APSIOReporter > 90 || gLogCategory_APSIOReporter == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_26;
    }
  }

  else
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSIOReporter > 90 || gLogCategory_APSIOReporter == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_26;
    }
  }

  LogPrintF();
LABEL_26:
  v8 = 4294960534;
LABEL_11:
  if (v14)
  {
    CFRelease(v14);
  }

  if (Samples)
  {
    CFRelease(Samples);
  }

  _Block_object_dispose(&v10, 8);
  return v8;
}

uint64_t __APSIOReporterGetCoreCaptureCount_block_invoke(uint64_t a1)
{
  IntegerValue = IOReportSimpleGetIntegerValue();
  SubGroup = IOReportChannelGetSubGroup();
  ChannelName = IOReportChannelGetChannelName();
  if (SubGroup)
  {
    v5 = ChannelName;
    if (CFStringCompare(SubGroup, @"Pipe DriverLogs", 0) == kCFCompareEqualTo && v5 && CFStringHasSuffix(v5, @"Capture Requests"))
    {
      *(*(*(a1 + 32) + 8) + 24) = IntegerValue;
    }
  }

  return 0;
}

double APSDataSetStatisticsInit(uint64_t a1, int a2)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *a1 = a2;
  return result;
}

double APSDataSetStatisticsAddValue(uint64_t a1, int *a2, double result)
{
  v3 = *a1;
  if (*a1 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return result;
      }

      v5 = *a2;
      *(a1 + 8) = *a2;
      if (v5 > *(a1 + 16))
      {
        *(a1 + 16) = v5;
      }

      if (v5 < *(a1 + 24))
      {
        *(a1 + 24) = v5;
      }

      v4 = v5;
    }

    else
    {
      v8 = *a2;
      *(a1 + 8) = *a2;
      if (v8 > *(a1 + 16))
      {
        *(a1 + 16) = v8;
      }

      if (v8 < *(a1 + 24))
      {
        *(a1 + 24) = v8;
      }

      v4 = v8;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v6 = *a2;
        *(a1 + 8) = *a2;
        if (v6 > *(a1 + 16))
        {
          *(a1 + 16) = v6;
        }

        if (v6 < *(a1 + 24))
        {
          *(a1 + 24) = v6;
        }

        v4 = v6;
        break;
      case 3:
        v7 = *a2;
        *(a1 + 8) = *a2;
        if (v7 > *(a1 + 16))
        {
          *(a1 + 16) = v7;
        }

        if (v7 < *(a1 + 24))
        {
          *(a1 + 24) = v7;
        }

        v4 = v7;
        break;
      case 4:
        v4 = *a2;
        *(a1 + 8) = *a2;
        if (v4 > *(a1 + 16))
        {
          *(a1 + 16) = v4;
        }

        if (v4 < *(a1 + 24))
        {
          *(a1 + 24) = v4;
        }

        break;
      default:
        return result;
    }
  }

  v9 = *(a1 + 56) + 1;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32) + (v4 - *(a1 + 32)) / v9;
  *(a1 + 56) = v9;
  v12 = v10 + (v4 - v11) * (v4 - v11);
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  result = sqrt(v12 / v9);
  *(a1 + 48) = result;
  return result;
}

uint64_t APSBadgingFormatInfoCopyBadgeType(const opaqueCMFormatDescription *a1, const opaqueCMFormatDescription *a2, void *a3)
{
  v22 = 0;
  StreamBasicDescription = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  sizeOut = 0;
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v4 = 0;
  if (a1 && a2)
  {
    if (CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout())
    {
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(a1);
      ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(a1, &sizeOut);
      v21 = ChannelLayout;
    }

    else
    {
      ChannelLayout = v21;
    }

    v4 = 0;
    if (ChannelLayout && StreamBasicDescription)
    {
      if (CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout())
      {
        v22 = CMAudioFormatDescriptionGetStreamBasicDescription(a2);
        v8 = CMAudioFormatDescriptionGetChannelLayout(a2, &v18);
        v20 = v8;
      }

      else
      {
        v8 = v20;
      }

      v4 = 0;
      if (v8)
      {
        if (v22)
        {
          mFormatID = StreamBasicDescription->mFormatID;
          if (mFormatID > 1885547314)
          {
            if (mFormatID > 1902469938)
            {
              if (mFormatID <= 2053319474)
              {
                v12 = 1902469939;
                goto LABEL_28;
              }

              if (mFormatID == 2053464883)
              {
                goto LABEL_37;
              }

              v11 = 2053319475;
            }

            else
            {
              if (mFormatID <= 1902207794)
              {
                if (mFormatID != 1885547315)
                {
                  v10 = 1885692723;
                  goto LABEL_36;
                }

                goto LABEL_42;
              }

              if (mFormatID == 1902207795)
              {
                goto LABEL_37;
              }

              v11 = 1902324531;
            }
          }

          else if (mFormatID > 1667575090)
          {
            if (mFormatID > 1700998450)
            {
              if (mFormatID == 1700998451)
              {
                goto LABEL_37;
              }

              v10 = 1885430579;
              goto LABEL_36;
            }

            if (mFormatID == 1667575091)
            {
              goto LABEL_37;
            }

            v11 = 1700997939;
          }

          else
          {
            if (mFormatID <= 1667326770)
            {
              if (mFormatID != 1633889587)
              {
                v10 = 1667312947;
                goto LABEL_36;
              }

LABEL_37:
              if (v22->mChannelsPerFrame > 2)
              {
                v13 = @"DolbyAudio";
LABEL_51:
                v16 = CFRetain(v13);
                v4 = 0;
                *a3 = v16;
                return v4;
              }

LABEL_47:
              if (StreamBasicDescription->mChannelsPerFrame < 3 || v22->mChannelsPerFrame <= 2)
              {
                v13 = @"Stereo";
              }

              else
              {
                v13 = @"Surround";
              }

              goto LABEL_51;
            }

            if (mFormatID == 1667326771)
            {
              goto LABEL_37;
            }

            v11 = 1667574579;
          }

          if (mFormatID != v11)
          {
            goto LABEL_47;
          }

LABEL_42:
          if (v22->mChannelsPerFrame >= 3)
          {
            mChannelLayoutTag = v8->mChannelLayoutTag;
            v13 = @"DolbyAtmos";
            if (mChannelLayoutTag <= 12713991)
            {
              if (mChannelLayoutTag == 12582924)
              {
                goto LABEL_51;
              }

              v15 = 12648464;
            }

            else
            {
              if (mChannelLayoutTag == 12713992 || mChannelLayoutTag == 12779530)
              {
                goto LABEL_51;
              }

              v15 = 12845066;
            }

            if (mChannelLayoutTag == v15)
            {
              goto LABEL_51;
            }
          }

          if (mFormatID <= 1885692722)
          {
            if (mFormatID > 1700998450)
            {
              v10 = 1885547315;
            }

            else
            {
              if (mFormatID == 1667574579)
              {
                goto LABEL_37;
              }

              v10 = 1700997939;
            }

LABEL_36:
            if (mFormatID != v10)
            {
              goto LABEL_47;
            }

            goto LABEL_37;
          }

          if (mFormatID <= 1902469938)
          {
            v10 = 1902324531;
            goto LABEL_36;
          }

          v12 = 2053319475;
LABEL_28:
          if (mFormatID == v12)
          {
            goto LABEL_37;
          }

          v10 = 2053202739;
          goto LABEL_36;
        }
      }
    }
  }

  return v4;
}

uint64_t APSBadgingConvertAPSourceFormatToMATSourceFormat(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 24);
      v3 = *MEMORY[0x277CBECE8];
      SInt32 = FigCFNumberCreateSInt32();
      result = 0;
      *a2 = SInt32;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960591;
    }
  }

  return result;
}

uint64_t APSBadgingFormatInfoTypeGetString(int a1, __CFString **a2)
{
  if (!a2)
  {
    v2 = 4294960591;
    APSLogErrorAt(4294960591);
    return v2;
  }

  *a2 = 0;
  v2 = 4294960561;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = 0;
      v3 = @"Stereo";
      goto LABEL_13;
    }

    if (a1 == 2)
    {
      v2 = 0;
      v3 = @"Surround";
      goto LABEL_13;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = 0;
        v3 = @"AppleSpatialAudio";
        goto LABEL_13;
      case 5:
        v2 = 0;
        v3 = @"DolbyAudio";
        goto LABEL_13;
      case 6:
        v2 = 0;
        v3 = @"DolbyAtmos";
LABEL_13:
        *a2 = v3;
        break;
    }
  }

  return v2;
}

uint64_t APSBadgingFormatInfoTypeGetEnum(const void *a1, int *a2)
{
  if (!a1)
  {
    v4 = 4294960591;
LABEL_18:
    APSLogErrorAt(4294960591);
    return v4;
  }

  if (!a2)
  {
    v4 = 4294960591;
    goto LABEL_18;
  }

  *a2 = 0;
  if (CFEqual(a1, @"DolbyAtmos"))
  {
    v4 = 0;
    v5 = 6;
  }

  else if (CFEqual(a1, @"DolbyAudio"))
  {
    v4 = 0;
    v5 = 5;
  }

  else if (CFEqual(a1, @"AppleSpatialAudio"))
  {
    v4 = 0;
    v5 = 3;
  }

  else if (CFEqual(a1, @"Surround"))
  {
    v4 = 0;
    v5 = 2;
  }

  else
  {
    if (!CFEqual(a1, @"Stereo"))
    {
      return 4294960561;
    }

    v4 = 0;
    v5 = 1;
  }

  *a2 = v5;
  return v4;
}

uint64_t APSBadgingFormatInfoTypeResolve(uint64_t result, int a2)
{
  if ((result - 5) < 2 && a2 == 0)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t APSAPAPEncodeUIntV(unint64_t a1, uint64_t (*a2)(uint64_t *, void, uint64_t), uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  if (a2)
  {
    v6 = ilog2_64();
    v7 = (((v6 - ((37 * v6) >> 8)) >> 1) + ((37 * v6) >> 8)) >> 2;
    v8 = (v6 * 0x2492492492492493uLL) >> 64;
    do
    {
      *(&v11 + v8) = a1 | 0x80;
      a1 >>= 7;
      --v8;
    }

    while (v8 != -1);
    *(&v11 + v7) &= ~0x80u;
    result = a2(&v11, v7 + 1, a3);
  }

  else
  {
    result = 4294960591;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APSAPAPGetEncodeSizeUIntV(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294960591;
  }

  v3 = ilog2_64();
  result = 0;
  *a2 = ((((v3 - ((37 * v3) >> 8)) >> 1) + ((37 * v3) >> 8)) >> 2) + 1;
  return result;
}

uint64_t APSAPAPDecodeUIntV(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2, unint64_t *a3)
{
  v9 = 0;
  if (!a1)
  {
    return 4294960591;
  }

  v6 = 0;
  while (1)
  {
    result = a1(&v9, 1, a2);
    if (result)
    {
      break;
    }

    v8 = v9 & 0x7F | (v6 << 7);
    if (v8 < v6)
    {
      return 4294960586;
    }

    v6 = v9 & 0x7F | (v6 << 7);
    if ((v9 & 0x80000000) == 0)
    {
      result = 0;
      if (a3)
      {
        *a3 = v8;
      }

      return result;
    }
  }

  return result;
}

uint64_t APSAPAPEncodeHeader(uint64_t a1, unsigned int a2, uint64_t (*a3)(unint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  result = 4294960591;
  if (a3 && !HIBYTE(a2) && (*(a1 + 12) & 0x1D) == 1)
  {
    v17 = v4;
    v18 = v5;
    v9 = bswap64(*a1);
    v8 = *(a1 + 8);
    v10 = HIBYTE(v8);
    v11 = BYTE2(v8);
    v12 = BYTE1(v8);
    v13 = v8;
    v14 = BYTE2(a2);
    v15 = BYTE1(a2);
    v16 = a2;
    return a3(&v9, 15, a4);
  }

  return result;
}

uint64_t APSAPAPDecodeHeader(uint64_t (*a1)(unint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, int *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(v11, 0, 15);
  if (a1)
  {
    result = a1(v11, 15, a2);
    if (!result)
    {
      CMTimeMake(&v10, bswap64(v11[0]), bswap32(v11[1]));
      value = v10.value;
      flags = v10.flags;
      timescale = v10.timescale;
      if (v10.flags)
      {
        if (a3)
        {
          epoch = v10.epoch;
          *a3 = value;
          *(a3 + 8) = timescale;
          *(a3 + 12) = flags;
          *(a3 + 16) = epoch;
        }

        result = 0;
        if (a4)
        {
          *a4 = (BYTE4(v11[1]) << 16) | (BYTE5(v11[1]) << 8) | BYTE6(v11[1]);
        }
      }

      else
      {
        result = 4294960559;
      }
    }
  }

  else
  {
    result = 4294960591;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APSAPAPEncodeExtension(uint64_t (*a1)(uint64_t (*)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t *, void, uint64_t)), void *, uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t *, void, uint64_t), uint64_t a4)
{
  v9[0] = 0;
  v9[1] = a3;
  v9[2] = a4;
  v8[0] = _APSAPAPProtectedWriteCallback;
  v8[1] = v9;
  result = 4294960591;
  if (a1)
  {
    if (a3)
    {
      result = a1(_APSAPAPEncodeExtensionItemCallback, v8, a2);
      if (!result)
      {
        result = LODWORD(v9[0]);
        if (!LODWORD(v9[0]))
        {
          return APSAPAPEncodeUIntV(0, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t _APSAPAPEncodeExtensionItemCallback(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t *, void, uint64_t))
{
  if (!a1)
  {
    return 4294960591;
  }

  result = APSAPAPEncodeUIntV(a1, *a4, a4[1]);
  if (!result)
  {
    result = APSAPAPEncodeUIntV(a2, *a4, a4[1]);
    if (!result)
    {
      v9 = *a4;
      v8 = a4[1];

      return v9(a3, a2, v8);
    }
  }

  return result;
}

uint64_t _APSAPAPProtectedWriteCallback(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = *a3;
  if (a2)
  {
    if (!result)
    {
      v7 = *(a3 + 1);
      v6 = *(a3 + 2);
      result = v7(a1);
      *a3 = result;
    }
  }

  return result;
}

uint64_t APSAPAPDecodeExtension(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t (*a3)(unint64_t))
{
  result = 4294960591;
  if (a1 && a3)
  {
LABEL_3:
    v7 = 0;
    v14 = 0;
    while (1)
    {
      result = a1(&v14, 1, a2);
      if (result)
      {
        break;
      }

      v8 = v14 & 0x7F | (v7 << 7);
      if (v8 < v7)
      {
        return 4294960586;
      }

      v7 = v14 & 0x7F | (v7 << 7);
      if ((v14 & 0x80000000) == 0)
      {
        if (!v8)
        {
          return 0;
        }

        v9 = 0;
        v14 = 0;
        while (1)
        {
          result = a1(&v14, 1, a2);
          if (result)
          {
            return result;
          }

          v10 = v14 & 0x7F | (v9 << 7);
          if (v10 < v9)
          {
            return 4294960586;
          }

          v9 = v14 & 0x7F | (v9 << 7);
          if ((v14 & 0x80000000) == 0)
          {
            v13 = v10;
            result = a3(v8);
            if (result)
            {
              return result;
            }

            if (v13)
            {
              result = a1(0, v13, a2);
              if (result)
              {
                return result;
              }
            }

            goto LABEL_3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _APSAPAPProtectedReadCallback(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  result = *a3;
  if (a2 && !result)
  {
    if (*(a3 + 3) < a2)
    {
      result = 4294960546;
      *a3 = -6750;
    }

    else
    {
      result = (*(a3 + 1))(a1, a2, *(a3 + 2));
      *a3 = result;
      if (!result)
      {
        *(a3 + 3) -= a2;
      }
    }
  }

  return result;
}

uint64_t APSAPAPGetEncodeSizeExtension(uint64_t (*a1)(void, uint64_t *, uint64_t), uint64_t a2, void *a3)
{
  v6 = 0;
  v7 = 0;
  result = 4294960591;
  if (a1)
  {
    if (a3)
    {
      result = a1(_APSAPAPGetEncodeSizeExtensionItemCallback, &v6, a2);
      if (!result)
      {
        result = v6;
        if (!v6)
        {
          *a3 = v7 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t _APSAPAPGetEncodeSizeExtensionItemCallback(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  if (!v3)
  {
    v6 = ilog2_64();
    v7 = (((v6 - ((37 * v6) >> 8)) >> 1) + ((37 * v6) >> 8)) >> 2;
    *a3 = 0;
    v8 = ilog2_64();
    *a3 = 0;
    *(a3 + 1) += a2 + v7 + ((((v8 - ((37 * v8) >> 8)) >> 1) + ((37 * v8) >> 8)) >> 2) + 2;
  }

  return v3;
}

uint64_t APSAPAPEncode(__int128 *a1, unsigned int a2, uint64_t (*a3)(uint64_t (*)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t *, void, uint64_t)), void *, uint64_t), uint64_t a4, uint64_t (*a5)(void, void *, uint64_t), uint64_t a6, uint64_t (*a7)(unint64_t *, uint64_t, uint64_t), uint64_t a8)
{
  v18[0] = 0;
  v18[1] = a7;
  v18[2] = a8;
  result = 4294960591;
  if (a7)
  {
    if (a5)
    {
      if (a3)
      {
        if (!HIBYTE(a2) && (*(a1 + 3) & 0x1D) == 1)
        {
          v16 = *a1;
          v17 = *(a1 + 2);
          result = APSAPAPEncodeHeader(&v16, a2, a7, a8);
          if (!result)
          {
            result = APSAPAPEncodeExtension(a3, a4, a7, a8);
            if (!result)
            {
              LODWORD(result) = a5(_APSAPAPProtectedWriteCallback, v18, a6);
              if (result)
              {
                return result;
              }

              else
              {
                return LODWORD(v18[0]);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t APSAPAPDecode(unint64_t a1, uint64_t (*a2)(void, unint64_t, uint64_t), uint64_t a3, uint64_t a4, int *a5, uint64_t (*a6)(unint64_t), uint64_t a7, uint64_t (*a8)(unint64_t, uint64_t (*)(uint64_t a1, unint64_t a2, unsigned int *a3), uint64_t *, uint64_t), uint64_t a9)
{
  v13 = 0;
  v14 = a2;
  v15 = a3;
  v16 = a1;
  if (a1 < 0x10)
  {
    return 4294960553;
  }

  result = 4294960591;
  if (a2)
  {
    if (a6)
    {
      if (a8)
      {
        result = APSAPAPDecodeHeader(_APSAPAPProtectedReadCallback, &v13, a4, a5);
        if (!result)
        {
          result = APSAPAPDecodeExtension(_APSAPAPProtectedReadCallback, &v13, a6);
          if (!result)
          {
            result = a8(v16, _APSAPAPProtectedReadCallback, &v13, a9);
            if (!result)
            {
              result = v13;
              if (!v13)
              {
                v12 = v16;
                if (v16)
                {
                  result = v14(0, v16, v15);
                  if (result)
                  {
                    return result;
                  }

                  if (v16 != v12)
                  {
                    return 4294960587;
                  }
                }

                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t APSAPAPGetEncodeSize(uint64_t (*a1)(void, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  v7 = 0;
  v8 = 0;
  if (!a1)
  {
    return 4294960591;
  }

  result = a1(_APSAPAPGetEncodeSizeExtensionItemCallback, &v7, a2);
  if (!result)
  {
    result = v7;
    if (!v7)
    {
      *a4 = a3 + v8 + 16;
    }
  }

  return result;
}

uint64_t APSCFRealTimeReadableGetTypeID()
{
  if (gAPSCFRealTimeReadableInitOnce != -1)
  {
    dispatch_once_f(&gAPSCFRealTimeReadableInitOnce, 0, _APSCFRealTimeReadableGetTypeID);
  }

  return gAPSCFRealTimeReadableTypeID;
}

uint64_t _APSCFRealTimeReadableGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSCFRealTimeReadableTypeID = result;
  return result;
}

void _APSCFRealTimeReadableFinalize()
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPA           X0, X1, X0, X1, [X8]; cf }

  if (_X0)
  {
    CFRelease(_X0);
  }
}

uint64_t APSCFRealTimeReadableCreate(const void *a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (gAPSCFRealTimeReadableInitOnce != -1)
    {
      dispatch_once_f(&gAPSCFRealTimeReadableInitOnce, 0, _APSCFRealTimeReadableGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      *(Instance + 16) = 0;
      *(Instance + 24) = 0;
      if (a1)
      {
        v6 = CFRetain(a1);
      }

      else
      {
        v6 = 0;
      }

      v5[2] = v6;
      v5[3] = 0;
      *a2 = CFRetain(v5);
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

uint64_t APSCFRealTimeReadableCopyValue(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    do
    {
      _X22 = _X0;
      _X2 = _X0;
      _X1 = 0;
      __asm { CASPA           X0, X1, X2, X3, [X8] }
    }

    while (_X0 != _X2);
    if (_X22)
    {
      v14 = CFRetain(_X22);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 16);
    do
    {
      _X5 = *(a1 + 24);
      __asm { CASP            X4, X5, X22, X23, [X8] }

      _ZF = _X4 == v15;
      v15 = _X4;
    }

    while (!_ZF);
    v18 = 0;
    *a2 = v14;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v18;
}

uint64_t APSCFRealTimeReadableSetValue(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    _X20 = 0;
    _X21 = 0;
    __asm { CASP            X20, X21, X20, X21, [X24] }

    if (cf)
    {
      _X22 = CFRetain(cf);
    }

    else
    {
      _X22 = 0;
    }

    _X2 = _X22;
    _X1 = 0;
    __asm { CASPL           X0, X1, X2, X3, [X24] }

    while (_X0 != _X20)
    {
      _X20 = _X0;
      pthread_yield_np();
      _X1 = 0;
      __asm { CASPL           X0, X1, X22, X23, [X8] }
    }

    if (_X20)
    {
      CFRelease(_X20);
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t audioProtocolDriverReceiver_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&audioProtocolDriverReceiver_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

OpaqueCMBlockBuffer *APSRTCPBBufIsKnown(OpaqueCMBlockBuffer *result)
{
  destination = 0;
  if (result)
  {
    v1 = result;
    if (CMBlockBufferGetDataLength(result) < 4 || CMBlockBufferCopyDataBytes(v1, 0, 4uLL, &destination) || (destination & 0xC0) != 0x80)
    {
      return 0;
    }

    else
    {
      return ((BYTE1(destination) & 0xF8) == 200);
    }
  }

  return result;
}

OpaqueCMBlockBuffer *APSRTCPBBufIsValid(OpaqueCMBlockBuffer *result)
{
  v5 = 0;
  if (result)
  {
    v1 = result;
    DataLength = CMBlockBufferGetDataLength(result);
    v3 = 0;
    v4 = DataLength;
    while (!rtcpBBufUtils_validateAndGetPayloadOffset(v1, v3, v4, &v5, 0, 0))
    {
      v3 += v5;
      v4 -= v5;
      if (v3 >= DataLength)
      {
        return (v3 == DataLength);
      }
    }

    return 0;
  }

  return result;
}

uint64_t rtcpBBufUtils_validateAndGetPayloadOffset(OpaqueCMBlockBuffer *a1, size_t a2, unint64_t a3, unint64_t *a4, void *a5, void *a6)
{
  destination = 0;
  v18 = 0;
  if (a3 < 4)
  {
    return 4294960546;
  }

  result = CMBlockBufferCopyDataBytes(a1, a2, 4uLL, &destination);
  if (result)
  {
    return result;
  }

  v13 = HIWORD(destination);
  v14 = __rev16(HIWORD(destination));
  HIWORD(destination) = v14;
  if ((destination & 0xC0) != 0x80)
  {
    return 4294960581;
  }

  v15 = 4 * v14;
  v16 = v15 + 4;
  if (v15 + 4 > a3)
  {
    return 4294960546;
  }

  if ((destination & 0x20) == 0)
  {
    v17 = 0;
    goto LABEL_13;
  }

  if (v16 != a3)
  {
    return 4294960579;
  }

  if (!v13)
  {
    return 4294960546;
  }

  result = CMBlockBufferCopyDataBytes(a1, a2 + v15 + 3, 1uLL, &v18);
  if (result)
  {
    return result;
  }

  v17 = v18;
  result = 4294960579;
  if (!v18 || (v18 & 3) != 0)
  {
    return result;
  }

  if (v15 < v18)
  {
    return 4294960545;
  }

LABEL_13:
  if (a4)
  {
    *a4 = v16;
  }

  if (a5)
  {
    *a5 = 4;
  }

  result = 0;
  if (a6)
  {
    *a6 = v15 - v17;
  }

  return result;
}

uint64_t APSRTCPBBufGetPayloadType(CMBlockBufferRef theSourceBuffer, _BYTE *a2)
{
  destination = 0;
  result = 4294960591;
  if (theSourceBuffer && a2)
  {
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, 1uLL, 1uLL, &destination);
    if (!result)
    {
      *a2 = destination;
    }
  }

  return result;
}

uint64_t APSRTCPBBufGetLength(OpaqueCMBlockBuffer *a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    return rtcpBBufUtils_getLengthAtOffset(a1, 0, a2);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t rtcpBBufUtils_getLengthAtOffset(OpaqueCMBlockBuffer *a1, size_t a2, uint64_t *a3)
{
  destination = 0;
  result = CMBlockBufferCopyDataBytes(a1, a2, 4uLL, &destination);
  if (!result)
  {
    v7 = bswap32(HIWORD(destination)) >> 16;
    HIWORD(destination) = v7;
    v8 = 4 * v7 + 4;
    *a3 = v8;
    if (v8 + a2 > CMBlockBufferGetDataLength(a1))
    {
      return 4294960553;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t APSRTCPBBufGetPayloadOffset(OpaqueCMBlockBuffer *a1, void *a2, void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    return 4294960591;
  }

  DataLength = CMBlockBufferGetDataLength(a1);

  return rtcpBBufUtils_validateAndGetPayloadOffset(a1, 0, DataLength, 0, a2, a3);
}

OpaqueCMBlockBuffer *APSRTCPBBufIsCompound(OpaqueCMBlockBuffer *result)
{
  v3 = 0;
  if (result)
  {
    v1 = result;
    if (rtcpBBufUtils_getLengthAtOffset(result, 0, &v3))
    {
      return 0;
    }

    else
    {
      DataLength = CMBlockBufferGetDataLength(v1);
      return (DataLength > v3);
    }
  }

  return result;
}

uint64_t APSRTCPCompoundBBufCreateWithSubRTCPBBufs(const __CFAllocator *a1, CFArrayRef theArray, CMBlockBufferRef *a3)
{
  blockBufferOut = 0;
  destination = 0;
  v3 = 4294960591;
  if (theArray && a3)
  {
    Count = CFArrayGetCount(theArray);
    if ((Count - 0x80000000) < 0xFFFFFFFF80000001)
    {
LABEL_20:
      v3 = 4294960553;
    }

    else
    {
      v8 = Count;
      appended = CMBlockBufferCreateEmpty(a1, Count, 0, &blockBufferOut);
      if (appended)
      {
LABEL_5:
        v3 = appended;
      }

      else
      {
        for (i = 0; ; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          if (!ValueAtIndex || (v13 = ValueAtIndex, v14 = CFGetTypeID(ValueAtIndex), v14 != CMBlockBufferGetTypeID()))
          {
            v3 = 4294960540;
            goto LABEL_6;
          }

          appended = CMBlockBufferCopyDataBytes(v13, 0, 4uLL, &destination);
          if (appended)
          {
            goto LABEL_5;
          }

          HIWORD(destination) = bswap32(HIWORD(destination)) >> 16;
          DataLength = CMBlockBufferGetDataLength(v13);
          if (DataLength != 4 * HIWORD(destination) + 4)
          {
            goto LABEL_20;
          }

          if ((destination & 0x20) != 0 && v8 != 1)
          {
            break;
          }

          appended = CMBlockBufferAppendBufferReference(blockBufferOut, v13, 0, 0, 0);
          if (appended)
          {
            goto LABEL_5;
          }

          if (!--v8)
          {
            v3 = 0;
            *a3 = blockBufferOut;
            return v3;
          }
        }

        v3 = 4294960591;
      }
    }
  }

LABEL_6:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v3;
}

uint64_t APSCompoundRTCPBBufApplyFunction(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, uint64_t (*a3)(CFTypeRef, uint64_t), uint64_t a4)
{
  cf = 0;
  dataLength = 0;
  v4 = 4294960591;
  if (a1 && a3)
  {
    v9 = CMBlockBufferGetDataLength(a1);
    v10 = 0;
    v11 = *MEMORY[0x277CBED00];
    while (1)
    {
      LengthAtOffset = rtcpBBufUtils_getLengthAtOffset(a1, v10, &dataLength);
      if (LengthAtOffset)
      {
        break;
      }

      if (v11 != a2)
      {
        LengthAtOffset = CMBlockBufferCreateWithBufferReference(a2, a1, v10, dataLength, 0, &cf);
        if (LengthAtOffset)
        {
          break;
        }
      }

      LengthAtOffset = a3(cf, a4);
      if (LengthAtOffset)
      {
        break;
      }

      v13 = dataLength;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v10 += v13;
      if (v10 >= v9)
      {
        if (v10 == v9)
        {
          return 0;
        }

        else
        {
          return 4294960553;
        }
      }
    }

    v4 = LengthAtOffset;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v4;
}

uint64_t APSCompoundRTCPBBufApplyBlock(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, uint64_t a3)
{
  if (a1 && a3)
  {
    return APSCompoundRTCPBBufApplyFunction(a1, a2, rtcpBBufUtils_compoundRTCPBBufBlockApplier, a3);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSCompoundRTCPBBufGetSubRTCPCount(OpaqueCMBlockBuffer *a1, void *a2)
{
  v5 = 0;
  v2 = 4294960591;
  if (a1)
  {
    if (a2)
    {
      v2 = APSCompoundRTCPBBufApplyFunction(a1, *MEMORY[0x277CBED00], rtcpBBufUtils_compoundRTCPBBufGetCountApplier, &v5);
      if (!v2)
      {
        *a2 = v5;
      }
    }
  }

  return v2;
}

uint64_t APSCompoundRTCPBBufCopySubRTCPBBufs(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, CFMutableArrayRef *a3)
{
  v3 = 4294960591;
  if (a1 && a3)
  {
    capacity = 0;
    v7 = APSCompoundRTCPBBufApplyFunction(a1, *MEMORY[0x277CBED00], rtcpBBufUtils_compoundRTCPBBufGetCountApplier, &capacity);
    if (v7)
    {
      return v7;
    }

    else
    {
      Mutable = CFArrayCreateMutable(a2, capacity, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v9 = Mutable;
        v3 = APSCompoundRTCPBBufApplyFunction(a1, a2, rtcpBBufUtils_compoundRTCPBBufCopySubRTCPBBufsApplier, Mutable);
        if (v3)
        {
          CFRelease(v9);
        }

        else
        {
          *a3 = v9;
        }
      }

      else
      {
        return 4294960568;
      }
    }
  }

  return v3;
}

uint64_t APSSRTCPBBufCreateWithRTCPBBuf(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, int a4, int a5, CFTypeRef *a6)
{
  cf = 0;
  v34 = 0;
  PayloadOffset = 4294960591;
  if (a2 && a3 && a6)
  {
    if (!APSRTCPBBufIsValid(a2))
    {
      return 4294960579;
    }

    DataLength = CMBlockBufferGetDataLength(a2);
    if (DataLength < 8)
    {
      return 4294960553;
    }

    v14 = DataLength;
    PayloadOffset = rtcpBBufUtils_validateAndGetPayloadOffset(a2, 0, DataLength, 0, 0, &v34);
    if (!PayloadOffset)
    {
      if (v34 < 4)
      {
        return 4294960564;
      }

      v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v15)
      {
        v16 = v15(a3);
      }

      else
      {
        v16 = 0;
      }

      __len = v16;
      v17 = v14 + v16;
      if (a4)
      {
        v18 = 8;
      }

      else
      {
        v18 = v14;
      }

      v19 = MEMORY[0x223DB3470](a1, v17 + 8, 3480182393, 0);
      if (!v19)
      {
        return 4294960568;
      }

      v20 = v19;
      v31 = v17;
      v21 = CMBlockBufferCopyDataBytes(a2, 0, v18, v19);
      if (v21)
      {
        goto LABEL_16;
      }

      v23 = v18 + 4;
      v24 = v14 - v18;
      v25 = bswap32(a5 & 0x7FFFFFFF | (a4 << 31));
      *&v20[v18] = v25;
      if (v14 != v18)
      {
        v26 = &v20[v23];
        v21 = CMBlockBufferCopyDataBytes(a2, v18, v14 - v18, &v20[v23]);
        if (v21)
        {
          goto LABEL_16;
        }

        *&v26[v24] = v25;
        v23 = v18 + 4;
      }

      v27 = v23;
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v28)
      {
        PayloadOffset = 4294954514;
LABEL_17:
        CFAllocatorDeallocate(a1, v20);
        if (cf)
        {
          CFRelease(cf);
        }

        return PayloadOffset;
      }

      v29 = v27;
      v30 = &v20[v27];
      v21 = v28(a3, v20, v29, v30, v14 - v18, v30, v14 - v18, &v30[v24 + 4], __len);
      if (!v21)
      {
        if (v14 == v18)
        {
          memmove(v30, v30 + 4, __len);
          v21 = CMBlockBufferCreateWithMemoryBlock(a1, v20, v31 + 8, a1, 0, 0, v31 + 4, 0, &cf);
        }

        else
        {
          memmove(v20 + 4, v20, v18);
          v21 = CMBlockBufferCreateWithMemoryBlock(a1, v20, v31 + 8, a1, 0, 4uLL, v31 + 4, 0, &cf);
        }

        if (!v21)
        {
          PayloadOffset = 0;
          *a6 = cf;
          return PayloadOffset;
        }
      }

LABEL_16:
      PayloadOffset = v21;
      goto LABEL_17;
    }
  }

  return PayloadOffset;
}

uint64_t APSSRTCPBBufCopyRTCPBBuf(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, uint64_t a3, CFTypeRef *a4)
{
  destination = 0;
  v26 = 0;
  v27 = 0;
  v4 = 4294960591;
  cf = 0;
  if (!a1 || !a3 || !a4)
  {
    goto LABEL_17;
  }

  DataLength = CMBlockBufferGetDataLength(a1);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v11 = v10(a3);
  }

  else
  {
    v11 = 0;
  }

  if (DataLength < v11 + 12)
  {
    v4 = 4294960553;
    goto LABEL_17;
  }

  v12 = DataLength - v11;
  PayloadOffset = CMBlockBufferCopyDataBytes(a1, DataLength - v11 - 4, 4uLL, &destination);
  if (PayloadOffset)
  {
LABEL_9:
    v4 = PayloadOffset;
    goto LABEL_17;
  }

  if ((destination & 0x80) != 0)
  {
    v14 = 8;
  }

  else
  {
    v14 = DataLength - v11 - 4;
  }

  v15 = MEMORY[0x223DB3470](a2, DataLength, 1102922575, 0);
  if (!v15)
  {
    v4 = 4294960568;
    goto LABEL_17;
  }

  v16 = v15;
  v17 = CMBlockBufferCopyDataBytes(a1, 0, v14, v15);
  if (v17)
  {
    goto LABEL_15;
  }

  v19 = v14 + 4;
  *&v16[v14] = destination;
  v24 = v12 - (v14 + 4);
  if (v12 != v14 + 4)
  {
    v17 = CMBlockBufferCopyDataBytes(a1, v14, v12 - (v14 + 4), &v16[v19]);
    v19 = v14 + 4;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  v23 = v19;
  if (v11)
  {
    v17 = CMBlockBufferCopyDataBytes(a1, DataLength - v11, v11, &v16[v12]);
    if (v17)
    {
      goto LABEL_15;
    }
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v20)
  {
    v4 = 4294954514;
    goto LABEL_16;
  }

  v17 = v20(a3, v16, v23, &v16[v23], v24 + v11, &v16[v23], v24, &v27);
  if (v17)
  {
    goto LABEL_15;
  }

  if (v27 != v24)
  {
    v4 = 4294960534;
    goto LABEL_16;
  }

  if (v12 == v23)
  {
    v17 = CMBlockBufferCreateWithMemoryBlock(a2, v16, DataLength, a2, 0, 0, v14, 0, &cf);
  }

  else
  {
    memmove(v16 + 4, v16, v14);
    v17 = CMBlockBufferCreateWithMemoryBlock(a2, v16, DataLength, a2, 0, 4uLL, v12 - 4, 0, &cf);
  }

  if (v17)
  {
LABEL_15:
    v4 = v17;
LABEL_16:
    CFAllocatorDeallocate(a2, v16);
    goto LABEL_17;
  }

  if (APSRTCPBBufIsValid(cf))
  {
    v21 = cf;
    v22 = CMBlockBufferGetDataLength(cf);
    PayloadOffset = rtcpBBufUtils_validateAndGetPayloadOffset(v21, 0, v22, 0, 0, &v26);
    if (PayloadOffset)
    {
      goto LABEL_9;
    }

    if (v26 >= 4)
    {
      v4 = 0;
      *a4 = cf;
      return v4;
    }

    v4 = 4294960564;
  }

  else
  {
    v4 = 4294960579;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t APSSRTCPBBufGetIndex(CMBlockBufferRef theBuffer, uint64_t a2, _DWORD *a3)
{
  destination = 0;
  result = 4294960591;
  if (theBuffer && a2 && a3)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    VTable = CMBaseObjectGetVTable();
    v9 = *(*(VTable + 16) + 8);
    if (v9)
    {
      v10 = *(VTable + 16) + 8;
      v11 = v9(a2);
    }

    else
    {
      v11 = 0;
    }

    if (DataLength < v11 + 12)
    {
      return 4294960553;
    }

    else
    {
      result = CMBlockBufferCopyDataBytes(theBuffer, DataLength - v11 - 4, 4uLL, &destination);
      if (!result)
      {
        *a3 = bswap32(destination & 0xFFFFFF7F);
      }
    }
  }

  return result;
}

OpaqueCMBlockBuffer *APSRTCPBBufIsAVPF(OpaqueCMBlockBuffer *result)
{
  if (result)
  {
    destination = 0;
    if (CMBlockBufferCopyDataBytes(result, 1uLL, 1uLL, &destination))
    {
      return 0;
    }

    else
    {
      return (destination - 205 < 2);
    }
  }

  return result;
}

uint64_t APSRTCPAVPFBBufGetFeedbackMessageType(CMBlockBufferRef theSourceBuffer, _BYTE *a2)
{
  destination = 0;
  result = 4294960591;
  if (theSourceBuffer && a2)
  {
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 1uLL, &destination);
    if (!result)
    {
      *a2 = destination & 0x1F;
    }
  }

  return result;
}

uint64_t APSRTCPAVPFBBufGetPacketSenderSSRC(CMBlockBufferRef theSourceBuffer, _DWORD *a2)
{
  destination = 0;
  result = 4294960591;
  if (theSourceBuffer && a2)
  {
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, 4uLL, 4uLL, &destination);
    if (!result)
    {
      *a2 = bswap32(destination);
    }
  }

  return result;
}

OpaqueCMBlockBuffer *APSRTCPBBufIsCCFB(OpaqueCMBlockBuffer *result)
{
  if (result)
  {
    v1 = result;
    destination = 0;
    if (CMBlockBufferCopyDataBytes(result, 1uLL, 1uLL, &destination) || destination != 205)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      return (!CMBlockBufferCopyDataBytes(v1, 0, 1uLL, &v4) && (v4 & 0x1F) == 11);
    }
  }

  return result;
}

uint64_t APSRTCPCCFBBBufGetReportTimestamp(CMBlockBufferRef theBuffer, _DWORD *a2)
{
  v9 = 0;
  v10 = 0;
  result = 4294960591;
  destination = 0;
  if (theBuffer)
  {
    if (a2)
    {
      DataLength = CMBlockBufferGetDataLength(theBuffer);
      result = rtcpBBufUtils_validateAndGetPayloadOffset(theBuffer, 0, DataLength, 0, &v10, &v9);
      if (!result)
      {
        v6 = v9 + v10;
        v7 = CMBlockBufferGetDataLength(theBuffer);
        result = 4294960546;
        if (v6 <= v7 && v6 >= 0x14)
        {
          result = CMBlockBufferCopyDataBytes(theBuffer, v6 - 4, 4uLL, &destination);
          if (!result)
          {
            *a2 = bswap32(destination);
          }
        }
      }
    }
  }

  return result;
}

uint64_t APSRTCPCCFBBBufArrayCreateWithRecordsAndTrailingUnReceivedRange(const __CFAllocator *a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5, unsigned int a6, unint64_t a7, CFTypeRef *a8)
{
  allocator.i64[0] = a1;
  allocator.i64[1] = __PAIR64__(a4, a2);
  v37 = a5;
  *ptr = 0u;
  *cf = 0u;
  memset(v40, 0, sizeof(v40));
  v9 = 4294960591;
  if (!a5 || !a8)
  {
    goto LABEL_48;
  }

  v14 = 8 * (a6 < 0x80010000);
  if (a7 && v14 + 24 > a7)
  {
    v9 = 4294960553;
    goto LABEL_46;
  }

  v15 = HIWORD(a6);
  Count = CFDictionaryGetCount(*(a5 + 24));
  v17 = *(a5 + 16);
  if (v17)
  {
    v18 = CFArrayGetCount(*(v17 + 16));
    v19 = *(a5 + 16);
    v20 = v18;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  Span = APSRTPSeqNumRangeSetGetSpan(v19);
  v22 = Span;
  if (!Count || a6 > 0x8000FFFF)
  {
    goto LABEL_13;
  }

  if (((Span - a6) & 0x8000) == 0 || (HIWORD(Span) + Span - a6) > 0)
  {
    v9 = 4294960527;
    goto LABEL_46;
  }

  if ((HIWORD(Span) + Span - (v15 + a6)) > 0)
  {
    v9 = 4294960586;
  }

  else
  {
LABEL_13:
    v23 = v20;
    if ((v20 & 0xFFFE) == 0)
    {
      v23 = 1;
    }

    v24 = v14 + 8 * v23 + 2 * (Count + v20) + 12;
    if (v24 >= a7)
    {
      v25 = a7;
    }

    else
    {
      v25 = v24;
    }

    if (a7)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    cf[0] = v26;
    LODWORD(v40[1]) = a3;
    cf[1] = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (cf[1])
    {
      ptr[0] = MEMORY[0x223DB3470](a1, v26, 80759760, 0);
      if (!ptr[0])
      {
        v9 = 4294960568;
        goto LABEL_48;
      }

      ptr[1] = 8;
      cf[0] = v26 - 4;
      if (Count)
      {
        v27 = rtcpBBufUtils_rtcpCCFBFromRecordsApplierEnsureReport(&allocator, v22);
        if (!v27)
        {
          WORD4(v40[1]) = v22;
          v27 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a5 + 16), 0, 0xFFFFFFFF, rtcpBBufUtils_rtcpCCFBFromRecordsApplier, &allocator);
          if (!v27)
          {
            if (a6 > 0x8000FFFF)
            {
              rtcpBBufUtils_rtcpCCFBFromRecordsApplierCompleteReport(&allocator, 0, 0);
              goto LABEL_58;
            }

            v27 = rtcpBBufUtils_rtcpCCFBFromRecordsApplierAddReportMetricGap(&allocator, WORD4(v40[1]), (v15 + a6), 1, 0);
            if (!v27)
            {
              if (ptr[1] != 16 || (WORD2(v40[1]) = WORD4(v40[1]), v27 = rtcpBBufUtils_rtcpCCFBFromRecordsApplierAddReportMetricGap(&allocator, WORD4(v40[1]), (v15 + a6), 1, 1), !v27))
              {
                v33 = *&v40[0];
                if (!*&v40[0])
                {
                  goto LABEL_58;
                }

                v34 = WORD3(v40[1]);
                if (BYTE6(v40[1]))
                {
                  *(ptr[0] + ptr[1]) = 0;
                  v33 = *&v40[0];
                  ptr[1] = ptr[1] + 2;
                  v34 = WORD3(v40[1]);
                }

                *(ptr[0] + v33) = ((bswap32(WORD2(v40[1])) >> 16) << 32) | (__rev16(v34) << 48) | bswap32(v40[1]);
                v40[0] = 0uLL;
LABEL_57:
                WORD3(v40[1]) = 0;
LABEL_58:
                v9 = rtcpBBufUtils_rtcpCCFBFromRecordsApplierCompleteBBuf(&allocator);
                if (!v9)
                {
                  *a8 = cf[1];
                  cf[1] = 0;
                }

                goto LABEL_46;
              }
            }
          }
        }

        goto LABEL_45;
      }

      if (a6 <= 0x8000FFFF)
      {
        v27 = rtcpBBufUtils_rtcpCCFBFromRecordsApplierEnsureReport(&allocator, a6);
        if (!v27)
        {
          v30 = *&v40[0];
          if (*&v40[0])
          {
            v31 = WORD3(v40[1]);
            if (BYTE6(v40[1]))
            {
              *(ptr[0] + ptr[1]) = 0;
              v30 = *&v40[0];
              ptr[1] = ptr[1] + 2;
              v31 = WORD3(v40[1]);
            }

            *(ptr[0] + v30) = ((bswap32(WORD2(v40[1])) >> 16) << 32) | (__rev16(v31) << 48) | bswap32(v40[1]);
            v40[0] = 0uLL;
            WORD3(v40[1]) = 0;
          }

          v27 = rtcpBBufUtils_rtcpCCFBFromRecordsApplierEnsureReport(&allocator, v15 + a6);
          if (!v27)
          {
            v28 = *&v40[0];
            if (!*&v40[0])
            {
              goto LABEL_58;
            }

            v29 = WORD3(v40[1]);
            if (BYTE6(v40[1]))
            {
              *(ptr[0] + ptr[1]) = 0;
              v28 = *&v40[0];
              ptr[1] = ptr[1] + 2;
              v29 = WORD3(v40[1]);
            }

            goto LABEL_33;
          }
        }
      }

      else
      {
        v27 = rtcpBBufUtils_rtcpCCFBFromRecordsApplierEnsureReport(&allocator, v22);
        if (!v27)
        {
          v28 = *&v40[0];
          if (!*&v40[0])
          {
            goto LABEL_58;
          }

          v29 = WORD3(v40[1]);
          if (BYTE6(v40[1]))
          {
            *(ptr[0] + ptr[1]) = 0;
            v28 = *&v40[0];
            ptr[1] = ptr[1] + 2;
            v29 = WORD3(v40[1]);
          }

LABEL_33:
          *(ptr[0] + v28) = ((bswap32(WORD2(v40[1])) >> 16) << 32) | (__rev16(v29) << 48) | bswap32(v40[1]);
          v40[0] = 0uLL;
          goto LABEL_57;
        }
      }

LABEL_45:
      v9 = v27;
      goto LABEL_46;
    }

    v9 = 4294960568;
  }

LABEL_46:
  if (ptr[0])
  {
    CFAllocatorDeallocate(allocator.i64[0], ptr[0]);
  }

LABEL_48:
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  return v9;
}

uint64_t rtcpBBufUtils_rtcpCCFBFromRecordsApplierEnsureReport(int64x2_t *a1, __int16 a2)
{
  if (a1[3].i64[1])
  {
    return 0;
  }

  v5 = a1[2].i64[0];
  v4 = a1[2].i64[1];
  if ((v4 - v5) <= 7)
  {
    result = rtcpBBufUtils_rtcpCCFBFromRecordsApplierCompleteBBuf(a1);
    if (result)
    {
      return result;
    }

    v4 = a1[2].i64[1];
    if (a1[1].i64[1])
    {
      v5 = a1[2].i64[0];
    }

    else
    {
      v7 = MEMORY[0x223DB3470](a1->i64[0], v4, 80759760, 0);
      a1[1].i64[1] = v7;
      if (!v7)
      {
        return 4294960568;
      }

      v8 = vaddq_s64(a1[2], xmmword_22234D030);
      a1[2] = v8;
      v4 = v8.i64[1];
      v5 = v8.i64[0];
    }
  }

  result = 0;
  a1[2].i64[0] = v5 + 8;
  a1[4].i16[6] = a2;
  a1[4].i16[7] = 0;
  a1[3].i64[1] = v5;
  a1[4].i64[0] = ((v4 - (v5 + 8)) >> 1) & 0x7FFFFFFFFFFFFFFELL;
  return result;
}

uint64_t rtcpBBufUtils_rtcpCCFBFromRecordsApplierAddReportMetricGap(int64x2_t *a1, int a2, int a3, int a4, int a5)
{
  v5 = a1[4].u64[0];
  if (!v5)
  {
    return 0;
  }

  v6 = a3;
  if (a3 == a2 && !a4)
  {
    return 0;
  }

  v8 = a3 - a2;
  if (a3 != a2)
  {
    v9 = a1[4].u16[7];
    v10 = v9 + v8;
    v11 = ((v9 + 1) & 0x1FFFE) + 4;
    if (v5 >= v10 && v10 <= v11)
    {
      bzero((a1[1].i64[1] + a1[2].i64[0]), 2 * (a3 - a2));
      a1[2].i64[0] += 2 * v8;
      a1[4].i16[7] += v8;
      return 0;
    }
  }

  rtcpBBufUtils_rtcpCCFBFromRecordsApplierCompleteReport(a1, a5, 0);

  return rtcpBBufUtils_rtcpCCFBFromRecordsApplierEnsureReport(a1, v6);
}

uint64_t rtcpBBufUtils_rtcpCCFBFromRecordsApplierCompleteReport(uint64_t result, int a2, int a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(result + 78);
    if (a3 || !*(result + 78))
    {
LABEL_3:
      if (!a2 && !v4)
      {
        *(result + 32) = v3;
LABEL_14:
        *(result + 56) = 0;
        *(result + 64) = 0;
        *(result + 78) = 0;
        return result;
      }
    }

    else
    {
      v5 = *(result + 24);
      v6 = *(result + 32) - 2;
      while (!__rev16(*(v5 + v6)))
      {
        *(result + 78) = --v4;
        *(result + 32) = v6;
        v6 -= 2;
        if (!v4)
        {
          v4 = 0;
          goto LABEL_3;
        }
      }
    }

    if (v4)
    {
      *(*(result + 24) + *(result + 32)) = 0;
      *(result + 32) += 2;
      v4 = *(result + 78);
      v3 = *(result + 56);
    }

    *(*(result + 24) + v3) = ((bswap32(*(result + 76)) >> 16) << 32) | ((bswap32(v4) >> 16) << 48) | bswap32(*(result + 72));
    goto LABEL_14;
  }

  return result;
}

uint64_t rtcpBBufUtils_rtcpCCFBFromRecordsApplierCompleteBBuf(uint64_t a1)
{
  blockBufferOut = 0;
  v2 = (a1 + 24);
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  *(a1 + 40) += 4;
  *(v1 + v4) = bswap32(*(a1 + 12));
  v5 = *(a1 + 24);
  v6 = *(a1 + 32) + 4;
  *(a1 + 32) = v6;
  *v5 = bswap32((v6 >> 2) - 1) & 0xFFFF0000 | (bswap32(*(a1 + 8)) << 32) | 0xCD8B;
  v7 = CMBlockBufferCreateWithMemoryBlock(*a1, *(a1 + 24), *(a1 + 40), *a1, 0, 0, *(a1 + 32), 0, &blockBufferOut);
  if (!v7)
  {
    CFArrayAppendValue(*(a1 + 48), blockBufferOut);
    *v2 = 0;
    v2[1] = 0;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v7;
}

uint64_t rtcpBBufUtils_rtcpCCFBFromRecordsApplier(int a1, int64x2_t *a2)
{
  v3 = a1;
  result = rtcpBBufUtils_rtcpCCFBFromRecordsApplierAddReportMetricGap(a2, a2[5].u16[0], a1, 0, 0);
  if (!result)
  {
    a2[5].i16[0] = v3;
    if ((v3 & 0xFFFF0000) != 0)
    {
      v5 = 0;
      v6 = HIWORD(v3);
      v7 = a2[4].u16[7];
      do
      {
        if (a2[4].i64[0] == v7)
        {
          rtcpBBufUtils_rtcpCCFBFromRecordsApplierCompleteReport(a2, 0, 0);
          result = rtcpBBufUtils_rtcpCCFBFromRecordsApplierCompleteBBuf(a2);
          if (result)
          {
            return result;
          }

          if (!a2[1].i64[1])
          {
            v8 = MEMORY[0x223DB3470](a2->i64[0], a2[2].i64[1], 80759760, 0);
            a2[1].i64[1] = v8;
            if (!v8)
            {
              return 4294960568;
            }

            a2[2] = vaddq_s64(a2[2], xmmword_22234D030);
          }

          result = rtcpBBufUtils_rtcpCCFBFromRecordsApplierEnsureReport(a2, v3);
          if (result)
          {
            return result;
          }
        }

        Value = CFDictionaryGetValue(*(a2[1].i64[0] + 24), v3);
        v10 = *(Value + 4);
        if (v10 > 3)
        {
          return 4294960591;
        }

        v11 = Value;
        v12 = *Value;
        UInt32 = FigCFNumberGetUInt32();
        if (*v11)
        {
          v14 = a2->i32[3];
          v15 = UInt32 - v14;
          v16 = (v14 - UInt32) >> 6;
          if (v16 >= 0x1FFE)
          {
            LOWORD(v16) = 8190;
          }

          if (v15 > 0)
          {
            LOWORD(v16) = 0x1FFF;
          }
        }

        else
        {
          LOWORD(v16) = 0x1FFF;
        }

        v17 = (a2[1].i64[1] + a2[2].i64[0]);
        *v17 = (v16 | (v10 << 13) | 0x8000) >> 8;
        v17[1] = v16;
        a2[2].i64[0] += 2;
        v7 = a2[4].i16[7] + 1;
        a2[4].i16[7] = v7;
        LOWORD(v3) = a2[5].i16[0] + 1;
        a2[5].i16[0] = v3;
        ++v5;
      }

      while (v5 < v6);
    }

    return 0;
  }

  return result;
}

uint64_t APSRTCPCCFBBBufCopyRecordsWithMediaSourceSSRC(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, int a3, CFTypeRef *a4)
{
  v10 = a2;
  cf = 0;
  v4 = 4294960591;
  if (a1 && a4)
  {
    v8 = APSRTPSeqNumDictionaryCreateMutable(a2, &kAPSRTCPCCFBRecordDictionaryValueCallbacks, &cf);
    if (v8)
    {
      v4 = v8;
    }

    else
    {
      v4 = rtcpBBufUtils_rtcpCCFBApplyFunction(a1, a3, rtcpBBufUtils_rtcpCCFBToRecordsApplier, &v10);
      if (!v4)
      {
        *a4 = cf;
        return v4;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v4;
}

uint64_t rtcpBBufUtils_rtcpCCFBApplyFunction(OpaqueCMBlockBuffer *a1, int a2, uint64_t (*a3)(uint64_t *, unsigned int *), uint64_t a4)
{
  v22 = 0;
  v23 = 0;
  destination = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  result = APSRTCPBBufGetPayloadOffset(a1, &v23, &v22);
  if (!result)
  {
    v9 = v22 + v23;
    if (v22 + v23 < 0xC)
    {
      return 4294960546;
    }

    if ((v9 & 3) != 0)
    {
      return 4294960579;
    }

    result = CMBlockBufferCopyDataBytes(a1, 0, 8uLL, &destination);
    if (!result)
    {
      if (BYTE1(destination) != 205 || (destination & 0x1F) != 0xB)
      {
        return 4294960540;
      }

      WORD1(destination) = bswap32(WORD1(destination)) >> 16;
      HIDWORD(destination) = bswap32(HIDWORD(destination));
      v10 = v9 - 4;
      result = CMBlockBufferCopyDataBytes(a1, v10, 4uLL, &v20);
      if (!result)
      {
        v20 = bswap32(v20);
        v11 = 8;
        v22 = v10;
        v23 = 8;
        while (1)
        {
          if (v10 - v11 < 8)
          {
            return 4294960546;
          }

          result = CMBlockBufferCopyDataBytes(a1, v11, 8uLL, &v19);
          if (result)
          {
            return result;
          }

          v12 = v23 + 8;
          v23 += 8;
          LODWORD(v19) = bswap32(v19);
          WORD2(v19) = bswap32(WORD2(v19)) >> 16;
          v13 = HIWORD(v19);
          v14 = __rev16(HIWORD(v19));
          HIWORD(v19) = v14;
          if (v19 != a2)
          {
            break;
          }

          if (v13)
          {
            v15 = 0;
            while (v22 - v23 >= 2)
            {
              result = CMBlockBufferCopyDataBytes(a1, v23, 2uLL, &v18);
              if (result)
              {
                return result;
              }

              v23 += 2;
              v18 = bswap32(v18) >> 16;
              result = (a3)(&destination, &v20, (WORD2(v19) + v15), &v18, a4);
              if (result)
              {
                return result;
              }

              ++v15;
              v16 = BYTE6(v19);
              if (HIWORD(v19) <= v15)
              {
                goto LABEL_24;
              }
            }

            return 4294960546;
          }

          result = a3(&destination, &v20);
          if (result)
          {
            return result;
          }

          v16 = BYTE6(v19);
LABEL_24:
          v10 = v22;
          v11 = v23;
          if (v16)
          {
            if (v22 - v23 < 2)
            {
              return 4294960546;
            }

            v11 = v23 + 2;
            goto LABEL_27;
          }

LABEL_28:
          result = 0;
          if (v11 >= v10)
          {
            return result;
          }
        }

        v17 = (2 * v14 + 2) & 0x3FFFC;
        v10 = v22;
        if (v17 > v22 - v12)
        {
          return 4294960546;
        }

        v11 = v17 + v12;
LABEL_27:
        v23 = v11;
        goto LABEL_28;
      }
    }
  }

  return result;
}

uint64_t rtcpBBufUtils_rtcpCCFBToRecordsApplier(int a1, unsigned int *a2, void *key, unsigned __int16 *a4, uint64_t *a5)
{
  v18 = 0;
  if (!a4 || (*a4 & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = a5[1];
  if (v9)
  {
    if (CFDictionaryGetValue(*(v9 + 24), key))
    {
      return 4294960566;
    }

    v10 = *a4;
  }

  else
  {
    v10 = *a4;
  }

  if ((~v10 & 0x1FFE) != 0)
  {
    v12 = *a2;
    v13 = *a5;
    UInt32 = FigCFNumberCreateUInt32();
    if (!UInt32)
    {
      return 4294960568;
    }

    v11 = UInt32;
    v10 = *a4;
  }

  else
  {
    v11 = 0;
  }

  v17 = v11;
  LOWORD(v18) = (v10 >> 13) & 3;
  v15 = APSRTPSeqNumDictionarySetValue(a5[1], key, &v17);
  if (v11)
  {
    CFRelease(v11);
  }

  return v15;
}

uint64_t APSRTCPCCFBBBufGetTrailingUnReceivedRangeWithMediaSourceSSRC(OpaqueCMBlockBuffer *a1, int a2, int *a3)
{
  v7 = 0xFFFFFFFF00000000;
  result = 4294960591;
  if (a1)
  {
    if (a3)
    {
      result = rtcpBBufUtils_rtcpCCFBApplyFunction(a1, a2, rtcpBBufUtils_rtcpCCFBGetTrailingUnReceivedRangeApplier, &v7);
      if (!result)
      {
        if ((v7 & 0x20000) != 0)
        {
          v6 = HIDWORD(v7);
        }

        else
        {
          v6 = -1;
        }

        *a3 = v6;
      }
    }
  }

  return result;
}

uint64_t rtcpBBufUtils_rtcpCCFBGetTrailingUnReceivedRangeApplier(uint64_t a1, uint64_t a2, __int16 a3, __int16 *a4, uint64_t a5)
{
  v5 = *(a5 + 2);
  if ((v5 & 1) != 0 && (*a5 - a3) > 0)
  {
    result = 4294960527;
  }

  else if (a4 && *a4 < 0)
  {
    result = 0;
    *(a5 + 4) = a3 + 1;
    *(a5 + 6) = 0;
    LOBYTE(v5) = v5 & 0xFD;
  }

  else
  {
    v6 = *(a5 + 4);
    if (v6 >= 0x80010000)
    {
      result = 0;
      *(a5 + 4) = a3;
      *(a5 + 6) = a4 != 0;
      v10 = (v5 >> 1) & 1;
      if (a4)
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      LOBYTE(v5) = v11 | v5 & 0xFD;
    }

    else
    {
      v7 = (a3 - v6);
      if (a4)
      {
        ++v7;
      }

      if (v7 <= HIWORD(v6))
      {
        v8 = HIWORD(*(a5 + 4));
      }

      else
      {
        v8 = v7;
      }

      *(a5 + 6) = v8;
      if (*(a5 + 4) > 0x8000FFFF)
      {
        result = 4294960586;
      }

      else
      {
        LOBYTE(v5) = v5 | 2;
        result = 0;
      }
    }
  }

  *a5 = a3;
  *(a5 + 2) = v5 | 1;
  return result;
}

OpaqueCMBlockBuffer *APSRTCPBBufIsXR(OpaqueCMBlockBuffer *result)
{
  if (result)
  {
    destination = 0;
    return (!CMBlockBufferCopyDataBytes(result, 1uLL, 1uLL, &destination) && destination == 207);
  }

  return result;
}

uint64_t APSRTCPXRBBufGetPacketSenderSSRC(CMBlockBufferRef theSourceBuffer, _DWORD *a2)
{
  destination = 0;
  result = 4294960591;
  if (theSourceBuffer && a2)
  {
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, 4uLL, 4uLL, &destination);
    if (!result)
    {
      *a2 = bswap32(destination);
    }
  }

  return result;
}

uint64_t APSRTCPXRBBufCreateWithRTCPXRBlockBBufs(const __CFAllocator *a1, unsigned int a2, CFArrayRef theArray, CMBlockBufferRef *a4)
{
  sourceBytes = 0;
  destination = 0;
  v4 = 4294960591;
  blockBufferOut = 0;
  if (theArray && a4)
  {
    Count = CFArrayGetCount(theArray);
    if (Count > 2147483646)
    {
LABEL_22:
      v4 = 4294960553;
    }

    else
    {
      v10 = Count;
      appended = CMBlockBufferCreateEmpty(a1, Count + 1, 0, &blockBufferOut);
      if (appended || (appended = CMBlockBufferAppendMemoryBlock(blockBufferOut, 0, 8uLL, a1, 0, 0, 8uLL, 0), appended))
      {
LABEL_6:
        v4 = appended;
      }

      else if (v10 < 1)
      {
        v20 = 1;
LABEL_20:
        LOWORD(sourceBytes) = -12416;
        WORD1(sourceBytes) = bswap32(v20) >> 16;
        HIDWORD(sourceBytes) = bswap32(a2);
        v4 = CMBlockBufferReplaceDataBytes(&sourceBytes, blockBufferOut, 0, 8uLL);
        if (!v4)
        {
          *a4 = blockBufferOut;
          return v4;
        }
      }

      else
      {
        v13 = 0;
        v14 = 8;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          if (!ValueAtIndex)
          {
            break;
          }

          v16 = ValueAtIndex;
          v17 = CFGetTypeID(ValueAtIndex);
          if (v17 != CMBlockBufferGetTypeID())
          {
            break;
          }

          appended = CMBlockBufferCopyDataBytes(v16, 2uLL, 2uLL, &destination);
          if (appended)
          {
            goto LABEL_6;
          }

          DataLength = CMBlockBufferGetDataLength(v16);
          if (DataLength != 4 * (bswap32(destination) >> 16) + 4)
          {
            goto LABEL_22;
          }

          v19 = DataLength;
          appended = CMBlockBufferAppendBufferReference(blockBufferOut, v16, 0, 0, 0);
          if (appended)
          {
            goto LABEL_6;
          }

          v14 += v19;
          if (v10 == ++v13)
          {
            v20 = (v14 >> 2) - 1;
            goto LABEL_20;
          }
        }

        v4 = 4294960540;
      }
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }
  }

  return v4;
}

uint64_t APSRTCPXRBBufCopyRTCPXRBlockBBufs(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, CFMutableArrayRef *a3)
{
  v3 = 4294960591;
  if (a1 && a3)
  {
    capacity = 0;
    v7 = APSRTCPXRBBufApplyFunction(a1, *MEMORY[0x277CBED00], rtcpBBufUtils_rtcpXRBBufGetRTCPXRBlockCountApplier, &capacity);
    if (v7)
    {
      return v7;
    }

    else
    {
      Mutable = CFArrayCreateMutable(a2, capacity, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v9 = Mutable;
        v3 = APSRTCPXRBBufApplyFunction(a1, a2, rtcpBBufUtils_rtcpXRBBufCopyRTCPXRBlockBBufsApplier, Mutable);
        if (v3)
        {
          CFRelease(v9);
        }

        else
        {
          *a3 = v9;
        }
      }

      else
      {
        return 4294960568;
      }
    }
  }

  return v3;
}

uint64_t APSRTCPXRBBufApplyFunction(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, uint64_t (*a3)(CMBlockBufferRef, uint64_t), uint64_t a4)
{
  v22 = 0;
  offsetToData = 0;
  blockBufferOut = 0;
  PayloadOffset = 4294960591;
  v19 = 0;
  if (a1)
  {
    if (a3)
    {
      DataLength = CMBlockBufferGetDataLength(a1);
      PayloadOffset = rtcpBBufUtils_validateAndGetPayloadOffset(a1, 0, DataLength, 0, &offsetToData, &v19);
      if (!PayloadOffset)
      {
        v11 = v19;
        v10 = offsetToData;
        destination = 0;
        v12 = CMBlockBufferCopyDataBytes(a1, 1uLL, 1uLL, &destination);
        if (v12)
        {
          return v12;
        }

        else if (destination == 207)
        {
          v13 = v11 + v10;
          offsetToData = 8;
          if (v13 < 9)
          {
            return 0;
          }

          else
          {
            v14 = *MEMORY[0x277CBED00];
            v15 = 8;
            while (v13 - v15 >= 4)
            {
              v16 = CMBlockBufferCopyDataBytes(a1, v15, 4uLL, &v22);
              if (v16)
              {
                goto LABEL_20;
              }

              v17 = 4 * (bswap32(HIWORD(v22)) >> 16) + 4;
              if (v17 > v13 - offsetToData)
              {
                break;
              }

              if (v14 != a2 && (v16 = CMBlockBufferCreateWithBufferReference(a2, a1, offsetToData, v17, 0, &blockBufferOut), v16) || (v16 = a3(blockBufferOut, a4), v16))
              {
LABEL_20:
                PayloadOffset = v16;
                goto LABEL_21;
              }

              v15 = offsetToData + v17;
              offsetToData += v17;
              if (blockBufferOut)
              {
                CFRelease(blockBufferOut);
                blockBufferOut = 0;
                v15 = offsetToData;
              }

              if (v15 >= v13)
              {
                PayloadOffset = 0;
                goto LABEL_21;
              }
            }

            PayloadOffset = 4294960546;
LABEL_21:
            if (blockBufferOut)
            {
              CFRelease(blockBufferOut);
            }
          }
        }

        else
        {
          return 4294960540;
        }
      }
    }
  }

  return PayloadOffset;
}

uint64_t APSRTCPXRBBufGetRTCPXRBlockCount(OpaqueCMBlockBuffer *a1, void *a2)
{
  v5 = 0;
  v2 = 4294960591;
  if (a1)
  {
    if (a2)
    {
      v2 = APSRTCPXRBBufApplyFunction(a1, *MEMORY[0x277CBED00], rtcpBBufUtils_rtcpXRBBufGetRTCPXRBlockCountApplier, &v5);
      if (!v2)
      {
        *a2 = v5;
      }
    }
  }

  return v2;
}

uint64_t APSRTCPXRBBufApplyBlock(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, uint64_t a3)
{
  if (a1 && a3)
  {
    return APSRTCPXRBBufApplyFunction(a1, a2, rtcpBBufUtils_rtcpXRBBufBlockApplier, a3);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTCPXRBlockBBufGetBlockType(CMBlockBufferRef theSourceBuffer, _BYTE *a2)
{
  destination = 0;
  result = 4294960591;
  if (theSourceBuffer && a2)
  {
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 1uLL, &destination);
    if (!result)
    {
      *a2 = destination;
    }
  }

  return result;
}

OpaqueCMBlockBuffer *APSRTCPXRBlockIsRLE(OpaqueCMBlockBuffer *result)
{
  if (result)
  {
    destination = 0;
    return (!CMBlockBufferCopyDataBytes(result, 0, 1uLL, &destination) && destination <= 0x19u && ((1 << destination) & 0x2000006) != 0);
  }

  return result;
}

uint64_t APSRTCPXRRLEBlockBBufGetMediaSourceSSRC(CMBlockBufferRef theSourceBuffer, _DWORD *a2)
{
  destination = 0;
  result = 4294960591;
  if (theSourceBuffer && a2)
  {
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, 4uLL, 4uLL, &destination);
    if (!result)
    {
      *a2 = bswap32(destination);
    }
  }

  return result;
}

uint64_t APSRTCPXRRLEBlockBBufCreateWithSeqNumRangeSet(CFAllocatorRef allocator, unsigned int a2, unsigned int a3, uint64_t a4, int a5, CMBlockBufferRef *a6)
{
  *memoryBlock = 0u;
  v21 = 0u;
  blockBufferOut = 0;
  v7 = 4294960591;
  if (!a4 || !a6 || (v9 = a2, a2 > 0x19) || ((1 << a2) & 0x2000006) == 0)
  {
LABEL_17:
    if (memoryBlock[0])
    {
      CFAllocatorDeallocate(allocator, memoryBlock[0]);
    }

    goto LABEL_19;
  }

  v13 = (4 * CFArrayGetCount(*(a4 + 16)) + 15) & 0x7FFFC;
  Span = APSRTPSeqNumRangeSetGetSpan(a4);
  *&v21 = v13;
  memoryBlock[0] = MEMORY[0x223DB3470](allocator, v13, 2359178948, 0);
  if (memoryBlock[0])
  {
    memoryBlock[1] = 12;
    WORD4(v21) = Span;
    WORD5(v21) = a5 == 0;
    HIDWORD(v21) = 0x8000;
    v15 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a4, 0, 0xFFFFFFFF, rtcpBBufUtils_rtcpXRRLEBlockChunksFromRangeSetApplier, memoryBlock);
    if (v15)
    {
      v7 = v15;
      goto LABEL_17;
    }

    v16 = memoryBlock[1];
    if (HIWORD(v21))
    {
      if (v21 - memoryBlock[1] < 2)
      {
        goto LABEL_24;
      }

      *(memoryBlock[0] + memoryBlock[1]) = bswap32(WORD6(v21)) >> 16;
      v16 = memoryBlock[1] + 2;
      memoryBlock[1] = memoryBlock[1] + 2;
    }

    if ((v16 & 3) == 0)
    {
      goto LABEL_15;
    }

    if (v16)
    {
      goto LABEL_25;
    }

    if (v21 - v16 >= 2uLL)
    {
      *(memoryBlock[0] + v16) = 0;
      v16 = memoryBlock[1] + 2;
      memoryBlock[1] = v16;
      if ((v16 & 3) == 0)
      {
LABEL_15:
        if (v21 >= 0xC)
        {
          v17 = memoryBlock[0];
          *memoryBlock[0] = v9;
          v17[1] = 0;
          *(v17 + 1) = bswap32((v16 >> 2) - 1) >> 16;
          *(v17 + 1) = bswap32(a3);
          *(v17 + 4) = bswap32(Span) >> 16;
          *(v17 + 5) = bswap32(HIWORD(Span) + Span) >> 16;
          v7 = CMBlockBufferCreateWithMemoryBlock(allocator, memoryBlock[0], v21, allocator, 0, 0, memoryBlock[1], 0, &blockBufferOut);
          if (!v7)
          {
            *a6 = blockBufferOut;
            return v7;
          }

          goto LABEL_17;
        }

        goto LABEL_24;
      }

LABEL_25:
      v7 = 4294960587;
      goto LABEL_17;
    }

LABEL_24:
    v7 = 4294960545;
    goto LABEL_17;
  }

  v7 = 4294960568;
LABEL_19:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v7;
}

uint64_t rtcpBBufUtils_rtcpXRRLEBlockChunksFromRangeSetApplier(unsigned int a1, uint64_t a2)
{
  LODWORD(v2) = *(a2 + 24);
  if (v2 == a1)
  {
LABEL_22:
    v12 = a1 + HIWORD(a1);
    if (a1 == (a1 + HIWORD(a1)))
    {
      return 0;
    }

    while (1)
    {
      v13 = (v12 - a1);
      if (v13 >= 0x3FFF)
      {
        v14 = 0x3FFF;
      }

      else
      {
        v14 = (v12 - a1);
      }

      v15 = *(a2 + 30);
      if (v13 >= 0x10 && v15 == 0)
      {
        v21 = *(a2 + 8);
        if ((*(a2 + 16) - v21) < 2)
        {
          return 4294960545;
        }

        v22 = (((*(a2 + 26) & 1) << 14) | v14) >> 8;
        v18 = v14;
      }

      else
      {
        v17 = 15 - v15;
        if (v14 >= (15 - v15))
        {
          v18 = 15 - v15;
        }

        else
        {
          v18 = v14;
        }

        v19 = *(a2 + 28);
        v14 = (*(a2 + 26) * (~(-1 << v18) << (v17 - v18))) | v19;
        *(a2 + 28) = (*(a2 + 26) * (~(-1 << v18) << (v17 - v18))) | v19;
        v20 = v18 + v15;
        *(a2 + 30) = v20;
        if (v20 != 15)
        {
          goto LABEL_39;
        }

        *(a2 + 28) = 0x8000;
        v21 = *(a2 + 8);
        if ((*(a2 + 16) - v21) < 2)
        {
          return 4294960545;
        }

        LOBYTE(v22) = BYTE1(v14);
      }

      v23 = (*a2 + v21);
      *v23 = v22;
      v23[1] = v14;
      *(a2 + 8) += 2;
      LOWORD(a1) = *(a2 + 24);
LABEL_39:
      LOWORD(a1) = a1 + v18;
      *(a2 + 24) = a1;
      if (a1 == v12)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v3 = (a1 - v2);
    v4 = v3 >= 0x3FFF ? 0x3FFF : (a1 - v2);
    v5 = *(a2 + 30);
    if (v3 >= 0x10 && v5 == 0)
    {
      break;
    }

    if (v4 >= (15 - v5))
    {
      v7 = 15 - v5;
    }

    else
    {
      v7 = v4;
    }

    if (*(a2 + 26))
    {
      v8 = 0;
    }

    else
    {
      v8 = ~(-1 << v7) << (15 - v5 - v7);
    }

    LOWORD(v4) = v8 | *(a2 + 28);
    *(a2 + 28) = v4;
    v9 = v7 + v5;
    *(a2 + 30) = v9;
    if (v9 != 15)
    {
      goto LABEL_21;
    }

    *(a2 + 28) = 0x8000;
    v10 = *(a2 + 8);
    if ((*(a2 + 16) - v10) < 2)
    {
      return 4294960545;
    }

    LOBYTE(v11) = BYTE1(v4);
LABEL_20:
    v2 = (*a2 + v10);
    *v2 = v11;
    v2[1] = v4;
    *(a2 + 8) += 2;
    LOWORD(v2) = *(a2 + 24);
LABEL_21:
    LOWORD(v2) = v2 + v7;
    *(a2 + 24) = v2;
    if (v2 == a1)
    {
      goto LABEL_22;
    }
  }

  v10 = *(a2 + 8);
  if ((*(a2 + 16) - v10) >= 2)
  {
    v11 = (v4 | ((*(a2 + 26) == 0) << 14)) >> 8;
    v7 = v4;
    goto LABEL_20;
  }

  return 4294960545;
}

uint64_t APSRTCPXRRLEBlockBBufCopySeqNumRangeSet(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, int a3, CFTypeRef *a4)
{
  v32 = 0;
  destination = 0;
  v30 = 0;
  v4 = 4294960591;
  cf = 0;
  if (!a1 || !a4)
  {
    return v4;
  }

  DataLength = CMBlockBufferGetDataLength(a1);
  if (DataLength < 0xC)
  {
    goto LABEL_42;
  }

  v10 = DataLength;
  v11 = CMBlockBufferCopyDataBytes(a1, 0, 0xCuLL, &destination);
  if (v11)
  {
LABEL_14:
    v4 = v11;
    goto LABEL_15;
  }

  v12 = bswap32(WORD1(destination));
  v13 = HIWORD(v12);
  WORD1(destination) = HIWORD(v12);
  HIDWORD(destination) = bswap32(HIDWORD(destination));
  v14 = bswap32(v32) >> 16;
  LOWORD(v32) = v14;
  v15 = bswap32(HIWORD(v32)) >> 16;
  HIWORD(v32) = v15;
  if (destination <= 0x19u && ((1 << destination) & 0x2000006) != 0)
  {
    v16 = 4 * v13 + 4;
    if (v16 <= v10)
    {
      if (!BYTE1(destination))
      {
        v17 = v15 - v14;
        v18 = v14 | (v17 << 16);
        v19 = v17 > 0x8000u ? 0xFFFFFFFFLL : v18;
        if (v19 <= 0x8000FFFF)
        {
          v11 = APSRTPSeqNumRangeSetCreateMutable(a2, &cf);
          if (!v11)
          {
            v21 = cf;
            if (!cf)
            {
              return v4;
            }

            if (!*(cf + 28) || ((*(cf + 13) - HIWORD(v32)) & 0x8000) != 0)
            {
              *(cf + 13) = HIWORD(v32);
              v21[28] = 1;
            }

            v22 = 12;
            if (v13 < 3)
            {
LABEL_40:
              if (v22 == v16)
              {
                v4 = 0;
                *a4 = cf;
                return v4;
              }

LABEL_44:
              v4 = 4294960579;
              goto LABEL_15;
            }

            while (1)
            {
              v11 = CMBlockBufferCopyDataBytes(a1, v22, 2uLL, &v30);
              if (v11)
              {
                break;
              }

              v23 = v30;
              v24 = __rev16(v30);
              v30 = v24;
              v22 += 2;
              if (!v23)
              {
                goto LABEL_40;
              }

              if ((v24 & 0x8000) != 0)
              {
                v27 = HIWORD(v32);
                if (HIWORD(v32) != v19)
                {
                  v28 = 0;
                  do
                  {
                    if ((a3 == 0) != (((v30 << v28) & 0x4000) == 0))
                    {
                      v11 = APSRTPSeqNumRangeSetAddSeqNumRange(cf, v19 | 0x10000);
                      if (v11)
                      {
                        goto LABEL_14;
                      }

                      v27 = HIWORD(v32);
                    }

                    v19 = (v19 + 1);
                    if (v28 > 0xD)
                    {
                      break;
                    }

                    ++v28;
                  }

                  while (v19 != v27);
                }

                v26 = v19;
              }

              else
              {
                v25 = v24 & 0x3FFF;
                if ((v24 & 0x3FFF) == 0)
                {
                  goto LABEL_44;
                }

                v26 = (v25 + v19);
                if (((v24 & 0x3FFF) + v19 - HIWORD(v32)) > 0)
                {
                  v4 = 4294960586;
                  goto LABEL_15;
                }

                if ((a3 == 0) != v24 < 0x4000)
                {
                  v10 = v10 & 0xFFFFFFFF00000000 | v19 | (v25 << 16);
                  v11 = APSRTPSeqNumRangeSetAddSeqNumRange(cf, v10);
                  if (v11)
                  {
                    goto LABEL_14;
                  }
                }
              }

              v19 = v26;
              if (v22 >= v16)
              {
                goto LABEL_40;
              }
            }
          }

          goto LABEL_14;
        }
      }

      v4 = 4294960564;
      goto LABEL_15;
    }

LABEL_42:
    v4 = 4294960546;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t APSSignalErrorAt(uint64_t a1)
{
  if (gLogCategory_APSLogUtils <= 90 && (gLogCategory_APSLogUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return a1;
}

uint64_t APSLogErrorAt(uint64_t result)
{
  if (result)
  {
    if (gLogCategory_APSLogUtils <= 90)
    {
      if (gLogCategory_APSLogUtils != -1)
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

  else if (gLogCategory_APSLogUtils <= 90)
  {
    if (gLogCategory_APSLogUtils != -1)
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

char *APSSGetGasGaugeStringForPercent(int a1)
{
  LODWORD(v1) = ((a1 / -100.0 + 1.0) * 50.0) & ~(((a1 / -100.0 + 1.0) * 50.0) >> 31);
  if (v1 >= 50)
  {
    v1 = 50;
  }

  else
  {
    v1 = v1;
  }

  return &asc_222352949[v1];
}

uint64_t APSDispatchDataCreateWithBlockBuffer(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, NSObject **a3)
{
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v3 = 4294960591;
  if (a1 && a3)
  {
    DataLength = CMBlockBufferGetDataLength(a1);
    if (DataLength)
    {
      v8 = DataLength;
      if (CMBlockBufferIsRangeContiguous(a1, 0, DataLength) || *MEMORY[0x277CBED00] == a2)
      {
        v12 = 0;
        v13 = 0;
        destructor[0] = MEMORY[0x277D85DD0];
        destructor[1] = 0x40000000;
        destructor[2] = __APSDispatchDataCreateWithBlockBuffer_block_invoke_2;
        destructor[3] = &__block_descriptor_tmp_1;
        destructor[4] = a1;
        while (1)
        {
          DataPointer = CMBlockBufferGetDataPointer(a1, v12, &lengthAtOffsetOut, 0, &dataPointerOut);
          if (DataPointer)
          {
            break;
          }

          v15 = dispatch_data_create(dataPointerOut, lengthAtOffsetOut, 0, destructor);
          if (!v15)
          {
            v3 = 4294960568;
            if (!v13)
            {
              return v3;
            }

LABEL_18:
            dispatch_release(v13);
            return v3;
          }

          v11 = v15;
          CFRetain(a1);
          if (v13)
          {
            concat = dispatch_data_create_concat(v13, v11);
            dispatch_release(v13);
            dispatch_release(v11);
            v11 = concat;
            if (!concat)
            {
              return 4294960568;
            }
          }

          v12 += lengthAtOffsetOut;
          v13 = v11;
          if (v12 >= v8)
          {
            goto LABEL_22;
          }
        }

        v3 = DataPointer;
        if (!v13)
        {
          return v3;
        }

        goto LABEL_18;
      }

      v9 = MEMORY[0x223DB3470](a2, v8, 1054047929, 0);
      if (!v9)
      {
        return 4294960568;
      }

      v10 = v9;
      v3 = CMBlockBufferCopyDataBytes(a1, 0, v8, v9);
      if (v3)
      {
        goto LABEL_8;
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 0x40000000;
      v20[2] = __APSDispatchDataCreateWithBlockBuffer_block_invoke;
      v20[3] = &__block_descriptor_tmp_382;
      v20[4] = a2;
      v20[5] = v10;
      v17 = dispatch_data_create(v10, v8, 0, v20);
      if (!v17)
      {
        v3 = 4294960568;
LABEL_8:
        CFAllocatorDeallocate(a2, v10);
        return v3;
      }

      v11 = v17;
      if (a2)
      {
        CFRetain(a2);
      }
    }

    else
    {
      v11 = MEMORY[0x277D85CC8];
      dispatch_retain(MEMORY[0x277D85CC8]);
    }

LABEL_22:
    dispatch_retain(v11);
    *a3 = v11;
    dispatch_release(v11);
    return 0;
  }

  return v3;
}

void __APSDispatchDataCreateWithBlockBuffer_block_invoke(uint64_t a1)
{
  CFAllocatorDeallocate(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t APSDispatchDataCopyBytes(NSObject *a1, size_t a2, size_t a3, uint64_t a4)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 0;
  v4 = 4294960591;
  if (a1)
  {
    if (a4)
    {
      size = dispatch_data_get_size(a1);
      if (size >= a3 && size - a3 >= a2)
      {
        if (a3)
        {
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 0x40000000;
          v11[2] = __APSDispatchDataCopyBytes_block_invoke;
          v11[3] = &unk_2784A26F0;
          v11[4] = v12;
          v11[5] = a2;
          v11[6] = a3;
          v11[7] = a4;
          dispatch_data_apply(a1, v11);
        }

        v4 = 0;
      }
    }
  }

  _Block_object_dispose(v12, 8);
  return v4;
}

BOOL __APSDispatchDataCopyBytes_block_invoke(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1[5];
  v7 = v6 >= a3;
  v8 = v6 - a3;
  if (!v7)
  {
    v8 = 0;
  }

  if (a5 > v8)
  {
    v9 = *(*(a1[4] + 8) + 24);
    if (a5 - v8 >= a1[6] - v9)
    {
      v10 = a1[6] - v9;
    }

    else
    {
      v10 = a5 - v8;
    }

    memcpy((a1[7] + v9), (a4 + v8), v10);
    *(*(a1[4] + 8) + 24) += v10;
  }

  return *(*(a1[4] + 8) + 24) < a1[6];
}

uint64_t APSEndpointStreamAudioHoseSendAudioBatchSlow(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v3 = 4294894965;
  if (a1 && theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        if (!ValueAtIndex)
        {
          break;
        }

        v11 = ValueAtIndex;
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 != CMBlockBufferGetTypeID())
        {
          break;
        }

        pthread_once(&APSEndpointStreamAudioHoseProtocolGetProtocolID_sRegisterAPSEndpointStreamAudioHoseProtocolTypeOnce, registerAPSEndpointStreamAudioHoseProtocolType);
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (!ProtocolVTable)
        {
          return 4294954508;
        }

        v14 = *(ProtocolVTable + 16);
        if (!v14)
        {
          return 4294954508;
        }

        v15 = *(v14 + 8);
        if (!v15)
        {
          return 4294954514;
        }

        v16 = *(v14 + 8);
        v17 = v15(a1, a2, v11);
        if (v17)
        {
          return v17;
        }

        if (v8 == ++v9)
        {
          return 0;
        }
      }
    }
  }

  return v3;
}

uint64_t APSThreadSafeSetGetTypeID()
{
  if (gAPSThreadSafeSetInitOnce != -1)
  {
    dispatch_once_f(&gAPSThreadSafeSetInitOnce, 0, _APSThreadSafeSetGetTypeID);
  }

  return gAPSThreadSafeSetTypeID;
}

uint64_t _APSThreadSafeSetGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSThreadSafeSetTypeID = result;
  return result;
}

uint64_t _APSThreadSafeSetFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);

  return FigSimpleMutexDestroy();
}

uint64_t APSThreadSafeSetCreate(CFTypeRef *a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (gAPSThreadSafeSetInitOnce != -1)
  {
    dispatch_once_f(&gAPSThreadSafeSetInitOnce, 0, _APSThreadSafeSetGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v3 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  v4 = FigSimpleMutexCreate();
  v3[2] = v4;
  if (v4)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
    v3[3] = Mutable;
    if (Mutable)
    {
      v6 = 0;
      *a1 = CFRetain(v3);
    }

    else
    {
      v6 = 4294954510;
    }
  }

  else
  {
    v6 = 4294960568;
  }

  CFRelease(v3);
  return v6;
}

uint64_t APSThreadSafeSetSetValue(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v5 = *(a1 + 16);
  FigSimpleMutexLock();
  CFSetSetValue(*(a1 + 24), a2);
  v6 = *(a1 + 16);

  return FigSimpleMutexUnlock();
}

uint64_t APSThreadSafeSetRemoveValue(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v5 = *(a1 + 16);
  FigSimpleMutexLock();
  CFSetRemoveValue(*(a1 + 24), a2);
  v6 = *(a1 + 16);

  return FigSimpleMutexUnlock();
}

CFIndex APSThreadSafeSetGetCount(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 16);
  FigSimpleMutexLock();
  Count = CFSetGetCount(*(a1 + 24));
  v5 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return Count;
}

uint64_t APSRingBufferFlushControllerInit(unint64_t *a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 0;
  atomic_store(0, a1);
  return result;
}

uint64_t APSRingBufferFlushControllerPrepareForFlush(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 0;
  *a1 = *(a2 + 28) | 0x100000000;
  return result;
}

uint64_t APSRingBufferFlushControllerFlush@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    return 4294960591;
  }

  __swp(a3, a1);
  if ((a3 & 0xFF00000000) == 0)
  {
    LODWORD(a3) = *(a2 + 28);
  }

  result = 0;
  *(a2 + 24) = a3;
  return result;
}

uint64_t APSNetworkClockNTPServerCreate(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  v4 = ntpClock_createCommon(a1, a2, &cf);
  v5 = v4;
  if (v4)
  {
    APSLogErrorAt(v4);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = cf;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 24) = 1;
    v8 = *(DerivedStorage + 8);
    NTPClockSetListenPort();
    *a3 = v6;
  }

  return v5;
}

uint64_t ntpClock_createCommon(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (APSNetworkClockGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSNetworkClockGetClassID_sRegisterOnce, &APSNetworkClockGetClassID_sClassID, networkClock_registerBaseClass);
  }

  Mutable = CMDerivedObjectCreate();
  if (Mutable)
  {
    v10 = Mutable;
LABEL_18:
    APSLogErrorAt(Mutable);
    goto LABEL_13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = FigSimpleMutexCreate();
  *DerivedStorage = Mutable;
  if (!Mutable)
  {
    v10 = 4294895326;
    goto LABEL_18;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  DerivedStorage[2] = Mutable;
  if (!Mutable)
  {
    v10 = 4294895326;
    goto LABEL_18;
  }

  Mutable = NTPClockCreate();
  if (Mutable)
  {
    v10 = Mutable;
    goto LABEL_18;
  }

  if (SNPrintF() <= 0)
  {
    APSLogErrorAt(0);
    v10 = 4294895322;
  }

  else
  {
    v6 = DerivedStorage[1];
    NTPClockSetEpoch();
    v7 = DerivedStorage[1];
    NTPClockSetP2P();
    v8 = DerivedStorage[1];
    NTPClockSetThreadName();
    v9 = DerivedStorage[1];
    NTPClockSetThreadPriority();
    if (gLogCategory_APSNetworkClockNTP <= 50 && (gLogCategory_APSNetworkClockNTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = 0;
    *a3 = 0;
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t ntpClock_StopForClient(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  if (ntpClock_isStarted())
  {
    if (!a2)
    {
      APSLogErrorAt(0);
      v7 = 4294895325;
      goto LABEL_14;
    }

    if (CFSetContainsValue(*(DerivedStorage + 16), a2))
    {
      Count = CFSetGetCount(*(DerivedStorage + 16));
      CFSetRemoveValue(*(DerivedStorage + 16), a2);
      if (gLogCategory_APSNetworkClockNTP <= 50 && (gLogCategory_APSNetworkClockNTP != -1 || _LogCategory_Initialize()))
      {
        CFSetGetCount(*(DerivedStorage + 16));
        LogPrintF();
      }

      if (Count == 1)
      {
        v6 = *(DerivedStorage + 8);
        NTPClockStop();
        if (gLogCategory_APSNetworkClockNTP <= 50 && (gLogCategory_APSNetworkClockNTP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }
    }
  }

  v7 = 0;
LABEL_14:
  v8 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t ntpClock_StartForClient(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  if (!a2)
  {
    APSLogErrorAt(0);
    v5 = 4294895325;
    goto LABEL_22;
  }

  if (CFSetContainsValue(*(DerivedStorage + 16), a2))
  {
    goto LABEL_12;
  }

  if (!CFSetGetCount(*(DerivedStorage + 16)))
  {
    v5 = *(DerivedStorage + 28);
    if (v5)
    {
      if (gLogCategory_APSNetworkClockNTP <= 60 && (gLogCategory_APSNetworkClockNTP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      v6 = *(DerivedStorage + 8);
      if (*(DerivedStorage + 24))
      {
        started = NTPClockStartServer();
      }

      else
      {
        started = NTPClockStartClient();
      }

      v5 = started;
      if (!started)
      {
        if (gLogCategory_APSNetworkClockNTP <= 50 && (gLogCategory_APSNetworkClockNTP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_4;
      }
    }

    APSLogErrorAt(v5);
    goto LABEL_22;
  }

LABEL_4:
  CFSetAddValue(*(DerivedStorage + 16), a2);
  if (gLogCategory_APSNetworkClockNTP <= 50 && (gLogCategory_APSNetworkClockNTP != -1 || _LogCategory_Initialize()))
  {
    CFSetGetCount(*(DerivedStorage + 16));
    LogPrintF();
  }

LABEL_12:
  v5 = 0;
LABEL_22:
  v8 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t ntpClock_ConvertNetworkTimeToUpTicks(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  FigSimpleMutexLock();
  isStarted = ntpClock_isStarted();
  if (isStarted)
  {
    v9 = *(a2 + 16);
    v8 = *(a2 + 8);
    if (*(DerivedStorage + 24))
    {
      UpTicksNearSynchronizedNTPTime = NTPtoUpTicks();
    }

    else
    {
      v11 = *(DerivedStorage + 8);
      UpTicksNearSynchronizedNTPTime = NTPClockGetUpTicksNearSynchronizedNTPTime();
    }

    v12 = 0;
    *a3 = UpTicksNearSynchronizedNTPTime;
  }

  else
  {
    APSLogErrorAt(isStarted);
    v12 = 4294895323;
  }

  v13 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t ntpClock_GetSynchronizedNetworkTime(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  isStarted = ntpClock_isStarted();
  if (isStarted)
  {
    if (*(DerivedStorage + 24))
    {
      mach_absolute_time();
      SynchronizedNTPTime = UpTicksToNTP();
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      SynchronizedNTPTime = NTPClockGetSynchronizedNTPTime();
    }

    v8 = 0;
    *a2 = 0;
    a2[1] = SynchronizedNTPTime << 32;
    a2[2] = HIDWORD(SynchronizedNTPTime);
  }

  else
  {
    APSLogErrorAt(isStarted);
    v8 = 4294895323;
  }

  v9 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t ntpClock_SetProperty(uint64_t a1, __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == @"APSNetworkClock::SimulatedStartError" || a2 && CFEqual(a2, @"APSNetworkClock::SimulatedStartError"))
  {
    v4 = *DerivedStorage;
    FigSimpleMutexLock();
    *(DerivedStorage + 28) = CFGetInt64();
    v5 = *DerivedStorage;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    v6 = 4294954509;
    APSLogErrorAt(4294954509);
  }

  return v6;
}

uint64_t ntpClock_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"NetworkClock_Type"))
  {
    if (CFEqual(a2, @"PortLocal"))
    {
      v10 = *DerivedStorage;
      FigSimpleMutexLock();
      if (!*(DerivedStorage + 24) && gLogCategory_APSNetworkClockNTP <= 50 && (gLogCategory_APSNetworkClockNTP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v15 = *(DerivedStorage + 8);
      valuePtr = NTPClockGetListenPort();
      *a4 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr);
      v16 = *DerivedStorage;
      FigSimpleMutexUnlock();
      if (!*a4)
      {
        APSLogErrorAt(0);
        return 4294895326;
      }
    }

    else
    {
      if (CFEqual(a2, @"SourceClock"))
      {
        HostTimeClock = CMClockGetHostTimeClock();
        goto LABEL_3;
      }

      if (!CFEqual(a2, @"IsStarted"))
      {
        if (!CFEqual(a2, @"IsLocked"))
        {
          v9 = 4294954509;
          APSLogErrorAt(4294954509);
          return v9;
        }

        HostTimeClock = *MEMORY[0x277CBED28];
        goto LABEL_3;
      }

      v11 = *DerivedStorage;
      FigSimpleMutexLock();
      isStarted = ntpClock_isStarted();
      v13 = MEMORY[0x277CBED28];
      if (!isStarted)
      {
        v13 = MEMORY[0x277CBED10];
      }

      *a4 = CFRetain(*v13);
      v14 = *DerivedStorage;
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  HostTimeClock = @"NetworkClockType_NTP";
LABEL_3:
  v9 = 0;
  *a4 = CFRetain(HostTimeClock);
  return v9;
}

__CFString *ntpClock_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSNTPClock %p>", a1);
  return Mutable;
}

uint64_t ntpClock_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSNetworkClockNTP <= 50 && (gLogCategory_APSNetworkClockNTP != -1 || _LogCategory_Initialize()))
  {
    v1 = *(DerivedStorage + 16);
    if (v1)
    {
      CFSetGetCount(v1);
    }

    LogPrintF();
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  if (*(DerivedStorage + 8))
  {
    NTPClockStop();
    CFRelease(*(DerivedStorage + 8));
    *(DerivedStorage + 8) = 0;
  }

  v3 = *DerivedStorage;
  result = FigSimpleMutexDestroy();
  *DerivedStorage = 0;
  return result;
}

uint64_t APSNetworkClockNTPClientCreate(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  cf = 0;
  v8 = ntpClock_createCommon(a1, a3, &cf);
  v9 = v8;
  if (v8)
  {
    APSLogErrorAt(v8);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v10 = cf;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = DerivedStorage;
    *(DerivedStorage + 24) = 0;
    if (a2)
    {
      v13 = *(DerivedStorage + 8);
      NTPClockSetQoSDisabled();
    }

    v14 = *(v12 + 8);
    NTPClockSetRTCP();
    v15 = *(v12 + 8);
    NTPClockSetPeer();
    *a6 = v10;
  }

  return v9;
}

uint64_t APSNetworkClockNTPConvertUpTicksToNTP(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *DerivedStorage;
  FigSimpleMutexLock();
  isStarted = ntpClock_isStarted();
  if (isStarted)
  {
    if (*(DerivedStorage + 24))
    {
      SynchronizedNTPTimeNearUpTicks = UpTicksToNTP();
    }

    else
    {
      v8 = *(DerivedStorage + 8);
      SynchronizedNTPTimeNearUpTicks = NTPClockGetSynchronizedNTPTimeNearUpTicks();
    }

    v9 = 0;
    *a3 = SynchronizedNTPTimeNearUpTicks;
  }

  else
  {
    APSLogErrorAt(isStarted);
    v9 = 4294895323;
  }

  v10 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t APSNetworkClockNTPConvertNTPToUpTicks(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *DerivedStorage;
  FigSimpleMutexLock();
  isStarted = ntpClock_isStarted();
  if (isStarted)
  {
    if (*(DerivedStorage + 24))
    {
      UpTicksNearSynchronizedNTPTime = NTPtoUpTicks();
    }

    else
    {
      v8 = *(DerivedStorage + 8);
      UpTicksNearSynchronizedNTPTime = NTPClockGetUpTicksNearSynchronizedNTPTime();
    }

    v9 = 0;
    *a3 = UpTicksNearSynchronizedNTPTime;
  }

  else
  {
    APSLogErrorAt(isStarted);
    v9 = 4294895323;
  }

  v10 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t APSOasisCPUFloorRaiserGetTypeID()
{
  if (gAPSOasisCPUFloorRaiserInitOnce != -1)
  {
    dispatch_once_f(&gAPSOasisCPUFloorRaiserInitOnce, 0, _APSOasisCPUFloorRaiserGetTypeID);
  }

  return gAPSOasisCPUFloorRaiserTypeID;
}

uint64_t _APSOasisCPUFloorRaiserGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSOasisCPUFloorRaiserTypeID = result;
  return result;
}

uint64_t _APSOasisCPUFloorRaiserFinalize(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_APSOasisCPUFloorRaiser <= 50 && (gLogCategory_APSOasisCPUFloorRaiser != -1 || _LogCategory_Initialize()))
    {
      v4 = *(a1 + 24);
      LogPrintF();
    }

    APSOasisCPUFloorRaiserReleaseAssertion(a1);
  }

  v2 = *(a1 + 16);

  return FigSimpleMutexDestroy();
}

uint64_t APSOasisCPUFloorRaiserReleaseAssertion(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexLock();
  if (!*(a1 + 32))
  {
    APSLogErrorAt(0);
    v5 = 4294960587;
    goto LABEL_19;
  }

  if (gLogCategory_APSOasisCPUFloorRaiser <= 50 && (gLogCategory_APSOasisCPUFloorRaiser != -1 || _LogCategory_Initialize()))
  {
    v8 = *(a1 + 24);
    LogPrintF();
  }

  if (apsSingletonFloorRaiserIsAllowed_onceToken != -1)
  {
    dispatch_once(&apsSingletonFloorRaiserIsAllowed_onceToken, &__block_literal_global_430);
  }

  if (apsSingletonFloorRaiserIsAllowed_isAllowed)
  {
    v3 = apsSingletonFloorRaiserInit();
    if (v3)
    {
      v5 = v3;
      APSLogErrorAt(v3);
    }

    else
    {
      FigSimpleMutexLock();
      v4 = dword_27D00B748 - 1;
      if (dword_27D00B748 >= 1)
      {
        --dword_27D00B748;
        if (!v4)
        {
          if (gLogCategory_APSOasisCPUFloorRaiser <= 50 && (gLogCategory_APSOasisCPUFloorRaiser != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          notify_set_state(dword_27D00B74C, 0);
          notify_post("com.apple.airplay.oasis");
        }

        FigSimpleMutexUnlock();
        goto LABEL_18;
      }

      APSLogErrorAt(0);
      FigSimpleMutexUnlock();
      v5 = 4294960587;
    }

    APSLogErrorAt(v5);
    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  *(a1 + 32) = 0;
LABEL_19:
  v6 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t apsSingletonFloorRaiserInit()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  if (apsSingletonFloorRaiserIsAllowed_onceToken != -1)
  {
    dispatch_once(&apsSingletonFloorRaiserIsAllowed_onceToken, &__block_literal_global_430);
  }

  if (apsSingletonFloorRaiserIsAllowed_isAllowed)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __apsSingletonFloorRaiserInit_block_invoke;
    block[3] = &unk_2784A27A8;
    block[4] = &v4;
    if (apsSingletonFloorRaiserInit_onceToken != -1)
    {
      dispatch_once(&apsSingletonFloorRaiserInit_onceToken, block);
    }

    v0 = *(v5 + 6);
    if (v0)
    {
      APSLogErrorAt(v0);
    }

    else if (!gSingletonFloorRaiser || !dword_27D00B74C)
    {
      APSLogErrorAt(0);
      *(v5 + 6) = -6728;
    }
  }

  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t __apsSingletonFloorRaiserInit_block_invoke(uint64_t a1)
{
  gSingletonFloorRaiser = FigSimpleMutexCreate();
  dword_27D00B748 = 0;
  result = notify_register_check("com.apple.airplay.oasis", &dword_27D00B74C);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __apsSingletonFloorRaiserIsAllowed_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  apsSingletonFloorRaiserIsAllowed_isAllowed = result == 0;
  if (gLogCategory_APSOasisCPUFloorRaiser <= 50)
  {
    if (gLogCategory_APSOasisCPUFloorRaiser != -1)
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

uint64_t APSOasisCPUFloorRaiserCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (gAPSOasisCPUFloorRaiserInitOnce != -1)
    {
      dispatch_once_f(&gAPSOasisCPUFloorRaiserInitOnce, 0, _APSOasisCPUFloorRaiserGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      Instance[2] = 0;
      Instance[3] = 0;
      Instance[4] = 0;
      v7 = FigSimpleMutexCreate();
      v6[2] = v7;
      if (v7)
      {
        result = 0;
        v6[3] = a2;
        *a3 = v6;
        return result;
      }

      APSLogErrorAt(0);
      CFRelease(v6);
    }

    else
    {
      APSLogErrorAt(0);
    }

    return 4294960568;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSOasisCPUFloorRaiserRetainAssertion(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexLock();
  if (*(a1 + 32))
  {
    APSLogErrorAt(0);
    v5 = 4294960587;
  }

  else
  {
    if (gLogCategory_APSOasisCPUFloorRaiser <= 50 && (gLogCategory_APSOasisCPUFloorRaiser != -1 || _LogCategory_Initialize()))
    {
      v8 = *(a1 + 24);
      LogPrintF();
    }

    if (apsSingletonFloorRaiserIsAllowed_onceToken != -1)
    {
      dispatch_once(&apsSingletonFloorRaiserIsAllowed_onceToken, &__block_literal_global_430);
    }

    if (apsSingletonFloorRaiserIsAllowed_isAllowed)
    {
      v3 = apsSingletonFloorRaiserInit();
      if (v3)
      {
        v5 = v3;
        APSLogErrorAt(v3);
        APSLogErrorAt(v5);
        goto LABEL_18;
      }

      FigSimpleMutexLock();
      v4 = dword_27D00B748;
      if (!dword_27D00B748)
      {
        if (gLogCategory_APSOasisCPUFloorRaiser <= 50 && (gLogCategory_APSOasisCPUFloorRaiser != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        notify_set_state(dword_27D00B74C, 1uLL);
        notify_post("com.apple.airplay.oasis");
        v4 = dword_27D00B748;
      }

      dword_27D00B748 = v4 + 1;
      FigSimpleMutexUnlock();
    }

    v5 = 0;
    *(a1 + 32) = 1;
  }

LABEL_18:
  v6 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t APSCryptorCTRCreate(uint64_t a1, const __CFData *a2, const __CFData *a3, void *a4)
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
LABEL_17:
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
    goto LABEL_17;
  }

  CMBaseObjectGetDerivedStorage();
  CFDataGetBytePtr(a2);
  CFDataGetBytePtr(a3);
  v7 = AES_CTR_Init();
  if (v7)
  {
    v8 = v7;
    goto LABEL_17;
  }

  if (gLogCategory_APSCryptorCTR <= 30 && (gLogCategory_APSCryptorCTR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = 0;
  *a4 = 0;
  return v8;
}

uint64_t ctrCryptor_EncryptMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  CMBaseObjectGetDerivedStorage();
  if (a7 < a5)
  {
    APSLogErrorAt(0);
    return 4294895585;
  }

  else
  {
    v9 = AES_CTR_Update();
    v10 = v9;
    if (v9)
    {
      APSLogErrorAt(v9);
    }
  }

  return v10;
}

__CFString *ctrCryptor_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSCryptorCTR %p>", a1);
  return Mutable;
}

uint64_t ctrCryptor_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSCryptorCTR <= 30 && (gLogCategory_APSCryptorCTR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return AES_CTR_Final();
}

uint64_t APSRTCPCCFBProcessorGetTypeID()
{
  if (gAPSRTCPCCFBProcessorInitOnce != -1)
  {
    dispatch_once_f(&gAPSRTCPCCFBProcessorInitOnce, 0, _APSRTCPCCFBProcessorGetTypeID);
  }

  return gAPSRTCPCCFBProcessorTypeID;
}

uint64_t _APSRTCPCCFBProcessorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRTCPCCFBProcessorTypeID = result;
  return result;
}

void _APSRTCPCCFBProcessorFinalize(void *a1)
{
  if (gLogCategory_APSRTCPCCFBProcessor <= 30 && (gLogCategory_APSRTCPCCFBProcessor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[12];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t APSRTCPCCFBProcessorCreate(CFTypeRef *a1)
{
  if (a1)
  {
    if (gAPSRTCPCCFBProcessorInitOnce != -1)
    {
      dispatch_once_f(&gAPSRTCPCCFBProcessorInitOnce, 0, _APSRTCPCCFBProcessorGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 96) = 0;
      *(Instance + 64) = 0u;
      *(Instance + 80) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      Mutable = APSRTPSeqNumDictionaryCreateMutable(*MEMORY[0x277CBECE8], MEMORY[0x277CBF150], (Instance + 16));
      v5 = Mutable;
      if (Mutable)
      {
        APSLogErrorAt(Mutable);
      }

      else
      {
        *a1 = CFRetain(v3);
        if (gLogCategory_APSRTCPCCFBProcessor <= 30 && (gLogCategory_APSRTCPCCFBProcessor != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      CFRelease(v3);
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

  return v5;
}

uint64_t APSRTCPCCFBProcessorUpdateFeedback(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (!CFDictionaryGetCount(*(a2 + 24)))
  {
    return 0;
  }

  if (!*(a1 + 24) || *(a1 + 28) != a3)
  {
    ++*(a1 + 36);
  }

  *(a1 + 28) = a3;
  *(a1 + 32) = a4;
  *(a1 + 24) = 1;
  v22 = MEMORY[0x277D85DD0];
  v23 = 0x40000000;
  v24 = __rtcpCCFBProcessor_updateRTTEstimate_block_invoke;
  v25 = &__block_descriptor_tmp_471;
  v26 = a1;
  v27 = __PAIR64__(a3, a4);
  v30 = a2;
  v31 = 1;
  v32 = rtpSeqNumDict_blockApplier;
  v33 = &v22;
  APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a2 + 16), 1, 0xFFFFFFFF, rtpSeqNumDict_rangeSetApplier, &v30);
  cf = 0;
  v8 = *MEMORY[0x277CBECE8];
  v9 = APSRTPSeqNumDictionaryCreateMutable(*MEMORY[0x277CBECE8], MEMORY[0x277CBF150], &cf);
  if (v9)
  {
    v11 = v9;
LABEL_38:
    APSLogErrorAt(v9);
    goto LABEL_12;
  }

  v22 = MEMORY[0x277D85DD0];
  v23 = 0x40000000;
  v24 = __rtcpCCFBProcessor_updateRateController_block_invoke;
  v25 = &__block_descriptor_tmp_33;
  v28 = a3;
  v26 = a1;
  v27 = cf;
  v30 = a2;
  v31 = 0;
  v32 = rtpSeqNumDict_blockApplier;
  v33 = &v22;
  v9 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a2 + 16), 0, 0xFFFFFFFF, rtpSeqNumDict_rangeSetApplier, &v30);
  if (v9)
  {
    v11 = v9;
    goto LABEL_38;
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    v10(*(a1 + 96), cf);
  }

  v11 = 0;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    v21 = v11;
LABEL_41:
    APSLogErrorAt(v21);
    return v11;
  }

  v12 = APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRangeSet(*(a1 + 16), *(a2 + 16));
  if (v12)
  {
    v11 = v12;
    APSLogErrorAt(v12);
    v21 = v11;
    goto LABEL_41;
  }

  v30 = 0;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  if (!CFDictionaryGetCount(*(v13 + 24)))
  {
    v11 = 0;
    goto LABEL_27;
  }

  v14 = APSRTPSeqNumRangeSetCreateMutable(v8, &v30);
  if (v14)
  {
    v11 = v14;
    APSLogErrorAt(v14);
    goto LABEL_27;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(v15 + 16);
  }

  else
  {
    v16 = 0;
  }

  Span = APSRTPSeqNumRangeSetGetSpan(*(a2 + 16));
  v22 = MEMORY[0x277D85DD0];
  v23 = 0x40000000;
  v24 = __rtcpCCFBProcessor_requestRetransmitIfNeeded_block_invoke;
  v25 = &__block_descriptor_tmp_35;
  v18 = v30;
  v26 = v30;
  if (v16)
  {
    v11 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(v16, 0, Span, rtpSeqNumRangeSet_blockApplier, &v22);
    v18 = v30;
    if (!v30)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v11 = 4294960591;
    if (!v30)
    {
      goto LABEL_27;
    }
  }

  if (v18[12])
  {
    v19 = *(a1 + 72);
    if (v19)
    {
      v19(*(a1 + 80));
    }
  }

LABEL_27:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v11)
  {
    v21 = v11;
    goto LABEL_41;
  }

  return v11;
}

uint64_t __rtcpCCFBProcessor_updateRTTEstimate_block_invoke(uint64_t a1, void *key, void *a3)
{
  if (!*a3)
  {
    return 0;
  }

  v4 = *(*(a1 + 32) + 16);
  if (v4)
  {
    CFDictionaryGetValue(*(v4 + 24), key);
  }

  result = FigCFDictionaryGetValue();
  if (result)
  {
    v6 = *(a1 + 40);
    v7 = v6 - FigCFNumberGetUInt32();
    v8 = *(a1 + 44);
    v9 = FigCFNumberGetUInt32() - v8 + v7;
    v10 = *(a1 + 32);
    *(v10 + 44) = v9;
    v11.f64[0] = v9;
    if (*(v10 + 40))
    {
      v12 = *(v10 + 48);
      v11.f64[1] = vabdd_f64(v12.f64[0], v9);
      v11 = vmlaq_f64(vmulq_f64(v11, xmmword_22234D040), xmmword_22234D050, v12);
      *(v10 + 48) = v11;
      v13 = v11.f64[1];
    }

    else
    {
      v13 = vcvtd_n_f64_u32(v9, 1uLL);
      *(v10 + 48) = v9;
      *(v10 + 56) = v13;
      *(v10 + 40) = 1;
    }

    v14 = v13 * 4.0;
    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    *(v10 + 64) = v11.f64[0] + v14;
    return 4294960573;
  }

  return result;
}

uint64_t __rtcpCCFBProcessor_updateRateController_block_invoke(uint64_t a1, void *key, void **a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(*(a1 + 32) + 16);
  if (v5 && CFDictionaryGetValue(*(v5 + 24), key))
  {
    Value = FigCFDictionaryGetValue();
    if (!Value || (v8 = Value, (v9 = FigCFDictionaryGetValue()) == 0) || (v10 = v9, v11 = FigCFDictionaryGetValue(), v12 = *MEMORY[0x277CBECE8], v13 = *(a1 + 48), (UInt32 = FigCFNumberCreateUInt32()) == 0))
    {
      APSLogErrorAt(0);
      goto LABEL_19;
    }

    v15 = UInt32;
    v16 = *a3;
    if (*a3)
    {
      *keys = xmmword_2784A2808;
      v27 = *off_2784A2818;
      v28 = @"ProbingSequenceID";
      values[0] = v8;
      values[1] = v10;
      values[2] = v16;
      values[3] = UInt32;
      values[4] = v11;
      if (v11)
      {
        v17 = 5;
      }

      else
      {
        v17 = 4;
      }

      v18 = CFDictionaryCreate(v12, keys, values, v17, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v18)
      {
        v19 = v18;
        v20 = APSRTPSeqNumDictionarySetValue(*(a1 + 40), key, v18);
        if (v20)
        {
          APSLogErrorAt(v20);
        }

        CFRelease(v15);
        v21 = v19;
        goto LABEL_14;
      }

      APSLogErrorAt(0);
    }

    v21 = v15;
LABEL_14:
    CFRelease(v21);
    goto LABEL_19;
  }

  if (gLogCategory_APSRTCPCCFBProcessor <= 30 && (gLogCategory_APSRTCPCCFBProcessor != -1 || _LogCategory_Initialize()))
  {
    v24 = *(a1 + 32);
    LogPrintF();
  }

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t APSRTCPCCFBProcessorGetMostRecentPacketSendTime(uint64_t a1, void *key, _DWORD *a3, _DWORD *a4, BOOL *a5)
{
  if (!a1 || !a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    return 4294960569;
  }

  Value = CFDictionaryGetValue(*(v6 + 24), key);
  if (!Value)
  {
    return 4294960569;
  }

  v10 = Value;
  v11 = CFDictionaryGetValue(Value, @"RetransmitTimestamp");
  v12 = v11 != 0;
  if (!v11 && !CFDictionaryGetValue(v10, @"SendTimestamp"))
  {
    APSLogErrorAt(0);
    return 4294960569;
  }

  *a3 = FigCFNumberGetUInt32();
  if (a4)
  {
    CFDictionaryGetValue(v10, @"CCFBGeneration");
    *a4 = FigCFNumberGetUInt32();
  }

  result = 0;
  if (a5)
  {
    *a5 = v12;
  }

  return result;
}

uint64_t APSRTCPCCFBProcessorSetRetransmitTime(uint64_t a1, void *key)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 4294960569;
  }

  Value = CFDictionaryGetValue(*(v3 + 24), key);
  if (!Value)
  {
    return 4294960569;
  }

  v6 = Value;
  if (CFDictionaryContainsKey(Value, @"RetransmitTimestamp"))
  {
    MutableCopy = CFRetain(v6);
  }

  else
  {
    v9 = *MEMORY[0x277CBECE8];
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  FigCFDictionarySetUInt32();
  v10 = *(a1 + 36);
  FigCFDictionarySetUInt32();
  v11 = APSRTPSeqNumDictionarySetValue(*(a1 + 16), key, MutableCopy);
  v8 = v11;
  if (v11)
  {
    APSLogErrorAt(v11);
    if (!MutableCopy)
    {
      return v8;
    }

    goto LABEL_10;
  }

  if (MutableCopy)
  {
LABEL_10:
    CFRelease(MutableCopy);
  }

  return v8;
}

uint64_t APSRTCPCCFBProcessorAddPacketSizeAndSendTime(uint64_t a1, void *key, uint64_t a3, uint64_t a4, int a5)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    APSLogErrorAt(0);
LABEL_28:
    v18 = 4294960591;
    goto LABEL_21;
  }

  v8 = *(a1 + 16);
  if (v8 && CFDictionaryGetValue(*(v8 + 24), key))
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSRTCPCCFBProcessor <= 90 && (gLogCategory_APSRTCPCCFBProcessor != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_28;
  }

  v9 = *MEMORY[0x277CBECE8];
  UInt32 = FigCFNumberCreateUInt32();
  v11 = FigCFNumberCreateUInt32();
  v12 = *(a1 + 36);
  v13 = FigCFNumberCreateUInt32();
  if (a5)
  {
    v14 = FigCFNumberCreateUInt32();
  }

  else
  {
    v14 = 0;
  }

  *keys = xmmword_2784A27C8;
  v23 = *off_2784A27D8;
  values[0] = UInt32;
  values[1] = v11;
  values[2] = v13;
  values[3] = v14;
  if (v14)
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  v16 = CFDictionaryCreate(v9, keys, values, v15, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v16)
  {
    v17 = APSRTPSeqNumDictionarySetValue(*(a1 + 16), key, v16);
    v18 = v17;
    if (v17)
    {
      APSLogErrorAt(v17);
    }
  }

  else
  {
    APSLogErrorAt(0);
    v18 = 4294960568;
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_21:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t APSRTCPCCFBProcessorFlushPacketsWithinRange(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);

    return APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRange(v3, a2);
  }

  else
  {
    APSLogErrorAt(a1);
    return 4294960591;
  }
}

uint64_t APSRTCPCCFBProcessorHintLimitSeqNum(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2 && (v3 = *(v2 + 16)) != 0)
    {
      if (*(v3 + 28) && ((*(v3 + 26) - a2) & 0x8000) == 0)
      {
        return 0;
      }

      else
      {
        result = 0;
        *(v3 + 26) = a2;
        *(v3 + 28) = 1;
      }
    }

    else
    {
      return 4294960591;
    }
  }

  else
  {
    APSLogErrorAt(a1);
    return 4294960591;
  }

  return result;
}

uint64_t APSRTCPCCFBProcessorGetSendWindow(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      return *(v1 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t APSRTCPCCFBProcessorGetLastCCFBArrivalTime(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a1 && a2)
  {
    if (*(a1 + 24))
    {
      *a2 = *(a1 + 32);
      result = 0;
      if (a3)
      {
        *a3 = *(a1 + 36);
      }
    }

    else
    {
      return 4294960578;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t APSRTCPCCFBProcessorGetRTTEstimate(uint64_t a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 40))
    {
      result = 0;
      *a2 = *(a1 + 44);
    }

    else
    {
      return 4294960578;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t APSRTCPCCFBProcessorGetRTOEstimate(uint64_t a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 40))
    {
      result = 0;
      *a2 = fmin(*(a1 + 64), 4294967300.0);
    }

    else
    {
      return 4294960578;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t APSRTCPCCFBProcessorSetRequestRetransmitCallback(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1)
  {
    *(a1 + 72) = a2;
    v4 = *(a1 + 80);
    if (a2)
    {
      *(a1 + 80) = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    else if (v4)
    {
      CFRelease(*(a1 + 80));
      result = 0;
      *(a1 + 80) = 0;
      return result;
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSRTCPCCFBProcessorSetRateControlFeedbackInformationCallback(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1)
  {
    *(a1 + 88) = a2;
    v4 = *(a1 + 96);
    if (a2)
    {
      *(a1 + 96) = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    else if (v4)
    {
      CFRelease(*(a1 + 96));
      result = 0;
      *(a1 + 96) = 0;
      return result;
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSNetworkClockPTPCreate(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *label = 0u;
  v10 = 0u;
  if (APSNetworkClockGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSNetworkClockGetClassID_sRegisterOnce, &APSNetworkClockGetClassID_sClassID, networkClock_registerBaseClass);
  }

  Mutable = CMDerivedObjectCreate();
  if (Mutable)
  {
    v6 = Mutable;
LABEL_35:
    APSLogErrorAt(Mutable);
    goto LABEL_26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = FigSimpleMutexCreate();
  *(DerivedStorage + 16) = Mutable;
  if (!Mutable)
  {
    v6 = 4294895326;
    goto LABEL_35;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  *(DerivedStorage + 32) = Mutable;
  if (!Mutable)
  {
    v6 = 4294895326;
    goto LABEL_35;
  }

  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 40) = Mutable;
  if (!Mutable)
  {
    v6 = 4294895326;
    goto LABEL_35;
  }

  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 48) = Mutable;
  if (!Mutable)
  {
    v6 = 4294895326;
    goto LABEL_35;
  }

  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 56) = Mutable;
  if (!Mutable)
  {
    v6 = 4294895326;
    goto LABEL_35;
  }

  if (SNPrintF() <= 0)
  {
    APSLogErrorAt(0);
    v6 = 4294895322;
    goto LABEL_26;
  }

  Mutable = dispatch_queue_create(label, 0);
  *DerivedStorage = Mutable;
  if (!Mutable)
  {
    v6 = 4294895326;
    goto LABEL_35;
  }

  if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(DerivedStorage + 8) = APSSettingsGetInt64(@"ptpForceFullMesh", 0) != 0;
  *(DerivedStorage + 9) = APSSettingsGetInt64(@"ptpDisablePeerConfiguration", 0) != 0;
  if (APSIsPortMatchingOverrideEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsPortMatchingOverrideEnabled_sOnce, &__block_literal_global_112);
  }

  *(DerivedStorage + 64) = APSIsPortMatchingOverrideEnabled_sPortMatchingOverrideEnabled ^ 1;
  if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    if (!*(DerivedStorage + 9))
    {
      *(DerivedStorage + 8);
    }

    *(DerivedStorage + 64);
    LogPrintF();
  }

  v6 = 0;
  *a2 = 0;
LABEL_26:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t ptpClock_StopForClient(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  if (!a2)
  {
    APSLogErrorAt(0);
    v12 = 4294895325;
    goto LABEL_24;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v5 + 32), a2);
  if (!Value)
  {
    v12 = 4294895323;
    APSLogErrorAt(0);
    goto LABEL_24;
  }

  v7 = Value;
  v8 = CFDictionaryGetValue(*(DerivedStorage + 40), Value);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  FigCFDictionaryApplyBlock();
  CFDictionaryRemoveValue(*(DerivedStorage + 40), v7);
  CFDictionaryRemoveValue(*(DerivedStorage + 56), v7);
  Count = CFDictionaryGetCount(*(DerivedStorage + 32));
  CFDictionaryRemoveValue(*(DerivedStorage + 32), a2);
  v11 = CFDictionaryGetCount(*(DerivedStorage + 32));
  v12 = 0;
  if (Count >= 1 && v11 <= 0)
  {
    v13 = CMBaseObjectGetDerivedStorage();
    if (!*(v13 + 88) && gLogCategory_APSNetworkClockPTP <= 60 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!*(v13 + 72))
    {
      v12 = 4294895323;
      APSLogErrorAt(0);
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v14 = *MEMORY[0x277CC00E8];
    [*(v13 + 72) cm8021ASClock];
    FigNotificationCenterRemoveWeakListener();

    *(v13 + 72) = 0;
    v15 = *(v13 + 80);
    if (v15)
    {
      CFRelease(v15);
      *(v13 + 80) = 0;
    }

    *(v13 + 88) = 0;
    if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v12 = 0;
  }

  if (v9)
  {
LABEL_22:
    CFRelease(v9);
  }

LABEL_23:
  CFRelease(v7);
LABEL_24:
  v16 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t ptpClock_LockStateChanged(int a1, int a2, CFTypeRef cf1)
{
  result = CFEqual(cf1, *MEMORY[0x277CC00E8]);
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t ptpClock_removePeerInternal(uint64_t a1, const void *a2, const void *a3)
{
  v6 = 4294895005;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v16 = 0;
    v14 = 0;
LABEL_38:
    v6 = 4294895325;
    goto LABEL_11;
  }

  if (!a3)
  {
    v16 = 0;
    v14 = 0;
    goto LABEL_38;
  }

  v8 = DerivedStorage;
  v9 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v9 + 32), a2);
  if (Value)
  {
    v11 = Value;
    v12 = *MEMORY[0x277CBECE8];
    CFDictionaryGetValue(*(v8 + 40), Value);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v14 = MutableCopy;
    if (MutableCopy)
    {
      v15 = CFDictionaryGetValue(MutableCopy, a3);
      if (v15)
      {
        v16 = CFRetain(v15);
        if (v16)
        {
          CFDictionaryRemoveValue(v14, a3);
          if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          ptpClock_closeClockPortsForPeer(a1, v16);
          v17 = CFDictionaryGetValue(*(v8 + 48), v11);
          PeerInArray = ptpClock_findPeerInArray(v16, v17);
          if (PeerInArray == -1)
          {
            v20 = 0;
LABEL_23:
            v26 = 0;
            v27 = &v26;
            v28 = 0x2020000000;
            v29 = 0;
            v22 = *(CMBaseObjectGetDerivedStorage() + 40);
            v23 = FigCFDictionaryCopyArrayOfKeys();
            if (v23)
            {
              FigCFArrayApplyBlock();
              v24 = *(v27 + 6);
              if (v24)
              {
                APSLogErrorAt(v24);
              }

              CFRelease(v23);
            }

            else
            {
              APSLogErrorAt(0);
              *(v27 + 6) = -71970;
            }

            _Block_object_dispose(&v26, 8);
            CFDictionarySetValue(*(v8 + 40), v11, v14);
            CFRelease(v16);
            if (v20)
            {
              CFRelease(v20);
            }

            v6 = 0;
LABEL_34:
            CFRelease(v14);
            return v6;
          }

          v19 = PeerInArray;
          if (gLogCategory_APSNetworkClockPTP <= 30 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CFDictionaryGetValue(*(v8 + 48), v11);
          v21 = FigCFArrayCreateMutableCopy();
          if (v21)
          {
            v20 = v21;
            CFArrayRemoveValueAtIndex(v21, v19);
            CFDictionarySetValue(*(v8 + 48), v11, v20);
            goto LABEL_23;
          }

          v6 = 4294954549;
        }

        else
        {
          v6 = 4294895005;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      v6 = 4294895326;
    }
  }

  else
  {
    v16 = 0;
    v14 = 0;
    v6 = 4294895323;
  }

LABEL_11:
  APSLogErrorAt(0);
  if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v14)
  {
    goto LABEL_34;
  }

  return v6;
}

void sub_2222D247C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ptpClock_closeClockPortsForPeer(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!*(DerivedStorage + 72))
  {
    v8 = 0;
LABEL_16:
    APSLogErrorAt(v8);
    goto LABEL_17;
  }

  v4 = DerivedStorage;
  v5 = a2;
  Value = CFDictionaryGetValue(a2, @"InterfaceName");
  if (!Value)
  {
    goto LABEL_17;
  }

  v7 = Value;
  v8 = ptpClock_copyRelevantPortAddressesFromPeer(a1, a2, &theArray);
  if (v8)
  {
    goto LABEL_16;
  }

  for (i = 0; i < CFArrayGetCount(theArray); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    v11 = *(ValueAtIndex + 17);
    v12 = ValueAtIndex[5];
    v14 = *(ValueAtIndex + 3);
    v13 = *(ValueAtIndex + 4);
    if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
    {
      CFDictionaryGetValue(v5, @"ID");
      LogPrintF();
    }

    if (v11 == 30)
    {
      [*(v4 + 72) removeIPv6Port:v7 destinationAddress:{v14, v13}];
    }

    else if (v11 == 2)
    {
      [*(v4 + 72) removeIPv4Port:v7 destinationAddress:bswap32(v12)];
    }
  }

LABEL_17:
  if (theArray)
  {
    CFRelease(theArray);
  }
}

CFIndex ptpClock_findPeerInArray(const __CFDictionary *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    for (i = 0; i < CFArrayGetCount(theArray); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (APSNetworkClockPeerDictionaryIDEqual(a1, ValueAtIndex))
      {
        return i;
      }
    }
  }

  return -1;
}

void __ptpClock_removeAllRemotePortsForPeer_block_invoke(uint64_t a1, const void *a2)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *MEMORY[0x277CBECE8];
    CFDictionaryGetValue(*(*(a1 + 40) + 40), a2);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v6 = MutableCopy;
      key = a2;
      v7 = FigCFDictionaryCopyArrayOfKeys();
      for (i = 0; i < CFArrayGetCount(v7); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        CFDictionaryGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (CFDictionaryGetInt64())
        {
          CFDictionaryGetTypeID();
          v11 = CFDictionaryGetTypedValue();
          if (v11)
          {
            v12 = CFDictionaryCreateMutableCopy(v4, 0, v11);
            if (v12)
            {
              v13 = v12;
              v14 = CFDictionaryCreateMutableCopy(v4, 0, TypedValue);
              if (v14)
              {
                v15 = v14;
                CFDictionaryRemoveValue(v13, *(a1 + 48));
                CFDictionarySetValue(v15, @"ClockPorts", v13);
                CFDictionarySetValue(v6, ValueAtIndex, v15);
                CFRelease(v13);
                v16 = v15;
              }

              else
              {
                APSLogErrorAt(0);
                *(*(*(a1 + 32) + 8) + 24) = -71970;
                v16 = v13;
              }

              CFRelease(v16);
            }

            else
            {
              APSLogErrorAt(0);
              *(*(*(a1 + 32) + 8) + 24) = -71970;
            }
          }

          v17 = *(*(*(a1 + 32) + 8) + 24);
          if (v17)
          {
            APSLogErrorAt(v17);
            goto LABEL_20;
          }
        }
      }

      CFDictionarySetValue(*(*(a1 + 40) + 40), key, v6);
      LocalPeerClockPortsForClient = ptpClock_getLocalPeerClockPortsForClient(*(a1 + 56), *(a1 + 64));
      if (!LocalPeerClockPortsForClient)
      {
LABEL_20:
        v20 = 0;
        if (!v7)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v19 = CFDictionaryCreateMutableCopy(v4, 0, LocalPeerClockPortsForClient);
      v20 = v19;
      if (v19)
      {
        CFDictionaryRemoveValue(v19, *(a1 + 48));
        ptpClock_setLocalPeerClockPortsForClient(*(a1 + 56), *(a1 + 64), v20);
        if (!v7)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      APSLogErrorAt(0);
      *(*(*(a1 + 32) + 8) + 24) = -71970;
      if (v7)
      {
LABEL_21:
        CFRelease(v7);
      }

LABEL_22:
      CFRelease(v6);
      if (v20)
      {

        CFRelease(v20);
      }
    }

    else
    {
      APSLogErrorAt(0);
      *(*(*(a1 + 32) + 8) + 24) = -71970;
    }
  }
}

uint64_t ptpClock_getLocalPeerClockPortsForClient(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v4 = DerivedStorage, v5 = CMBaseObjectGetDerivedStorage(), CFDictionaryGetValue(*(v5 + 32), a2)))
  {
    v6 = *(v4 + 56);

    return FigCFDictionaryGetValue();
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

void ptpClock_setLocalPeerClockPortsForClient(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v6 = DerivedStorage, v7 = CMBaseObjectGetDerivedStorage(), (Value = CFDictionaryGetValue(*(v7 + 32), a2)) != 0))
  {
    v9 = Value;
    v10 = *(v6 + 56);

    CFDictionarySetValue(v10, v9, a3);
  }

  else
  {

    APSLogErrorAt(0);
  }
}

uint64_t ptpClock_copyRelevantPortAddressesFromPeer(uint64_t a1, const __CFDictionary *a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValue(a2, @"Addresses");
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    return 4294895326;
  }

  v8 = Mutable;
  if (CFDictionaryGetInt64())
  {
    Value = CFDictionaryGetValue(a2, @"PreferredAddress");
    if (!Value)
    {
      if (*(DerivedStorage + 64) && gLogCategory_APSNetworkClockPTP <= 60 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
      {
        CFDictionaryGetValue(a2, @"ID");
        LogPrintF();
      }

      if (!ptpClock_isPeerHTBuddy(a1, a2) || (Value = CFDictionaryGetValue(a2, @"HTAddress")) == 0)
      {
        Value = FigCFArrayGetFirstValue();
        if (!Value)
        {
          v10 = 4294895325;
          APSLogErrorAt(0);
          goto LABEL_18;
        }
      }
    }

    CFArrayAppendValue(v8, Value);
  }

  else
  {
    FigCFArrayAppendArray();
  }

  v10 = 0;
  if (!a3)
  {
LABEL_18:
    CFRelease(v8);
    return v10;
  }

  *a3 = v8;
  return v10;
}

const __CFDictionary *ptpClock_isPeerHTBuddy(uint64_t a1, const __CFDictionary *a2)
{
  result = *(CMBaseObjectGetDerivedStorage() + 24);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"HTGroupUUID");
    if (result)
    {
      v4 = result;
      if (result == CFDictionaryGetValue(a2, @"HTGroupUUID"))
      {
        return 1;
      }

      else
      {
        result = CFDictionaryGetValue(a2, @"HTGroupUUID");
        if (result)
        {
          Value = CFDictionaryGetValue(a2, @"HTGroupUUID");
          return (CFEqual(v4, Value) != 0);
        }
      }
    }
  }

  return result;
}

uint64_t ptpClock_StartForClient(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFNumberCreateInt64();
  v5 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  if (a2)
  {
    if (CFDictionaryGetCount(*(DerivedStorage + 32)))
    {
LABEL_32:
      CFDictionaryAddValue(*(DerivedStorage + 32), a2, Int64);
      v14 = 0;
      goto LABEL_33;
    }

    v6 = CMBaseObjectGetDerivedStorage();
    v7 = APSSettingsGetInt64(@"ptpUpdateRateMs", 0);
    if (IsAppleTV())
    {
      v8 = 0;
    }

    else
    {
      if (APSIsAPMSpeaker_sCheckOnce != -1)
      {
        dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
      }

      v8 = APSIsAPMSpeaker_sIsAPMSpeaker == 0;
    }

    if (*(v6 + 88) && gLogCategory_APSNetworkClockPTP <= 60 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(v6 + 72) || (v9 = objc_opt_new(), (*(v6 + 72) = v9) != 0))
    {
      if (v7)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      if (v10 == 1)
      {
        if (!v7)
        {
          v7 = 2000;
        }

        memset(&v18, 0, sizeof(v18));
        CMTimeMake(&v18, v7, 1000);
        atomic_store(1u, gAPSNetworkClockPTPIsAllPortSyncIntervalSet);
        v11 = *(v6 + 72);
        v17 = v18;
        [v11 setAllPortRemoteSyncMessageIntervals:&v17];
        if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v12 = *MEMORY[0x277CC00E8];
      [*(v6 + 72) cm8021ASClock];
      v13 = FigNotificationCenterAddWeakListener();
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        if (*(v6 + 80) || (v13 = [*(v6 + 72) createClockForSystemDomainClockIdentifier:v6 + 80], !v13))
        {
          *(v6 + 88) = 1;
          if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_32;
        }

        v14 = v13;
      }

      APSLogErrorAt(v13);
    }

    else
    {
      APSLogErrorAt(0);
      v14 = 4294960568;
    }

    APSLogErrorAt(v14);
  }

  else
  {
    APSLogErrorAt(0);
    v14 = 4294895325;
  }

LABEL_33:
  if (Int64)
  {
    CFRelease(Int64);
  }

  v15 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t ptpClock_SetOrUpdateLocalPeerInfo(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  if (a2)
  {
    if (*(DerivedStorage + 24))
    {
      FigCFDictionarySetValueFromKeyInDict();
      v5 = *(DerivedStorage + 24);
      FigCFDictionarySetValueFromKeyInDict();
      v6 = *(DerivedStorage + 24);
      FigCFDictionarySetValueFromKeyInDict();
      v7 = *(DerivedStorage + 24);
      FigCFDictionarySetValueFromKeyInDict();
      v8 = *(DerivedStorage + 24);
      FigCFDictionarySetValueFromKeyInDict();
      if (!CFDictionaryContainsKey(a2, @"HTGroupUUID"))
      {
        CFDictionaryRemoveValue(*(DerivedStorage + 24), @"HTGroupUUID");
        CFDictionaryRemoveValue(*(DerivedStorage + 24), @"HTAddress");
      }

      if (!CFDictionaryContainsKey(a2, @"TightSyncUUID"))
      {
        CFDictionaryRemoveValue(*(DerivedStorage + 24), @"TightSyncUUID");
        CFDictionaryRemoveValue(*(DerivedStorage + 24), @"IsTightSyncGroupLeader");
      }

      if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
      {
        v12 = *(DerivedStorage + 24);
        LogPrintF();
      }

      v9 = 0;
    }

    else
    {
      if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v9 = 0;
      *(DerivedStorage + 24) = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
    }
  }

  else
  {
    APSLogErrorAt(0);
    v9 = 4294895325;
  }

  v10 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t ptpClock_CopyInitialSerializablePeerList(uint64_t a1, int a2, CFTypeRef *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  cf = 0;
  v9 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  v10 = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  if (!*(v10 + 24))
  {
    APSLogErrorAt(0);
    v13 = 4294895323;
LABEL_26:
    if (v22)
    {
      CFRelease(v22);
    }

    APSLogErrorAt(v13);
    v19 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    Copy = 0;
    goto LABEL_13;
  }

  v11 = v10;
  if (a2)
  {
    v12 = ptpClock_copyPeerListForHTBuddyPeer(a1, 0, &v22);
    if (v12)
    {
      v13 = v12;
LABEL_25:
      APSLogErrorAt(v12);
      goto LABEL_26;
    }
  }

  else
  {
    v12 = ptpClock_copyPeerListForRegularPeer(a1, 0, 0, &v22);
    if (v12)
    {
      v13 = v12;
      goto LABEL_25;
    }
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(v11 + 24));
  v15 = v22;
  SerializableRepresentationOfPeerList = APSNetworkClockCreateSerializableRepresentationOfPeerList(v22, 1, &cf);
  if (SerializableRepresentationOfPeerList)
  {
    v13 = SerializableRepresentationOfPeerList;
  }

  else
  {
    if (!a4)
    {
LABEL_10:
      v13 = 0;
      *a3 = cf;
      cf = 0;
      goto LABEL_11;
    }

    SerializableRepresentationOfPeerList = APSNetworkClockCopyPeerAsSerializablePeerDictionary(Copy, &v20);
    if (!SerializableRepresentationOfPeerList)
    {
      *a4 = v20;
      v20 = 0;
      goto LABEL_10;
    }

    v13 = SerializableRepresentationOfPeerList;
  }

  APSLogErrorAt(SerializableRepresentationOfPeerList);
LABEL_11:
  v17 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v13;
}

uint64_t ptpClock_copyPeerListForHTBuddyPeer(uint64_t a1, const void *a2, __CFArray **a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 24))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      LocalPeerInfoForClient = ptpClock_getLocalPeerInfoForClient(a1, a2);
      if (LocalPeerInfoForClient)
      {
        CFArrayAppendValue(v7, LocalPeerInfoForClient);
        v9 = 0;
        *a3 = v7;
      }

      else
      {
        v9 = 4294895326;
        APSLogErrorAt(0);
        CFRelease(v7);
      }
    }

    else
    {
      v9 = 4294895326;
      APSLogErrorAt(0);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294895323;
  }

  return v9;
}

uint64_t ptpClock_copyPeerListForRegularPeer(uint64_t a1, const void *a2, const __CFDictionary *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    APSLogErrorAt(0);
    return 4294895323;
  }

  v9 = DerivedStorage;
  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v20 = 4294895326;
    APSLogErrorAt(0);
    return v20;
  }

  v12 = Mutable;
  LocalPeerInfoForClient = ptpClock_getLocalPeerInfoForClient(a1, a2);
  if (!LocalPeerInfoForClient)
  {
    goto LABEL_34;
  }

  CFArrayAppendValue(v12, LocalPeerInfoForClient);
  if ((!a3 || CFDictionaryGetInt64()) && !*(v9 + 8))
  {
    if (!CFDictionaryGetCount(*(v9 + 48)))
    {
      Count = 0;
      v15 = 0;
      v18 = 30;
LABEL_18:
      if (v18 >= gLogCategory_APSNetworkClockPTP && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (Count)
      {
        v25.location = 0;
        v25.length = Count;
        CFArrayAppendArray(v12, v15, v25);
      }

      if (a3)
      {
        Value = CFDictionaryGetValue(a3, @"TightSyncUUID");
        v22 = CFDictionaryGetValue(a3, @"HTGroupUUID");
        if (Value)
        {
          if (!v22)
          {
            v23 = *(v9 + 40);
            FigCFDictionaryApplyBlock();
          }
        }
      }

      *a4 = v12;
      if (v15)
      {
        CFRelease(v15);
      }

      return 0;
    }

    v14 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
    if (v14)
    {
      v15 = v14;
      v16 = *(v9 + 48);
      CFDictionaryApplyBlock();
      Count = CFArrayGetCount(v15);
      if (Count <= 0)
      {
        v18 = 30;
      }

      else
      {
        v18 = 50;
      }

      goto LABEL_18;
    }

LABEL_34:
    v20 = 4294895326;
    APSLogErrorAt(0);
    CFRelease(v12);
    return v20;
  }

  if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v19 = *(v9 + 40);
  FigCFDictionaryApplyBlock();
  v20 = 0;
  *a4 = v12;
  return v20;
}

CFTypeRef ptpClock_getLocalPeerInfoForClient(uint64_t a1, const void *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 24) && (v4 = *MEMORY[0x277CBECE8], (MutableCopy = FigCFDictionaryCreateMutableCopy()) != 0))
  {
    v6 = MutableCopy;
    if (a2)
    {
      ptpClock_getLocalPeerClockPortsForClient(a1, a2);
      FigCFDictionarySetValue();
    }

    return CFAutorelease(v6);
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t __ptpClock_copyPeerListForRegularPeer_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  return FigCFDictionaryApplyBlock();
}

void __ptpClock_copyPeerListForRegularPeer_block_invoke_6(uint64_t a1, uint64_t a2, const void *a3)
{
  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  v5 = *(a1 + 32);
  if (FigCFEqual() && !APSNetworkClockPeerDictionaryIDEqual(*(a1 + 40), a3))
  {
    v6 = *(a1 + 48);

    CFArrayAppendValue(v6, a3);
  }
}

void __ptpClock_copyPeerListForRegularPeer_block_invoke_2(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!APSNetworkClockPeerDictionaryIsHTClusterExclusive(a3) && !APSNetworkClockPeerDictionaryIDEqual(*(a1 + 32), a3))
  {
    v5 = *(a1 + 40);

    CFArrayAppendValue(v5, a3);
  }
}

uint64_t ptpClock_CopySerializablePeerListForPeer(uint64_t a1, const void *a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  v10 = 4294895325;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v23 = 0;
  v12 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  if (!a2 || !a3)
  {
    goto LABEL_17;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  if (!CFDictionaryGetValue(*(v13 + 32), a2))
  {
    v10 = 4294895323;
LABEL_17:
    APSLogErrorAt(0);
    v21 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    goto LABEL_10;
  }

  v14 = *(DerivedStorage + 40);
  FigCFDictionaryGetValue();
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    v10 = 4294895005;
    goto LABEL_17;
  }

  v16 = ptpClock_copyPeerListForPeerInternal(a1, a2, Value, &v23);
  if (v16)
  {
    v10 = v16;
    APSLogErrorAt(v16);
    v17 = v23;
  }

  else
  {
    v17 = v23;
    SerializableRepresentationOfPeerList = APSNetworkClockCreateSerializableRepresentationOfPeerList(v23, a4, &cf);
    v10 = SerializableRepresentationOfPeerList;
    if (SerializableRepresentationOfPeerList)
    {
      APSLogErrorAt(SerializableRepresentationOfPeerList);
    }

    else
    {
      *a5 = cf;
      cf = 0;
    }
  }

  v19 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t ptpClock_copyPeerListForPeerInternal(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 24))
  {
    v9 = DerivedStorage;
    v10 = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(*(v10 + 32), a2);
    if (Value)
    {
      v12 = Value;
      if (APSNetworkClockPeerDictionaryIDEqual(a3, *(v9 + 24)))
      {
        CFDictionaryGetValue(*(v9 + 40), v12);
        cf = FigCFDictionaryCopyArrayOfValues();
LABEL_9:
        v13 = 0;
        *a4 = cf;
        return v13;
      }

      if (ptpClock_isPeerHTBuddy(a1, a3))
      {
        Value = ptpClock_copyPeerListForHTBuddyPeer(a1, a2, &cf);
        if (!Value)
        {
          goto LABEL_9;
        }

        v13 = Value;
      }

      else
      {
        Value = ptpClock_copyPeerListForRegularPeer(a1, a2, a3, &cf);
        if (!Value)
        {
          goto LABEL_9;
        }

        v13 = Value;
      }
    }

    else
    {
      v13 = 4294895323;
    }
  }

  else
  {
    v13 = 4294895323;
    Value = 0;
  }

  APSLogErrorAt(Value);
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t ptpClock_SetPeers(uint64_t a1, const void *a2, const __CFArray *a3, CFTypeRef *a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  cf = 0;
  v11 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  if (!a2 || !a3)
  {
    APSLogErrorAt(0);
    v16 = 0;
    v15 = 0;
    v27 = -71971;
LABEL_46:
    v32 = v27;
    goto LABEL_32;
  }

  if (*(DerivedStorage + 9))
  {
    v16 = 0;
    v15 = 0;
    goto LABEL_32;
  }

  if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    CFArrayGetCount(a3);
    if (gLogCategory_APSNetworkClockPTP == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

  v12 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v12 + 32), a2);
  if (!Value)
  {
    APSLogErrorAt(0);
    v16 = 0;
    v15 = 0;
    v27 = -71973;
    goto LABEL_46;
  }

  v28 = a4;
  v29 = DerivedStorage;
  v14 = a5;
  CFDictionaryGetValue(*(DerivedStorage + 40), Value);
  v15 = FigCFDictionaryCopyArrayOfValues();
  v16 = 0;
  for (i = 0; i < CFArrayGetCount(v15); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (ptpClock_findPeerInArray(ValueAtIndex, a3) == -1)
    {
      v20 = ptpClock_removePeerInternal(a1, a2, TypedValue);
      v32 = v20;
      if (v20)
      {
        APSLogErrorAt(v20);
        a5 = v14;
        a4 = v28;
        DerivedStorage = v29;
        goto LABEL_32;
      }

      v16 = 1;
    }
  }

  v21 = 0;
  a5 = v14;
  a4 = v28;
  while (v21 < CFArrayGetCount(a3))
  {
    v22 = CFArrayGetValueAtIndex(a3, v21);
    v30 = 0;
    updated = ptpClock_addOrUpdatePeerInternal(a1, a2, v22, 0, &v30);
    v32 = updated;
    if (updated)
    {
      goto LABEL_41;
    }

    if (v30)
    {
      v16 = 1;
    }

    ++v21;
  }

  LocalPeerInfoForClient = ptpClock_getLocalPeerInfoForClient(a1, a2);
  updated = APSNetworkClockCopyPeerAsSerializablePeerDictionary(LocalPeerInfoForClient, &cf);
  v32 = updated;
  if (updated)
  {
LABEL_41:
    APSLogErrorAt(updated);
    DerivedStorage = v29;
    goto LABEL_32;
  }

  DerivedStorage = v29;
  if (v16 && gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  ptpClock_enablePortsBasedOnTopology(a1, a2);
  ptpClock_firePeersChangedNotification();
LABEL_32:
  if (a4)
  {
    *a4 = cf;
    cf = 0;
  }

  if (a5)
  {
    *a5 = v16;
  }

  v25 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v32;
}

uint64_t ptpClock_addOrUpdatePeerInternal(uint64_t a1, const void *a2, const __CFDictionary *a3, __CFDictionary **a4, char *a5)
{
  v110 = *MEMORY[0x277D85DE8];
  v102 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    goto LABEL_124;
  }

  v10 = DerivedStorage;
  v11 = *(DerivedStorage + 24);
  if (!v11)
  {
    v78 = 4294895323;
LABEL_126:
    APSLogErrorAt(0);
    goto LABEL_120;
  }

  if (APSNetworkClockPeerDictionaryIDEqual(a3, v11))
  {
    v78 = 0;
    goto LABEL_120;
  }

  Value = CFDictionaryGetValue(a3, @"ID");
  if (!Value)
  {
LABEL_124:
    APSLogErrorAt(0);
    v78 = 4294895325;
    goto LABEL_120;
  }

  v13 = Value;
  v14 = CMBaseObjectGetDerivedStorage();
  v15 = CFDictionaryGetValue(*(v14 + 32), a2);
  if (!v15)
  {
    v78 = 4294895323;
    goto LABEL_126;
  }

  v16 = v15;
  theDict = a3;
  v17 = *MEMORY[0x277CBECE8];
  CFDictionaryGetValue(*(v10 + 40), v15);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    APSLogErrorAt(0);
    v78 = 4294895326;
    goto LABEL_120;
  }

  v19 = MutableCopy;
  v94 = v16;
  v96 = a4;
  v89 = -71973;
  v93 = CFDictionaryContainsKey(MutableCopy, v13);
  allocator = v17;
  if (v93)
  {
    v20 = CFDictionaryGetValue(theDict, @"ClockPorts");
    v21 = CFDictionaryGetValue(theDict, @"ClockID");
    v22 = v13;
    v23 = CFDictionaryGetValue(v19, v13);
    v24 = CFDictionaryCreateMutableCopy(v17, 0, v23);
    if (v24)
    {
      v25 = v24;
      v26 = gLogCategory_APSNetworkClockPTP;
      if (gLogCategory_APSNetworkClockPTP <= 50)
      {
        if (gLogCategory_APSNetworkClockPTP != -1)
        {
LABEL_11:
          if (v26 > 30)
          {
            v27 = 1;
          }

          else
          {
            v27 = v26 == -1 && _LogCategory_Initialize() == 0;
          }

          v84 = v27;
          v85 = theDict;
          v82 = a1;
          v83 = v22;
          LogPrintF();
          goto LABEL_59;
        }

        if (_LogCategory_Initialize())
        {
          v26 = gLogCategory_APSNetworkClockPTP;
          goto LABEL_11;
        }
      }

LABEL_59:
      if (v20)
      {
        CFDictionarySetValue(v25, @"ClockPorts", v20);
      }

      if (v21)
      {
        CFDictionarySetValue(v25, @"ClockID", v21);
      }

      CFDictionarySetValue(v19, v22, v25);
      v47 = 0;
      theDicta = 0;
      v48 = 0;
      v49 = v96;
LABEL_82:
      CFDictionarySetValue(*(v10 + 40), v94, v19);
      CFDictionaryGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (!v93 && *(v10 + 64))
      {
        if (v49)
        {
          goto LABEL_102;
        }

        goto LABEL_111;
      }

      v98 = v47;
      v57 = CMBaseObjectGetDerivedStorage();
      valuePtr.value = 0;
      if (!TypedValue)
      {
        v89 = -71971;
        goto LABEL_149;
      }

      v58 = v57;
      if (!*(v57 + 72))
      {
LABEL_149:
        v47 = v98;
        APSLogErrorAt(0);
        v53 = theDicta;
        if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v102 = v89;
        v74 = 0;
        goto LABEL_154;
      }

      v95 = v48;
      v59 = CFDictionaryGetValue(TypedValue, @"ID");
      if (!v59)
      {
        v89 = -71971;
        goto LABEL_149;
      }

      if (CFDictionaryGetInt64())
      {
        if (gLogCategory_APSNetworkClockPTP <= 30 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_99;
        }
      }

      else
      {
        v60 = CFDictionaryGetValue(*(v58 + 24), @"ID");
        if (!v60)
        {
          goto LABEL_149;
        }

        v61 = v60;
        v62 = CMBaseObjectGetDerivedStorage();
        v63 = CFDictionaryGetValue(*(v62 + 32), a2);
        if (!v63)
        {
          goto LABEL_149;
        }

        v64 = v63;
        v65 = CFDictionaryGetValue(TypedValue, @"ClockPorts");
        if (v65 && CFDictionaryGetValue(v65, v61))
        {
          v91 = a5;
          LocalPeerClockPortsForClient = ptpClock_getLocalPeerClockPortsForClient(a1, a2);
          if (LocalPeerClockPortsForClient)
          {
            v67 = LocalPeerClockPortsForClient;
            v68 = a1;
            v69 = CFDictionaryGetValue(TypedValue, @"ClockID");
            v70 = CFDictionaryGetValue(v67, v59);
            if (v69)
            {
              if (v70)
              {
                CFNumberGetValue(v69, kCFNumberSInt64Type, &valuePtr);
                v71 = CFGetInt64Ranged();
                v72 = CFGetInt64Ranged();
                a1 = v68;
                if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
                {
                  v82 = v68;
                  v83 = v59;
                  LogPrintF();
                }

                [*(v58 + 72) overridePortReceiveMatching:v72 clockIdentity:valuePtr.value remotePort:{v71, v82, v83, v84, v85}];
                v75 = CFDictionaryCreateMutableCopy(allocator, 0, TypedValue);
                v49 = v96;
                if (v75)
                {
                  v76 = v75;
                  CFDictionarySetValue(v75, @"IsOverridden", *MEMORY[0x277CBED28]);
                  v77 = CFDictionaryGetValue(*(v58 + 40), v64);
                  CFDictionarySetValue(v77, v59, v76);
                  CFRelease(v76);
                  a5 = v91;
                  goto LABEL_110;
                }

                v89 = -71970;
              }
            }
          }

          goto LABEL_149;
        }

        if (gLogCategory_APSNetworkClockPTP <= 60 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
        {
LABEL_99:
          LogPrintF();
        }
      }

LABEL_110:
      v102 = 0;
      v47 = v98;
      v48 = v95;
      if (v49)
      {
LABEL_102:
        LocalPeerInfoForClient = ptpClock_getLocalPeerInfoForClient(a1, a2);
        v74 = APSNetworkClockCopyPeerAsSerializablePeerDictionary(LocalPeerInfoForClient, v49);
        v102 = v74;
        v53 = theDicta;
        if (!v74)
        {
          if (!a5)
          {
LABEL_113:
            if (v25)
            {
              CFRelease(v25);
            }

            if (!v53)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          }

LABEL_112:
          *a5 = v48;
          goto LABEL_113;
        }

LABEL_154:
        APSLogErrorAt(v74);
        goto LABEL_113;
      }

LABEL_111:
      v53 = theDicta;
      if (!a5)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    APSLogErrorAt(0);
    v81 = -71970;
    goto LABEL_144;
  }

  v88 = v19;
  v28 = CMBaseObjectGetDerivedStorage();
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v108 = *MEMORY[0x277CC0898];
  v29 = *(MEMORY[0x277CC0898] + 12);
  v109 = *(MEMORY[0x277CC0898] + 8);
  v30 = *(MEMORY[0x277CC0898] + 16);
  if (APSSettingsIsFeatureEnabled(@"AirPlayPerf_PTPNonTightSyncRate"))
  {
    v31 = atomic_load(gAPSNetworkClockPTPIsAllPortSyncIntervalSet);
    if ((v31 & 1) == 0 && !CFDictionaryContainsKey(theDict, @"TightSyncUUID"))
    {
      if (ptpClock_getPerPortRateForPeer_sNonTightSyncRateOnce != -1)
      {
        dispatch_once(&ptpClock_getPerPortRateForPeer_sNonTightSyncRateOnce, &__block_literal_global_545);
      }

      v108 = ptpClock_getPerPortRateForPeer_sNonTightSyncRate;
      v29 = HIDWORD(ptpClock_getPerPortRateForPeer_sNonTightSyncRate);
      v109 = DWORD2(ptpClock_getPerPortRateForPeer_sNonTightSyncRate);
      v30 = qword_27D00B788;
    }
  }

  if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    v82 = a1;
    v83 = theDict;
    LogPrintF();
  }

  v90 = a5;
  if (*(v28 + 72))
  {
    v86 = v13;
    v87 = v10;
    v32 = CFDictionaryGetValue(theDict, @"InterfaceName");
    if (v32)
    {
      v33 = v32;
      v34 = ptpClock_copyRelevantPortAddressesFromPeer(a1, theDict, &v107);
      if (!v34)
      {
        v97 = a1;
        for (i = 0; i < CFArrayGetCount(v107); ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v107, i);
          v37 = *(ValueAtIndex + 17);
          v38 = ValueAtIndex[5];
          v40 = *(ValueAtIndex + 3);
          v39 = *(ValueAtIndex + 4);
          if (gLogCategory_APSNetworkClockPTP <= 50)
          {
            v41 = ValueAtIndex;
            if (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize())
            {
              v83 = v41;
              v84 = CFDictionaryGetValue(theDict, @"ID");
              v82 = v97;
              LogPrintF();
            }
          }

          if (v37 == 30)
          {
            v42 = [*(v28 + 72) addIPv6PortAndGetIdentity:v33 destinationAddress:v40 clockIdentity:v39 localPortNumber:{&v105, &v106}];
          }

          else
          {
            if (v37 != 2)
            {
              v43 = 4294895325;
LABEL_51:
              v46 = v43;
              goto LABEL_52;
            }

            v42 = [*(v28 + 72) addIPv4PortAndGetIdentity:v33 destinationAddress:bswap32(v38) clockIdentity:&v105 localPortNumber:&v106];
          }

          v43 = v42;
          if (v42)
          {
            goto LABEL_51;
          }

          if (v29)
          {
            if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
            {
              v44 = v106;
              time.value = v108;
              time.timescale = v109;
              time.flags = v29;
              time.epoch = v30;
              CMTimeConvertScale(&valuePtr, &time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              v83 = v44;
              v84 = valuePtr.value;
              v82 = v97;
              LogPrintF();
            }

            [*(v28 + 72) cm8021ASClock];
            time.value = v108;
            time.timescale = v109;
            time.flags = v29;
            time.epoch = v30;
            CM8021ASClockSetPortRemoteSyncMessageIntervals();
          }
        }

        v45 = *(v28 + 24);
        v46 = CFDictionarySetInt64();
        v43 = v46;
        if (!v46)
        {
          v10 = v87;
          v19 = v88;
          a1 = v97;
          v17 = allocator;
          v13 = v86;
          goto LABEL_66;
        }

LABEL_52:
        APSLogErrorAt(v46);
        v19 = v88;
        a1 = v97;
        goto LABEL_53;
      }

      v43 = v34;
      APSLogErrorAt(v34);
    }

    else
    {
      APSLogErrorAt(0);
      v43 = 4294895325;
    }

    v19 = v88;
LABEL_53:
    v17 = allocator;
    v13 = v86;
    v10 = v87;
    goto LABEL_54;
  }

  APSLogErrorAt(0);
  v43 = 4294895323;
  v19 = v88;
LABEL_54:
  if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    v82 = a1;
    v83 = v43;
    LogPrintF();
  }

  ptpClock_closeClockPortsForPeer(a1, theDict);
LABEL_66:
  if (v107)
  {
    CFRelease(v107);
  }

  v102 = v43;
  if (!v43)
  {
    v50 = *(v10 + 24);
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    v51 = ptpClock_getLocalPeerClockPortsForClient(a1, a2);
    if (v51)
    {
      Mutable = CFDictionaryCreateMutableCopy(v17, 0, v51);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v53 = Mutable;
    a5 = v90;
    v49 = v96;
    if (!Mutable)
    {
      APSLogErrorAt(0);
      v81 = -12747;
LABEL_144:
      v102 = v81;
      goto LABEL_119;
    }

    CFDictionarySetValue(v19, v13, theDict);
    v47 = 0;
    if (!CFDictionaryGetInt64())
    {
      if (gLogCategory_APSNetworkClockPTP <= 30 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
      {
        v82 = a1;
        v83 = v13;
        LogPrintF();
      }

      CFDictionaryGetValue(*(v10 + 48), v94);
      v54 = FigCFArrayCreateMutableCopy();
      v47 = v54;
      if (!v54)
      {
        APSLogErrorAt(0);
        v102 = -12747;
        goto LABEL_116;
      }

      CFArrayAppendValue(v54, theDict);
      CFDictionarySetValue(*(v10 + 48), v94, v47);
    }

    v55 = CFDictionarySetInt64();
    v102 = v55;
    if (!v55)
    {
      theDicta = v53;
      ptpClock_setLocalPeerClockPortsForClient(a1, a2, v53);
      v25 = 0;
      v48 = 1;
      goto LABEL_82;
    }

    APSLogErrorAt(v55);
LABEL_116:
    CFRelease(v53);
LABEL_117:
    if (v47)
    {
      CFRelease(v47);
    }

    goto LABEL_119;
  }

  APSLogErrorAt(v43);
LABEL_119:
  CFRelease(v19);
  v78 = v102;
LABEL_120:
  v79 = *MEMORY[0x277D85DE8];
  return v78;
}