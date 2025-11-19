uint64_t ptpClock_enablePortsBasedOnTopology(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 24))
  {
    v5 = result;
    result = ptpClock_getLocalPeerClockPortsForClient(a1, a2);
    if (result)
    {
      result = CFDictionaryContainsKey(*(v5 + 24), @"HTAddress");
      if (!result)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        Value = CFDictionaryGetValue(*(DerivedStorage + 32), a2);
        if (Value)
        {
          v8 = Value;
          v9 = *(v5 + 24);
          CFStringGetTypeID();
          TypedValue = CFDictionaryGetTypedValue();
          v11 = CMBaseObjectGetDerivedStorage();
          if (!TypedValue)
          {
            goto LABEL_15;
          }

          v12 = v11;
          v13 = CMBaseObjectGetDerivedStorage();
          v14 = CFDictionaryGetValue(*(v13 + 32), a2);
          if (!v14)
          {
            APSLogErrorAt(0);
            goto LABEL_15;
          }

          v15 = CFDictionaryGetValue(*(v12 + 40), v14);
          Count = CFDictionaryGetCount(v15);
          v17 = FigCFDictionaryCopyArrayOfValues();
          if (Count < 1)
          {
LABEL_11:
            if (!v17)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v18 = 0;
            while (1)
            {
              CFArrayGetValueAtIndex(v17, v18);
              CFStringGetTypeID();
              CFDictionaryGetTypedValue();
              if (FigCFEqual())
              {
                break;
              }

              if (Count == ++v18)
              {
                goto LABEL_11;
              }
            }

            if (!v17)
            {
              goto LABEL_15;
            }
          }

          CFRelease(v17);
LABEL_15:
          v19 = *(v5 + 24);
          CFDictionaryGetInt64();
          CFDictionaryGetValue(*(v5 + 40), v8);
          return CFDictionaryApplyBlock();
        }

        return APSLogErrorAt(0);
      }
    }
  }

  return result;
}

uint64_t ptpClock_firePeersChangedNotification()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

void __ptpClock_enablePortsBasedOnTopology_block_invoke(void *a1, const void *a2, const __CFDictionary *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v6 || (v9 = DerivedStorage, !*(DerivedStorage + 72)))
  {

    goto LABEL_28;
  }

  LocalPeerClockPortsForClient = ptpClock_getLocalPeerClockPortsForClient(v5, v6);
  if (!LocalPeerClockPortsForClient || !CFDictionaryContainsKey(LocalPeerClockPortsForClient, a2))
  {
    return;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  if (v7)
  {
    v12 = FigCFEqual() != 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 == (CFDictionaryGetInt64() == 0))
  {
    if (v12)
    {
      if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
      {
        v20 = v5;
        v21 = a2;
        LogPrintF();
      }

      [*(v9 + 72) enablePort:{Int64Ranged, v20, v21}];
    }

    else if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      [*(v9 + 72) disablePort:{Int64Ranged, v5, a2}];
    }

    else
    {
      [*(v9 + 72) disablePort:{Int64Ranged, v20, v21}];
    }

    v13 = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(*(v13 + 32), v6);
    if (Value)
    {
      v15 = Value;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
      if (MutableCopy)
      {
        v17 = MutableCopy;
        v18 = MEMORY[0x277CBED28];
        if (!v12)
        {
          v18 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(MutableCopy, @"IsEnabled", *v18);
        v19 = CFDictionaryGetValue(*(v9 + 40), v15);
        CFDictionarySetValue(v19, a2, v17);
        CFRelease(v17);
        return;
      }
    }

LABEL_28:
    APSLogErrorAt(0);
    return;
  }

  if (gLogCategory_APSNetworkClockPTP <= 30 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

double __ptpClock_getPerPortRateForPeer_block_invoke()
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"ptpNonTightSyncRateMs", 0, 2000);
  CMTimeMake(&v2, IntWithOverrideAndDefault, 1000);
  result = *&v2.value;
  *ptpClock_getPerPortRateForPeer_sNonTightSyncRate = v2;
  return result;
}

uint64_t ptpClock_RemovePeer(uint64_t a1, const void *a2, const void *a3, __CFDictionary **a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 9))
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  if (!a2)
  {
    APSLogErrorAt(0);
    v13 = 4294895325;
    goto LABEL_11;
  }

  v12 = ptpClock_removePeerInternal(a1, a2, a3);
  v13 = v12;
  if (v12 != -72291)
  {
    if (!v12)
    {
      if (!a4 || (LocalPeerInfoForClient = ptpClock_getLocalPeerInfoForClient(a1, a2), v12 = APSNetworkClockCopyPeerAsSerializablePeerDictionary(LocalPeerInfoForClient, a4), !v12))
      {
        if (a5)
        {
          *a5 = 1;
        }

        ptpClock_enablePortsBasedOnTopology(a1, a2);
        ptpClock_firePeersChangedNotification();
        goto LABEL_10;
      }

      v13 = v12;
    }

    APSLogErrorAt(v12);
  }

LABEL_11:
  v15 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t ptpClock_AddOrUpdatePeer(uint64_t a1, const void *a2, const __CFDictionary *a3, __CFDictionary **a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v17 = 0;
  v11 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 9))
  {
    if (!a2)
    {
      APSLogErrorAt(0);
      v14 = 4294895325;
      goto LABEL_13;
    }

    if (*(DerivedStorage + 24))
    {
      isClockPortMatrixComplete = ptpClock_isClockPortMatrixComplete(a1, a2, &v18 + 1);
      if (isClockPortMatrixComplete)
      {
        v14 = isClockPortMatrixComplete;
      }

      else
      {
        isClockPortMatrixComplete = ptpClock_addOrUpdatePeerInternal(a1, a2, a3, a4, &v17);
        if (isClockPortMatrixComplete)
        {
          v14 = isClockPortMatrixComplete;
        }

        else
        {
          if (HIBYTE(v18) || (isClockPortMatrixComplete = ptpClock_isClockPortMatrixComplete(a1, a2, &v18), !isClockPortMatrixComplete))
          {
            v13 = v17;
            if (a5)
            {
              *a5 = v17;
            }

            if (v13 | v18)
            {
              ptpClock_enablePortsBasedOnTopology(a1, a2);
              ptpClock_firePeersChangedNotification();
            }

            goto LABEL_12;
          }

          v14 = isClockPortMatrixComplete;
        }
      }
    }

    else
    {
      v14 = 4294895323;
      isClockPortMatrixComplete = 0;
    }

    APSLogErrorAt(isClockPortMatrixComplete);
    goto LABEL_13;
  }

LABEL_12:
  v14 = 0;
LABEL_13:
  v15 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t ptpClock_isClockPortMatrixComplete(uint64_t a1, const void *a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294895325;
  }

  if (!*(DerivedStorage + 24))
  {
    v21 = 4294895323;
    v23 = 0;
LABEL_36:
    APSLogErrorAt(v23);
    return v21;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v8 + 32), a2);
  if (!Value)
  {
    v21 = 4294895323;
    APSLogErrorAt(0);
LABEL_35:
    v23 = v21;
    goto LABEL_36;
  }

  CFDictionaryGetValue(*(v7 + 40), Value);
  v10 = FigCFDictionaryCopyArrayOfValues();
  if (!v10)
  {
    APSLogErrorAt(0);
LABEL_34:
    v21 = 4294895326;
    goto LABEL_35;
  }

  v11 = v10;
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v10);
  if (!MutableCopy)
  {
    APSLogErrorAt(0);
    CFRelease(v11);
    goto LABEL_34;
  }

  v13 = MutableCopy;
  LocalPeerInfoForClient = ptpClock_getLocalPeerInfoForClient(a1, a2);
  if (LocalPeerInfoForClient)
  {
    CFArrayAppendValue(v13, LocalPeerInfoForClient);
  }

  CFRelease(v11);
  for (i = 0; i < CFArrayGetCount(v13); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
    if (CFDictionaryGetInt64())
    {
      CMBaseObjectGetDerivedStorage();
      theArray = 0;
      ptpClock_copyPeerListForPeerInternal(a1, a2, ValueAtIndex, &theArray);
      v17 = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        CFRelease(v17);
      }

      else
      {
        Count = 0;
      }

      CFDictionaryGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (!TypedValue || CFDictionaryGetCount(TypedValue) < Count)
      {
        if (gLogCategory_APSNetworkClockPTP <= 30 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v20 = 0;
        goto LABEL_27;
      }
    }
  }

  if (gLogCategory_APSNetworkClockPTP <= 30 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v20 = 1;
LABEL_27:
  *a3 = v20;
  CFRelease(v13);
  return 0;
}

uint64_t ptpClock_ConvertNetworkTimeToUpTicks(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  CMTimeMake(&v10, 1000000000 * *(a2 + 4) + ((1000000000 * *(a2 + 3)) >> 32), 1000000000);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x277CC0898];
  v4 = *(MEMORY[0x277CC0898] + 16);
  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    [v5 cm8021ASClock];
    CM8021ASClockGetHostTimeForClockTime();
  }

  else
  {
    APSLogErrorAt(0);
  }

  v10.value = v9;
  v10.timescale = DWORD2(v9);
  APSLogErrorAt(0);
  if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    v8 = *a2;
    LogPrintF();
  }

  v6 = *MEMORY[0x277D85DE8];
  return 4294895322;
}

uint64_t ptpClock_ConvertUpTicksToNetworkTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  memset(&v14, 0, sizeof(v14));
  CMClockMakeHostTimeFromSystemUnits(&v14, a2);
  v7 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  v16 = v14;
  ptpClock_getClockTimeForHostTime(&time, a1, &v16.value);
  v16.value = time.value;
  v16.timescale = time.timescale;
  if ((time.flags & 0x1D) == 1)
  {
    time.value = v16.value;
    time.timescale = v16.timescale;
    Seconds = CMTimeGetSeconds(&time);
    v9 = 0;
    *a3 = v15;
    *(a3 + 8) = vcvtd_n_u64_f64(Seconds - floor(Seconds), 0x40uLL);
    *(a3 + 16) = vcvtmd_s64_f64(Seconds);
    *(a3 + 20) = 0;
  }

  else
  {
    APSLogErrorAt(0);
    v9 = 4294895322;
  }

  v10 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t ptpClock_getClockTimeForHostTime(uint64_t a1, uint64_t a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = MEMORY[0x277CC0898];
  *(a1 + 16) = *(MEMORY[0x277CC0898] + 16);
  *a1 = *v6;
  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    [v7 cm8021ASClock];
    v9 = *a3;
    v10 = *(a3 + 2);
    return CM8021ASClockGetClockTimeForHostTime();
  }

  else
  {

    return APSLogErrorAt(0);
  }
}

uint64_t ptpClock_GetSynchronizedNetworkTime(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v14, 0, sizeof(v14));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v14, HostTimeClock);
  v13 = 0;
  v6 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  v15 = v14;
  ptpClock_getClockTimeForHostTime(&time, a1, &v15.value);
  v15.value = time.value;
  v15.timescale = time.timescale;
  if ((time.flags & 0x1D) == 1)
  {
    time.value = v15.value;
    time.timescale = v15.timescale;
    Seconds = CMTimeGetSeconds(&time);
    v8 = 0;
    *a2 = v13;
    *(a2 + 8) = vcvtd_n_u64_f64(Seconds - floor(Seconds), 0x40uLL);
    *(a2 + 16) = vcvtmd_s64_f64(Seconds);
    *(a2 + 20) = 0;
  }

  else
  {
    APSLogErrorAt(0);
    v8 = 4294895322;
  }

  v9 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t ptpClock_SetProperty(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  if (a2)
  {
    if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = 4294954509;
  }

  else
  {
    APSLogErrorAt(0);
    v5 = 4294895325;
  }

  v6 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t ptpClock_CopyProperty(int a1, CFTypeRef cf1, uint64_t a3, CFTypeRef *a4)
{
  if (!CFEqual(cf1, @"NetworkClock_Type"))
  {
    if (CFEqual(cf1, @"PortLocal"))
    {
      v6 = *MEMORY[0x277CBEFF0];
      goto LABEL_5;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = *(DerivedStorage + 16);
    FigSimpleMutexLock();
    if (CFEqual(cf1, @"SourceClock"))
    {
      v11 = *(DerivedStorage + 80);
      if (!v11)
      {
        v7 = 4294895323;
LABEL_27:
        APSLogErrorAt(v11);
        v18 = *(DerivedStorage + 16);
        FigSimpleMutexUnlock();
        return v7;
      }

      goto LABEL_14;
    }

    if (CFEqual(cf1, @"IsStarted"))
    {
      v12 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 88))
      {
        v12 = MEMORY[0x277CBED10];
      }

LABEL_13:
      v11 = *v12;
LABEL_14:
      *a4 = CFRetain(v11);
      goto LABEL_15;
    }

    if (CFEqual(cf1, @"IsLocked"))
    {
      v14 = *(DerivedStorage + 72);
      if (v14)
      {
        [v14 cm8021ASClock];
        IsLocked = CM8021ASClockIsLocked();
        v12 = MEMORY[0x277CBED10];
        if (IsLocked)
        {
          v12 = MEMORY[0x277CBED28];
        }

        goto LABEL_13;
      }

      goto LABEL_25;
    }

    if (CFEqual(cf1, @"DiagnosticString"))
    {
      v16 = *(DerivedStorage + 72);
      if (!v16)
      {
LABEL_25:
        v7 = 4294895323;
LABEL_26:
        v11 = v7;
        goto LABEL_27;
      }

      [v16 cm8021ASClock];
      v17 = *MEMORY[0x277CC0140];
      v11 = CM8021ASClockCopyProperty();
      if (v11)
      {
        v7 = v11;
        goto LABEL_27;
      }
    }

    else
    {
      if (!CFEqual(cf1, @"Metrics"))
      {
        if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v7 = 4294954509;
        goto LABEL_26;
      }

      v11 = ptpClock_copyClockMetrics();
      if (v11)
      {
        v7 = v11;
        goto LABEL_27;
      }
    }

LABEL_15:
    v13 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    return 0;
  }

  v6 = @"NetworkClockType_PTP";
LABEL_5:
  v7 = 0;
  *a4 = CFRetain(v6);
  return v7;
}

uint64_t ptpClock_copyClockMetrics()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 72);
  if (!v0)
  {
    v4 = -6709;
    goto LABEL_7;
  }

  [v0 cm8021ASClock];
  v1 = *MEMORY[0x277CC0148];
  v2 = *MEMORY[0x277CBECE8];
  v3 = CM8021ASClockCopyProperty();
  *(v8 + 6) = v3;
  if (!v3)
  {
    v4 = -71974;
    APSLogErrorAt(0);
LABEL_7:
    *(v8 + 6) = v4;
    goto LABEL_4;
  }

  APSLogErrorAt(v3);
LABEL_4:
  v5 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v5;
}

void sub_2222D68FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ptpClock_copyClockMetrics_block_invoke(uint64_t a1, const void *a2)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (*(a1 + 40))
    {
      v5 = *MEMORY[0x277CC00C8];
      FigCFDictionarySetValueFromKeyInDict();
      v6 = *MEMORY[0x277CC00D0];
      FigCFDictionarySetValueFromKeyInDict();
      v7 = *MEMORY[0x277CC00D8];
      FigCFDictionarySetValueFromKeyInDict();
      v8 = *MEMORY[0x277CC00E0];
      FigCFDictionarySetValueFromKeyInDict();
      v9 = *MEMORY[0x277CC00F0];
      FigCFDictionarySetValueFromKeyInDict();
      v10 = *MEMORY[0x277CC00F8];
      FigCFDictionarySetValueFromKeyInDict();
      v11 = *MEMORY[0x277CC0100];
      FigCFDictionarySetValueFromKeyInDict();
      v12 = *MEMORY[0x277CC0108];
      FigCFDictionarySetValueFromKeyInDict();
      v13 = *MEMORY[0x277CC0110];
      FigCFDictionarySetValueFromKeyInDict();
      v14 = *MEMORY[0x277CC0118];
      FigCFDictionarySetValueFromKeyInDict();
      v15 = *MEMORY[0x277CC0120];
      FigCFDictionarySetValueFromKeyInDict();
      v16 = *MEMORY[0x277CC0128];
      FigCFDictionarySetValueFromKeyInDict();
      v17 = *MEMORY[0x277CC0130];
      FigCFDictionarySetValueFromKeyInDict();
      v18 = *MEMORY[0x277CC0138];
      FigCFDictionarySetValueFromKeyInDict();
      CFDictionarySetValue(*(a1 + 40), a2, Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      APSLogErrorAt(0);
      *(*(*(a1 + 32) + 8) + 24) = -71970;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

__CFString *ptpClock_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APNetworkPTPClock %p>", a1);
  return Mutable;
}

void ptpClock_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 16);
  FigSimpleMutexDestroy();
  if (*(DerivedStorage + 72) || *(DerivedStorage + 80))
  {
    if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(DerivedStorage + 72) = 0;
    v2 = *(DerivedStorage + 80);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 80) = 0;
    }
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 56) = 0;
  }

  v6 = *(DerivedStorage + 48);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 48) = 0;
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 40) = 0;
  }
}

uint64_t APSRTPSeqNumDictionaryGetTypeID()
{
  if (APSRTPSeqNumDictionaryGetTypeID_sOnce != -1)
  {
    dispatch_once_f(&APSRTPSeqNumDictionaryGetTypeID_sOnce, &APSRTPSeqNumDictionaryGetTypeID_sTypeID, rtpSeqNumDict_registerClass);
  }

  return APSRTPSeqNumDictionaryGetTypeID_sTypeID;
}

uint64_t rtpSeqNumDict_registerClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

__CFString *rtpSeqNumDict_CopyFormattingDesc(uint64_t *a1, const __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (Mutable)
  {
    v5 = CFGetAllocator(a1);
    CFStringAppendFormat(Mutable, a2, @"<APSRTPSeqNumDictionary %p [%p]>{\n", a1, v5);
    v7[0] = Mutable;
    v7[1] = a2;
    v7[2] = a1[4];
    v8[0] = a1;
    v8[1] = 0;
    v8[2] = rtpSeqNumDict_copyFormattingDescApplier;
    v8[3] = v7;
    if (!APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a1[2], 0, 0xFFFFFFFF, rtpSeqNumDict_rangeSetApplier, v8))
    {
      CFStringAppend(Mutable, @"}");
    }
  }

  return Mutable;
}

uint64_t rtpSeqNumDict_rangeSetApplier(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  if ((a1 & 0xFFFF0000) == 0)
  {
    return 0;
  }

  v5 = a1;
  v6 = 0;
  v7 = ((v2 << 31 >> 31) & ((a1 >> 16) - 1)) + a1;
  while (1)
  {
    Value = CFDictionaryGetValue(*(*a2 + 24), v7);
    result = (*(a2 + 16))(v7, Value, *(a2 + 24));
    if (result)
    {
      break;
    }

    LOWORD(v7) = v7 + v3;
    if (++v6 >= HIWORD(v5))
    {
      return 0;
    }
  }

  return result;
}

uint64_t rtpSeqNumDict_copyFormattingDescApplier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = v5(a2);
    CFStringAppendFormat(*a3, *(a3 + 8), @"%u = %@;\n", a1, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    CFStringAppendFormat(*a3, *(a3 + 8), @"%u = %p;\n", a1, a2);
  }

  return 0;
}

void rtpSeqNumDict_Finalize(uint64_t a1)
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
}

uint64_t APSRTPSeqNumDictionaryCreateMutable(const __CFAllocator *a1, const CFDictionaryValueCallBacks *a2, void *a3)
{
  if (!a3)
  {
    return 4294960591;
  }

  if (APSRTPSeqNumDictionaryGetTypeID_sOnce != -1)
  {
    dispatch_once_f(&APSRTPSeqNumDictionaryGetTypeID_sOnce, &APSRTPSeqNumDictionaryGetTypeID_sTypeID, rtpSeqNumDict_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v7 = Instance;
  Instance[2] = 0;
  Instance[3] = 0;
  v8 = Instance + 2;
  Instance[4] = 0;
  if (a2)
  {
    copyDescription = a2->copyDescription;
  }

  else
  {
    copyDescription = 0;
  }

  Instance[4] = copyDescription;
  memset(&v13, 0, 40);
  v13.hash = rtpSeqNumDictKey_Hash;
  v10 = CFDictionaryCreateMutable(a1, 0, &v13, a2);
  v7[3] = v10;
  if (v10)
  {
    Mutable = APSRTPSeqNumRangeSetCreateMutable(a1, v8);
    if (!Mutable)
    {
      *a3 = v7;
      return Mutable;
    }
  }

  else
  {
    Mutable = 4294960568;
  }

  CFRelease(v7);
  return Mutable;
}

uint64_t APSRTPSeqNumDictionaryCreateMutableCopy(const __CFAllocator *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = 4294960591;
  if (a2 && a3)
  {
    if (APSRTPSeqNumDictionaryGetTypeID_sOnce != -1)
    {
      dispatch_once_f(&APSRTPSeqNumDictionaryGetTypeID_sOnce, &APSRTPSeqNumDictionaryGetTypeID_sTypeID, rtpSeqNumDict_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      return 4294960568;
    }

    v8 = Instance;
    Instance[2] = 0;
    Instance[3] = 0;
    v9 = Instance + 2;
    Instance[4] = 0;
    v10 = a2[3];
    Instance[4] = a2[4];
    MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v10);
    v9[1] = MutableCopy;
    if (MutableCopy)
    {
      v3 = APSRTPSeqNumRangeSetCreateMutableCopy(a1, a2[2], v9);
      if (!v3)
      {
        *a3 = v8;
        return v3;
      }
    }

    else
    {
      v3 = 4294960568;
    }

    CFRelease(v8);
  }

  return v3;
}

uint64_t APSRTPSeqNumDictionarySetValue(uint64_t a1, void *key, void *a3)
{
  value = 0;
  result = 4294960591;
  if (a1 && a3)
  {
    v6 = key;
    ValueIfPresent = CFDictionaryGetValueIfPresent(*(a1 + 24), key, &value);
    if (ValueIfPresent)
    {
      v8 = value == a3;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      return 0;
    }

    if (ValueIfPresent || (result = APSRTPSeqNumRangeSetAddSeqNumRange(*(a1 + 16), v6 | 0x10000), !result))
    {
      CFDictionarySetValue(*(a1 + 24), v6, a3);
      return 0;
    }
  }

  return result;
}

CFDictionaryRef *APSRTPSeqNumDictionaryGetValue(CFDictionaryRef *result, void *key)
{
  if (result)
  {
    return CFDictionaryGetValue(result[3], key);
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryRemoveAllValues(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4294960591;
  }

  CFArrayRemoveAllValues(*(v2 + 16));
  *(v2 + 24) = 0;
  CFDictionaryRemoveAllValues(*(a1 + 24));
  return 0;
}

uint64_t APSRTPSeqNumDictionaryRemoveValue(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  v3 = a2;
  result = APSRTPSeqNumRangeSetRemoveSeqNumRange(*(a1 + 16), a2 | 0x10000);
  if (!result)
  {
    CFDictionaryRemoveValue(*(a1 + 24), v3);
    return 0;
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRange(uint64_t a1, unsigned int a2)
{
  if (!a1 || a2 > 0x8000FFFF)
  {
    return 4294960591;
  }

  if (CFDictionaryGetCount(*(a1 + 24)) < 1 || (a2 & 0xFFFF0000) == 0)
  {
    return 0;
  }

  Span = APSRTPSeqNumRangeSetGetSpan(*(a1 + 16));
  v6 = APSRTPSeqNumRangeIntersection(Span, a2);
  if (Span == v6 || (v6 | Span) < 0x10000 || Span >= 0x80010000 && v6 >= 0x80010000)
  {
    CFDictionaryRemoveAllValues(*(a1 + 24));
  }

  else
  {
    result = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a1 + 16), 0, a2, rtpSeqNumDict_removeValueRangeApplier, a1);
    if (result)
    {
      return result;
    }
  }

  v7 = *(a1 + 16);

  return APSRTPSeqNumRangeSetRemoveSeqNumRange(v7, a2);
}

uint64_t rtpSeqNumDict_removeValueRangeApplier(unsigned int a1, uint64_t a2)
{
  if (a1 >= 0x10000)
  {
    v3 = HIWORD(a1);
    v4 = a1;
    do
    {
      CFDictionaryRemoveValue(*(a2 + 24), v4++);
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRangeSet(uint64_t a1, unint64_t a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    if (CFDictionaryGetCount(*(a1 + 24)) >= 1 && *(a2 + 24) && (Span = APSRTPSeqNumRangeSetGetSpan(*(a1 + 16)), v6 = APSRTPSeqNumRangeSetGetSpan(a2), APSRTPSeqNumRangeIntersection(Span, v6) >= 0x10000))
    {
      result = APSRTPSeqNumRangeSetApplyFunctionWithFilterRangeSet(*(a1 + 16), 0, a2, rtpSeqNumDict_removeValueRangeApplier, a1);
      if (!result)
      {
        v7 = *(a1 + 16);

        return APSRTPSeqNumRangeSetRemoveSeqNumRangeSet(v7, a2);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetCount(uint64_t result)
{
  if (result)
  {
    LOWORD(result) = CFDictionaryGetCount(*(result + 24));
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetSeqNumRangeCount(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      LOWORD(result) = CFArrayGetCount(*(v1 + 16));
    }

    else
    {
      LOWORD(result) = 0;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetSeqNumRangeSet(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetSpan(uint64_t result)
{
  if (result)
  {
    return APSRTPSeqNumRangeSetGetSpan(*(result + 16));
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetFirstSeqNum(uint64_t a1, _WORD *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    v6 = 0;
    if (v5)
    {
      result = APSRTPSeqNumRangeSetGetFirstSeqNumRange(v5, &v6);
      if (!result)
      {
        *a2 = v6;
      }
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetLastSeqNum(uint64_t a1, _WORD *a2)
{
  if (a1 && a2)
  {
    return APSRTPSeqNumRangeSetGetLastSeqNum(*(a1 + 16), a2);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPSeqNumDictionaryGetSeqNumAfterSeqNum(uint64_t a1, int a2, _WORD *a3)
{
  result = 4294960591;
  if (a1 && a3)
  {
    v7 = a2 + 1;
    if (CFDictionaryContainsKey(*(a1 + 24), (a2 + 1)))
    {
      result = 0;
      *a3 = v7;
    }

    else
    {
      v8 = *(a1 + 16);

      return APSRTPSeqNumRangeSetGetSeqNumAfterSeqNum(v8, a2, a3);
    }
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetSeqNumBeforeSeqNum(uint64_t a1, int a2, _WORD *a3)
{
  result = 4294960591;
  if (a1 && a3)
  {
    v7 = a2 - 1;
    if (CFDictionaryContainsKey(*(a1 + 24), (a2 - 1)))
    {
      result = 0;
      *a3 = v7;
    }

    else
    {
      v8 = *(a1 + 16);

      return APSRTPSeqNumRangeSetGetSeqNumBeforeSeqNum(v8, a2, a3);
    }
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryApplyFunction(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v4 = 4294960591;
  v6[2] = a3;
  v6[3] = a4;
  if (a1 && a3)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a1 + 16), a2, 0xFFFFFFFF, rtpSeqNumDict_rangeSetApplier, v6);
  }

  return v4;
}

uint64_t APSRTPSeqNumDictionaryApplyFunctionWithFilterRange(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a1;
  v7[1] = a2;
  v5 = 4294960591;
  v7[2] = a4;
  v7[3] = a5;
  if (a1 && a4)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a1 + 16), a2, a3, rtpSeqNumDict_rangeSetApplier, v7);
  }

  return v5;
}

uint64_t APSRTPSeqNumDictionaryApplyBlock(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = 4294960591;
  if (a1 && a3)
  {
    v5[0] = a1;
    v5[1] = a2;
    v5[2] = rtpSeqNumDict_blockApplier;
    v5[3] = a3;
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a1 + 16), a2, 0xFFFFFFFF, rtpSeqNumDict_rangeSetApplier, v5);
  }

  return v3;
}

uint64_t APSRTPSeqNumDictionaryApplyBlockWithFilterRange(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = 4294960591;
  if (a1 && a4)
  {
    v6[0] = a1;
    v6[1] = a2;
    v6[2] = rtpSeqNumDict_blockApplier;
    v6[3] = a4;
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a1 + 16), a2, a3, rtpSeqNumDict_rangeSetApplier, v6);
  }

  return v4;
}

uint64_t APSRTPSeqNumDictionaryFilterWithRangeSet(uint64_t *a1, unint64_t a2)
{
  cf = 0;
  v12 = 0;
  v2 = 4294960591;
  if (a1 && a2)
  {
    Span = APSRTPSeqNumRangeSetGetSpan(a1[2]);
    if (Span < 0x10000)
    {
      v2 = 0;
    }

    else
    {
      v6 = Span;
      v7 = APSRTPSeqNumRangeSetGetSpan(a2);
      if (v7 >= 0x10000 && APSRTPSeqNumRangeIntersection(v6, v7) >> 16)
      {
        v8 = CFGetAllocator(a1);
        v9 = APSRTPSeqNumRangeSetCreateMutable(v8, &cf);
        if (!v9)
        {
          LOWORD(v12) = v6;
          v9 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a2, 0, v6, rtpSeqNumDict_invertFilterApplier, &cf);
          if (!v9)
          {
            v9 = rtpSeqNumDict_invertFilterApplier((HIWORD(v6) + v6), &cf);
            if (!v9)
            {
              v9 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRangeSet(a1[2], 0, cf, rtpSeqNumDict_removeValueRangeApplier, a1);
              if (!v9)
              {
                v9 = APSRTPSeqNumRangeSetFilterWithRangeSet(a1[2], a2);
              }
            }
          }
        }
      }

      else
      {
        v9 = APSRTPSeqNumDictionaryRemoveAllValues(a1);
      }

      v2 = v9;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v2;
}

uint64_t rtpSeqNumDict_invertFilterApplier(int a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 == a1 || ((v5 = *a2, v6 = (a1 - v4), v7 = v4 & 0xFFFFFFFF0000FFFFLL | ((a1 - v4) << 16), v6 <= 0x8000) ? (v8 = v7) : (v8 = 0xFFFFFFFFLL), result = APSRTPSeqNumRangeSetAddSeqNumRange(v5, v8), !result))
  {
    result = 0;
    *(a2 + 8) = HIWORD(a1) + a1;
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryHintLimitSeqNum(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4294960591;
  }

  if (*(v2 + 28) && ((*(v2 + 26) - a2) & 0x8000) == 0)
  {
    return 0;
  }

  result = 0;
  *(v2 + 26) = a2;
  *(v2 + 28) = 1;
  return result;
}

uint64_t APSRTPSeqNumDictionaryGetLimitSeqNum(uint64_t a1, _WORD *a2)
{
  result = 4294960591;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        if (*(v4 + 28))
        {
          result = 0;
          *a2 = *(v4 + 26);
        }

        else
        {
          return 4294960578;
        }
      }
    }
  }

  return result;
}

const __CFData *CreateBinaryTXTRecordFromTXTRecordBytes(void *txtRecord, uint64_t txtLen, int *a3)
{
  v4 = txtLen;
  v5 = txtRecord;
  v57 = *MEMORY[0x277D85DE8];
  Count = TXTRecordGetCount(txtLen, txtRecord);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *key = 0u;
  v39 = 0u;
  value = 0;
  valueLen = 0;
  bytes = 1;
  v32 = 0;
  Mutable = CFDataCreateMutable(0, 0);
  v8 = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt(0);
    v27 = -6728;
    goto LABEL_45;
  }

  CFDataAppendBytes(Mutable, &bytes, 1);
  v9 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v9)
  {
    APSLogErrorAt(0);
    v27 = -6728;
    goto LABEL_62;
  }

  v10 = v9;
  v30 = a3;
  _LogNewBytes(v8, 0, &v32);
  if (!Count)
  {
LABEL_44:
    CFRelease(v10);
    v27 = 0;
    a3 = v30;
    goto LABEL_45;
  }

  v11 = 0;
  v31 = Count;
  while (1)
  {
    if (TXTRecordGetItemAtIndex(v4, v5, v11, 0x100u, key, &valueLen, &value))
    {
      APSLogErrorAt(0);
      goto LABEL_59;
    }

    v12 = value;
    if (*key == 6580583)
    {
      break;
    }

    appended = _AppendKeyInfoByName(v8, v10, key, value, valueLen);
    if (appended)
    {
      v27 = appended;
      APSLogErrorAt(appended);
      goto LABEL_60;
    }

LABEL_8:
    _LogNewBytes(v8, key, &v32);
    if (Count <= ++v11)
    {
      goto LABEL_44;
    }
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v37 = 0;
  v36 = 0;
  if (!value)
  {
    APSLogErrorAt(0);
    v27 = -6705;
    v23 = 4294960591;
    goto LABEL_68;
  }

  if (valueLen)
  {
    v14 = v8;
    v15 = v5;
    v16 = v4;
    v17 = v10;
    v18 = 0;
    v19 = value + valueLen;
    do
    {
      v20 = memchr(v12, 43, (v19 - v12));
      if (v20 && v18 == 2)
      {
        if (gLogCategory_APSBinaryTXTRecord <= 60 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v20 = 0;
      }

      (&v54)[v18] = v12;
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      if (v20)
      {
        v22 = v20 + 1;
      }

      else
      {
        v22 = v19;
      }

      *(&v36 + v18) = v21 - v12;
      if (v18 > 1)
      {
        break;
      }

      ++v18;
      v12 = v22;
    }

    while (v22 < v19);
    v10 = v17;
    v4 = v16;
    v5 = v15;
    v8 = v14;
    Count = v31;
    if (v54)
    {
      if (v36)
      {
        v23 = _AppendKeyInfoByName(v8, v10, "gid", v54, v36);
        if (v23)
        {
          v27 = v23;
        }

        else
        {
          v24 = v55;
          if (!v55)
          {
            goto LABEL_8;
          }

          v25 = HIBYTE(v36);
          if (HIBYTE(v36) > 3u)
          {
            v26 = HIBYTE(v36);
            goto LABEL_38;
          }

          v23 = _AppendKeyInfoByName(v8, v10, "bin_grp_cmid", v55, HIBYTE(v36));
          if (v23)
          {
            v27 = v23;
          }

          else
          {
            v24 = v56;
            if (!v56)
            {
              goto LABEL_8;
            }

            v26 = v37;
            if (!v37)
            {
              goto LABEL_41;
            }

LABEL_38:
            v23 = _AppendKeyInfoByName(v8, v10, "bin_grp_rcid", v24, v26);
            if (!v23)
            {
              if (v25 < 4 || !v56)
              {
                goto LABEL_8;
              }

LABEL_41:
              if (gLogCategory_APSBinaryTXTRecord <= 90)
              {
                a3 = v30;
                if (gLogCategory_APSBinaryTXTRecord == -1 && !_LogCategory_Initialize())
                {
                  goto LABEL_52;
                }

LABEL_50:
                LogPrintF();
                goto LABEL_52;
              }

LABEL_59:
              v27 = -6705;
LABEL_60:
              a3 = v30;
              goto LABEL_61;
            }

            v27 = v23;
          }
        }

LABEL_68:
        APSLogErrorAt(v23);
        a3 = v30;
        goto LABEL_53;
      }
    }
  }

  if (gLogCategory_APSBinaryTXTRecord > 90)
  {
    goto LABEL_59;
  }

  a3 = v30;
  if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
  {
    goto LABEL_50;
  }

LABEL_52:
  v27 = -6705;
LABEL_53:
  if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_61:
  CFRelease(v10);
LABEL_62:
  CFRelease(v8);
  v8 = 0;
LABEL_45:
  if (a3)
  {
    *a3 = v27;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

CFIndex _LogNewBytes(const __CFData *a1, uint64_t a2, CFIndex *a3)
{
  result = CFDataGetLength(a1);
  if (result != *a3)
  {
    v7 = result;
    if (gLogCategory_APSBinaryTXTRecord <= 30)
    {
      if (gLogCategory_APSBinaryTXTRecord == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_10;
        }

        v9 = *a3;
      }

      v8 = &CFDataGetBytePtr(a1)[*a3];
      result = LogPrintF();
    }

LABEL_10:
    *a3 = v7;
    return result;
  }

  if (a2)
  {
    if (gLogCategory_APSBinaryTXTRecord <= 30)
    {
      if (gLogCategory_APSBinaryTXTRecord != -1)
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

uint64_t _AppendKeyInfoByName(__CFData *a1, int a2, char *__s2, char *a4, CFIndex a5)
{
  v52 = 0;
  KeyInfo = _GetKeyInfo(0, __s2, &v52);
  if (v52)
  {
    if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_94;
    }

    return v52;
  }

  v9 = KeyInfo;
  if (!KeyInfo)
  {
    v52 = -6762;
    if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_94;
    }

    return v52;
  }

  buffer = 0;
  if (!a4)
  {
    APSLogErrorAt(0);
    LODWORD(v23) = -6705;
    goto LABEL_92;
  }

  v10 = *(KeyInfo + 16);
  if (v10 == 1)
  {
    return 0;
  }

  v55 = 0;
  v54 = 0;
  if (v10 <= 7)
  {
    if ((v10 - 3) < 5)
    {
      __endptr = 0;
      v11 = strndup(a4, a5);
      if (!v11)
      {
        APSLogErrorAt(0);
        v48 = 4294960568;
LABEL_115:
        v54 = 1;
        v55 = v48;
LABEL_116:
        APSLogErrorAt(v48);
        Mutable = 0;
        goto LABEL_48;
      }

      v12 = v11;
      if (a5)
      {
        v50 = a5;
        Mutable = 0;
        v14 = v11;
        while (2)
        {
          v15 = strtoul(v14, &__endptr, 0);
          if (v15 == -1 || __endptr == v14 || (v16 = v15, HIDWORD(v15)))
          {
LABEL_112:
            APSLogErrorAt(0);
            free(v12);
            a5 = v50;
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            v48 = 4294960591;
            goto LABEL_115;
          }

          v17 = *__endptr;
          if (*__endptr)
          {
            if (v17 == 44)
            {
              v14 = __endptr + 1;
              goto LABEL_17;
            }

            goto LABEL_112;
          }

          if (v15)
          {
LABEL_17:
            v18 = 0;
            do
            {
              bytes = v16;
              if (!Mutable)
              {
                Mutable = CFDataCreateMutable(0, 0);
                if (!Mutable)
                {
                  APSLogErrorAt(0);
                  free(v12);
                  v48 = 4294960568;
                  a5 = v50;
                  goto LABEL_115;
                }
              }

              CFDataAppendBytes(Mutable, &bytes, 1);
              v16 >>= 8;
              v20 = v18++ < 3;
              if (!v17)
              {
                v20 = v16;
              }
            }

            while (v20);
            if (v17)
            {
              continue;
            }
          }

          break;
        }
      }

      else
      {
        Mutable = 0;
      }

      free(v12);
      goto LABEL_55;
    }

    if (v10 == 2)
    {
      Mutable = _CreateTextData(a4, a5, &v55);
      v24 = v55;
      if (!v55)
      {
        goto LABEL_55;
      }

      goto LABEL_62;
    }

LABEL_89:
    v23 = 4294960591;
    APSLogErrorAt(4294960591);
    Mutable = 0;
    goto LABEL_90;
  }

  if (v10 > 10)
  {
    if ((v10 - 11) >= 2)
    {
      if (v10 != 13)
      {
        if (v10 != 14)
        {
          goto LABEL_89;
        }

        v21 = APSNANServiceTypeMakeWithString(a4);
        if (!v21)
        {
          v22 = 4294960591;
LABEL_135:
          APSLogErrorAt(0);
          v55 = v22;
          v48 = v22;
          goto LABEL_116;
        }

        if (v21 != 1)
        {
          LOBYTE(__endptr) = v21;
          Mutable = CFDataCreate(*MEMORY[0x277CBECE8], &__endptr, 1);
          if (Mutable)
          {
            goto LABEL_55;
          }

          v22 = 4294960568;
          goto LABEL_135;
        }

        goto LABEL_100;
      }

      LODWORD(__endptr) = 0;
      v35 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a4, a5, 0x8000100u, 0, *MEMORY[0x277CBED00]);
      v51 = a5;
      if (v35)
      {
        v36 = v35;
        v37 = CFDataCreateMutable(0, 0);
        if (v37)
        {
          Mutable = v37;
          v38 = APSFeaturesCreateFromStringRepresentation(v36, &__endptr);
          if (__endptr)
          {
            APSLogErrorAt(__endptr);
          }

          else
          {
            MutableCopy = CFDataCreateMutableCopy(0, 0, v38);
            if (MutableCopy)
            {
              v40 = MutableCopy;
              v41 = 0;
              while (!APSFeaturesIsEmpty(v40))
              {
                v42 = 0;
                bytes = 0;
                do
                {
                  if (APSFeaturesHasFeature(v40, v41 + v42))
                  {
                    bytes |= 1 << v42;
                    APSFeaturesClearFeature(v40, v41 + v42);
                  }

                  ++v42;
                }

                while (v42 != 8);
                CFDataAppendBytes(Mutable, &bytes, 1);
                v41 += 8;
              }

              CFRelease(v40);
            }

            else
            {
              APSLogErrorAt(0);
              LODWORD(__endptr) = -6728;
            }
          }

          if (v38)
          {
            CFRelease(v38);
          }

          CFRelease(v36);
          if (__endptr)
          {
            CFRelease(Mutable);
            v43 = __endptr;
            v54 = 1;
            v55 = __endptr;
            if (!__endptr)
            {
LABEL_100:
              Mutable = 0;
              goto LABEL_55;
            }

            goto LABEL_138;
          }

LABEL_55:
          v27 = 1;
          if (Mutable)
          {
LABEL_56:
            CFDataAppendBytes(a1, v9, 1);
            if ((*v9 & 0x80000000) == 0 && ((v28 = *(v9 + 4), (v28 - 8) < 5) || v28 == 2))
            {
              Int64Ranged = CFDictionaryGetInt64Ranged();
              if (Int64Ranged)
              {
                LOBYTE(__endptr) = Int64Ranged | 0x80;
                p_endptr = &__endptr;
LABEL_74:
                CFDataAppendBytes(a1, p_endptr, 1);
LABEL_106:
                CFRelease(Mutable);
                return 0;
              }

              v31 = 1;
            }

            else
            {
              v31 = 0;
            }

            Length = CFDataGetLength(Mutable);
            if (Length <= 120)
            {
              v33 = Length;
              if (v27)
              {
                if (Length == 1)
                {
                  v34 = v31;
                }

                else
                {
                  v34 = 1;
                }

                if ((v34 & 1) == 0)
                {
                  v58.location = 0;
                  v58.length = 1;
                  CFDataGetBytes(Mutable, v58, &buffer);
                  if ((buffer & 0x80000000) == 0)
                  {
                    buffer |= 0x80u;
                    p_endptr = &buffer;
                    goto LABEL_74;
                  }
                }
              }

              else
              {
                LOBYTE(__endptr) = 127;
                CFDataAppendBytes(a1, &__endptr, 1);
                if (gLogCategory_APSBinaryTXTRecord <= 50 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
                {
                  v49 = *(v9 + 1);
                  LogPrintF();
                }
              }

              buffer = v33;
              CFDataAppendBytes(a1, &buffer, 1);
              BytePtr = CFDataGetBytePtr(Mutable);
              v45 = CFDataGetLength(Mutable);
              CFDataAppendBytes(a1, BytePtr, v45);
              if (v31)
              {
                v46 = *v9;
                CFDictionarySetInt64();
              }

              goto LABEL_106;
            }

            APSLogErrorAt(0);
            LODWORD(v23) = -6705;
            goto LABEL_91;
          }

          return 0;
        }

        APSLogErrorAt(0);
        CFRelease(v36);
      }

      else
      {
        APSLogErrorAt(0);
      }

      v54 = 1;
      v43 = 4294960568;
      v55 = -6728;
LABEL_138:
      APSLogErrorAt(v43);
      Mutable = 0;
      a5 = v51;
      goto LABEL_48;
    }

    Mutable = _CreateUUIDData(a4, a5, &v54, &v55);
    v25 = v55;
    if (v55 && v54)
    {
      v54 = 0;
      Mutable = _CreateMACAddressData(a4, a5, &v54, &v55);
      v25 = v55;
    }

    if (v25 && gLogCategory_APSBinaryTXTRecord <= 50 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
LABEL_132:
      LogPrintF();
    }

LABEL_48:
    v23 = v55;
    if (!v55)
    {
      goto LABEL_55;
    }

    goto LABEL_49;
  }

  if ((v10 - 9) >= 2)
  {
    if (v10 != 8)
    {
      goto LABEL_89;
    }

    Mutable = _CreateMACAddressData(a4, a5, &v54, &v55);
    v24 = v55;
    if (v55)
    {
LABEL_62:
      APSLogErrorAt(v24);
      goto LABEL_48;
    }

    goto LABEL_55;
  }

  Mutable = _CreateUUIDData(a4, a5, &v54, &v55);
  v23 = v55;
  if (!v55)
  {
    goto LABEL_55;
  }

  if (gLogCategory_APSBinaryTXTRecord <= 50)
  {
    if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
    {
      goto LABEL_132;
    }

    goto LABEL_48;
  }

LABEL_49:
  if (v54)
  {
    LODWORD(__endptr) = 0;
    TextData = _CreateTextData(a4, a5, &__endptr);
    Mutable = TextData;
    if (!__endptr)
    {
      v27 = 0;
      if (!TextData)
      {
        return 0;
      }

      goto LABEL_56;
    }

    v23 = v55;
    if (!v55)
    {
      goto LABEL_55;
    }
  }

LABEL_90:
  APSLogErrorAt(v23);
  if (Mutable)
  {
LABEL_91:
    CFRelease(Mutable);
  }

LABEL_92:
  v52 = v23;
  if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
  {
LABEL_94:
    LogPrintF();
  }

  return v52;
}

uint64_t _GetKeyInfo(int a1, char *__s2, int *a3)
{
  if (a1 || __s2)
  {
    for (i = 0; i != 38; ++i)
    {
      while (1)
      {
        if (a1 && *(&allKeys + 24 * i) == a1)
        {
LABEL_14:
          v7 = 0;
          result = &allKeys + 24 * i;
          if (a3)
          {
            goto LABEL_21;
          }

          return result;
        }

        if (__s2)
        {
          break;
        }

        if (++i == 38)
        {
          if (gLogCategory_APSBinaryTXTRecord <= 40 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_24;
        }
      }

      if (!strcmp(*(&allKeys + 3 * i + 1), __s2))
      {
        goto LABEL_14;
      }
    }

    if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = 0;
    v7 = -6705;
    if (!a3)
    {
      return result;
    }

    goto LABEL_21;
  }

  APSLogErrorAt(0);
LABEL_24:
  v7 = 0;
  result = 0;
  if (a3)
  {
LABEL_21:
    *a3 = v7;
  }

  return result;
}

CFDataRef _CreateTextData(UInt8 *bytes, CFIndex length, int *a3)
{
  v4 = CFDataCreate(0, bytes, length);
  if (!v4)
  {
    APSLogErrorAt(0);
    v5 = -6728;
    if (!a3)
    {
      return v4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    *a3 = v5;
  }

  return v4;
}

CFDataRef _CreateMACAddressData(uint64_t a1, uint64_t a2, _BYTE *a3, int *a4)
{
  v10 = 0;
  *bytes = 0;
  v6 = TextToHardwareAddress();
  if (v6)
  {
    v8 = v6;
    APSLogErrorAt(v6);
  }

  else
  {
    result = CFDataCreate(0, bytes, 6);
    if (result)
    {
      v8 = 0;
      goto LABEL_4;
    }

    APSLogErrorAt(0);
    v8 = -6728;
  }

  result = 0;
  if (a3)
  {
    *a3 = 1;
  }

LABEL_4:
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

CFDataRef _CreateUUIDData(uint64_t a1, uint64_t a2, _BYTE *a3, int *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = StringToUUID();
  if (!v6)
  {
    v7 = CFDataCreate(0, bytes, 16);
    if (v7)
    {
      v8 = v7;
      v6 = 0;
      goto LABEL_4;
    }

    APSLogErrorAt(0);
    v6 = -6728;
  }

  v8 = 0;
  if (a3)
  {
    *a3 = 1;
  }

LABEL_4:
  if (a4)
  {
    *a4 = v6;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

CFDataRef _CreateTXTRecordFromBinaryTXTRecord(const __CFData *a1, const char *a2, _DWORD *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  txtRecord = 0uLL;
  bzero(v52, 0x800uLL);
  if (!a1)
  {
    goto LABEL_146;
  }

  Length = CFDataGetLength(a1);
  if (!Length)
  {
    if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_147;
  }

  v7 = Length;
  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
LABEL_146:
    APSLogErrorAt(0);
LABEL_147:
    v43 = 0;
    LODWORD(v31) = -6705;
    goto LABEL_137;
  }

  v9 = BytePtr;
  if (gLogCategory_APSBinaryTXTRecord <= 30)
  {
    if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (*v9 != 1)
  {
    LODWORD(v31) = -72420;
    if (gLogCategory_APSBinaryTXTRecord <= 40)
    {
      if (gLogCategory_APSBinaryTXTRecord == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_156;
        }

        v46 = *v9;
      }

      LogPrintF();
    }

LABEL_156:
    v43 = 0;
    goto LABEL_137;
  }

  v47 = a3;
  TXTRecordCreate(&txtRecord, 0x200u, buffer);
  v10 = 0;
  v11 = 1;
  v48 = a2;
  while (v11 < v7 && !v10)
  {
    *valueLen = 0;
    value = 0uLL;
    *&v55 = 0;
    v12 = v11 + 1;
    v13 = v9[v11];
    if (v9[v11])
    {
      KeyInfo = _GetKeyInfo(v9[v11], 0, valueLen);
      v15 = *valueLen;
      if (*valueLen)
      {
        goto LABEL_87;
      }

      if (!KeyInfo)
      {
        if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_110;
        }

LABEL_84:
        v10 = 0;
        goto LABEL_85;
      }

      if (v12 >= v7)
      {
        *valueLen = -6705;
        if (gLogCategory_APSBinaryTXTRecord > 90)
        {
          goto LABEL_140;
        }

        if (gLogCategory_APSBinaryTXTRecord == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_84;
        }

        goto LABEL_110;
      }

      v16 = v9[v12];
      v17 = v16;
      v12 = v11 + 2;
      if (!a2 || (v18 = *(KeyInfo + 1), !strcmp(v18, a2)))
      {
        v19 = 1;
        if (v16 < 0)
        {
          goto LABEL_44;
        }
      }

      else if (!strcmp(a2, "gid"))
      {
        v23 = strcmp(v18, "bin_grp_cmid");
        v24 = strcmp(v18, "bin_grp_rcid");
        v25 = v23 == 0;
        a2 = v48;
        v25 = v25 || v24 == 0;
        v19 = v25;
        if (v16 < 0)
        {
LABEL_44:
          if (!v19)
          {
            goto LABEL_84;
          }

          v50[1] = v16 & 0x7F;
          if ((*KeyInfo & 0x80000000) == 0 && ((v26 = *(KeyInfo + 4), (v26 - 8) < 5) || v26 == 2))
          {
            if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v30 = &v52[v16 & 0x7F];
            if (!v30->PrivateData[8])
            {
              *valueLen = -6705;
              if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_110;
              }

              goto LABEL_84;
            }

            v15 = _ProcessKeyData(&txtRecord, KeyInfo, &v9[v30->ForceNaturalAlignment], v30->PrivateData[8]);
            *valueLen = v15;
            if (!v15)
            {
              goto LABEL_84;
            }
          }

          else
          {
            if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v15 = _ProcessKeyData(&txtRecord, KeyInfo, &v50[1], 1u);
            *valueLen = v15;
            if (!v15)
            {
              goto LABEL_84;
            }
          }

LABEL_87:
          APSLogErrorAt(v15);
          goto LABEL_84;
        }
      }

      else
      {
        v19 = 0;
        if (v16 < 0)
        {
          goto LABEL_84;
        }
      }

      if (v16 < 0x79)
      {
        v22 = 1;
        goto LABEL_60;
      }

      if (v12 >= v7)
      {
        *valueLen = -6705;
        if (gLogCategory_APSBinaryTXTRecord > 90)
        {
LABEL_140:
          v31 = 4294960591;
LABEL_141:
          APSLogErrorAt(v31);
          v43 = 0;
          a3 = v47;
          goto LABEL_137;
        }

        if (gLogCategory_APSBinaryTXTRecord == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_84;
        }

        goto LABEL_110;
      }

      v20 = v9[v12];
      v16 = v9[v12];
      v12 = v11 + 3;
      v21 = gLogCategory_APSBinaryTXTRecord;
      if (v17 == 127)
      {
        if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *&v55 = *(KeyInfo + 2);
        value = *KeyInfo;
        LODWORD(v55) = 2;
        v22 = 1;
        KeyInfo = &value;
        goto LABEL_60;
      }

      if (gLogCategory_APSBinaryTXTRecord > 30)
      {
        if (v7 - v12 < v20)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }

        v22 = 0;
LABEL_60:
        if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v7 - v12 < v16)
        {
          v21 = gLogCategory_APSBinaryTXTRecord;
LABEL_95:
          *valueLen = -6705;
          a2 = v48;
          if (v21 > 90)
          {
            goto LABEL_140;
          }

          if (v21 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_84;
          }

LABEL_110:
          LogPrintF();
          goto LABEL_84;
        }

        v20 = v16;
        if (v22)
        {
          if (!v19 || (v27 = _ProcessKeyData(&txtRecord, KeyInfo, &v9[v12], v16), (*valueLen = v27) == 0))
          {
            if ((*KeyInfo & 0x80000000) == 0)
            {
              v28 = *(KeyInfo + 4);
              if ((v28 - 8) < 5 || v28 == 2)
              {
                v29 = &v52[v13];
                v29->ForceNaturalAlignment = v12;
                v29->PrivateData[8] = v16;
                if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }
              }
            }

            goto LABEL_80;
          }

          APSLogErrorAt(v27);
          v10 = 0;
LABEL_81:
          a2 = v48;
          goto LABEL_85;
        }
      }

LABEL_80:
      v10 = 0;
      v12 += v20;
      goto LABEL_81;
    }

    v10 = 1;
LABEL_85:
    v31 = *valueLen;
    v11 = v12;
    if (*valueLen)
    {
      goto LABEL_141;
    }
  }

  BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
  v33 = TXTRecordGetLength(&txtRecord);
  v67 = 0u;
  memset(v68, 0, sizeof(v68));
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
  value = 0u;
  valueLen[0] = 0;
  *v50 = 0;
  if (TXTRecordContainsKey(v33, BytesPtr, "bin_grp_cmid") == 1 || TXTRecordContainsKey(v33, BytesPtr, "bin_grp_rcid") == 1)
  {
    ValuePtr = TXTRecordGetValuePtr(v33, BytesPtr, "gid", valueLen);
    v35 = TXTRecordGetValuePtr(v33, BytesPtr, "bin_grp_cmid", &v50[1]);
    v36 = TXTRecordGetValuePtr(v33, BytesPtr, "bin_grp_rcid", v50);
    v37 = valueLen[0];
    v38 = v50[1];
    v39 = v50[0];
    if (valueLen[0] + v50[1] + v50[0] + 2 < 0x100)
    {
      if (ValuePtr)
      {
        v40 = v36;
        __memcpy_chk();
        v41 = &value + v37;
        if (v35)
        {
          *v41 = 43;
          v42 = v41 + 1;
          memcpy(v42, v35, v38);
          v41 = &v42[v38];
        }

        if (v40)
        {
          *v41++ = 43;
          memcpy(v41, v40, v39);
          LOBYTE(v41) = v41 + v39;
        }

        TXTRecordSetValue(&txtRecord, "gid", v41 - &value, &value);
        a3 = v47;
      }

      else
      {
        a3 = v47;
        if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
LABEL_130:
          LogPrintF();
        }
      }
    }

    else
    {
      a3 = v47;
      if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_130;
      }
    }

    TXTRecordRemoveValue(&txtRecord, "bin_grp_cmid");
    TXTRecordRemoveValue(&txtRecord, "bin_grp_rcid");
    BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
    v33 = TXTRecordGetLength(&txtRecord);
  }

  else
  {
    a3 = v47;
  }

  v43 = CFDataCreate(0, BytesPtr, v33);
  if (v43)
  {
    LODWORD(v31) = 0;
  }

  else
  {
    APSLogErrorAt(0);
    LODWORD(v31) = -6728;
  }

LABEL_137:
  if (a3)
  {
    *a3 = v31;
  }

  TXTRecordDeallocate(&txtRecord);
  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

uint64_t _ProcessKeyData(TXTRecordRef *txtRecord, uint64_t a2, unsigned __int8 *value, unsigned int valueSize)
{
  v8 = 0;
  v54 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 16);
  if (v9 > 8)
  {
    if (v9 <= 12)
    {
      if ((v9 - 9) >= 2)
      {
        if ((v9 - 11) >= 2)
        {
          goto LABEL_59;
        }

        if (!_ProcessUUIDData(txtRecord, *(a2 + 8), value, valueSize, v9 == 12))
        {
          v8 = 0;
          goto LABEL_59;
        }

LABEL_41:
        v30 = *(a2 + 8);
        v31 = *MEMORY[0x277D85DE8];

        return _ProcessMACAddressData(txtRecord, v30, value, valueSize);
      }

      v27 = *(a2 + 8);
      v28 = *MEMORY[0x277D85DE8];

      return _ProcessUUIDData(txtRecord, v27, value, valueSize, v9 == 10);
    }

    if (v9 == 13)
    {
      v32 = *(a2 + 8);
      theString = 0;
      Mutable = APSFeaturesCreateMutable(0);
      if (Mutable)
      {
        v34 = Mutable;
        if (valueSize)
        {
          v35 = 0;
          v36 = 0;
          v37 = valueSize;
          do
          {
            v38 = value[v36];
            v39 = v35;
            v40 = 8;
            do
            {
              if (v38)
              {
                APSFeaturesSetFeature(v34, v39);
              }

              v38 >>= 1;
              ++v39;
              --v40;
            }

            while (v40);
            ++v36;
            v35 += 8;
          }

          while (v36 != v37);
        }

        v41 = APSFeaturesCopyStringRepresentation(v34, &theString);
        if (v41)
        {
          v8 = v41;
          APSLogErrorAt(v41);
          v42 = theString;
        }

        else
        {
          __s[0] = 0;
          v42 = theString;
          CString = CFStringGetCString(theString, __s, 256, 0x8000100u);
          if (CString)
          {
            v44 = strlen(__s);
            v45 = TXTRecordSetValue(txtRecord, v32, v44, __s);
            v8 = v45;
            if (v45)
            {
              APSLogErrorAt(v45);
            }
          }

          else
          {
            APSLogErrorAt(CString);
            v8 = 4294960591;
          }
        }

        if (v42)
        {
          CFRelease(v42);
        }

        CFRelease(v34);
      }

      else
      {
        APSLogErrorAt(0);
        v8 = 4294960568;
      }

LABEL_59:
      v46 = *MEMORY[0x277D85DE8];
      return v8;
    }

    if (v9 != 14)
    {
      goto LABEL_59;
    }

    v19 = *(a2 + 8);
    *__s = 0;
    if (valueSize == 1)
    {
      v20 = *value;
      v21 = @"ll";
      if (v20 != 2)
      {
        v21 = 0;
      }

      if (v20 == 1)
      {
        v22 = @"ap";
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
        if (CStringPtrAndBufferToFree)
        {
          v24 = CStringPtrAndBufferToFree;
          v25 = strlen(CStringPtrAndBufferToFree);
          v26 = TXTRecordSetValue(txtRecord, v19, v25, v24);
          v8 = v26;
          if (v26)
          {
            APSLogErrorAt(v26);
          }
        }

        else
        {
          APSLogErrorAt(0);
          v8 = 4294960534;
        }

        goto LABEL_35;
      }

      if (gLogCategory_APSBinaryTXTRecord > 60)
      {
LABEL_77:
        v8 = 0;
LABEL_35:
        free(*__s);
        goto LABEL_59;
      }

      if (gLogCategory_APSBinaryTXTRecord == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_77;
        }

        v49 = *value;
      }
    }

    else if (gLogCategory_APSBinaryTXTRecord > 60 || gLogCategory_APSBinaryTXTRecord == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_77;
    }

    LogPrintF();
    goto LABEL_77;
  }

  if ((v9 - 3) < 5)
  {
    v50 = *(a2 + 8);
    __s[0] = 0;
    if (!valueSize)
    {
LABEL_22:
      v18 = strlen(__s);
      v8 = TXTRecordSetValue(txtRecord, v50, v18, __s);
      goto LABEL_59;
    }

    v10 = 0;
    v11 = v9 - 5;
    while (1)
    {
      if ((v10 + 4) >= valueSize)
      {
        v12 = valueSize;
      }

      else
      {
        v12 = (v10 + 4);
      }

      if (v12 > v10)
      {
        v13 = 0;
        v14 = 0;
        v15 = v12 - v10;
        v16 = &value[v10];
        do
        {
          v17 = *v16++;
          v14 |= v17 << v13;
          v13 += 8;
          --v15;
        }

        while (v15);
        v10 = v12;
      }

      if (v11 >= 0xFFFFFFFE)
      {
        strlen(__s);
      }

      else if (valueSize != v10)
      {
        APSLogErrorAt(0);
        v8 = 4294960591;
        goto LABEL_59;
      }

      SNPrintF();
      if (valueSize <= v10)
      {
        goto LABEL_22;
      }
    }
  }

  if (v9 != 2)
  {
    if (v9 != 8)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  v47 = *(a2 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return TXTRecordSetValue(txtRecord, v47, valueSize, value);
}

uint64_t _ProcessMACAddressData(TXTRecordRef *a1, const char *a2, uint64_t a3, int a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a4 == 6)
  {
    HardwareAddressToCString();
    v6 = strlen(__s);
    result = TXTRecordSetValue(a1, a2, v6, __s);
  }

  else
  {
    APSLogErrorAt(0);
    result = 4294960591;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ProcessUUIDData(TXTRecordRef *a1, const char *a2, uint64_t a3, int a4, int a5)
{
  *&v16[37] = *MEMORY[0x277D85DE8];
  if (a4 == 16)
  {
    UUIDtoCStringFlags();
    if (!a5)
    {
      v8 = __s;
      if (__s)
      {
        v9 = 0;
        v10 = v16;
        do
        {
          *(v10 - 1) = __toupper(v8);
          if (v9 > 0x24)
          {
            break;
          }

          ++v9;
          v11 = *v10++;
          v8 = v11;
        }

        while (v11);
      }
    }

    v12 = strlen(&__s);
    result = TXTRecordSetValue(a1, a2, v12, &__s);
  }

  else
  {
    APSLogErrorAt(0);
    result = 4294960591;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef APSBinaryTXTRecordCopyString(const __CFData *a1, const char *a2, unsigned int *a3)
{
  v13 = 0;
  valueLen = 0;
  v5 = _CreateTXTRecordFromBinaryTXTRecord(a1, a2, &v13);
  if (v13)
  {
    APSLogErrorAt(v13);
    v9 = 0;
  }

  else
  {
    Length = CFDataGetLength(v5);
    BytePtr = CFDataGetBytePtr(v5);
    ValuePtr = TXTRecordGetValuePtr(Length, BytePtr, a2, &valueLen);
    if (ValuePtr)
    {
      v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], ValuePtr, valueLen, 0x8000100u, 0);
      if (v9)
      {
        goto LABEL_4;
      }

      APSLogErrorAt(0);
      v11 = -6728;
    }

    else
    {
      v9 = 0;
      v11 = -6727;
    }

    v13 = v11;
  }

LABEL_4:
  if (a3)
  {
    *a3 = v13;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

void rtcpCCFBRecordDictionaryValueReleaseCallback(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

CFTypeRef *rtcpCCFBRecordDictionaryValueRetainCallback(uint64_t a1, _OWORD *a2)
{
  v3 = MEMORY[0x223DB3470](a1, 16, 0x106004076547154, 0);
  *v3 = *a2;
  if (*v3)
  {
    CFRetain(*v3);
  }

  return v3;
}

uint64_t APSRTCPCCFBGeneratorGetTypeID()
{
  if (gAPSRTCPCCFBGeneratorInitOnce != -1)
  {
    dispatch_once_f(&gAPSRTCPCCFBGeneratorInitOnce, 0, _APSRTCPCCFBGeneratorGetTypeID);
  }

  return gAPSRTCPCCFBGeneratorTypeID;
}

uint64_t _APSRTCPCCFBGeneratorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRTCPCCFBGeneratorTypeID = result;
  return result;
}

void _APSRTCPCCFBGeneratorFinalize(uint64_t a1)
{
  if (gLogCategory_APSRTCPCCFBGenerator <= 30 && (gLogCategory_APSRTCPCCFBGenerator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

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
}

uint64_t APSRTCPCCFBGeneratorCreate(CFTypeRef *a1)
{
  if (a1)
  {
    if (gAPSRTCPCCFBGeneratorInitOnce != -1)
    {
      dispatch_once_f(&gAPSRTCPCCFBGeneratorInitOnce, 0, _APSRTCPCCFBGeneratorGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      Instance[2] = 0;
      Instance[3] = 0;
      Instance[4] = 0;
      Mutable = APSRTPSeqNumDictionaryCreateMutable(*MEMORY[0x277CBECE8], &kAPSRTCPCCFBRecordDictionaryValueCallbacks, Instance + 2);
      v5 = Mutable;
      if (Mutable)
      {
        APSLogErrorAt(Mutable);
      }

      else
      {
        *a1 = CFRetain(v3);
        if (gLogCategory_APSRTCPCCFBGenerator <= 30 && (gLogCategory_APSRTCPCCFBGenerator != -1 || _LogCategory_Initialize()))
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

uint64_t APSRTCPCCFBGeneratorAddSequenceNumberAndArrivalTime(uint64_t a1, void *key, uint64_t a3)
{
  v16[1] = 0;
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v6 = *(a1 + 16);
  if (v6 && CFDictionaryGetValue(*(v6 + 24), key))
  {
    return 4294960566;
  }

  v7 = *(a1 + 24);
  if (!v7 || APSRTPSeqNumRangeSetContainsSeqNum(v7, key))
  {
    goto LABEL_6;
  }

  Span = APSRTPSeqNumRangeSetGetSpan(*(a1 + 24));
  v13 = (Span + HIWORD(Span)) - (Span & 0xFFFF0000) + 0x80000000;
  if (Span > 0x8000FFFF)
  {
    v13 = -1;
  }

  if (((v13 - 0x10000) & 0x80000000) == 0 && (v13 - key) <= 0 && HIWORD(v13) > (key - v13))
  {
LABEL_6:
    if (a3)
    {
      v8 = *MEMORY[0x277CBECE8];
      APSCompactNTPMakeWithUpTicks(a3, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
      UInt32 = FigCFNumberCreateUInt32();
      if (!UInt32)
      {
        APSLogErrorAt(0);
        return 4294960568;
      }
    }

    else
    {
      UInt32 = 0;
    }

    v16[0] = UInt32;
    v11 = APSRTPSeqNumDictionarySetValue(*(a1 + 16), key, v16);
    v10 = v11;
    if (v11)
    {
      APSLogErrorAt(v11);
      if (!UInt32)
      {
        return v10;
      }
    }

    else
    {
      if (!*(a1 + 34) || (key - *(a1 + 32)) >= 1)
      {
        *(a1 + 32) = key;
      }

      *(a1 + 34) = 1;
      if (!UInt32)
      {
        return v10;
      }
    }

    CFRelease(UInt32);
    return v10;
  }

  if (gLogCategory_APSRTCPCCFBGenerator <= 90 && (gLogCategory_APSRTCPCCFBGenerator != -1 || _LogCategory_Initialize()))
  {
    v15 = *(a1 + 24);
    LogPrintF();
  }

  v10 = 4294960591;
  APSLogErrorAt(4294960591);
  return v10;
}

uint64_t APSRTCPCCFBGeneratorSetSendWindow(uint64_t a1, const void *a2)
{
  cf = 0;
  if (a1)
  {
    if (a2)
    {
      Span = APSRTPSeqNumRangeSetGetSpan(a2);
      if (Span >= 0x10000)
      {
        v7 = Span;
        v8 = APSRTPSeqNumRangeSetCreateMutable(*MEMORY[0x277CBECE8], &cf);
        if (cf)
        {
          v6 = v8;
          APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a2, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_addRangeApplier, cf);
          if (v7 > 0x8000FFFF)
          {
            v9 = 0xFFFFFFFFLL;
          }

          else
          {
            v9 = (HIWORD(v7) + v7) - (v7 & 0xFFFF0000) + 0x80000000;
          }

          APSRTPSeqNumRangeSetAddSeqNumRange(cf, v9);
          APSRTPSeqNumDictionaryFilterWithRangeSet(*(a1 + 16), cf);
          v14 = 0;
          if (!APSRTPSeqNumRangeSetGetLastSeqNumRange(a2, &v14))
          {
            v10 = v14 + HIWORD(v14) - 1;
            if (!*(a1 + 34) || (v10 - *(a1 + 32)) >= 1)
            {
              *(a1 + 32) = v10;
            }

            *(a1 + 34) = 1;
          }

          v11 = *(a1 + 24);
          *(a1 + 24) = a2;
          CFRetain(a2);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        else
        {
          APSLogErrorAt(0);
          v6 = 4294960568;
        }
      }

      else
      {
        APSRTPSeqNumDictionaryRemoveAllValues(*(a1 + 16));
        v5 = *(a1 + 24);
        if (v5)
        {
          CFRelease(v5);
          v6 = 0;
          *(a1 + 24) = 0;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      APSLogErrorAt(0);
      v6 = 4294960591;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v6;
}

uint64_t APSRTCPCCFBGeneratorGetSendWindow(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t APSRTCPCCFBGeneratorCopyRecords(uint64_t a1, void *a2)
{
  cf = 0;
  if (a1)
  {
    MutableCopy = APSRTPSeqNumDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], *(a1 + 16), &cf);
    v4 = MutableCopy;
    if (MutableCopy)
    {
      APSLogErrorAt(MutableCopy);
    }

    else
    {
      v5 = cf;
      if (cf)
      {
        v5 = CFRetain(cf);
      }

      *a2 = v5;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v4;
}

uint64_t APSRTCPCCFBGeneratorCopyPendingSequenceNumbers(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (!a2)
  {
    APSLogErrorAt(0);
    v16 = 4294960591;
    goto LABEL_24;
  }

  Span = APSRTPSeqNumRangeSetGetSpan(*(a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = APSRTPSeqNumRangeSetGetSpan(*(v5 + 16));
  }

  else
  {
    v6 = 0;
  }

  v7 = APSRTPSeqNumRangeUnion(Span, v6);
  v8 = APSRTPSeqNumRangeSetCreateMutable(*MEMORY[0x277CBECE8], &cf);
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    if (v7 < 0x10000)
    {
LABEL_21:
      v15 = cf;
      if (cf)
      {
        v15 = CFRetain(cf);
      }

      v16 = 0;
      *a2 = v15;
      goto LABEL_24;
    }

    v9 = HIWORD(Span);
    if (!HIWORD(Span))
    {
      LOWORD(Span) = v7;
    }

    v10 = *(a1 + 24);
    if (!v10)
    {
      goto LABEL_13;
    }

    if (cf)
    {
      v11 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(v10, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_addRangeApplier, cf);
      if (!v11)
      {
LABEL_13:
        if ((HIWORD(v7) + v7 - (Span + v9)) <= 0x8000u)
        {
          v12 = (Span + v9) | ((HIWORD(v7) + v7 - (Span + v9)) << 16);
        }

        else
        {
          v12 = 0xFFFFFFFFLL;
        }

        v8 = APSRTPSeqNumRangeSetAddSeqNumRange(cf, v12);
        if (v8)
        {
          v16 = v8;
        }

        else
        {
          v13 = *(a1 + 16);
          if (v13)
          {
            v14 = *(v13 + 16);
          }

          else
          {
            v14 = 0;
          }

          v8 = APSRTPSeqNumRangeSetRemoveSeqNumRangeSet(cf, v14);
          if (!v8)
          {
            goto LABEL_21;
          }

          v16 = v8;
        }

        goto LABEL_34;
      }

      v16 = v11;
    }

    else
    {
      v16 = 4294960591;
    }

    v8 = v16;
  }

LABEL_34:
  APSLogErrorAt(v8);
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t APSRTCPCCFBGeneratorGetMaxSequenceNumber(uint64_t a1, _WORD *a2)
{
  if (a1)
  {
    if (*(a1 + 34))
    {
      result = 0;
      *a2 = *(a1 + 32);
    }

    else
    {
      return 4294960578;
    }
  }

  else
  {
    APSLogErrorAt(a1);
    return 4294960591;
  }

  return result;
}

uint64_t APSDataPacerBitRateCreate(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  if (APSDataPacerGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSDataPacerGetClassID_sRegisterOnce, &APSDataPacerGetClassID_sClassID, dataPacer_registerBaseClass);
  }

  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v16 = v6;
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *DerivedStorage = v8;
  v9 = FigSimpleMutexCreate();
  *(DerivedStorage + 8) = v9;
  if (!v9)
  {
    APSLogErrorAt(0);
    return 4294954510;
  }

  *(DerivedStorage + 56) = 2;
  FigCFDictionaryGetInt32IfPresent();
  v10 = *DerivedStorage;
  if (!*DerivedStorage)
  {
    v17 = *(DerivedStorage + 56);
    *(DerivedStorage + 24) = 0;
    *(DerivedStorage + 32) = 0;
    *(DerivedStorage + 16) = 96000 * v17;
    *(DerivedStorage + 40) = 0;
    *(DerivedStorage + 48) = 0x4000000000000000;
    goto LABEL_19;
  }

  v11 = *DerivedStorage;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
    v16 = 4294954514;
LABEL_16:
    v6 = v16;
    goto LABEL_17;
  }

  v13 = v12(v10, DerivedStorage + 16);
  if (v13)
  {
    v16 = v13;
    goto LABEL_16;
  }

  v14 = *DerivedStorage;
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 48) = 0x4000000000000000;
  if (v14)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v15 = *DerivedStorage;
    v6 = FigNotificationCenterAddWeakListener();
    if (v6)
    {
      v16 = v6;
LABEL_17:
      APSLogErrorAt(v6);
      return v16;
    }
  }

LABEL_19:
  if (gLogCategory_APSDataPacerBitRate <= 50 && (gLogCategory_APSDataPacerBitRate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v16 = 0;
  *a4 = 0;
  return v16;
}

uint64_t bitRateDataPacer_GetPacedRate(uint64_t a1, uint64_t *a2)
{
  v14 = 0;
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage[1];
  FigSimpleMutexLock();
  v5 = *DerivedStorage;
  if (!*DerivedStorage)
  {
    *a2 = DerivedStorage[2];
    if (gLogCategory_APSDataPacerBitRate <= 10)
    {
      if (gLogCategory_APSDataPacerBitRate == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        v13 = *a2;
      }

      LogPrintF();
    }

LABEL_15:
    v11 = DerivedStorage[1];
    FigSimpleMutexUnlock();
    return 0;
  }

  v6 = *DerivedStorage;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v7)
  {
    v8 = v7(v5, &v14);
    if (!v8)
    {
      v9 = v14;
      if (v14 <= DerivedStorage[2])
      {
        v9 = DerivedStorage[2];
      }

      *a2 = v9;
      goto LABEL_15;
    }

    v10 = v8;
  }

  else
  {
    v10 = 4294954514;
  }

  APSLogErrorAt(v10);
  return v10;
}

uint64_t bitRateDataPacer_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (CFEqual(a2, @"kAPSDataPacerBitRateProperty_TotalWindowDurationSeconds"))
    {
      v7 = *(DerivedStorage + 8);
      FigSimpleMutexLock();
      v8 = *(DerivedStorage + 48);
      Float64 = FigCFNumberCreateFloat64();
      v10 = *(DerivedStorage + 8);
      FigSimpleMutexUnlock();
      if (Float64)
      {
        result = 0;
        *a4 = Float64;
      }

      else
      {
        APSLogErrorAt(0);
        return 4294954510;
      }
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

CFStringRef bitRateDataPacer_CopyDebugDescription(uint64_t a1)
{
  v6 = 0;
  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 16) + 8);
  if (v3)
  {
    v4 = *(VTable + 16) + 8;
    v3(a1, &v6);
    v3 = v6;
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<APSDataPacerBitRate %p>{ rate=%lluB/s }", a1, v3);
}

uint64_t bitRateDataPacer_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSDataPacerBitRate <= 30 && (gLogCategory_APSDataPacerBitRate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v1 = *DerivedStorage;
    FigNotificationCenterRemoveWeakListener();
    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }

  v2 = *(DerivedStorage + 8);

  return FigSimpleMutexDestroy();
}

uint64_t APSDataPacerBitRateUpdate(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 && a3 >= 0.0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8);
    FigSimpleMutexLock();
    *(DerivedStorage + 24) += a2;
    v7 = *(DerivedStorage + 32) + a3;
    *(DerivedStorage + 32) = v7;
    if (v7 >= 2.0)
    {
      v9 = CMBaseObjectGetDerivedStorage();
      v10 = *(v9 + 8);
      FigSimpleMutexCheckIsLockedOnThisThread();
      v11 = *(v9 + 16);
      v12 = (*(v9 + 24) / *(v9 + 32)) * *(v9 + 56);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = v12;
      v13 = *(DerivedStorage + 8);
      FigSimpleMutexUnlock();
      if (v11 != v12)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }
    }

    else
    {
      v8 = *(DerivedStorage + 8);
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }
}

uint64_t APSDataPacerBitRateChangeToSteadyState(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = *(DerivedStorage + 8);
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 40))
    {
      *(DerivedStorage + 48) = 0x4014000000000000;
      *(DerivedStorage + 40) = 1;
    }

    v3 = *(DerivedStorage + 8);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }
}

uint64_t APSDataPacerHoseCountCreateWithCapacity(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (APSDataPacerGetClassID_sRegisterOnce != -1)
    {
      dispatch_once_f(&APSDataPacerGetClassID_sRegisterOnce, &APSDataPacerGetClassID_sClassID, dataPacer_registerBaseClass);
    }

    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v8 = v5;
      APSLogErrorAt(v5);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = FigSimpleMutexCreate();
      *DerivedStorage = v7;
      if (v7)
      {
        DerivedStorage[2] = a2;
        if (gLogCategory_APSDataPacerHoseCount <= 50 && (gLogCategory_APSDataPacerHoseCount != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v8 = 0;
        *a3 = 0;
      }

      else
      {
        APSLogErrorAt(0);
        return 4294954510;
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v8;
}

uint64_t hoseCountDataPacer_GetPacedRate(uint64_t a1, unint64_t *a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  v6 = DerivedStorage[1];
  v5 = DerivedStorage[2];
  if (v6)
  {
    v5 = (v5 >> 1) / v6;
  }

  *a2 = v5;
  v7 = *DerivedStorage;
  FigSimpleMutexUnlock();
  if (gLogCategory_APSDataPacerHoseCount > 10)
  {
    return 0;
  }

  if (gLogCategory_APSDataPacerHoseCount != -1 || (result = _LogCategory_Initialize(), result))
  {
    v9 = *a2;
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t hoseCountDataPacer_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (CFEqual(a2, @"kAPSDataPacerHoseCountProperty_NumHoses"))
    {
      v7 = *DerivedStorage;
      FigSimpleMutexLock();
      v8 = DerivedStorage[1];
      UInt64 = FigCFNumberCreateUInt64();
      v10 = *DerivedStorage;
      FigSimpleMutexUnlock();
      if (UInt64)
      {
        result = 0;
        *a4 = UInt64;
      }

      else
      {
        APSLogErrorAt(0);
        return 4294954510;
      }
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

uint64_t hoseCountDataPacer_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSDataPacerHoseCount <= 30 && (gLogCategory_APSDataPacerHoseCount != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = *DerivedStorage;

  return FigSimpleMutexDestroy();
}

uint64_t APSDataPacerHoseCountCreateWithDefaultCapacityForCurrentDevice(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v4 = MGGetProductType();
  if (v4 == 1540760353 || v4 == 3348380076)
  {
    v6 = 6250000;
  }

  else
  {
    v6 = 12500000;
  }

  v7 = APSDataPacerHoseCountCreateWithCapacity(a1, v6, &cf);
  v8 = v7;
  if (v7)
  {
    APSLogErrorAt(v7);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v8;
}

uint64_t APSDataPacerHoseCountIncrement(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = *DerivedStorage;
    FigSimpleMutexLock();
    v3 = *DerivedStorage;
    ++DerivedStorage[1];
    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }
}

uint64_t APSDataPacerHoseCountDecrement(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = *DerivedStorage;
    FigSimpleMutexLock();
    v3 = DerivedStorage[1];
    if (v3)
    {
      DerivedStorage[1] = v3 - 1;
      v4 = *DerivedStorage;
      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      return 0;
    }

    APSLogErrorAt(0);
    v6 = *DerivedStorage;
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
  }

  return 4294954516;
}

uint64_t APSDataPacerHoseCountGetCount(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = *DerivedStorage;
    FigSimpleMutexLock();
    v5 = *DerivedStorage;
    v6 = DerivedStorage[1];
    FigSimpleMutexUnlock();
    result = 0;
    *a2 = v6;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

uint64_t APSAudioProtocolDriverSenderLocalCreate(const __CFAllocator *a1, const void *a2, void *a3)
{
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294894825;
  }

  if (APSAudioProtocolDriverSenderGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSAudioProtocolDriverSenderGetClassID_sRegisterOnce, &APSAudioProtocolDriverSenderGetClassID_sClassID, audioProtocolDriverSender_registerBaseClass);
  }

  Mutable = CMDerivedObjectCreate();
  if (Mutable)
  {
    v8 = Mutable;
LABEL_19:
    APSLogErrorAt(Mutable);
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = FigSimpleMutexCreate();
  DerivedStorage[1] = Mutable;
  if (!Mutable)
  {
    v8 = 4294894826;
    goto LABEL_19;
  }

  Mutable = CFArrayCreateMutable(a1, 1024, MEMORY[0x277CBF128]);
  DerivedStorage[2] = Mutable;
  if (!Mutable)
  {
    v8 = 4294894826;
    goto LABEL_19;
  }

  if (a2)
  {
    *DerivedStorage = CFRetain(a2);
  }

  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 50 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = 0;
  *a3 = 0;
  return v8;
}

uint64_t protocolDriverSenderLocal_GetLastDeliveredMediaTimeForHose(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277CC0898];
  v12 = *(MEMORY[0x277CC0898] + 16);
  if (!a1 || !a2)
  {
    v9 = 4294894825;
    APSLogErrorAt(0);
    if (!a3)
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (!a3)
  {
    v9 = 4294894825;
    APSLogErrorAt(0);
    return v9;
  }

  pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v6 = *(ProtocolVTable + 16)) == 0)
  {
    v9 = 4294954508;
LABEL_10:
    APSLogErrorAt(v9);
    goto LABEL_11;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    v9 = 4294954514;
    goto LABEL_10;
  }

  v8 = *(v6 + 16);
  v9 = v7(a2, &v11);
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_11:
  *a3 = v11;
  *(a3 + 16) = v12;
  return v9;
}

uint64_t protocolDriverSenderLocal_SendAudioData(int a1, CMBlockBufferRef theBuffer)
{
  if (!theBuffer)
  {
    v14 = 4294894825;
LABEL_25:
    APSLogErrorAt(0);
    return v14;
  }

  if (CMBlockBufferIsEmpty(theBuffer))
  {
    v14 = 4294894825;
    goto LABEL_25;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 16);
  if (!v5)
  {
    goto LABEL_6;
  }

  if (CFArrayGetCount(v5) <= 1023)
  {
    v5 = *(DerivedStorage + 16);
LABEL_6:
    CFArrayAppendValue(v5, theBuffer);
    if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 30 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
    {
      v6 = *(DerivedStorage + 16);
      if (v6)
      {
        v7.length = CFArrayGetCount(*(DerivedStorage + 16));
      }

      else
      {
        v7.length = 0;
      }

      v7.location = 0;
      CFArrayGetFirstIndexOfValue(v6, v7, theBuffer);
      v8 = *(DerivedStorage + 16);
      if (v8)
      {
        CFArrayGetCount(v8);
      }

      LogPrintF();
    }

    v9 = *(DerivedStorage + 24);
    pthread_once(&APSEndpointStreamAudioHoseProtocolGetProtocolID_sRegisterAPSEndpointStreamAudioHoseProtocolTypeOnce, registerAPSEndpointStreamAudioHoseProtocolType);
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v11 = *(ProtocolVTable + 16);
      if (v11)
      {
        v12 = *(v11 + 40);
        if (v12)
        {
          v13 = *(v11 + 40);
          v12(v9);
        }
      }
    }

    v14 = 0;
    goto LABEL_21;
  }

  v14 = 4294894824;
LABEL_21:
  v15 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return v14;
}

BOOL protocolDriverSenderLocal_IsHoseRegistered(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 24) == a2;
  v6 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t protocolDriverSenderLocal_DeregisterHose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 24))
  {
    v11 = 4294894825;
    APSLogErrorAt(0);
    APSSignalErrorAt(4294894825);
    goto LABEL_13;
  }

  pthread_once(&APSEndpointStreamAudioHoseProtocolGetProtocolID_sRegisterAPSEndpointStreamAudioHoseProtocolTypeOnce, registerAPSEndpointStreamAudioHoseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v6 = *(ProtocolVTable + 16)) == 0)
  {
    v11 = 4294954508;
LABEL_12:
    APSLogErrorAt(v11);
    goto LABEL_13;
  }

  v7 = *(v6 + 56);
  if (!v7)
  {
    v11 = 4294954514;
    goto LABEL_12;
  }

  v8 = *(v6 + 56);
  v9 = v7(a2, 0, 0);
  if (v9)
  {
    v11 = v9;
    goto LABEL_12;
  }

  v10 = *(DerivedStorage + 24);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 24) = 0;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 50 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = 0;
LABEL_13:
  v12 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t protocolDriverSenderLocal_RegisterHose(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    v13 = 4294894825;
    APSLogErrorAt(0);
    APSSignalErrorAt(4294894825);
LABEL_22:
    v16 = *(DerivedStorage + 8);
    FigSimpleMutexUnlock();
    return v13;
  }

  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *(DerivedStorage + 24) = v5;
  v6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v6)
  {
    APSLogErrorAt(0);
    v13 = 4294960568;
    goto LABEL_22;
  }

  v7 = v6;
  pthread_once(&APSEndpointStreamAudioHoseProtocolGetProtocolID_sRegisterAPSEndpointStreamAudioHoseProtocolTypeOnce, registerAPSEndpointStreamAudioHoseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0)
  {
    v10 = *(v9 + 56);
    if (v10)
    {
      v11 = *(v9 + 56);
      v12 = v10(a2, &protocolDriverSenderLocal_RegisterHose_callbacks, v7);
      if (!v12)
      {
        if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 50 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v13 = 0;
        goto LABEL_15;
      }

      v13 = v12;
    }

    else
    {
      v13 = 4294954514;
    }
  }

  else
  {
    v13 = 4294954508;
  }

  APSLogErrorAt(v13);
LABEL_15:
  v14 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  CFRelease(v7);
  return v13;
}

uint64_t protocolDriverSenderLocal_copyAudioDataBBufs(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277CC0898];
  v30 = *(MEMORY[0x277CC0898] + 16);
  if (!a3)
  {
    v15 = 4294894825;
    APSLogErrorAt(0);
    return v15;
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 30 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = *(DerivedStorage + 16);
  Copy = FigCFArrayCreateCopy();
  if (!Copy)
  {
    APSLogErrorAt(0);
    v15 = 4294894826;
    goto LABEL_17;
  }

  v11 = Copy;
  v12 = *(DerivedStorage + 16);
  FigCFArrayRemoveAllValues();
  LastValue = FigCFArrayGetLastValue();
  if (!LastValue)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v31 = LastValue;
  v14 = APSAPAPDecodeHeader(_APSAPAPBBufDecodeReadCallback, &v31, &v29, 0);
  v15 = v14;
  if (!v14 && *(&v31 + 1) != 15)
  {
    v15 = 4294960587;
    goto LABEL_30;
  }

  if (v14)
  {
LABEL_30:
    v24 = v15;
    goto LABEL_20;
  }

  v16 = v29;
  *(DerivedStorage + 32) = v29;
  v17 = v30;
  *(DerivedStorage + 48) = v30;
  v18 = *(DerivedStorage + 24);
  v27 = v16;
  v28 = v17;
  pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v20 = *(ProtocolVTable + 16)) == 0)
  {
    v15 = 4294954508;
    goto LABEL_19;
  }

  v21 = *(v20 + 8);
  if (!v21)
  {
    v15 = 4294954514;
    goto LABEL_19;
  }

  v22 = *(v20 + 8);
  v31 = v27;
  v32 = v28;
  v15 = v21(v18, &v31);
  if (v15)
  {
LABEL_19:
    v24 = v15;
LABEL_20:
    APSLogErrorAt(v24);
LABEL_21:
    v25 = *(DerivedStorage + 8);
    FigSimpleMutexUnlock();
    CFRelease(v11);
    goto LABEL_22;
  }

  *a3 = v11;
LABEL_17:
  v23 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
LABEL_22:
  CFRelease(v5);
  return v15;
}

uint64_t protocolDriverSenderLocal_FlushFromTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 50 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    time = *a2;
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  v4 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  time = *a2;
  time2 = *(DerivedStorage + 32);
  if (CMTimeCompare(&time, &time2) < 0)
  {
    v6 = *&a2->value;
    *(DerivedStorage + 48) = a2->epoch;
    *(DerivedStorage + 32) = v6;
    v7 = *(DerivedStorage + 24);
    time2 = *a2;
    pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        v11 = *(v9 + 8);
        time = time2;
        v5 = v10(v7, &time);
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v5 = 4294954514;
      }
    }

    else
    {
      v5 = 4294954508;
    }

    APSLogErrorAt(v5);
    goto LABEL_14;
  }

  v5 = 0;
LABEL_14:
  v12 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t protocolDriverSenderLocal_Flush()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 50 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 16);
  FigCFArrayRemoveAllValues();
  v3 = MEMORY[0x277CC08F0];
  v12 = *MEMORY[0x277CC08F0];
  *(DerivedStorage + 32) = *MEMORY[0x277CC08F0];
  v4 = *(v3 + 16);
  *(DerivedStorage + 48) = v4;
  v5 = *(DerivedStorage + 24);
  pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v7 = *(ProtocolVTable + 16);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *(v7 + 8);
        v13 = v12;
        v14 = v4;
        v8(v5, &v13);
      }
    }
  }

  v10 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t protocolDriverSenderLocal_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = 4294894825;
LABEL_11:
    APSLogErrorAt(0);
    return v3;
  }

  if (!a3)
  {
    v3 = 4294894825;
    goto LABEL_11;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 30 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294954509;
}

uint64_t protocolDriverSenderLocal_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v13 = 4294894825;
LABEL_16:
    APSLogErrorAt(0);
    return v13;
  }

  if (!a4)
  {
    v13 = 4294894825;
    goto LABEL_16;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_BufferFullnessCount"))
  {
    v8 = *(v7 + 8);
    FigSimpleMutexLock();
    v9 = CMBaseObjectGetDerivedStorage();
    v10 = *(v9 + 8);
    FigSimpleMutexCheckIsLockedOnThisThread();
    v11 = *(v9 + 16);
    if (v11)
    {
      CFArrayGetCount(v11);
    }

    *a4 = CFNumberCreateInt64();
    v12 = *(v7 + 8);
    FigSimpleMutexUnlock();
    if (*a4)
    {
      return 0;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294894826;
    }
  }

  else
  {
    if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 30 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294954509;
  }
}

__CFString *protocolDriverSenderLocal_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSAudioProtocolDriverSenderLocal %p>", a1);
  return Mutable;
}

uint64_t protocolDriverSenderLocal_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    pthread_once(&APSEndpointStreamAudioHoseProtocolGetProtocolID_sRegisterAPSEndpointStreamAudioHoseProtocolTypeOnce, registerAPSEndpointStreamAudioHoseProtocolType);
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v4 = *(ProtocolVTable + 16);
      if (v4)
      {
        v5 = *(v4 + 56);
        if (v5)
        {
          v6 = *(v4 + 56);
          v5(v2, 0, 0);
        }
      }
    }

    v7 = *(DerivedStorage + 24);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 24) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v8 = *(DerivedStorage + 8);

  return FigSimpleMutexDestroy();
}

uint64_t APSSettingsSetUseXPCHelper(int a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = 4294960561;
  APSLogErrorAt(4294960561);
  return v1;
}

__CFArray *APSSettingsCopyKeys(int *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    v9 = -6728;
    if (!a1)
    {
      return Mutable;
    }

    goto LABEL_7;
  }

  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF010];
  v5 = CFPreferencesCopyKeyList(@"com.apple.airplay", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v5)
  {
    v6 = v5;
    v11.length = CFArrayGetCount(v5);
    v11.location = 0;
    CFArrayAppendArray(Mutable, v6, v11);
    CFRelease(v6);
  }

  v7 = CFPreferencesCopyKeyList(@"com.apple.coremedia", v3, v4);
  if (v7)
  {
    v8 = v7;
    v12.length = CFArrayGetCount(v7);
    v12.location = 0;
    CFArrayAppendArray(Mutable, v8, v12);
    CFRelease(v8);
  }

  v9 = 0;
  if (a1)
  {
LABEL_7:
    *a1 = v9;
  }

  return Mutable;
}

uint64_t APSSettingsIsFeatureEnabled(const __CFString *a1)
{
  if (APSSettingsIsFeatureEnabled_sFeatureCacheOnce != -1)
  {
    dispatch_once(&APSSettingsIsFeatureEnabled_sFeatureCacheOnce, &__block_literal_global_740);
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(APSSettingsIsFeatureEnabled_sFeatureCache, a1);
  if (Value)
  {
    IsFeatureEnabledInDomain = CFBooleanGetValue(Value);
  }

  else
  {
    v6 = 0;
    if (APSSettingsGetInt64IfPresent(a1, &v6))
    {
      IsFeatureEnabledInDomain = v6 != 0;
    }

    else
    {
      IsFeatureEnabledInDomain = APSSettingsIsFeatureEnabledInDomain();
    }

    v4 = MEMORY[0x277CBED28];
    if (!IsFeatureEnabledInDomain)
    {
      v4 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(APSSettingsIsFeatureEnabled_sFeatureCache, a1, *v4);
  }

  FigSimpleMutexUnlock();
  return IsFeatureEnabledInDomain;
}

uint64_t APSSettingsIsFeatureEnabledInDomain()
{
  v0 = CFStringGetOrCopyCStringUTF8();
  if (!v0)
  {
    v0 = CFStringGetOrCopyCStringUTF8();
    if (!v0)
    {
      return _os_feature_enabled_impl();
    }
  }

  APSLogErrorAt(v0);
  return 0;
}

uint64_t __APSSettingsIsFeatureEnabled_block_invoke()
{
  APSSettingsIsFeatureEnabled_sFeatureCache = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = FigSimpleMutexCreate();
  APSSettingsIsFeatureEnabled_sFeatureCacheMutex = result;
  return result;
}

const void *APSSettingsGetCString(const __CFString *a1, uint64_t a2, uint64_t a3, int *a4)
{
  result = APSSettingsCopyValueEx(a1, 0, a4);
  if (result)
  {
    v5 = result;
    v6 = CFGetCString();
    CFRelease(v5);
    return v6;
  }

  return result;
}

void APSSettingsGetDouble(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    CFGetDouble();
    CFRelease(v3);
  }
}

uint64_t APSSettingsGetInt8(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetInt64Ranged();
    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t APSSettingsGetUInt8(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetInt64Ranged();
    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t APSSettingsGetInt16(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetInt64Ranged();
    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t APSSettingsGetUInt16(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetInt64Ranged();
    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t APSSettingsGetInt32(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetInt64Ranged();
  CFRelease(v3);
  return v4;
}

uint64_t APSSettingsGetUInt32(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetInt64Ranged();
  CFRelease(v3);
  return v4;
}

const void *APSSettingsGetUInt64(const __CFString *a1, int *a2)
{
  result = APSSettingsCopyValueEx(a1, 0, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetInt64();
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t APSSettingsGetInt8IfPresent(const __CFString *a1, _BYTE *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetUInt8IfPresent(const __CFString *a1, _BYTE *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetInt16IfPresent(const __CFString *a1, _WORD *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetUInt16IfPresent(const __CFString *a1, _WORD *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetInt32IfPresent(const __CFString *a1, _DWORD *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetUInt32IfPresent(const __CFString *a1, _DWORD *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetUInt64IfPresent(const __CFString *a1, uint64_t *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsSetCString(const __CFString *a1, const char *a2, CFIndex a3)
{
  if (a3 == -1)
  {
    v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
  }

  else
  {
    v4 = CFStringCreateWithBytes(0, a2, a3, 0x8000100u, 0);
  }

  v5 = v4;
  if (v4)
  {
    if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
    {
      v6 = @"com.apple.coremedia";
    }

    else
    {
      v6 = @"com.apple.airplay";
    }

    CFPreferencesSetAppValue(a1, v5, v6);
    CFRelease(v5);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960579;
  }
}

uint64_t APSSettingsSetValue(const __CFString *a1, const void *a2)
{
  if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
  {
    v4 = @"com.apple.coremedia";
  }

  else
  {
    v4 = @"com.apple.airplay";
  }

  CFPreferencesSetAppValue(a1, a2, v4);
  return 0;
}

uint64_t APSSettingsSetNumber(const __CFString *a1, CFNumberType a2, const void *a3)
{
  v4 = CFNumberCreate(0, a2, a3);
  if (v4)
  {
    v5 = v4;
    if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
    {
      v6 = @"com.apple.coremedia";
    }

    else
    {
      v6 = @"com.apple.airplay";
    }

    CFPreferencesSetAppValue(a1, v5, v6);
    CFRelease(v5);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960596;
  }
}

uint64_t APSSettingsSetInt64(const __CFString *a1)
{
  Int64 = CFNumberCreateInt64();
  if (Int64)
  {
    v3 = Int64;
    if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
    {
      v4 = @"com.apple.coremedia";
    }

    else
    {
      v4 = @"com.apple.airplay";
    }

    CFPreferencesSetAppValue(a1, v3, v4);
    CFRelease(v3);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960596;
  }
}

uint64_t APSSettingsRemoveValue(const __CFString *a1)
{
  if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
  {
    v2 = @"com.apple.coremedia";
  }

  else
  {
    v2 = @"com.apple.airplay";
  }

  CFPreferencesSetAppValue(a1, 0, v2);
  return 0;
}

uint64_t APSSettingsSynchronize()
{
  CFPreferencesAppSynchronize(@"com.apple.airplay");

  return CFPreferencesAppSynchronize(@"com.apple.coremedia");
}

uint64_t APSAudioFormatDescriptionListCreateWithASBDArray(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  v13 = 0;
  cf = 0;
  if (a3 && (Length = CFDataGetLength(theData), Length > 0x27))
  {
    v7 = Length;
    BytePtr = CFDataGetBytePtr(theData);
    appended = APSAudioFormatDescriptionListCreate(a1, &cf);
    if (appended)
    {
      v11 = appended;
    }

    else
    {
      v10 = v7 / 0x28;
      while (1)
      {
        appended = ASBDToAPAudioFormatIndex(BytePtr, -65536, &v13);
        if (appended)
        {
          v11 = appended;
          goto LABEL_12;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(v13, cf, 0);
        if (appended)
        {
          break;
        }

        BytePtr += 40;
        if (!--v10)
        {
          v11 = 0;
          *a3 = cf;
          return v11;
        }
      }

      v11 = appended;
    }

LABEL_12:
    APSLogErrorAt(appended);
  }

  else
  {
    APSLogErrorAt(0);
    v11 = 4294954516;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(uint64_t a1, uint64_t a2, int a3)
{
  cf = 0;
  v5 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], a1, 0, &cf);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v5 = APSAudioFormatDescriptionListAddFormat(a2, cf);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      if (!a3)
      {
        v6 = 0;
        goto LABEL_7;
      }

      v5 = APSAudioFormatDescriptionListSetDefaultFormat(a2, cf);
      v6 = v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }
  }

  APSLogErrorAt(v5);
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t APSAudioFormatDescriptionListCreateASBDArray(const __CFAllocator *a1, uint64_t a2, const __CFData **a3)
{
  theArray = 0;
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  v5 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a2, &theArray);
  if (v5)
  {
    v15 = v5;
    APSLogErrorAt(v5);
    goto LABEL_9;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFDataCreateMutable(a1, 40 * Count);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    v15 = 4294954510;
LABEL_9:
    if (theArray)
    {
      CFRelease(theArray);
    }

    return v15;
  }

  v8 = Mutable;
  CFDataSetLength(Mutable, 40 * Count);
  BytePtr = CFDataGetBytePtr(v8);
  if (Count < 1)
  {
LABEL_8:
    v15 = 0;
    *a3 = v8;
    goto LABEL_9;
  }

  v10 = BytePtr;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    if (!ValueAtIndex)
    {
      break;
    }

    v13 = ValueAtIndex[1];
    v14 = ValueAtIndex[2];
    *(v10 + 4) = *(ValueAtIndex + 6);
    *v10 = v13;
    *(v10 + 1) = v14;
    v10 += 40;
    if (Count == ++v11)
    {
      goto LABEL_8;
    }
  }

  result = APSLogErrorAt(0);
  __break(1u);
  return result;
}

uint64_t APSAudioFormatDescriptionGetPCMASBD(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1)
    {
      if (*(a1 + 24) == 1819304813)
      {
        result = 0;
        v5 = *(a1 + 16);
        v6 = *(a1 + 32);
        *(a2 + 32) = *(a1 + 48);
        *a2 = v5;
        *(a2 + 16) = v6;
      }

      else
      {
        BitsPerChannel = APAudioFormatIndexGetBitsPerChannel(*(a1 + 64));
        result = 0;
        if (BitsPerChannel == ((BitsPerChannel + 7) & 0x38))
        {
          v8 = 12;
        }

        else
        {
          v8 = 20;
        }

        *a2 = *(a1 + 16);
        *(a2 + 8) = 1819304813;
        *(a2 + 12) = v8;
        v9 = *(a1 + 44);
        v10 = v9 * ((BitsPerChannel + 7) >> 3);
        *(a2 + 16) = v10;
        *(a2 + 20) = 1;
        *(a2 + 24) = v10;
        *(a2 + 28) = v9;
        *(a2 + 32) = BitsPerChannel;
        *(a2 + 36) = 0;
      }
    }

    else
    {
      result = APSLogErrorAt(0);
      __break(1u);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t APSAudioFormatDescriptionListCreateASRDArrayPCM(const __CFAllocator *a1, uint64_t a2, const __CFData **a3)
{
  theArray = 0;
  if (!a3)
  {
    APSLogErrorAt(0);
    v6 = 0;
    v23 = 4294954516;
LABEL_18:
    free(v6);
    return v23;
  }

  v6 = malloc_type_calloc(0x28uLL, 1uLL, 0x1E59C682uLL);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a2, &theArray);
  if (v7)
  {
    v23 = v7;
    APSLogErrorAt(v7);
    goto LABEL_16;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFDataCreateMutable(a1, 56 * Count);
  if (!Mutable)
  {
LABEL_22:
    APSLogErrorAt(0);
    v23 = 4294954510;
LABEL_16:
    if (theArray)
    {
      CFRelease(theArray);
    }

    goto LABEL_18;
  }

  v10 = Mutable;
  CFDataSetLength(Mutable, 56 * Count);
  BytePtr = CFDataGetBytePtr(v10);
  if (Count < 1)
  {
LABEL_15:
    v23 = 0;
    *a3 = v10;
    goto LABEL_16;
  }

  v12 = BytePtr;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
    if (!ValueAtIndex)
    {
      break;
    }

    v15 = ValueAtIndex;
    if (*(ValueAtIndex + 6) == 1819304813)
    {
      v16 = (ValueAtIndex + 2);
    }

    else
    {
      BitsPerChannel = APAudioFormatIndexGetBitsPerChannel(ValueAtIndex[8]);
      *v6 = v15[2];
      if (BitsPerChannel == ((BitsPerChannel + 7) & 0x38))
      {
        v18 = 12;
      }

      else
      {
        v18 = 20;
      }

      v6[2] = 1819304813;
      v6[3] = v18;
      v19 = *(v15 + 11);
      v20 = v19 * ((BitsPerChannel + 7) >> 3);
      v6[4] = v20;
      v6[5] = 1;
      v6[6] = v20;
      v6[7] = v19;
      v6[8] = BitsPerChannel;
      v6[9] = 0;
      v16 = v6;
    }

    v22 = *v16;
    v21 = *(v16 + 1);
    *(v12 + 4) = *(v16 + 4);
    *v12 = v22;
    *(v12 + 1) = v21;
    *&v21 = *v12;
    *(v12 + 5) = *v12;
    *(v12 + 6) = v21;
    v12 += 56;
    if (Count == ++v13)
    {
      goto LABEL_15;
    }
  }

  result = APSLogErrorAt(0);
  __break(1u);
  return result;
}

uint64_t APSAudioFormatDescriptionListCreateAdvertisementArray(const __CFAllocator *a1, uint64_t a2, CFMutableArrayRef *a3)
{
  theArray = 0;
  if (a3)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a2, &theArray);
      if (v7)
      {
        v12 = v7;
        APSLogErrorAt(v7);
        CFRelease(v6);
      }

      else
      {
        for (i = 0; ; ++i)
        {
          Count = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          if (i >= Count)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          if (ValueAtIndex)
          {
            v11 = ValueAtIndex[8];
          }

          FigCFArrayAppendInt64();
        }

        v12 = 0;
        *a3 = v6;
      }
    }

    else
    {
      APSLogErrorAt(0);
      v12 = 4294954510;
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v12;
}

uint64_t APSAudioFormatDescriptionCreateAndAppendAudioFormatToArray(uint64_t a1, __CFArray *a2)
{
  value = 0;
  if (a2)
  {
    v3 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], a1, 0, &value);
    v4 = v3;
    if (v3)
    {
      APSLogErrorAt(v3);
    }

    else
    {
      CFArrayAppendValue(a2, value);
    }

    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v4;
}

uint64_t APSAudioFormatDescriptionListCreateWithAdvertisementArray(const __CFAllocator *a1, const __CFArray *a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = 0;
      if (!a2)
      {
        goto LABEL_5;
      }

LABEL_4:
      for (i = CFArrayGetCount(a2); v8 < i; i = 0)
      {
        CFArrayGetValueAtIndex(a2, v8);
        UInt64 = FigCFNumberGetUInt64();
        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToArray(UInt64, v7);
        if (appended == -6735)
        {
          if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        else
        {
          v12 = appended;
          if (appended)
          {
            APSLogErrorAt(appended);
            goto LABEL_18;
          }
        }

        ++v8;
        if (a2)
        {
          goto LABEL_4;
        }

LABEL_5:
        ;
      }

      v13 = APSAudioFormatDescriptionListCreateWithAudioFormatDescriptionArray(a1, v7, &cf);
      v12 = v13;
      if (v13)
      {
        APSLogErrorAt(v13);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        *a3 = cf;
        cf = 0;
      }

LABEL_18:
      CFRelease(v7);
    }

    else
    {
      APSLogErrorAt(0);
      return 4294954510;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v12;
}

uint64_t APSAudioFormatDescriptionListCreateWithLegacyAudioFormatMask(const __CFAllocator *a1, unint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      for (i = 0; i != 64; ++i)
      {
        if ((a2 >> i))
        {
          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToArray(i, v7);
          if (appended == -6735)
          {
            if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }
          }

          else
          {
            v10 = appended;
            if (appended)
            {
              APSLogErrorAt(appended);
              goto LABEL_16;
            }
          }
        }
      }

      v11 = APSAudioFormatDescriptionListCreateWithAudioFormatDescriptionArray(a1, v7, &cf);
      v10 = v11;
      if (v11)
      {
        APSLogErrorAt(v11);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        *a3 = cf;
        cf = 0;
      }

LABEL_16:
      CFRelease(v7);
    }

    else
    {
      APSLogErrorAt(0);
      return 4294954510;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v10;
}

uint64_t APSAudioFormatDescriptionListCopyRichestFormatAsFigEndpointStreamAudioFormatDescription(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v8 = 0;
  cf = 0;
  v5 = APSAudioFormatDescriptionListCopyRichestFormat(a2, &cf);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v5 = APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription(a1, cf, &v8);
    v6 = v5;
    if (!v5)
    {
      *a3 = v8;
      v8 = 0;
      goto LABEL_4;
    }
  }

  APSLogErrorAt(v5);
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t APSAudioFormatDescriptionListCreateFigEndpointStreamAudioFormatDescriptionArray(const __CFAllocator *a1, uint64_t a2, __CFArray **a3)
{
  value = 0;
  theArray = 0;
  if (a3)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a2, &theArray);
      if (v8)
      {
        v13 = v8;
      }

      else
      {
        if (!theArray || (Count = CFArrayGetCount(theArray), Count < 1))
        {
LABEL_11:
          v13 = 0;
          *a3 = v7;
          goto LABEL_12;
        }

        v10 = Count;
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
          v8 = APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription(a1, ValueAtIndex, &value);
          if (v8)
          {
            break;
          }

          CFArrayAppendValue(v7, value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          if (v10 == ++v11)
          {
            goto LABEL_11;
          }
        }

        v13 = v8;
      }

      APSLogErrorAt(v8);
      CFRelease(v7);
      if (value)
      {
        CFRelease(value);
      }
    }

    else
    {
      APSLogErrorAt(0);
      v13 = 4294954510;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v13 = 4294954516;
  }

LABEL_12:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v13;
}

uint64_t APSAudioFormatDescriptionListCreateWithFigEndpointStreamAudioFormatDescriptionArray(const __CFAllocator *a1, const __CFArray *a2, CFTypeRef *a3)
{
  v13 = 0;
  cf = 0;
  if (a3)
  {
    v6 = APSAudioFormatDescriptionListCreate(a1, &v13);
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      if (!a2 || (Count = CFArrayGetCount(a2), Count < 1))
      {
LABEL_11:
        v11 = 0;
        *a3 = v13;
        v13 = 0;
        goto LABEL_12;
      }

      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
        v6 = APSAudioFormatDescriptionCreateWithFigEndpointStreamAudioFormatDescription(a1, ValueAtIndex, &cf);
        if (v6)
        {
          v11 = v6;
          goto LABEL_19;
        }

        v6 = APSAudioFormatDescriptionListAddFormat(v13, cf);
        if (v6)
        {
          break;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v8 == ++v9)
        {
          goto LABEL_11;
        }
      }

      v11 = v6;
    }

LABEL_19:
    APSLogErrorAt(v6);
  }

  else
  {
    APSLogErrorAt(0);
    v11 = 4294954516;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v11;
}

void APSAudioFormatDescriptionListCopyFilterFormatsForCurrentBufferedSenderWithEndpointStreamsInfo(const __CFAllocator *a1, const void *a2, int a3, int a4, int a5, CFTypeRef *a6)
{
  v19 = 0;
  cf = 0;
  IsFeatureEnabled = APSSettingsIsFeatureEnabled(@"BufferedAPAC");
  if (a6)
  {
    v13 = IsFeatureEnabled;
    v14 = MGGetProductType();
    if (!IsAppleTV() || v14 == 1110205732)
    {
      if (APSIsAPMSpeaker_sCheckOnce != -1)
      {
        dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
      }

      if (APSIsAPMSpeaker_sIsAPMSpeaker)
      {
        if (!a5)
        {
          appended = APSAudioFormatDescriptionListCreate(a1, &cf);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionListCreateIntersectionList(a2, cf, &v19);
          if (appended)
          {
            goto LABEL_62;
          }

          goto LABEL_55;
        }

        if (!FigGetCFPreferenceNumberWithDefault())
        {
          appended = APSAudioFormatDescriptionListCreate(a1, &cf);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(23, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(39, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(40, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          if (v13)
          {
            appended = APSAudioFormatDescriptionListAddSupportedFormatsForAPACToList(cf);
            if (appended)
            {
              goto LABEL_62;
            }
          }

          v16 = cf;
          if (APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce != -1)
          {
            dispatch_once(&APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce, &__block_literal_global_39);
          }

          appended = APSAudioFormatDescriptionListAddListToSource(v16, APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionListCreateIntersectionList(a2, cf, &v19);
          if (appended)
          {
            goto LABEL_62;
          }

          goto LABEL_55;
        }
      }

      else
      {
        if (APSIsIPhone_onceToken != -1)
        {
          dispatch_once(&APSIsIPhone_onceToken, &__block_literal_global_28);
        }

        if ((APSIsIPhone_sIsiPhone & 1) == 0 && APSIsIPad_onceToken != -1)
        {
          dispatch_once(&APSIsIPad_onceToken, &__block_literal_global_30);
        }
      }
    }

    else if (a3 != 2)
    {
      if (APSSettingsGetIntWithOverrideAndDefault(@"DisableATVWHASurround", 0, 0))
      {
        appended = APSAudioFormatDescriptionListCreate(a1, &cf);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, cf, 0);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionListCreateIntersectionList(a2, cf, &v19);
        if (appended)
        {
          goto LABEL_62;
        }

LABEL_55:
        *a6 = v19;
        v19 = 0;
        goto LABEL_56;
      }

      if (a4)
      {
        appended = APSAudioFormatDescriptionListCreate(a1, &cf);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, cf, 0);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, cf, 0);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, cf, 0);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, cf, 0);
        if (appended)
        {
          goto LABEL_62;
        }

        if (v13)
        {
          appended = APSAudioFormatDescriptionListAddSupportedFormatsForAPACToList(cf);
          if (appended)
          {
            goto LABEL_62;
          }
        }

        v17 = cf;
        if (APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce != -1)
        {
          dispatch_once(&APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce, &__block_literal_global_39);
        }

        appended = APSAudioFormatDescriptionListAddListToSource(v17, APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList);
        if (appended)
        {
          goto LABEL_62;
        }

        APSAudioFormatDescriptionListCreateIntersectionList(a2, cf, &v19);
        goto LABEL_55;
      }
    }

    if (a2)
    {
      v18 = CFRetain(a2);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    goto LABEL_55;
  }

  appended = 0;
LABEL_62:
  APSLogErrorAt(appended);
LABEL_56:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

uint64_t APSAudioFormatDescriptionListAddSupportedFormatsForAPACToList(uint64_t a1)
{
  if (APSSettingsGetIntWithOverrideAndDefault(@"bufferedAPACStereo", 0, 0))
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(64, a1, 0);
    if (appended)
    {
      v3 = appended;
      goto LABEL_19;
    }
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(65, a1, 0);
  if (appended)
  {
    v3 = appended;
LABEL_19:
    APSLogErrorAt(appended);
    return v3;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(66, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(67, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(76, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(77, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(68, a1, 0);
  v3 = appended;
  if (appended)
  {
    goto LABEL_19;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(92, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t __APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_block_invoke()
{
  APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList);
  v0 = APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList;
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce, &__block_literal_global_104);
  }

  v1 = APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed;

  return APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough(v0, 0, v1);
}

uint64_t APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough(uint64_t a1, int a2, int a3)
{
  if (APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_initOnce, &__block_literal_global_775);
  }

  if (IsAppleTV())
  {
    if (!(APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughEnabled | a2))
    {
      return 0;
    }
  }

  else
  {
    if (APSIsAPMSpeaker_sCheckOnce != -1)
    {
      dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
    }

    if (APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughEnabled)
    {
      v6 = APSIsAPMSpeaker_sIsAPMSpeaker == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
    if (!a2 && (v7 & 1) != 0)
    {
      return 0;
    }
  }

  v8 = APSAudioFormatDescriptionListAddSupportedFormatsForAACToList(a1);
  if (v8)
  {
    v9 = v8;
LABEL_37:
    APSLogErrorAt(v8);
    return v9;
  }

  v8 = APSAudioFormatDescriptionListAddSupportedFormatsForALACToList(a1);
  if (v8)
  {
    v9 = v8;
    goto LABEL_37;
  }

  if (a3)
  {
    if (APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughDDPAtmosEnabled)
    {
      v8 = APSAudioFormatDescriptionListAddSupportedDDPFormatsForPassthrough(a1);
      if (v8)
      {
        v9 = v8;
        goto LABEL_37;
      }
    }
  }

  if (!APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughEncryptedEnabled)
  {
    goto LABEL_27;
  }

  v8 = APSAudioFormatDescriptionListAddSupportedEncryptedAACFormatsForPassthrough(a1);
  if (v8)
  {
    v9 = v8;
    goto LABEL_37;
  }

  v8 = APSAudioFormatDescriptionListAddSupportedEncryptedALACFormatsForPassthrough(a1);
  if (v8)
  {
    v9 = v8;
    goto LABEL_37;
  }

  if (a3)
  {
    if (APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughDDPAtmosEnabled)
    {
      v8 = APSAudioFormatDescriptionListAddSupportedEncryptedDDPFormatsForPassthrough(a1);
      if (v8)
      {
        v9 = v8;
        goto LABEL_37;
      }
    }
  }

LABEL_27:
  v8 = APSAudioFormatDescriptionListAddSupportedMP3FormatsForPassthrough(a1);
  v9 = v8;
  if (v8)
  {
    goto LABEL_37;
  }

  return v9;
}

uint64_t APSAudioFormatDescriptionListAddSupportedFormatsForAACToList(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_11;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(23, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_11;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(39, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_11:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(40, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAddSupportedFormatsForALACToList(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce, &__block_literal_global_61);
  }

  if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_lossless16bitSupported != 1)
  {
    if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce != -1)
    {
      dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce, &__block_literal_global_67);
    }

    if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_lossless20bitSupported == 1)
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(85, a1, 0);
      if (!appended)
      {
        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, a1, 0);
        v3 = appended;
        if (appended)
        {
          goto LABEL_21;
        }

        return v3;
      }

      v3 = appended;
    }

    else
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(19, a1, 0);
      if (appended)
      {
        v3 = appended;
      }

      else
      {
        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, a1, 0);
        v3 = appended;
        if (!appended)
        {
          return v3;
        }
      }
    }

LABEL_21:
    APSLogErrorAt(appended);
    return v3;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, a1, 0);
  v3 = appended;
  if (appended)
  {
    goto LABEL_21;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAddSupportedDDPFormatsForPassthrough(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(49, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(50, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(51, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(52, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_13:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(53, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAddSupportedEncryptedAACFormatsForPassthrough(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(70, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(54, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(55, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(56, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(71, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(72, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(57, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(58, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_21:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(60, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAddSupportedEncryptedALACFormatsForPassthrough(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce, &__block_literal_global_61);
  }

  if ((APSAudioFormatDescriptionIsBufferedLossless16bitSupported_lossless16bitSupported & 1) == 0)
  {
    if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce != -1)
    {
      dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce, &__block_literal_global_67);
    }

    if ((APSAudioFormatDescriptionIsBufferedLossless20bitSupported_lossless20bitSupported & 1) == 0)
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(73, a1, 0);
      if (appended)
      {
        v2 = appended;
      }

      else
      {
        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(61, a1, 0);
        v2 = appended;
        if (!appended)
        {
          return v2;
        }
      }

      APSLogErrorAt(appended);
      return v2;
    }
  }

  return 0;
}

uint64_t APSAudioFormatDescriptionListAddSupportedEncryptedDDPFormatsForPassthrough(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(62, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(63, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(33, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(34, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_13:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(35, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAddSupportedMP3FormatsForPassthrough(uint64_t a1)
{
  if (a1)
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(74, a1, 0);
    v3 = appended;
    if (appended)
    {
      APSLogErrorAt(appended);
    }

    else
    {
      v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(75, a1, 0);
      if (v4)
      {
        v6 = v4;
        APSLogErrorAt(v4);
        return v6;
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v3;
}

uint64_t __APSAudioFormatDescriptionIsBufferedLossless20bitSupported_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  if (result)
  {
    APSAudioFormatDescriptionIsBufferedLossless20bitSupported_lossless20bitSupported = 1;
  }

  return result;
}

uint64_t __APSAudioFormatDescriptionIsBufferedLossless16bitSupported_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  if (result)
  {
    APSAudioFormatDescriptionIsBufferedLossless16bitSupported_lossless16bitSupported = 1;
  }

  return result;
}

uint64_t __APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_block_invoke()
{
  APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughEnabled = APSSettingsIsFeatureEnabled(@"BufferedPassthrough");
  APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughDDPAtmosEnabled = APSSettingsIsFeatureEnabled(@"BufferedPassthroughDDP");
  result = APSSettingsIsFeatureEnabled(@"BufferedPassthroughEncrypted");
  APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughEncryptedEnabled = result;
  return result;
}

uint64_t APSAudioFormatDescriptionListCopyTransportFormatDescriptionForSourceFormatDescription(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v24 = 0;
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  cf = 0;
  IsFeatureEnabled = APSSettingsIsFeatureEnabled(@"BufferedAPAC");
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"bufferedAPACStereo", 0, 0);
  if (IsFeatureEnabled)
  {
    v8 = IntWithOverrideAndDefault == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_238;
  }

  ChannelLayoutTag = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
  ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
  if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = *(ASBD + 28);
  if (v12 > 9)
  {
    if (v12 == 10)
    {
      if (!IsFeatureEnabled)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v12 == 12)
      {
        if (!IsFeatureEnabled)
        {
          goto LABEL_101;
        }

        v13 = *MEMORY[0x277CBECE8];
      }

      else
      {
        if (v12 != 16)
        {
LABEL_204:
          if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
          {
            v23 = *(ASBD + 28);
            LogPrintF();
          }

          goto LABEL_208;
        }

        if (!IsFeatureEnabled)
        {
          goto LABEL_101;
        }

        v13 = *MEMORY[0x277CBECE8];
        v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 92, 0, &cf);
        if (v14)
        {
          goto LABEL_238;
        }

        if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
        {
          goto LABEL_208;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v13, 68, 0, &cf);
      if (v14)
      {
        goto LABEL_238;
      }

      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    v15 = *MEMORY[0x277CBECE8];
    if (ChannelLayoutTag > 12845065)
    {
      if (ChannelLayoutTag == 12845066)
      {
        v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 77, 0, &cf);
        if (v14)
        {
          goto LABEL_238;
        }

        if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
        {
          goto LABEL_208;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (gLogCategory_APSAudioFormatDescriptionUtils > 50 || gLogCategory_APSAudioFormatDescriptionUtils == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_108;
        }

        goto LABEL_100;
      }

      v16 = 13238284;
    }

    else
    {
      if (ChannelLayoutTag == 12582924)
      {
LABEL_56:
        v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 77, 0, &cf);
        if (v14)
        {
          goto LABEL_238;
        }

        if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
        {
          goto LABEL_208;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 76, 0, &cf);
        if (v14)
        {
          goto LABEL_238;
        }

        if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
        {
          goto LABEL_208;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (gLogCategory_APSAudioFormatDescriptionUtils > 50 || gLogCategory_APSAudioFormatDescriptionUtils == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

LABEL_100:
        LogPrintF();
        goto LABEL_101;
      }

      v16 = 12648464;
    }

    if (ChannelLayoutTag != v16)
    {
      v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 76, 0, &cf);
      if (v14)
      {
        goto LABEL_238;
      }

      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils > 50 || gLogCategory_APSAudioFormatDescriptionUtils == -1 && !_LogCategory_Initialize())
      {
        if (ChannelLayoutTag == 13238284)
        {
          goto LABEL_108;
        }

        goto LABEL_115;
      }

      goto LABEL_100;
    }

    goto LABEL_56;
  }

  if ((v12 - 1) < 2)
  {
    goto LABEL_155;
  }

  if (v12 == 6)
  {
    v15 = *MEMORY[0x277CBECE8];
    goto LABEL_32;
  }

  if (v12 != 8)
  {
    goto LABEL_204;
  }

LABEL_101:
  if (ChannelLayoutTag > 12845065)
  {
    if (ChannelLayoutTag == 12845066)
    {
      goto LABEL_107;
    }

    v17 = 13238284;
  }

  else
  {
    if (ChannelLayoutTag == 12582924)
    {
      goto LABEL_107;
    }

    v17 = 12648464;
  }

  if (ChannelLayoutTag != v17)
  {
LABEL_115:
    if (APAudioFormatIsAudioChannelLayoutTag7_1(ChannelLayoutTag) && IsFeatureEnabled)
    {
      v15 = *MEMORY[0x277CBECE8];
      v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 67, 0, &cf);
      if (v14)
      {
        goto LABEL_238;
      }

      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_33;
    }

    v15 = *MEMORY[0x277CBECE8];
    if (IsFeatureEnabled)
    {
      v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 66, 0, &cf);
      if (v14)
      {
        goto LABEL_238;
      }

      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 40, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 42, 0, &cf);
    if (v14)
    {
LABEL_238:
      APSLogErrorAt(v14);
      goto LABEL_208;
    }

    goto LABEL_146;
  }

LABEL_107:
  v15 = *MEMORY[0x277CBECE8];
  if (IsFeatureEnabled)
  {
LABEL_108:
    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 67, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 66, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 40, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 42, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

LABEL_146:
  if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_32:
  if (IsFeatureEnabled)
  {
LABEL_33:
    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 65, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 39, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 41, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_155:
  v18 = *MEMORY[0x277CBECE8];
  if (v9)
  {
    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 64, 0, &cf);
    if (!v14)
    {
      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_164;
    }

    goto LABEL_238;
  }

LABEL_164:
  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v18, 20, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf) && audioFormatDescriptionUtils_contentFormatDescriptionWarrantsLosslessTransport())
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v18, 86, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf) && audioFormatDescriptionUtils_contentFormatDescriptionWarrantsLosslessTransport())
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v18, 21, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf) && audioFormatDescriptionUtils_contentFormatDescriptionWarrantsLosslessTransport())
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v18, 23, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (!APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v18, 22, 0, &cf);
    if (!v14)
    {
      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils > 50)
      {
        goto LABEL_208;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      goto LABEL_204;
    }

    goto LABEL_238;
  }

LABEL_208:
  v19 = cf;
  if (cf)
  {
    v20 = APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription(*MEMORY[0x277CBECE8], cf, &v24);
    v21 = v20;
    if (v20)
    {
      APSLogErrorAt(v20);
    }

    else
    {
      cf = 0;
      if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        APSAudioFormatDescriptionCopyDebugString(v19, &cf);
        if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      *a3 = v24;
      v24 = 0;
    }

    CFRelease(v19);
  }

  else
  {
    cf = 0;
    if (gLogCategory_APSAudioFormatDescriptionUtils <= 90 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionListCopyDebugString(a2, &cf);
      if (gLogCategory_APSAudioFormatDescriptionUtils <= 90 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v21 = 4294960561;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v21;
}

uint64_t audioFormatDescriptionUtils_contentFormatDescriptionWarrantsLosslessTransport()
{
  ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
  v1 = *(ASBD + 8);
  result = 1;
  if (v1 > 1902928226)
  {
    v3 = v1 == 1902928227;
    v4 = 2053923171;
  }

  else
  {
    v3 = v1 == 1634492771;
    v4 = 1668047203;
  }

  v5 = v3 || v1 == v4;
  if (!v5 && *ASBD <= 48000.0)
  {
    return 0;
  }

  return result;
}

uint64_t APSAudioFormatDescriptionListGetForBufferedSender()
{
  if (APSAudioFormatDescriptionListGetForBufferedSender_sOnce != -1)
  {
    dispatch_once_f(&APSAudioFormatDescriptionListGetForBufferedSender_sOnce, &APSAudioFormatDescriptionListGetForBufferedSender_sList, audioFormatDescriptionUtils_CreateAudioFormatDescriptionListForBufferedSender);
  }

  return APSAudioFormatDescriptionListGetForBufferedSender_sList;
}

uint64_t audioFormatDescriptionUtils_CreateAudioFormatDescriptionListForBufferedSender(void *a1)
{
  v5 = 0;
  IsFeatureEnabled = APSSettingsIsFeatureEnabled(@"BufferedAPAC");
  result = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v5);
  if (result)
  {
    goto LABEL_28;
  }

  result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v5, 1);
  if (result)
  {
    goto LABEL_28;
  }

  result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(23, v5, 0);
  if (result)
  {
    goto LABEL_28;
  }

  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce, &__block_literal_global_104);
  }

  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed == 1)
  {
    result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(39, v5, 0);
    if (result)
    {
      goto LABEL_28;
    }

    result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(40, v5, 0);
    if (result)
    {
      goto LABEL_28;
    }
  }

  if (APSAudioFormatDescriptionIsBufferedLosslessAllowed_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionIsBufferedLosslessAllowed_initOnce, &__block_literal_global_55);
  }

  if (APSAudioFormatDescriptionIsBufferedLosslessAllowed_losslessAllowed == 1)
  {
    result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, v5, 1);
    if (result)
    {
      goto LABEL_28;
    }

    if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce != -1)
    {
      dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce, &__block_literal_global_61);
    }

    if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_lossless16bitSupported == 1)
    {
      result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, v5, 1);
      if (result)
      {
        goto LABEL_28;
      }
    }

    if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce != -1)
    {
      dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce, &__block_literal_global_67);
    }

    if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_lossless20bitSupported == 1)
    {
      result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, v5, 1);
      if (result)
      {
        goto LABEL_28;
      }
    }
  }

  if (IsFeatureEnabled)
  {
    if (APAudioFormatAPACIsAllowedForCurrentDeviceAsSender())
    {
      result = APSAudioFormatDescriptionListAddSupportedFormatsForAPACToList(v5);
      if (result)
      {
        goto LABEL_28;
      }
    }
  }

  v4 = v5;
  if (APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce, &__block_literal_global_39);
  }

  result = APSAudioFormatDescriptionListAddListToSource(v4, APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList);
  if (result)
  {
LABEL_28:
    result = APSLogErrorAt(result);
  }

  *a1 = v5;
  return result;
}

void __APSAudioFormatDescriptionIsBufferedLosslessAllowed_block_invoke()
{
  if (FigGetCFPreferenceNumberWithDefault())
  {
    APSAudioFormatDescriptionIsBufferedLosslessAllowed_losslessAllowed = 1;
  }

  if (IsAppleTV())
  {
    goto LABEL_7;
  }

  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
LABEL_7:
    APSAudioFormatDescriptionIsBufferedLosslessAllowed_losslessAllowed = 1;
  }
}

uint64_t APSAudioFormatDescriptionListCreateForMediumLatencyReceiver()
{
  v3 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v3);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, v3, 1), appended))
  {
    APSLogErrorAt(appended);
  }

  else
  {
    v1 = MGGetProductType();
    if (v1 == 1540760353 || v1 == 4240173202 || v1 == 2702125347)
    {
      APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, v3, 1);
      APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(41, v3, 0);
    }
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListCreateForBufferedReceiverWithAudioCapabilities(const __CFArray *a1, uint64_t a2, char *a3)
{
  v13 = 0;
  IsFeatureEnabled = APSSettingsIsFeatureEnabled(@"BufferedAPAC");
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v13);
  if (appended)
  {
    goto LABEL_49;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v13, 0);
  if (appended)
  {
    goto LABEL_49;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(23, v13, 1);
  if (appended)
  {
    goto LABEL_49;
  }

  if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce, &__block_literal_global_61);
  }

  if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_lossless16bitSupported == 1)
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, v13, 0);
    if (appended)
    {
      goto LABEL_49;
    }
  }

  if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce, &__block_literal_global_67);
  }

  if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_lossless20bitSupported == 1)
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, v13, 0);
    if (appended)
    {
      goto LABEL_49;
    }
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, v13, 0);
  if (appended)
  {
    goto LABEL_49;
  }

  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_110);
  }

  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed == 1)
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(39, v13, 0);
    if (appended)
    {
      goto LABEL_49;
    }

    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(40, v13, 0);
    if (appended)
    {
      goto LABEL_49;
    }
  }

  v7 = v13;
  if (APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_73_812);
  }

  appended = APSAudioFormatDescriptionListAddListToSource(v7, APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_audioFormatList);
  if (appended)
  {
    goto LABEL_49;
  }

  if (IsFeatureEnabled)
  {
    if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce != -1)
    {
      dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_110);
    }

    if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed == 1)
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(65, v13, 0);
      if (!appended)
      {
        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(66, v13, 0);
        if (!appended)
        {
          v8 = 0;
          v9 = 0;
          if (!a1)
          {
            goto LABEL_29;
          }

LABEL_28:
          for (i = CFArrayGetCount(a1); v8 < i; i = 0)
          {
            CFArrayGetValueAtIndex(a1, v8);
            UInt32 = FigCFNumberGetUInt32();
            if (UInt32 == 1819304813)
            {
              if (FigCFNumberGetUInt32() >= 8)
              {
                appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(67, v13, 0);
                if (appended)
                {
                  goto LABEL_49;
                }
              }

              if (FigCFNumberGetUInt32() >= 6)
              {
                appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(65, v13, 0);
                if (appended)
                {
                  goto LABEL_49;
                }
              }
            }

            else if (UInt32 == 1836343851)
            {
              appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(76, v13, 0);
              if (appended)
              {
                goto LABEL_49;
              }

              appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(67, v13, 0);
              if (appended)
              {
                goto LABEL_49;
              }

              appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(77, v13, 0);
              if (appended)
              {
                goto LABEL_49;
              }

              appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(68, v13, 0);
              if (appended)
              {
                goto LABEL_49;
              }

              appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(92, v13, 0);
              if (appended)
              {
                goto LABEL_49;
              }

              v9 = 1;
            }

            ++v8;
            if (a1)
            {
              goto LABEL_28;
            }

LABEL_29:
            ;
          }

          goto LABEL_46;
        }
      }

LABEL_49:
      APSLogErrorAt(appended);
      return v13;
    }
  }

  v9 = 0;
LABEL_46:
  if (a3)
  {
    *a3 = v9;
  }

  return v13;
}

uint64_t __APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_block_invoke()
{
  APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_audioFormatList);
  v0 = APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_audioFormatList;
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_110);
  }

  v1 = APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed;

  return APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough(v0, 0, v1);
}

CFTypeRef APSAudioFormatDescriptionListCreateForBufferedLocalReceiverEchoCancellationReference()
{
  cf = 0;
  v5 = 0;
  v0 = APSAudioFormatDescriptionListCreateForBufferedReceiverWithAudioCapabilities(0, 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &cf);
    if (v2 || (v2 = APSAudioFormatDescriptionListAddStereoFormatsToList(cf), v2) || (v2 = APSAudioFormatDescriptionListAdd6ChannelsFormatsToList(cf), v2) || (v2 = APSAudioFormatDescriptionListAdd8ChannelsFormatsToList(cf), v2))
    {
      APSLogErrorAt(v2);
    }

    else
    {
      APSAudioFormatDescriptionListCreateIntersectionList(v1, cf, &v5);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v1);
    return v5;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t APSAudioFormatDescriptionListAddStereoFormatsToList(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(3, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(5, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(7, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(9, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(11, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(13, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(15, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(17, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(46, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(19, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(23, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(24, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(25, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(49, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(70, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(54, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(71, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(72, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(57, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(73, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(61, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(62, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(74, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_61:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(75, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAdd6ChannelsFormatsToList(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(44, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(47, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(41, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(39, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(50, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(55, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(58, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_19:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(63, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAdd8ChannelsFormatsToList(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(38, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(48, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(40, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(51, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(56, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(60, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_19:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(33, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListCreateForRealTimeSender(int a1)
{
  v5 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v5);
  if (appended)
  {
    goto LABEL_15;
  }

  if (a1)
  {
    if (APSSettingsIsFeatureEnabled(@"ScreenSpatialAudioSender"))
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, v5, 1);
      if (appended)
      {
        goto LABEL_15;
      }

      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v5, 0);
    if (!appended)
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(24, v5, 0);
      if (!appended)
      {
        goto LABEL_10;
      }
    }

LABEL_15:
    APSLogErrorAt(appended);
    return v5;
  }

  v3 = 1;
LABEL_10:
  if (APSSettingsIsFeatureEnabled(@"APAT_HLA"))
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v5, 0);
    if (appended)
    {
      goto LABEL_15;
    }
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, v5, v3);
  if (appended)
  {
    goto LABEL_15;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(11, v5, 0);
  if (appended)
  {
    goto LABEL_15;
  }

  return v5;
}

uint64_t APSAudioFormatDescriptionListCreateForMediumLatencySender()
{
  v2 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v2);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, v2, 1), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(41, v2, 0), appended))
  {
    APSLogErrorAt(appended);
  }

  return v2;
}

uint64_t APSAudioFormatDescriptionListCreateForRealTimeReceiver()
{
  v2 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v2);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(24, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, v2, 1), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(11, v2, 0), appended))
  {
    APSLogErrorAt(appended);
  }

  return v2;
}

uint64_t APSAudioFormatDescriptionListCreateForRealTimeLocalReceiver()
{
  v2 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v2);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(24, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, v2, 1), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(11, v2, 0), appended))
  {
    APSLogErrorAt(appended);
  }

  return v2;
}

uint64_t APSAudioFormatDescriptionListCreateForLowLatencySender()
{
  v2 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v2);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(25, v2, 1), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, v2, 0), appended))
  {
    APSLogErrorAt(appended);
  }

  return v2;
}

uint64_t APSAudioFormatDescriptionListCreateIntersection(uint64_t a1, int a2, int a3, int a4)
{
  v14 = 0;
  v15 = 0;
  if (a2)
  {
    v5 = APSAudioFormatDescriptionListCreateForLowLatencySender();
  }

  else if (a3)
  {
    v5 = APSAudioFormatDescriptionListCreateForMediumLatencySender();
  }

  else
  {
    v5 = APSAudioFormatDescriptionListCreateForRealTimeSender(a4);
  }

  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 24);
  }

  else
  {
    APSLogErrorAt(0);
    v7 = 0;
  }

  IntersectionList = APSAudioFormatDescriptionListCreateIntersectionList(a1, v6, &v15);
  if (IntersectionList)
  {
    APSLogErrorAt(IntersectionList);
    return v15;
  }

  v9 = APSAudioFormatDescriptionListContainsFormat(v15, v7);
  v10 = v15;
  if (v9)
  {
    ValueAtIndex = v7;
  }

  else
  {
    if (!APSAudioFormatDescriptionListGetFormatCount(v15))
    {
      goto LABEL_14;
    }

    APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(v15, &v14);
    v12 = v15;
    ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
    v10 = v12;
  }

  APSAudioFormatDescriptionListSetDefaultFormat(v10, ValueAtIndex);
LABEL_14:
  if (v6)
  {
    CFRelease(v6);
  }

  return v15;
}

uint64_t APSAudioFormatDescriptionListCreateForLowLatencyReceiver()
{
  v4 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v4);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(25, v4, 1), appended) || ((v1 = MGGetProductType(), v1 != 1540760353) && v1 != 4240173202 && v1 != 2702125347 ? (v2 = 0) : (v2 = 1), APSSettingsGetIntWithOverrideAndDefault(@"lowLatencyAudioSurroundReceiver", 0, v2) && (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, v4, 0), appended)))
  {
    APSLogErrorAt(appended);
  }

  return v4;
}

uint64_t APSAudioFormatDescriptionListCreateForScreenReceiver()
{
  v2 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v2);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v2, 1), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(24, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(11, v2, 0), appended))
  {
    APSLogErrorAt(appended);
  }

  return v2;
}

uint64_t APSAudioFormatDescriptionListAddSupportedTranscodeFormats(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  v2 = APSAudioFormatDescriptionListAddSupportedFormatsForAACToList(a1);
  if (v2)
  {
    v3 = v2;
    goto LABEL_9;
  }

  v2 = APSAudioFormatDescriptionListAddSupportedFormatsForALACToList(a1);
  if (v2)
  {
    v3 = v2;
    goto LABEL_9;
  }

  v2 = APSAudioFormatDescriptionListAddSupportedFormatsForAPACToList(a1);
  v3 = v2;
  if (v2)
  {
LABEL_9:
    APSLogErrorAt(v2);
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListCreateFilteredListWithTranscodeFormats(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v9 = 0;
  if (!a2)
  {
    APSLogErrorAt(0);
    v6 = 4294954516;
    goto LABEL_11;
  }

  v4 = *MEMORY[0x277CBECE8];
  if (!a1)
  {
    v5 = APSAudioFormatDescriptionListCreate(v4, &v9);
    if (v5)
    {
      v6 = v5;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v5 = APSAudioFormatDescriptionListCreate(v4, &cf);
  if (v5)
  {
    v6 = v5;
    goto LABEL_18;
  }

  v5 = APSAudioFormatDescriptionListAddSupportedTranscodeFormats(cf);
  if (v5)
  {
    v6 = v5;
    goto LABEL_18;
  }

  v5 = APSAudioFormatDescriptionListCreateIntersectionList(a1, cf, &v9);
  if (!v5)
  {
LABEL_8:
    v6 = 0;
    *a2 = v9;
    v9 = 0;
    goto LABEL_9;
  }

  v6 = v5;
LABEL_18:
  APSLogErrorAt(v5);
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t APSAudioFormatDescriptionIsPassthroughFormatForCurrentDeviceAsSender(const void *a1)
{
  if (APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce, &__block_literal_global_39);
  }

  v2 = APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList;

  return APSAudioFormatDescriptionListContainsFormat(v2, a1);
}

uint64_t APSEndpointStreamAudioHoseSBARCreate(uint64_t a1, __CFString *a2, const void *a3, const void *a4, const void *a5, int a6, const void *a7, int a8, const __CFDictionary *a9, CFTypeRef *a10)
{
  v185 = *MEMORY[0x277D85DE8];
  v173 = 0;
  cf = 0;
  if (!a4)
  {
    v39 = 4294894965;
    v17 = 0;
    goto LABEL_189;
  }

  if (!a5)
  {
    v39 = 4294894965;
    v17 = 0;
    goto LABEL_189;
  }

  if (!a3)
  {
    v39 = 4294894965;
    v17 = 0;
    goto LABEL_189;
  }

  if (a8 <= 0)
  {
    v39 = 4294894965;
    v17 = 0;
    goto LABEL_189;
  }

  if (!a10)
  {
    v39 = 4294894965;
    v17 = 0;
    goto LABEL_189;
  }

  v15 = a4;
  if (hoseSBAR_getClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&hoseSBAR_getClassID_sRegisterOnce, &hoseSBAR_getClassID_sClassID, hoseSBAR_registerBaseClass);
  }

  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    v39 = v17;
    goto LABEL_189;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF();
  v19 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v19;
  if (!v19)
  {
    goto LABEL_251;
  }

  SNPrintF();
  v20 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 352) = v20;
  if (!v20)
  {
    goto LABEL_251;
  }

  SNPrintF();
  v21 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 360) = v21;
  if (!v21)
  {
    goto LABEL_251;
  }

  *(DerivedStorage + 288) = FigSimpleMutexCreate();
  *(DerivedStorage + 308) = 36;
  v22 = MEMORY[0x277CC0898];
  v171 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 324) = *MEMORY[0x277CC0898];
  v170 = *(v22 + 16);
  *(DerivedStorage + 340) = v170;
  *(DerivedStorage + 312) = 0;
  *(DerivedStorage + 16) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  *(DerivedStorage + 32) = a3;
  CFRetain(a3);
  *(DerivedStorage + 64) = v15;
  CFRetain(v15);
  *(DerivedStorage + 72) = a7;
  if (a7)
  {
    CFRetain(a7);
  }

  *(DerivedStorage + 280) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 282) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 283) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
    {
LABEL_18:
      LogPrintF();
      goto LABEL_20;
    }

    if (_LogCategory_Initialize())
    {
      v163 = *(DerivedStorage + 283);
      goto LABEL_18;
    }
  }

LABEL_20:
  if (*(DerivedStorage + 282))
  {
    v23 = 1;
  }

  else
  {
    v23 = in_audio_mx_server_process() ^ 1;
  }

  *(DerivedStorage + 128) = APSSettingsGetIntWithOverrideAndDefault(@"isHoseSBARSynchronizerTimeMediaTime", 0, v23) != 0;
  *(DerivedStorage + 80) = CFRetain(a5);
  *(DerivedStorage + 704) = CFRetain(a5);
  CMTimeMake(time, a8, 1);
  *(DerivedStorage + 208) = *time;
  *(DerivedStorage + 224) = *&time[16];
  if (!a9)
  {
    v29 = *(DerivedStorage + 129);
    goto LABEL_78;
  }

  v24 = CFDictionaryContainsKey(a9, @"StreamID");
  Value = a2;
  if (v24)
  {
    Value = CFDictionaryGetValue(a9, @"StreamID");
  }

  *(DerivedStorage + 24) = CFRetain(Value);
  if (CFDictionaryContainsKey(a9, @"ClusterInfo"))
  {
    v26 = CFDictionaryGetValue(a9, @"ClusterInfo");
    *(DerivedStorage + 40) = CFRetain(v26);
  }

  if (CFDictionaryContainsKey(a9, @"ClientPID"))
  {
    v27 = CFDictionaryGetValue(a9, @"ClientPID");
    v28 = CFRetain(v27);
  }

  else
  {
    v28 = 0;
  }

  *(DerivedStorage + 48) = v28;
  if (CFDictionaryContainsKey(a9, @"AudioSessionID"))
  {
    v30 = CFDictionaryGetValue(a9, @"AudioSessionID");
    v31 = CFRetain(v30);
  }

  else
  {
    v31 = 0;
  }

  *(DerivedStorage + 296) = v31;
  v32 = CFDictionaryGetValue(a9, @"ClientAuditToken");
  v33 = *(DerivedStorage + 296);
  LODWORD(v182) = 0;
  LODWORD(valuePtr) = 0;
  v183 = 0;
  if (v32 && v33)
  {
    v34 = v32;
    if (CFDataGetLength(v32) != 32 || (BytePtr = CFDataGetBytePtr(v34), *time = *BytePtr, *&time[16] = *(BytePtr + 1), (*time & *&time[8] & *&time[16] & *&time[24]) == -1))
    {
      v39 = 4294894965;
      APSLogErrorAt(0);
      goto LABEL_260;
    }

    CFNumberGetValue(v33, kCFNumberSInt32Type, &valuePtr);
    v36 = CFStringCreateF();
    if (v182)
    {
      APSLogErrorAt(v182);
    }

    else
    {
      v37 = *MEMORY[0x277CBECE8];
      *theData = *time;
      v176 = *&time[16];
      v38 = FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID();
      LODWORD(v182) = v38;
      if (v38)
      {
        APSLogErrorAt(v38);
        if (v183)
        {
          CFRelease(v183);
        }
      }

      else
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(DerivedStorage + 272) = v183;
        v183 = 0;
      }
    }

    if (v36)
    {
      CFRelease(v36);
    }
  }

  v39 = v182;
  if (v182)
  {
LABEL_260:
    v17 = v39;
    goto LABEL_189;
  }

  *(DerivedStorage + 281) = CFDictionaryGetInt64() != 0;
  if (CFDictionaryGetInt64())
  {
    *(DerivedStorage + 144) = APSSettingsGetIntWithOverrideAndDefault(@"hoseSBARAudioIOAssertionDurationSecs", 0, 120);
  }

  if (CFDictionaryContainsKey(a9, @"VBRBitRates"))
  {
    v40 = CFDictionaryGetValue(a9, @"VBRBitRates");
  }

  else
  {
    v40 = 0;
  }

  if (CFDictionaryContainsKey(a9, @"SupportedAudioFormats"))
  {
    v39 = CFDictionaryGetValue(a9, @"SupportedAudioFormats");
    *time = 0;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionListCopyDebugString(v39, time);
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (*time)
      {
        CFRelease(*time);
      }
    }
  }

  else
  {
    v39 = 0;
  }

  v41 = CMBaseObjectGetDerivedStorage();
  theData[0] = 0;
  if (v39)
  {
    ASBDArray = APSAudioFormatDescriptionListCreateASBDArray(*MEMORY[0x277CBECE8], v39, theData);
    if (ASBDArray)
    {
      v39 = ASBDArray;
      APSLogErrorAt(ASBDArray);
      AudioBytesPerSec = 0;
    }

    else
    {
      Length = CFDataGetLength(theData[0]);
      if (Length <= 0x27)
      {
        APSLogErrorAt(0);
        AudioBytesPerSec = hoseSBAR_getAudioBytesPerSec(0, v40, v160, v161, v162);
        v39 = 0;
      }

      else
      {
        v44 = a2;
        v45 = a6;
        v46 = v15;
        v47 = Length / 0x28;
        v48 = CFDataGetBytePtr(theData[0]);
        AudioBytesPerSec = 0;
        do
        {
          v53 = hoseSBAR_getAudioBytesPerSec(v48, v40, v49, v50, v51);
          if (v53 > AudioBytesPerSec)
          {
            AudioBytesPerSec = v53;
          }

          v48 = (v48 + 40);
          --v47;
        }

        while (v47);
        v39 = 0;
        v15 = v46;
        a6 = v45;
        a2 = v44;
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    AudioBytesPerSec = hoseSBAR_getAudioBytesPerSec(0, v40, v157, v158, v159);
  }

  *time = *(v41 + 208);
  *&time[16] = *(v41 + 224);
  *(v41 + 56) = (CMTimeGetSeconds(time) * AudioBytesPerSec);
  if (theData[0])
  {
    CFRelease(theData[0]);
  }

  if (v39)
  {
    v17 = v39;
    goto LABEL_189;
  }

  v54 = CFDictionaryGetInt64() != 0;
  v29 = APSSettingsGetIntWithOverrideAndDefault(@"hoseSBAR_isSourceUnordered", 0, v54) != 0;
  *(DerivedStorage + 129) = v29;
LABEL_78:
  if (v29)
  {
    v55 = 250;
  }

  else
  {
    v55 = 5000;
  }

  CMTimeMake(time, v55, 1000);
  *(DerivedStorage + 232) = *time;
  *(DerivedStorage + 248) = *&time[16];
  *(DerivedStorage + 712) = 0;
  *(DerivedStorage + 720) = DerivedStorage + 712;
  v56 = CMBaseObjectGetDerivedStorage();
  v57 = *MEMORY[0x277CC1968];
  if (FigCFEqual())
  {
    if (a6 != 1095778640)
    {
      if (a6 == 1381257248)
      {
        v58 = (v56 + 96);
        v59 = &hoseSBAR_initializeTransportContext_sTransportContext;
        goto LABEL_90;
      }

LABEL_131:
      v39 = 4294894965;
      APSSignalErrorAt(4294894965);
      v17 = 4294894965;
LABEL_189:
      APSLogErrorAt(v17);
      v134 = 0;
      goto LABEL_190;
    }

    v58 = (v56 + 96);
    v59 = &hoseSBAR_initializeTransportContext_sTransportContext_396;
  }

  else
  {
    v60 = *MEMORY[0x277CC1960];
    if (!FigCFEqual() || a6 != 1381257248)
    {
      goto LABEL_131;
    }

    v58 = (v56 + 96);
    v59 = &hoseSBAR_initializeTransportContext_sTransportContext_398;
  }

LABEL_90:
  *v58 = v59;
  if (**(DerivedStorage + 96) == 2)
  {
    *(DerivedStorage + 88) = 0;
    goto LABEL_94;
  }

  v61 = *(DerivedStorage + 80);
  if (!v61)
  {
    APSLogErrorAt(0);
    *(DerivedStorage + 88) = 0;
    goto LABEL_272;
  }

  v62 = *(v61 + 16);
  *(DerivedStorage + 88) = v62;
  if (!v62)
  {
LABEL_272:
    v39 = 4294894965;
    v17 = 0;
    goto LABEL_189;
  }

LABEL_94:
  if (*(DerivedStorage + 129))
  {
    if (hoseSBAR_getCallbacksForSampleBuffersSortedByTransportSeqNum_sOnce != -1)
    {
      dispatch_once(&hoseSBAR_getCallbacksForSampleBuffersSortedByTransportSeqNum_sOnce, &__block_literal_global_441);
    }

    CallbacksForUnsortedSampleBuffers = &hoseSBAR_getCallbacksForSampleBuffersSortedByTransportSeqNum_sCallbacks;
  }

  else
  {
    CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  }

  *(DerivedStorage + 136) = CallbacksForUnsortedSampleBuffers;
  v64 = CMBaseObjectGetDerivedStorage();
  v65 = *(v64 + 32);
  v169 = v15;
  if (FigCFEqual())
  {
    v66 = MEMORY[0x277CC08F0];
    v67 = *MEMORY[0x277CC08F0];
    *(v64 + 160) = *MEMORY[0x277CC08F0];
    v68 = *(v66 + 16);
    *(v64 + 176) = v68;
    *(v64 + 184) = v67;
LABEL_103:
    *(v64 + 200) = v68;
    goto LABEL_104;
  }

  v69 = *(v64 + 32);
  v70 = *MEMORY[0x277CC1960];
  if (FigCFEqual())
  {
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(theData, CFPreferenceNumberWithDefault, 1000);
    CMTimeConvertScale(time, theData, *(v64 + 88), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *(v64 + 160) = *time;
    *(v64 + 176) = *&time[16];
    v72 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(theData, v72, 1000);
    CMTimeConvertScale(time, theData, *(v64 + 88), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *(v64 + 184) = *time;
    v68 = *&time[16];
    goto LABEL_103;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_104:
  v73 = CFDictionaryGetInt64() != 0;
  cf1 = FigCFDictionaryGetValue();
  v74 = CMBaseObjectGetDerivedStorage();
  v75 = *(v74 + 352);
  v76 = CMBaseObjectGetDerivedStorage();
  theData[0] = 0;
  v182 = 0;
  v183 = 0;
  valuePtr = 0;
  v77 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v79 = MEMORY[0x277CBED28];
  if (Mutable)
  {
    if (APSIsAPMSpeaker_sCheckOnce != -1)
    {
      dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
    }

    if ((APSIsAPMSpeaker_sIsAPMSpeaker || IsAppleTV()) && APSSettingsIsFeatureEnabled(@"BufferedPassthroughDDP"))
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD63A8], *v79);
    }

    if (*(v76 + 283))
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD63B0], *v79);
    }

    v80 = *MEMORY[0x277CD63C0];
    *(v76 + 129);
    CFDictionarySetInt64();
    v81 = *MEMORY[0x277CD63B8];
    CFDictionarySetInt64();
    if (FigServer_IsAirplayd() || !FigIsAirplaydEnabled() && in_audio_mx_server_process())
    {
      RemoteWithOptions = FigSampleBufferAudioRendererCreateWithOptions();
      if (RemoteWithOptions)
      {
        v39 = RemoteWithOptions;
      }

      else
      {
        RemoteWithOptions = FigSampleBufferAudioRendererCentralCreateWithOptions();
        if (RemoteWithOptions)
        {
          v39 = RemoteWithOptions;
        }

        else
        {
          CFRetain(cf);
          CFRetain(theData[0]);
          *time = MEMORY[0x277D85DD0];
          *&time[8] = 0x40000000;
          *&time[16] = __hoseSBAR_createSynchronizerAndRenderer_embedded_block_invoke;
          *&time[24] = &__block_descriptor_tmp_414;
          v178 = cf;
          v179 = theData[0];
          v180 = v73;
          dispatch_async(v75, time);
          *(v74 + 104) = theData[0];
          theData[0] = 0;
          RemoteWithOptions = FigSampleBufferRenderSynchronizerCreateWithOptions();
          if (RemoteWithOptions)
          {
            v39 = RemoteWithOptions;
          }

          else
          {
            RemoteWithOptions = FigSampleBufferRenderSynchronizerCentralCreate();
            if (!RemoteWithOptions)
            {
              *(v74 + 112) = valuePtr;
              valuePtr = 0;
              if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
              {
LABEL_138:
                v39 = 0;
                goto LABEL_139;
              }

              if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_138;
                }

                v85 = *(v74 + 112);
              }

              v165 = *(v74 + 104);
LABEL_130:
              LogPrintF();
              goto LABEL_138;
            }

            v39 = RemoteWithOptions;
          }
        }
      }
    }

    else
    {
      RemoteWithOptions = FigSampleBufferAudioRendererCreateRemoteWithOptions();
      if (RemoteWithOptions)
      {
        v39 = RemoteWithOptions;
      }

      else
      {
        v83 = *(v74 + 104);
        v84 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v84)
        {
          v84(v83, *MEMORY[0x277CD6410], *MEMORY[0x277CBED10]);
        }

        RemoteWithOptions = FigSampleBufferRenderSynchronizerCreateRemoteWithOptions();
        if (!RemoteWithOptions)
        {
          if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_138;
          }

          v164 = *(v74 + 112);
          v166 = *(v74 + 104);
          goto LABEL_130;
        }

        v39 = RemoteWithOptions;
      }
    }

    APSLogErrorAt(RemoteWithOptions);
  }

  else
  {
    APSLogErrorAt(0);
    v39 = 4294894966;
  }

LABEL_139:
  if (v183)
  {
    CFRelease(v183);
  }

  if (theData[0])
  {
    CFRelease(theData[0]);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v39)
  {
    v128 = v39;
    goto LABEL_187;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v86 = *MEMORY[0x277CD63D8];
  v87 = *(v74 + 104);
  v88 = *(v74 + 352);
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  v89 = *MEMORY[0x277CD63F8];
  v90 = *(v74 + 104);
  v91 = *(v74 + 352);
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  v92 = *MEMORY[0x277CD63E0];
  v93 = *(v74 + 104);
  v94 = *(v74 + 352);
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  v95 = *MEMORY[0x277CD63E8];
  v96 = *(v74 + 104);
  v97 = *(v74 + 352);
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  v98 = *MEMORY[0x277CD63F0];
  v99 = *(v74 + 104);
  v100 = *(v74 + 352);
  FigNotificationCenterAddWeakListener();
  v101 = *(v74 + 104);
  v102 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v102)
  {
    v102(v101, *MEMORY[0x277CD6418], *MEMORY[0x277CBED28]);
  }

  if (!*(v74 + 283))
  {
    if (cf1)
    {
      if (CFEqual(cf1, @"LowQualityZeroLatency"))
      {
        v129 = MEMORY[0x277CD6450];
        goto LABEL_181;
      }

      if (CFEqual(cf1, @"TimeDomain"))
      {
        v129 = MEMORY[0x277CD6460];
        goto LABEL_181;
      }

      if (CFEqual(cf1, @"Spectral"))
      {
        v129 = MEMORY[0x277CD6458];
LABEL_181:
        v130 = *v129;
        if (!*v129)
        {
          goto LABEL_153;
        }

        v131 = *(v74 + 104);
        v132 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v132)
        {
          v133 = v132(v131, *MEMORY[0x277CD6408], v130);
          if (!v133)
          {
            goto LABEL_153;
          }

          v39 = v133;
        }

        else
        {
          v39 = 4294954514;
        }

        v128 = v39;
        goto LABEL_187;
      }

      if (!CFEqual(cf1, @"Varispeed"))
      {
        v39 = 4294894965;
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_188;
      }
    }

    else if (!APSSettingsGetIntWithOverrideAndDefault(@"hoseSBARPrefersVarispeedTimePitchAlgorithm", 0, 1))
    {
      goto LABEL_153;
    }

    v129 = MEMORY[0x277CD6468];
    goto LABEL_181;
  }

LABEL_153:
  v103 = *(v74 + 112);
  v104 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v104)
  {
    v39 = 4294954514;
LABEL_169:
    v128 = v39;
LABEL_187:
    APSLogErrorAt(v128);
LABEL_188:
    v17 = v39;
    goto LABEL_189;
  }

  v105 = v104(v103, v74 + 120);
  if (v105)
  {
    v39 = v105;
    goto LABEL_169;
  }

  v106 = CMBaseObjectGetDerivedStorage();
  if (!*(v106 + 120))
  {
    v39 = 4294894965;
    APSLogErrorAt(0);
LABEL_283:
    v128 = v39;
    goto LABEL_187;
  }

  v107 = v106;
  v108 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v108)
  {
    APSLogErrorAt(0);
LABEL_277:
    v39 = 4294894966;
    goto LABEL_283;
  }

  v109 = v108;
  CMNotificationCenterGetDefaultLocalCenter();
  v110 = *MEMORY[0x277CC0908];
  v111 = *(v107 + 120);
  v112 = *(v107 + 352);
  FigNotificationCenterAddWeakListener();
  v113 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v107 + 352));
  if (!v113)
  {
    APSLogErrorAt(0);
    CFRelease(v109);
    goto LABEL_277;
  }

  v114 = v113;
  v115 = CFRetain(v109);
  dispatch_set_context(v114, v115);
  dispatch_source_set_event_handler_f(v114, hoseSBAR_purgeTimerFired);
  dispatch_source_set_cancel_handler_f(v114, MEMORY[0x277CBE550]);
  dispatch_activate(v114);
  v116 = CMTimebaseAddTimerDispatchSource(*(v107 + 120), v114);
  if (v116)
  {
    v39 = v116;
    APSLogErrorAt(v116);
    v117 = 0;
    goto LABEL_281;
  }

  v117 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, *(v107 + 352));
  if (!v117)
  {
    APSLogErrorAt(0);
    v39 = 4294894966;
    goto LABEL_281;
  }

  v118 = CFRetain(v109);
  dispatch_set_context(v117, v118);
  dispatch_source_set_event_handler_f(v117, hoseSBAR_sbarLowWaterTimerFired);
  dispatch_source_set_cancel_handler_f(v117, MEMORY[0x277CBE550]);
  dispatch_activate(v117);
  v119 = CMTimebaseAddTimerDispatchSource(*(v107 + 120), v117);
  if (v119)
  {
    v39 = v119;
    APSLogErrorAt(v119);
LABEL_281:
    CFRelease(v109);
    dispatch_source_cancel(v114);
    dispatch_release(v114);
    if (v117)
    {
      dispatch_source_cancel(v117);
      dispatch_release(v117);
    }

    goto LABEL_283;
  }

  *(v107 + 648) = v114;
  *(v107 + 680) = v117;
  CFRelease(v109);
  CMBaseObjectGetDerivedStorage();
  v121 = *(v74 + 104);
  v120 = *(v74 + 112);
  v122 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v122)
  {
    v39 = 4294954514;
LABEL_174:
    v128 = v39;
    goto LABEL_187;
  }

  v123 = v122(v120, v121);
  if (v123)
  {
    v39 = v123;
    goto LABEL_174;
  }

  if (!*(DerivedStorage + 144))
  {
    goto LABEL_199;
  }

  SNPrintF();
  v124 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v125 = dispatch_queue_create(label, v124);
  *(DerivedStorage + 368) = v125;
  if (!v125)
  {
LABEL_251:
    APSLogErrorAt(0);
    v134 = 0;
LABEL_252:
    v39 = 4294894966;
    goto LABEL_190;
  }

  v17 = APSAudioIOAssertionTimingControllerCreate(a2, (DerivedStorage + 152));
  if (v17)
  {
    v39 = v17;
    goto LABEL_189;
  }

  v126 = *(DerivedStorage + 368);
  if (cf)
  {
    v127 = CFRetain(cf);
  }

  else
  {
    v127 = 0;
  }

  dispatch_async_f(v126, v127, hoseSBAR_renewAudioIOAssertionDispatch);
LABEL_199:
  *(DerivedStorage + 384) = v171;
  *(DerivedStorage + 400) = v170;
  *(DerivedStorage + 408) = v171;
  *(DerivedStorage + 424) = v170;
  *(DerivedStorage + 432) = v171;
  *(DerivedStorage + 448) = v170;
  *(DerivedStorage + 544) = 0x100000000;
  *(DerivedStorage + 528) = kAPSNetworkTimeInvalid;
  *(DerivedStorage + 568) = v170;
  *(DerivedStorage + 552) = v171;
  *(DerivedStorage + 592) = v170;
  *(DerivedStorage + 576) = v171;
  *(DerivedStorage + 616) = v170;
  *(DerivedStorage + 600) = v171;
  *(DerivedStorage + 520) = v170;
  *(DerivedStorage + 504) = v171;
  v137 = MEMORY[0x277CC08C8];
  v138 = *(MEMORY[0x277CC08C8] + 32);
  *(DerivedStorage + 868) = *(MEMORY[0x277CC08C8] + 16);
  *(DerivedStorage + 884) = v138;
  *(DerivedStorage + 852) = *v137;
  *(DerivedStorage + 752) = FigGetCFPreferenceNumberWithDefault();
  v17 = CMBufferQueueCreate(v77, 0, *(DerivedStorage + 136), (DerivedStorage + 656));
  if (v17)
  {
    v39 = v17;
    goto LABEL_189;
  }

  v17 = CMBufferQueueCreate(v77, 0, *(DerivedStorage + 136), (DerivedStorage + 664));
  if (v17)
  {
    v39 = v17;
    goto LABEL_189;
  }

  v139 = FigGetCFPreferenceNumberWithDefault();
  v140 = CFArrayCreateMutable(v77, 0, MEMORY[0x277CBF128]);
  v134 = v140;
  if (!v140)
  {
    goto LABEL_291;
  }

  CFArrayAppendValue(v140, *MEMORY[0x277CD62C0]);
  if (*(DerivedStorage + 129))
  {
    CFArrayAppendValue(v134, @"HoseSBARTransportSeqNum");
  }

  v141 = APSCMSampleBufferMergerCreate(v139, v134, (DerivedStorage + 688));
  if (v141)
  {
    v39 = v141;
    goto LABEL_238;
  }

  v142 = (DerivedStorage + 904);
  *(DerivedStorage + 904) = v171;
  *(DerivedStorage + 920) = v170;
  v143 = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 900) = v143;
  if (v143)
  {
    v144 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(time, v144, 1000);
    *v142 = *time;
    v145 = *&time[16];
    *(DerivedStorage + 920) = *&time[16];
    *time = *v142;
    *&time[16] = v145;
    if (hoseSBAR_setVolumeFadeInCurve(cf, MEMORY[0x277CC08F0], time))
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  *(DerivedStorage + 968) = 0;
  v146 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 936) = v146;
  if (!v146)
  {
    goto LABEL_291;
  }

  v147 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 928) = v147;
  if (!v147 || (v148 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 944) = v148) == 0) || (v149 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 952) = v149) == 0) || (v150 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 960) = v150) == 0))
  {
LABEL_291:
    APSLogErrorAt(0);
    goto LABEL_252;
  }

  v151 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v151)
  {
    v39 = 4294954514;
LABEL_237:
    v141 = v39;
LABEL_238:
    APSLogErrorAt(v141);
    goto LABEL_190;
  }

  v152 = v151(v169, @"SourceClock", v77, &v173);
  if (v152)
  {
    v39 = v152;
    goto LABEL_237;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  v141 = APSClockDriftMonitorCreate(HostTimeClock, v173, 15, 1000, (DerivedStorage + 1000));
  if (v141)
  {
    v39 = v141;
    goto LABEL_238;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v154 = *(DerivedStorage + 1000);
  v155 = *(DerivedStorage + 352);
  v141 = FigNotificationCenterAddWeakListener();
  if (v141)
  {
    v39 = v141;
    goto LABEL_238;
  }

  v141 = APSTimedInfoManagerCreate((DerivedStorage + 992));
  if (v141)
  {
    v39 = v141;
    goto LABEL_238;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v156 = *(DerivedStorage + 992);
  v141 = FigNotificationCenterAddWeakListener();
  if (v141)
  {
    v39 = v141;
    goto LABEL_238;
  }

  v141 = APSTimedInfoManagerResume(*(DerivedStorage + 992), *(DerivedStorage + 120));
  if (v141)
  {
    v39 = v141;
    goto LABEL_238;
  }

  *(DerivedStorage + 256) = -1;
  if (!notify_register_check("com.apple.mediaexperience.fadeinappliedforplaybackhandoff", (DerivedStorage + 256)))
  {
    *(DerivedStorage + 260) = -1;
    if (!notify_register_check("com.apple.mediaexperience.fadeoutappliedforplaybackhandoff", (DerivedStorage + 260)))
    {
      *time = 0;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        APSAudioFormatDescriptionCopyDebugString(*(DerivedStorage + 80), time);
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          v168 = *(DerivedStorage + 88);
          v167 = *(DerivedStorage + 32);
          LogPrintF();
        }

        if (*time)
        {
          CFRelease(*time);
        }
      }

      v39 = 0;
      *a10 = cf;
      cf = 0;
      goto LABEL_192;
    }
  }

  APSLogErrorAt(0);
  v39 = 4294960560;
LABEL_190:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_192:
  if (v173)
  {
    CFRelease(v173);
  }

  if (v134)
  {
    CFRelease(v134);
  }

  v135 = *MEMORY[0x277D85DE8];
  return v39;
}