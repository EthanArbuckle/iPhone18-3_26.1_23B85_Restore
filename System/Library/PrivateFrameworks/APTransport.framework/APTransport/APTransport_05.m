void sub_23D30012C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *transportDevice_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<APTransportDevice %p browser '%@' deviceInfo %@>", a1, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    transportDevice_CopyDebugDescription_cold_1();
  }

  return v3;
}

Class __getNINearbyObjectClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary();
  result = objc_getClass("NINearbyObject");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNINearbyObjectClass_block_invoke_cold_1();
  }

  getNINearbyObjectClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
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
    v2 = xmmword_278BC8CC8;
    v3 = 0;
    NearbyInteractionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NearbyInteractionLibraryCore_frameworkLibrary)
  {
    NearbyInteractionLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __NearbyInteractionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NearbyInteractionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getNIDiscoveryTokenClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary();
  result = objc_getClass("NIDiscoveryToken");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNIDiscoveryTokenClass_block_invoke_cold_1();
  }

  getNIDiscoveryTokenClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

const char *APBonjourCacheEventToString(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return "Unknown";
  }

  else
  {
    return off_278BC8EC0[a1 - 1];
  }
}

uint64_t APTNANDataSessionGetClassID(uint64_t a1)
{
  if (qword_281309BF0 != -1)
  {
    APTNANDataSessionGetClassID_cold_1(a1);
  }

  return _MergedGlobals_12;
}

uint64_t _APTNANDataSessionRegisterClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&kAPTNANDataSessionClassDescriptor, ClassID, 1, a1);
}

uint64_t APTNANDataSessionGetTypeID(uint64_t a1)
{
  if (qword_281309BF0 != -1)
  {
    APTNANDataSessionGetClassID_cold_1(a1);
  }

  v2 = _MergedGlobals_12;

  return MEMORY[0x282111A98](v2);
}

uint64_t APTNANDataSessionCreate(int a1, const void *a2, uint64_t a3, char a4, CFTypeRef *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!APSNANServiceTypeIsValid())
  {
    APTNANDataSessionCreate_cold_8();
    goto LABEL_18;
  }

  if (!a2 || (v10 = CFGetTypeID(a2), TypeID = APBrowserGetTypeID(), v10 != TypeID))
  {
    APTNANDataSessionCreate_cold_7();
LABEL_18:
    v18 = 4294960591;
    goto LABEL_24;
  }

  v12 = *MEMORY[0x277CBECE8];
  if (qword_281309BF0 != -1)
  {
    APTNANDataSessionGetClassID_cold_1(TypeID);
  }

  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    v18 = v13;
    APTNANDataSessionCreate_cold_2();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = a1;
    *(DerivedStorage + 8) = CFRetain(a2);
    *(DerivedStorage + 16) = a4;
    *(DerivedStorage + 24) = a3;
    v15 = FigSimpleMutexCreate();
    *(DerivedStorage + 56) = v15;
    if (v15)
    {
      *(DerivedStorage + 48) = dispatch_semaphore_create(1);
      SNPrintF();
      v16 = dispatch_queue_create(label, 0);
      *(DerivedStorage + 32) = v16;
      if (v16)
      {
        SNPrintF();
        v17 = dispatch_queue_create(label, 0);
        *(DerivedStorage + 40) = v17;
        if (v17)
        {
          if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
          {
            APTNANDataSessionCreate_cold_3(&cf);
          }

          v18 = 0;
          *a5 = cf;
          goto LABEL_14;
        }

        APTNANDataSessionCreate_cold_4();
      }

      else
      {
        APTNANDataSessionCreate_cold_5();
      }
    }

    else
    {
      APTNANDataSessionCreate_cold_6();
    }

    v18 = 4294960568;
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_14:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

CFTypeRef APTNANDataSessionIsActivatable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v1 = *(DerivedStorage + 1);
  v2 = *(DerivedStorage + 3);
  v3 = *DerivedStorage;
  v4 = *(DerivedStorage + 16);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 72);
  if (!v6 || (v7 = *(VTable + 16) + 72, v6(v1, v2, v3, v4, &cf)))
  {
    APTNANDataSessionIsActivatable_cold_1();
  }

  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return (cf != 0);
  }

  return result;
}

uint64_t APTNANDataSessionRetainActivation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v56 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v3 = *(DerivedStorage + 7);
  FigSimpleMutexLock();
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    v41 = *(DerivedStorage + 8);
    v44 = &v41->super.isa + 1;
    v37 = a1;
    LogPrintF();
  }

  if (*(DerivedStorage + 10))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  dsema = *(DerivedStorage + 6);
  if (IsAppleInternalBuild())
  {
    v13 = -1;
  }

  else
  {
    v13 = dispatch_time(0, 1000000000);
  }

  if (dispatch_semaphore_wait(dsema, v13))
  {
    if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      v37 = a1;
      LogPrintF();
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_134;
  }

  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    v37 = a1;
    LogPrintF();
  }

  v14 = *(DerivedStorage + 1);
  v15 = *(DerivedStorage + 3);
  v16 = *DerivedStorage;
  v17 = *(DerivedStorage + 16);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v18)
  {
    v12 = 4294954514;
    goto LABEL_23;
  }

  v12 = v18(v14, v15, v16, v17, &v56);
  if (v12)
  {
LABEL_23:
    APSLogErrorAt();
    if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      v37 = a1;
      v41 = v12;
      LogPrintF();
    }

    goto LABEL_43;
  }

  if (*DerivedStorage != 1)
  {
    if (*DerivedStorage == 2)
    {
      v19 = 0;
      v20 = 2048;
      goto LABEL_27;
    }

    v12 = 4294960561;
    APSLogErrorAt();
LABEL_43:
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_44;
  }

  v20 = 256;
  v19 = 1;
LABEL_27:
  v5 = objc_alloc_init(MEMORY[0x277D02890]);
  if (!v5)
  {
    APSLogErrorAt();
    v4 = 0;
    v5 = 0;
LABEL_147:
    v6 = 0;
    v7 = 0;
    goto LABEL_148;
  }

  if (_APTNANDataSessionGetDispatchQueue_sAPTNANDataSessionDispatchQueueOnce != -1)
  {
    APTNANDataSessionRetainActivation_cold_1();
  }

  [v5 setDispatchQueue:{_APTNANDataSessionGetDispatchQueue_sAPTNANDataSessionDispatchQueue, v37, v41, v44}];
  [v5 setPeerEndpoint:v56];
  [v5 setTrafficFlags:v20];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __APTNANDataSessionRetainActivation_block_invoke;
  v51[3] = &__block_descriptor_40_e5_v8__0l;
  v51[4] = a1;
  [v5 setInterruptionHandler:v51];
  if ((v19 & 1) == 0)
  {
    [v5 setControlFlags:2];
  }

  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v7)
  {
    APSLogErrorAt();
    if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      v37 = a1;
      LogPrintF();
    }

    v4 = 0;
    goto LABEL_147;
  }

  v21 = dispatch_semaphore_create(0);
  if (!v21)
  {
    APSLogErrorAt();
    v4 = 0;
    v6 = 0;
LABEL_148:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 4294960568;
    goto LABEL_44;
  }

  v6 = v21;
  if (!*(DerivedStorage + 13))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_82:
    v27 = v8;
    v28 = v5;
    CFRetain(v7);
    dispatch_retain(v6);
    dispatch_retain(dsema);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __APTNANDataSessionRetainActivation_block_invoke_2;
    v50[3] = &unk_278BC8F40;
    v50[8] = &v52;
    v50[9] = a1;
    v50[4] = v6;
    v50[5] = dsema;
    v50[10] = v7;
    v50[6] = v5;
    v50[7] = v8;
    [v5 setInvalidationHandler:v50];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __APTNANDataSessionRetainActivation_block_invoke_3;
    v49[3] = &unk_278BC8F88;
    v49[5] = v7;
    v49[6] = a1;
    v49[4] = v5;
    [v5 setTerminationHandler:v49];
    CFRetain(v56);
    v29 = v5;
    dispatch_retain(v6);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __APTNANDataSessionRetainActivation_block_invoke_5;
    v48[3] = &unk_278BC8FB0;
    v48[7] = a1;
    v48[8] = v56;
    v48[5] = v6;
    v48[6] = &v52;
    v48[4] = v5;
    [v5 activateWithCompletion:v48];
    if (!dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = *(v53 + 6);
      if (*(DerivedStorage + 13))
      {
        if (v12)
        {
          if (v12 == 313308)
          {
            v12 = 200453;
            if (gLogCategory_APTNANDataSession > 50 || gLogCategory_APTNANDataSession == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_121;
            }

            goto LABEL_88;
          }

          if (v12 == 313309)
          {
            if (![(APTNANPairingDelegate *)v8 authPromptWasDismissed])
            {
              if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
              {
                v37 = a1;
                LogPrintF();
              }

              v12 = 4294960542;
              goto LABEL_121;
            }

            v12 = 301031;
            if (gLogCategory_APTNANDataSession > 50 || gLogCategory_APTNANDataSession == -1 && !_LogCategory_Initialize())
            {
LABEL_121:
              *(v53 + 6) = v12;
              goto LABEL_122;
            }

LABEL_88:
            v37 = a1;
            LogPrintF();
            goto LABEL_121;
          }

LABEL_122:
          APSLogErrorAt();
          v4 = 0;
          goto LABEL_44;
        }
      }

      else if (v12)
      {
        goto LABEL_122;
      }

      *(DerivedStorage + 10) = v5;
      if (!*(DerivedStorage + 13))
      {
        goto LABEL_97;
      }

      if (!*(DerivedStorage + 16))
      {
        if ([(APTNANPairingDelegate *)v8 handledPairingRequest])
        {
          v64 = 0;
          v65 = &v64;
          v66 = 0x2020000000;
          v67 = 0;
          dsemaa = CMBaseObjectGetDerivedStorage();
          v58 = 0;
          v59 = &v58;
          v60 = 0x3052000000;
          v61 = __Block_byref_object_copy__3;
          v62 = __Block_byref_object_dispose__3;
          v63 = 0;
          v30 = dispatch_semaphore_create(0);
          if (v30)
          {
            v31 = v30;
            v32 = [(objc_class *)dsemaa[10].isa wfaDataSessionClient];
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = ___APTNANDataSessionGenerateDiversifiedPIN_block_invoke;
            v57[3] = &unk_278BC9000;
            v57[6] = &v58;
            v57[7] = a1;
            v57[4] = v31;
            v57[5] = &v64;
            [v32 generateDiversifiedPINWithCompletionHandler:v57];
            if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
            {
              v37 = a1;
              LogPrintF();
            }

            dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
            if (*(v65 + 6))
            {
              v4 = 0;
            }

            else
            {
              v4 = v59[5];
            }

            dispatch_release(v31);
            v12 = *(v65 + 6);
          }

          else
          {
            APSLogErrorAt();
            v4 = 0;
            v12 = 4294960568;
            *(v65 + 6) = -6728;
          }

          _Block_object_dispose(&v58, 8);
          _Block_object_dispose(&v64, 8);
          if (!v12)
          {
            v33 = [objc_msgSend(v5 "wfaDataSessionClient")];
            if ([objc_msgSend(v33 "data")])
            {
              [objc_msgSend(v33 "data")];
              v34 = NSPrintF();
            }

            else
            {
              v34 = 0;
            }

            v35 = *(DerivedStorage + 13);
            Value = APSWrapperGetValue();
            (*(Value + 16))(Value, v4, v34);
LABEL_7:
            v12 = 0;
            ++*(DerivedStorage + 8);
            if (!v10)
            {
              goto LABEL_46;
            }

LABEL_45:
            CFRelease(v10);
            goto LABEL_46;
          }

          APSLogErrorAt();
LABEL_44:
          [v5 invalidate];
          if (!v10)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_97:
        v4 = 0;
        goto LABEL_7;
      }

      APSLogErrorAt();
      v4 = 0;
LABEL_141:
      v12 = 4294960587;
      goto LABEL_44;
    }

    APSLogErrorAt();
    v4 = 0;
LABEL_134:
    v12 = 4294960574;
    goto LABEL_44;
  }

  if (*(DerivedStorage + 16))
  {
    APSLogErrorAt();
    v4 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_141;
  }

  if (!*(DerivedStorage + 12))
  {
    APSLogErrorAt();
    v4 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 4294960578;
    goto LABEL_44;
  }

  v22 = [APTNANPairingDelegate alloc];
  v23 = *(DerivedStorage + 12);
  v8 = [(APTNANPairingDelegate *)v22 initWithHandleAuthorizationRequestBlock:APSWrapperGetValue() logContext:*(DerivedStorage + 9)];
  if (!v8)
  {
    APSLogErrorAt();
    v11 = 0;
    v9 = 0;
    v8 = 0;
    v12 = 0;
    goto LABEL_48;
  }

  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    v41 = v8;
    v45 = v5;
    v37 = a1;
    LogPrintF();
  }

  [v5 setWfaPairingDelegate:{v8, v37, v41, v45}];
  if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    v38 = a1;
    v42 = v8;
    LogPrintF();
  }

  [v5 setWfaPairingMethod:{*(DerivedStorage + 14), v38, v42}];
  if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    v39 = a1;
    v43 = *(DerivedStorage + 14);
    LogPrintF();
  }

  [v5 setWfaPairingCacheEnabled:{1, v39, v43}];
  if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    v40 = a1;
    LogPrintF();
  }

  [v5 setWfaConnectionMode:{2, v40}];
  if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    v37 = a1;
    LogPrintF();
  }

  v10 = APSCopyDeviceName();
  v9 = [objc_alloc(MEMORY[0x277D7BAC0]) initWithBundleID:@"com.apple.airplay" selfPairingName:v10 peerDeviceName:0 storageClass:1 lifetime:3 pairingClient:0.0];
  [v5 setWfaPairingMetadata:v9];
  if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    v37 = a1;
    LogPrintF();
  }

  v26 = objc_alloc_init(MEMORY[0x277D7BAE8]);
  v11 = v26;
  if (v26)
  {
    [v26 setInstanceName:v10];
    [v5 setWfaPairSetupServiceSpecificInfo:v11];
    if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      v37 = a1;
      v41 = v10;
      LogPrintF();
    }

    goto LABEL_82;
  }

  APSLogErrorAt();
  v11 = 0;
  v12 = 0;
  v4 = 0;
  if (v10)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (v4)
  {
    CFRelease(v4);
  }

LABEL_48:

  v24 = *(DerivedStorage + 7);
  FigSimpleMutexUnlock();
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  _Block_object_dispose(&v52, 8);
  return v12;
}

uint64_t __APTNANDataSessionRetainActivation_block_invoke(uint64_t result)
{
  if (gLogCategory_APTNANDataSession <= 90)
  {
    v1 = result;
    if (gLogCategory_APTNANDataSession != -1)
    {
      return __APTNANDataSessionRetainActivation_block_invoke_cold_1(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __APTNANDataSessionRetainActivation_block_invoke_cold_1(v1);
    }
  }

  return result;
}

void __APTNANDataSessionRetainActivation_block_invoke_2(uint64_t a1)
{
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    __APTNANDataSessionRetainActivation_block_invoke_2_cold_1(a1);
  }

  *(*(*(a1 + 64) + 8) + 24) = -6723;
  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_semaphore_signal(*(a1 + 40));
  v2 = *(a1 + 80);
  v3 = *(a1 + 48);
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  if (v4)
  {
    v6 = DerivedStorage;
    CFRetain(v4);
    v7 = *(v6 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___APTNANDataSessionInvalidate_block_invoke;
    v8[3] = &unk_278BC80E0;
    v8[4] = v9;
    v8[5] = v6;
    v8[6] = v3;
    v8[7] = v4;
    dispatch_async(v7, v8);
    CFRelease(v4);
  }

  _Block_object_dispose(v9, 8);
  dispatch_release(*(a1 + 40));
  dispatch_release(*(a1 + 32));
  CFRelease(*(a1 + 80));
}

void sub_23D305D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APTNANDataSessionRetainActivation_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      __APTNANDataSessionRetainActivation_block_invoke_5_cold_1(a1);
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [v3 peerAddress];
    }

    SockAddrToString();
    if (gLogCategory_APTNANDataSession <= 50)
    {
      if (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize())
      {
        __APTNANDataSessionRetainActivation_block_invoke_5_cold_2(a1);
      }

      if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
      {
        v5 = *(a1 + 56);
        LogPrintF();
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = NSErrorToOSStatus();
  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_release(*(a1 + 40));

  CFRelease(*(a1 + 64));
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t APTNANDataSessionReleaseActivation()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 56);
  FigSimpleMutexLock();
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    APTNANDataSessionReleaseActivation_cold_1(DerivedStorage);
  }

  v2 = *(DerivedStorage + 64);
  if (v2)
  {
    v3 = v2 - 1;
    *(DerivedStorage + 64) = v3;
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
      {
        APTNANDataSessionReleaseActivation_cold_2();
      }

      [*(DerivedStorage + 80) invalidate];

      v4 = 0;
      *(DerivedStorage + 80) = 0;
    }
  }

  else
  {
    APTNANDataSessionReleaseActivation_cold_3();
    v4 = 4294960548;
  }

  v5 = *(DerivedStorage + 56);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t APTNANDataSessionCopyPeerAddress(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 56);
  FigSimpleMutexLock();
  if (!a2)
  {
    APTNANDataSessionCopyPeerAddress_cold_4();
    v7 = 4294960591;
    goto LABEL_6;
  }

  v5 = *(DerivedStorage + 80);
  if (!v5)
  {
    APTNANDataSessionCopyPeerAddress_cold_3();
LABEL_10:
    v7 = 4294960578;
    goto LABEL_6;
  }

  [v5 peerAddress];
  if (!v11)
  {
    APTNANDataSessionCopyPeerAddress_cold_2();
    goto LABEL_10;
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = APSNetworkAddressCreateWithSocketAddr();
  if (v7)
  {
    APTNANDataSessionCopyPeerAddress_cold_1();
  }

LABEL_6:
  v8 = *(DerivedStorage + 56);
  FigSimpleMutexUnlock();
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t APTNANDataSessionPreWarm()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 56);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 80))
  {
    if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      APTNANDataSessionPreWarm_cold_1();
    }

    [*(DerivedStorage + 80) updateLinkStatus:1];
    v2 = 0;
  }

  else
  {
    APTNANDataSessionPreWarm_cold_2();
    v2 = 4294960578;
  }

  v3 = *(DerivedStorage + 56);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APTNANDataSessionCreateStatisticsReport(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = (DerivedStorage + 56);
  v4 = *(DerivedStorage + 56);
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 80))
  {
    v17 = 4294960578;
LABEL_17:
    APSLogErrorAt();
    v20 = *v5;
    FigSimpleMutexUnlock();
    return v17;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v17 = 4294960568;
    goto LABEL_17;
  }

  v7 = Mutable;
  v8 = dispatch_semaphore_create(0);
  if (v8)
  {
    v9 = v8;
    CFRetain(v7);
    dispatch_retain(v9);
    v10 = *(DerivedStorage + 80);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __APTNANDataSessionCreateStatisticsReport_block_invoke;
    v21[3] = &unk_278BC8FD8;
    v21[4] = v9;
    v21[5] = v7;
    [v10 generateStatisticsReportWithCompletionHandler:v21];
    v11 = *(DerivedStorage + 56);
    FigSimpleMutexUnlock();
    v12 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v9, v12))
    {
      APTNANDataSessionCreateStatisticsReport_cold_1();
      v17 = 4294960574;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
      v14 = ValueAtIndex;
      if (ValueAtIndex && (v15 = CFGetTypeID(ValueAtIndex), v15 == CFNumberGetTypeID()))
      {
        v16 = CFGetInt64Ranged();
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = 4294960587;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = CFRetain(v14);
          v17 = 0;
          *a2 = v18;
        }

        else
        {
          APTNANDataSessionCreateStatisticsReport_cold_2();
          v17 = 4294960587;
        }
      }
    }

    dispatch_release(v9);
  }

  else
  {
    APTNANDataSessionCreateStatisticsReport_cold_3(v5);
    v17 = 4294960568;
  }

  CFRelease(v7);
  return v17;
}

void __APTNANDataSessionCreateStatisticsReport_block_invoke(uint64_t a1, const void *a2)
{
  if (NSErrorToOSStatus())
  {
    CFArrayAppendInt64();
  }

  else
  {
    CFArrayAppendValue(*(a1 + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_release(*(a1 + 32));
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void _APTNANDataSessionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *(DerivedStorage + 56);
  FigSimpleMutexDestroy();
  if (*(DerivedStorage + 80))
  {
    if (gLogCategory_APTNANDataSession <= 60 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      _APTNANDataSessionFinalize_cold_1();
    }

    [*(DerivedStorage + 80) invalidate];

    *(DerivedStorage + 80) = 0;
  }

  v3 = *(DerivedStorage + 72);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 72) = 0;
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

  v6 = *(DerivedStorage + 48);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 48) = 0;
  }

  v7 = *(DerivedStorage + 32);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 32) = 0;
  }

  v8 = *(DerivedStorage + 40);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 40) = 0;
  }

  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    _APTNANDataSessionFinalize_cold_2();
  }
}

uint64_t _APTNANDataSessionSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"APTNANDataSessionProperty_HandleAuthorizationRequestBlock"))
  {
    if (APSWrapperGetValue())
    {
      v6 = DerivedStorage[7];
      FigSimpleMutexLock();
      if (!DerivedStorage[8])
      {
        v7 = DerivedStorage[12];
        DerivedStorage[12] = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (gLogCategory_APTNANDataSession > 30 || gLogCategory_APTNANDataSession == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        v16 = DerivedStorage[12];
LABEL_28:
        LogPrintF();
LABEL_40:
        v14 = DerivedStorage[7];
        FigSimpleMutexUnlock();
        return 0;
      }

      _APTNANDataSessionSetProperty_cold_1();
      goto LABEL_51;
    }

    _APTNANDataSessionSetProperty_cold_2();
    return 4294960591;
  }

  if (CFEqual(a2, @"APTNANDataSessionProperty_SetAuthorizationStringBlock"))
  {
    if (!APSWrapperGetValue())
    {
      _APTNANDataSessionSetProperty_cold_4();
      return 4294960591;
    }

    v8 = DerivedStorage[7];
    FigSimpleMutexLock();
    if (!DerivedStorage[8])
    {
      v9 = DerivedStorage[13];
      DerivedStorage[13] = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (gLogCategory_APTNANDataSession > 30 || gLogCategory_APTNANDataSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_40;
      }

      v17 = DerivedStorage[13];
      goto LABEL_28;
    }

    _APTNANDataSessionSetProperty_cold_3();
  }

  else
  {
    if (CFEqual(a2, @"APTNANDataSessionProperty_AuthorizationType"))
    {
      valuePtr = 0;
      if (!a3)
      {
        _APTNANDataSessionSetProperty_cold_6();
        return 0;
      }

      CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
      v10 = DerivedStorage[7];
      FigSimpleMutexLock();
      if (!DerivedStorage[8])
      {
        if (valuePtr <= 3)
        {
          DerivedStorage[14] = qword_23D3838C0[valuePtr];
        }

        if (gLogCategory_APTNANDataSession > 30 || gLogCategory_APTNANDataSession == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        goto LABEL_28;
      }

      _APTNANDataSessionSetProperty_cold_5();
      goto LABEL_51;
    }

    if (!CFEqual(a2, @"APTNANDataSessionProperty_AuthorizationLogContext"))
    {
      return 4294954512;
    }

    if (!a3)
    {
      _APTNANDataSessionSetProperty_cold_8();
      return 4294960591;
    }

    v11 = DerivedStorage[7];
    FigSimpleMutexLock();
    if (!DerivedStorage[8])
    {
      v12 = DerivedStorage[9];
      DerivedStorage[9] = a3;
      CFRetain(a3);
      if (v12)
      {
        CFRelease(v12);
      }

      goto LABEL_40;
    }

    _APTNANDataSessionSetProperty_cold_7();
  }

LABEL_51:
  v15 = DerivedStorage[7];
  FigSimpleMutexUnlock();
  return 4294960587;
}

uint64_t APTransportSocketGetTypeID()
{
  if (_MergedGlobals_13 != -1)
  {
    APTransportSocketGetTypeID_cold_1();
  }

  return qword_281309C00;
}

uint64_t socket_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTransportSocketCreate(uint64_t a1, int a2, uint64_t *a3)
{
  if (_MergedGlobals_13 != -1)
  {
    APTransportSocketGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    *(Instance + 16) = 0;
    *(Instance + 16) = a2;
    if (gLogCategory_APTransportSocketRef <= 30 && (gLogCategory_APTransportSocketRef != -1 || _LogCategory_Initialize()))
    {
      APTransportSocketCreate_cold_2();
    }

    result = 0;
    *a3 = v6;
  }

  else
  {
    APTransportSocketCreate_cold_3();
    return 4294960568;
  }

  return result;
}

uint64_t socket_Finalize(uint64_t result)
{
  v1 = result;
  if (gLogCategory_APTransportSocketRef <= 30)
  {
    if (gLogCategory_APTransportSocketRef != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = socket_Finalize_cold_1();
    }
  }

  *(v1 + 16) = -1;
  return result;
}

uint64_t APBrokerGetTypeID()
{
  if (gAPBrokerInitOnce != -1)
  {
    APBrokerGetTypeID_cold_1();
  }

  return gAPBrokerTypeID;
}

uint64_t _APBrokerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPBrokerTypeID = result;
  return result;
}

uint64_t APBrokerCreate(const void *a1, CFTypeRef *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  *label = 0u;
  v20 = 0u;
  if (!a2)
  {
    APBrokerCreate_cold_7();
LABEL_24:
    v15 = 4294960591;
    goto LABEL_20;
  }

  if (!a1)
  {
    APBrokerCreate_cold_6();
    goto LABEL_24;
  }

  if (gAPBrokerInitOnce != -1)
  {
    APBrokerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APBrokerCreate_cold_5();
    v15 = 4294960568;
    goto LABEL_20;
  }

  v5 = Instance;
  Instance[1] = 0u;
  v6 = Instance + 1;
  Instance[2] = 0u;
  Instance[3] = 0u;
  *(Instance + 6) = CFRetain(a1);
  v7 = APBrokerCopyBrokerInfoFromBonjourInfo(a1, v6, v6 + 1);
  if (v7)
  {
    v15 = v7;
    APBrokerCreate_cold_2();
  }

  else
  {
    *(v5 + 32) = APSSettingsGetIntWithDefault() != 0;
    if (*(v5 + 6) && (v8 = BonjourDevice_CopyCFString()) != 0)
    {
      v9 = v8;
      v10 = APSFeaturesCreateFromStringRepresentation();
      HasFeature = APSFeaturesHasFeature();
      if (v10)
      {
        CFRelease(v10);
      }

      CFRelease(v9);
    }

    else
    {
      HasFeature = 0;
    }

    *(v5 + 33) = HasFeature;
    v12 = FigSimpleMutexCreate();
    *(v5 + 5) = v12;
    if (v12)
    {
      SNPrintF();
      v13 = dispatch_queue_create(label, 0);
      *(v5 + 7) = v13;
      if (v13)
      {
        if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
        {
          v14 = *(v5 + 3);
          v18 = *(v5 + 2);
          APBrokerHTTPProtocolString(*(v5 + 32));
          LogPrintF();
        }

        v15 = 0;
        *a2 = CFRetain(v5);
        goto LABEL_19;
      }

      APBrokerCreate_cold_3();
    }

    else
    {
      APBrokerCreate_cold_4();
    }

    v15 = 4294960568;
  }

LABEL_19:
  CFRelease(v5);
LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t APBrokerCopyBrokerInfoFromBonjourInfo(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = BonjourDevice_CopyCFString();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
LABEL_3:
      v6 = BonjourDevice_CopyCFString();
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v6 = 0;
  if (a2)
  {
LABEL_4:
    *a2 = v5;
    v5 = 0;
  }

LABEL_5:
  if (a3)
  {
    *a3 = v6;
  }

  else if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t APBrokerUpdate(void *a1, const void *a2)
{
  cf = 0;
  cf1 = 0;
  v4 = APBrokerCopyBrokerInfoFromBonjourInfo(a2, &cf1, &cf);
  if (v4)
  {
    v11 = v4;
    APBrokerUpdate_cold_1();
  }

  else
  {
    v5 = a1[2];
    if ((cf1 == v5 || cf1 && v5 && CFEqual(cf1, v5)) && ((v6 = a1[3], cf == v6) || cf && v6 && CFEqual(cf, v6)))
    {
      v7 = a1[5];
      FigSimpleMutexCheckIsNotLockedOnThisThread();
      v8 = a1[5];
      FigSimpleMutexLock();
      v9 = a1[6];
      if (a2)
      {
        CFRetain(a2);
      }

      a1[6] = a2;
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = a1[5];
      FigSimpleMutexUnlock();
      v11 = 0;
    }

    else
    {
      APBrokerUpdate_cold_2();
      v11 = 4294960591;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v11;
}

void APBrokerGetBrokeredReceivers(uint64_t a1, void *a2)
{
  theArray = 0;
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v6 = *v5;
  FigSimpleMutexLock();
  if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerGetBrokeredReceivers_cold_1();
  }

  v7 = -72440;
  APBrokerKeychainUtilsCopyAllAuthTokens(*(a1 + 24), &theArray);
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      CFDictionarySetValue(Mutable, @"Content-Type", @"application/json");
      v11 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v11)
      {
        v12 = v11;
        CFDictionarySetValue(v11, @"userAuthTokens", theArray);
        v13 = _Block_copy(a2);
        v14 = v13 != 0;
        if (v13)
        {
          v15 = v13;
          v16 = *(a1 + 56);
          dispatch_retain(v16);
          v17 = CFRetain(*(a1 + 24));
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 0x40000000;
          v20[2] = __APBrokerGetBrokeredReceivers_block_invoke;
          v20[3] = &unk_278BC9058;
          v20[6] = v17;
          v20[7] = v16;
          v20[4] = v15;
          v20[5] = a1;
          APBrokerSendRequest(a1, 2, @"/public/receiver/receiver-list", v10, v12, v20);
          v7 = 0;
        }

        else
        {
          APBrokerGetBrokeredReceivers_cold_2();
          v7 = -6728;
        }

        v18 = *v5;
        FigSimpleMutexUnlock();
        CFRelease(v12);
      }

      else
      {
        APBrokerGetBrokeredReceivers_cold_3(v5);
        v14 = 0;
        v7 = -6728;
      }

      CFRelease(v10);
      goto LABEL_15;
    }

    APBrokerGetBrokeredReceivers_cold_4();
    v7 = -6728;
  }

  v19 = *v5;
  FigSimpleMutexUnlock();
  v14 = 0;
LABEL_15:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (!v14)
  {
    _CallRequestCallbackBlock(v7, *(a1 + 56), 0, a2);
  }
}

void APBrokerSendRequest(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, void (**a6)(void, void, void, void, void))
{
  v31 = *MEMORY[0x277D85DE8];
  DNSName = 0;
  v10 = *(a1 + 40);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (gLogCategory_APBroker > 30 || gLogCategory_APBroker == -1 && !_LogCategory_Initialize())
  {
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_29:
    APBrokerSendRequest_cold_8();
    goto LABEL_26;
  }

  APBrokerSendRequest_cold_1(a1, a2);
  if (!a6)
  {
    goto LABEL_29;
  }

LABEL_5:
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APBrokerSendRequest_cold_7(&DNSName);
    goto LABEL_26;
  }

  v13 = Mutable;
  if (*(a1 + 32))
  {
    CFDictionarySetValue(Mutable, @"useHTTPS", *MEMORY[0x277CBED28]);
    v14 = *(a1 + 48);
    v15 = BonjourDevice_CopyCFString();
    if (!v15)
    {
      APBrokerSendRequest_cold_2();
      goto LABEL_25;
    }

    v16 = v15;
    CFDictionarySetValue(v13, @"sslCertificateHostName", v15);
  }

  else
  {
    v16 = 0;
  }

  if (!*(a1 + 33))
  {
    v22 = *(a1 + 48);
    v20 = BonjourDevice_CopyCFString();
    v23 = *(a1 + 48);
    BonjourDevice_GetInt64();
    v19 = CFStringCreateF();
    v21 = 2;
    goto LABEL_15;
  }

  bzero(cStr, 0x400uLL);
  v17 = *(a1 + 48);
  DNSName = BonjourDevice_GetDNSName();
  if (DNSName)
  {
    APBrokerSendRequest_cold_3();
  }

  else
  {
    v18 = CFStringCreateWithCString(v11, cStr, 0x8000100u);
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = 1;
LABEL_15:
      if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
      {
        APBrokerHTTPProtocolString(*(a1 + 32));
        APBrokerHTTPMethodString(a2);
        LogPrintF();
      }

      v24 = _Block_copy(a6);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 0x40000000;
      v28[2] = __APBrokerSendRequest_block_invoke;
      v28[3] = &unk_278BC9168;
      v28[5] = a1;
      v28[6] = a1;
      v28[4] = v24;
      APBrokerHTTPSendRequest(a1, a1, v19, v21, a2, a3, a4, a5, v13, v28);
      if (v19)
      {
        CFRelease(v19);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v16)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    APBrokerSendRequest_cold_4(&DNSName);
  }

  if (v16)
  {
LABEL_24:
    CFRelease(v16);
  }

LABEL_25:
  CFRelease(v13);
  if (DNSName)
  {
LABEL_26:
    a6[2](a6, 0, 0, 0, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __APBrokerGetBrokeredReceivers_block_invoke(uint64_t a1, CFMutableDictionaryRef Mutable, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = 0;
  cf = 0;
  v9 = gLogCategory_APBroker;
  if (gLogCategory_APBroker <= 50)
  {
    if (gLogCategory_APBroker == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      v9 = gLogCategory_APBroker;
    }

    v10 = *(a1 + 40);
    if (v9 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_8:
  if (a6)
  {
    __APBrokerGetBrokeredReceivers_block_invoke_cold_1();
LABEL_21:
    Mutable = 0;
    goto LABEL_13;
  }

  if (!Mutable)
  {
    __APBrokerGetBrokeredReceivers_block_invoke_cold_4();
    a6 = -6705;
    goto LABEL_13;
  }

  v11 = APBrokerCreateBrokeredReceiversFromBrokerResponse(*(a1 + 48), Mutable, &cf, &v12);
  if (v11)
  {
    a6 = v11;
    __APBrokerGetBrokeredReceivers_block_invoke_cold_2();
    goto LABEL_21;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    FigCFDictionarySetValue();
    CFDictionarySetInt64();
    a6 = 0;
  }

  else
  {
    __APBrokerGetBrokeredReceivers_block_invoke_cold_3();
    a6 = -6728;
  }

LABEL_13:
  _CallRequestCallbackBlock(a6, *(a1 + 56), Mutable, *(a1 + 32));
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFRelease(*(a1 + 48));
  dispatch_release(*(a1 + 56));
  _Block_release(*(a1 + 32));
}

void APBrokerAuthenticate(uint64_t a1, const void *a2, void *a3)
{
  if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerAuthenticate_cold_1(a1);
  }

  v7 = (a1 + 40);
  v6 = *(a1 + 40);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v8 = *(a1 + 40);
  FigSimpleMutexLock();
  if (!a2)
  {
    v16 = -6705;
LABEL_14:
    APSLogErrorAt();
    v18 = *v7;
    FigSimpleMutexUnlock();
LABEL_16:
    _CallRequestCallbackBlock(v16, *(a1 + 56), 0, a3);
    return;
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v16 = -6728;
    goto LABEL_14;
  }

  v11 = Mutable;
  CFDictionarySetValue(Mutable, @"Content-Type", @"application/json");
  v12 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v12)
  {
    APBrokerAuthenticate_cold_3((a1 + 40), v11);
    v16 = -6728;
    goto LABEL_16;
  }

  v13 = v12;
  CFDictionarySetValue(v12, @"brokerToken", a2);
  v14 = _Block_copy(a3);
  if (v14)
  {
    v15 = *(a1 + 56);
    dispatch_retain(v15);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 0x40000000;
    v19[2] = __APBrokerAuthenticate_block_invoke;
    v19[3] = &unk_278BC9080;
    v19[6] = a1;
    v19[7] = v15;
    v19[4] = v14;
    v19[5] = a1;
    APBrokerSendRequest(a1, 2, @"/public/broker/user-auth-token", v11, v13, v19);
    v16 = 0;
  }

  else
  {
    APBrokerAuthenticate_cold_2();
    v16 = -6728;
  }

  v17 = *v7;
  FigSimpleMutexUnlock();
  CFRelease(v13);
  CFRelease(v11);
  if (!v14)
  {
    goto LABEL_16;
  }
}

void APBrokerGetInfo(uint64_t a1, void *a2)
{
  if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerGetInfo_cold_1(a1);
  }

  v4 = *(a1 + 40);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v5 = *(a1 + 40);
  FigSimpleMutexLock();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APBrokerGetInfo_cold_3((a1 + 40));
    v10 = -6728;
LABEL_11:
    _CallRequestCallbackBlock(v10, *(a1 + 56), 0, a2);
    return;
  }

  v7 = Mutable;
  CFDictionarySetValue(Mutable, @"Content-Type", @"application/json");
  v8 = _Block_copy(a2);
  if (v8)
  {
    v9 = *(a1 + 56);
    dispatch_retain(v9);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = __APBrokerGetInfo_block_invoke;
    v12[3] = &unk_278BC90A8;
    v12[5] = a1;
    v12[6] = v9;
    v12[4] = v8;
    APBrokerSendRequest(a1, 1, @"/public/info", v7, 0, v12);
    v10 = 0;
  }

  else
  {
    APBrokerGetInfo_cold_2();
    v10 = -6728;
  }

  v11 = *(a1 + 40);
  FigSimpleMutexUnlock();
  CFRelease(v7);
  if (!v8)
  {
    goto LABEL_11;
  }
}

void APBrokerGetReceiverConnectivityInfo(uint64_t a1, __CFString *a2, const void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  value[0] = 0;
  v8 = *(a1 + 40);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v9 = *(a1 + 40);
  FigSimpleMutexLock();
  if (!a3)
  {
    APBrokerGetReceiverConnectivityInfo_cold_8();
    v24 = 0;
    Mutable = 0;
    v25 = -6705;
LABEL_55:
    v34 = *(a1 + 40);
    FigSimpleMutexUnlock();
    goto LABEL_40;
  }

  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerGetReceiverConnectivityInfo_cold_1(a2);
  }

  v10 = APBrokerKeychainUtilsCopyAuthToken(*(a1 + 24), a2, value);
  if (v10)
  {
    v25 = v10;
    APBrokerGetReceiverConnectivityInfo_cold_2();
    v24 = 0;
    Mutable = 0;
    goto LABEL_55;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v35 = a4;
  if (Mutable && (v13 = *(a1 + 48), CFArrayGetTypeID(), (TypedValue = CFDictionaryGetTypedValue()) != 0))
  {
    v15 = TypedValue;
    if (CFArrayGetCount(TypedValue) <= 0)
    {
      Count = CFArrayGetCount(v15);
      if (Count < 1)
      {
        goto LABEL_34;
      }
    }

    else
    {
      Count = 1;
    }

    for (i = 0; i != Count; ++i)
    {
      v39 = 0;
      CFDictionaryGetTypeID();
      if (CFArrayGetTypedValueAtIndex())
      {
        cStr[128] = 0;
        CFDictionaryGetCString();
        if (CreateUsableInterfaceList())
        {
          APBrokerGetReceiverConnectivityInfo_cold_3();
        }

        else
        {
          for (j = v39; j; j = *j)
          {
            memset(&value[1], 0, 24);
            v38 = 0;
            v19 = j[3];
            if (v19)
            {
              v20 = *(v19 + 1);
              if (v20 == 30 || v20 == 2)
              {
                SockAddrCopy();
                if (!SockAddrToString())
                {
                  v22 = CFStringCreateWithCString(0, cStr, 0x8000100u);
                  if (v22)
                  {
                    v23 = v22;
                    CFArrayAppendValue(Mutable, v22);
                    CFRelease(v23);
                  }
                }
              }
            }
          }
        }

        ReleaseUsableInterfaceList();
      }
    }
  }

  else
  {
    APBrokerGetReceiverConnectivityInfo_cold_4();
  }

  if (!Mutable)
  {
    v24 = 0;
    v25 = -6728;
LABEL_51:
    a4 = v35;
    goto LABEL_55;
  }

LABEL_34:
  if (CFArrayGetCount(Mutable) < 1)
  {
    v24 = 0;
    v25 = -6709;
    goto LABEL_51;
  }

  v26 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v24 = v26;
  a4 = v35;
  if (!v26)
  {
    APBrokerGetReceiverConnectivityInfo_cold_7();
LABEL_54:
    v25 = -6728;
    goto LABEL_55;
  }

  CFDictionarySetValue(v26, @"Content-Type", @"application/json");
  v27 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v27)
  {
    APBrokerGetReceiverConnectivityInfo_cold_6();
    goto LABEL_54;
  }

  v28 = v27;
  CFDictionarySetValue(v27, @"userAuthToken", value[0]);
  CFDictionarySetValue(v28, @"deviceIPs", Mutable);
  CFDictionarySetValue(v28, @"publicReceiverUUID", a3);
  v29 = _Block_copy(v35);
  if (v29)
  {
    v30 = v29;
    v31 = *(a1 + 56);
    dispatch_retain(v31);
    CFRetain(a3);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 0x40000000;
    v36[2] = __APBrokerGetReceiverConnectivityInfo_block_invoke;
    v36[3] = &unk_278BC90D0;
    v36[6] = a3;
    v36[7] = v31;
    v36[4] = v30;
    v36[5] = a1;
    APBrokerSendRequest(a1, 2, @"/public/receiver/connectivity-info", v24, v28, v36);
    v25 = 0;
  }

  else
  {
    APBrokerGetReceiverConnectivityInfo_cold_5();
    v25 = -6728;
  }

  v32 = *(a1 + 40);
  FigSimpleMutexUnlock();
  CFRelease(v28);
LABEL_40:
  if (value[0])
  {
    CFRelease(value[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25)
  {
    _CallRequestCallbackBlock(v25, *(a1 + 56), 0, a4);
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v19 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 1;
  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_1();
    if (!a1)
    {
      goto LABEL_26;
    }
  }

  else if (!a1)
  {
LABEL_26:
    v19 = -6705;
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  CFNumberGetTypeID();
  if (!CFDictionaryGetTypedValue())
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_10();
    goto LABEL_24;
  }

  v5 = CFGetInt64Ranged();
  if (v19)
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_2();
    goto LABEL_24;
  }

  if (!v5)
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_9();
    goto LABEL_24;
  }

  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_8();
    goto LABEL_24;
  }

  v7 = TypedValue;
  if (CFArrayGetCount(TypedValue) <= 0)
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_7();
    goto LABEL_24;
  }

  Count = CFArrayGetCount(v7);
  v9 = MEMORY[0x277CBECE8];
  if (Count < 11)
  {
    v11 = CFRetain(v7);
  }

  else
  {
    v10 = malloc_type_calloc(0xAuLL, 8uLL, 0x80040B8603338uLL);
    v20.location = 0;
    v20.length = 10;
    CFArrayGetValues(v7, v20, v10);
    v11 = CFArrayCreate(*v9, v10, 10, MEMORY[0x277CBF128]);
    free(v10);
  }

  CFArrayGetCount(v11);
  CFArrayApplyBlock();
  if (*(v16 + 24))
  {
    Mutable = CFDictionaryCreateMutable(*v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_5(&v19);
      goto LABEL_20;
    }

    v19 = CFDictionarySetInt64();
    if (v19)
    {
      APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_3();
      goto LABEL_20;
    }

    v19 = CFDictionarySetInt64();
    if (v19)
    {
      APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_4();
      goto LABEL_20;
    }

    CFDictionarySetValue(Mutable, @"addresses", v11);
    *a3 = Mutable;
  }

  else
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_6();
  }

  Mutable = 0;
LABEL_20:
  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_24:
  v13 = v19;
  _Block_object_dispose(&v15, 8);
  return v13;
}

uint64_t APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry_cold_1();
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry_cold_5();
    return 4294960591;
  }

  v8 = TypedValue;
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (!v9)
  {
    APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry_cold_4();
    return 4294960591;
  }

  v10 = v9;
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (!v11)
  {
    APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry_cold_3();
    return 4294960591;
  }

  v12 = v11;
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (!v13)
  {
    APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry_cold_2();
    return 4294960591;
  }

  v14 = v13;
  CFStringGetTypeID();
  v15 = CFDictionaryGetTypedValue();
  v16 = APBrokeredReceiverCreateWithTXTRecordBase64(a1, a2, v8, v10, v12, v14, v15, &cf);
  if (v16)
  {
    APSLogErrorAt();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
  }

  return v16;
}

void __APBrokerCreateBrokeredReceiversFromBrokerResponse_block_invoke_2(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      v8 = 0;
      APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry(*(a1 + 32), *(a1 + 40), cf, &v8);
      v5 = v8;
      if (v8)
      {
        v6 = *(a1 + 48);
        PublicReceiverUUID = APBrokeredReceiverGetPublicReceiverUUID(v8);
        CFDictionarySetValue(v6, PublicReceiverUUID, v5);
        CFRelease(v5);
      }
    }
  }
}

CFTypeID __APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_block_invoke(CFTypeID result, CFTypeRef cf)
{
  v2 = result;
  if (!cf || (v3 = CFGetTypeID(cf), result = CFStringGetTypeID(), v3 != result))
  {
    *(*(*(v2 + 32) + 8) + 24) = 0;
  }

  return result;
}

void _APBrokerFinalize(void *a1)
{
  if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    _APBrokerFinalize_cold_1(a1);
  }

  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
    a1[7] = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }

  if (a1[5])
  {
    FigSimpleMutexDestroy();
    a1[5] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
    a1[2] = 0;
  }
}

void __APBrokerSendRequest_block_invoke(uint64_t a1)
{
  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    __APBrokerSendRequest_block_invoke_cold_1(a1);
  }

  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

uint64_t APTransportServiceCreate(uint64_t a1, const void *a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a5)
    {
      FigTransportServiceGetClassID();
      v13 = CMDerivedObjectCreate();
      if (v13)
      {
        v17 = v13;
        APTransportServiceCreate_cold_1();
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 40) = a2;
        if (a2)
        {
          CFRetain(a2);
        }

        SNPrintF();
        v15 = dispatch_queue_create(label, 0);
        *(DerivedStorage + 8) = v15;
        if (v15)
        {
          *(DerivedStorage + 16) = a4;
          dispatch_retain(a4);
          *(DerivedStorage + 24) = a6;
          *(DerivedStorage + 32) = a5;
          *(DerivedStorage + 64) = 55667;
          *(DerivedStorage + 72) = 1;
          if (a3)
          {
            *(DerivedStorage + 72) = CFDictionaryGetInt64() != 0;
          }

          v16 = FigCFWeakReferenceTableCreate();
          if (v16)
          {
            v17 = v16;
            APTransportServiceCreate_cold_2();
          }

          else
          {
            if (gLogCategory_APTransportService <= 30 && (gLogCategory_APTransportService != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v17 = 0;
            *a7 = 0;
          }
        }

        else
        {
          APTransportServiceCreate_cold_3();
          v17 = 4294950705;
        }
      }
    }

    else
    {
      APTransportServiceCreate_cold_4();
      v17 = 4294950706;
    }
  }

  else
  {
    APTransportServiceCreate_cold_5();
    v17 = 4294950706;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t APTransportServiceUnregisterSession(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v3 = *(DerivedStorage + 8);
  APSDispatchAsyncFHelper();
  return 0;
}

void service_unregisterSessionInternal(const void **a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportService <= 30 && (gLogCategory_APTransportService != -1 || _LogCategory_Initialize()))
  {
    service_unregisterSessionInternal_cold_1(a1);
  }

  v4 = *(DerivedStorage + 48);
  v5 = a1[1];
  if (FigCFWeakReferenceTableRemoveValue())
  {
    service_unregisterSessionInternal_cold_2();
  }

  v6 = *a1;
  if (*a1)
  {

    CFRelease(v6);
  }
}

uint64_t service_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 8), a1, service_deferInvalidateInternal);
  return 0;
}

void service_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  service_invalidateInternal();
  v1 = DerivedStorage[5];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[5] = 0;
  }

  v2 = DerivedStorage[2];
  if (v2)
  {
    dispatch_release(v2);
    DerivedStorage[2] = 0;
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[1] = 0;
  }
}

__CFString *service_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportService %p '%@'>", a1, *(DerivedStorage + 40));
  return Mutable;
}

uint64_t service_CopyProperty()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);

  return FigDispatchSyncCopyPropertyImplementation();
}

uint64_t service_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);

  return MEMORY[0x2821127C0](v6, service_setPropertyInternal, a1, a2, a3);
}

void service_deferInvalidateInternal(const void *a1)
{
  service_invalidateInternal();

  CFRelease(a1);
}

void service_cleanUp()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 56);
  if (v1)
  {
    APTConnectionListenerInvalidate(v1);
    v2 = *(DerivedStorage + 56);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 56) = 0;
    }
  }
}

uint64_t service_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"listeningPort"))
  {
    return 4294954512;
  }

  v8 = CFNumberCreate(a3, kCFNumberIntType, (DerivedStorage + 64));
  *a4 = v8;
  if (v8)
  {
    return 0;
  }

  service_copyPropertyInternal_cold_1();
  return 4294950705;
}

uint64_t service_setPropertyInternal(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"listeningPort"))
  {
    return 4294954512;
  }

  if (*(DerivedStorage + 56))
  {
    service_setPropertyInternal_cold_1();
    return 4294950704;
  }

  else if (a3 && (v6 = CFGetTypeID(a3), v6 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a3, kCFNumberIntType, (DerivedStorage + 64));
    return 0;
  }

  else
  {
    service_setPropertyInternal_cold_2();
    return 4294950706;
  }
}

uint64_t service_Resume(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 8), a1, service_resumeInternal);
  return 0;
}

uint64_t service_Suspend(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 8), a1, service_deferCleanUp);
  return 0;
}

void service_resumeInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportService <= 30 && (gLogCategory_APTransportService != -1 || _LogCategory_Initialize()))
  {
    service_resumeInternal_cold_1();
  }

  if (*(DerivedStorage + 72))
  {
    v3 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    if (*(v3 + 56))
    {
      goto LABEL_13;
    }

    v4 = v3;
    v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v5)
    {
      v6 = APTConnectionListenerCreate(*(v4 + 64), -1, service_handleListenerConnected, v5, service_handleListenerInvalidated, v5, *(v4 + 8), &cf);
      if (v6)
      {
        v9 = v6;
        service_resumeInternal_cold_2();
      }

      else
      {
        v7 = APTConnectionListenerResume(cf);
        if (v7)
        {
          v9 = v7;
          service_resumeInternal_cold_3();
        }

        else
        {
          ListeningPort = APTConnectionListenerGetListeningPort(cf, (v4 + 64));
          if (!ListeningPort)
          {
            *(v4 + 56) = cf;
            goto LABEL_13;
          }

          v9 = ListeningPort;
          service_resumeInternal_cold_4();
          v5 = 0;
        }
      }
    }

    else
    {
      service_resumeInternal_cold_5(&v11);
      v9 = v11;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v9)
    {
      APSLogErrorAt();
    }
  }

  else if (service_createSession(a1, -1))
  {
    service_resumeInternal_cold_6();
  }

LABEL_13:
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t service_createSession(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    service_createSession_cold_7(v19);
    return LODWORD(v19[0]);
  }

  v7 = Mutable;
  if (*(DerivedStorage + 72))
  {
    if (a2 == -1)
    {
      service_createSession_cold_1(v19);
      v17 = LODWORD(v19[0]);
      goto LABEL_19;
    }

    CFDictionarySetInt64();
  }

  CFDictionaryAddValue(v7, @"OwningService", a1);
  v8 = CFUUIDCreate(v5);
  if (v8)
  {
    v9 = v8;
    v10 = CFUUIDCreateString(v5, v8);
    if (v10)
    {
      v11 = CFGetAllocator(a1);
      v12 = APTransportSessionCreate(v11, 0, v10, 0, v7, &cf);
      if (v12)
      {
        v17 = v12;
        service_createSession_cold_2();
      }

      else
      {
        v19[0] = 0;
        v13 = *(CMBaseObjectGetDerivedStorage() + 48);
        Key = FigCFWeakReferenceTableAddValueAndGetKey();
        if (Key)
        {
          v17 = Key;
          service_createSession_cold_3();
        }

        else
        {
          v15 = APSSetFBOPropertyInt64();
          if (!v15)
          {
            if (gLogCategory_APTransportService <= 30 && (gLogCategory_APTransportService != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v19[0] = CFRetain(a1);
            v19[1] = CFRetain(cf);
            v16 = *(DerivedStorage + 16);
            APSDispatchAsyncFHelper();
            v17 = 0;
            goto LABEL_15;
          }

          v17 = v15;
          service_createSession_cold_4();
        }

        APSLogErrorAt();
      }
    }

    else
    {
      service_createSession_cold_5();
      v17 = 4294950705;
    }

LABEL_15:
    CFRelease(v9);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    goto LABEL_19;
  }

  service_createSession_cold_6();
  v17 = 4294950705;
LABEL_19:
  CFRelease(v7);
  return v17;
}

void service_handleListenerConnected(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4 && !*CMBaseObjectGetDerivedStorage())
    {
      if (!service_createSession(v4, a3))
      {
LABEL_5:

        CFRelease(v4);
        return;
      }

      service_handleListenerConnected_cold_1();
    }
  }

  else
  {
    service_handleListenerConnected_cold_2();
    v4 = 0;
  }

  if ((a3 & 0x80000000) == 0 && close(a3) && *__error())
  {
    __error();
  }

  if (v4)
  {
    goto LABEL_5;
  }
}

void service_handleListenerInvalidated(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void service_notifyNewReceiverSessionCallback(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  (*(DerivedStorage + 32))(0, *(a1 + 8), *(DerivedStorage + 24));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    CFRelease(v4);
  }
}

void service_deferCleanUp(const void *a1)
{
  service_cleanUp();

  CFRelease(a1);
}

uint64_t wifiManagerClient_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTransportWifiManagerClientCreate(uint64_t a1, void *a2)
{
  if (_MergedGlobals_14 != -1)
  {
    APTransportWifiManagerClientCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    v5 = dispatch_queue_create("APTransportWifiManagerClient.queue", 0);
    *(v4 + 2) = v5;
    if (v5)
    {
      *(v4 + 6) = 0;
      if (gLogCategory_APTransportWifiManagerClient <= 30 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
      {
        APTransportWifiManagerClientCreate_cold_2();
      }

      v6 = 0;
      *a2 = v4;
    }

    else
    {
      v6 = 4294895566;
      APTransportWifiManagerClientCreate_cold_3(v4);
    }
  }

  else
  {
    v6 = 4294895566;
    APTransportWifiManagerClientCreate_cold_4();
  }

  return v6;
}

uint64_t APTransportWifiManagerClientRegister(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APTransportWifiManagerClientRegister_block_invoke;
  v4[3] = &unk_278BC7668;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __APTransportWifiManagerClientRegister_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v15 = 0;
  if (*(v2 + 48))
  {
    goto LABEL_2;
  }

  v5 = objc_alloc_init(MEMORY[0x277D02B18]);
  v6 = v5;
  if (!v5)
  {
    __APTransportWifiManagerClientRegister_block_invoke_cold_3();
    v10 = -71730;
    goto LABEL_18;
  }

  [v5 activate];
  v7 = [MEMORY[0x277D02AD8] activityWithType:4 reason:0];
  if (!v7)
  {
    v10 = -71733;
    __APTransportWifiManagerClientRegister_block_invoke_cold_2();
    goto LABEL_18;
  }

  v8 = v7;
  if ([v6 beginActivity:v7 error:&v15])
  {
    *(v2 + 48) = v6;
    *(v2 + 56) = v8;
    if (gLogCategory_APTransportWifiManagerClient >= 41)
    {
      v10 = 0;
      v6 = 0;
      ++*(v2 + 24);
      goto LABEL_18;
    }

    if (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize())
    {
      __APTransportWifiManagerClientRegister_block_invoke_cold_1((v2 + 48));
    }

LABEL_2:
    v3 = gLogCategory_APTransportWifiManagerClient;
    v4 = (*(v2 + 24) + 1);
    *(v2 + 24) = v4;
    if (v3 <= 30)
    {
      if (v3 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        v4 = *(v2 + 24);
      }

      v12 = *(v2 + 48);
      v13 = v4;
      LogPrintF();
    }

LABEL_17:
    v10 = 0;
    v6 = 0;
    goto LABEL_18;
  }

  v9 = NSErrorToOSStatus();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = -71733;
  }

  APSLogErrorAt();
LABEL_18:
  [v6 invalidate];

  CFRetain(v2);
  v11 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __wifiManagerClient_registerInternal_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v2;
  dispatch_async(v11, block);
  *(*(*(a1 + 32) + 8) + 24) = v10;
}

uint64_t APTransportWifiManagerClientUnregister(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APTransportWifiManagerClientUnregister_block_invoke;
  v4[3] = &unk_278BC7668;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t APTransportWifiManagerClientCopyWifiStatistics(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APTransportWifiManagerClientCopyWifiStatistics_block_invoke;
  block[3] = &unk_278BC80B8;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APTransportWifiManagerClientCopyWifiStatistics_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  cf = 0;
  if (!v3)
  {
    __APTransportWifiManagerClientCopyWifiStatistics_block_invoke_cold_4();
    v10 = -71732;
    goto LABEL_13;
  }

  v4 = wifiManagerClient_ensureSubscribedForStatistics(v2);
  if (v4)
  {
    v10 = v4;
    __APTransportWifiManagerClientCopyWifiStatistics_block_invoke_cold_1();
LABEL_19:
    v8 = 0;
    goto LABEL_6;
  }

  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  Samples = IOReportCreateSamples();
  if (!Samples)
  {
    v10 = -71730;
    APSLogErrorAt();
    if (gLogCategory_APTransportWifiManagerClient <= 90 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
    {
      __APTransportWifiManagerClientCopyWifiStatistics_block_invoke_cold_3(&cf);
    }

    goto LABEL_19;
  }

  v8 = Samples;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (IOReportIterate())
  {
    __APTransportWifiManagerClientCopyWifiStatistics_block_invoke_cold_2(&v12);
    v10 = v12;
    goto LABEL_7;
  }

  v10 = 0;
  *v3 = Mutable;
LABEL_6:
  Mutable = 0;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_13:
  *(*(a1[4] + 8) + 24) = v10;
}

uint64_t APTransportWifiManagerClientGetPeerRSSI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __APTransportWifiManagerClientGetPeerRSSI_block_invoke;
  v6[3] = &unk_278BC80E0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __APTransportWifiManagerClientGetPeerRSSI_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  cf = 0;
  if (v4)
  {
    v12 = wifiManagerClient_ensureSubscribedForStatistics(v2);
    if (v12)
    {
      __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_1();
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      Samples = IOReportCreateSamples();
      if (Samples)
      {
        v8 = Samples;
        v9 = CFStringCreateF();
        if (IOReportSelectChannelsInGroup())
        {
          __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_3(&v12);
        }

        else
        {
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __wifiManagerClient_getPeerRSSI_block_invoke;
          v10[3] = &__block_descriptor_40_e25_i16__0____CFDictionary__8l;
          v10[4] = v4;
          if (IOReportIterate())
          {
            __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_4(&v12);
          }
        }
      }

      else
      {
        __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_5(&v12, &cf, &v13, v10);
        v8 = v13;
        v9 = v10[0];
      }
    }

    if (cf)
    {
      CFRelease(cf);
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

  else
  {
    __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_6(&v12);
  }

  *(*(a1[4] + 8) + 24) = v12;
}

void wifiManagerClient_Finalize(uint64_t a1)
{
  if (gLogCategory_APTransportWifiManagerClient <= 30 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
  {
    wifiManagerClient_Finalize_cold_1();
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 16) = 0;
  }
}

void __wifiManagerClient_registerInternal_block_invoke(uint64_t a1)
{
  wifiManagerClient_dumpWifiStatistics(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void wifiManagerClient_dumpWifiStatistics(uint64_t a1)
{
  cf[0] = 0;
  if (wifiManagerClient_ensureSubscribedForStatistics(a1))
  {
    wifiManagerClient_dumpWifiStatistics_cold_1();
    return;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  Samples = IOReportCreateSamples();
  if (Samples)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x5810000000;
    v15 = &unk_23D386B49;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x5810000000;
    v7[3] = &unk_23D386B49;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    cf[8] = 0;
    DataBuffer_Init();
    DataBuffer_Init();
    cf[1] = MEMORY[0x277D85DD0];
    cf[2] = 3221225472;
    cf[3] = __wifiManagerClient_printSamples_block_invoke;
    cf[4] = &unk_278BC9270;
    cf[5] = &v12;
    cf[6] = v20;
    cf[7] = v7;
    if (IOReportIterate())
    {
      APSLogErrorAt();
      v5 = APSSignalErrorAt();
    }

    else
    {
      v5 = DataBuffer_Append();
      if (!v5)
      {
        v5 = DataBuffer_Commit();
        if (!v5)
        {
          if (gLogCategory_APTransportWifiManagerClient <= 50 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (!v13[8])
          {
            goto LABEL_17;
          }

          v5 = DataBuffer_Append();
          if (!v5)
          {
            v5 = DataBuffer_Commit();
            if (!v5)
            {
              if (gLogCategory_APTransportWifiManagerClient <= 30 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

LABEL_17:
              v5 = 0;
              goto LABEL_18;
            }
          }
        }
      }

      APSLogErrorAt();
    }

LABEL_18:
    DataBuffer_Free();
    DataBuffer_Free();
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(v20, 8);
    if (v5)
    {
      wifiManagerClient_dumpWifiStatistics_cold_2();
    }

    goto LABEL_20;
  }

  wifiManagerClient_dumpWifiStatistics_cold_3(cf);
LABEL_20:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Samples)
  {
    CFRelease(Samples);
  }
}

void sub_23D30A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 152), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __wifiManagerClient_pruneIOReport_block_invoke(uint64_t a1)
{
  SubGroup = IOReportChannelGetSubGroup();
  ChannelName = IOReportChannelGetChannelName();
  v4 = 273;
  if (SubGroup)
  {
    v5 = ChannelName;
    if (ChannelName)
    {
      Length = CFStringGetLength(ChannelName);
      MutableCopy = CFStringCreateMutableCopy(0, Length, v5);
      CFStringTrimWhitespace(MutableCopy);
      if (!CFSetContainsValue(*(a1 + 32), MutableCopy))
      {
        v4 = 16;
        if (!MutableCopy)
        {
          return v4;
        }

        goto LABEL_5;
      }

      v4 = 16 * (CFSetContainsValue(*(a1 + 40), SubGroup) == 0);
      if (MutableCopy)
      {
LABEL_5:
        CFRelease(MutableCopy);
      }
    }
  }

  return v4;
}

uint64_t __wifiManagerClient_printSamples_block_invoke(void *a1, uint64_t a2)
{
  Group = IOReportChannelGetGroup();
  if (CFStringHasPrefix(Group, @"Interface awdl0 Peer"))
  {
    v5 = *(a1[4] + 8);
    IOReportChannelGetGroup();
    IOReportSimpleGetIntegerValue();
    if (a2)
    {
      if (!*(v5 + 64) && DataBuffer_AppendF())
      {
        __wifiManagerClient_printSamples_block_invoke_cold_1();
      }

      else if (FigCFStringGetCStringPtrAndBufferToFree())
      {
        if (SNScanF() == 1)
        {
          if (DataBuffer_AppendF())
          {
            __wifiManagerClient_printSamples_block_invoke_cold_3();
          }

          else if (DataBuffer_AppendF())
          {
            __wifiManagerClient_printSamples_block_invoke_cold_4();
          }
        }

        else
        {
          __wifiManagerClient_printSamples_block_invoke_cold_2();
        }
      }

      else
      {
        __wifiManagerClient_printSamples_block_invoke_cold_5();
      }
    }

    else
    {
      __wifiManagerClient_printSamples_block_invoke_cold_6();
    }

    free(0);
  }

  else
  {
    v6 = *(*(a1[5] + 8) + 24);
    if (!FigCFEqual())
    {
      *(*(a1[5] + 8) + 24) = Group;
      v7 = *(a1[6] + 8);
      v15 = *(*(a1[5] + 8) + 24);
      DataBuffer_AppendF();
    }

    ChannelName = IOReportChannelGetChannelName();
    Length = CFStringGetLength(ChannelName);
    MutableCopy = CFStringCreateMutableCopy(0, Length, ChannelName);
    CFStringTrimWhitespace(MutableCopy);
    IOReportChannelGetUnitLabel();
    IOReportSimpleGetIntegerValue();
    v11 = *(a1[6] + 8);
    DataBuffer_AppendF();
    v12 = *(a1[6] + 8);
    DataBuffer_AppendF();
    v13 = *(a1[6] + 8);
    DataBuffer_AppendF();
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  return 0;
}

void __wifiManagerClient_unregisterInternal_block_invoke(uint64_t a1)
{
  wifiManagerClient_dumpWifiStatistics(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

__CFString *screenpackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportPackageScreen %p>", a1);
  return Mutable;
}

CFTypeRef screenpackage_CopyMessageData()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *DerivedStorage;
  if (*DerivedStorage)
  {
    CFRetain(*DerivedStorage);
  }

  return v1;
}

uint64_t APTransportStreamAggregateCreate(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!a3)
  {
    APTransportStreamAggregateCreate_cold_8();
    v12 = 4294950686;
    goto LABEL_15;
  }

  FigTransportStreamGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v12 = v5;
    APTransportStreamAggregateCreate_cold_1();
    goto LABEL_26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF();
  v7 = FigDispatchQueueCreateWithPriority();
  DerivedStorage[2] = v7;
  if (!v7)
  {
    APTransportStreamAggregateCreate_cold_7();
LABEL_25:
    v12 = 4294950685;
    goto LABEL_26;
  }

  v8 = FigSimpleMutexCreate();
  DerivedStorage[5] = v8;
  if (!v8)
  {
    APTransportStreamAggregateCreate_cold_6();
    goto LABEL_25;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  DerivedStorage[7] = Mutable;
  if (!Mutable)
  {
    APTransportStreamAggregateCreate_cold_5();
    goto LABEL_25;
  }

  v10 = dispatch_semaphore_create(0);
  DerivedStorage[3] = v10;
  if (!v10)
  {
    APTransportStreamAggregateCreate_cold_4();
    goto LABEL_25;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"SendBackingProvider");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    DerivedStorage[1] = Value;
    if (Value)
    {
      goto LABEL_11;
    }
  }

  else if (DerivedStorage[1])
  {
LABEL_11:
    if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
    {
      APTransportStreamAggregateCreate_cold_2(&cf);
    }

    v12 = 0;
    *a3 = cf;
    goto LABEL_15;
  }

  APTransportStreamAggregateCreate_cold_3(&v16);
  v12 = v16;
LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t APTransportStreamAggregateAddSubStream(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v5 = DerivedStorage, (v6 = *(CMBaseObjectGetVTable() + 16)) == 0) || v6 != &kAPTransportStreamAggregate_FigTransportStreamClass)
  {
    APTransportStreamAggregateAddSubStream_cold_7();
    return 4294950686;
  }

  v7 = *(v5 + 40);
  FigSimpleMutexLock();
  if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = *(v5 + 48);
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = v9;
  if (!v8)
  {
    cf = 0;
    value = 0;
    v22 = *(v9 + 40);
    FigSimpleMutexCheckIsLockedOnThisThread();
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v25 = v24(CMBaseObject, @"SendConnection", *MEMORY[0x277CBECE8], &value);
      if (!v25)
      {
        APTransportConnectionAggregateProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (!ProtocolVTable || !*(ProtocolVTable + 16))
        {
          APTransportStreamAggregateAddSubStream_cold_5();
          v27 = 0;
          v21 = 4294950686;
          goto LABEL_48;
        }

        v27 = CFStringCreateF();
        if (!v27)
        {
          APTransportStreamAggregateAddSubStream_cold_4();
          v21 = 4294950685;
          goto LABEL_48;
        }

        v28 = value;
        APTransportConnectionAggregateProtocolGetProtocolID();
        v29 = CMBaseObjectGetProtocolVTable();
        if (v29 && (v30 = *(v29 + 16)) != 0)
        {
          v31 = *(v30 + 8);
          if (v31)
          {
            v32 = *(v30 + 8);
            v33 = v31(v28, v27, &cf);
            if (v33)
            {
              v21 = v33;
            }

            else
            {
              v34 = cf;
              v35 = *(v10 + 16);
              v36 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v36)
              {
                v37 = v36(v34, a1, streamAggregate_eventReceived, v35, 0);
                if (v37)
                {
                  v21 = v37;
                }

                else
                {
                  v38 = APTransportConnectionGetCMBaseObject(cf);
                  v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v39)
                  {
                    v40 = v39(v38, @"PackageType", @"RTP");
                    if (v40)
                    {
                      v21 = v40;
                    }

                    else
                    {
                      v41 = cf;
                      v42 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                      if (v42)
                      {
                        v43 = v42(v41);
                        if (!v43)
                        {
                          v44 = *(v10 + 24);
                          v45 = dispatch_time(0, 4000000000);
                          if (dispatch_semaphore_wait(v44, v45))
                          {
                            APTransportStreamAggregateAddSubStream_cold_3(&v53);
                            v21 = v53;
                          }

                          else
                          {
                            if (!*(v10 + 32))
                            {
                              if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
                              {
                                LogPrintF();
                              }

                              CFDictionarySetValue(*(v10 + 56), a2, value);
                              v21 = 0;
                              *(v10 + 48) = cf;
                              cf = 0;
LABEL_52:
                              if (value)
                              {
                                CFRelease(value);
                              }

                              if (cf)
                              {
                                CFRelease(cf);
                              }

                              if (v27)
                              {
                                CFRelease(v27);
                              }

                              if (v21)
                              {
                                APTransportStreamAggregateAddSubStream_cold_6();
                              }

                              goto LABEL_60;
                            }

                            APSLogErrorAt();
                            v50 = *(v10 + 32);
                            v21 = APSSignalErrorAt();
                          }

LABEL_48:
                          if (v21)
                          {
                            v46 = cf;
                            if (cf)
                            {
                              v47 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                              if (v47)
                              {
                                v47(v46, 0);
                              }
                            }
                          }

                          goto LABEL_52;
                        }

                        v21 = v43;
                      }

                      else
                      {
                        v21 = 4294954514;
                      }
                    }
                  }

                  else
                  {
                    v21 = 4294954514;
                  }
                }
              }

              else
              {
                v21 = 4294954514;
              }
            }
          }

          else
          {
            v21 = 4294954514;
          }
        }

        else
        {
          v21 = 4294954508;
        }

        APSLogErrorAt();
        goto LABEL_48;
      }

      v21 = v25;
    }

    else
    {
      v21 = 4294954514;
    }

    APSLogErrorAt();
    v27 = 0;
    goto LABEL_48;
  }

  value = 0;
  v11 = *(v9 + 40);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (CFDictionaryContainsKey(*(v10 + 56), a2))
  {
    APTransportStreamAggregateAddSubStream_cold_1();
    v21 = 4294950686;
    goto LABEL_42;
  }

  v12 = FigTransportStreamGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    v21 = 4294954514;
    goto LABEL_41;
  }

  v14 = v13(v12, @"SendConnection", *MEMORY[0x277CBECE8], &value);
  if (v14)
  {
    v21 = v14;
    goto LABEL_41;
  }

  v15 = *(v10 + 48);
  v16 = value;
  APTransportConnectionAggregateProtocolGetProtocolID();
  v17 = CMBaseObjectGetProtocolVTable();
  if (!v17 || (v18 = *(v17 + 16)) == 0)
  {
    v21 = 4294954508;
    goto LABEL_41;
  }

  v19 = *(v18 + 16);
  if (!v19)
  {
    v21 = 4294954514;
    goto LABEL_41;
  }

  v20 = *(v18 + 16);
  v21 = v19(v15, v16);
  if (v21)
  {
LABEL_41:
    APSLogErrorAt();
    goto LABEL_42;
  }

  CFDictionarySetValue(*(v10 + 56), a2, value);
LABEL_42:
  if (value)
  {
    CFRelease(value);
  }

  if (v21)
  {
    APTransportStreamAggregateAddSubStream_cold_2();
  }

LABEL_60:
  v48 = *(v5 + 40);
  FigSimpleMutexUnlock();
  return v21;
}

uint64_t APTransportStreamAggregateRemoveSubStream(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v5 = DerivedStorage, (v6 = *(CMBaseObjectGetVTable() + 16)) == 0) || v6 != &kAPTransportStreamAggregate_FigTransportStreamClass)
  {
    APTransportStreamAggregateRemoveSubStream_cold_3();
    return 4294950686;
  }

  if (!*(v5 + 48))
  {
    APTransportStreamAggregateRemoveSubStream_cold_2();
    return 4294950686;
  }

  v7 = *(v5 + 40);
  FigSimpleMutexLock();
  if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Value = CFDictionaryGetValue(*(v5 + 56), a2);
  if (!Value)
  {
    APTransportStreamAggregateRemoveSubStream_cold_1();
    v15 = 4294950686;
    goto LABEL_17;
  }

  v9 = Value;
  v10 = *(v5 + 48);
  APTransportConnectionAggregateProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v12 = *(ProtocolVTable + 16)) == 0)
  {
    v15 = 4294954508;
    goto LABEL_16;
  }

  v13 = *(v12 + 24);
  if (!v13)
  {
    v15 = 4294954514;
    goto LABEL_16;
  }

  v14 = *(v12 + 24);
  v15 = v13(v10, v9);
  if (v15)
  {
LABEL_16:
    APSLogErrorAt();
    goto LABEL_17;
  }

  CFDictionaryRemoveValue(*(v5 + 56), a2);
LABEL_17:
  v16 = *(v5 + 40);
  FigSimpleMutexUnlock();
  return v15;
}

void streamAggregate_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStreamAggregate <= 30 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
  {
    streamAggregate_Finalize_cold_1();
  }

  streamAggregate_invalidateInternal();
  v1 = DerivedStorage[5];
  FigSimpleMutexDestroy();
  v2 = DerivedStorage[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = DerivedStorage[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[1];
  if (v6)
  {

    CFRelease(v6);
  }
}

__CFString *streamAggregate_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportStreamAggregate %p>", a1);
  return Mutable;
}

uint64_t streamAggregate_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    streamAggregate_CopyProperty_cold_1();
    return 4294950679;
  }

  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v10 = CMBaseObjectGetDerivedStorage();
  v11 = *(v10 + 40);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*v10)
  {
    streamAggregate_CopyProperty_cold_2();
    v17 = 4294950679;
    goto LABEL_15;
  }

  if (!CFEqual(a2, @"PrimaryPacketDropCount"))
  {
    if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v17 = 4294954509;
    goto LABEL_15;
  }

  v12 = *(v10 + 48);
  if (!v12)
  {
    streamAggregate_CopyProperty_cold_3(a4);
    goto LABEL_7;
  }

  CMBaseObject = APTransportConnectionGetCMBaseObject(v12);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v17 = 4294954514;
LABEL_9:
    APSLogErrorAt();
LABEL_15:
    v18 = *(v8 + 40);
    FigSimpleMutexUnlock();
    APSLogErrorAt();
    return v17;
  }

  v15 = v14(CMBaseObject, @"PrimaryPacketDropCount", a3, a4);
  if (v15)
  {
    v17 = v15;
    goto LABEL_9;
  }

LABEL_7:
  v16 = *(v8 + 40);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t streamAggregate_SetProperty()
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    streamAggregate_SetProperty_cold_1();
    return 4294950679;
  }

  else
  {
    if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294954509;
  }
}

uint64_t streamAggregate_Resume()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
  {
    streamAggregate_Resume_cold_1();
  }

  if (!*DerivedStorage)
  {
    return 0;
  }

  streamAggregate_Resume_cold_2();
  return 4294950679;
}

uint64_t streamAggregate_copyFormattedAsyncPackageForBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t *a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    streamAggregate_copyFormattedAsyncPackageForBBuf_cold_4();
    return 4294950686;
  }

  if (!a4)
  {
    streamAggregate_copyFormattedAsyncPackageForBBuf_cold_3();
    return 4294950686;
  }

  if (!a5)
  {
    streamAggregate_copyFormattedAsyncPackageForBBuf_cold_2();
    return 4294950686;
  }

  v10 = DerivedStorage;
  v11 = CMBaseObjectGetDerivedStorage();
  dataPointerOut = 0;
  v38 = 0;
  v35 = 0;
  lengthAtOffsetOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, &v35, &dataPointerOut);
  if (DataPointer)
  {
    v33 = DataPointer;
    APSLogErrorAt();
    goto LABEL_35;
  }

  if (lengthAtOffsetOut != v35 || (APTransportStreamSendBackingProviderCopyPackageForAcquiredBBuf(*(v11 + 8), a2, &v38), (v13 = v38) == 0))
  {
    v15 = APTransportStreamSendBackingProviderCopyPackageForGivenBBuf(*(v11 + 8), a2, &v38);
    if (!v15)
    {
      v14 = 1;
      v13 = v38;
      goto LABEL_10;
    }

    v33 = v15;
    streamAggregate_copyFormattedAsyncPackageForBBuf_cold_1();
LABEL_35:
    APSLogErrorAt();
    return v33;
  }

  v14 = 0;
LABEL_10:
  *a4 = v13;
  *a5 = v14;
  v16 = *a4;
  VTable = CMBaseObjectGetVTable();
  v18 = *(*(VTable + 16) + 8);
  if (v18)
  {
    v19 = *(VTable + 16) + 8;
    v20 = v18(v16);
  }

  else
  {
    v20 = 0;
  }

  v21 = *a4;
  v22 = CMBaseObjectGetVTable();
  v23 = *(*(v22 + 16) + 32);
  if (v23)
  {
    v24 = *(v22 + 16) + 32;
    v23(v21, a3);
  }

  if (*(v10 + 8))
  {
    if (!v20)
    {
      v25 = *a4;
      v26 = CMBaseObjectGetVTable();
      v27 = *(*(v26 + 16) + 16);
      if (v27)
      {
        v28 = *(v26 + 16) + 16;
        v27(v25, a2);
      }
    }
  }

  v29 = *a4;
  v30 = CMBaseObjectGetVTable();
  v31 = *(*(v30 + 16) + 88);
  if (v31)
  {
    v32 = *(v30 + 16) + 88;
    v31(v29, 1634957678);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return 0;
}

uint64_t streamAggregate_eventReceived(int a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a1 - 4) > 4)
  {
    LOBYTE(v3) = 30;
  }

  else
  {
    v3 = dword_23D3838E8[a1 - 4];
  }

  if ((v3 & 0x3E) >= gLogCategory_APTransportStreamAggregate && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
  {
    streamAggregate_eventReceived_cold_1(a1);
  }

  if (a1 == 5)
  {
    goto LABEL_10;
  }

  if (a1 == 4)
  {
    *(DerivedStorage + 32) = CFGetInt64();
LABEL_10:
    dispatch_semaphore_signal(*(DerivedStorage + 24));
  }

  return 0;
}

const char *APBrokerHTTPMethodString(int a1)
{
  v1 = "UNKNOWNMETHOD";
  if (a1 == 2)
  {
    v1 = "POST";
  }

  if (a1 == 1)
  {
    return "GET";
  }

  else
  {
    return v1;
  }
}

const char *APBrokerHTTPProtocolString(int a1)
{
  if (a1)
  {
    return "https";
  }

  else
  {
    return "http";
  }
}

void APBrokerHTTPSendRequest(uint64_t a1, uint64_t a2, const void *a3, int a4, int a5, const void *a6, const void *a7, const void *a8, uint64_t a9, const void *a10)
{
  v18 = a10;
  v50 = *MEMORY[0x277D85DE8];
  v42 = 0;
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a10)
  {
    APBrokerHTTPSendRequest_cold_12();
    goto LABEL_47;
  }

  if (!a3)
  {
    APBrokerHTTPSendRequest_cold_11(&v42);
    goto LABEL_39;
  }

  if (!a4)
  {
    APBrokerHTTPSendRequest_cold_10(&v42);
    goto LABEL_39;
  }

  cf = a3;
  v19 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E00402108E38DuLL);
  if (!v19)
  {
    APBrokerHTTPSendRequest_cold_9();
    goto LABEL_39;
  }

  v20 = v19;
  *v19 = a1;
  if (a2)
  {
    v21 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v20 + 8) = v21;
    if (!v21)
    {
      APBrokerHTTPSendRequest_cold_1();
      goto LABEL_35;
    }
  }

  *(v20 + 16) = a5;
  if (a6)
  {
    v22 = CFRetain(a6);
  }

  else
  {
    v22 = 0;
  }

  *(v20 + 32) = v22;
  if (a7)
  {
    v23 = CFRetain(a7);
  }

  else
  {
    v23 = 0;
  }

  *(v20 + 40) = v23;
  if (a8)
  {
    v24 = CFRetain(a8);
  }

  else
  {
    v24 = 0;
  }

  *(v20 + 48) = v24;
  v25 = _Block_copy(a10);
  *(v20 + 56) = v25;
  if (!v25)
  {
    APBrokerHTTPSendRequest_cold_8();
    goto LABEL_35;
  }

  if (a9)
  {
    Int64 = CFDictionaryGetInt64();
    *(v20 + 20) = Int64 != 0;
    if (Int64)
    {
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (!TypedValue)
      {
        APBrokerHTTPSendRequest_cold_3(&v42);
        goto LABEL_35;
      }

      v28 = [[APBrokerHTTPUtilsTaskDelegate alloc] initWithLogContext:a1 sslCertificateHostName:TypedValue];
      *(v20 + 24) = v28;
      if (!v28)
      {
        APBrokerHTTPSendRequest_cold_2();
        goto LABEL_35;
      }
    }
  }

  if (a4 != 1)
  {
    *(v20 + 64) = CFRetain(cf);
    *(v20 + 20);
    v32 = CFStringCreateF();
    if (v42)
    {
      APBrokerHTTPSendRequest_cold_4();
      if (!v32)
      {
LABEL_34:
        if (!v20)
        {
LABEL_36:
          if (!v18)
          {
            goto LABEL_47;
          }

          if (!v42)
          {
            v42 = -6762;
          }

LABEL_39:
          (*(v18 + 2))(v18, 0, 0, 0, 0);
          goto LABEL_47;
        }

LABEL_35:
        _APBrokerHTTPReleaseRequestData(v20);
        goto LABEL_36;
      }
    }

    else
    {
      _APBrokerHTTPSendRequestToURL(v20, v32);
      v20 = 0;
      v18 = 0;
      if (!v32)
      {
        goto LABEL_34;
      }
    }

    CFRelease(v32);
    goto LABEL_34;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  v39 = __APBrokerHTTPSendRequest_block_invoke;
  v40 = &__block_descriptor_40_e131_v52__0____CFString__8____sockaddr_CC_14c___sockaddr_in_CCS_in_addr_I__8c___sockaddr_in6_CCSI_in6_addr_____16C__8S__4I___I__16I44i48l;
  v41 = v20;
  v48 = 0u;
  v49 = 0u;
  *label = 0u;
  v47 = 0u;
  v45 = 0;
  v29 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E004006E54201uLL);
  v30 = v29;
  if (!v29)
  {
    APBrokerHTTPSendRequest_cold_7();
LABEL_58:
    v35 = 4294960568;
LABEL_60:
    memset(v43, 0, sizeof(v43));
    v44 = 0;
    v39(aBlock, 0, v43, 0, v35);
    goto LABEL_43;
  }

  *v29 = v20;
  v29[1] = _Block_copy(aBlock);
  SNPrintF();
  v31 = dispatch_queue_create(label, 0);
  v30[2] = v31;
  if (!v31)
  {
    APBrokerHTTPSendRequest_cold_6();
    goto LABEL_58;
  }

  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigCFStringGetCStringPtrAndBufferToFree();
  v36 = v30[2];
  v33 = AsyncConnection_Connect();
  if (v33)
  {
    v35 = v33;
    APBrokerHTTPSendRequest_cold_5();
    goto LABEL_60;
  }

  v30 = 0;
LABEL_43:
  if (v45)
  {
    free(v45);
  }

  if (v30)
  {
    _APBrokerHTTPReleaseResolutionData(v30);
  }

LABEL_47:
  v34 = *MEMORY[0x277D85DE8];
}

void __APBrokerHTTPSendRequest_block_invoke(uint64_t a1, CFTypeRef cf, _OWORD *a3, int a4, int a5)
{
  v8 = *(a1 + 32);
  *v22 = *a3;
  *&v22[12] = *(a3 + 12);
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    v20 = *v8;
    LogPrintF();
  }

  if (a5)
  {
    __APBrokerHTTPSendRequest_block_invoke_cold_1();
  }

  else
  {
    v9 = CFRetain(cf);
    *(v8 + 64) = v9;
    *(v8 + 72) = *v22;
    *(v8 + 84) = *&v22[12];
    *(v8 + 100) = a4;
    if (!v9)
    {
LABEL_28:
      APSLogErrorAt();
      goto LABEL_26;
    }

    v10 = *(v8 + 73);
    if (v10 != 2 && v10 != 30)
    {
      __APBrokerHTTPSendRequest_block_invoke_cold_3();
LABEL_26:
      APSLogErrorAt();
      goto LABEL_23;
    }

    v12 = v9;
    v13 = bswap32(*(v8 + 74)) >> 16;
    Length = CFStringGetLength(v9);
    v15 = Length;
    while (v15 >= 1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v12, v15 - 1);
      if (CharacterAtIndex == 37)
      {
        if (v15 < Length)
        {
          v23.location = 0;
          v23.length = v15 - 1;
          v17 = CFStringCreateWithSubstring(0, v12, v23);
          if (!v17)
          {
            __APBrokerHTTPSendRequest_block_invoke_cold_2();
            goto LABEL_28;
          }

          goto LABEL_21;
        }

        break;
      }

      --v15;
      if ((CharacterAtIndex - 58) <= 0xFFFFFFF5)
      {
        break;
      }
    }

    v17 = CFRetain(v12);
    if (!v17)
    {
      goto LABEL_28;
    }

LABEL_21:
    v18 = v17;
    *(v8 + 20);
    v21 = *(v8 + 32);
    v19 = CFStringCreateF();
    CFRelease(v18);
    _APBrokerHTTPSendRequestToURL(v8, v19);
    v8 = 0;
    if (v19)
    {
      CFRelease(v19);
    }
  }

LABEL_23:
  if (v8)
  {
    (*(*(v8 + 56) + 16))(*(v8 + 56), 0, 0, 0);
    _APBrokerHTTPReleaseRequestData(v8);
  }
}

uint64_t _APBrokerHTTPSendRequestToURL(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    _APBrokerHTTPSendRequestToURL_cold_1(a1);
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  v6 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [v6 setWaitsForConnectivity:1];
  [v6 setAllowsCellularAccess:0];
  [v6 setTimeoutIntervalForResource:IntWithDefault];
  v7 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v6];
  v8 = [MEMORY[0x277CCAB70] requestWithURL:objc_msgSend(MEMORY[0x277CBEBC0] cachePolicy:"URLWithString:" timeoutInterval:{a2), 1, IntWithDefault}];
  if (!v8)
  {
    _APBrokerHTTPSendRequestToURL_cold_3();
    goto LABEL_14;
  }

  v9 = v8;
  v10 = *(a1 + 16);
  if (v10 == 1)
  {
    v11 = @"GET";
  }

  else
  {
    if (v10 != 2)
    {
      APSLogErrorAt();
      goto LABEL_14;
    }

    v11 = @"POST";
  }

  [v8 setHTTPMethod:v11];
  v12 = *(a1 + 40);
  if (v12)
  {
    if (gLogCategory_APBrokerHTTPUtils <= 10)
    {
      if (gLogCategory_APBrokerHTTPUtils != -1 || (v14 = _LogCategory_Initialize(), v12 = *(a1 + 40), v14))
      {
        v21 = *a1;
        v22 = v12;
        LogPrintF();
        v13 = *(a1 + 40);
      }
    }

    v25[1] = MEMORY[0x277D85DD0];
    v25[2] = 3221225472;
    v25[3] = ___APBrokerHTTPGetSessionAndRequest_block_invoke;
    v25[4] = &unk_278BC9340;
    v25[5] = v9;
    CFDictionaryApplyBlock();
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v25[0] = 0;
    if (gLogCategory_APBrokerHTTPUtils <= 10)
    {
      if (gLogCategory_APBrokerHTTPUtils != -1 || (v16 = _LogCategory_Initialize(), v15 = *(a1 + 48), v16))
      {
        v21 = *a1;
        v22 = v15;
        LogPrintF();
        v15 = *(a1 + 48);
      }
    }

    v17 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v15 options:1 error:{v25, v21, v22}];
    if (!NSErrorToOSStatus())
    {
      [v9 setHTTPBody:v17];
      goto LABEL_25;
    }

    APSLogErrorAt();
LABEL_14:
    [v7 finishTasksAndInvalidate];
    APSLogErrorAt();
    v7 = 0;
LABEL_15:
    (*(*(a1 + 56) + 16))();
    _APBrokerHTTPReleaseRequestData(a1);
    return [v7 finishTasksAndInvalidate];
  }

LABEL_25:
  [0 finishTasksAndInvalidate];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = ___APBrokerHTTPSendRequestToURL_block_invoke;
  v24[3] = &__block_descriptor_40_e46_v32__0__NSData_8__NSURLResponse_16__NSError_24l;
  v24[4] = a1;
  v18 = [v7 dataTaskWithRequest:v9 completionHandler:v24];
  if (!v18)
  {
    _APBrokerHTTPSendRequestToURL_cold_2();
    goto LABEL_15;
  }

  v19 = v18;
  [v18 setDelegate:*(a1 + 24)];
  [v19 resume];
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    v22 = v7;
    v23 = v19;
    v21 = v4;
    LogPrintF();
  }

  return [v7 finishTasksAndInvalidate];
}

void _APBrokerHTTPReleaseRequestData(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  *(a1 + 24) = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    _Block_release(v6);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  free(a1);
}

void APBrokerHTTPResolutionProgressHandler(int a1, __int128 *a2, uint64_t *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    v15 = *a3;
    LogPrintF();
  }

  if (a1 != 4)
  {
    if (a1 != 2)
    {
      goto LABEL_26;
    }

    v6 = CFStringCreateF();
    if (!v6)
    {
      APBrokerHTTPResolutionProgressHandler_cold_1();
      goto LABEL_26;
    }

    v7 = v6;
    v8 = a3[4];
    a3[4] = v6;
    CFRetain(v6);
    if (v8)
    {
      CFRelease(v8);
    }

    *v22 = 0;
    v23 = 0;
    v24 = 0;
    v9 = strchr(a2, 37);
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = strlen(v9 + 1);
    if (v10 <= 0x10)
    {
      v11 = v10;
      __memcpy_chk();
      v22[v11] = 0;
      v12 = if_nametoindex(v22);
      v21 = v12;
      if (v12)
      {
LABEL_15:
        *(a3 + 17) = v12;
LABEL_16:
        if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
        {
          v19 = a3[4];
          v20 = *(a3 + 17);
          v16 = *a3;
          LogPrintF();
        }

        CFRelease(v7);
        goto LABEL_26;
      }

      if (sscanf(v22, "%u", &v21) == 1)
      {
        v12 = v21;
        goto LABEL_15;
      }
    }

    APSLogErrorAt();
    if (gLogCategory_APBrokerHTTPUtils <= 60 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
    {
      v18 = *a3;
      LogPrintF();
    }

    *(a3 + 17) = 0;
    goto LABEL_16;
  }

  v13 = *a2;
  *(a3 + 52) = *(a2 + 12);
  *(a3 + 5) = v13;
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    v17 = *a3;
    LogPrintF();
  }

LABEL_26:
  v14 = *MEMORY[0x277D85DE8];
}

void APBrokerHTTPResolutionHandler(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    v12 = *a3;
    LogPrintF();
  }

  v8 = a3[1];
  v9 = a3[4];
  v10 = *(a3 + 17);
  v11 = *(v8 + 16);
  v13[0] = *(a3 + 5);
  *(v13 + 12) = *(a3 + 52);
  v11(v8, v9, v13, v10, a2, a6);
  _APBrokerHTTPReleaseResolutionData(a3);
}

void _APBrokerHTTPReleaseResolutionData(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  if (a1[3])
  {
    AsyncConnection_Release();
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  free(a1);
}

uint64_t APTransportGetSharedTransport()
{
  if (_MergedGlobals_15 != -1)
  {
    APTransportGetSharedTransport_cold_1();
  }

  return qword_281309C20;
}

void transport_getSharedTransport(CFTypeRef *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  cf = 0;
  FigTransportGetClassID();
  if (CMDerivedObjectCreate())
  {
    transport_getSharedTransport_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = dispatch_queue_create("APTransport", 0);
    *DerivedStorage = v4;
    if (v4)
    {
      v5 = dispatch_queue_create("APTransport.notification", 0);
      DerivedStorage[1] = v5;
      if (v5)
      {
        if (FigCFWeakReferenceTableCreate())
        {
          transport_getSharedTransport_cold_2();
        }

        else if (APTransportTrafficRegistrarCreate(v2, DerivedStorage + 3))
        {
          transport_getSharedTransport_cold_3();
        }

        else
        {
          if (!APTransportWifiManagerClientCreate(v2, DerivedStorage + 4))
          {
            if (gLogCategory_APTransport <= 30 && (gLogCategory_APTransport != -1 || _LogCategory_Initialize()))
            {
              transport_getSharedTransport_cold_5(&cf);
            }

            *a1 = cf;
            return;
          }

          transport_getSharedTransport_cold_4();
        }
      }

      else
      {
        transport_getSharedTransport_cold_6();
      }
    }

    else
    {
      transport_getSharedTransport_cold_7();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t APTransportUnregisterSession(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *DerivedStorage;
    APSDispatchAsyncFHelper();
    return 0;
  }

  else
  {
    APTransportUnregisterSession_cold_1();
    return 4294950716;
  }
}

uint64_t transport_unregisterSessionInternal(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransport <= 30 && (gLogCategory_APTransport != -1 || _LogCategory_Initialize()))
  {
    transport_unregisterSessionInternal_cold_1(a1);
  }

  v4 = *(DerivedStorage + 16);
  v5 = a1[1];
  result = FigCFWeakReferenceTableRemoveValue();
  if (result)
  {
    return transport_unregisterSessionInternal_cold_2();
  }

  return result;
}

void transport_Finalize()
{
  if (gLogCategory_APTransport <= 90 && (gLogCategory_APTransport != -1 || _LogCategory_Initialize()))
  {
    transport_Finalize_cold_1();
  }
}

__CFString *transport_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransport %p>", a1);
  return Mutable;
}

uint64_t transport_CopyProperty()
{
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigDispatchSyncCopyPropertyImplementation();
}

uint64_t transport_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x2821127C0](v6, transport_setPropertyInternal, a1, a2, a3);
}

uint64_t transport_copyPropertyInternal(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"TrafficRegistrar"))
  {
    v7 = *(DerivedStorage + 24);
    if (v7)
    {
LABEL_3:
      v8 = CFRetain(v7);
LABEL_7:
      result = 0;
      *a4 = v8;
      return result;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"WifiManagerClient"))
  {
    v7 = *(DerivedStorage + 32);
    if (v7)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  return 4294954512;
}

uint64_t transport_CreateAndRegisterService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = &v18;
  context[1] = a2;
  context[2] = a3;
  context[3] = a4;
  context[4] = a5;
  context[5] = a6;
  context[6] = a7;
  context[7] = a8;
  dispatch_sync_f(*DerivedStorage, context, transport_createAndRegisterServiceInternal);
  return v18;
}

uint64_t transport_UnregisterService()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  APSDispatchAsyncFHelper();
  return 4294954514;
}

uint64_t transport_CreateSessionToService(uint64_t a1, const __CFAllocator *a2, const void *a3, const void *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  context = a1;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4 && (v12 = CFGetTypeID(a4), v12 != APTransportDeviceGetTypeID()))
  {
    transport_CreateSessionToService_cold_1(&v17);
    return v17;
  }

  else
  {
    v13 = APTransportSessionCreate(a2, 1, a3, a4, a5, &cf);
    if (v13)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      dispatch_sync_f(*DerivedStorage, &context, transport_registerSession);
      *a6 = cf;
    }
  }

  return v13;
}

uint64_t transport_createAndRegisterServiceInternal(uint64_t a1)
{
  result = APTransportServiceCreate(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  **a1 = result;
  if (result)
  {
    return transport_createAndRegisterServiceInternal_cold_1();
  }

  return result;
}

uint64_t transport_registerSession(uint64_t *a1)
{
  v2 = *a1;
  v9 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  v5 = a1[1];
  v4 = a1 + 1;
  if (FigCFWeakReferenceTableAddValueAndGetKey())
  {
    result = transport_registerSession_cold_1();
  }

  else
  {
    v6 = *v4;
    result = APSSetFBOPropertyInt64();
    if (!result)
    {
      if (gLogCategory_APTransport <= 30)
      {
        if (gLogCategory_APTransport != -1)
        {
          return transport_registerSession_cold_3(v4, &v9);
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return transport_registerSession_cold_3(v4, &v9);
        }
      }

      return result;
    }

    result = transport_registerSession_cold_2();
  }

  if (gLogCategory_APTransport <= 60)
  {
    if (gLogCategory_APTransport != -1 || (result = _LogCategory_Initialize(), result))
    {
      v8 = *v4;
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APBrowserIsDeviceAvailableOnTransport(const __CFDictionary *a1, int a2, BOOL *a3)
{
  v7 = 0;
  if (a1)
  {
    APBrowserGetTransports(a1, 0, &v7);
    result = 0;
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = -1;
    }

    *a3 = (v7 & v6) != 0;
  }

  else
  {
    APBrowserIsDeviceAvailableOnTransport_cold_1();
    return 4294960591;
  }

  return result;
}

uint64_t APBrowserCreateDeviceIDFromString(const void *a1, CFNumberRef *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetValue(Mutable, @"deviceID", a1);
    v7 = APBrowserCopyDeviceIDFromBonjourInfo(v4, v6, a2);
    if (v7)
    {
      APBrowserCreateDeviceIDFromString_cold_1();
    }

    CFRelease(v6);
  }

  else
  {
    APBrowserCreateDeviceIDFromString_cold_2();
    return 4294960568;
  }

  return v7;
}

uint64_t APTKeepAliveControllerLowPowerCreate(int a1, CFTypeRef cf, const void *a3, void *a4)
{
  if (!cf || (v7 = CFGetTypeID(cf), v7 != CFDictionaryGetTypeID()))
  {
    APTKeepAliveControllerLowPowerCreate_cold_15();
    return 4294895535;
  }

  if (!a3 || (v8 = CFGetTypeID(a3), v8 != FigTransportStreamGetTypeID()))
  {
    APTKeepAliveControllerLowPowerCreate_cold_14();
    return 4294895535;
  }

  if (!a4)
  {
    APTKeepAliveControllerLowPowerCreate_cold_13();
    return 4294895535;
  }

  APTransportKeepAliveControllerGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v12 = v9;
    APTKeepAliveControllerLowPowerCreate_cold_1();
    return v12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTKeepAliveControllerLowPower <= 50 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Value = CFDictionaryGetValue(cf, @"SessionUUID");
  if (!Value || (v13 = Value, v14 = CFGetTypeID(Value), v14 != CFUUIDGetTypeID()))
  {
    APTKeepAliveControllerLowPowerCreate_cold_12();
    return 4294895535;
  }

  *&sourceBytes[8] = 0;
  *sourceBytes = bswap32(*&CFUUIDGetUUIDBytes(v13)) >> 16;
  if (CMBlockBufferCreateWithMemoryBlock(0, 0, 2uLL, 0, 0, 0, 2uLL, 1u, &sourceBytes[2]))
  {
    APTKeepAliveControllerLowPowerCreate_cold_2();
  }

  else if (CMBlockBufferReplaceDataBytes(sourceBytes, *&sourceBytes[2], 0, 2uLL))
  {
    APTKeepAliveControllerLowPowerCreate_cold_3();
  }

  v15 = *&sourceBytes[2];
  DerivedStorage[7] = *&sourceBytes[2];
  if (v15)
  {
    *&sourceBytes[2] = 0;
    if (APTPackageLowPowerKeepAliveCreate(*MEMORY[0x277CBECE8], &sourceBytes[2]))
    {
      APTKeepAliveControllerLowPowerCreate_cold_4();
    }

    else
    {
      v16 = *&sourceBytes[2];
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v17)
      {
        v17(v16, 1819308912);
      }

      v18 = *&sourceBytes[2];
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v19)
      {
        v19(v18, v15);
      }

      v20 = *&sourceBytes[2];
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v21)
      {
        v22 = v21(v20);
        goto LABEL_34;
      }
    }

    v22 = 0;
LABEL_34:
    if (*&sourceBytes[2])
    {
      CFRelease(*&sourceBytes[2]);
    }

    if (!v22)
    {
      v12 = 4294895536;
      APTKeepAliveControllerLowPowerCreate_cold_10();
      return v12;
    }

    v23 = APSSetFBOPropertyInt64();
    if (v23)
    {
      v12 = v23;
      APTKeepAliveControllerLowPowerCreate_cold_5();
    }

    else
    {
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v25)
      {
        v26 = v25(CMBaseObject, @"LowPowerOffloadBBuf", v22);
        if (!v26)
        {
          v27 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          DerivedStorage[5] = v27;
          if (v27)
          {
            DerivedStorage[6] = a3;
            v28 = dispatch_queue_create("com.apple.AirPlay.APTKeepAliveControllerLowPower.state", 0);
            DerivedStorage[2] = v28;
            if (v28)
            {
              v29 = dispatch_queue_create("com.apple.AirPlay.APTKeepAliveControllerLowPower.network", 0);
              *DerivedStorage = v29;
              if (v29)
              {
                v30 = dispatch_queue_create("com.apple.AirPlay.APTKeepAliveControllerLowPower.notification", 0);
                DerivedStorage[1] = v30;
                if (v30)
                {
                  v12 = 0;
                  *a4 = 0;
                }

                else
                {
                  v12 = 4294895536;
                  APTKeepAliveControllerLowPowerCreate_cold_6();
                }
              }

              else
              {
                v12 = 4294895536;
                APTKeepAliveControllerLowPowerCreate_cold_7();
              }
            }

            else
            {
              v12 = 4294895536;
              APTKeepAliveControllerLowPowerCreate_cold_8();
            }
          }

          else
          {
            APTKeepAliveControllerLowPowerCreate_cold_9(&sourceBytes[2]);
            v12 = *&sourceBytes[2];
          }

          goto LABEL_47;
        }

        v12 = v26;
      }

      else
      {
        v12 = 4294954514;
      }

      APSLogErrorAt();
    }

LABEL_47:
    CFRelease(v22);
    return v12;
  }

  v12 = 4294895536;
  APTKeepAliveControllerLowPowerCreate_cold_11();
  return v12;
}

void lowPowerKeepAliveController_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTKeepAliveControllerLowPower <= 50 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
  {
    v6 = *(DerivedStorage + 48);
    LogPrintF();
  }

  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 40) = 0;
  }

  v2 = *(DerivedStorage + 56);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 56) = 0;
  }

  *(DerivedStorage + 48) = 0;
  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 24));
    dispatch_release(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *lowPowerKeepAliveController_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTKeepAliveControllerLowPower %p>", a1);
  return Mutable;
}

uint64_t lowPowerKeepAliveController_Resume(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTKeepAliveControllerLowPower <= 30 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
  {
    lowPowerKeepAliveController_Resume_cold_1();
  }

  CFRetain(a1);
  v3 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __lowPowerKeepAliveController_Resume_block_invoke;
  block[3] = &__block_descriptor_tmp_11;
  block[4] = a1;
  dispatch_async(v3, block);
  return 0;
}

uint64_t lowPowerKeepAliveController_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTKeepAliveControllerLowPower <= 30 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
  {
    lowPowerKeepAliveController_Suspend_cold_1();
  }

  v3 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __lowPowerKeepAliveController_Suspend_block_invoke;
  v5[3] = &__block_descriptor_tmp_21_1;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

void __lowPowerKeepAliveController_timerFired_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTKeepAliveControllerLowPower <= 30 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
  {
    __lowPowerKeepAliveController_timerFired_block_invoke_cold_1();
  }

  v5 = *(DerivedStorage + 56);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v6)
  {
    v7 = v6(v3, 1819309931, v5);
    if (!v7)
    {
      goto LABEL_6;
    }

    v10 = v7;
  }

  else
  {
    v10 = -12782;
  }

  __lowPowerKeepAliveController_timerFired_block_invoke_cold_2(DerivedStorage, v11, v2, v10);
LABEL_6:
  v8 = *(a1 + 32);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }
}

void __lowPowerKeepAliveController_sendKeepAlive_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(CMBaseObjectGetDerivedStorage() + 32))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetInt64();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(v5);
    }

    else
    {
      __lowPowerKeepAliveController_sendKeepAlive_block_invoke_cold_1();
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_23D30F778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APTPackageMusicDataCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  v2 = APTPackageMusicDataCreateWithBBuf(a1, 0, a2);
  if (v2)
  {
    APTPackageMusicDataCreate_cold_1();
  }

  return v2;
}

uint64_t APTPackageMusicDataCreateWithBBuf(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  blockBufferOut = 0;
  cf = 0;
  APTransportPackageGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v13 = v6;
    APTPackageMusicDataCreateWithBBuf_cold_1();
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = APTransportParcelMake(8uLL, 0, DerivedStorage);
  if (v8)
  {
    v13 = v8;
    APTPackageMusicDataCreateWithBBuf_cold_2();
    goto LABEL_12;
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  destination = 0;
  v9 = CMBlockBufferCopyDataBytes(a2, 0, 8uLL, &destination);
  if (v9)
  {
    v13 = v9;
    APTPackageMusicDataCreateWithBBuf_cold_3();
    goto LABEL_12;
  }

  APTransportParcelSetMessageType(*DerivedStorage, bswap32(HIDWORD(destination)));
  if (CMBlockBufferGetDataLength(a2) < 9)
  {
    goto LABEL_25;
  }

  DataLength = CMBlockBufferGetDataLength(a2);
  v11 = CMBlockBufferCreateWithBufferReference(a1, a2, 8uLL, DataLength - 8, 0, &blockBufferOut);
  if (v11)
  {
    v13 = v11;
    APTPackageMusicDataCreateWithBBuf_cold_4();
    goto LABEL_12;
  }

  v12 = APTransportParcelSetMessageData(*DerivedStorage, blockBufferOut);
  if (v12)
  {
    v13 = v12;
    APTPackageMusicDataCreateWithBBuf_cold_5();
  }

  else
  {
LABEL_25:
    if (gLogCategory_APTPackageMusicData <= 30 && (gLogCategory_APTPackageMusicData != -1 || _LogCategory_Initialize()))
    {
      APTPackageMusicDataCreateWithBBuf_cold_6(&cf);
    }

    v13 = 0;
    *a3 = cf;
    cf = 0;
  }

LABEL_12:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t APTPackageMusicDataCreateWithMessageSize(uint64_t a1, size_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    APTransportPackageGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v8 = v5;
      APTPackageMusicDataCreateWithMessageSize_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = APTransportParcelMake(8uLL, a2, DerivedStorage);
      if (v7)
      {
        v8 = v7;
        APTPackageMusicDataCreateWithMessageSize_cold_2();
      }

      else
      {
        if (gLogCategory_APTPackageMusicData <= 30 && (gLogCategory_APTPackageMusicData != -1 || _LogCategory_Initialize()))
        {
          APTPackageMusicDataCreateWithMessageSize_cold_3(&cf);
        }

        v8 = 0;
        *a3 = cf;
      }
    }
  }

  else
  {
    APTPackageMusicDataCreateWithMessageSize_cold_4();
    return 4294894936;
  }

  return v8;
}

uint64_t APTPackageMusicDataGetHeaderSize(_DWORD *a1)
{
  if (a1)
  {
    result = 0;
    *a1 = 8;
  }

  else
  {
    v6 = v1;
    v7 = v2;
    APTPackageMusicDataGetHeaderSize_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t APTPackageMusicDataGetPayloadSize(OpaqueCMBlockBuffer *a1, _DWORD *a2)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (!a2)
  {
    APTPackageMusicDataGetPayloadSize_cold_4(&v8);
    return v8;
  }

  if (!a1)
  {
    APTPackageMusicDataGetPayloadSize_cold_3(&v8);
    return v8;
  }

  DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    v4 = DataPointer;
    APTPackageMusicDataGetPayloadSize_cold_1();
  }

  else if (lengthAtOffsetOut == 8)
  {
    v4 = 0;
    *a2 = bswap32(*dataPointerOut) - 8;
  }

  else
  {
    APTPackageMusicDataGetPayloadSize_cold_2();
    return 4294894936;
  }

  return v4;
}

void musicdatapackage_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTPackageMusicData <= 30 && (gLogCategory_APTPackageMusicData != -1 || _LogCategory_Initialize()))
  {
    musicdatapackage_Finalize_cold_1();
  }

  APTransportParcelFree(*DerivedStorage);
  *DerivedStorage = 0;
}

__CFString *musicdatapackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTPackageMusicData %p>", a1);
  return Mutable;
}

const void *musicdatapackage_CopyMessageData()
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

uint64_t musicdatapackage_SetMessageData(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageData(v3, a2);
}

uint64_t musicdatapackage_GetMessageType()
{
  v0 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelGetMessageType(v0);
}

uint64_t musicdatapackage_SetMessageType(uint64_t a1, int a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageType(v3, a2);
}

CMBlockBufferRef musicdatapackage_CreateBBufRepresentation()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  MessageType = APTransportParcelGetMessageType(*DerivedStorage);
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  v5[0] = bswap32(CMBlockBufferGetDataLength(MessageData) + 8);
  v5[1] = bswap32(MessageType);
  APTransportParcelCreateBBufRepresentation(*DerivedStorage, *MEMORY[0x277CBECE8], v5, &v4);
  return v4;
}

uint64_t __APCarPlayHelperUSBGetClassID_block_invoke()
{
  ClassID = APCarPlayHelperGetClassID();

  return MEMORY[0x282112448](&APCarPlayHelperUSBGetClassID_sClassDesc, ClassID, 0, &APCarPlayHelperUSBGetClassID_sClassID);
}

uint64_t APCarPlayHelperUSBCreate(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  if (APCarPlayHelperUSBGetClassID_sRegisterOnce != -1)
  {
    APCarPlayHelperUSBCreate_cold_1();
  }

  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v19 = v9;
    APCarPlayHelperUSBCreate_cold_2();
    return v19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = dispatch_semaphore_create(0);
  DerivedStorage[1] = v11;
  if (!v11)
  {
    APCarPlayHelperUSBCreate_cold_8();
    return 4294954510;
  }

  v12 = dispatch_queue_create("APCarPlayHelperUSBInternalQueue", 0);
  DerivedStorage[2] = v12;
  if (!v12)
  {
    APCarPlayHelperUSBCreate_cold_7();
    return 4294954510;
  }

  v13 = dispatch_queue_create("APCarPlayHelperUSBEventQueue", 0);
  DerivedStorage[3] = v13;
  if (!v13)
  {
    APCarPlayHelperUSBCreate_cold_6();
    return 4294954510;
  }

  DerivedStorage[8] = a2;
  DerivedStorage[9] = a3;
  if (!a2)
  {
    APCarPlayHelperUSBCreate_cold_5();
    return 4294954516;
  }

  SharedHelper = APConnectivityHelperGetSharedHelper();
  if (!SharedHelper)
  {
    DerivedStorage[5] = 0;
    goto LABEL_19;
  }

  v15 = CFRetain(SharedHelper);
  DerivedStorage[5] = v15;
  if (!v15)
  {
LABEL_19:
    APCarPlayHelperUSBCreate_cold_4();
    return 4294960568;
  }

  v16 = APConnectivityHelperRegisterEventHandler(v15, 0, carPlayHelperUSB_handleConnectivityHelperEvent);
  if (v16)
  {
    v19 = v16;
    APCarPlayHelperUSBCreate_cold_3();
  }

  else
  {
    if (a4)
    {
      Value = CFDictionaryGetValue(a4, @"powerAssertion");
      DerivedStorage[4] = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      v18 = CFDictionaryGetValue(a4, @"eventRecorder");
      DerivedStorage[10] = v18;
      if (v18)
      {
        CFRetain(v18);
      }
    }

    v19 = 0;
    *a5 = 0;
  }

  return v19;
}

void carPlayHelperUSB_handleConnectivityHelperEvent(uint64_t a1, int a2, const void *a3, const void *a4)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v8 = *(DerivedStorage + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke;
  v9[3] = &unk_278BC7D48;
  v10 = a2;
  v9[4] = v11;
  v9[5] = a4;
  v9[6] = a3;
  dispatch_async(v8, v9);
  _Block_object_dispose(v11, 8);
}

void sub_23D310284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void carPlayHelperUSB_dispatchEvent(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 72);
    if (gLogCategory_APBrowserCarUSBHelper <= 20 && (gLogCategory_APBrowserCarUSBHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v10 = *(v8 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carPlayHelperUSB_dispatchEvent_block_invoke;
    block[3] = &__block_descriptor_68_e5_v8__0l;
    block[4] = v7;
    block[5] = a1;
    v12 = a2;
    block[6] = a3;
    block[7] = v9;
    dispatch_async(v10, block);
  }
}

void __carPlayHelperUSB_dispatchEvent_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __carPlayHelperUSB_finalize_block_invoke(uint64_t result)
{
  *(*(result + 32) + 64) = 0;
  *(*(result + 32) + 72) = 0;
  return result;
}

void __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 != 104)
  {
    if (v2 != 4)
    {
      if (gLogCategory_APBrowserCarUSBHelper > 30)
      {
        goto LABEL_57;
      }

      if (gLogCategory_APBrowserCarUSBHelper == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_57;
        }

        v16 = *(a1 + 56);
      }

      LogPrintF();
      goto LABEL_57;
    }

    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!v4)
    {
      __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_4();
      goto LABEL_55;
    }

    v6 = DerivedStorage;
    Value = CFDictionaryGetValue(v4, @"networkInterfaceName");
    v8 = Value;
    v9 = Value == 0;
    if (Value && CFStringHasPrefix(Value, @"anpi"))
    {
      __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_2();
      goto LABEL_55;
    }

    if (CFDictionaryGetInt64())
    {
      if (v8)
      {
        v10 = v6[4] == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        APSPowerAssertionRaiseTemporary();
        v9 = 0;
      }
    }

    else
    {
      v14 = v6[7];
      if (!FigCFEqual())
      {
        goto LABEL_55;
      }

      v8 = 0;
      v9 = 1;
    }

    v15 = v6[7];
    if (FigCFEqual())
    {
LABEL_55:
      *(*(*(a1 + 32) + 8) + 24) = 0;
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_5();
      }

      goto LABEL_57;
    }

    if (gLogCategory_APBrowserCarUSBHelper <= 50 && (gLogCategory_APBrowserCarUSBHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v17 = v6[10];
    if (v9)
    {
      if (v17)
      {
        APSEventRecorderRecordEvent();
      }

      v18 = LogCategoryCopyOSLogHandle();
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = MEMORY[0x277D86220];
      }

      if (os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23D2A9000, v20, OS_SIGNPOST_EVENT, 0x2B8D08DCuLL, "AP_SIGNPOST_CAR_USB_LINKDOWN", "", buf, 2u);
      }

      if (v19)
      {
      }

      v21 = v6[7];
      v6[7] = v8;
      if (!v21)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v17)
      {
        APSEventRecorderRecordEvent();
      }

      v22 = LogCategoryCopyOSLogHandle();
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = MEMORY[0x277D86220];
      }

      if (os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23D2A9000, v24, OS_SIGNPOST_EVENT, 0x2B8D07FCuLL, "AP_SIGNPOST_CAR_USB_LINKUP", "", buf, 2u);
      }

      if (v23)
      {
      }

      v21 = v6[7];
      v6[7] = v8;
      CFRetain(v8);
      if (!v21)
      {
        goto LABEL_53;
      }
    }

    CFRelease(v21);
LABEL_53:
    values = *(CMBaseObjectGetDerivedStorage() + 56);
    *buf = 0x284F61B80;
    v25 = CFGetAllocator(v3);
    v26 = CFDictionaryCreate(v25, buf, &values, values != 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v26)
    {
      v27 = v26;
      carPlayHelperUSB_dispatchEvent(v3, 0, v26);
      CFRelease(v27);
    }

    else
    {
      __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_3();
    }

    goto LABEL_55;
  }

  if (gLogCategory_APBrowserCarUSBHelper <= 30 && (gLogCategory_APBrowserCarUSBHelper != -1 || _LogCategory_Initialize()))
  {
    __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_1();
  }

  v11 = *(a1 + 40);
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = *(v12 + 56);
  if (v13)
  {
    CFRelease(v13);
    *(v12 + 56) = 0;
    CMBaseObjectGetDerivedStorage();
    APSLogErrorAt();
  }

  carPlayHelperUSB_dispatchEvent(v11, 2, 0);
LABEL_57:
  v28 = *(a1 + 40);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 48);
  if (v29)
  {
    CFRelease(v29);
  }
}

uint64_t APTransportKeepAliveControllerStandardCreate(int a1, CFTypeRef cf, CFTypeRef a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 != CFDictionaryGetTypeID())
    {
      v15 = 4294895535;
      APTransportKeepAliveControllerStandardCreate_cold_1();
      goto LABEL_18;
    }
  }

  if (!a3 || (v8 = CFGetTypeID(a3), v8 != FigTransportStreamGetTypeID()))
  {
    v15 = 4294895535;
    APTransportKeepAliveControllerStandardCreate_cold_8();
    goto LABEL_18;
  }

  if (!a4)
  {
    v15 = 4294895535;
    APTransportKeepAliveControllerStandardCreate_cold_7();
    goto LABEL_18;
  }

  APTransportKeepAliveControllerGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v15 = v9;
    APTransportKeepAliveControllerStandardCreate_cold_2();
    goto LABEL_18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportKeepAliveControllerStandard <= 50 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (cf)
  {
    *(DerivedStorage + 32) = CFDictionaryGetInt64() != 0;
  }

  v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 40) = v11;
  if (!v11)
  {
    APTransportKeepAliveControllerStandardCreate_cold_6(label);
    v15 = *label;
    goto LABEL_18;
  }

  *(DerivedStorage + 48) = a3;
  SNPrintF();
  v12 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 16) = v12;
  if (!v12)
  {
    APTransportKeepAliveControllerStandardCreate_cold_5();
LABEL_26:
    v15 = 4294895536;
    goto LABEL_18;
  }

  SNPrintF();
  v13 = dispatch_queue_create(label, 0);
  *DerivedStorage = v13;
  if (!v13)
  {
    APTransportKeepAliveControllerStandardCreate_cold_4();
    goto LABEL_26;
  }

  SNPrintF();
  v14 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v14;
  if (!v14)
  {
    APTransportKeepAliveControllerStandardCreate_cold_3();
    goto LABEL_26;
  }

  v15 = 0;
  *(DerivedStorage + 36) = 2017;
  *a4 = 0;
LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void standardKeepAliveController_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportKeepAliveControllerStandard <= 50 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    v8 = *(DerivedStorage + 48);
    LogPrintF();
  }

  v3 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __standardKeepAliveController_Finalize_block_invoke;
  block[3] = &__block_descriptor_tmp_12;
  block[4] = a1;
  dispatch_sync(v3, block);
  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  *(DerivedStorage + 48) = 0;
  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    dispatch_source_cancel(*(DerivedStorage + 24));
    dispatch_release(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *standardKeepAliveController_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportKeepAliveControllerStandard %p>", a1);
  return Mutable;
}

uint64_t standardKeepAliveController_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"KeepAliveInterval"))
  {
    return 4294954512;
  }

  v8 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 36));
  *a4 = v8;
  if (v8)
  {
    return 0;
  }

  standardKeepAliveController_CopyProperty_cold_1();
  return 4294895536;
}

uint64_t standardKeepAliveController_SetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"KeepAliveInterval"))
  {
    return 4294954512;
  }

  if (*(DerivedStorage + 33))
  {
    v7 = 4294895534;
    standardKeepAliveController_SetProperty_cold_1();
  }

  else if (a3 && (v6 = CFGetTypeID(a3), v6 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a3, kCFNumberSInt32Type, (DerivedStorage + 36));
    if (gLogCategory_APTransportKeepAliveControllerStandard <= 50 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      v9 = *(DerivedStorage + 36);
      LogPrintF();
    }

    return 0;
  }

  else
  {
    standardKeepAliveController_SetProperty_cold_2();
    return 4294895535;
  }

  return v7;
}

uint64_t standardKeepAliveController_Resume(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportKeepAliveControllerStandard <= 30 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    standardKeepAliveController_Resume_cold_1();
  }

  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 16), a1, standardKeepAliveController_controllerResumedCallback);
  return 0;
}

uint64_t standardKeepAliveController_Suspend(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportKeepAliveControllerStandard <= 30 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    standardKeepAliveController_Suspend_cold_1();
  }

  dispatch_sync_f(*(DerivedStorage + 16), a1, standardKeepAliveController_controllerSuspendedCallback);
  return 0;
}

void standardKeepAliveController_controllerResumedCallback(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 33))
  {
    goto LABEL_8;
  }

  v3 = DerivedStorage;
  v4 = MEMORY[0x277CC0898];
  v5 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 80) = *MEMORY[0x277CC0898];
  v6 = *(v4 + 16);
  *(DerivedStorage + 96) = v6;
  *(DerivedStorage + 128) = v5;
  *(DerivedStorage + 144) = v6;
  *(DerivedStorage + 152) = 0;
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(DerivedStorage + 16));
  *(v3 + 24) = v7;
  if (v7)
  {
    dispatch_set_context(v7, a1);
    dispatch_source_set_event_handler_f(*(v3 + 24), standardKeepAliveController_timerFiredCallback);
    v8 = 1000000 * *(v3 + 36);
    v9 = *(v3 + 24);
    v10 = dispatch_time(0, v8);
    dispatch_source_set_timer(v9, v10, v8, 0x5F5E100uLL);
    dispatch_resume(*(v3 + 24));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, HostTimeClock);
    CMTimeMake(&rhs, *(v3 + 36), 1000);
    CMTimeAdd(&v15, &lhs, &rhs);
    *(v3 + 56) = v15;
    if (gLogCategory_APTransportKeepAliveControllerStandard <= 50 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      v12 = *(v3 + 36);
      LogPrintF();
    }

    *(v3 + 33) = 1;
LABEL_8:
    if (!a1)
    {
      return;
    }

    goto LABEL_9;
  }

  standardKeepAliveController_controllerResumedCallback_cold_1();
  if (!a1)
  {
    return;
  }

LABEL_9:
  CFRelease(a1);
}

void standardKeepAliveController_sendConnectionStallStateChangedCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *&v12.value = *(a1 + 12);
  v12.epoch = *(a1 + 28);
  if (*(CMBaseObjectGetDerivedStorage() + 33))
  {
    if (v3)
    {
      v4 = &kAPTransportKeepAliveControllerNotification_Stalled;
    }

    else
    {
      v4 = &kAPTransportKeepAliveControllerNotification_NotStalled;
    }

    v5 = CFGetAllocator(v2);
    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = *MEMORY[0x277CBECE8];
      time = v12;
      v9 = CMTimeCopyAsDictionary(&time, v8);
      if (v9)
      {
        v10 = v9;
        v11 = *v4;
        CFDictionarySetValue(v7, @"StallDuration", v9);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v7);
        CFRelease(v10);
      }

      else
      {
        standardKeepAliveController_sendConnectionStallStateChangedCallback_cold_1(v7);
      }
    }

    else
    {
      standardKeepAliveController_sendConnectionStallStateChangedCallback_cold_2();
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void standardKeepAliveController_sendConnectionFailedCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(CMBaseObjectGetDerivedStorage() + 33))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetInt64();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(v5);
    }

    else
    {
      standardKeepAliveController_sendConnectionFailedCallback_cold_1();
    }
  }

  v6 = *a1;
  if (*a1)
  {

    CFRelease(v6);
  }
}

void standardKeepAliveController_controllerSuspendedCallback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 33))
  {
    standardKeepAliveController_controllerSuspendedCallback_cold_1(a1, DerivedStorage, (DerivedStorage + 33));
  }
}

uint64_t APTransportPackageRTCPCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  v2 = APTransportPackageRTCPCreateWithBBuf(a1, 0, a2);
  if (v2)
  {
    APTransportPackageRTCPCreate_cold_1();
  }

  return v2;
}

uint64_t APTransportPackageRTCPCreateWithBBuf(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  blockBufferOut = 0;
  cf = 0;
  APTransportPackageGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v14 = v6;
    APTransportPackageRTCPCreateWithBBuf_cold_1();
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = APTransportParcelMake(4uLL, 0, DerivedStorage);
  if (v8)
  {
    v14 = v8;
    APTransportPackageRTCPCreateWithBBuf_cold_2();
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    v14 = DataPointer;
    APTransportPackageRTCPCreateWithBBuf_cold_3();
    goto LABEL_19;
  }

  if (lengthAtOffsetOut <= 3)
  {
    APTransportPackageRTCPCreateWithBBuf_cold_7();
    goto LABEL_18;
  }

  v10 = dataPointerOut;
  if ((*dataPointerOut & 0xC0) != 0x80)
  {
    APTransportPackageRTCPCreateWithBBuf_cold_4();
    v14 = 4294960581;
    goto LABEL_19;
  }

  if (dataPointerOut[1] != 213)
  {
    if (gLogCategory_APTransportPackageRTCP <= 90)
    {
      if (gLogCategory_APTransportPackageRTCP == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        v16 = v10[1];
      }

      LogPrintF();
    }

LABEL_18:
    v14 = 4294960591;
    goto LABEL_19;
  }

  APTransportParcelSetMessageType(*DerivedStorage, 1634168383);
  DataLength = CMBlockBufferGetDataLength(a2);
  v12 = CMBlockBufferCreateWithBufferReference(a1, a2, 4uLL, DataLength - 4, 0, &blockBufferOut);
  if (v12)
  {
    v14 = v12;
    APTransportPackageRTCPCreateWithBBuf_cold_5();
    goto LABEL_19;
  }

  v13 = APTransportParcelSetMessageData(*DerivedStorage, blockBufferOut);
  if (v13)
  {
    v14 = v13;
    APTransportPackageRTCPCreateWithBBuf_cold_6();
    goto LABEL_19;
  }

LABEL_10:
  if (gLogCategory_APTransportPackageRTCP <= 30 && (gLogCategory_APTransportPackageRTCP != -1 || _LogCategory_Initialize()))
  {
    APTransportPackageRTCPCreateWithBBuf_cold_8(&cf);
  }

  v14 = 0;
  *a3 = cf;
  cf = 0;
LABEL_19:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t APTransportPackageRTCPCreateWithMessageSize(uint64_t a1, size_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    APTransportPackageGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v8 = v5;
      APTransportPackageRTCPCreateWithMessageSize_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = APTransportParcelMake(4uLL, a2, DerivedStorage);
      if (v7)
      {
        v8 = v7;
        APTransportPackageRTCPCreateWithMessageSize_cold_2();
      }

      else
      {
        if (gLogCategory_APTransportPackageRTCP <= 30 && (gLogCategory_APTransportPackageRTCP != -1 || _LogCategory_Initialize()))
        {
          APTransportPackageRTCPCreateWithMessageSize_cold_3(&cf);
        }

        v8 = 0;
        *a3 = cf;
      }
    }
  }

  else
  {
    APTransportPackageRTCPCreateWithMessageSize_cold_4();
    return 4294960591;
  }

  return v8;
}

void rtcppackage_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageRTCP <= 30 && (gLogCategory_APTransportPackageRTCP != -1 || _LogCategory_Initialize()))
  {
    rtcppackage_Finalize_cold_1();
  }

  APTransportParcelFree(*DerivedStorage);
  *DerivedStorage = 0;
}

__CFString *rtcppackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportPackageRTCP %p>", a1);
  return Mutable;
}

const void *rtcppackage_CopyMessageData()
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

uint64_t rtcppackage_SetMessageData(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageData(v3, a2);
}

uint64_t rtcppackage_GetMessageType()
{
  v0 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelGetMessageType(v0);
}

uint64_t rtcppackage_SetMessageType(uint64_t a1, int a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageType(v3, a2);
}

CMBlockBufferRef rtcppackage_CreateBBufRepresentation()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v14 = 0;
  MessageType = APTransportParcelGetMessageType(*DerivedStorage);
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  DataLength = CMBlockBufferGetDataLength(MessageData);
  if (MessageType > 1951421519)
  {
    switch(MessageType)
    {
      case 1951421520:
        if (DataLength != 24)
        {
          rtcppackage_CreateBBufRepresentation_cold_6();
          return 0;
        }

        v5 = -112;
        break;
      case 1952542318:
        if (DataLength == 16)
        {
          v4 = 0x80;
          goto LABEL_26;
        }

        rtcppackage_CreateBBufRepresentation_cold_7();
        return 0;
      case 1953526896:
        if (DataLength != 24)
        {
          rtcppackage_CreateBBufRepresentation_cold_5();
          return 0;
        }

        v5 = 0x80;
        break;
      default:
LABEL_17:
        if (gLogCategory_APTransportPackageRTCP <= 90 && (gLogCategory_APTransportPackageRTCP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return 0;
    }

    LOBYTE(v15) = v5;
    v6 = 1536;
    v7 = -41;
LABEL_27:
    BYTE1(v15) = v7;
    HIWORD(v15) = v6;
    APTransportParcelCreateBBufRepresentation(*DerivedStorage, *MEMORY[0x277CBECE8], &v15, &v14);
    return v14;
  }

  if (MessageType == 560031598)
  {
    if (DataLength != 4)
    {
      rtcppackage_CreateBBufRepresentation_cold_4();
      return 0;
    }

    LOBYTE(v15) = 0x80;
    v6 = 256;
    v7 = -42;
    goto LABEL_27;
  }

  if (MessageType != 1634168352)
  {
    if (MessageType == 1950436942)
    {
      if (DataLength == 16)
      {
        v4 = -112;
LABEL_26:
        LOBYTE(v15) = v4;
        v6 = 1024;
        v7 = -44;
        goto LABEL_27;
      }

      rtcppackage_CreateBBufRepresentation_cold_8();
      return 0;
    }

    goto LABEL_17;
  }

  LOWORD(v15) = -10624;
  HIWORD(v15) = bswap32((DataLength + 2) >> 2) >> 16;
  dataPointerOut = 0;
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  if (FigCreateBlockBufferCopyingMemoryBlock())
  {
    rtcppackage_CreateBBufRepresentation_cold_1();
  }

  else
  {
    customBlockSource.version = 0;
    customBlockSource.AllocateBlock = 0;
    customBlockSource.FreeBlock = rtcppackage_bbufFree;
    customBlockSource.refCon = CFRetain(MessageData);
    if (CMBlockBufferGetDataPointer(MessageData, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut))
    {
      rtcppackage_CreateBBufRepresentation_cold_2();
    }

    else
    {
      dataPointerOut -= 2;
      totalLengthOut += 2;
      if (!CMBlockBufferAppendMemoryBlock(v14, dataPointerOut, totalLengthOut, *MEMORY[0x277CBED00], &customBlockSource, 0, totalLengthOut, 0))
      {
        return v14;
      }

      rtcppackage_CreateBBufRepresentation_cold_3();
    }
  }

  result = v14;
  if (v14)
  {
    CFRelease(v14);
    return 0;
  }

  return result;
}

uint64_t APTransportTrafficRegistrarGetTypeID()
{
  if (_MergedGlobals_16 != -1)
  {
    APTransportTrafficRegistrarGetTypeID_cold_1();
  }

  return qword_281309C30;
}

uint64_t trafficRegistrar_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTransportTrafficRegistrarCreate(uint64_t a1, void *a2)
{
  if (_MergedGlobals_16 != -1)
  {
    APTransportTrafficRegistrarGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APTransportTrafficRegistrarCreate_cold_6();
    return 4294960568;
  }

  v4 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v5 = dispatch_queue_create("APTransportTrafficRegistrar.queue", 0);
  v4[2] = v5;
  if (!v5)
  {
    APTransportTrafficRegistrarCreate_cold_5();
LABEL_17:
    v10 = 4294960568;
    goto LABEL_18;
  }

  v6 = WiFiManagerCreate();
  if (v6)
  {
    v10 = v6;
    APTransportTrafficRegistrarCreate_cold_2();
LABEL_18:
    CFRelease(v4);
    return v10;
  }

  v7 = v4[3];
  v8 = *MEMORY[0x277D029B8];
  WiFiManagerSetProperty();
  v9 = objc_opt_new();
  v4[4] = v9;
  if (!v9)
  {
    APTransportTrafficRegistrarCreate_cold_4();
    goto LABEL_17;
  }

  if (gLogCategory_APTransportTrafficRegistrar <= 50 && (gLogCategory_APTransportTrafficRegistrar != -1 || _LogCategory_Initialize()))
  {
    APTransportTrafficRegistrarCreate_cold_3();
  }

  v10 = 0;
  *a2 = v4;
  return v10;
}

uint64_t APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v13 = 0;
  if (bswap64(*a2 | (*(a2 + 2) << 32)))
  {
    v7 = a1[4];
    v8 = *MEMORY[0x277D7BA38];
    v9 = APSWiFiTrafficRegistrationCreate();
    if (v9)
    {
      APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_cold_1();
    }

    else
    {
      CFRetain(a1);
      block[5] = MEMORY[0x277D85DD0];
      block[6] = 3221225472;
      block[7] = __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke;
      block[8] = &__block_descriptor_48_e5_v8__0l;
      block[9] = a1;
      block[10] = v13;
      APSWiFiTrafficRegistrationSetRemovalHandler();
      CFRetain(a1);
      v10 = a1[2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_3;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(v10, block);
      *a5 = CFRetain(v13);
    }
  }

  else
  {
    APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_cold_2();
    v9 = 4294960591;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v9;
}

void __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke(uint64_t a1)
{
  if (gLogCategory_APTransportTrafficRegistrar <= 50 && (gLogCategory_APTransportTrafficRegistrar != -1 || _LogCategory_Initialize()))
  {
    __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_cold_1(a1);
  }

  CFRetain(*(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v2;
  dispatch_async(v3, block);
  CFRelease(*(a1 + 32));
}

void __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  --v1[10];
  CFRelease(v1);
}

void __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++v1[10];
  CFRelease(v1);
}

uint64_t APTransportTrafficRegistrarInfraTransactionCreate(void *a1, CFTypeRef *a2)
{
  v8 = 0;
  v4 = APSWiFiTransactionCreate();
  if (v4)
  {
    APTransportTrafficRegistrarInfraTransactionCreate_cold_1();
  }

  else
  {
    CFRetain(a1);
    v7[5] = MEMORY[0x277D85DD0];
    v7[6] = 3221225472;
    v7[7] = __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke;
    v7[8] = &__block_descriptor_48_e5_v8__0l;
    v7[9] = a1;
    v7[10] = v8;
    APSWiFiTransactionSetReleaseHandler();
    CFRetain(a1);
    v5 = a1[2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_3;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = a1;
    dispatch_async(v5, v7);
    *a2 = CFRetain(v8);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v4;
}

void __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke(uint64_t a1)
{
  if (gLogCategory_APTransportTrafficRegistrar <= 50 && (gLogCategory_APTransportTrafficRegistrar != -1 || _LogCategory_Initialize()))
  {
    __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_cold_1(a1);
  }

  CFRetain(*(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v2;
  dispatch_async(v3, block);
  CFRelease(*(a1 + 32));
}

void __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  --v1[11];
  CFRelease(v1);
}

void __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++v1[11];
  CFRelease(v1);
}

void APTransportTrafficRegistrarGetRegistration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APTransportTrafficRegistrarGetRegistration_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_sync(v3, block);
}

void *__APTransportTrafficRegistrarGetRegistration_block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    *v1 = *(result[5] + 40) != 0;
  }

  v2 = result[6];
  if (v2)
  {
    *v2 = *(result[5] + 44) != 0;
  }

  return result;
}

uint64_t APTransportTrafficRegistrarGetAWDLChannelSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2 && a3 && a4)
  {
    v4 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke;
    block[3] = &unk_278BC9628;
    block[4] = &v8;
    block[5] = a1;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v4, block);
    v5 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v5 = APSSignalErrorAt();
    *(v9 + 6) = v5;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  if (APSIsVirtualMachine())
  {
    result = __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke_cold_1(v2, &v15);
    v14 = v15;
    goto LABEL_15;
  }

  v6 = [MEMORY[0x277D7BB18] currentState];
  if (!v6)
  {
    result = __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke_cold_3();
LABEL_19:
    v14 = -6762;
    goto LABEL_15;
  }

  v7 = [v6 channelSequence];
  if (!v7)
  {
    result = __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke_cold_2();
    goto LABEL_19;
  }

  v8 = v7;
  if ([v7 count] >= 0x11)
  {
    LOBYTE(result) = 16;
    *v4 = 16;
    goto LABEL_7;
  }

  result = [v8 count];
  *v4 = result;
  if (result)
  {
LABEL_7:
    v10 = 0;
    v11 = result;
    do
    {
      v12 = [objc_msgSend(v8 objectAtIndexedSubscript:{v10), "bandwidth"}];
      if (v12 > 4)
      {
        v13 = 0;
      }

      else
      {
        v13 = dword_23D3838FC[v12];
      }

      if ([objc_msgSend(v8 objectAtIndexedSubscript:{v10), "extensionChannelAbove"}])
      {
        v13 |= 0x200u;
      }

      result = [objc_msgSend(v8 objectAtIndexedSubscript:{v10), "channelNumber"}];
      *(v3 + v10) = result;
      *(v5 + 4 * v10++) = v13;
    }

    while (v11 != v10);
  }

  v14 = 0;
LABEL_15:
  *(*(a1[4] + 8) + 24) = v14;
  return result;
}

uint64_t APTransportTrafficRegistrarGetRSSI(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a2)
  {
    v2 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APTransportTrafficRegistrarGetRSSI_block_invoke;
    block[3] = &unk_278BC80B8;
    block[4] = &v6;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v2, block);
    v3 = *(v7 + 6);
  }

  else
  {
    APSLogErrorAt();
    v3 = APSSignalErrorAt();
    *(v7 + 6) = v3;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APTransportTrafficRegistrarGetRSSI_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[5] + 24);
  v4 = *MEMORY[0x277D029C0];
  result = WiFiManagerGetInt64();
  *v2 = result;
  *(*(a1[4] + 8) + 24) = 0;
  return result;
}

uint64_t APTransportTrafficRegistrarGetWifiChannel(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v3 = *MEMORY[0x277D029A8];
    *a2 = WiFiManagerGetInt64();
    return 0;
  }

  else
  {
    APTransportTrafficRegistrarGetWifiChannel_cold_1(&v5);
    return v5;
  }
}

void trafficRegistrar_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  *(a1 + 32) = 0;
  if (gLogCategory_APTransportTrafficRegistrar <= 50 && (gLogCategory_APTransportTrafficRegistrar != -1 || _LogCategory_Initialize()))
  {
    trafficRegistrar_Finalize_cold_1();
  }
}

uint64_t APCarPlayHelperGetClassID()
{
  if (APCarPlayHelperGetClassID_sRegisterOnce != -1)
  {
    APCarPlayHelperGetClassID_cold_1();
  }

  return APCarPlayHelperGetClassID_sClassID;
}

uint64_t __APCarPlayHelperGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APCarPlayHelperGetClassID_sClassDesc, ClassID, 1, &APCarPlayHelperGetClassID_sClassID);
}

uint64_t APCarPlayControlServerGetTypeID()
{
  if (APCarPlayControlServerGetTypeID_carPlayControlServerInitOnce != -1)
  {
    APCarPlayControlServerGetTypeID_cold_1();
  }

  return APCarPlayControlServerGetTypeID_carPlayControlServerTypeID;
}

uint64_t __APCarPlayControlServerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APCarPlayControlServerGetTypeID_carPlayControlServerTypeID = result;
  return result;
}

void _APCarPlayControlServerFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___APCarPlayControlServerFinalize_block_invoke;
  block[3] = &__block_descriptor_tmp_25_0;
  block[4] = a1;
  dispatch_sync(v2, block);
  dispatch_sync(*(a1 + 24), &__block_literal_global_28);
  v3 = *(a1 + 104);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 104) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 24) = 0;
  }

  TXTRecordDeallocate((a1 + 48));
  v6 = *(a1 + 40);
  if (v6)
  {
    free(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }
}

uint64_t APCarPlayControlServerInvalidate(uint64_t a1)
{
  v1 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APCarPlayControlServerInvalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = a1;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t _APCarPlayControlServerInvalidate(uint64_t a1)
{
  *(a1 + 16) = 1;
  *(a1 + 88) = 0;
  v1 = *(a1 + 72);
  v2 = CFDictionaryCopyKeys();
  CFArrayGetCount(v2);
  return CFArrayApplyBlock();
}

uint64_t APCarPlayControlServerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, const __CFDictionary *a6, TXTRecordRef **a7)
{
  if (!a2)
  {
    APCarPlayControlServerCreate_cold_13();
LABEL_25:
    v12 = 0;
    v29 = 4294960591;
    goto LABEL_19;
  }

  if (!a3)
  {
    APCarPlayControlServerCreate_cold_12();
    goto LABEL_25;
  }

  if (!a4)
  {
    APCarPlayControlServerCreate_cold_11();
    goto LABEL_25;
  }

  if (APCarPlayControlServerGetTypeID_carPlayControlServerInitOnce != -1)
  {
    APCarPlayControlServerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (!Instance)
  {
    APCarPlayControlServerCreate_cold_10();
LABEL_35:
    v29 = 4294960568;
    goto LABEL_19;
  }

  Instance[5] = 0u;
  Instance[6] = 0u;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  v13 = dispatch_queue_create("com.apple.carplaycontrolserver", 0);
  *(&v12[1].ForceNaturalAlignment + 1) = v13;
  if (!v13)
  {
    APCarPlayControlServerCreate_cold_9();
    goto LABEL_35;
  }

  v14 = HTTPServerCreate();
  if (v14)
  {
    v29 = v14;
    APCarPlayControlServerCreate_cold_2();
    goto LABEL_19;
  }

  v16 = *(&v12[1].ForceNaturalAlignment + 1);
  ForceNaturalAlignment = v12[2].ForceNaturalAlignment;
  HTTPServerSetDispatchQueue();
  v17 = v12[2].ForceNaturalAlignment;
  HTTPServerSetLogging();
  v18 = CFStringCopyUTF8CString();
  if (v18)
  {
    v29 = v18;
    APCarPlayControlServerCreate_cold_3();
    goto LABEL_19;
  }

  v19 = CFStringCopyUTF8CString();
  if (v19)
  {
    v29 = v19;
    APCarPlayControlServerCreate_cold_4();
    goto LABEL_19;
  }

  v20 = strlen(0);
  v21 = v20 + strlen(0) + 13;
  v22 = malloc_type_malloc(v21, 0xC2782F94uLL);
  *(&v12[2].ForceNaturalAlignment + 1) = v22;
  if (!v22)
  {
    APCarPlayControlServerCreate_cold_8();
    goto LABEL_35;
  }

  TXTRecordCreate(v12 + 3, v21, v22);
  v23 = strlen(0);
  v24 = TXTRecordSetValue(v12 + 3, "id", v23, 0);
  if (v24)
  {
    v29 = v24;
    APCarPlayControlServerCreate_cold_5();
    goto LABEL_19;
  }

  v25 = strlen(0);
  v26 = TXTRecordSetValue(v12 + 3, "srcvers", v25, 0);
  if (v26)
  {
    v29 = v26;
    APCarPlayControlServerCreate_cold_6();
    goto LABEL_19;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(&v12[4].ForceNaturalAlignment + 1) = Mutable;
  if (!Mutable)
  {
    APCarPlayControlServerCreate_cold_7();
    goto LABEL_35;
  }

  *(&v12[5].ForceNaturalAlignment + 1) = a4;
  v12[6].ForceNaturalAlignment = a5;
  if (a6)
  {
    Value = CFDictionaryGetValue(a6, @"EventRecorder");
    *(&v12[6].ForceNaturalAlignment + 1) = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  v29 = 0;
  *a7 = v12;
  v12 = 0;
LABEL_19:
  free(0);
  free(0);
  if (v12)
  {
    CFRelease(v12);
  }

  return v29;
}

uint64_t _APCarPlayControlServerControl(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (CFEqual(cf1, @"startServer"))
  {
    v9 = *(a1 + 16);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = ___APCarPlayControlServerControl_block_invoke;
    v13[3] = &__block_descriptor_tmp_32_0;
    v13[4] = a6;
    v10 = v13;
  }

  else
  {
    if (!CFEqual(cf1, @"stopServer"))
    {
      return 4294960582;
    }

    v9 = *(a1 + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___APCarPlayControlServerControl_block_invoke_2_33;
    v12[3] = &__block_descriptor_tmp_37_0;
    v12[4] = a6;
    v10 = v12;
  }

  dispatch_async(v9, v10);
  return 0;
}

uint64_t APCarPlayControlServerAddInterface(uint64_t a1, CFStringRef theString)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  cf = 0;
  v12 = 0;
  if (!CFStringGetCString(theString, buffer, 17, 0x600u))
  {
    APCarPlayControlServerAddInterface_cold_2();
    v8 = 4294960591;
LABEL_9:
    APSLogErrorAt();
    goto LABEL_6;
  }

  SocketGetInterfaceInfo();
  v5 = BonjourAdvertiserCreate();
  if (v5)
  {
    v8 = v5;
    APCarPlayControlServerAddInterface_cold_1();
    goto LABEL_9;
  }

  BonjourAdvertiserSetDispatchQueue();
  BonjourAdvertiserSetInterfaceName();
  BonjourAdvertiserSetFlags();
  BonjourAdvertiserSetServiceType();
  BonjourAdvertiserSetDomain();
  TXTRecordGetBytesPtr((a1 + 48));
  TXTRecordGetLength((a1 + 48));
  BonjourAdvertiserSetTXTRecord();
  v6 = cf;
  CFRetain(cf);
  CFRetain(theString);
  v7 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APCarPlayControlServerAddInterface_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  block[4] = a1;
  block[5] = v6;
  block[6] = theString;
  dispatch_async(v7, block);
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = 0;
LABEL_6:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void __APCarPlayControlServerAddInterface_block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v4 = *(v2 + 64);
    *(v2 + 64) = v4 + 1;
    v5 = MEMORY[0x277D86220];
    if (!v4)
    {
      v6 = *(*(v2 + 32) + 16);
      CFObjectSetProperty();
      if (gLogCategory_CarPlayControlServer <= 50 && (gLogCategory_CarPlayControlServer != -1 || _LogCategory_Initialize()))
      {
        __APCarPlayControlServerAddInterface_block_invoke_cold_1();
      }

      if (*(*v3 + 104))
      {
        APSEventRecorderRecordEvent();
      }

      v7 = LogCategoryCopyOSLogHandle();
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v5;
      }

      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23D2A9000, v9, OS_SIGNPOST_EVENT, 0x2B8D07D8uLL, "AP_SIGNPOST_CAR_CONTROLSERVER_STARTEDSERVER", "", buf, 2u);
      }

      if (v8)
      {
        os_release(v8);
      }
    }

    if (*(*v3 + 80))
    {
      v10 = *(a1 + 40);
      v11 = *(*(*v3 + 32) + 48);
      BonjourAdvertiserSetPort();
      v12 = *(a1 + 40);
      BonjourAdvertiserStart();
      if (*(*(a1 + 32) + 104))
      {
        APSEventRecorderRecordEvent();
      }

      v13 = LogCategoryCopyOSLogHandle();
      v14 = v13;
      if (v13)
      {
        v5 = v13;
      }

      if (os_signpost_enabled(v5))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_23D2A9000, v5, OS_SIGNPOST_EVENT, 0x2B8D07DCuLL, "AP_SIGNPOST_CAR_CONTROLSERVER_STARTEDADVERTISE", "", v15, 2u);
      }

      if (v14)
      {
        os_release(v14);
      }

      if (gLogCategory_CarPlayControlServer <= 40 && (gLogCategory_CarPlayControlServer != -1 || _LogCategory_Initialize()))
      {
        __APCarPlayControlServerAddInterface_block_invoke_cold_2(v3, a1);
      }
    }

    CFDictionarySetValue(*(*(a1 + 32) + 72), *(a1 + 48), *(a1 + 40));
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

uint64_t APCarPlayControlServerRemoveInterface(uint64_t a1, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(a1 + 24);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __APCarPlayControlServerRemoveInterface_block_invoke;
  v6[3] = &__block_descriptor_tmp_21_2;
  v6[4] = a1;
  v6[5] = cf;
  dispatch_async(v4, v6);
  return 0;
}

void __APCarPlayControlServerRemoveInterface_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16) && CFDictionaryGetValue(*(v2 + 72), *(a1 + 40)))
  {
    if (*(*(a1 + 32) + 80))
    {
      BonjourAdvertiserStop();
      if (gLogCategory_CarPlayControlServer <= 40 && (gLogCategory_CarPlayControlServer != -1 || _LogCategory_Initialize()))
      {
        __APCarPlayControlServerRemoveInterface_block_invoke_cold_1((a1 + 40));
      }
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 64) - 1;
    *(v3 + 64) = v4;
    if (!v4)
    {
      v5 = *(*(v3 + 32) + 16);
      CFObjectSetProperty();
      if (gLogCategory_CarPlayControlServer <= 50 && (gLogCategory_CarPlayControlServer != -1 || _LogCategory_Initialize()))
      {
        __APCarPlayControlServerRemoveInterface_block_invoke_cold_2();
      }
    }

    CFDictionaryRemoveValue(*(*(a1 + 32) + 72), *(a1 + 40));
  }

  v6 = *(a1 + 40);

  CFRelease(v6);
}

uint64_t APCarPlayControlServerInjectCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APCarPlayControlServerInjectCommand_block_invoke;
  block[3] = &__block_descriptor_tmp_22_0;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v3, block);
  return 0;
}

uint64_t __APCarPlayControlServerInjectCommand_block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = strlen(v3);
  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return v6(v1, v2, v3, v4, v5);
}

uint64_t udpconnection_Invalidate_0(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 8), a1, udpconnection_invalidate);
  return 0;
}

__CFString *udpconnection_CopyDebugDescription_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportConnectionUDP %p '%@'>", a1, *(DerivedStorage + 16));
  return Mutable;
}

void udpconnection_clearCallbackState_0()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[4] = 0;
  DerivedStorage[5] = 0;
  v1 = DerivedStorage[6];
  if (v1)
  {
    dispatch_release(v1);
    DerivedStorage[6] = 0;
  }
}

uint64_t udpconnection_DumpHierarchy_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 56) == 5)
  {
    v11 = DerivedStorage;
    v12 = (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (UDP) %''@ Remote:%##a%?s%?lu Parent:[%{ptr}]\n", a1, a4, DerivedStorage + 192, *(DerivedStorage + 224) != 0, " IDX:", *(DerivedStorage + 224) != 0, *(DerivedStorage + 224), a2);
    if (v12)
    {
      v14 = v12;
      udpconnection_DumpHierarchy_cold_2_0();
    }

    else
    {
      v13 = (*(a5 + 16))(a5, a3 + 1, "Listener (IPv4) Local:%##a Parent:[%{ptr}]\n", v11 + 136, a1);
      if (v13)
      {
        v14 = v13;
        udpconnection_DumpHierarchy_cold_3_0();
      }

      else
      {
        v14 = (*(a5 + 16))(a5, a3 + 1, "Listener (IPv6) Local:%##a Parent:[%{ptr}]\n", v11 + 164, a1);
        if (v14)
        {
          udpconnection_DumpHierarchy_cold_4();
        }
      }
    }
  }

  else
  {
    v14 = (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (UDP) %''@ (Not Connected) Parent:[%{ptr}]\n", a1, a4, a2);
    if (v14)
    {
      udpconnection_DumpHierarchy_cold_1_0();
    }
  }

  return v14;
}

void udpconnection_sourceCanceledCallback(CFTypeRef *a1)
{
  v2 = *(a1 + 2);
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) && *__error())
    {
      __error();
    }

    *(a1 + 2) = -1;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t udpconnection_acquirePackageInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    udpconnection_acquirePackageInternal_cold_1();
    return 4294954511;
  }

  else
  {
    v4 = *(DerivedStorage + 72);
    v5 = CFGetAllocator(*a1);
    v6 = v4(v5, *(a1 + 8));
    if (v6)
    {
      v7 = v6;
      udpconnection_acquirePackageInternal_cold_2();
    }

    else
    {
      if (gLogCategory_APTransportConnectionUDP <= 30 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
      {
        udpconnection_acquirePackageInternal_cold_3(a1, (a1 + 8));
      }

      return 0;
    }
  }

  return v7;
}

uint64_t apapPackage_create(const __CFAllocator *a1, int a2, OpaqueCMBlockBuffer *a3, CFTypeRef *a4)
{
  memset(dataLength, 0, sizeof(dataLength));
  if (!a4)
  {
    v15 = 4294894936;
    apapPackage_create_cold_7();
    goto LABEL_19;
  }

  APTransportPackageGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v15 = v8;
    apapPackage_create_cold_1();
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  if (a2)
  {
    v10 = 1634754914;
  }

  else
  {
    v10 = 1634754928;
  }

  *(DerivedStorage + 4) = v10;
  if (a3)
  {
    v11 = DerivedStorage;
    if (a2)
    {
      v12 = APTransportPackageBufferedAPAPGetPayloadSize(a3, dataLength);
      if (v12)
      {
        v15 = v12;
        apapPackage_create_cold_2();
        goto LABEL_19;
      }

      v13 = CMBlockBufferGetDataLength(a3);
      if (v13 != dataLength[0] + 4)
      {
        v15 = 4294894936;
        apapPackage_create_cold_3();
        goto LABEL_19;
      }

      if (dataLength[0])
      {
        v14 = CMBlockBufferCreateWithBufferReference(a1, a3, 4uLL, dataLength[0], 0, (v11 + 8));
        if (v14)
        {
          v15 = v14;
          apapPackage_create_cold_4();
          goto LABEL_19;
        }
      }

      else
      {
        Empty = CMBlockBufferCreateEmpty(a1, 0, 0, (v11 + 8));
        if (Empty)
        {
          v15 = Empty;
          apapPackage_create_cold_5();
          goto LABEL_19;
        }
      }
    }

    else
    {
      *(DerivedStorage + 8) = CFRetain(a3);
    }
  }

  if (gLogCategory_APTransportPackageAPAP <= 30 && (gLogCategory_APTransportPackageAPAP != -1 || _LogCategory_Initialize()))
  {
    apapPackage_create_cold_6(&dataLength[1]);
  }

  v15 = 0;
  *a4 = CFRetain(*&dataLength[1]);
LABEL_19:
  if (*&dataLength[1])
  {
    CFRelease(*&dataLength[1]);
  }

  return v15;
}

uint64_t APTransportPackageBufferedAPAPGetHeaderSize(_DWORD *a1)
{
  if (a1)
  {
    result = 0;
    *a1 = 4;
  }

  else
  {
    APTransportPackageBufferedAPAPGetHeaderSize_cold_1();
    return 4294894936;
  }

  return result;
}

uint64_t APTransportPackageBufferedAPAPGetPayloadSize(OpaqueCMBlockBuffer *a1, _DWORD *a2)
{
  destination = 0;
  if (a1)
  {
    if (a2)
    {
      if (CMBlockBufferGetDataLength(a1) <= 3)
      {
        v6 = 4294894936;
        APTransportPackageBufferedAPAPGetPayloadSize_cold_3();
      }

      else
      {
        v4 = CMBlockBufferCopyDataBytes(a1, 0, 4uLL, &destination);
        if (v4)
        {
          v6 = v4;
          APTransportPackageBufferedAPAPGetPayloadSize_cold_1();
        }

        else
        {
          v5 = bswap32(destination);
          if (v5 <= 3)
          {
            v6 = 4294894936;
            APTransportPackageBufferedAPAPGetPayloadSize_cold_2();
          }

          else
          {
            v6 = 0;
            *a2 = v5 - 4;
          }
        }
      }
    }

    else
    {
      v6 = 4294894936;
      APTransportPackageBufferedAPAPGetPayloadSize_cold_4();
    }
  }

  else
  {
    v6 = 4294894936;
    APTransportPackageBufferedAPAPGetPayloadSize_cold_5();
  }

  return v6;
}

uint64_t APTransportPackageBufferedAPAPGetMaxPayloadSize(void *a1)
{
  if (a1)
  {
    result = 0;
    *a1 = 4294967291;
  }

  else
  {
    APTransportPackageBufferedAPAPGetMaxPayloadSize_cold_1();
    return 4294894936;
  }

  return result;
}

void apapPackage_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageAPAP <= 30 && (gLogCategory_APTransportPackageAPAP != -1 || _LogCategory_Initialize()))
  {
    apapPackage_Finalize_cold_1();
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

CFMutableStringRef apapPackage_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v6 = *MEMORY[0x277CC0898];
  v7 = *(MEMORY[0x277CC0898] + 16);
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CMBlockBufferGetDataLength(v2);
    if (apapPackage_isMessageTypeSupported())
    {
      v3 = *(DerivedStorage + 8);
      APSAPAPBBufDecodeHeader();
    }
  }

  v5 = *(DerivedStorage + 4);
  CFStringAppendF();
  return Mutable;
}

uint64_t apapPackage_isMessageTypeSupported()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[1];
  if (v1 == 1634754914 || v1 == 1634754917)
  {
    return *DerivedStorage;
  }

  if (v1 == 1634754928)
  {
    return *DerivedStorage == 0;
  }

  return 0;
}

CFTypeRef apapPackage_CopyMessageData()
{
  result = *(CMBaseObjectGetDerivedStorage() + 8);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void apapPackage_SetMessageData(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t apapPackage_SetMessageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 4) = a2;
  return result;
}

CMBlockBufferRef apapPackage_CreateBBufRepresentation(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theBuffer = 0;
  if (!apapPackage_isMessageTypeSupported())
  {
    apapPackage_CreateBBufRepresentation_cold_6(DerivedStorage);
    return theBuffer;
  }

  v3 = *(DerivedStorage + 8);
  if (!v3)
  {
    apapPackage_CreateBBufRepresentation_cold_5();
    return theBuffer;
  }

  DataLength = CMBlockBufferGetDataLength(v3);
  if (DataLength)
  {
    v5 = *(DerivedStorage + 8);
    if (APSAPAPBBufDecodeHeader())
    {
      apapPackage_CreateBBufRepresentation_cold_1();
      return theBuffer;
    }

    if (*DerivedStorage)
    {
      if (DataLength >= 0xFFFFFFFC)
      {
        apapPackage_CreateBBufRepresentation_cold_2();
        return theBuffer;
      }

      goto LABEL_9;
    }
  }

  else if (*DerivedStorage)
  {
LABEL_9:
    CFGetAllocator(a1);
    if (FigCreateBlockBufferCopyingMemoryBlock())
    {
      apapPackage_CreateBBufRepresentation_cold_3();
    }

    else if (DataLength)
    {
      appended = CMBlockBufferAppendBufferReference(theBuffer, *(DerivedStorage + 8), 0, DataLength, 0);
      if (appended)
      {
        apapPackage_CreateBBufRepresentation_cold_4(appended, &theBuffer);
      }
    }

    return theBuffer;
  }

  v8 = *(DerivedStorage + 8);
  if (v8)
  {
    return CFRetain(v8);
  }

  return v8;
}

__CFString *httppackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportPackageHTTP %p>", a1);
  return Mutable;
}

uint64_t connection_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&connection_getClassID_sClassDesc, ClassID, 1, a1);
}

uint64_t APTransportConnectionGetTypeID()
{
  if (_MergedGlobals_17 != -1)
  {
    APTransportConnectionGetClassID_cold_1();
  }

  v1 = qword_281309C40;

  return MEMORY[0x282111A98](v1);
}

__CFString *APTransportConnectionGetStallStateString(int a1)
{
  v1 = @"Stalled";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"NotStalled";
  }
}

uint64_t APTransportConnectionGetStatusString(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_278BC9B18 + a1);
  }
}

uint64_t APTransportConnectionGetTrafficClassForSocketQoS(int a1)
{
  if (a1 <= 9)
  {
    if (a1 == 1)
    {
      return 200;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 800;
      }

      return 0;
    }

    return 700;
  }

  if (a1 > 11)
  {
    if (a1 != 12)
    {
      if (a1 == 20)
      {
        return 900;
      }

      return 0;
    }

    return 700;
  }

  if (a1 != 10)
  {
    return 800;
  }

  return 500;
}

void *APTransportConnectionCopyNWContextForType(int a1)
{
  switch(a1)
  {
    case 1:
      if (APTransportConnectionCopyNWContextForType_sAPTNWContextBufferedAudioOnce != -1)
      {
        APTransportConnectionCopyNWContextForType_cold_2();
      }

      v3 = APTransportConnectionCopyNWContextForType_sAPTNWContextBufferedAudio;
      break;
    case 2:
      if (APTransportConnectionCopyNWContextForType_sAPTNWContextLowLatencyOnce != -1)
      {
        APTransportConnectionCopyNWContextForType_cold_1();
      }

      v3 = APTransportConnectionCopyNWContextForType_sAPTNWContextLowLatency;
      break;
    case 3:
      v1 = nw_context_create();
      nw_context_set_isolate_protocol_stack();
      nw_context_set_scheduling_mode();
      nw_context_activate();
      return v1;
    default:
      if (APTransportConnectionCopyNWContextForType_sAPTNWContextDefaultOnce != -1)
      {
        APTransportConnectionCopyNWContextForType_cold_3();
      }

      v3 = APTransportConnectionCopyNWContextForType_sAPTNWContextDefault;
      break;
  }

  return nw_retain(v3);
}

uint64_t __APTransportConnectionCopyNWContextForType_block_invoke()
{
  APTransportConnectionCopyNWContextForType_sAPTNWContextDefault = nw_context_create();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();

  return nw_context_activate();
}

uint64_t __APTransportConnectionCopyNWContextForType_block_invoke_2()
{
  APTransportConnectionCopyNWContextForType_sAPTNWContextBufferedAudio = nw_context_create();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();

  return nw_context_activate();
}

uint64_t __APTransportConnectionCopyNWContextForType_block_invoke_3()
{
  APTransportConnectionCopyNWContextForType_sAPTNWContextLowLatency = nw_context_create();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();

  return nw_context_activate();
}

uint64_t APTransportConnectionGetSharedSelfSignedIdentity()
{
  if (qword_281309C50 != -1)
  {
    APTransportConnectionGetSharedSelfSignedIdentity_cold_1();
  }

  return qword_281309C48;
}

void transportConnection_createSelfSignedIdentity(void **a1)
{
  if (!a1)
  {
    transportConnection_createSelfSignedIdentity_cold_9();
LABEL_27:
    v15 = 0;
    goto LABEL_19;
  }

  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    transportConnection_createSelfSignedIdentity_cold_8();
    goto LABEL_27;
  }

  v4 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
  v5 = *MEMORY[0x277CDC018];
  if (CFDictionarySetInt64())
  {
    transportConnection_createSelfSignedIdentity_cold_1();
LABEL_26:
    CFRelease(v4);
    goto LABEL_27;
  }

  RandomKey = SecKeyCreateRandomKey(v4, 0);
  if (!RandomKey)
  {
    transportConnection_createSelfSignedIdentity_cold_7();
    goto LABEL_26;
  }

  v7 = RandomKey;
  v8 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  if (!v8)
  {
    transportConnection_createSelfSignedIdentity_cold_6();
    v9 = 0;
LABEL_30:
    SelfSignedCertificate = 0;
LABEL_32:
    v13 = 0;
    goto LABEL_34;
  }

  v9 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = *MEMORY[0x277CDC210];
  if (CFDictionarySetInt64())
  {
    transportConnection_createSelfSignedIdentity_cold_2();
    goto LABEL_30;
  }

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (!SelfSignedCertificate)
  {
    transportConnection_createSelfSignedIdentity_cold_5();
    goto LABEL_32;
  }

  v12 = SecIdentityCreate();
  v13 = v12;
  if (v12)
  {
    v14 = sec_identity_create(v12);
    v15 = v14;
    if (v14)
    {
      *a1 = sec_retain(v14);
    }

    else
    {
      transportConnection_createSelfSignedIdentity_cold_3();
    }

    goto LABEL_11;
  }

  transportConnection_createSelfSignedIdentity_cold_4();
LABEL_34:
  v15 = 0;
LABEL_11:
  CFRelease(v4);
  CFRelease(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (SelfSignedCertificate)
  {
    CFRelease(SelfSignedCertificate);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_19:

  sec_release(v15);
}

uint64_t APTransportConnectionSendBatchSlow(uint64_t a1, CFArrayRef theArray)
{
  if (a1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v5 = Count;
        v6 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
          if (!ValueAtIndex)
          {
            break;
          }

          v8 = ValueAtIndex;
          v9 = CFGetTypeID(ValueAtIndex);
          if (v9 != APTransportPackageGetTypeID())
          {
            break;
          }

          VTable = CMBaseObjectGetVTable();
          v11 = *(*(VTable + 16) + 56);
          if (!v11)
          {
            v14 = 4294954514;
LABEL_13:
            APSLogErrorAt();
            return v14;
          }

          v12 = *(VTable + 16) + 56;
          v13 = v11(a1, v8);
          if (v13)
          {
            v14 = v13;
            goto LABEL_13;
          }

          if (v5 == ++v6)
          {
            return 0;
          }
        }

        v14 = 4294894974;
        APTransportConnectionSendBatchSlow_cold_1();
      }
    }

    else
    {
      v14 = 4294894974;
      APTransportConnectionSendBatchSlow_cold_2();
    }
  }

  else
  {
    v14 = 4294894974;
    APTransportConnectionSendBatchSlow_cold_3();
  }

  return v14;
}

CFStringRef carPlayHelperSession_copyFormattingDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[64];
  v4 = "[Session/WiFi/USB]";
  if (!DerivedStorage[112])
  {
    v4 = "[Session/USB]";
  }

  v5 = "[Session/WiFi]";
  if (!DerivedStorage[112])
  {
    v5 = "<Invalid>";
  }

  if (!DerivedStorage[64])
  {
    v4 = v5;
  }

  v6 = "[Bonjour/USB]";
  v7 = "[Bonjour/WiFi]";
  if (DerivedStorage[112])
  {
    v6 = "[Bonjour/WiFi/USB]";
  }

  else
  {
    v7 = "<Invalid>";
  }

  if (DerivedStorage[64])
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (DerivedStorage[177])
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"[APCarPlayHelperSession %p] - %s", a1, v9);
}

uint64_t __APCarPlayHelperSessionGetClassID_block_invoke()
{
  ClassID = APCarPlayHelperGetClassID();

  return MEMORY[0x282112448](&APCarPlayHelperSessionGetClassID_sClassDesc, ClassID, 0, &APCarPlayHelperSessionGetClassID_sClassID);
}

uint64_t APCarPlayHelperSessionCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  if (APCarPlayHelperSessionGetClassID_sRegisterOnce != -1)
  {
    APCarPlayHelperSessionCreate_cold_1();
  }

  v23 = CMDerivedObjectCreate();
  if (v23)
  {
    APCarPlayHelperSessionCreate_cold_2();
    return v23;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = dispatch_semaphore_create(0);
  *(DerivedStorage + 8) = v11;
  if (!v11)
  {
    APCarPlayHelperSessionCreate_cold_13(&v23);
    return v23;
  }

  v12 = dispatch_queue_create("APCarPlayHelperSessionInternalQueue", 0);
  *(DerivedStorage + 16) = v12;
  if (!v12)
  {
    APCarPlayHelperSessionCreate_cold_12(&v23);
    return v23;
  }

  v13 = dispatch_queue_create("APCarPlayHelperSessionEventQueue", 0);
  *(DerivedStorage + 24) = v13;
  if (!v13)
  {
    APCarPlayHelperSessionCreate_cold_11(&v23);
    return v23;
  }

  *(DerivedStorage + 232) = a2;
  *(DerivedStorage + 240) = a3;
  if (!a2)
  {
    APCarPlayHelperSessionCreate_cold_10(&v23);
    return v23;
  }

  SharedHelper = APConnectivityHelperGetSharedHelper();
  if (!SharedHelper)
  {
    *(DerivedStorage + 40) = 0;
    goto LABEL_35;
  }

  v15 = CFRetain(SharedHelper);
  *(DerivedStorage + 40) = v15;
  if (!v15)
  {
LABEL_35:
    APCarPlayHelperSessionCreate_cold_9(&v23);
    return v23;
  }

  v23 = APConnectivityHelperRegisterEventHandler(v15, 0, carPlayHelperSession_handleConnectivityHelperEvent);
  if (v23)
  {
    APCarPlayHelperSessionCreate_cold_3();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 160) = Mutable;
    if (Mutable)
    {
      v17 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(DerivedStorage + 168) = v17;
      if (v17)
      {
        if (_MergedGlobals_18 != -1)
        {
          APCarPlayHelperSessionCreate_cold_4();
        }

        [qword_281309C60 addCarPlayHelper:0];
        if (a4)
        {
          Value = CFDictionaryGetValue(a4, @"powerAssertion");
          *(DerivedStorage + 32) = Value;
          if (Value)
          {
            CFRetain(Value);
          }

          v19 = CFDictionaryGetValue(a4, @"eventRecorder");
          *(DerivedStorage + 264) = v19;
          if (v19)
          {
            CFRetain(v19);
          }

          *(DerivedStorage + 64) = CFDictionaryGetInt64Ranged() & 1;
          *(DerivedStorage + 112) = (CFDictionaryGetInt64Ranged() & 2) != 0;
          *(DerivedStorage + 177) = CFDictionaryGetInt64() != 0;
        }

        if (*(DerivedStorage + 64) || *(DerivedStorage + 112))
        {
          CFPrefs_GetDouble();
          *(DerivedStorage + 56) = v20;
          if (v23)
          {
            *(DerivedStorage + 56) = 0x4044000000000000;
            v23 = 0;
          }

          if (*(DerivedStorage + 177))
          {
            if (_MergedGlobals_18 != -1)
            {
              APCarPlayHelperSessionCreate_cold_4();
            }

            [qword_281309C60 registerSessionRequestHandlerMachService];
          }

          if (gLogCategory_APBrowserCarSessionHelper <= 90 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
          {
            *(DerivedStorage + 64);
            *(DerivedStorage + 112);
            v22 = *(DerivedStorage + 56);
            LogPrintF();
          }

          *a5 = 0;
        }

        else
        {
          APCarPlayHelperSessionCreate_cold_6(&v23);
        }
      }

      else
      {
        APCarPlayHelperSessionCreate_cold_7(&v23);
      }
    }

    else
    {
      APCarPlayHelperSessionCreate_cold_8(&v23);
    }
  }

  return v23;
}

void sub_23D3151DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged()
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = APConnectivityHelperCopyCurrentWiFiNetworkInfo(*(DerivedStorage + 40), &cf);
  v2 = cf;
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = cf == 0;
  }

  if (!v3)
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v6 = (DerivedStorage + 136);
    v5 = *(DerivedStorage + 136);
    if (FigCFEqual())
    {
      if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
      {
        carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged_cold_1(DerivedStorage, (DerivedStorage + 136));
      }
    }

    else
    {
      if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
      {
        carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged_cold_2(DerivedStorage, (DerivedStorage + 136));
      }

      v7 = *v6;
      *v6 = TypedValue;
      if (TypedValue)
      {
        CFRetain(TypedValue);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      *(DerivedStorage + 120) = CFAbsoluteTimeGetCurrent();
    }

    v2 = cf;
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void carPlayHelperSession_dispatchEvent(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 232);
  if (!v7)
  {
    return;
  }

  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 240);
  if (gLogCategory_APBrowserCarSessionHelper <= 20 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    carPlayHelperSession_dispatchEvent_cold_1(v8);
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a1)
  {
LABEL_6:
    CFRetain(a1);
  }

LABEL_7:
  if (a3)
  {
    CFRetain(a3);
  }

  v10 = *(v8 + 24);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __carPlayHelperSession_dispatchEvent_block_invoke;
  v11[3] = &__block_descriptor_76_e5_v8__0l;
  v11[4] = v7;
  v11[5] = a1;
  v12 = a2;
  v11[6] = a3;
  v11[7] = v9;
  v11[8] = v8;
  dispatch_async(v10, v11);
}

void __carPlayHelperSession_dispatchEvent_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 72), *(a1 + 48), *(a1 + 56));
  if (*(*(a1 + 64) + 248))
  {
    v2 = os_transaction_copy_description();
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __carPlayHelperSession_dispatchEvent_block_invoke_cold_1();
    }

    free(v2);
    v3 = *(*(a1 + 64) + 248);
    if (v3)
    {

      *(*(a1 + 64) + 248) = 0;
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t __carPlayHelperSession_finalize_block_invoke(uint64_t result)
{
  *(*(result + 32) + 232) = 0;
  *(*(result + 32) + 240) = 0;
  return result;
}

const void *carPlayHelperSession_usbInterfaceListeningStopped()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 80);
  if (result)
  {
    CFRelease(result);
    *(DerivedStorage + 80) = 0;
    CMBaseObjectGetDerivedStorage();
    result = APSLogErrorAt();
    if (gLogCategory_APBrowserCarSessionHelper <= 30)
    {
      if (gLogCategory_APBrowserCarSessionHelper != -1)
      {
        return carPlayHelperSession_usbInterfaceListeningStopped_cold_1(DerivedStorage);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return carPlayHelperSession_usbInterfaceListeningStopped_cold_1(DerivedStorage);
      }
    }
  }

  return result;
}

const void *carPlayHelperSession_wifiNetworkListeningStopped(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 128);
  if (result)
  {
    CFRelease(result);
    *(DerivedStorage + 128) = 0;
    result = carPlayHelperSession_wifiNetworkChanged(a1, 0);
    if (gLogCategory_APBrowserCarSessionHelper <= 30)
    {
      if (gLogCategory_APBrowserCarSessionHelper != -1)
      {
        return carPlayHelperSession_wifiNetworkListeningStopped_cold_1(DerivedStorage);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return carPlayHelperSession_wifiNetworkListeningStopped_cold_1(DerivedStorage);
      }
    }
  }

  return result;
}

uint64_t carPlayHelperSession_updateIPAddresses(const void *a1, const void *a2, const void *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    carPlayHelperSession_updateIPAddresses_cold_3();
    return 4294960591;
  }

  if (!a3)
  {
    carPlayHelperSession_updateIPAddresses_cold_2();
    return 4294960591;
  }

  v9 = DerivedStorage;
  if (a4 == 4)
  {
    v10 = 168;
    goto LABEL_7;
  }

  if (a4 != 6)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v10 = 160;
LABEL_7:
  v11 = *(DerivedStorage + v10);
  CFDictionarySetValue(v11, a2, a3);
  if (*(v9 + 216) == 0.0 || (Current = CFAbsoluteTimeGetCurrent(), Current - *(v9 + 216) >= 2.0) || (Value = CFDictionaryGetValue(v11, *(v9 + 128))) != 0 && CFArrayGetCount(Value))
  {
    if (gLogCategory_APBrowserCarSessionHelper <= 30 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      *(v9 + 112);
      *(v9 + 64);
      *(v9 + 112);
      *(v9 + 64);
      *(v9 + 177);
      LogPrintF();
    }

    updated = carPlayHelperSession_updateNetworkAndSessionState(a1);
    if (updated)
    {
      carPlayHelperSession_updateIPAddresses_cold_1();
    }
  }

  else
  {
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      *(v9 + 177);
      *(v9 + 112);
      *(v9 + 64);
      v16 = Current - *(v9 + 216);
      LogPrintF();
    }

    return 0;
  }

  return updated;
}

APCarSessionRequestHandler *__GetSharedCarSession_block_invoke()
{
  result = objc_alloc_init(APCarSessionRequestHandler);
  qword_281309C60 = result;
  return result;
}

Class __getCARSessionRequestAgentClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CarKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278BC9C08;
    v6 = 0;
    CarKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    __getCARSessionRequestAgentClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CARSessionRequestAgent");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCARSessionRequestAgentClass_block_invoke_cold_1();
  }

  getCARSessionRequestAgentClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APTransportStreamEnableReverseControl(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __APTransportStreamEnableReverseControl_block_invoke;
  v5[3] = &unk_278BC9D98;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t APTransportStreamWaitUntilReverseControlConnected(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = stream_waitUntilConnectionSetup(a1, 1);
  if (v2)
  {
    APTransportStreamWaitUntilReverseControlConnected_cold_1();
  }

  return v2;
}

__CFString *stream_CopyDebugDescription_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportStream %p '%@'>", a1, *(DerivedStorage + 88));
  return Mutable;
}

uint64_t stream_DumpHierarchy_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  if (DerivedStorage)
  {
    v11 = *(DerivedStorage + 24);
    v12 = 56;
    if (!v11)
    {
      v12 = 48;
    }

    v13 = *(DerivedStorage + v12);
    if (v11)
    {
      v14 = *(DerivedStorage + 48);
    }

    else
    {
      v14 = *(DerivedStorage + 56);
    }
  }

  else
  {
    stream_DumpHierarchy_cold_1_0();
    v13 = 0;
    v14 = 0;
  }

  v15 = (*(a5 + 16))(a5, a3, "Stream:[%{ptr}] (Buffered) %''@ Parent:[%{ptr}]\n", a1, *(v10 + 88), a2);
  if (v15)
  {
    v17 = v15;
    stream_DumpHierarchy_cold_2_0();
  }

  else
  {
    v16 = stream_dumpConnectionInfo(a1, v13, a3 + 1, a5);
    if (v16)
    {
      v17 = v16;
      stream_DumpHierarchy_cold_3();
    }

    else if (v14 == v13)
    {
      return 0;
    }

    else
    {
      v17 = stream_dumpConnectionInfo(a1, v14, a3 + 1, a5);
      if (v17)
      {
        stream_DumpHierarchy_cold_4();
      }
    }
  }

  return v17;
}

uint64_t stream_dumpConnectionInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 24);
  if (*(a2 + 96))
  {
    v8 = @"receive";
  }

  else
  {
    v8 = @"send";
  }

  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v10 = *(ProtocolVTable + 16)) == 0)
  {
    result = 4294954508;
    goto LABEL_13;
  }

  v11 = *(v10 + 8);
  if (!v11)
  {
    result = 4294954514;
    if (a4)
    {
      return (*(a4 + 16))(a4, a3, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v7, v8, " ", v8, v8, result, a1);
    }

    return 0;
  }

  v12 = *(v10 + 8);
  result = v11(v7, a1, a3, v8, a4);
  if (result == -12782 || result == -12788)
  {
LABEL_13:
    if (a4)
    {
      return (*(a4 + 16))(a4, a3, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v7, v8, " ", v8, v8, result, a1);
    }

    return 0;
  }

  return result;
}