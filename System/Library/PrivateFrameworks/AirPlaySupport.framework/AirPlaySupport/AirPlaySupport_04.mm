uint64_t hoseSBAR_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *cStr = 0u;
  v36 = 0u;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    APSLogErrorAt(0);
    v10 = 4294894964;
    goto LABEL_23;
  }

  if (!a2 || !a4)
  {
    APSLogErrorAt(0);
    v10 = 4294894965;
    goto LABEL_23;
  }

  if (!CFEqual(a2, @"VolumeLinear"))
  {
    if (CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_AudioBufferSize"))
    {
      v11 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 56));
      *a4 = v11;
      if (!v11)
      {
        v10 = 4294894966;
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (CFEqual(a2, @"APSEndpointStreamAudioHoseProtocolProperty_Name") || CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_Name"))
    {
      StringValue = *(DerivedStorage + 16);
      if (StringValue)
      {
LABEL_21:
        StringValue = CFRetain(StringValue);
      }

LABEL_22:
      v10 = 0;
      *a4 = StringValue;
      goto LABEL_23;
    }

    if (CFEqual(a2, @"Model"))
    {
      cStr[0] = 0;
      GetDeviceModelString();
LABEL_28:
      v15 = CFStringCreateWithCString(a3, cStr, 0x8000100u);
      v10 = v15;
      if (!v15)
      {
        *a4 = 0;
        goto LABEL_23;
      }

      *a4 = CFRetain(v15);
      CFRelease(v10);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"OSBuildVersion"))
    {
      cStr[0] = 0;
      GetSystemBuildVersionString();
      goto LABEL_28;
    }

    if (CFEqual(a2, @"BufferingPriority"))
    {
      v16 = *(DerivedStorage + 288);
      FigSimpleMutexLock();
      v17 = *(DerivedStorage + 308);
      *a4 = CFNumberCreateInt64();
      v18 = *(DerivedStorage + 288);
      FigSimpleMutexUnlock();
      if (!*a4)
      {
        v10 = 4294894966;
        v11 = 0;
        goto LABEL_14;
      }

LABEL_17:
      v10 = 0;
      goto LABEL_23;
    }

    if (CFEqual(a2, @"Rate"))
    {
      v19 = *(DerivedStorage + 288);
      FigSimpleMutexLock();
      v20 = *(DerivedStorage + 304);
      *a4 = CFNumberCreateInt64();
      v21 = *(DerivedStorage + 288);
      FigSimpleMutexUnlock();
      if (!*a4)
      {
        v10 = 4294894966;
        v11 = 0;
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1878]))
    {
      StringValue = *(DerivedStorage + 24);
      if (!StringValue)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (CFEqual(a2, @"ClusterUUID"))
    {
      v22 = *(DerivedStorage + 40);
      StringValue = FigCFDictionaryGetStringValue();
      if (!StringValue)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (CFEqual(a2, @"IsClusterLeader"))
    {
      v23 = *(DerivedStorage + 40);
      StringValue = FigCFDictionaryGetBooleanValue();
      if (!StringValue)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (CFEqual(a2, @"ClusterType"))
    {
      v24 = *(DerivedStorage + 40);
      NumberValue = FigCFDictionaryGetNumberValue();
      if (NumberValue)
      {
        v26 = CFRetain(NumberValue);
        *a4 = v26;
        if (v26)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *a4 = 0;
      }

      v31 = *MEMORY[0x277CBECE8];
      StringValue = FigCFNumberCreateSInt32();
      goto LABEL_22;
    }

    if (CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_HasAudioDataBeenSent"))
    {
      v27 = *(DerivedStorage + 288);
      FigSimpleMutexLock();
      v28 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 320))
      {
        v28 = MEMORY[0x277CBED10];
      }

      v29 = *v28;
      if (!*v28)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (CFEqual(a2, @"ClusterSize"))
      {
        v32 = *(DerivedStorage + 40);
        StringValue = FigCFDictionaryGetNumberValue();
        if (!StringValue)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (!CFEqual(a2, *MEMORY[0x277CD6400]))
      {
        if (CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_SupportsReceiverChoosesAnchor"))
        {
          v34 = MEMORY[0x277CBED28];
          if (!*(DerivedStorage + 282))
          {
            v34 = MEMORY[0x277CBED10];
          }
        }

        else
        {
          if (!CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_IsDolbyCertified"))
          {
            if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v10 = 4294954512;
            goto LABEL_23;
          }

          v34 = MEMORY[0x277CBED28];
        }

        StringValue = *v34;
        goto LABEL_21;
      }

      v33 = *(DerivedStorage + 288);
      FigSimpleMutexLock();
      v29 = *(DerivedStorage + 312);
      if (!v29)
      {
LABEL_58:
        *a4 = v29;
        v30 = *(DerivedStorage + 288);
        FigSimpleMutexUnlock();
        goto LABEL_17;
      }
    }

    v29 = CFRetain(v29);
    goto LABEL_58;
  }

  v8 = *(DerivedStorage + 104);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v10 = 4294954514;
LABEL_13:
    v11 = v10;
LABEL_14:
    APSLogErrorAt(v11);
    goto LABEL_23;
  }

  v10 = v9(v8, *MEMORY[0x277CD6440], a3, a4);
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_23:
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

__CFString *hoseSBAR_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSEndpointStreamAudioHoseSBAR %p '%@'>", a1, *(DerivedStorage + 16));
  return Mutable;
}

void hoseSBAR_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 8) = 0;
  }

  hoseSBAR_invalidateInternal(a1);
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(DerivedStorage + 256);
  if (v9 != -1)
  {
    notify_cancel(v9);
    *(DerivedStorage + 256) = -1;
  }

  v10 = *(DerivedStorage + 260);
  if (v10 != -1)
  {
    notify_cancel(v10);
    *(DerivedStorage + 260) = -1;
  }

  v11 = *(DerivedStorage + 112);
  if (v11)
  {
    v12 = *(DerivedStorage + 112);
    VTable = CMBaseObjectGetVTable();
    v14 = *(*(VTable + 16) + 24);
    v15 = MEMORY[0x277CC0898];
    if (v14)
    {
      v16 = *(VTable + 16) + 24;
      v68 = *MEMORY[0x277CC0898];
      v69 = *(MEMORY[0x277CC0898] + 16);
      v14(v11, &v68, 0.0);
    }

    *(DerivedStorage + 600) = *v15;
    *(DerivedStorage + 616) = *(v15 + 16);
    hoseSBAR_updateSynchronizerState(a1, 0);
    v17 = *(DerivedStorage + 104);
    if (v17)
    {
      v18 = *(DerivedStorage + 112);
      v19 = CMBaseObjectGetVTable();
      v20 = *(*(v19 + 16) + 16);
      if (v20)
      {
        v21 = *(v19 + 16) + 16;
        v20(v18, v17);
      }
    }

    CFRelease(*(DerivedStorage + 112));
  }

  v22 = CMBaseObjectGetDerivedStorage();
  if (*(v22 + 120))
  {
    v23 = v22;
    CMNotificationCenterGetDefaultLocalCenter();
    v24 = *MEMORY[0x277CC0908];
    v25 = *(v23 + 120);
    FigNotificationCenterRemoveWeakListener();
    v26 = *(v23 + 648);
    if (v26)
    {
      CMTimebaseRemoveTimerDispatchSource(*(v23 + 120), v26);
      v27 = *(v23 + 648);
      if (v27)
      {
        dispatch_source_cancel(*(v23 + 648));
        dispatch_release(v27);
        *(v23 + 648) = 0;
      }
    }

    v28 = *(v23 + 680);
    if (v28)
    {
      CMTimebaseRemoveTimerDispatchSource(*(v23 + 120), v28);
      v29 = *(v23 + 680);
      if (v29)
      {
        dispatch_source_cancel(*(v23 + 680));
        dispatch_release(v29);
        *(v23 + 680) = 0;
      }
    }
  }

  v30 = *(DerivedStorage + 120);
  if (v30)
  {
    CFRelease(v30);
  }

  if (*(DerivedStorage + 104))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v31 = *MEMORY[0x277CD63D8];
    v32 = *(DerivedStorage + 104);
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v33 = *MEMORY[0x277CD63F8];
    v34 = *(DerivedStorage + 104);
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v35 = *MEMORY[0x277CD63E0];
    v36 = *(DerivedStorage + 104);
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v37 = *MEMORY[0x277CD63E8];
    v38 = *(DerivedStorage + 104);
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v39 = *MEMORY[0x277CD63F0];
    v40 = *(DerivedStorage + 104);
    FigNotificationCenterRemoveWeakListener();
    CFRelease(*(DerivedStorage + 104));
  }

  v41 = *(DerivedStorage + 368);
  if (v41)
  {
    dispatch_release(v41);
    *(DerivedStorage + 368) = 0;
  }

  v42 = *(DerivedStorage + 152);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(DerivedStorage + 464);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(DerivedStorage + 656);
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *(DerivedStorage + 664);
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(DerivedStorage + 688);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(DerivedStorage + 976);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(DerivedStorage + 984);
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = *(DerivedStorage + 72);
  if (v49)
  {
    CFRelease(v49);
  }

  v50 = *(DerivedStorage + 696);
  if (v50)
  {
    CFRelease(v50);
  }

  v51 = *(DerivedStorage + 64);
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = *(DerivedStorage + 80);
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = *(DerivedStorage + 704);
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = *(DerivedStorage + 936);
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = *(DerivedStorage + 928);
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = *(DerivedStorage + 944);
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = *(DerivedStorage + 952);
  if (v57)
  {
    CFRelease(v57);
  }

  v58 = *(DerivedStorage + 960);
  if (v58)
  {
    CFRelease(v58);
  }

  v59 = *(DerivedStorage + 296);
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = *(DerivedStorage + 312);
  if (v60)
  {
    CFRelease(v60);
  }

  v61 = *(DerivedStorage + 1000);
  if (v61)
  {
    CFRelease(v61);
    *(DerivedStorage + 1000) = 0;
  }

  v62 = *(DerivedStorage + 992);
  if (v62)
  {
    CFRelease(v62);
    *(DerivedStorage + 992) = 0;
  }

  v63 = *(DerivedStorage + 288);
  FigSimpleMutexDestroy();
  v64 = *(DerivedStorage + 264);
  if (v64)
  {
    CFRelease(v64);
    *(DerivedStorage + 264) = 0;
  }

  v65 = *(DerivedStorage + 272);
  if (v65)
  {
    CFRelease(v65);
    *(DerivedStorage + 272) = 0;
  }

  v66 = *(DerivedStorage + 352);
  if (v66)
  {
    dispatch_release(v66);
    *(DerivedStorage + 352) = 0;
  }

  v67 = *(DerivedStorage + 360);
  if (v67)
  {
    dispatch_release(v67);
    *(DerivedStorage + 360) = 0;
  }
}

void hoseSBAR_invalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    CMBaseObjectGetDerivedStorage();
    v4 = *(v3 + 14);
    v5 = MEMORY[0x277CC0898];
    if (v4)
    {
      v6 = *(v3 + 14);
      VTable = CMBaseObjectGetVTable();
      v8 = *(*(VTable + 16) + 24);
      if (v8)
      {
        v9 = *(VTable + 16) + 24;
        v34 = *v5;
        v35 = *(v5 + 2);
        v8(v4, &v34, 0.0);
      }

      hoseSBAR_updateSynchronizerState(a1, 0);
    }

    v10 = *(v3 + 13);
    if (v10)
    {
      v11 = *(v3 + 13);
      v12 = CMBaseObjectGetVTable();
      v13 = *(*(v12 + 16) + 24);
      if (v13)
      {
        v14 = *(v12 + 16) + 24;
        v13(v10);
      }

      v3[672] = 0;
    }

    v15 = *(v3 + 82);
    if (v15)
    {
      CMBufferQueueReset(v15);
    }

    v16 = *(v3 + 83);
    if (v16)
    {
      CMBufferQueueReset(v16);
    }

    v3[457] = 0;
    v17 = *(v3 + 58);
    if (v17)
    {
      CFRelease(v17);
      *(v3 + 58) = 0;
    }

    *(v3 + 68) = 0x100000000;
    *(v3 + 33) = kAPSNetworkTimeInvalid;
    v18 = *v5;
    *(v3 + 552) = *v5;
    v19 = *(v5 + 2);
    *(v3 + 71) = v19;
    *(v3 + 36) = v18;
    *(v3 + 74) = v19;
    *(v3 + 600) = v18;
    *(v3 + 77) = v19;
    *(v3 + 80) = v19;
    *(v3 + 39) = v18;
    *(v3 + 50) = v19;
    *(v3 + 24) = v18;
    *(v3 + 53) = v19;
    *(v3 + 408) = v18;
    *(v3 + 56) = v19;
    *(v3 + 27) = v18;
    *(v3 + 185) = 0;
    *(v3 + 93) = 0;
    v20 = *(v3 + 85);
    if (v20)
    {
      dispatch_source_set_timer(v20, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    v21 = *(v3 + 117);
    if (v21)
    {
      CFDictionaryRemoveAllValues(v21);
    }

    v22 = *(v3 + 116);
    if (v22)
    {
      CFDictionaryRemoveAllValues(v22);
    }

    v23 = *(v3 + 118);
    if (v23)
    {
      CFDictionaryRemoveAllValues(v23);
    }

    v24 = *(v3 + 119);
    if (v24)
    {
      CFDictionaryRemoveAllValues(v24);
    }

    v25 = *(v3 + 120);
    if (v25)
    {
      CFDictionaryRemoveAllValues(v25);
    }

    v26 = CMBaseObjectGetDerivedStorage();
    *(v26 + 728) = 0;
    *(v26 + 736) = 0;
    v3[456] = 0;
    hoseSBAR_clearPendingFlushes();
    CMNotificationCenterGetDefaultLocalCenter();
    v27 = *(v3 + 125);
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v28 = *(v3 + 124);
    FigNotificationCenterRemoveWeakListener();
    v29 = *(v3 + 9);
    if (v29)
    {
      CFRelease(v29);
      *(v3 + 9) = 0;
    }

    v30 = *(v3 + 14);
    if (v30)
    {
      v31 = *(v3 + 13);
      if (v31)
      {
        v32 = *(v3 + 14);
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v33)
        {
          v33(v30, v31);
        }
      }
    }

    *v3 = 1;
  }
}

uint64_t hoseSBAR_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = *(DerivedStorage + 352);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __hoseSBAR_Invalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_926;
    block[4] = a1;
    dispatch_sync(v3, block);
  }

  return 0;
}

uint64_t hoseSBAR_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&hoseSBAR_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSEndpointStreamAudioHoseSBARInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 8) + 24);
  if (!v3)
  {
    return 4294954514;
  }

  v4 = *(VTable + 8) + 24;

  return v3(a1);
}

uint64_t APSAsyncLoggerGetTypeID()
{
  if (APSAsyncLoggerGetTypeID_once != -1)
  {
    dispatch_once(&APSAsyncLoggerGetTypeID_once, &__block_literal_global_927);
  }

  return APSAsyncLoggerGetTypeID_typeID;
}

uint64_t __APSAsyncLoggerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APSAsyncLoggerGetTypeID_typeID = result;
  return result;
}

uint64_t APSAsyncLoggerLogMessage(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a2)
  {
    v8 = a2;
    if (a3)
    {
      v4 = a3[1];
      v9 = *a3;
      v10 = v4;
    }

    else
    {
      v10 = 0u;
      v9 = 0u;
    }

    v11 = mach_absolute_time();
    APSAtomicMessageQueueSendMessage(*(a1 + 16), &v8);
    v5 = *(*(a1 + 24) + 16);
    v6 = 1;
    atomic_compare_exchange_strong_explicit(v5 + 10, &v6, 2u, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      caulk::concurrent::messenger::enqueue((v5 + 6), v5);
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSAsyncLoggerGetSharedLogger()
{
  if (APSAsyncLoggerGetSharedLogger_onceToken != -1)
  {
    dispatch_once_f(&APSAsyncLoggerGetSharedLogger_onceToken, &APSAsyncLoggerGetSharedLogger_gLogger, asyncLogger_initOnce);
  }

  return APSAsyncLoggerGetSharedLogger_gLogger;
}

void asyncLogger_initOnce(CFTypeRef **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *MEMORY[0x277CBECE8];
    if (APSAsyncLoggerGetTypeID_once != -1)
    {
      dispatch_once(&APSAsyncLoggerGetTypeID_once, &__block_literal_global_927);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      *(Instance + 16) = 0;
      *(Instance + 24) = 0;
      v5 = APSAtomicMessageQueueCreate(v2, 48, (Instance + 16));
      if (v5 || (SNPrintF(), (v5 = FigDispatchQueueCreateWithPriority()) == 0))
      {
        APSLogErrorAt(v5);
        CFRelease(v4);
      }

      else
      {
        v6 = v5;
        v7 = CFRetain(v4[2]);
        v8 = APSRealTimeSignalCreate(v6, v7, asyncLogger_debugSignalHandler, MEMORY[0x277CBE550], (v4 + 3));
        if (v8)
        {
          APSLogErrorAt(v8);
          CFRelease(v4);
        }

        else
        {
          *a1 = v4;
        }

        dispatch_release(v6);
      }

      v9 = *MEMORY[0x277D85DE8];
      return;
    }

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];
  }

  APSLogErrorAt(0);
}

uint64_t asyncLogger_debugSignalHandler(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  while (1)
  {
    result = APSAtomicMessageQueueReadMessage(a1, v5);
    if (!result)
    {
      break;
    }

    v3 = (mach_absolute_time() - *(&v6 + 1)) * 1000.0;
    v4 = UpTicksPerSecond();
    (*&v5[0])(v5 + 8, v3 / v4);
  }

  return result;
}

uint64_t APSAudioProtocolDriverReceiverAPATCreate(uint64_t a1, __int16 a2, const __CFData *a3, const __CFData *a4, uint64_t a5, void *a6)
{
  if (APSAudioProtocolDriverReceiverGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSAudioProtocolDriverReceiverGetClassID_sRegisterOnce, &APSAudioProtocolDriverReceiverGetClassID_sClassID, audioProtocolDriverReceiver_registerBaseClass);
  }

  Mutable = CMDerivedObjectCreate();
  if (Mutable)
  {
    v18 = Mutable;
LABEL_33:
    APSLogErrorAt(Mutable);
    return v18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = FigSimpleMutexCreate();
  *DerivedStorage = v12;
  if (!v12)
  {
    APSLogErrorAt(0);
    return 4294894836;
  }

  v13 = MEMORY[0x277CBECE8];
  if (a3)
  {
    Mutable = APSCryptorChaCha20Poly1305Create(*MEMORY[0x277CBECE8], a3, 1, (DerivedStorage + 72));
    if (Mutable)
    {
      v18 = Mutable;
      goto LABEL_33;
    }

    if (a4)
    {
      goto LABEL_8;
    }

LABEL_16:
    if (APSCryptorGetNull_sAPSCryptorNullOnce != -1)
    {
      dispatch_once_f(&APSCryptorGetNull_sAPSCryptorNullOnce, &APSCryptorGetNull_sAPSCryptorNull, nullCryptor_create);
    }

    *(DerivedStorage + 80) = CFRetain(APSCryptorGetNull_sAPSCryptorNull);
    v14 = *v13;
    goto LABEL_19;
  }

  if (APSCryptorGetNull_sAPSCryptorNullOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetNull_sAPSCryptorNullOnce, &APSCryptorGetNull_sAPSCryptorNull, nullCryptor_create);
  }

  *(DerivedStorage + 72) = CFRetain(APSCryptorGetNull_sAPSCryptorNull);
  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_8:
  v14 = *v13;
  Mutable = APSCryptorChaCha20Poly1305Create(*v13, a4, 1, (DerivedStorage + 80));
  if (Mutable)
  {
    v18 = Mutable;
    goto LABEL_33;
  }

  v15 = *(DerivedStorage + 80);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v16)
  {
    v17 = v16(v15);
  }

  else
  {
    v17 = 0;
  }

  *(DerivedStorage + 88) = v17;
  *(DerivedStorage + 96) = APSSettingsGetIntWithOverrideAndDefault(@"apatSRTCPEncrypt", 0, 1) != 0;
LABEL_19:
  Mutable = APSRTPSeqNumDictionaryCreateMutable(v14, MEMORY[0x277CBF150], (DerivedStorage + 8));
  if (Mutable)
  {
    v18 = Mutable;
    goto LABEL_33;
  }

  Mutable = APSRTCPCCFBGeneratorCreate((DerivedStorage + 104));
  if (Mutable)
  {
    v18 = Mutable;
    goto LABEL_33;
  }

  *(DerivedStorage + 16) = a2;
  *(DerivedStorage + 112) = MillisecondsToUpTicks();
  *(DerivedStorage + 144) = 0;
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 136) = 0;
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v18 = 0;
  *a6 = 0;
  return v18;
}

uint64_t protocolDriverReceiverAPAT_CopyAudioDataAvailable(uint64_t a1, __CFArray **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v16 = 4294894835;
    APSLogErrorAt(0);
    return v16;
  }

  v5 = DerivedStorage;
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *v5;
  FigSimpleMutexLock();
  v7 = CMBaseObjectGetDerivedStorage();
  *v43 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v8 = *v7;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    v11 = 0;
    v16 = 4294894836;
    goto LABEL_56;
  }

  v11 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
  if (!v11)
  {
    APSLogErrorAt(0);
    v16 = 4294894836;
    goto LABEL_79;
  }

  FirstSeqNum = APSRTPSeqNumDictionaryGetFirstSeqNum(v7[1], &v43[1]);
  if (FirstSeqNum)
  {
    v16 = FirstSeqNum;
    if (FirstSeqNum != -6764)
    {
      goto LABEL_78;
    }

    goto LABEL_55;
  }

  for (i = v43[1]; ; i = v43[0] + 1)
  {
    v43[0] = i;
    v14 = v7[1];
    if (v14)
    {
      Value = CFDictionaryGetValue(*(v14 + 24), i);
      if (Value)
      {
        goto LABEL_17;
      }
    }

    CFArrayRemoveAllValues(v11);
    FirstSeqNum = APSRTPSeqNumDictionaryGetSeqNumAfterSeqNum(v7[1], v43[0], v43);
    if (FirstSeqNum == -6750)
    {
      break;
    }

    v16 = FirstSeqNum;
    if (FirstSeqNum)
    {
      goto LABEL_78;
    }

    v17 = v7[1];
    if (v17)
    {
      Value = CFDictionaryGetValue(*(v17 + 24), v43[0]);
    }

    else
    {
      Value = 0;
    }

LABEL_17:
    FirstSeqNum = APSRTPBBufGetPayloadType(Value, &v40);
    if (FirstSeqNum)
    {
      v16 = FirstSeqNum;
      goto LABEL_78;
    }

    if (v40 <= 0x71u)
    {
      if (v40 != 112)
      {
        if (v40 != 113)
        {
          goto LABEL_26;
        }

        CFArrayRemoveAllValues(v11);
LABEL_37:
        CFArrayAppendValue(v11, Value);
        continue;
      }

      CFArrayRemoveAllValues(v11);
LABEL_28:
      CFArrayAppendValue(v11, Value);
      Count = CFArrayGetCount(v11);
      v19 = v43[0] - Count + 1;
      v2 = v2 & 0xFFFFFFFF00000000 | v19 | (Count << 16);
      FirstSeqNum = APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRange(v7[1], v2);
      if (FirstSeqNum)
      {
        v16 = FirstSeqNum;
        goto LABEL_78;
      }

      FirstSeqNum = APSAPAPRTPBBufCreateWithAPAPRTPFragmentBBufs(v9, v11, &v42);
      if (FirstSeqNum)
      {
        v16 = FirstSeqNum;
        goto LABEL_78;
      }

      FirstSeqNum = APSAPAPRTPBBufCopyAPAPBBuf(v42, v9, &v41);
      if (FirstSeqNum)
      {
        v16 = FirstSeqNum;
        goto LABEL_78;
      }

      FirstSeqNum = APSAPAPBBufEncodeHeaderSeqNum(v41, v19 << 8);
      if (FirstSeqNum)
      {
        v16 = FirstSeqNum;
        goto LABEL_78;
      }

      CFArrayAppendValue(Mutable, v41);
      CFArrayRemoveAllValues(v11);
      if (v41)
      {
        CFRelease(v41);
        v41 = 0;
      }

      if (v42)
      {
        CFRelease(v42);
        v42 = 0;
      }

      continue;
    }

    if (v40 == 114)
    {
      if (!CFArrayGetCount(v11))
      {
        continue;
      }

      goto LABEL_37;
    }

    if (v40 != 115)
    {
LABEL_26:
      CFArrayRemoveAllValues(v11);
      continue;
    }

    if (CFArrayGetCount(v11))
    {
      goto LABEL_28;
    }
  }

  v20 = v7[13];
  if (!v20)
  {
    goto LABEL_55;
  }

  v21 = *(v20 + 24);
  if (!v21)
  {
    goto LABEL_55;
  }

  LODWORD(v30[0]) = 0;
  if (APSRTPSeqNumRangeSetGetFirstSeqNumRange(v21, v30))
  {
    goto LABEL_55;
  }

  v22 = v30[0];
  v23 = v7[1];
  if (v23)
  {
    v24 = *(v23 + 16);
  }

  else
  {
    v24 = 0;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 0x40000000;
  v30[2] = __protocolDriverReceiverAPAT_copyDeframedRTPBBufsFromRxBufferInternal_block_invoke;
  v30[3] = &unk_2784A2DA8;
  v31 = v22;
  v30[4] = &v36;
  v30[5] = &v32;
  if (v24)
  {
    APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(v24, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_blockApplier, v30);
  }

  if (!*(v33 + 24))
  {
LABEL_55:
    v16 = 0;
    goto LABEL_56;
  }

  if ((*(v37 + 12) - v43[1]) <= 0x8000u)
  {
    v25 = v43[1] | ((*(v37 + 12) - v43[1]) << 16);
  }

  else
  {
    v25 = -1;
  }

  FirstSeqNum = APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRange(v7[1], v25);
  v16 = FirstSeqNum;
  if (FirstSeqNum)
  {
LABEL_78:
    APSLogErrorAt(FirstSeqNum);
LABEL_79:
    CFRelease(Mutable);
    Mutable = 0;
  }

LABEL_56:
  if (v41)
  {
    CFRelease(v41);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  if (v16)
  {
    APSLogErrorAt(v16);
    v28 = *v5;
    FigSimpleMutexUnlock();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else if (Mutable)
  {
    v26 = *v5;
    FigSimpleMutexUnlock();
    v16 = 0;
    *a2 = Mutable;
  }

  else
  {
    v16 = 4294894835;
    APSLogErrorAt(0);
    v29 = *v5;
    FigSimpleMutexUnlock();
  }

  return v16;
}

uint64_t __protocolDriverReceiverAPAT_copyDeframedRTPBBufsFromRxBufferInternal_block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = a2 + HIWORD(a2);
  if (((v2 - *(a1 + 48)) & 0x8000) == 0)
  {
    return 4294960573;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t protocolDriverReceiverAPAT_SetAudioDataAvailableCallbacks(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *DerivedStorage;
  FigSimpleMutexLock();
  v7 = DerivedStorage[8];
  DerivedStorage[7] = a2;
  DerivedStorage[8] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t protocolDriverReceiverAPAT_Flush()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t protocolDriverReceiverAPAT_Tick(uint64_t a1, uint64_t a2, unint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *DerivedStorage;
  FigSimpleMutexLock();
  v7 = APSRTCPCCFBGeneratorCopyRecords(DerivedStorage[13], &v19);
  if (v7)
  {
    v16 = v7;
    APSLogErrorAt(v7);
    if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 90 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v8 = protocolDriverReceiverAPAT_sendCCFBIfNeededInternal(a1, a3);
    if (v8)
    {
      v16 = v8;
      APSLogErrorAt(v8);
    }

    else
    {
      v9 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      v10 = *v9;
      FigSimpleMutexCheckIsLockedOnThisThread();
      mach_absolute_time();
      if ((UpTicksToMilliseconds() - v9[17]) >= 0x3E9)
      {
        if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
        {
          v11 = v9[1];
          if (v11)
          {
            v12 = *(v11 + 16);
          }

          LogPrintF();
        }

        APSRTCPCCFBGeneratorCopyRecords(v9[13], &cf);
        if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50)
        {
          if (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize())
          {
            if (cf)
            {
              v13 = *(cf + 2);
            }

            LogPrintF();
          }

          if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
          {
            v14 = v9[13];
            if (v14)
            {
              v15 = *(v14 + 24);
            }

            LogPrintF();
          }
        }

        mach_absolute_time();
        v9[17] = UpTicksToMilliseconds();
        if (cf)
        {
          CFRelease(cf);
        }
      }

      v16 = 0;
    }
  }

  v17 = *DerivedStorage;
  FigSimpleMutexUnlock();
  if (v19)
  {
    CFRelease(v19);
  }

  return v16;
}

uint64_t protocolDriverReceiverAPAT_sendCCFBIfNeededInternal(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  v48 = 0;
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = *DerivedStorage;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v6 = *(DerivedStorage + 40);
  if (!v6 || !*(v6 + 8) || !*(DerivedStorage + 128) && ((v7 = *(DerivedStorage + 120)) == 0 || *(DerivedStorage + 112) + v7 > a2))
  {
    v15 = 0;
LABEL_16:
    v16 = 0;
    goto LABEL_56;
  }

  v8 = APSRTCPCCFBGeneratorCopyRecords(*(DerivedStorage + 104), &v48);
  if (v8)
  {
    v15 = v8;
    APSLogErrorAt(v8);
    if (gLogCategory_APSAudioProtocolDriverReceiverAPAT > 90 || gLogCategory_APSAudioProtocolDriverReceiverAPAT == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_16;
    }

LABEL_75:
    LogPrintF();
    goto LABEL_16;
  }

  v46 = a2;
  v9 = CMBaseObjectGetDerivedStorage();
  v49 = 0;
  cf = 0;
  v10 = *(v9 + 104);
  v11 = MEMORY[0x277CBECE8];
  if (!v10)
  {
    APSLogErrorAt(0);
    goto LABEL_71;
  }

  if (!*(v10 + 34))
  {
LABEL_71:
    v15 = 0;
    v25 = -1;
    goto LABEL_33;
  }

  v12 = v9;
  v13 = *(v9 + 8);
  if (v13)
  {
    v14 = *(v13 + 16);
  }

  else
  {
    v14 = 0;
  }

  v17 = *(v10 + 32);
  MutableCopy = APSRTPSeqNumRangeSetCreateMutableCopy(*MEMORY[0x277CBECE8], v14, &v49);
  if (MutableCopy)
  {
    v15 = MutableCopy;
LABEL_86:
    APSLogErrorAt(MutableCopy);
    v25 = 0;
    goto LABEL_33;
  }

  MutableCopy = APSRTCPCCFBGeneratorCopyPendingSequenceNumbers(*(v12 + 104), &cf);
  if (MutableCopy)
  {
    v15 = MutableCopy;
    goto LABEL_86;
  }

  v15 = 4294960591;
  if (!v49 || !cf)
  {
    goto LABEL_85;
  }

  v19 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(cf, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_addRangeApplier, v49);
  if (v19)
  {
    v15 = v19;
LABEL_85:
    MutableCopy = v15;
    goto LABEL_86;
  }

  v20 = *(v12 + 16);
  if (v49)
  {
    v21 = *(v49 + 12);
    v22 = v21 >= v20;
    if (v21 < v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v12 + 16);
    }

    if (!v22)
    {
      v23 = *(v49 + 12);
    }
  }

  else
  {
    v23 = 0;
  }

  v15 = 0;
  v24 = v20 - v23;
  if (v24 <= 0x8000u)
  {
    v25 = (v17 + 1) | (v24 << 16);
  }

  else
  {
    v25 = -1;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v15)
  {
    APSLogErrorAt(v15);
    goto LABEL_16;
  }

  v26 = *(DerivedStorage + 20);
  v27 = *v11;
  v28 = mach_absolute_time();
  v29 = APSCompactNTPMakeWithUpTicks(v28, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  v30 = v48;
  v31 = APSRTCPCCFBBBufArrayCreateWithRecordsAndTrailingUnReceivedRange(v27, v26 & 0xFFFF0000 | 0xBAC, v26, v29, v48, v25, 1436 - *(DerivedStorage + 88), &theArray);
  if (v31)
  {
    v15 = v31;
    APSLogErrorAt(v31);
    if (gLogCategory_APSAudioProtocolDriverReceiverAPAT > 90 || gLogCategory_APSAudioProtocolDriverReceiverAPAT == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_16;
    }

    goto LABEL_75;
  }

  v16 = CFArrayCreateMutableCopy(v27, 0, theArray);
  if (v16)
  {
    v32 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    Count = CFArrayGetCount(v16);
    if (Count >= 1)
    {
      v34 = Count;
      v35 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v35);
        if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
        {
          dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
        }

        v37 = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator;
        v38 = *(v32 + 80);
        v39 = *(v32 + 96);
        v40 = *(v32 + 100);
        *(v32 + 100) = v40 + 1;
        v41 = APSSRTCPBBufCreateWithRTCPBBuf(v37, ValueAtIndex, v38, v39, v40, &cf);
        if (v41)
        {
          break;
        }

        CFArraySetValueAtIndex(v16, v35, cf);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v34 == ++v35)
        {
          goto LABEL_48;
        }
      }

      v15 = v41;
      APSLogErrorAt(v41);
      if (cf)
      {
        CFRetain(cf);
      }

      v42 = v15;
      goto LABEL_66;
    }

LABEL_48:
    v42 = (*(*(DerivedStorage + 40) + 8))(*(DerivedStorage + 48), a1, v16);
    if (v42)
    {
      v15 = v42;
LABEL_66:
      APSLogErrorAt(v42);
      goto LABEL_56;
    }

    *(DerivedStorage + 120) = 0;
    *(DerivedStorage + 128) = 0;
    if (v30 && CFDictionaryGetCount(v30[3]) || (v43 = *(DerivedStorage + 104)) != 0 && (v44 = *(v43 + 24)) != 0 && *(v44 + 24))
    {
      v15 = 0;
      *(DerivedStorage + 120) = v46;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v15 = 4294894836;
  }

LABEL_56:
  if (v48)
  {
    CFRelease(v48);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v15;
}

uint64_t protocolDriverReceiverAPAT_signalRTCPDataAvailable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  v3 = *DerivedStorage;
  FigSimpleMutexLock();
  v4 = DerivedStorage[5];
  if (!v4 || !*v4)
  {
    APSLogErrorAt(0);
    v9 = 4294894835;
LABEL_8:
    v10 = *DerivedStorage;
    FigSimpleMutexUnlock();
    return v9;
  }

  v5 = *v4;
  v6 = protocolDriverReceiverAPAT_processInputDataBBufsInternal(a1, &v12);
  if (v6)
  {
    v9 = v6;
    APSLogErrorAt(v6);
    goto LABEL_8;
  }

  v7 = *DerivedStorage;
  FigSimpleMutexUnlock();
  if (!v12)
  {
    return 0;
  }

  IsAvailable = protocolDriverReceiverAPAT_notifyClientAudioDataIsAvailable(a1);
  v9 = IsAvailable;
  if (IsAvailable)
  {
    APSLogErrorAt(IsAvailable);
  }

  return v9;
}

uint64_t protocolDriverReceiverAPAT_processInputDataBBufsInternal(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[1] = a2;
  theArray = 0;
  context[0] = a1;
  v5 = *DerivedStorage;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (a2)
  {
    v6 = DerivedStorage[3];
    if (v6 && *v6)
    {
      v7 = *v6;
      while (1)
      {
        v8 = (*DerivedStorage[3])(DerivedStorage[4], a1, &theArray, 0);
        if (v8)
        {
          break;
        }

        if (!theArray)
        {
          goto LABEL_11;
        }

        Count = CFArrayGetCount(theArray);
        if (!Count)
        {
          goto LABEL_11;
        }

        v17.length = Count;
        v17.location = 0;
        CFArrayApplyFunction(theArray, v17, protocolDriverReceiverAPAT_processInputDataBBufsApplierInternal, context);
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }
      }

      v13 = v8;
    }

    else
    {
LABEL_11:
      v10 = DerivedStorage[5];
      if (!v10 || !*v10)
      {
LABEL_20:
        v13 = 0;
        goto LABEL_21;
      }

      v11 = *v10;
      while (1)
      {
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }

        v8 = (*DerivedStorage[5])(DerivedStorage[6], a1, &theArray);
        if (v8)
        {
          break;
        }

        if (!theArray)
        {
          return 0;
        }

        v12 = CFArrayGetCount(theArray);
        if (!v12)
        {
          goto LABEL_20;
        }

        v18.length = v12;
        v18.location = 0;
        CFArrayApplyFunction(theArray, v18, protocolDriverReceiverAPAT_processInputDataBBufsApplierInternal, context);
      }

      v13 = v8;
    }

    APSLogErrorAt(v8);
  }

  else
  {
    APSLogErrorAt(0);
    v13 = 4294894835;
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v13;
}

uint64_t protocolDriverReceiverAPAT_notifyClientAudioDataIsAvailable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 56);
  if (!v3)
  {
    v5 = 4294894835;
LABEL_7:
    APSLogErrorAt(0);
    return v5;
  }

  v4 = *v3;
  if (!v4)
  {
    v5 = 4294894835;
    goto LABEL_7;
  }

  v4(a1, *(DerivedStorage + 64));
  return 0;
}

void protocolDriverReceiverAPAT_processInputDataBBufsApplierInternal(void *a1, uint64_t a2)
{
  v4 = *a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v6 = *DerivedStorage;
  FigSimpleMutexCheckIsLockedOnThisThread();
  CMGetAttachment(a1, @"arrivalTicks", 0);
  UInt64 = FigCFNumberGetUInt64();
  if (!UInt64)
  {
    UInt64 = mach_absolute_time();
  }

  v8 = APSRTCPBBufIsKnown(a1);
  if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
  }

  v9 = DerivedStorage[9];
  if (v8)
  {
    v10 = APSSRTCPBBufCopyRTCPBBuf(a1, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, v9, &cf);
    if (v10 == -6754)
    {
      ++DerivedStorage[19];
    }

    else if (!v10)
    {
      v10 = APSCompoundRTCPBBufApplyFunction(cf, *MEMORY[0x277CBECE8], protocolDriverReceiverAPAT_processInputRTCPBBufApplierInternal, *a2);
      if (!v10)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_49;
  }

  v10 = APSSRTPBBufCopyRTPBBuf(a1, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, v9, &cf);
  if (v10 == -6754)
  {
    ++DerivedStorage[18];
    goto LABEL_49;
  }

  if (v10)
  {
    goto LABEL_49;
  }

  v11 = *a2;
  v12 = cf;
  v13 = CMBaseObjectGetDerivedStorage();
  key[0] = 0;
  v24 = 0;
  v23 = 0;
  v14 = *v13;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v15 = *(v13 + 8);
  if (v15)
  {
    LODWORD(v15) = CFDictionaryGetCount(*(v15 + 24));
  }

  if (v15 < *(v13 + 16))
  {
    if (!v12 || rtpBBufUtils_validateAndGetPayloadOffset(v12, 0, &sourceBytes, &key[1]))
    {
      goto LABEL_59;
    }

    if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    SSRC = APSRTPBBufGetSSRC(v12, &v23);
    if (SSRC)
    {
      v21 = SSRC;
      goto LABEL_69;
    }

    v17 = *(v13 + 20);
    v18 = v23;
    if (!v17)
    {
      if (v23)
      {
        goto LABEL_59;
      }

      *(v13 + 20) = v23;
      v17 = v18;
    }

    if ((v17 ^ v18) < 0x10000 && (!v18 || v18 == 2989))
    {
      SSRC = APSRTPBBufGetPayloadType(v12, &v24);
      if (SSRC)
      {
        v21 = SSRC;
        goto LABEL_69;
      }

      if ((v24 & 0xFC) != 0x70)
      {
        v21 = 4294960564;
        goto LABEL_48;
      }

      SSRC = APSRTPBBufGetSeqNum(v12, key);
      if (SSRC)
      {
        v21 = SSRC;
        goto LABEL_69;
      }

      LODWORD(sourceBytes) = bswap32(*(v13 + 20));
      SSRC = CMBlockBufferReplaceDataBytes(&sourceBytes, v12, 8uLL, 4uLL);
      if (SSRC)
      {
        v21 = SSRC;
        goto LABEL_69;
      }

      if (!*(v13 + 120))
      {
        *(v13 + 120) = UInt64;
      }

      if (v23)
      {
        v19 = 0;
      }

      else
      {
        v19 = UInt64;
      }

      v20 = APSRTCPCCFBGeneratorAddSequenceNumberAndArrivalTime(*(v13 + 104), key[0], v19);
      if (v20)
      {
        if (v20 == -6730)
        {
          if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_59;
        }

        if (gLogCategory_APSAudioProtocolDriverReceiverAPAT > 90)
        {
          goto LABEL_58;
        }

        if (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }
      }

      if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

LABEL_58:
      SSRC = APSRTPSeqNumDictionarySetValue(*(v13 + 8), key[0], v12);
      if (!SSRC)
      {
        goto LABEL_59;
      }

      v21 = SSRC;
LABEL_69:
      APSLogErrorAt(SSRC);
      if (v21 == -72462)
      {
        goto LABEL_50;
      }

LABEL_48:
      v10 = v21;
LABEL_49:
      APSLogErrorAt(v10);
      goto LABEL_50;
    }

    APSLogErrorAt(0);
LABEL_59:
    **(a2 + 8) = 1;
  }

LABEL_50:
  protocolDriverReceiverAPAT_sendCCFBIfNeededInternal(*a2, UInt64);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t protocolDriverReceiverAPAT_processInputRTCPBBufApplierInternal(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v5 = *DerivedStorage;
  FigSimpleMutexCheckIsLockedOnThisThread();
  destination = 0;
  if (!a1)
  {
    PacketSenderSSRC = 4294960591;
LABEL_3:
    APSLogErrorAt(PacketSenderSSRC);
    return 0;
  }

  PacketSenderSSRC = CMBlockBufferCopyDataBytes(a1, 1uLL, 1uLL, &destination);
  if (PacketSenderSSRC)
  {
    goto LABEL_3;
  }

  if (destination == 207)
  {
    PacketSenderSSRC = APSRTCPXRBBufGetPacketSenderSSRC(a1, &v8);
    if (PacketSenderSSRC)
    {
      goto LABEL_3;
    }

    if (v8 == *(DerivedStorage + 20))
    {
      PacketSenderSSRC = APSRTCPXRBBufApplyFunction(a1, *MEMORY[0x277CBECE8], protocolDriverReceiverAPAT_processInputRTCPXRBlockBBufApplierInternal, a2);
      if (PacketSenderSSRC)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

uint64_t protocolDriverReceiverAPAT_processInputRTCPXRBlockBBufApplierInternal(OpaqueCMBlockBuffer *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v3 = *DerivedStorage;
  FigSimpleMutexCheckIsLockedOnThisThread();
  MediaSourceSSRC = APSRTCPXRRLEBlockBBufGetMediaSourceSSRC(a1, &v9);
  if (MediaSourceSSRC)
  {
    goto LABEL_5;
  }

  if (v9 == *(DerivedStorage + 20))
  {
    destination = 0;
    if (!a1)
    {
      MediaSourceSSRC = 4294960591;
      goto LABEL_5;
    }

    MediaSourceSSRC = CMBlockBufferCopyDataBytes(a1, 0, 1uLL, &destination);
    if (MediaSourceSSRC)
    {
LABEL_5:
      APSLogErrorAt(MediaSourceSSRC);
      return 0;
    }

    if (destination == 25)
    {
      v5 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      v6 = *v5;
      FigSimpleMutexCheckIsLockedOnThisThread();
      v7 = APSRTCPXRRLEBlockBBufCopySeqNumRangeSet(a1, *MEMORY[0x277CBECE8], 1, &cf);
      if (v7 || (v7 = APSRTCPCCFBGeneratorSetSendWindow(*(v5 + 104), cf), v7))
      {
        APSLogErrorAt(v7);
      }

      else
      {
        *(v5 + 128) = 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return 0;
}

uint64_t protocolDriverReceiverAPAT_setRTCPCallbacks(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *DerivedStorage;
  FigSimpleMutexLock();
  v7 = DerivedStorage[6];
  DerivedStorage[5] = a2;
  DerivedStorage[6] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t protocolDriverReceiverAPAT_signalRTPDataAvailable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = *DerivedStorage;
  FigSimpleMutexLock();
  v4 = DerivedStorage[3];
  if (!v4 || !*v4)
  {
    APSLogErrorAt(0);
    v9 = 4294894835;
LABEL_12:
    v10 = *DerivedStorage;
    FigSimpleMutexUnlock();
    return v9;
  }

  v5 = *v4;
  v6 = protocolDriverReceiverAPAT_processInputDataBBufsInternal(a1, &v12);
  if (v6)
  {
    v9 = v6;
    APSLogErrorAt(v6);
    goto LABEL_12;
  }

  v7 = *DerivedStorage;
  FigSimpleMutexUnlock();
  if (!v12)
  {
    return 0;
  }

  IsAvailable = protocolDriverReceiverAPAT_notifyClientAudioDataIsAvailable(a1);
  v9 = IsAvailable;
  if (IsAvailable)
  {
    APSLogErrorAt(IsAvailable);
  }

  return v9;
}

uint64_t protocolDriverReceiverAPAT_setRTPCallbacks(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *DerivedStorage;
  FigSimpleMutexLock();
  v7 = DerivedStorage[4];
  DerivedStorage[3] = a2;
  DerivedStorage[4] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return 0;
}

__CFString *protocolDriverReceiverAPAT_audioProtocolDriverHoseDataRTPCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APSAudioProtocolDriverReceiverAPAT <APSAudioProtocolDriverHoseDataAPATProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t protocolDriverReceiverAPAT_SetProperty()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294954509;
}

uint64_t protocolDriverReceiverAPAT_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = *DerivedStorage;
  FigSimpleMutexLock();
  if (CFEqual(a2, @"APSAudioProtocolDriverReceiverProperty_BufferFullnessCount"))
  {
    v8 = DerivedStorage[1];
    if (v8)
    {
      CFDictionaryGetCount(*(v8 + 24));
    }

    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (Int64)
    {
      goto LABEL_12;
    }

LABEL_18:
    APSLogErrorAt(0);
    v12 = 4294894836;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"APSAudioProtocolDriverReceiverProperty_RTPSignatureFailureCount"))
  {
    v9 = DerivedStorage[18];
    v10 = CFNumberCreateInt64();
    *a4 = v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!CFEqual(a2, @"APSAudioProtocolDriverReceiverProperty_RTCPSignatureFailureCount"))
    {
      v12 = 4294954509;
      goto LABEL_13;
    }

    v15 = DerivedStorage[19];
    v16 = CFNumberCreateInt64();
    *a4 = v16;
    if (!v16)
    {
      goto LABEL_18;
    }
  }

LABEL_12:
  v12 = 0;
LABEL_13:
  v13 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v12;
}

__CFString *protocolDriverReceiverAPAT_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSAudioProtocolDriverReceiverAPAT %p>", a1);
  return Mutable;
}

void protocolDriverReceiverAPAT_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = *DerivedStorage;
  FigSimpleMutexDestroy();
  v2 = DerivedStorage[1];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[13];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[10];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[8];
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t APSCryptorGetClassID()
{
  if (APSCryptorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetClassID_sRegisterOnce, &APSCryptorGetClassID_sClassID, cryptor_registerBaseClass);
  }

  return APSCryptorGetClassID_sClassID;
}

uint64_t cryptor_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&cryptor_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSCryptorGetTypeID()
{
  if (APSCryptorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetClassID_sRegisterOnce, &APSCryptorGetClassID_sClassID, cryptor_registerBaseClass);
  }

  v1 = APSCryptorGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

void APSTimeProfilerTaskBegin(CFTypeRef cf)
{
  if (profiler_getShared_sAPSTimeProfilerOnce != -1)
  {
    dispatch_once_f(&profiler_getShared_sAPSTimeProfilerOnce, &profiler_getShared_sAPSTimeProfiler, profiler_initialize);
  }

  if (profiler_getShared_sAPSTimeProfiler)
  {
    v2 = 1;
    v4[0] = 1;
    v4[1] = CFRetain(cf);
    v4[2] = mach_absolute_time();
    APSAtomicMessageQueueSendMessage(qword_27D00B918, v4);
    v3 = *(qword_27D00B920 + 16);
    atomic_compare_exchange_strong_explicit(v3 + 10, &v2, 2u, memory_order_release, memory_order_relaxed);
    if (v2 == 1)
    {
      caulk::concurrent::messenger::enqueue((v3 + 6), v3);
    }
  }
}

void profiler_initialize(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  Int64 = APSSettingsGetInt64(@"enableTimeProfiler", 0);
  *a1 = Int64 != 0;
  if (Int64)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("APSTimeProfiler", v3);
    *(a1 + 8) = v4;
    *(a1 + 16) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    v5 = *MEMORY[0x277CBECE8];
    APSAtomicMessageQueueCreate(*MEMORY[0x277CBECE8], 24, (a1 + 24));
    APSRealTimeSignalCreate(*(a1 + 8), a1, profiler_messageSignalHandler, 0, a1 + 32);
    v6 = MEMORY[0x277CBF138];
    *(a1 + 40) = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 48) = CFDictionaryCreateMutable(v5, 0, v6, 0);
    dispatch_set_context(*(a1 + 16), a1);
    dispatch_source_set_event_handler_f(*(a1 + 16), profiler_timerTick);
    dispatch_source_set_timer(*(a1 + 16), 0, 0x12A05F200uLL, 0x4C4B40uLL);
    v7 = *(a1 + 16);

    dispatch_resume(v7);
  }
}

void profiler_timerTick(uint64_t a1)
{
  CFDictionaryApplyFunction(*(a1 + 48), profiler_taskProfileLogAndFreeApplier, 0);
  v2 = *(a1 + 48);

  CFDictionaryRemoveAllValues(v2);
}

void profiler_taskProfileLogAndFreeApplier(int a1, uint64_t *a2)
{
  if (gLogCategory_APSTimeProfiler <= 50 && (gLogCategory_APSTimeProfiler != -1 || _LogCategory_Initialize()))
  {
    v3 = *a2;
    v4 = a2[2];
    UpTicksToMicroseconds();
    v5 = a2[3];
    UpTicksToMicroseconds();
    v7 = *a2;
    v6 = a2[1];
    UpTicksToMicroseconds();
    LogPrintF();
  }

  free(a2);
}

uint64_t profiler_messageSignalHandler(uint64_t a1)
{
  __dst = 0;
  key = 0;
  v19 = 0;
  v2 = *MEMORY[0x277CBECE8];
  v3 = MEMORY[0x277CBF128];
  v16 = vdupq_n_s64(1uLL).u64[0];
  while (1)
  {
    result = APSAtomicMessageQueueReadMessage(*(a1 + 24), &__dst);
    if (!result)
    {
      return result;
    }

    valuePtr = 0;
    if (__dst == 1)
    {
      v5 = key;
      if (!CFDictionaryGetValue(*(a1 + 40), key))
      {
        Mutable = CFArrayCreateMutable(v2, 0, v3);
        if (!Mutable)
        {
          goto LABEL_30;
        }

        v15 = Mutable;
        CFDictionaryAddValue(*(a1 + 40), v5, Mutable);
        CFRelease(v15);
      }

      Mutable = CFArrayAppendInt64();
      if (Mutable)
      {
        goto LABEL_30;
      }

LABEL_24:
      if (v5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (__dst != 2)
      {
        v5 = key;
        goto LABEL_24;
      }

      v5 = key;
      Mutable = CFDictionaryGetValue(*(a1 + 40), key);
      if (!Mutable)
      {
        goto LABEL_30;
      }

      v7 = Mutable;
      if (CFArrayGetCount(Mutable) <= 0)
      {
        Mutable = 0;
        goto LABEL_30;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
      Value = CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      CFArrayRemoveValueAtIndex(v7, 0);
      if (!Value)
      {
        Mutable = 0;
        goto LABEL_30;
      }

      v10 = v19 - valuePtr;
      if (v19 < valuePtr)
      {
        Mutable = 0;
        goto LABEL_30;
      }

      v11 = CFDictionaryGetValue(*(a1 + 48), v5);
      if (v11)
      {
LABEL_12:
        v12.i64[0] = v16;
        v12.i64[1] = v10;
        *v11 = vaddq_s64(*v11, v12);
        v13 = v11[1].u64[0];
        v14 = v11[1].u64[1];
        if (v13 >= v10)
        {
          v13 = v10;
        }

        if (v14 <= v10)
        {
          v14 = v10;
        }

        v11[1].i64[0] = v13;
        v11[1].i64[1] = v14;
        if (v5)
        {
LABEL_25:
          CFRelease(v5);
        }
      }

      else
      {
        Mutable = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
        if (Mutable)
        {
          v11 = Mutable;
          Mutable->i64[0] = 0;
          Mutable->i64[1] = 0;
          Mutable[1] = xmmword_22234D060;
          CFDictionaryAddValue(*(a1 + 48), v5, Mutable);
          goto LABEL_12;
        }

LABEL_30:
        APSLogErrorAt(Mutable);
        if (v5)
        {
          goto LABEL_25;
        }
      }
    }
  }
}

void APSTimeProfilerTaskEnd(CFTypeRef cf)
{
  if (profiler_getShared_sAPSTimeProfilerOnce != -1)
  {
    dispatch_once_f(&profiler_getShared_sAPSTimeProfilerOnce, &profiler_getShared_sAPSTimeProfiler, profiler_initialize);
  }

  if (profiler_getShared_sAPSTimeProfiler)
  {
    v4[0] = 2;
    v4[1] = CFRetain(cf);
    v4[2] = mach_absolute_time();
    APSAtomicMessageQueueSendMessage(qword_27D00B918, v4);
    v2 = *(qword_27D00B920 + 16);
    v3 = 1;
    atomic_compare_exchange_strong_explicit(v2 + 10, &v3, 2u, memory_order_release, memory_order_relaxed);
    if (v3 == 1)
    {
      caulk::concurrent::messenger::enqueue((v2 + 6), v2);
    }
  }
}

BOOL APSAccessControlIsValidConfig(int a1, int a2)
{
  switch(a1)
  {
    case 2:
      return 1;
    case 1:
      return (a2 - 1) < 2;
    case 0:
      return 1;
  }

  return 0;
}

uint64_t APSNetworkAddressGetTypeID()
{
  if (APSNetworkAddressGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSNetworkAddressGetTypeID_sInitOnce, &APSNetworkAddressGetTypeID_sTypeID, networkAddress_getTypeID);
  }

  return APSNetworkAddressGetTypeID_sTypeID;
}

uint64_t networkAddress_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

__CFString *networkAddress_CopyDebugDescription(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (!Mutable || (Mutable = SockAddrToString(), Mutable))
  {
    APSLogErrorAt(Mutable);
  }

  else
  {
    CFStringAppendFormat(v3, 0, @"<APSNetworkAddress %p '%s'>", a1, v6);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL networkAddress_Equal(_OWORD *a1, _OWORD *a2)
{
  v4 = CFGetTypeID(a1);
  if (APSNetworkAddressGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSNetworkAddressGetTypeID_sInitOnce, &APSNetworkAddressGetTypeID_sTypeID, networkAddress_getTypeID);
  }

  if (v4 != APSNetworkAddressGetTypeID_sTypeID)
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (APSNetworkAddressGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSNetworkAddressGetTypeID_sInitOnce, &APSNetworkAddressGetTypeID_sTypeID, networkAddress_getTypeID);
  }

  if (v5 == APSNetworkAddressGetTypeID_sTypeID && (*v9 = a1[1], *&v9[12] = *(a1 + 28), v6 = *(a2 + 28), v9[1] == BYTE1(a2[1])) && (Port = SockAddrGetPort(), Port == SockAddrGetPort()))
  {
    return SockAddrCompareAddr() == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t APSNetworkAddressCreateWithSocketAddr(uint64_t a1, __int128 *a2, void *a3)
{
  if (APSNetworkAddressGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSNetworkAddressGetTypeID_sInitOnce, &APSNetworkAddressGetTypeID_sTypeID, networkAddress_getTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    Instance[1] = 0u;
    Instance[2] = 0u;
    v7 = *a2;
    *(Instance + 28) = *(a2 + 12);
    Instance[1] = v7;
    if (gLogCategory_APSNetworkAddress <= 30 && (gLogCategory_APSNetworkAddress != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = 0;
    *a3 = v6;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  return result;
}

uint64_t APSNetworkAddressCreateWithString(uint64_t a1, CFStringRef theString, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *buffer = 0u;
  v12 = 0u;
  memset(&v10[2], 0, 28);
  if (!CFStringGetCString(theString, buffer, 128, 0x8000100u))
  {
    if (gLogCategory_APSNetworkAddress > 90 || gLogCategory_APSNetworkAddress == -1 && !_LogCategory_Initialize())
    {
      v7 = 4294960554;
      goto LABEL_5;
    }

    v7 = 4294960554;
    goto LABEL_11;
  }

  v5 = StringToSockAddr();
  if (v5)
  {
    v7 = v5;
    if (gLogCategory_APSNetworkAddress > 90 || gLogCategory_APSNetworkAddress == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_5;
    }

LABEL_11:
    LogPrintF();
    goto LABEL_5;
  }

  v10[0] = v10[2];
  *(v10 + 12) = *(&v10[2] + 12);
  v6 = APSNetworkAddressCreateWithSocketAddr(a1, v10, a3);
  v7 = v6;
  if (v6)
  {
    APSLogErrorAt(v6);
  }

LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

__n128 APSNetworkAddressGetSocketAddr@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 16);
  result = *(a1 + 28);
  *(a2 + 12) = result;
  return result;
}

uint64_t APSNetworkAddressCopyStringRepresentationWithFlags(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  if (a3)
  {
    v4 = SockAddrToString();
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }

    else
    {
      *a3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v8, 0x8000100u);
    }
  }

  else
  {
    APSLogErrorAt(0);
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t APSNetworkAddressGetCStringRepresentationWithFlags(uint64_t a1, uint64_t a2, char *a3, CFIndex a4)
{
  theString = 0;
  v6 = APSNetworkAddressCopyStringRepresentationWithFlags(a1, a2, &theString);
  if (v6)
  {
    v8 = v6;
    APSLogErrorAt(v6);
  }

  else
  {
    CString = CFStringGetCString(theString, a3, a4, 0x8000100u);
    if (CString)
    {
      v8 = 0;
    }

    else
    {
      APSLogErrorAt(CString);
      v8 = 4294960533;
    }
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v8;
}

uint64_t APSNetworkAddressCopyInterfaceName(uint64_t a1, CFStringRef *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(a1 + 17) == 30)
    {
      v3 = *(a1 + 40);
      if (!v3)
      {
        APSLogErrorAt(v3);
        result = 4294960560;
        goto LABEL_8;
      }

      if (!if_indextoname(v3, cStr))
      {
        APSLogErrorAt(0);
        result = 4294960569;
        goto LABEL_8;
      }

      v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    result = 4294960591;
  }

LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APSNetworkAddressSetInterfaceName(uint64_t a1, CFStringRef theString)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!theString)
  {
    APSLogErrorAt(0);
    goto LABEL_7;
  }

  if (*(a1 + 17) != 30)
  {
LABEL_7:
    result = 4294960591;
    goto LABEL_8;
  }

  CString = CFStringGetCString(theString, buffer, 128, 0x8000100u);
  if (CString)
  {
    v4 = if_nametoindex(buffer);
    if (v4)
    {
      v5 = v4;
      result = 0;
      *(a1 + 40) = v5;
    }

    else
    {
      APSLogErrorAt(v4);
      result = 4294960569;
    }
  }

  else
  {
    APSLogErrorAt(CString);
    result = 4294960560;
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APSRealTimePTPClockGetTypeID()
{
  if (gAPSRealTimePTPClockInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimePTPClockInitOnce, 0, _APSRealTimePTPClockGetTypeID);
  }

  return gAPSRealTimePTPClockTypeID;
}

uint64_t _APSRealTimePTPClockGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRealTimePTPClockTypeID = result;
  return result;
}

void _APSRealTimePTPClockFinalize(uint64_t a1)
{
  if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_sync_f(*v2, v2, rtPTPClockServer_deregisterClientInternal);
    *(a1 + 16) = 0;
  }
}

void rtPTPClockServer_deregisterClientInternal(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    if (gLogCategory_APSRealTimePTPClock <= 50)
    {
      if (gLogCategory_APSRealTimePTPClock != -1 || (v3 = _LogCategory_Initialize(), v2 = a1[3], v3))
      {
        LogPrintF();
        v2 = a1[3];
      }
    }

    v4 = v2 - 1;
    a1[3] = v4;
    if (!v4)
    {
      if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = a1[2];
      if (v5)
      {
        CFRelease(v5);
        a1[2] = 0;
      }

      v6 = a1[1];

      dispatch_suspend(v6);
    }
  }

  else if (gLogCategory_APSRealTimePTPClock <= 90 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t APSRealTimePTPClockCreate(CFTypeRef *a1)
{
  if (a1)
  {
    if (gAPSRealTimePTPClockInitOnce != -1)
    {
      dispatch_once_f(&gAPSRealTimePTPClockInitOnce, 0, _APSRealTimePTPClockGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      *(Instance + 16) = 0;
      if (rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServerOnce != -1)
      {
        dispatch_once_f(&rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServerOnce, &rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServer, rtPTPClockServer_init);
      }

      context = &rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServer;
      v7 = 0;
      dispatch_sync_f(rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServer, &context, rtPTPClockServer_registerClientInternal);
      v4 = v7;
      if (v7)
      {
        if (gLogCategory_APSRealTimePTPClock <= 90 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        v3[2] = &rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServer;
        if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *a1 = CFRetain(v3);
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

  return v4;
}

uint64_t rtPTPClockServer_registerClientInternal(uint64_t a1)
{
  v2 = *a1;
  memset(v8, 0, sizeof(v8));
  if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
  {
    v7 = *(v2 + 24);
    LogPrintF();
  }

  v3 = *(v2 + 24);
  if (v3)
  {
    goto LABEL_12;
  }

  if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *MEMORY[0x277CBECE8];
  result = CM8021ASClockCreate();
  if (!result)
  {
    rtPTPClockServer_getRelativeRateAndAnchor(v2, v8);
    APSRealTimeWritableWrite(*(v2 + 32), v8);
    dispatch_resume(*(v2 + 8));
    v3 = *(v2 + 24);
LABEL_12:
    result = 0;
    *(v2 + 24) = v3 + 1;
    goto LABEL_13;
  }

  if (gLogCategory_APSRealTimePTPClock <= 90)
  {
    v6 = result;
    if (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    result = v6;
  }

LABEL_13:
  *(a1 + 8) = result;
  return result;
}

void rtPTPClockServer_getRelativeRateAndAnchor(uint64_t a1, uint64_t a2)
{
  v18 = **&MEMORY[0x277CC0898];
  v17 = v18;
  v16 = v18;
  v15 = v18;
  v13 = 0;
  v14 = 0;
  do
  {
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v18, HostTimeClock);
    CMTimeMake(&rhs, 1, 1);
    lhs = v18;
    CMTimeAdd(&v17, &lhs, &rhs);
    v5 = *(a1 + 16);
    rhs = v18;
    CM8021ASClockGetClockTimeForHostTime();
    v6 = *(a1 + 16);
    rhs = v17;
    CM8021ASClockGetClockTimeForHostTime();
    v7 = v14;
  }

  while (v14 != v13);
  *a2 = v18;
  v8 = *&v16.value;
  *(a2 + 24) = *&v16.value;
  epoch = v16.epoch;
  *(a2 + 40) = v16.epoch;
  *(a2 + 48) = v7;
  lhs = v15;
  *&v10.value = v8;
  v10.epoch = epoch;
  CMTimeSubtract(&rhs, &lhs, &v10);
  *(a2 + 56) = CMTimeGetSeconds(&rhs);
}

void rtPTPClockServer_init(dispatch_source_t *a1)
{
  APSRealTimeWritableCreate(0, 0x40uLL, a1 + 4);
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("APSRealTimePTPClockServer", v2);
  *a1 = v3;
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  a1[1] = v4;
  dispatch_source_set_timer(v4, 0, 0x1DCD6500uLL, 0xF4240uLL);
  dispatch_set_context(a1[1], a1);
  dispatch_source_set_event_handler_f(a1[1], rtPTPClockServer_updateRelativeRateAndAnchorTime);
  if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t rtPTPClockServer_updateRelativeRateAndAnchorTime(uint64_t a1)
{
  memset(v3, 0, sizeof(v3));
  rtPTPClockServer_getRelativeRateAndAnchor(a1, v3);
  return APSRealTimeWritableWrite(*(a1 + 32), v3);
}

uint64_t APSRealTimePTPClockGetEstimatedPTPTimeForHostTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, CMTime *a4@<X8>)
{
  v6 = *(a1 + 16);
  *&v11.value = *a2;
  v11.epoch = *(a2 + 16);
  v7 = MEMORY[0x277CC0898];
  *&a4->value = *MEMORY[0x277CC0898];
  a4->epoch = *(v7 + 16);
  v18 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v8 = APSRealTimeWritableRead(*(v6 + 32), __dst);
  if (v8)
  {
    return APSLogErrorAt(v8);
  }

  lhs = v11;
  rhs = __dst[0];
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeMultiplyByFloat64(&lhs, &time, *(&v18 + 1));
  time = __dst[1];
  result = CMTimeAdd(a4, &time, &lhs);
  if (gLogCategory_APSRealTimePTPClock <= 30)
  {
    if (gLogCategory_APSRealTimePTPClock != -1 || (result = _LogCategory_Initialize(), result))
    {
      v13 = 0;
      memset(&lhs, 0, sizeof(lhs));
      v10 = *(v6 + 16);
      time = v11;
      result = CM8021ASClockGetClockTimeForHostTime();
      if (gLogCategory_APSRealTimePTPClock <= 30)
      {
        if (gLogCategory_APSRealTimePTPClock != -1 || (result = _LogCategory_Initialize(), result))
        {
          time = v11;
          CMTimeGetSeconds(&time);
          time = *a4;
          CMTimeGetSeconds(&time);
          time = lhs;
          CMTimeGetSeconds(&time);
          if (v18 == v13)
          {
            rhs = *a4;
            v12 = lhs;
            CMTimeSubtract(&time, &rhs, &v12);
            CMTimeGetSeconds(&time);
          }

          result = LogPrintF();
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v18;
  }

  return result;
}

uint64_t APSRealTimePTPClockGetEstimatedHostTimeForPTPTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, CMTime *a4@<X8>)
{
  v6 = *(a1 + 16);
  *&v11.value = *a2;
  v11.epoch = *(a2 + 16);
  v7 = MEMORY[0x277CC0898];
  *&a4->value = *MEMORY[0x277CC0898];
  a4->epoch = *(v7 + 16);
  v18 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v8 = APSRealTimeWritableRead(*(v6 + 32), __dst);
  if (v8)
  {
    return APSLogErrorAt(v8);
  }

  lhs = v11;
  rhs = __dst[1];
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeMultiplyByFloat64(&lhs, &time, 1.0 / *(&v18 + 1));
  time = __dst[0];
  result = CMTimeAdd(a4, &time, &lhs);
  if (gLogCategory_APSRealTimePTPClock <= 30)
  {
    if (gLogCategory_APSRealTimePTPClock != -1 || (result = _LogCategory_Initialize(), result))
    {
      v13 = 0;
      memset(&lhs, 0, sizeof(lhs));
      v10 = *(v6 + 16);
      time = v11;
      result = CM8021ASClockGetHostTimeForClockTime();
      if (gLogCategory_APSRealTimePTPClock <= 30)
      {
        if (gLogCategory_APSRealTimePTPClock != -1 || (result = _LogCategory_Initialize(), result))
        {
          time = v11;
          CMTimeGetSeconds(&time);
          time = *a4;
          CMTimeGetSeconds(&time);
          time = lhs;
          CMTimeGetSeconds(&time);
          if (v18 == v13)
          {
            rhs = *a4;
            v12 = lhs;
            CMTimeSubtract(&time, &rhs, &v12);
            CMTimeGetSeconds(&time);
          }

          result = LogPrintF();
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v18;
  }

  return result;
}

uint64_t APSRealTimeSafeSemaphoreCreate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (APSRealTimeSafeSemaphoreGetTypeID::sRegisterAPSRealTimeSafeSemaphoreOnce != -1)
    {
      dispatch_once_f(&APSRealTimeSafeSemaphoreGetTypeID::sRegisterAPSRealTimeSafeSemaphoreOnce, 0, registerAPSRealTimeSafeSemaphore);
    }

    if (_CFRuntimeCreateInstance())
    {
      operator new();
    }

    APSLogErrorAt(0);
    return 4294960568;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t registerAPSRealTimeSafeSemaphore(void *a1)
{
  sAPSRealTimeSafeSemaphoreClass = 0;
  *algn_27D00B998 = "APSRealTimeSafeSemaphore";
  qword_27D00B9A0 = APSRealTimeSafeSemaphoreInit;
  unk_27D00B9A8 = 0;
  qword_27D00B9B0 = APSRealTimeSafeSemaphoreFinalize;
  unk_27D00B9B8 = 0;
  qword_27D00B9C0 = 0;
  unk_27D00B9C8 = 0;
  qword_27D00B9D0 = APSRealTimeSafeSemaphoreCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sAPSRealTimeSafeSemaphoreID = result;
  return result;
}

__CFString *APSRealTimeSafeSemaphoreCopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v1, 0);
  CFStringAppendFormat(Mutable, 0, @"APSRealTimeSafeSemaphore");
  return Mutable;
}

uint64_t APSRealTimeSafeSemaphoreFinalize(void *a1)
{
  result = a1[2];
  if (result)
  {
    MEMORY[0x223DB5630]();

    JUMPOUT(0x223DB5660);
  }

  return result;
}

uint64_t APSRealTimeSafeSemaphoreGetTypeID()
{
  if (APSRealTimeSafeSemaphoreGetTypeID::sRegisterAPSRealTimeSafeSemaphoreOnce != -1)
  {
    dispatch_once_f(&APSRealTimeSafeSemaphoreGetTypeID::sRegisterAPSRealTimeSafeSemaphoreOnce, 0, registerAPSRealTimeSafeSemaphore);
  }

  return sAPSRealTimeSafeSemaphoreID;
}

uint64_t APSDynamicLatencyManagerGetTypeID()
{
  if (gAPSDynamicLatencyManagerInitOnce != -1)
  {
    dispatch_once_f(&gAPSDynamicLatencyManagerInitOnce, 0, _APSDynamicLatencyManagerGetTypeID);
  }

  return gAPSDynamicLatencyManagerTypeID;
}

uint64_t _APSDynamicLatencyManagerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSDynamicLatencyManagerTypeID = result;
  return result;
}

uint64_t _APSDynamicLatencyManagerFinalize(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[16];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[10];
  result = FigSimpleMutexDestroy();
  if (gLogCategory_APSDynamicLatencyManager <= 50)
  {
    if (gLogCategory_APSDynamicLatencyManager != -1)
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

uint64_t _APSDynamicLatencyManagerCreate(const void *a1, const void *a2, unint64_t a3, unint64_t a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2 || !a3 || a4 >= a3 || !a1 || !a10)
  {
    APSLogErrorAt(0);
    return -6705;
  }

  v38 = a6;
  if (gAPSDynamicLatencyManagerInitOnce != -1)
  {
    dispatch_once_f(&gAPSDynamicLatencyManagerInitOnce, 0, _APSDynamicLatencyManagerGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return -6728;
  }

  v19 = Instance;
  v37 = a8;
  *(Instance + 16) = 0u;
  v20 = Instance + 16;
  *(Instance + 128) = 0;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  v21 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v20 + 104) = Mutable;
  if (!Mutable || (v23 = CFDictionaryCreateMutable(v21, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(v19 + 128) = v23) == 0) || (v24 = FigSimpleMutexCreate(), (*(v19 + 80) = v24) == 0))
  {
    APSLogErrorAt(0);
    v39 = -6728;
LABEL_38:
    CFRelease(v19);
    return v39;
  }

  *(v19 + 16) = 0x500000E10;
  *(v19 + 24) = xmmword_22234D070;
  *(v19 + 40) = 0x4024000000000000;
  if (a5)
  {
    if (CFDictionaryContainsKey(a5, @"MinSessionDurationSecs"))
    {
      *(v19 + 20) = CFDictionaryGetInt64Ranged();
    }

    if (CFDictionaryContainsKey(a5, @"PromotionWindowSecs"))
    {
      *v20 = CFDictionaryGetInt64Ranged();
    }

    if (CFDictionaryContainsKey(a5, @"GlitchesPerWindowToPromoteTier"))
    {
      CFDictionaryGetDouble();
      *(v19 + 24) = v25;
    }

    if (CFDictionaryContainsKey(a5, @"GlitchesPerWindowToDemoteTier"))
    {
      CFDictionaryGetDouble();
      *(v19 + 32) = v26;
    }

    if (CFDictionaryContainsKey(a5, @"GlitchesPerWindowToWorstTier"))
    {
      CFDictionaryGetDouble();
      *(v19 + 40) = v27;
    }
  }

  v28 = dynamicLatencyManager_SetTiers(v19, a1, a2, a3, a4);
  v39 = v28;
  if (v28)
  {
    APSLogErrorAt(v28);
    goto LABEL_38;
  }

  *(v19 + 48) = v38;
  *(v19 + 56) = a7;
  *(v19 + 64) = v37;
  *(v19 + 72) = a9;
  *a10 = v19;
  if (gLogCategory_APSDynamicLatencyManager <= 50)
  {
    if (gLogCategory_APSDynamicLatencyManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v39;
      }

      v19 = *a10;
    }

    v36 = *(v19 + 40);
    v35 = *(v19 + 24);
    v33 = *(v19 + 16);
    v34 = *(v19 + 20);
    v32 = *(*(v19 + 96) + 4 * a4);
    v31 = *(v19 + 88);
    LogPrintF();
  }

  return v39;
}

uint64_t dynamicLatencyManager_SetTiers(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10 = *(a1 + 80);
  FigSimpleMutexLock();
  CFDictionaryRemoveAllValues(*(a1 + 120));
  CFDictionaryRemoveAllValues(*(a1 + 128));
  v11 = *(a1 + 88);
  *(a1 + 88) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 96);
  if (v12)
  {
    free(v12);
  }

  *(a1 + 104) = a4;
  v13 = 4 * a4;
  v14 = malloc_type_malloc(v13, 0x100004052888210uLL);
  *(a1 + 96) = v14;
  if (v14)
  {
    memcpy(v14, a3, v13);
    v15 = 0;
    *(a1 + 112) = a5;
  }

  else
  {
    APSLogErrorAt(0);
    v15 = 4294960568;
  }

  v16 = *(a1 + 80);
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t _APSDynamicLatencyManagerUpdateTiers(uint64_t a1, const void *a2, const void *a3, unint64_t a4, unint64_t a5)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1 && a2 && a3 && a4 && a5 < a4)
  {
    v10 = dynamicLatencyManager_SetTiers(a1, a2, a3, a4, a5);
    v11 = v10;
    if (v10)
    {
      APSLogErrorAt(v10);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v11;
}

uint64_t APSDynamicLatencyManagerGetRef(unsigned int a1)
{
  if (a1 < 2)
  {
    if (a1)
    {
      if (APSDynamicLatencyManagerGetRef_sInitOnce == -1)
      {
        return APSDynamicLatencyManagerGetRef_sAPSDynamicLatencyManager;
      }

      v2 = dynamicLatencyManager_GetSCR;
    }

    else
    {
      if (APSDynamicLatencyManagerGetRef_sInitOnce == -1)
      {
        return APSDynamicLatencyManagerGetRef_sAPSDynamicLatencyManager;
      }

      v2 = dynamicLatencyManager_GetLLA;
    }

    dispatch_once_f(&APSDynamicLatencyManagerGetRef_sInitOnce, &APSDynamicLatencyManagerGetRef_sAPSDynamicLatencyManager, v2);
    return APSDynamicLatencyManagerGetRef_sAPSDynamicLatencyManager;
  }

  APSLogErrorAt(0);
  return 0;
}

void dynamicLatencyManager_GetSCR(uint64_t *a1)
{
  v13 = 0;
  v12 = 0;
  v2 = &kDLMConfigurations;
  v10 = 0;
  v11 = 0;
  v3 = 7;
  v9 = 0;
  while (1)
  {
    v4 = *v2;
    if (FigCFEqual())
    {
      break;
    }

    v2 += 5;
    if (!--v3)
    {
      v2 = 0;
      break;
    }
  }

  if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    v8 = *v2;
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    dynamicLatencyManager_GetCreationOptions(1, &v13, &v12, &v11, &v10, &v9);
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    v7 = _APSDynamicLatencyManagerCreate(*v2, v2 + 1, v2[4], 0, v6, dynamicLatencyManager_LatencyTierChangeCallback, 0, dynamicLatencyManager_SetVariantCallback, 0, a1);
    if (v7)
    {
      APSLogErrorAt(v7);
    }

    else
    {
      dynamicLatencyManager_SetVariantCallback(*a1, *v2);
      dynamicLatencyManager_LatencyTierChangeCallback(*a1);
    }

    CFRelease(v6);
  }

  else
  {

    APSLogErrorAt(0);
  }
}

void dynamicLatencyManager_GetCreationOptions(int a1, _DWORD *a2, _DWORD *a3, double *a4, double *a5, double *a6)
{
  v18 = -6705;
  *a2 = APSSettingsGetIntWithOverrideAndDefault(@"DLMMinSessionDurationSec", 0, 5);
  if (a1)
  {
    *a3 = APSSettingsGetIntWithOverrideAndDefault(@"scrDLMPromotionWindowSec", 0, 60);
    APSSettingsGetDouble(@"scrDLMGlitchesPerWindowToPromoteTier", &v18);
    if (v18)
    {
      v11 = 0.0;
    }

    *a4 = v11;
    APSSettingsGetDouble(@"scrDLMGlitchesPerWindowToDemoteTier", &v18);
    if (v18)
    {
      v12 = 0.2;
    }

    *a5 = v12;
    APSSettingsGetDouble(@"scrDLMGlitchesPerWindowToWorstTier", &v18);
    v14 = v18 == 0;
    v15 = 1.0;
  }

  else
  {
    *a3 = APSSettingsGetIntWithOverrideAndDefault(@"llaDLMPromotionWindowSec", 0, 3600);
    APSSettingsGetDouble(@"llaDLMGlitchesPerWindowToPromoteTier", &v18);
    if (v18)
    {
      v16 = 0.0;
    }

    *a4 = v16;
    APSSettingsGetDouble(@"llaDLMGlitchesPerWindowToDemoteTier", &v18);
    if (v18)
    {
      v17 = 1.0;
    }

    *a5 = v17;
    APSSettingsGetDouble(@"llaDLMGlitchesPerWindowToWorstTier", &v18);
    v14 = v18 == 0;
    v15 = 10.0;
  }

  if (!v14)
  {
    v13 = v15;
  }

  *a6 = v13;
}

uint64_t dynamicLatencyManager_SetVariantCallback(uint64_t a1, const void *a2)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(&kDLMConfigurations + v3);
      if (FigCFEqual())
      {
        break;
      }

      v3 += 40;
      if (v3 == 120)
      {
        return 0;
      }
    }

    if (CFEqual(@"llaDLMVariant", @"wirelessdisplay_enable_timestamps_diagnostic"))
    {
      v5 = @"com.apple.coremedia";
    }

    else
    {
      v5 = @"com.apple.airplay";
    }

    CFPreferencesSetAppValue(@"llaDLMVariant", a2, v5);
    if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    APSLogErrorAt(0);
  }

  return 0;
}

uint64_t dynamicLatencyManager_LatencyTierChangeCallback(uint64_t a1)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (dynamicLatencyManager_IsLLAVariant(*(a1 + 88)))
  {
    APSSettingsSetInt64(@"llaDLMTierIndex");
    if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return 0;
}

uint64_t dynamicLatencyManager_IsLLAVariant(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    while (1)
    {
      v2 = *(&kDLMConfigurations + v1);
      if (FigCFEqual())
      {
        break;
      }

      v1 += 40;
      if (v1 == 120)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

void dynamicLatencyManager_GetLLA(uint64_t *a1)
{
  v21 = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0.0;
  v2 = &kDLMConfigurations;
  v17 = 0;
  v3 = 7;
  while (1)
  {
    v4 = *v2;
    if (FigCFEqual())
    {
      break;
    }

    v2 += 5;
    if (!--v3)
    {
      v2 = 0;
      break;
    }
  }

  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = APSSettingsCopyValueEx(@"llaDLMVariant", 0, &v21 + 1);
  v6 = v5;
  v7 = 0;
  if (HIDWORD(v21) || !v5)
  {
LABEL_34:
    if (v6)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v8 = CFGetTypeID(v5);
  if (v8 != CFStringGetTypeID() || CFStringGetLength(v6) < 1)
  {
    v7 = 0;
    goto LABEL_38;
  }

  if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = &kDLMConfigurations;
  v10 = 7;
  do
  {
    v11 = *v9;
    if (FigCFEqual())
    {
      if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      Int64 = APSSettingsGetInt64(@"llaDLMTierIndex", &v21 + 1);
      if (!HIDWORD(v21))
      {
        v7 = Int64;
        if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v7 < 5)
        {
          goto LABEL_33;
        }

        APSLogErrorAt(0);
        if (gLogCategory_APSDynamicLatencyManager <= 90 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      v7 = 0;
LABEL_33:
      v2 = v9;
      goto LABEL_34;
    }

    v9 += 5;
    --v10;
  }

  while (v10);
  APSLogErrorAt(0);
  if (gLogCategory_APSDynamicLatencyManager <= 90 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = 0;
  if (v6)
  {
LABEL_38:
    CFRelease(v6);
  }

LABEL_39:
  if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    v16 = *v2;
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v14 = Mutable;
    dynamicLatencyManager_GetCreationOptions(0, &v21, &v20, &v19, &v18, &v17);
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    v15 = _APSDynamicLatencyManagerCreate(*v2, v2 + 1, v2[4], v7, v14, dynamicLatencyManager_LatencyTierChangeCallback, 0, dynamicLatencyManager_SetVariantCallback, 0, a1);
    if (v15)
    {
      APSLogErrorAt(v15);
    }

    else
    {
      dynamicLatencyManager_SetVariantCallback(*a1, *v2);
      dynamicLatencyManager_LatencyTierChangeCallback(*a1);
    }

    CFRelease(v14);
  }

  else
  {
    APSLogErrorAt(0);
  }
}

uint64_t APSDynamicLatencyManagerSetVariant(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v4 = *(a1 + 80);
  FigSimpleMutexLock();
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 80);
  FigSimpleMutexUnlock();
  if (FigCFEqual())
  {
    if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_38;
  }

  v8 = 7;
  v9 = &kDLMConfigurations;
  while (1)
  {
    v10 = *v9;
    if (FigCFEqual())
    {
      break;
    }

    v9 += 5;
    if (!--v8)
    {
      APSLogErrorAt(0);
      v11 = 4294960569;
      goto LABEL_39;
    }
  }

  v12 = dynamicLatencyManager_SetTiers(a1, v10, v9 + 1, 5, 0);
  if (v12)
  {
    v11 = v12;
LABEL_36:
    APSLogErrorAt(v12);
    goto LABEL_39;
  }

  for (i = 0; i != 120; i += 40)
  {
    v14 = *(&kDLMConfigurations + i);
    if (FigCFEqual())
    {
      v17 = 0;
      goto LABEL_25;
    }
  }

  v15 = 0;
  while (1)
  {
    v16 = *(&kDLMConfigurations + v15 + 120);
    if (FigCFEqual())
    {
      break;
    }

    v15 += 40;
    if (v15 == 160)
    {
      APSLogErrorAt(0);
      v11 = 4294960591;
      goto LABEL_39;
    }
  }

  v17 = 1;
LABEL_25:
  dynamicLatencyManager_GetCreationOptions(v17, (a1 + 20), (a1 + 16), (a1 + 24), (a1 + 32), (a1 + 40));
  v18 = *(a1 + 64);
  if (v18)
  {
    v12 = v18(a1, a2, *(a1 + 72));
    if (v12)
    {
      v11 = v12;
      goto LABEL_36;
    }
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    v12 = v19(a1, *(v9 + 2), 0, *(a1 + 56));
    v11 = v12;
    if (!v12)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_38:
  v11 = 0;
LABEL_39:
  if (v6)
  {
    CFRelease(v6);
  }

  return v11;
}

uint64_t APSDynamicLatencyManagerAddPerformanceReport(uint64_t a1, const __CFDictionary *a2)
{
  v27 = 0;
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a1)
  {
    BooleanIfPresent = 0;
    goto LABEL_42;
  }

  if (!a2)
  {
    BooleanIfPresent = 0;
    goto LABEL_42;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  Int64 = CFDictionaryGetInt64();
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (!BooleanIfPresent)
  {
LABEL_42:
    APSLogErrorAt(BooleanIfPresent);
    return -6705;
  }

  v7 = CFDictionaryGetInt64();
  CFDictionaryGetInt64();
  Value = CFDictionaryGetValue(a2, @"GlitchDurationHistogram");
  if (!Value)
  {
    APSLogErrorAt(0);
    return -6727;
  }

  if (v7 < *(a1 + 20))
  {
    if (gLogCategory_APSDynamicLatencyManager <= 50)
    {
      if (gLogCategory_APSDynamicLatencyManager == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return v27;
        }

        v25 = *(a1 + 20);
      }

      LogPrintF();
    }
  }

  else
  {
    v9 = Value;
    v10 = *(a1 + 80);
    FigSimpleMutexLock();
    if (*(a1 + 88))
    {
      v11 = 0;
      while (1)
      {
        v12 = *(&kDLMConfigurations + v11 + 120);
        if (FigCFEqual())
        {
          break;
        }

        v11 += 40;
        if (v11 == 160)
        {
          goto LABEL_16;
        }
      }

      if (gLogCategory_APSDynamicLatencyManager > 50 || gLogCategory_APSDynamicLatencyManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_61;
      }

LABEL_55:
      LogPrintF();
      goto LABEL_61;
    }

    APSLogErrorAt(0);
LABEL_16:
    if (CFDictionaryContainsKey(*(a1 + 128), TypedValue))
    {
      v13 = *(a1 + 128);
      if (CFDictionaryGetInt64() == Int64)
      {
        if (gLogCategory_APSDynamicLatencyManager > 50 || gLogCategory_APSDynamicLatencyManager == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_61;
        }

        goto LABEL_55;
      }

      CFDictionaryRemoveAllValues(*(a1 + 128));
    }

    v14 = CFDictionaryGetValue(*(a1 + 120), TypedValue);
    if (!v14 || (v15 = CFRetain(v14)) == 0)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (!Mutable)
      {
        APSLogErrorAt(0);
        v27 = -6728;
LABEL_61:
        v26 = *(a1 + 80);
        FigSimpleMutexUnlock();
        return v27;
      }

      v15 = Mutable;
      CFDictionarySetValue(*(a1 + 120), TypedValue, Mutable);
    }

    if (CFArrayGetCount(v15) && CFArrayGetValueAtIndex(v15, 0) && Int64 == CFDictionaryGetInt64())
    {
      CFArraySetValueAtIndex(v15, 0, a2);
    }

    else
    {
      CFArrayInsertValueAtIndex(v15, 0, a2);
    }

    v17 = 0;
    for (i = 0; i < CFArrayGetCount(v15) && v17 < *(a1 + 16); ++i)
    {
      CFArrayGetValueAtIndex(v15, i);
      v17 += CFDictionaryGetInt64();
    }

    if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
    {
      v19 = v9[2];
      FigSimpleMutexLock();
      v20 = v9[2];
      v21 = *(v9 + 31);
      FigSimpleMutexUnlock();
      CFArrayGetCount(v15);
      CFArrayGetCount(v15);
      LogPrintF();
    }

    if (i < CFArrayGetCount(v15))
    {
      v28.length = CFArrayGetCount(v15) - i;
      v28.location = i;
      CFArrayReplaceValues(v15, v28, 0, 0);
    }

    v22 = *(a1 + 80);
    FigSimpleMutexUnlock();
    CFRelease(v15);
  }

  return v27;
}

uint64_t APSDynamicLatencyManagerUpdate(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 16);
  context = xmmword_22234D080;
  LODWORD(context) = v4;
  v17 = 0.0;
  v18 = 0x7FFFFFFFLL;
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    v5 = *(a1 + 80);
    FigSimpleMutexLock();
    if (!CFDictionaryGetCount(*(a1 + 120)))
    {
      goto LABEL_30;
    }

    v6 = *(a1 + 112);
    CFDictionaryApplyFunction(*(a1 + 120), dynamicLatencyManager_EndpointPerformance, &context);
    if (v6)
    {
      if (v17 > *(a1 + 40))
      {
        v7 = 0;
        goto LABEL_15;
      }

      if (v17 > *(a1 + 32))
      {
        v7 = v6 - 1;
        goto LABEL_15;
      }
    }

    if (v6 < *(a1 + 104) - 1 && *(&context + 1) >= *(a1 + 16))
    {
      v7 = v6;
      if (v17 <= *(a1 + 24))
      {
        if (v18 <= (*(*(a1 + 96) + 4 * v6) - *(*(a1 + 96) + 4 * (v6 + 1))))
        {
          v7 = v6;
        }

        else
        {
          v7 = v6 + 1;
        }
      }
    }

    else
    {
      v7 = v6;
    }

LABEL_15:
    if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
    {
      v8 = *(a1 + 96);
      v15 = *(v8 + 4 * v7);
      v14 = *(v8 + 4 * v6);
      LogPrintF();
    }

    if (v6 != v7)
    {
      *(a1 + 112) = v7;
      v9 = *(*(a1 + 96) + 4 * v7);
      if (dynamicLatencyManager_IsLLAVariant(*(a1 + 88)))
      {
        CFDictionaryApplyFunction(*(a1 + 120), dynamicLatencyManager_AddSessionToDenyList, a1);
      }

      else if (v7 < v6)
      {
        CFDictionaryRemoveAllValues(*(a1 + 120));
      }

      CFDictionaryRemoveAllValues(*(a1 + 120));
      *a2 = 1;
      v10 = *(a1 + 80);
      FigSimpleMutexUnlock();
      v11 = *(a1 + 48);
      if (v11)
      {
        return v11(a1, v9, v7, *(a1 + 56));
      }

      return 0;
    }

LABEL_30:
    *a2 = 0;
    v13 = *(a1 + 80);
    FigSimpleMutexUnlock();
    return 0;
  }

  APSLogErrorAt(0);
  return 4294960591;
}

void dynamicLatencyManager_AddSessionToDenyList(const void *a1, CFArrayRef theArray, uint64_t a3)
{
  if (CFArrayGetCount(theArray))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      v7 = *(a3 + 128);
      Value = CFDictionaryGetValue(ValueAtIndex, @"SessionID");

      CFDictionarySetValue(v7, a1, Value);
    }
  }
}

uint64_t dynamicLatencyManager_EndpointPerformance(int a1, CFArrayRef theArray, uint64_t a3)
{
  if (theArray && a3 && CFArrayGetCount(theArray))
  {
    return FigCFArrayApplyFunction();
  }

  return APSLogErrorAt(0);
}

uint64_t dynamicLatencyManager_SessionPerformance(const __CFDictionary *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    *a2 += CFDictionaryGetInt64();
    Int64 = CFDictionaryGetInt64();
    if ((Int64 & 0x8000000000000000) == 0)
    {
      *(a2 + 16) += Int64;
      ++*(a2 + 24);
    }

    Value = CFDictionaryGetValue(a1, @"GlitchDurationHistogram");
    v6 = &qword_22234D580;
    v7 = 3;
    do
    {
      result = APSStatsHistogramGetSampleCountInRange(Value, *(v6 - 2), *(v6 - 1));
      v9 = *v6;
      v6 += 3;
      *(a2 + 8) = *(a2 + 8) + result * v9;
      --v7;
    }

    while (v7);
  }

  else
  {

    return APSLogErrorAt(0);
  }

  return result;
}

uint64_t APSDynamicLatencyManagerReset(uint64_t a1, BOOL *a2)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1 && a2)
  {
    if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
    {
      CFDictionaryGetCount(*(a1 + 120));
      LogPrintF();
    }

    v4 = *(a1 + 80);
    FigSimpleMutexLock();
    CFDictionaryRemoveAllValues(*(a1 + 120));
    CFDictionaryRemoveAllValues(*(a1 + 128));
    v5 = *(a1 + 112);
    *(a1 + 112) = 0;
    v6 = *(a1 + 80);
    FigSimpleMutexUnlock();
    if (v5 && (v7 = *(a1 + 48)) != 0 && (v8 = v7(a1, **(a1 + 96), 0, *(a1 + 56)), v8))
    {
      v9 = v8;
      APSLogErrorAt(v8);
    }

    else
    {
      v9 = 0;
      *a2 = v5 != 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v9;
}

uint64_t APSDynamicLatencyManagerGetLatencyTier(void *a1, _DWORD *a2, void *a3)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1 && a2 && a3)
  {
    v6 = a1[10];
    FigSimpleMutexLock();
    v7 = a1[14];
    *a2 = *(a1[12] + 4 * v7);
    *a3 = v7;
    v8 = a1[10];
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSDisplayUtilsGetAggregatedDisplayProtectionBits()
{
  if (protectionBitsFromPrefsIfPresent_onceToken != -1)
  {
    dispatch_once(&protectionBitsFromPrefsIfPresent_onceToken, &__block_literal_global_1152);
  }

  if (protectionBitsFromPrefsIfPresent_isPrefPresent)
  {
    return protectionBitsFromPrefsIfPresent_protectionBits;
  }

  v1 = *MEMORY[0x277CBECE8];
  DisplayList = IOMobileFramebufferCreateDisplayList();
  if (DisplayList)
  {
    v3 = DisplayList;
    Count = CFArrayGetCount(DisplayList);
    if (Count < 1)
    {
      CFRelease(v3);
    }

    else
    {
      v5 = Count;
      v6 = 0;
      v7 = 0;
      v8 = -1;
      do
      {
        v9 = *CFArrayGetValueAtIndex(v3, v7);
        if (!IOMobileFramebufferOpenByName())
        {
          ProtectionOptions = IOMobileFramebufferGetProtectionOptions();
          v11 = 0;
          if (ProtectionOptions)
          {
            v11 = -1;
          }

          v8 &= v11;
          if (!ProtectionOptions)
          {
            ++v6;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      CFRelease(v3);
      if (v6)
      {
        return FVDUtilsSupportedProtectionFlags();
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
  }

  return 0;
}

uint64_t __protectionBitsFromPrefsIfPresent_block_invoke()
{
  result = APSSettingsGetUInt64IfPresent(@"fakeDisplayProtectionBits", &protectionBitsFromPrefsIfPresent_protectionBits);
  protectionBitsFromPrefsIfPresent_isPrefPresent = result;
  if (result)
  {
    if (gLogCategory_APSDisplayUtils <= 50)
    {
      if (gLogCategory_APSDisplayUtils != -1)
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

uint64_t APSDisplayUtilsCopyDisplayCapabilities(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (gLogCategory_APSDisplayUtils <= 50 && (gLogCategory_APSDisplayUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (APSDisplayUtilsGetAggregatedDisplayProtectionBits() && gLogCategory_APSDisplayUtils <= 50 && (gLogCategory_APSDisplayUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetInt64();
  if (gLogCategory_APSDisplayUtils <= 30 && (gLogCategory_APSDisplayUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *a2 = Mutable;
  return 0;
}

uint64_t APSWiFiTrafficRegistrationGetTypeID()
{
  if (gAPSWiFiTrafficRegistrationInitOnce != -1)
  {
    dispatch_once_f(&gAPSWiFiTrafficRegistrationInitOnce, 0, _APSWiFiTrafficRegistrationGetTypeID);
  }

  return gAPSWiFiTrafficRegistrationTypeID;
}

uint64_t _APSWiFiTrafficRegistrationGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSWiFiTrafficRegistrationTypeID = result;
  return result;
}

void _APSWiFiTrafficRegistrationFinalize(uint64_t a1)
{
  v8 = 0;
  [*(a1 + 40) clearTrafficRegistration:*(a1 + 32) error:&v8];
  if (v8)
  {
    v2 = **(a1 + 56);
    if (v2 <= 90)
    {
      if (v2 != -1)
      {
LABEL_4:
        v7 = *(a1 + 48);
        LogPrintF();
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        v6 = *(a1 + 56);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  v3 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___APSWiFiRegistrationPostRegistrationRemovedEvent_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v3, block);
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 24) = 0;
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    _Block_release(v5);
    *(a1 + 16) = 0;
  }
}

uint64_t APSWiFiTrafficRegistrationCreate(void *a1, void *a2, unsigned int *a3, int a4, int a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{
  v45 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v43 = 0u;
  v44 = 0u;
  *label = 0u;
  v42 = 0u;
  if (!a1 || !a2 || !a8)
  {
    APSLogErrorAt(0);
    v19 = 0;
    v20 = 0;
    v28 = 4294960591;
    goto LABEL_38;
  }

  if (gAPSWiFiTrafficRegistrationInitOnce != -1)
  {
    dispatch_once_f(&gAPSWiFiTrafficRegistrationInitOnce, 0, _APSWiFiTrafficRegistrationGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    v19 = 0;
    v20 = 0;
    v28 = 4294960568;
    goto LABEL_38;
  }

  v17 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = a6;
  *(Instance + 56) = a7;
  v36 = Instance;
  SNPrintF();
  v18 = dispatch_queue_create(label, 0);
  *(v17 + 24) = v18;
  if (!v18)
  {
    APSLogErrorAt(0);
    v20 = 0;
    v19 = 0;
LABEL_46:
    v28 = 4294960568;
    goto LABEL_37;
  }

  v19 = [objc_alloc(MEMORY[0x277D7BB10]) initWithAddress:{*a3 | (*(a3 + 2) << 32), v36}];
  if (!v19)
  {
    APSLogErrorAt(0);
    v20 = 0;
    goto LABEL_46;
  }

  v20 = [objc_alloc(MEMORY[0x277D7BA68]) initWithUniqueIdentifier:a2 peerAddress:v19];
  if (!v20)
  {
    APSLogErrorAt(0);
    goto LABEL_46;
  }

  if (!a4 || ![a2 isEqualToString:*MEMORY[0x277D7BA38]])
  {
    goto LABEL_26;
  }

  [a1 performRealtimeConnectivityCheckWithConfiguration:v20 error:&v40];
  if ([v40 code] == 13)
  {
    if (!a5)
    {
      goto LABEL_20;
    }

LABEL_17:
    v22 = **(v17 + 56);
    if (v22 <= 50)
    {
      if (v22 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_25;
        }

        v34 = *(v17 + 56);
      }

      v37 = *(v17 + 48);
      v39 = v40;
      LogPrintF();
    }

LABEL_25:
    v40 = 0;
    goto LABEL_26;
  }

  v21 = [v40 code];
  if (a5 && v21 == 35)
  {
    goto LABEL_17;
  }

LABEL_20:
  v23 = NSErrorToOSStatus();
  if (v23)
  {
    v28 = v23;
    goto LABEL_51;
  }

  v24 = **(v17 + 56);
  if (v24 <= 30)
  {
    if (v24 != -1)
    {
LABEL_23:
      v37 = *(v17 + 48);
      LogPrintF();
      goto LABEL_26;
    }

    if (_LogCategory_Initialize())
    {
      v31 = *(v17 + 56);
      goto LABEL_23;
    }
  }

LABEL_26:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v32 = **(v17 + 56);
    if (v32 <= 90)
    {
      if (v32 == -1)
      {
        v33 = *(v17 + 56);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_53;
        }

        v35 = *(v17 + 56);
      }

      v38 = *(v17 + 48);
      IsAppleInternalBuild();
      LogPrintF();
    }

LABEL_53:
    v28 = 4294960526;
    goto LABEL_37;
  }

  [v20 setLegacyUpgradeRequired:{APSSettingsGetInt64(@"legacyTrafficRegistration", 0) != 0, v37, v39}];
  [a1 setTrafficRegistration:v20 error:&v40];
  v23 = NSErrorToOSStatus();
  if (v23)
  {
    v28 = v23;
LABEL_51:
    APSLogErrorAt(v23);
    goto LABEL_37;
  }

  v25 = **(v17 + 56);
  if (v25 <= 50)
  {
    if (v25 != -1)
    {
LABEL_30:
      v26 = *(v17 + 48);
      *MEMORY[0x277D7BA38];
      if (v25 == -1)
      {
        _LogCategory_Initialize();
      }

      LogPrintF();
      goto LABEL_36;
    }

    v27 = *(v17 + 56);
    if (_LogCategory_Initialize())
    {
      v25 = **(v17 + 56);
      goto LABEL_30;
    }
  }

LABEL_36:
  *(v17 + 40) = a1;
  *(v17 + 32) = v20;
  v28 = 0;
  *a8 = CFRetain(v17);
LABEL_37:
  CFRelease(v17);
LABEL_38:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

void APSWiFiTrafficRegistrationSetRemovalHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __APSWiFiTrafficRegistrationSetRemovalHandler_block_invoke;
  v3[3] = &unk_2784A3EF0;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_sync(v2, v3);
}

void __APSWiFiTrafficRegistrationSetRemovalHandler_block_invoke(uint64_t a1)
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
  v5 = *(v4 + 16);
  if (v5)
  {
    _Block_release(v5);
    v4 = *(a1 + 40);
  }

  *(v4 + 16) = v3;
}

uint64_t APSConnectionInterfaceManagerGetTypeID()
{
  if (APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerInitOnce != -1)
  {
    dispatch_once_f(&APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerInitOnce, &APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerTypeID, interfaceManager_registerCMClass);
  }

  return APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerTypeID;
}

uint64_t interfaceManager_registerCMClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void connectionInterfaceManager_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

uint64_t APSConnectionInterfaceManagerCreate(const __CFAllocator *a1, void *a2)
{
  if (APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerInitOnce != -1)
  {
    dispatch_once_f(&APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerInitOnce, &APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerTypeID, interfaceManager_registerCMClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v8 = 4294895426;
    APSLogErrorAt(0);
    return v8;
  }

  v5 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v6 = dispatch_queue_create("com.apple.airplay.connectionInterfaceManager", 0);
  v5[2] = v6;
  if (!v6)
  {
    APSLogErrorAt(0);
LABEL_11:
    v8 = 4294895426;
    CFRelease(v5);
    return v8;
  }

  Mutable = CFSetCreateMutable(a1, 0, 0);
  v5[4] = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt(0);
    APSSignalErrorAt(4294895426);
    goto LABEL_11;
  }

  v8 = 0;
  *a2 = v5;
  return v8;
}

uint64_t APSConnectionInterfaceManagerSelectInterface(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v3 = *(a1 + 16);
  v7 = 0;
  v5[2] = a3;
  context[0] = &v7;
  context[1] = v5;
  context[2] = connectionInterfaceManager_selectInterfaceInternal;
  if (!v3)
  {
    return 4294960591;
  }

  dispatch_sync_f(v3, context, APSDispatchSyncTaskCallback);
  return v7;
}

uint64_t connectionInterfaceManager_selectInterfaceInternal(_DWORD *a1)
{
  if (!a1[2])
  {
    APSLogErrorAt(0);
    v3 = 4294895425;
    APSSignalErrorAt(4294895425);
    return v3;
  }

  if (!CFSetGetCount(*(*a1 + 32)))
  {
    if (gLogCategory_APSConnectionInterfaceManager <= 40 && (gLogCategory_APSConnectionInterfaceManager != -1 || _LogCategory_Initialize()))
    {
      v11 = a1[2];
      v12 = *(*a1 + 24);
      LogPrintF();
    }

    v2 = *a1;
    *(*a1 + 24) = a1[2];
    goto LABEL_15;
  }

  v2 = *a1;
  if (*(*a1 + 24) == a1[2])
  {
    if (gLogCategory_APSConnectionInterfaceManager > 30)
    {
      goto LABEL_15;
    }

    if (gLogCategory_APSConnectionInterfaceManager == -1)
    {
      v7 = _LogCategory_Initialize();
      v2 = *a1;
      if (!v7)
      {
LABEL_15:
        v4 = (*(v2 + 40) + 1);
        *(v2 + 40) = v4;
        CFSetSetValue(*(v2 + 32), v4);
        v5 = *(a1 + 2);
        v3 = 0;
        if (v5)
        {
          *v5 = *(*a1 + 40);
        }

        return v3;
      }

      v8 = *(v2 + 24);
    }

    LogPrintF();
    v2 = *a1;
    goto LABEL_15;
  }

  v3 = 4294895424;
  if (gLogCategory_APSConnectionInterfaceManager <= 30)
  {
    if (gLogCategory_APSConnectionInterfaceManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v3;
      }

      v9 = a1[2];
      v10 = *(*a1 + 24);
    }

    LogPrintF();
  }

  return v3;
}

uint64_t APSConnectionInterfaceManagerReleaseInterfaceSelection(uint64_t a1, unsigned int a2)
{
  v3[0] = a1;
  v3[1] = a2;
  dispatch_sync_f(*(a1 + 16), v3, connectionInterfaceManager_releaseInterfaceSelection);
  return 0;
}

CFIndex connectionInterfaceManager_releaseInterfaceSelection(unsigned int *a1)
{
  if (gLogCategory_APSConnectionInterfaceManager <= 30 && (gLogCategory_APSConnectionInterfaceManager != -1 || _LogCategory_Initialize()))
  {
    v3 = a1[2];
    LogPrintF();
  }

  CFSetRemoveValue(*(*a1 + 32), a1[2]);
  result = CFSetGetCount(*(*a1 + 32));
  if (!result)
  {
    if (gLogCategory_APSConnectionInterfaceManager <= 40)
    {
      if (gLogCategory_APSConnectionInterfaceManager != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    *(*a1 + 24) = 0;
  }

  return result;
}

uint64_t APSReferencingAllocatorCreate(const __CFAllocator *a1, void *a2, CFAllocatorRef *a3)
{
  memset(&context.reallocate, 0, 24);
  if (a2 && a3)
  {
    context.version = 0;
    context.info = a2;
    context.retain = MEMORY[0x277CBE558];
    context.release = MEMORY[0x277CBE550];
    context.copyDescription = MEMORY[0x277CBE530];
    context.allocate = refAllocator_Allocate;
    v4 = CFAllocatorCreate(a1, &context);
    *a3 = v4;
    if (v4)
    {
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

uint64_t APSReferencingAllocatorGetOverheadBytes()
{
  if (APSReferencingAllocatorGetOverheadBytes_sOnce != -1)
  {
    dispatch_once_f(&APSReferencingAllocatorGetOverheadBytes_sOnce, &APSReferencingAllocatorGetOverheadBytes_sOverheadBytes, refAllocator_calculateOverheadBytes);
  }

  return APSReferencingAllocatorGetOverheadBytes_sOverheadBytes;
}

void refAllocator_calculateOverheadBytes(void *a1)
{
  context.reallocate = 0;
  memset(&context.retain, 0, 24);
  cf = 0;
  context.version = 0;
  context.info = a1;
  context.allocate = refAllocatorOverhead_Allocate;
  context.deallocate = refAllocatorOverhead_Deallocate;
  context.preferredSize = 0;
  v1 = CFAllocatorCreate(*MEMORY[0x277CBECE8], &context);
  v2 = v1;
  if (!v1 || (v1 = APSReferencingAllocatorCreate(v1, *MEMORY[0x277CBEEE8], &cf), v1))
  {
    APSLogErrorAt(v1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void refAllocatorOverhead_Allocate(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBECE8];
  *a3 += a1;
  v4 = *v3;
  JUMPOUT(0x223DB3470);
}

uint64_t APSPSGDataSourceGetClassID()
{
  if (APSPSGDataSourceGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSPSGDataSourceGetClassID_sRegisterOnce, &APSPSGDataSourceGetClassID_sClassID, psgDataSource_registerBaseClass);
  }

  return APSPSGDataSourceGetClassID_sClassID;
}

uint64_t psgDataSource_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&psgDataSource_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSPSGDataSourceGetTypeID()
{
  if (APSPSGDataSourceGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSPSGDataSourceGetClassID_sRegisterOnce, &APSPSGDataSourceGetClassID_sClassID, psgDataSource_registerBaseClass);
  }

  v1 = APSPSGDataSourceGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSFlatQueueGetTypeID()
{
  if (gAPSFlatQueueInitOnce != -1)
  {
    dispatch_once_f(&gAPSFlatQueueInitOnce, 0, _APSFlatQueueGetTypeID);
  }

  return gAPSFlatQueueTypeID;
}

uint64_t _APSFlatQueueGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSFlatQueueTypeID = result;
  return result;
}

void _APSFlatQueueFinalize(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 96))
  {
    v2 = *(a1 + 80);
    do
    {
      (*(a1 + 32))(a1 + 16, *(a1 + 72) + *(a1 + 16) * v2);
      v2 = (*(a1 + 80) + 1) & *(a1 + 64);
      *(a1 + 80) = v2;
      v3 = *(a1 + 96) - 1;
      *(a1 + 96) = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v4(a1 + 16);
  }

  v5 = *(a1 + 72);

  free(v5);
}

uint64_t APSFlatQueueCreate(__int128 *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v5 = 4294960591;
  if (a3 && *a1)
  {
    if (gAPSFlatQueueInitOnce != -1)
    {
      dispatch_once_f(&gAPSFlatQueueInitOnce, 0, _APSFlatQueueGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 96) = 0;
      *(Instance + 64) = 0u;
      *(Instance + 80) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      v8 = *a1;
      v9 = a1[1];
      *(Instance + 48) = *(a1 + 4);
      *(Instance + 16) = v8;
      *(Instance + 32) = v9;
      v10 = iceil2();
      v7[7] = v10;
      v7[8] = v10 - 1;
      v11 = malloc_type_malloc(v7[2] * v10, 0xEE79D249uLL);
      v7[9] = v11;
      if (v11)
      {
        v5 = 0;
        *a3 = v7;
      }

      else
      {
        CFRelease(v7);
        return 4294960568;
      }

      return v5;
    }

    v5 = 4294960568;
  }

  v13 = *(a1 + 3);
  if (v13)
  {
    v13(a1);
  }

  return v5;
}

uint64_t APSFlatQueueGetCapacity(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t APSFlatQueueGetCount(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t APSFlatQueueEnqueue(uint64_t a1, void *__src)
{
  result = 4294960591;
  if (a1 && __src)
  {
    v5 = *(a1 + 96);
    if (v5 == *(a1 + 56))
    {
      if (v5)
      {
        v6 = 2 * v5;
      }

      else
      {
        v6 = 1;
      }

      v7 = malloc_type_realloc(*(a1 + 72), *(a1 + 16) * v6, 0x998F6812uLL);
      if (!v7)
      {
        return 4294960568;
      }

      v8 = v7;
      v10 = (a1 + 88);
      v9 = *(a1 + 88);
      v11 = *(a1 + 56);
      v12 = *(a1 + 80);
      if (v9 <= v11 - v12)
      {
        memcpy(&v7[*(a1 + 16) * v11], v7, *(a1 + 16) * v9);
      }

      else
      {
        memcpy(&v7[*(a1 + 16) * (v12 + v11)], &v7[*(a1 + 16) * v12], *(a1 + 16) * (v11 - v12));
        v10 = (a1 + 80);
      }

      *v10 += *(a1 + 56);
      *(a1 + 56) = v6;
      *(a1 + 64) = v6 - 1;
      *(a1 + 72) = v8;
    }

    else
    {
      v8 = *(a1 + 72);
    }

    v13 = *(a1 + 16);
    v14 = &v8[v13 * *(a1 + 88)];
    v15 = *(a1 + 24);
    if (v15)
    {
      result = v15();
      if (result)
      {
        return result;
      }
    }

    else
    {
      memcpy(&v8[v13 * *(a1 + 88)], __src, *(a1 + 16));
    }

    result = 0;
    v16 = *(a1 + 96) + 1;
    *(a1 + 88) = (*(a1 + 88) + 1) & *(a1 + 64);
    *(a1 + 96) = v16;
  }

  return result;
}

uint64_t APSFlatQueueDequeue(void *a1, void *__dst)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (!a1[12])
  {
    return 4294960546;
  }

  v3 = a1[2];
  v4 = a1[10];
  v5 = a1[9] + v3 * v4;
  if (__dst)
  {
    memcpy(__dst, (a1[9] + v3 * v4), v3);
LABEL_5:
    result = 0;
    a1[10] = (a1[10] + 1) & a1[8];
    --a1[12];
    return result;
  }

  v7 = a1[4];
  if (!v7)
  {
    goto LABEL_5;
  }

  result = v7();
  if (!result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t APSFlatQueuePeek(size_t *a1, void *__dst)
{
  result = 4294960591;
  if (a1 && __dst)
  {
    if (a1[12])
    {
      memcpy(__dst, (a1[9] + a1[2] * a1[10]), a1[2]);
      return 0;
    }

    else
    {
      return 4294960546;
    }
  }

  return result;
}

uint64_t APSFlatQueueRemoveAllValues(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (*(a1 + 32))
  {
    if (*(a1 + 96))
    {
      v2 = *(a1 + 80);
      while (1)
      {
        result = (*(a1 + 32))(a1 + 16, *(a1 + 72) + *(a1 + 16) * v2);
        if (result)
        {
          break;
        }

        v2 = (*(a1 + 80) + 1) & *(a1 + 64);
        *(a1 + 80) = v2;
        v4 = *(a1 + 96) - 1;
        *(a1 + 96) = v4;
        if (!v4)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(a1 + 80) = *(a1 + 88);
    *(a1 + 96) = 0;
  }

  return result;
}

uint64_t APSFlatQueueDequeueWhileF(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  result = 4294960591;
  if (a1 && a2)
  {
    if (a1[12])
    {
      v7 = a1[10];
      while (1)
      {
        v8 = a1[9] + a1[2] * v7;
        result = a2(v8, a3);
        if (!result)
        {
          break;
        }

        v9 = a1[4];
        if (v9)
        {
          result = v9(a1 + 2, v8);
          if (result)
          {
            break;
          }
        }

        v7 = (a1[10] + 1) & a1[8];
        a1[10] = v7;
        v10 = a1[12] - 1;
        a1[12] = v10;
        if (!v10)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t APSFlatQueueDequeueWhileB(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = flatQueue_dequeueWhileBCallbackF;
  }

  else
  {
    v3 = 0;
  }

  return APSFlatQueueDequeueWhileF(a1, v3, a2);
}

uint64_t APSDebugAllocatorCreate(const void *a1, __CFString *a2, CFAllocatorRef *a3)
{
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v6 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E004095A892B6uLL);
  if (!v6)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v7 = v6;
  memset(&v21, 0, sizeof(v21));
  atomic_store(1uLL, v6);
  if (a1)
  {
    v8 = CFRetain(a1);
  }

  else
  {
    v8 = 0;
  }

  v7[2] = v8;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = &stru_28358B348;
  }

  v7[3] = CFRetain(v9);
  if ((APSSettingsGetIntWithOverrideAndDefault(@"debugAllocatorHighWaterUs", 0, 100) & 0x80000000) != 0)
  {
    IntWithOverrideAndDefault = 0;
  }

  else
  {
    IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"debugAllocatorHighWaterUs", 0, 100);
  }

  v7[6] = IntWithOverrideAndDefault;
  v11 = *MEMORY[0x277CBECE8];
  v12 = APSAtomicMessageQueueCreate(*MEMORY[0x277CBECE8], 40, v7 + 4);
  if (v12)
  {
    v19 = v12;
LABEL_27:
    APSLogErrorAt(v12);
    goto LABEL_20;
  }

  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v14 = dispatch_queue_create("APSDebugAllocator", v13);
  v7[7] = v14;
  if (!v14)
  {
LABEL_28:
    APSLogErrorAt(0);
    v19 = 4294960568;
    goto LABEL_20;
  }

  v12 = APSRealTimeSignalCreate(v14, v7, dbgAllocator_messageSignalHandler, 0, (v7 + 5));
  if (v12)
  {
    v19 = v12;
    goto LABEL_27;
  }

  atomic_store(0, v7 + 11);
  atomic_store(0, v7 + 12);
  Mutable = CFDictionaryCreateMutable(v11, 0, 0, 0);
  v7[9] = Mutable;
  if (!Mutable)
  {
    goto LABEL_28;
  }

  v16 = CFDictionaryCreateMutable(v11, 0, 0, 0);
  v7[10] = v16;
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7[7]);
  v7[8] = v17;
  if (!v17)
  {
    goto LABEL_28;
  }

  dispatch_set_context(v17, v7);
  dispatch_source_set_event_handler_f(v7[8], dbgAllocator_timerTick);
  dispatch_source_set_timer(v7[8], 0, 0x12A05F200uLL, 0x4C4B40uLL);
  dispatch_resume(v7[8]);
  v21.copyDescription = 0;
  v21.version = 0;
  v21.allocate = dbgAllocator_allocate;
  v21.reallocate = 0;
  v21.deallocate = dbgAllocator_deallocate;
  v21.preferredSize = dbgAllocator_preferredSize;
  v21.info = v7;
  v21.retain = dbgAllocator_retain;
  v21.release = dbgAllocator_release;
  v18 = CFAllocatorCreate(v11, &v21);
  if (!v18)
  {
    goto LABEL_28;
  }

  v19 = 0;
  v7[1] = v18;
  *a3 = v18;
LABEL_20:
  dbgAllocator_release(v7);
  return v19;
}

void dbgAllocator_release(void *a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 5);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_source_cancel(v4);
      dispatch_sync_f(*(a1 + 7), a1, dbgAllocator_flush);
      dispatch_release(*(a1 + 8));
    }

    v5 = *(a1 + 7);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(a1 + 10);
    if (v6)
    {
      CFDictionaryApplyFunction(v6, dbgAllocator_freeStatsApplier, a1);
      CFRelease(*(a1 + 10));
    }

    v7 = *(a1 + 9);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 2);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 3);
    if (v9)
    {
      CFRelease(v9);
    }

    free(a1);
  }
}

uint64_t dbgAllocator_deallocate(void *a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v4 = mach_absolute_time();
  CFAllocatorDeallocate(*(a2 + 16), a1);
  LODWORD(v8) = 2;
  *&v9 = a1;
  v10 = mach_absolute_time() - v4;
  result = APSAtomicMessageQueueSendMessage(*(a2 + 32), &v8);
  v6 = *(*(a2 + 40) + 16);
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v6 + 10, &v7, 2u, memory_order_release, memory_order_relaxed);
  if (v7 == 1)
  {

    return caulk::concurrent::messenger::enqueue((v6 + 6), v6);
  }

  return result;
}

uint64_t dbgAllocator_allocate(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = mach_absolute_time();
  v7 = MEMORY[0x223DB3470](a3[2], a1, 4199042959, a2);
  v8 = mach_absolute_time();
  if (v7)
  {
    v9 = 1;
    v12[1] = a1;
    v12[0] = 1;
    v12[2] = 0;
    v12[3] = v7;
    v12[4] = v8 - v6;
    APSAtomicMessageQueueSendMessage(a3[4], v12);
    v10 = *(a3[5] + 16);
    atomic_compare_exchange_strong_explicit(v10 + 10, &v9, 2u, memory_order_release, memory_order_relaxed);
    if (v9 == 1)
    {
      caulk::concurrent::messenger::enqueue((v10 + 6), v10);
    }
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v7;
}

void dbgAllocator_timerTick(void *context)
{
  if (gLogCategory_APSDebugAllocator <= 50 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
  {
    v3 = *(context + 1);
    v4 = *(context + 3);
    LogPrintF();
  }

  CFDictionaryApplyFunction(*(context + 10), dbgAllocator_logStatsApplier, context);
  v2 = *(context + 10);

  CFDictionaryApplyFunction(v2, dbgAllocator_resetStatsApplier, context);
}

double dbgAllocator_resetStatsApplier(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 8) = -1;
  *(a2 + 40) = -1;
  return result;
}

uint64_t dbgAllocator_logStatsApplier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!*a2 && !a2[4])
  {
    return result;
  }

  if (gLogCategory_APSDebugAllocator <= 50)
  {
    if (gLogCategory_APSDebugAllocator != -1 || (result = _LogCategory_Initialize(), result))
    {
      v21 = *(a3 + 24);
      v20 = *(a3 + 8);
      result = LogPrintF();
    }
  }

  if (*a2 && gLogCategory_APSDebugAllocator <= 50)
  {
    if (gLogCategory_APSDebugAllocator == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_12;
      }

      v18 = *a2;
    }

    v6 = *(a3 + 8);
    v7 = *(a3 + 24);
    v8 = a2[1];
    UpTicksToMicroseconds();
    v9 = a2[2];
    UpTicksToMicroseconds();
    v10 = a2[3];
    v11 = *a2;
    UpTicksToMicroseconds();
    result = LogPrintF();
  }

LABEL_12:
  if (a2[4] && gLogCategory_APSDebugAllocator <= 50)
  {
    if (gLogCategory_APSDebugAllocator != -1)
    {
LABEL_15:
      v12 = *(a3 + 8);
      v13 = *(a3 + 24);
      v14 = a2[5];
      UpTicksToMicroseconds();
      v15 = a2[6];
      UpTicksToMicroseconds();
      v16 = a2[7];
      v17 = a2[4];
      UpTicksToMicroseconds();
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v19 = a2[4];
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t dbgAllocator_messageSignalHandler(uint64_t a1)
{
  v28 = 0;
  *key = 0u;
  *v27 = 0u;
  __swp(v2, (a1 + 88));
  __swp(v1, (a1 + 96));
  if (v2 && gLogCategory_APSDebugAllocator <= 50 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
  {
    v20 = *(a1 + 24);
    v14 = *(a1 + 8);
    LogPrintF();
  }

  if (v1 && gLogCategory_APSDebugAllocator <= 50 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
  {
    v21 = *(a1 + 24);
    v15 = *(a1 + 8);
    LogPrintF();
  }

  while (1)
  {
    result = APSAtomicMessageQueueReadMessage(*(a1 + 32), key);
    if (!result)
    {
      return result;
    }

    v5 = v28;
    v6 = UpTicksToMicroseconds();
    if (LODWORD(key[0]) == 2)
    {
      value = 0;
      if (v6 >= *(a1 + 48))
      {
        if (gLogCategory_APSDebugAllocator > 90 || gLogCategory_APSDebugAllocator == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_44;
        }

        v19 = *(a1 + 8);
        v25 = *(a1 + 24);
      }

      else
      {
        if (gLogCategory_APSDebugAllocator > 30 || gLogCategory_APSDebugAllocator == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_44;
        }

        v17 = *(a1 + 8);
        v23 = *(a1 + 24);
      }

      LogPrintF();
LABEL_44:
      v11 = v27[0];
      if (CFDictionaryGetValueIfPresent(*(a1 + 72), v27[0], &value))
      {
        v12 = CFDictionaryGetValue(*(a1 + 80), value);
        v13 = v12[5];
        ++v12[4];
        if (v5 < v13)
        {
          v12[5] = v5;
        }

        if (v5 > v12[6])
        {
          v12[6] = v5;
        }

        v12[7] += v5;
        CFDictionaryRemoveValue(*(a1 + 72), v11);
      }
    }

    else if (LODWORD(key[0]) == 1)
    {
      if (v6 >= *(a1 + 48))
      {
        if (gLogCategory_APSDebugAllocator <= 90 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
        {
          v24 = *(a1 + 24);
          v18 = *(a1 + 8);
          goto LABEL_25;
        }
      }

      else if (gLogCategory_APSDebugAllocator <= 30 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
      {
        v22 = *(a1 + 24);
        v16 = *(a1 + 8);
LABEL_25:
        LogPrintF();
      }

      v7 = key[1];
      v8 = CFDictionaryGetValue(*(a1 + 80), key[1]);
      if (v8)
      {
        goto LABEL_36;
      }

      v9 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
      if (v9)
      {
        v8 = v9;
        *(v9 + 2) = 0u;
        *(v9 + 3) = 0u;
        *v9 = 0u;
        *(v9 + 1) = 0u;
        v9[1] = -1;
        v9[5] = -1;
        CFDictionarySetValue(*(a1 + 80), v7, v9);
LABEL_36:
        CFDictionarySetValue(*(a1 + 72), v27[1], v7);
        v10 = v8[1];
        ++*v8;
        if (v5 < v10)
        {
          v8[1] = v5;
        }

        if (v5 > v8[2])
        {
          v8[2] = v5;
        }

        v8[3] += v5;
      }

      else
      {
        APSLogErrorAt(0);
      }
    }
  }
}

uint64_t APSPriorityDispatcherGetTypeID()
{
  if (gAPSPriorityDispatcherInitOnce != -1)
  {
    dispatch_once_f(&gAPSPriorityDispatcherInitOnce, 0, _APSPriorityDispatcherGetTypeID);
  }

  return gAPSPriorityDispatcherTypeID;
}

uint64_t _APSPriorityDispatcherGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSPriorityDispatcherTypeID = result;
  return result;
}

uint64_t _APSPriorityDispatcherFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
    a1[2] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
    a1[5] = 0;
  }

  result = a1[3];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    a1[3] = 0;
  }

  if (gLogCategory_APSPriorityDispatcher <= 50)
  {
    if (gLogCategory_APSPriorityDispatcher != -1)
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

uint64_t APSPriorityDispatcherCreate(NSObject *a1, int a2, CFTypeRef *a3)
{
  if (a1 && a3)
  {
    if (gAPSPriorityDispatcherInitOnce != -1)
    {
      dispatch_once_f(&gAPSPriorityDispatcherInitOnce, 0, _APSPriorityDispatcherGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      dispatch_retain(a1);
      v7[2] = a1;
      v8 = FigSimpleMutexCreate();
      v7[3] = v8;
      if (v8)
      {
        v9 = priorityDispatcher_setPriority(v7, a2, 1);
        if (v9)
        {
          v10 = v9;
          APSLogErrorAt(v9);
        }

        else
        {
          if (gLogCategory_APSPriorityDispatcher <= 50 && (gLogCategory_APSPriorityDispatcher != -1 || _LogCategory_Initialize()))
          {
            FigThreadGetMachThreadPriorityValue();
            LogPrintF();
          }

          v10 = 0;
          *a3 = CFRetain(v7);
        }
      }

      else
      {
        APSLogErrorAt(0);
        v10 = 4294960568;
      }

      CFRelease(v7);
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

  return v10;
}

uint64_t priorityDispatcher_setPriority(uint64_t a1, int a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    APSLogErrorAt(0);
    v11 = 4294960591;
    goto LABEL_12;
  }

  v6 = *(a1 + 24);
  FigSimpleMutexLock();
  if (!a3)
  {
    if (*(a1 + 32) == a2)
    {
      v11 = 0;
      goto LABEL_16;
    }

    if (gLogCategory_APSPriorityDispatcher <= 50)
    {
      if (gLogCategory_APSPriorityDispatcher != -1)
      {
LABEL_6:
        FigThreadGetMachThreadPriorityValue();
        FigThreadGetMachThreadPriorityValue();
        LogPrintF();
        goto LABEL_8;
      }

      if (_LogCategory_Initialize())
      {
        v15 = *(a1 + 32);
        goto LABEL_6;
      }
    }
  }

LABEL_8:
  FigThreadGetMachThreadPriorityValue();
  v16 = *dispatch_queue_get_label(*(a1 + 16)) == 0;
  SNPrintF();
  v7 = FigDispatchQueueCreateWithPriority();
  if (!v7)
  {
    APSLogErrorAt(0);
    v11 = 4294960568;
LABEL_16:
    v14 = *(a1 + 24);
    FigSimpleMutexUnlock();
    goto LABEL_12;
  }

  v8 = v7;
  v9 = *(a1 + 40);
  if (v9)
  {
    dispatch_release(v9);
    *(a1 + 40) = 0;
  }

  dispatch_retain(v8);
  *(a1 + 40) = v8;
  *(a1 + 32) = a2;
  dispatch_retain(*(a1 + 16));
  dispatch_async_f(*(a1 + 40), *(a1 + 16), priorityDispatcher_syncFlushOnQueue);
  v10 = *(a1 + 24);
  FigSimpleMutexUnlock();
  dispatch_release(v8);
  v11 = 0;
LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void priorityDispatcher_syncFlushOnQueue(NSObject *a1)
{
  dispatch_sync_f(a1, 0, priorityDispatcher_flush);
  if (a1)
  {

    dispatch_release(a1);
  }
}

uint64_t priorityDispatcher_dispatchBlock(uint64_t a1, void *aBlock, int a3)
{
  if (a1 && aBlock)
  {
    v5 = _Block_copy(aBlock);
    if (v5)
    {
      v6 = v5;
      v7 = priorityDispatcher_dispatchFunction(a1, priorityDispatcher_invokeAndReleaseBlock, v5, a3);
      v8 = v7;
      if (v7)
      {
        APSLogErrorAt(v7);
        _Block_release(v6);
      }
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

  return v8;
}

void priorityDispatcher_invokeAndReleaseBlock(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

uint64_t _APSRTPJitterBufferNullDecodeInputCallback(uint64_t a1, int *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*a2)
  {
    if (*(a5 + 8))
    {
      v6 = 0;
      result = 4294960546;
    }

    else
    {
      *(a3 + 16) = &_APSRTPJitterBufferNullDecodeInputCallback_missingData;
      *(a3 + 8) = *(*a5 + 100);
      if (a4)
      {
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        *a4 = a5 + 16;
      }

      result = 0;
      v6 = 1;
      *(a5 + 32) = 1;
    }
  }

  else
  {
    result = 0;
    v6 = 1;
  }

  *a2 = v6;
  return result;
}

uint64_t __APSRTPJitterBufferGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APSRTPJitterBufferGetTypeID_typeID = result;
  return result;
}

uint64_t APSRTPJitterBufferGetTypeID()
{
  if (APSRTPJitterBufferGetTypeID_once != -1)
  {
    dispatch_once(&APSRTPJitterBufferGetTypeID_once, &__block_literal_global_1277);
  }

  return APSRTPJitterBufferGetTypeID_typeID;
}

const void *APSRTPJitterBufferGetEmptyPacket(uint64_t a1, int *a2)
{
  if (!a1 || (v3 = *(a1 + 48)) == 0)
  {
    APSLogErrorAt(0);
    result = 0;
    v5 = -6718;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = CMSimpleQueueDequeue(v3);
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = -6728;
  }

  if (!result)
  {
    result = 0;
  }

  if (a2)
  {
LABEL_9:
    *a2 = v5;
  }

  return result;
}

intptr_t APSRTPJitterBufferDiscardPacket(intptr_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    a2[184] = 0;
    CMSimpleQueueEnqueue(*(result + 56), a2);
    v3 = *(v2 + 64);

    return dispatch_semaphore_signal(v3);
  }

  return result;
}

uint64_t __APSRTPJitterBufferRead_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 10)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1 || (result = _LogCategory_Initialize(), result))
    {
      v3 = *(v1 + 40);
      v4 = *(v1 + 48);
      v2 = *(*(v1 + 32) + 16);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t __APSRTPJitterBufferRead_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(v1 + 32);
      v4 = (*(v2 + 136) * *(v1 + 40));
      v3 = *(v2 + 16);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t __APSRTPJitterBufferRead_block_invoke_3(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 10)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1 || (result = _LogCategory_Initialize(), result))
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

uint64_t __APSRTPJitterBufferRead_block_invoke_4(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1 || (result = _LogCategory_Initialize(), result))
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

uint64_t __APSRTPJitterBufferRead_block_invoke_5(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 40)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(*(v1 + 32) + 16);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APSRTPJitterBufferCopyStatistics(unsigned int *a1, CFTypeRef *a2)
{
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = a1[69];
      CFDictionarySetInt64();
      v7 = a1[70];
      CFDictionarySetInt64();
      v8 = a1[71];
      CFDictionarySetInt64();
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

uint64_t APSRateControllerAVCWrapperGetTypeID()
{
  if (gAPSRateControllerAVCWrapperInitOnce != -1)
  {
    dispatch_once_f(&gAPSRateControllerAVCWrapperInitOnce, 0, _APSRateControllerAVCWrapperGetTypeID);
  }

  return gAPSRateControllerAVCWrapperTypeID;
}

uint64_t _APSRateControllerAVCWrapperGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRateControllerAVCWrapperTypeID = result;
  return result;
}

void _APSRateControllerAVCWrapperFinalize(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    v5 = a1;
    LogPrintF();
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  [*(a1 + 24) stop];

  v4 = *(a1 + 16);
}

uint64_t APSRateControllerAVCWrapperCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (a3)
  {
    if (gAPSRateControllerAVCWrapperInitOnce != -1)
    {
      dispatch_once_f(&gAPSRateControllerAVCWrapperInitOnce, 0, _APSRateControllerAVCWrapperGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 64) = 0;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      *(Instance + 16) = [[APSRateControllerDelegate alloc] initWithContext:Instance];
      v13 = 0;
      v14 = &v13;
      v15 = 0x3052000000;
      v16 = __Block_byref_object_copy_;
      v8 = getAVCRateControllerClass_softClass;
      v17 = __Block_byref_object_dispose_;
      v18 = getAVCRateControllerClass_softClass;
      if (!getAVCRateControllerClass_softClass)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __getAVCRateControllerClass_block_invoke;
        v12[3] = &unk_2784A4060;
        v12[4] = &v13;
        __getAVCRateControllerClass_block_invoke(v12);
        v8 = v14[5];
      }

      _Block_object_dispose(&v13, 8);
      v9 = [[v8 alloc] initWithDelegate:v7[2] dumpID:a1 isUplink:1 isForSimulation:0 useExternalThread:1 rateSharingGroupToken:a2];
      v7[3] = v9;
      if (v9)
      {
        *a3 = CFRetain(v7);
        if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v10 = 0;
      }

      else
      {
        APSLogErrorAt(0);
        v10 = 4294960568;
      }

      CFRelease(v7);
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

  return v10;
}

void sub_222302420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVCRateControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AVConferenceLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AVConferenceLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2784A32A8;
    v7 = 0;
    AVConferenceLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AVConferenceLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AVCRateController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    abort_report_np();
  }

  getAVCRateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AVConferenceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVConferenceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APSRateControllerAVCWrapperConfigure(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2 > 0xFFFFFFFE)
  {
    v4 = -1;
  }

  else
  {
    v4 = a2;
  }

  if (a3 > 0xFFFFFFFE)
  {
    v5 = -1;
  }

  else
  {
    v5 = a3;
  }

  v9 = 12;
  v6 = *(a1 + 24);
  v10 = 0;
  if (a4 > 0xFFFFFFFE)
  {
    v7 = -1;
  }

  else
  {
    v7 = a4;
  }

  v11 = v4;
  v12 = v5;
  v13 = v7;
  [v6 configure:&v9];
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t APSRateControllerAVCWrapperStart(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    v3 = a1;
    LogPrintF();
  }

  [*(a1 + 24) start];
  return 0;
}

uint64_t APSRateControllerAVCWrapperStop(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    v3 = a1;
    LogPrintF();
  }

  [*(a1 + 24) stop];
  return 0;
}

uint64_t APSRateControllerAVCWrapperSetMaxBitrate(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xFFFFFFFE)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = a2;
  }

  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    v5 = a1;
    v6 = v3;
    LogPrintF();
  }

  [*(a1 + 24) setMaxTargetBitrate:{v3, v5, v6}];
  return 0;
}

uint64_t APSRateControllerAVCWrapperSetMinBitrate(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xFFFFFFFE)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = a2;
  }

  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    v5 = a1;
    v6 = v3;
    LogPrintF();
  }

  [*(a1 + 24) setMinTargetBitrate:{v3, v5, v6}];
  return 0;
}

uint64_t APSRateControllerAVCWrapperGetMaxBitrate(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    v3 = a1;
    v4 = [*(a1 + 24) maxTargetBitrate];
    LogPrintF();
  }

  return [*(a1 + 24) maxTargetBitrate];
}

uint64_t APSRateControllerAVCWrapperGetMinBitrate(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    v3 = a1;
    v4 = [*(a1 + 24) minTargetBitrate];
    LogPrintF();
  }

  return [*(a1 + 24) minTargetBitrate];
}

uint64_t APSRateControllerAVCWrapperGetTargetBitrate(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    v3 = *(a1 + 32);
    LogPrintF();
  }

  return *(a1 + 32);
}

uint64_t APSRateControllerAVCWrapperAddFeedbackReport(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (CFDictionaryGetCount(*(a2 + 24)))
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __APSRateControllerAVCWrapperAddFeedbackReport_block_invoke;
      v6[3] = &__block_descriptor_40_e13_i20__0S8r_v12l;
      v6[4] = a1;
      v4 = APSRTPSeqNumDictionaryApplyBlock(v2, 0, v6);
      v2 = v4;
      if (v4)
      {
        APSLogErrorAt(v4);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t __APSRateControllerAVCWrapperAddFeedbackReport_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  [v7 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithUnsignedShort:", a2), 0}];
  Value = CFDictionaryGetValue(a3, @"PacketSendTimestamp");
  if (!Value)
  {
    goto LABEL_13;
  }

  [v7 setObject:Value atIndexedSubscript:1];
  v9 = CFDictionaryGetValue(a3, @"PacketRecvTimestamp");
  if (!v9)
  {
    goto LABEL_13;
  }

  [v7 setObject:v9 atIndexedSubscript:2];
  v10 = CFDictionaryGetValue(a3, @"PacketLength");
  if (!v10)
  {
    goto LABEL_13;
  }

  [v7 setObject:v10 atIndexedSubscript:3];
  v11 = CFDictionaryGetValue(a3, @"ProbingSequenceID");
  v12 = v11 ? &unk_28358E678 : &unk_28358E690;
  v13 = v11 ? v11 : &unk_28358E690;
  [v7 setObject:v12 atIndexedSubscript:4];
  [v7 setObject:v13 atIndexedSubscript:5];
  v14 = CFDictionaryGetValue(a3, @"ReportTimestamp");
  if (v14)
  {
    [v7 setObject:v14 atIndexedSubscript:6];
    [objc_msgSend(*(*(a1 + 32) + 24) "feedbackController")];
    v15 = 0;
  }

  else
  {
LABEL_13:
    APSLogErrorAt(0);
    v15 = 4294960591;
  }

  objc_autoreleasePoolPop(v6);
  return v15;
}

uint64_t APSRateControllerAVCWrapperSetTargetBitrateDidChangeCallback(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1)
  {
    *(a1 + 40) = a2;
    v4 = *(a1 + 48);
    if (a2)
    {
      *(a1 + 48) = cf;
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
      CFRelease(*(a1 + 48));
      result = 0;
      *(a1 + 48) = 0;
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

uint64_t APSRateControllerAVCWrapperSetProbingSequenceRequestedCallback(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1)
  {
    *(a1 + 56) = a2;
    v4 = *(a1 + 64);
    if (a2)
    {
      *(a1 + 64) = cf;
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
      CFRelease(*(a1 + 64));
      result = 0;
      *(a1 + 64) = 0;
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

void APSTapToRadarInvoke(const void *a1, const void *a2, const void *a3, uint64_t a4, const void *a5, int a6)
{
  if (!IsAppleInternalBuild())
  {
    if (gLogCategory_APSTapToRadar > 50 || gLogCategory_APSTapToRadar == -1 && !_LogCategory_Initialize())
    {
      return;
    }

LABEL_10:

    goto LABEL_12;
  }

  if (!getTapToRadarServiceClass())
  {
    if (gLogCategory_APSTapToRadar > 90 || gLogCategory_APSTapToRadar == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    goto LABEL_10;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", @"AirPlay has detected an internal error. Please help us make AirPlay better by logging a bug. Thanks.", a4];
  v13 = [objc_msgSend(getTapToRadarServiceClass() "shared")];
  if (!v13)
  {
    goto LABEL_43;
  }

  if ([v13 authorizationStatus] != 1)
  {
    if (gLogCategory_APSTapToRadar <= 50 && (gLogCategory_APSTapToRadar != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (a2)
    {
      if (a6)
      {
        v14 = 0;
        Mutable = 0;
        if (!a1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (v12)
      {
        v16 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CBF188], @"AirPlay Error");
        CFDictionarySetValue(Mutable, *MEMORY[0x277CBF198], v12);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CBF1E8], @"Tap-to-Radar");
        CFDictionarySetValue(Mutable, *MEMORY[0x277CBF1C0], @"Cancel");
        v17 = CFUserNotificationCreate(v16, 10.0, 0, 0, Mutable);
        if (!v17)
        {
          APSLogErrorAt(0);
          if (!Mutable)
          {
            return;
          }

          goto LABEL_30;
        }

        v14 = v17;
        if (!a1)
        {
LABEL_25:
          CFRetain(a2);
          if (a3)
          {
            CFRetain(a3);
          }

          if (a5)
          {
            CFRetain(a5);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __apsTapToRadarInvokeDetailed_block_invoke;
          block[3] = &__block_descriptor_73_e5_v8__0l;
          v19 = a6;
          block[4] = v14;
          block[5] = a1;
          block[6] = a2;
          block[7] = a3;
          block[8] = a5;
          dispatch_async(MEMORY[0x277D85CD0], block);
          if (!Mutable)
          {
            return;
          }

LABEL_30:
          CFRelease(Mutable);
          return;
        }

LABEL_24:
        CFRetain(a1);
        goto LABEL_25;
      }
    }

LABEL_43:
    APSLogErrorAt(0);
    return;
  }

  if (gLogCategory_APSTapToRadar <= 50 && (gLogCategory_APSTapToRadar != -1 || _LogCategory_Initialize()))
  {
LABEL_12:
    LogPrintF();
  }
}

uint64_t getTapToRadarServiceClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1400;
  v0 = getTapToRadarServiceClass_softClass;
  v7 = __Block_byref_object_dispose__1401;
  v8 = getTapToRadarServiceClass_softClass;
  if (!getTapToRadarServiceClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getTapToRadarServiceClass_block_invoke;
    v2[3] = &unk_2784A4060;
    v2[4] = &v3;
    __getTapToRadarServiceClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22230340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __apsTapToRadarInvokeDetailed_block_invoke(uint64_t a1)
{
  v14 = 0;
  if (!*(a1 + 72))
  {
    v14 = 3;
    CFUserNotificationReceiveResponse(*(a1 + 32), 10.0, &v14);
    if (v14)
    {
      v3 = 0;
LABEL_16:
      v6 = 0;
      goto LABEL_17;
    }
  }

  v2 = *(a1 + 40);
  if (apsRadarLogging_radarComponentEntryForAPSRadarComponentID_onceToken != -1)
  {
    dispatch_once(&apsRadarLogging_radarComponentEntryForAPSRadarComponentID_onceToken, &__block_literal_global_63);
  }

  v3 = [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries valueForKey:{v2, v14}];
  if (!v3)
  {
    APSLogErrorAt(0);
    goto LABEL_16;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__1400;
  v4 = getRadarDraftClass_softClass;
  v24 = __Block_byref_object_dispose__1401;
  v25 = getRadarDraftClass_softClass;
  if (!getRadarDraftClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getRadarDraftClass_block_invoke;
    v18 = &unk_2784A4060;
    v19 = &v20;
    __getRadarDraftClass_block_invoke(&v15);
    v4 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  v5 = objc_alloc_init(v4);
  v6 = v5;
  if (v5)
  {
    [v5 setTitle:*(a1 + 48)];
    v7 = *(a1 + 56);
    if (!v7)
    {
      v7 = *(a1 + 48);
    }

    [v6 setProblemDescription:v7];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = __Block_byref_object_copy__1400;
    v8 = getRadarComponentClass_softClass;
    v24 = __Block_byref_object_dispose__1401;
    v25 = getRadarComponentClass_softClass;
    if (!getRadarComponentClass_softClass)
    {
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __getRadarComponentClass_block_invoke;
      v18 = &unk_2784A4060;
      v19 = &v20;
      __getRadarComponentClass_block_invoke(&v15);
      v8 = v21[5];
    }

    _Block_object_dispose(&v20, 8);
    v3 = [[v8 alloc] initWithName:objc_msgSend(v3 version:"componentName") identifier:{objc_msgSend(v3, "componentVersion"), objc_msgSend(objc_msgSend(v3, "componentID"), "integerValue")}];
    if (v3)
    {
      [v6 setComponent:v3];
      [v6 setClassification:6];
      [v6 setReproducibility:6];
      [v6 setDeviceIDs:*(a1 + 64)];
      [v6 setIsUserInitiated:*(a1 + 72) == 0];
      [v6 setShouldCapturePerformanceTrace:1];
      [v6 setDiagnosticExtensionIDs:&unk_28358E6C0];
      [objc_msgSend(getTapToRadarServiceClass() "shared")];
    }

    else
    {
      APSLogErrorAt(0);
    }
  }

  else
  {
    APSLogErrorAt(0);
    v3 = 0;
  }

LABEL_17:

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    CFRelease(v13);
  }
}

void sub_2223037C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRadarDraftClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarDraft");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getRadarDraftClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np();
    return __getRadarComponentClass_block_invoke(v3);
  }

  return result;
}

void __getRadarComponentClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("RadarComponent");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getRadarComponentClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v2 = abort_report_np();
    __apsTapToRadarInvokeDetailed_block_invoke_2(v2, v3);
  }
}

void __apsTapToRadarInvokeDetailed_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2 && gLogCategory_APSTapToRadar <= 90 && (gLogCategory_APSTapToRadar != -1 || _LogCategory_Initialize()))
  {
    [a2 localizedDescription];
    LogPrintF();
  }
}

void TapToRadarKitLibrary()
{
  v11 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = TapToRadarKitLibraryCore_frameworkLibrary;
  v9 = TapToRadarKitLibraryCore_frameworkLibrary;
  if (!TapToRadarKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __TapToRadarKitLibraryCore_block_invoke;
    v3[4] = &unk_2784A3308;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_2784A32F0;
    v7[3] = _sl_dlopen();
    TapToRadarKitLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_222303AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TapToRadarKitLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  TapToRadarKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __apsRadarLogging_radarComponentEntryForAPSRadarComponentID_block_invoke()
{
  apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries)
  {
    v0 = [APSRadarComponentEntry componentEntryWithName:@"AirPlay (New Bugs)" version:@"All" ID:@"629193"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v0 forKeyedSubscript:@"AirPlay (New Bugs)"];
    v1 = [APSRadarComponentEntry componentEntryWithName:@"AirPlay Core" version:@"All" ID:@"629196"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v1 forKeyedSubscript:@"AirPlay Core"];
    v2 = [APSRadarComponentEntry componentEntryWithName:@"AirPlay Audio - Buffered" version:@"All" ID:@"1158817"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v2 forKeyedSubscript:@"AirPlay Audio - Buffered"];
    v3 = [APSRadarComponentEntry componentEntryWithName:@"AirPlay Audio - Streaming" version:@"All" ID:@"1158818"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v3 forKeyedSubscript:@"AirPlay Audio - Streaming"];
    v4 = [APSRadarComponentEntry componentEntryWithName:@"AirPlay Performance" version:@"All" ID:@"953616"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v4 forKeyedSubscript:@"AirPlay Performance"];
    v5 = [APSRadarComponentEntry componentEntryWithName:@"CoreMedia Buffered AirPlay" version:@"All" ID:@"629211"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v5 forKeyedSubscript:@"CoreMedia Buffered AirPlay"];
    v6 = [APSRadarComponentEntry componentEntryWithName:@"CoreMedia AP Video" version:@"All" ID:@"629212"];
    v7 = apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries;

    return [v7 setObject:v6 forKeyedSubscript:@"CoreMedia AP Video"];
  }

  else
  {

    return APSLogErrorAt(0);
  }
}

Class __getTapToRadarServiceClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("TapToRadarService");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getTapToRadarServiceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    abort_report_np();
    return APSTimedInfoManagerGetTypeID();
  }

  return result;
}

uint64_t APSTimedInfoManagerGetTypeID()
{
  if (gAPSTimedInfoManagerInitOnce != -1)
  {
    dispatch_once_f(&gAPSTimedInfoManagerInitOnce, 0, _APSTimedInfoManagerGetTypeID);
  }

  return gAPSTimedInfoManagerTypeID;
}

uint64_t _APSTimedInfoManagerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSTimedInfoManagerTypeID = result;
  return result;
}

void _APSTimedInfoManagerFinalize(uint64_t a1)
{
  if (gLogCategory_APSTimedInfoManager <= 30 && (gLogCategory_APSTimedInfoManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  timedInfoManager_removeAllElemFromCurrentElem(*(a1 + 80), *(a1 + 80));
  v2 = *(a1 + 32);
  FigSimpleMutexDestroy();
  CMTimebaseRemoveTimerDispatchSource(*(a1 + 40), *(a1 + 16));
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_source_cancel(*(a1 + 16));
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 24) = 0;
  }
}

void *timedInfoManager_removeAllElemFromCurrentElem(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    if (a1 == a2)
    {
      do
      {
LABEL_7:
        v6 = *v4;
        v7 = v4[5];
        if (v7)
        {
          CFRelease(v7);
        }

        free(v4);
        v4 = v6;
      }

      while (v6);
    }

    else
    {
      v4 = a1;
      while (1)
      {
        v5 = v4;
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (v4 == a2)
        {
          *v5 = 0;
          goto LABEL_7;
        }
      }
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

uint64_t APSTimedInfoManagerCreate(CFTypeRef *a1)
{
  if (a1)
  {
    if (gAPSTimedInfoManagerInitOnce != -1)
    {
      dispatch_once_f(&gAPSTimedInfoManagerInitOnce, 0, _APSTimedInfoManagerGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      *(Instance + 80) = 0;
      *(Instance + 48) = 0u;
      *(Instance + 64) = 0u;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      v4 = FigDispatchQueueCreateWithPriority();
      *(v3 + 24) = v4;
      if (v4 && (v5 = FigSimpleMutexCreate(), (*(v3 + 32) = v5) != 0))
      {
        v6 = MEMORY[0x277CC0898];
        *(v3 + 48) = *MEMORY[0x277CC0898];
        *(v3 + 64) = *(v6 + 16);
        *(v3 + 72) = 0;
        if (gLogCategory_APSTimedInfoManager <= 30 && (gLogCategory_APSTimedInfoManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v7 = 0;
        *a1 = CFRetain(v3);
      }

      else
      {
        APSLogErrorAt(0);
        v7 = 4294960568;
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

  return v7;
}

uint64_t APSTimedInfoManagerResume(uint64_t a1, const void *a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v4 = *(a1 + 32);
  FigSimpleMutexLock();
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (*(a1 + 72))
  {
    APSLogErrorAt(0);
    v9 = 4294960587;
    APSSignalErrorAt(4294960587);
    goto LABEL_12;
  }

  if (*(a1 + 16))
  {
    APSLogErrorAt(0);
  }

  else
  {
    v6 = v5;
    v7 = *(a1 + 40);
    *(a1 + 40) = a2;
    CFRetain(a2);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, *(a1 + 24));
    *(a1 + 16) = v8;
    if (!v8)
    {
      APSLogErrorAt(0);
      v9 = 4294960568;
      goto LABEL_12;
    }

    dispatch_set_context(v8, v6);
    dispatch_source_set_timer(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(*(a1 + 16), timedInfoManager_fireNotification);
    dispatch_source_set_cancel_handler_f(*(a1 + 16), FigCFRelease);
    dispatch_resume(*(a1 + 16));
    CMTimebaseAddTimerDispatchSource(*(a1 + 40), *(a1 + 16));
    *(a1 + 72) = 1;
    if (*(a1 + 73) && (*(a1 + 60) & 1) != 0)
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 16);
      v14 = *(a1 + 48);
      CMTimebaseSetTimerDispatchSourceNextFireTime(v10, v11, &v14, 1u);
      v9 = 0;
      *(a1 + 73) = 0;
      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_12:
  v12 = *(a1 + 32);
  FigSimpleMutexUnlock();
  return v9;
}

void FigCFRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void timedInfoManager_fireNotification()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    v2 = *(v0 + 32);
    FigSimpleMutexLock();
    v3 = v1 + 80;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      time1 = *(v3 + 16);
      v12 = *(v1 + 48);
      if (CMTimeCompare(&time1, &v12) <= 0)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v4 = *(v3 + 40);
        CMNotificationCenterPostNotification();
        v5 = *(v3 + 8);
        if (v5)
        {
          v6 = *(v5 + 16);
          v7 = *(v5 + 32);
          *(v1 + 64) = v7;
          *(v1 + 48) = v6;
          v8 = *(v1 + 40);
          v9 = *(v1 + 16);
          *&time1.value = *(v1 + 48);
          time1.epoch = v7;
          CMTimebaseSetTimerDispatchSourceNextFireTime(v8, v9, &time1, 1u);
        }

        else
        {
          v10 = MEMORY[0x277CC0898];
          *(v1 + 48) = *MEMORY[0x277CC0898];
          *(v1 + 64) = *(v10 + 16);
        }

        *(v1 + 80) = timedInfoManager_removeAllElemFromCurrentElem(*(v1 + 80), v3);
        break;
      }
    }

    v11 = *(v1 + 32);
    FigSimpleMutexUnlock();
    CFRelease(v1);
  }

  else
  {

    APSLogErrorAt(0);
  }
}

uint64_t APSTimedInfoManagerSuspend(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = *(a1 + 32);
    FigSimpleMutexLock();
    if (*(a1 + 72))
    {
      CMTimebaseRemoveTimerDispatchSource(*(a1 + 40), *(a1 + 16));
      *(a1 + 72) = 0;
      if (a2)
      {
        v5 = MEMORY[0x277CC0898];
        *(a1 + 48) = *MEMORY[0x277CC0898];
        *(a1 + 64) = *(v5 + 16);
        *(a1 + 80) = timedInfoManager_removeAllElemFromCurrentElem(*(a1 + 80), *(a1 + 80));
      }

      else
      {
        *(a1 + 73) = 1;
      }

      v6 = *(a1 + 16);
      if (v6)
      {
        dispatch_source_cancel(*(a1 + 16));
        dispatch_release(v6);
        *(a1 + 16) = 0;
      }

      v7 = *(a1 + 40);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 40) = 0;
      }
    }

    v8 = *(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSTimedInfoManagerAddTimedInfo(uint64_t a1, __int128 *a2, const void *a3)
{
  if (!a1)
  {
    goto LABEL_33;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    APSLogErrorAt(0);
    v18 = 4294960591;
    APSSignalErrorAt(4294960591);
    return v18;
  }

  if (!a3)
  {
LABEL_33:
    APSLogErrorAt(0);
    return 4294960591;
  }

  v6 = *(a1 + 32);
  FigSimpleMutexLock();
  v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x106004041D4C332uLL);
  if (v7)
  {
    v8 = v7;
    v9 = *a2;
    v7[4] = *(a2 + 2);
    *(v7 + 1) = v9;
    v7[5] = CFRetain(a3);
    v10 = *(a1 + 80);
    if (v10)
    {
      time1 = *(v10 + 16);
      v22 = *(v8 + 2);
      if (CMTimeCompare(&time1, &v22) < 0)
      {
        *v8 = v10;
        v8[1] = 0;
        *(v10 + 8) = v8;
      }

      else
      {
        v11 = *v10;
        if (*v10)
        {
          v12 = v10;
          while (1)
          {
            time1 = *(v11 + 2);
            v22 = *(v8 + 2);
            v13 = CMTimeCompare(&time1, &v22);
            v14 = *v12;
            if (v13 < 0)
            {
              break;
            }

            v11 = *v14;
            v12 = *v12;
            if (!*v14)
            {
              goto LABEL_16;
            }
          }

          v11 = *v12;
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

LABEL_16:
        *v8 = v11;
        *v14 = v8;
        v8[1] = v14;
        if (*v8)
        {
          *(*v8 + 8) = v8;
        }

        v8 = 0;
      }
    }

    else
    {
      *v8 = 0;
      v8[1] = 0;
    }

    if (v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    *(a1 + 80) = v15;
    if ((*(a1 + 60) & 1) != 0 && (time1 = *(a1 + 48), v22 = *a2, CMTimeCompare(&time1, &v22) < 0))
    {
      v18 = 0;
    }

    else
    {
      if (*(a1 + 72))
      {
        v16 = *(a1 + 40);
        v17 = *(a1 + 16);
        time1 = *a2;
        CMTimebaseSetTimerDispatchSourceNextFireTime(v16, v17, &time1, 1u);
      }

      else
      {
        *(a1 + 73) = 1;
      }

      v18 = 0;
      v19 = *a2;
      *(a1 + 64) = *(a2 + 2);
      *(a1 + 48) = v19;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v18 = 4294960591;
    APSSignalErrorAt(4294960591);
  }

  v20 = *(a1 + 32);
  FigSimpleMutexUnlock();
  return v18;
}

uint64_t APSTimedInfoManagerFlush(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    FigSimpleMutexLock();
    CMTimebaseRemoveTimerDispatchSource(*(a1 + 40), *(a1 + 16));
    v3 = timedInfoManager_removeAllElemFromCurrentElem(*(a1 + 80), *(a1 + 80));
    v4 = MEMORY[0x277CC0898];
    *(a1 + 80) = v3;
    *(a1 + 48) = *v4;
    *(a1 + 64) = *(v4 + 16);
    v5 = *(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSTimedInfoManagerFlushWithinTimeRange(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    v4 = *(a1 + 32);
    FigSimpleMutexLock();
    v5 = *(a1 + 80);
    if (!v5)
    {
LABEL_16:
      v12 = *(a1 + 32);
      FigSimpleMutexUnlock();
      return 0;
    }

    while (1)
    {
      v7 = a2[1];
      *&range.start.value = *a2;
      *&range.start.epoch = v7;
      *&range.duration.timescale = a2[2];
      v14 = *(v5 + 16);
      v8 = CMTimeRangeContainsTime(&range, &v14);
      v9 = *v5;
      if (v8)
      {
        break;
      }

LABEL_15:
      v5 = v9;
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    v10 = *(v5 + 1);
    if (v10)
    {
      *v10 = v9;
      v6 = *v5;
      if (!*v5)
      {
LABEL_10:
        *&range.start.value = *(v5 + 1);
        range.start.epoch = *(v5 + 4);
        v14 = *(a1 + 48);
        if (!CMTimeCompare(&range.start, &v14))
        {
          CMTimebaseRemoveTimerDispatchSource(*(a1 + 40), *(a1 + 16));
        }

        v11 = *(v5 + 5);
        if (v11)
        {
          CFRelease(v11);
        }

        free(v5);
        goto LABEL_15;
      }
    }

    else
    {
      *(a1 + 80) = v9;
      v6 = v9;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    *(v6 + 1) = v10;
    goto LABEL_10;
  }

  APSLogErrorAt(0);
  return 4294960591;
}

uint64_t APSWrapperGetTypeID()
{
  if (gAPSWrapperInitOnce != -1)
  {
    dispatch_once_f(&gAPSWrapperInitOnce, 0, _APSWrapperGetTypeID);
  }

  return gAPSWrapperTypeID;
}

uint64_t _APSWrapperGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSWrapperTypeID = result;
  return result;
}

uint64_t _APSWrapperFinalize(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    return v1(*(result + 16));
  }

  return result;
}

uint64_t APSWrapperCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294960591;
  }

  if (gAPSWrapperInitOnce != -1)
  {
    dispatch_once_f(&gAPSWrapperInitOnce, 0, _APSWrapperGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v7 = Instance;
  Instance[2] = a1;
  Instance[3] = a2;
  *a3 = CFRetain(Instance);
  CFRelease(v7);
  return 0;
}

uint64_t APSWrapperGetValue(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t APSStatsHistogramGetTypeID()
{
  if (APSStatsHistogramGetTypeID_once != -1)
  {
    dispatch_once(&APSStatsHistogramGetTypeID_once, &__block_literal_global_1509);
  }

  return APSStatsHistogramGetTypeID_typeID;
}

uint64_t __APSStatsHistogramGetTypeID_block_invoke()
{
  APSStatsHistogramGetTypeID_histogramClass = 0;
  *algn_280D68AC8 = "APSStatsHistogram";
  qword_280D68AD0 = 0;
  unk_280D68AD8 = 0;
  qword_280D68AE0 = hist_finalize;
  unk_280D68AE8 = 0;
  qword_280D68AF0 = 0;
  unk_280D68AF8 = 0;
  qword_280D68B00 = hist_copyDebugDescription;
  result = _CFRuntimeRegisterClass();
  APSStatsHistogramGetTypeID_typeID = result;
  return result;
}

uint64_t APSStatsHistogramCreateFromSerializedDictionary(const __CFDictionary *a1, uint64_t *a2)
{
  v25 = 0;
  if (!a1)
  {
    APSLogErrorAt(0);
    v25 = -6705;
    if (gLogCategory_APStatsHistogram > 90 || gLogCategory_APStatsHistogram == -1 && !_LogCategory_Initialize())
    {
      return v25;
    }

LABEL_35:
    LogPrintF();
    return v25;
  }

  if (!a2)
  {
    APSLogErrorAt(0);
    v25 = -6705;
    if (gLogCategory_APStatsHistogram > 90 || gLogCategory_APStatsHistogram == -1 && !_LogCategory_Initialize())
    {
      return v25;
    }

    goto LABEL_35;
  }

  v4 = *MEMORY[0x277CBECE8];
  if (APSStatsHistogramGetTypeID_once != -1)
  {
    dispatch_once(&APSStatsHistogramGetTypeID_once, &__block_literal_global_1509);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    v25 = -6728;
    if (gLogCategory_APStatsHistogram > 90 || gLogCategory_APStatsHistogram == -1 && !_LogCategory_Initialize())
    {
      return v25;
    }

    goto LABEL_35;
  }

  v6 = Instance;
  *(Instance + 128) = 0;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  v7 = FigSimpleMutexCreate();
  *(v6 + 16) = v7;
  if (!v7)
  {
    APSLogErrorAt(0);
    v25 = -6728;
    if (gLogCategory_APStatsHistogram > 90 || gLogCategory_APStatsHistogram == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_25;
    }

LABEL_23:
    LogPrintF();
LABEL_25:
    CFRelease(v6);
    return v25;
  }

  Value = CFDictionaryGetValue(a1, @"Name");
  if (!Value)
  {
    *(v6 + 24) = 0;
    goto LABEL_21;
  }

  v9 = CFRetain(Value);
  *(v6 + 24) = v9;
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = CFDictionaryGetValue(a1, @"UnitName");
  if (!v10)
  {
    *(v6 + 32) = 0;
    goto LABEL_21;
  }

  v11 = CFRetain(v10);
  *(v6 + 32) = v11;
  if (!v11)
  {
LABEL_21:
    APSLogErrorAt(0);
    v25 = -6727;
    if (gLogCategory_APStatsHistogram > 90 || gLogCategory_APStatsHistogram == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  *(v6 + 120) = Int64Ranged;
  if (!Int64Ranged)
  {
    APSLogErrorAt(0);
    v25 = -6709;
    if (gLogCategory_APStatsHistogram > 90 || gLogCategory_APStatsHistogram == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  CFDictionaryGetDouble();
  *(v6 + 88) = SecondsToUpTicksF();
  CFDictionaryGetDouble();
  *(v6 + 40) = v13;
  CFDictionaryGetDouble();
  *(v6 + 48) = v14;
  *(v6 + 128) = CFDictionaryGetInt64() != 0;
  CFDictionaryGetDouble();
  *(v6 + 72) = v15;
  *(v6 + 124) = CFDictionaryGetInt64Ranged();
  *(v6 + 104) = mach_absolute_time();
  CFDictionaryGetDouble();
  v16 = *(v6 + 104);
  *(v6 + 96) = v16 - SecondsToUpTicksF();
  CFDictionaryGetDouble();
  *(v6 + 56) = v17;
  CFDictionaryGetDouble();
  *(v6 + 64) = v18;
  CFDictionaryGetDouble();
  *(v6 + 80) = v19;
  if (!CFDictionaryGetValue(a1, @"Samples"))
  {
    goto LABEL_21;
  }

  v20 = malloc_type_calloc(*(v6 + 120), 4uLL, 0x100004052888210uLL);
  *(v6 + 112) = v20;
  if (!v20)
  {
    APSLogErrorAt(0);
    v25 = -6728;
    if (gLogCategory_APStatsHistogram > 90 || gLogCategory_APStatsHistogram == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (*(v6 + 120))
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(v6 + 112);
      FigCFArrayGetInt32AtIndex();
      ++v22;
      v21 += 4;
    }

    while (v22 < *(v6 + 120));
  }

  *a2 = v6;
  return v25;
}

uint64_t APSStatsHistogramRemoveAllValues(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 72) > 0.0)
    {
      v2 = *(result + 16);
      FigSimpleMutexLock();
      bzero(*(v1 + 112), 4 * *(v1 + 120));
      *(v1 + 124) = 0;
      *(v1 + 96) = 0;
      *(v1 + 104) = 0;
      v3 = *(v1 + 16);

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t APSStatsHistogramCreateSerializedDictionary(uint64_t a1, __CFDictionary **a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt(0);
        if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return 4294960568;
      }

      v6 = Mutable;
      if (*(a1 + 120))
      {
        CFDictionarySetInt64();
        CFDictionarySetValue(v6, @"Name", *(a1 + 24));
        CFDictionarySetValue(v6, @"UnitName", *(a1 + 32));
        v7 = *(a1 + 88);
        UpTicksToSecondsF();
        FigCFDictionarySetDouble();
        v8 = *(a1 + 40);
        FigCFDictionarySetDouble();
        v9 = *(a1 + 48);
        FigCFDictionarySetDouble();
        v10 = MEMORY[0x277CBED28];
        if (!*(a1 + 128))
        {
          v10 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v6, @"ConvertToRate", *v10);
        v11 = *(a1 + 72);
        FigCFDictionarySetDouble();
        v12 = *(a1 + 16);
        FigSimpleMutexLock();
        v13 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
        if (v13)
        {
          v14 = v13;
          if (*(a1 + 120))
          {
            v15 = 0;
            do
            {
              v16 = *(*(a1 + 112) + 4 * v15);
              FigCFArrayAppendInt32();
              ++v15;
            }

            while (v15 < *(a1 + 120));
          }

          CFDictionarySetValue(v6, @"Samples", v14);
          v17 = *(a1 + 124);
          CFDictionarySetInt64();
          v19 = *(a1 + 96);
          v18 = *(a1 + 104);
          UpTicksToSecondsF();
          FigCFDictionarySetDouble();
          v20 = *(a1 + 56);
          FigCFDictionarySetDouble();
          v21 = *(a1 + 64);
          FigCFDictionarySetDouble();
          v22 = *(a1 + 80);
          FigCFDictionarySetDouble();
          *a2 = v6;
          v23 = *(a1 + 16);
          FigSimpleMutexUnlock();
          CFRelease(v14);
          return 0;
        }

        APSLogErrorAt(0);
        if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v26 = *(a1 + 16);
        FigSimpleMutexUnlock();
        v24 = 4294960568;
      }

      else
      {
        APSLogErrorAt(0);
        if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v24 = 4294960587;
      }

      CFRelease(v6);
      return v24;
    }

    APSLogErrorAt(0);
    if (gLogCategory_APStatsHistogram == -1)
    {
      _LogCategory_Initialize();
    }
  }

  else
  {
    APSLogErrorAt(0);
    if (gLogCategory_APStatsHistogram == -1)
    {
      _LogCategory_Initialize();
    }
  }

  result = LogPrintF();
  __break(1u);
  return result;
}

__CFString *APSStatsHistogramCopyAsRTCString(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (a1)
  {
    v3 = *(a1 + 16);
    FigSimpleMutexLock();
    v4 = *(a1 + 124);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = 1.0;
    }

    LODWORD(v5) = **(a1 + 112);
    CFStringAppendFormat(Mutable, 0, @"%u,%.1f,%d,", v4, *(a1 + 56), (*&v5 * 100.0 / v6 + 0.5));
    if (*(a1 + 120) >= 2u)
    {
      v7 = 1;
      do
      {
        v8 = *(a1 + 72);
        v9 = *(a1 + 40) + v8 * v7;
        LODWORD(v8) = *(*(a1 + 112) + 4 * v7);
        CFStringAppendFormat(Mutable, 0, @"%.1f,%d,", *&v9, (*&v8 * 100.0 / v6 + 0.5));
        ++v7;
      }

      while (v7 < *(a1 + 120));
    }

    CFStringAppendFormat(Mutable, 0, @"%.1f", *(a1 + 64));
    v10 = *(a1 + 16);
    FigSimpleMutexUnlock();
  }

  return Mutable;
}

__CFString *APSStatsHistogramCopyPercentageValuesAsRTCString(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (a1)
  {
    v3 = *(a1 + 16);
    FigSimpleMutexLock();
    v4 = *(a1 + 124);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = 1.0;
    }

    LODWORD(v5) = **(a1 + 112);
    CFStringAppendFormat(Mutable, 0, @"%d", (*&v5 * 100.0 / v6 + 0.5));
    if (*(a1 + 120) >= 2u)
    {
      v8 = 1;
      do
      {
        LODWORD(v7) = *(*(a1 + 112) + 4 * v8);
        CFStringAppendFormat(Mutable, 0, @",%d", (v7 * 100.0 / v6 + 0.5));
        ++v8;
      }

      while (v8 < *(a1 + 120));
    }

    v9 = *(a1 + 16);
    FigSimpleMutexUnlock();
  }

  return Mutable;
}

__CFString *APSStatsHistogramCopyValuesAsRTCString(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (a1)
  {
    v3 = *(a1 + 16);
    FigSimpleMutexLock();
    CFStringAppendFormat(Mutable, 0, @"%d", **(a1 + 112));
    if (*(a1 + 120) >= 2u)
    {
      v4 = 1;
      do
      {
        CFStringAppendFormat(Mutable, 0, @",%d", *(*(a1 + 112) + 4 * v4++));
      }

      while (v4 < *(a1 + 120));
    }

    v5 = *(a1 + 16);
    FigSimpleMutexUnlock();
  }

  return Mutable;
}

uint64_t APSStatsHistogramGetTotalSampleCount(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  FigSimpleMutexLock();
  v3 = *(a1 + 124);
  v4 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t APSStatsHistogramGetSampleCountInRange(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  FigSimpleMutexLock();
  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = 0;
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    if (v10 >= v9)
    {
      v10 = *(a1 + 40);
    }

    for (i = 1; i <= v7; ++i)
    {
      v12 = v10;
      if (v7 == i)
      {
        v10 = *(a1 + 64);
        if (v10 <= *(a1 + 48))
        {
          v10 = *(a1 + 48);
        }
      }

      else
      {
        v10 = v9 + *(a1 + 72) * i;
      }

      if (v12 >= a2 && v10 <= a3)
      {
        v8 = (*(*(a1 + 112) + 4 * (i - 1)) + v8);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t APSLocalAudioCapabilityMonitorGetTypeID()
{
  if (gAPSLocalAudioCapabilityMonitorInitOnce != -1)
  {
    dispatch_once_f(&gAPSLocalAudioCapabilityMonitorInitOnce, 0, _APSLocalAudioCapabilityMonitorGetTypeID);
  }

  return gAPSLocalAudioCapabilityMonitorTypeID;
}

uint64_t _APSLocalAudioCapabilityMonitorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSLocalAudioCapabilityMonitorTypeID = result;
  return result;
}

void _APSLocalAudioCapabilityMonitorFinalize(void *a1)
{
  if (gLogCategory_APSLocalAudioCapabilityMonitor <= 50 && (gLogCategory_APSLocalAudioCapabilityMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *MEMORY[0x277D27168];
  v3 = a1[4];
  FigNotificationCenterRemoveWeakListener();
  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[2];
  FigSimpleMutexDestroy();
  v8 = a1[3];
  if (v8)
  {
    dispatch_release(v8);
    a1[3] = 0;
  }
}

void apsCapabilityMonitor_handleFormatInfoChanged(uint64_t a1, void *a2)
{
  v22 = 0;
  cf = 0;
  v2 = a2[4];
  if (!v2 || (v4 = a2[4], (v5 = *(CMBaseObjectGetVTable() + 16)) == 0))
  {
    v9 = 4294948075;
    goto LABEL_19;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    v9 = 4294948071;
    goto LABEL_19;
  }

  v7 = *(v5 + 48);
  v8 = *MEMORY[0x277CBECE8];
  v9 = v6(v2, *MEMORY[0x277D272E8], *MEMORY[0x277CBECE8], &cf);
  if (v9)
  {
LABEL_19:
    APSLogErrorAt(v9);
    goto LABEL_20;
  }

  v10 = a2[4];
  if (!v10 || (v11 = a2[4], (v12 = *(CMBaseObjectGetVTable() + 16)) == 0))
  {
    v9 = 4294948075;
    goto LABEL_19;
  }

  v13 = *(v12 + 48);
  if (!v13)
  {
    v9 = 4294948071;
    goto LABEL_19;
  }

  v14 = *(v12 + 48);
  v9 = v13(v10, *MEMORY[0x277D272E0], v8, &v22);
  if (v9)
  {
    goto LABEL_19;
  }

  v15 = *(gAPSLocalAudioCapabilityMonitor + 16);
  FigSimpleMutexLock();
  v16 = a2[5];
  v17 = cf;
  a2[5] = cf;
  if (v17)
  {
    CFRetain(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v18 = a2[6];
  v19 = v22;
  a2[6] = v22;
  if (v19)
  {
    CFRetain(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v20 = *(gAPSLocalAudioCapabilityMonitor + 16);
  FigSimpleMutexUnlock();
  v21 = a2[3];
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

uint64_t APSLocalAudioCapabilityMonitorInitialize()
{
  if (APSLocalAudioCapabilityMonitorInitialize_once != -1)
  {
    dispatch_once(&APSLocalAudioCapabilityMonitorInitialize_once, &__block_literal_global_1587);
  }

  return gCreationErr;
}

void __APSLocalAudioCapabilityMonitorInitialize_block_invoke()
{
  if (gAPSLocalAudioCapabilityMonitorInitOnce != -1)
  {
    dispatch_once_f(&gAPSLocalAudioCapabilityMonitorInitOnce, 0, _APSLocalAudioCapabilityMonitorGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
LABEL_14:
    v5 = -6728;
    goto LABEL_11;
  }

  v1 = Instance;
  *(Instance + 16) = 0u;
  v2 = (Instance + 16);
  *(Instance + 48) = 0;
  *(Instance + 32) = 0u;
  v3 = dispatch_queue_create("APSLocalAudioCapabilityMonitor.queue", 0);
  v2[1] = v3;
  if (!v3 || (v4 = FigSimpleMutexCreate(), (*v2 = v4) == 0))
  {
    APSLogErrorAt(0);
    CFRelease(v1);
    goto LABEL_14;
  }

  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  if (gLogCategory_APSLocalAudioCapabilityMonitor <= 50 && (gLogCategory_APSLocalAudioCapabilityMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  gAPSLocalAudioCapabilityMonitor = v1;
  dispatch_async(*(v1 + 24), &__block_literal_global_16_1593);
  v5 = 0;
LABEL_11:
  gCreationErr = v5;
}

void __APSLocalAudioCapabilityMonitorCreate_block_invoke()
{
  cf = 0;
  v6 = 0;
  v4 = 0;
  v0 = *MEMORY[0x277CBECE8];
  UsingAuxiliaryAVAudioSession = FigAudioSessionCreateUsingAuxiliaryAVAudioSession();
  if (!UsingAuxiliaryAVAudioSession)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v2 = *MEMORY[0x277D27168];
    v3 = *(gAPSLocalAudioCapabilityMonitor + 24);
    UsingAuxiliaryAVAudioSession = FigNotificationCenterAddWeakListener();
    if (!UsingAuxiliaryAVAudioSession)
    {
      UsingAuxiliaryAVAudioSession = 4294948075;
    }
  }

  APSLogErrorAt(UsingAuxiliaryAVAudioSession);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t APSLocalAudioCapabilityMonitorGetSharedInstance(void *a1)
{
  if (APSLocalAudioCapabilityMonitorInitialize_once == -1)
  {
    if (!a1)
    {
      return gCreationErr;
    }
  }

  else
  {
    dispatch_once(&APSLocalAudioCapabilityMonitorInitialize_once, &__block_literal_global_1587);
    if (!a1)
    {
      return gCreationErr;
    }
  }

  v2 = gAPSLocalAudioCapabilityMonitor;
  if (gAPSLocalAudioCapabilityMonitor)
  {
    v2 = CFRetain(gAPSLocalAudioCapabilityMonitor);
  }

  *a1 = v2;
  return gCreationErr;
}

uint64_t APSLocalAudioCapabilityMonitorCopyProperty(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a2 || !a3)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  if (FigCFEqual())
  {
    v6 = a1 + 2;
    v5 = a1[2];
    FigSimpleMutexLock();
    v7 = a1[5];
    if (v7)
    {
LABEL_5:
      v7 = CFRetain(v7);
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      v9 = 4294954512;
      goto LABEL_7;
    }

    v6 = a1 + 2;
    v10 = a1[2];
    FigSimpleMutexLock();
    v7 = a1[6];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  *a3 = v7;
  v8 = *v6;
  FigSimpleMutexUnlock();
  v9 = 0;
LABEL_7:
  if (gLogCategory_APSLocalAudioCapabilityMonitor <= 50 && (gLogCategory_APSLocalAudioCapabilityMonitor != -1 || _LogCategory_Initialize()))
  {
    v12 = *a3;
    LogPrintF();
  }

  return v9;
}

uint64_t APSFormatSelectorGetClassID()
{
  if (APSFormatSelectorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSFormatSelectorGetClassID_sRegisterOnce, &APSFormatSelectorGetClassID_sClassID, formatSelector_registerBaseClass);
  }

  return APSFormatSelectorGetClassID_sClassID;
}

uint64_t formatSelector_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&formatSelector_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSFormatSelectorGetTypeID()
{
  if (APSFormatSelectorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSFormatSelectorGetClassID_sRegisterOnce, &APSFormatSelectorGetClassID_sClassID, formatSelector_registerBaseClass);
  }

  v1 = APSFormatSelectorGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSRealTimeReadableGetTypeID()
{
  if (gAPSRealTimeReadableInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimeReadableInitOnce, 0, _APSRealTimeReadableGetTypeID);
  }

  return gAPSRealTimeReadableTypeID;
}

uint64_t _APSRealTimeReadableGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRealTimeReadableTypeID = result;
  return result;
}

uint64_t _APSRealTimeReadableFinalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 32);

  return FigSimpleMutexDestroy();
}

uint64_t APSRealTimeReadableCreate(const void *a1, size_t a2, CFTypeRef *a3)
{
  if (a2 && a3)
  {
    if (gAPSRealTimeReadableInitOnce != -1)
    {
      dispatch_once_f(&gAPSRealTimeReadableInitOnce, 0, _APSRealTimeReadableGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      v8 = malloc_type_malloc(a2, 0xF099C89uLL);
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = v8;
      if (a1)
      {
        memcpy(v8, a1, a2);
      }

      else
      {
        bzero(v8, a2);
      }

      v7[5] = v9;
      v7[2] = a2;
      v7[3] = v9;
      v10 = FigSimpleMutexCreate();
      v7[4] = v10;
      if (v10)
      {
        v11 = 0;
        *a3 = CFRetain(v7);
      }

      else
      {
LABEL_16:
        APSLogErrorAt(0);
        v11 = 4294960568;
      }

      CFRelease(v7);
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

  return v11;
}

uint64_t APSRealTimeReadableRead(uint64_t a1, void *__dst)
{
  if (a1 && __dst)
  {
    v2 = (a1 + 24);
    v3 = atomic_exchange_explicit((a1 + 24), 0, memory_order_acquire);
    if (v3)
    {
      memcpy(__dst, v3, *(a1 + 16));
      v4 = 0;
      atomic_store(v3, v2);
    }

    else
    {
      APSLogErrorAt(0);
      v4 = 4294960537;
      APSSignalErrorAt(4294960537);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v4;
}

uint64_t APSRealTimeReadableWrite(size_t *a1, const void *a2)
{
  if (a1 && a2)
  {
    v4 = malloc_type_malloc(a1[2], 0x65D42D2CuLL);
    if (v4)
    {
      v5 = v4;
      memcpy(v4, a2, a1[2]);
      v6 = a1[4];
      FigSimpleMutexLock();
      v7 = (a1 + 3);
      v8 = a1[5];
      while (1)
      {
        v9 = v8;
        atomic_compare_exchange_strong_explicit(v7, &v9, v5, memory_order_release, memory_order_relaxed);
        if (v9 == v8)
        {
          break;
        }

        pthread_yield_np();
        v8 = a1[5];
        v7 = (a1 + 3);
      }

      a1[5] = v5;
      v10 = a1[4];
      FigSimpleMutexUnlock();
      free(v8);
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

uint64_t APSRealTimeAllocatorGetDefault()
{
  if (APSRealTimeAllocatorGetDefault::sRTAllocatorOnce != -1)
  {
    dispatch_once(&APSRealTimeAllocatorGetDefault::sRTAllocatorOnce, &__block_literal_global_1621);
  }

  return APSRealTimeAllocatorGetDefault::sRTAllocator;
}

void __APSRealTimeAllocatorGetDefault_block_invoke()
{
  MEMORY[0x223DB55F0]();
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
LABEL_7:

    dispatch_once(&rtReleaser_getInstance(void)::sRTReleaserOnce, &__block_literal_global_7);
    return;
  }

  APSCaulkMemoryResourceAllocatorCreate(*MEMORY[0x277D7F098], 0, &APSRealTimeAllocatorGetDefault::sRTAllocator);
  if (APSSettingsGetIntWithOverrideAndDefault(@"debugRTAllocator", 0, 0))
  {
    APSDebugAllocatorCreate(APSRealTimeAllocatorGetDefault::sRTAllocator, @"APSRealTimeAllocator", &APSRealTimeAllocatorGetDefault::sRTAllocator);
  }

  if (rtReleaser_getInstance(void)::sRTReleaserOnce != -1)
  {
    goto LABEL_7;
  }
}

uint64_t ___ZL22rtReleaser_getInstancev_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  rtReleaser_getInstance(void)::sRTReleaser = dispatch_queue_create("APSRealTimeReleaser", v0);
  APSAtomicMessageQueueCreate(*MEMORY[0x277CBECE8], 8, &qword_27D00BB30);
  v1 = rtReleaser_getInstance(void)::sRTReleaser;
  v2 = qword_27D00BB30;

  return APSRealTimeSignalCreate(v1, v2, rtReleaser_serviceMessageQueue, 0, &qword_27D00BB38);
}

uint64_t rtReleaser_serviceMessageQueue(uint64_t a1)
{
  for (cf = 0; ; CFRelease(cf))
  {
    result = APSAtomicMessageQueueReadMessage(a1, &cf);
    if (!result)
    {
      break;
    }
  }

  return result;
}

void APSRealTimeAllocatorAllocate()
{
  if (APSRealTimeAllocatorGetDefault::sRTAllocatorOnce != -1)
  {
    dispatch_once(&APSRealTimeAllocatorGetDefault::sRTAllocatorOnce, &__block_literal_global_1621);
  }

  JUMPOUT(0x223DB3470);
}

void APSRealTimeAllocatorDeallocate(void *ptr)
{
  if (APSRealTimeAllocatorGetDefault::sRTAllocatorOnce != -1)
  {
    dispatch_once(&APSRealTimeAllocatorGetDefault::sRTAllocatorOnce, &__block_literal_global_1621);
  }

  v2 = APSRealTimeAllocatorGetDefault::sRTAllocator;

  CFAllocatorDeallocate(v2, ptr);
}

void APSCFRealTimeRelease(CFTypeRef cf)
{
  v5 = cf;
  if (rtReleaser_getInstance(void)::sRTReleaserOnce == -1)
  {
    if (!cf)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&rtReleaser_getInstance(void)::sRTReleaserOnce, &__block_literal_global_7);
    if (!cf)
    {
      return;
    }
  }

  v2 = CFGetAllocator(cf);
  if (APSRealTimeAllocatorGetDefault::sRTAllocatorOnce != -1)
  {
    dispatch_once(&APSRealTimeAllocatorGetDefault::sRTAllocatorOnce, &__block_literal_global_1621);
  }

  if (v2 == APSRealTimeAllocatorGetDefault::sRTAllocator)
  {

    CFRelease(cf);
  }

  else
  {
    APSAtomicMessageQueueSendMessage(qword_27D00BB30, &v5);
    v3 = *(qword_27D00BB38 + 16);
    v4 = 1;
    atomic_compare_exchange_strong_explicit(v3 + 10, &v4, 2u, memory_order_release, memory_order_relaxed);
    if (v4 == 1)
    {

      caulk::concurrent::messenger::enqueue((v3 + 6), v3);
    }
  }
}

uint64_t APSAudioStats_MarkEvent(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v2 = result;
    if (gLogCategory_APSAudioStats <= 50)
    {
      v3 = *(result + 16);
      if (gLogCategory_APSAudioStats != -1 || (result = _LogCategory_Initialize(), result))
      {
        v4 = *(v2 + 24);
        if (v4 > 0.0)
        {
          v5 = *(v2 + 392) / v4;
        }

        result = LogPrintF();
      }
    }

    *(v2 + 392) = 0;
  }

  else
  {

    return APSLogErrorAt(0);
  }

  return result;
}

uint64_t __APSAudioStatsGetTypeID_block_invoke()
{
  APSAudioStatsGetTypeID_histogramClass = 0;
  unk_27D00BB50 = "APSAudioStats";
  qword_27D00BB58 = 0;
  unk_27D00BB60 = 0;
  qword_27D00BB68 = APSAudioStatsFinalize;
  unk_27D00BB70 = 0;
  qword_27D00BB78 = 0;
  unk_27D00BB80 = 0;
  qword_27D00BB88 = APSAudioStatsCopyDebugDescription;
  result = _CFRuntimeRegisterClass();
  APSAudioStatsGetTypeID_typeID = result;
  return result;
}

uint64_t APSIssueReporterProtocolGetProtocolID()
{
  if (APSIssueReporterProtocolGetProtocolID_sAPSIssueReporterProtocolIDOnce != -1)
  {
    dispatch_once_f(&APSIssueReporterProtocolGetProtocolID_sAPSIssueReporterProtocolIDOnce, &APSIssueReporterProtocolGetProtocolID_sAPSIssueReporterProtocolID, issueReporter_registerProtocol);
  }

  return APSIssueReporterProtocolGetProtocolID_sAPSIssueReporterProtocolID;
}

uint64_t APSRealTimeDispatcherGetTypeID()
{
  if (gAPSRealTimeDispatcherInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimeDispatcherInitOnce, 0, _APSRealTimeDispatcherGetTypeID);
  }

  return gAPSRealTimeDispatcherTypeID;
}

uint64_t _APSRealTimeDispatcherGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRealTimeDispatcherTypeID = result;
  return result;
}

void _APSRealTimeDispatcherFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t APSRealTimeDispatcherCreate(NSObject *a1, CFTypeRef *a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (gAPSRealTimeDispatcherInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimeDispatcherInitOnce, 0, _APSRealTimeDispatcherGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v5 = Instance;
  Instance[3] = 0;
  v6 = Instance + 3;
  Instance[2] = 0;
  Instance[4] = 0;
  dispatch_retain(a1);
  *(v6 - 1) = a1;
  v7 = APSAtomicMessageQueueCreate(*MEMORY[0x277CBECE8], 16, v6);
  if (v7)
  {
    v9 = v7;
    goto LABEL_14;
  }

  v8 = CFRetain(v5[3]);
  v7 = APSRealTimeSignalCreate(a1, v8, rtDispatcher_signalHandler, rtDispatcher_signalFinalizer, (v5 + 4));
  v9 = v7;
  if (v7)
  {
LABEL_14:
    APSLogErrorAt(v7);
    goto LABEL_9;
  }

  *a2 = CFRetain(v5);
LABEL_9:
  CFRelease(v5);
  return v9;
}