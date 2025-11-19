uint64_t APSDispatchSyncTask(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v5[0] = &v6;
  v5[1] = a3;
  v5[2] = a2;
  v3 = 4294960591;
  if (a1 && a2)
  {
    dispatch_sync_f(a1, v5, APSDispatchSyncTaskCallback);
    return v6;
  }

  return v3;
}

uint64_t APSDispatchSyncTaskCallback(uint64_t a1)
{
  result = (*(a1 + 16))(*(a1 + 8));
  **a1 = result;
  return result;
}

void APSDispatchAsyncFHelper(NSObject *a1, uint64_t a2, const void *a3, size_t a4)
{
  if (a1)
  {
    if (a2)
    {
      v8 = malloc_type_malloc(a4 + 16, 0x80040803F642BuLL);
      if (v8)
      {
        v9 = v8;
        v10 = v8 + 2;
        if (a3 != 0 && a4 != 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        *v9 = v11;
        v9[1] = a2;
        if (a3 != 0 && a4 != 0)
        {
          memcpy(v10, a3, a4);
        }

        dispatch_async_f(a1, v9, APSDeferredCallback);
      }
    }
  }
}

void APSDeferredCallback(void (**a1)(void))
{
  if (a1)
  {
    a1[1](*a1);

    free(a1);
  }
}

uint64_t APSGetCurrentLocalTimeString(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  gettimeofday(&v7, 0);
  tv_sec = v7.tv_sec;
  v2 = localtime(&tv_sec);
  if (v2 && (v3 = v2, strftime(v9, 0x18uLL, "%Y-%m-%d %H:%M:%S", v2)) && strftime(v8, 0x18uLL, "%z", v3))
  {
    SNPrintF();
  }

  else
  {
    APSLogErrorAt(0);
    a1 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

const void *APSSettingsGetInt64(const __CFString *a1, int *a2)
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

const void *APSSettingsCopyValueEx(const __CFString *a1, uint64_t a2, int *a3)
{
  if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
  {
    v6 = @"com.apple.coremedia";
  }

  else
  {
    v6 = @"com.apple.airplay";
  }

  v7 = CFPreferencesCopyAppValue(a1, v6);
  v8 = v7;
  if (!v7)
  {
    v9 = -6727;
    if (!a3)
    {
      return v8;
    }

    goto LABEL_10;
  }

  if (!a2 || CFGetTypeID(v7) == a2)
  {
    v9 = 0;
    if (!a3)
    {
      return v8;
    }

    goto LABEL_10;
  }

  CFRelease(v8);
  v8 = 0;
  v9 = -6756;
  if (a3)
  {
LABEL_10:
    *a3 = v9;
  }

  return v8;
}

uint64_t APSSettingsGetInt64IfPresent(const __CFString *a1, uint64_t *a2)
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

uint64_t APSSettingsGetBooleanIfPresent(const __CFString *a1, BOOL *a2)
{
  v4 = 0;
  result = APSSettingsGetInt64IfPresent(a1, &v4);
  if (result)
  {
    *a2 = v4 != 0;
  }

  return result;
}

uint64_t APSEventRecorderRecordEventWithFlags(uint64_t a1, int a2, char a3)
{
  v6 = mach_absolute_time();
  Current = CFAbsoluteTimeGetCurrent();

  return APSEventRecorderRecordEventWithFlagsAtTime(a1, a2, a3, v6, Current);
}

uint64_t APSEventRecorderRecordEventWithFlagsAtTime(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    if ((a2 & 0xFFFF000) == *(result + 16) && (a2 & 0xFFFu) < *(result + 104))
    {
      v5 = *(result + 112);
      if ((a3 & 1) == 0 || !*(v5 + 24 * (a2 & 0xFFF)))
      {
        v6 = (v5 + 24 * (a2 & 0xFFF));
        *v6 = a4;
        v6[1] = a5;
      }

      result = *(v5 + 24 * (a2 & 0xFFF) + 16);
      if (result)
      {
        kdebug_trace();
        return 0;
      }
    }

    else
    {
      APSLogErrorAt(0);
      return 4294895134;
    }
  }

  return result;
}

void *priorityDispatchSource_targetQueueEventHandler(void *result)
{
  v1 = result[1];
  if (!*(v1 + 56))
  {
    v2 = result;
    *(v1 + 48) = *result;
    result = (*(v1 + 32))(*(v1 + 24));
    *(v2[1] + 48) = 0;
  }

  return result;
}

uint64_t APSAtomicMessageQueueReadMessage(uint64_t a1, void *__dst)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    goto LABEL_6;
  }

  v4 = atomic_exchange_explicit((a1 + 32), 0, memory_order_acquire);
  if (v4)
  {
    v3 = 0;
    do
    {
      v5 = v3;
      v3 = v4;
      v4 = atomic_load(v4);
      atomic_store(v5, v3);
    }

    while (v4);
    *(a1 + 96) = v3;
LABEL_6:
    v6 = atomic_load(v3);
    *(a1 + 96) = v6;
    memcpy(__dst, v3[1], *(a1 + 24));
    (*(**(a1 + 16) + 24))(*(a1 + 16), v3, *(a1 + 24) + 16, 8);
    return 1;
  }

  return 0;
}

uint64_t APSRealTimeSignalGuts::perform(uint64_t this)
{
  v1 = 2;
  atomic_compare_exchange_strong_explicit((this + 40), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1 == 2)
  {
    return (*(this + 64))(*(this + 56));
  }

  return this;
}

uint64_t APSPriorityDispatchSourceResume(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 56);
  FigSimpleMutexLock();
  if (*(a1 + 88))
  {
    v3 = 4294960573;
  }

  else
  {
    if (*(a1 + 89))
    {
      *(a1 + 89) = 0;
      dispatch_resume(*(a1 + 80));
    }

    v3 = 0;
  }

  v4 = *(a1 + 56);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t ntpClock_ConvertUpTicksToNetworkTime(uint64_t a1, uint64_t a2, void *a3)
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
    *a3 = 0;
    a3[1] = SynchronizedNTPTimeNearUpTicks << 32;
    a3[2] = HIDWORD(SynchronizedNTPTimeNearUpTicks);
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

BOOL ntpClock_isStarted()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *DerivedStorage;
  FigSimpleMutexCheckIsLockedOnThisThread();
  return CFSetGetCount(*(DerivedStorage + 16)) != 0;
}

uint64_t chachaCryptor_EncryptMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 && a3 || a7 < a5)
  {
    goto LABEL_16;
  }

  v15 = CMBaseObjectGetDerivedStorage();
  v16 = 24;
  if (!*v15)
  {
    v16 = 16;
  }

  if (v16 > a9)
  {
LABEL_16:
    APSLogErrorAt(0);
    return 4294895585;
  }

  else
  {
    CFDataGetBytePtr(*(DerivedStorage + 264));
    v17 = (DerivedStorage + 272);
    chacha20_poly1305_init_64x64();
    chacha20_poly1305_add_aad();
    chacha20_poly1305_encrypt();
    chacha20_poly1305_final();
    if (*DerivedStorage)
    {
      *(a8 + 16) = *v17;
    }

    v18 = 0;
    do
    {
      if (++*(v17 + v18))
      {
        v20 = 1;
      }

      else
      {
        v20 = v18 == 7;
      }

      ++v18;
    }

    while (!v20);
    return 0;
  }
}

uint64_t APSPriorityDispatchSourceSuspend(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 56);
  FigSimpleMutexLock();
  if (*(a1 + 88))
  {
    v3 = 4294960573;
  }

  else
  {
    if (!*(a1 + 89))
    {
      *(a1 + 89) = 1;
      dispatch_suspend(*(a1 + 80));
    }

    v3 = 0;
  }

  v4 = *(a1 + 56);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t APSAtomicMessageQueueSendMessage(uint64_t a1, const void *a2)
{
  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16), *(a1 + 24) + 16, 8);
  *v4 = 0;
  v4[1] = (v4 + 2);
  memcpy(v4 + 2, a2, *(a1 + 24));
  v5 = *(a1 + 32);
  atomic_store(v5, v4);
  v6 = v5;
  atomic_compare_exchange_strong((a1 + 32), &v6, v4);
  if (v6 != v5)
  {
    v7 = v6;
    do
    {
      atomic_store(v6, v4);
      atomic_compare_exchange_strong((a1 + 32), &v7, v4);
      v8 = v7 == v6;
      v6 = v7;
    }

    while (!v8);
  }

  return 1;
}

uint64_t APSSettingsGetIntWithOverrideAndDefault(const __CFString *key, CFDictionaryRef theDict, uint64_t a3)
{
  v11 = 0;
  if (theDict && (Value = CFDictionaryGetValue(theDict, key)) != 0)
  {
    v6 = Value;
    CFRetain(Value);
  }

  else
  {
    v7 = APSSettingsCopyValueEx(key, 0, &v11);
    v6 = v7;
    if (v11)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (v8)
    {
      if (!v7)
      {
        return a3;
      }

      goto LABEL_11;
    }
  }

  v9 = CFGetInt64();
  if (v11)
  {
    a3 = a3;
  }

  else
  {
    a3 = v9;
  }

LABEL_11:
  CFRelease(v6);
  return a3;
}

uint64_t APSCarPlayScreenLatencyMs(int a1)
{
  if (a1)
  {
    return APSSettingsGetIntWithOverrideAndDefault(@"screenLatencyCarPlayUSBMs", 0, 25);
  }

  else
  {
    return APSSettingsGetIntWithOverrideAndDefault(@"screenLatencyMs", 0, 75);
  }
}

uint64_t APSAudioStatsCreate(const void *a1, __int128 *a2, int a3, int a4, unsigned int a5, uint64_t *a6)
{
  if (a2 && a6)
  {
    if (APSAudioStatsGetTypeID_once != -1)
    {
      dispatch_once(&APSAudioStatsGetTypeID_once, &__block_literal_global_1635);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v14 = Instance;
      *(Instance + 400) = 0;
      *(Instance + 368) = 0u;
      *(Instance + 384) = 0u;
      *(Instance + 336) = 0u;
      *(Instance + 352) = 0u;
      *(Instance + 304) = 0u;
      *(Instance + 320) = 0u;
      *(Instance + 272) = 0u;
      *(Instance + 288) = 0u;
      *(Instance + 240) = 0u;
      *(Instance + 256) = 0u;
      *(Instance + 208) = 0u;
      *(Instance + 224) = 0u;
      *(Instance + 176) = 0u;
      *(Instance + 192) = 0u;
      *(Instance + 144) = 0u;
      *(Instance + 160) = 0u;
      *(Instance + 112) = 0u;
      *(Instance + 128) = 0u;
      *(Instance + 80) = 0u;
      *(Instance + 96) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 64) = 0u;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      *a6 = Instance;
      v15 = *a2;
      v16 = a2[1];
      *(Instance + 56) = *(a2 + 4);
      *(Instance + 40) = v16;
      *(Instance + 24) = v15;
      *(Instance + 16) = CFRetain(a1);
      LODWORD(v6) = *(v14 + 48);
      v17 = *(v14 + 24);
      *(v14 + 64) = 0u;
      *(v14 + 80) = 0u;
      *(v14 + 96) = 0u;
      *(v14 + 112) = 0u;
      *(v14 + 128) = 0u;
      *(v14 + 144) = 0u;
      *(v14 + 160) = 0u;
      *(v14 + 176) = 0u;
      *(v14 + 192) = 0u;
      *(v14 + 208) = 0u;
      *(v14 + 224) = 0u;
      *(v14 + 240) = 0u;
      *(v14 + 256) = 0u;
      *(v14 + 272) = 0u;
      *(v14 + 288) = 0u;
      *(v14 + 304) = 0;
      *(v14 + 88) = mach_absolute_time();
      *(v14 + 104) = 0;
      if (a4)
      {
        if (a5 <= 3)
        {
          v18 = 3;
        }

        else
        {
          v18 = a5;
        }

        *(v14 + 292) = v18;
        *(v14 + 288) = a4;
        v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v19)
        {
          v20 = v19;
          v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v14 + 296));
          *(v14 + 304) = v21;
          v22 = dispatch_time(0xF4240uLL, 0);
          dispatch_source_set_timer(v21, v22, 0x989680uLL, 0);
          v23 = *(v14 + 304);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 0x40000000;
          handler[2] = __APSZeroTracker_StartZeroLoggerDispatch_block_invoke;
          handler[3] = &__block_descriptor_tmp_12;
          handler[4] = v20;
          *&handler[5] = v17 * v6;
          dispatch_source_set_event_handler(v23, handler);
          v24 = *(v14 + 304);
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 0x40000000;
          v28[2] = __APSZeroTracker_StartZeroLoggerDispatch_block_invoke_2;
          v28[3] = &__block_descriptor_tmp_13_1636;
          v28[4] = v20;
          dispatch_source_set_cancel_handler(v24, v28);
          dispatch_resume(*(v14 + 304));
        }

        else
        {
          APSLogErrorAt(0);
        }
      }

      else
      {
        *(v14 + 292) = 0;
        *(v14 + 288) = 0;
      }

      v25 = *(v14 + 24);
      APSSampleRateTracker_Init(v14 + 312, 0x64uLL, a1, a3);
      v26 = *(v14 + 24);
      APSSampleRateTracker_Init(v14 + 352, 0x3E8uLL, a1, a3);
      result = 0;
      *(v14 + 392) = 0;
      *(v14 + 400) = 0;
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
    return 0;
  }

  return result;
}

void APSSampleRateTracker_Init(uint64_t a1, size_t count, const void *a3, int a4)
{
  if (a1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 16) = count;
    *(a1 + 8) = malloc_type_calloc(count, 0x10uLL, 0x1000040451B5BE8uLL);
    if (a4)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"Name", a3);
      CFDictionarySetValue(Mutable, @"UnitName", @"Hz");
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      *(a1 + 32) = APSStatsHistogramCreate(Mutable);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }

  else
  {

    APSLogErrorAt(0);
  }
}

uint64_t APSGetFBOPropertyInt64(uint64_t a1, uint64_t a2, int *a3)
{
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v9 = 0;
    v7 = -12782;
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = v6(a1, a2, *MEMORY[0x277CBECE8], &cf);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = cf == 0;
  }

  if (!v8)
  {
    v9 = CFGetInt64();
    v7 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }

LABEL_9:
    *a3 = v7;
    goto LABEL_10;
  }

  v9 = 0;
  if (a3)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t APSSetFBOPropertyInt64(uint64_t a1, uint64_t a2)
{
  Int64 = CFNumberCreateInt64();
  if (!Int64)
  {
    return 4294960568;
  }

  v5 = Int64;
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 56);
  if (v7)
  {
    v8 = *(VTable + 8) + 56;
    v9 = v7(a1, a2, v5);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v5);
  return v9;
}

uint64_t APSAtomicMessageQueueInit(void *a1)
{
  a1[12] = 0;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 1) = 0u;
  result = MEMORY[0x223DB55F0]();
  if (*MEMORY[0x277D7F098])
  {
    a1[2] = *MEMORY[0x277D7F098];
    a1[4] = 0;
    a1[12] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *keyHolder_secureMemAllocateCallBack(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, a1 + 16, 0x1000040451B5BE8uLL);
  if (v2)
  {
    *v2 = a1;
    v2[1] = 0xFECA00EEFFC0ADBALL;
    return v2 + 2;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t networkAddress_Finalize(uint64_t result)
{
  v1 = result;
  if (gLogCategory_APSNetworkAddress <= 30)
  {
    if (gLogCategory_APSNetworkAddress != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  return result;
}

uint64_t APSRealTimeSignalCreate(NSObject *a1, void *a2, uint64_t a3, void (__cdecl *a4)(void *), uint64_t a5)
{
  if (a1)
  {
    v7 = a1;
    if (a3 && a5)
    {
      if (gAPSRealTimeSignalInitOnce != -1)
      {
        dispatch_once_f(&gAPSRealTimeSignalInitOnce, 0, _APSRealTimeSignalGetTypeID);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        *(Instance + 16) = 0;
        operator new();
      }

      APSLogErrorAt(0);
      v10 = 4294960568;
    }

    else
    {
      APSLogErrorAt(0);
      v10 = 4294960591;
    }

    if (a4)
    {
LABEL_16:
      dispatch_async_f(v7, a2, a4);
    }
  }

  else
  {
    APSLogErrorAt(0);
    if (a4)
    {
      if (rtSignal_getFinalizerQueue(void)::sAPSRealTimeSignalFinalizerQueueOnce != -1)
      {
        dispatch_once(&rtSignal_getFinalizerQueue(void)::sAPSRealTimeSignalFinalizerQueueOnce, &__block_literal_global_69);
      }

      v7 = rtSignal_getFinalizerQueue(void)::sAPSRealTimeSignalFinalizerQueue;
      v10 = 4294960591;
      goto LABEL_16;
    }

    return 4294960591;
  }

  return v10;
}

void sub_2222B6E0C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  caulk::concurrent::message::~message(v10);
  MEMORY[0x223DB5660]();
  if (a2 == 3)
  {
    __cxa_get_exception_ptr(a1);
    object = (MEMORY[0x277D82918] + 16);
    __cxa_begin_catch(a1);
    std::bad_alloc::~bad_alloc(&object);
    __cxa_end_catch();
    v13 = 4294960568;
  }

  else
  {
    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      (*(*v14 + 16))(v14);
      v13 = 4294960534;
      APSSignalErrorAt(4294960534);
      __cxa_end_catch();
    }

    else
    {
      __cxa_end_catch();
      v13 = 4294960596;
    }
  }

  APSLogErrorAt(v13);
  JUMPOUT(0x2222B6DC8);
}

uint64_t APSCopyDefaultGroupUUID(void *a1)
{
  cf = 0;
  APSCopyClusterInfo(&cf, 0, 0, 0, 0);
  v2 = cf;
  if (cf)
  {
    goto LABEL_4;
  }

  v3 = APSCopyBootUUID(&cf);
  if (!v3)
  {
    v2 = cf;
LABEL_4:
    v4 = 0;
    *a1 = v2;
    return v4;
  }

  v4 = v3;
  APSLogErrorAt(v3);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void APSCopyClusterInfo(void *a1, uint64_t *a2, int *a3, void *a4, void *a5)
{
  cf = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v17 = 0;
  if (a1)
  {
    *a1 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  APSCopyPersistentGroupInfo(&cf, &v23, &v22, &v21, &v20, 0, 0, 0);
  if (cf)
  {
    v10 = CFRetain(cf);
    if (v23)
    {
      v11 = 0;
    }

    else
    {
      v11 = 3;
    }

    if (v23 == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = v22;
    v14 = CFRetain(v21);
    v15 = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    if (a1)
    {
LABEL_21:
      *a1 = v10;
      v10 = 0;
    }
  }

  else
  {
    APSCopyTightSyncInfo(&v19, &v18, 0, &v17, 0);
    if (!v19)
    {
      v10 = 0;
      v14 = 0;
      goto LABEL_30;
    }

    v10 = CFRetain(v19);
    if (v18)
    {
      v16 = @"0";
    }

    else
    {
      v16 = @"1";
    }

    v14 = CFRetain(v16);
    v15 = CFRetain(v17);
    v12 = 1;
    v13 = 2;
    if (a1)
    {
      goto LABEL_21;
    }
  }

  if (a2)
  {
    *a2 = v13;
  }

  if (a3)
  {
    *a3 = v12;
  }

  if (a4)
  {
    *a4 = v14;
    v14 = 0;
  }

  if (a5)
  {
    *a5 = v15;
LABEL_30:
    v15 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void APSCopyPersistentGroupInfo(const __CFString **a1, unsigned int *a2, void *a3, void *a4, CFStringRef *a5, BOOL *a6, void *a7, void *a8)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  v36 = 0;
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  v12 = APSSettingsCopyValueEx(@"persistentGroupUUID", 0, 0);
  v34 = a7;
  v35 = a8;
  if (v12)
  {
    Int64 = APSSettingsGetInt64(@"persistentGroupType", &v36);
    v14 = v36;
    if (v36 || (v15 = APSSettingsGetInt64(@"persistentGroupSize", &v36), (v14 = v36) != 0))
    {
      APSLogErrorAt(v14);
      v29 = v12;
    }

    else
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = APSGetPersistentGroupModel();
      v18 = CFStringCreateWithFormat(v16, 0, @"%d", v17);
      v19 = APSSettingsCopyValueEx(@"persistentGroupMemberID", 0, 0);
      if (!v19 && Int64 == 1)
      {
        v20 = IsAppleTV();
        v21 = APSSettingsGetInt64(@"tightSyncIsGroupLeader", 0);
        v22 = @"2";
        if (v21)
        {
          v23 = 1;
        }

        else
        {
          v23 = v15 == 2;
        }

        if (v23)
        {
          v22 = @"1";
        }

        if (v20)
        {
          v24 = @"0";
        }

        else
        {
          v24 = v22;
        }

        v19 = CFRetain(v24);
      }

      v25 = APSValidatePersistentGroupInfo(v12, v15, Int64, v19, v18, 0);
      v36 = v25;
      if (!v25)
      {
        v26 = APSSettingsGetInt64(@"persistentGroupIsGroupLeader", 0) != 0;
        v27 = APSSettingsCopyValueEx(@"persistentGroupLeaderUUID", 0, 0);
        v28 = APSSettingsCopyValueEx(@"groupName", 0, 0);
        goto LABEL_41;
      }

      APSLogErrorAt(v25);
      CFRelease(v12);
      if (v19)
      {
        CFRelease(v19);
      }

      if (!v18)
      {
        v12 = 0;
        Int64 = 0;
        v15 = 0;
        v19 = 0;
        goto LABEL_40;
      }

      v29 = v18;
    }

    CFRelease(v29);
    v12 = 0;
  }

  Int64 = 0;
  v15 = 0;
  v19 = 0;
  v18 = 0;
LABEL_40:
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_41:
  if (a1)
  {
    *a1 = v12;
    v12 = 0;
  }

  if (a3)
  {
    *a3 = v15;
  }

  if (a2)
  {
    *a2 = Int64;
  }

  if (a4)
  {
    *a4 = v19;
    v19 = 0;
  }

  if (a5)
  {
    *a5 = v18;
    v18 = 0;
  }

  if (a6)
  {
    *a6 = v26;
  }

  if (v34)
  {
    *v34 = v27;
    v27 = 0;
  }

  if (v35)
  {
    *v35 = v28;
    v28 = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }
}

void APSCopyTightSyncInfo(void *a1, _BYTE *a2, void *a3, CFStringRef *a4, void *a5)
{
  v25 = 0;
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  TypeID = CFStringGetTypeID();
  v11 = APSSettingsCopyValueEx(@"tightSyncGroupUUID", TypeID, 0);
  if (v11)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v12 = 0;
    v13 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v15 = CFStringGetTypeID();
  v11 = APSSettingsCopyValueEx(@"tightSyncUUID", v15, 0);
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v11)
  {
    v26 = 0;
    if (APSSettingsGetInt64IfPresent(@"tightSyncIsGroupLeader", &v26))
    {
      v12 = 0;
      v13 = 0;
      v14 = v26 != 0;
    }

    else
    {
      APSCopyPairingIdentity(1, &v25);
      v24 = CFStringGetTypeID();
      v13 = APSSettingsCopyValueEx(@"tightSyncGroupLeaderUUID", v24, 0);
      v12 = v25;
      v14 = FigCFEqual();
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v13 = 0;
  }

  *a2 = v14;
  if (a3)
  {
LABEL_11:
    if (v11)
    {
      v16 = CFStringGetTypeID();
      v17 = APSSettingsCopyValueEx(@"tightSyncGroupLeaderUUID", v16, 0);
    }

    else
    {
      v17 = 0;
    }

    *a3 = v17;
  }

LABEL_15:
  if (a4)
  {
    if (v11)
    {
      v18 = *MEMORY[0x277CBECE8];
      CFPreferencesAppSynchronize(@"com.apple.airplay");
      CFPreferencesAppSynchronize(@"com.apple.coremedia");
      IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"tightSyncGroupModel", 0, 0);
      v20 = APSSettingsGetIntWithOverrideAndDefault(@"simulateTightSyncGroupModel", 0, IntWithOverrideAndDefault);
      v21 = CFStringCreateWithFormat(v18, 0, @"%d", v20);
    }

    else
    {
      v21 = 0;
    }

    *a4 = v21;
  }

  if (a5)
  {
    if (v11)
    {
      v22 = CFStringGetTypeID();
      v23 = APSSettingsCopyValueEx(@"groupName", v22, 0);
    }

    else
    {
      v23 = 0;
    }

    *a5 = v23;
  }

  if (a1)
  {
    *a1 = v11;
    v11 = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t APSCopyBootUUID(CFStringRef *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 37;
  if (!a1)
  {
    APSLogErrorAt(0);
    v2 = 4294960591;
    goto LABEL_13;
  }

  *cStr = 0u;
  memset(v9, 0, sizeof(v9));
  if (!sysctlbyname("kern.bootsessionuuid", cStr, &v7, 0, 0))
  {
    goto LABEL_5;
  }

  if (!*__error())
  {
    v2 = 4294960596;
    goto LABEL_10;
  }

  v2 = *__error();
  if (v2)
  {
LABEL_10:
    APSLogErrorAt(v2);
    goto LABEL_13;
  }

LABEL_5:
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = 0;
    *a1 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    v2 = 4294960568;
  }

LABEL_13:
  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t APSStatsHistogramCreate(const __CFDictionary *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (APSStatsHistogramGetTypeID_once != -1)
  {
    dispatch_once(&APSStatsHistogramGetTypeID_once, &__block_literal_global_1509);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 128) = 0;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = FigSimpleMutexCreate();
    *(v4 + 48) = 0x41DFFFFFFFC00000;
    *(v4 + 120) = 10;
    if (a1)
    {
      Value = CFDictionaryGetValue(a1, @"Name");
      if (Value)
      {
        Value = CFRetain(Value);
      }

      *(v4 + 24) = Value;
      v6 = CFDictionaryGetValue(a1, @"UnitName");
      if (v6)
      {
        v6 = CFRetain(v6);
      }

      *(v4 + 32) = v6;
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
    }

    if (!*(v4 + 24))
    {
      *(v4 + 24) = CFRetain(@"Histogram");
    }

    if (!*(v4 + 32))
    {
      *(v4 + 32) = CFRetain(@" ");
    }

    v7 = *(v4 + 120);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    if (v7 >= 0x64)
    {
      v8 = 100;
    }

    else
    {
      v8 = v7;
    }

    *(v4 + 120) = v8;
    *(v4 + 112) = malloc_type_calloc(v8, 4uLL, 0x100004052888210uLL);
    *(v4 + 88) = SecondsToUpTicksF();
    v9 = *(v4 + 40);
    v10 = *(v4 + 48);
    *(v4 + 56) = v9;
    *(v4 + 64) = v10;
    v11 = v10 - v9;
    LODWORD(v10) = *(v4 + 120);
    *(v4 + 72) = v11 / *&v10;
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v4;
}

uint64_t chachaCryptor_DecryptMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = CMBaseObjectGetDerivedStorage();
  v15 = 24;
  if (!*v14)
  {
    v15 = 16;
  }

  if (!a2 && a3)
  {
    v22 = 4294895585;
LABEL_19:
    APSLogErrorAt(0);
    return v22;
  }

  v16 = a5 - v15;
  if (a5 < v15)
  {
    v22 = 4294895585;
    goto LABEL_19;
  }

  if (v16 > a7)
  {
    v22 = 4294895585;
    goto LABEL_19;
  }

  CFDataGetBytePtr(*(DerivedStorage + 264));
  chacha20_poly1305_init_64x64();
  chacha20_poly1305_add_aad();
  v17 = chacha20_poly1305_decrypt();
  if (chacha20_poly1305_verify() + v17 == v16)
  {
    v18 = 0;
    *a8 = v16;
    v19 = DerivedStorage + 272;
    do
    {
      if (++*(v19 + v18))
      {
        v21 = 1;
      }

      else
      {
        v21 = v18 == 7;
      }

      ++v18;
    }

    while (!v21);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960534;
  }
}

uint64_t APSZeroTracker_EndCurrentRun(uint64_t result)
{
  if (!result)
  {
    return APSLogErrorAt(0);
  }

  if (*(result + 48))
  {
    v1 = (result + 64);
    v2 = *(result + 48);
    v3 = (result + 64 + 16 * *(result + 40));
    if (*v3 < v2)
    {
      v4 = 0;
      v5 = *(result + 56);
      *v3 = v2;
      v3[1] = v5;
      v6 = *(result + 64);
      do
      {
        v8 = *v1;
        v1 += 4;
        v7 = v8;
        if (v6 > v8)
        {
          *(result + 40) = v4;
          v6 = v7;
        }

        ++v4;
      }

      while (v4 != 10);
      LODWORD(v2) = *(result + 48);
    }

    if (v2 > *(result + 8))
    {
      *(result + 8) = v2;
      *(result + 32) = *(result + 56);
    }

    *(result + 48) = 0;
    ++*(result + 16);
    *(result + 4) = 0;
  }

  return result;
}

intptr_t APSRTPJitterBufferEnqueuePacket(intptr_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(a2 + 4);
    if (*(result + 80) == 1819304813)
    {
      v4 = v3 + *(a2 + 1472) / *(result + 96);
    }

    else
    {
      v4 = *(result + 92) + v3;
    }

    *(result + 244) = v4;
    CMSimpleQueueEnqueue(*(result + 56), a2);
    v5 = *(v2 + 64);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

uint64_t _APSRTPJitterBufferDecodeThreadEntry(uint64_t a1)
{
  SetCurrentThreadPriority();
  if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___APSRTPJitterBufferDecodeThreadEntry_block_invoke;
    block[3] = &__block_descriptor_tmp_28;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  if (!*(a1 + 273))
  {
    while (1)
    {
      dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
      if (*(a1 + 273))
      {
        goto LABEL_6;
      }

      v4 = CMSimpleQueueDequeue(*(a1 + 56));
      if (*(a1 + 273))
      {
        goto LABEL_6;
      }

      v5 = v4;
      if (!v4)
      {
        APSLogErrorAt(0);
        goto LABEL_74;
      }

      if (*(v4 + 184))
      {
        break;
      }

LABEL_73:
      CMSimpleQueueEnqueue(*(a1 + 48), v5);
LABEL_74:
      if (*(a1 + 273))
      {
        goto LABEL_6;
      }
    }

    if (!*(a1 + 272))
    {
      v6 = *(a1 + 228);
      if (*(a1 + 164))
      {
        *(a1 + 232) = v6;
        *(a1 + 236) = v6 - v4[1];
        *(a1 + 240) = v6;
      }

      else
      {
        v7 = v4[1];
        v8 = *(a1 + 156);
        v9 = v6 - v7 + v8;
        if (v7 - v6 >= v8)
        {
          v9 = 0;
        }

        *(a1 + 232) = v7;
        *(a1 + 236) = v9;
        v10 = v9 + v4[1];
        *(a1 + 232) = v10;
        *(a1 + 240) = v10;
        v11 = *(a1 + 136) * (v10 - v6);
        if (v11)
        {
          v12 = *(a1 + 224);
          if (v11 >= v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = v11;
          }

          bzero((*(a1 + 192) + (*(a1 + 212) & *(a1 + 220))), v13);
          *(a1 + 220) += v11;
        }
      }

      if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
      {
        v14 = *(a1 + 24);
        v49 = MEMORY[0x277D85DD0];
        v50 = 0x40000000;
        v51 = ___APSRTPJitterBufferInitializeWritePointers_block_invoke;
        v52 = &__block_descriptor_tmp_38;
        v53 = a1;
        v54 = v5;
        dispatch_async(v14, &v49);
      }
    }

    v15 = v5[1] + *(a1 + 236);
    v5[1] = v15;
    v16 = *(a1 + 240);
    v17 = v15 - v16;
    if (v15 < v16)
    {
      if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
      {
        v36 = *(a1 + 24);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 0x40000000;
        v46[2] = ___APSRTPJitterBufferWritePacket_block_invoke;
        v46[3] = &__block_descriptor_tmp_32;
        v46[4] = a1;
        v46[5] = v5;
        dispatch_async(v36, v46);
      }

      goto LABEL_73;
    }

    if (v15 == v16)
    {
      v17 = 0;
    }

    else
    {
      if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
      {
        v18 = *(a1 + 24);
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 0x40000000;
        v42[2] = ___APSRTPJitterBufferWritePacket_block_invoke_2;
        v42[3] = &__block_descriptor_tmp_34;
        v42[4] = a1;
        v43 = v15 - v16;
        v44 = v16;
        v45 = v15;
        dispatch_async(v18, v42);
      }

      ++*(a1 + 284);
    }

    v19 = *(a1 + 92);
    v20 = (*(a1 + 208) - *(a1 + 220) + *(a1 + 216)) / *(a1 + 136);
    if (v20 < v19 + v17)
    {
      if (gLogCategory_APSRTPJitterBuffer <= 30)
      {
        v21 = *(a1 + 228);
        if (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize())
        {
          v22 = *(a1 + 24);
          v49 = MEMORY[0x277D85DD0];
          v50 = 0x40000000;
          v51 = ___APSRTPJitterBufferCheckOverrun_block_invoke;
          v52 = &__block_descriptor_tmp_42;
          v53 = a1;
          v54 = v21;
          v55 = v20;
          dispatch_async(v22, &v49);
        }
      }

      ++*(a1 + 280);
      v19 = *(a1 + 92);
    }

    if (v19 < 2)
    {
      v25 = 0;
      if (v17)
      {
LABEL_49:
        if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
        {
          v26 = *(a1 + 24);
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 0x40000000;
          v47[2] = ___APSRTPJitterBufferDecodePacketSamples_block_invoke;
          v47[3] = &__block_descriptor_tmp_40;
          v47[4] = a1;
          v48 = v17;
          dispatch_async(v26, v47);
        }

        v27 = *(a1 + 136) * v17;
        v28 = *(a1 + 224);
        if (v27 >= v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = v27;
        }

        bzero((*(a1 + 192) + (*(a1 + 212) & *(a1 + 220))), v29);
        if (gLogCategory_APSRTPJitterBuffer <= 20 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
        {
          v30 = *(a1 + 24);
          v49 = MEMORY[0x277D85DD0];
          v50 = 0x40000000;
          v51 = ___APSRTPJitterBufferWriteZeros_block_invoke;
          v52 = &__block_descriptor_tmp_50;
          v53 = a1;
          LODWORD(v54) = v17;
          dispatch_async(v30, &v49);
        }

        v31 = *(a1 + 136);
        v32 = *(a1 + 220);
        *(a1 + 232) += 2 * v17;
        *(a1 + 220) = v32 + v31 * 2 * v17;
        v25 += v17;
      }
    }

    else
    {
      v23 = v17 / v19;
      v24 = v17 % v19;
      if (v19 <= v17)
      {
        v25 = 0;
        do
        {
          v25 += _APSRTPJitterBufferDecodeOneUnit(a1, _APSRTPJitterBufferNullDecodeInputCallback, 0);
          --v23;
        }

        while (v23);
      }

      else
      {
        v25 = 0;
      }

      v17 = v24;
      if (v24)
      {
        goto LABEL_49;
      }
    }

    *(a1 + 240) += _APSRTPJitterBufferDecodeOneUnit(a1, _APSRTPJitterBufferDecodeInputCallback, v5) + v25;
    if (*(a1 + 164))
    {
      if (!*(a1 + 176))
      {
        v33 = *(a1 + 244) - *(a1 + 228);
        if (v33 >= *(a1 + 180))
        {
          if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
          {
            v34 = *(a1 + 24);
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 0x40000000;
            v40[2] = ___APSRTPJitterBufferWritePacket_block_invoke_3;
            v40[3] = &__block_descriptor_tmp_36;
            v40[4] = a1;
            v41 = v33;
            dispatch_async(v34, v40);
          }

          ++*(a1 + 280);
          *(a1 + 176) = 1;
        }
      }
    }

    if (!*(a1 + 272))
    {
      if (*(a1 + 165))
      {
        v35 = mach_absolute_time();
        *(a1 + 168) = v35 - MillisecondsToUpTicks();
      }

      *(a1 + 272) = 1;
    }

    goto LABEL_73;
  }

LABEL_6:
  if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
  {
    v3 = *(a1 + 24);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 0x40000000;
    v38[2] = ___APSRTPJitterBufferDecodeThreadEntry_block_invoke_2;
    v38[3] = &__block_descriptor_tmp_30;
    v38[4] = a1;
    dispatch_async(v3, v38);
  }

  return 0;
}

uint64_t APSRTPJitterBufferRead(uint64_t a1, unsigned int a2, char *__dst, unint64_t a4)
{
  v7 = *(a1 + 232);
  v8 = *(a1 + 272);
  v9 = a4 / *(a1 + 136);
  if (gLogCategory_APSRTPJitterBuffer <= 10 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
  {
    v11 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APSRTPJitterBufferRead_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = a1;
    block[5] = a4;
    v61 = v9;
    dispatch_async(v11, block);
  }

  if (!*(a1 + 164))
  {
    v15 = *(a1 + 228);
    v16 = *(a1 + 274);
    if (v9 + a2 < *(a1 + 232) || *(a1 + 272) == 0)
    {
      if (*(a1 + 274))
      {
        if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
        {
          v46 = *(a1 + 16);
          LogPrintF();
        }

        *(a1 + 274) = 0;
      }
    }

    else if (!*(a1 + 274))
    {
      if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
      {
        v47 = *(a1 + 16);
        LogPrintF();
      }

      *(a1 + 274) = 1;
      ++*(a1 + 276);
    }
  }

  if (!v8)
  {
    v18 = 0;
    *(a1 + 228) = a2;
    v19 = v9;
    goto LABEL_78;
  }

  if (!*(a1 + 164))
  {
    v20 = *(a1 + 228);
    if (v20 <= a2)
    {
      if (v20 >= a2)
      {
        v21 = 0;
      }

      else
      {
        v22 = a2 - v20;
        if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
        {
          v23 = *(a1 + 24);
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 0x40000000;
          v58[2] = __APSRTPJitterBufferRead_block_invoke_2;
          v58[3] = &__block_descriptor_tmp_11;
          v58[4] = a1;
          v59 = v22;
          dispatch_async(v23, v58);
        }

        v21 = 0;
        *(a1 + 216) += *(a1 + 136) * v22;
        v20 = *(a1 + 228) + v22;
        *(a1 + 228) = v20;
      }
    }

    else if (v20 - a2 >= v9)
    {
      v21 = v9;
    }

    else
    {
      v21 = v20 - a2;
    }

    goto LABEL_57;
  }

  mach_absolute_time();
  if (!*(a1 + 165))
  {
    goto LABEL_39;
  }

  v12 = *(a1 + 168);
  v13 = UpTicksToMilliseconds();
  v14 = *(a1 + 160);
  if ((1000 * (*(a1 + 236) + *(a1 + 244) - *(a1 + 228)) / *(a1 + 112)) >= v14 + v13 || v13 >= v14)
  {
    *(a1 + 176) = 1;
    *(a1 + 165) = 0;
    *(a1 + 168) = 0;
    if (gLogCategory_APSRTPJitterBuffer > 30)
    {
      goto LABEL_39;
    }

    if (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize())
    {
      v45 = *(a1 + 16);
      LogPrintF();
    }
  }

  if (!*(a1 + 165))
  {
LABEL_39:
    if (*(a1 + 176))
    {
      v24 = *(a1 + 228);
      v25 = *(a1 + 236) + *(a1 + 244) - v24;
      if (v25 <= *(a1 + 184))
      {
        v26 = 0;
      }

      else
      {
        v26 = v7 - v24;
        if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
        {
          v27 = *(a1 + 24);
          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 0x40000000;
          v64[2] = ___APSRTPJitterBufferLegacyDiscardExcess_block_invoke;
          v64[3] = &__block_descriptor_tmp_59_1304;
          v64[4] = a1;
          v65 = v25;
          dispatch_async(v27, v64);
        }

        if (v25 - *(a1 + 184) < v26)
        {
          v26 = v25 - *(a1 + 184);
        }

        *(a1 + 216) += v26 * *(a1 + 136);
        *(a1 + 228) += v26;
        if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
        {
          v28 = *(a1 + 24);
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 0x40000000;
          v62[2] = ___APSRTPJitterBufferLegacyDiscardExcess_block_invoke_2;
          v62[3] = &__block_descriptor_tmp_61;
          v62[4] = a1;
          v63 = v26;
          dispatch_async(v28, v62);
        }
      }

      if (v25 - v26 <= *(a1 + 184))
      {
        *(a1 + 176) = 0;
      }
    }
  }

  v21 = 0;
  v20 = *(a1 + 228);
LABEL_57:
  if (v9 > v21 && *(a1 + 165) == 0 && v7 >= v20)
  {
    v32 = v7 - v20;
    if (v32 >= v9 - v21)
    {
      v32 = v9 - v21;
    }

    if (v32 >= (*(a1 + 220) - *(a1 + 216)) / *(a1 + 136))
    {
      v31 = (*(a1 + 220) - *(a1 + 216)) / *(a1 + 136);
    }

    else
    {
      v31 = v32;
    }
  }

  else
  {
    v31 = 0;
  }

  v18 = v31 + v21;
  v19 = v9 - (v31 + v21);
  if (v21)
  {
    bzero(__dst, *(a1 + 136) * v21);
    __dst += *(a1 + 136) * v21;
  }

  if (v31)
  {
    v33 = *(a1 + 136) * v31;
    if (gLogCategory_APSRTPJitterBuffer <= 10 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      v34 = *(a1 + 24);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 0x40000000;
      v54[2] = __APSRTPJitterBufferRead_block_invoke_3;
      v54[3] = &__block_descriptor_tmp_13;
      v54[4] = a1;
      v55 = v33;
      v56 = v31;
      v57 = v7;
      dispatch_async(v34, v54);
    }

    memcpy(__dst, (*(a1 + 192) + (*(a1 + 212) & *(a1 + 216))), v33);
    *(a1 + 216) += *(a1 + 136) * v31;
    *(a1 + 228) += v31;
    __dst += v33;
  }

LABEL_78:
  if (v18 != v9)
  {
    if (*(a1 + 164))
    {
      v35 = *(a1 + 136);
      if (*(a1 + 165))
      {
LABEL_103:
        bzero(__dst, v35 * v19);
        return 0;
      }

      v37 = *(a1 + 216);
      v36 = *(a1 + 220);
      Count = CMSimpleQueueGetCount(*(a1 + 56));
      if (gLogCategory_APSRTPJitterBuffer <= 30)
      {
        v39 = Count;
        if (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize())
        {
          v40 = *(a1 + 24);
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 0x40000000;
          v50[2] = __APSRTPJitterBufferRead_block_invoke_4;
          v50[3] = &__block_descriptor_tmp_15;
          v50[4] = a1;
          v51 = v19;
          v52 = (v36 - v37) / v35;
          v53 = v39;
          dispatch_async(v40, v50);
        }
      }

      v41 = 1;
      *(a1 + 165) = 1;
      *(a1 + 168) = mach_absolute_time();
      if (gLogCategory_APSRTPJitterBuffer <= 40 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
      {
        v42 = *(a1 + 24);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 0x40000000;
        v49[2] = __APSRTPJitterBufferRead_block_invoke_5;
        v49[3] = &__block_descriptor_tmp_17;
        v49[4] = a1;
        dispatch_async(v42, v49);
      }

      v43 = 276;
    }

    else
    {
      if (v8)
      {
        *(a1 + 216) += *(a1 + 136) * v19;
        if (!*(a1 + 274))
        {
          if (gLogCategory_APSRTPJitterBuffer <= 30 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
          {
            v48 = *(a1 + 16);
            LogPrintF();
          }

          ++*(a1 + 276);
          *(a1 + 274) = 1;
        }
      }

      v43 = 228;
      v41 = v19;
    }

    *(a1 + v43) += v41;
    v35 = *(a1 + 136);
    goto LABEL_103;
  }

  return 0;
}

uint64_t _APSRTPJitterBufferDecodeOneUnit(uint64_t a1, OSStatus (__cdecl *a2)(AudioConverterRef, UInt32 *, AudioBufferList *, AudioStreamPacketDescription **, void *), uint64_t a3)
{
  *&outOutputData.mNumberBuffers = 1;
  inInputDataProcUserData[0] = a1;
  inInputDataProcUserData[1] = a3;
  memset(&inInputDataProcUserData[2], 0, 24);
  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = *(a3 + 1472) / v4;
  }

  else
  {
    v5 = *(a1 + 92);
  }

  outOutputData.mBuffers[0].mData = (*(a1 + 192) + (*(a1 + 212) & *(a1 + 220)));
  v6 = *(a1 + 128) * v5;
  outOutputData.mBuffers[0].mNumberChannels = *(a1 + 140);
  outOutputData.mBuffers[0].mDataByteSize = v6;
  ioOutputDataPacketSize = v5;
  v7 = AudioConverterFillComplexBuffer(*(a1 + 248), a2, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
  if (v7 == -6750)
  {
    if (gLogCategory_APSRTPJitterBuffer > 30)
    {
      goto LABEL_20;
    }

    if (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize())
    {
      v12 = *(a1 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___APSRTPJitterBufferDecodeOneUnit_block_invoke_2;
      block[3] = &__block_descriptor_tmp_46;
      block[4] = a1;
      v18 = ioOutputDataPacketSize;
      dispatch_async(v12, block);
    }
  }

  else
  {
    v8 = v7;
    if (v7)
    {
      bzero(outOutputData.mBuffers[0].mData, (*(a1 + 128) * v5));
      ioOutputDataPacketSize = v5;
      if (gLogCategory_APSRTPJitterBuffer <= 60)
      {
        v9 = v5;
        if (gLogCategory_APSRTPJitterBuffer == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_20;
          }

          v9 = ioOutputDataPacketSize;
        }

        v10 = *(a1 + 24);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 0x40000000;
        v19[2] = ___APSRTPJitterBufferDecodeOneUnit_block_invoke;
        v19[3] = &__block_descriptor_tmp_44;
        v19[4] = a1;
        v20 = v9;
        v21 = v8;
        v11 = v19;
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  if (gLogCategory_APSRTPJitterBuffer <= 20 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
  {
    v10 = *(a1 + 24);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = ___APSRTPJitterBufferDecodeOneUnit_block_invoke_3;
    v15[3] = &__block_descriptor_tmp_48;
    v15[4] = a1;
    v16 = ioOutputDataPacketSize;
    v11 = v15;
LABEL_16:
    dispatch_async(v10, v11);
  }

LABEL_20:
  v13 = ioOutputDataPacketSize;
  *(a1 + 232) += ioOutputDataPacketSize;
  *(a1 + 220) += *(a1 + 136) * v13;
  return v5;
}

uint64_t _APSRTPJitterBufferDecodeInputCallback(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  if (!*a2)
  {
    return 0;
  }

  v5 = a5[1];
  if (!v5)
  {
    return 4294960546;
  }

  v6 = *(v5 + 1472);
  if (!v6)
  {
    return 4294960546;
  }

  *(a3 + 16) = v5 + 12;
  v7 = *a5;
  *(a3 + 8) = *(*a5 + 100);
  *(a3 + 12) = v6;
  if (a4)
  {
    a5[2] = 0;
    *(a5 + 6) = 0;
    *(a5 + 7) = v6;
    *a4 = a5 + 2;
    v7 = *a5;
  }

  v8 = *(v7 + 88);
  v9 = *a2;
  if (v8)
  {
    v10 = a5[1];
    if (*(v10 + 1472) / v8 != v9)
    {
      goto LABEL_15;
    }

LABEL_11:
    result = 0;
    *(v10 + 1472) = 0;
    *(a5 + 32) = 1;
    return result;
  }

  if (v9 == 1)
  {
    v10 = a5[1];
    goto LABEL_11;
  }

LABEL_15:
  APSLogErrorAt(0);
  return 4294960534;
}

uint64_t chachaCryptor_GetEncryptionOverheadLength()
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 24;
  }

  else
  {
    return 16;
  }
}

uint64_t APSAudioStats_ProcessAudioBuffer(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1 && a2)
  {
    v6 = mach_absolute_time();
    if (*(a1 + 32) == 1819304813)
    {
      v7 = a3 / *(a1 + 48);
    }

    else
    {
      v7 = *(a1 + 44);
    }

    v8 = a3 - 8;
    v9 = 8;
    if (a3 < 8)
    {
      v9 = a3;
    }

    if (a3)
    {
      v10 = v9;
      v11 = a2;
      while (!*v11++)
      {
        if (!--v10)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      if (v9 + 8 >= a3)
      {
        v8 = v9;
      }

      if (v8 >= a3)
      {
LABEL_21:
        v17 = *(a1 + 112);
        if (!v17)
        {
          *(a1 + 120) = mach_absolute_time();
          v17 = *(a1 + 112);
        }

        *(a1 + 112) = v17 + a3;
        if (*(a1 + 288))
        {
          *(a1 + 68) += a3;
        }

        *(a1 + 76) += a3;
        ++*(a1 + 64);
LABEL_28:
        APSSampleRateTracker_AddNewRecord(a1 + 312, v7, v6);
        result = APSSampleRateTracker_AddNewRecord(a1 + 352, v7, v6);
        *(a1 + 392) = vaddq_s64(*(a1 + 392), vdupq_n_s64(v7));
        return result;
      }

      v13 = &a2[v8];
      if (a3 <= v9 + 8)
      {
        v14 = v9 + 8;
      }

      else
      {
        v14 = a3;
      }

      v15 = a3 - v14 + 8;
      while (!*v13++)
      {
        if (!--v15)
        {
          goto LABEL_21;
        }
      }
    }

    if (*(a1 + 112))
    {
      APSZeroTracker_EndCurrentRun(a1 + 64);
    }

    goto LABEL_28;
  }

  return APSLogErrorAt(0);
}

uint64_t APSSampleRateTracker_AddNewRecord(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return APSLogErrorAt(0);
  }

  v3 = *(result + 8);
  v4 = *(result + 20);
  v5 = *(result + 24);
  v6 = (v3 + 16 * v4);
  if (v5)
  {
    v7 = *(result + 16);
    if (v4)
    {
      v8 = *(result + 20);
    }

    else
    {
      v8 = *(result + 16);
    }

    v9 = *result + *(v3 + 16 * (v8 - 1) + 8);
    *result = v9;
    if (v5 >= v7)
    {
      *result = v9 - v6[1];
    }
  }

  else
  {
    v7 = *(result + 16);
  }

  *v6 = a3;
  v6[1] = a2;
  v10 = v5 + 1;
  if (v4 + 1 < v7)
  {
    v11 = v4 + 1;
  }

  else
  {
    v11 = 0;
  }

  *(result + 20) = v11;
  *(result + 24) = v10;
  return result;
}

uint64_t APSFeaturesCopyStringRepresentation(const UInt8 *theData, void *a2)
{
  v3 = theData;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    theData = CFDataGetBytePtr(v3);
  }

  else
  {
    Length = 0;
  }

  do
  {
    v5 = Length;
    if (Length-- < 1)
    {
      if (v3)
      {
        v9 = CFRetain(&stru_28358B348);
        v8 = 0;
        goto LABEL_11;
      }

      goto LABEL_13;
    }
  }

  while (!theData[v5 - 1]);
  if (!v3)
  {
LABEL_13:
    APSLogErrorAt(0);
    v8 = 4294960591;
    goto LABEL_12;
  }

  v7 = Base64EncodeCopyEx();
  v8 = v7;
  if (!v7)
  {
    v9 = CFStringCreateWithBytes(0, 0, 0, 0x600u, 0);
LABEL_11:
    *a2 = v9;
    goto LABEL_12;
  }

  APSLogErrorAt(v7);
LABEL_12:
  free(0);
  return v8;
}

uint64_t APSTXTRecordUtilsGetBooleanFromTXTRecord(const __CFString *a1, const void *a2, BOOL *a3)
{
  v7 = 0;
  Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord(a1, a2, &v7);
  v5 = Int64FromTXTRecord;
  if (Int64FromTXTRecord != -6727)
  {
    if (Int64FromTXTRecord)
    {
      APSLogErrorAt(0);
    }

    else
    {
      *a3 = v7 != 0;
    }
  }

  return v5;
}

uint64_t APSTXTRecordUtilsGetInt64FromTXTRecord(const __CFString *a1, const void *a2, uint64_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetValue(Mutable, @"txt", a2);
      buffer[0] = 0;
      CFStringGetCString(a1, buffer, 256, 0x8000100u);
      *a3 = BonjourDevice_GetInt64();
      CFRelease(v7);
      result = 0;
    }

    else
    {
      APSLogErrorAt(0);
      result = 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    result = 4294960591;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t eventRecorder_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  free(*(a1 + 112));
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  return pthread_mutex_destroy((a1 + 40));
}

uint64_t APSFeaturesCreateFromStringRepresentation(CFStringRef theString, int *a2)
{
  if (gLogCategory_APSFeatures <= 30 && (gLogCategory_APSFeatures != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Length = CFStringGetLength(theString);
  v5 = malloc_type_malloc(Length + 1, 0xD7EAB778uLL);
  if (v5)
  {
    if (CFStringGetCString(theString, v5, Length + 1, 0x600u) == 1 && (strlen(v5), v6 = Base64DecodeCopy(), v6))
    {
      v8 = v6;
      APSLogErrorAt(v6);
    }

    else
    {
      APSLogErrorAt(0);
      v8 = -6705;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v8 = -6728;
  }

  free(v5);
  free(0);
  if (a2)
  {
    *a2 = v8;
  }

  if (gLogCategory_APSFeatures <= 90 && (gLogCategory_APSFeatures != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t APSParseGroupID(CFStringRef theString, void *a2, void *a3, void *a4, void *a5)
{
  if (!theString || (v9 = *MEMORY[0x277CBECE8], (ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], theString, @"+")) == 0))
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v11 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if ((Count - 4) < 0xFFFFFFFFFFFFFFFDLL || (v13 = Count, ValueAtIndex = CFArrayGetValueAtIndex(v11, 0), CFStringGetLength(ValueAtIndex) < 1))
  {
    APSLogErrorAt(0);
    CFRelease(v11);
    return 4294960591;
  }

  v15 = CFRetain(ValueAtIndex);
  if (v13 < 2)
  {
    v20 = 0;
    goto LABEL_20;
  }

  v16 = CFArrayGetValueAtIndex(v11, 1);
  Length = CFStringGetLength(v16);
  if (Length <= 0)
  {
    APSLogErrorAt(0);
    v21 = 0;
LABEL_44:
    v20 = 0;
    goto LABEL_45;
  }

  v18 = Length;
  v19 = CFRetain(v16);
  v20 = v19;
  if (v18 < 4)
  {
    if (v13 != 3)
    {
      v23 = 0;
      if (v19)
      {
LABEL_16:
        v24 = CFStringCreateWithFormat(v9, 0, @"%@+%@", v15, v20);
        if (!a2)
        {
LABEL_22:
          if (a3)
          {
            v21 = 0;
            *a3 = v20;
            if (a4)
            {
LABEL_24:
              v20 = 0;
              *a4 = v23;
              goto LABEL_27;
            }
          }

          else
          {
            v21 = v20;
            if (a4)
            {
              goto LABEL_24;
            }
          }

          v20 = v23;
LABEL_27:
          v25 = 0;
          if (a5)
          {
            *a5 = v24;
            v24 = 0;
          }

          goto LABEL_29;
        }

LABEL_21:
        *a2 = v15;
        v15 = 0;
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    v21 = v19;
    goto LABEL_14;
  }

  if (v13 != 3)
  {
    goto LABEL_20;
  }

  if (!v19)
  {
    v21 = 0;
LABEL_14:
    v22 = CFArrayGetValueAtIndex(v11, 2);
    if (CFStringGetLength(v22) > 3)
    {
      v23 = CFRetain(v22);
      v20 = v21;
      if (v21)
      {
        goto LABEL_16;
      }

LABEL_19:
      v20 = v23;
LABEL_20:
      v24 = CFRetain(v15);
      v23 = v20;
      v20 = 0;
      if (!a2)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    APSLogErrorAt(0);
    goto LABEL_44;
  }

  APSLogErrorAt(0);
  v21 = 0;
LABEL_45:
  v24 = 0;
  v25 = 4294960591;
LABEL_29:
  CFRelease(v11);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v25;
}

__CFData *APSFeaturesCreateFromLegacyFlags(unint64_t a1)
{
  Mutable = APSFeaturesCreateMutable(0);
  v3 = Mutable;
  if (Mutable)
  {
    APSFeaturesSetLegacyFlags(Mutable, a1);
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v3;
}

void APSFeaturesSetLegacyFlags(const __CFData *a1, unint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(a1);
  for (i = 0; i != 8; ++i)
  {
    v8[i] = a2;
    a2 >>= 8;
  }

  if (Length >= 8)
  {
    v6.length = 8;
  }

  else
  {
    v6.length = Length;
  }

  v6.location = 0;
  CFDataReplaceBytes(a1, v6, v8, 8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t priorityDispatcher_syncTask(uint64_t a1)
{
  result = (*a1)(*(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

uint64_t APSPriorityDispatcherSyncTask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  if (a1 && a2)
  {
    v7 = 0;
    v3 = priorityDispatcher_dispatchFunction(a1, priorityDispatcher_syncTask, v6, 0);
    if (v3)
    {
      v4 = v3;
      APSLogErrorAt(v3);
    }

    else
    {
      return v7;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v4;
}

uint64_t priorityDispatcher_dispatchFunction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    result = 4294960591;
    goto LABEL_16;
  }

  v8 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
  if (!v8)
  {
    APSLogErrorAt(0);
    result = 4294960568;
    goto LABEL_16;
  }

  v9 = v8;
  dispatch_retain(*(a1 + 16));
  v10 = *(a1 + 24);
  *v9 = *(a1 + 16);
  v9[1] = a2;
  v9[2] = a3;
  FigSimpleMutexLock();
  dispatch_retain(*(a1 + 40));
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 24);
  v14 = FigSimpleMutexUnlock();
  if (a4)
  {
    if (a4 == 2)
    {
      MEMORY[0x223DB4CC0](v14);
      v15 = *MEMORY[0x277CC1AD8];
      v16 = *MEMORY[0x277CBECE8];
      FigThreadCopyProperty();
      CFGetInt64Ranged();
      if (gLogCategory_APSPriorityDispatcher <= 90 && (gLogCategory_APSPriorityDispatcher != -1 || _LogCategory_Initialize()))
      {
        FigThreadGetMachThreadPriorityValue();
        LogPrintF();
      }
    }

    dispatch_async_f(v11, v9, priorityDispatcher_invokeAndDestroyContext);
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_sync_f(v11, v9, priorityDispatcher_invokeAndDestroyContext);
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  dispatch_release(v11);
LABEL_15:
  result = 0;
LABEL_16:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void priorityDispatcher_invokeAndDestroyContext(uint64_t a1)
{
  dispatch_sync_f(*a1, *(a1 + 16), *(a1 + 8));
  if (*a1)
  {
    dispatch_release(*a1);
  }

  free(a1);
}

uint64_t APSRTPJitterBufferCreate(uint64_t a1, __int128 *a2, __int128 *a3, int a4, char a5, const void *a6, _DWORD *a7)
{
  if (!a2 || !a3 || *(a3 + 2) != 1819304813 || !a4)
  {
    APSLogErrorAt(0);
    v14 = 0;
    LODWORD(v34) = -6705;
    goto LABEL_45;
  }

  if (APSRTPJitterBufferGetTypeID_once != -1)
  {
    dispatch_once(&APSRTPJitterBufferGetTypeID_once, &__block_literal_global_1277);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (!Instance)
  {
    goto LABEL_49;
  }

  *(Instance + 112) = 0u;
  v15 = (Instance + 112);
  *(Instance + 256) = 0u;
  *(Instance + 272) = 0u;
  *(Instance + 224) = 0u;
  *(Instance + 240) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 208) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v16 = *a2;
  v17 = a2[1];
  *(Instance + 104) = *(a2 + 4);
  *(Instance + 88) = v17;
  *(Instance + 72) = v16;
  v19 = *a3;
  v18 = a3[1];
  *(Instance + 144) = *(a3 + 4);
  *(Instance + 112) = v19;
  *(Instance + 128) = v18;
  *(Instance + 156) = *(Instance + 112) * a4 / 0x3E8;
  *(Instance + 160) = a4;
  *(Instance + 274) = 0;
  *(Instance + 236) = 0;
  if (a5)
  {
    *(Instance + 164) = 257;
  }

  *(Instance + 16) = CFRetain(a6);
  v20 = dispatch_queue_create("com.apple.APSRTPJitterBuffer.log", 0);
  *(v14 + 24) = v20;
  if (!v20)
  {
LABEL_49:
    APSLogErrorAt(0);
    LODWORD(v34) = -6728;
    goto LABEL_45;
  }

  if (gLogCategory_APSRTPJitterBuffer <= 40 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
  {
    *(v14 + 164);
    LogPrintF();
  }

  if (*(v14 + 80) == 1819304813)
  {
    v21 = 0x5A0u / *(v14 + 88);
  }

  else
  {
    v21 = *(v14 + 92);
  }

  *(v14 + 152) = v21;
  if (v21)
  {
    v22 = 4 * *(v14 + 156) / v21 + 1;
    *(v14 + 40) = v22;
    v23 = malloc_type_calloc(v22, 0x5C8uLL, 0x10000409D9978B0uLL);
    *(v14 + 32) = v23;
    if (!v23)
    {
LABEL_55:
      APSLogErrorAt(0);
      v34 = 4294960568;
      goto LABEL_56;
    }

    if (gLogCategory_APSRTPJitterBuffer <= 40 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      v39 = *(v14 + 16);
      v41 = *(v14 + 40);
      LogPrintF();
    }

    v24 = CFGetAllocator(v14);
    v25 = CMSimpleQueueCreate(v24, *(v14 + 40), (v14 + 56));
    if (v25)
    {
      v34 = v25;
    }

    else
    {
      v26 = CFGetAllocator(v14);
      v25 = CMSimpleQueueCreate(v26, *(v14 + 40), (v14 + 48));
      if (!v25)
      {
        v27 = dispatch_semaphore_create(0);
        *(v14 + 64) = v27;
        if (v27)
        {
          if (*(v14 + 40))
          {
            v28 = 0;
            v29 = 0;
            do
            {
              CMSimpleQueueEnqueue(*(v14 + 48), (*(v14 + 32) + v28));
              ++v29;
              v28 += 1480;
            }

            while (v29 < *(v14 + 40));
          }

          if (*(v14 + 72) == *v15 && *(v14 + 100) == *(v14 + 140))
          {
            *(v14 + 224) = 20 * *(v14 + 156) * *(v14 + 136);
            v30 = MirroredRingBufferInit();
            if (v30)
            {
              v34 = v30;
            }

            else
            {
              if (gLogCategory_APSRTPJitterBuffer <= 40 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
              {
                v40 = *(v14 + 16);
                v42 = (*(v14 + 208) - *(v14 + 220) + *(v14 + 216));
                LogPrintF();
              }

              v30 = AudioConverterNew(v15 - 1, (v14 + 112), (v14 + 248));
              if (v30)
              {
                v34 = v30;
              }

              else
              {
                v30 = pthread_create((v14 + 256), 0, _APSRTPJitterBufferDecodeThreadEntry, v14);
                if (!v30)
                {
                  *(v14 + 264) = v14 + 256;
                  if (!*(v14 + 164))
                  {
                    goto LABEL_44;
                  }

                  LODWORD(v31) = *(v14 + 224);
                  HIDWORD(v32) = 1072483532;
                  LODWORD(v32) = *(v14 + 136);
                  v33 = 4 * a4 * *(v14 + 112) / 0x3E8;
                  *(v14 + 180) = (v31 * 0.9 / v32);
                  *(v14 + 184) = v33;
                  if (gLogCategory_APSRTPJitterBuffer > 40)
                  {
                    goto LABEL_44;
                  }

                  if (gLogCategory_APSRTPJitterBuffer == -1)
                  {
                    if (!_LogCategory_Initialize())
                    {
                      goto LABEL_44;
                    }

                    v37 = *(v14 + 180);
                    v38 = *(v14 + 184);
                  }

                  LogPrintF();
LABEL_44:
                  LODWORD(v34) = 0;
                  goto LABEL_45;
                }

                v34 = v30;
              }
            }

            APSLogErrorAt(v30);
          }

          else
          {
            APSLogErrorAt(0);
            v34 = 4294960591;
          }

          v36 = v34;
          goto LABEL_63;
        }

        goto LABEL_55;
      }

      v34 = v25;
    }

    APSLogErrorAt(v25);
  }

  else
  {
    APSLogErrorAt(0);
    v34 = 4294960591;
  }

LABEL_56:
  v36 = v34;
LABEL_63:
  APSLogErrorAt(v36);
LABEL_45:
  if (a7)
  {
    *a7 = v34;
  }

  return v14;
}

uint64_t APSTransportMessageGetAudioDataHeader(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  if (a2)
  {
    memset(v6, 0, 10);
    v3 = CMBlockBufferCopyDataBytes(a1, 0, 0xAuLL, v6);
    v4 = v3;
    if (v3)
    {
      APSLogErrorAt(v3);
    }

    else
    {
      *a2 = bswap32(v6[0].u16[0]) >> 16;
      *(a2 + 2) = vrev32_s8(*(v6 + 2));
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v4;
}

__CFData *APSFeaturesCreateMutable(uint64_t a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  v3 = Mutable;
  if (Mutable)
  {
    if (a1 >= 1)
    {
      CFDataSetLength(Mutable, (a1 + 7) >> 3);
    }
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v3;
}

uint64_t APSTransportMessageGetAudioAADPointer(OpaqueCMBlockBuffer *a1, char **dataPointerOut, void *a3)
{
  DataPointer = CMBlockBufferGetDataPointer(a1, 2uLL, 0, 0, dataPointerOut);
  v5 = DataPointer;
  if (DataPointer)
  {
    APSLogErrorAt(DataPointer);
  }

  else
  {
    *a3 = 8;
  }

  return v5;
}

uint64_t APSAudioStats_CopySampleRateStatsAsString(uint64_t a1)
{
  if (a1)
  {
    APSSampleRateTracker_GetRate((a1 + 312));
    APSSampleRateTracker_GetTimeAccumulated(a1 + 312);
    APSSampleRateTracker_GetRate((a1 + 352));
    APSSampleRateTracker_GetTimeAccumulated(a1 + 352);
    return CFStringCreateF();
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v1;
}

double APSSampleRateTracker_GetTimeAccumulated(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(a1);
    return 0.0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0.0;
  }

  v3 = *(a1 + 20);
  if (v3)
  {
    v4 = *(a1 + 20);
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (*(a1 + 24) < *(a1 + 16))
  {
    v3 = 0;
  }

  v5 = *(v2 + 16 * (v4 - 1)) - *(v2 + 16 * v3);

  UpTicksToSecondsF();
  return result;
}

double APSSampleRateTracker_GetRate(unint64_t *a1)
{
  if (a1)
  {
    TimeAccumulated = APSSampleRateTracker_GetTimeAccumulated(a1);
    v3 = *a1;
    v4 = a1[4];
    v5 = v3 / TimeAccumulated;
    if (v4)
    {
      APSStatsHistogramAddValue(v4, v3 / TimeAccumulated);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 0.0;
  }

  return v5;
}

uint64_t APSStatsHistogramAddValue(uint64_t a1, double a2)
{
  result = mach_absolute_time();
  if (!a1 || *(a1 + 72) <= 0.0)
  {
    return result;
  }

  v5 = result;
  v6 = *(a1 + 16);
  FigSimpleMutexLock();
  v7 = *(a1 + 104);
  if (v5 - v7 > *(a1 + 88))
  {
    if (!*(a1 + 128))
    {
LABEL_7:
      v10 = *(a1 + 40);
      v11 = *(a1 + 72);
      if (a2 >= v10 + v11)
      {
        if (a2 >= *(a1 + 48) - v11)
        {
          v12 = *(a1 + 120) - 1;
          v14 = *(a1 + 64);
          if (v14 <= a2)
          {
            v14 = a2;
          }

          *(a1 + 64) = v14;
        }

        else
        {
          v12 = ((a2 - v10) / v11);
        }
      }

      else
      {
        v12 = 0;
        v13 = *(a1 + 56);
        if (v13 >= a2)
        {
          v13 = a2;
        }

        *(a1 + 56) = v13;
      }

      ++*(*(a1 + 112) + 4 * v12);
      ++*(a1 + 124);
      if (!*(a1 + 96))
      {
        *(a1 + 96) = v5;
      }

      *(a1 + 104) = v5;
      goto LABEL_20;
    }

    if (v7)
    {
      v8 = a2 - *(a1 + 80);
      UpTicksToSecondsF();
      *(a1 + 80) = a2;
      a2 = v8 / v9;
      goto LABEL_7;
    }

    *(a1 + 96) = v5;
    *(a1 + 104) = v5;
    *(a1 + 80) = a2;
  }

LABEL_20:
  v15 = *(a1 + 16);

  return FigSimpleMutexUnlock();
}

void keyHolder_secureMemDeallocateCallBack(_BYTE *a1)
{
  if (a1)
  {
    v1 = (a1 - 16);
    if (*(a1 - 1) == 0xFECA00EEFFC0ADBALL)
    {
      for (i = *v1; i; --i)
      {
        *a1++ = 0;
      }

      free(v1);
    }

    else if (gLogCategory_APSKeyHolderCommon <= 90 && (gLogCategory_APSKeyHolderCommon != -1 || _LogCategory_Initialize()))
    {
      v3 = *v1;
      LogPrintF();
    }
  }
}

void APSRealTimeSignalGuts::~APSRealTimeSignalGuts(APSRealTimeSignalGuts *this)
{
  if (*(this + 9))
  {
    caulk::concurrent::messenger::drain((this + 24));
    dispatch_sync_f(*(this + 6), *(this + 7), *(this + 9));
  }

  dispatch_release(*(this + 6));
  MEMORY[0x223DB55E0](this + 24);

  caulk::concurrent::message::~message(this);
}

{
  APSRealTimeSignalGuts::~APSRealTimeSignalGuts(this);

  JUMPOUT(0x223DB5660);
}

void stallMonitor_timerFire(uint64_t a1)
{
  context = a1;
  cf = 0;
  v7 = 0;
  v5 = mach_absolute_time();
  v8 = 0;
  CFSetApplyFunction(*(a1 + 24), stallMonitor_activityApplier, &context);
  if (!v8)
  {
    goto LABEL_44;
  }

  if (!cf || !v7)
  {
    APSLogErrorAt(0);
    goto LABEL_44;
  }

  if (v5 < *(context + 32))
  {
LABEL_44:
    v2 = 0;
LABEL_27:
    v3 = 0;
    goto LABEL_34;
  }

  *(context + 32) = *(context + 40) + v5;
  v2 = CFStringCreateF();
  if (!v2)
  {
    APSLogErrorAt(0);
    goto LABEL_27;
  }

  if (v8)
  {
    if (gLogCategory_APSStallMonitor <= 50 && (gLogCategory_APSStallMonitor != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!FigUserTailspinWithMessage() && gLogCategory_APSStallMonitor <= 90 && (gLogCategory_APSStallMonitor != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if ((v8 & 2) != 0)
  {
    if (gLogCategory_APSStallMonitor <= 50 && (gLogCategory_APSStallMonitor != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!FigUserStackshotWithMessage() && gLogCategory_APSStallMonitor <= 90 && (gLogCategory_APSStallMonitor != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if ((v8 & 4) == 0)
  {
    goto LABEL_27;
  }

  if (gLogCategory_APSStallMonitor <= 50 && (gLogCategory_APSStallMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = CFStringCreateF();
  if (v3)
  {
    APSTapToRadarInvoke(@"AirPlay (New Bugs)", v3, v7, @"AirPlay - Stall Monitor", 0, 0);
  }

  else
  {
    APSLogErrorAt(0);
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

APSRealTimeSignalGuts *___ZL26_APSRealTimeSignalFinalizePKv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    APSRealTimeSignalGuts::~APSRealTimeSignalGuts(result);

    JUMPOUT(0x223DB5660);
  }

  return result;
}

__CFString *hist_copyDebugDescription(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = APSStatsHistogramCopyAsDictionary(a1);
  if (v3)
  {
    v4 = v3;
    cf = v3;
    if (CFDictionaryGetCount(v3) < 1)
    {
      goto LABEL_12;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    Value = CFDictionaryGetValue(v4, @"Name");
    v7 = CFDictionaryGetValue(v4, @"UnitName");
    v8 = CFDictionaryGetValue(v4, @"BucketCount");
    CFDictionaryGetDouble();
    CFStringAppendFormat(Mutable, 0, @"%@ (%@)\nBucket count: %@\nTotal samples: %u\nDuration: %.1f sec\n", Value, v7, v8, Int64Ranged, v9, cf);
    v10 = CFDictionaryGetValue(v4, @"Intervals");
    v11 = CFDictionaryGetValue(v4, @"Values");
    Count = CFArrayGetCount(v11);
    if (CFArrayGetCount(v10) == Count + 1)
    {
      if (Count >= 1)
      {
        v13 = 0;
        do
        {
          FigCFArrayGetFloatAtIndex();
          v14 = v13 + 1;
          FigCFArrayGetFloatAtIndex();
          FigCFArrayGetFloatAtIndex();
          snprintf(__str, 0x20uLL, "%.1f - %.1f", 0.0, 0.0);
          CFStringAppendFormat(Mutable, 0, @"%16s %10.1f %7.2f%% ", __str, Int64Ranged * 0.0, 0.0 * 100.0);
          v15 = (0.0 * 50.0 + 0.5);
          if (v15 >= 1)
          {
            do
            {
              CFStringAppend(Mutable, @"*");
              --v15;
            }

            while (v15);
          }

          CFStringAppend(Mutable, @"\n");
          v13 = v14;
        }

        while (v14 != Count);
      }
    }

    else
    {
LABEL_12:
      APSLogErrorAt(0);
    }

    CFRelease(cf);
  }

  else
  {
    APSLogErrorAt(0);
  }

  v16 = *MEMORY[0x277D85DE8];
  return Mutable;
}

__CFDictionary *APSStatsHistogramCopyAsDictionary(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"Name", *(a1 + 24));
    CFDictionarySetValue(v4, @"UnitName", *(a1 + 32));
    v5 = *(a1 + 120);
    FigCFDictionarySetInt32();
    v6 = MEMORY[0x277CBF128];
    v7 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
    v8 = CFArrayCreateMutable(v2, 0, v6);
    v9 = *(a1 + 16);
    FigSimpleMutexLock();
    v10 = *(a1 + 124);
    FigCFDictionarySetInt32();
    v12 = *(a1 + 96);
    v11 = *(a1 + 104);
    UpTicksToSecondsF();
    FigCFDictionarySetFloat();
    v13 = *(a1 + 56);
    FigCFArrayAppendFloat();
    if (*(a1 + 120) >= 2u)
    {
      v14 = 1;
      do
      {
        v15 = *(a1 + 40) + *(a1 + 72) * v14;
        FigCFArrayAppendFloat();
        ++v14;
      }

      while (v14 < *(a1 + 120));
    }

    v16 = *(a1 + 64);
    FigCFArrayAppendFloat();
    CFDictionarySetValue(v4, @"Intervals", v7);
    *(a1 + 124);
    if (*(a1 + 120))
    {
      v17 = 0;
      do
      {
        v18 = *(*(a1 + 112) + 4 * v17);
        FigCFArrayAppendFloat();
        ++v17;
      }

      while (v17 < *(a1 + 120));
    }

    CFDictionarySetValue(v4, @"Values", v8);
    v19 = *(a1 + 16);
    FigSimpleMutexUnlock();
    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v4;
}

void hist_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 16))
  {
    FigSimpleMutexDestroy();
    *(a1 + 16) = 0;
  }

  free(*(a1 + 112));
  *(a1 + 112) = 0;
}

uint64_t APSAtomicMessageQueueFinalize(uint64_t result)
{
  for (i = result; ; result = (*(**(i + 16) + 24))(*(i + 16)))
  {
    v2 = *(i + 96);
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = atomic_exchange_explicit((i + 32), 0, memory_order_acquire);
    if (!v3)
    {
      break;
    }

    v2 = 0;
    do
    {
      v4 = v2;
      v2 = v3;
      v3 = atomic_load(v3);
      atomic_store(v4, v2);
    }

    while (v3);
    *(i + 96) = v2;
LABEL_7:
    v5 = atomic_load(v2);
    *(i + 96) = v5;
    v6 = *(i + 24);
  }

  return result;
}

void _APSRealTimeSignalFinalize(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (rtSignal_getFinalizerQueue(void)::sAPSRealTimeSignalFinalizerQueueOnce != -1)
    {
      dispatch_once(&rtSignal_getFinalizerQueue(void)::sAPSRealTimeSignalFinalizerQueueOnce, &__block_literal_global_69);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZL26_APSRealTimeSignalFinalizePKv_block_invoke;
    block[3] = &__block_descriptor_tmp_70;
    block[4] = v1;
    dispatch_async(rtSignal_getFinalizerQueue(void)::sAPSRealTimeSignalFinalizerQueue, block);
  }
}

void chachaCryptor_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSCryptorChaCha20Poly1305 <= 30 && (gLogCategory_APSCryptorChaCha20Poly1305 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = *(DerivedStorage + 264);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 264) = 0;
  }

  for (i = 0; i != 256; ++i)
  {
    *(DerivedStorage + 8 + i) = 0;
  }
}

uint64_t APSEventRecorderGetEventTimeRecursive(CFTypeRef a1, int a2, int *a3)
{
  if (!a1)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v4 = a2;
  v5 = a2 & 0xFFFF000;
  v6 = -72162;
  if ((a2 & 0xFFFF000) == *(a1 + 4))
  {
    a1 = CFRetain(a1);
LABEL_5:
    if (v5 == *(a1 + 4) && (v4 & 0xFFFu) < *(a1 + 26))
    {
      v6 = 0;
      v7 = (*(a1 + 14) + 24 * (v4 & 0xFFF));
      v9 = *v7;
      v8 = v7[1];
      if (!a3)
      {
        goto LABEL_11;
      }

LABEL_10:
      *a3 = v6;
      goto LABEL_11;
    }

LABEL_9:
    v9 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  a1 = eventRecorder_copyChildEventRecorderOfTypeByDeepSearch(a1, a2 & 0xFFFF000);
  if (a1)
  {
    goto LABEL_5;
  }

  v9 = 0;
  v6 = -72163;
  if (a3)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a1)
  {
    CFRelease(a1);
  }

  return v9;
}

uint64_t APSAudioStats_TerminateSession(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 288))
    {
      v3 = *(a1 + 304);
      if (v3)
      {
        dispatch_source_cancel(v3);
        v4 = *(a1 + 304);
        if (v4)
        {
          dispatch_release(v4);
        }

        *(a1 + 304) = 0;
      }
    }

    return APSZeroTracker_EndCurrentRun(a1 + 64);
  }

  else
  {

    return APSLogErrorAt(0);
  }
}

uint64_t APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx(const void *a1, int a2, const void *a3, int a4, int a5, uint64_t *a6)
{
  result = 0;
  v15 = 0;
  if (a1)
  {
    if (a3)
    {
      EventTimeRecursive = APSEventRecorderGetEventTimeRecursive(a1, a2, &v15 + 1);
      v13 = APSEventRecorderGetEventTimeRecursive(a3, a4, &v15);
      if (a5 != 1 || (result = 4294895134, !v15) && EventTimeRecursive && v13)
      {
        if (v13 < EventTimeRecursive)
        {
          APSLogErrorAt(0);
          return 4294895135;
        }

        else
        {
          v14 = UpTicksToMilliseconds();
          result = 0;
          *a6 = v14;
        }
      }
    }
  }

  return result;
}

CFTypeRef eventRecorder_copyChildEventRecorderOfTypeByDeepSearch(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 40));
  Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 32));
  pthread_mutex_unlock((a1 + 40));
  if (Copy)
  {
    Count = CFArrayGetCount(Copy);
    if (gLogCategory_APSEventRecorder <= 10 && (gLogCategory_APSEventRecorder != -1 || _LogCategory_Initialize()))
    {
      v12 = *(a1 + 24);
      v14 = *(a1 + 16);
      LogPrintF();
    }

    if (Count >= 1)
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Copy, v6);
        if (gLogCategory_APSEventRecorder <= 10 && (gLogCategory_APSEventRecorder != -1 || _LogCategory_Initialize()))
        {
          break;
        }

        if (ValueAtIndex)
        {
          goto LABEL_13;
        }

        v8 = 0;
LABEL_14:
        if (v8 == a2)
        {
          v9 = CFRetain(ValueAtIndex);
        }

        else
        {
          v9 = eventRecorder_copyChildEventRecorderOfTypeByDeepSearch(ValueAtIndex, a2);
        }

        v10 = v9;
        if (v9)
        {
          goto LABEL_22;
        }

        if (Count == ++v6)
        {
          goto LABEL_21;
        }
      }

      v15 = *(ValueAtIndex + 3);
      v16 = ValueAtIndex[4];
      v13 = *(a1 + 24);
      LogPrintF();
LABEL_13:
      v8 = ValueAtIndex[4];
      goto LABEL_14;
    }

LABEL_21:
    v10 = 0;
LABEL_22:
    CFRelease(Copy);
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v10;
}

void _APSRTPJitterBufferFinalize(uint64_t a1)
{
  if (*(a1 + 264))
  {
    *(a1 + 273) = 1;
    dispatch_semaphore_signal(*(a1 + 64));
    pthread_join(*(a1 + 256), 0);
    *(a1 + 264) = 0;
  }

  dispatch_sync(*(a1 + 24), &__block_literal_global_53);
  if (gLogCategory_APSRTPJitterBuffer <= 50 && (gLogCategory_APSRTPJitterBuffer != -1 || _LogCategory_Initialize()))
  {
    v11 = *(a1 + 280);
    v12 = *(a1 + 284);
    v9 = *(a1 + 16);
    v10 = *(a1 + 276);
    LogPrintF();
  }

  v2 = *(a1 + 248);
  if (v2)
  {
    AudioConverterDispose(v2);
    *(a1 + 248) = 0;
  }

  MirroredRingBufferFree();
  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 64) = 0;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 24) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }
}

__CFString *APSAudioStatsCopyDebugDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x277CBECE8];
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    v4 = CFStringCreateMutable(v2, 0);
    v5 = *(a1 + 24);
    if (v5 > 0.0)
    {
      v6 = *(a1 + 400) / v5;
      v7 = *(a1 + 392) / v5;
    }

    CFStringAppendF();
    CFStringAppend(Mutable, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    CFStringAppendF();
    if (*(a1 + 16))
    {
      v8 = *(a1 + 80);
      v9 = CFStringCreateMutable(v2, 0);
      if (*(a1 + 32) == 1819304813 && v8)
      {
        CFStringAppendF();
        CFStringAppendF();
        v10 = 0;
        v11 = 9;
        do
        {
          v12 = *(a1 + 104);
          if (v10 >= v12)
          {
            v13 = v11 + v12;
          }

          else
          {
            v13 = v11 + v12 - 10;
          }

          v14 = a1 + 128 + 16 * v13;
          if (*v14)
          {
            v15 = *(v14 + 8);
            v16 = *(a1 + 88);
            UpTicksToSecondsF();
            v21 = *v14 / (*(a1 + 24) * *(a1 + 48));
            CFStringAppendF();
          }

          ++v10;
          --v11;
        }

        while (v10 != 10);
      }

      CFStringAppend(Mutable, v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    else
    {
      APSLogErrorAt(0);
      CFStringAppend(Mutable, 0);
    }

    v17 = APSAudioStats_CopySampleRateStatsAsString(a1);
    CFStringAppend(Mutable, v17);
    if (v17)
    {
      CFRelease(v17);
    }

    if (*(a1 + 344))
    {
      v19 = *(a1 + 344);
      CFStringAppendF();
    }

    if (*(a1 + 384))
    {
      v20 = *(a1 + 384);
      CFStringAppendF();
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return Mutable;
}

void APSSampleRateTracker_Finalize(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {

    APSLogErrorAt(0);
  }
}

uint64_t APSTransportMessageGetAudioDataPointer(OpaqueCMBlockBuffer *a1, char **dataPointerOut, size_t *a3)
{
  DataPointer = CMBlockBufferGetDataPointer(a1, 0xAuLL, a3, 0, dataPointerOut);
  v4 = DataPointer;
  if (DataPointer)
  {
    APSLogErrorAt(DataPointer);
  }

  return v4;
}

void APSAudioStatsFinalize(uint64_t a1)
{
  if (a1)
  {
    APSSampleRateTracker_Finalize(a1 + 312);
    APSSampleRateTracker_Finalize(a1 + 352);
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    if (*(a1 + 288))
    {
      v4 = *(a1 + 304);
      if (v4)
      {
        dispatch_source_cancel(v4);
        v5 = *(a1 + 304);
        if (v5)
        {
          dispatch_release(v5);
        }

        *(a1 + 304) = 0;
      }
    }
  }

  else
  {

    APSLogErrorAt(0);
  }
}

uint64_t APSRegisterReceiverAppLauncher()
{
  if (launcher_getReceiverLauncherShared_once != -1)
  {
    dispatch_once(&launcher_getReceiverLauncherShared_once, &__block_literal_global);
  }

  FigSimpleMutexLock();
  if (qword_280D686D8 == -1)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __APSRegisterReceiverAppLauncher_block_invoke;
    handler[3] = &__block_descriptor_40_e8_v12__0i8l;
    handler[4] = &launcher_getReceiverLauncherShared_launcher;
    notify_register_dispatch("com.apple.airplay.prefsChanged", &qword_280D686D8, qword_280D686B8, handler);
  }

  if (HIDWORD(qword_280D686D8) == -1)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __APSRegisterReceiverAppLauncher_block_invoke_2;
    v5[3] = &__block_descriptor_40_e8_v12__0i8l;
    v5[4] = &launcher_getReceiverLauncherShared_launcher;
    notify_register_dispatch("com.apple.os-eligibility-domain.change.samarium", &qword_280D686D8 + 1, qword_280D686B8, v5);
  }

  if (isEligibleForLauncher())
  {
    v7 = 0;
    Int64 = APSSettingsGetInt64(@"alternateSenderListenerEnable", &v7);
    if (v7)
    {
      v1 = 1;
    }

    else
    {
      v1 = Int64 == 0;
    }

    v2 = !v1;
  }

  else
  {
    v2 = 0;
  }

  byte_280D686E1 = v2;
  if (gLogCategory_APSReceiverAppLauncher <= 50 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = launcher_start(&launcher_getReceiverLauncherShared_launcher);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t isEligibleForLauncher()
{
  if (!APSSettingsIsFeatureEnabledInDomain())
  {
    return 1;
  }

  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    if (gLogCategory_APSReceiverAppLauncher <= 90)
    {
      v1 = domain_answer;
      if (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize())
      {
        strerror(v1);
        LogPrintF();
      }
    }
  }

  return 0;
}

uint64_t launcher_start(uint64_t a1)
{
  if (!*(a1 + 57))
  {
    return 0;
  }

  if (*a1)
  {
    return 0;
  }

  if (gLogCategory_APSReceiverAppLauncher <= 50 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = objc_alloc_init(MEMORY[0x277CBE030]);
  *a1 = v2;
  if (v2)
  {
    [v2 setDispatchQueue:*(a1 + 16)];
    [*a1 setDiscoveryFlags:{objc_msgSend(*a1, "discoveryFlags") | 0x4000000000}];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __launcher_start_block_invoke;
    v4[3] = &__block_descriptor_41_e18_v16__0__CBDevice_8l;
    v5 = 1;
    v4[4] = a1;
    [*a1 setDeviceFoundHandler:v4];
    [*a1 activateWithCompletion:&__block_literal_global_49];
    return 0;
  }

  APSLogErrorAt(0);
  if (gLogCategory_APSReceiverAppLauncher <= 90 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  launcher_stop(a1);
  return 4294960568;
}

uint64_t __launcher_start_block_invoke(uint64_t a1, void *a2)
{
  result = [a2 airplaySourceFlags];
  if ((result & 0x80) == 0)
  {
    result = APSShouldStartAdvertistingForAirPlaySourceBeacon(a2, *(a1 + 40), *(*(a1 + 32) + 8) == 2);
    if (result)
    {
      v5 = *(*(a1 + 32) + 32);

      return v5();
    }
  }

  return result;
}

void launcher_stop(id *a1)
{
  if (*a1)
  {
    if (gLogCategory_APSReceiverAppLauncher <= 50 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [*a1 invalidate];

    *a1 = 0;
  }
}

void __launcher_start_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_APSReceiverAppLauncher <= 90 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
    {
LABEL_9:
      LogPrintF();
    }
  }

  else if (gLogCategory_APSReceiverAppLauncher <= 50 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
  {

    goto LABEL_9;
  }
}

uint64_t launcher_handlePrefsChange(uint64_t a1)
{
  v2 = *(a1 + 24);
  FigSimpleMutexLock();
  APSGetAccessControlConfig((a1 + 8), 0);
  if (isEligibleForLauncher())
  {
    v8 = 0;
    Int64 = APSSettingsGetInt64(@"alternateSenderListenerEnable", &v8);
    if (v8)
    {
      v4 = 1;
    }

    else
    {
      v4 = Int64 == 0;
    }

    v5 = !v4;
    *(a1 + 57) = v5;
    if (!v4)
    {
      if (gLogCategory_APSReceiverAppLauncher <= 50 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      launcher_start(a1);
      goto LABEL_20;
    }
  }

  else
  {
    *(a1 + 57) = 0;
  }

  if (gLogCategory_APSReceiverAppLauncher <= 50 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  launcher_stop(a1);
LABEL_20:
  v6 = *(a1 + 24);
  return FigSimpleMutexUnlock();
}

uint64_t __launcher_getReceiverLauncherShared_block_invoke()
{
  qword_280D686C0 = FigSimpleMutexCreate();
  qword_280D686B8 = dispatch_queue_create("APSReceiverAppLauncherQueue", 0);
  qword_280D686C8 = launcher_senderDeviceFound;
  qword_280D686D8 = -1;
  IsFeatureEnabledInDomain = APSSettingsIsFeatureEnabledInDomain();
  v1 = @"com.apple.visionproapp";
  if (!IsFeatureEnabledInDomain)
  {
    v1 = @"com.apple.airplayreceiver";
  }

  qword_280D686D0 = v1;
  byte_280D686E0 = 1;
  result = IsAppleInternalBuild();
  if (result)
  {
    result = APSSettingsCopyValueEx(@"alternateSenderListenerAppID", 0, 0);
    if (result)
    {
      v3 = result;
      result = CFEqual(result, qword_280D686D0);
      if (!result)
      {
        qword_280D686D0 = v3;
        byte_280D686E0 = 0;
      }
    }
  }

  return result;
}

void launcher_senderDeviceFound(uint64_t a1)
{
  if (*(a1 + 57))
  {
    if (gLogCategory_APSReceiverAppLauncher <= 50 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(a1 + 56);
      v4 = objc_autoreleasePoolPush();
      if (gLogCategory_APSReceiverAppLauncher <= 50 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
      {
        v12 = v2;
        LogPrintF();
      }

      v5 = dispatch_semaphore_create(0);
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = v6;
      if (v3)
      {
        [v6 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
        if (APSSettingsIsFeatureEnabledInDomain())
        {
          v8 = @"visionproapp-private://airplayreceiver";
        }

        else
        {
          v8 = @"airplayreceiver-private://start";
        }

        v9 = [MEMORY[0x277CBEBC0] URLWithString:{v8, v12}];
        [v7 setObject:v9 forKey:*MEMORY[0x277D0AC40]];
      }

      v10 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
      v11 = [MEMORY[0x277D0AD60] optionsWithDictionary:v7];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __launchReceiverApp_block_invoke;
      v13[3] = &unk_2784A23F0;
      v13[4] = v5;
      v13[5] = v2;
      [v10 openApplication:v2 withOptions:v11 completion:v13];
      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v5);
      objc_autoreleasePoolPop(v4);
    }

    else
    {

      APSLogErrorAt(0);
    }
  }
}

intptr_t __launchReceiverApp_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (gLogCategory_APSReceiverAppLauncher <= 90 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
    {
      v6 = *(a1 + 40);
LABEL_8:
      LogPrintF();
    }
  }

  else if (gLogCategory_APSReceiverAppLauncher <= 50 && (gLogCategory_APSReceiverAppLauncher != -1 || _LogCategory_Initialize()))
  {
    v7 = *(a1 + 40);
    goto LABEL_8;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

uint64_t APSUnregisterReceiverAppLauncher()
{
  if (launcher_getReceiverLauncherShared_once != -1)
  {
    dispatch_once(&launcher_getReceiverLauncherShared_once, &__block_literal_global);
  }

  FigSimpleMutexLock();
  if (qword_280D686D8 != -1)
  {
    notify_cancel(qword_280D686D8);
    LODWORD(qword_280D686D8) = -1;
  }

  launcher_stop(launcher_getReceiverLauncherShared_launcher);

  return FigSimpleMutexUnlock();
}

char *APSPacketLossConcealerSaveData(char *__dst, char *a2, size_t a3)
{
  if (__dst && a2 && a3)
  {
    v3 = __dst;
    __dst = *(__dst + 2048);
    v4 = v3 - __dst + 0x4000;
    v5 = a3 - v4;
    if (a3 <= v4)
    {
      v6 = 0;
      v7 = 0;
      v5 = 0;
      *(v3 + 2048) = &__dst[a3];
      *(v3 + 2049) = &__dst[a3];
    }

    else
    {
      v6 = &a2[v4];
      *(v3 + 2048) = &v3[v5];
      *(v3 + 2049) = &v3[v5];
      v7 = v3;
      a3 = v3 - __dst + 0x4000;
      if (v3 - __dst == -16384)
      {
        if (!v5)
        {
LABEL_8:
          *(v3 + 4103) = 0;
          return __dst;
        }

LABEL_7:
        __dst = memcpy(v7, v6, v5);
        goto LABEL_8;
      }
    }

    __dst = memcpy(__dst, a2, a3);
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return __dst;
}

void APSPacketLossConcealerReset(void *a1, int a2, char a3, char a4)
{
  if (a1)
  {
    v8 = a1 + 2048;
    bzero(a1, 0x4000uLL);
    a1[2048] = a1;
    a1[2049] = a1;
    *(v8 + 16) = a4;
    *(v8 + 24) = a3;
    *(v8 + 5) = a2;
  }
}

uint64_t APSPacketLossConcealerConceal(char *__src, size_t __n, int a3, char *__dst)
{
  result = 0;
  if (!__n)
  {
    return result;
  }

  if (!__src)
  {
    return result;
  }

  v6 = __dst;
  if (!__dst)
  {
    return result;
  }

  v7 = __n;
  v8 = __src + 0x3FFF;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 2)
      {
        v9 = *(__src + 2049);
        v10 = (__src - v9 + 0x4000);
        v11 = v7 - v10;
        if (v7 <= v10)
        {
          v12 = 0;
          v11 = 0;
          *(__src + 2049) = &v9[v7];
          __src = 0;
        }

        else
        {
          v12 = &v10[__dst];
          *(__src + 2049) = &__src[v11];
          v7 = __src - v9 + 0x4000;
          if (__src - v9 == -16384)
          {
            goto LABEL_59;
          }
        }

        memcpy(__dst, v9, v7);
LABEL_59:
        if (v11)
        {
          memcpy(v12, __src, v11);
        }

        return 2;
      }

LABEL_20:
      bzero(__dst, __n);
      return 1;
    }

LABEL_17:
    v14 = *(__src + 2048);
    v15 = (v14 - __n);
    if (v14 - v7 >= __src)
    {
      v18 = 0;
      __src = 0;
      v17 = 0;
      v16 = v7;
    }

    else
    {
      v16 = (__src - v15);
      v17 = v14 - __src;
      v18 = &__dst[__src - v15];
      if (__src == v15)
      {
        goto LABEL_23;
      }

      v15 += 0x4000;
    }

    memcpy(__dst, v15, v16);
LABEL_23:
    if (v17)
    {
      memcpy(v18, __src, v17);
    }

    v19 = v8[17];
    if ((v19 - 40) < 0xFFFFFFE0 || v7 < 1)
    {
      return 3;
    }

    v20 = v19 >> 3;
    v21 = *(v8 + 21) * v8[25];
    v22 = &v6[v7];
    v23 = v21 / 0x3E8;
    do
    {
      v24 = *(v8 + 29);
      v25 = v24 + 1;
      if (v24 + 1 < v21)
      {
        v26 = v24 + 1;
      }

      else
      {
        v26 = v21;
      }

      *(v8 + 29) = v26;
      v27 = 20 * (255 * v26 / v21);
      if (v27 >= 0xFF)
      {
        v27 = 255;
      }

      v28 = v27 ^ 0xFF;
      result = 3;
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          if (v25 >= v23)
          {
            v32 = (*v6 & 0xFFFFFFu) * v28 / 0xFF;
          }

          else
          {
            v32 = 0;
          }

          *v6 = v32;
          v6[2] = BYTE2(v32);
        }

        else
        {
          if (v20 != 4)
          {
            return result;
          }

          if (v25 >= v23)
          {
            v30 = *v6 * v28 / 255;
          }

          else
          {
            v30 = 0;
          }

          *v6 = v30;
        }
      }

      else if (v20 == 1)
      {
        if (v25 >= v23)
        {
          v33 = *v6 * v28 + ((-32639 * (*v6 * v28)) >> 16);
          v31 = (v33 >> 7) + ((v33 & 0x8000) >> 15);
        }

        else
        {
          LOBYTE(v31) = 0;
        }

        *v6 = v31;
      }

      else
      {
        if (v20 != 2)
        {
          return result;
        }

        if (v25 >= v23)
        {
          v34 = (2155905153 * v28 * *v6) >> 32;
          v29 = (v34 >> 7) + (v34 >> 31);
        }

        else
        {
          LOWORD(v29) = 0;
        }

        *v6 = v29;
      }

      v6 += v20;
    }

    while (v6 < v22);
    return result;
  }

  if (a3 == 3)
  {
    goto LABEL_17;
  }

  if (a3 != 4)
  {
    goto LABEL_20;
  }

  v13 = *(__src + 2049);
  do
  {
    *v6++ = *v13;
    v13 = (*(__src + 2049) - 1);
    if (v13 < __src)
    {
      v13 = __src + 0x3FFF;
    }

    *(__src + 2049) = v13;
    --v7;
  }

  while (v7);
  return 4;
}

uint64_t APSVideoFormatDescriptionCopyAsBlockBuffer(const opaqueCMFormatDescription *a1, CMBlockBufferRef *a2)
{
  if (useLegacySerialization_onceToken != -1)
  {
    dispatch_once(&useLegacySerialization_onceToken, &__block_literal_global_16);
  }

  v4 = *MEMORY[0x277CBECE8];
  if (useLegacySerialization_useLegacy)
  {
    v5 = *MEMORY[0x277CBECE8];

    return MEMORY[0x282112AD8](v5, a1, a2);
  }

  else
  {
    SystemEncoding = CFStringGetSystemEncoding();

    return CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(v4, a1, SystemEncoding, 0, a2);
  }
}

uint64_t __useLegacySerialization_block_invoke()
{
  result = APSSettingsGetIntWithOverrideAndDefault(@"useLegacyFormatDescriptionSerialization", 0, 0);
  useLegacySerialization_useLegacy = result != 0;
  return result;
}

uint64_t APSVideoFormatDescriptionCreateFromBlockBuffer(OpaqueCMBlockBuffer *a1, CMVideoFormatDescriptionRef *a2)
{
  if (useLegacySerialization_onceToken != -1)
  {
    dispatch_once(&useLegacySerialization_onceToken, &__block_literal_global_16);
  }

  v4 = *MEMORY[0x277CBECE8];
  if (useLegacySerialization_useLegacy)
  {
    v5 = *MEMORY[0x277CBECE8];

    return MEMORY[0x282112AC0](v5, a1, 0, a2);
  }

  else
  {
    SystemEncoding = CFStringGetSystemEncoding();

    return CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBuffer(v4, a1, SystemEncoding, 0, a2);
  }
}

uint64_t APSWirelessCoexManagerGetClassID()
{
  if (APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassIDOnce != -1)
  {
    dispatch_once_f(&APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassIDOnce, &APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassID, coexManager_RegisterClass);
  }

  return APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassID;
}

uint64_t coexManager_RegisterClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&kAPSWirelessCoexManagerClassDescriptor, ClassID, 1, a1);
}

uint64_t APSWirelessCoexManagerGetTypeID()
{
  if (APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassIDOnce != -1)
  {
    dispatch_once_f(&APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassIDOnce, &APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassID, coexManager_RegisterClass);
  }

  v1 = APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSWirelessCoexManagerCreateWithOptions(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  value = 0;
  cf = 0;
  strcpy(__source, " ");
  if (!FigGetCFPreferenceNumberWithDefault())
  {
    return 0;
  }

  if (APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassIDOnce != -1)
  {
    dispatch_once_f(&APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassIDOnce, &APSWirelessCoexManagerGetClassID_sAPSWirelessCoexManagerClassID, coexManager_RegisterClass);
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
    *(DerivedStorage + 8) = 0;
    v7 = (DerivedStorage + 8);
    if (a2)
    {
      if (CFDictionaryGetValueIfPresent(a2, @"loggingID", &value))
      {
        CFStringGetCString(value, v7, 10, 0x600u);
        strlcat(v7, __source, 0xAuLL);
        if (gLogCategory_APSWirelessCoexManager <= 30 && (gLogCategory_APSWirelessCoexManager != -1 || _LogCategory_Initialize()))
        {
          if (cf)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LogPrintF();
        }
      }
    }

    *(DerivedStorage + 4) = FigGetCFPreferenceNumberWithDefault();
    if (gLogCategory_APSWirelessCoexManager <= 50 && (gLogCategory_APSWirelessCoexManager != -1 || _LogCategory_Initialize()))
    {
      if (cf)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LogPrintF();
    }

    v8 = 0;
    *a3 = cf;
  }

  return v8;
}

uint64_t coexManager_Finalize(uint64_t result)
{
  if (gLogCategory_APSWirelessCoexManager <= 50)
  {
    v1 = result;
    if (gLogCategory_APSWirelessCoexManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      if (v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      return LogPrintF();
    }
  }

  return result;
}

uint64_t APSWirelessCoexManagerNotifyCriticalBuffering(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage != a2)
  {
    v5 = DerivedStorage;
    *DerivedStorage = a2;
    if (gLogCategory_APSWirelessCoexManager <= 50 && (gLogCategory_APSWirelessCoexManager != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v7 = *(v5 + 1);
      LogPrintF();
    }
  }

  return 0;
}

uint64_t APSRealTimeReadableRingBufferGetTypeID()
{
  if (gAPSRealTimeReadableRingBufferInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimeReadableRingBufferInitOnce, 0, _APSRealTimeReadableRingBufferGetTypeID);
  }

  return gAPSRealTimeReadableRingBufferTypeID;
}

uint64_t _APSRealTimeReadableRingBufferGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRealTimeReadableRingBufferTypeID = result;
  return result;
}

void _APSRealTimeReadableRingBufferFinalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*(a1 + 16))
    {
      _X20 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 80) + 16 * v4;
        _X1 = 0;
        __asm { CASPA           X0, X1, X20, X21, [X8] }

        ++v4;
      }

      while (v4 < *(a1 + 16));
      v2 = *(a1 + 80);
    }

    free(v2);
  }
}

uint64_t APSRealTimeReadableRingBufferCreate(size_t a1, size_t a2, size_t a3, CFTypeRef *a4)
{
  v4 = 4294960591;
  if (a1 && a4)
  {
    if (gAPSRealTimeReadableRingBufferInitOnce != -1)
    {
      dispatch_once_f(&gAPSRealTimeReadableRingBufferInitOnce, 0, _APSRealTimeReadableRingBufferGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v10 = Instance;
      Instance[1] = 0u;
      v11 = (Instance + 1);
      Instance[4] = 0u;
      Instance[5] = 0u;
      Instance[2] = 0u;
      Instance[3] = 0u;
      RandomBytes();
      _X0 = 0;
      *v11 = a1;
      v11[1] = a2;
      v11[2] = a3;
      v13 = v11[4];
      do
      {
        _X5 = v11[5];
        __asm { CASPAL          X4, X5, X0, X1, [X8] }

        _ZF = _X4 == v13;
        v13 = _X4;
      }

      while (!_ZF);
      v10[8] = 0;
      v10[9] = 0;
      v20 = malloc_type_calloc(a1, 0x10uLL, 0x1000040451B5BE8uLL);
      v10[10] = v20;
      if (v20)
      {
        if (*v11)
        {
          v21 = 0;
          _X0 = 0;
          do
          {
            v23 = (v10[10] + 16 * v21);
            v24 = *v23;
            do
            {
              _X5 = v23[1];
              __asm { CASPAL          X4, X5, X0, X1, [X9] }

              _ZF = _X4 == v24;
              v24 = _X4;
            }

            while (!_ZF);
            ++v21;
          }

          while (v21 < *v11);
        }

        v4 = 0;
        *a4 = CFRetain(v10);
      }

      else
      {
        v4 = 4294960568;
      }

      CFRelease(v10);
    }

    else
    {
      return 4294960568;
    }
  }

  return v4;
}

uint64_t APSRealTimeReadableRingBufferRead(void *a1, void (*a2)(uint64_t, void, void), uint64_t a3)
{
  result = 4294960591;
  if (a1 && a2)
  {
    _X22 = 0;
    _X23 = 0;
    __asm { CASP            X22, X23, X22, X23, [X9] }

    v13 = (_X22 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = a1[8];
    if (v14 == v13)
    {
      v13 = a1[8];
      _X23 = a1[9];
    }

    else if (v14 == _X22)
    {
      v15 = a1[9];
    }

    _X0 = 0;
    v17 = a1[10] + 16 * _X23;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X9] }

    while (v13)
    {
      _X20 = 0;
      _X21 = 0;
      _X23 = (_X23 + 1) % a1[2];
      if (!_X23)
      {
        v13 = (v13 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      }

      v22 = a1[10] + 16 * _X23;
      __asm { CASP            X20, X21, X20, X21, [X11] }
    }

    a2(a3, 0, 0);
    return 0;
  }

  return result;
}

uint64_t APSRealTimeReadableRingBufferReadWithBlock(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return APSRealTimeReadableRingBufferRead(a1, rtRing_invokeBlock, a2);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRealTimeReadableRingBufferWrite(void *a1, uint64_t a2)
{
  result = 4294960591;
  if (a1)
  {
    _X20 = a2;
    if (a2)
    {
      _X22 = 0;
      _X23 = 0;
      __asm { CASP            X22, X23, X22, X23, [X8] }

      v12 = a1[3];
      if (v12)
      {
        _X20 = v12(a2);
      }

      _X2 = 0;
      _X3 = 0;
      v15 = a1[10];
      __asm { CASP            X2, X3, X2, X3, [X8] }

      do
      {
        v17 = a1[10];
        v18 = _X2;
        __asm { CASPL           X2, X3, X20, X21, [X8] }
      }

      while (_X2 != v18);
      if (1uLL % a1[2])
      {
        _X2 = _X22;
      }

      else
      {
        _X2 = (_X22 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      }

      v20 = a1[6];
      v21 = a1[7];
      do
      {
        _X7 = a1[7];
        __asm { CASP            X6, X7, X2, X3, [X8] }

        _ZF = _X6 == v20;
        v20 = _X6;
      }

      while (!_ZF);
      return 0;
    }
  }

  return result;
}

uint64_t APSRTPPacketProcessorProcessPacket(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, char *), unsigned int (*a8)(uint64_t), uint64_t a9)
{
  if (a2 > 0xB)
  {
    v12 = a1;
    v13 = a2 - 12;
    v14 = *(a1 + 24);
    *(v14 + 2) = bswap32(*(v14 + 2)) >> 16;
    *(v14 + 4) = vrev32_s8(*(v14 + 4));
    if ((*(v14 + 1) & 0x7F) == 0x61)
    {
      v62 = 0;
      v63 = a2 - 12;
      v61 = 0;
      v60 = 1;
      if (a3)
      {
        *(a1 + 36) |= 1u;
      }

      v15 = 0;
      v16 = 0;
      v17 = v14 + 12;
      while (*(v14 + v15 + 12) < 0)
      {
        v15 += 4;
        ++v16;
        if (v15 > v13)
        {
          goto LABEL_8;
        }
      }

      if (v15 >= v13)
      {
LABEL_8:
        APSLogErrorAt(0);
        v18 = 4294960553;
LABEL_39:
        APSLogErrorAt(v18);
        return v18;
      }

      v23 = a7(a1, a3, v16, a9, &v60);
      if (v23)
      {
        v18 = v23;
      }

      else
      {
        if (!v60)
        {
          APSRTPPassThroughJitterBufferRelinquishNode(a6, v12);
          return 0;
        }

        v24 = v15 | 1;
        v25 = a6;
        if (!a5)
        {
          v28 = a2 - v15 - 13;
          v63 = v28;
          goto LABEL_41;
        }

        v61 = bswap64(*(v14 + 8) | (*(v14 + 4) << 32));
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v26)
        {
          v27 = v26(a5, &v61, 8, v17 + v24, a2 - v15 - 13, v17 + v24, a2 - v15 - 13, &v63);
          if (!v27)
          {
            v28 = v63;
            v25 = a6;
LABEL_41:
            *v12 = v14;
            *(v12 + 8) = v17 + v24;
            *(v12 + 16) = v28;
            *(v12 + 32) = *(v14 + 4);
            if (v16)
            {
              v30 = 0;
              v31 = v16;
              v32 = v15 | 1;
              v56 = v15 | 1;
              while (1)
              {
                v33 = (*v12 + v30);
                v34 = v33[14];
                v35 = v33[15] | ((v34 & 3) << 8);
                if (v32 + v35 > v63 + v24)
                {
                  goto LABEL_8;
                }

                v36 = v12;
                v37 = v33[12];
                v38 = v33[13];
                v23 = APSRTPPassThroughJitterBufferAcquireRelinquishedNode(v25, &v62);
                if (v23)
                {
                  v18 = v23;
                  goto LABEL_38;
                }

                v39 = (v38 << 16) | (v34 << 8);
                v40 = v62;
                v41 = v39 >> 10;
                *(v62 + 36) |= 2u;
                *(v40 + 40) = (v39 >> 10) / a4;
                if (gLogCategory_APSReceiverAudioSessionRealtimePacketProcessor <= 30)
                {
                  if (gLogCategory_APSReceiverAudioSessionRealtimePacketProcessor == -1)
                  {
                    v42 = _LogCategory_Initialize();
                    v40 = v62;
                    if (!v42)
                    {
                      goto LABEL_49;
                    }

                    v48 = *(v62 + 40);
                  }

                  v54 = *(*v36 + 1);
                  v52 = *(*v36 + 1);
                  LogPrintF();
                  v40 = v62;
                }

LABEL_49:
                v43 = *(v40 + 24);
                v44 = *(*v36 + 2);
                v45 = **v36;
                *v43 = v45;
                *(v43 + 1) = BYTE1(v45) & 0x80 | v37 & 0x7F;
                v46 = *(v43 + 4) - v41;
                *(v43 + 4) = v46;
                *(v43 + 8) = v44;
                memcpy((v43 + 12), *v36 + v32 + 12, v35);
                *v40 = v43;
                v47 = v62;
                *(v62 + 8) = v43 + 12;
                *(v47 + 16) = v35;
                *(v47 + 32) = v46;
                v25 = a6;
                if (a8(a6))
                {
                  APSRTPPassThroughJitterBufferRelinquishNode(a6, v62);
                  v12 = v36;
                  v24 = v56;
                }

                else
                {
                  v12 = v36;
                  v24 = v56;
                  if (gLogCategory_APSReceiverAudioSessionRealtimePacketProcessor <= 10 && (gLogCategory_APSReceiverAudioSessionRealtimePacketProcessor != -1 || _LogCategory_Initialize()))
                  {
                    v53 = *(v43 + 4);
                    v55 = *(*v36 + 1);
                    LogPrintF();
                  }
                }

                v30 += 4;
                --v31;
                v32 += v35;
                if (!v31)
                {
                  v14 = *v12;
                  v28 = v63;
                  goto LABEL_59;
                }
              }
            }

            v32 = v15 | 1;
LABEL_59:
            v49 = *(v12 + 24);
            *(v49 + 1) = *(v49 + 1) & 0x80 | *(v14 + 4 * v16 + 12) & 0x7F;
            v50 = v24 - v32 + v28;
            *(v12 + 8) = v49 + 12;
            *(v12 + 16) = v50;
            memmove((v49 + 12), (v49 + 12 + v32), v50);
            v23 = (a8)(v25, v12, a9);
            if (!v23)
            {
              if (gLogCategory_APSReceiverAudioSessionRealtimePacketProcessor <= 10 && (gLogCategory_APSReceiverAudioSessionRealtimePacketProcessor != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              return 0;
            }

            v18 = v23;
            goto LABEL_38;
          }

          v18 = v27;
        }

        else
        {
          v18 = 4294954514;
        }

        v23 = v18;
      }

LABEL_38:
      APSLogErrorAt(v23);
      goto LABEL_39;
    }

    v62 = a2 - 12;
    v63 = 0;
    LOBYTE(v61) = 1;
    if (a3)
    {
      *(a1 + 36) |= 1u;
    }

    v19 = a7(a1, a3, 0, a9, &v61);
    if (v19)
    {
      v29 = v19;
      goto LABEL_34;
    }

    if (!v61)
    {
      APSRTPPassThroughJitterBufferRelinquishNode(a6, v12);
      return 0;
    }

    if (!a5)
    {
      goto LABEL_17;
    }

    v63 = bswap64(*(v14 + 8) | (*(v14 + 4) << 32));
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v20)
    {
      v21 = v20(a5, &v63, 8, v14 + 12, a2 - 12, v14 + 12, a2 - 12, &v62);
      if (!v21)
      {
        v13 = v62;
LABEL_17:
        *v12 = v14;
        *(v12 + 8) = v14 + 12;
        *(v12 + 16) = v13;
        *(v12 + 32) = *(v14 + 4);
        v19 = (a8)(a6, v12, a9);
        if (!v19)
        {
          if (gLogCategory_APSReceiverAudioSessionRealtimePacketProcessor <= 10 && (gLogCategory_APSReceiverAudioSessionRealtimePacketProcessor != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          return 0;
        }

        v29 = v19;
        if (v19 == -6757)
        {
          return v29;
        }

LABEL_34:
        APSLogErrorAt(v19);
        v18 = 4294960539;
        if (v29 == -6757)
        {
          return v18;
        }

        APSLogErrorAt(v29);
        return v29;
      }

      v29 = v21;
    }

    else
    {
      v29 = 4294954514;
    }

    v19 = v29;
    goto LABEL_34;
  }

  APSLogErrorAt(0);
  if (gLogCategory_APSReceiverAudioSessionRealtimePacketProcessor <= 10 && (gLogCategory_APSReceiverAudioSessionRealtimePacketProcessor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294960553;
}

uint64_t APSAtomicMessageQueueCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 && a3)
  {
    if (APSAtomicMessageQueueGetTypeID::sRegisterAPSAtomicMessageQueueOnce != -1)
    {
      dispatch_once_f(&APSAtomicMessageQueueGetTypeID::sRegisterAPSAtomicMessageQueueOnce, 0, registerAPSAtomicMessageQueue);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      result = 0;
      *(v6 + 24) = a2;
      *a3 = v6;
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

  return result;
}

uint64_t registerAPSAtomicMessageQueue(void *a1)
{
  sAPSAtomicMessageQueueClass = 0;
  unk_280D68A40 = "APSAtomicMessageQueue";
  qword_280D68A48 = APSAtomicMessageQueueInit;
  unk_280D68A50 = 0;
  qword_280D68A58 = APSAtomicMessageQueueFinalize;
  unk_280D68A60 = 0;
  qword_280D68A68 = 0;
  unk_280D68A70 = 0;
  qword_280D68A78 = APSAtomicMessageQueueCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sAPSAtomicMessageQueueID = result;
  return result;
}

__CFString *APSAtomicMessageQueueCopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v1, 0);
  CFStringAppendFormat(Mutable, 0, @"APSAtomicMessageQueue");
  return Mutable;
}

uint64_t APSAtomicMessageQueueGetTypeID()
{
  if (APSAtomicMessageQueueGetTypeID::sRegisterAPSAtomicMessageQueueOnce != -1)
  {
    dispatch_once_f(&APSAtomicMessageQueueGetTypeID::sRegisterAPSAtomicMessageQueueOnce, 0, registerAPSAtomicMessageQueue);
  }

  return sAPSAtomicMessageQueueID;
}

uint64_t APSZTSControllerGetTypeID()
{
  if (gAPSZTSControllerInitOnce != -1)
  {
    dispatch_once_f(&gAPSZTSControllerInitOnce, 0, _APSZTSControllerGetTypeID);
  }

  return gAPSZTSControllerTypeID;
}

uint64_t _APSZTSControllerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSZTSControllerTypeID = result;
  return result;
}

void _APSZTSControllerFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }
}

uint64_t APSZTSControllerCreate(uint64_t a1, int a2, OpaqueCMTimebase *a3, int a4, uint64_t *a5, double a6)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    a1 = 0;
LABEL_20:
    APSLogErrorAt(a1);
    v17 = 4294960591;
    goto LABEL_13;
  }

  if (a6 <= 0.0)
  {
    a1 = 0;
    goto LABEL_20;
  }

  if (!a3)
  {
    a1 = 0;
    goto LABEL_20;
  }

  if (!a5)
  {
    a1 = 0;
    goto LABEL_20;
  }

  v10 = a1;
  CMTimeMake(&timebaseTime, a4, 1000);
  value = timebaseTime.value;
  flags = timebaseTime.flags;
  timescale = timebaseTime.timescale;
  if ((timebaseTime.flags & 0x1D) != 1)
  {
    a1 = 0;
    goto LABEL_20;
  }

  epoch = timebaseTime.epoch;
  if (gAPSZTSControllerInitOnce != -1)
  {
    dispatch_once_f(&gAPSZTSControllerInitOnce, 0, _APSZTSControllerGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    v17 = 4294960568;
    goto LABEL_13;
  }

  v14 = Instance;
  *(Instance + 112) = 0;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v15 = CMTimebaseCreateWithSourceTimebase(*MEMORY[0x277CBECE8], a3, (Instance + 40));
  if (v15)
  {
    v17 = v15;
    goto LABEL_23;
  }

  v16 = *(v14 + 40);
  timebaseTime.value = value;
  timebaseTime.timescale = timescale;
  timebaseTime.flags = flags;
  timebaseTime.epoch = epoch;
  v21 = **&MEMORY[0x277CC08F0];
  v15 = CMTimebaseSetRateAndAnchorTime(v16, 1.0, &timebaseTime, &v21);
  v17 = v15;
  if (v15)
  {
LABEL_23:
    APSLogErrorAt(v15);
    CFRelease(v14);
    goto LABEL_13;
  }

  *(v14 + 24) = v10;
  *(v14 + 16) = CFRetain(a3);
  *(v14 + 32) = a6;
  *(v14 + 28) = a2;
  v18 = MEMORY[0x277CC0898];
  *(v14 + 72) = *MEMORY[0x277CC0898];
  *(v14 + 88) = *(v18 + 16);
  *(v14 + 112) = 0;
  *a5 = v14;
LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t APSZTSControllerGetZeroTimeStamp(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5)
{
  *&v27.value = *MEMORY[0x277CC0898];
  v25 = 0u;
  *&v26.value = *&v27.value;
  v27.epoch = *(MEMORY[0x277CC0898] + 16);
  v26.epoch = v27.epoch;
  v24 = 0u;
  if (!a1 || !a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  memset(&lhs, 0, sizeof(lhs));
  CMTimeMake(&lhs, a2, 1000);
  memset(&v30, 0, sizeof(v30));
  ztsController_getCurrentOffset(&v30, a1);
  time1 = v30;
  time2 = lhs;
  v10 = CMTimeCompare(&time1, &time2);
  if (CMTimebaseGetRate(*(a1 + 40)) == 1.0)
  {
    time1 = lhs;
    time2 = v30;
    if (CMTimeCompare(&time1, &time2))
    {
      v11 = *(a1 + 32);
      if (v10 >= 0)
      {
        v11 = -v11;
      }

      CMTimebaseSetRate(*(a1 + 40), v11 + 1.0);
    }
  }

  else
  {
    if (*(a1 + 112) != a2)
    {
      *(a1 + 112) = a2;
      v12 = *(a1 + 32);
      if (v10 >= 0)
      {
        v12 = -v12;
      }

      CMTimebaseSetRate(*(a1 + 40), v12 + 1.0);
    }

    v29 = lhs;
    v28 = v30;
    if (CMTimebaseGetRate(*(a1 + 40)) > 1.0)
    {
      time1 = v28;
      time2 = v29;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      time1 = v28;
      time2 = v29;
      if (CMTimeCompare(&time1, &time2) > 0)
      {
        goto LABEL_17;
      }
    }

    v13 = *(a1 + 40);
    time1 = lhs;
    time2 = **&MEMORY[0x277CC08F0];
    CMTimebaseSetRateAndAnchorTime(v13, 1.0, &time1, &time2);
  }

LABEL_17:
  CMTimebaseGetTimeWithTimeScale(&v27, *(a1 + 40), *(a1 + 24), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  if ((*(a1 + 84) & 1) == 0)
  {
    *(a1 + 48) = *&v27.value;
    epoch = v27.epoch;
LABEL_21:
    *(a1 + 64) = epoch;
    *(a1 + 104) = *(a1 + 48);
    v15 = *(a1 + 40);
    HostTimeClock = CMClockGetHostTimeClock();
    time1 = *(a1 + 48);
    CMSyncConvertTime(&v26, &time1, v15, HostTimeClock);
    time1 = v26;
    *(a1 + 96) = CMClockConvertHostTimeToSystemUnits(&time1);
    CMTimeMake(&time2, *(a1 + 28), *(a1 + 24));
    lhs = *(a1 + 48);
    CMTimeAdd(&time1, &lhs, &time2);
    *(a1 + 72) = time1;
    *&v24 = a1;
    DWORD2(v24) = a2;
    ztsController_getCurrentOffset(&time1, a1);
    *&v25 = CMTimeGetSeconds(&time1) * 1000.0;
    CMTimebaseGetTime(&time1, *(a1 + 40));
    Seconds = CMTimeGetSeconds(&time1);
    CMTimebaseGetTime(&time1, *(a1 + 16));
    *(&v25 + 1) = (Seconds - CMTimeGetSeconds(&time1)) * 1000.0;
    if (APSAsyncLoggerGetSharedLogger_onceToken != -1)
    {
      dispatch_once_f(&APSAsyncLoggerGetSharedLogger_onceToken, &APSAsyncLoggerGetSharedLogger_gLogger, asyncLogger_initOnce);
    }

    APSAsyncLoggerLogMessage(APSAsyncLoggerGetSharedLogger_gLogger, ztsController_Logger, &v24);
    v18 = 1;
    goto LABEL_24;
  }

  time1 = v27;
  time2 = *(a1 + 72);
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    *(a1 + 48) = *(a1 + 72);
    epoch = *(a1 + 88);
    goto LABEL_21;
  }

  v18 = 0;
LABEL_24:
  v19 = *(a1 + 104);
  *a3 = v19;
  *(a3 + 16) = *(a1 + 96);
  ztsController_getCurrentOffset(&time1, a1);
  v20 = CMTimeGetSeconds(&time1);
  LODWORD(v21) = *(a1 + 24);
  *(a3 + 8) = v19 - (v20 * v21);
  if (a4)
  {
    v22 = *(a1 + 48);
    *(a4 + 16) = *(a1 + 64);
    *a4 = v22;
  }

  result = 0;
  if (a5)
  {
    *a5 = v18;
  }

  return result;
}

CMTime *ztsController_getCurrentOffset(uint64_t a1, uint64_t a2)
{
  memset(&v10, 0, sizeof(v10));
  CMTimebaseGetTimeWithTimeScale(&v10, *(a2 + 40), *(a2 + 24), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  memset(&v9, 0, sizeof(v9));
  v4 = *(a2 + 40);
  v5 = *(a2 + 16);
  time = v10;
  CMSyncConvertTime(&v9, &time, v4, v5);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  time = v10;
  v7 = v9;
  return CMTimeSubtract(a1, &time, &v7);
}

uint64_t ztsController_Logger(uint64_t result)
{
  if (gLogCategory_APSZTSController <= 50)
  {
    v1 = result;
    if (gLogCategory_APSZTSController != -1 || (result = _LogCategory_Initialize(), result))
    {
      v5 = *(v1 + 24);
      v4 = *(v1 + 16);
      v3 = *(v1 + 8);
      v2 = *v1;
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APSRingBufferGetTypeID()
{
  if (gAPSRingBufferInitOnce != -1)
  {
    dispatch_once_f(&gAPSRingBufferInitOnce, 0, _APSRingBufferGetTypeID);
  }

  return gAPSRingBufferTypeID;
}

uint64_t _APSRingBufferGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRingBufferTypeID = result;
  return result;
}

uint64_t _APSRingBufferFinalize()
{
  result = MirroredRingBufferFree();
  if (gLogCategory_APSRingBuffer <= 50)
  {
    if (gLogCategory_APSRingBuffer != -1)
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

uint64_t APSRingBufferCreate(uint64_t a1, char a2, uint64_t *a3)
{
  if (a3)
  {
    if (gAPSRingBufferInitOnce != -1)
    {
      dispatch_once_f(&gAPSRingBufferInitOnce, 0, _APSRingBufferGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      *(Instance + 16) = 0u;
      v7 = Instance + 16;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      v8 = MirroredRingBufferInit();
      if (v8)
      {
        v9 = v8;
        APSLogErrorAt(v8);
        CFRelease(v6);
      }

      else
      {
        *(v6 + 48) = 0;
        *(v6 + 56) = a2;
        if (gLogCategory_APSRingBuffer <= 50 && (gLogCategory_APSRingBuffer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v9 = 0;
        *a3 = v6;
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

  return v9;
}

uint64_t APSRingBufferEnqueueBytes(uint64_t a1, size_t __n, void *__src)
{
  result = 4294960591;
  if (!a1 || !__src)
  {
    return result;
  }

  v5 = __n;
  if (*(a1 + 56))
  {
    v6 = *(a1 + 32);
    if (v6 >= __n)
    {
      v8 = *(a1 + 40);
      v7 = *(a1 + 44);
      v9 = v8 - v7 + v6;
      if (v9 < __n)
      {
        *(a1 + 40) = v8 + __n - v9;
      }

      goto LABEL_8;
    }

    return 4294960545;
  }

  v7 = *(a1 + 44);
  if (*(a1 + 32) - v7 + *(a1 + 40) < __n)
  {
    return 4294960545;
  }

LABEL_8:
  memcpy((*(a1 + 16) + (*(a1 + 36) & v7)), __src, __n);
  *(a1 + 44) += v5;
  if (gLogCategory_APSRingBuffer > 30)
  {
    return 0;
  }

  if (gLogCategory_APSRingBuffer != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APSRingBufferDequeueBytes(uint64_t a1, size_t __n, void *__dst)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (!__n)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  if (*(a1 + 44) - v5 < __n)
  {
    if (gLogCategory_APSRingBuffer <= 90)
    {
      if (gLogCategory_APSRingBuffer == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 4294960550;
        }

        v10 = (*(a1 + 44) - *(a1 + 40));
      }

      LogPrintF();
    }

    return 4294960550;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 16) + (*(a1 + 36) & v5)), __n);
    v5 = *(a1 + 40);
  }

  *(a1 + 40) = v5 + __n;
  v6 = *(a1 + 48);
  v7 = v6 >= __n;
  v8 = v6 - __n;
  if (!v7)
  {
    v8 = 0;
  }

  *(a1 + 48) = v8;
  if (gLogCategory_APSRingBuffer > 30)
  {
    return 0;
  }

  if (gLogCategory_APSRingBuffer != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APSRingBufferPeek(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 40);
  if (*(a1 + 44) - v4 < a2)
  {
    if (gLogCategory_APSRingBuffer <= 90)
    {
      if (gLogCategory_APSRingBuffer == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 4294960550;
        }

        v6 = (*(a1 + 44) - *(a1 + 40));
      }

      LogPrintF();
    }

    return 4294960550;
  }

  if (*(a1 + 48))
  {
    return 4294960587;
  }

  *a3 = *(a1 + 16) + (*(a1 + 36) & v4);
  *(a1 + 48) = a2;
  if (gLogCategory_APSRingBuffer > 30)
  {
    return 0;
  }

  if (gLogCategory_APSRingBuffer != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APSRingBufferAdvance(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  *(a1 + 40) += *(a1 + 48);
  *(a1 + 48) = 0;
  if (gLogCategory_APSRingBuffer > 30)
  {
    return 0;
  }

  if (gLogCategory_APSRingBuffer != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APSRingBufferReset(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  *(a1 + 40) = *(a1 + 44);
  *(a1 + 48) = 0;
  if (gLogCategory_APSRingBuffer > 30)
  {
    return 0;
  }

  if (gLogCategory_APSRingBuffer != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APSDispatchSyncBatchAssignment(NSObject *a1, uint64_t a2, unint64_t a3)
{
  v4[0] = 0;
  v4[1] = a2;
  v5 = a3;
  if (!a1)
  {
    return 4294960556;
  }

  if (!a3)
  {
    return 4294960591;
  }

  dispatch_sync_f(a1, v4, APSDispatchBatchSyncAssignmentCallback);
  return 0;
}

void *APSDispatchBatchSyncAssignmentCallback(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = 0;
    v3 = (result[1] + 16);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      if (*v3 == -4)
      {
        if (*v4)
        {
          xpc_release(*v4);
        }
      }

      else if (v5 == -2)
      {
        dispatch_retain(*v4);
      }

      else if (v5 == -1)
      {
        if (*v4)
        {
          CFRetain(*v4);
        }
      }

      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      v3 += 3;
      result = APSDispatchAssigment(v6, v7, v8);
      ++v2;
    }

    while (v2 < v1[2]);
  }

  return result;
}

void *APSDispatchAssigment(dispatch_object_t *__dst, void *__src, unint64_t a3)
{
  switch(a3)
  {
    case 0xFFFFFFFFFFFFFFFCLL:
      v7 = *__dst;
      if (*__dst)
      {
        xpc_release(v7);
      }

      break;
    case 0xFFFFFFFFFFFFFFFELL:
      dispatch_release(*__dst);
      break;
    case 0xFFFFFFFFFFFFFFFFLL:
      v6 = *__dst;
      if (*__dst)
      {
        CFRelease(v6);
      }

      break;
  }

  if (a3 == -4 || a3 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = a3;
  }

  return memcpy(__dst, __src, v9);
}

uint64_t APSDispatchAsyncBatchAssignment(NSObject *a1, const void *a2, _DWORD *a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  result = 4294960591;
  if (a2)
  {
    v7 = a4;
    if (a4)
    {
      v9 = a3 + 6;
      v10 = a4;
      v11 = 32 * a4 + 32;
      do
      {
        if (!*v9)
        {
          v12 = *(v9 - 1);
          if ((v12 + 4) <= 3 && v12 != -3)
          {
            v12 = 8;
          }

          v11 += v12;
        }

        v9 += 8;
        --v10;
      }

      while (v10);
      v14 = malloc_type_malloc(v11, 0x100004077774924uLL);
      if (v14)
      {
        v15 = v14;
        v16 = v14 + 32;
        memcpy(v14 + 32, a3, 32 * v7);
        *v15 = a2;
        v15[1] = v16;
        v15[2] = v7;
        *(v15 + 24) = 1;
        CFRetain(a2);
        v17 = &v15[4 * v7 + 4];
        v18 = (v15 + 5);
        do
        {
          if (!*(v18 + 4))
          {
            v19 = *v18;
            v20 = *(v18 + 1);
            if ((v20 + 4) > 3 || v20 == -3)
            {
              v22 = *(v18 + 1);
            }

            else
            {
              v22 = 8;
            }

            switch(v20)
            {
              case -4:
                if (*v19)
                {
                  xpc_release(*v19);
                }

                break;
              case -2:
                dispatch_retain(*v19);
                break;
              case -1:
                if (*v19)
                {
                  CFRetain(*v19);
                }

                break;
            }

            memcpy(v17, *v18, v22);
            *v18 = v17;
            v17 += v22;
          }

          v18 += 32;
          --v7;
        }

        while (v7);
        dispatch_async_f(a1, v15, APSDispatchBatchAsyncAssignmentCallback);
        return 0;
      }

      else
      {
        return 4294960568;
      }
    }
  }

  return result;
}

void APSDispatchBatchAsyncAssignmentCallback(CFTypeRef *a1)
{
  if (a1[2])
  {
    v2 = 0;
    v3 = a1[1] + 16;
    do
    {
      if (*(v3 + 8) == 1)
      {
        v4 = *(v3 - 8);
        v5 = *v3;
        if (*v3 == -4)
        {
          if (*v4)
          {
            xpc_release(*v4);
          }
        }

        else if (v5 == -2)
        {
          dispatch_retain(*v4);
        }

        else if (v5 == -1 && *v4)
        {
          CFRetain(*v4);
        }
      }

      v6 = *(v3 - 16);
      v7 = *(v3 - 8);
      v8 = *v3;
      v3 += 32;
      APSDispatchAssigment(v6, v7, v8);
      ++v2;
    }

    while (v2 < a1[2]);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t APSRealTimeSignalGetTypeID()
{
  if (gAPSRealTimeSignalInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimeSignalInitOnce, 0, _APSRealTimeSignalGetTypeID);
  }

  return gAPSRealTimeSignalTypeID;
}

uint64_t _APSRealTimeSignalGetTypeID(void *a1)
{
  result = _CFRuntimeRegisterClass();
  gAPSRealTimeSignalTypeID = result;
  return result;
}

dispatch_queue_t ___ZL26rtSignal_getFinalizerQueuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.airplay.APSRealTimeSignal.finalizer", 0);
  rtSignal_getFinalizerQueue(void)::sAPSRealTimeSignalFinalizerQueue = result;
  return result;
}

uint64_t APSRealTimeSignalRaise(uint64_t result)
{
  v1 = *(result + 16);
  v2 = 1;
  atomic_compare_exchange_strong_explicit(v1 + 10, &v2, 2u, memory_order_release, memory_order_relaxed);
  if (v2 == 1)
  {
    return caulk::concurrent::messenger::enqueue((v1 + 6), v1);
  }

  return result;
}

uint64_t APSFormatSelectorRealTimeCreate(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v37 = 0;
  if (APSFormatSelectorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSFormatSelectorGetClassID_sRegisterOnce, &APSFormatSelectorGetClassID_sClassID, formatSelector_registerBaseClass);
  }

  ASRDArrayPCM = CMDerivedObjectCreate();
  v38 = ASRDArrayPCM;
  if (ASRDArrayPCM)
  {
    goto LABEL_13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 72) = CFStringCreateF();
  if (gLogCategory_APSFormatSelectorRealTime <= 50)
  {
    if (gLogCategory_APSFormatSelectorRealTime != -1)
    {
LABEL_6:
      *(DerivedStorage + 64);
      LogPrintF();
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      v29 = *(DerivedStorage + 72);
      goto LABEL_6;
    }
  }

LABEL_8:
  CFNumberGetTypeID();
  CFDictionaryGetTypedValue();
  UInt64 = FigCFNumberGetUInt64();
  ASRDArrayPCM = v38;
  if (v38)
  {
    goto LABEL_13;
  }

  *(DerivedStorage + 64) = CFDictionaryGetInt64() != 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    ASRDArrayPCM = 4294954514;
    v38 = -12782;
    goto LABEL_13;
  }

  v10 = *MEMORY[0x277CBECE8];
  ASRDArrayPCM = v9(CMBaseObject, *MEMORY[0x277CC18C0], *MEMORY[0x277CBECE8], &cf);
  v38 = ASRDArrayPCM;
  if (ASRDArrayPCM == -12784)
  {
    CFRelease(&cf);
    v11 = 0;
    cf = 0;
    v38 = 0;
  }

  else
  {
    if (ASRDArrayPCM)
    {
      goto LABEL_13;
    }

    v11 = cf;
  }

  ASRDArrayPCM = APSAudioFormatDescriptionListCreateWithFigEndpointStreamAudioFormatDescriptionArray(v10, v11, (DerivedStorage + 48));
  v38 = ASRDArrayPCM;
  if (ASRDArrayPCM)
  {
    goto LABEL_13;
  }

  if (!APSAudioFormatDescriptionListGetFormatCount(*(DerivedStorage + 48)))
  {
    if (gLogCategory_APSFormatSelectorRealTime <= 50 && (gLogCategory_APSFormatSelectorRealTime != -1 || _LogCategory_Initialize()))
    {
      v30 = *(DerivedStorage + 72);
      LogPrintF();
    }

    v18 = FigEndpointStreamGetCMBaseObject();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      ASRDArrayPCM = v19(v18, *MEMORY[0x277CC18C8], v10, DerivedStorage + 56);
      v38 = ASRDArrayPCM;
      if (ASRDArrayPCM)
      {
        goto LABEL_13;
      }

      goto LABEL_44;
    }

    ASRDArrayPCM = 4294954514;
    v38 = -12782;
LABEL_13:
    APSLogErrorAt(ASRDArrayPCM);
    goto LABEL_14;
  }

  v12 = *(DerivedStorage + 48);
  v13 = APSSettingsGetIntWithOverrideAndDefault(@"mediumLatencyPathway", 0, 0) != 0;
  Intersection = APSAudioFormatDescriptionListCreateIntersection(v12, UInt64 == 4, v13, UInt64 == 1);
  if (!APSAudioFormatDescriptionListGetFormatCount(Intersection))
  {
    if (gLogCategory_APSFormatSelectorRealTime <= 60 && (gLogCategory_APSFormatSelectorRealTime != -1 || _LogCategory_Initialize()))
    {
      v31 = *(DerivedStorage + 72);
      LogPrintF();
    }

    v20 = FigEndpointStreamGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v21)
    {
      ASRDArrayPCM = 4294954514;
      v38 = -12782;
      goto LABEL_13;
    }

    ASRDArrayPCM = v21(v20, *MEMORY[0x277CC18C8], v10, DerivedStorage + 56);
    v38 = ASRDArrayPCM;
    if (!ASRDArrayPCM)
    {
LABEL_44:
      v22 = *(DerivedStorage + 48);
      if (v22)
      {
        CFRelease(v22);
        *(DerivedStorage + 48) = 0;
      }

      goto LABEL_46;
    }

    goto LABEL_13;
  }

  ASRDArrayPCM = APSAudioFormatDescriptionListCreateASRDArrayPCM(v10, Intersection, (DerivedStorage + 56));
  v38 = ASRDArrayPCM;
  if (ASRDArrayPCM)
  {
    goto LABEL_13;
  }

  v15 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = Intersection;
  if (Intersection)
  {
    CFRetain(Intersection);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 48);
  if (!v16)
  {
    APSLogErrorAt(0);
    *DerivedStorage = 0;
    goto LABEL_79;
  }

  v17 = *(v16 + 24);
  *DerivedStorage = v17;
  if (!v17)
  {
LABEL_79:
    APSLogErrorAt(0);
    v38 = -72482;
LABEL_14:
    if (v37)
    {
      CFRelease(v37);
    }

    return v38;
  }

  ASRDArrayPCM = APSAudioFormatDescriptionGetPCMASBD(v17, DerivedStorage + 8);
  v38 = ASRDArrayPCM;
  if (ASRDArrayPCM)
  {
    goto LABEL_13;
  }

LABEL_46:
  Length = CFDataGetLength(*(DerivedStorage + 56));
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 56));
  if (Length >= 0x38)
  {
    v25 = BytePtr;
    v26 = 0;
    do
    {
      if (gLogCategory_APSFormatSelectorRealTime <= 50 && (gLogCategory_APSFormatSelectorRealTime != -1 || _LogCategory_Initialize()))
      {
        v32 = *(DerivedStorage + 72);
        LogPrintF();
      }

      ++v26;
      v25 += 56;
    }

    while (Length / 0x38 != v26);
  }

  if (!*DerivedStorage)
  {
    goto LABEL_67;
  }

  v27 = *(DerivedStorage + 48);
  if (!v27)
  {
    goto LABEL_67;
  }

  v35 = 0;
  if (gLogCategory_APSFormatSelectorRealTime > 50)
  {
    goto LABEL_67;
  }

  if (gLogCategory_APSFormatSelectorRealTime != -1)
  {
    goto LABEL_57;
  }

  if (_LogCategory_Initialize())
  {
    v27 = *(DerivedStorage + 48);
LABEL_57:
    APSAudioFormatDescriptionListCopyDebugString(v27, &v35);
    if (gLogCategory_APSFormatSelectorRealTime <= 50 && (gLogCategory_APSFormatSelectorRealTime != -1 || _LogCategory_Initialize()))
    {
      v33 = *(DerivedStorage + 72);
      LogPrintF();
    }

    if (v35)
    {
      CFRelease(v35);
    }
  }

LABEL_67:
  if (gLogCategory_APSFormatSelectorRealTime <= 50 && (gLogCategory_APSFormatSelectorRealTime != -1 || _LogCategory_Initialize()))
  {
    v34 = *(DerivedStorage + 72);
    LogPrintF();
  }

  *a4 = v37;
  return v38;
}

uint64_t realtimeFormatSelector_SetCurrentPCMFormatForSampleRate(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  if (!DerivedStorage || !a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  *a3 = 0;
  v7 = a2;
  v8 = (DerivedStorage + 8);
  if (*(DerivedStorage + 8) == a2)
  {
    return 0;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v10 = *(v9 + 36);
  v13 = *(v9 + 8) == 0.0 || *(v9 + 28) == 0 || *(v9 + 16) == 0 || v10 == 0;
  if (v13 || (v14 = *(v9 + 56)) == 0)
  {
    APSLogErrorAt(0);
LABEL_24:
    if (memcmp(v8, &v25, 0x28uLL))
    {
      realtimeFormatSelector_SetCurrentPCMFormat(a1, &v25);
      v22 = 0;
      *a3 = 1;
      return v22;
    }

    return 0;
  }

  v15 = *(v9 + 40);
  Length = CFDataGetLength(*(v9 + 56));
  if (Length <= 0x37)
  {
    APSLogErrorAt(0);
    v22 = 4294894816;
    v24 = 4294894816;
  }

  else
  {
    v17 = Length / 0x38;
    BytePtr = CFDataGetBytePtr(v14);
    v19 = 0;
    do
    {
      if (*(BytePtr + 5) <= v7 && *(BytePtr + 6) >= v7)
      {
        v19 = BytePtr;
        if (*(BytePtr + 7) == v10)
        {
          v19 = BytePtr;
          if (*(BytePtr + 8) >= v15)
          {
            v19 = BytePtr;
            goto LABEL_23;
          }
        }
      }

      BytePtr += 56;
      --v17;
    }

    while (v17);
    if (v19)
    {
LABEL_23:
      v21 = *v19;
      v20 = *(v19 + 1);
      v27 = *(v19 + 4);
      *(&v25 + 1) = *(&v21 + 1);
      v26 = v20;
      *&v25 = v7;
      goto LABEL_24;
    }

    v22 = 4294894815;
    APSLogErrorAt(0);
    v24 = 4294894815;
  }

  APSLogErrorAt(v24);
  return v22;
}

uint64_t realtimeFormatSelector_SetCurrentPCMFormat(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    v4 = DerivedStorage;
    v5 = *a2;
    v6 = a2[1];
    *(DerivedStorage + 40) = *(a2 + 4);
    *(DerivedStorage + 24) = v6;
    *(DerivedStorage + 8) = v5;
    if (*DerivedStorage)
    {
      v7 = *(DerivedStorage + 48);
      if (v7)
      {
        CompatibleTransportFromPCMAndSetDefault = APSAudioFormatDescriptionListFindCompatibleTransportFromPCMAndSetDefault(v7, v4 + 8, v4);
        if (CompatibleTransportFromPCMAndSetDefault)
        {
          v11 = CompatibleTransportFromPCMAndSetDefault;
          APSLogErrorAt(CompatibleTransportFromPCMAndSetDefault);
          return v11;
        }

        if (gLogCategory_APSFormatSelectorRealTime <= 50 && (gLogCategory_APSFormatSelectorRealTime != -1 || _LogCategory_Initialize()))
        {
          v9 = *(v4 + 72);
          if (*v4)
          {
            v10 = *v4 + 16;
          }

          else
          {
            APSLogErrorAt(0);
          }

          v15 = *(v4 + 40);
          v13 = *(v4 + 8);
          v14 = *(v4 + 24);
          LogPrintF();
        }
      }
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t realtimeFormatSelector_CopyCurrentTransportFormat(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    v4 = DerivedStorage;
    v5 = *DerivedStorage;
    if (v5 && v4[6])
    {
      v6 = 0;
      *a2 = CFRetain(v5);
    }

    else
    {
      v6 = 4294894814;
      *a2 = 0;
      if (gLogCategory_APSFormatSelectorRealTime <= 90 && (gLogCategory_APSFormatSelectorRealTime != -1 || _LogCategory_Initialize()))
      {
        v8 = v4[9];
        LogPrintF();
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v6;
}

uint64_t realtimeFormatSelector_FillCurrentPCMFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 8);
    if (v5 != 0.0 && *(DerivedStorage + 28) && *(DerivedStorage + 16) && (v7 = *(DerivedStorage + 36)) != 0)
    {
      v6 = 0;
      *a2 = v5;
      *(a2 + 8) = 0xC6C70636DLL;
      v8 = *(DerivedStorage + 40);
      v9 = (v8 >> 3) * v7;
      *(a2 + 16) = v9;
      *(a2 + 20) = 1;
      *(a2 + 24) = v9;
      *(a2 + 28) = v7;
      *(a2 + 32) = v8;
    }

    else
    {
      v6 = 4294894816;
      if (gLogCategory_APSFormatSelectorRealTime <= 90 && (gLogCategory_APSFormatSelectorRealTime != -1 || _LogCategory_Initialize()))
      {
        v11 = *(v4 + 72);
        LogPrintF();
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v6;
}

uint64_t realtimeFormatSelector_CopySupportedPCMFormatList(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    v4 = CFRetain(*(DerivedStorage + 56));
    result = 0;
    *a2 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

CFMutableStringRef realtimeFormatSelector_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v2 = *(DerivedStorage + 72);
  v3 = *DerivedStorage;
  v7 = *(DerivedStorage + 40);
  v5 = *(DerivedStorage + 8);
  v6 = *(DerivedStorage + 24);
  CFStringAppendF();
  return Mutable;
}

void realtimeFormatSelector_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[7];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[6];
  if (v2)
  {
    CFRelease(v2);
  }

  if (gLogCategory_APSFormatSelectorRealTime <= 50 && (gLogCategory_APSFormatSelectorRealTime != -1 || _LogCategory_Initialize()))
  {
    v4 = DerivedStorage[9];
    LogPrintF();
  }

  v3 = DerivedStorage[9];
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t APSFormatSelectorRealTimeCreateForCurrentDevice(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v5 = APSFormatSelectorRealTimeCreate(a1, a2, a3, &cf);
  v6 = v5;
  if (v5)
  {
    APSLogErrorAt(v5);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
  }

  return v6;
}

uint64_t APSAudioLatencyForAVMs()
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencyMs", 0, 0);
  if (IntWithOverrideAndDefault)
  {
    v1 = IntWithOverrideAndDefault;
    if (gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v1 = 2000;
  }

  if (APSSettingsIsFeatureEnabled(@"AirPlayPerf_HLARandomLatency"))
  {
    v1 = (v1 - dword_22234D4E0[arc4random() % 3]);
    if (gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (APSSettingsGetIntWithOverrideAndDefault(@"mediumLatencyPathway", 0, 0))
  {
    v1 = APSSettingsGetIntWithOverrideAndDefault(@"mediumLatencyPathwayLatencyMs", 0, 1001);
    if (gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return v1;
}

uint64_t APSAudioLatencyForSystemAudioInClusterModelMs(unsigned int a1)
{
  if (a1 >= 3)
  {
    if (gLogCategory_APSLatency <= 60 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      v1 = 110;
      LogPrintF();
    }

    else
    {
      v1 = 110;
    }
  }

  else
  {
    v1 = dword_22234D4EC[a1];
  }

  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencySystemMs", 0, 0);
  if (IntWithOverrideAndDefault)
  {
    v3 = IntWithOverrideAndDefault;
    if (gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return v3;
  }

  return v1;
}

uint64_t APSAudioLatencyForScreenMs(int a1, int a2)
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencyScreenMs", 0, 0xFFFFFFFFLL);
  if (IntWithOverrideAndDefault != -1)
  {
    v5 = IntWithOverrideAndDefault;
    if (gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return v5;
  }

  if (a1)
  {
    return 200;
  }

  if (a2 == -1)
  {
    v5 = 50;
    v8 = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencyScreenLowMs", 0, 50);
    if (v8 == 50)
    {
      return v5;
    }

    v7 = v8;
    if (gLogCategory_APSLatency > 50 || gLogCategory_APSLatency == -1 && !_LogCategory_Initialize())
    {
      return v7;
    }

LABEL_18:
    LogPrintF();
    return v7;
  }

  if (a2 != 1)
  {
    return 85;
  }

  v5 = 170;
  v6 = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencyScreenHighMs", 0, 170);
  if (v6 != 170)
  {
    v7 = v6;
    if (gLogCategory_APSLatency > 50 || gLogCategory_APSLatency == -1 && !_LogCategory_Initialize())
    {
      return v7;
    }

    goto LABEL_18;
  }

  return v5;
}

uint64_t APSAudioLatencyAdjustForAVMs()
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencyAdjustMs", 0, 0);
  if (IntWithOverrideAndDefault)
  {
    v1 = IntWithOverrideAndDefault;
    if (gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v1 = 4294967046;
  }

  if (APSSettingsGetIntWithOverrideAndDefault(@"mediumLatencyPathway", 0, 0))
  {
    if (gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 0;
  }

  return v1;
}

uint64_t APSAudioLatencyAdjustForSystemAudioMs()
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencyAdjustSystemMs", 0, 0);
  if (IntWithOverrideAndDefault && gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return IntWithOverrideAndDefault;
}

uint64_t APSAudioLatencyAdjustForScreenMs()
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencyAdjustScreenMs", 0, 0);
  if (IntWithOverrideAndDefault && gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return IntWithOverrideAndDefault;
}

uint64_t APSAudioLatencyOffsetForAVMs()
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencyOffsetMs", 0, 0);
  if (IntWithOverrideAndDefault && gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (APSSettingsGetIntWithOverrideAndDefault(@"mediumLatencyPathway", 0, 0))
  {
    if (gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 0;
  }

  return IntWithOverrideAndDefault;
}

uint64_t APSAudioLatencyOffsetForSystemAudioMs()
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencyOffsetSystemMs", 0, 0);
  if (IntWithOverrideAndDefault && gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return IntWithOverrideAndDefault;
}

uint64_t APSAudioLatencyOffsetForScreenMs(int a1, int a2, uint64_t a3, int a4)
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"audioLatencyMinScreenMs", 0, 0);
  if (a1)
  {
    v8 = APSCarPlayScreenLatencyMs(a2);
  }

  else
  {
    v8 = APSScreenLatencyMs(a4);
  }

  return (IntWithOverrideAndDefault - v8);
}

uint64_t APSScreenLatencyMs(int a1)
{
  Int32 = APSSettingsGetInt32(@"screenLatencyMs", 0);
  if (Int32 >= 1)
  {
    v3 = Int32;
    if (gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return v3;
  }

  if (a1 == -1)
  {
    v3 = 40;
    IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"screenLatencyForLowLatencyConnectionMs", 0, 40);
    if (IntWithOverrideAndDefault == 40)
    {
      return v3;
    }

    v5 = IntWithOverrideAndDefault;
    if (gLogCategory_APSLatency > 50 || gLogCategory_APSLatency == -1 && !_LogCategory_Initialize())
    {
      return v5;
    }

LABEL_14:
    LogPrintF();
    return v5;
  }

  if (a1 != 1)
  {
    return 75;
  }

  v3 = 100;
  v4 = APSSettingsGetIntWithOverrideAndDefault(@"screenLatencyForHighLatencyConnectionMs", 0, 100);
  if (v4 != 100)
  {
    v5 = v4;
    if (gLogCategory_APSLatency > 50 || gLogCategory_APSLatency == -1 && !_LogCategory_Initialize())
    {
      return v5;
    }

    goto LABEL_14;
  }

  return v3;
}

uint64_t APSAudioLatencyMinForAVMs()
{
  if (APSAudioLatencyForAVMs() > 249)
  {
    v0 = 250;
  }

  else
  {
    v0 = APSAudioLatencyForAVMs();
  }

  if (APSSettingsGetIntWithOverrideAndDefault(@"mediumLatencyPathway", 0, 0))
  {
    if (gLogCategory_APSLatency <= 50 && (gLogCategory_APSLatency != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 0;
  }

  return v0;
}

uint64_t APSRandomLatencyMs(const void *a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0;
  v20 = 32;
  v13 = 0;
  v14 = &v13;
  v15 = 0;
  v16 = 32;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = 0;
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetCount(a1) >= 1)
      {
        CFDictionaryApplyBlock();
        v3 = *(v18 + 6);
        if (v3)
        {
          APSLogErrorAt(v3);
        }

        else if (*(v10 + 6))
        {
          v6 = arc4random() % *(v10 + 6);
          CFDictionaryApplyBlock();
        }
      }
    }

    else
    {
      APSLogErrorAt(0);
      *(v18 + 6) = -6705;
    }
  }

  v4 = *(v14 + 6);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v4;
}

uint64_t __APSRandomLatencyMs_block_invoke(uint64_t result)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v1 = result;
    CFGetInt64Ranged();
    result = *(*(*(v1 + 32) + 8) + 24);
    if (*(*(*(v1 + 32) + 8) + 24) || (*(*(*(v1 + 40) + 8) + 24) += CFGetInt64Ranged(), result = *(*(*(v1 + 32) + 8) + 24), result))
    {

      return APSLogErrorAt(result);
    }
  }

  return result;
}

uint64_t __APSRandomLatencyMs_block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 24) <= *(result + 48))
  {
    v1 = result;
    result = CFGetInt64Ranged();
    *(*(*(v1 + 32) + 8) + 24) += result;
    if (*(*(*(v1 + 32) + 8) + 24) > *(v1 + 48))
    {
      result = CFGetInt64Ranged();
      *(*(*(v1 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t APSSharedRingBuffer_CreateWithBufferAndState(void *a1, void *a2, void *a3)
{
  v16 = 0;
  region = 0;
  if (gAPSSharedRingBufferInitOnce != -1)
  {
    dispatch_once_f(&gAPSSharedRingBufferInitOnce, 0, _APSSharedRingBufferGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = Instance;
    Instance[3] = 0u;
    Instance[4] = 0u;
    Instance[1] = 0u;
    Instance[2] = 0u;
    v8 = xpc_shmem_map(a1, &region);
    v9 = v8;
    if (region && v8)
    {
      v10 = xpc_shmem_map(a2, &v16);
      v11 = v10;
      v12 = v16;
      if (v16 && v10 > 0x4F)
      {
        *(v7 + 16) = v9 >> 1;
        *(v7 + 17) = (v9 >> 1) - 1;
        v13 = region + (v9 >> 1);
        *(v7 + 4) = region;
        *(v7 + 5) = v13;
        *(v7 + 6) = v12;
        *(v7 + 7) = v12;
        *(v7 + 3) = FigXPCRetain();
        v14 = 0;
        *(v7 + 2) = FigXPCRetain();
        *(v7 + 18) = v9;
        *(v7 + 19) = v11;
        *a3 = v7;
        return v14;
      }

      APSLogErrorAt(0);
      v14 = FigSignalErrorAtGM();
    }

    else
    {
      APSLogErrorAt(0);
      v14 = FigSignalErrorAtGM();
      v11 = 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v9 = 0;
    v11 = 0;
    v14 = 4294960568;
  }

  if (region)
  {
    munmap(region, v9);
  }

  if (v16)
  {
    munmap(v16, v11);
  }

  return v14;
}

uint64_t _APSSharedRingBufferGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSSharedRingBufferTypeID = result;
  return result;
}

double _APSSharedRingBufferFinalize(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    munmap(v2, *(a1 + 72));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    munmap(v4, *(a1 + 76));
  }

  v5 = *(a1 + 24);
  FigXPCRelease();
  v6 = *(a1 + 16);
  FigXPCRelease();
  *(a1 + 72) = 0;
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

uint64_t APSSharedRingBuffer_Create(uint64_t a1, void *a2)
{
  if (gAPSSharedRingBufferInitOnce != -1)
  {
    dispatch_once_f(&gAPSSharedRingBufferInitOnce, 0, _APSSharedRingBufferGetTypeID);
  }

  *cur_protection = 0;
  target_address = 0;
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    v10 = 0;
LABEL_25:
    v15 = 0;
    v11 = 0;
    v16 = 0;
    v13 = 4294960568;
    goto LABEL_18;
  }

  v4 = Instance;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  v5 = *MEMORY[0x277D85F48];
  v6 = iceil2();
  v7 = MEMORY[0x277D85F88];
  v8 = *MEMORY[0x277D85F88] + v6;
  v9 = ~*MEMORY[0x277D85F88];
  v10 = v9 & v8;
  if ((v9 & v8) != (((v9 & v8) + *MEMORY[0x277D85F88]) & v9))
  {
    APSLogErrorAt(0);
    goto LABEL_25;
  }

  if (gLogCategory_APSSharedRingBuffer <= 30 && (gLogCategory_APSSharedRingBuffer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = mmap(0, 2 * v10, 3, 4097, -1, 0);
  if (v11 == -1)
  {
    v12 = __error();
    v13 = *v12;
    if (v13)
    {
      v14 = *v12;
LABEL_28:
      APSLogErrorAt(v14);
      v15 = 0;
      goto LABEL_17;
    }
  }

  target_address = &v11[v10];
  v14 = mach_vm_remap(v5, &target_address, v10, 0, 0x4000, v5, v11, 0, &cur_protection[1], cur_protection, 1u);
  if (v14)
  {
    v13 = v14;
    goto LABEL_28;
  }

  v15 = ~*v7 & (*v7 + 80);
  v16 = mmap(0, v15, 3, 4097, -1, 0);
  if (v16 == -1 && (v17 = __error(), v13 = *v17, v13))
  {
    APSLogErrorAt(*v17);
    v16 = -1;
  }

  else
  {
    v18 = xpc_shmem_create(v11, 2 * v10);
    if (v18)
    {
      v19 = xpc_shmem_create(v16, v15);
      if (v19)
      {
        v20 = v19;
        bzero(v16, v15);
        v13 = 0;
        *(v4 + 16) = v10;
        *(v4 + 17) = v10 - 1;
        *(v4 + 4) = v11;
        *(v4 + 5) = &v11[v10];
        *(v4 + 6) = v16;
        *(v4 + 7) = v16;
        *(v4 + 2) = v20;
        *(v4 + 3) = v18;
        *(v4 + 18) = 2 * v10;
        *(v4 + 19) = v15;
        *a2 = v4;
        v11 = 0;
LABEL_17:
        v16 = 0;
        goto LABEL_18;
      }
    }

    APSLogErrorAt(0);
    v13 = FigSignalErrorAtGM();
  }

LABEL_18:
  FigXPCRelease();
  FigXPCRelease();
  if (v11)
  {
    munmap(v11, 2 * v10);
  }

  if (v16)
  {
    munmap(v16, v15);
  }

  return v13;
}

uint64_t APSSharedRingBuffer_GetWritePointer(uint64_t result)
{
  if (result)
  {
    return *(result + 32) + (*(result + 68) & *(*(result + 56) + 28));
  }

  return result;
}

uint64_t APSSharedRingBuffer_UpdateWriteState(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (*(a1 + 64) - *(*(a1 + 56) + 28) + *(*(a1 + 56) + 24) < a2 && gLogCategory_APSSharedRingBuffer <= 60 && (gLogCategory_APSSharedRingBuffer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = 0;
    *(*(a1 + 56) + 28) += a2;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t APSSharedRingBuffer_WriteData(uint64_t a1, const void *a2, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v5 = *(*(a1 + 56) + 28);
    if (*(a1 + 64) - v5 + *(*(a1 + 56) + 24) <= __n)
    {
      APSLogErrorAt(0);
      return 4294960533;
    }

    else
    {
      memcpy((*(a1 + 32) + (*(a1 + 68) & v5)), a2, __n);
      result = 0;
      *(*(a1 + 56) + 28) += v3;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return result;
}

uint64_t APSSharedRingBuffer_ReadData(uint64_t a1, void *__dst, unsigned int *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v6 = *(a1 + 56);
    v7 = *(v6 + 24);
    v8 = *(v6 + 28) - v7;
    if (v8 >= *a3)
    {
      v9 = *a3;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      memcpy(__dst, (v3 + (*(a1 + 68) & v7)), v9);
      result = 0;
      *(*(a1 + 56) + 24) += v9;
      *a3 = v9;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960569;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return result;
}

uint64_t APSSharedRingBuffer_ReadDataWithEndiannessConversion(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = *(v5 + 24);
    v7 = *(v5 + 28) - v6;
    if (v7 >= *a4)
    {
      v7 = *a4;
    }

    if (v7)
    {
      if (v7 % a2)
      {
        APSLogErrorAt(0);
        return 4294960591;
      }

      else
      {
        v8 = a2 - 1;
        if (a2 - 1 < v7)
        {
          v9 = 0;
          v10 = v4 + (*(a1 + 68) & v6);
          v11 = a2;
          do
          {
            v12 = v8;
            v13 = v9;
            v14 = -a2;
            do
            {
              *(a3 + v13++) = *(v10 + v12--);
            }

            while (!__CFADD__(v14++, 1));
            v11 += a2;
            v9 += a2;
            v8 += a2;
          }

          while (v11 - 1 < v7);
          v5 = *(a1 + 56);
          v6 = *(v5 + 24);
        }

        result = 0;
        *(v5 + 24) = v6 + v7;
        *a4 = v7;
      }
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960569;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return result;
}

void APSNetworkClockLogCurrentNetworkTime(uint64_t a1)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v2 = mach_absolute_time();
  if (!a1)
  {
    APSLogErrorAt(0);
    goto LABEL_15;
  }

  v3 = v2;
  if (v2 <= APSNetworkClockLogCurrentNetworkTime_nextTicks)
  {
    goto LABEL_19;
  }

  APSNetworkClockLogCurrentNetworkTime_nextTicks = v2 + 10 * UpTicksPerSecond();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(a1, @"NetworkClock_Type", *MEMORY[0x277CBECE8], &v12);
    if (!v5)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v6)
      {
        v7 = v6(a1, v3, v11);
        if (!v7)
        {
          if (gLogCategory_APSNetworkClockLog > 50 || gLogCategory_APSNetworkClockLog == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

          goto LABEL_17;
        }

        v10 = v7;
      }

      else
      {
        v10 = 4294954514;
      }

      v9 = v10;
      goto LABEL_14;
    }

    v8 = v5;
  }

  else
  {
    v8 = 4294954514;
  }

  v9 = v8;
LABEL_14:
  APSLogErrorAt(v9);
LABEL_15:
  if (gLogCategory_APSNetworkClockCommon > 90 || gLogCategory_APSNetworkClockCommon == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_19;
  }

LABEL_17:
  LogPrintF();
LABEL_19:
  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t APSNetworkClockGetClassID()
{
  if (APSNetworkClockGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSNetworkClockGetClassID_sRegisterOnce, &APSNetworkClockGetClassID_sClassID, networkClock_registerBaseClass);
  }

  return APSNetworkClockGetClassID_sClassID;
}

uint64_t networkClock_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&networkClock_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSNetworkClockGetTypeID()
{
  if (APSNetworkClockGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSNetworkClockGetClassID_sRegisterOnce, &APSNetworkClockGetClassID_sClassID, networkClock_registerBaseClass);
  }

  v1 = APSNetworkClockGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSNetworkClockPeerDictionaryIDEqual(const __CFDictionary *a1, const __CFDictionary *a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  if ((a1 != 0) != (a2 != 0))
  {
    return 0;
  }

  CFDictionaryGetValue(a1, @"ID");
  CFDictionaryGetValue(a2, @"ID");

  return FigCFEqual();
}

const __CFDictionary *APSNetworkClockPeerDictionaryIsHTClusterExclusive(const __CFDictionary *result)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"Addresses");
    return (!Value || !CFArrayGetCount(Value));
  }

  return result;
}

uint64_t APSNetworkClockCreateSerializableRepresentationOfPeerList(const __CFArray *a1, int a2, __CFArray **a3)
{
  if (!a1)
  {
    v11 = 4294895325;
LABEL_19:
    APSLogErrorAt(0);
    return v11;
  }

  if (!a3)
  {
    v11 = 4294895325;
    goto LABEL_19;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    return 4294895326;
  }

  v7 = Mutable;
  for (i = 0; ; ++i)
  {
    if (i >= CFArrayGetCount(a1))
    {
      v11 = 0;
      *a3 = v7;
      return v11;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    if (!a2)
    {
      break;
    }

    value = 0;
    v10 = APSNetworkClockCopyPeerAsSerializablePeerDictionary(ValueAtIndex, &value);
    if (v10)
    {
      v11 = v10;
      goto LABEL_16;
    }

    CFArrayAppendValue(v7, value);
LABEL_11:
    CFRelease(value);
  }

  value = 0;
  v10 = APSNetworkClockCopyPeerAsSerializableAddresses(ValueAtIndex, &value);
  if (!v10)
  {
    v14.length = CFArrayGetCount(value);
    v14.location = 0;
    CFArrayAppendArray(v7, value, v14);
    goto LABEL_11;
  }

  v11 = v10;
LABEL_16:
  APSLogErrorAt(v10);
  CFRelease(v7);
  return v11;
}

uint64_t APSNetworkClockCopyPeerAsSerializablePeerDictionary(CFDictionaryRef theDict, __CFDictionary **a2)
{
  value = 0;
  if (!theDict)
  {
    v8 = 4294895325;
    APSLogErrorAt(0);
    return v8;
  }

  if (!a2)
  {
    v8 = 4294895325;
    APSLogErrorAt(0);
    goto LABEL_11;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
  if (!MutableCopy)
  {
    APSLogErrorAt(0);
    v8 = 4294895326;
    goto LABEL_12;
  }

  v5 = CFDictionaryGetValue(theDict, @"Addresses");
  if (v5)
  {
    StringRepresentationsForNetworkAddresses = clock_createStringRepresentationsForNetworkAddresses(v5, &value);
    if (StringRepresentationsForNetworkAddresses)
    {
      v8 = StringRepresentationsForNetworkAddresses;
      goto LABEL_22;
    }

    CFDictionarySetValue(MutableCopy, @"Addresses", value);
  }

  CFDictionaryRemoveValue(MutableCopy, @"InterfaceName");
  CFDictionaryRemoveValue(MutableCopy, @"PreferredAddress");
  CFDictionaryRemoveValue(MutableCopy, @"IsEnabled");
  CFDictionaryRemoveValue(MutableCopy, @"IsOverridden");
  if (CFDictionaryContainsKey(theDict, @"HTAddress"))
  {
    v7 = CFDictionaryGetValue(theDict, @"HTAddress");
    cf = 0;
    StringRepresentationsForNetworkAddresses = APSNetworkAddressCopyStringRepresentationWithFlags(v7, 2, &cf);
    if (!StringRepresentationsForNetworkAddresses)
    {
      CFDictionarySetValue(MutableCopy, @"HTAddress", cf);
      CFRelease(cf);
      goto LABEL_10;
    }

    v8 = StringRepresentationsForNetworkAddresses;
LABEL_22:
    APSLogErrorAt(StringRepresentationsForNetworkAddresses);
    goto LABEL_12;
  }

LABEL_10:
  v8 = 0;
  *a2 = MutableCopy;
LABEL_11:
  MutableCopy = 0;
LABEL_12:
  if (value)
  {
    CFRelease(value);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v8;
}

uint64_t APSNetworkClockCopyPeerAsSerializableAddresses(const __CFDictionary *a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    v6 = 4294895325;
LABEL_11:
    APSLogErrorAt(0);
    return v6;
  }

  if (!a2)
  {
    v6 = 4294895325;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a1, @"Addresses");
  if (!Value)
  {
    v5 = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
    if (!v5)
    {
      APSLogErrorAt(0);
      return 4294895326;
    }

    goto LABEL_7;
  }

  StringRepresentationsForNetworkAddresses = clock_createStringRepresentationsForNetworkAddresses(Value, &cf);
  if (!StringRepresentationsForNetworkAddresses)
  {
    v5 = cf;
LABEL_7:
    v6 = 0;
    *a2 = v5;
    return v6;
  }

  v6 = StringRepresentationsForNetworkAddresses;
  APSLogErrorAt(StringRepresentationsForNetworkAddresses);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t clock_createStringRepresentationsForNetworkAddresses(const __CFArray *a1, __CFArray **a2)
{
  if (CFArrayGetCount(a1) <= 0)
  {
    v9 = 4294895325;
LABEL_22:
    APSLogErrorAt(0);
    return v9;
  }

  if (!a2)
  {
    v9 = 4294895325;
    goto LABEL_22;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v5 = Mutable;
    for (i = 0; ; ++i)
    {
      if (i >= CFArrayGetCount(a1))
      {
        v9 = 0;
        *a2 = v5;
        return v9;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      value = 0;
      v8 = APSNetworkAddressCopyStringRepresentationWithFlags(ValueAtIndex, 2, &value);
      v9 = v8;
      if (v8)
      {
        APSLogErrorAt(v8);
      }

      else
      {
        CFArrayAppendValue(v5, value);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (v9)
      {
        break;
      }
    }

    APSLogErrorAt(v9);
    if (gLogCategory_APSNetworkClockCommon <= 90 && (gLogCategory_APSNetworkClockCommon != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRelease(v5);
  }

  else
  {
    APSLogErrorAt(0);
    return 4294895326;
  }

  return v9;
}

uint64_t APSNetworkClockAddOrUpdatePeerFromSerializablePeerDictionary(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, CFDictionaryRef theDict, uint64_t a6, uint64_t a7)
{
  cf = 0;
  PeerDictFromSerializablePeerDictionary = clock_createPeerDictFromSerializablePeerDictionary(theDict, a3, a4, &cf);
  if (PeerDictFromSerializablePeerDictionary)
  {
    v14 = PeerDictFromSerializablePeerDictionary;
  }

  else
  {
    v12 = cf;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v13)
    {
      v14 = v13(a1, a2, v12, a6, a7);
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v14 = 4294954514;
    }

    PeerDictFromSerializablePeerDictionary = v14;
  }

  APSLogErrorAt(PeerDictFromSerializablePeerDictionary);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t clock_createPeerDictFromSerializablePeerDictionary(CFDictionaryRef theDict, const __CFString *a2, const __CFString *a3, __CFDictionary **a4)
{
  cf = 0;
  value = 0;
  v26 = 0;
  if (!a2 || (v4 = a4) == 0)
  {
    APSLogErrorAt(0);
    v23 = 4294895325;
    goto LABEL_36;
  }

  v8 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
  if (!MutableCopy)
  {
    v23 = 4294895326;
    APSLogErrorAt(0);
    goto LABEL_36;
  }

  v10 = MutableCopy;
  v11 = clock_copyUsableInterface(a2, &value);
  if (v11)
  {
    v23 = v11;
    APSLogErrorAt(v11);
    Mutable = 0;
    v12 = value;
    goto LABEL_30;
  }

  v12 = value;
  CFDictionarySetValue(v10, @"InterfaceName", value);
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    Mutable = 0;
    if (!a3)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v14 = TypedValue;
  Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v23 = 4294895326;
    APSLogErrorAt(0);
    v19 = 4294895326;
    goto LABEL_47;
  }

  v25 = v4;
  for (i = 0; i < CFArrayGetCount(v14); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
    v29 = 0;
    if (ValueAtIndex && !APSNetworkAddressCreateWithString(v8, ValueAtIndex, &v29))
    {
      v18 = v29;
      CFArrayAppendValue(Mutable, v29);
      if (v18)
      {
        CFRelease(v18);
      }
    }

    else if (gLogCategory_APSNetworkClockCommon <= 90 && (gLogCategory_APSNetworkClockCommon != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  CFDictionarySetValue(v10, @"Addresses", Mutable);
  v4 = v25;
  if (a3)
  {
LABEL_21:
    if (v12 == a2 || v12 && CFEqual(a2, v12))
    {
      v19 = APSNetworkAddressCreateWithString(v8, a3, &cf);
      if (v19)
      {
        v23 = v19;
        goto LABEL_47;
      }

      v20 = cf;
      SockAddrSetPort();
      CFDictionarySetValue(v10, @"PreferredAddress", v20);
    }
  }

LABEL_26:
  if (CFDictionaryContainsKey(theDict, @"HTAddress"))
  {
    v21 = CFDictionaryGetValue(theDict, @"HTAddress");
    v19 = APSNetworkAddressCreateWithString(v8, v21, &v26);
    if (!v19)
    {
      v22 = v26;
      SockAddrSetPort();
      CFDictionarySetValue(v10, @"HTAddress", v22);
      goto LABEL_29;
    }

    v23 = v19;
LABEL_47:
    APSLogErrorAt(v19);
    goto LABEL_30;
  }

LABEL_29:
  v23 = 0;
  *v4 = v10;
  v10 = 0;
LABEL_30:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v23;
}

uint64_t clock_copyUsableInterface(const __CFString *a1, void *a2)
{
  if (a1)
  {
    CFStringHasPrefix(a1, @"en");
    v4 = CFRetain(a1);
  }

  else
  {
    UsableInterfaceList = CreateUsableInterfaceList();
    if (UsableInterfaceList)
    {
      v5 = UsableInterfaceList;
      APSLogErrorAt(UsableInterfaceList);
      return v5;
    }

    v4 = 0;
  }

  if (v4)
  {
    v5 = 0;
    *a2 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294895322;
  }

  return v5;
}

uint64_t APSNetworkClockAddOrUpdatePeerWithAddressAndInterfaceNameStrings(uint64_t a1, uint64_t a2, const void *a3, const __CFString *a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  v10 = clock_createPeerDictFromStringRepresentation(a3, a4, &v17);
  if (v10)
  {
    v15 = v10;
    APSLogErrorAt(v10);
    v11 = v17;
    if (!v17)
    {
      return v15;
    }

    goto LABEL_8;
  }

  v11 = v17;
  VTable = CMBaseObjectGetVTable();
  v13 = *(*(VTable + 16) + 32);
  if (v13)
  {
    v14 = *(VTable + 16) + 32;
    v15 = v13(a1, a2, v11, a5, a6);
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 4294954514;
  }

  APSLogErrorAt(v15);
LABEL_7:
  if (v11)
  {
LABEL_8:
    CFRelease(v11);
  }

  return v15;
}

uint64_t clock_createPeerDictFromStringRepresentation(const void *a1, const __CFString *a2, __CFDictionary **a3)
{
  value = 0;
  if (!a1)
  {
    v13 = 4294895325;
LABEL_13:
    APSLogErrorAt(0);
    return v13;
  }

  if (!a2)
  {
    v13 = 4294895325;
    goto LABEL_13;
  }

  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    return 4294895326;
  }

  v8 = Mutable;
  v9 = APSNetworkAddressCreateWithString(v6, a2, &value);
  if (v9)
  {
    v13 = v9;
    APSLogErrorAt(v9);
  }

  else
  {
    v10 = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
    if (v10)
    {
      v11 = v10;
      v12 = value;
      CFArrayAppendValue(v10, value);
      CFDictionarySetValue(v8, @"ID", a2);
      CFDictionarySetValue(v8, @"InterfaceName", a1);
      CFDictionarySetValue(v8, @"Addresses", v11);
      CFDictionarySetValue(v8, @"PreferredAddress", v12);
      v13 = 0;
      *a3 = v8;
      if (!v12)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    APSLogErrorAt(0);
    v13 = 4294895326;
  }

  CFRelease(v8);
  v11 = 0;
  v12 = value;
  if (value)
  {
LABEL_7:
    CFRelease(v12);
  }

LABEL_8:
  if (v11)
  {
    CFRelease(v11);
  }

  return v13;
}

uint64_t APSNetworkClockSetPeersFromSetPeersMessagePayload(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFArray *a4, int a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    v19 = 4294895325;
    APSLogErrorAt(0);
    return v19;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    return 4294895326;
  }

  v15 = Mutable;
  for (i = 0; i < CFArrayGetCount(a4); ++i)
  {
    value = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
    if (a5)
    {
      if (ValueAtIndex)
      {
        PeerDictFromSerializablePeerDictionary = clock_createPeerDictFromSerializablePeerDictionary(ValueAtIndex, a3, 0, &value);
        if (!PeerDictFromSerializablePeerDictionary)
        {
          goto LABEL_11;
        }

        v19 = PeerDictFromSerializablePeerDictionary;
      }

      else
      {
        v19 = 4294895325;
        PeerDictFromSerializablePeerDictionary = 0;
      }
    }

    else if (ValueAtIndex)
    {
      PeerDictFromSerializablePeerDictionary = clock_createPeerDictFromStringRepresentation(a3, ValueAtIndex, &value);
      if (!PeerDictFromSerializablePeerDictionary)
      {
LABEL_11:
        CFArrayAppendValue(v15, value);
        v19 = 0;
        goto LABEL_12;
      }

      v19 = PeerDictFromSerializablePeerDictionary;
    }

    else
    {
      v19 = 4294895325;
      PeerDictFromSerializablePeerDictionary = 0;
    }

    APSLogErrorAt(PeerDictFromSerializablePeerDictionary);
LABEL_12:
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (v19)
    {
      APSLogErrorAt(v19);
      goto LABEL_23;
    }
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v20)
  {
    v20(a1, a2, v15, a6, a7);
  }

  v19 = 0;
LABEL_23:
  CFRelease(v15);
  return v19;
}

uint64_t APSNetworkClockDetermineAndSetOrUpdateLocalPeerInfo(uint64_t a1, int a2, const __CFString *a3, __int128 *a4)
{
  cf = 0;
  value = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  cf1 = 0;
  APSCopyBootUUID(&value);
  if (value)
  {
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      CFDictionarySetValue(Mutable, @"ID", value);
      v11 = *MEMORY[0x277CBED28];
      CFDictionarySetValue(v10, @"SupportsClockPortMatchingOverride", *MEMORY[0x277CBED28]);
      APSCopyTightSyncInfo(&cf, &v30, 0, 0, 0);
      if (cf)
      {
        CFDictionarySetValue(v10, @"TightSyncUUID", cf);
        if (v30)
        {
          v12 = v11;
        }

        else
        {
          v12 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v10, @"IsTightSyncGroupLeader", v12);
      }

      APSCopyPersistentGroupInfo(&v29, &v28, 0, 0, 0, 0, 0, 0);
      if (v29 && v28 == 1)
      {
        CFDictionarySetValue(v10, @"HTGroupUUID", v29);
      }

      if (APSIsAPMSpeaker_sCheckOnce != -1)
      {
        dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
      }

      if (!APSIsAPMSpeaker_sIsAPMSpeaker)
      {
        IsAppleTV();
      }

      CFDictionarySetInt64();
      v13 = clock_copyUsableInterface(a3, &cf1);
      if (v13)
      {
        v21 = v13;
      }

      else
      {
        if (cf1 != a3)
        {
          v14 = 0;
          if (!a3 || !cf1)
          {
LABEL_22:
            if (a2)
            {
LABEL_23:
              if (!v14)
              {
                APSLogErrorAt(0);
                v15 = 0;
                v21 = 4294895325;
                goto LABEL_61;
              }

              CFDictionarySetValue(v10, @"HTAddress", v14);
              v15 = 0;
              goto LABEL_55;
            }

LABEL_26:
            v37 = 0;
            v38 = 0;
            v36 = 0;
            UsableInterfaceList = CFStringCopyUTF8CString();
            if (UsableInterfaceList)
            {
              v21 = UsableInterfaceList;
            }

            else
            {
              UsableInterfaceList = CreateUsableInterfaceList();
              if (!UsableInterfaceList)
              {
                v17 = CFArrayCreateMutable(v8, 0, MEMORY[0x277CBF128]);
                v15 = v17;
                if (v17)
                {
                  if (v14)
                  {
                    CFArrayAppendValue(v17, v14);
                  }

                  v18 = v38;
                  if (v38)
                  {
                    while (1)
                    {
                      memset(v35, 0, 28);
                      v19 = v18[3];
                      SockAddrCopy();
                      v34[0] = v35[0];
                      *(v34 + 12) = *(v35 + 12);
                      v17 = APSNetworkAddressCreateWithSocketAddr(v8, v34, &v36);
                      if (v17)
                      {
                        v21 = v17;
                        goto LABEL_76;
                      }

                      v20 = v36;
                      SockAddrSetPort();
                      if (v20 != v14)
                      {
                        if (v14 && v20 && CFEqual(v20, v14))
                        {
LABEL_39:
                          CFRelease(v20);
                          v36 = 0;
                          goto LABEL_40;
                        }

                        CFArrayAppendValue(v15, v20);
                      }

                      if (v20)
                      {
                        goto LABEL_39;
                      }

LABEL_40:
                      v18 = *v18;
                      if (!v18)
                      {
                        v21 = 0;
                        v22 = v15;
                        goto LABEL_42;
                      }
                    }
                  }

                  v23 = 0;
                  v21 = 0;
LABEL_47:
                  if (v37)
                  {
                    free(v37);
                  }

                  if (v36)
                  {
                    CFRelease(v36);
                  }

                  if (v23)
                  {
                    CFRelease(v23);
                  }

                  if (v21)
                  {
                    v25 = v21;
                    goto LABEL_60;
                  }

                  CFDictionarySetValue(v10, @"Addresses", v15);
LABEL_55:
                  v24 = *(*(CMBaseObjectGetVTable() + 16) + 72);
                  if (v24)
                  {
                    v21 = v24(a1, v10);
                    if (!v21)
                    {
LABEL_61:
                      CFRelease(v10);
                      goto LABEL_62;
                    }
                  }

                  else
                  {
                    v21 = 4294954514;
                  }

                  v25 = v21;
LABEL_60:
                  APSLogErrorAt(v25);
                  goto LABEL_61;
                }

                v21 = 4294895326;
LABEL_76:
                APSLogErrorAt(v17);
                v22 = 0;
LABEL_43:
                if (v38)
                {
                  ReleaseUsableInterfaceList();
                }

                v23 = v15;
                v15 = v22;
                goto LABEL_47;
              }

              v21 = UsableInterfaceList;
            }

            APSLogErrorAt(UsableInterfaceList);
            v22 = 0;
LABEL_42:
            v15 = 0;
            goto LABEL_43;
          }

          if (!CFEqual(cf1, a3))
          {
            v14 = 0;
            if (a2)
            {
              goto LABEL_23;
            }

            goto LABEL_26;
          }
        }

        v35[0] = *a4;
        *(v35 + 12) = *(a4 + 12);
        v13 = APSNetworkAddressCreateWithSocketAddr(v8, v35, &v31);
        if (!v13)
        {
          v14 = v31;
          SockAddrSetPort();
          goto LABEL_22;
        }

        v21 = v13;
      }

      APSLogErrorAt(v13);
      v15 = 0;
      goto LABEL_61;
    }

    v21 = 4294895326;
    APSLogErrorAt(0);
    v15 = 0;
  }

  else
  {
    APSLogErrorAt(0);
    v15 = 0;
    v21 = 4294895322;
  }

LABEL_62:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v21;
}

CFMutableDictionaryRef APSNetworkTimeCopyAsDictionary(uint64_t *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = *(a1 + 4);
    v4 = FigCFDictionarySetInt32();
    if (v4 || (v5 = a1[1], v4 = FigCFDictionarySetInt64(), v4) || (v6 = *a1, v4 = FigCFDictionarySetInt64(), v4) || (v7 = *(a1 + 5), v4 = FigCFDictionarySetInt32(), v4))
    {
      APSLogErrorAt(v4);
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

__n128 APSNetworkTimeMakeFromDictionary@<Q0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0x100000000;
  *a2 = kAPSNetworkTimeInvalid;
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != CFDictionaryGetTypeID()) || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetInt64IfPresent() || !FigCFDictionaryGetInt64IfPresent() || !FigCFDictionaryGetInt32IfPresent())
  {
    APSLogErrorAt(0);
    *(a2 + 16) = 0x100000000;
    result = kAPSNetworkTimeInvalid;
    *a2 = kAPSNetworkTimeInvalid;
  }

  return result;
}

uint64_t APSNetworkClockReportRTCMetrics(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  cf = 0;
  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 8) + 48);
  if (v3)
  {
    v4 = *(VTable + 8) + 48;
    v5 = v3(a1, @"Metrics", *MEMORY[0x277CBECE8], &cf);
    *(v11 + 6) = v5;
    v6 = cf;
    if (!v5)
    {
      CFDictionaryApplyBlock();
      v6 = cf;
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    *(v11 + 6) = -12782;
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __APSNetworkClockReportRTCMetrics_block_invoke(void *a1)
{
  if (*(*(a1[4] + 8) + 24))
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    *(*(a1[4] + 8) + 24) = -71970;
    return;
  }

  v3 = Mutable;
  v4 = *(a1[4] + 8);
  v5 = CFDictionaryCopyKeys();
  if (!*(*(a1[4] + 8) + 24))
  {
    v6 = 0;
    if (!FigCFNumberGetUInt16())
    {
      while (v6 < CFArrayGetCount(v5))
      {
        CFArrayGetValueAtIndex(v5, v6);
        if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual())
        {
          FigCFEqual();
        }

        FigCFDictionarySetValueFromKeyInDict();
        ++v6;
      }

      APSRTCReportingAgentSendEventWithCompletionHandler(a1[5], 9, v3, 0);
      if (gLogCategory_APSNetworkClockCommon >= 31 || gLogCategory_APSNetworkClockCommon == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    while (v6 < CFArrayGetCount(v5))
    {
      CFArrayGetValueAtIndex(v5, v6);
      if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
      {
        FigCFEqual();
      }

      FigCFDictionarySetValueFromKeyInDict();
      ++v6;
    }

    APSRTCReportingAgentSendEventWithCompletionHandler(a1[5], 8, v3, 0);
    if (gLogCategory_APSNetworkClockCommon < 31 && (gLogCategory_APSNetworkClockCommon != -1 || _LogCategory_Initialize()))
    {
LABEL_28:
      v7 = a1[6];
      LogPrintF();
    }
  }

LABEL_32:
  CFRelease(v3);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t APSCompactNTPMakeWithCMTime(CMTime *a1, CMTimeRoundingMethod method)
{
  v3 = *a1;
  CMTimeConvertScale(&v4, &v3, 0x10000, method);
  return LODWORD(v4.value);
}

uint64_t APSCompactNTPMakeWithUpTicks(uint64_t a1, CMTimeRoundingMethod a2)
{
  CMClockMakeHostTimeFromSystemUnits(&v4, a1);
  time = v4;
  CMTimeConvertScale(&v6, &time, 0x10000, a2);
  return LODWORD(v6.value);
}

CMTimeValue APSCompactNTPGetMs(int64_t value, CMTimeRoundingMethod a2)
{
  CMTimeMake(&time, value, 0x10000);
  CMTimeConvertScale(&v4, &time, 1000, a2);
  return v4.value;
}

uint64_t APSDataPacerGetClassID()
{
  if (APSDataPacerGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSDataPacerGetClassID_sRegisterOnce, &APSDataPacerGetClassID_sClassID, dataPacer_registerBaseClass);
  }

  return APSDataPacerGetClassID_sClassID;
}

uint64_t dataPacer_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&dataPacer_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

CFStringRef dataPacer_copyFormattingDesc(uint64_t a1)
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

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<APSDataPacer %p>{ rate=%lluB/s }", a1, v3);
}

uint64_t APSDataPacerGetTypeID()
{
  if (APSDataPacerGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSDataPacerGetClassID_sRegisterOnce, &APSDataPacerGetClassID_sClassID, dataPacer_registerBaseClass);
  }

  v1 = APSDataPacerGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSPowerAssertionGetTypeID()
{
  if (APSPowerAssertionGetTypeID_once != -1)
  {
    dispatch_once(&APSPowerAssertionGetTypeID_once, &__block_literal_global_196);
  }

  return APSPowerAssertionGetTypeID_typeID;
}

uint64_t __APSPowerAssertionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APSPowerAssertionGetTypeID_typeID = result;
  return result;
}

void _PowerAssertionFinalize(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    IOPMAssertionRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    IOPMAssertionRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t APSPowerAssertionCreate(const __CFAllocator *a1, const void *a2, double a3)
{
  if (a3 < 1.0)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];
  if (APSPowerAssertionGetTypeID_once != -1)
  {
    dispatch_once(&APSPowerAssertionGetTypeID_once, &__block_literal_global_196);
  }

  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (!Instance)
  {
    APSLogErrorAt(0);
    return v7;
  }

  *(Instance + 16) = 0u;
  v8 = (Instance + 16);
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0;
  *(Instance + 32) = 0u;
  SInt32 = FigCFNumberCreateSInt32();
  *(v7 + 24) = SInt32;
  if (!SInt32 || (v10 = FigCFNumberCreateSInt32(), (*(v7 + 32) = v10) == 0) || (Float64 = FigCFNumberCreateFloat64(), (*(v7 + 40) = Float64) == 0) || (!a2 ? (v12 = 0) : (v12 = CFRetain(a2)), *(v7 + 64) = v12, (Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0))
  {
    APSLogErrorAt(0);
    CFRelease(v7);
    return 0;
  }

  v14 = Mutable;
  CFDictionarySetValue(Mutable, @"AssertType", @"PreventUserIdleSystemSleep");
  CFDictionarySetInt64();
  v15 = CFStringCreateWithFormat(a1, 0, @"%@.counted", a2);
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = v15;
  CFDictionarySetValue(v14, @"AssertName", v15);
  CFRelease(v16);
  v15 = IOPMAssertionCreateWithProperties(v14, (v7 + 56));
  if (v15)
  {
    goto LABEL_23;
  }

  v15 = CFStringCreateWithFormat(a1, 0, @"%@.timed", a2);
  if (!v15)
  {
    goto LABEL_23;
  }

  v17 = v15;
  CFDictionarySetValue(v14, @"AssertName", v15);
  CFRelease(v17);
  CFDictionarySetValue(v14, @"TimeoutSeconds", *(v7 + 40));
  CFDictionarySetValue(v14, @"TimeoutAction", @"TimeoutActionTurnOff");
  v15 = IOPMAssertionCreateWithProperties(v14, (v7 + 48));
  if (v15 || (v15 = dispatch_semaphore_create(1), (*v8 = v15) == 0))
  {
LABEL_23:
    APSLogErrorAt(v15);
    CFRelease(v7);
    v7 = 0;
  }

  CFRelease(v14);
  return v7;
}