uint64_t APTTrafficMetricsResponseReceived(uint64_t result)
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

uint64_t stream_SendMessageCreatingReply(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  if (*(DerivedStorage + 72))
  {
    APSLogErrorAt();
    v29 = v51;
    v30 = -16617;
  }

  else
  {
    v10 = *(DerivedStorage + 24);
    OUTLINED_FUNCTION_11_7();
    if (v12)
    {
      v11 = 48;
    }

    v13 = *(v9 + v11);
    if (*(v13 + 9))
    {
      dispatch_semaphore_wait(*(v9 + 32), 0xFFFFFFFFFFFFFFFFLL);
      v14 = *(v9 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __stream_SendMessageCreatingReply_block_invoke;
      block[3] = &unk_278BC9E70;
      v41 = a2;
      block[8] = a3;
      block[9] = v9;
      block[10] = v13;
      block[4] = &v50;
      block[5] = &v46;
      block[6] = &v42;
      block[7] = a1;
      dispatch_sync(v14, block);
      if (*(v51 + 6))
      {
        goto LABEL_19;
      }

      v15 = v43[3];
      v16 = *(v47 + 6);
      if (v16)
      {
        v17 = dispatch_time(0, 1000000000 * v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = dispatch_semaphore_wait(v15, v17);
      v19 = v18 != 0;
      if (!v18)
      {
        goto LABEL_18;
      }

      v20 = gLogCategory_APTransportStream;
      if (gLogCategory_APTransportStream > 50)
      {
        goto LABEL_18;
      }

      if (gLogCategory_APTransportStream == -1)
      {
        if (!OUTLINED_FUNCTION_8())
        {
LABEL_18:
          v22 = *(v9 + 64);
          OUTLINED_FUNCTION_1_27();
          v33 = 0x40000000;
          v34 = __stream_SendMessageCreatingReply_block_invoke_2;
          v35 = &unk_278BC9E98;
          v36 = &v50;
          v37 = v9;
          v39 = v19;
          v38 = a4;
          dispatch_sync(v23, v32);
          goto LABEL_19;
        }

        v20 = gLogCategory_APTransportStream;
      }

      v21 = *(v47 + 6);
      if (v20 == -1)
      {
        _LogCategory_Initialize();
      }

      OUTLINED_FUNCTION_9();
      goto LABEL_18;
    }

    APSLogErrorAt();
    v29 = v51;
    v30 = -16614;
  }

  *(v29 + 6) = v30;
LABEL_19:
  v24 = v43[3];
  if (v24)
  {
    dispatch_release(v24);
  }

  v25 = *(v9 + 64);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 0x40000000;
  v31[2] = __stream_SendMessageCreatingReply_block_invoke_3;
  v31[3] = &__block_descriptor_tmp_166;
  v31[4] = v9;
  dispatch_sync(v25, v31);
  dispatch_semaphore_signal(*(v9 + 32));
  v26 = *(v51 + 6);
  if (v26 == -6722)
  {
    v27 = *(CMBaseObjectGetDerivedStorage() + 64);
    APSDispatchSyncTask();
    v26 = *(v51 + 6);
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  return v26;
}

void APTransportPackageHTTPSetURL(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  if (a2)
  {
    CFRetain(a2);
  }

  *DerivedStorage = a2;
  if (v4)
  {

    CFRelease(v4);
  }
}

void httpPackage_computeMessageTypeString()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) == 1668246893)
  {
    v1 = DerivedStorage;
    CFDictionaryGetTypeID();
    v2 = CFCreateWithPlistBytes();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    v3 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  SNPrintF();
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t httppackage_SetGroupID(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 32) = a2;
  return result;
}

uint64_t httppackage_GetErrorFromHeader()
{
  v0 = *(*(CMBaseObjectGetDerivedStorage() + 24) + 8456);
  v1 = v0 - 200;
  v2 = v0 + 200000;
  if (v1 >= 0x64)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void aptTrafficMetrics_intervalTimerHandler(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 112))
  {
    goto LABEL_34;
  }

  v3 = (a1 + 392);
  v4 = a1 + 320;
  if (*(a1 + 104) == 5)
  {
    aptTrafficMetrics_handleQueuedEvents(a1);
    v5 = mach_absolute_time();
    v6 = OUTLINED_FUNCTION_5_13(v5);
    v8 = *(a1 + 112);
    aptTrafficMetrics_fillSendingWindowsRep(a1, v6 - v7, v64);
    *(a1 + 392) += *(a1 + 128);
    *(a1 + 408) = vaddq_s64(*(a1 + 408), *(a1 + 144));
    v9 = 1;
    do
    {
      OUTLINED_FUNCTION_8_3();
      v11 = v11 || v10 == 0;
      if (!v11)
      {
        v9 = 0;
      }

      v4 += 8;
    }

    while (v10 != -2);
    if (*(a1 + 80) && v9)
    {
      goto LABEL_29;
    }

    v12 = **(a1 + 16);
    if (v12 > 50)
    {
      goto LABEL_29;
    }

    if (v12 == -1)
    {
      v43 = *(a1 + 16);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      v49 = *(a1 + 16);
      v62 = *(a1 + 144);
      v50 = *(a1 + 128);
    }

    v60 = *(a1 + 24);
    v13 = *(a1 + 368);
    UpTicksToMilliseconds();
    v14 = *(a1 + 376);
    UpTicksToMilliseconds();
    v15 = *(a1 + 384);
    UpTicksToMilliseconds();
    UpTicksToMilliseconds();
    v16 = *(a1 + 408);
    v17 = *(a1 + 392);
    v18 = *(a1 + 632);
    UpTicksToMilliseconds();
    v19 = *(a1 + 640);
    UpTicksToMilliseconds();
    v20 = *(a1 + 648);
    UpTicksToMilliseconds();
    UpTicksToMilliseconds();
    OUTLINED_FUNCTION_9_7();
    LogPrintF();
LABEL_29:
    bzero((a1 + 128), 0x108uLL);
    *(a1 + 80) = v9;
    goto LABEL_32;
  }

  aptTrafficMetrics_handleQueuedEvents(a1);
  v21 = mach_absolute_time();
  v22 = OUTLINED_FUNCTION_5_13(v21);
  v24 = *(a1 + 112);
  aptTrafficMetrics_fillSendingWindowsRep(a1, v22 - v23, v64);
  *v3 = vaddq_s64(*v3, *(a1 + 128));
  *(a1 + 416) += *(a1 + 152);
  v25 = 1;
  do
  {
    OUTLINED_FUNCTION_8_3();
    if (!v11 && v26 != 8)
    {
      v25 = 0;
    }

    v4 += 8;
  }

  while (v26 != 1);
  if (!*(a1 + 80) || !v25)
  {
    v28 = **(a1 + 16);
    if (v28 <= 50)
    {
      if (v28 == -1)
      {
        v44 = *(a1 + 16);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_31;
        }

        v51 = *(a1 + 16);
        v61 = *(a1 + 128);
        v63 = *(a1 + 136);
      }

      v59 = *(a1 + 24);
      v29 = *(a1 + 328);
      UpTicksToMilliseconds();
      v30 = *(a1 + 336);
      UpTicksToMilliseconds();
      v31 = *(a1 + 344);
      UpTicksToMilliseconds();
      v32 = *(a1 + 352);
      UpTicksToMilliseconds();
      v58 = *(a1 + 104) == 4;
      v33 = *(a1 + 360);
      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      v57 = *(a1 + 672) == 4;
      v56 = *(a1 + 416);
      v34 = *(a1 + 152);
      UpTicksToMilliseconds();
      v35 = *(a1 + 416);
      UpTicksToMilliseconds();
      v36 = *(a1 + 656);
      UpTicksToMilliseconds();
      v55 = *(a1 + 656) > *(a1 + 664);
      UpTicksToMilliseconds();
      v54 = *(a1 + 656) < *(a1 + 664);
      v52 = *(a1 + 392);
      v53 = *(a1 + 400);
      v37 = *(a1 + 592);
      UpTicksToMilliseconds();
      v38 = *(a1 + 600);
      UpTicksToMilliseconds();
      v39 = *(a1 + 608);
      UpTicksToMilliseconds();
      v40 = *(a1 + 616);
      UpTicksToMilliseconds();
      v41 = *(a1 + 104) == 4;
      v42 = *(a1 + 624);
      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      OUTLINED_FUNCTION_9_7();
      LogPrintF();
    }
  }

LABEL_31:
  bzero((a1 + 128), 0x108uLL);
  *(a1 + 80) = v25;
LABEL_32:
  *(a1 + 72) = v1;
  if (!*(a1 + 120))
  {
    v45 = *(a1 + 48);
    Current = CFAbsoluteTimeGetCurrent();
    v47 = dispatch_time(0, (-(Current - (floor(Current / 5.0) + 1.0) * 5.0) * 1000000000.0));
    dispatch_source_set_timer(v45, v47, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

LABEL_34:
  v48 = *MEMORY[0x277D85DE8];
}

uint64_t aptTrafficMetrics_fillSendingWindowsRep(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1[12];
  if (a2 / v7 >= 0x13)
  {
    v8 = 19;
  }

  else
  {
    v8 = a2 / v7;
  }

  v9 = a1 + 20;
  v10 = -1;
  v11 = a1 + 20;
  do
  {
    v13 = *v11++;
    v12 = v13;
    if (v13 > v6)
    {
      v6 = v12;
    }

    ++v10;
  }

  while (v10 < v8);
  v14 = a1[11];
  if (v6 > v14)
  {
    a1[11] = v6;
  }

  result = UpTicksToMilliseconds();
  if (v7 <= a2 && result - 500 * v8 <= 0x63)
  {
    v8 = (__PAIR128__(v8, v9[v8]) - 1) >> 64;
  }

  v16 = 0;
  v17 = 19;
  if (v8 < 0x13)
  {
    v17 = v8;
  }

  v18 = v17 + 1;
  do
  {
    *(a3 + v16) = (a1[11] + 9 * v9[v16] - 1) / a1[11] + 48;
    ++v16;
  }

  while (v18 != v16);
  if (v6 > v14)
  {
    *(a3 + v18) = 42;
    v18 = v16 + 1;
  }

  *(a3 + v18) = 0;
  return result;
}

uint64_t httpconnection_CopyProperty()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);

  return FigDispatchSyncCopyPropertyImplementation();
}

uint64_t httpconnection_copyPropertyInternal(const void *a1, const void *a2, const __CFAllocator *a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"LocalInterfaceName"))
  {
    if (*(DerivedStorage + 108) != 5)
    {
      OUTLINED_FUNCTION_17();
      APSLogErrorAt();
      APSSignalErrorAt();
      return 0;
    }

    Int64 = CFStringCreateWithCString(a3, (DerivedStorage + 310), 0x8000100u);
    if (!Int64)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"LocalMACAddress"))
  {
    Int64 = CFDataCreate(a3, (DerivedStorage + 304), 6);
    if (!Int64)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"LocalNetworkIPAddress"))
  {
    Int64 = CFDataCreate(a3, (DerivedStorage + 136), 28);
    if (!Int64)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (!CFEqual(a2, @"LocalNetworkPort"))
  {
    if (CFEqual(a2, @"RemoteNetworkIPAddress"))
    {
      v25 = 0;
      *v24 = *(DerivedStorage + 164);
      *&v24[12] = *(DerivedStorage + 176);
      a1 = APSNetworkAddressCreateWithSocketAddr();
      if (a1)
      {
LABEL_45:
        APSLogErrorAt();
        return a1;
      }

      APSNetworkAddressSetPort();
      *a4 = v25;
      return a1;
    }

    if (CFEqual(a2, @"BoundInterfaceIndex"))
    {
      v13 = *(DerivedStorage + 196);
      Int64 = CFNumberCreateInt64();
      if (!Int64)
      {
        goto LABEL_26;
      }
    }

    else if (CFEqual(a2, @"RemoteNetworkPort"))
    {
      v14 = *(DerivedStorage + 192);
      Int64 = CFNumberCreateInt64();
      if (!Int64)
      {
LABEL_26:
        OUTLINED_FUNCTION_7_1();
        goto LABEL_45;
      }
    }

    else
    {
      if (!CFEqual(a2, @"NetTransportType"))
      {
        if (!CFEqual(a2, @"TimingInformation"))
        {
          return 4294954512;
        }

        mach_absolute_time();
        if (*(DerivedStorage + 488))
        {
          v15 = UpTicksToMilliseconds();
        }

        else
        {
          v15 = 0;
        }

        v16 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v18 = Mutable;
          v19 = *(DerivedStorage + 464);
          CFDictionarySetInt64();
          v20 = *(DerivedStorage + 472);
          CFDictionarySetInt64();
          v21 = *(DerivedStorage + 480);
          CFDictionarySetInt64();
          v22 = *(DerivedStorage + 464) + v15;
          v23 = *(DerivedStorage + 472) + *(DerivedStorage + 480);
          CFDictionarySetInt64();
          a1 = 0;
          *a4 = v18;
        }

        else
        {
          APSLogErrorAt();
          return 4294960568;
        }

        return a1;
      }

      OUTLINED_FUNCTION_7_1();
      if (*(DerivedStorage + 108) != 5)
      {
        return (a1 + 3);
      }

      Int64 = CFNumberCreate(a3, kCFNumberIntType, (DerivedStorage + 436));
      if (!Int64)
      {
        goto LABEL_45;
      }
    }

LABEL_16:
    a1 = 0;
    *a4 = Int64;
    return a1;
  }

  if (!*(DerivedStorage + 224))
  {
    APSLogErrorAt();
    return 4294894975;
  }

  v10 = *(DerivedStorage + 240);
  if (v10)
  {
    *v24 = -1;
    ListeningPort = APTConnectionListenerGetListeningPort(v10, v24);
    if (ListeningPort)
    {
      a1 = ListeningPort;
      goto LABEL_45;
    }

    Int64 = CFNumberCreate(a3, kCFNumberIntType, v24);
    if (!Int64)
    {
      OUTLINED_FUNCTION_7_1();
      goto LABEL_45;
    }

    goto LABEL_16;
  }

  APSLogErrorAt();

  return APSSignalErrorAt();
}

void stream_sendMessageInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  cf = 0;
  v22 = 0;
  if (*(DerivedStorage + 72))
  {
    stream_sendMessageInternal_cold_1();
    v6 = 0;
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
      if (stream_copyFormattedAsyncPackageForBBuf(*a1, *(a1 + 16), *(a1 + 8), &cf, &v22))
      {
        stream_sendMessageInternal_cold_2();
      }

      else
      {
        if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
        {
          v20 = *(a1 + 8);
          v21 = *(a1 + 16);
          v19 = *a1;
          LogPrintF();
        }

        v7 = *(v6 + 24);
        v8 = cf;
        VTable = CMBaseObjectGetVTable();
        v10 = *(*(VTable + 16) + 56);
        if (!v10 || (v11 = *(VTable + 16) + 56, v10(v7, v8)))
        {
          stream_sendMessageInternal_cold_3();
        }
      }
    }

    else
    {
      stream_sendMessageInternal_cold_4();
    }
  }

  if (v22)
  {
    v12 = *(v4 + 40);
    if (v12)
    {
      APTransportStreamSendBackingProviderRelinquishBBuf(v12, *(a1 + 16));
    }

    else
    {
      v14 = *(v6 + 24);
      v15 = cf;
      v16 = CMBaseObjectGetVTable();
      v17 = *(*(v16 + 16) + 48);
      if (v17)
      {
        v18 = *(v16 + 16) + 48;
        v17(v14, v15);
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t stream_copyFormattedAsyncPackageForBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, CFTypeRef *a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    stream_copyFormattedAsyncPackageForBBuf_cold_1();
    return 4294950679;
  }

  if (!a2)
  {
    stream_copyFormattedAsyncPackageForBBuf_cold_5();
    return 4294950686;
  }

  if (!a4)
  {
    stream_copyFormattedAsyncPackageForBBuf_cold_4();
    return 4294950686;
  }

  if (!a5)
  {
    stream_copyFormattedAsyncPackageForBBuf_cold_3();
    return 4294950686;
  }

  v11 = DerivedStorage;
  v12 = stream_copyPackageForBBuf(a1, a2, a4, a5);
  if (v12)
  {
    v17 = v12;
    stream_copyFormattedAsyncPackageForBBuf_cold_2();
  }

  else
  {
    v13 = *a4;
    VTable = CMBaseObjectGetVTable();
    v15 = *(*(VTable + 16) + 8);
    if (v15)
    {
      v16 = *(VTable + 16) + 8;
      v17 = v15(v13);
    }

    else
    {
      v17 = 0;
    }

    v18 = *a4;
    v19 = CMBaseObjectGetVTable();
    v20 = *(*(v19 + 16) + 32);
    if (v20)
    {
      v21 = *(v19 + 16) + 32;
      v20(v18, a3);
    }

    if (!*(v11 + 40) || !v17)
    {
      v22 = *a4;
      v23 = CMBaseObjectGetVTable();
      v24 = *(*(v23 + 16) + 16);
      if (v24)
      {
        v25 = *(v23 + 16) + 16;
        v24(v22, a2);
      }
    }

    v26 = *(v11 + 96);
    if (v26)
    {
      v27 = *a4;
      v28 = CMBaseObjectGetVTable();
      v29 = *(*(v28 + 16) + 72);
      if (v29)
      {
        v30 = *(v28 + 16) + 72;
        v29(v27, v26);
      }
    }

    v31 = *a4;
    v32 = CMBaseObjectGetVTable();
    v33 = *(*(v32 + 16) + 88);
    if (v33)
    {
      v34 = *(v32 + 16) + 88;
      v33(v31, 1634957678);
    }

    if (v17)
    {
      CFRelease(v17);
      return 0;
    }
  }

  return v17;
}

uint64_t stream_SendMessage(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v6 = *(DerivedStorage + 64);
  APSDispatchAsyncFHelper();
  return 0;
}

const void *APAdvertiserInfoCopyProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, int *a5)
{
  v6 = a3;
  if (!a3)
  {
    APAdvertiserInfoCopyProperty_cold_1();
    v9 = -6705;
    if (!a5)
    {
      return v6;
    }

    goto LABEL_6;
  }

  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), v6);
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
    pthread_mutex_unlock((a1 + 16));
    v9 = 0;
    if (!a5)
    {
      return v6;
    }

    goto LABEL_6;
  }

  pthread_mutex_unlock((a1 + 16));
  v9 = -6727;
  if (a5)
  {
LABEL_6:
    *a5 = v9;
  }

  return v6;
}

void httpconnection_checkIfNetworkStalled()
{
  memset(&v63, 0, sizeof(v63));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v63, HostTimeClock);
  v62 = **&MEMORY[0x277CC0898];
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    lhs = v63;
    rhs = *(DerivedStorage + 376);
    v4 = CMTimeSubtract(&v62, &lhs, &rhs);
    v12 = *(DerivedStorage + 432);
    if (v12 == 1)
    {
      if (*(DerivedStorage + 372))
      {
        OUTLINED_FUNCTION_2_4(v4, v5, v6, v7, v8, v9, v10, v11, v52, Seconds, rhs.value, *&rhs.timescale, rhs.epoch, v59, lhs.value, *&lhs.timescale, lhs.epoch, v61, *&v62.value);
        if (OUTLINED_FUNCTION_14_0(v29, v30, v31, v32, v33, v34, v35, v36, v54, v57, *&rhs.value, rhs.epoch, v59, lhs.value) > 0)
        {
          goto LABEL_30;
        }
      }

      *(DerivedStorage + 432) = 0;
      if (gLogCategory_APTransportConnectionHTTP > 50 || gLogCategory_APTransportConnectionHTTP == -1 && !OUTLINED_FUNCTION_8())
      {
        goto LABEL_23;
      }

      v52 = v2;
    }

    else
    {
      if (v12)
      {
        if (gLogCategory_APTransportConnectionHTTP <= 90)
        {
          if (gLogCategory_APTransportConnectionHTTP == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_30;
            }

            v37 = *(DerivedStorage + 432);
          }

          LogPrintF();
        }

LABEL_30:
        CFRelease(v2);
        return;
      }

      if (!*(DerivedStorage + 372))
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_2_4(v4, v5, v6, v7, v8, v9, v10, v11, v52, Seconds, rhs.value, *&rhs.timescale, rhs.epoch, v59, lhs.value, *&lhs.timescale, lhs.epoch, v61, *&v62.value);
      v21 = OUTLINED_FUNCTION_14_0(v13, v14, v15, v16, v17, v18, v19, v20, v53, v56, *&rhs.value, rhs.epoch, v59, lhs.value);
      if (v21 < 1)
      {
        goto LABEL_30;
      }

      *(DerivedStorage + 432) = 1;
      if (gLogCategory_APTransportConnectionHTTP > 50 || gLogCategory_APTransportConnectionHTTP == -1 && (v21 = OUTLINED_FUNCTION_8(), !v21))
      {
LABEL_23:
        v38 = CFGetAllocator(v2);
        Mutable = CFDictionaryCreateMutable(v38, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v40 = Mutable;
          StallStateString = APTransportConnectionGetStallStateString(*(DerivedStorage + 432));
          CFDictionarySetValue(v40, @"StallState", StallStateString);
          if (*(DerivedStorage + 432) == 1)
          {
            OUTLINED_FUNCTION_2_4(v42, *MEMORY[0x277CBECE8], v43, v44, v45, v46, v47, v48, v52, Seconds, rhs.value, *&rhs.timescale, rhs.epoch, v59, lhs.value, *&lhs.timescale, lhs.epoch, v61, *&v62.value);
            v50 = CMTimeCopyAsDictionary(&lhs, v49);
            if (!v50)
            {
              APSLogErrorAt();
              OUTLINED_FUNCTION_5_4();
LABEL_29:
              CFRelease(v2);
              CFRelease(v40);
              v2 = v50;
              if (!v50)
              {
                return;
              }

              goto LABEL_30;
            }

            CFDictionarySetValue(v40, @"StallDuration", v50);
          }

          else
          {
            v50 = 0;
          }

          v51 = *(DerivedStorage + 40);
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          goto LABEL_29;
        }

        APSLogErrorAt();
        OUTLINED_FUNCTION_5_4();
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_2_4(v21, v22, v23, v24, v25, v26, v27, v28, v52, Seconds, rhs.value, *&rhs.timescale, rhs.epoch, v59, lhs.value, *&lhs.timescale, lhs.epoch, v61, *&v62.value);
      Seconds = CMTimeGetSeconds(&lhs);
      v52 = v2;
    }

    OUTLINED_FUNCTION_3_1();
    LogPrintF();
    goto LABEL_23;
  }
}

uint64_t session_handleKeepAliveResponse()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 16);
  CMNotificationCenterGetDefaultLocalCenter();
  v1 = *MEMORY[0x277CC1AE8];

  return FigDispatchAsyncPostNotification();
}

__n128 standardKeepAliveController_setKeepAliveReceivedCallback(uint64_t *a1)
{
  memset(&v12, 0, sizeof(v12));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v12, HostTimeClock);
  v3 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *&v12.value;
  *(DerivedStorage + 104) = *&v12.value;
  epoch = v12.epoch;
  *(DerivedStorage + 120) = v12.epoch;
  *&lhs.value = v5;
  lhs.epoch = epoch;
  v9 = *(DerivedStorage + 80);
  CMTimeSubtract(&v11, &lhs, &v9);
  *(a1 + 1) = v11;
  v7 = MEMORY[0x277CC0898];
  result = *MEMORY[0x277CC0898];
  *(DerivedStorage + 80) = *MEMORY[0x277CC0898];
  *(DerivedStorage + 96) = *(v7 + 16);
  return result;
}

uint64_t session_CopyProperty()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);

  return FigDispatchSyncCopyPropertyImplementation();
}

uint64_t session_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    session_copyPropertyInternal_cold_1();
    return 4294954511;
  }

  v9 = DerivedStorage;
  if (!CFEqual(a2, *MEMORY[0x277CC1B00]))
  {
    if (CFEqual(a2, @"ConnectedOnPeerToPeerInterface"))
    {
      if ((*(v9 + 38) - 3) >= 0xFFFFFFFE)
      {
        v12 = MEMORY[0x277CBED28];
      }

      else
      {
        v12 = MEMORY[0x277CBED10];
      }

      v13 = *v12;
      *a4 = *v12;
      CFRetain(v13);
      return 0;
    }

    if (CFEqual(a2, @"InterfaceType"))
    {
      v14 = CFNumberCreate(a3, kCFNumberIntType, v9 + 19);
      *a4 = v14;
      if (v14)
      {
        return 0;
      }

      session_copyPropertyInternal_cold_2();
    }

    else if (CFEqual(a2, @"TransportType"))
    {
      valuePtr = 0;
      SessionTransportType = session_getSessionTransportType(a1, &valuePtr);
      if (SessionTransportType)
      {
        v11 = SessionTransportType;
        session_copyPropertyInternal_cold_3();
        return v11;
      }

      v18 = CFNumberCreate(a3, kCFNumberIntType, &valuePtr);
      *a4 = v18;
      if (v18)
      {
        return 0;
      }

      session_copyPropertyInternal_cold_4();
    }

    else
    {
      if (CFEqual(a2, @"ShowInfo"))
      {
        v10 = session_copyShowInfo();
        goto LABEL_5;
      }

      if (!CFEqual(a2, *MEMORY[0x277CC1AF8]))
      {
        if (!CFEqual(a2, *MEMORY[0x277CC1AF0]))
        {
          return 4294954512;
        }

        v10 = v9[26];
        if (!v10)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      v16 = CFNumberCreate(a3, kCFNumberIntType, v9 + 27);
      *a4 = v16;
      if (v16)
      {
        return 0;
      }

      session_copyPropertyInternal_cold_5();
    }

    return 4294950695;
  }

  v10 = v9[5];
LABEL_4:
  v10 = CFRetain(v10);
LABEL_5:
  v11 = 0;
  *a4 = v10;
  return v11;
}

uint64_t session_CreateStreamWithID(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APTransportStreamIDGetStreamCategory(a2))
  {
    v4 = APTransportStreamIDInsertStreamCategory(a2, 3);
    if (!APTransportKeepAliveControllerGetCMBaseObject(v4, v5, v6, v7))
    {
      v8 = *(DerivedStorage + 164) + 1;
      *(DerivedStorage + 164) = v8;
      APTransportStreamIDInsertIdentifier(v4, v8);
    }
  }

  v9 = *(DerivedStorage + 8);
  return APSDispatchSyncTask();
}

uint64_t session_createStreamWithIDInternal(uint64_t a1)
{
  StreamName = 0;
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v54 = 0;
  v55 = 0;
  v53 = 0;
  if (*DerivedStorage)
  {
    session_createStreamWithIDInternal_cold_1(&StreamName);
LABEL_85:
    v20 = 0;
LABEL_86:
    v46 = 0;
    goto LABEL_68;
  }

  v4 = DerivedStorage;
  if (DerivedStorage[120])
  {
    session_createStreamWithIDInternal_cold_2(&StreamName);
    goto LABEL_85;
  }

  APTransportStreamIDGetToken(*(a1 + 8));
  v5 = *(v4 + 6);
  v6 = FigCFWeakReferenceTableCopyValue();
  if (v6)
  {
    v46 = v6;
    session_createStreamWithIDInternal_cold_3(&StreamName);
    v20 = 0;
    goto LABEL_68;
  }

  StreamName = session_createStreamName(*a1, *(a1 + 8), &v55);
  if (StreamName)
  {
    session_createStreamWithIDInternal_cold_4();
    goto LABEL_85;
  }

  v7 = *(a1 + 16);
  v8 = *MEMORY[0x277CC1B18];
  Int64 = CFDictionaryGetInt64();
  if (StreamName)
  {
    v10 = 0;
    StreamName = 0;
  }

  else
  {
    v10 = Int64;
  }

  if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    session_createStreamWithIDInternal_cold_5();
  }

  StreamName = session_createConnectionForStream(*a1, *(a1 + 8), v55, *(v4 + 38), *(v4 + 39), v10, *(a1 + 16), &v54);
  if (StreamName)
  {
    session_createStreamWithIDInternal_cold_6();
    goto LABEL_85;
  }

  v52 = v10;
  v11 = *a1;
  v12 = *(a1 + 8);
  MutableCopy = *(a1 + 16);
  v58 = 0;
  cf = 0;
  v14 = CMBaseObjectGetDerivedStorage();
  v15 = MEMORY[0x277CC1B20];
  if (MutableCopy)
  {
    v16 = *MEMORY[0x277CC1B20];
    v17 = CFDictionaryGetInt64();
    if (v12 == 1668575852)
    {
      v12 = 1919120492;
      MutableCopy = CFRetain(MutableCopy);
    }

    else
    {
      if (v17 != 1668575852)
      {
        v20 = 0;
        MutableCopy = 0;
        goto LABEL_24;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 3, MutableCopy);
      CFDictionarySetInt64();
    }
  }

  else
  {
    if (v12 != 1668575852)
    {
      v20 = 0;
      goto LABEL_24;
    }

    v12 = 1919120492;
  }

  v18 = session_createStreamName(v11, v12, &cf);
  if (v18)
  {
    v21 = v18;
    session_createStreamWithIDInternal_cold_7();
  }

  else
  {
    v19 = session_createConnectionForStream(v11, v12, cf, *(v14 + 152), *(v14 + 156), v52, MutableCopy, &v58);
    if (!v19)
    {
      v20 = v58;
LABEL_24:
      v21 = 0;
      v58 = 0;
      goto LABEL_25;
    }

    v21 = v19;
    APSLogErrorAt();
    if (v58)
    {
      CFRelease(v58);
    }
  }

  v20 = 0;
LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  StreamName = v21;
  if (v21)
  {
    session_createStreamWithIDInternal_cold_8();
    goto LABEL_86;
  }

  v22 = v55;
  v50 = v54;
  v23 = *a1;
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v51 = v20;
  if (Mutable)
  {
    v28 = Mutable;
    if (v20)
    {
      v29 = kAPTransportStreamOption_ReceiveConnection;
      if (*(v26 + 24) != 1)
      {
        v29 = kAPTransportStreamOption_SendConnection;
      }

      CFDictionaryAddValue(Mutable, *v29, v20);
    }

    if ((*(v26 + 152) - 5) >= 0xFFFFFFFE)
    {
      v30 = 72;
      if (v24 == 1819042165)
      {
        v30 = 80;
      }

      v31 = *(v26 + v30);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
    }

    v32 = *(v26 + 272);
    if (v32)
    {
      CFDictionaryAddValue(v28, @"EventRecorder", v32);
    }

    if (v25)
    {
      v33 = *MEMORY[0x277CC1B10];
      v34 = CFDictionaryGetInt64();
      v35 = *v15;
      Int64Ranged = CFDictionaryGetInt64Ranged();
      Value = CFDictionaryGetValue(v25, @"SendBackingProvider");
      if (Value)
      {
        CFDictionaryAddValue(v28, @"SendBackingProvider", Value);
      }
    }

    else
    {
      v34 = 0;
      Int64Ranged = 0;
    }

    if (*(v26 + 24) != 1)
    {
      goto LABEL_54;
    }

    if (v24 != 1935897198)
    {
      if (Int64Ranged > 1651861088)
      {
        if (Int64Ranged != 1935897198)
        {
          v38 = 1651861089;
LABEL_52:
          if (Int64Ranged == v38)
          {
            goto LABEL_53;
          }

LABEL_54:
          v41 = CFGetAllocator(v23);
          v40 = APTransportStreamCreate(v41, v23, v24, v22, v52, v50, v34, v28, &v53);
          goto LABEL_55;
        }
      }

      else if (Int64Ranged != 1634754914)
      {
        v38 = 1634754932;
        goto LABEL_52;
      }
    }

LABEL_53:
    v39 = CFGetAllocator(v23);
    v40 = APTransportStreamUnbufferedCreate(v39, v23, v24, v22, v50, v28, &v53);
LABEL_55:
    v42 = v40;
    v43 = &gLogCategory_AsyncCnxAirPlayHTTP;
    if (v40)
    {
      session_createStreamWithIDInternal_cold_9();
    }

    else if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRelease(v28);
    goto LABEL_61;
  }

  session_createStreamWithIDInternal_cold_10();
  v42 = -16601;
  v43 = &gLogCategory_AsyncCnxAirPlayHTTP;
LABEL_61:
  StreamName = v42;
  v44 = *(v4 + 6);
  StreamName = FigCFWeakReferenceTableAddValueAssociatedWithKey();
  if (StreamName)
  {
    session_createStreamWithIDInternal_cold_11();
    v46 = 0;
  }

  else
  {
    v45 = v43[56];
    if (v45 <= 30 && (v45 != -1 || _LogCategory_Initialize()))
    {
      v49 = *(a1 + 8);
      v48 = *a1;
      LogPrintF();
    }

    v46 = 0;
    **(a1 + 24) = v53;
    v53 = 0;
  }

  v20 = v51;
LABEL_68:
  if (v55)
  {
    CFRelease(v55);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  return StreamName;
}

uint64_t session_createStreamName(uint64_t a1, uint64_t a2, __CFString **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(DerivedStorage + 32));
    if (MutableCopy)
    {
      v6 = MutableCopy;
      v7 = APTransportStreamIDCreateStringRepresentation();
      if (v7)
      {
        v8 = v7;
        CFStringAppendFormat(v6, 0, @"-%@", v7);
        *a3 = v6;
        CFRelease(v8);
        return 0;
      }

      session_createStreamName_cold_1(v6);
    }

    else
    {
      session_createStreamName_cold_2();
    }

    return 4294950695;
  }

  else
  {
    session_createStreamName_cold_3();
    return 4294950696;
  }
}

CFStringRef APTransportStreamIDCreateStringRepresentation()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  *cStr = 0;
  SNPrintF();
  result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t session_createConnectionForStream(const void *a1, int64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, const __CFDictionary *a7, void *a8)
{
  v148 = *MEMORY[0x277D85DE8];
  Address = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  cf = 0;
  v141 = 0;
  v15 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = Mutable;
  if (!Mutable)
  {
    session_createConnectionForStream_cold_57();
    goto LABEL_289;
  }

  alloc = v15;
  v18 = DerivedStorage;
  v19 = Mutable;
  if (a7)
  {
    Value = CFDictionaryGetValue(a7, @"QualityOfService");
    if (Value)
    {
      CFDictionarySetValue(v19, @"QualityOfService", Value);
    }

    v21 = CFDictionaryGetValue(a7, *MEMORY[0x277CC1B08]);
    if (v21)
    {
      CFDictionarySetValue(v19, @"DelegatedID", v21);
    }

    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      CFDictionarySetValue(v19, @"TrafficRegistrationOptions", TypedValue);
    }
  }

  if (a2 > 1819042675)
  {
    v17 = v19;
    if (a2 <= 1869575778)
    {
      if (a2 <= 1835626095)
      {
        if (a2 != 1819042676)
        {
          v23 = 1835100526;
LABEL_18:
          if (a2 != v23)
          {
            goto LABEL_123;
          }

          goto LABEL_33;
        }

        goto LABEL_23;
      }

      if (a2 != 1835626096)
      {
        if (a2 != 1869570660)
        {
          goto LABEL_123;
        }

        if (*(v18 + 24) != 1)
        {
          session_createConnectionForStream_cold_33(&Address);
          goto LABEL_289;
        }

        CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED10]);
        v39 = *(v18 + 56);
        v25 = FigCFWeakReferenceTableCopyValue();
        if (!v25)
        {
          session_createConnectionForStream_cold_35();
          goto LABEL_167;
        }

        v40 = CFGetAllocator(a1);
        Address = session_createConnection(v40, APTransportConnectionTCPCreate, a3, a4, a5, a6, 0, 0, -1, v25, v19, &cf);
        if (Address)
        {
          session_createConnectionForStream_cold_34();
          goto LABEL_167;
        }

        v41 = *(v18 + 56);
        FigCFWeakReferenceTableRemoveValue();
        v42 = *(v18 + 56);
        v27 = cf;
        FigCFWeakReferenceTableAddValueAssociatedWithKey();
        if (gLogCategory_APTransportSession > 30 || gLogCategory_APTransportSession == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_231;
        }

LABEL_120:
        LogPrintF();
LABEL_231:
        v89 = 0;
LABEL_232:
        MutableCopy = 0;
        goto LABEL_233;
      }

LABEL_87:
      if (*(v18 + 24) == 1)
      {
        CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED28]);
        v58 = *(v18 + 56);
        v25 = FigCFWeakReferenceTableCopyValue();
        if (!v25)
        {
          session_createConnectionForStream_cold_14();
          goto LABEL_167;
        }

        v59 = CFGetAllocator(a1);
        Address = session_createConnection(v59, APTransportConnectionUDPCreate, a3, a4, a5, a6, 0, 0, -1, v25, v19, &cf);
        if (Address)
        {
          session_createConnectionForStream_cold_12();
          goto LABEL_167;
        }

        v27 = cf;
      }

      else
      {
        v27 = 0;
        v25 = 0;
      }

      CMBaseObject = APTransportConnectionGetCMBaseObject(v27);
      v74 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v74)
      {
        Address = v74(CMBaseObject, @"PackageType", @"RTP");
        if (!Address)
        {
          goto LABEL_118;
        }
      }

      else
      {
        Address = -12782;
      }

      session_createConnectionForStream_cold_13();
      goto LABEL_167;
    }

    if (a2 <= 1935897197)
    {
      if (a2 != 1869575779)
      {
        if (a2 == 1919120492)
        {
          if (*(v18 + 24) == 1)
          {
            CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED10]);
            CFDictionarySetValue(v19, @"IsServer", *MEMORY[0x277CBED28]);
            v28 = CFGetAllocator(a1);
            Address = session_createConnection(v28, APTransportConnectionHTTPCreate, a3, a4, a5, a6, 0, 0, -1, 0, v19, &cf);
            if (Address)
            {
              session_createConnectionForStream_cold_38();
              goto LABEL_289;
            }

            v27 = cf;
          }

          else
          {
            CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED28]);
            CFDictionarySetValue(v19, @"IsServer", *MEMORY[0x277CBED10]);
            v79 = CFGetAllocator(a1);
            Address = session_createConnection(v79, APTransportConnectionHTTPCreate, a3, a4, a5, a6, *(v18 + 64), 0, -1, 0, v19, &cf);
            if (Address)
            {
              session_createConnectionForStream_cold_36();
              goto LABEL_289;
            }

            v27 = cf;
            v80 = *(v18 + 40);
            v81 = APTransportConnectionGetCMBaseObject(cf);
            Address = CMBaseObjectSetProperty(v81, @"SessionUUID", v80);
            if (Address)
            {
              session_createConnectionForStream_cold_37();
              goto LABEL_289;
            }
          }

          v82 = *(v18 + 56);
          FigCFWeakReferenceTableRemoveValue();
          v83 = *(v18 + 56);
          FigCFWeakReferenceTableAddValueAssociatedWithKey();
          if (gLogCategory_APTransportSession > 30 || gLogCategory_APTransportSession == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_276;
          }

LABEL_134:
          LogPrintF();
LABEL_276:
          v89 = 0;
          MutableCopy = 0;
LABEL_277:
          v25 = 0;
          goto LABEL_233;
        }

LABEL_123:
        if (a7)
        {
          v75 = *MEMORY[0x277CC1B20];
          Int64Ranged = CFDictionaryGetInt64Ranged();
          if (APTransportStreamIDGetStreamCategory(a2) == 1)
          {
            if (Int64Ranged)
            {
              v77 = *(v18 + 56);
              v78 = FigCFWeakReferenceTableCopyValue();
              cf = v78;
              if (v78)
              {
                v27 = v78;
                if (gLogCategory_APTransportSession > 40 || gLogCategory_APTransportSession == -1 && !_LogCategory_Initialize())
                {
                  goto LABEL_276;
                }

                goto LABEL_134;
              }

              session_createConnectionForStream_cold_49();
              goto LABEL_289;
            }

            goto LABEL_281;
          }

          v96 = a6;
          alloca = Int64Ranged;
        }

        else
        {
          if (APTransportStreamIDGetStreamCategory(a2) == 1)
          {
LABEL_281:
            session_createConnectionForStream_cold_56(&Address);
            goto LABEL_289;
          }

          v96 = a6;
          alloca = 0;
        }

        v136 = CMBaseObjectGetDerivedStorage();
        *cStr = 0;
        v145 = 0;
        FigCFDictionaryGetBooleanIfPresent();
        v97 = *MEMORY[0x277CBED28];
        v98 = *MEMORY[0x277CBED10];
        CFDictionarySetValue(v17, @"AllowPackageAggregation", *MEMORY[0x277CBED10]);
        v99 = CFDictionaryGetInt64Ranged();
        if (APTransportStreamIDGetStreamCategory(a2) != 3)
        {
          CFDictionarySetValue(v17, @"IsListener", v97);
          v102 = CFGetAllocator(a1);
          Connection = session_createConnection(v102, APTransportConnectionTCPCreate, a3, a4, a5, v96, 0, 0, -1, 0, v17, cStr);
          v104 = 0;
          v105 = alloca;
          if (Connection)
          {
            v106 = Connection;
            session_createConnectionForStream_cold_50();
            v104 = 0;
            goto LABEL_269;
          }

          goto LABEL_254;
        }

        v133 = v99;
        v100 = APTransportConnectionTCPCreate;
        v134 = v96;
        if (alloca <= 1651861088)
        {
          v17 = v19;
          v101 = v136;
          if (alloca != 1634754914 && alloca != 1634754932)
          {
            goto LABEL_250;
          }

LABEL_204:
          if (APSSettingsIsFeatureEnabled() || APSSettingsIsFeatureEnabled() || APSSettingsIsFeatureEnabled() || v133 && v133 != 1601463152)
          {
            FigCFDictionarySetInt();
            if (APSSettingsIsFeatureEnabled())
            {
              v115 = v97;
            }

            else
            {
              v115 = v98;
            }

            CFDictionarySetValue(v17, @"IsPackageDeliveryTrackingEnabled", v115);
            if (alloca == 1634754932)
            {
              v116 = v97;
            }

            else
            {
              v116 = v98;
            }

            CFDictionarySetValue(v17, @"IsPackageArrivalTicksEnabled", v116);
            FigCFDictionarySetUInt32();
            v117 = APTransportConnectionUnbufferedNWCreate;
          }

          else
          {
            if (_MergedGlobals != -1)
            {
              session_createConnectionForStream_cold_51();
            }

            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            v117 = APTransportConnectionTCPUnbufferedCreate;
          }

          v100 = v117;
          goto LABEL_250;
        }

        v17 = v19;
        if (alloca == 1935897198)
        {
          v100 = APTransportConnectionTCPUnbufferedCreate;
          v101 = v136;
        }

        else
        {
          v101 = v136;
          if (alloca == 1651861089)
          {
            goto LABEL_204;
          }
        }

LABEL_250:
        CFDictionarySetValue(v17, @"IsListener", v98);
        v124 = *(v101 + 56);
        v104 = FigCFWeakReferenceTableCopyValue();
        if (!v104)
        {
          session_createConnectionForStream_cold_54();
          v106 = -16613;
          goto LABEL_269;
        }

        v125 = CFGetAllocator(a1);
        v126 = session_createConnection(v125, v100, a3, a4, a5, v134, 0, 0, -1, v104, v17, cStr);
        if (v126)
        {
          v106 = v126;
          session_createConnectionForStream_cold_52();
          goto LABEL_269;
        }

        APTransportStreamIDGetPort(a2);
        v127 = APSSetFBOPropertyInt64();
        if (v127)
        {
          v106 = v127;
          session_createConnectionForStream_cold_53();
          goto LABEL_269;
        }

        v105 = alloca;
LABEL_254:
        v128 = @"GenericTCP";
        if (v105 > 1651861088)
        {
          if (v105 == 1651861089)
          {
            v129 = kAPTransportConnectionPackageType_RTPBuffered;
            goto LABEL_263;
          }

          if (v105 == 1935897198)
          {
            v129 = kAPTransportConnectionPackageType_Screen;
            goto LABEL_263;
          }
        }

        else
        {
          if (v105 == 1634754914)
          {
            v129 = kAPTransportConnectionPackageType_BufferedAPAP;
            goto LABEL_263;
          }

          if (v105 == 1634754932)
          {
            v129 = kAPTransportConnectionPackageType_Datagram;
LABEL_263:
            v128 = *v129;
          }
        }

        v130 = *cStr;
        v131 = APTransportConnectionGetCMBaseObject(*cStr);
        v132 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v132)
        {
          v106 = v132(v131, @"PackageType", v128);
          if (!v106)
          {
            cf = v130;
            *cStr = 0;
LABEL_271:
            if (v104)
            {
              CFRelease(v104);
            }

            Address = v106;
            if (v106)
            {
              session_createConnectionForStream_cold_55();
              goto LABEL_289;
            }

            v89 = 0;
            MutableCopy = 0;
            v25 = 0;
            v27 = cf;
LABEL_233:
            *a8 = v27;
            cf = 0;
            goto LABEL_234;
          }
        }

        else
        {
          v106 = -12782;
        }

        APSLogErrorAt();
LABEL_269:
        if (*cStr)
        {
          CFRelease(*cStr);
        }

        goto LABEL_271;
      }

      goto LABEL_87;
    }

    if (a2 == 1935897198)
    {
      if (*(v18 + 24) == 1)
      {
        CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED10]);
        v70 = *(v18 + 56);
        v25 = FigCFWeakReferenceTableCopyValue();
        if (!v25)
        {
          session_createConnectionForStream_cold_11();
          goto LABEL_167;
        }

        v71 = CFGetAllocator(a1);
        Address = session_createConnection(v71, APTransportConnectionTCPUnbufferedCreate, a3, a4, a5, a6, 0, 0, -1, v25, v19, &cf);
        if (Address)
        {
          session_createConnectionForStream_cold_9();
          goto LABEL_167;
        }

        v27 = cf;
        v72 = APTransportConnectionGetCMBaseObject(cf);
        Address = CMBaseObjectSetProperty(v72, @"PackageType", @"Screen");
        if (Address)
        {
          session_createConnectionForStream_cold_10();
          goto LABEL_167;
        }
      }

      else
      {
        v27 = 0;
        v25 = 0;
      }

      if (gLogCategory_APTransportSession > 30 || gLogCategory_APTransportSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_231;
      }

      goto LABEL_120;
    }

    if (a2 != 1935897205)
    {
      goto LABEL_123;
    }

    if (*(v18 + 24) != 1)
    {
      v27 = 0;
      v25 = 0;
      goto LABEL_226;
    }

    CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED28]);
    v50 = *(v18 + 56);
    v51 = FigCFWeakReferenceTableCopyValue();
    v25 = v51;
    if (!v51)
    {
      session_createConnectionForStream_cold_8();
      goto LABEL_167;
    }

    v52 = APTransportConnectionGetCMBaseObject(v51);
    v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v53)
    {
      Address = v53(v52, @"RemoteNetworkIPAddress", alloc, &v141);
      if (!Address)
      {
        APSNetworkAddressCopyInterfaceName();
        if (cf1)
        {
          if (CFEqual(cf1, @"awdl0"))
          {
            v54 = @"llw0";
            goto LABEL_81;
          }

          if (cf1 && CFEqual(cf1, @"nan0"))
          {
            v54 = @"llw1";
LABEL_81:
            APSNetworkAddressSetInterfaceName();
            v55 = cf1;
            cf1 = v54;
            CFRetain(v54);
            if (v55)
            {
              CFRelease(v55);
            }
          }
        }

        v118 = CFGetAllocator(a1);
        Address = session_createConnection(v118, APTransportConnectionUDPNWCreate, a3, a4, a5, a6, 0, v141, -1, 0, v19, &cf);
        if (Address)
        {
          session_createConnectionForStream_cold_4();
          goto LABEL_167;
        }

        v27 = cf;
        v119 = APTransportConnectionGetCMBaseObject(cf);
        Address = CMBaseObjectSetProperty(v119, @"PackageType", @"Screen");
        if (Address)
        {
          session_createConnectionForStream_cold_5();
          goto LABEL_167;
        }

        v120 = cf1;
        if (cf1)
        {
          v121 = APTransportConnectionGetCMBaseObject(v27);
          Address = CMBaseObjectSetProperty(v121, @"LocalInterfaceName", v120);
          if (Address)
          {
            session_createConnectionForStream_cold_6();
            goto LABEL_167;
          }
        }

LABEL_226:
        if (gLogCategory_APTransportSession > 30 || gLogCategory_APTransportSession == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_231;
        }

        goto LABEL_120;
      }
    }

    else
    {
      Address = -12782;
    }

    session_createConnectionForStream_cold_7();
    goto LABEL_167;
  }

  v17 = v19;
  if (a2 <= 1734700575)
  {
    if (a2 <= 1668575851)
    {
      if (a2 != 1634497568)
      {
        v23 = 1635088495;
        goto LABEL_18;
      }

LABEL_33:
      if (*(v18 + 24) == 1)
      {
        CFDictionarySetValue(v17, @"IsListener", *MEMORY[0x277CBED10]);
        v29 = *(v18 + 56);
        v25 = FigCFWeakReferenceTableCopyValue();
        if (!v25)
        {
          session_createConnectionForStream_cold_29();
          goto LABEL_167;
        }

        Int64 = CFDictionaryGetInt64();
        v31 = APTransportConnectionUDPCreate;
        if (Int64)
        {
          v31 = APTransportConnectionUDPNWCreate;
          if (gLogCategory_APTransportSession <= 50)
          {
            if (gLogCategory_APTransportSession != -1 || (v32 = _LogCategory_Initialize(), v31 = APTransportConnectionUDPNWCreate, v32))
            {
              session_createConnectionForStream_cold_15();
              v31 = APTransportConnectionUDPNWCreate;
            }
          }
        }

        v33 = v31;
        v34 = CFGetAllocator(a1);
        Address = session_createConnection(v34, v33, a3, a4, a5, a6, 0, 0, -1, v25, v17, &cf);
        if (Address)
        {
          session_createConnectionForStream_cold_27();
          goto LABEL_167;
        }

        v27 = cf;
      }

      else
      {
        v27 = 0;
        v25 = 0;
      }

      v56 = APTransportConnectionGetCMBaseObject(v27);
      v57 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v57)
      {
        Address = -12782;
LABEL_152:
        session_createConnectionForStream_cold_28();
LABEL_167:
        v89 = 0;
LABEL_168:
        MutableCopy = 0;
        goto LABEL_234;
      }

      Address = v57(v56, @"PackageType", @"RTP");
      if (Address)
      {
        goto LABEL_152;
      }

LABEL_118:
      if (gLogCategory_APTransportSession > 30 || gLogCategory_APTransportSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_231;
      }

      goto LABEL_120;
    }

    if (a2 != 1668575852)
    {
      if (a2 != 1702260340)
      {
        goto LABEL_123;
      }

      v35 = v18;
      if (*(v18 + 24) == 1)
      {
        CFDictionarySetValue(v17, @"IsListener", *MEMORY[0x277CBED10]);
        v36 = *MEMORY[0x277CBED28];
        CFDictionarySetValue(v17, @"IsServer", *MEMORY[0x277CBED28]);
        if (CFDictionaryGetInt64())
        {
          CFDictionarySetValue(v17, @"AssertPowerDuringEventHandling", v36);
        }

        v37 = *(v35 + 56);
        v25 = FigCFWeakReferenceTableCopyValue();
        if (!v25)
        {
          session_createConnectionForStream_cold_42();
          goto LABEL_167;
        }

        v38 = CFGetAllocator(a1);
        Address = session_createConnection(v38, APTransportConnectionHTTPCreate, a3, a4, a5, a6, 0, 0, -1, v25, v17, &cf);
        if (Address)
        {
          session_createConnectionForStream_cold_41();
          goto LABEL_167;
        }

        v27 = cf;
      }

      else
      {
        CFDictionarySetValue(v17, @"IsListener", *MEMORY[0x277CBED28]);
        CFDictionarySetValue(v17, @"IsServer", *MEMORY[0x277CBED10]);
        v84 = CFGetAllocator(a1);
        Address = session_createConnection(v84, APTransportConnectionHTTPCreate, a3, a4, a5, a6, *(v18 + 64), 0, -1, 0, v17, &cf);
        if (Address)
        {
          session_createConnectionForStream_cold_39();
          goto LABEL_289;
        }

        v27 = cf;
        v85 = *(v18 + 40);
        v86 = APTransportConnectionGetCMBaseObject(cf);
        Address = CMBaseObjectSetProperty(v86, @"SessionUUID", v85);
        if (Address)
        {
          session_createConnectionForStream_cold_40();
          goto LABEL_289;
        }

        v25 = 0;
      }

      v87 = *(v35 + 56);
      FigCFWeakReferenceTableRemoveValue();
      v88 = *(v35 + 56);
      FigCFWeakReferenceTableAddValueAssociatedWithKey();
      if (gLogCategory_APTransportSession > 30 || gLogCategory_APTransportSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_231;
      }

      goto LABEL_120;
    }

    v62 = v18;
    if (*(v18 + 24) == 1)
    {
      v63 = *MEMORY[0x277CBED10];
      CFDictionarySetValue(v17, @"IsListener", *MEMORY[0x277CBED10]);
      CFDictionarySetValue(v17, @"IsServer", v63);
      if (*(v62 + 260))
      {
        *cStr = *(v62 + 248);
        v147 = *(v62 + 264);
        FigCFDictionarySetCMTime();
      }

      v64 = CFGetAllocator(a1);
      Address = session_createConnection(v64, APTransportConnectionHTTPCreate, a3, a4, a5, a6, *(v62 + 64), *(v62 + 128), -1, 0, v17, &cf);
      if (Address)
      {
        session_createConnectionForStream_cold_45();
        goto LABEL_289;
      }

      v27 = cf;
      v65 = *(v62 + 40);
      v66 = APTransportConnectionGetCMBaseObject(cf);
      Address = CMBaseObjectSetProperty(v66, @"SessionUUID", v65);
      if (Address)
      {
        session_createConnectionForStream_cold_46();
        goto LABEL_289;
      }

      if (*(v62 + 128))
      {
        APSNetworkAddressGetPort();
        Address = APSSetFBOPropertyInt64();
        if (Address)
        {
          session_createConnectionForStream_cold_47();
LABEL_289:
          v89 = 0;
          MutableCopy = 0;
LABEL_290:
          v25 = 0;
          goto LABEL_234;
        }
      }

      else
      {
        Address = APSSetFBOPropertyInt64();
        if (Address)
        {
          session_createConnectionForStream_cold_48();
          goto LABEL_289;
        }
      }

      session_performWifiManagerRegistration(v62, 1);
      MutableCopy = 0;
LABEL_195:
      v113 = *(v62 + 56);
      FigCFWeakReferenceTableRemoveValue();
      v114 = *(v62 + 56);
      FigCFWeakReferenceTableAddValueAssociatedWithKey();
      if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v89 = 0;
      goto LABEL_277;
    }

    v90 = a8;
    v91 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v17, @"IsListener", *MEMORY[0x277CBED28]);
    CFDictionarySetValue(v17, @"IsServer", v91);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionarySetValue(MutableCopy, @"PerformInitialTrafficRegistration", v91);
    CFDictionaryReplaceValue(v17, @"TrafficRegistrationOptions", MutableCopy);
    v93 = CFGetAllocator(a1);
    Address = session_createConnection(v93, APTransportConnectionHTTPCreate, a3, a4, a5, a6, *(v62 + 64), 0, *(v62 + 124), 0, v17, &cf);
    if (Address)
    {
      session_createConnectionForStream_cold_43();
    }

    else
    {
      v27 = cf;
      v94 = *(v62 + 40);
      v95 = APTransportConnectionGetCMBaseObject(cf);
      Address = CMBaseObjectSetProperty(v95, @"SessionUUID", v94);
      if (!Address)
      {
        a8 = v90;
        goto LABEL_195;
      }

      session_createConnectionForStream_cold_44();
    }

    v89 = 0;
    goto LABEL_290;
  }

  if (a2 <= 1802529909)
  {
    if (a2 == 1734700576)
    {
      goto LABEL_33;
    }

    if (a2 != 1735287668)
    {
      goto LABEL_123;
    }

LABEL_23:
    if (*(v18 + 24) == 1)
    {
      CFDictionarySetValue(v17, @"IsListener", *MEMORY[0x277CBED28]);
      v24 = *(v18 + 56);
      v25 = FigCFWeakReferenceTableCopyValue();
      if (!v25)
      {
        session_createConnectionForStream_cold_32();
        goto LABEL_167;
      }

      v26 = CFGetAllocator(a1);
      Address = session_createConnection(v26, APTransportConnectionUDPCreate, a3, a4, a5, a6, 0, 0, -1, v25, v17, &cf);
      if (Address)
      {
        session_createConnectionForStream_cold_30();
        goto LABEL_167;
      }

      v27 = cf;
    }

    else
    {
      v27 = 0;
      v25 = 0;
    }

    v60 = APTransportConnectionGetCMBaseObject(v27);
    v61 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v61)
    {
      Address = v61(v60, @"PackageType", @"RTCP");
      if (!Address)
      {
        goto LABEL_118;
      }
    }

    else
    {
      Address = -12782;
    }

    session_createConnectionForStream_cold_31();
    goto LABEL_167;
  }

  if (a2 == 1802529910)
  {
    if (*(v18 + 24) != 1)
    {
      v27 = 0;
      v89 = 0;
      MutableCopy = 0;
      v25 = 0;
      Address = APSSignalErrorAt();
      goto LABEL_233;
    }

    v67 = *(v18 + 56);
    v25 = FigCFWeakReferenceTableCopyValue();
    if (!v25)
    {
      session_createConnectionForStream_cold_3();
      goto LABEL_167;
    }

    v68 = CFGetAllocator(a1);
    Address = session_createConnection(v68, APTransportConnectionUDPCreate, a3, a4, a5, a6, 0, 0, -1, v25, v19, &cf);
    if (Address)
    {
      session_createConnectionForStream_cold_1();
      goto LABEL_167;
    }

    v27 = cf;
    v69 = APTransportConnectionGetCMBaseObject(cf);
    Address = CMBaseObjectSetProperty(v69, @"PackageType", @"LowPowerKeepAlive");
    if (Address)
    {
      session_createConnectionForStream_cold_2();
      goto LABEL_167;
    }

    if (gLogCategory_APTransportSession > 30 || gLogCategory_APTransportSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_231;
    }

    goto LABEL_120;
  }

  if (a2 != 1819042165)
  {
    goto LABEL_123;
  }

  if (*(v18 + 24) != 1)
  {
    v89 = 0;
    v25 = 0;
    goto LABEL_182;
  }

  v43 = *MEMORY[0x277CBED10];
  CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED10]);
  v44 = *(v18 + 56);
  v25 = FigCFWeakReferenceTableCopyValue();
  if (!v25)
  {
    session_createConnectionForStream_cold_25();
    goto LABEL_167;
  }

  if (CFDictionaryGetInt64())
  {
    v135 = a8;
    APSSettingsGetIntWithDefault();
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    APSSettingsGetIntWithDefault();
    CFDictionarySetInt64();
    APSIsPersistentGroupSDBCapable();
    APSSettingsGetIntWithDefault();
    CFDictionarySetInt64();
    APSSettingsGetIntWithDefault();
    CFDictionarySetInt64();
    APSSettingsGetIntWithDefault();
    CFDictionarySetInt64();
    IntWithDefault = APSSettingsGetIntWithDefault();
    v46 = *MEMORY[0x277CBED28];
    if (IntWithDefault)
    {
      v47 = *MEMORY[0x277CBED28];
    }

    else
    {
      v47 = v43;
    }

    CFDictionarySetValue(v19, @"DisablePacketExpiryDrop", v47);
    if (*(v18 + 160))
    {
      v48 = v46;
    }

    else
    {
      v48 = v43;
    }

    CFDictionarySetValue(v19, @"ForceLowLatencyConnection", v48);
    if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
    {
      session_createConnectionForStream_cold_15();
    }

    v49 = APTransportConnectionUDPNWCreate;
    a8 = v135;
  }

  else
  {
    v49 = APTransportConnectionUDPCreate;
  }

  if ((*(v18 + 152) - 5) < 0xFFFFFFFE)
  {
    v107 = CFGetAllocator(a1);
    Address = session_createConnection(v107, v49, a3, a4, a5, a6, 0, 0, -1, v25, v19, &cf);
    if (Address)
    {
      session_createConnectionForStream_cold_23();
      goto LABEL_167;
    }

    v89 = 0;
LABEL_182:
    v27 = cf;
    v111 = APTransportConnectionGetCMBaseObject(cf);
    v112 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v112)
    {
      Address = v112(v111, @"PackageType", @"RTP");
      if (!Address)
      {
        if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_232;
      }
    }

    else
    {
      Address = -12782;
    }

    session_createConnectionForStream_cold_24();
    goto LABEL_168;
  }

  v108 = *(v18 + 64);
  if (!v108)
  {
    session_createConnectionForStream_cold_22(&Address);
LABEL_331:
    v89 = 0;
    goto LABEL_337;
  }

  if (a4 == 4)
  {
    v109 = 5;
  }

  else
  {
    v109 = 3;
  }

  Address = APTransportDeviceGetAddress(v108, v109, 1, cStr, 1024, 0, 0);
  if (Address)
  {
    session_createConnectionForStream_cold_16();
    goto LABEL_331;
  }

  v89 = CFStringCreateWithCString(alloc, cStr, 0x8000100u);
  if (v89)
  {
    Address = APSNetworkAddressCreateWithString();
    if (Address)
    {
      session_createConnectionForStream_cold_17();
    }

    else
    {
      Address = APSNetworkAddressCopyInterfaceName();
      if (Address)
      {
        session_createConnectionForStream_cold_18();
      }

      else
      {
        v110 = CFGetAllocator(a1);
        Address = session_createConnection(v110, v49, a3, a4, a5, a6, 0, v141, -1, 0, v19, &cf);
        if (!Address)
        {
          goto LABEL_182;
        }

        session_createConnectionForStream_cold_19();
      }
    }
  }

  else
  {
    session_createConnectionForStream_cold_21();
  }

LABEL_337:
  MutableCopy = 0;
  v17 = v19;
LABEL_234:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v141)
  {
    CFRelease(v141);
  }

  result = Address;
  v123 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t session_createConnection(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t, uint64_t, CFTypeRef *), uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, CFTypeRef *a12)
{
  v47 = 0;
  cf = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  if ((a4 - 1) > 3)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_23D383720[a4 - 1];
  }

  v15 = (16 * a5) & 0x20;
  if ((a5 & 8) != 0)
  {
    v15 = 32;
  }

  v16 = a2(a1, a3, v15 & 0xFFFFFFFB | (4 * (a5 & 1)) | v14, a6, a11, &cf);
  if (v16)
  {
    v20 = v16;
    session_createConnection_cold_1();
  }

  else
  {
    if (a7)
    {
      CMBaseObject = APTransportConnectionGetCMBaseObject(cf);
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v18)
      {
        v20 = 4294954514;
        goto LABEL_32;
      }

      v19 = v18(CMBaseObject, @"TransportDevice", a7);
      if (v19)
      {
        v20 = v19;
LABEL_32:
        APSLogErrorAt();
        goto LABEL_33;
      }

LABEL_30:
      v20 = 0;
      *a12 = cf;
      cf = 0;
      goto LABEL_35;
    }

    if (a8)
    {
      v21 = APTransportConnectionGetCMBaseObject(cf);
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v22)
      {
        v20 = 4294954514;
        goto LABEL_32;
      }

      v23 = v22(v21, @"RemoteNetworkIPAddress", a8);
      if (v23)
      {
        v20 = v23;
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (a10)
    {
      v24 = APTransportConnectionGetCMBaseObject(a10);
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v25)
      {
        v20 = 4294954514;
        goto LABEL_32;
      }

      v26 = *MEMORY[0x277CBECE8];
      v27 = v25(v24, @"RemoteNetworkIPAddress", *MEMORY[0x277CBECE8], &v47);
      if (v27)
      {
        v20 = v27;
        goto LABEL_32;
      }

      v28 = v47;
      v29 = APTransportConnectionGetCMBaseObject(cf);
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v30)
      {
        v20 = 4294954514;
        goto LABEL_32;
      }

      v31 = v30(v29, @"RemoteNetworkIPAddress", v28);
      if (v31)
      {
        v20 = v31;
        goto LABEL_32;
      }

      v32 = APTransportConnectionGetCMBaseObject(a10);
      v33 = CMBaseObjectCopyProperty(v32, @"BoundInterfaceIndex", v26, &v46);
      if (v33)
      {
        v20 = v33;
        session_createConnection_cold_2();
      }

      else
      {
        v34 = v46;
        v35 = APTransportConnectionGetCMBaseObject(cf);
        v36 = CMBaseObjectSetProperty(v35, @"BoundInterfaceIndex", v34);
        if (!v36)
        {
          v37 = APTransportConnectionGetCMBaseObject(a10);
          CMBaseObjectCopyProperty(v37, @"LocalInterfaceName", v26, &v45);
          v38 = v45;
          if (v45)
          {
            v39 = APTransportConnectionGetCMBaseObject(cf);
            CMBaseObjectSetProperty(v39, @"LocalInterfaceName", v38);
          }

          goto LABEL_30;
        }

        v20 = v36;
        session_createConnection_cold_3();
      }
    }

    else
    {
      if (a9 < 0)
      {
        goto LABEL_30;
      }

      APTransportSocketCreate(*MEMORY[0x277CBECE8], a9, &v44);
      v40 = v44;
      if (v44)
      {
        v41 = APTransportConnectionGetCMBaseObject(cf);
        v42 = CMBaseObjectSetProperty(v41, @"ConnectedSocket", v40);
        if (!v42)
        {
          goto LABEL_30;
        }

        v20 = v42;
        session_createConnection_cold_4();
      }

      else
      {
        session_createConnection_cold_5();
        v20 = 4294950695;
      }
    }
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  return v20;
}

uint64_t APTransportConnectionUDPCreate(uint64_t a1, const void *a2, int a3, int a4, uint64_t a5, void *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    APTransportConnectionGetClassID();
    v17 = CMDerivedObjectCreate();
    if (v17)
    {
      APTransportConnectionUDPCreate_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 88) = CFDictionaryGetInt64() != 0;
      *(DerivedStorage + 112) = CFDictionaryGetInt64();
      CFUUIDGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      *(DerivedStorage + 120) = TypedValue;
      if (TypedValue)
      {
        CFRetain(TypedValue);
      }

      *(DerivedStorage + 16) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      *(DerivedStorage + 108) = a3;
      *(DerivedStorage + 232) = -1;
      SNPrintF();
      if (a4)
      {
        v12 = FigDispatchQueueCreateWithPriority();
      }

      else
      {
        v12 = dispatch_queue_create(label, 0);
      }

      *(DerivedStorage + 8) = v12;
      if (v12)
      {
        SNPrintF();
        v13 = FigDispatchQueueCreateWithPriority();
        *(DerivedStorage + 24) = v13;
        if (v13)
        {
          *(DerivedStorage + 56) = 0;
          v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          *(DerivedStorage + 128) = v14;
          if (v14)
          {
            if (gLogCategory_APTransportConnectionUDP <= 50 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            APTTrafficMetricsCreate(&gLogCategory_APTransportConnectionUDP, 0, (DerivedStorage + 264), 0);
            *a6 = 0;
          }

          else
          {
            APTransportConnectionUDPCreate_cold_2();
          }
        }

        else
        {
          APTransportConnectionUDPCreate_cold_3();
        }
      }

      else
      {
        APTransportConnectionUDPCreate_cold_4();
      }
    }
  }

  else
  {
    APTransportConnectionUDPCreate_cold_5();
  }

  result = v17;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APTransportConnectionGetClassID()
{
  if (_MergedGlobals_17 != -1)
  {
    APTransportConnectionGetClassID_cold_1();
  }

  return qword_281309C40;
}

uint64_t APTTrafficMetricsCreate(int *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = mach_absolute_time();
  v9 = 0;
  if (a1 && a2)
  {
    v10 = v8;
    if (_MergedGlobals_19 != -1)
    {
      OUTLINED_FUNCTION_7_8();
      dispatch_once_f(v20, v21, v22);
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      APSLogErrorAt();
      v9 = 4294960568;
      goto LABEL_16;
    }

    v12 = Instance;
    bzero((Instance + 16), 0x2C0uLL);
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    *(v12 + 32) = CUObfuscatedPtr();
    *(v12 + 88) = 1;
    *label = 5;
    if (APSSettingsGetInt64IfPresent() && *a1 <= 50 && (*a1 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(v12 + 96) = SecondsToUpTicks() / 0xAuLL;
    *(v12 + 72) = v10;
    *(v12 + 104) = a4;
    SNPrintF();
    v13 = dispatch_queue_create(label, 0);
    *(v12 + 40) = v13;
    if (v13 && (v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v13), (*(v12 + 48) = v14) != 0))
    {
      v15 = *MEMORY[0x277CBECE8];
      v16 = APSAtomicMessageQueueCreate();
      if (v16)
      {
        v9 = v16;
      }

      else
      {
        v17 = *(v12 + 40);
        v9 = APSRealTimeSignalCreate();
        if (!v9)
        {
          dispatch_set_context(*(v12 + 48), v12);
          dispatch_source_set_event_handler_f(*(v12 + 48), aptTrafficMetrics_intervalTimerHandler);
          dispatch_source_set_timer(*(v12 + 48), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          dispatch_resume(*(v12 + 48));
          *a3 = v12;
          goto LABEL_16;
        }
      }

      APSLogErrorAt();
    }

    else
    {
      APSLogErrorAt();
      v9 = 0;
    }

    CFRelease(v12);
  }

LABEL_16:
  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

void rtppackage_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageRTP <= 30 && (gLogCategory_APTransportPackageRTP != -1 || _LogCategory_Initialize()))
  {
    rtppackage_Finalize_cold_1();
  }

  APTransportParcelFree(*DerivedStorage);
  *DerivedStorage = 0;
}

_BYTE *udpconnection_callEventCallback(const void *a1, uint64_t a2, const void *a3)
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

    v7 = *(v6 + 14);
    return APSDispatchAsyncFHelper();
  }

  return result;
}

_BYTE *udpconnection_callEventCallback_0(const void *a1, uint64_t a2, const void *a3)
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

const void *rtppackage_CopyMessageData()
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

uint64_t rtppackage_ensureHeaderIsSet()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MessageType = APTransportParcelGetMessageType(*DerivedStorage);
  result = APTransportParcelIsHeaderSet(*DerivedStorage);
  if (!result)
  {
    v4 = 0;
    switch(MessageType)
    {
      case 1634497568:
        v3 = 25984;
        break;
      case 1634887012:
        v3 = 27008;
        break;
      case 1635088495:
        v3 = 27264;
        break;
      case 1635283556:
        v3 = 27776;
        break;
      case 1870033508:
        v3 = 28032;
        break;
      case 1735550308:
        v3 = 24960;
        break;
      case 1835100526:
        v3 = 25728;
        break;
      case 1836213604:
        v3 = 26752;
        break;
      case 1869575779:
        v3 = 27520;
        break;
      case 1734700576:
        v3 = 24704;
        break;
      default:
        if (gLogCategory_APTransportPackageRTP <= 90 && (gLogCategory_APTransportPackageRTP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return APTransportParcelSetHeader(*DerivedStorage, &v4);
    }

    v4 = v3;
    return APTransportParcelSetHeader(*DerivedStorage, &v4);
  }

  return result;
}

void udpconnection_deferCallEventCallback(const void **a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    dispatch_sync_f(*(DerivedStorage + 136), a1, udpconnection_callEventCallbackOnEventQueue);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a1;
  if (*a1)
  {

    CFRelease(v5);
  }
}

void udpconnection_deferCallEventCallback_0(const void **a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    dispatch_sync_f(*(DerivedStorage + 48), a1, udpconnection_callEventCallbackOnEventQueue_0);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a1;
  if (*a1)
  {

    CFRelease(v5);
  }
}

uint64_t udpconnection_callEventCallbackOnEventQueue(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1[2];
  v5 = *(DerivedStorage + 120);
  v6 = *(DerivedStorage + 128);
  v7 = *(a1 + 2);

  return v6(v7, v4, v5);
}

uint64_t udpconnection_callEventCallbackOnEventQueue_0(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1[2];
  v5 = *(DerivedStorage + 32);
  v6 = *(DerivedStorage + 40);
  v7 = *(a1 + 2);

  return v6(v7, v4, v5);
}

CMBlockBufferRef rtppackage_CreateBBufRepresentation()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = 0;
  rtppackage_ensureHeaderIsSet();
  APTransportParcelCreateBBufRepresentation(*DerivedStorage, *MEMORY[0x277CBECE8], 0, &v2);
  return v2;
}

uint64_t rtppackage_SetMessageType(uint64_t a1, int a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageType(v3, a2);
}

uint64_t APTransportParcelMakeWithAllocators(const void *a1, const __CFAllocator *a2, size_t a3, size_t a4, uint64_t *a5)
{
  if (!a3)
  {
    APTransportParcelMakeWithAllocators_cold_4();
LABEL_14:
    v11 = 0;
    v15 = 4294954516;
    goto LABEL_11;
  }

  if (!a5)
  {
    APTransportParcelMakeWithAllocators_cold_3();
    goto LABEL_14;
  }

  v10 = MEMORY[0x23EEDC950](a1, 56, 0x1070040D1448509, 0);
  v11 = v10;
  if (!v10)
  {
    APTransportParcelMakeWithAllocators_cold_2();
    goto LABEL_17;
  }

  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 48) = a1;
  *v10 = a3;
  if (a1)
  {
    CFRetain(a1);
  }

  if (a4)
  {
    v12 = MEMORY[0x23EEDC950](a2, a4 + a3, 597347841, 0);
    if (v12)
    {
      v13 = v12;
      v14 = CMBlockBufferCreateWithMemoryBlock(*(v11 + 48), v12, a4 + a3, a2, 0, a3, a4, 0, (v11 + 32));
      if (v14)
      {
        v15 = v14;
        APSLogErrorAt();
        CFAllocatorDeallocate(a2, v13);
        goto LABEL_11;
      }

      *(v11 + 40) = v13;
      goto LABEL_10;
    }

    APTransportParcelMakeWithAllocators_cold_1();
LABEL_17:
    v15 = 4294954510;
    goto LABEL_11;
  }

LABEL_10:
  v15 = 0;
  *a5 = v11;
  v11 = 0;
LABEL_11:
  APTransportParcelFree(v11);
  return v15;
}

void APTransportParcelFree(void *ptr)
{
  if (ptr)
  {
    v2 = *(ptr + 6);
    *(ptr + 5) = 0;
    v3 = *(ptr + 2);
    if (v3)
    {
      CFRelease(v3);
      *(ptr + 2) = 0;
    }

    v4 = *(ptr + 4);
    if (v4)
    {
      CFRelease(v4);
      *(ptr + 4) = 0;
    }

    CFAllocatorDeallocate(*(ptr + 6), ptr);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t APTransportParcelSetMessageData(void *a1, CMBlockBufferRef theBuffer)
{
  v2 = a1[4];
  if (v2 == theBuffer)
  {
    return 0;
  }

  if (!a1[5])
  {
LABEL_5:
    a1[4] = theBuffer;
    if (theBuffer)
    {
      CFRetain(theBuffer);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    return 0;
  }

  lengthAtOffsetOut = 0uLL;
  totalLengthOut = 0;
  CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &lengthAtOffsetOut + 1);
  if (lengthAtOffsetOut == __PAIR128__(a1[5] + *a1, totalLengthOut))
  {
    v2 = a1[4];
    goto LABEL_5;
  }

  APSLogErrorAt();
  return 4294954516;
}

void udpconnection_sendPackageInternal(const void **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  kdebug_trace();
  if (*DerivedStorage)
  {
    udpconnection_sendPackageInternal_cold_1();
    goto LABEL_29;
  }

  if (*(DerivedStorage + 56) != 5)
  {
LABEL_29:
    v7 = 0;
    goto LABEL_30;
  }

  v4 = a1[1];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v5 || (v6 = v5(v4)) == 0)
  {
    udpconnection_sendPackageInternal_cold_3();
    goto LABEL_29;
  }

  v7 = v6;
  if (FigMakeIOVecArrayWithBlockBuffer())
  {
    udpconnection_sendPackageInternal_cold_2();
    goto LABEL_30;
  }

  CMBlockBufferGetDataLength(v7);
  APTTrafficMetricsSendStarted(*(DerivedStorage + 264));
  if (!*(DerivedStorage + 88))
  {
    kdebug_trace();
    v11 = writev(*(DerivedStorage + 232), &v21, v20);
    if (v11 != CMBlockBufferGetDataLength(v7))
    {
      if (*__error())
      {
        v12 = *__error();
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v12 = -6700;
      }

      if (gLogCategory_APTransportConnectionUDP <= 90 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
      {
        v18 = *a1;
        LogPrintF();
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  memset(&v19.msg_namelen, 0, 24);
  v8 = *(DerivedStorage + 193);
  if (v8 == 2)
  {
    v9 = 16;
    v10 = 232;
  }

  else
  {
    if (v8 != 30)
    {
      v12 = 0;
      goto LABEL_21;
    }

    v9 = 28;
    v10 = 236;
  }

  v13 = *(DerivedStorage + v10);
  v19.msg_name = (DerivedStorage + 192);
  v19.msg_namelen = v9;
  v19.msg_iov = &v21;
  v19.msg_iovlen = v20;
  v19.msg_control = 0;
  *&v19.msg_controllen = 0;
  v14 = sendmsg(v13, &v19, 0);
  if (v14 == CMBlockBufferGetDataLength(v7))
  {
LABEL_18:
    v12 = 0;
LABEL_19:
    APTTrafficMetricsSendFinished(*(DerivedStorage + 264));
    goto LABEL_21;
  }

  if (*__error())
  {
    v12 = *__error();
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = -6700;
  }

  if (gLogCategory_APTransportConnectionUDP <= 90 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
  {
    v17 = *a1;
    LogPrintF();
  }

LABEL_21:
  if (!v12)
  {
LABEL_22:
    CFRelease(v7);
    goto LABEL_23;
  }

LABEL_30:
  udpconnection_callEventCallback_0(*a1, 8, a1[1]);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_23:
  v15 = a1[1];
  if (v15)
  {
    CFRelease(v15);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void udpconnection_sendPackageInternal_0(const void *a1, const void *a2, int a3)
{
  v49 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47 = 0;
  v7 = mach_absolute_time();
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v8)
  {
    v9 = v8(a2);
  }

  else
  {
    v9 = 0;
  }

  SequenceNumberForPackage = udpconnection_getSequenceNumberForPackage(a2);
  memset(dst, 0, sizeof(dst));
  v46 = 0;
  if (*DerivedStorage)
  {
    APSLogErrorAt();
    goto LABEL_12;
  }

  if (*(DerivedStorage + 144) != 5)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_56;
  }

  v11 = SequenceNumberForPackage;
  *src = 1;
  v45 = 0;
  *&src[2] = SequenceNumberForPackage;
  uuid_copy(dst, src);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v12 || (v13 = v12(a2)) == 0)
  {
    APSLogErrorAt();
LABEL_12:
    APSSignalErrorAt();
    goto LABEL_13;
  }

  v14 = v13;
  v15 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_0(v15);
  v16 = *MEMORY[0x277CBECE8];
  if (APSDispatchDataCreateWithBlockBuffer())
  {
    goto LABEL_67;
  }

  v17 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
  if (!v9)
  {
    v18 = 0;
    goto LABEL_27;
  }

  if (v9 >= v7)
  {
    v18 = UpTicksToMilliseconds();
  }

  else
  {
    v18 = -UpTicksToMilliseconds();
  }

  v17 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
  if (v18 > *(DerivedStorage + 328))
  {
LABEL_27:
    v20 = *(DerivedStorage + 336);
    if (v18 >= v20)
    {
      v21 = *(DerivedStorage + 336);
    }

    else
    {
      v21 = v18;
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = v18;
    }

    if (*(DerivedStorage + 196))
    {
      v23 = 344;
      if (!a3)
      {
        v23 = 352;
      }

      v24 = *(DerivedStorage + v23);
      if (v24)
      {
        v22 = v24;
      }
    }

    if (gLogCategory_APTransportConnectionUDPNW <= 30)
    {
      if (gLogCategory_APTransportConnectionUDPNW != -1 || (OUTLINED_FUNCTION_10_4(), v28 = v27, v29 = _LogCategory_Initialize(), v17 = v28, v29))
      {
        OUTLINED_FUNCTION_1();
        v26 = v25;
        LogPrintF();
        v17 = v26;
      }
    }

    v30 = *(DerivedStorage + 376);
    if (v30)
    {
      v31 = v17[214];
      if (v31 <= 30)
      {
        if (v31 != -1 || (OUTLINED_FUNCTION_10_4(), v32 = _LogCategory_Initialize(), v30 = *(DerivedStorage + 376), v32))
        {
          OUTLINED_FUNCTION_1();
          LogPrintF();
          v30 = *(DerivedStorage + 376);
        }
      }

      if (v30 == -1)
      {
        v22 = 0;
      }

      else
      {
        v22 = v30;
      }
    }

    v33 = *(DerivedStorage + 104);
    if (!APSRecycleBinTakeItem())
    {
      v34 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_19_0(v34);
      nw_content_context_set_expiration_milliseconds(v46, v22);
      nw_content_context_set_packet_id();
      DataLength = CMBlockBufferGetDataLength(v14);
      APTTrafficMetricsSendStarted(*(DerivedStorage + 408));
      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      nw_retain(v46);
      v36 = *(DerivedStorage + 296);
      completion[0] = MEMORY[0x277D85DD0];
      completion[1] = 0x40000000;
      completion[2] = __udpconnection_sendPackageInternal_block_invoke;
      completion[3] = &__block_descriptor_tmp_182;
      v39 = v11;
      completion[4] = a1;
      completion[5] = a2;
      completion[6] = DerivedStorage;
      completion[7] = v46;
      completion[8] = DataLength;
      nw_connection_send(v36, v47, v46, 1, completion);
      goto LABEL_56;
    }

LABEL_67:
    APSLogErrorAt();
    goto LABEL_56;
  }

  if (*(DerivedStorage + 368))
  {
    if (gLogCategory_APTransportConnectionUDPNW <= 30)
    {
      if (gLogCategory_APTransportConnectionUDPNW != -1 || (OUTLINED_FUNCTION_10_4(), v19 = _LogCategory_Initialize(), v17 = &OBJC_IVAR___APBonjourCacheManager__removedItems, v19))
      {
        OUTLINED_FUNCTION_1();
        LogPrintF();
        v17 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
      }
    }

    v18 = *(DerivedStorage + 328) + 1;
    goto LABEL_27;
  }

  if (gLogCategory_APTransportConnectionUDPNW <= 30)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (OUTLINED_FUNCTION_10_4(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_1();
      LogPrintF();
    }
  }

  if (a3)
  {
    atomic_fetch_add_explicit((DerivedStorage + 360), 1uLL, memory_order_relaxed);
    APSAsyncLoggerGetSharedLogger();
    v40 = a1;
    v41 = v11;
    v42 = v18;
    v43 = 0;
    APSAsyncLoggerLogMessage();
  }

LABEL_56:
  if (v46)
  {
    nw_release(v46);
    v46 = 0;
  }

  if (v47)
  {
    dispatch_release(v47);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t rtppackage_SetMessageData(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageData(v3, a2);
}

uint64_t udpconnection_SendPackage(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  CFRetain(a2);
  v5 = *(DerivedStorage + 8);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t udpconnection_SendPackage_0(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 && a2)
  {
    if (*DerivedStorage)
    {
      APSLogErrorAt();
      return 4294894970;
    }

    else
    {
      v5 = *(DerivedStorage + 192);
      v6 = CMBaseObjectGetDerivedStorage();
      v7 = v6;
      if (v5 == 3)
      {
        if (*(v6 + 144) == 5)
        {
          v8 = *(v6 + 72);
          *(v8 + 72) = mach_absolute_time();
          v9 = *(v7 + 56);
          APSWrapperGetValue();
          if (FigSimpleMutexTryLock())
          {
            udpconnection_sendPackageInternal_0(a1, a2, *(v7 + 196) != 0);
            v10 = *(v7 + 56);
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

      else
      {
        cf = CFRetain(a1);
        v15 = CFRetain(a2);
        v11 = *(v7 + 88);
        if (APSAtomicMessageQueueSendMessage())
        {
          cf = 0;
          v15 = 0;
          v12 = *(v7 + 96);
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

        if (v15)
        {
          CFRelease(v15);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_0();
    APSLogErrorAt();
  }

  return a1;
}

uint64_t APTransportParcelSetHeader(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      memcpy(v3, a2, *a1);
    }

    else
    {
      v4 = *(a1 + 48);
      v5 = *a1;
      BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
      if (BlockBufferCopyingMemoryBlock)
      {
        v7 = BlockBufferCopyingMemoryBlock;
        APTransportParcelSetHeader_cold_1();
        return v7;
      }
    }

    v7 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    APTransportParcelSetHeader_cold_2();
    return 4294954516;
  }

  return v7;
}

uint64_t APTransportParcelCreateBBufRepresentation(uint64_t a1, const __CFAllocator *a2, const void *a3, CMBlockBufferRef *a4)
{
  blockBufferOut = 0;
  if (!*(a1 + 40))
  {
    if (a3)
    {
      v10 = *a1;
      BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
      if (BlockBufferCopyingMemoryBlock)
      {
        v12 = BlockBufferCopyingMemoryBlock;
        APTransportParcelCreateBBufRepresentation_cold_3();
        goto LABEL_23;
      }
    }

    else
    {
      if (!*(a1 + 8))
      {
        APTransportParcelCreateBBufRepresentation_cold_5();
        goto LABEL_22;
      }

      v15 = *(a1 + 16);
      if (v15)
      {
        v15 = CFRetain(v15);
      }

      blockBufferOut = v15;
    }

    v16 = *(a1 + 32);
    if (!v16)
    {
      goto LABEL_9;
    }

    if (CMBlockBufferIsEmpty(v16))
    {
      goto LABEL_9;
    }

    v17 = *(a1 + 32);
    DataLength = CMBlockBufferGetDataLength(v17);
    appended = CMBlockBufferAppendBufferReference(blockBufferOut, v17, 0, DataLength, 0);
    if (!appended)
    {
      goto LABEL_9;
    }

    v12 = appended;
    APTransportParcelCreateBBufRepresentation_cold_4();
    goto LABEL_23;
  }

  v8 = *a1;
  v9 = CMBlockBufferGetDataLength(*(a1 + 32));
  if (!a3)
  {
    if (*(a1 + 8))
    {
      goto LABEL_8;
    }

    APTransportParcelCreateBBufRepresentation_cold_2();
LABEL_22:
    v12 = 4294954516;
    goto LABEL_23;
  }

  memcpy(*(a1 + 40), a3, *a1);
LABEL_8:
  customBlockSource.version = 0;
  customBlockSource.AllocateBlock = 0;
  customBlockSource.FreeBlock = parcel_bbufFree;
  customBlockSource.refCon = CFRetain(*(a1 + 32));
  v13 = CMBlockBufferCreateWithMemoryBlock(a2, *(a1 + 40), v9 + v8, *MEMORY[0x277CBED00], &customBlockSource, 0, v9 + v8, 0, &blockBufferOut);
  if (!v13)
  {
LABEL_9:
    v12 = 0;
    *a4 = blockBufferOut;
    return v12;
  }

  v12 = v13;
  APTransportParcelCreateBBufRepresentation_cold_1();
LABEL_23:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v12;
}

void udpconnection_sourceEventHandlerCallback(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  cf = 0;
  blockBufferOut = 0;
  v4 = MEMORY[0x277CBECF0];
  if (!v2)
  {
    APSLogErrorAt();
    APSSignalErrorAt();
    v10 = 0;
    v5 = 0;
    goto LABEL_12;
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    v10 = 0;
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_9;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 56) != 5)
  {
    goto LABEL_9;
  }

  v8 = *v4;
  v9 = MEMORY[0x23EEDC950](*v4, 1472, 2089464830, 0);
  if (!v9)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_5_12();
    APSSignalErrorAt();
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  v11 = recvfrom(v3, v9, 0x5C0uLL, 0, 0, 0);
  v12 = *MEMORY[0x277CBECE8];
  if (!CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v10, 0x5C0uLL, v8, 0, 0, v11, 0, &blockBufferOut))
  {
    if ((*(v7 + 64))(v12, blockBufferOut, &cf))
    {
      APSLogErrorAt();
    }

    else
    {
      udpconnection_callEventCallback_0(v5, 7, cf);
    }

    goto LABEL_9;
  }

  APSLogErrorAt();
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v10)
  {
    CFAllocatorDeallocate(*v4, v10);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t APTransportPackageRTPCreateWithBBuf(const void *a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  blockBufferOut = 0;
  cf = 0;
  APTransportPackageGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v14 = v6;
    APTransportPackageRTPCreateWithBBuf_cold_1();
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = 0;
  v8 = APTransportParcelMakeWithAllocators(a1, *MEMORY[0x277CBECF0], 2uLL, 0, DerivedStorage);
  if (v8)
  {
    v14 = v8;
    APTransportPackageRTPCreateWithBBuf_cold_2();
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v16 = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a2, 0, &v16, 0, &dataPointerOut);
  if (DataPointer)
  {
    v14 = DataPointer;
    APTransportPackageRTPCreateWithBBuf_cold_3();
    goto LABEL_19;
  }

  if (v16 <= 1)
  {
    APTransportPackageRTPCreateWithBBuf_cold_8();
LABEL_18:
    v14 = 4294960591;
    goto LABEL_19;
  }

  if ((*dataPointerOut & 0xC0) != 0x80)
  {
    APTransportPackageRTPCreateWithBBuf_cold_4();
    v14 = 4294960581;
    goto LABEL_19;
  }

  v10 = (dataPointerOut[1] & 0x7F) - 96;
  if (v10 >= 0xEu || ((0x3D13u >> v10) & 1) == 0)
  {
    if (gLogCategory_APTransportPackageRTP <= 90 && (gLogCategory_APTransportPackageRTP != -1 || _LogCategory_Initialize()))
    {
      APTransportPackageRTPCreateWithBBuf_cold_5();
    }

    goto LABEL_18;
  }

  APTransportParcelSetMessageType(*DerivedStorage, dword_23D3837E0[((dataPointerOut[1] & 0x7F) - 96)]);
  DataLength = CMBlockBufferGetDataLength(a2);
  v12 = CMBlockBufferCreateWithBufferReference(a1, a2, 2uLL, DataLength - 2, 0, &blockBufferOut);
  if (v12)
  {
    v14 = v12;
    APTransportPackageRTPCreateWithBBuf_cold_6();
    goto LABEL_19;
  }

  v13 = APTransportParcelSetMessageData(*DerivedStorage, blockBufferOut);
  if (v13)
  {
    v14 = v13;
    APTransportPackageRTPCreateWithBBuf_cold_7();
    goto LABEL_19;
  }

LABEL_11:
  if (gLogCategory_APTransportPackageRTP <= 30 && (gLogCategory_APTransportPackageRTP != -1 || _LogCategory_Initialize()))
  {
    APTransportPackageRTPCreateWithBBuf_cold_9(&cf);
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

void __stream_packageReceived_block_invoke(void *a1)
{
  v2 = *(a1[4] + 120);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 16) + 24);
    if (v6)
    {
      v7 = *(VTable + 16) + 24;
      v8 = v6(v4);
    }

    else
    {
      v8 = 0;
    }

    v2(v3, v8, a1[7], *(a1[4] + 112));
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[5];

  CFRelease(v11);
}

void __stream_packageReceived_block_invoke_0(void *a1)
{
  v2 = *(a1[4] + 200);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 16) + 24);
    if (v6)
    {
      v7 = *(VTable + 16) + 24;
      v8 = v6(v4);
    }

    else
    {
      v8 = 0;
    }

    v2(v3, v8, a1[7], *(a1[4] + 192));
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[5];

  CFRelease(v11);
}

uint64_t rtppackage_GetMessageType()
{
  v0 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelGetMessageType(v0);
}

void browser_handleBTLEEventExternal(uint64_t a1, int a2, const void *a3, const void *a4)
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
  block[2] = __browser_handleBTLEEventExternal_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v10 = a2;
  block[4] = a4;
  block[5] = a3;
  dispatch_async(v8, block);
}

void __browser_handleBTLEEventExternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v23 = *DerivedStorage;
      v24 = **v6;
      if (v24 > 40)
      {
        goto LABEL_45;
      }

      if (v24 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_45;
        }

        v31 = *v6;
      }

      goto LABEL_25;
    }

    if (v2 != 4)
    {
LABEL_23:
      v25 = *DerivedStorage;
      v26 = **v6;
      if (v26 > 60)
      {
        goto LABEL_45;
      }

      if (v26 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_45;
        }

        v32 = *v6;
      }

LABEL_25:
      LogPrintF();
      goto LABEL_45;
    }

    v17 = *DerivedStorage;
    v18 = **v6;
    if (v18 <= 40)
    {
      if (v18 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        v36 = *v6;
      }

      LogPrintF();
    }

LABEL_38:
    v30 = v3;
    goto LABEL_39;
  }

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      Value = CFDictionaryGetValue(v4, @"deviceID");
      if (!Value)
      {
        __browser_handleBTLEEventExternal_block_invoke_cold_3();
        goto LABEL_45;
      }

      v20 = Value;
      v21 = CMBaseObjectGetDerivedStorage();
      v22 = **v21;
      if (v22 > 20)
      {
        goto LABEL_43;
      }

      if (v22 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_43:
          if (browser_removeBonjourWithBTLE(v3, v20))
          {
            __browser_handleBTLEEventExternal_block_invoke_cold_1();
          }

          else
          {
            v33 = CMBaseObjectGetDerivedStorage();
            CFDictionaryRemoveValue(*(v33 + 112), v20);
            if (!browser_updateAVDevicePresent(v3))
            {
              goto LABEL_45;
            }

            __browser_handleBTLEEventExternal_block_invoke_cold_2();
          }

          goto LABEL_62;
        }

        v37 = *v21;
      }

      LogPrintF();
      goto LABEL_43;
    }

    goto LABEL_23;
  }

  v7 = CFDictionaryGetValue(v4, @"deviceID");
  v8 = CFDictionaryGetValue(v4, @"ipAddress");
  v9 = CFDictionaryGetValue(v4, @"port");
  v10 = CFDictionaryGetValue(v4, @"supportsSolo");
  v11 = CFDictionaryGetValue(v4, @"rssi");
  if (!v7)
  {
    __browser_handleBTLEEventExternal_block_invoke_cold_11();
    goto LABEL_45;
  }

  if (!v8)
  {
    __browser_handleBTLEEventExternal_block_invoke_cold_10();
    goto LABEL_45;
  }

  if (!v9)
  {
    __browser_handleBTLEEventExternal_block_invoke_cold_9();
    goto LABEL_45;
  }

  if (!v10)
  {
    __browser_handleBTLEEventExternal_block_invoke_cold_8();
    goto LABEL_45;
  }

  v12 = v11;
  if (!v11)
  {
    __browser_handleBTLEEventExternal_block_invoke_cold_7();
    goto LABEL_45;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  v14 = CFDictionaryGetValue(*(v13 + 112), v7);
  v15 = v14;
  if (v14)
  {
    CFRetain(v14);
    Mutable = v15;
    goto LABEL_27;
  }

  v27 = CFGetAllocator(v3);
  Mutable = CFDictionaryCreateMutable(v27, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
LABEL_27:
    v28 = **v13;
    if (v28 > 40)
    {
      goto LABEL_31;
    }

    if (v28 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_31:
        CFDictionarySetValue(Mutable, @"deviceID ", v7);
        CFDictionarySetValue(Mutable, @"IPAddress", v8);
        CFDictionarySetValue(Mutable, @"port", v9);
        CFDictionarySetValue(Mutable, @"supportsSolo", v10);
        CFDictionarySetValue(Mutable, @"btleRSSI", v12);
        if (!v15 && (mach_absolute_time(), CFAbsoluteTimeGetCurrent(), v29 = CMBaseObjectGetDerivedStorage(), APSEventRecorderSetTimeInDictionary(), CFDictionarySetValue(*(v29 + 112), v7, Mutable), browser_updateAVDevicePresent(v3)))
        {
          __browser_handleBTLEEventExternal_block_invoke_cold_4();
        }

        else
        {
          if (!browser_startBTLEDeviceQuery(v3, v7))
          {
            v30 = Mutable;
LABEL_39:
            CFRelease(v30);
            goto LABEL_45;
          }

          __browser_handleBTLEEventExternal_block_invoke_cold_5();
        }

        CFRelease(Mutable);
        goto LABEL_62;
      }

      v35 = *v13;
    }

    LogPrintF();
    goto LABEL_31;
  }

  __browser_handleBTLEEventExternal_block_invoke_cold_6();
LABEL_62:
  APSLogErrorAt();
LABEL_45:
  CFRelease(*(a1 + 32));
  v34 = *(a1 + 40);
  if (v34)
  {

    CFRelease(v34);
  }
}

uint64_t browser_addOrUpdateService(const void *a1, __CFString *a2, const __CFDictionary *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (!*(DerivedStorage + 24))
  {
    return 0;
  }

  if (a2 && a3)
  {
    v9 = DerivedStorage;
    if (browser_skipBonjourUpdate(a1, a3))
    {
      goto LABEL_64;
    }

    v10 = CFGetAllocator(a1);
    v11 = APBrowserCopyDeviceIDFromBonjourInfo(v10, a3, &key);
    if (v11)
    {
      v41 = v11;
      goto LABEL_84;
    }

    Value = CFDictionaryGetValue(*(v9 + 216), key);
    if (Value)
    {
      v13 = Value;
      if (a4)
      {
        CFDictionarySetValue(Value, @"DiscoveryMetrics", a4);
      }

      v14 = key;
      v15 = CMBaseObjectGetDerivedStorage();
      v50 = 0;
      if (CFDictionaryGetValue(a3, @"name"))
      {
        if (@"RAOP" == a2 || @"RAOP" && CFEqual(a2, @"RAOP"))
        {
          goto LABEL_49;
        }

        v19 = *(v15 + 72);
        if (v19 == a2 || v19 && CFEqual(a2, v19))
        {
          if (*(v15 + 64))
          {
            v20 = *(v15 + 80);
            goto LABEL_49;
          }

          goto LABEL_83;
        }

        if (@"AirPlayNANFull" == a2 || @"AirPlayNANFull" && CFEqual(a2, @"AirPlayNANFull") || @"AirPlayNANPartial" == a2 || @"AirPlayNANPartial" && CFEqual(a2, @"AirPlayNANPartial"))
        {
LABEL_49:
          OUTLINED_FUNCTION_3_12(*v15);
          if (!(v25 ^ v26 | v24))
          {
LABEL_54:
            Transports = APBrowserGetTransports(a3, 1, &v50);
            if (Transports)
            {
              v41 = Transports;
            }

            else
            {
              v28 = OUTLINED_FUNCTION_11_8();
              v30 = CFDictionaryGetValue(v28, v29);
              cf = v30;
              if (!v30)
              {
                v37 = OUTLINED_FUNCTION_11_8();
                CFDictionarySetValue(v37, v38, a3);
                goto LABEL_59;
              }

              CFRetain(v30);
              v31 = OUTLINED_FUNCTION_11_8();
              CFDictionaryRemoveValue(v31, v32);
              v33 = BonjourDevice_MergeInfo();
              if (!v33)
              {
                v34 = OUTLINED_FUNCTION_11_8();
                CFDictionarySetValue(v34, v35, v36);
                CFRelease(cf);
LABEL_59:
                if (CFDictionaryGetInt64() && *(v15 + 24) != 1 && (v50 & 4) != 0 && (v39 = browser_cacheP2PDNSAddresses(a1, v14, v13), v39))
                {
                  v41 = v39;
                }

                else
                {
                  updated = browser_updateEventInfoForDevice(a1, v14);
                  if (!updated)
                  {
                    goto LABEL_64;
                  }

                  v41 = updated;
                }

                goto LABEL_92;
              }

              v41 = v33;
            }

LABEL_92:
            APSLogErrorAt();
            goto LABEL_84;
          }

          if (v23 == -1)
          {
            if (!OUTLINED_FUNCTION_7())
            {
              goto LABEL_54;
            }

            v47 = *v15;
          }

          OUTLINED_FUNCTION_11();
          goto LABEL_54;
        }

        if (@"AirPlayPartial" != a2 && (!@"AirPlayPartial" || !CFEqual(a2, @"AirPlayPartial")))
        {
          goto LABEL_83;
        }

        if (*(v15 + 24) == 3)
        {
          goto LABEL_49;
        }

LABEL_64:
        v41 = 0;
        goto LABEL_80;
      }

LABEL_93:
      APSLogErrorAt();
      v41 = 4294960534;
      goto LABEL_84;
    }

    v16 = key;
    v17 = CMBaseObjectGetDerivedStorage();
    if (!CFDictionaryGetValue(a3, @"name"))
    {
      goto LABEL_93;
    }

    if (@"RAOP" == a2 || @"RAOP" && CFEqual(a2, @"RAOP"))
    {
      v18 = @"RAOPBonjourInfo";
      goto LABEL_70;
    }

    v21 = *(v17 + 72);
    if (v21 == a2 || v21 && CFEqual(a2, v21))
    {
      v18 = *(v17 + 64);
      if (v18)
      {
        v22 = *(v17 + 80);
        goto LABEL_70;
      }

LABEL_83:
      APSLogErrorAt();
      v41 = 4294960591;
LABEL_84:
      APSLogErrorAt();
      goto LABEL_80;
    }

    if (@"AirPlayNANFull" == a2 || @"AirPlayNANFull" && CFEqual(a2, @"AirPlayNANFull"))
    {
      v18 = @"AirPlayNANFullBonjourInfo";
    }

    else if (@"AirPlayNANPartial" == a2 || @"AirPlayNANPartial" && CFEqual(a2, @"AirPlayNANPartial"))
    {
      v18 = @"AirPlayNANPartialBonjourInfo";
    }

    else
    {
      if (@"AirPlayPartial" != a2 && (!@"AirPlayPartial" || !CFEqual(a2, @"AirPlayPartial")))
      {
        goto LABEL_83;
      }

      if (*(v17 + 24) != 3)
      {
        goto LABEL_64;
      }

      v18 = @"AirPlayP2PBonjourInfo";
    }

LABEL_70:
    OUTLINED_FUNCTION_3_12(*v17);
    if (!(v25 ^ v26 | v24))
    {
LABEL_75:
      v43 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v43, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v45 = Mutable;
        CFDictionarySetValue(Mutable, v18, a3);
        if (a4)
        {
          CFDictionarySetValue(v45, @"DiscoveryMetrics", a4);
        }

        CFDictionarySetValue(*(v17 + 216), v16, v45);
        v41 = browser_updateEventInfoForDevice(a1, v16);
        if (!v41)
        {
          CFRelease(v45);
          goto LABEL_80;
        }

        APSLogErrorAt();
        CFRelease(v45);
      }

      else
      {
        APSLogErrorAt();
        v41 = 4294960568;
      }

      goto LABEL_84;
    }

    if (v42 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_75;
      }

      v48 = *v17;
    }

    OUTLINED_FUNCTION_11();
    goto LABEL_75;
  }

  APSLogErrorAt();
  v41 = 4294960591;
LABEL_80:
  if (key)
  {
    CFRelease(key);
  }

  return v41;
}

uint64_t browser_updateEventInfoForDevice(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v62 = 0;
  if (!a2)
  {
    browser_updateEventInfoForDevice_cold_11();
    v30 = 0;
    v47 = 0;
    v56 = 4294960591;
    goto LABEL_83;
  }

  v5 = DerivedStorage;
  Value = CFDictionaryGetValue(*(DerivedStorage + 216), a2);
  if (!Value)
  {
    browser_updateEventInfoForDevice_cold_10();
    v30 = 0;
    v47 = 0;
    v56 = 4294960534;
    goto LABEL_83;
  }

  v7 = Value;
  ServiceAvailabilityForDevice = browser_queryServiceAvailabilityForDevice(a1, a2, &v69 + 1, &v69, 0);
  if (ServiceAvailabilityForDevice)
  {
    v56 = ServiceAvailabilityForDevice;
    browser_updateEventInfoForDevice_cold_1();
    v30 = 0;
LABEL_110:
    v47 = 0;
    goto LABEL_83;
  }

  v9 = CFDictionaryGetValue(v7, *(v5 + 64));
  APBrowserGetIsLocallyAdvertised(v9, &v68 + 1);
  APBrowserGetTransports(v9, 0, &v64 + 1);
  APBrowserGetTransportsRequiringBroker(v9, &v66);
  if (v9)
  {
    CFDictionaryGetValue(v9, @"cached");
  }

  else
  {
    v10 = *MEMORY[0x277CBED10];
  }

  v11 = CFDictionaryGetValue(v7, @"AirPlayNANFullBonjourInfo");
  APBrowserGetIsLocallyAdvertised(v11, &v68);
  APBrowserGetTransports(v11, 0, &v64);
  v12 = CFDictionaryGetValue(v7, @"RAOPBonjourInfo");
  APBrowserGetIsLocallyAdvertised(v12, &v67);
  APBrowserGetTransports(v12, 0, &v63);
  v13 = CFDictionaryGetValue(v7, @"AirPlayP2PBonjourInfo");
  APBrowserGetTransports(v13, 0, &v62);
  v14 = CFDictionaryGetValue(v7, @"AirPlayNANPartialBonjourInfo");
  APBrowserGetTransports(v14, 0, &v63 + 1);
  if (HIBYTE(v68) | v68)
  {
    v15 = 1;
  }

  else
  {
    v15 = v67 != 0;
  }

  v58 = v15;
  v16 = *(v5 + 72);
  v17 = FigCFEqual();
  v18 = CFGetAllocator(a1);
  v19 = *v5;
  if (!v17)
  {
    v71[0] = 0;
    v20 = CFDictionaryGetValue(v7, @"AirPlayBonjourInfo");
    v21 = CFDictionaryGetValue(v7, @"AirPlayNANFullBonjourInfo");
    v22 = CFDictionaryGetValue(v7, @"RAOPBonjourInfo");
    if (v20 || v21 || v22)
    {
      AdvertiserInfoForDevice = APBrowserCreateAdvertiserInfoForDevice(v18, v20, v21, v22, v71);
      if (AdvertiserInfoForDevice)
      {
        browser_updateEventInfoForDevice_cold_5(AdvertiserInfoForDevice, v19);
        goto LABEL_119;
      }

LABEL_20:
      v30 = v71[0];
      goto LABEL_21;
    }

LABEL_119:
    if (v71[0])
    {
      CFRelease(v71[0]);
    }

    goto LABEL_121;
  }

  v71[0] = 0;
  v24 = CFDictionaryGetValue(v7, @"SidePlayBonjourInfo");
  if (v24)
  {
    v25 = v24;
    v26 = CFDictionaryGetValue(v24, @"txt");
    if (v26)
    {
      v27 = v26;
      v28 = CFDictionaryGetValue(v25, @"name");
      if (v28)
      {
        v29 = APAdvertiserInfoCreateWithSidePlayDataAndDeviceName(v18, v27, v28, v71);
        if (!v29)
        {
          goto LABEL_20;
        }

        browser_updateEventInfoForDevice_cold_2(v29, v19);
      }

      else
      {
        browser_updateEventInfoForDevice_cold_3();
      }
    }

    else
    {
      browser_updateEventInfoForDevice_cold_4();
    }

    goto LABEL_119;
  }

LABEL_121:
  v30 = 0;
LABEL_21:
  v31 = (v64 & 0x2B00000000) != 0;
  v32 = ((BYTE4(v64) | v63) & 0x2B) != 0;
  DeviceRelationship = browser_getDeviceRelationship(a1, a2, v30);
  v34 = **v5;
  v61 = a1;
  v60 = DeviceRelationship;
  if (v34 > 40)
  {
    goto LABEL_26;
  }

  if (v34 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_26;
    }

    v35 = *v5;
  }

  v36 = off_278BCA3D8[DeviceRelationship];
  *MEMORY[0x277CBED28];
  LogPrintF();
  a1 = v61;
LABEL_26:
  v37 = CMBaseObjectGetDerivedStorage();
  v38 = CFDictionaryContainsKey(v37[26], a2);
  if (!v32)
  {
    if (!v38)
    {
      goto LABEL_41;
    }

    v42 = **v37;
    if (v42 <= 15)
    {
      if (v42 != -1)
      {
LABEL_39:
        LogPrintF();
        goto LABEL_40;
      }

      if (_LogCategory_Initialize())
      {
        v43 = *v37;
        goto LABEL_39;
      }
    }

LABEL_40:
    CFDictionaryRemoveValue(v37[26], a2);
    goto LABEL_41;
  }

  if (!v38)
  {
    [v37[25] primaryNetworkSignature];
    v39 = **v37;
    if (v39 <= 15)
    {
      if (v39 != -1)
      {
LABEL_32:
        LogPrintF();
        goto LABEL_33;
      }

      if (_LogCategory_Initialize())
      {
        v40 = *v37;
        goto LABEL_32;
      }
    }

LABEL_33:
    v41 = v37[26];
    FigCFDictionarySetValue();
  }

LABEL_41:
  CMBaseObjectGetDerivedStorage();
  if (v30 && APSRotatingKeyMapperIsInitialized())
  {
    v44 = APAdvertiserInfoCopyProperty(v30, 0, @"bluetoothAddress", 0, 0);
    if (!APSRotatingKeyMapperSetDesiredKeyForID())
    {
      if (!v44)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    browser_updateEventInfoForDevice_cold_6();
    if (v44)
    {
LABEL_45:
      CFRelease(v44);
    }
  }

LABEL_46:
  v45 = CFGetAllocator(a1);
  v46 = APBrowserCreateDetailedModeEventInfoDictionary(v45, a2, *(v5 + 40), v30, v69, HIBYTE(v69), v31, v32, v66, DeviceRelationship, v58, v65, &v70);
  if (v46)
  {
    v56 = v46;
    browser_updateEventInfoForDevice_cold_7();
    goto LABEL_110;
  }

  if (v30)
  {
    v47 = APAdvertiserInfoCopyProperty(v30, 0, @"publicCUSystemPairingIdentity", 0, 0);
    if (v47)
    {
      CFDictionarySetValue(*(v5 + 176), v47, a2);
    }
  }

  else
  {
    v47 = 0;
  }

  v48 = v70;
  v49 = v64;
  v50 = HIDWORD(v64);
  v51 = v62;
  v52 = v63;
  v59 = BYTE4(v63);
  mach_absolute_time();
  CFAbsoluteTimeGetCurrent();
  v72 = 0;
  if (v48)
  {
    if (!browser_copyDeviceEventRecorder(v7, a2, &v72))
    {
      if ((v50 & 2) != 0)
      {
        APSEventRecorderRecordEventWithFlagsAtTime();
        if ((v50 & 4) == 0)
        {
LABEL_55:
          if ((v49 & 0x80) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_94;
        }
      }

      else if ((v50 & 4) == 0)
      {
        goto LABEL_55;
      }

      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v49 & 0x80) == 0)
      {
LABEL_56:
        if ((v50 & 8) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_95;
      }

LABEL_94:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v50 & 8) == 0)
      {
LABEL_57:
        if ((v50 & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_96;
      }

LABEL_95:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v50 & 1) == 0)
      {
LABEL_58:
        if ((v50 & 0x10) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_97;
      }

LABEL_96:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v50 & 0x10) == 0)
      {
LABEL_59:
        if ((v50 & 0x20) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_98;
      }

LABEL_97:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v50 & 0x20) == 0)
      {
LABEL_60:
        if ((v52 & 2) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_99;
      }

LABEL_98:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v52 & 2) == 0)
      {
LABEL_61:
        if ((v52 & 4) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_100;
      }

LABEL_99:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v52 & 4) == 0)
      {
LABEL_62:
        if ((v52 & 8) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_101;
      }

LABEL_100:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v52 & 8) == 0)
      {
LABEL_63:
        if ((v52 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_102;
      }

LABEL_101:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v52 & 1) == 0)
      {
LABEL_64:
        if ((v52 & 0x10) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_103;
      }

LABEL_102:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v52 & 0x10) == 0)
      {
LABEL_65:
        if ((v52 & 0x20) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_104;
      }

LABEL_103:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v52 & 0x20) == 0)
      {
LABEL_66:
        if ((v51 & 4) == 0)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

LABEL_104:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v51 & 4) == 0)
      {
LABEL_68:
        if (v59 < 0)
        {
          APSEventRecorderRecordEventWithFlagsAtTime();
        }

        if (v51 < 0)
        {
          APSEventRecorderRecordEventWithFlagsAtTime();
        }

        if (v60)
        {
          APSEventRecorderRecordEventWithFlagsAtTime();
        }

        v53 = v61;
        if ((v50 & 0x20) != 0)
        {
          v71[0] = 0;
          v71[1] = 0;
          v54 = CFDictionaryGetValue(v7, @"DiscoveryMetrics");
          if (APSEventRecorderGetTimeFromDictionaryIfPresent())
          {
            APSEventRecorderRecordEventWithFlagsAtTime();
            CFDictionaryRemoveValue(v54, @"btleBeaconEventTime");
          }
        }

        v55 = v72;
        if (v49 | v50 | v52)
        {
          APSEventRecorderRecordEventWithFlagsAtTime();
        }

        CFDictionarySetValue(v48, @"eventRecorder", v55);
        if (!v55)
        {
          goto LABEL_81;
        }

        goto LABEL_80;
      }

LABEL_67:
      APSEventRecorderRecordEventWithFlagsAtTime();
      goto LABEL_68;
    }

    APSLogErrorAt();
    v55 = v72;
    v53 = v61;
    if (v72)
    {
LABEL_80:
      CFRelease(v55);
    }
  }

  else
  {
    browser_updateEventInfoForDevice_cold_8();
    v53 = v61;
  }

LABEL_81:
  v56 = browser_setEventInfoForDevice(v53, a2, v70);
  if (v56)
  {
    browser_updateEventInfoForDevice_cold_9();
  }

LABEL_83:
  if (v65)
  {
    CFRelease(v65);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v56;
}

uint64_t APBrowserGetTransports(const __CFDictionary *a1, int a2, _DWORD *a3)
{
  if (a1 && (a2 ? (v4 = @"removedServices") : (v4 = @"services"), (Value = CFDictionaryGetValue(a1, v4)) != 0 && (v6 = Value, Count = CFArrayGetCount(Value), Count >= 1)))
  {
    v8 = Count;
    v9 = 0;
    v10 = 0;
    do
    {
      CFArrayGetValueAtIndex(v6, v9);
      v10 |= CFDictionaryGetInt64();
      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return 0;
}

const __CFDictionary *APBrowserGetIsLocallyAdvertised(const __CFDictionary *result, char *a2)
{
  if (!result)
  {
    goto LABEL_9;
  }

  result = CFDictionaryGetValue(result, @"services");
  if (!result)
  {
    goto LABEL_9;
  }

  v3 = result;
  Count = CFArrayGetCount(result);
  if (Count < 1)
  {
    result = 0;
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v3, v6);
    Int64 = CFDictionaryGetInt64();
    result = 0;
    if (!Int64)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_9;
    }
  }

  result = 0;
  v8 = 1;
LABEL_10:
  *a2 = v8;
  return result;
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName(uint64_t a1, const __CFData *a2, uint64_t a3, uint64_t a4, const __CFString *a5, CFMutableDictionaryRef **a6)
{
  v38 = 0;
  v39 = 0;
  if (!a5)
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_11();
    return 4294960591;
  }

  if (!a2 && !a3 && !a4)
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_10();
    return 4294960591;
  }

  APAdvertiserInfoCreate(a1, &v39);
  v11 = v39;
  if (!v39)
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_9();
    return 4294960568;
  }

  _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(a5, &v38);
  v12 = v38;
  if (v38)
  {
    v13 = v38;
  }

  else
  {
    v13 = a5;
  }

  CFDictionarySetValue(v11[10], @"deviceName", v13);
  if (!a2)
  {
    goto LABEL_10;
  }

  v42 = 0;
  value = 0;
  v41 = 0;
  v40 = 0;
  if (APAdvertiserInfoGetBitListValueFromTXTRecord(@"cn", a2, &v40))
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_1();
LABEL_95:
    v17 = v44;
    goto LABEL_28;
  }

  v19 = v11[10];
  CFDictionarySetInt64();
  BooleanFromTXTRecord = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (BooleanFromTXTRecord != -6727)
  {
    v17 = BooleanFromTXTRecord;
    if (BooleanFromTXTRecord)
    {
LABEL_27:
      APSLogErrorAt();
      goto LABEL_28;
    }

    v21 = MEMORY[0x277CBED28];
    if (!v42)
    {
      v21 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v11[10], @"rfc2617DigestAuthKey", *v21);
  }

  if (APAdvertiserInfoGetBitListValueFromTXTRecord(@"et", a2, &v40))
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_2();
    goto LABEL_95;
  }

  v22 = v11[10];
  CFDictionarySetInt64();
  Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (Int64FromTXTRecord != -6727)
  {
    v17 = Int64FromTXTRecord;
    if (Int64FromTXTRecord)
    {
      goto LABEL_27;
    }

    v24 = _APAdvertiserInfoSetLegacyFeatures(v11[10]);
    if (v24)
    {
      v17 = v24;
      APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_3();
      goto LABEL_28;
    }
  }

  v25 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v25 != -6727)
  {
    v17 = v25;
    if (v25)
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(v11[10], @"firmwareVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v26 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v26 != -6727)
  {
    v17 = v26;
    if (v26)
    {
      goto LABEL_27;
    }

    v27 = v11[10];
    CFDictionarySetInt64();
  }

  BitListValueFromTXTRecord = APAdvertiserInfoGetBitListValueFromTXTRecord(@"md", a2, &v40);
  if (BitListValueFromTXTRecord != -6727)
  {
    v17 = BitListValueFromTXTRecord;
    if (BitListValueFromTXTRecord)
    {
      goto LABEL_27;
    }

    v29 = v11[10];
    CFDictionarySetInt64();
  }

  v30 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v30 != -6727)
  {
    v17 = v30;
    if (v30)
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(v11[10], @"deviceModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v31 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (v31 != -6727)
  {
    v17 = v31;
    if (v31)
    {
      goto LABEL_27;
    }

    v32 = MEMORY[0x277CBED28];
    if (!v42)
    {
      v32 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v11[10], @"password", *v32);
  }

  v33 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v33 != -6727)
  {
    v17 = v33;
    if (v33)
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(v11[10], @"publicKey", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  if (APSTXTRecordUtilsCopyCFStringFromTXTRecord())
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_4();
    goto LABEL_95;
  }

  CFDictionarySetValue(v11[10], @"transportTypes", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (APSTXTRecordUtilsCopyCFStringFromTXTRecord())
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_5();
    goto LABEL_95;
  }

  CFDictionarySetValue(v11[10], @"airTunesProtocolVersion", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  v34 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v34 != -6727)
  {
    v17 = v34;
    if (v34)
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(v11[10], @"airPlayVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v35 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v35 != -6727)
  {
    v17 = v35;
    if (v35)
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(v11[10], @"OSVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v36 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v36 == -6727)
  {
    v17 = 0;
  }

  else
  {
    v17 = v36;
    if (v36)
    {
      goto LABEL_27;
    }

    v37 = v11[10];
    CFDictionarySetInt64();
  }

LABEL_28:
  if (value)
  {
    CFRelease(value);
  }

  if (v17)
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_6();
    goto LABEL_54;
  }

LABEL_10:
  if (!a4)
  {
    goto LABEL_19;
  }

  value = 0;
  v14 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v14 != -6727)
  {
    if (!v14)
    {
      CFDictionarySetValue(v11[10], @"nanServiceType", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      goto LABEL_18;
    }

    APSLogErrorAt();
  }

  if (value)
  {
    CFRelease(value);
  }

LABEL_18:
  v15 = _APAdvertiserInfoAddAirPlayData(v11, a4);
  if (v15)
  {
    v17 = v15;
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_7();
    goto LABEL_54;
  }

LABEL_19:
  if (a3)
  {
    v16 = _APAdvertiserInfoAddAirPlayData(v11, a3);
    if (v16)
    {
      v17 = v16;
      APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_8();
LABEL_54:
      CFRelease(v11);
      if (!v12)
      {
        return v17;
      }

      goto LABEL_22;
    }
  }

  v17 = 0;
  *a6 = v11;
  if (v12)
  {
LABEL_22:
    CFRelease(v12);
  }

  return v17;
}

uint64_t stream_copyPropertyInternal(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    stream_copyPropertyInternal_cold_1();
    return 4294950679;
  }

  v8 = DerivedStorage;
  v9 = 56;
  if (*(DerivedStorage + 24))
  {
    v10 = 56;
  }

  else
  {
    v10 = 48;
  }

  v11 = *(DerivedStorage + v10);
  if (*(DerivedStorage + 24))
  {
    v9 = 48;
  }

  v12 = *(DerivedStorage + v9);
  if (!CFEqual(a2, @"ReverseConnectionLocalPort"))
  {
    if (CFEqual(a2, @"ReverseConnectionRemotePort"))
    {
      v17 = *(v12 + 24);
      if (v17)
      {
        CMBaseObject = APTransportConnectionGetCMBaseObject(v17);
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v16 = v19(CMBaseObject, @"RemoteNetworkPort", a3, a4);
          if (v16)
          {
            goto LABEL_19;
          }

          return v16;
        }

        v16 = 4294954514;
LABEL_19:
        APSLogErrorAt();
        return v16;
      }

      stream_copyPropertyInternal_cold_3();
    }

    else
    {
      if (CFEqual(a2, @"SendConnection"))
      {
        v21 = *(*(v8 + 48) + 24);
        if (v21)
        {
          v22 = CFRetain(v21);
          *a4 = v22;
          if (v22)
          {
            return 0;
          }
        }

        else
        {
          *a4 = 0;
        }

        stream_copyPropertyInternal_cold_4();
        return 4294960569;
      }

      v23 = *(v11 + 24);
      if (v23)
      {
        v24 = APTransportConnectionGetCMBaseObject(v23);
        v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v25)
        {
          v16 = v25(v24, a2, a3, a4);
          if (!v16)
          {
            return v16;
          }
        }

        else
        {
          v16 = 4294954514;
        }

        goto LABEL_19;
      }

      stream_copyPropertyInternal_cold_5();
    }

    return 4294960587;
  }

  v13 = *(v12 + 24);
  if (!v13)
  {
    stream_copyPropertyInternal_cold_2();
    return 4294960587;
  }

  v14 = APTransportConnectionGetCMBaseObject(v13);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    v16 = 4294954514;
    goto LABEL_19;
  }

  v16 = v15(v14, @"LocalNetworkPort", a3, a4);
  if (v16)
  {
    goto LABEL_19;
  }

  return v16;
}

uint64_t APTransportStreamCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, const void *a4, int a5, const void *a6, uint64_t a7, const __CFDictionary *a8, CFTypeRef *a9)
{
  v44 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!a2)
  {
    APTransportStreamCreate_cold_15();
    v34 = 4294950686;
    goto LABEL_36;
  }

  if (!a6)
  {
    APTransportStreamCreate_cold_14();
    v34 = 4294950686;
    goto LABEL_55;
  }

  FigTransportStreamGetClassID();
  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    v34 = v17;
    APTransportStreamCreate_cold_1();
    goto LABEL_55;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = CFRetain(a2);
  *DerivedStorage = a3;
  *(DerivedStorage + 80) = v19;
  *(DerivedStorage + 88) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  SNPrintF();
  if (a5)
  {
    v20 = FigDispatchQueueCreateWithPriority();
  }

  else
  {
    v20 = dispatch_queue_create(label, 0);
  }

  *(DerivedStorage + 64) = v20;
  if (!v20)
  {
    APTransportStreamCreate_cold_13();
LABEL_54:
    v34 = 4294950685;
    goto LABEL_55;
  }

  SNPrintF();
  v21 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 184) = v21;
  if (!v21)
  {
    APTransportStreamCreate_cold_12();
    goto LABEL_54;
  }

  v22 = dispatch_semaphore_create(1);
  *(DerivedStorage + 32) = v22;
  if (!v22)
  {
    APTransportStreamCreate_cold_11();
    goto LABEL_54;
  }

  Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x277CBF158]);
  *(DerivedStorage + 104) = Mutable;
  if (!Mutable)
  {
    APTransportStreamCreate_cold_10();
    goto LABEL_54;
  }

  v24 = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x277CBF150]);
  *(DerivedStorage + 112) = v24;
  if (!v24)
  {
    APTransportStreamCreate_cold_9();
    goto LABEL_54;
  }

  *(DerivedStorage + 96) = a7;
  *(DerivedStorage + 24) = 0;
  v25 = cf;
  v26 = CMBaseObjectGetDerivedStorage();
  if (a8)
  {
    Value = CFDictionaryGetValue(a8, @"SendConnection");
    if (Value)
    {
      ConnectionState = stream_createConnectionState(Value, stream_handleEventFromSendConnection_0, cf, 0, (v26 + 48));
      if (ConnectionState)
      {
        v34 = ConnectionState;
        APTransportStreamCreate_cold_2();
        goto LABEL_63;
      }

      v39 = stream_createConnectionState(a6, stream_handleEventFromReceiveConnection, cf, 1, (v26 + 56));
      if (v39)
      {
        v34 = v39;
        APTransportStreamCreate_cold_3();
        goto LABEL_63;
      }

      *(v26 + 24) = 1;
    }

    v28 = CFDictionaryGetValue(a8, @"ReceiveConnection");
    if (v28)
    {
      v40 = stream_createConnectionState(v28, stream_handleEventFromReceiveConnection, v25, 1, (v26 + 56));
      if (v40)
      {
        v34 = v40;
        APTransportStreamCreate_cold_4();
        goto LABEL_63;
      }

      v41 = stream_createConnectionState(a6, stream_handleEventFromSendConnection_0, v25, 0, (v26 + 48));
      if (v41)
      {
        v34 = v41;
        APTransportStreamCreate_cold_5();
        goto LABEL_63;
      }

      *(v26 + 24) = 0;
    }
  }

  if (*(v26 + 48))
  {
LABEL_18:
    if (!a8)
    {
      goto LABEL_31;
    }

    v29 = CFDictionaryGetValue(a8, @"EventRecorder");
    *(DerivedStorage + 136) = v29;
    if (!v29 || (CFRetain(v29), !*(DerivedStorage + 136)) || (v30 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 144) = v30) != 0))
    {
      v31 = CFDictionaryGetValue(a8, @"SendBackingProvider");
      *(DerivedStorage + 40) = v31;
      if (v31)
      {
        CFRetain(v31);
      }

      v32 = CFDictionaryGetValue(a8, @"IssueReporter");
      *(DerivedStorage + 8) = v32;
      if (v32)
      {
        CFRetain(v32);
      }

      v33 = CFDictionaryGetValue(a8, @"NANDataSession");
      *(DerivedStorage + 16) = v33;
      if (v33)
      {
        CFRetain(v33);
      }

      if (gLogCategory_APTransportStream > 50)
      {
        goto LABEL_35;
      }

      if (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize())
      {
        APTransportStreamCreate_cold_8(&cf, (DerivedStorage + 40));
      }

LABEL_31:
      if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

LABEL_35:
      v34 = 0;
      *a9 = cf;
      goto LABEL_36;
    }

    APTransportStreamCreate_cold_7();
    goto LABEL_54;
  }

  v37 = stream_createConnectionState(a6, stream_handleEventFromSendConnection_0, v25, 0, (v26 + 48));
  if (!v37)
  {
    *(v26 + 56) = *(v26 + 48);
    goto LABEL_18;
  }

  v34 = v37;
  APTransportStreamCreate_cold_6();
LABEL_63:
  APSLogErrorAt();
LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_36:
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t stream_setPropertyInternal(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    stream_setPropertyInternal_cold_1();
    return 4294950679;
  }

  v4 = DerivedStorage;
  v5 = 56;
  if (*(DerivedStorage + 24))
  {
    v6 = 56;
  }

  else
  {
    v6 = 48;
  }

  v7 = *(DerivedStorage + v6);
  if (*(DerivedStorage + 24))
  {
    v5 = 48;
  }

  v8 = *(DerivedStorage + v5);
  if (!CFEqual(a1[1], @"ReverseConnectionLocalPort"))
  {
    if (CFEqual(a1[1], @"ReverseConnectionRemotePort"))
    {
      v14 = *(v8 + 24);
      if (!v14)
      {
        stream_setPropertyInternal_cold_3();
        return 4294960587;
      }

      v15 = a1[2];
      CMBaseObject = APTransportConnectionGetCMBaseObject(v14);
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v17)
      {
        v13 = v17(CMBaseObject, @"RemoteNetworkPort", v15);
        if (v13)
        {
          goto LABEL_25;
        }

        return v13;
      }

      v13 = 4294954514;
    }

    else
    {
      if (!CFEqual(a1[1], @"QualityOfService"))
      {
        v23 = CFEqual(a1[1], @"PackageSendTimeout");
        v24 = *(v7 + 24);
        if (v23)
        {
          if (v24)
          {
            v25 = a1[2];
            v26 = APTransportConnectionGetCMBaseObject(v24);
            v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v27)
            {
              v28 = v27(v26, @"PackageSendTimeout", v25);
              v30 = v28;
              if (v28 == -12784)
              {
                v29 = a1[2];
                *(v4 + 176) = CFGetInt64Ranged();
                v28 = -12784;
              }

              if (!v28)
              {
                return 0;
              }
            }

            else
            {
              v30 = -12782;
            }

            APSLogErrorAt();
            return v30;
          }

          stream_setPropertyInternal_cold_5();
        }

        else
        {
          if (v24)
          {
            v13 = APTransportConnectionSetProperty(v24, a1[1], a1[2]);
            if (v13)
            {
              stream_setPropertyInternal_cold_6();
            }

            return v13;
          }

          stream_setPropertyInternal_cold_7();
        }

        return 4294960587;
      }

      v18 = *(v8 + 24);
      if (!v18)
      {
        stream_setPropertyInternal_cold_4();
        return 4294960587;
      }

      v19 = a1[2];
      v20 = APTransportConnectionGetCMBaseObject(v18);
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v21)
      {
        v13 = v21(v20, @"QualityOfService", v19);
        if (v13)
        {
          goto LABEL_25;
        }

        return v13;
      }

      v13 = 4294954514;
    }

LABEL_25:
    APSLogErrorAt();
    return v13;
  }

  v9 = *(v8 + 24);
  if (!v9)
  {
    stream_setPropertyInternal_cold_2();
    return 4294960587;
  }

  v10 = a1[2];
  v11 = APTransportConnectionGetCMBaseObject(v9);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_25;
  }

  v13 = v12(v11, @"LocalNetworkPort", v10);
  if (v13)
  {
    goto LABEL_25;
  }

  return v13;
}

uint64_t APTransportStreamSendPlistMessageCreatingPlistReply(uint64_t a1, uint64_t a2, CFPropertyListRef propertyList, void *a4)
{
  v19 = 0;
  cf = 0;
  if (propertyList)
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!Data)
    {
      APTransportStreamSendPlistMessageCreatingPlistReply_cold_2();
      v13 = 0;
      v12 = 4294950685;
      goto LABEL_19;
    }

    v8 = Data;
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v12 = BlockBufferWithCFDataNoCopy;
      APTransportStreamSendPlistMessageCreatingPlistReply_cold_1();
      v13 = 0;
      goto LABEL_18;
    }

    v10 = cf;
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v11)
  {
    v12 = 4294954514;
    goto LABEL_15;
  }

  v12 = v11(a1, a2, v10, &v19);
  if (v12)
  {
LABEL_15:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v13 = 0;
  if (!a4 || !v19)
  {
LABEL_17:
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v14 = *MEMORY[0x277CBECE8];
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    v12 = CFDataWithBlockBufferNoCopy;
    APTransportStreamSendPlistMessageCreatingPlistReply_cold_3();
    goto LABEL_16;
  }

  v16 = CFPropertyListCreateWithData(v14, 0, 0, 0, 0);
  v13 = v16;
  if (v16)
  {
    v17 = CFGetTypeID(v16);
    if (v17 == CFDictionaryGetTypeID())
    {
      v12 = 0;
      *a4 = v13;
LABEL_16:
      v13 = 0;
      goto LABEL_17;
    }

    APTransportStreamSendPlistMessageCreatingPlistReply_cold_4();
  }

  else
  {
    APTransportStreamSendPlistMessageCreatingPlistReply_cold_5();
  }

  v12 = 4294950686;
  if (v8)
  {
LABEL_18:
    CFRelease(v8);
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v12;
}

uint64_t udpconnection_SetProperty(uint64_t a1, const void *a2, __CFString *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  v7 = CMBaseObjectGetDerivedStorage();
  if (*v7)
  {
    udpconnection_SetProperty_cold_1(buffer);
    goto LABEL_64;
  }

  v8 = v7;
  if (!CFEqual(a2, @"PackageType"))
  {
    if (CFEqual(a2, @"RemoteNetworkInfo"))
    {
      if (a3)
      {
        v10 = CFGetTypeID(a3);
        if (v10 == CFDictionaryGetTypeID())
        {
          v11 = CMBaseObjectGetDerivedStorage();
          Value = CFDictionaryGetValue(a3, @"IPAddress");
          if (Value)
          {
            CFStringGetCString(Value, buffer, 128, 0x8000100u);
            StringToSockAddr();
          }

          Int64Ranged = CFDictionaryGetInt64Ranged();
          if (Int64Ranged)
          {
            *(v11 + 280) = Int64Ranged;
          }

          else
          {
            v17 = *(v11 + 280);
          }

          SockAddrSetPort();
          v18 = CFDictionaryGetValue(a3, @"MACAddress");
          if (v18)
          {
            v19 = *(v11 + 272);
            *(v11 + 272) = v18;
            CFRetain(v18);
            if (v19)
            {
              CFRelease(v19);
            }
          }

          goto LABEL_34;
        }
      }

      udpconnection_SetProperty_cold_2(buffer);
    }

    else
    {
      if (CFEqual(a2, @"RemoteNetworkIPAddress"))
      {
        if (a3)
        {
          v15 = CFGetTypeID(a3);
          if (v15 == APSNetworkAddressGetTypeID())
          {
            APSNetworkAddressGetSocketAddr();
            *(v8 + 15) = *buffer;
            *(v8 + 252) = *&buffer[3];
            v16 = *(v8 + 70);
            SockAddrSetPort();
            v8[268] = APSNetworkAddressIsIPv6() == 0;
            goto LABEL_25;
          }
        }

        udpconnection_SetProperty_cold_3(buffer);
        goto LABEL_64;
      }

      if (!CFEqual(a2, @"RemoteNetworkMACAddress"))
      {
        if (CFEqual(a2, @"RemoteNetworkPort"))
        {
          *(v8 + 70) = CFGetInt64();
          SockAddrSetPort();
          goto LABEL_25;
        }

        if (CFEqual(a2, @"BoundInterfaceIndex"))
        {
          *(v8 + 71) = CFGetInt64();
        }

        else
        {
          if (CFEqual(a2, @"LocalInterfaceName"))
          {
            if (a3)
            {
              v26 = CFGetTypeID(a3);
              if (v26 == CFStringGetTypeID())
              {
                *(v8 + 27) = CFRetain(a3);
                goto LABEL_25;
              }
            }

            udpconnection_SetProperty_cold_8(buffer);
            goto LABEL_64;
          }

          if (!CFEqual(a2, @"ClientUPID"))
          {
            v14 = 4294954512;
            goto LABEL_50;
          }

          *(v8 + 36) = CFGetInt64();
        }

LABEL_34:
        v14 = 0;
        goto LABEL_35;
      }

      if (a3 && (v23 = CFGetTypeID(a3), v23 == CFDataGetTypeID()))
      {
        v24 = *(v8 + 34);
        if (v24)
        {
          CFRelease(v24);
        }

        Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], a3);
        *(v8 + 34) = Copy;
        if (CFDataGetLength(Copy) == 6)
        {
          goto LABEL_25;
        }

        udpconnection_SetProperty_cold_4(buffer);
      }

      else
      {
        udpconnection_SetProperty_cold_5(buffer);
      }
    }

LABEL_64:
    v14 = buffer[0];
    if (!buffer[0])
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

  if (@"RTCP" != a3 && (!a3 || !@"RTCP" || !CFEqual(a3, @"RTCP")))
  {
    if (@"RTP" == a3 || a3 && @"RTP" && CFEqual(a3, @"RTP") || @"Screen" == a3 || a3 && @"Screen" && CFEqual(a3, @"Screen"))
    {
      *(v8 + 19) = APTransportPackageRTPCreateWithBBuf;
      *(v8 + 20) = APTransportPackageRTPCreate;
      v9 = APTransportPackageRTPCreateWithMessageSize;
      goto LABEL_24;
    }

    if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v14 = 4294954516;
LABEL_50:
    APSLogErrorAt();
    goto LABEL_35;
  }

  *(v8 + 19) = APTransportPackageRTCPCreateWithBBuf;
  *(v8 + 20) = APTransportPackageRTCPCreate;
  v9 = APTransportPackageRTCPCreateWithMessageSize;
LABEL_24:
  *(v8 + 21) = v9;
LABEL_25:
  v14 = 0;
LABEL_35:
  v20 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t udpconnection_SetProperty_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);

  return MEMORY[0x2821127C0](v6, udpconnection_setPropertyInternal, a1, a2, a3);
}

uint64_t CMBaseObjectCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = *(VTable + 8) + 48;

  return v9(a1, a2, a3, a4);
}

uint64_t CMBaseObjectSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 8) + 56;

  return v7(a1, a2, a3);
}

uint64_t stream_createConnectionState(const void *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v20 = 0;
  if (!a5 || !a1 || !a3)
  {
    APSLogErrorAt();
    v17 = 4294950686;
    goto LABEL_14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E00401F955E56uLL);
  v20 = v11;
  if (!v11 || (v12 = v11, v13 = dispatch_semaphore_create(0), (*v12 = v13) == 0))
  {
    APSLogErrorAt();
    v17 = 4294950685;
    goto LABEL_14;
  }

  v12[4] = 0;
  *(v12 + 3) = CFRetain(a1);
  *(v12 + 4) = a2;
  v12[24] = a4;
  v14 = *(DerivedStorage + 88);
  *(v12 + 11) = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  *(v12 + 10) = a3;
  if (gLogCategory_APTransportStream <= 50)
  {
    if (gLogCategory_APTransportStream != -1)
    {
LABEL_12:
      v16 = *(v12 + 11);
      v12[24];
      v19 = *(v12 + 3);
      OUTLINED_FUNCTION_9();
      goto LABEL_13;
    }

    if (OUTLINED_FUNCTION_8())
    {
      v15 = *(v12 + 10);
      goto LABEL_12;
    }
  }

LABEL_13:
  v17 = 0;
  *a5 = v12;
  v20 = 0;
LABEL_14:
  stream_forgetConnectionState(&v20);
  return v17;
}

void stream_forgetConnectionState(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      stream_invalidateConnectionState(*a1);
      if (*v2)
      {
        dispatch_release(*v2);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t APTransportStreamCreate_cold_8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return OUTLINED_FUNCTION_9();
}

uint64_t stream_Resume(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __stream_Resume_block_invoke;
  v5[3] = &unk_278BC7E08;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t stream_Resume_0(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __stream_Resume_block_invoke_0;
  v5[3] = &unk_278BC9DE0;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t stream_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __stream_SetProperty_block_invoke;
  v9[3] = &unk_278BC7DE0;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t APTransportConnectionSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = APTransportConnectionGetCMBaseObject(a1);
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 8) + 56;

  return v7(CMBaseObject, a2, a3);
}

uint64_t udpconnection_AddEventCallback(const void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v9 = DerivedStorage;
        dispatch_retain(a4);
        if (a1)
        {
          CFRetain(a1);
        }

        v10 = *(v9 + 112);
        APSDispatchAsyncFHelper();
        return 0;
      }

      else
      {
        v11 = 4294894974;
        udpconnection_AddEventCallback_cold_1();
      }
    }

    else
    {
      v11 = 4294894974;
      udpconnection_AddEventCallback_cold_2();
    }
  }

  else
  {
    v11 = 4294894974;
    udpconnection_AddEventCallback_cold_3();
  }

  return v11;
}

uint64_t udpconnection_AddEventCallback_0(const void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v9 = DerivedStorage;
        dispatch_retain(a4);
        if (a1)
        {
          CFRetain(a1);
        }

        v10 = *(v9 + 24);
        APSDispatchAsyncFHelper();
        return 0;
      }

      else
      {
        v11 = 4294894974;
        udpconnection_AddEventCallback_cold_1_0();
      }
    }

    else
    {
      v11 = 4294894974;
      udpconnection_AddEventCallback_cold_2_0();
    }
  }

  else
  {
    v11 = 4294894974;
    udpconnection_AddEventCallback_cold_3_0();
  }

  return v11;
}

uint64_t udpconnection_Resume(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  valuePtr = 0;
  v4 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    udpconnection_Resume_cold_1();
  }

  if (!*(v4 + 152))
  {
    udpconnection_Resume_cold_18(&valuePtr);
    goto LABEL_24;
  }

  if (!*(v4 + 160))
  {
    udpconnection_Resume_cold_17(&valuePtr);
    goto LABEL_24;
  }

  if (*(v4 + 192) == 3)
  {
    v5 = *(v4 + 72);
    if (!v5)
    {
      udpconnection_Resume_cold_16(&valuePtr);
      goto LABEL_24;
    }

    __swp(v5 + 16, (v5 + 16));
    if (((v5 + 16) & 1) == 0)
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        udpconnection_Resume_cold_2(v5);
      }

      v6 = *(v5 + 40);
      v7 = CFRetain(v5);
      dispatch_async_f(v6, v7, udpconnectionInlineInactivityMonitor_fire);
    }

    valuePtr = 0;
  }

  if (!*(v4 + 176))
  {
    if (!*(v4 + 241) || !*(v4 + 280))
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        udpconnection_Resume_cold_15();
      }

      valuePtr = -72320;
      goto LABEL_24;
    }

    valuePtr = udpconnection_setupNWConnection(a1, 0);
    if (valuePtr)
    {
      udpconnection_Resume_cold_14();
      goto LABEL_24;
    }

LABEL_76:
    udpconnection_callEventCallback(a1, 0, 0);
    goto LABEL_77;
  }

  if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    udpconnection_Resume_cold_3();
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  v34 = 0;
  v35 = 0;
  v37 = 0;
  v36 = 0;
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x2000000000;
  v33 = 0;
  v10 = dispatch_semaphore_create(0);
  if (v10)
  {
    v11 = v10;
    v12 = udpconnection_createUDPParameters(a1, *(v9 + 216), &v38);
    if (v12)
    {
      v24 = v12;
      udpconnection_Resume_cold_4();
      v16 = 0;
    }

    else
    {
      v13 = nw_listener_create(v38);
      *(v9 + 304) = v13;
      if (v13)
      {
        v14 = v13;
        v15 = *(v9 + 184);
        v16 = FigDispatchQueueCreateWithPriority();
        if (v16)
        {
          nw_listener_set_queue(*(v9 + 304), v16);
          v17 = *(v9 + 304);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 0x40000000;
          handler[2] = __udpconnection_setupListenerNW_block_invoke;
          handler[3] = &__block_descriptor_tmp_125;
          handler[4] = v9;
          handler[5] = a1;
          nw_listener_set_new_connection_handler(v17, handler);
          dispatch_retain(v11);
          v18 = *(v9 + 304);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 0x40000000;
          v29[2] = __udpconnection_setupListenerNW_block_invoke_2;
          v29[3] = &unk_278BC7800;
          v29[4] = &v31;
          v29[5] = v11;
          v29[6] = v14;
          v29[7] = v16;
          MEMORY[0x23EEDE8D0](v18, v29);
          if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
          {
            udpconnection_Resume_cold_5((v9 + 304));
          }

          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 0x40000000;
          v28[2] = __udpconnection_setupListenerNW_block_invoke_3;
          v28[3] = &__block_descriptor_tmp_134;
          v28[4] = v9;
          udpconnection_runLockedInlineIfNecessary(a1, v28);
          v19 = dispatch_time(0, 10000000000);
          if (!dispatch_semaphore_wait(v11, v19))
          {
            if (*(v32[0] + 24))
            {
              APSLogErrorAt();
              if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
              {
                udpconnection_Resume_cold_7(v32);
              }

              v16 = 0;
            }

            else
            {
              v20 = CMBaseObjectGetDerivedStorage();
              v39 = MEMORY[0x277D85DD0];
              v40 = 0x40000000;
              v41 = __udpconnection_setLocalNetworkInfo_block_invoke;
              v42 = &__block_descriptor_tmp_140;
              v43 = v20;
              udpconnection_runLockedInlineIfNecessary(a1, &v39);
              v21 = nw_parameters_copy_local_endpoint(v38);
              v16 = v21;
              if (v21)
              {
                nw_endpoint_get_address(v21);
                SockAddrCopy();
                nw_listener_get_port(v14);
                SockAddrSetPort();
                if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }
              }

              if (!*(v9 + 400))
              {
                if (*(v9 + 288) || (v22 = udpconnection_setupNWConnection(a1, 0)) == 0)
                {
                  v23 = *(v9 + 216);
                  if (v23 && CFStringHasPrefix(v23, @"llw") && *(v9 + 192) == 3)
                  {
                    if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
                    {
                      udpconnection_Resume_cold_9();
                    }

                    v39 = MEMORY[0x277D85DD0];
                    v40 = 0x40000000;
                    v41 = __udpconnection_setupListenerNW_block_invoke_4;
                    v42 = &__block_descriptor_tmp_139;
                    v43 = v9;
                    udpconnection_runLockedInlineIfNecessary(a1, &v39);
                    v24 = 0;
                    *(v9 + 304) = 0;
                    goto LABEL_74;
                  }

                  goto LABEL_73;
                }

                udpconnection_Resume_cold_8(v22, a1, v16, &v39, v44);
                goto LABEL_67;
              }
            }

LABEL_73:
            v24 = 0;
            goto LABEL_74;
          }

          udpconnection_Resume_cold_6(a1, &v39, v44);
LABEL_67:
          v16 = v39;
          v24 = v44[0];
          goto LABEL_74;
        }

        udpconnection_Resume_cold_10(v29);
      }

      else
      {
        udpconnection_Resume_cold_11(v29);
        v16 = 0;
      }

      v24 = v29[0];
    }

LABEL_74:
    dispatch_release(v11);
    goto LABEL_75;
  }

  udpconnection_Resume_cold_12(v29);
  v16 = 0;
  v24 = v29[0];
LABEL_75:
  nw_release(v16);
  nw_release(v38);
  _Block_object_dispose(&v31, 8);
  valuePtr = v24;
  if (!v24)
  {
    goto LABEL_76;
  }

  udpconnection_Resume_cold_13();
LABEL_24:
  *(v4 + 144) = 4;
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  udpconnection_callEventCallback(a1, 4, v8);
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_77:
  v25 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t udpconnection_Resume_0(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 8), a1, udpconnection_resumeInternal);
  return 0;
}

void stream_postCachedConnectionEvent(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_5_2();
      CFRetain(v7);
      v8 = *(v2 + 184);
      OUTLINED_FUNCTION_1_2();
      v11 = 0x40000000;
      v12 = __stream_postCachedConnectionEvent_block_invoke_0;
      v13 = &__block_descriptor_tmp_157;
      v16 = v6;
      v14 = v5;
      v15 = a1;
      dispatch_async(v9, block);
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

uint64_t udpconnection_setPropertyInternal(uint64_t a1, const void *a2, __CFString *a3)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    udpconnection_setPropertyInternal_cold_1(&v15);
    return v15;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"PackageType"))
  {
    if (@"RTCP" == a3 || a3 && @"RTCP" && CFEqual(a3, @"RTCP"))
    {
      *(v6 + 8) = APTransportPackageRTCPCreateWithBBuf;
      *(v6 + 9) = APTransportPackageRTCPCreate;
      v7 = APTransportPackageRTCPCreateWithMessageSize;
LABEL_17:
      *(v6 + 10) = v7;
      return v15;
    }

    if (@"RTP" == a3 || a3 && @"RTP" && CFEqual(a3, @"RTP"))
    {
      *(v6 + 8) = APTransportPackageRTPCreateWithBBuf;
      *(v6 + 9) = APTransportPackageRTPCreate;
      v7 = APTransportPackageRTPCreateWithMessageSize;
      goto LABEL_17;
    }

    if (@"LowPowerKeepAlive" == a3 || a3 && @"LowPowerKeepAlive" && CFEqual(a3, @"LowPowerKeepAlive"))
    {
      *(v6 + 8) = APTPackageLowPowerKeepAliveCreateWithBBuf;
      *(v6 + 9) = APTPackageLowPowerKeepAliveCreate;
      *(v6 + 10) = 0;
      return v15;
    }

    if (gLogCategory_APTransportConnectionUDP <= 90 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return -12780;
  }

  if (CFEqual(a2, @"LowPowerOffloadBBuf"))
  {
    if (a3 && (v11 = CFGetTypeID(a3), v11 == CMBlockBufferGetTypeID()))
    {
      if (CMBlockBufferGetDataLength(a3) >= 0x21)
      {
        udpconnection_setPropertyInternal_cold_3();
      }

      else
      {
        v12 = *(v6 + 12);
        *(v6 + 12) = a3;
        CFRetain(a3);
        if (v12)
        {
          CFRelease(v12);
        }

        v15 = udpconnection_setupKeepAliveOffload();
        if (v15)
        {
          udpconnection_setPropertyInternal_cold_2();
        }
      }
    }

    else
    {
      udpconnection_setPropertyInternal_cold_4();
    }
  }

  else if (CFEqual(a2, @"LowPowerOffloadInterval"))
  {
    *(v6 + 26) = CFGetInt64();
    if (v15)
    {
      udpconnection_setPropertyInternal_cold_5();
    }
  }

  else if (CFEqual(a2, @"RemoteNetworkIPAddress"))
  {
    if (a3 && (v9 = CFGetTypeID(a3), v9 == APSNetworkAddressGetTypeID()))
    {
      APSNetworkAddressGetSocketAddr();
      *(v6 + 12) = *v14;
      *(v6 + 204) = *&v14[12];
      v10 = *(v6 + 55);
      SockAddrSetPort();
    }

    else
    {
      udpconnection_setPropertyInternal_cold_6();
    }
  }

  else if (CFEqual(a2, @"RemoteNetworkPort"))
  {
    *(v6 + 55) = CFGetInt64();
    if (v15)
    {
      udpconnection_setPropertyInternal_cold_7();
    }

    else
    {
      SockAddrSetPort();
      if (gLogCategory_APTransportConnectionUDP <= 50 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  else
  {
    if (!CFEqual(a2, @"BoundInterfaceIndex"))
    {
      return -12784;
    }

    if (*(v6 + 58) == -1)
    {
      *(v6 + 56) = CFGetInt64();
      if (v15)
      {
        udpconnection_setPropertyInternal_cold_9();
      }
    }

    else
    {
      udpconnection_setPropertyInternal_cold_8();
    }
  }

  return v15;
}

uint64_t stream_waitUntilConnectedInternal(uint64_t a1, CFTypeRef *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v5 = stream_waitUntilConnectionSetup(a1, 0);
  *(v18 + 6) = v5;
  if (v5)
  {
    APSLogErrorAt();
  }

  else if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v13[3] = Mutable;
    if (Mutable)
    {
      v7 = *(DerivedStorage + 64);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 0x40000000;
      v11[2] = __stream_waitUntilConnectedInternal_block_invoke;
      v11[3] = &unk_278BC9E28;
      v11[4] = &v17;
      v11[5] = v16;
      v11[6] = &v12;
      v11[7] = DerivedStorage;
      dispatch_sync(v7, v11);
      if (!*(v18 + 6))
      {
        *a2 = CFRetain(v13[3]);
      }
    }

    else
    {
      APSLogErrorAt();
      *(v18 + 6) = -16611;
    }
  }

  v8 = v13[3];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v18 + 6);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
  return v9;
}

uint64_t stream_waitUntilConnectionSetup(uint64_t a1, int a2)
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2000000000;
  v37[3] = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v5 = *(DerivedStorage + 64);
  OUTLINED_FUNCTION_2_19();
  v24 = 0x40000000;
  v25 = __stream_waitUntilConnectionSetup_block_invoke;
  v26 = &unk_278BC9FD0;
  v32 = a2;
  v27 = &v38;
  v28 = v37;
  v29 = v6;
  v30 = DerivedStorage;
  v31 = a1;
  dispatch_sync(v7, block);
  v8 = v34[3];
  if (v8)
  {
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v9 = *(DerivedStorage + 64);
    OUTLINED_FUNCTION_1_2();
    v15 = 0x40000000;
    v16 = __stream_waitUntilConnectionSetup_block_invoke_2;
    v17 = &unk_278BC9FF8;
    v22 = a2;
    v18 = &v38;
    v19 = v37;
    v20 = DerivedStorage;
    v21 = a1;
    dispatch_sync(v10, v14);
    v11 = v34[3];
    if (v11)
    {
      dispatch_release(v11);
    }
  }

  v12 = *(v39 + 6);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v38, 8);
  return v12;
}

void __stream_waitUntilConnectionSetup_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 72))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_1_11();
  }

  else
  {
    stream_getConnectionState(v2, *(a1 + 72), (*(*(a1 + 40) + 8) + 24));
    v3 = *(*(*(a1 + 40) + 8) + 24);
    if (*(v3 + 9))
    {
      if (!*(v3 + 8))
      {
        *(*(*(a1 + 48) + 8) + 24) = *v3;
        dispatch_retain(*(*(*(a1 + 48) + 8) + 24));
        if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8()))
        {
          v6 = *(a1 + 64);
          v7 = *(*(*(*(a1 + 40) + 8) + 24) + 24);
          OUTLINED_FUNCTION_9();
        }
      }
    }

    else
    {
      APSLogErrorAt();
      APSSignalErrorAt();
      OUTLINED_FUNCTION_8_1();
      *(v5 + 24) = v4;
    }
  }
}

uint64_t stream_getConnectionState(uint64_t result, int a2, void *a3)
{
  if (!a3)
  {
    return stream_getConnectionState_cold_2();
  }

  if (!result)
  {
    return stream_getConnectionState_cold_1();
  }

  v3 = *(result + 24);
  if (a2 != 1)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = *(result + 56);
    goto LABEL_8;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(result + 48);
LABEL_8:
  *a3 = v4;
  return result;
}

void udpconnection_resumeInternal(const void *a1)
{
  valuePtr[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionUDP <= 50 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
  {
    udpconnection_resumeInternal_cold_1();
  }

  if (*(DerivedStorage + 64))
  {
    if (*(DerivedStorage + 72))
    {
      if (!*(DerivedStorage + 88))
      {
        if (!*(DerivedStorage + 193) || !*(DerivedStorage + 220))
        {
          if (gLogCategory_APTransportConnectionUDP <= 90 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
          {
            v21 = *(DerivedStorage + 220);
            LogPrintF();
          }

          valuePtr[0] = -72320;
          goto LABEL_15;
        }

        v7 = *(DerivedStorage + 112);
        v8 = CMBaseObjectGetDerivedStorage();
        *&v26.sa_len = 0;
        *&v26.sa_data[6] = 0;
        v28 = 0;
        v27 = 0;
        v25 = 0;
        v9 = socket(*(v8 + 193), 2, 17);
        if (v9 < 0)
        {
          if (!*__error())
          {
            v10 = -6700;
LABEL_22:
            APSLogErrorAt();
LABEL_53:
            valuePtr[0] = v10;
            APSLogErrorAt();
            goto LABEL_15;
          }

          v10 = *__error();
          if (v10)
          {
            goto LABEL_22;
          }
        }

        SocketSetNonBlocking();
        if (*(v8 + 224))
        {
          v12 = *(v8 + 193);
          if (v12 == 2)
          {
            v13 = v9;
            v14 = 0;
            v15 = 25;
          }

          else
          {
            if (v12 != 30)
            {
              goto LABEL_35;
            }

            v13 = v9;
            v14 = 41;
            v15 = 125;
          }

          v10 = setsockopt(v13, v14, v15, (v8 + 224), 4u);
          if (v10)
          {
            udpconnection_resumeInternal_cold_10();
            goto LABEL_49;
          }
        }

LABEL_35:
        v16 = *(v8 + 108);
        if ((v16 & 0x1B) != 0)
        {
          SocketSetP2P();
          v16 = *(v8 + 108);
        }

        if ((v16 & 0x20) != 0)
        {
          if (gLogCategory_APTransportConnectionUDP <= 30 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
          {
            udpconnection_resumeInternal_cold_11();
          }

          *&handle.byte0 = 4;
          setsockopt(v9, 0xFFFF, 4225, &handle, 4u);
        }

        SocketSetQoS();
        v17 = *(v8 + 120);
        if (v17)
        {
          handle = CFUUIDGetUUIDBytes(v17);
          setsockopt(v9, 0xFFFF, 4360, &handle, 0x10u);
        }

        Size = SockAddrGetSize();
        if (connect(v9, (v8 + 192), Size))
        {
          if (!*__error())
          {
            v19 = -6700;
LABEL_48:
            udpconnection_resumeInternal_cold_12(a1, v19, &handle);
            v10 = *&handle.byte0;
LABEL_49:
            if ((v9 & 0x80000000) == 0 && close(v9) && *__error())
            {
              __error();
            }

            goto LABEL_53;
          }

          v19 = *__error();
          if (v19)
          {
            goto LABEL_48;
          }
        }

        v25 = 28;
        v20 = getsockname(v9, &v26, &v25);
        if (v20)
        {
          v10 = v20;
          udpconnection_resumeInternal_cold_13();
          goto LABEL_49;
        }

        if (gLogCategory_APTransportConnectionUDP <= 50 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
        {
          v22 = *(v8 + 224);
          LogPrintF();
        }

        *(v8 + 232) = v9;
        valuePtr[0] = udpconnection_setupKeepAliveOffload();
        if (valuePtr[0])
        {
          udpconnection_resumeInternal_cold_14();
          goto LABEL_15;
        }

LABEL_24:
        *(DerivedStorage + 56) = 5;
        APTTrafficMetricsConnectionFormed(*(DerivedStorage + 264));
        udpconnection_callEventCallback_0(a1, 5, 0);
        goto LABEL_25;
      }

      v4 = *(DerivedStorage + 112);
      valuePtr[1] = 0;
      *&handle.byte0 = -1;
      v25 = -1;
      v5 = *(CMBaseObjectGetDerivedStorage() + 128);
      v6 = ServerSocketPairOpen();
      if (v6)
      {
        v11 = v6;
        udpconnection_resumeInternal_cold_2();
      }

      else
      {
        v11 = 0;
      }

      free(0);
      free(0);
      valuePtr[0] = v11;
      if (!v11)
      {
        goto LABEL_24;
      }

      udpconnection_resumeInternal_cold_9();
    }

    else
    {
      udpconnection_resumeInternal_cold_15(valuePtr);
    }
  }

  else
  {
    udpconnection_resumeInternal_cold_16(valuePtr);
  }

LABEL_15:
  *(DerivedStorage + 56) = 4;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
  udpconnection_callEventCallback_0(a1, 4, v3);
  if (v3)
  {
    CFRelease(v3);
  }

LABEL_25:
  if (a1)
  {
    CFRelease(a1);
  }
}

void udpconnection_addEventCallbackInternal(uint64_t *a1)
{
  udpconnection_setEventCallback(a1);
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *a1;
  if (*a1)
  {

    CFRelease(v3);
  }
}

void udpconnection_addEventCallbackInternal_0(uint64_t *a1)
{
  udpconnection_setEventCallback_0(a1);
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *a1;
  if (*a1)
  {

    CFRelease(v3);
  }
}

uint64_t udpconnection_setEventCallback(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 120) = *(a1 + 1);
  v4 = *(DerivedStorage + 136);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 136) = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    *(DerivedStorage + 136) = v5;
    dispatch_retain(v5);
  }

  return 0;
}

uint64_t udpconnection_setEventCallback_0(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 32) = *(a1 + 1);
  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    *(DerivedStorage + 48) = v5;
    dispatch_retain(v5);
  }

  return 0;
}

uint64_t udpconnection_setupKeepAliveOffload()
{
  v11 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 96);
  if (!v1 || (*(DerivedStorage + 232) & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  if (*(DerivedStorage + 104) <= 0)
  {
    v5 = 4294894974;
    OUTLINED_FUNCTION_17();
    APSLogErrorAt();
    APSSignalErrorAt();
    goto LABEL_13;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  DataLength = CMBlockBufferGetDataLength(v1);
  v3 = DataLength;
  v4 = CMBlockBufferCopyDataBytes(*(DerivedStorage + 96), 0, DataLength, v9);
  if (v4)
  {
    v5 = v4;
    goto LABEL_12;
  }

  BYTE2(v10) = v3;
  LOWORD(v10) = *(DerivedStorage + 104);
  HIBYTE(v10) = 1;
  if (!setsockopt(*(DerivedStorage + 232), 17, 2, v9, 0x24u))
  {
    goto LABEL_8;
  }

  if (!*__error())
  {
    v5 = 4294960596;
    goto LABEL_12;
  }

  v5 = *__error();
  if (v5)
  {
LABEL_12:
    APSLogErrorAt();
    goto LABEL_13;
  }

LABEL_8:
  v6 = *(DerivedStorage + 96);
  if (!v6)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_13;
  }

  CFRelease(v6);
  v5 = 0;
  *(DerivedStorage + 96) = 0;
LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t APTTrafficMetricsConnectionFormed(uint64_t result)
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

uint64_t udpconnection_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    udpconnection_copyPropertyInternal_cold_1();
    return 4294954511;
  }

  if (!CFEqual(a2, @"LocalNetworkPort"))
  {
    return 4294954512;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    udpconnection_copyPropertyInternal_cold_2();
    v9 = 4294954511;
    goto LABEL_8;
  }

  if (!*(DerivedStorage + 88) || !*(DerivedStorage + 240))
  {
    v9 = 4294954509;
LABEL_8:
    APSLogErrorAt();
    return v9;
  }

  v8 = CFNumberCreate(a3, kCFNumberIntType, (DerivedStorage + 240));
  v9 = 0;
  *a4 = v8;
  return v9;
}

uint64_t __stream_waitUntilConnectionSetup_block_invoke_2_cold_2(uint64_t a1, uint64_t a2)
{
  *(*(*(*a2 + 8) + 24) + 8);
  v3 = *(a1 + 56);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  return OUTLINED_FUNCTION_9();
}

void stream_recordConnectionEvent(int a1, int a2, const __CFData *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  mach_absolute_time();
  CFAbsoluteTimeGetCurrent();
  if (*DerivedStorage == 1702260340)
  {
    if (a2 == 3 || a2 == 5)
    {
      goto LABEL_31;
    }

    if (gLogCategory_APTransportStream <= 60 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
    {
      stream_recordConnectionEvent_cold_1();
    }
  }

  else
  {
    if (*DerivedStorage != 1668575852)
    {
      return;
    }

    if (a2 > 2)
    {
      if (a2 == 5)
      {
        v7 = CMBaseObjectGetDerivedStorage();
        if (*(v7 + 144))
        {
          v8 = v7;
          ConnectionAddressFromEventData = stream_createConnectionAddressFromEventData(a1, a3);
          if (ConnectionAddressFromEventData)
          {
            v10 = ConnectionAddressFromEventData;
            v11 = *(v8 + 144);
            if (APSEventRecorderGetTimeFromDictionaryIfPresent())
            {
              v12 = *(v8 + 136);
              APSEventRecorderRecordEventWithFlagsAtTime();
            }

            else
            {
              stream_recordConnectionEvent_cold_2();
            }

            CFRelease(v10);
          }
        }

        goto LABEL_31;
      }

      if (a2 == 3)
      {
        v13 = CMBaseObjectGetDerivedStorage();
        if (*(v13 + 144))
        {
          v14 = v13;
          v15 = stream_createConnectionAddressFromEventData(a1, a3);
          if (v15)
          {
            v16 = v15;
            v17 = *(v14 + 144);
            APSEventRecorderSetTimeInDictionary();
            CFRelease(v16);
          }
        }

        goto LABEL_31;
      }
    }

    else if (a2 == 1 || a2 == 2)
    {
LABEL_31:
      stream_recordConnectionEvent_cold_3(DerivedStorage);
      return;
    }

    if (gLogCategory_APTransportStream <= 60 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
    {
      stream_recordConnectionEvent_cold_4();
    }
  }
}

uint64_t udpconnection_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  v10 = CMBaseObjectGetDerivedStorage();
  if (*v10)
  {
    udpconnection_CopyProperty_cold_1(cStr);
    goto LABEL_73;
  }

  v11 = v10;
  if (CFEqual(a2, @"LocalNetworkPort"))
  {
    v12 = CMBaseObjectGetDerivedStorage();
    if (*v12)
    {
      udpconnection_CopyProperty_cold_2(cStr);
    }

    else
    {
      if (v12[176])
      {
        v13 = CFNumberCreate(a3, kCFNumberIntType, v12 + 224);
        *a4 = v13;
        if (!v13)
        {
          v14 = 4294894973;
          udpconnection_CopyProperty_cold_3();
LABEL_7:
          APSLogErrorAt();
LABEL_56:
          APSLogErrorAt();
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      udpconnection_CopyProperty_cold_4(cStr);
    }

    v14 = *cStr;
    if (!*cStr)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (CFEqual(a2, @"LocalNetworkInfo"))
  {
    v15 = CMBaseObjectGetDerivedStorage();
    memset(parameters, 0, sizeof(parameters));
    v54 = 0;
    v52 = 0;
    *bytes = 0;
    cStr[0] = 0;
    if (*v15)
    {
      udpconnection_CopyProperty_cold_5(&v55);
    }

    else
    {
      v16 = v15;
      Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v18 = Mutable;
        if (v16[176])
        {
          v19 = *(v16 + 56);
          CFDictionarySetInt64();
        }

        v20 = *(v16 + 27);
        if (v20 && CFStringHasPrefix(v20, @"llw") || v16[400])
        {
          if (!CFStringGetCString(*(v16 + 27), buffer, 16, 0x8000100u))
          {
            udpconnection_CopyProperty_cold_10(v16 + 27, a1, &v55);
            goto LABEL_86;
          }

          v21 = CUGetInterfaceAddresses();
          if (v21)
          {
            udpconnection_CopyProperty_cold_6(v21, a1, buffer, &v55);
            goto LABEL_86;
          }

          v22 = *(v16 + 29);
          if (v22 && !nw_endpoint_get_address(v22))
          {
            udpconnection_CopyProperty_cold_7(&v55);
LABEL_86:
            v14 = v55;
            CFRelease(v18);
            goto LABEL_87;
          }

          SockAddrToString();
          v24 = *MEMORY[0x277CBECE8];
          v25 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
          if (!v25)
          {
            udpconnection_CopyProperty_cold_9(&v55);
            goto LABEL_86;
          }

          v26 = v25;
          CFDictionarySetValue(v18, @"IPAddress", v25);
          v27 = CFDataCreate(v24, bytes, 6);
          if (!v27)
          {
            udpconnection_CopyProperty_cold_8(v26, &v55);
            goto LABEL_86;
          }

          v28 = v27;
          CFDictionarySetValue(v18, @"MACAddress", v27);
          *a4 = v18;
          CFRelease(v26);
          CFRelease(v28);
        }

        else
        {
          *a4 = v18;
        }

LABEL_28:
        v14 = 0;
        goto LABEL_29;
      }

      udpconnection_CopyProperty_cold_11(&v55);
    }

    v14 = v55;
LABEL_87:
    if (!v14)
    {
      goto LABEL_29;
    }

    udpconnection_CopyProperty_cold_26();
    goto LABEL_56;
  }

  if (CFEqual(a2, @"RemoteNetworkMACAddress"))
  {
    Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], v11[34]);
    *a4 = Copy;
    if (!Copy)
    {
      v14 = 4294894973;
      udpconnection_CopyProperty_cold_12();
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, @"NWConnectionUUID"))
  {
    v32 = CMBaseObjectGetDerivedStorage();
    *cStr = 0;
    v57 = 0;
    parameters[0] = 0;
    v59 = 0;
    *buffer = 0;
    if (*v32)
    {
      udpconnection_CopyProperty_cold_13(bytes);
    }

    else
    {
      v33 = v32;
      if (*(v32 + 176))
      {
        if (*(v32 + 240))
        {
          if (*(v32 + 288))
          {
            v34 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
            if (*(v32 + 312))
            {
              v35 = 0;
              goto LABEL_63;
            }

            UDPParameters = udpconnection_createUDPParameters(a1, *(v32 + 216), parameters);
            if (UDPParameters)
            {
              v14 = UDPParameters;
              udpconnection_CopyProperty_cold_14();
              v35 = 0;
              goto LABEL_70;
            }

            v38 = *(v33 + 288);
            nw_parameters_set_delegated_unique_pid();
            v39 = *(v33 + 216);
            if (v39 && CFStringHasPrefix(v39, @"llw"))
            {
              v40 = *(v33 + 272);
              if (!v40)
              {
                udpconnection_CopyProperty_cold_15();
                v35 = 0;
                v14 = 4294894967;
                goto LABEL_70;
              }

              v61.location = 0;
              v61.length = 6;
              CFDataGetBytes(v40, v61, buffer);
              address_with_ethernet = nw_endpoint_create_address_with_ethernet();
            }

            else
            {
              address_with_ethernet = nw_endpoint_create_address((v33 + 240));
            }

            v35 = address_with_ethernet;
            if (address_with_ethernet)
            {
              nw_parameters_set_reuse_local_address(parameters[0], 1);
              nw_parameters_set_include_peer_to_peer(parameters[0], 1);
              nw_parameters_set_local_endpoint(parameters[0], *(v33 + 232));
              v42 = nw_endpoint_copy_address_string(*(v33 + 232));
              v43 = nw_endpoint_copy_address_string(v35);
              if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
              {
                nw_endpoint_get_port(*(v33 + 232));
                nw_endpoint_get_port(v35);
                v50 = *(v33 + 288);
                v34 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
                LogPrintF();
              }

              if (v42)
              {
                free(v42);
              }

              if (v43)
              {
                free(v43);
              }

              evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
              *(v33 + 312) = evaluator_for_endpoint;
              if (evaluator_for_endpoint)
              {
LABEL_63:
                if (nw_path_evaluator_get_client_id())
                {
                  v47 = CFDataCreate(a3, cStr, 16);
                  if (v47)
                  {
                    *a4 = v47;
                    v48 = v34[214];
                    if (v48 <= 50 && (v48 != -1 || _LogCategory_Initialize()))
                    {
                      v49 = *(v33 + 288);
                      *(v33 + 176);
                      LogPrintF();
                    }

                    v14 = 0;
                    goto LABEL_70;
                  }

                  udpconnection_CopyProperty_cold_17(bytes);
                }

                else
                {
                  udpconnection_CopyProperty_cold_16(bytes);
                }

                goto LABEL_94;
              }

              udpconnection_CopyProperty_cold_18(bytes);
            }

            else
            {
              udpconnection_CopyProperty_cold_19(bytes);
            }

LABEL_94:
            v14 = *bytes;
LABEL_70:
            nw_release(v35);
            nw_release(parameters[0]);
            if (!v14)
            {
              goto LABEL_29;
            }

            udpconnection_CopyProperty_cold_23();
            goto LABEL_56;
          }

          udpconnection_CopyProperty_cold_20(bytes);
        }

        else
        {
          udpconnection_CopyProperty_cold_21(bytes);
        }
      }

      else
      {
        udpconnection_CopyProperty_cold_22(bytes);
      }
    }

    v35 = 0;
    goto LABEL_94;
  }

  if (!CFEqual(a2, @"LocalInterfaceName"))
  {
    if (!CFEqual(a2, @"PrimaryPacketDropCount"))
    {
      v14 = 4294954512;
      goto LABEL_56;
    }

    v44 = v11[45];
    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (!Int64)
    {
      v14 = 4294894973;
      udpconnection_CopyProperty_cold_25();
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  if (*(v11 + 36) != 5)
  {
    udpconnection_CopyProperty_cold_24(cStr);
LABEL_73:
    v14 = *cStr;
    if (!*cStr)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

  v36 = v11[27];
  if (v36)
  {
    v36 = CFRetain(v36);
  }

  v14 = 0;
  *a4 = v36;
LABEL_29:
  v29 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  v30 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t udpconnection_CopyProperty_0()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);

  return FigDispatchSyncCopyPropertyImplementation();
}

void __stream_waitUntilConnectionSetup_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 72))
  {
    __stream_waitUntilConnectionSetup_block_invoke_2_cold_1();
  }

  else
  {
    stream_getConnectionState(v2, *(a1 + 64), (*(*(a1 + 40) + 8) + 24));
    v3 = *(*(*(a1 + 40) + 8) + 24);
    if (!*(v3 + 8))
    {
      *(v3 + 9) = 0;
      v4 = *(*(*(*(a1 + 40) + 8) + 24) + 12);
      if (v4 == -71882)
      {
        v5 = -71891;
      }

      else
      {
        v5 = *(*(*(*(a1 + 40) + 8) + 24) + 12);
      }

      if (v4 == -71880)
      {
        v6 = -71890;
      }

      else
      {
        v6 = v5;
      }

      *(*(*(a1 + 32) + 8) + 24) = v6;
      *(*(*(*(a1 + 40) + 8) + 24) + 12) = 0;
    }

    if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
    {
      __stream_waitUntilConnectionSetup_block_invoke_2_cold_2(a1, a1 + 40);
    }
  }
}

void __stream_eventReceived_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  if (v3)
  {
    v3(*(a1 + 40), 1651470958, 0, *(v2 + 112));
  }

  v4 = *(a1 + 40);

  CFRelease(v4);
}

void __stream_eventReceived_block_invoke_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  if (v3)
  {
    v3(*(a1 + 40), 1651470958, 0, *(v2 + 192));
  }

  v4 = *(a1 + 40);

  CFRelease(v4);
}

uint64_t stream_acquireMessageBBufInternal(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dataPointerOut = 0;
  v26 = 0;
  if (*(DerivedStorage + 72))
  {
    stream_acquireMessageBBufInternal_cold_1(&v27);
    v6 = 0;
    v17 = 0;
    DataPointer = v27;
    goto LABEL_12;
  }

  v4 = DerivedStorage;
  v5 = 56;
  if (!*(DerivedStorage + 24))
  {
    v5 = 48;
  }

  v6 = *(DerivedStorage + v5);
  v7 = *(v6 + 24);
  v8 = a1[1];
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 40);
  if (!v10)
  {
    DataPointer = 4294954514;
LABEL_11:
    APSLogErrorAt();
    v17 = 0;
    goto LABEL_12;
  }

  v11 = *(VTable + 16) + 40;
  v12 = v10(v7, v8, &v26);
  if (v12)
  {
    DataPointer = v12;
    goto LABEL_11;
  }

  v13 = v26;
  v14 = CMBaseObjectGetVTable();
  v15 = *(*(v14 + 16) + 8);
  if (v15)
  {
    v16 = *(v14 + 16) + 8;
    v17 = v15(v13);
  }

  else
  {
    v17 = 0;
  }

  CFSetAddValue(*(v4 + 104), v17);
  DataPointer = CMBlockBufferGetDataPointer(v17, 0, 0, 0, &dataPointerOut);
  if (!DataPointer)
  {
    CFDictionarySetValue(*(v4 + 112), dataPointerOut, v26);
    *a1[2] = v17;
    v26 = 0;
    goto LABEL_19;
  }

  stream_acquireMessageBBufInternal_cold_2();
LABEL_12:
  v19 = v26;
  if (v26)
  {
    v20 = *(v6 + 24);
    v21 = CMBaseObjectGetVTable();
    v22 = *(*(v21 + 16) + 48);
    if (v22)
    {
      v23 = *(v21 + 16) + 48;
      v22(v20, v19);
    }
  }

LABEL_19:
  if (v17)
  {
    CFRelease(v17);
  }

  return DataPointer;
}

uint64_t udpconnection_AcquirePackageWithMessageSize(const void *a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  v8 = CMBaseObjectGetDerivedStorage();
  if (!*v8)
  {
    v9 = *(v8 + 168);
    if (v9)
    {
      v10 = CFGetAllocator(a1);
      v11 = v9(v10, a2, a3);
      if (!v11)
      {
        if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
        {
          v15 = *a3;
          LogPrintF();
        }

        goto LABEL_8;
      }

      v12 = v11;
      udpconnection_AcquirePackageWithMessageSize_cold_2();
    }

    else
    {
      udpconnection_AcquirePackageWithMessageSize_cold_3();
      v12 = 4294894969;
    }

LABEL_14:
    APSLogErrorAt();
    goto LABEL_9;
  }

  if (!udpconnection_AcquirePackageWithMessageSize_cold_1())
  {
    v12 = v16;
    goto LABEL_14;
  }

LABEL_8:
  v12 = 0;
LABEL_9:
  v13 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t udpconnection_acquirePackageWithMessageSizeInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    udpconnection_acquirePackageWithMessageSizeInternal_cold_1();
    return 4294954511;
  }

  else
  {
    v4 = *(DerivedStorage + 80);
    if (v4)
    {
      v5 = CFGetAllocator(*a1);
      v6 = v4(v5, *(a1 + 8), *(a1 + 16));
      if (v6)
      {
        v7 = v6;
        udpconnection_acquirePackageWithMessageSizeInternal_cold_2();
      }

      else
      {
        if (gLogCategory_APTransportConnectionUDP <= 30 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
        {
          udpconnection_acquirePackageWithMessageSizeInternal_cold_3(a1, (a1 + 16), (a1 + 8));
        }

        return 0;
      }
    }

    else
    {
      udpconnection_acquirePackageWithMessageSizeInternal_cold_4();
      return 4294894969;
    }
  }

  return v7;
}

uint64_t rtppackage_createWithMessageSize(uint64_t a1, size_t a2, CFTypeRef *a3)
{
  cf = 0;
  APTransportPackageGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v9 = v5;
    rtppackage_createWithMessageSize_cold_1();
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = 1450;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[1] = 0;
    v8 = APTransportParcelMake(2uLL, v6, DerivedStorage);
    if (!v8)
    {
      if (gLogCategory_APTransportPackageRTP <= 30 && (gLogCategory_APTransportPackageRTP != -1 || _LogCategory_Initialize()))
      {
        rtppackage_createWithMessageSize_cold_3(&cf);
      }

      v9 = 0;
      *a3 = cf;
      return v9;
    }

    v9 = v8;
    rtppackage_createWithMessageSize_cold_2();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t APTransportPackageRTPCreateWithMessageSize(uint64_t a1, size_t a2, CFTypeRef *a3)
{
  v3 = rtppackage_createWithMessageSize(a1, a2, a3);
  if (v3)
  {
    APTransportPackageRTPCreateWithMessageSize_cold_1();
  }

  return v3;
}

uint64_t stream_acquireMessageBBufInternal_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t udpconnection_resumeInternal_cold_4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10_7(a1);
  v2 = *(v1 + 166);
  OUTLINED_FUNCTION_9_6(v1);
  return OUTLINED_FUNCTION_11_5();
}

uint64_t udpconnection_resumeInternal_cold_3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10_7(a1);
  v2 = *(v1 + 138);
  OUTLINED_FUNCTION_9_6(v1);
  return OUTLINED_FUNCTION_11_5();
}

uint64_t stream_SetMessageCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __stream_SetMessageCallbacks_block_invoke;
  block[3] = &__block_descriptor_tmp_40;
  block[4] = DerivedStorage;
  block[5] = a4;
  block[6] = a2;
  block[7] = a3;
  block[8] = a1;
  dispatch_sync(v9, block);
  return 0;
}

uint64_t stream_SetMessageCallbacks_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 184);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __stream_SetMessageCallbacks_block_invoke_0;
  v10[3] = &__block_descriptor_tmp_159;
  v10[4] = DerivedStorage;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a4;
  dispatch_sync(v8, v10);
  return 0;
}

uint64_t udpconnection_setPropertyInternal_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  *a1 = -12785;

  return APSSignalErrorAt();
}

uint64_t stream_Invalidate()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 16);

  return APSDispatchSyncTask();
}

uint64_t stream_Invalidate_0()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 64);

  return APSDispatchSyncTask();
}

uint64_t stream_invalidateInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    v1 = DerivedStorage;
    *(DerivedStorage + 24) = 1;
    v2 = *(DerivedStorage + 40);
    VTable = CMBaseObjectGetVTable();
    v4 = *(*(VTable + 16) + 24);
    if (v4)
    {
      v5 = *(VTable + 16) + 24;
      v4(v2, 0);
    }

    v6 = v1[4];
    if (v6)
    {
      v7 = *v1;
      APTransportSessionUnregisterStream(v6);
    }

    v8 = v1[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __stream_invalidateInternal_block_invoke;
    block[3] = &__block_descriptor_tmp_5;
    block[4] = v1;
    dispatch_sync(v8, block);
    v9 = v1[5];
    if (v9)
    {
      CFRelease(v9);
    }

    if (gLogCategory_APTransportStreamUnbuffered <= 50 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
    {
      v11 = v1[1];
      v12 = v1[5];
      LogPrintF();
    }

    v1[5] = 0;
  }

  return 0;
}

uint64_t stream_invalidateInternal_0(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 72))
  {
    v3 = DerivedStorage;
    *(DerivedStorage + 72) = 1;
    v4 = *(DerivedStorage + 24);
    OUTLINED_FUNCTION_11_7();
    if (v5)
    {
      v8 = 48;
    }

    else
    {
      v8 = v7;
    }

    v9 = *(v6 + v8);
    if (!v5)
    {
      v7 = 48;
    }

    v10 = *(v6 + v7);
    if (v9 == v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v12 = *(v9 + 24);
    v13 = *(v6 + 96);
    VTable = CMBaseObjectGetVTable();
    v15 = *(*(VTable + 16) + 24);
    if (v15)
    {
      v16 = *(VTable + 16) + 24;
      v15(v12, v13);
    }

    if (v11)
    {
      v17 = *(v11 + 24);
      v18 = *(v3 + 96);
      v19 = CMBaseObjectGetVTable();
      v20 = *(*(v19 + 16) + 24);
      if (v20)
      {
        v21 = *(v19 + 16) + 24;
        v20(v17, v18);
      }
    }

    v22 = *v3;
    APTransportSessionUnregisterStream(*(v3 + 80));
    v23 = *(v3 + 32);
    if (v23)
    {
      dispatch_semaphore_signal(v23);
    }

    CFDictionaryApplyFunction(*(v3 + 112), stream_relinquishPackage, a1);
    stream_invalidateConnectionState(v9);
    stream_invalidateConnectionState(v11);
    v24 = *(v3 + 184);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __stream_invalidateInternal_block_invoke_0;
    block[3] = &__block_descriptor_tmp_135;
    block[4] = v3;
    dispatch_sync(v24, block);
    v25 = *(v3 + 168);
    if (v25)
    {
      *(v3 + 152) = -16617;
      dispatch_semaphore_signal(v25);
    }

    CFSetRemoveAllValues(*(v3 + 104));
    CFDictionaryRemoveAllValues(*(v3 + 112));
    v26 = *(v3 + 120);
    if (v26)
    {
      CFRelease(v26);
      *(v3 + 120) = 0;
    }

    v27 = *(v3 + 128);
    if (v27)
    {
      CFRelease(v27);
      *(v3 + 128) = 0;
    }

    v28 = *(v3 + 40);
    if (v28)
    {
      CFRelease(v28);
      *(v3 + 40) = 0;
    }

    v29 = *(v3 + 104);
    if (v29)
    {
      CFRelease(v29);
      *(v3 + 104) = 0;
    }

    v30 = *(v3 + 112);
    if (v30)
    {
      CFRelease(v30);
      *(v3 + 112) = 0;
    }

    v31 = *(v3 + 8);
    if (v31)
    {
      CFRelease(v31);
      *(v3 + 8) = 0;
    }

    v32 = *(v3 + 16);
    if (v32)
    {
      CFRelease(v32);
      *(v3 + 16) = 0;
    }

    if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8_0()))
    {
      v34 = *(v3 + 88);
      OUTLINED_FUNCTION_7_0();
    }
  }

  return 0;
}

uint64_t APTransportSessionUnregisterStream(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v3 = DerivedStorage;
  CFRetain(a1);
  v4 = *(v3 + 1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t stream_relinquishPackage(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    stream_relinquishPackage_cold_1();
  }

  v4 = 56;
  if (!*(DerivedStorage + 24))
  {
    v4 = 48;
  }

  v5 = *(*(DerivedStorage + v4) + 24);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 48);
  if (v9)
  {

    return v9(v5, a2);
  }

  return result;
}

uint64_t udpconnection_RelinquishPackage(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t udpconnection_RelinquishPackage_0(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void stream_invalidateConnectionState(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = 0;
    *(a1 + 12) = -16617;
    dispatch_semaphore_signal(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    if (*(a1 + 24))
    {
      if (gLogCategory_APTransportStream <= 50)
      {
        if (gLogCategory_APTransportStream == -1)
        {
          if (!OUTLINED_FUNCTION_8())
          {
            goto LABEL_10;
          }

          v6 = *(a1 + 24);
        }

        *(a1 + 96);
        v7 = *(a1 + 80);
        v8 = *(a1 + 88);
        OUTLINED_FUNCTION_9();
      }
    }
  }

LABEL_10:
  *(a1 + 24) = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 88) = 0;
  }
}

void udpconnection_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    v23 = *(DerivedStorage + 16);
    LogPrintF();
  }

  udpconnection_invalidateInternal(a1, 0);
  v3 = *(DerivedStorage + 312);
  if (v3)
  {
    nw_release(v3);
  }

  nw_release(*(DerivedStorage + 296));
  nw_release(*(DerivedStorage + 320));
  v4 = *(DerivedStorage + 408);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 408) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 16) = 0;
  }

  v7 = *(DerivedStorage + 200);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 200) = 0;
  }

  v8 = *(DerivedStorage + 392);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 392) = 0;
  }

  v9 = *(DerivedStorage + 112);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 112) = 0;
  }

  v10 = *(DerivedStorage + 136);
  if (v10)
  {
    dispatch_release(v10);
    *(DerivedStorage + 136) = 0;
  }

  v11 = *(DerivedStorage + 8);
  FigSimpleMutexDestroy();
  *(DerivedStorage + 8) = 0;
  v12 = *(DerivedStorage + 40);
  if (v12)
  {
    dispatch_release(v12);
    *(DerivedStorage + 40) = 0;
  }

  v13 = *(DerivedStorage + 48);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 48) = 0;
  }

  v14 = *(DerivedStorage + 384);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 384) = 0;
  }

  v15 = *(DerivedStorage + 208);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 208) = 0;
  }

  nw_release(*(DerivedStorage + 32));
  v16 = *(DerivedStorage + 56);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 56) = 0;
  }

  v17 = *(DerivedStorage + 64);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 64) = 0;
  }

  v18 = *(DerivedStorage + 72);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 72) = 0;
  }

  v19 = *(DerivedStorage + 80);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 80) = 0;
  }

  v20 = *(DerivedStorage + 88);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 88) = 0;
  }

  v21 = *(DerivedStorage + 96);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 96) = 0;
  }

  v22 = *(DerivedStorage + 104);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 104) = 0;
  }
}

void udpconnection_Finalize_0(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionUDP <= 50 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
  {
    v11 = DerivedStorage[2];
    LogPrintF();
  }

  udpconnection_invalidateInternal_0(a1, 0);
  v3 = DerivedStorage[33];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[33] = 0;
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
    CFRelease(v5);
    DerivedStorage[2] = 0;
  }

  v6 = DerivedStorage[15];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[15] = 0;
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[3] = 0;
  }

  v8 = DerivedStorage[6];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[6] = 0;
  }

  v9 = DerivedStorage[1];
  if (v9)
  {
    dispatch_release(v9);
    DerivedStorage[1] = 0;
  }

  v10 = DerivedStorage[16];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[16] = 0;
  }
}

void udpconnection_invalidateInternal(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    OUTLINED_FUNCTION_17_1();
    if (v8 ^ v9 | v7 && (v6 != -1 || OUTLINED_FUNCTION_8()))
    {
      v18 = *(v5 + 2);
      OUTLINED_FUNCTION_3_1();
      LogPrintF();
    }

    *v5 = 1;
    v10 = CMBaseObjectGetDerivedStorage();
    APTTrafficMetricsConnectionClosed(*(v10 + 408));
    if (*(v10 + 64))
    {
      atomic_fetch_and_explicit(APSWrapperGetValue(), 0xFFFFFFFE, memory_order_relaxed);
    }

    *(v10 + 144) = 6;
    if (*(v10 + 176) && *(v10 + 304))
    {
      OUTLINED_FUNCTION_17_1();
      if (v8 ^ v9 | v7 && (v11 != -1 || OUTLINED_FUNCTION_8()))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 0x40000000;
      v20[2] = __udpconnection_cleanUp_block_invoke;
      v20[3] = &__block_descriptor_tmp_3;
      v20[4] = v10;
      udpconnection_runLockedInlineIfNecessary(a1, v20);
      *(v10 + 304) = 0;
    }

    if (*(v10 + 296))
    {
      OUTLINED_FUNCTION_17_1();
      if (v8 ^ v9 | v7 && (v12 != -1 || OUTLINED_FUNCTION_8()))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 0x40000000;
      v19[2] = __udpconnection_cleanUp_block_invoke_2;
      v19[3] = &__block_descriptor_tmp_47;
      v19[4] = v10;
      udpconnection_runLockedInlineIfNecessary(a1, v19);
    }

    v13 = *(v10 + 72);
    if (v13)
    {
      __swp(v13 + 17, (v13 + 17));
      if (((v13 + 17) & 1) == 0)
      {
        OUTLINED_FUNCTION_17_1();
        if (v8 ^ v9 | v7)
        {
          if (v14 != -1 || OUTLINED_FUNCTION_8())
          {
            v17 = *(v13 + 24);
            OUTLINED_FUNCTION_3_1();
            LogPrintF();
          }
        }
      }
    }

    v15 = *(v10 + 272);
    if (v15)
    {
      CFRelease(v15);
      *(v10 + 272) = 0;
    }

    v16 = *(v10 + 216);
    if (v16)
    {
      CFRelease(v16);
      *(v10 + 216) = 0;
    }

    nw_release(*(v10 + 232));
    if (a2)
    {
      dispatch_sync_f(*(v5 + 14), a1, udpconnection_clearCallbackState);
    }

    else
    {
      udpconnection_clearCallbackState();
    }
  }
}

void udpconnection_invalidateInternal_0(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    APTTrafficMetricsConnectionClosed(*(DerivedStorage + 264));
    if (gLogCategory_APTransportConnectionUDP <= 30 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
    {
      v12 = *(v5 + 16);
      OUTLINED_FUNCTION_7_0();
    }

    *v5 = 1;
    v6 = CMBaseObjectGetDerivedStorage();
    v7 = v6;
    if (*(v6 + 88))
    {
      v8 = *(v6 + 248);
      if (v8)
      {
        dispatch_source_cancel(*(v6 + 248));
        dispatch_release(v8);
        *(v7 + 248) = 0;
      }

      *(v7 + 232) = -1;
      v9 = *(v7 + 256);
      if (v9)
      {
        dispatch_source_cancel(*(v7 + 256));
        dispatch_release(v9);
        *(v7 + 256) = 0;
      }

      *(v7 + 236) = -1;
    }

    else
    {
      v10 = *(v6 + 232);
      if ((v10 & 0x80000000) == 0)
      {
        if (close(v10) && *__error())
        {
          __error();
        }

        *(v7 + 232) = -1;
      }
    }

    *(v7 + 56) = 6;
    if (a2)
    {
      v11 = *(v5 + 24);

      dispatch_sync_f(v11, a1, udpconnection_clearCallbackState_0);
    }

    else
    {

      udpconnection_clearCallbackState_0();
    }
  }
}

uint64_t APTTrafficMetricsConnectionClosed(uint64_t result)
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

void _APTTrafficMetricsFinalize(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 48));
  if (*(a1 + 64))
  {
    APSRealTimeSignalInvalidate();
  }

  v2 = *(a1 + 40);
  if (v2 && *(a1 + 56))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___APTTrafficMetricsFinalize_block_invoke;
    block[3] = &__block_descriptor_tmp_17;
    block[4] = a1;
    dispatch_sync(v2, block);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
  }
}