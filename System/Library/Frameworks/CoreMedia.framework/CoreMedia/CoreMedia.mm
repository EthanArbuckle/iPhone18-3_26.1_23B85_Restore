size_t FigThreadCreate(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const __CFDictionary *a5, pthread_t *a6, int a7, int a8)
{
  v10 = a4;
  v56 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v54 = 0;
  memset(&__attr, 0, sizeof(__attr));
  if (a3 < 0x34)
  {
    if (a3 == 5)
    {
      FigCFDictionaryGetInt32IfPresent(a5, @"com.apple.fig.ThreadCreateKey_MachThreadPriority", &valuePtr, a4, a5, a6, a7, a8, valuePtr, v54, __attr.__sig, *__attr.__opaque, *&__attr.__opaque[8], *&__attr.__opaque[16], *&__attr.__opaque[24], *&__attr.__opaque[32], *&__attr.__opaque[40], *&__attr.__opaque[48]);
      if (v20)
      {
        if (valuePtr > 0)
        {
          v18 = 0;
          v19 = 1;
          if (!v10)
          {
            goto LABEL_12;
          }

          goto LABEL_10;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_28();
        v52 = 891;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_28();
        v52 = 890;
      }

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, 0xFFFFCE07uLL, "<<<< FIGDARWINTHREAD >>>>", v52, v49, v50, v51);
    }

    v19 = 0;
    v18 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_28();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE07uLL, "<<<< FIGDARWINTHREAD >>>>", 0x376, v15, v16, v17);
    v19 = 0;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

LABEL_10:
  if (!a6)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_28();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 0xFFFFCE07uLL, "<<<< FIGDARWINTHREAD >>>>", 0x37F, v22, v23, v24);
  }

LABEL_12:
  if (!v18)
  {
    v25 = pthread_attr_init(&__attr);
    if (v25)
    {
      v18 = v25;
LABEL_17:
      OUTLINED_FUNCTION_0_42(v18);
      return v18;
    }

    QualityOfServiceClassForFigThreadPriority = FigGetQualityOfServiceClassForFigThreadPriority(a3);
    v27 = pthread_attr_set_qos_class_np(&__attr, QualityOfServiceClassForFigThreadPriority, 0);
    if (v27)
    {
      v18 = v27;
      OUTLINED_FUNCTION_0_42(v27);
      goto LABEL_17;
    }

    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"com.apple.fig.ThreadCreateKey_StackSize");
      if (Value)
      {
        v30 = Value;
        v31 = CFGetTypeID(Value);
        if (v31 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v30, kCFNumberSInt32Type, &valuePtr + 4);
        }
      }
    }

    if (v10)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    v33 = pthread_attr_setdetachstate(&__attr, v32);
    if (v33 || SHIDWORD(valuePtr) > 0x4000 && (v33 = pthread_attr_setstacksize(&__attr, HIDWORD(valuePtr)), v33))
    {
      v18 = v33;
LABEL_28:
      OUTLINED_FUNCTION_0_42(v18);
LABEL_29:
      pthread_attr_destroy(&__attr);
      return v18;
    }

    v34 = FigThreadLockAbortList();
    if (v34)
    {
      v18 = v34;
      goto LABEL_29;
    }

    if (a5 && (v35 = CFDictionaryGetValue(a5, @"com.apple.fig.ThreadCreateKey_Identifier")) != 0)
    {
      v36 = v35;
      v37 = CFGetTypeID(v35);
      if (v37 == CFStringGetTypeID())
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }

    v44 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E00404CF1D47AuLL);
    *v44 = a1;
    v44[1] = a2;
    if (v38)
    {
      v44[2] = CFRetain(v38);
    }

    *(v44 + 6) = a3;
    if (a5)
    {
      v44[4] = CFRetain(a5);
    }

    *(v44 + 40) = 1;
    v44[6] = 0;
    FigCFDictionaryGetBooleanIfPresent(a5, @"com.apple.fig.ThreadCreateKey_AdoptVoucher", v44 + 40, v39, v40, v41, v42, v43, valuePtr, v54, __attr.__sig, *__attr.__opaque, *&__attr.__opaque[8], *&__attr.__opaque[16], *&__attr.__opaque[24], *&__attr.__opaque[32], *&__attr.__opaque[40], *&__attr.__opaque[48]);
    if (*(v44 + 40))
    {
      v44[6] = voucher_copy();
    }

    v45 = pthread_create(&v54, &__attr, figThreadMain, v44);
    if (v45)
    {
      v18 = v45;
      FigThreadUnlockAbortList();
      goto LABEL_28;
    }

    if (a3 == 16)
    {
      figSetPThreadBackground(v54, 1);
    }

    else
    {
      v46 = valuePtr;
      if (valuePtr)
      {
        v47 = v19;
      }

      else
      {
        v47 = 0;
      }

      if (v47 != 1)
      {
        v46 = kNativePriorityMap[a3];
      }

      figSetPThreadPriority(v54, v46);
    }

    FigThreadRemoveFromAbortListAndCleanup(v54);
    FigThreadUnlockAbortList();
    if (gGMFigKTraceEnabled == 1)
    {
      FigThreadGetMachThreadPriorityValue(a3);
      kdebug_trace();
    }

    v18 = 0;
    if (a6)
    {
      *a6 = v54;
    }
  }

  return v18;
}

size_t figSetMachThreadPriority(thread_act_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  memset(buffer, 0, sizeof(buffer));
  v4 = getpid();
  if (proc_pidinfo(v4, 2, 0, buffer, 232) <= 0)
  {
    return figSetMachThreadPriority_cold_2();
  }

  policy_info = a2 - HIDWORD(v8);
  result = thread_policy_set(a1, 3u, &policy_info, 1u);
  if (result)
  {
    return figSetMachThreadPriority_cold_1(result);
  }

  return result;
}

size_t figGetMachThreadPriority(thread_inspect_t a1, _DWORD *a2)
{
  v23 = 0;
  *thread_info_out = 0u;
  v22 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  thread_info_outCnt = 10;
  v5 = thread_info(a1, 3u, thread_info_out, &thread_info_outCnt);
  if (v5)
  {
    v14 = v5;
    v13 = v2;
    v15 = 574;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v14, "(Fig)", v15, v13, v6, v7);
  }

  if (DWORD1(v22) == 4)
  {
    thread_info_outCnt = 4;
    v11 = thread_info(a1, 0xCu, &v18 + 2, &thread_info_outCnt);
    if (v11)
    {
      v14 = v11;
      v13 = v2;
      v15 = 587;
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v14, "(Fig)", v15, v13, v6, v7);
    }

    v9 = &v18 + 12;
  }

  else
  {
    if (DWORD1(v22) != 2)
    {
      if (DWORD1(v22) == 1)
      {
        thread_info_outCnt = 5;
        v8 = thread_info(a1, 0xAu, &v16, &thread_info_outCnt);
        if (!v8)
        {
          v9 = &v16 + 4;
          goto LABEL_11;
        }

        v14 = v8;
        v13 = v2;
        v15 = 580;
      }

      else
      {
        v13 = v2;
        v14 = 4294954503;
        v15 = 599;
      }

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v14, "(Fig)", v15, v13, v6, v7);
    }

    thread_info_outCnt = 5;
    v10 = thread_info(a1, 0xBu, &v17 + 1, &thread_info_outCnt);
    if (v10)
    {
      v14 = v10;
      v13 = v2;
      v15 = 594;
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v14, "(Fig)", v15, v13, v6, v7);
    }

    v9 = &v17 + 8;
  }

LABEL_11:
  result = 0;
  if (a2)
  {
    *a2 = *v9;
  }

  return result;
}

uint64_t fig_note_init_logging_once()
{
  gFigLogControlMutex = FigReentrantMutexCreate();

  return fig_note_read_control_preferences();
}

BOOL FigAtomicCompareAndSwap32(int a1, unsigned int a2, atomic_uint *a3)
{
  v3 = a1;
  atomic_compare_exchange_strong_explicit(a3, &v3, a2, memory_order_relaxed, memory_order_relaxed);
  return v3 == a1;
}

uint64_t FigSimpleMutexLock(os_unfair_lock_s *a1)
{
  os_unfair_lock_opaque = a1[16]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 0x80000003) == 0x80000000)
  {
    os_unfair_recursive_lock_lock_with_options();
    return 0;
  }

  if ((os_unfair_lock_opaque & 3) == 0)
  {
    os_unfair_lock_lock(a1);
    return 0;
  }

  return pthread_mutex_lock(a1);
}

uint64_t FigSimpleMutexUnlock(os_unfair_lock_s *a1)
{
  os_unfair_lock_opaque = a1[16]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 0x80000003) == 0x80000000)
  {
    os_unfair_recursive_lock_unlock();
    return 0;
  }

  if ((os_unfair_lock_opaque & 3) == 0)
  {
    os_unfair_lock_unlock(a1);
    return 0;
  }

  return pthread_mutex_unlock(a1);
}

CFPropertyListRef CelestialCFCreatePropertyList(const __CFString *a1)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v2 = CelestialGetModelSpecificName_sModelNameStr;
  v3 = *MEMORY[0x1E695E480];

  return FigCreateModelSpecificPropertyListForModelAndBundleIdentifier(v3, @"com.apple.MediaToolbox", a1, v2);
}

uint64_t CelestialGetModelSpecificName()
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  return CelestialGetModelSpecificName_sModelNameStr;
}

size_t FigSemaphoreWaitRelative(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 < 0)
  {
    v6 = 0;
  }

  else
  {
    v26 = 0;
    v5 = RelativeTimeToAbsoluteTime(a2, &v26);
    v6 = v5 != 0;
    if (v5)
    {
      v3 = v26;
    }
  }

  v7 = FigSimpleMutexLock(*a1);
  if (v7)
  {
    return v7;
  }

  v8 = *(a1 + 72);
  *(a1 + 72) = v8 + 1;
  if (*(a1 + 80))
  {
LABEL_18:
    *(a1 + 72) = v8;
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0AuLL, "(Fig)", 0x466, v2, v20, v21);
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v10 = *(a1 + 56);
      if (v10 || v9)
      {
        break;
      }

      v11 = OUTLINED_FUNCTION_0_41();
      if (v3 < 0)
      {
        v9 = WaitOnCondition(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      else if (v6)
      {
        v9 = WaitOnConditionTimed(v11, v12, v3, v14, v15, v16, v17, v18);
      }

      else
      {
        v9 = WaitOnConditionTimedRelative(v11, v12, v3, v14, v15, v16, v17, v18);
      }

      if (*(a1 + 80))
      {
        v8 = *(a1 + 72) - 1;
        goto LABEL_18;
      }
    }

    --*(a1 + 72);
    if (v9)
    {
      if (v9 == 60)
      {
        v22 = 4294954504;
      }

      else
      {
        v22 = v9;
      }
    }

    else
    {
      v24 = v10 < 1;
      v25 = v10 - 1;
      if (v24)
      {
        v22 = 4294954504;
      }

      else
      {
        v22 = 0;
        *(a1 + 56) = v25;
      }
    }
  }

  FigSimpleMutexUnlock(*a1);
  return v22;
}

size_t WaitOnCondition(pthread_cond_t *a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && (a2[1].__sig & 3) == 0)
  {
    FigUserCrashWithMessage("WaitOnCondition called with wrong type of mutex", a2, a3, a4, a5, a6, a7, a8, v14);
  }

  v9 = pthread_cond_wait(a1, a2);
  if (v9)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "(Fig)", 0x365, v8, v11, v12);
  }

  return v9;
}

size_t FigBaseClassRegisterClass(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1 || !a2 || !a4)
  {
    FigBaseClassRegisterClass_cold_2(&v33);
    return v33;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    MallocZoneForPermanentAllocations = FigGetMallocZoneForPermanentAllocations();
    v15 = malloc_type_zone_calloc(MallocZoneForPermanentAllocations, 1uLL, 0x78uLL, 0x10F0040C6888576uLL);
    if (v15)
    {
      v23 = v15;
      *v15 = a2;
      v15[1] = a1;
      if ((a3 & 1) != 0 && ((v15[2] = 0, v24 = *(a1 + 24), v15[3] = *(a1 + 8), v15[4] = FigBaseObjectInit, v15[5] = 0, v15[6] = FigBaseObjectFinalize, v15[7] = FigBaseObjectEqual, v15[8] = 0, !v24) ? (v25 = 0) : (v25 = v24), v15[9] = v25, v15[10] = FigBaseObjectCopyDebugDescription, v27 = _CFRuntimeRegisterClass(), (v23[14] = v27) == 0))
      {
        v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFFFFFuLL, "(Fig)", 0xE4, v8, v28, v29);
        if (v30)
        {
          v31 = FigGetMallocZoneForPermanentAllocations();
          malloc_zone_free(v31, v23);
        }
      }

      else
      {
        v30 = 0;
        *a4 = v23;
      }
    }

    else
    {
      FigBaseClassRegisterClass_cold_1(&v32, v16, v17, v18, v19, v20, v21, v22);
      return v32;
    }

    return v30;
  }

  v13 = a2;
  while (!v13[14])
  {
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0xD1, v8, a7, a8);
}

uint64_t FigBaseObjectGetDerivedStorage(uint64_t a1)
{
  if (a1)
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t FigBaseObjectGetVTable(uint64_t result)
{
  if (result)
  {
    if (*(result + 24))
    {
      return *(result + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t FigSemaphoreSignal(os_unfair_lock_s **a1)
{
  v2 = OUTLINED_FUNCTION_2_17(a1);
  if (v2)
  {
    return v2;
  }

  if (!*(v1 + 80))
  {
    v8 = *(v1 + 56);
    if (v8 >= *(v1 + 64))
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      LOBYTE(v7) = 0;
      *(v1 + 56) = v8 + 1;
    }

    goto LABEL_8;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_27_2();
  v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0AuLL, "(Fig)", 0x403, v4, v5, v6);
  if (!v7)
  {
LABEL_8:
    v9 = pthread_cond_signal((v1 + 8));
    if ((v7 & (v9 == 0)) != 0)
    {
      v7 = 4294954505;
    }

    else
    {
      v7 = v9;
    }
  }

  FigSimpleMutexUnlock(*v1);
  return v7;
}

size_t createHostTimeClock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = *MEMORY[0x1E695E480];
  v10 = *&kCMTimeZero.value;
  v11 = 0;
  return FigDerivedClockCreateWithGetTimeCallback(v8, gFigHostTimeClockCallbacks, 0, &v10, 0, &sHostTimeClock, a7, a8);
}

size_t FigDerivedClockCreateWithGetTimeCallback(uint64_t a1, void *a2, const void *a3, __int128 *a4, char a5, uint64_t *a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a2 || !a6 || !a2[6])
  {
    v20 = v8;
    v21 = 4294954551;
    v22 = 783;
    goto LABEL_11;
  }

  if (*a2 != 1)
  {
    v20 = v8;
    v21 = 4294954550;
    v22 = 788;
LABEL_11:
    v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v21, "(Fig)", v22, v20, a7, a8);
    v18 = 0;
    if (!v23)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v14 = a2[1];
  FigThreadRunOnce(&CMClockGetTypeID_sRegisterFigClockOnce, registerFigClock);
  Instance = _CFRuntimeCreateInstance();
  v18 = Instance;
  if (Instance)
  {
    if (v14)
    {
      bzero((Instance + 208), v14);
    }

    if (a3)
    {
      v19 = CFRetain(a3);
    }

    else
    {
      v19 = 0;
    }

    *(v18 + 32) = v19;
  }

  else
  {
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE35uLL, "(Fig)", 0x2EB, v8, v16, v17);
    if (v25)
    {
      v23 = v25;
      v18 = 0;
      goto LABEL_15;
    }
  }

  *(v18 + 24) = a2;
  *(v18 + 44) = 1735680866;
  *(v18 + 73) = a5;
  v26 = *a4;
  *(v18 + 64) = *(a4 + 2);
  *(v18 + 48) = v26;
  *(v18 + 16) = FigReentrantMutexCreate();
  *(v18 + 74) = 1;
  *(v18 + 72) = 0;
  if ((*(v18 + 60) & 0x1D) != 1 || (time1 = *(v18 + 48), *&time2.value = *&kCMTimeZero.value, time2.epoch = 0, !CMTimeCompare(&time1, &time2)))
  {
    *(v18 + 72) = 1;
    goto LABEL_28;
  }

  if (*(v18 + 72))
  {
LABEL_28:
    v23 = 0;
    *(v18 + 41) = 1;
    goto LABEL_15;
  }

  if (*(v18 + 32))
  {
    *(v18 + 152) = *&kCMTimeZero.value;
    *(v18 + 168) = 0;
    *(v18 + 128) = *&kCMTimeZero.value;
    *(v18 + 144) = 0;
    goto LABEL_28;
  }

  v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE37uLL, "(Fig)", 0x331, v8, v27, v28);
  if (v23)
  {
LABEL_12:
    if (v18)
    {
      CFRelease(v18);
      v18 = 0;
    }
  }

LABEL_14:
  if (a6)
  {
LABEL_15:
    *a6 = v18;
  }

  return v23;
}

uint64_t registerFigClock()
{
  result = _CFRuntimeRegisterClass();
  sFigClockID = result;
  return result;
}

double fcInit(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

CFTypeRef FigClockRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigClockRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

size_t figTimebaseCreate(uint64_t a1, char a2, void *a3)
{
  v6 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigTimebaseTrace[1], @"timebase_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v6, 0, gFigTimebaseTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1ED4CC2A0, @"timebase_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1ED4CC298);
  if (a3)
  {
    FigThreadRunOnce(&CMTimebaseGetTypeID_sRegisterFigTimebaseOnce, registerFigTimebase);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v10 = Instance;
      v11 = FigReentrantMutexCreate();
      v10[14] = v11;
      if (v11)
      {
        if ((a2 & 1) == 0 || (v18 = FigDispatchQueueCreateWithPriority("com.apple.coremedia.timebase.notification", 0, 0), (v10[15] = v18) != 0))
        {
          DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
          v20 = CMNotificationCenterRegisterForBarrierSupport(DefaultLocalCenter, v10);
          if (!v20)
          {
            *a3 = v10;
            return v20;
          }

LABEL_16:
          CFRelease(v10);
          return v20;
        }

        v26 = 835;
      }

      else
      {
        v26 = 829;
      }

      figTimebaseCreate_cold_1(v26, &v27, v12, v13, v14, v15, v16, v17);
      v20 = v27;
      goto LABEL_16;
    }

    v22 = qword_1ED4CC298;
    v23 = v3;
    v24 = 4294954546;
    v25 = 823;
  }

  else
  {
    v22 = qword_1ED4CC298;
    v23 = v3;
    v24 = 4294954548;
    v25 = 812;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v24, "<<< timebase >>>", v25, v23, v7, v8);
}

uint64_t registerFigTimebase()
{
  result = _CFRuntimeRegisterClass();
  sFigTimebaseID = result;
  return result;
}

double ftbInit(uint64_t a1)
{
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void FigTimebaseRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef FigTimebaseRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

uint64_t figTimebaseFindUltimateMasterClock(void *a1, uint64_t *a2)
{
  v3 = FigTimebaseCopyTargetTimebase(a1);
  v4 = v3;
  UltimateMasterClock = v3[16];
  if (UltimateMasterClock)
  {
    if (a2)
    {
      v6 = 1;
LABEL_6:
      *a2 = v6;
    }
  }

  else
  {
    v8 = 0;
    UltimateMasterClock = figTimebaseFindUltimateMasterClock(v3[17], &v8);
    if (a2)
    {
      v6 = v8 + 1;
      goto LABEL_6;
    }
  }

  CFRelease(v4);
  return UltimateMasterClock;
}

size_t figTimebaseSwitchListenersToNewMaster(void *a1, const void *a2, unint64_t a3)
{
  if (a2)
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener(DefaultLocalCenter, a1, figTimebaseEffectiveRateChangedNotificationCallback, @"CMTimebaseEffectiveRateChanged", a2);
    v7 = CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener(v7, a1, figTimebaseTimeJumpedNotificationCallback, @"CMTimebaseTimeJumped", a2);
    v8 = CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener(v8, a1, figTimebaseTimeJumpedNotificationCallback, @"CMTimebaseTimeAdjusted", a2);
    v9 = CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener(v9, a1, figTimebaseMasterDidChangeNotificationCallback, @"CMTimebaseMasterDidChange", a2);
    v10 = CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener(v10, a1, figTimebaseMasterWillChangeNotificationCallback, @"CMTimebaseMasterWillChange", a2);
  }

  if (!a3)
  {
    return 0;
  }

  v11 = CMNotificationCenterGetDefaultLocalCenter();
  result = FigNotificationCenterAddWeakListener(v11, a1, figTimebaseEffectiveRateChangedNotificationCallback, @"CMTimebaseEffectiveRateChanged", a3, 0, 0);
  if (!result)
  {
    v13 = CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterAddWeakListener(v13, a1, figTimebaseTimeJumpedNotificationCallback, @"CMTimebaseTimeJumped", a3, 0, 0);
    if (!result)
    {
      v14 = CMNotificationCenterGetDefaultLocalCenter();
      result = FigNotificationCenterAddWeakListener(v14, a1, figTimebaseTimeJumpedNotificationCallback, @"CMTimebaseTimeAdjusted", a3, 0, 0);
      if (!result)
      {
        v15 = CMNotificationCenterGetDefaultLocalCenter();
        result = FigNotificationCenterAddWeakListener(v15, a1, figTimebaseMasterDidChangeNotificationCallback, @"CMTimebaseMasterDidChange", a3, 0, 0);
        if (!result)
        {
          v16 = CMNotificationCenterGetDefaultLocalCenter();

          return FigNotificationCenterAddWeakListener(v16, a1, figTimebaseMasterWillChangeNotificationCallback, @"CMTimebaseMasterWillChange", a3, 0, 0);
        }
      }
    }
  }

  return result;
}

unint64_t FigGetUpTimeNanoseconds()
{
  v0 = mach_absolute_time();

  return FigHostTimeToNanoseconds(v0);
}

unint64_t FigHostTimeToNanoseconds(int64_t a1)
{
  v6 = 0;
  v7 = 0;
  FigGetHostTimeToNanosecondsScale(&v7, &v6);
  v3 = v6;
  v2 = v7;
  result = a1;
  if (v7 != 1 || v6 != 1)
  {

    return FigInt64MulDiv(a1, v2, v3, 0);
  }

  return result;
}

void FigGetHostTimeToNanosecondsScale(void *a1, void *a2)
{
  denom = FigGetHostTimeToNanosecondsScale_denom;
  if (!FigGetHostTimeToNanosecondsScale_denom)
  {
    info = 0;
    if (mach_timebase_info(&info))
    {
      denom = FigGetHostTimeToNanosecondsScale_denom;
    }

    else
    {
      FigGetHostTimeToNanosecondsScale_numer = info.numer;
      FigMemoryBarrier();
      denom = info.denom;
      FigGetHostTimeToNanosecondsScale_denom = info.denom;
    }
  }

  *a1 = FigGetHostTimeToNanosecondsScale_numer;
  *a2 = denom;
}

unint64_t FigInt64MulDiv(int64_t a1, signed int a2, signed int a3, _DWORD *a4)
{
  v5 = a1 >= 0;
  if (a1 < 0)
  {
    a1 = -a1;
  }

  v6 = a2 >= 0;
  if (a2 < 0)
  {
    a2 = -a2;
  }

  v7 = v5 ^ v6;
  v8 = a3 < 0;
  if (a3 < 0)
  {
    a3 = -a3;
  }

  result = FigUInt64MulDiv(a1, a2, a3, a4);
  v10 = result;
  if (result >= 0x7FFFFFFFFFFFFFFFLL)
  {
    result = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 != v8)
  {
    if (a4)
    {
      *a4 = -*a4;
    }

    if (v10 <= 0x7FFFFFFFFFFFFFFELL)
    {
      return -result;
    }

    else
    {
      return 0x8000000000000000;
    }
  }

  return result;
}

unint64_t FigUInt64MulDiv(unint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  if (!a3)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    v4 = 0;
    LODWORD(a1) = 0;
    LODWORD(v5) = 0;
    goto LABEL_12;
  }

  if (a2 == a3)
  {
    v4 = 0;
    v5 = HIDWORD(a1);
    goto LABEL_12;
  }

  if (!(a1 >> 15) && !HIWORD(a2))
  {
    LODWORD(v5) = 0;
    v6 = a1 * a2;
    LODWORD(a1) = a1 * a2 / a3;
    v4 = v6 - a1 * a3;
    goto LABEL_12;
  }

  v7 = a1 * a2;
  v5 = HIDWORD(v7) + HIDWORD(a1) * a2;
  if (HIDWORD(v5) < a3)
  {
    a1 = (v7 | ((v5 % a3) << 32)) / a3;
    v4 = v7 - a1 * a3;
    LODWORD(v5) = v5 / a3;
  }

  else
  {
LABEL_11:
    v4 = 0;
    LODWORD(a1) = -1;
    LODWORD(v5) = -1;
  }

LABEL_12:
  if (a4)
  {
    *a4 = v4;
  }

  return a1 | (v5 << 32);
}

double FigSyncGetRelativeRate(void *a1, void *a2)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  PivotTransform = figSyncGetPivotTransform(a2, a1, &v4);
  result = *(&v5 + 1);
  if (PivotTransform)
  {
    return NAN;
  }

  return result;
}

size_t figSyncGetPivotTransform(void *a1, void *a2, uint64_t a3)
{
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v89 = 0u;
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v86 = 0;
  memset(v85, 0, sizeof(v85));
  v83 = 0;
  v84 = 0;
  if (!a1 || (v5 = a2) == 0 || !a3)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    TransformRelativeToMaster = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE30uLL, "<<<< FigSync >>>>", 0x114, v3, v10, v11);
    goto LABEL_57;
  }

  v6 = a1;
  v7 = CFGetTypeID(a1);
  if (v7 == CMClockGetTypeID())
  {
    v8 = 0;
  }

  else
  {
    v8 = FigTimebaseCopyTargetTimebase(v6);
    v6 = v8;
  }

  v13 = CFGetTypeID(v5);
  if (v13 == CMClockGetTypeID())
  {
    v14 = 0;
  }

  else
  {
    v5 = FigTimebaseCopyTargetTimebase(v5);
    v14 = v5;
  }

  if (v6 != v5)
  {
    v15 = figSyncCopyUltimateMasterClockAndHeight(v6, &v84);
    v73 = figSyncCopyUltimateMasterClockAndHeight(v5, &v83);
    cf = v15;
    v16 = CFEqual(v15, v73);
    if (v83)
    {
      v17 = v84 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17 && v16)
    {
      v18 = CFGetTypeID(v6);
      if (v18 == CMClockGetTypeID())
      {
        v19 = v5;
        v20 = 1;
      }

      else
      {
        v19 = v6;
        v20 = 0;
      }

      TransformRelativeToUltimateMasterClock = FigTimebaseGetTransformRelativeToUltimateMasterClock(v19, v20, &v89);
      goto LABEL_34;
    }

    if (v16)
    {
      v21 = CFGetTypeID(v6);
      if (v21 != CMClockGetTypeID())
      {
        v22 = CFGetTypeID(v5);
        if (v22 != CMClockGetTypeID())
        {
          v72 = CMTimebaseCopySource(v6);
          if (v72 == v5)
          {
            TransformRelativeToMaster = FigTimebaseGetTransformRelativeToMaster(v6, 0, &v89);
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            goto LABEL_35;
          }

          v41 = CMTimebaseCopySource(v5);
          if (v41 == v6)
          {
            TransformRelativeToMaster = FigTimebaseGetTransformRelativeToMaster(v5, 1, &v89);
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            goto LABEL_36;
          }

          v71 = v8;
          v51 = v83;
          v50 = v84;
          v52 = v84 - v83;
          v37 = CFRetain(v6);
          v38 = CFRetain(v5);
          v70 = v14;
          if (v52 < 1)
          {
            if (v52 < 0)
            {
              do
              {
                v58 = v38;
                v38 = figTimebaseCopyTargetOfSourceTimebase(v38);
                CFRelease(v58);
                v55 = __CFADD__(v52++, 1);
              }

              while (!v55);
            }

            v56 = &v84;
          }

          else
          {
            v53 = v51 - v50;
            do
            {
              v54 = v37;
              v37 = figTimebaseCopyTargetOfSourceTimebase(v37);
              CFRelease(v54);
              v55 = __CFADD__(v53++, 1);
            }

            while (!v55);
            v56 = &v83;
          }

          v59 = *v56;
          v39 = figTimebaseCopyTargetOfSourceTimebase(v37);
          v60 = figTimebaseCopyTargetOfSourceTimebase(v38);
          v40 = v60;
          if (v59)
          {
            v61 = v39 == v60;
          }

          else
          {
            v61 = 1;
          }

          if (!v61)
          {
            do
            {
              v62 = v37;
              v63 = v38;
              v37 = v39;
              v38 = v40;
              CFRelease(v62);
              v39 = figTimebaseCopyTargetOfSourceTimebase(v39);
              CFRelease(v63);
              v64 = figTimebaseCopyTargetOfSourceTimebase(v40);
              v40 = v64;
              --v59;
            }

            while (v59 && v39 != v64);
          }

          v65 = v59 - 1;
          v66 = v83;
          TransformRelativeToMasterAtHeight = FigTimebaseGetTransformRelativeToMasterAtHeight(v6, v84 - v65, 0, v87);
          if (TransformRelativeToMasterAtHeight || (TransformRelativeToMasterAtHeight = FigTimebaseGetTransformRelativeToMasterAtHeight(v5, v66 - v65, 1, v85), TransformRelativeToMasterAtHeight))
          {
            TransformRelativeToMaster = TransformRelativeToMasterAtHeight;
            v14 = v70;
            v8 = v71;
            goto LABEL_36;
          }

          v14 = v70;
          v8 = v71;
          goto LABEL_90;
        }
      }
    }

    v23 = CFGetTypeID(v6);
    if (v23 == CMClockGetTypeID())
    {
      TransformRelativeToUltimateMasterClock = FigClockGetTransformRelativeToHostTimeClock(v6, 0, v87, v24, v25, v26, v27, v28);
      if (!TransformRelativeToUltimateMasterClock)
      {
LABEL_26:
        v30 = CFGetTypeID(v5);
        if (v30 != CMClockGetTypeID())
        {
          v82 = 0;
          v80 = 0u;
          v81 = 0u;
          v79 = 0u;
          v78 = 0;
          v76 = 0u;
          v77 = 0u;
          v75 = 0u;
          TransformRelativeToHostTimeClock = FigClockGetTransformRelativeToHostTimeClock(v73, 1, &v79, v31, v32, v33, v34, v35);
          if (TransformRelativeToHostTimeClock || (TransformRelativeToHostTimeClock = FigTimebaseGetTransformRelativeToUltimateMasterClock(v5, 1, &v75), TransformRelativeToHostTimeClock))
          {
            TransformRelativeToMaster = TransformRelativeToHostTimeClock;
            v47 = cf;
          }

          else
          {
            FigSyncCombineTransforms(&v79, &v75, v85);
            v47 = cf;
            if (!v68)
            {
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v72 = 0;
              v41 = 0;
              goto LABEL_91;
            }

            TransformRelativeToMaster = v68;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v72 = 0;
          v41 = 0;
          goto LABEL_37;
        }

        v36 = FigClockGetTransformRelativeToHostTimeClock(v5, 1, v85, v31, v32, v33, v34, v35);
        v37 = 0;
        if (v36)
        {
          TransformRelativeToMaster = v36;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v72 = 0;
          v41 = 0;
LABEL_36:
          v47 = cf;
LABEL_37:
          if (v47)
          {
            CFRelease(v47);
          }

          if (v73)
          {
            CFRelease(v73);
          }

          if (v37)
          {
            CFRelease(v37);
          }

          if (v38)
          {
            CFRelease(v38);
          }

          if (v39)
          {
            CFRelease(v39);
          }

          if (v40)
          {
            CFRelease(v40);
          }

          if (v72)
          {
            CFRelease(v72);
          }

          if (v41)
          {
            CFRelease(v41);
          }

          goto LABEL_53;
        }

        v38 = 0;
        v39 = 0;
        v40 = 0;
        v72 = 0;
        v41 = 0;
LABEL_90:
        v47 = cf;
LABEL_91:
        FigSyncCombineTransforms(v87, v85, &v89);
        TransformRelativeToMaster = v69;
        goto LABEL_37;
      }
    }

    else
    {
      v82 = 0;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      TransformRelativeToUltimateMasterClock = FigTimebaseGetTransformRelativeToUltimateMasterClock(v6, 0, &v79);
      if (!TransformRelativeToUltimateMasterClock)
      {
        TransformRelativeToUltimateMasterClock = FigClockGetTransformRelativeToHostTimeClock(cf, 0, &v75, v42, v43, v44, v45, v46);
        if (!TransformRelativeToUltimateMasterClock)
        {
          FigSyncCombineTransforms(&v79, &v75, v87);
          if (!TransformRelativeToUltimateMasterClock)
          {
            goto LABEL_26;
          }
        }
      }
    }

LABEL_34:
    TransformRelativeToMaster = TransformRelativeToUltimateMasterClock;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v72 = 0;
LABEL_35:
    v41 = 0;
    goto LABEL_36;
  }

  TransformRelativeToMaster = 0;
  v91 = *&kCMTimeZero.value;
  v92 = 0;
  v89 = *&kCMTimeZero.value;
  *&v90 = 0;
  *(&v90 + 1) = 0x3FF0000000000000;
LABEL_53:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_57:
  if (!TransformRelativeToMaster)
  {
    v48 = v90;
    *a3 = v89;
    *(a3 + 16) = v48;
    *(a3 + 32) = v91;
    *(a3 + 48) = v92;
  }

  return TransformRelativeToMaster;
}

size_t figTimebaseSetRateAndMaybeAnchorTime(uint64_t a1, __int128 *a2, CMTime *a3, unsigned __int8 a4, double a5, uint64_t a6, uint64_t a7, CMBlockBufferFlags a8, CMBlockBufferRef *a9)
{
  v11 = a3;
  memset(&v84, 0, sizeof(v84));
  flags = a3->flags;
  memset(&v83, 0, sizeof(v83));
  if (a5 != 0.0 || (a4 & 2) == 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = (*(a2 + 12) & 1) == 0 && (flags & 1) == 0;
  }

  if (!a1)
  {
    return 4294954548;
  }

  if (*(a1 + 16) != 1)
  {
    if ((*(a2 + 3) ^ flags))
    {
      v18 = qword_1ED4CC298;
      v19 = v9;
      v20 = 4294954547;
      v21 = 2630;
      goto LABEL_24;
    }

    v22 = flags & 1;
    time1 = *a2;
    OUTLINED_FUNCTION_2_8();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetDouble(Mutable, @"CMTimebaseRate", a5, v24, v25, v26, v27, v28, v29);
    FigCFDictionarySetCMTime(Mutable, @"CMTimebaseTimebaseTime", &time1, v30, v31, v32, v33, v34);
    time1 = v81;
    FigCFDictionarySetCMTime(Mutable, @"CMTimebaseSourceTime", &time1, v35, v36, v37, v38, v39);
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification(DefaultLocalCenter, @"CMTimebaseWillUpdateTiming", a1, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    FigReentrantMutexLock(*(a1 + 112));
    if (*(a1 + 184) == a5)
    {
      if (!v22 || a5 == 0.0 && (time1 = *(a1 + 192), OUTLINED_FUNCTION_13_0(), !CMTimeCompare(&time1, &v81)) && (time1 = *(a1 + 160), OUTLINED_FUNCTION_2_8(), !CMTimeCompare(&time1, &v81)))
      {
        FigReentrantMutexUnlock(*(a1 + 112));
        return 0;
      }
    }

    EffectiveRate = CMTimebaseGetEffectiveRate(a1);
    figTimebaseGetMasterTime(a1, &v84);
    if (v17)
    {
      LOBYTE(v81.value) = 0;
      memset(&time1, 0, sizeof(time1));
      figTimebaseGetAnchorTimebaseTimeIfClamped(a1, 0, &v81, &time1);
      if (LOBYTE(v81.value))
      {
        *a2 = time1;
        *v11 = v84;
        v22 = 1;
      }
    }

    if (v22)
    {
      v43 = *a2;
      *(a1 + 208) = *(a2 + 2);
      *(a1 + 192) = v43;
    }

    else
    {
      OUTLINED_FUNCTION_10_1(&time1);
      *(a1 + 192) = time1;
      v11 = &v84;
    }

    v44 = *&v11->value;
    *(a1 + 176) = v11->epoch;
    *(a1 + 160) = v44;
    *(a1 + 184) = a5;
    *(a1 + 216) = 0;
    if (a5 != 0.0)
    {
      FigSyncInvertTransform(a1 + 160, a1 + 224);
      if (!v45)
      {
        *(a1 + 216) = 1;
      }
    }

    time1 = v84;
    figTimebaseGetTimeAtMasterTime(a1, &v83);
    v46 = CMTimebaseGetEffectiveRate(a1);
    v47 = v46;
    if (v22)
    {
      v49 = a4 & 1;
      v48 = (a4 & 1) == 0;
    }

    else
    {
      v48 = 1;
      v49 = 1;
      if (v46 == EffectiveRate)
      {
        goto LABEL_54;
      }
    }

    v50 = v46 == EffectiveRate;
    CMTimebaseGetEffectiveRate(a1);
    OUTLINED_FUNCTION_21();
    if (!(v62 ^ v63 | v51))
    {
      v61 = 1;
    }

    if (v51)
    {
      v61 = v60;
    }

    v64 = (a4 & 1) == 0;
    *(a1 + 320) = v61;
    if (!v22)
    {
      v64 = 1;
    }

    if (v60 == v61)
    {
      v65 = 1;
    }

    else
    {
      v65 = v50 & ~v64;
    }

    v66 = a4 | (v22 == 0);
    if (*(a1 + 280))
    {
      OUTLINED_FUNCTION_4_5(v52, v53, v54, v55, v56, v57, v58, v59, v81.value, *&v81.timescale, v81.epoch, v82, *&v83.value);
      rescheduleValidAndRemoveInvalidTimers(a1, v67, v66 & v65);
    }

    if (*(a1 + 304))
    {
      OUTLINED_FUNCTION_4_5(v52, v53, v54, v55, v56, v57, v58, v59, v81.value, *&v81.timescale, v81.epoch, v82, *&v83.value);
      rescheduleValidAndRemoveCancelledTimerSources(a1, v68, v66 & v65);
    }

LABEL_54:
    FigReentrantMutexUnlock(*(a1 + 112));
    v69 = CFGetAllocator(a1);
    OUTLINED_FUNCTION_4_5(v69, v70, v71, v72, v73, v74, v75, v76, v81.value, *&v81.timescale, v81.epoch, v82, *&v83.value);
    PayloadForNotificationAtTime = figTimebaseCreatePayloadForNotificationAtTime(v77, v78);
    v80 = PayloadForNotificationAtTime;
    if (v47 != EffectiveRate)
    {
      PayloadForNotificationAtTime = OUTLINED_FUNCTION_20(PayloadForNotificationAtTime, @"CMTimebaseEffectiveRateChanged");
    }

    if (v49)
    {
      if (v48)
      {
        goto LABEL_58;
      }
    }

    else
    {
      PayloadForNotificationAtTime = OUTLINED_FUNCTION_20(PayloadForNotificationAtTime, @"CMTimebaseTimeJumped");
      if (v48)
      {
LABEL_58:
        if (!v80)
        {
          return 0;
        }

        goto LABEL_62;
      }
    }

    OUTLINED_FUNCTION_20(PayloadForNotificationAtTime, @"CMTimebaseTimeAdjusted");
    if (!v80)
    {
      return 0;
    }

LABEL_62:
    CFRelease(v80);
    return 0;
  }

  v18 = qword_1ED4CC298;
  v19 = v9;
  v20 = 4294954539;
  v21 = 2624;
LABEL_24:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v20, "<<< timebase >>>", v21, v19, a8, a9);
}

void figTimebaseGetMasterTime(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = FigTimebaseCopyTargetTimebase(a1);
  FigReentrantMutexLock(v3[14]);
  v4 = v3[16];
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = v3[17];
  if (v6)
  {
    v7 = CFRetain(v6);
  }

  else
  {
    v7 = 0;
  }

  FigReentrantMutexUnlock(v3[14]);
  if (v5)
  {
    CMClockGetTime(a2, v5);
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(v7, 1, 0, a2);
  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

LABEL_10:
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(v3);
}

__n128 FigSyncInvertTransform(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v15 = 0uLL;
  v14 = 0;
  v13 = 0uLL;
  if (a1 && (*(a1 + 44) & 0x1D) == 1 && (*(a1 + 12) & 0x1D) == 1)
  {
    v4 = *(a1 + 24);
    if (v4 != 0.0)
    {
      v13 = *a1;
      v14 = *(a1 + 16);
      v15 = *(a1 + 32);
      v16 = *(a1 + 48);
      v12 = 1.0 / v4;
      goto LABEL_9;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v8 = v2;
    v9 = 4294954541;
    v10 = 173;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v8 = v2;
    v9 = 4294954544;
    v10 = 168;
  }

  if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<<< FigSync >>>>", v10, v8, v6, v7))
  {
    return result;
  }

  v12 = 0.0;
LABEL_9:
  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  result = v13;
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  return result;
}

uint64_t FigTimebaseGetTransformRelativeToUltimateMasterClock(void *a1, int a2, uint64_t a3)
{
  v3 = 4294954548;
  if (a1 && a3)
  {
    v21 = *&kCMTimeZero.value;
    v22 = 0;
    v19 = *&kCMTimeZero.value;
    *&v20 = 0;
    *(&v20 + 1) = 0x3FF0000000000000;
    v6 = FigTimebaseCopyTargetTimebase(a1);
    if (v6)
    {
      v7 = v6;
      while (1)
      {
        OUTLINED_FUNCTION_15();
        TransformRelativeToMaster = FigTimebaseGetTransformRelativeToMaster(v7, a2, v8);
        if (TransformRelativeToMaster)
        {
          break;
        }

        v17[0] = v19;
        v17[1] = v20;
        v17[2] = v21;
        v18 = v22;
        if (a2)
        {
          v10 = v16;
          v11 = v17;
        }

        else
        {
          v10 = v17;
          v11 = v16;
        }

        FigSyncCombineTransforms(v10, v11, &v19);
        v3 = v12;
        if (v12)
        {
          goto LABEL_13;
        }

        v13 = CMTimebaseCopySourceTimebase(v7);
        CFRelease(v7);
        v7 = v13;
        if (!v13)
        {
          goto LABEL_11;
        }
      }

      v3 = TransformRelativeToMaster;
LABEL_13:
      CFRelease(v7);
    }

    else
    {
LABEL_11:
      v3 = 0;
      v14 = v20;
      *a3 = v19;
      *(a3 + 16) = v14;
      *(a3 + 32) = v21;
      *(a3 + 48) = v22;
    }
  }

  return v3;
}

uint64_t FigTimebaseGetTransformRelativeToMaster(void *a1, int a2, uint64_t a3)
{
  v4 = 4294954548;
  if (a1 && a3)
  {
    v7 = FigTimebaseCopyTargetTimebase(a1);
    OUTLINED_FUNCTION_19(v7);
    if (a2)
    {
      v8 = (v3 + 160);
LABEL_5:
      v11 = *v8;
      v12 = v8[1];
      v13 = v8[2];
      v14 = *(v8 + 6);
      FigReentrantMutexUnlock(*(v3 + 112));
      v4 = 0;
      *a3 = v11;
      *(a3 + 16) = v12;
      *(a3 + 32) = v13;
      *(a3 + 48) = v14;
LABEL_6:
      CFRelease(v3);
      return v4;
    }

    if (CMTimebaseGetRate(v3) == 0.0)
    {
      v4 = 4294954541;
    }

    else
    {
      if (*(v3 + 216))
      {
        v8 = (v3 + 224);
        goto LABEL_5;
      }

      v8 = (v3 + 224);
      FigSyncInvertTransform(v3 + 160, v3 + 224);
      v4 = v10;
      if (!v10)
      {
        *(v3 + 216) = 1;
        goto LABEL_5;
      }
    }

    FigReentrantMutexUnlock(*(v3 + 112));
    goto LABEL_6;
  }

  return v4;
}

double FigSyncCombineTransforms(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v14 = 0uLL;
  memset(&v13, 0, sizeof(v13));
  if ((*(a1 + 11) & 0x1D) == 1 && (*(a1 + 3) & 0x1D) == 1 && (*(a2 + 44) & 0x1D) == 1 && (*(a2 + 12) & 0x1D) == 1)
  {
    v12 = *(a1 + 2);
    FigSyncApplyTransform(&v12, a2, &v13);
    v14 = *a1;
    v15 = *(a1 + 2);
    v7 = *(a1 + 3) * *(a2 + 24);
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE2FuLL, "<<<< FigSync >>>>", 0x8D, v3, v9, v10))
    {
      return result;
    }

    v7 = 0.0;
  }

  *a3 = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v7;
  result = *&v13.value;
  *(a3 + 32) = v13;
  return result;
}

CMTime *FigSyncApplyTransform@<X0>(CMTime *a1@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  *&a3->value = *&kCMTimeInvalid.value;
  a3->epoch = 0;
  if (a2 && (a1->flags & 0x1D) == 1 && (*(a2 + 44) & 0x1D) == 1 && (*(a2 + 12) & 0x1D) == 1)
  {
    lhs = *a1;
    v10 = *a2;
    CMTimeSubtract(&time, &lhs, &v10);
    CMTimeMultiplyByFloat64(&lhs, &time, *(a2 + 24));
    time = *(a2 + 32);
    return CMTimeAdd(a3, &lhs, &time);
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE30uLL, "<<<< FigSync >>>>", 0xC4, v3, v8, v9);
  }
}

void figTimebaseEffectiveRateChangedNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  memset(&v23, 0, sizeof(v23));
  if (a2)
  {
    FigReentrantMutexLock(*(a2 + 112));
    if (*(a2 + 136) != a4)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC298, 0xFFFFCE33uLL, "<<< timebase >>>", 0x746, v8, v12, v13);
LABEL_8:
      v15 = *(a2 + 112);

      FigReentrantMutexUnlock(v15);
      return;
    }

    figTimebaseGetTimeFromNotificationPayloadOrMasterTimebase(a5, a2, &v23);
    if (*(a2 + 184) == 0.0)
    {
      goto LABEL_8;
    }

    EffectiveRate = CMTimebaseGetEffectiveRate(a2);
    v17 = *(a2 + 320);
    if (EffectiveRate > 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (EffectiveRate == 0.0)
    {
      v18 = *(a2 + 320);
    }

    *(a2 + 320) = v18;
    v19 = v17 == v18;
    if (*(a2 + 280))
    {
      v22 = v23;
      rescheduleValidAndRemoveInvalidTimers(a2, &v22, v19);
    }

    if (*(a2 + 304))
    {
      v22 = v23;
      rescheduleValidAndRemoveCancelledTimerSources(a2, &v22, v19);
    }

    FigReentrantMutexUnlock(*(a2 + 112));
    v20 = CFGetAllocator(a2);
    v22 = v23;
    v21 = figTimebaseCreatePayloadForNotificationAtTime(v20, &v22);
    figTimebasePostNotification(a2, @"CMTimebaseEffectiveRateChanged", v21);
    if (v21)
    {

      CFRelease(v21);
    }
  }

  else
  {
    v14 = qword_1ED4CC298;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE34uLL, "<<< timebase >>>", 0x73D, v8, a7, a8);
  }
}

uint64_t FigTimebaseSetRateAndAnchorTime(OpaqueCMTimebase *a1, CMTime *a2, CMTime *a3, Float64 a4)
{
  timebaseTime = *a2;
  v5 = *a3;
  return CMTimebaseSetRateAndAnchorTime(a1, a4, &timebaseTime, &v5);
}

uint64_t FigFilePathCreateFromNativePath(int a1, CFStringRef theString, uint64_t *a3)
{
  v15 = 0;
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(theString, 0x8000100u, &v15);
  if (CStringPtrAndBufferToFree)
  {
    v6 = CStringPtrAndBufferToFree;
    if (!strncasecmp(CStringPtrAndBufferToFree, "file://", 7uLL))
    {
      v12 = 7;
    }

    else
    {
      v12 = 0;
    }

    v13 = FigFilePathCreateFromDarwinPath(a1, &v6[v12], a3, v7, v8, v9, v10, v11);
  }

  else
  {
    FigFilePathCreateFromNativePath_cold_1(&v16);
    v13 = v16;
  }

  free(v15);
  return v13;
}

uint64_t FigFilePathCreateFromDarwinPath(int a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    FigFilePathCreateFromDarwinPath_cold_3(v30, a2, a3, a4, a5, a6, a7, a8);
    return *v30;
  }

  v9 = a2;
  v10 = realpath_DARWIN_EXTSN(a2, v30);
  if (v10)
  {
    v9 = v10;
  }

  v18 = strlen(v9) + 1;
  if (v18 >= 0x401)
  {
    FigFilePathCreateFromDarwinPath_cold_2(&v29, v11, v12, v13, v14, v15, v16, v17);
    return v29;
  }

  FigFilePathGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigFilePathCreateFromDarwinPath_cold_1(&v29, v20, v21, v22, v23, v24, v25, v26);
    return v29;
  }

  v27 = Instance;
  memcpy((Instance + 16), v9, v18);
  result = 0;
  *a3 = v27;
  return result;
}

uint64_t RegisterFigFilePathType()
{
  result = _CFRuntimeRegisterClass();
  sFigFilePathID = result;
  return result;
}

uint64_t RegisterFigBlockBufferType()
{
  result = _CFRuntimeRegisterClass();
  sFigBlockBufferID = result;
  return result;
}

void FigRuntimeRegisterAttachmentBearerWithTypeID(void *a1, const void *a2)
{
  FigThreadRunOnce(&sFigAttachmentsEnsureAttachmentBearerRegistrationDictionaryOnce, figAttachmentsMakeAttachmentBearerRegistrationDictionary);
  if (*a1)
  {
    v7 = v2;
    v8 = 142;
LABEL_12:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, "(Fig)", v8, v7, v5, v6);
    return;
  }

  if (!a1[1] || !a1[2] || !a1[3] || !a1[4] || !a1[5])
  {
    v7 = v2;
    v8 = 147;
    goto LABEL_12;
  }

  if (!sFigAttachmentBearerCallbacksPerTypeID)
  {
    v7 = v2;
    v8 = 153;
    goto LABEL_12;
  }

  if (CFDictionaryGetCountOfKey(sFigAttachmentBearerCallbacksPerTypeID, a2))
  {
    v7 = v2;
    v8 = 158;
    goto LABEL_12;
  }

  v9 = sFigAttachmentBearerCallbacksPerTypeID;

  CFDictionarySetValue(v9, a2, a1);
}

double BBufInit(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t NewBufferSubBlock(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 36) - 1;
  v8 = a1 + 48;
  if (v6 < v7)
  {
    v13 = v8 + 48 * v6;
    *(v13 + 16) = a2;
    *(a1 + 32) = v6 + 1;
LABEL_6:
    result = 0;
    *(a1 + 40) += a2;
    goto LABEL_7;
  }

  v9 = v8 + 48 * v7;
  if (!*v9)
  {
    v11 = CFGetAllocator(a1);
    result = CMBlockBufferCreateEmpty(v11, *(a1 + 36), v12, (v9 + 24));
    if (result)
    {
      goto LABEL_7;
    }

    *v9 = 1;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    ++*(a1 + 32);
  }

  result = NewBufferSubBlock(*(v9 + 24), a2, &v13);
  if (!result)
  {
    *(v9 + 16) += a2;
    goto LABEL_6;
  }

LABEL_7:
  *a3 = v13;
  return result;
}

uint64_t FigSimpleMutexTryLock(uint64_t a1)
{
  v1 = *(a1 + 64);
  if ((v1 & 0x80000003) == 0x80000000)
  {
    return os_unfair_recursive_lock_trylock();
  }

  if ((v1 & 3) != 0)
  {
    return pthread_mutex_trylock(a1) == 0;
  }

  return os_unfair_lock_trylock(a1);
}

uint64_t FigFileForkOpenMainByPath(uint64_t a1, unsigned int a2, int **a3)
{
  v6 = a2 & 3;
  v7 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (v7)
  {
    v15 = v7;
    if ((a2 & 0x20) != 0)
    {
      v16 = 16778240;
    }

    else
    {
      v16 = 0x1000000;
    }

    v17 = (a2 >> 2) & 0x20 | v16;
    v18 = (32 * a2) & 0x200;
    if ((a2 & 0x200) != 0)
    {
      v18 = 2560;
    }

    v6 |= v17 | v18;
    *v7 = open((a1 + 16), v6, 420);
    v19 = __error();
    if (*v15 == -1)
    {
      FigFileForkOpenMainByPath_cold_2(v19, v6, &v28);
      v25 = v28;
    }

    else
    {
      if ((a2 & 0x40) != 0 && (v20 = 48, v21 = fcntl(*v15, 48, 1), v22 = __error(), v21 == -1))
      {
        v26 = 568;
      }

      else
      {
        if ((a2 & 0x100) == 0 || (v20 = 68, v23 = fcntl(*v15, 68, 1), v22 = __error(), v23 != -1))
        {
          *a3 = v15;
          return 0;
        }

        v26 = 576;
      }

      FigFileForkOpenMainByPath_cold_1(v22, v20, v26, v15, &v27);
      v25 = v27;
    }

    free(v15);
  }

  else
  {
    FigFileForkOpenMainByPath_cold_3(&v29, v8, v9, v10, v11, v12, v13, v14);
    v25 = v29;
  }

  return convertPOSIXErrorToFigFileError(v25, v6);
}

uint64_t FigFileForkClose(int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (v2 == -1 || !close(v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = *__error();
  }

  *a1 = 0;
  free(a1);
  return v3;
}

size_t FigByteStreamCreateForFile(uint64_t a1, unsigned int a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DarwinPath = FigFileGetDarwinPath(a1);
  v8 = strlen(DarwinPath);
  v9 = CFURLCreateFromFileSystemRepresentation(a3, DarwinPath, v8, 0);
  v10 = CMByteStreamCreateForFileURL(a3, v9, a2, a4);
  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

size_t RegisterFigByteStreamBaseType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigByteStreamClassDesc, ClassID, 1, &sFigByteStreamClassID, v1, v2, v3, v4);
}

size_t FigFileByteStreamRead(uint64_t a1, size_t a2, off_t a3, char *a4, unint64_t *a5)
{
  v6 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v31 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (a2 > 0x1000 || !*(DerivedStorage + 4144))
  {
    v23 = FigFileForkReadWithIOPolicy(*(DerivedStorage + 8), *(DerivedStorage + 4216), a4, a2, a3, &v31);
    goto LABEL_16;
  }

  v13 = *(DerivedStorage + 8);
  v30 = *(DerivedStorage + 4216);
  FigSimpleMutexLock(*(DerivedStorage + 4136));
  v14 = *(DerivedStorage + 4120);
  v15 = __OFSUB__(a3, v14);
  v16 = a3 - v14;
  if (v16 < 0 == v15)
  {
    v17 = *(DerivedStorage + 4128);
    v18 = v17 <= a3;
    v19 = v17 - a3;
    if (!v18)
    {
      if (v19 >= a2)
      {
        v20 = a2;
      }

      else
      {
        v20 = v19;
      }

      v21 = (DerivedStorage + 24);
      memcpy(a4, (DerivedStorage + 24 + v16), v20);
      a2 -= v20;
      v22 = v20 + a3;
      if (!a2)
      {
        goto LABEL_9;
      }

LABEL_12:
      v32 = 0;
      v23 = FigFileForkReadWithIOPolicy(v13, v30, v21, 0x1000uLL, v22, &v32);
      *(DerivedStorage + 4120) = v22;
      v24 = v32;
      *(DerivedStorage + 4128) = v32 + v22;
      if (v24 < a2)
      {
        a2 = v24;
      }

      memcpy(&a4[v20], v21, a2);
      v20 += a2;
      goto LABEL_15;
    }
  }

  v21 = (DerivedStorage + 24);
  v20 = 0;
  v22 = a3;
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v23 = 0;
LABEL_15:
  v6 = v5;
  v31 = v20;
  FigSimpleMutexUnlock(*(DerivedStorage + 4136));
LABEL_16:
  v25 = FigGetUpTimeNanoseconds();
  FigByteStreamStatsLogOneRead((DerivedStorage + 4152), UpTimeNanoseconds, v25, v23, a3, v31);
  if (v23)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v23, "<<< FigByteStream_File >>>", 0x1EB, v6, v27, v28);
    if (a5)
    {
LABEL_18:
      *a5 = v31;
    }
  }

  else
  {
    if (v31)
    {
      v23 = 0;
    }

    else
    {
      v23 = 4294954423;
    }

    if (a5)
    {
      goto LABEL_18;
    }
  }

  return v23;
}

uint64_t FigFileByteStreamCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, const __CFURL **a4)
{
  v33 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"FBS_EntireLength") || CFEqual(a2, @"FBS_AvailableLength"))
  {
    valuePtr[0] = 0;
    v9 = CMBaseObjectGetDerivedStorage(a1);
    FigFileForkGetLengthAtOffset(*(v9 + 8), 0, valuePtr, v10, v11, v12, v13, v14);
    v15 = *MEMORY[0x1E695E480];
    v16 = valuePtr;
    v17 = kCFNumberSInt64Type;
LABEL_4:
    StatsDictionary = CFNumberCreate(v15, v17, v16);
LABEL_5:
    AllocatedStorageSpaceLength = 0;
    goto LABEL_6;
  }

  if (CFEqual(a2, @"FBS_EntireLengthAvailableOnDemand"))
  {
    if (*DerivedStorage)
    {
      StatsDictionary = *MEMORY[0x1E695E4D0];
LABEL_13:
      StatsDictionary = CFRetain(StatsDictionary);
      goto LABEL_5;
    }

    return 4294954513;
  }

  if (CFEqual(a2, @"FBS_URL"))
  {
    StatsDictionary = *DerivedStorage;
    if (*DerivedStorage)
    {
      goto LABEL_13;
    }

    return 4294954513;
  }

  if (!CFEqual(a2, @"FBS_FileType"))
  {
    if (CFEqual(a2, @"FBS_IOPolicy"))
    {
      v15 = *MEMORY[0x1E695E480];
      v16 = (DerivedStorage + 4216);
LABEL_22:
      v17 = kCFNumberIntType;
      goto LABEL_4;
    }

    if (CFEqual(a2, @"FBS_MIMEType"))
    {
      return 4294954512;
    }

    if (CFEqual(a2, @"FBS_ReadStats"))
    {
      StatsDictionary = FigByteStreamStatsCreateStatsDictionary(a3, @"FileByteStream", *DerivedStorage, DerivedStorage + 4152);
      goto LABEL_5;
    }

    if (CFEqual(a2, @"FBS_ReadSupported"))
    {
      v22 = MEMORY[0x1E695E4D0];
      if (*(DerivedStorage + 16))
      {
        v22 = MEMORY[0x1E695E4C0];
      }
    }

    else
    {
      if (!CFEqual(a2, @"FBS_WriteSupported"))
      {
        if (CFEqual(a2, @"FBS_FileDescriptor"))
        {
          LODWORD(valuePtr[0]) = FigFileGetDarwinFileDesc(*(DerivedStorage + 8));
          v15 = *MEMORY[0x1E695E480];
          v16 = valuePtr;
          goto LABEL_22;
        }

        if (CFEqual(a2, @"FBS_AllocatedStorageSpaceLength"))
        {
          valuePtr[0] = 0;
          AllocatedStorageSpaceLength = FigFileForkGetAllocatedStorageSpaceLength(*(DerivedStorage + 8), valuePtr, v23, v24, v25, v26, v27, v28);
          if (AllocatedStorageSpaceLength)
          {
            return AllocatedStorageSpaceLength;
          }

          StatsDictionary = FigCFNumberCreateSInt64(*MEMORY[0x1E695E480], valuePtr[0]);
          goto LABEL_6;
        }

        return 4294954512;
      }

      v22 = MEMORY[0x1E695E4D0];
      if ((*(DerivedStorage + 16) & 3) == 0)
      {
        v22 = MEMORY[0x1E695E4C0];
      }
    }

    StatsDictionary = *v22;
    if (!*v22)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v21 = *DerivedStorage;
  if (!v21)
  {
    return 4294954513;
  }

  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v29[1] = 0;
  v29[2] = 0;
  bzero(valuePtr, 0x400uLL);
  v29[0] = 0x400000000005;
  if (!CFURLGetFileSystemRepresentation(v21, 1u, valuePtr, 1024))
  {
    return 4294954513;
  }

  AllocatedStorageSpaceLength = getattrlist(valuePtr, v29, v31, 0x24uLL, 0);
  if (AllocatedStorageSpaceLength)
  {
    return AllocatedStorageSpaceLength;
  }

  StatsDictionary = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v31[4]);
LABEL_6:
  *a4 = StatsDictionary;
  return AllocatedStorageSpaceLength;
}

uint64_t FigSemaphoreDestroy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 88);
  v3 = FigSimpleMutexLock(*a1);
  if (v3)
  {
    return v3;
  }

  *(a1 + 80) = 1;
  FigSimpleMutexUnlock(*a1);
  if (*(a1 + 72) && !pthread_cond_broadcast((a1 + 8)))
  {
    while (!FigSimpleMutexLock(*a1))
    {
      v4 = *(a1 + 72);
      FigSimpleMutexUnlock(*a1);
      if (!v4)
      {
        break;
      }

      sched_yield();
    }
  }

  FigSimpleMutexDestroy(*a1);
  v5 = pthread_cond_destroy((a1 + 8));
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  CFAllocatorDeallocate(v2, a1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v5;
}

size_t FigSimpleMutexDestroy(pthread_mutex_t *ptr)
{
  if (!ptr)
  {
    return 0;
  }

  if ((ptr[1].__sig & 3) == 0 || (v3 = pthread_mutex_destroy(ptr), !v3))
  {
    figSimpleMutexDeallocateInternal(ptr);
    return 0;
  }

  v4 = v3;
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v4, "(Fig)", 0x2BF, v1, v6, v7);
  return v4;
}

uint64_t FindDataReference(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = *(a2 + 32);
  if (v6 < 1)
  {
    v25 = 0;
    LOBYTE(result) = 0;
  }

  else
  {
    v8 = a3;
    v11 = 0;
    v12 = (a2 + 64);
    v13 = *(a2 + 32);
    while (1)
    {
      v14 = *v12 + v11;
      if ((*(v12 - 4) - 2) <= 3)
      {
        v15 = *(a1 + 16);
        if (v15 + a3 >= v11 && v14 > a3)
        {
          break;
        }
      }

      v12 += 6;
      v11 = v14;
      if (!--v13)
      {
        v17 = 0;
        v18 = 0;
        LOBYTE(result) = 0;
        *a5 = 0;
        v20 = (a2 + 72);
        do
        {
          if (!*(a1 + 16))
          {
            break;
          }

          v21 = *(v20 - 1);
          v22 = v21 + v18;
          if (v8 < v21 + v18 && *(v20 - 6) == 1)
          {
            v27 = 0;
            if (v18 - v8 + v21 >= a4)
            {
              v23 = a4;
            }

            else
            {
              v23 = v18 - v8 + v21;
            }

            LODWORD(result) = FindDataReference(a1, *v20, v8 - v18 + *(v20 - 2), v23, &v27);
            if (result)
            {
              v24 = v27;
              if (v27 >= v23)
              {
                v24 = v23;
              }

              v8 += v24;
              *a5 += v24;
            }

            v6 = *(a2 + 32);
          }

          ++v17;
          v20 += 6;
          v18 = v22;
        }

        while (v17 < v6);
        return result;
      }
    }

    v26 = *(a2 + 40) - a3;
    if (v26 >= a4)
    {
      v26 = a4;
    }

    if (v15 >= v26)
    {
      v25 = v26;
    }

    else
    {
      v25 = *(a1 + 16);
    }

    AppendBufferReferenceSubBlock(*(a1 + 8), a2, a3, v25);
    *(a1 + 16) -= v25;
    LOBYTE(result) = 1;
  }

  *a5 = v25;
  return result;
}

uint64_t AppendBufferReferenceSubBlock(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 36);
  v10 = v9;
  if (v9)
  {
    v11 = v9 < v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = a1 + 48 * v9;
    if (*v12 == 1 && *(v12 + 24) == a2)
    {
      v13 = *(v12 + 16);
      if (v13 + *(v12 + 8) == a3)
      {
        *(v12 + 16) = v13 + a4;
LABEL_15:
        result = 0;
        *(a1 + 40) += a4;
        return result;
      }
    }
  }

  v14 = v8 - 1;
  v15 = a1 + 48;
  if (v10 < v14)
  {
    v16 = v15 + 48 * v10;
    *v16 = 1;
    *(v16 + 8) = a3;
    *(v16 + 16) = a4;
    *(v16 + 24) = CFRetain(a2);
    ++*(a1 + 32);
    goto LABEL_15;
  }

  v17 = v15 + 48 * v14;
  if (*v17)
  {
LABEL_13:
    result = AppendBufferReferenceSubBlock(*(v17 + 24), a2, a3, a4);
    if (result)
    {
      return result;
    }

    *(v17 + 16) += a4;
    goto LABEL_15;
  }

  v19 = CFGetAllocator(a1);
  result = CMBlockBufferCreateEmpty(v19, *(a1 + 36), v20, (v17 + 24));
  if (!result)
  {
    *v17 = 1;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    ++*(a1 + 32);
    goto LABEL_13;
  }

  return result;
}

void FigBlockBufferRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void BBufFinalize(char *cf)
{
  if (*(cf + 8) >= 1)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E695E498];
    v4 = (cf + 88);
    do
    {
      v5 = *(v4 - 10);
      if ((v5 - 2) < 2)
      {
        v6 = v4 - 2;
        v9 = *v4;
        if (*v4 != v3 && *v6)
        {
          CFAllocatorDeallocate(v9, *v6);
          v9 = *v4;
        }

        CFRelease(v9);
      }

      else
      {
        if ((v5 - 4) >= 2)
        {
          if (v5 == 1)
          {
            CFRelease(*(v4 - 2));
            *(v4 - 2) = 0;
          }

          goto LABEL_14;
        }

        v6 = v4 - 2;
        v7 = *(*v4 + 12);
        if (v7 && *v6)
        {
          v7(*(*v4 + 20), *v6, *(v4 - 1));
        }

        v8 = CFGetAllocator(cf);
        CFAllocatorDeallocate(v8, *v4);
      }

      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
LABEL_14:
      *(v4 - 10) = 0;
      ++v2;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      v4 += 6;
    }

    while (v2 < *(cf + 8));
  }

  v10 = 0;
  v11 = cf + 16;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = *&v11[8 * v10];
    if (v14)
    {
      CFRelease(v14);
      *&v11[8 * v10] = 0;
    }

    v12 = 0;
    v10 = 1;
  }

  while ((v13 & 1) != 0);
  *(cf + 8) = 0;
  *(cf + 5) = 0;
}

CFTypeRef FigBlockBufferRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

uint64_t AudioToolbox_AudioFormatGetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = pAudioFormatGetProperty;
  if (pAudioFormatGetProperty || ((FigThreadRunOnce(&loadAudioToolboxPointers_sLoadAudioToolboxPointersOnce, loadAudioToolboxPointersOnce), !gAudioToolboxBundleStatus) ? (result = 0) : (result = 4294965266), (v10 = pAudioFormatGetProperty) != 0))
  {

    return v10(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t loadAudioToolboxPointersOnce()
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.audio.toolbox.AudioToolbox");
  gAudioToolboxBundle = BundleWithIdentifier;
  if (!BundleWithIdentifier)
  {
    v2 = *MEMORY[0x1E69E9848];
    v3 = "Failed to get AudioToolbox bundle!\n";
    v4 = 35;
    goto LABEL_14;
  }

  pAudioConverterGetProperty = CFBundleGetFunctionPointerForName(BundleWithIdentifier, @"AudioConverterGetProperty");
  if (!pAudioConverterGetProperty)
  {
    v2 = *MEMORY[0x1E69E9848];
    v3 = "Failed to get AudioToolbox symbol (pAudioConverterGetProperty)!\n";
LABEL_13:
    v4 = 64;
    goto LABEL_14;
  }

  pAudioConverterSetProperty = CFBundleGetFunctionPointerForName(gAudioToolboxBundle, @"AudioConverterSetProperty");
  if (!pAudioConverterSetProperty)
  {
    v2 = *MEMORY[0x1E69E9848];
    v3 = "Failed to get AudioToolbox symbol (pAudioConverterSetProperty)!\n";
    goto LABEL_13;
  }

  pAudioFormatGetProperty = CFBundleGetFunctionPointerForName(gAudioToolboxBundle, @"AudioFormatGetProperty");
  if (pAudioFormatGetProperty)
  {
    pAudioFormatGetPropertyInfo = CFBundleGetFunctionPointerForName(gAudioToolboxBundle, @"AudioFormatGetPropertyInfo");
    if (pAudioFormatGetPropertyInfo)
    {
      pAudioConverterDispose = CFBundleGetFunctionPointerForName(gAudioToolboxBundle, @"AudioConverterDispose");
      if (pAudioConverterDispose)
      {
        pAudioFormatIsAmbisonicChannelLayout = CFBundleGetFunctionPointerForName(gAudioToolboxBundle, @"AudioFormat_IsAmbisonicChannelLayout");
        if (pAudioFormatIsAmbisonicChannelLayout)
        {
          result = CFBundleGetFunctionPointerForName(gAudioToolboxBundle, @"AudioConverterNew");
          pAudioConverterNew = result;
          if (result)
          {
            return result;
          }

          v2 = *MEMORY[0x1E69E9848];
          v3 = "Failed to get AudioToolbox symbol (pAudioConverterNew)!\n";
          v4 = 56;
        }

        else
        {
          v2 = *MEMORY[0x1E69E9848];
          v3 = "Failed to get AudioToolbox symbol (pAudioFormatIsAmbisonicChannelLayout)!\n";
          v4 = 74;
        }
      }

      else
      {
        v2 = *MEMORY[0x1E69E9848];
        v3 = "Failed to get AudioToolbox symbol (pAudioConverterDispose)!\n";
        v4 = 60;
      }
    }

    else
    {
      v2 = *MEMORY[0x1E69E9848];
      v3 = "Failed to get AudioToolbox symbol (pAudioFormatGetPropertyInfo)!\n";
      v4 = 65;
    }
  }

  else
  {
    v2 = *MEMORY[0x1E69E9848];
    v3 = "Failed to get AudioToolbox symbol (pAudioFormatGetProperty)!\n";
    v4 = 61;
  }

LABEL_14:
  result = fwrite(v3, v4, 1uLL, v2);
  gAudioToolboxBundleStatus = 1;
  return result;
}

uint64_t AudioToolbox_AudioFormatGetPropertyInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = pAudioFormatGetPropertyInfo;
  if (pAudioFormatGetPropertyInfo || ((FigThreadRunOnce(&loadAudioToolboxPointers_sLoadAudioToolboxPointersOnce, loadAudioToolboxPointersOnce), !gAudioToolboxBundleStatus) ? (result = 0) : (result = 4294965266), (v8 = pAudioFormatGetPropertyInfo) != 0))
  {

    return v8(a1, a2, a3, a4);
  }

  return result;
}

size_t FigAudioFormatDescriptionRegisterOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = 0;
  v13 = figAudioFormatDescriptionFinalize;
  v12 = figAudioFormatDescriptionCopyDebugDesc;
  v10 = 144;
  v11 = figAudioFormatDescriptionEqual;
  return FigDerivedFormatDescriptionRegister(0x736F756Eu, &v9, a3, a4, a5, a6, a7, a8);
}

size_t FigDerivedFormatDescriptionRegister(unsigned int a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a2)
  {
    if (*a2)
    {
      v10 = qword_1EAF1CCA0;
      v11 = v8;
      v12 = 4294954586;
      v13 = 958;
    }

    else if (*(a2 + 12))
    {
      FigThreadRunOnce(&sCreateRegistryGuard, createDescriptionRegistry);
      if (sFigFormatDescriptionRegistry && sRegistryLock)
      {
        v16 = MEMORY[0x19A8D7200](*MEMORY[0x1E695E480], 36, 0x10800401B716183, 0);
        if (v16)
        {
          v17 = v16;
          v18 = *a2;
          v19 = a2[1];
          *(v16 + 32) = *(a2 + 8);
          *v16 = v18;
          *(v16 + 16) = v19;
          FigSimpleMutexLock(sRegistryLock);
          CFDictionaryAddValue(sFigFormatDescriptionRegistry, a1, v17);
          FigSimpleMutexUnlock(sRegistryLock);
          return 0;
        }

        v10 = qword_1EAF1CCA0;
        v11 = v8;
        v12 = 4294954585;
        v13 = 972;
      }

      else
      {
        v10 = qword_1EAF1CCA0;
        v11 = v8;
        v12 = 4294954585;
        v13 = 966;
      }
    }

    else
    {
      v10 = qword_1EAF1CCA0;
      v11 = v8;
      v12 = 4294954586;
      v13 = 961;
    }
  }

  else
  {
    v10 = qword_1EAF1CCA0;
    v11 = v8;
    v12 = 4294954586;
    v13 = 955;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v12, "<<<< FormatDescription >>>>", v13, v11, a7, a8);
}

uint64_t createDescriptionRegistry()
{
  v1 = *byte_1F0B71698;
  sFigFormatDescriptionRegistry = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &v1);
  result = FigSimpleMutexCreate();
  sRegistryLock = result;
  return result;
}

size_t FigDerivedFormatDescriptionCreate(const __CFAllocator *a1, void *key, int a3, const void *a4, uint64_t *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v16 = qword_1EAF1CCA0;
    v17 = v8;
    v18 = 4294954586;
    v19 = 1007;
    goto LABEL_36;
  }

  v9 = key;
  if (!key)
  {
    v16 = qword_1EAF1CCA0;
    v17 = v8;
    v18 = 4294954586;
    v19 = 1010;
    goto LABEL_36;
  }

  if (!sFigFormatDescriptionRegistry)
  {
    v16 = qword_1EAF1CCA0;
    v17 = v8;
    v18 = 4294954586;
    v19 = 1013;
    goto LABEL_36;
  }

  Value = CFDictionaryGetValue(sFigFormatDescriptionRegistry, key);
  if (!Value)
  {
    if (v9 > 1885954931)
    {
      if (v9 > 1952606065)
      {
        if (v9 == 1952606066)
        {
          FigTaggedBufferGroupFormatDescriptionRegister();
          goto LABEL_28;
        }

        if (v9 == 1953325924)
        {
          FigTimeCodeFormatDescriptionRegister();
          goto LABEL_28;
        }

        v15 = 1734700658;
        if (v9 != 1986618469)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }

      if (v9 != 1885954932)
      {
        v15 = 1734700658;
        if (v9 == 1936684398)
        {
          FigAudioFormatDescriptionRegister();
          goto LABEL_28;
        }

LABEL_29:
        Value = CFDictionaryGetValue(sFigFormatDescriptionRegistry, v15);
        if (!Value)
        {
          Value = CFDictionaryGetValue(sFigFormatDescriptionRegistry, 0x67656E72);
          if (!Value)
          {
            v16 = qword_1EAF1CCA0;
            v17 = v8;
            v18 = 4294954586;
            v19 = 1062;
            goto LABEL_36;
          }
        }

        goto LABEL_31;
      }

LABEL_24:
      FigVideoFormatDescriptionRegister();
      goto LABEL_28;
    }

    if (v9 > 1835365472)
    {
      if (v9 == 1835365473)
      {
        FigMetadataFormatDescriptionRegister();
        goto LABEL_28;
      }

      v15 = 1734700658;
      if (v9 != 1836415096)
      {
        goto LABEL_29;
      }

      FigMuxedFormatDescriptionRegister();
    }

    else
    {
      if (v9 == 1635088502)
      {
        goto LABEL_24;
      }

      v15 = 1734700658;
      if (v9 != 1668310898)
      {
        goto LABEL_29;
      }

      FigCaptionGroupFormatDescriptionRegister();
    }

LABEL_28:
    v15 = v9;
    goto LABEL_29;
  }

LABEL_31:
  v20 = Value;
  FigThreadRunOnce(&CMFormatDescriptionGetTypeID_sRegisterFigFormatDescriptionOnce, registerFigFormatDescription);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v22 = Instance;
    bzero((Instance + 32), *(v20 + 4));
    *(v22 + 16) = v9;
    *(v22 + 20) = a3;
    if (a4 && (DeepCopy = CFPropertyListCreateDeepCopy(a1, a4, 0), (*(v22 + 24) = DeepCopy) == 0))
    {
      v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCA0, 0xFFFFCE5AuLL, "<<<< FormatDescription >>>>", 0x43D, v8, v24, v25);
      v34[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CCA0, 0, v34, &type);
      v29 = v34[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v31 = v29;
      }

      else
      {
        v31 = v29 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v34[1] = 136315138;
        v35 = "FigDerivedFormatDescriptionCreate";
        v32 = _os_log_send_and_compose_impl();
        LOBYTE(v29) = v34[0];
      }

      else
      {
        v32 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CCA0, 0, 0, v32, v32 != &v36, v29, 0, v30);
      CFRelease(v22);
    }

    else
    {
      v26 = 0;
      *a5 = v22;
    }

    return v26;
  }

  v16 = qword_1EAF1CCA0;
  v17 = v8;
  v18 = 4294954585;
  v19 = 1073;
LABEL_36:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v18, "<<<< FormatDescription >>>>", v19, v17, a7, a8);
}

uint64_t registerFigFormatDescription()
{
  result = _CFRuntimeRegisterClass();
  sFigFormatDescriptionID = result;
  return result;
}

uint64_t figFormatDescriptionInit(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t FigDerivedFormatDescriptionGetDerivedStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    return a1 + 32;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCA0, 0xFFFFCE5AuLL, "<<<< FormatDescription >>>>", 0x3DC, v8, a7, a8);
  return 0;
}

void FigFormatDescriptionRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigBaseObjectFinalize(uint64_t result)
{
  v1 = result;
  v3 = (result + 24);
  v2 = *(result + 24);
  if (**(v2 + 8) >= 2uLL)
  {
    v4 = *(*(v2 + 8) + 64);
    if (v4)
    {
      if (v4 == FigBaseObjectStandardNotificationBarrier)
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        result = CMNotificationCenterUnregisterForBarrierSupport(DefaultLocalCenter, v1);
        v2 = *(v1 + 24);
      }
    }
  }

  v6 = *(*(v2 + 8) + 32);
  if (v6)
  {
    result = v6(v1);
  }

  *v3 = 0;
  return result;
}

CFTypeRef FigFormatDescriptionRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

uint64_t registerFigBufferQueueType()
{
  result = _CFRuntimeRegisterClass();
  sFigBufferQueueID = result;
  return result;
}

double bufQInit(uint64_t a1)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

CFTypeRef FigBufferQueueRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

size_t bufQInstallTrigger(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  FigReentrantMutexLock(*(a1 + 16));
  if (*(a1 + 168))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v20 = v8;
    v21 = 4294954530;
    v22 = 2977;
    goto LABEL_3;
  }

  if (!*(a1 + 160))
  {
    v35 = *byte_1F0B713D8;
    v25 = CFGetAllocator(a1);
    v26 = CFSetCreateMutable(v25, 0, &v35);
    *(a1 + 160) = v26;
    if (!v26)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v20 = v8;
      v21 = 4294954536;
      v22 = 2986;
LABEL_3:
      v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v21, "<<< CMBufferQueue >>>", v22, v20, v18, v19);
      v24 = 0;
      if (!a8)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v27 = CFGetAllocator(a1);
  v28 = MEMORY[0x19A8D7200](v27, 72, 0x10800405619487FLL, 0);
  v24 = v28;
  if (!v28)
  {
    v32 = fig_log_get_emitter("com.apple.coremedia", "");
    v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 0xFFFFCE28uLL, "<<< CMBufferQueue >>>", 0xBB2, v8, v33, v34);
    if (!a8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *v28 = a2;
  v28[1] = a3;
  v28[2] = _Block_copy(a4);
  *(v24 + 24) = a5;
  v29 = *(a6 + 16);
  *(v24 + 28) = *a6;
  *(v24 + 44) = v29;
  *(v24 + 56) = a7;
  *(v24 + 64) = 0;
  CFSetSetValue(*(a1 + 160), v24);
  v30 = *(a1 + 169);
  *(a1 + 169) = 0;
  CFSetApplyFunction(*(a1 + 160), bufQCheckForDataBecomesReadyTrigger, a1);
  if (!v30 && *(a1 + 169))
  {
    bufQStartListeningForHeadBufferBecomingReady(a1);
  }

  if (a8)
  {
    *a8 = v24;
  }

  evaluateAndMaybeFireTrigger(v24, a1);
  v23 = 0;
  if (a8)
  {
LABEL_14:
    *a8 = v24;
  }

LABEL_15:
  FigReentrantMutexUnlock(*(a1 + 16));
  return v23;
}

uint64_t bufQCheckForDataBecomesReadyTrigger(uint64_t result, uint64_t a2)
{
  if (*(result + 24) == 7)
  {
    *(a2 + 169) = 1;
  }

  return result;
}

uint64_t bufQStartListeningForHeadBufferBecomingReady(uint64_t result)
{
  if (*(result + 169))
  {
    v1 = result;
    if (*(result + 120))
    {
      if (!*(result + 84))
      {
        return result;
      }

      v2 = (result + 100);
    }

    else
    {
      if (!*(result + 80))
      {
        return result;
      }

      v2 = (result + 96);
    }

    v3 = *v2;
    if (*v2)
    {
      FigReentrantMutexLock(*(result + 16));
      v4 = *(v1 + 24);
      if (v4)
      {
        if (CFArrayGetCount(v4) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 24), 0);
          if (ValueAtIndex)
          {
            v6 = ValueAtIndex;
            if (!*(v1 + 120))
            {
              if ((*(*(v1 + 80) + 16))())
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }

            if (!(*(v1 + 84))(ValueAtIndex, *(v1 + 52)))
            {
LABEL_13:
              DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterAddListener(DefaultLocalCenter, v1, bufQDataBecameReady, v3, v6);
              *(v1 + 176) = v6;
            }
          }
        }
      }

LABEL_14:
      v8 = *(v1 + 16);

      return FigReentrantMutexUnlock(v8);
    }
  }

  return result;
}

uint64_t evaluateAndMaybeFireTrigger(uint64_t result, char *queue)
{
  v4 = result;
  v5 = *(result + 64);
  memset(&v20, 0, sizeof(v20));
  memset(&v19, 0, sizeof(v19));
  switch(*(result + 24))
  {
    case 1:
      time1 = *(queue + 124);
      v17 = *(result + 28);
      result = CMTimeCompare(&time1, &v17);
      v6 = result >> 31;
      goto LABEL_39;
    case 2:
      time1 = *(queue + 124);
      v17 = *(result + 28);
      result = CMTimeCompare(&time1, &v17);
      v9 = result < 1;
      goto LABEL_22;
    case 3:
      time1 = *(queue + 124);
      v17 = *(result + 28);
      result = CMTimeCompare(&time1, &v17);
      v7 = result <= 0;
      goto LABEL_11;
    case 4:
      time1 = *(queue + 124);
      v17 = *(result + 28);
      result = CMTimeCompare(&time1, &v17);
      LOBYTE(v6) = result >= 0;
      goto LABEL_39;
    case 5:
      CMBufferQueueGetMinPresentationTimeStamp(&v20, queue);
      time1 = *(v4 + 28);
      v17 = v20;
      result = CMTimeCompare(&time1, &v17);
      *(v4 + 64) = result != 0;
      if (!result)
      {
        return result;
      }

      *(v4 + 28) = *&v20.value;
      epoch = v20.epoch;
      goto LABEL_27;
    case 6:
      CMBufferQueueGetMaxPresentationTimeStamp(&v19, queue);
      time1 = *(v4 + 28);
      v17 = v19;
      result = CMTimeCompare(&time1, &v17);
      *(v4 + 64) = result != 0;
      if (!result)
      {
        return result;
      }

      *(v4 + 28) = *&v19.value;
      epoch = v19.epoch;
LABEL_27:
      *(v4 + 44) = epoch;
      goto LABEL_42;
    case 7:
      *(result + 64) = 0;
      result = *(queue + 3);
      if (!result)
      {
        goto LABEL_40;
      }

      result = CFArrayGetCount(result);
      if (result < 1)
      {
        goto LABEL_40;
      }

      result = CFArrayGetValueAtIndex(*(queue + 3), 0);
      v13 = result;
      if (queue[120])
      {
        v14 = *(queue + 84);
        if (v14)
        {
          result = v14(result, *(queue + 52));
LABEL_37:
          LOBYTE(v6) = result != 0;
          goto LABEL_39;
        }
      }

      else
      {
        result = *(queue + 10);
        if (result)
        {
          result = (*(result + 16))(result, v13);
          goto LABEL_37;
        }
      }

LABEL_38:
      LOBYTE(v6) = 1;
LABEL_39:
      *(v4 + 64) = v6;
LABEL_40:
      if (v5 || !*(v4 + 64))
      {
        return result;
      }

LABEL_42:
      v15 = *v4;
      if (*v4)
      {
        queue[168] = 1;
        v16 = queue + 168;
        result = v15(*(v4 + 8), v4);
      }

      else
      {
        result = *(v4 + 16);
        if (!result)
        {
          return result;
        }

        queue[168] = 1;
        v16 = queue + 168;
        result = (*(result + 16))(result, v4);
      }

      *v16 = 0;
      return result;
    case 8:
      *(result + 64) = 0;
      if (queue[121])
      {
        result = *(queue + 3);
        if (!result)
        {
          goto LABEL_38;
        }

        result = CFArrayGetCount(result);
        if (!result)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_40;
    case 9:
      LOBYTE(v6) = queue[184];
      goto LABEL_39;
    case 0xA:
      result = CMBufferQueueGetBufferCount(queue);
      v9 = result < *(v4 + 56);
LABEL_22:
      LOBYTE(v6) = v9;
      goto LABEL_39;
    case 0xB:
      goto LABEL_6;
    case 0xC:
      time1 = *(queue + 124);
      v17 = *(result + 28);
      result = CMTimeCompare(&time1, &v17);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_15;
      }

LABEL_6:
      result = CMBufferQueueGetBufferCount(queue);
      v7 = result <= *(v4 + 56);
LABEL_11:
      LOBYTE(v6) = !v7;
      goto LABEL_39;
    case 0xD:
      goto LABEL_4;
    case 0xE:
      result = CMBufferQueueGetTotalSize(queue);
      LOBYTE(v6) = result > *(v4 + 56);
      goto LABEL_39;
    case 0xF:
      time1 = *(queue + 124);
      v17 = *(result + 28);
      result = CMTimeCompare(&time1, &v17);
      if (result > 0)
      {
        goto LABEL_15;
      }

LABEL_4:
      result = CMBufferQueueGetTotalSize(queue);
      LOBYTE(v6) = result < *(v4 + 56);
      goto LABEL_39;
    default:
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFFFFFuLL, "<<< CMBufferQueue >>>", 0x559, v2, v11, v12);
LABEL_15:
      LOBYTE(v6) = 0;
      goto LABEL_39;
  }
}

size_t figAudioDeviceClockCreateCommon(uint64_t a1, uint64_t a2, int a3, CFTypeRef *a4)
{
  v62 = 0;
  v63[0] = &v62;
  v63[1] = 0x2000000000;
  v64 = 0;
  cf = 0;
  v8 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFADCTrace[1], @"fadc_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v8, 0, gFADCTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CD48, @"fadc_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CD40);
  if (!a4)
  {
    figAudioDeviceClockCreateCommon_cold_4(v63, &v60, v9, v10, v11, v12, v13, v14);
    goto LABEL_19;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  CMTimeMake(&v60, 1, 2);
  TimeCallback = FigDerivedClockCreateWithGetTimeCallback(a1, gFigAudioDeviceClockCallbacks, HostTimeClock, &v60.value, 1, &cf, v16, v17);
  *(v63[0] + 24) = TimeCallback;
  if (TimeCallback)
  {
LABEL_14:
    value_low = TimeCallback;
    goto LABEL_12;
  }

  DerivedStorage = FigDerivedClockGetDerivedStorage(cf, v19, v20, v21, v22, v23, v24, v25);
  v27 = dispatch_queue_create("com.apple.coremedia.audiodeviceclock", 0);
  *(DerivedStorage + 128) = v27;
  if (!v27)
  {
    figAudioDeviceClockCreateCommon_cold_3(v63, &v60, v28, v29, v30, v31, v32, v33);
    goto LABEL_19;
  }

  v34 = FigReadWriteLockCreate(0);
  *(DerivedStorage + 136) = v34;
  if (!v34)
  {
    figAudioDeviceClockCreateCommon_cold_2(v63, &v60, v35, v36, v37, v38, v39, v40);
    goto LABEL_19;
  }

  *(DerivedStorage + 120) = 0;
  v41 = FigReadWriteLockCreate(0);
  *(DerivedStorage + 64) = v41;
  if (!v41)
  {
    figAudioDeviceClockCreateCommon_cold_1(v63, &v60, v42, v43, v44, v45, v46, v47);
LABEL_19:
    value_low = LODWORD(v60.value);
    if (LODWORD(v60.value))
    {
      goto LABEL_12;
    }

LABEL_20:
    *a4 = cf;
    goto LABEL_21;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __figAudioDeviceClockCreateCommon_block_invoke;
  block[3] = &unk_1E749E900;
  block[4] = &v62;
  if (figAudioDeviceClockCreateCommon_fadcInitWeakReferenceTableOnce != -1)
  {
    dispatch_once(&figAudioDeviceClockCreateCommon_fadcInitWeakReferenceTableOnce, block);
  }

  value_low = *(v63[0] + 24);
  if (value_low)
  {
    goto LABEL_12;
  }

  *(DerivedStorage + 144) = 0;
  TimeCallback = FigCFWeakReferenceTableAddValueAndGetKey(gFigAudioDeviceClockRegistry, cf, (DerivedStorage + 144));
  *(v63[0] + 24) = TimeCallback;
  if (TimeCallback)
  {
    goto LABEL_14;
  }

  FigGetHostTimeToNanosecondsScale((DerivedStorage + 16), (DerivedStorage + 24));
  *(DerivedStorage + 104) = 0;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 0x40000000;
  v57[2] = __figAudioDeviceClockCreateCommon_block_invoke_2;
  v57[3] = &unk_1E749E928;
  v58 = a3;
  v57[4] = &v62;
  v57[5] = cf;
  v57[6] = a2;
  v55 = writeProtectedStorageSync(cf, v57, v49, v50, v51, v52, v53, v54);
  value_low = *(v63[0] + 24);
  if (!value_low)
  {
    *(v63[0] + 24) = v55;
    value_low = v55;
    if (!v55)
    {
      goto LABEL_20;
    }
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
    value_low = *(v63[0] + 24);
  }

LABEL_21:
  _Block_object_dispose(&v62, 8);
  return value_low;
}

uint64_t FigDerivedClockGetDerivedStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    return a1 + 208;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE37uLL, "(Fig)", 0x2C9, v8, a7, a8);
  return 0;
}

uint64_t fadcSetAudioDeviceUID(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = *(DerivedStorage + 80);
  *(DerivedStorage + 80) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (in_audio_mx_server_process())
  {
    if (!a2)
    {
      *(DerivedStorage + 72) = 1;
      outData = 0;
      v40 = 0;
      *&v41.mSelector = *"diudbolg";
      v41.mElement = 0;
      inAddress = @"VirtualAudioDevice_Default";
      *v38 = &inAddress;
      v39 = 0;
      OUTLINED_FUNCTION_1_7();
      LODWORD(v40) = 4;
      LODWORD(inQualifierData) = 32;
      if (OUTLINED_FUNCTION_2_6(v28, &v41, v29, v30, &inQualifierData, v31, v32, v33, v34, inAddress, inAddress_8, inQualifierData, v38[0]) || (v26 = outData) == 0)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, 0xFFFFFF9BuLL, "<<<< FADC >>>>", 0x6C4, v8, v23, v24);
        v26 = outData;
      }

      return switchToNewDeviceID(a1, v26, v25, v20, v21, v22, v23, v24);
    }

    outData = 0;
    v41.mElement = 0;
    v40 = 0;
    *&v41.mSelector = *"diudbolg";
    v39 = 0;
    inQualifierData = a2;
    *v38 = &inQualifierData;
    OUTLINED_FUNCTION_1_7();
    LODWORD(v40) = 4;
    HIDWORD(inAddress_8) = 32;
    PropertyData = OUTLINED_FUNCTION_2_6(v13, &v41, v14, v15, &inAddress_8 + 1, v16, v17, v18, v34, inAddress, inAddress_8, inQualifierData, v38[0]);
    if (!outData)
    {
      inAddress_8 = 0x400000000;
      inAddress = *"cdiubolg";
      PropertyData = AudioObjectGetPropertyData(1u, &inAddress, 8u, &inQualifierData, &inAddress_8 + 1, &outData);
    }

    v25 = PropertyData;
    if (PropertyData)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, PropertyData, "<<<< FADC >>>>", 0x6F3, v8, v23, v24);
    }

    v26 = outData;
    if (outData)
    {
      return switchToNewDeviceID(a1, v26, v25, v20, v21, v22, v23, v24);
    }

    return 4294954550;
  }

  else
  {
    result = 0;
    *(DerivedStorage + 72) = 1;
    *DerivedStorage = 0;
  }

  return result;
}

uint64_t switchToNewDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = a2;
  FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 4294954550;
  }

  FigDerivedClockDiscontinuityOccurred(a1);
  removeAllTracesOfDevice(a1, v10, v11, v12, v13, v14, v15, v16);
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, v17, v18, v19, v20, v21, v22, v23);
  *(DerivedStorage + 88) = v8;
  v31 = addPropertyListener(a1, 1735354734, v25, v26, v27, v28, v29, v30);
  if (v31 || (v31 = addPropertyListener(a1, 1870030194, v33, v34, v35, v36, v37, v38), v31) || (v31 = addPropertyListener(a1, 1853059700, v33, v34, v35, v36, v37, v38), v31))
  {
    v39 = v31;
LABEL_4:
    removeAllTracesOfDevice(a1, v32, v33, v34, v35, v36, v37, v38);
    return v39;
  }

  v44 = 0;
  v43 = *"niog****";
  v39 = propertyListenerDispatch(a1, &v43);
  v41 = 0;
  if (!*(DerivedStorage + 1))
  {
    v42 = FigDerivedClockGetDerivedStorage(a1, v32, v33, v34, v35, v36, v37, v38);
    v41 = FigAudioDeviceSupportsPresentationTime(*(v42 + 88));
  }

  *(DerivedStorage + 112) = v41;
  if (v39)
  {
    goto LABEL_4;
  }

  return v39;
}

void FigDerivedClockDiscontinuityOccurred(uint64_t a1)
{
  if (a1)
  {
    FigAtomicIncrement32((a1 + 200));

    FigMemoryBarrier();
  }
}

size_t removeAllTracesOfDevice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = result;
  if (*(result + 88))
  {
    removePropertyListener(a1, 1735354734, v10, v11, v12, v13, v14, v15);
    removePropertyListener(a1, 1870030194, v17, v18, v19, v20, v21, v22);
    result = removePropertyListener(a1, 1853059700, v23, v24, v25, v26, v27, v28);
  }

  *(v16 + 88) = 0;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 104) = 0;
  return result;
}

size_t addPropertyListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = a2;
  result = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = result;
  if (v9 == 1735354734 || v9 == 1870030194 || v9 == 1853059700)
  {
    LODWORD(result) = *(result + 88);
LABEL_11:
    inAddress.mSelector = v9;
    *&inAddress.mScope = 707406378;
    result = AudioObjectAddPropertyListener(result, &inAddress, coreAudioObjectPropertyListener, *(v13 + 144));
    if (result)
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, result, "<<<< FADC >>>>", 0x585, v8, v16, v17);
    }

    return result;
  }

  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, 0xFFFFCE36uLL, "<<<< FADC >>>>", 0x572, v8, v11, v12);
  if (!result)
  {
    goto LABEL_11;
  }

  return result;
}

size_t propertyListenerDispatch(uint64_t a1, const AudioObjectPropertyAddress *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = DerivedStorage;
  mSelector = a2->mSelector;
  if (a2->mSelector != 1735354734)
  {
    if (mSelector == 1853059700)
    {
      if (*DerivedStorage)
      {
        switchToNewDeviceID(a1, *(DerivedStorage + 88), v12, v13, v14, v15, v16, v17);
      }
    }

    else if (mSelector == 1870030194)
    {
      FigDerivedClockDiscontinuityOccurred(a1);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, 0xFFFFFFFFuLL, "<<<< FADC >>>>", 0x69F, v8, v16, v17);
    }

    return 0;
  }

  v29 = 0;
  outData = 0;
  ioDataSize = 4;
  PropertyData = AudioObjectGetPropertyData(*(DerivedStorage + 88), a2, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, PropertyData, "<<<< FADC >>>>", 0x65F, v8, v21, v22);
  }

  if (!outData)
  {
    if (*v18)
    {
      *v18 = 0;
      FigDerivedClockDiscontinuityOccurred(a1);
      v25 = 0;
      *(v18 + 104) = 0;
      return v25;
    }

    return 0;
  }

  if (*v18)
  {
    return 0;
  }

  v28 = *a2;
  v28.mSelector = 1853059700;
  ioDataSize = 8;
  v25 = AudioObjectGetPropertyData(*(v18 + 88), &v28, 0, 0, &ioDataSize, &v29);
  if (v25)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, v25, "<<<< FADC >>>>", 0x673, v8, v23, v24);
  }

  else
  {
    v27 = v29;
    *(v18 + 8) = v29;
    *(v18 + 32) = vdivq_f64(vdupq_lane_s64(v27, 0), xmmword_197165440);
    *(v18 + 48) = *&v27 * *(v18 + 16) / (1000000000 * *(v18 + 24));
    *v18 = 1;
  }

  return v25;
}

uint64_t FigTimebaseSetAnchorTime(OpaqueCMTimebase *a1, CMTime *a2, CMTime *a3)
{
  timebaseTime = *a2;
  v4 = *a3;
  return CMTimebaseSetAnchorTime(a1, &timebaseTime, &v4);
}

size_t FigClockGetTransformRelativeToHostTimeClock(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  if (a1)
  {
    v11 = a3 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = v8;
    v14 = 4294954551;
    v15 = 623;
LABEL_23:
    TransformRelativeToReferenceClock = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v14, "(Fig)", v15, v13, a7, a8);
    goto LABEL_24;
  }

  FigReentrantMutexLock(*(a1 + 16));
  if (!*(a1 + 41))
  {
    v13 = v8;
    v14 = 4294954550;
    v15 = 631;
    goto LABEL_23;
  }

  v38 = *&kCMTimeZero.value;
  v39 = 0;
  v36 = *&kCMTimeZero.value;
  *&v37 = 0;
  *(&v37 + 1) = 0x3FF0000000000000;
  if (CMClockGetHostTimeClock() == a1 || CMClockGetHostTimeClock() == a1)
  {
LABEL_26:
    v27 = 0;
    v28 = v37;
    *a3 = v36;
    *(a3 + 16) = v28;
    *(a3 + 32) = v38;
    *(a3 + 48) = v39;
    goto LABEL_27;
  }

  v22 = a1;
  while (1)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    TransformRelativeToReferenceClock = FigClockGetTransformRelativeToReferenceClock(v22, a2, v30, v17, v18, v19, v20, v21);
    if (TransformRelativeToReferenceClock)
    {
      break;
    }

    v32 = v36;
    v33 = v37;
    v34 = v38;
    v35 = v39;
    if (a2)
    {
      v24 = v30;
      v25 = &v32;
    }

    else
    {
      v24 = &v32;
      v25 = v30;
    }

    FigSyncCombineTransforms(v24, v25, &v36);
    v27 = v26;
    if (v26)
    {
      goto LABEL_25;
    }

    v22 = v22[4];
    if (!v22)
    {
      v13 = v8;
      v14 = 4294954543;
      v15 = 667;
      goto LABEL_23;
    }

    if (v22 == CMClockGetHostTimeClock())
    {
      goto LABEL_26;
    }
  }

LABEL_24:
  v27 = TransformRelativeToReferenceClock;
LABEL_25:
  if (!v27)
  {
    goto LABEL_26;
  }

LABEL_27:
  if ((v12 & 1) == 0)
  {
    FigReentrantMutexUnlock(*(a1 + 16));
  }

  return v27;
}

size_t FigClockGetTransformRelativeToReferenceClock(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  if (a3)
  {
    FigReentrantMutexLock(*(a1 + 16));
    if (*(a1 + 41))
    {
      if (CMClockGetHostTimeClock() == a1)
      {
        v28 = *&kCMTimeZero.value;
        v29 = 0;
        v26 = *&kCMTimeZero.value;
        *&v27 = 0;
        *(&v27 + 1) = 0x3FF0000000000000;
        goto LABEL_9;
      }

      if (a2)
      {
        v20 = &v28;
        v21 = &v26;
      }

      else
      {
        v20 = &v26;
        v21 = &v28;
      }

      AnchorTime = CMClockGetAnchorTime(a1, v20, v21);
      if (AnchorTime)
      {
        goto LABEL_10;
      }

      v24 = *(*(a1 + 24) + 40);
      if (!v24)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFFFFCuLL, "(Fig)", 0x23F, v8, v22, v23);
        goto LABEL_9;
      }

      v25 = v24(a1);
      *(&v27 + 1) = v25;
      if (a2)
      {
LABEL_9:
        AnchorTime = 0;
        v18 = v27;
        *a3 = v26;
        *(a3 + 16) = v18;
        *(a3 + 32) = v28;
        *(a3 + 48) = v29;
        goto LABEL_10;
      }

      if (v25 != 0.0)
      {
        *(&v27 + 1) = 1.0 / v25;
        goto LABEL_9;
      }

      v15 = v8;
      v16 = 4294954541;
      v17 = 586;
    }

    else
    {
      v15 = v8;
      v16 = 4294954550;
      v17 = 541;
    }

    AnchorTime = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v16, "(Fig)", v17, v15, v12, v13);
    if (AnchorTime)
    {
LABEL_10:
      FigReentrantMutexUnlock(*(a1 + 16));
      return AnchorTime;
    }

    goto LABEL_9;
  }

  AnchorTime = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE37uLL, "(Fig)", 0x215, v8, a7, a8);
  if (!AnchorTime)
  {
    goto LABEL_9;
  }

  return AnchorTime;
}

double fadcGetRate(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0x3FF0000000000000;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __fadcGetRate_block_invoke;
  v18[3] = &unk_1E749EA08;
  v18[5] = DerivedStorage;
  v18[6] = a1;
  v18[4] = &v19;
  readProtectedStorageSync(a1, v18, v10, v11, v12, v13, v14, v15);
  v16 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v16;
}

void rescheduleTimer(__CFRunLoopTimer *a1, __CFRunLoop *a2, CMTime *a3, OpaqueCMTimebase *a4, CMTime *a5, int a6, char a7)
{
  memset(&v29, 0, sizeof(v29));
  memset(&v28, 0, sizeof(v28));
  IsValid = CFRunLoopTimerIsValid(a1);
  if (a2 && IsValid)
  {
    v15 = 8073216000.0;
    if ((a3->flags & 0x1D) != 1)
    {
      goto LABEL_5;
    }

    if (a3->timescale < 1)
    {
      goto LABEL_5;
    }

    EffectiveRate = CMTimebaseGetEffectiveRate(a4);
    if (EffectiveRate == 0.0)
    {
      goto LABEL_5;
    }

    v17 = EffectiveRate;
    timescale = a3->timescale;
    if (timescale <= 1023)
    {
      do
      {
        value = a3->value;
        if ((a3->value + 0x3FFFFFFFFFFFFFFFLL) > 0x7FFFFFFFFFFFFFFDLL)
        {
          break;
        }

        memset(&time, 0, sizeof(time));
        CMTimeMake(&time, 2 * value, 2 * timescale);
        *a3 = time;
        timescale = a3->timescale;
      }

      while (timescale < 1024);
    }

    v23 = 1;
    HostTimeClock = CMClockGetHostTimeClock();
    time = *a3;
    CMSyncConvertTime(&v29, &time, a4, HostTimeClock);
    Current = CFAbsoluteTimeGetCurrent();
    memset(&time, 0, sizeof(time));
    v22 = CMClockGetHostTimeClock();
    CMClockGetTime(&time, v22);
    if (v17 <= 0.0 || (time1 = *a3, v25 = *a5, (CMTimeCompare(&time1, &v25) & 0x80000000) == 0))
    {
      if (v17 >= 0.0 || (time1 = *a3, v25 = *a5, CMTimeCompare(&time1, &v25) < 1))
      {
        v23 = 0;
      }
    }

    time1 = v29;
    v25 = time;
    CMTimeSubtract(&v28, &time1, &v25);
    time1 = v28;
    Seconds = CMTimeGetSeconds(&time1);
    if ((a7 & 1) != 0 || !v23)
    {
      goto LABEL_21;
    }

    if (!a6)
    {
      v15 = 8073216000.0;
      goto LABEL_5;
    }

    if (a6 != 1)
    {
LABEL_21:
      v15 = Current + Seconds;
LABEL_5:
      CFRunLoopTimerSetNextFireDate(a1, v15);
      CFRunLoopWakeUp(a2);
    }
  }
}

size_t sBufCreate(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a5)
  {
    if (a2)
    {
      if (a2 >= 0x38E38E38E38E38FLL)
      {
        v13 = qword_1EAF1CCE0;
        v14 = v8;
        v15 = 2017;
        goto LABEL_29;
      }

      v18 = 72 * a2;
      if (!a3)
      {
LABEL_12:
        v19 = 0;
        if (a4)
        {
LABEL_13:
          if (a4 >> 60)
          {
            v13 = qword_1EAF1CCE0;
            v14 = v8;
            v15 = 2025;
            goto LABEL_29;
          }

          v20 = 16 * a4;
          goto LABEL_18;
        }

LABEL_16:
        v20 = 0;
LABEL_18:
        if (v18 >= 0xFFFFFFFFFFFFFEA0)
        {
          sBufCreate_cold_3(&v30, a2, a3, a4, a5, a6, a7, a8);
          Instance = 0;
          v27 = v30;
          goto LABEL_30;
        }

        v21 = v18 + 359;
        v22 = v21 & 0xFFFFFFFFFFFFFFF8;
        if (__CFADD__(v19, v21 & 0xFFFFFFFFFFFFFFF8))
        {
          sBufCreate_cold_2(&v29, a2, a3, a4, a5, a6, a7, a8);
          Instance = 0;
          v27 = v29;
          goto LABEL_30;
        }

        v23 = (v19 + v21) & 0xFFFFFFFFFFFFFFF8;
        if (__CFADD__(v20, v23))
        {
          sBufCreate_cold_1(&v28, a2, a3, a4, a5, a6, a7, a8);
          Instance = 0;
          v27 = v28;
          goto LABEL_30;
        }

        FigThreadRunOnce(&sRegisterFigSampleBufferTypeOnce, registerFigSampleBufferType);
        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          v25 = Instance + 352;
          if (!a2)
          {
            v25 = 0;
          }

          *(Instance + 96) = a2;
          *(Instance + 104) = v25;
          v26 = Instance + v22;
          if (!a3)
          {
            v26 = 0;
          }

          *(Instance + 112) = a3;
          *(Instance + 120) = v26;
          v27 = 0;
          if (a4)
          {
            *(Instance + 328) = Instance + v23;
            *(Instance + 336) = a4;
            *(Instance + 344) = 0;
          }

          goto LABEL_30;
        }

        v13 = qword_1EAF1CCE0;
        v14 = v8;
        v15 = 2048;
LABEL_29:
        v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", v15, v14, a7, a8);
        Instance = 0;
LABEL_30:
        *a5 = Instance;
        return v27;
      }
    }

    else
    {
      v18 = 0;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    if (a3 >> 61)
    {
      v13 = qword_1EAF1CCE0;
      v14 = v8;
      v15 = 2021;
      goto LABEL_29;
    }

    v19 = 8 * a3;
    if (a4)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v16 = qword_1EAF1CCE0;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x7DA, v8, a7, a8);
}

uint64_t registerFigSampleBufferType()
{
  result = _CFRuntimeRegisterClass();
  sFigSampleBufferID = result;
  return result;
}

double sBufInit(_OWORD *a1)
{
  result = 0.0;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

__n128 sbufUpdateCachedTimestamps(uint64_t a1, __n128 result)
{
  v2 = *(a1 + 96);
  if (v2 >= 1)
  {
    v4 = *(a1 + 104);
    v5 = *(v4 + 64);
    *(a1 + 160) = *(v4 + 48);
    *(a1 + 176) = v5;
    v6 = *(v4 + 40);
    *(a1 + 184) = *(v4 + 24);
    *(a1 + 200) = v6;
    if (v2 == 1)
    {
      v7 = *(a1 + 88);
      result = *v4;
      if (v7)
      {
        time.epoch = *(v4 + 16);
        *&time.value = result;
        CMTimeMultiply(&time1, &time, v7);
        result.n128_u64[0] = time1.value;
        *(a1 + 208) = time1;
      }

      else
      {
        *(a1 + 224) = *(v4 + 16);
        *(a1 + 208) = result;
      }
    }

    else
    {
      v8 = 0;
      v9 = *v4;
      *(a1 + 224) = *(v4 + 16);
      *(a1 + 208) = v9;
      v10 = 1;
      do
      {
        v11 = *(a1 + 104) + v8;
        v12 = *(v11 + 96);
        time1.epoch = *(v11 + 112);
        *&time1.value = v12;
        time = *(a1 + 184);
        v13 = CMTimeCompare(&time1, &time);
        v14 = *(a1 + 104);
        if (v13 < 0)
        {
          v15 = *(v14 + v8 + 96);
          *(a1 + 200) = *(v14 + v8 + 112);
          *(a1 + 184) = v15;
        }

        v16 = v14 + v8;
        v17 = *(v16 + 120);
        time1.epoch = *(v16 + 136);
        *&time1.value = v17;
        time = *(a1 + 160);
        v18 = CMTimeCompare(&time1, &time);
        v19 = *(a1 + 104);
        if (v18 < 0)
        {
          v20 = *(v19 + v8 + 120);
          *(a1 + 176) = *(v19 + v8 + 136);
          *(a1 + 160) = v20;
        }

        v21 = v19 + v8;
        time = *(a1 + 208);
        v22 = *(v21 + 72);
        v23.epoch = *(v21 + 88);
        *&v23.value = v22;
        CMTimeAdd(&time1, &time, &v23);
        result.n128_u64[0] = time1.value;
        *(a1 + 208) = time1;
        ++v10;
        v8 += 72;
      }

      while (v10 < *(a1 + 96));
    }
  }

  return result;
}

size_t figSampleBufferCheckDataSize(size_t result)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(result + 28) == 1)
  {
    v2 = result;
    if (!*(result + 24))
    {
      result = *(result + 16);
      if (result)
      {
        v3 = *(v2 + 112);
        if (v3)
        {
          if (v3 == 1)
          {
            v4 = **(v2 + 120) * *(v2 + 88);
          }

          else
          {
            if (v3 < 1)
            {
              return result;
            }

            v4 = 0;
            v5 = *(v2 + 120);
            do
            {
              v6 = *v5++;
              v4 += v6;
              --v3;
            }

            while (v3);
          }

          if (v4)
          {
            result = CMBlockBufferGetDataLength(result);
            if (v4 != result)
            {
              v16[0] = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CCE0, 0, v16, &type);
              v8 = v16[0];
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v10 = v8;
              }

              else
              {
                v10 = v8 & 0xFFFFFFFE;
              }

              if (v10)
              {
                DataLength = CMBlockBufferGetDataLength(*(v2 + 16));
                v16[1] = 136315906;
                v17 = "figSampleBufferCheckDataSize";
                v18 = 2048;
                v19 = v2;
                v20 = 2048;
                v21 = v4;
                v22 = 2048;
                v23 = DataLength;
                v12 = _os_log_send_and_compose_impl();
                LOBYTE(v8) = v16[0];
              }

              else
              {
                v12 = 0;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CCE0, 0, 0, v12, v12 != &v24, v8, 0, v9);
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x7C1, v1, v13, v14);
            }
          }
        }
      }
    }
  }

  return result;
}

void FigAttachmentsRegisterCVBuffer()
{
  TypeID = CVPixelBufferGetTypeID();

  FigRuntimeRegisterAttachmentBearerWithTypeID(sFigCVBufferAttachmentBearerCallbacks, TypeID);
}

const __CFDictionary *FigRuntimeGetAttachmentBearerCallbacksWithTypeID(const void *a1)
{
  FigThreadRunOnce(&sFigAttachmentsRegisterInternalBearersOnce, figAttachmentsRegisterInternalBearers);
  result = sFigAttachmentBearerCallbacksPerTypeID;
  if (sFigAttachmentBearerCallbacksPerTypeID)
  {

    return CFDictionaryGetValue(result, a1);
  }

  return result;
}

const __CFDictionary *sBufGetAttachment(uint64_t a1, void *key, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (*(a1 + 25))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE38uLL, "<<<< SampleBuffer >>>>", 0x6FE, v8, a7, a8);
    return 0;
  }

  else
  {
    v13 = *(a1 + 312);
    if (v13 && (result = CFDictionaryGetValue(v13, key)) != 0)
    {
      if (a3)
      {
        *a3 = 1;
      }
    }

    else
    {
      result = *(a1 + 320);
      if (result)
      {
        result = CFDictionaryGetValue(result, key);
        if (a3)
        {
          if (result)
          {
            *a3 = 0;
          }
        }
      }
    }
  }

  return result;
}

double sBufSetAttachment(__CFDictionary **cf, void *key, void *value, int a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a4 == 1)
  {
    v9 = 39;
  }

  else
  {
    v9 = 40;
  }

  if (a4 == 1)
  {
    v10 = cf + 39;
  }

  else
  {
    v10 = cf + 40;
  }

  if (a4 == 1)
  {
    v11 = cf + 40;
  }

  else
  {
    v11 = cf + 39;
  }

  if (*(cf + 25))
  {
    v12 = qword_1EAF1CCE0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE38uLL, "<<<< SampleBuffer >>>>", 0x6D9, v8, a7, a8);
  }

  else
  {
    Mutable = *v10;
    if (*v10 || (v18 = CFGetAllocator(cf), Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]), (cf[v9] = Mutable) != 0))
    {
      if (value)
      {
        CFDictionarySetValue(Mutable, key, value);
      }

      else
      {
        CFDictionaryRemoveValue(Mutable, key);
      }
    }

    if (*v11)
    {
      CFDictionaryRemoveValue(*v11, key);
    }

    return checkCacheKeys(cf, key);
  }

  return result;
}

double checkCacheKeys(uint64_t a1, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"TrimDurationAtStart") || CFEqual(cf1, @"TrimDurationAtEnd") || CFEqual(cf1, @"SpeedMultiplier") || CFEqual(cf1, @"Reverse"))
  {
    result = *&kCMTimeInvalid.value;
    *(a1 + 232) = *&kCMTimeInvalid.value;
    *(a1 + 248) = 0;
    *(a1 + 256) = *&kCMTimeInvalid.value;
    *(a1 + 272) = 0;
    *(a1 + 280) = *&kCMTimeInvalid.value;
    *(a1 + 296) = 0;
  }

  return result;
}

uint64_t bufQInsertElementAtIndex(uint64_t a1, CFIndex a2, const void *a3)
{
  FigReentrantMutexLock(*(a1 + 16));
  if (!a2)
  {
    bufQStopListeningForHeadBufferBecomingReady(a1);
  }

  if (*(a1 + 120))
  {
    if (!*(a1 + 68))
    {
LABEL_21:
      (*(a1 + 76))(&v26, a3, *(a1 + 52));
      goto LABEL_23;
    }
  }

  else if (!*(a1 + 64))
  {
    goto LABEL_22;
  }

  Count = CFArrayGetCount(*(a1 + 24));
  memset(&v26, 0, sizeof(v26));
  if (*(a1 + 120))
  {
    (*(a1 + 68))(&v26, a3, *(a1 + 52));
  }

  else
  {
    (*(*(a1 + 64) + 16))(&v26);
  }

  if (Count < 1)
  {
    *(a1 + 240) = *&kCMTimeZero.value;
    *(a1 + 256) = 0;
    *(a1 + 216) = *&kCMTimeInvalid.value;
    *(a1 + 232) = 0;
  }

  else if (v26.flags & 1) != 0 && (*(a1 + 228))
  {
    time1 = v26;
    time2 = *(a1 + 216);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      memset(&time1, 0, sizeof(time1));
      time2 = *(a1 + 216);
      rhs = v26;
      CMTimeSubtract(&time1, &time2, &rhs);
      rhs = *(a1 + 240);
      v22 = time1;
      CMTimeMaximum(&time2, &rhs, &v22);
      *(a1 + 240) = time2;
    }
  }

  if ((*(a1 + 228) & 1) == 0 || (v26.flags & 1) != 0 && (time1 = v26, time2 = *(a1 + 216), CMTimeCompare(&time1, &time2) >= 1))
  {
    *(a1 + 216) = v26;
  }

  if (*(a1 + 120))
  {
    goto LABEL_21;
  }

LABEL_22:
  (*(*(a1 + 72) + 16))(&v26);
LABEL_23:
  *&rhs.value = *&v26.value;
  if (v26.epoch)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFFD66uLL, "<<< CMBufferQueue >>>", 0x62F, v3, v9, v10);
  }

  CFArrayInsertValueAtIndex(*(a1 + 24), a2, a3);
  time1 = *(a1 + 124);
  *&time2.value = *&rhs.value;
  time2.epoch = 0;
  CMTimeAdd(&v26, &time1, &time2);
  *(a1 + 124) = v26;
  if (*(a1 + 120))
  {
    v11 = *(a1 + 108);
    if (!v11)
    {
      goto LABEL_31;
    }

    v12 = v11(a3, *(a1 + 52));
  }

  else
  {
    v18 = *(a1 + 104);
    if (!v18)
    {
      goto LABEL_31;
    }

    v12 = (*(v18 + 16))(v18, a3);
  }

  v19 = v12;
  FigCFDictionarySetInt64(*(a1 + 32), a3, v12, v13, v14, v15, v16, v17);
  *(a1 + 152) += v19;
LABEL_31:
  if ((*(a1 + 136) & 0x1D) != 1)
  {
    CMBufferQueueGetMaxPresentationTimeStamp(&time1, a1);
    CMBufferQueueGetMinPresentationTimeStamp(&time2, a1);
    CMTimeSubtract(&v26, &time1, &time2);
    *(a1 + 124) = v26;
  }

  if (!a2)
  {
    bufQStartListeningForHeadBufferBecomingReady(a1);
  }

  *(a1 + 184) = 0;
  v20 = *(a1 + 160);
  if (v20)
  {
    CFSetApplyFunction(v20, evaluateAndMaybeFireTrigger, a1);
  }

  return FigReentrantMutexUnlock(*(a1 + 16));
}

uint64_t bufQStopListeningForHeadBufferBecomingReady(uint64_t result)
{
  v1 = result;
  if (*(result + 120))
  {
    if (!*(result + 84))
    {
      return result;
    }

    v2 = (result + 100);
  }

  else
  {
    if (!*(result + 80))
    {
      return result;
    }

    v2 = (result + 96);
  }

  v3 = *v2;
  if (*v2)
  {
    FigReentrantMutexLock(*(result + 16));
    if (*(v1 + 176))
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener(DefaultLocalCenter, v1, bufQDataBecameReady, v3, *(v1 + 176));
      *(v1 + 176) = 0;
    }

    v5 = *(v1 + 16);

    return FigReentrantMutexUnlock(v5);
  }

  return result;
}

size_t FigDeferNotificationToRunLoop(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, __CFRunLoop *a7, const __CFAllocator *a8)
{
  memset(&v30, 0, sizeof(v30));
  v17 = MEMORY[0x19A8D7200](a8, 64, 0x10E0040D4533F3FLL, 0);
  if (v17)
  {
    v20 = v17;
    *v17 = a2;
    v17[1] = a1;
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    v17[5] = a6;
    v17[6] = a8;
    v30.info = v17;
    v30.release = figDeferredNotificationRelease;
    if (a2)
    {
      CFRetain(a2);
      a4 = v20[3];
    }

    if (a4)
    {
      CFRetain(a4);
    }

    v21 = v20[5];
    if (v21)
    {
      CFRetain(v21);
    }

    v22 = v20[6];
    if (v22)
    {
      CFRetain(v22);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v24 = CFRunLoopTimerCreate(a8, Current, 0.0, 0, 0, figDeferredNotificationRun, &v30);
    if (v24)
    {
      v27 = v24;
      CFRetain(v24);
      CFRunLoopAddTimer(a7, v27, *MEMORY[0x1E695E8E0]);
      CFRunLoopAddTimer(a7, v27, *MEMORY[0x1E695E8D0]);
      CFRunLoopAddTimer(a7, v27, @"FigDeferredNotificationMode");
      CFRelease(v27);
      CFRunLoopWakeUp(a7);
      return 0;
    }

    else
    {
      v28 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4AuLL, "(Fig)", 0xAE, v8, v25, v26);
      figDeferredNotificationRelease(v20);
    }

    return v28;
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4AuLL, "(Fig)", 0x93, v8, v18, v19);
  }
}

void *findBestTimeStamp(uint64_t a1, uint64_t *a2)
{
  memset(&v11, 0, sizeof(v11));
  result = (a2[1])(&v11, a1, a2[2]);
  if (v11.flags)
  {
    v4 = *a2;
    if ((*(*a2 + 12) & 1) == 0)
    {
      goto LABEL_5;
    }

    if (*(a2 + 24))
    {
      time1 = v11;
      v5 = *v4;
      v9.epoch = *(v4 + 2);
      *&v9.value = v5;
      result = CMTimeCompare(&time1, &v9);
      if (result <= 0)
      {
        return result;
      }

      goto LABEL_5;
    }

    time1 = v11;
    v8 = *v4;
    v9.epoch = *(v4 + 2);
    *&v9.value = v8;
    result = CMTimeCompare(&time1, &v9);
    if ((result & 0x80000000) != 0)
    {
LABEL_5:
      v6 = *a2;
      v7 = *&v11.value;
      *(v6 + 16) = v11.epoch;
      *v6 = v7;
    }
  }

  return result;
}

CMTime *bufQGetEndPTS@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  (*(a2 + 20))(&lhs, a1, *(a2 + 4));
  (*(a2 + 28))(&v7, a1, *(a2 + 4));
  return CMTimeAdd(a3, &lhs, &v7);
}

size_t FigTimebaseGetTransformRelativeToMasterAtHeight(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = 4294954548;
  if (a1)
  {
    v5 = a2 - 1;
    if (a2 >= 1)
    {
      if (a4)
      {
        v28 = *&kCMTimeZero.value;
        v29 = 0;
        v26 = *&kCMTimeZero.value;
        *&v27 = 0;
        *(&v27 + 1) = 0x3FF0000000000000;
        v8 = FigTimebaseCopyTargetTimebase(a1);
        if (!v8)
        {
          goto LABEL_23;
        }

        v9 = v8;
        while (1)
        {
          OUTLINED_FUNCTION_15();
          TransformRelativeToMaster = FigTimebaseGetTransformRelativeToMaster(v9, a3, v10);
          if (TransformRelativeToMaster)
          {
            v4 = TransformRelativeToMaster;
            goto LABEL_19;
          }

          v24[0] = v26;
          v24[1] = v27;
          v24[2] = v28;
          v25 = v29;
          if (a3)
          {
            v12 = v23;
            v13 = v24;
          }

          else
          {
            v12 = v24;
            v13 = v23;
          }

          FigSyncCombineTransforms(v12, v13, &v26);
          v4 = v14;
          if (v14)
          {
            goto LABEL_19;
          }

          v15 = CMTimebaseCopySourceTimebase(v9);
          CFRelease(v9);
          if (v5)
          {
            if (!v15)
            {
              break;
            }
          }

          v4 = 0;
          if (v5-- != 0)
          {
            v9 = v15;
            if (v15)
            {
              continue;
            }
          }

          goto LABEL_20;
        }

        OUTLINED_FUNCTION_0_11();
        v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFCE33uLL, "<<< timebase >>>", 0xBD7, v18, v19, v20);
        v9 = 0;
LABEL_19:
        v15 = v9;
LABEL_20:
        if (v15)
        {
          CFRelease(v15);
        }

        if (!v4)
        {
LABEL_23:
          v4 = 0;
          v21 = v27;
          *a4 = v26;
          *(a4 + 16) = v21;
          *(a4 + 32) = v28;
          *(a4 + 48) = v29;
        }
      }
    }
  }

  return v4;
}

uint64_t FigFileByteStreamGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a3)
  {
    v11 = *(DerivedStorage + 8);

    return FigFileForkGetLengthAtOffset(v11, a2, a3, v6, v7, v8, v9, v10);
  }

  else
  {
    FigFileByteStreamGetAvailableLengthAtOffset_cold_1(&v13);
    return v13;
  }
}

uint64_t figDeferredNotificationRun(__CFRunLoopTimer *a1, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    v3(*a2, a2[2], a2[3], a2[4], a2[5]);
    a2[1] = 0;
    CFRunLoopTimerInvalidate(a1);
    CFRelease(a1);
    v2 = vars8;
  }

  return FigAtomicIncrement32(&sFigDeferredNotificationRunSeed);
}

uint64_t bufQRemoveElementAtIndex(uint64_t a1, CFIndex a2)
{
  v16 = *&kCMTimeInvalid.value;
  memset(&v21, 0, sizeof(v21));
  FigReentrantMutexLock(*(a1 + 16));
  if (!a2)
  {
    bufQStopListeningForHeadBufferBecomingReady(a1);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), a2);
  v5 = CFRetain(ValueAtIndex);
  CFArrayRemoveValueAtIndex(*(a1 + 24), a2);
  if (*(a1 + 120))
  {
    (*(a1 + 76))(&v21, v5, *(a1 + 52));
  }

  else
  {
    (*(*(a1 + 72) + 16))(&v21);
  }

  lhs = *(a1 + 124);
  rhs = v21;
  CMTimeSubtract(&time1, &lhs, &rhs);
  *(a1 + 124) = time1;
  if (*(a1 + 120))
  {
    if (!*(a1 + 108))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(a1 + 104))
  {
LABEL_8:
    time1.value = 0;
    FigCFDictionaryGetInt64IfPresent(*(a1 + 32), v5, &time1, v6, v7, v8, v9, v10, v14, v15, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, rhs.value, *&rhs.timescale, rhs.epoch, v18, lhs.value, *&lhs.timescale);
    *(a1 + 152) -= time1.value;
    CFDictionaryRemoveValue(*(a1 + 32), v5);
  }

LABEL_9:
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count)
  {
    time1 = *(a1 + 124);
    *&lhs.value = *&kCMTimeZero.value;
    lhs.epoch = 0;
    if (!CMTimeCompare(&time1, &lhs))
    {
      *(a1 + 124) = *&kCMTimeZero.value;
      *(a1 + 140) = 0;
    }
  }

  else
  {
    *(a1 + 124) = *&kCMTimeZero.value;
    *(a1 + 140) = 0;
    *(a1 + 152) = 0;
  }

  if ((*(a1 + 136) & 0x1D) != 1)
  {
    CMBufferQueueGetMaxPresentationTimeStamp(&lhs, a1);
    CMBufferQueueGetMinPresentationTimeStamp(&rhs, a1);
    CMTimeSubtract(&time1, &lhs, &rhs);
    *(a1 + 124) = time1;
  }

  if (!a2)
  {
    bufQStartListeningForHeadBufferBecomingReady(a1);
  }

  if (Count <= 1)
  {
    *(a1 + 240) = *&kCMTimeZero.value;
    *(a1 + 256) = 0;
    if (!Count)
    {
      *(a1 + 216) = v16;
      *(a1 + 232) = 0;
    }
  }

  v12 = *(a1 + 160);
  if (v12)
  {
    CFSetApplyFunction(v12, evaluateAndMaybeFireTrigger, a1);
  }

  CFRelease(v5);
  return FigReentrantMutexUnlock(*(a1 + 16));
}

uint64_t coreAudioObjectPropertyListener(uint64_t a1, unsigned int a2, int *a3, void *a4)
{
  v7 = FigCFWeakReferenceTableCopyValue(gFigAudioDeviceClockRegistry, a4);
  if (v7)
  {
    v15 = v7;
    DerivedStorage = FigDerivedClockGetDerivedStorage(v7, v8, v9, v10, v11, v12, v13, v14);
    FigReadWriteLockLockForRead(*(DerivedStorage + 64));
    if (a2)
    {
      v19 = 0;
      v20 = a2;
      do
      {
        v22 = *a3;
        a3 += 3;
        v21 = v22;
        if (v22 == 1735354734)
        {
          v19 |= 4u;
        }

        else if (v21 == 1853059700)
        {
          v19 |= 8u;
        }

        else if (v21 == 1870030194)
        {
          v19 |= 2u;
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, 0xFFFFFFFFuLL, "<<<< FADC >>>>", 0x608, v4, v17, v18);
        }

        --v20;
      }

      while (v20);
      if ((v19 & 0xF) != 0)
      {
        FigAtomicBitOr32(v19, (DerivedStorage + 56));
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 0x40000000;
        v33[2] = __coreAudioObjectPropertyListener_block_invoke;
        v33[3] = &__block_descriptor_tmp_79;
        v33[4] = v15;
        CFRetain(v15);
        v30 = FigDerivedClockGetDerivedStorage(v15, v23, v24, v25, v26, v27, v28, v29);
        FigAtomicIncrement32((v30 + 120));
        v31 = *(v30 + 128);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __writeProtectedStorageAsync_block_invoke;
        block[3] = &unk_1E749E990;
        block[4] = v33;
        block[5] = v30;
        block[6] = v15;
        dispatch_async(v31, block);
      }
    }

    FigReadWriteLockUnlockForRead(*(DerivedStorage + 64));
    CFRelease(v15);
  }

  return 0;
}

void rescheduleValidAndRemoveInvalidTimers(CFDictionaryRef *a1, CMTime *a2, int a3)
{
  Count = CFDictionaryGetCount(a1[35]);
  if (Count)
  {
    v7 = Count;
    if (Count == CFDictionaryGetCount(a1[37]))
    {
      v8 = CFGetAllocator(a1);
      v9 = MEMORY[0x19A8D7200](v8, 8 * v7, 0x2004093837F09, 0);
      if (v9)
      {
        v10 = v9;
        v11 = CFGetAllocator(a1);
        v12 = MEMORY[0x19A8D7200](v11, 8 * v7, 0x6004044C4A2DFLL, 0);
        if (v12)
        {
          v13 = v12;
          CFDictionaryGetKeysAndValues(a1[35], v10, v12);
          if (v7 >= 1)
          {
            v14 = *MEMORY[0x1E695E4C0];
            v15 = v10;
            v16 = v13;
            do
            {
              if (CFRunLoopTimerIsValid(*v15))
              {
                if (v14 != *v16)
                {
                  v23 = *CFDataGetBytePtr(*v16);
                  Value = CFDictionaryGetValue(a1[37], *v15);
                  v18 = CFDictionaryGetValue(a1[36], *v15);
                  v19 = *v15;
                  v22 = *a2;
                  rescheduleTimer(v19, Value, &v23, a1, &v22, a3, v18);
                }
              }

              else
              {
                CFDictionaryRemoveValue(a1[35], *v15);
                CFDictionaryRemoveValue(a1[36], *v15);
                CFDictionaryRemoveValue(a1[37], *v15);
              }

              ++v16;
              ++v15;
              --v7;
            }

            while (v7);
          }

          v20 = CFGetAllocator(a1);
          CFAllocatorDeallocate(v20, v10);
        }

        else
        {
          v13 = v10;
        }

        v21 = CFGetAllocator(a1);

        CFAllocatorDeallocate(v21, v13);
      }
    }
  }
}

void figDeferredNotificationRelease(const void **ptr)
{
  v2 = *ptr;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = ptr[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = ptr[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[6];
  CFAllocatorDeallocate(v5, ptr);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t FigBaseObjectEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  if (v4 != *(a2 + 24))
  {
    return 0;
  }

  v6 = *(*(v3 + 8) + 16);
  if (!v6)
  {
    return 0;
  }

  return v6();
}

double sBufFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 < 4)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  sBufReleaseMakeDataReady(a1);
  FigSimpleMutexDestroy(*(a1 + 64));
  *(a1 + 64) = 0;
  _Block_release(*(a1 + 72));
  v4 = *(a1 + 152);
  if (v4)
  {
    CFRelease(v4);
  }

  FigFormatDescriptionRelease(*(a1 + 80));
  v5 = *(a1 + 304);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 312);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 320);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 26);
  if (v8)
  {
    v9 = *(a1 + 120);
    if (v9)
    {
      *(a1 + 120) = 0;
      free(v9);
      v8 = *(a1 + 26);
    }
  }

  if ((v8 & 2) != 0)
  {
    v10 = *(a1 + 104);
    if (v10)
    {
      *(a1 + 104) = 0;
      free(v10);
    }
  }

  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void FigSampleBufferRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void ftbFinalize(uint64_t a1)
{
  v2 = (a1 + 136);
  figTimebaseSwitchListenersToNewMaster(a1, *(a1 + 136), 0);
  v3 = *(a1 + 24);
  if (!v3)
  {
    v4 = *v2;
    if (!*v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  figTimebaseUninstallReadOnlyTimebaseNotifications(a1, v3);
  v4 = *(a1 + 24);
  if (v4)
  {
    v2 = (a1 + 24);
LABEL_3:
    CFRelease(v4);
    *v2 = 0;
  }

LABEL_4:
  v5 = *(a1 + 128);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 128) = 0;
  v6 = *(a1 + 144);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 144) = 0;
  v7 = *(a1 + 280);
  if (v7)
  {
    CFDictionaryRemoveAllValues(v7);
    CFRelease(*(a1 + 280));
    *(a1 + 280) = 0;
  }

  v8 = *(a1 + 288);
  if (v8)
  {
    CFDictionaryRemoveAllValues(v8);
    CFRelease(*(a1 + 288));
    *(a1 + 288) = 0;
  }

  v9 = *(a1 + 296);
  if (v9)
  {
    CFDictionaryRemoveAllValues(v9);
    CFRelease(*(a1 + 296));
    *(a1 + 296) = 0;
  }

  v10 = *(a1 + 304);
  if (v10)
  {
    CFDictionaryRemoveAllValues(v10);
    CFRelease(*(a1 + 304));
    *(a1 + 304) = 0;
  }

  v11 = *(a1 + 312);
  if (v11)
  {
    CFDictionaryRemoveAllValues(v11);
    CFRelease(*(a1 + 312));
    *(a1 + 312) = 0;
  }

  if (*(a1 + 112))
  {
    FigReentrantMutexDestroy();
    *(a1 + 112) = 0;
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterUnregisterForBarrierSupport(DefaultLocalCenter, a1);
  v13 = *(a1 + 120);
  if (v13)
  {
    dispatch_release(v13);
    *(a1 + 120) = 0;
  }

  if (*(a1 + 16) == 1)
  {
    v14 = *(a1 + 104);
    if (v14)
    {
      dispatch_source_cancel(v14);
      dispatch_release(*(a1 + 104));
    }

    v15 = *(a1 + 96);
    if (v15)
    {

      dispatch_release(v15);
    }
  }
}

uint64_t FigThreadAbort(uint64_t a1)
{
  OUTLINED_FUNCTION_0_36(&gAbortActionInitOnce);
  result = FigReentrantMutexLock(qword_1ED4CC6D8);
  if (!result)
  {
    if ((_MergedGlobals_25 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_7(&_MergedGlobals_25);
      v4 = *(v3 + 16);
      if (v4)
      {
        do
        {
          if (*v4 == a1)
          {
            v5 = v4[2];
            if (v5)
            {
              v5(v4[3]);
            }
          }

          v4 = v4[4];
        }

        while (v4);
        v6 = qword_1ED4CC6E0;
        if (qword_1ED4CC6E0)
        {
          while (1)
          {
            v7 = v6[4];
            if (!v6[2])
            {
              break;
            }

LABEL_19:
            v6 = v7;
            if (!v7)
            {
              goto LABEL_20;
            }
          }

          if (qword_1ED4CC6E0 == v6)
          {
            qword_1ED4CC6E0 = *(qword_1ED4CC6E0 + 32);
            if (qword_1ED4CC6E0)
            {
LABEL_18:
              free(v6);
              goto LABEL_19;
            }

            v10 = &qword_1ED4CC6E0;
          }

          else
          {
            do
            {
              OUTLINED_FUNCTION_5_9();
            }

            while (!v9);
            OUTLINED_FUNCTION_7_8(v8);
            if (v11)
            {
              goto LABEL_18;
            }
          }

          qword_1ED4CC6E8 = v10;
          goto LABEL_18;
        }
      }

LABEL_20:
      _MergedGlobals_25 = 0;
    }

    v12 = qword_1ED4CC6D8;

    return FigReentrantMutexUnlock(v12);
  }

  return result;
}

uint64_t abortActionInitOnce()
{
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  result = FigReentrantMutexCreateWithFlags(AllocatorForPermanentAllocations, 0);
  qword_1ED4CC6D8 = result;
  qword_1ED4CC6E0 = 0;
  qword_1ED4CC6E8 = &qword_1ED4CC6E0;
  return result;
}

size_t FigThreadJoin(pthread_t a1, void **a2)
{
  if (gAnyFigThreadIsPidBound == 1)
  {
    figThreadBindToPID(a1);
  }

  result = pthread_join(a1, a2);
  switch(result)
  {
    case 3:
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v9 = v2;
      v10 = 4294954502;
      v11 = 1119;
      break;
    case 0xB:
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v9 = v2;
      v10 = 4294954500;
      v11 = 1121;
      break;
    case 0x16:
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v9 = v2;
      v10 = 4294954500;
      v11 = 1117;
      break;
    default:
      return result;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "<<<< FIGDARWINTHREAD >>>>", v11, v9, v7, v8);
}

void triggerRelease(const __CFAllocator *a1, const void **a2)
{
  _Block_release(a2[2]);

  CFAllocatorDeallocate(a1, a2);
}

void FigBufferQueueRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

double bufQFinalize(uint64_t a1)
{
  bufQStopListeningForHeadBufferBecomingReady(a1);
  if (*(a1 + 120))
  {
    v2 = *(a1 + 100);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      CFRelease(v3);
    }

    _Block_release(*(a1 + 56));
    _Block_release(*(a1 + 64));
    _Block_release(*(a1 + 72));
    _Block_release(*(a1 + 80));
    _Block_release(*(a1 + 88));
    if (*(a1 + 48))
    {
      _Block_release(*(a1 + 104));
    }
  }

  if (*(a1 + 16))
  {
    FigReentrantMutexDestroy();
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    CFRelease(v6);
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterUnregisterForBarrierSupport(DefaultLocalCenter, a1);
  _Block_release(*(a1 + 192));
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t FigRunDeferredNotificationsOnCurrentRunLoop()
{
  v0 = sFigDeferredNotificationRunSeed;
  do
  {
    CFRunLoopRunInMode(@"FigDeferredNotificationMode", 0.0, 1u);
    v1 = v0 == sFigDeferredNotificationRunSeed;
    v0 = sFigDeferredNotificationRunSeed;
  }

  while (!v1);
  return 0;
}

uint64_t fcFinalize(OpaqueCMClock *a1)
{
  CMClockInvalidate(a1);
  result = *(a1 + 2);
  if (result)
  {
    result = FigReentrantMutexDestroy();
    *(a1 + 2) = 0;
  }

  return result;
}

const __CFAllocator *fadcFinalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  FigCFWeakReferenceTableRemoveValue(gFigAudioDeviceClockRegistry, *(DerivedStorage + 144));
  v9 = *(DerivedStorage + 88);
  v10 = *(DerivedStorage + 144);
  if (qword_1ED4CC4E0 != -1)
  {
    fadcFinalize_cold_1();
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __fadcDeferRemovePropertyListeners_block_invoke;
  v13[3] = &__block_descriptor_tmp_77;
  v14 = v9;
  v13[4] = v10;
  v15 = 0;
  dispatch_async(_MergedGlobals_12, v13);
  FigReadWriteLockLockForWrite(*(DerivedStorage + 64));
  FigReadWriteLockUnlockForWrite(*(DerivedStorage + 64));
  v11 = *(DerivedStorage + 80);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 80) = 0;
  }

  dispatch_release(*(DerivedStorage + 128));
  FigReadWriteLockDestroy(*(DerivedStorage + 136));
  result = FigReadWriteLockDestroy(*(DerivedStorage + 64));
  *(DerivedStorage + 64) = 0;
  return result;
}

size_t removePropertyListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = a2;
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9 == 1735354734 || v9 == 1870030194 || v9 == 1853059700)
  {
    v13 = *(DerivedStorage + 88);
    inAddress.mSelector = v9;
    *&inAddress.mScope = 707406378;
    return AudioObjectRemovePropertyListener(v13, &inAddress, coreAudioObjectPropertyListener, *(DerivedStorage + 144));
  }

  else
  {
    v15 = qword_1EAF1CD40;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE36uLL, "<<<< FADC >>>>", 0x59D, v8, v11, v12);
  }
}

void figFormatDescriptionFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && (Value = CFDictionaryGetValue(sFigFormatDescriptionRegistry, v2)) != 0 || (Value = CFDictionaryGetValue(sFigFormatDescriptionRegistry, 0x67656E72)) != 0)
  {
    v4 = *(Value + 28);
    if (v4)
    {
      v4(a1);
    }
  }

  v5 = *(a1 + 24);
  if (v5)
  {

    CFRelease(v5);
  }
}

void figAudioFormatDescriptionFinalize(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (*(DerivedStorage + 48))
  {
    v10 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v10, *(DerivedStorage + 48));
  }

  if (*(DerivedStorage + 64))
  {
    v11 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v11, *(DerivedStorage + 64));
  }

  if (*(DerivedStorage + 88))
  {
    v12 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v12, *(DerivedStorage + 88));
  }

  if (*(DerivedStorage + 104))
  {
    v13 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v13, *(DerivedStorage + 104));
  }

  if (*(DerivedStorage + 120))
  {
    v14 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v14, *(DerivedStorage + 120));
  }

  if (*(DerivedStorage + 136))
  {
    v15 = *(DerivedStorage + 128);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 8;
      do
      {
        if (*(*(DerivedStorage + 136) + v17))
        {
          v18 = CFGetAllocator(a1);
          CFAllocatorDeallocate(v18, *(*(DerivedStorage + 136) + v17));
          v15 = *(DerivedStorage + 128);
        }

        ++v16;
        v17 += 16;
      }

      while (v16 < v15);
    }

    v19 = CFGetAllocator(a1);
    v20 = *(DerivedStorage + 136);

    CFAllocatorDeallocate(v19, v20);
  }
}

double FigFileByteStreamFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = *(DerivedStorage + 4136);
  if (v2)
  {
    FigSimpleMutexDestroy(v2);
    *(DerivedStorage + 4136) = 0;
    *(DerivedStorage + 4144) = 0;
  }

  if (*(DerivedStorage + 4220) == 1)
  {
    FigFileForkClose(*(DerivedStorage + 8));
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  return FigByteStreamStatsTeardownWorker(DerivedStorage + 4152);
}

uint64_t FigFilePathCreateFromParent(int a1, uint64_t a2, const char *a3, uint64_t *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = (a2 + 16);
  v8 = strlen((a2 + 16));
  if (v8 + strlen(a3) - 1022 <= 0xFFFFFFFFFFFFFBFFLL)
  {
    FigFilePathCreateFromParent_cold_1(__str, v9, v10, v11, v12, v13, v14, v15);
    return *__str;
  }

  else
  {
    v16 = "/";
    if (v8)
    {
      if (v7[v8 - 1] == 47)
      {
        v16 = "";
      }
    }

    snprintf(__str, 0x400uLL, "%s%s%s", v7, v16, a3);
    return FigFilePathCreateFromDarwinPath(a1, __str, a4, v17, v18, v19, v20, v21);
  }
}

void FigThreadRegisterAbortAction(uint64_t (*a1)(), _opaque_pthread_t *a2, void *a3)
{
  Current = FigThreadGetCurrent();
  specific = dispatch_get_specific(&kFigThreadDispatchQueueAbortabilityKey);
  if (a3)
  {
    v8 = specific;
    OUTLINED_FUNCTION_0_36(&gAbortActionInitOnce);
    if (FigReentrantMutexLock(qword_1ED4CC6D8))
    {
LABEL_24:
      OUTLINED_FUNCTION_9_7();
      return;
    }

    if (_MergedGlobals_25)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v13 = 4294954498;
      v14 = 522;
    }

    else
    {
      v16 = qword_1ED4CC6E0;
      if (qword_1ED4CC6E0)
      {
        do
        {
          v17 = v16[2];
          if (v17 == a1 && v16[3] == a2)
          {
            if (*v16 == Current || v8 && v16[1] == v8)
            {
              v15 = 0;
              goto LABEL_21;
            }
          }

          else if (v17 == kSpecialAction_ThreadWasAbortedForTeardown && !v16[3] && (*v16 == Current || v8 && v16[1] == v8))
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_27_2();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFBB67uLL, "<< FigCommonThread >>", 0x1EB, v20, v21, v22);
            v15 = 1;
            goto LABEL_21;
          }

          v16 = v16[4];
        }

        while (v16);
      }

      v18 = OUTLINED_FUNCTION_3_11();
      if (v18)
      {
        v15 = 0;
        *v18 = Current;
        v18[1] = v8;
        v18[4] = 0;
        v18[2] = a1;
        v18[3] = a2;
        *qword_1ED4CC6E8 = v18;
        qword_1ED4CC6E8 = (v18 + 4);
        *a3 = v18;
LABEL_21:
        FigReentrantMutexUnlock(qword_1ED4CC6D8);
        if (a1)
        {
          if (v15)
          {
            (a1)(a2);
          }
        }

        goto LABEL_24;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v13 = 4294954497;
      v14 = 499;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v13, "<< FigCommonThread >>", v14, v10, v11, v12);
    v15 = 0;
    goto LABEL_21;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_9_7();

  FigSignalErrorAtGM(v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t FigThreadGlobalNetworkBufferingRunloop(os_unfair_lock_s **a1)
{
  FigThreadGlobalNetworkBufferingCommonSetupRunloop(a1, &sNetworkRunLoop, &sNetworkRunLoopTimer);
  CFRunLoopRunInMode(*MEMORY[0x1E695E8E0], 1.79769313e308, 0);
  if (sNetworkRunLoopTimer)
  {
    CFRelease(sNetworkRunLoopTimer);
    sNetworkRunLoopTimer = 0;
  }

  return 0;
}

uint64_t FigThreadUnregisterAbortAction(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  OUTLINED_FUNCTION_0_36(&gAbortActionInitOnce);
  result = FigReentrantMutexLock(qword_1ED4CC6D8);
  if (result)
  {
    return result;
  }

  v2 = &qword_1ED4CC6E0;
  v3 = &qword_1ED4CC6E0;
  do
  {
    v4 = *v3;
    v3 = (*v3 + 32);
    if (v4)
    {
      v5 = v4 == v1;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  if (v4)
  {
    if (_MergedGlobals_25)
    {
      v4[2] = 0;
      v4[3] = 0;
      goto LABEL_18;
    }

    if (qword_1ED4CC6E0 == v4)
    {
      qword_1ED4CC6E0 = *(qword_1ED4CC6E0 + 32);
      if (qword_1ED4CC6E0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      do
      {
        OUTLINED_FUNCTION_5_9();
      }

      while (!v5);
      OUTLINED_FUNCTION_7_8(v6);
      if (v7)
      {
        goto LABEL_17;
      }
    }

    qword_1ED4CC6E8 = v2;
LABEL_17:
    free(v4);
  }

LABEL_18:
  v8 = qword_1ED4CC6D8;

  return FigReentrantMutexUnlock(v8);
}

uint64_t FigDebugSettingGetKeyAsInteger(const __CFString *a1, CFIndex *a2)
{
  keyExistsAndHasValidFormat = 0;
  *a2 = CFPreferencesGetAppIntegerValue(a1, @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat;
}

uint64_t FigFileByteStreamWrite(uint64_t a1, size_t a2, off_t a3, void *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v17 = 0;
  v11 = FigFileForkWriteWithIOPolicy(*(DerivedStorage + 8), *(DerivedStorage + 4216), a4, a2, a3, &v17);
  if (v11)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v11, "<<< FigByteStream_File >>>", 0x208, v5, v13, v14);
  }

  v15 = v17;
  if (a5)
  {
    *a5 = v17;
  }

  if (v15 == a2)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t FigFilePathCreateFromChild(int a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = 0;
  v9 = 0;
  v16 = *MEMORY[0x1E69E9840];
  v10 = v15;
  for (i = (a2 + 16); ; ++i)
  {
    v12 = *i;
    if (v12 != 47)
    {
      break;
    }

    v9 = v8;
    v8 = i;
LABEL_6:
    *v10++ = v12;
  }

  if (*i)
  {
    goto LABEL_6;
  }

  if (i - 1 == v8)
  {
    v8 = v9;
  }

  if (v8)
  {
    v8[v15 - 16 - a2 + 1] = 0;
    if (v15[0])
    {
      return FigFilePathCreateFromDarwinPath(a1, v15, a3, a4, a5, a6, a7, a8);
    }

    FigFilePathCreateFromChild_cold_1(&v14, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    FigFilePathCreateFromChild_cold_2(&v14, a2, a3, a4, a5, a6, a7, a8);
  }

  return v14;
}

size_t figBridge_WalkAndConvertImageDescriptionExtensions(const __CFAllocator *a1, uint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5, const void **a6, size_t *a7, size_t a8, const void *a9, char a10, const void *a11)
{
  v276 = *MEMORY[0x1E69E9840];
  v263 = 0;
  v21 = _os_feature_enabled_impl();
  if (a8)
  {
    v262 = malloc_type_calloc(a8, 0x18uLL, 0x1060040D0FAAE32uLL);
    if (!v262)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x95F, v256, v23, v24);
    }
  }

  else
  {
    v262 = 0;
  }

  v251 = a4;
  v252 = a8;
  v26 = (a10 & v21);
  if (a3 < 8)
  {
    v27 = 0;
    v28 = 0;
    v29 = a6;
    v30 = a11;
    if (a11)
    {
      goto LABEL_294;
    }

LABEL_299:
    if (v28)
    {
      v175 = v26;
    }

    else
    {
      v175 = 0;
    }

    if (v175 == 1)
    {
      if (a5)
      {
        v176 = CFRetain(@"ConvertedFromExternalSphericalTags");
        *(a5 + 8 * v263) = v176;
      }

      if (v29)
      {
        v177 = CFRetain(*MEMORY[0x1E695E4D0]);
        v178 = v263;
        v29[v263] = v177;
      }

      else
      {
        v178 = v263;
      }

      v263 = v178 + 1;
    }

    goto LABEL_309;
  }

  v257 = a5;
  v31 = 0;
  v27 = 0;
  v249 = 0;
  v248 = 0;
  v245 = *MEMORY[0x1E695E4D0];
  allocator = *MEMORY[0x1E695E480];
  v254 = *MEMORY[0x1E6965D00];
  v253 = *MEMORY[0x1E6965CF0];
  v244 = *MEMORY[0x1E6965E80];
  v242 = *MEMORY[0x1E6965D88];
  v246 = *MEMORY[0x1E6965F30];
  v241 = *MEMORY[0x1E6965F98];
  v239 = *MEMORY[0x1E6965D70];
  v240 = *MEMORY[0x1E695E4C0];
  v237 = *MEMORY[0x1E6965D60];
  v238 = *MEMORY[0x1E6965D80];
  v235 = *MEMORY[0x1E6965D78];
  v236 = *MEMORY[0x1E6965D68];
  v233 = *MEMORY[0x1E6965EF0];
  v234 = *MEMORY[0x1E6965EF8];
  v243 = *MEMORY[0x1E6965E50];
  v232 = *MEMORY[0x1E6965E58];
  v29 = a6;
  do
  {
    v32 = a2 + v31;
    v33 = bswap32(*(a2 + v31));
    v34 = (v33 - 8);
    if (v33 < 8)
    {
      break;
    }

    v31 += v33;
    if (v31 > a3)
    {
      figBridge_WalkAndConvertImageDescriptionExtensions_cold_3(a9);
      v56 = 4294954582;
      goto LABEL_359;
    }

    v35 = bswap32(*(v32 + 4));
    v36 = (v32 + 8);
    if (v35 <= 1734438240)
    {
      if (v35 > 1668047215)
      {
        if (v35 <= 1668246641)
        {
          if (v35 == 1668047216)
          {
            if (v33 == 40)
            {
              v85 = *(v32 + 8);
              v86 = v26;
              if ((vmaxv_u16(vmovn_s32(vceqzq_s32(v85))) & 1) != 0 || (v87 = *(v32 + 28)) == 0)
              {
                v89 = 1646;
              }

              else
              {
                v88 = *(v32 + 36);
                v89 = 1646;
                if (v88)
                {
                  v90 = bswap32(*(v32 + 24));
                  v91 = bswap32(*(v32 + 32));
                  v92 = HIDWORD(*(v32 + 8));
                  v93 = bswap32(v85.u32[1]);
                  v94 = HIDWORD(*(v32 + 8));
                  v223 = bswap32(v85.u32[0]);
                  v224 = bswap32(v85.u32[3]);
                  v225 = bswap32(v85.u32[2]);
                  v226 = bswap32(v87);
                  v266 = v225 / v224;
                  v267 = v223 / v93;
                  v227 = v90;
                  v228 = bswap32(v88);
                  v229 = v91;
                  v264 = v91 / v228;
                  v265 = v90 / v226;
                  if (v257)
                  {
                    v95 = CFRetain(v239);
                    *(v257 + 8 * v263) = v95;
                  }

                  v274 = 0u;
                  v275 = 0u;
                  valuePtr = 0u;
                  v273 = 0u;
                  *values = 0u;
                  v269 = 0u;
                  v270 = 0u;
                  v271 = 0u;
                  if (a6)
                  {
                    *&valuePtr = v238;
                    values[0] = CFNumberCreate(allocator, kCFNumberDoubleType, &v267);
                    *(&valuePtr + 1) = v237;
                    values[1] = CFNumberCreate(allocator, kCFNumberDoubleType, &v266);
                    *&v273 = v236;
                    *&v269 = CFNumberCreate(allocator, kCFNumberDoubleType, &v265);
                    *(&v273 + 1) = v235;
                    *(&v269 + 1) = CFNumberCreate(allocator, kCFNumberDoubleType, &v264);
                    if (v92 == 0x1000000)
                    {
                      v96 = 4;
                    }

                    else
                    {
                      *&v274 = @"WidthAsRational";
                      *&v270 = figBridge_CFArrayCreateWithTwoIntegers(a1, v223, v93);
                      v96 = 5;
                    }

                    v26 = v86;
                    if (v94 != 0x1000000)
                    {
                      *(&valuePtr + v96) = @"HeightAsRational";
                      values[v96++] = figBridge_CFArrayCreateWithTwoIntegers(a1, v225, v224);
                    }

                    if (v87 != 0x1000000)
                    {
                      *(&valuePtr + v96) = @"HorizontalOffsetAsRational";
                      values[v96++] = figBridge_CFArrayCreateWithTwoIntegers(a1, v227, v226);
                    }

                    v29 = a6;
                    if (v88 != 0x1000000)
                    {
                      *(&valuePtr + v96) = @"VerticalOffsetAsRational";
                      values[v96++] = figBridge_CFArrayCreateWithTwoIntegers(a1, v229, v228);
                    }

                    v153 = 0;
                    do
                    {
                      if (!values[v153])
                      {
                        v155 = fig_log_get_emitter("com.apple.coremedia", "");
                        v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v155, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x6A0, v256, v156, v157);
                        goto LABEL_278;
                      }

                      ++v153;
                    }

                    while (v96 != v153);
                    v154 = CFDictionaryCreate(a1, &valuePtr, values, v96, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    a6[v263] = v154;
                    if (v154)
                    {
                      v56 = 0;
                    }

                    else
                    {
                      v164 = fig_log_get_emitter("com.apple.coremedia", "");
                      v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v164, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x6A9, v256, v165, v166);
                    }
                  }

                  else
                  {
                    v56 = 0;
                    v96 = 0;
                    v29 = 0;
                    v26 = v86;
                  }

                  ++v263;
LABEL_278:
                  if (v96 >= 1)
                  {
                    v167 = values;
                    do
                    {
                      if (*v167)
                      {
                        CFRelease(*v167);
                      }

                      ++v167;
                      --v96;
                    }

                    while (v96);
                  }

                  goto LABEL_264;
                }
              }
            }

            else
            {
              v86 = v26;
              v89 = 1617;
            }

            v113 = fig_log_get_emitter("com.apple.coremedia", "");
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, 0, "<<<< ImageDescriptionBridge >>>>", v89, v256, v114, v115);
            v56 = 0;
            v29 = a6;
            v26 = v86;
            goto LABEL_264;
          }

          if (v35 != 1668050025)
          {
            goto LABEL_238;
          }

          v51 = v257;
          v50 = a1;
          v52 = v29;
          v53 = (v32 + 8);
          v54 = (v33 - 8);
          v55 = @"ContentLightLevelInfo";
LABEL_71:
          v56 = figBridge_WrapPayloadAsCFData(v50, v51, v52, &v263, v53, v54, v55);
          goto LABEL_264;
        }

        switch(v35)
        {
          case 1668246642:
            if (v34 < 5)
            {
              v70 = 0;
            }

            else
            {
              v70 = *v36;
            }

            v103 = v33 == 19 && v70 == 2020369262;
            v104 = v70 == 1668047726 && v34 == 10;
            if (!v104 && !v103)
            {
              if (v70 == 1718579824 || v70 == 1128483186)
              {
                if (v257)
                {
                  v105 = CFRetain(@"CVImageBufferICCProfile");
                  *(v257 + 8 * v263) = v105;
                }

                if (!v29)
                {
                  goto LABEL_158;
                }

                v106 = CFDataCreate(a1, (v32 + 12), v34 - 4);
                v29[v263] = v106;
                if (v106)
                {
                  goto LABEL_158;
                }

                v59 = fig_log_get_emitter("com.apple.coremedia", "");
                v62 = v256;
                v63 = 1951;
LABEL_248:
                v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", v63, v62, v60, v61);
                goto LABEL_263;
              }

              v97 = fig_log_get_emitter("com.apple.coremedia", "");
              v100 = v256;
              v101 = 1956;
              goto LABEL_188;
            }

            v231 = v26;
            v107 = v70 != 2020369262 || *(v32 + 18) >= 0;
            v230 = v107;
            v116 = *(v32 + 14);
            v117 = bswap32(*(v32 + 16)) >> 16;
            StringForIntegerCodePoint = CVColorPrimariesGetStringForIntegerCodePoint(bswap32(*(v32 + 12)) >> 16);
            v119 = CVTransferFunctionGetStringForIntegerCodePoint(__rev16(v116));
            v120 = v249;
            if (v116 == 512)
            {
              v120 = 1;
            }

            LODWORD(v249) = v120;
            v121 = CVYCbCrMatrixGetStringForIntegerCodePoint(v117);
            v29 = a6;
            if (StringForIntegerCodePoint)
            {
              if (v257)
              {
                v122 = CFRetain(v242);
                *(v257 + 8 * v263) = v122;
              }

              if (a6)
              {
                v123 = CFRetain(StringForIntegerCodePoint);
                v124 = v263;
                a6[v263] = v123;
              }

              else
              {
                v124 = v263;
              }

              v263 = v124 + 1;
            }

            if (v119)
            {
              if (v257)
              {
                v132 = CFRetain(v246);
                *(v257 + 8 * v263) = v132;
              }

              if (a6)
              {
                v133 = CFRetain(v119);
                v134 = v263;
                a6[v263] = v133;
              }

              else
              {
                v134 = v263;
              }

              v263 = v134 + 1;
            }

            if (v121)
            {
              if (v257)
              {
                v135 = CFRetain(v241);
                *(v257 + 8 * v263) = v135;
              }

              if (a6)
              {
                v136 = CFRetain(v121);
                v137 = v263;
                a6[v263] = v136;
              }

              else
              {
                v137 = v263;
              }

              v263 = v137 + 1;
            }

            if (v70 == 2020369262)
            {
              v26 = v231;
              if (v257)
              {
                v138 = CFRetain(@"FullRangeVideo");
                *(v257 + 8 * v263) = v138;
              }

              if (a6)
              {
                if (v230)
                {
                  v139 = v240;
                }

                else
                {
                  v139 = v245;
                }

                v69 = CFRetain(v139);
                goto LABEL_218;
              }

              v140 = v263;
LABEL_244:
              v263 = v140 + 1;
              break;
            }

            v26 = v231;
            break;
          case 1718183276:
            if (v33 == 10)
            {
              LOBYTE(valuePtr) = *(v32 + 8);
              v77 = *(v32 + 9);
              if (v257)
              {
                v78 = CFRetain(v243);
                *(v257 + 8 * v263) = v78;
              }

              if (v29 && (v79 = CFNumberCreate(allocator, kCFNumberSInt8Type, &valuePtr), (v29[v263] = v79) == 0))
              {
                v144 = fig_log_get_emitter("com.apple.coremedia", "");
                v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v144, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x5DF, v256, v145, v146);
              }

              else
              {
                v56 = 0;
              }

              v147 = ++v263;
              if (valuePtr >= 2u)
              {
                if (v77 > 8)
                {
                  if (v77 == 9)
                  {
                    v148 = MEMORY[0x1E6965E60];
                  }

                  else
                  {
                    if (v77 != 14)
                    {
                      goto LABEL_264;
                    }

                    v148 = MEMORY[0x1E6965E68];
                  }
                }

                else if (v77 == 1)
                {
                  v148 = MEMORY[0x1E6965E78];
                }

                else
                {
                  if (v77 != 6)
                  {
                    goto LABEL_264;
                  }

                  v148 = MEMORY[0x1E6965E70];
                }

                v161 = *v148;
                if (*v148)
                {
                  if (v257)
                  {
                    v162 = CFRetain(v232);
                    v147 = v263;
                    *(v257 + 8 * v263) = v162;
                  }

                  if (v29)
                  {
                    v163 = CFRetain(v161);
                    v147 = v263;
                    v29[v263] = v163;
                  }

                  v263 = v147 + 1;
                }
              }

LABEL_264:
              if (v56)
              {
                goto LABEL_359;
              }

              break;
            }

            v97 = fig_log_get_emitter("com.apple.coremedia", "");
            v100 = v256;
            v101 = 1492;
            goto LABEL_188;
          case 1718773093:
            break;
          default:
            goto LABEL_238;
        }
      }

      else
      {
        if (v35 <= 1635017575)
        {
          if (v35 == 1634495855)
          {
            if (v33 != 12)
            {
              v108 = fig_log_get_emitter("com.apple.coremedia", "");
              v111 = v256;
              v112 = 2035;
              goto LABEL_167;
            }

            if (v29)
            {
              v83 = bswap32(*v36);
              if (v83 != 256)
              {
                if (v83 == 258)
                {
                  v84 = &kCMFormatDescriptionAlphaChannelMode_PremultipliedAlpha;
                  goto LABEL_233;
                }

                v108 = fig_log_get_emitter("com.apple.coremedia", "");
                v111 = v256;
                v112 = 2050;
LABEL_167:
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v108, 0, "<<<< ImageDescriptionBridge >>>>", v112, v111, v109, v110);
LABEL_238:
                if (v262)
                {
                  if (v27 >= v252)
                  {
                    figBridge_WalkAndConvertImageDescriptionExtensions_cold_2(a9);
                    v56 = 4294954584;
                    if (v27)
                    {
                      goto LABEL_361;
                    }

                    goto LABEL_365;
                  }

                  v152 = &v262[3 * v27];
                  *v152 = v35;
                  v152[1] = CFDataCreate(a1, (v32 + 8), v34);
                  *(v152 + 4) = 0;
                }

                ++v27;
                continue;
              }

              v84 = &kCMFormatDescriptionAlphaChannelMode_StraightAlpha;
LABEL_233:
              v149 = CFRetain(*v84);
              v29[v263] = v149;
            }

            if (v257)
            {
              v150 = CFRetain(@"AlphaChannelMode");
              v151 = v263;
              *(v257 + 8 * v263) = v150;
            }

            else
            {
              v151 = v263;
            }

            v263 = v151 + 1;
            goto LABEL_238;
          }

          if (v35 != 1634563685)
          {
            goto LABEL_238;
          }

          v51 = v257;
          v50 = a1;
          v52 = v29;
          v53 = (v32 + 8);
          v54 = (v33 - 8);
          v55 = @"AmbientViewingEnvironment";
          goto LABEL_71;
        }

        switch(v35)
        {
          case 1635017576:
            if (v33 != 9)
            {
              v97 = fig_log_get_emitter("com.apple.coremedia", "");
              v100 = v256;
              v101 = 2074;
LABEL_188:
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, 0, "<<<< ImageDescriptionBridge >>>>", v101, v100, v98, v99);
              break;
            }

            v66 = v26;
            v67 = *v36;
            if (*v36)
            {
              if (v257)
              {
                v68 = CFRetain(@"AlternativeTransferCharacteristics");
                *(v257 + 8 * v263) = v68;
              }

              if (v29)
              {
                v69 = CVTransferFunctionGetStringForIntegerCodePoint(v67);
                if (v69)
                {
                  v69 = CFRetain(v69);
                }

                v26 = v66;
LABEL_218:
                v140 = v263;
                v29[v263] = v69;
              }

              else
              {
                v140 = v263;
                v26 = v66;
              }

              goto LABEL_244;
            }

            v26 = v66;
            break;
          case 1667460214:
            figBridge_WrapPayloadAsCFData(a1, v257, v29, &v263, (v32 + 8), v34, @"ContentColorVolume");
            break;
          case 1667789421:
            if (v33 == 10)
            {
              v40 = v26;
              v41 = 0;
              v42 = 1;
              do
              {
                v43 = v42;
                v44 = figConvertChromaLocationIndexToString(*(v36 + v41));
                if (v44)
                {
                  v45 = v44;
                  if (v257)
                  {
                    if (v43)
                    {
                      v46 = v254;
                    }

                    else
                    {
                      v46 = v253;
                    }

                    v47 = CFRetain(v46);
                    *(v257 + 8 * v263) = v47;
                  }

                  if (v29)
                  {
                    v48 = CFRetain(v45);
                    v49 = v263;
                    v29[v263] = v48;
                  }

                  else
                  {
                    v49 = v263;
                  }

                  v263 = v49 + 1;
                }

                v42 = 0;
                v41 = 1;
              }

              while ((v43 & 1) != 0);
              v26 = v40;
              break;
            }

            v97 = fig_log_get_emitter("com.apple.coremedia", "");
            v100 = v256;
            v101 = 2181;
            goto LABEL_188;
          default:
            goto LABEL_238;
        }
      }
    }

    else if (v35 <= 1885434735)
    {
      if (v35 <= 1785751362)
      {
        if (v35 == 1734438241)
        {
          if (v33 == 12)
          {
            *&valuePtr = vcvtd_n_f64_s32(bswap32(*v36), 0x10uLL);
            if (v257)
            {
              v75 = CFRetain(v244);
              *(v257 + 8 * v263) = v75;
            }

            if (v29 && (v76 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr), (v29[v263] = v76) == 0))
            {
              v141 = fig_log_get_emitter("com.apple.coremedia", "");
              v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v141, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x7C3, v256, v142, v143);
            }

            else
            {
              v56 = 0;
            }

            ++v263;
            v248 = 1;
            goto LABEL_264;
          }

          v97 = fig_log_get_emitter("com.apple.coremedia", "");
          v100 = v256;
          v101 = 1973;
        }

        else
        {
          if (v35 != 1751543670)
          {
            goto LABEL_238;
          }

          if (v33 == 12)
          {
            LODWORD(valuePtr) = bswap32(*v36);
            if (v257)
            {
              v57 = CFRetain(@"HorizontalFieldOfView");
              *(v257 + 8 * v263) = v57;
            }

            if (v29)
            {
              v58 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
              v29[v263] = v58;
              if (!v58)
              {
                v59 = fig_log_get_emitter("com.apple.coremedia", "");
                v62 = v256;
                v63 = 2121;
                goto LABEL_248;
              }
            }

            goto LABEL_158;
          }

          v97 = fig_log_get_emitter("com.apple.coremedia", "");
          v100 = v256;
          v101 = 2109;
        }

        goto LABEL_188;
      }

      if (v35 != 1785751363)
      {
        if (v35 != 1819240307)
        {
          if (v35 != 1835295606)
          {
            goto LABEL_238;
          }

          v51 = v257;
          v50 = a1;
          v52 = v29;
          v53 = (v32 + 8);
          v54 = (v33 - 8);
          v55 = @"MasteringDisplayColorVolume";
          goto LABEL_71;
        }

        if (v33 != 8)
        {
          if (v257)
          {
            v64 = CFRetain(@"LogTransferFunction");
            *(v257 + 8 * v263) = v64;
          }

          if (v29)
          {
            v65 = CFStringCreateWithBytes(allocator, (v32 + 8), v34, 0x600u, 0);
            v29[v263] = v65;
            if (!v65)
            {
              v59 = fig_log_get_emitter("com.apple.coremedia", "");
              v62 = v256;
              v63 = 2224;
              goto LABEL_248;
            }
          }

          goto LABEL_158;
        }

        v97 = fig_log_get_emitter("com.apple.coremedia", "");
        v100 = v256;
        v101 = 2216;
        goto LABEL_188;
      }

      if (v33 != 8)
      {
        figBridge_WalkAndConvertImageDescriptionExtensions_cold_1(a9, &valuePtr);
        v56 = valuePtr;
        goto LABEL_264;
      }
    }

    else
    {
      if (v35 > 1936995171)
      {
        if (v35 == 1936995172)
        {
          if (!v26)
          {
            goto LABEL_238;
          }

          v74 = v263;
          FigExternalSphericalBridge_ParseV2StereoModeBox(a1, v257, v29, &v263, v32 + 8, v34, a9);
LABEL_121:
          v82 = HIDWORD(v249);
          if (v263 > v74)
          {
            v82 = 1;
          }

          HIDWORD(v249) = v82;
          goto LABEL_238;
        }

        if (v35 == 1937126244)
        {
          if (!v26)
          {
            goto LABEL_238;
          }

          v74 = v263;
          FigExternalSphericalBridge_ParseV2SphericalBox(a1, v257, v29, &v263, v32 + 8, v34, a9);
          goto LABEL_121;
        }

        if (v35 != 1986361461)
        {
          goto LABEL_238;
        }

        v56 = VEXUBridge_ConvertVideoExtendedUsageDescriptionExtensions(a1, v257, v29, &v263, v32 + 8, v34, a9);
        v26 = 0;
        goto LABEL_264;
      }

      if (v35 != 1885434736)
      {
        if (v35 != 1919907682)
        {
          if (v35 == 1936289382 && FigBridgeGetCommonEncryptionScheme(v32 + 8, v34))
          {
            LODWORD(valuePtr) = 0;
            if (v257)
            {
              v37 = CFRetain(@"CommonEncryptionProtected");
              *(v257 + 8 * v263) = v37;
            }

            if (v29)
            {
              v38 = CFRetain(v245);
              v39 = v263;
              v29[v263] = v38;
            }

            else
            {
              v39 = v263;
            }

            v263 = v39 + 1;
            LODWORD(valuePtr) = FigBridgeGetOriginalFormatFromSinf(v32 + 8, v34);
            if (valuePtr)
            {
              if (v257)
              {
                v128 = CFRetain(@"CommonEncryptionOriginalFormat");
                *(v257 + 8 * v263) = v128;
              }

              if (v29)
              {
                v129 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
                v130 = v263;
                v29[v263] = v129;
              }

              else
              {
                v130 = v263;
              }

              v263 = v130 + 1;
            }

            v131 = FigBridgeExtractCommonEncryptionTrackEncryptionExtension(a1, v257, v29, &v263, v32 + 8, v34);
            if (v131)
            {
              v56 = v131;
              goto LABEL_359;
            }
          }

          goto LABEL_238;
        }

        if (v33 == 12)
        {
          LODWORD(valuePtr) = bswap32(*v36);
          if (v257)
          {
            v80 = CFRetain(@"CVBytesPerRow");
            *(v257 + 8 * v263) = v80;
          }

          if (v29)
          {
            v81 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            v29[v263] = v81;
            if (!v81)
            {
              v59 = fig_log_get_emitter("com.apple.coremedia", "");
              v62 = v256;
              v63 = 2017;
              goto LABEL_248;
            }
          }

LABEL_158:
          v56 = 0;
LABEL_263:
          ++v263;
          goto LABEL_264;
        }

        v97 = fig_log_get_emitter("com.apple.coremedia", "");
        v100 = v256;
        v101 = 2006;
        goto LABEL_188;
      }

      if (v33 != 16)
      {
        v97 = fig_log_get_emitter("com.apple.coremedia", "");
        v100 = v256;
        v101 = 1559;
        goto LABEL_188;
      }

      v71 = bswap32(*(v32 + 8));
      if (v71 >= 1 && bswap32(*(v32 + 12)) > 0)
      {
        if (v257)
        {
          v72 = CFRetain(v234);
          *(v257 + 8 * v263) = v72;
        }

        if (a6)
        {
          v73 = figBridge_CFDictionaryCreateWithNumbers(a1, v15, v233, v16, v17, v18, v19, v20, v71);
          a6[v263] = v73;
          v29 = a6;
          if (v73)
          {
            v56 = 0;
          }

          else
          {
            v158 = fig_log_get_emitter("com.apple.coremedia", "");
            v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v158, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x62D, v256, v159, v160);
          }
        }

        else
        {
          v56 = 0;
          v29 = 0;
        }

        goto LABEL_263;
      }

      v125 = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v125, 0, "<<<< ImageDescriptionBridge >>>>", 0x622, v256, v126, v127);
      v29 = a6;
    }
  }

  while (v31 + 8 <= a3);
  LODWORD(v26) = v26 != 0;
  if (v249)
  {
    a4 = v251;
    a5 = v257;
    if (v248)
    {
      if (v257)
      {
        v168 = CFRetain(v246);
        *(v257 + 8 * v263) = v168;
      }

      if (v29)
      {
        v169 = CFRetain(*MEMORY[0x1E6965F80]);
        v170 = v263;
        v29[v263] = v169;
      }

      else
      {
        v170 = v263;
      }

      v263 = v170 + 1;
    }
  }

  else
  {
    a4 = v251;
    a5 = v257;
  }

  v30 = a11;
  v28 = BYTE4(v249);
  if (!a11)
  {
    goto LABEL_299;
  }

LABEL_294:
  if (!v26 || v28)
  {
    goto LABEL_299;
  }

  v171 = v26;
  Value = FigCFDictionaryGetValue(v30);
  if (Value)
  {
    v26 = Value;
    v173 = CFGetTypeID(Value);
    if (v173 == CFDictionaryGetTypeID())
    {
      v174 = v263;
      FigExternalSphericalBridge_ParseVersion1Properties(a1, a5, v29, &v263, v26, a9);
      v28 = v263 > v174;
      LODWORD(v26) = v171;
      goto LABEL_299;
    }
  }

LABEL_309:
  if (!v27)
  {
LABEL_353:
    if (a4)
    {
      *a4 = v263;
    }

    if (a7)
    {
      v56 = 0;
      *a7 = v27;
    }

    else if (v27 == v252)
    {
      v56 = 0;
      v27 = v252;
    }

    else
    {
      figBridge_WalkAndConvertImageDescriptionExtensions_cold_4(a9);
      v56 = 4294954584;
    }

    goto LABEL_359;
  }

  if (a5)
  {
    v179 = CFRetain(@"SampleDescriptionExtensionAtoms");
    *(a5 + 8 * v263) = v179;
  }

  if (!v29)
  {
    v56 = 0;
    v180 = 0;
    v182 = 0;
    goto LABEL_336;
  }

  v29 = malloc_type_calloc(v27, 8uLL, 0x6004044C4A2DFuLL);
  v180 = malloc_type_calloc(v27, 8uLL, 0x6004044C4A2DFuLL);
  v181 = malloc_type_calloc(v27, 8uLL, 0x6004044C4A2DFuLL);
  v182 = v181;
  if (!v29 || !v180 || !v181)
  {
    v209 = fig_log_get_emitter("com.apple.coremedia", "");
    v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v209, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x8EB, v256, v210, v211);
    if (!v29)
    {
      goto LABEL_344;
    }

    goto LABEL_339;
  }

  v258 = v29;
  v183 = 0;
  v184 = 0;
  v185 = (v262 + 3);
  v186 = v262 + 2;
  v187 = v27;
  do
  {
    v188 = &v262[3 * v184];
    if (!*(v188 + 4))
    {
      v189 = v182;
      v190 = v27;
      v191 = v180;
      v192 = *v188;
      LOBYTE(valuePtr) = 4;
      BYTE1(valuePtr) = HIBYTE(v192);
      BYTE2(valuePtr) = BYTE2(v192);
      BYTE3(valuePtr) = BYTE1(v192);
      BYTE4(valuePtr) = v192;
      v193 = v183;
      v194 = CFStringCreateWithPascalString(a1, &valuePtr, 0);
      v261 = v193;
      v258[v193] = v194;
      if (v194)
      {
        v180 = v191;
      }

      else
      {
        v195 = fig_log_get_emitter("com.apple.coremedia", "");
        v198 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v195, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x8D0, v256, v196, v197);
        v180 = v191;
        if (v198)
        {
          v56 = v198;
          v27 = v190;
          v182 = v189;
          v29 = v258;
          goto LABEL_339;
        }
      }

      v199 = v187;
      v200 = v185;
      v27 = v190;
      v182 = v189;
      do
      {
        if (!--v199)
        {
          v207 = CFRetain(v188[1]);
          v206 = v261;
          v180[v261] = v207;
          goto LABEL_331;
        }

        v201 = *v200;
        v200 += 6;
      }

      while (v192 != v201);
      v202 = 0;
      v203 = v186;
      v204 = v187;
      do
      {
        if (v192 == *(v203 - 4))
        {
          v189[v202++] = *(v203 - 1);
          *v203 = 1;
        }

        v203 += 6;
        --v204;
      }

      while (v204);
      v205 = CFArrayCreate(a1, v189, v202, MEMORY[0x1E695E9C0]);
      v206 = v261;
      v180[v261] = v205;
      if (!v205)
      {
        v220 = fig_log_get_emitter("com.apple.coremedia", "");
        v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v220, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x913, v256, v221, v222);
        v29 = v258;
        goto LABEL_339;
      }

LABEL_331:
      v183 = v206 + 1;
    }

    ++v184;
    v185 += 6;
    --v187;
    v186 += 6;
  }

  while (v184 != v27);
  v29 = v258;
  v208 = CFDictionaryCreate(a1, v258, v180, v183, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a6[v263] = v208;
  if (v208)
  {
    v56 = 0;
  }

  else
  {
    v217 = fig_log_get_emitter("com.apple.coremedia", "");
    v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v217, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x922, v256, v218, v219);
  }

LABEL_336:
  ++v263;
  if (v29)
  {
LABEL_339:
    for (i = 0; i != v27; ++i)
    {
      v213 = v29[i];
      if (v213)
      {
        CFRelease(v213);
      }
    }

    free(v29);
  }

LABEL_344:
  a4 = v251;
  if (v180)
  {
    for (j = 0; j != v27; ++j)
    {
      v215 = v180[j];
      if (v215)
      {
        CFRelease(v215);
      }
    }

    free(v180);
  }

  if (v182)
  {
    free(v182);
  }

  if (!v56)
  {
    goto LABEL_353;
  }

LABEL_359:
  if (v262)
  {
    if (v27)
    {
LABEL_361:
      v216 = v262 + 1;
      do
      {
        if (*v216)
        {
          CFRelease(*v216);
        }

        v216 += 3;
        --v27;
      }

      while (v27);
    }

LABEL_365:
    free(v262);
  }

  return v56;
}

void *figBridge_ConvertMPEG2ProfileCodecTypesToProfileExtensions(void *result, _DWORD *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  valuePtr = result;
  while (figBridge_ConvertMPEG2ProfileCodecTypesToProfileExtensions_mpeg2ConformingVideoCodecTypes[v9] != result)
  {
    if (++v9 == 39)
    {
      return result;
    }
  }

  if (a4)
  {
    result = CFRetain(@"ConformsToMPEG2VideoProfile");
    *(a4 + 8 * *a3) = result;
  }

  if (a5)
  {
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v10 = *a3;
    *(a5 + 8 * *a3) = result;
  }

  else
  {
    v10 = *a3;
  }

  *a3 = v10 + 1;
  if (a2)
  {
    *a2 = 1836069494;
  }

  return result;
}

size_t FigH264Bridge_GetSPSFromAVCC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a2 < 7)
  {
    return 4294954582;
  }

  v5 = *(a1 + 5) & 0x1F;
  if ((*(a1 + 5) & 0x1F) != 0)
  {
    v6 = 6;
    while (v6 + 2 <= a2)
    {
      v7 = __rev16(*(a1 + v6));
      v6 += v7 + 2;
      if (v7 < 2 || v6 > a2)
      {
        break;
      }

      if (!a3)
      {
        return OUTLINED_FUNCTION_65(a1, a2, a3, a4, a5);
      }

      a3 = (a3 - 1);
      if (!--v5)
      {
        goto LABEL_11;
      }
    }

    return 4294954582;
  }

LABEL_11:
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE58uLL, "<<<< H264Bridge >>>>", 0x99B, v10, v11, v12);
}

size_t FigH264Bridge_GetSPS_VUI_ChromaLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_29_2(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_11_11();
  v10 = RemoveEmulation3Byte(BytePtr, v8, v9);
  if (v10)
  {
    return v10;
  }

  v11 = theData;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    LODWORD(v8) = CFDataGetLength(theData);
  }

  OUTLINED_FUNCTION_34_1();
  if (v12)
  {
    v13 = *BytePtr;
  }

  else if (v8)
  {
    OUTLINED_FUNCTION_23_6();
    __memcpy_chk();
    v13 = v17;
  }

  else
  {
    v13 = 0;
  }

  v14 = OUTLINED_FUNCTION_21_7(v13, theData);
  if (v11)
  {
    CFRelease(v11);
  }

  if (!v14)
  {
    v14 = 4294954584;
    if (v18)
    {
      if (v19)
      {
        v14 = 0;
        *v6 = v20;
        *v5 = v21;
      }
    }
  }

  return v14;
}

uint64_t RemoveEmulation3Byte(const UInt8 *a1, unint64_t a2, __CFData **a3)
{
  if (a2 < 3)
  {
    v8 = 0;
LABEL_15:
    if (((a2 + a1 + 3) & 0xFFC) == 0)
    {
      Mutable = CFDataCreateMutable(0, a2 + 4);
      v8 = Mutable;
      v12 = a1;
      v11 = a2;
LABEL_17:
      CFDataAppendBytes(Mutable, v12, v11);
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    for (i = 2; i < a2; i += 3)
    {
      if (a1[v7] || *&a1[v7 + 1] != 768)
      {
        i = v7;
      }

      else
      {
        if (!v9)
        {
          v8 = CFDataCreateMutable(0, a2 + 3);
          if (!v8)
          {
            RemoveEmulation3Byte_cold_1(&v15);
            result = v15;
            goto LABEL_19;
          }

          v9 = 1;
        }

        CFDataAppendBytes(v8, &a1[v6], i - v6);
        v6 = v7 + 3;
      }

      v7 = i + 1;
    }

    if (!v9)
    {
      goto LABEL_15;
    }

    v11 = a2 - v6;
    if (a2 != v6)
    {
      v12 = &a1[v6];
      Mutable = v8;
      goto LABEL_17;
    }
  }

  result = 0;
LABEL_19:
  *a3 = v8;
  return result;
}

size_t PullParamSetSPS(size_t a1, char *a2)
{
  v4 = a1;
  v238 = 0;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 8);
  v9 = *a1;
  bzero(a2, 0x218uLL);
  v10 = (v7 + 1) & 7;
  v11 = (v5 + ((v7 + 1) >> 3));
  v12 = v9 + v8;
  v13 = v9 + v8 - v11;
  if (v13 < 4)
  {
    if (v13 < 1)
    {
      v14 = v10 | v13;
      if (v14)
      {
        LOBYTE(v15) = (v7 + 1) & 7;
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v20 = 1373;
        goto LABEL_505;
      }
    }

    else if (v13 == 1)
    {
      v14 = *v11 << 24;
    }

    else
    {
      OUTLINED_FUNCTION_10_11();
      if (!v21)
      {
        OUTLINED_FUNCTION_37();
      }

      v14 = v22 << 8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
  }

  v23 = (v10 + 2) & 7;
  v11 += (v10 + 2) >> 3;
  v24 = v12 - v11;
  if (v12 - v11 < 4)
  {
    if (v24 < 1)
    {
      v25 = v23 | v24;
      if (v25)
      {
        LOBYTE(v15) = (v10 + 2) & 7;
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v20 = 1374;
        goto LABEL_505;
      }
    }

    else if (v24 == 1)
    {
      v25 = *v11 << 24;
    }

    else
    {
      OUTLINED_FUNCTION_19_7();
      if (!v26)
      {
        v27 |= v11[2];
      }

      v25 = v27 << 8;
    }
  }

  else
  {
    v25 = bswap32(*v11);
  }

  v15 = (v23 + 5) & 7;
  v11 += (v23 + 5) >> 3;
  v28 = v12 - v11;
  if (v12 - v11 < 4)
  {
    if (v28 < 1)
    {
      v29 = v15 | v28;
      if (v29)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v20 = 1375;
        goto LABEL_505;
      }

      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (v28 == 1)
    {
      v29 = *v11 << 24;
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      OUTLINED_FUNCTION_24_5();
      if (!v45)
      {
        v46 |= v11[2];
      }

      v29 = v46 << 8;
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v29 = bswap32(*v11);
    if ((v6 & 0x80000000) != 0)
    {
LABEL_25:
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_31_2();
      v37 = 1377;
LABEL_503:
      FigSignalErrorAtGM(v30, v31, v32, v33, v37, v34, v35, v36);
      return v6;
    }
  }

  if (!((v14 << v10) >> 30))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_31_2();
    v37 = 1378;
    goto LABEL_503;
  }

  if ((v25 << v23) >> 27 != 7)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_31_2();
    v37 = 1379;
    goto LABEL_503;
  }

  *a2 = (v29 << v15) >> 24;
  v38 = v11 + 1;
  v39 = v12 - (v11 + 1);
  if (v39 < 4)
  {
    if (v39 < 1)
    {
      if (v15 | v39)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v44 = 1381;
        goto LABEL_96;
      }
    }

    else if (v39 != 1)
    {
      OUTLINED_FUNCTION_63();
    }
  }

  OUTLINED_FUNCTION_48();
  *(a2 + 2) = v47;
  v48 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v11 = &v38[v48];
  v50 = v49 - (v38 + v48);
  if (v50 < 4)
  {
    if (v50 < 1)
    {
      if (v15 | v50)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v20 = 1383;
        goto LABEL_505;
      }
    }

    else if (v50 != 1)
    {
      OUTLINED_FUNCTION_22_6();
      if (v51 != 2)
      {
        OUTLINED_FUNCTION_62();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_4();
  }

  OUTLINED_FUNCTION_48();
  *(a2 + 3) = v52;
  OUTLINED_FUNCTION_27_4();
  if (v53 < 4)
  {
    if (v53 < 1)
    {
      if (v15 | v53)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v20 = 1384;
        goto LABEL_505;
      }
    }

    else if (v53 != 1)
    {
      OUTLINED_FUNCTION_22_6();
      if (v54 != 2)
      {
        OUTLINED_FUNCTION_62();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_4();
  }

  OUTLINED_FUNCTION_48();
  *(a2 + 4) = v55;
  OUTLINED_FUNCTION_27_4();
  if (v56 < 4)
  {
    if (v56 < 1)
    {
      if (v15 | v56)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v20 = 1385;
        goto LABEL_505;
      }
    }

    else if (v56 != 1)
    {
      OUTLINED_FUNCTION_22_6();
      if (v57 != 2)
      {
        OUTLINED_FUNCTION_62();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_4();
  }

  OUTLINED_FUNCTION_48();
  *(a2 + 5) = v58;
  OUTLINED_FUNCTION_27_4();
  if (v59 <= 0 && v15 | v59)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v20 = 1386;
    goto LABEL_505;
  }

  OUTLINED_FUNCTION_27_4();
  if (v61 < 4)
  {
    if (v61 < 1)
    {
      v62 = v15 | v61;
      if (v62)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v20 = 1392;
        goto LABEL_505;
      }
    }

    else if (v61 == 1)
    {
      v62 = *v11 << 24;
    }

    else
    {
      OUTLINED_FUNCTION_22_6();
      if (v63 != 2)
      {
        OUTLINED_FUNCTION_62();
      }

      v62 = v64 << 8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_4();
  }

  *(a2 + 1) = (v62 << v15) >> 24;
  v38 = v11 + 1;
  v65 = v60 - (v11 + 1);
  if (v65 < 4)
  {
    if (v65 >= 1)
    {
      if (v65 != 1)
      {
        OUTLINED_FUNCTION_63();
      }

      goto LABEL_97;
    }

    if (!(v15 | v65))
    {
      goto LABEL_97;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v44 = 1394;
LABEL_96:
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v44, v41, v42, v43);
    v2 = 0;
LABEL_478:
    v11 = v38;
    goto LABEL_471;
  }

LABEL_97:
  OUTLINED_FUNCTION_39();
  if (!v69)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v233, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", 0x573, v234, v235, v236);
    goto LABEL_478;
  }

  v70 = __clz(v2);
  v71 = v2 << (v70 + 1) >> -v70;
  if (!v70)
  {
    v71 = 0;
  }

  v72 = v71 + ~(-1 << v70);
  *(a2 + 9) = v72;
  v73 = v70 + v15 + v70 + 1;
  v74 = v73 >> 3;
  v15 = v73 & 7;
  v11 = &v38[v74];
  v75 = v66 - (v38 + v74);
  if (v75 < 4)
  {
    if (v75 < 1)
    {
      v76 = v15 | v75;
      if (v76)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v20 = 1395;
        goto LABEL_505;
      }
    }

    else if (v75 == 1)
    {
      v76 = *v11 << 24;
    }

    else
    {
      OUTLINED_FUNCTION_19_7();
      if (!v77)
      {
        v78 |= v11[2];
      }

      v76 = v78 << 8;
    }
  }

  else
  {
    v76 = bswap32(*v11);
  }

  v2 = v76 << v15;
  v79 = vdupq_n_s32(v67);
  v80 = vceqq_s32(v79, xmmword_197166250);
  v79.i32[2] = v68 & 0xDF000000;
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(v80, vceqq_s32(v79, xmmword_197166240)))) & 1) != 0 || (v87 = v67 & 0xFE, v87 == 138) || v87 == 134)
  {
    if (!(v2 >> 19))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v228 = 1402;
      goto LABEL_474;
    }

    OUTLINED_FUNCTION_17_7();
    a2[40] = v81;
    OUTLINED_FUNCTION_16_8();
    if (v84 != v85)
    {
      if (v83 < 1)
      {
        v86 = v15 | v83;
        if (v86)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1402;
          goto LABEL_505;
        }
      }

      else if (v83 == 1)
      {
        v86 = *v11 << 24;
      }

      else
      {
        OUTLINED_FUNCTION_22_6();
        if (v88 != 2)
        {
          OUTLINED_FUNCTION_46();
        }

        v86 = v89 << 8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_47();
    }

    if (v82 >= 4u)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_31_2();
      v37 = 1403;
      goto LABEL_503;
    }

    v2 = v86 << v15;
    if (v82 == 3)
    {
      a2[41] = (v2 & 0x80000000) != 0;
      OUTLINED_FUNCTION_5_20();
      if (v84 != v85)
      {
        if (v90 < 1)
        {
          v91 = v15 | v90;
          if (v91)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v20 = 1405;
            goto LABEL_505;
          }
        }

        else if (v90 == 1)
        {
          v91 = *v11 << 24;
        }

        else
        {
          OUTLINED_FUNCTION_10_11();
          if (!v92)
          {
            OUTLINED_FUNCTION_37();
          }

          v91 = v93 << 8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_32_2();
      }

      v2 = v91 << v15;
    }

    if (!(v2 >> 19))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v228 = 1406;
      goto LABEL_474;
    }

    OUTLINED_FUNCTION_17_7();
    a2[42] = v94;
    OUTLINED_FUNCTION_16_8();
    if (v84 != v85)
    {
      if (v96 < 1)
      {
        v97 = v15 | v96;
        if (v97)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1406;
          goto LABEL_505;
        }
      }

      else if (v96 == 1)
      {
        v97 = *v11 << 24;
      }

      else
      {
        OUTLINED_FUNCTION_22_6();
        if (v98 != 2)
        {
          OUTLINED_FUNCTION_46();
        }

        v97 = v99 << 8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_47();
    }

    if (v95 >= 7u)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_31_2();
      v37 = 1407;
      goto LABEL_503;
    }

    v2 = v97 << v15;
    if (!((v97 << v15) >> 19))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v228 = 1408;
      goto LABEL_474;
    }

    OUTLINED_FUNCTION_17_7();
    a2[43] = v100;
    OUTLINED_FUNCTION_16_8();
    if (v84 != v85)
    {
      if (v102 < 1)
      {
        v103 = v15 | v102;
        if (v103)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1408;
          goto LABEL_505;
        }
      }

      else if (v102 == 1)
      {
        v103 = *v11 << 24;
      }

      else
      {
        OUTLINED_FUNCTION_22_6();
        if (v104 != 2)
        {
          OUTLINED_FUNCTION_46();
        }

        v103 = v105 << 8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_47();
    }

    if (v101 >= 7u)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_31_2();
      v37 = 1409;
      goto LABEL_503;
    }

    v6 = v238;
    if (v238)
    {
      return v6;
    }

    a2[44] = v103 << v15 < 0;
    OUTLINED_FUNCTION_5_20();
    if (v84 != v85)
    {
      if (v107 < 1)
      {
        v108 = v15 | v107;
        if (v108)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1410;
          goto LABEL_505;
        }
      }

      else if (v107 == 1)
      {
        v108 = *v11 << 24;
      }

      else
      {
        OUTLINED_FUNCTION_10_11();
        if (!v109)
        {
          OUTLINED_FUNCTION_37();
        }

        v108 = v110 << 8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
    }

    v111 = v108 << v15;
    a2[45] = v111 < 0;
    v112 = v15 + 1;
    v15 = (v15 + 1) & 7;
    v11 += v112 >> 3;
    v113 = v106 - v11;
    if (v113 < 4)
    {
      if (v113 < 1)
      {
        v114 = v15 | v113;
        if (v114)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1411;
          goto LABEL_505;
        }
      }

      else
      {
        v115 = *v11;
        if (v113 == 1)
        {
          v114 = v115 << 24;
        }

        else
        {
          v116 = (v115 << 16) | (v11[1] << 8);
          if (v113 != 2)
          {
            v116 |= v11[2];
          }

          v114 = v116 << 8;
        }
      }
    }

    else
    {
      v114 = bswap32(*v11);
    }

    v2 = v114 << v15;
    if (v111 < 0)
    {
      v237 = v4;
      v117 = 0;
      while (1)
      {
        v6 = v238;
        if (v238)
        {
          return v6;
        }

        v118 = (v15 + 1) >> 3;
        v15 = (v15 + 1) & 7;
        v11 += v118;
        v119 = v9 + v8 - v11;
        if (v119 < 4)
        {
          if (v119 < 1)
          {
            v120 = v15 | v119;
            if (v120)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_13();
              v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v229, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", 0x587, v230, v231, v232);
              v2 = 0;
              v4 = v237;
              goto LABEL_471;
            }
          }

          else if (v119 == 1)
          {
            v120 = *v11 << 24;
          }

          else
          {
            OUTLINED_FUNCTION_33_2();
            if (!v121)
            {
              v122 |= v11[2];
            }

            v120 = v122 << 8;
          }
        }

        else
        {
          v120 = bswap32(*v11);
        }

        v123 = v120 << v15;
        if ((v2 & 0x80000000) != 0)
        {
          v6 = v237;
          *(v237 + 16) = v11;
          *(v237 + 24) = v123;
          *(v237 + 28) = v15;
          if (v117 >= 6)
          {
            v125 = 64;
          }

          else
          {
            v125 = 16;
          }

          scaling_list(v237, v125, &v238);
          v11 = *(v237 + 16);
          v2 = *(v237 + 24);
          v15 = *(v237 + 28);
          v8 = *(v237 + 8);
          v9 = *v237;
        }

        else
        {
          v2 = v123;
        }

        ++v117;
        if (a2[40] == 3)
        {
          v124 = 12;
        }

        else
        {
          v124 = 8;
        }

        if (v117 >= v124)
        {
          v72 = *(a2 + 9);
          v4 = v237;
          break;
        }
      }
    }
  }

  else
  {
    a2[40] = 1;
  }

  if (v72 >= 32)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_31_2();
    v37 = 1437;
    goto LABEL_503;
  }

  v6 = v238;
  if (!v238)
  {
    if (!(v2 >> 19))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v228 = 1438;
      goto LABEL_474;
    }

    v126 = __clz(v2);
    v127 = v2 << (v126 + 1) >> -v126;
    if (!v126)
    {
      v127 = 0;
    }

    *(a2 + 72) = v127 + ~(-1 << v126);
    v128 = v126 + v15 + v126 + 1;
    v15 = v128 & 7;
    v11 += v128 >> 3;
    v129 = v9 + v8 - v11;
    if (v129 < 4)
    {
      if (v129 < 1)
      {
        if (v15 | v129)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1438;
          goto LABEL_505;
        }
      }

      else if (v129 != 1)
      {
        OUTLINED_FUNCTION_8_15();
        if (!v130)
        {
          OUTLINED_FUNCTION_30_2();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_28_4();
    }

    OUTLINED_FUNCTION_39();
    if (!v131)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v228 = 1439;
      goto LABEL_474;
    }

    OUTLINED_FUNCTION_18_7();
    *(a2 + 73) = v132;
    OUTLINED_FUNCTION_5_20();
    if (v84 != v85)
    {
      if (v134 < 1)
      {
        v135 = v15 | v134;
        if (v135)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1439;
          goto LABEL_505;
        }
      }

      else if (v134 == 1)
      {
        v135 = *v11 << 24;
      }

      else
      {
        OUTLINED_FUNCTION_10_11();
        if (!v136)
        {
          OUTLINED_FUNCTION_37();
        }

        v135 = v137 << 8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
    }

    v2 = v135 << v15;
    if (v133 == 1)
    {
      *(a2 + 75) = v2 >> 31;
      OUTLINED_FUNCTION_3_24();
      if (v84 != v85)
      {
        if (v142 < 1)
        {
          if (v15 | v142)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v20 = 1453;
            goto LABEL_505;
          }
        }

        else if (v142 != 1)
        {
          OUTLINED_FUNCTION_8_15();
          if (!v143)
          {
            OUTLINED_FUNCTION_30_2();
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_28_4();
      }

      OUTLINED_FUNCTION_39();
      if (!v144)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v228 = 1454;
        goto LABEL_474;
      }

      OUTLINED_FUNCTION_16_8();
      if (v84 != v85)
      {
        if (v145 < 1)
        {
          if (v15 | v145)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v20 = 1454;
            goto LABEL_505;
          }
        }

        else if (v145 != 1)
        {
          OUTLINED_FUNCTION_22_6();
          if (v148 != 2)
          {
            OUTLINED_FUNCTION_46();
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_47();
      }

      OUTLINED_FUNCTION_40();
      *(a2 + 76) = v149;
      if (!(v2 >> 19))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v228 = 1455;
        goto LABEL_474;
      }

      OUTLINED_FUNCTION_16_8();
      if (v84 != v85)
      {
        if (v150 < 1)
        {
          if (v15 | v150)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v20 = 1455;
            goto LABEL_505;
          }
        }

        else if (v150 != 1)
        {
          OUTLINED_FUNCTION_22_6();
          if (v151 != 2)
          {
            OUTLINED_FUNCTION_46();
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_47();
      }

      OUTLINED_FUNCTION_40();
      *(a2 + 77) = v152;
      if (!(v2 >> 19))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v228 = 1456;
        goto LABEL_474;
      }

      OUTLINED_FUNCTION_18_7();
      *(a2 + 78) = v153;
      OUTLINED_FUNCTION_5_20();
      if (v84 != v85)
      {
        if (v155 < 1)
        {
          v156 = v15 | v155;
          if (v156)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v20 = 1456;
            goto LABEL_505;
          }
        }

        else if (v155 == 1)
        {
          v156 = *v11 << 24;
        }

        else
        {
          OUTLINED_FUNCTION_10_11();
          if (!v157)
          {
            OUTLINED_FUNCTION_37();
          }

          v156 = v158 << 8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_32_2();
      }

      *(a2 + 132) = 0;
      if (v154 > 0xFF)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        OUTLINED_FUNCTION_31_2();
        v37 = 1463;
        goto LABEL_503;
      }

      v2 = v156 << v15;
      if (v154)
      {
        while (v2 >> 19)
        {
          OUTLINED_FUNCTION_5_20();
          if (v84 != v85)
          {
            if (v160 < 1)
            {
              v161 = v15 | v160;
              if (v161)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_6_13();
                v20 = 1467;
                goto LABEL_505;
              }
            }

            else if (v160 == 1)
            {
              v161 = *v11 << 24;
            }

            else
            {
              OUTLINED_FUNCTION_10_11();
              if (!v162)
              {
                OUTLINED_FUNCTION_37();
              }

              v161 = v163 << 8;
            }
          }

          else
          {
            OUTLINED_FUNCTION_32_2();
          }

          v2 = v161 << v15;
          if (v159 == 1)
          {
            goto LABEL_316;
          }
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v228 = 1467;
        goto LABEL_474;
      }
    }

    else if (!v133)
    {
      if (!(v2 >> 19))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v228 = 1443;
        goto LABEL_474;
      }

      OUTLINED_FUNCTION_18_7();
      *(a2 + 74) = v138;
      OUTLINED_FUNCTION_5_20();
      if (v84 != v85)
      {
        if (v140 < 1)
        {
          v141 = v15 | v140;
          if (v141)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v20 = 1443;
            goto LABEL_505;
          }
        }

        else if (v140 == 1)
        {
          v141 = *v11 << 24;
        }

        else
        {
          OUTLINED_FUNCTION_10_11();
          if (!v146)
          {
            OUTLINED_FUNCTION_37();
          }

          v141 = v147 << 8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_32_2();
      }

      if (v139 >= 0xD)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        OUTLINED_FUNCTION_31_2();
        v37 = 1444;
        goto LABEL_503;
      }

      v2 = v141 << v15;
      *(a2 + 132) = 16 << v139;
      *(a2 + 308) = 0;
      *(a2 + 300) = 0;
    }

LABEL_316:
    if (!(v2 >> 19))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v228 = 1472;
      goto LABEL_474;
    }

    OUTLINED_FUNCTION_0_54();
    *(a2 + 79) = v164;
    OUTLINED_FUNCTION_2_24();
    if (v84 != v85)
    {
      if (v165 < 1)
      {
        if (v15 | v165)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1472;
          goto LABEL_505;
        }
      }

      else if (v165 != 1)
      {
        OUTLINED_FUNCTION_8_15();
        if (!v166)
        {
          OUTLINED_FUNCTION_30_2();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_28_4();
    }

    OUTLINED_FUNCTION_48();
    *(a2 + 80) = v167;
    OUTLINED_FUNCTION_3_24();
    if (v84 != v85)
    {
      if (v168 < 1)
      {
        if (v15 | v168)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1473;
          goto LABEL_505;
        }
      }

      else if (v168 != 1)
      {
        OUTLINED_FUNCTION_8_15();
        if (!v169)
        {
          OUTLINED_FUNCTION_30_2();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_28_4();
    }

    OUTLINED_FUNCTION_39();
    if (!v170)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v228 = 1474;
      goto LABEL_474;
    }

    OUTLINED_FUNCTION_0_54();
    *(a2 + 81) = v171;
    OUTLINED_FUNCTION_2_24();
    if (v84 != v85)
    {
      if (v172 < 1)
      {
        if (v15 | v172)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1474;
          goto LABEL_505;
        }
      }

      else if (v172 != 1)
      {
        OUTLINED_FUNCTION_8_15();
        if (!v173)
        {
          OUTLINED_FUNCTION_30_2();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_28_4();
    }

    OUTLINED_FUNCTION_39();
    if (!v174)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v228 = 1475;
      goto LABEL_474;
    }

    OUTLINED_FUNCTION_0_54();
    *(a2 + 82) = v175;
    OUTLINED_FUNCTION_2_24();
    if (v84 != v85)
    {
      if (v176 < 1)
      {
        v177 = v15 | v176;
        if (v177)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1475;
          goto LABEL_505;
        }
      }

      else if (v176 == 1)
      {
        v177 = *v11 << 24;
      }

      else
      {
        OUTLINED_FUNCTION_8_15();
        if (!v178)
        {
          OUTLINED_FUNCTION_30_2();
        }

        v177 = v179 << 8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_28_4();
    }

    *(a2 + 83) = (v177 << v15) >> 31;
    OUTLINED_FUNCTION_5_20();
    if (v84 != v85)
    {
      if (v181 < 1)
      {
        v182 = v15 | v181;
        if (v182)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v20 = 1476;
          goto LABEL_505;
        }
      }

      else if (v181 == 1)
      {
        v182 = *v11 << 24;
      }

      else
      {
        OUTLINED_FUNCTION_10_11();
        if (!v183)
        {
          OUTLINED_FUNCTION_37();
        }

        v182 = v184 << 8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
    }

    v185 = v182 << v15;
    if (v180 < 0)
    {
      *(a2 + 84) = 0;
    }

    else
    {
      v6 = v238;
      if (v238)
      {
        return v6;
      }

      *(a2 + 84) = v185 >> 31;
      OUTLINED_FUNCTION_3_24();
      if (v84 != v85)
      {
        if (v186 < 1)
        {
          v187 = v15 | v186;
          if (v187)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v20 = 1480;
            goto LABEL_505;
          }
        }

        else if (v186 == 1)
        {
          v187 = *v11 << 24;
        }

        else
        {
          OUTLINED_FUNCTION_8_15();
          if (!v188)
          {
            OUTLINED_FUNCTION_30_2();
          }

          v187 = v189 << 8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_28_4();
      }

      v185 = v187 << v15;
    }

    v6 = v238;
    if (!v238)
    {
      *(a2 + 85) = v185 >> 31;
      OUTLINED_FUNCTION_3_24();
      if (v84 != v85)
      {
        if (v190 < 1)
        {
          v191 = v15 | v190;
          if (v191)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v20 = 1485;
            goto LABEL_505;
          }
        }

        else if (v190 == 1)
        {
          v191 = *v11 << 24;
        }

        else
        {
          OUTLINED_FUNCTION_8_15();
          if (!v192)
          {
            OUTLINED_FUNCTION_30_2();
          }

          v191 = v193 << 8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_28_4();
      }

      *(a2 + 86) = (v191 << v15) >> 31;
      OUTLINED_FUNCTION_5_20();
      if (v84 != v85)
      {
        if (v196 < 1)
        {
          v197 = v15 | v196;
          if (v197)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v20 = 1487;
            goto LABEL_505;
          }
        }

        else if (v196 == 1)
        {
          v197 = *v11 << 24;
        }

        else
        {
          OUTLINED_FUNCTION_10_11();
          if (!v198)
          {
            OUTLINED_FUNCTION_37();
          }

          v197 = v199 << 8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_32_2();
      }

      v2 = v197 << v15;
      if ((v195 & 0x80000000) == 0)
      {
        goto LABEL_456;
      }

      if (v2 >> 19)
      {
        OUTLINED_FUNCTION_0_54();
        *(a2 + 87) = v200;
        OUTLINED_FUNCTION_2_24();
        if (v84 != v85)
        {
          if (v201 < 1)
          {
            if (v15 | v201)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_13();
              v20 = 1490;
              goto LABEL_505;
            }
          }

          else if (v201 != 1)
          {
            OUTLINED_FUNCTION_8_15();
            if (!v202)
            {
              OUTLINED_FUNCTION_30_2();
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_28_4();
        }

        OUTLINED_FUNCTION_39();
        if (v203)
        {
          OUTLINED_FUNCTION_0_54();
          *(a2 + 88) = v204;
          OUTLINED_FUNCTION_2_24();
          if (v84 != v85)
          {
            if (v205 < 1)
            {
              if (v15 | v205)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_6_13();
                v20 = 1491;
                goto LABEL_505;
              }
            }

            else if (v205 != 1)
            {
              OUTLINED_FUNCTION_8_15();
              if (!v206)
              {
                OUTLINED_FUNCTION_30_2();
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_28_4();
          }

          OUTLINED_FUNCTION_39();
          if (v207)
          {
            OUTLINED_FUNCTION_0_54();
            *(a2 + 89) = v208;
            OUTLINED_FUNCTION_2_24();
            if (v84 != v85)
            {
              if (v209 < 1)
              {
                if (v15 | v209)
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_6_13();
                  v20 = 1492;
                  goto LABEL_505;
                }
              }

              else if (v209 != 1)
              {
                OUTLINED_FUNCTION_8_15();
                if (!v210)
                {
                  OUTLINED_FUNCTION_30_2();
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_28_4();
            }

            OUTLINED_FUNCTION_39();
            if (v211)
            {
              OUTLINED_FUNCTION_0_54();
              *(a2 + 90) = v212;
              OUTLINED_FUNCTION_2_24();
              if (v84 != v85)
              {
                if (v213 < 1)
                {
                  v214 = v15 | v213;
                  if (v214)
                  {
                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_6_13();
                    v20 = 1493;
                    goto LABEL_505;
                  }
                }

                else if (v213 == 1)
                {
                  v214 = *v11 << 24;
                }

                else
                {
                  OUTLINED_FUNCTION_8_15();
                  if (!v215)
                  {
                    OUTLINED_FUNCTION_30_2();
                  }

                  v214 = v216 << 8;
                }
              }

              else
              {
                OUTLINED_FUNCTION_28_4();
              }

              v2 = v214 << v15;
LABEL_456:
              *(a2 + 91) = v2 >> 31;
              v217 = v15 + 1;
              v15 = (v15 + 1) & 7;
              v11 += v217 >> 3;
              v218 = v194 - v11;
              if (v218 >= 4)
              {
                v219 = bswap32(*v11);
                goto LABEL_467;
              }

              if (v218 >= 1)
              {
                if (v218 == 1)
                {
                  v219 = *v11 << 24;
                }

                else
                {
                  OUTLINED_FUNCTION_33_2();
                  if (!v220)
                  {
                    v221 |= v11[2];
                  }

                  v219 = v221 << 8;
                }

                goto LABEL_467;
              }

              v219 = v15 | v218;
              if (!v219)
              {
LABEL_467:
                v222 = v219 << v15;
                if ((v2 & 0x80000000) == 0)
                {
LABEL_468:
                  v6 = 0;
                  *(v4 + 16) = v11;
                  *(v4 + 24) = v222;
                  *(v4 + 28) = v15;
                  return v6;
                }

                *(v4 + 16) = v11;
                *(v4 + 24) = v222;
                *(v4 + 28) = v15;
                if (*(v4 + 8) < v11 - *v4)
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_6_13();
                  OUTLINED_FUNCTION_31_2();
                  v37 = 1508;
                  goto LABEL_503;
                }

                v6 = PullVUIParamSet(v4, a2 + 92);
                v11 = *(v4 + 16);
                v2 = *(v4 + 24);
                LOBYTE(v15) = *(v4 + 28);
LABEL_471:
                v222 = v2;
                if (v6)
                {
                  return v6;
                }

                goto LABEL_468;
              }

              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_13();
              v20 = 1496;
LABEL_505:
              v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v20, v17, v18, v19);
              v2 = 0;
              goto LABEL_471;
            }

            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v228 = 1493;
          }

          else
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            v228 = 1492;
          }
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v228 = 1491;
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v228 = 1490;
      }

LABEL_474:
      v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v224, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v228, v225, v226, v227);
      goto LABEL_471;
    }
  }

  return v6;
}