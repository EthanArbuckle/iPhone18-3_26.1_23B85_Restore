size_t figTimebaseReflectNotification(int a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, const void *a5)
{
  v9 = FigCFEqual(cf1, @"CMTimebaseTimeJumped");
  result = FigCFEqual(cf1, @"CMTimebaseTimeAdjusted");
  if (a2)
  {
    v11 = result;
    FigReentrantMutexLock(*(a2 + 112));
    if (*(a2 + 24) == a4)
    {
      if (v9 | v11 || FigCFEqual(cf1, @"CMTimebaseEffectiveRateChanged"))
      {
        memset(&v37, 0, sizeof(v37));
        if (a5)
        {
          v12 = CFGetTypeID(a5);
          if (v12 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(a5, @"CMTimebaseEventTime");
            CMTimeMakeFromDictionary(&v37, Value);
          }
        }

        if ((v37.flags & 1) == 0)
        {
          OUTLINED_FUNCTION_17(*(a2 + 24), &v39);
          OUTLINED_FUNCTION_8_2(v14, v15, v16, v17, v18, v19, v20, v21, v37.value, *&v37.timescale, v37.epoch, v38, *&v39.value);
        }

        v39 = v37;
        EffectiveRate = CMTimebaseGetEffectiveRate(a2);
        v31 = *(a2 + 320);
        if (EffectiveRate > 0.0)
        {
          v32 = 1;
        }

        else
        {
          v32 = -1;
        }

        if (EffectiveRate == 0.0)
        {
          v32 = *(a2 + 320);
        }

        *(a2 + 320) = v32;
        if (v11)
        {
          v33 = 1;
        }

        else
        {
          v33 = v31 == v32;
        }

        v35 = v33 && v9 == 0;
        if (*(a2 + 280))
        {
          OUTLINED_FUNCTION_8_2(v22, v23, v24, v25, v26, v27, v28, v29, v37.value, *&v37.timescale, v37.epoch, v38, *&v39.value);
          rescheduleValidAndRemoveInvalidTimers(a2, &v37, v35);
        }

        if (*(a2 + 304))
        {
          OUTLINED_FUNCTION_8_2(v22, v23, v24, v25, v26, v27, v28, v29, v37.value, *&v37.timescale, v37.epoch, v38, *&v39.value);
          rescheduleValidAndRemoveCancelledTimerSources(a2, &v37, v35);
        }
      }

      FigReentrantMutexUnlock(*(a2 + 112));
      return figTimebasePostNotification(a2, cf1, a5);
    }

    else
    {
      v36 = *(a2 + 112);

      return FigReentrantMutexUnlock(v36);
    }
  }

  return result;
}

size_t figTimebaseSetAnchorTimeMaybeNowMaybeNotifying()
{
  OUTLINED_FUNCTION_27(&kCMTimeInvalid);
  if (!v0)
  {
    return 4294954548;
  }

  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = v0;
  result = figTimebaseVerifyReadWrite(v0, v1, v2, v3, v4, v5, v6, v7);
  if (!result)
  {
    FigReentrantMutexLock(*(v12 + 112));
    if (*(v12 + 184) != 0.0 || (figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(&time1, v12, 0, 0), OUTLINED_FUNCTION_13_0(), CMTimeCompare(&time1, &v38)))
    {
      if (v9)
      {
        figTimebaseGetMasterTime(&time1, v12);
        *v10 = time1;
        v42 = *v11;
        v43 = *(v11 + 16);
      }

      v21 = *&v10->value;
      *(v12 + 176) = v10->epoch;
      *(v12 + 160) = v21;
      v22 = *v11;
      *(v12 + 208) = *(v11 + 16);
      *(v12 + 192) = v22;
      *(v12 + 216) = 0;
      v23 = *(v12 + 184);
      if (v23 != 0.0)
      {
        *&v23 = FigSyncInvertTransform(v12 + 160, v12 + 224).n128_u64[0];
        if (!v24)
        {
          *(v12 + 216) = 1;
        }
      }

      if (!v9)
      {
        figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(&v42, v12, 0, 0);
      }

      if (*(v12 + 280))
      {
        OUTLINED_FUNCTION_0_18(v23, v14, v15, v16, v17, v18, v19, v20, *&v38.value, *&v38.timescale, *&v38.epoch, v39, *&time1.value, *&time1.timescale, *&time1.epoch, v41, *&v42);
        rescheduleValidAndRemoveInvalidTimers(v12, v25, 0);
      }

      if (*(v12 + 304))
      {
        OUTLINED_FUNCTION_0_18(v23, v14, v15, v16, v17, v18, v19, v20, *&v38.value, *&v38.timescale, *&v38.epoch, v39, *&time1.value, *&time1.timescale, *&time1.epoch, v41, *&v42);
        rescheduleValidAndRemoveCancelledTimerSources(v12, v26, 0);
      }

      FigReentrantMutexUnlock(*(v12 + 112));
      if (v8 == 1)
      {
        CFGetAllocator(v12);
        OUTLINED_FUNCTION_0_18(v27, v28, v29, v30, v31, v32, v33, v34, *&v38.value, *&v38.timescale, *&v38.epoch, v39, *&time1.value, *&time1.timescale, *&time1.epoch, v41, *&v42);
        PayloadForNotificationAtTime = figTimebaseCreatePayloadForNotificationAtTime(v35, v36);
        OUTLINED_FUNCTION_20(PayloadForNotificationAtTime, @"CMTimebaseTimeJumped");
        if (PayloadForNotificationAtTime)
        {
          CFRelease(PayloadForNotificationAtTime);
        }
      }
    }

    else
    {
      FigReentrantMutexUnlock(*(v12 + 112));
    }

    return 0;
  }

  return result;
}

size_t figTimebaseCreate_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC298, 0xFFFFCE32uLL, "<<< timebase >>>", a1, v8, a7, a8);
  *a2 = result;
  return result;
}

double CMTimebaseGetTimeAndHostClockTimePairClampedAboveAnchorTime_cold_1(CMTime *a1, void *a2, CMTime *a3)
{
  OUTLINED_FUNCTION_17(a2, a1);
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v6, HostTimeClock);
  result = *&v6.value;
  *a3 = v6;
  return result;
}

size_t CMTimebaseGetTimeAndHostClockTimePairClampedAboveAnchorTime_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC298, 0xFFFFCE2FuLL, "<<< timebase >>>", 0xF8D, v8, a7, a8);
  *a1 = result;
  return result;
}

void figTimebaseGetTimeAtMasterTime_cold_1(void *a1, CMTime *a2)
{
  v4 = FigTimebaseCopyTargetTimebase(a1);
  OUTLINED_FUNCTION_19(v4);
  if (CMTimebaseGetRate(v2) == 0.0)
  {
    v5 = *(v2 + 192);
    a2->epoch = *(v2 + 208);
    *&a2->value = v5;
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
    FigSyncApplyTransform(&v6, v2 + 160, a2);
  }

  a2->flags &= ~2u;
  FigReentrantMutexUnlock(*(v2 + 112));
  CFRelease(v2);
}

void fpm_globalPerformanceMonitorInitOnce()
{
  cf = 0;
  v1 = *MEMORY[0x1E695E480];
  FigThreadRunOnce(&FigPerformanceMonitorGetClassID_sRegisterFigPerformanceMonitorBaseTypeOnce, RegisterFigPerformanceMonitorBaseType);
  if (CMDerivedObjectCreate(v1, &kFigPerformanceMonitor_VTable, _MergedGlobals_13, &cf, v2, v3, v4, v5))
  {
    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  if (!DerivedStorage)
  {
    goto LABEL_15;
  }

  v7 = DerivedStorage;
  v8 = dispatch_queue_create("com.apple.coremedia.figperfmonitor.state", 0);
  *(v7 + 8) = v8;
  if (!v8)
  {
    v28 = qword_1EAF1CD80;
    v29 = v0;
    v30 = 866;
LABEL_23:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFCE0EuLL, "< FigPerformanceMonitor >", v30, v29, v9, v10);
    goto LABEL_15;
  }

  v11 = v8;
  v12 = FigCFWeakReferenceHolderCreateWithReferencedObject(cf);
  if (!v12)
  {
    OUTLINED_FUNCTION_0_19();
    if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFCE0EuLL, "< FigPerformanceMonitor >", 0x244, v32, v33, v34))
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v13 = v12;
  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
  if (v14)
  {
    v15 = v14;
    v16 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v15, v16, 0x6FC23AC00uLL, 0x3B9ACA00uLL);
    v17 = CFRetain(v13);
    dispatch_set_context(v15, v17);
    dispatch_source_set_event_handler_f(v15, fpm_timerCallback);
    dispatch_source_set_cancel_handler_f(v15, fpm_timerCancellationCallback);
    dispatch_resume(v15);
    v18 = 0;
    *v7 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_0_19();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 0xFFFFCE0EuLL, "< FigPerformanceMonitor >", 0x247, v36, v37, v38);
  }

  CFRelease(v13);
  if (!v18)
  {
LABEL_8:
    v19 = CFUUIDCreate(v1);
    if (v19)
    {
      v20 = v19;
      v21 = CFUUIDCreateString(v1, v19);
      *(v7 + 664) = v21;
      if (v21)
      {
        v22 = getpid();
        *(v7 + 16) = v22;
        proc_name(v22, (v7 + 20), 0x21u);
        v23 = objc_alloc_init(MEMORY[0x1E6999540]);
        *(v7 + 584) = v23;
        if (v23)
        {
          *(v7 + 56) = arc4random();
          v24 = objc_autoreleasePoolPush();
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __fpm_performanceMonitorCreate_block_invoke;
          v45[3] = &__block_descriptor_40_e5_v8__0l;
          v45[4] = v7;
          [*(v7 + 584) setScreenOnChangedHandler:v45];
          v25 = *(v7 + 584);
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __fpm_performanceMonitorCreate_block_invoke_3;
          v44[3] = &__block_descriptor_40_e5_v8__0l;
          v44[4] = v7;
          [v25 activateWithCompletion:v44];
          objc_autoreleasePoolPop(v24);
          Mutable = CFArrayCreateMutable(v1, 0, MEMORY[0x1E695E9C0]);
          *(v7 + 64) = Mutable;
          if (Mutable)
          {
            v27 = CFDictionaryCreateMutable(v1, 0, 0, MEMORY[0x1E695E9E8]);
            *(v7 + 672) = v27;
            if (v27)
            {
              qword_1ED4CC518 = cf;
              cf = 0;
LABEL_14:
              CFRelease(v20);
              goto LABEL_15;
            }

            OUTLINED_FUNCTION_0_19();
            v43 = 905;
          }

          else
          {
            OUTLINED_FUNCTION_0_19();
            v43 = 902;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_19();
          v43 = 882;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_19();
        v43 = 875;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 0xFFFFCE0EuLL, "< FigPerformanceMonitor >", v43, v40, v41, v42);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_19();
    v30 = 872;
    goto LABEL_23;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }
}

size_t __FigPerformanceMonitorUpdateOSTransactionData_block_invoke_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB582uLL, "< FigPerformanceMonitor >", 0x1A0, v8, a7, a8);
  *a1 = result;
  return result;
}

void fpm_timerCallback_cold_1(uint64_t a1, void *a2, CFIndex a3, CFArrayRef *a4)
{
  v8 = 0;
  v9 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a4, v8);
    Value = FigCFDictionaryGetValue(ValueAtIndex);
    v12 = FigCFWeakReferenceHolderCopyReferencedObject(Value);
    FigCFDictionaryGetInt64IfPresent(ValueAtIndex, @"creationTime", a2, v13, v14, v15, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    if (v12)
    {
      v18 = FigGetUpTimeNanoseconds() - *a2;
      if (v18 > v9)
      {
        v19 = *(a1 + 632);
        v20 = FigCFDictionaryGetValue(ValueAtIndex);
        *(a1 + 632) = v20;
        if (v20)
        {
          CFRetain(v20);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        v9 = v18;
      }

      ++v8;
      CFRelease(v12);
    }

    else
    {
      CFArrayRemoveValueAtIndex(*a4, v8);
      --a3;
    }
  }

  while (v8 < a3);
  *(a1 + 624) = v9 / 0x3B9ACA00uLL;
}

size_t fpm_timerCallback_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB582uLL, "< FigPerformanceMonitor >", 0x11C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t fpm_timerCallback_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB582uLL, "< FigPerformanceMonitor >", 0x119, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t fpm_timerCallback_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB582uLL, "< FigPerformanceMonitor >", 0xF9, v8, a7, a8);
  *a1 = result;
  return result;
}

void fpm_timerCallback_cold_5()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkRTCReportingSessionInfoContainsRealtimeEvents(void)") description:{@"FigPerformanceMonitor.m", 93, @"%s", dlerror()}];
  __break(1u);
}

void fpm_timerCallback_cold_6()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkRTCReportingSessionInfoSessionID(void)") description:{@"FigPerformanceMonitor.m", 90, @"%s", dlerror()}];
  __break(1u);
}

void fpm_timerCallback_cold_7()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkRTCReportingSessionInfoClientType(void)") description:{@"FigPerformanceMonitor.m", 87, @"%s", dlerror()}];
  __break(1u);
}

void fpm_timerCallback_cold_9()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkRTCReportingUserInfoClientName(void)") description:{@"FigPerformanceMonitor.m", 96, @"%s", dlerror()}];
  __break(1u);
}

size_t fpm_timerCallback_cold_10(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB582uLL, "< FigPerformanceMonitor >", 0x165, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t fpm_reportingDataForInternalUsingCoreAnalytics_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB57DuLL, "< FigPerformanceMonitor >", 0x156, v8, a7, a8);
  *a1 = result;
  return result;
}

void RTCReportingLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *RTCReportingLibrary(void)") description:{@"FigPerformanceMonitor.m", 84, @"%s", *a1}];
  __break(1u);
}

void __getRTCReportingClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getRTCReportingClass(void)_block_invoke") description:{@"FigPerformanceMonitor.m", 85, @"Unable to find class %s", "RTCReporting"}];
  __break(1u);
}

uint64_t metserver_replyingMessageHandler(_xpc_connection_s *a1, void *a2, void *a3)
{
  HIDWORD(v72) = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v72 + 1);
  if (OpCode)
  {
    return OpCode;
  }

  switch(HIDWORD(v72))
  {
    case 0x63726574:
      v74 = 0;
      v75 = 0;
      cf = 0;
      int64 = xpc_dictionary_get_int64(a2, "MaxNoOfClasses");
      array = xpc_dictionary_get_array(a2, "EventCountByClassXPCArray");
      if (array)
      {
        v18 = array;
        MallocZoneForMedia = FigGetMallocZoneForMedia();
        v20 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 8 * int64, 0x100004000313F17uLL);
        if (v20)
        {
          v21 = v20;
          if (xpc_array_get_count(v18))
          {
            v22 = 0;
            do
            {
              v21[v22] = xpc_array_get_int64(v18, v22);
              ++v22;
            }

            while (v22 < xpc_array_get_count(v18));
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          v24 = FigMetricEventTimelineCreate(AllocatorForMedia, int64, v21, @"metricEventTimeline", 0, &v75);
          if (!v24)
          {
            v25 = FigGetAllocatorForMedia();
            v26 = metserver_createCompanion(v25, &cf);
            v27 = cf;
            if (v26)
            {
              v15 = v26;
            }

            else
            {
              v15 = FigXPCServerAssociateObjectWithConnection(a1, v75, cf, FigCFRelease, 0, &v74);
              if (!v15)
              {
                v28 = FigXPCRetain(a1);
                v30 = cf;
                v29 = v74;
                *(cf + 2) = v28;
                v30[3] = v29;
                xpc_dictionary_set_uint64(a3, ".objectID", v29);
                cf = 0;
                goto LABEL_19;
              }

              v27 = cf;
            }

            if (v27)
            {
              CFRelease(v27);
            }

LABEL_19:
            v31 = v75;
            if (!v75)
            {
              return v15;
            }

            goto LABEL_50;
          }

LABEL_55:
          v15 = v24;
          goto LABEL_19;
        }

        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v70 = v3;
        v71 = 175;
      }

      else
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v70 = v3;
        v71 = 172;
      }

      v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB405uLL, "metricevent", v71, v70, v68, v69);
      goto LABEL_55;
    case 0x64697370:
      uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
      return FigXPCServerDisassociateObjectWithConnection(a1, uint64);
    case 0x636C7369:
      v74 = 0;
      v75 = 0;
      v39 = xpc_dictionary_get_int64(a2, "ClassID");
      v33 = OUTLINED_FUNCTION_1_10(v39, v40, v41, v42, v43, v44, v45, v46, v72, cf, v74, v75);
      if (!v33)
      {
        if (*(*(CMBaseObjectGetVTable(v75) + 16) + 24))
        {
LABEL_41:
          v64 = OUTLINED_FUNCTION_2_9();
          v33 = v65(v64);
          goto LABEL_42;
        }

LABEL_43:
        v15 = 4294954514;
        goto LABEL_47;
      }

LABEL_42:
      v15 = v33;
      goto LABEL_47;
  }

  if (HIDWORD(v72) != 1886741107)
  {
    switch(HIDWORD(v72))
    {
      case 0x72656773:
        v33 = OUTLINED_FUNCTION_1_10(0, v8, v9, v10, v11, v12, v13, v14, v72, cf, 0, 0);
        if (!v33)
        {
          v34 = v74;
          if (!*(v74 + 2))
          {
            v35 = FigXPCRetain(a1);
            v34 = v74;
            *(v74 + 2) = v35;
          }

          v36 = v75;
          v37 = v34[4];
          v38 = *(*(CMBaseObjectGetVTable(v75) + 16) + 8);
          if (!v38)
          {
            goto LABEL_43;
          }

          v33 = v38(v36, v34, &metserver_registerSubscriber_subscriberCallbacks, v37);
        }

        break;
      case 0x73657669:
        v74 = 0;
        v75 = 0;
        v56 = xpc_dictionary_get_int64(a2, "EventID");
        v33 = OUTLINED_FUNCTION_1_10(v56, v57, v58, v59, v60, v61, v62, v63, v72, cf, v74, v75);
        if (!v33)
        {
          if (*(*(CMBaseObjectGetVTable(v75) + 16) + 16))
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }

        break;
      case 0x73746165:
        v33 = OUTLINED_FUNCTION_1_10(0, v8, v9, v10, v11, v12, v13, v14, v72, cf, 0, 0);
        if (v33)
        {
          goto LABEL_42;
        }

        if (*(*(CMBaseObjectGetVTable(v75) + 16) + 32))
        {
          goto LABEL_41;
        }

        goto LABEL_43;
      default:
        return 4294951138;
    }

    goto LABEL_42;
  }

  v47 = OUTLINED_FUNCTION_1_10(0, v8, v9, v10, v11, v12, v13, v14, v72, 0, 0, 0);
  if (v47)
  {
    goto LABEL_35;
  }

  v47 = FigMetricEventTimelineClientServerXPC_DeserializeAndCopyEvent(a2, &cf, v48, v49, v50, v51, v52, v53);
  if (v47)
  {
    goto LABEL_35;
  }

  if (*(*(CMBaseObjectGetVTable(v75) + 16) + 40))
  {
    v54 = OUTLINED_FUNCTION_2_9();
    v47 = v55(v54);
LABEL_35:
    v15 = v47;
    goto LABEL_45;
  }

  v15 = 4294954514;
LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_47:
  if (v75)
  {
    CFRelease(v75);
  }

  v31 = v74;
  if (v74)
  {
LABEL_50:
    CFRelease(v31);
  }

  return v15;
}

void metserver_didReceiveEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  message = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
LABEL_8:
    v6 = 0;
    goto LABEL_7;
  }

  v8 = FigXPCCreateBasicMessage(0x65766E74u, v6, &message);
  v6 = message;
  if (!v8)
  {
    v14 = FigMetricEventTimelineClientServerXPC_SerializeEvent(message, a2, a4, v9, v10, v11, v12, v13);
    v6 = message;
    if (!v14)
    {
      xpc_connection_send_message(*(a1 + 16), message);
      v6 = message;
    }
  }

LABEL_7:
  FigXPCRelease(v6);
}

size_t metserver_copyEventTimelineAndCompanion(_xpc_connection_s *a1, xpc_object_t xdict, CFTypeRef *a3, void *a4)
{
  cf = 0;
  v17 = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
  if (!uint64)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0x8E, v4, v14, v15);
    goto LABEL_14;
  }

  v9 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &v17, &cf);
  if (v9)
  {
LABEL_14:
    v11 = v9;
    goto LABEL_10;
  }

  if (a3)
  {
    *a3 = v17;
    v17 = 0;
  }

  if (a4)
  {
    v10 = cf;
    if (cf)
    {
      v10 = CFRetain(cf);
    }

    v11 = 0;
    *a4 = v10;
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  if (v17)
  {
    CFRelease(v17);
  }

  return v11;
}

void __FigMetricEventTimelineStartServer_block_invoke_cold_1(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  FigCFDictionarySetInt32(a1, @"xpcServerOption_QueuePriority", 44, a4, a5, a6, a7, a8);
  *(*(*a3 + 8) + 24) = FigXPCServerStart("com.apple.coremedia.mediaplaybackd.figmetriceventtimeline.xpc", a2, a1, &gFigMetricEventTimelineServer);
  if (!*(*(*a3 + 8) + 24))
  {
    FigXPCServerActivate(gFigMetricEventTimelineServer);
  }

  CFRelease(a1);
}

size_t __FigMetricEventTimelineStartServer_block_invoke_cold_2(uint64_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB405uLL, "metricevent", 0x1A1, v3, v4, v5);
  *(*(*a1 + 8) + 24) = result;
  return result;
}

size_t FigMetricEventTimelineGetIDByAssociatingWithClientConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB406uLL, "metricevent", 0x1B8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineGetIDByAssociatingWithClientConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB406uLL, "metricevent", 0x1B7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineGetIDByAssociatingWithClientConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB406uLL, "metricevent", 0x1B6, v3, v4, v5);
  *a1 = result;
  return result;
}

void metserver_createCompanion_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFB405uLL, "metricevent", 0x7C, v5, v6, v7);
  CFRelease(a1);
}

size_t metserver_createCompanion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB405uLL, "metricevent", 0x79, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t metserver_createCompanion_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB406uLL, "metricevent", 0x76, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t fontFamilyList_Equal(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  OUTLINED_FUNCTION_1_11(&FigCaptionFontFamilyNameListGetTypeID_sRegisterFigCaptionFontFamilyNameListTypeOnce);
  if (!a2)
  {
    return 0;
  }

  if (v4 != sFigCaptionFontFamilyNameListID)
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  OUTLINED_FUNCTION_1_11(&FigCaptionFontFamilyNameListGetTypeID_sRegisterFigCaptionFontFamilyNameListTypeOnce);
  if (v5 != sFigCaptionFontFamilyNameListID)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];

  return CFEqual(v6, v7);
}

CFHashCode fontFamilyList_Hash(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  OUTLINED_FUNCTION_1_11(&FigCaptionFontFamilyNameListGetTypeID_sRegisterFigCaptionFontFamilyNameListTypeOnce);
  if (v2 != sFigCaptionFontFamilyNameListID)
  {
    return 0;
  }

  v3 = a1[2];

  return CFHash(v3);
}

size_t FigCaptionFontFamilyNameListCreateMutable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0xC2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListCreateMutable_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0xBA, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigCaptionFontFamilyNameListCreateMutableCopy_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE0EuLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0xE3, v5, v6, v7);

  CFRelease(a1);
}

size_t FigCaptionFontFamilyNameListCreateMutableCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0xE0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListCreateMutableCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0xD8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListAppend_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x105, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListAppend_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x104, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListAppend_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x101, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x11E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x11F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x11D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCPECryptorRemoteRetainCopiedCryptor(uint64_t a1, const void *a2, void *a3)
{
  v25 = 0;
  if (a2)
  {
    if (a3)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2000000000;
      v30 = 0;
      cf[0] = MEMORY[0x1E69E9820];
      cf[1] = 0x40000000;
      cf[2] = __cryptorRemote_EnsureClientEstablished_block_invoke;
      cf[3] = &unk_1E749ED60;
      cf[4] = &v27;
      if (qword_1ED4CC528 != -1)
      {
        dispatch_once(&qword_1ED4CC528, cf);
      }

      FigXPCRemoteClientKillServerOnTimeout(_MergedGlobals_14, *(v28 + 6), "cryptorRemote_EnsureClientEstablished", 0);
      v6 = *(v28 + 6);
      _Block_object_dispose(&v27, 8);
      if (v6)
      {
        return v6;
      }

      v6 = FigXPCRemoteClientRetainCopiedObject(_MergedGlobals_14, a2, &v25);
      v7 = v25;
      if (v6)
      {
        goto LABEL_17;
      }

      if (v25)
      {
LABEL_15:
        v6 = 0;
        *a3 = v7;
        return v6;
      }

      cf[0] = 0;
      ClassID = FigCPECryptorGetClassID();
      v13 = CMDerivedObjectCreate(a1, &kFigCPECryptorRemote_VTable, ClassID, cf, v9, v10, v11, v12);
      if (!v13)
      {
        if (cf[0])
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage(cf[0]);
          *(DerivedStorage + 8) = a2;
          *DerivedStorage = 0;
          *(DerivedStorage + 16) = 0;
          *(DerivedStorage + 24) = 0;
          *(DerivedStorage + 32) = 0;
          *(DerivedStorage + 48) = FigSimpleMutexCreate();
          v6 = FigXPCRemoteClientAssociateObject(_MergedGlobals_14, cf[0], a2);
          if (!v6)
          {
            v25 = CFRetain(cf[0]);
          }

LABEL_12:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          v7 = v25;
          if (!v6)
          {
            goto LABEL_15;
          }

LABEL_17:
          if (v7)
          {
            CFRelease(v7);
          }

          return v6;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 0xFFFFBB5DuLL, "<<< FigCPECryptorRemote >>>", 0x2C6, v22, v23, v24);
      }

      v6 = v13;
      goto LABEL_12;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v20 = 738;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v20 = 737;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFCE14uLL, "<<< FigCPECryptorRemote >>>", v20, v17, v18, v19);
}

size_t FigCPECryptorRemoteGetID(uint64_t a1, void *a2)
{
  v9 = 0;
  if (a1)
  {
    if (a2)
    {
      result = cryptorRemote_GetObjectID(a1, &v9);
      if (!result)
      {
        *a2 = v9;
      }

      return result;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v8 = 766;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v8 = 765;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", v8, v5, v6, v7);
}

uint64_t cryptorRemote_Invalidate(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  ObjectID = cryptorRemote_GetObjectID(a1, &v7);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x69637279u, v7, &v6), ObjectID))
  {
    v4 = ObjectID;
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessage(_MergedGlobals_14, v6);
    if (!v4)
    {
      *DerivedStorage = 1;
    }
  }

  FigXPCRelease(v6);
  return v4;
}

uint64_t cryptorRemote_Finalize(uint64_t a1)
{
  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigXPCRemoteClientDisassociateObject(_MergedGlobals_14, *(DerivedStorage + 8));
  if (!*(DerivedStorage + 1) && ((v2 = FigXPCCreateBasicMessage(0x64697370u, *(DerivedStorage + 8), &v6), v2) || (v2 = FigXPCRemoteClientSendAsyncMessage(_MergedGlobals_14, v6), v2)))
  {
    v4 = v2;
  }

  else
  {
    FigSimpleMutexDestroy(*(DerivedStorage + 48));
    v3 = *(DerivedStorage + 40);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = 0;
  }

  FigXPCRelease(v6);
  return FigXPCRemoteClientKillServerOnTimeout(_MergedGlobals_14, v4, "cryptorRemote_Finalize", 0);
}

size_t cryptorRemote_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v26 = 0;
  if (a4)
  {
    v9 = DerivedStorage;
    ObjectID = cryptorRemote_GetObjectID(a1, &v26);
    if (!ObjectID)
    {
      if (CFEqual(a2, @"UUIDString"))
      {
        FigSimpleMutexLock(*(v9 + 48));
        v19 = (v9 + 40);
        if (*(v9 + 40))
        {
          FigSimpleMutexUnlock(*(v9 + 48));
LABEL_9:
          v21 = *v19;
          if (*v19)
          {
            v21 = CFRetain(v21);
          }

          v20 = 0;
          *a4 = v21;
          return v20;
        }

        v20 = FigXPCSendStdCopyPropertyMessage(_MergedGlobals_14, v26, @"UUIDString", v9 + 40, v15, v16, v17, v18);
        FigSimpleMutexUnlock(*(v9 + 48));
        if (!v20)
        {
          goto LABEL_9;
        }

        return v20;
      }

      return FigXPCSendStdCopyPropertyMessage(_MergedGlobals_14, v26, a2, a4, v11, v12, v13, v14);
    }

    return ObjectID;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x1E8, v4, v24, v25);
}

uint64_t cryptorRemote_SetProperty(uint64_t a1, const void *a2, void *a3)
{
  v32 = 0;
  if (a2)
  {
    if (a3)
    {
      ObjectID = cryptorRemote_GetObjectID(a1, &v32);
      if (!ObjectID)
      {
        if (CFEqual(a2, @"KeyRequestError"))
        {
          v6 = CFGetTypeID(a3);
          if (v6 == CFErrorGetTypeID())
          {
            OUTLINED_FUNCTION_2_10();
            v9 = FigXPCCreateBasicMessage(0x736B7272u, v7, v8);
            if (v9)
            {
              goto LABEL_19;
            }

            v9 = FigXPCMessageSetCFError(*v33, "KeyRequestError", a3);
            if (v9)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v31 = 456;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", v31, v28, v29, v30);
        }

        if (CFEqual(a2, @"CPEBAESCP_VideoFormatDescription"))
        {
          v10 = CFGetTypeID(a3);
          if (v10 == CMFormatDescriptionGetTypeID())
          {
            OUTLINED_FUNCTION_2_10();
            v9 = FigXPCCreateBasicMessage(0x73666D74u, v11, v12);
            if (v9)
            {
              goto LABEL_19;
            }

            v9 = FigXPCMessageSetFormatDescription(*v33, "FormatDescription", a3);
            if (v9)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v31 = 461;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", v31, v28, v29, v30);
        }

        if (CFEqual(a2, @"CPEAESCP_SUBAUXDATA"))
        {
          v17 = CFGetTypeID(a3);
          if (v17 == CFDataGetTypeID())
          {
            OUTLINED_FUNCTION_2_10();
            v9 = FigXPCCreateBasicMessage(0x73736164u, v18, v19);
            if (v9)
            {
              goto LABEL_19;
            }

            v9 = FigXPCMessageSetCFData(*v33, "SubsampleAuxiliaryData", a3);
            if (v9)
            {
              goto LABEL_19;
            }

LABEL_18:
            v9 = FigXPCRemoteClientSendSyncMessage(_MergedGlobals_14, *v33);
LABEL_19:
            v20 = v9;
            FigXPCRelease(*v33);
            return v20;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v31 = 466;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", v31, v28, v29, v30);
        }

        return FigXPCSendStdSetPropertyMessage(_MergedGlobals_14, v32, a2, a3, v13, v14, v15, v16);
      }

      return ObjectID;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v26 = 450;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v26 = 449;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", v26, v23, v24, v25);
}

size_t cryptorRemote_getNativeSession(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    if (a2)
    {
      v5 = DerivedStorage;
      result = cryptorRemote_ensureStateUpdatedFromServer(a1);
      if (!result)
      {
        *a2 = *(v5 + 24);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x330, v8, v9, v10);
  }

  return result;
}

size_t cryptorRemote_getExternalProtectionMethods(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    if (a2)
    {
      v5 = DerivedStorage;
      result = cryptorRemote_ensureStateUpdatedFromServer(a1);
      *a2 = *(v5 + 32);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x340, v8, v9, v10);
  }

  return result;
}

unint64_t cryptorRemote_CreateKeyRequest(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, *v15, v16);
  if (!v10)
  {
    v10 = FigXPCCreateBasicMessage(0x636B6579u, v16, v15);
    if (!v10)
    {
      v10 = FigXPCMessageSetCFDictionary(*v15, "KeyRequestData", a2);
      if (!v10)
      {
        v10 = FigXPCRemoteClientSendSyncMessageCreatingReply(_MergedGlobals_14, *v15, &v14);
        if (!v10)
        {
          v10 = FigXPCMessageCopyCFData(v14, "SPCBytes", a4);
        }
      }
    }
  }

  v11 = v10;
  FigXPCRelease(*v15);
  FigXPCRelease(v14);
  return v11;
}

uint64_t cryptorRemote_SetKeyRequestResponse(uint64_t a1, const void *a2, void *a3)
{
  *v10 = 0;
  v11 = 0;
  ObjectID = cryptorRemote_GetObjectID(a1, &v11);
  if (ObjectID)
  {
    v8 = ObjectID;
    v7 = 0;
  }

  else
  {
    v6 = FigXPCCreateBasicMessage(0x736B6579u, v11, v10);
    v7 = *v10;
    if (v6 || (v6 = FigXPCMessageSetCFData(*v10, "KeyRequestResponse", a2), v7 = *v10, v6) || (v6 = FigXPCMessageSetCFDictionary(*v10, "KeyResponseOptionsDictionary", a3), v7 = *v10, v6))
    {
      v8 = v6;
    }

    else
    {
      v8 = FigXPCRemoteClientSendSyncMessage(_MergedGlobals_14, *v10);
      v7 = *v10;
    }
  }

  FigXPCRelease(v7);
  return v8;
}

size_t cryptorRemote_GetSerializationToken(uint64_t a1, void *a2)
{
  v8 = 0;
  if (a2)
  {
    result = cryptorRemote_GetObjectID(a1, &v8);
    if (!result)
    {
      *a2 = v8;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x174, v5, v6, v7);
  }

  return result;
}

unint64_t cryptorRemote_CopyPropertyForFormat(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __CFDictionary **a5)
{
  *v16 = 0;
  v17 = 0;
  v15 = 0;
  if (a5)
  {
    ObjectID = cryptorRemote_GetObjectID(a1, &v17);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage(0x63706666u, v17, v16);
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageSetCFString(*v16, ".PropertyName", a2);
        if (!ObjectID)
        {
          FigXPCMessageSetUInt32(*v16, "Format", a3);
          ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(_MergedGlobals_14, *v16, &v15);
          if (!ObjectID)
          {
            ObjectID = FigXPCMessageCopyCFObject(v15, ".Value", a5);
          }
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x20A, v5, v13, v14);
  }

  v10 = ObjectID;
  FigXPCRelease(*v16);
  FigXPCRelease(v15);
  return v10;
}

uint64_t cryptorRemote_TestAndSetKeyRequestState(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v11 = a2;
  v12 = OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, xdict, v18);
  if (v12 || (v12 = FigXPCCreateBasicMessage(0x74617373u, v18, &xdict), v12) || (xpc_dictionary_set_int64(xdict, "ExpectedState", v11), xpc_dictionary_set_int64(xdict, "NewState", v10), v12 = FigXPCRemoteClientSendSyncMessageCreatingReply(_MergedGlobals_14, xdict, &v16), v12))
  {
    v13 = v12;
  }

  else
  {
    if (a4)
    {
      *a4 = xpc_dictionary_get_BOOL(v16, "WasSetOutFlag");
    }

    v13 = 0;
    if (a5)
    {
      *a5 = xpc_dictionary_get_uint64(v16, "KeyRequestIDOut");
    }
  }

  FigXPCRelease(xdict);
  FigXPCRelease(v16);
  return v13;
}

uint64_t cryptorRemote_AbsorbKeyRequestContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectID = OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6, a7, a8, v13, xdict, value, v16);
  if (ObjectID || (ObjectID = cryptorRemote_GetObjectID(a2, &value), ObjectID))
  {
    v10 = ObjectID;
    v11 = 0;
  }

  else
  {
    v10 = FigXPCCreateBasicMessage(0x616B7263u, v16, &xdict);
    v11 = xdict;
    if (!v10)
    {
      xpc_dictionary_set_uint64(xdict, "FromCryptorID", value);
      v10 = FigXPCRemoteClientSendSyncMessage(_MergedGlobals_14, xdict);
      v11 = xdict;
    }
  }

  FigXPCRelease(v11);
  return v10;
}

uint64_t cryptorRemote_setKeyResponseForAirPlay(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  xdict = 0;
  v13 = 0;
  ObjectID = cryptorRemote_GetObjectID(a1, &v13);
  if (ObjectID)
  {
    v10 = ObjectID;
    v9 = 0;
  }

  else
  {
    v8 = FigXPCCreateBasicMessage(0x736B6170u, v13, &xdict);
    v9 = xdict;
    if (v8 || (xpc_dictionary_set_uint64(xdict, "SessionID", a2), v8 = FigXPCMessageSetCFData(xdict, "KeyRequestResponse", a3), v9 = xdict, v8) || (v8 = FigXPCMessageSetCFDictionary(xdict, "KeyResponseOptionsDictionary", a4), v9 = xdict, v8))
    {
      v10 = v8;
    }

    else
    {
      v10 = FigXPCRemoteClientSendSyncMessage(_MergedGlobals_14, xdict);
      v9 = xdict;
    }
  }

  FigXPCRelease(v9);
  FigXPCRelease(0);
  return v10;
}

size_t cryptorRemote_copySerializedCryptorRecipe(uint64_t a1, CFDataRef *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    if (a2)
    {
      v6 = DerivedStorage;
      result = cryptorRemote_ensureStateUpdatedFromServer(a1);
      if (!result)
      {
        v15 = *(v6 + 24);
        v8 = *(v6 + 32);
        *&v9 = v8;
        *(&v9 + 1) = HIDWORD(v8);
        v16 = v9;
        v10 = CFDataCreate(*MEMORY[0x1E695E480], &v15, 24);
        if (v10)
        {
          v11 = v10;
          result = 0;
          *a2 = v11;
        }

        else
        {
          return 4294949725;
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
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x352, v2, v13, v14);
  }

  return result;
}

size_t cryptorRemote_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5BuLL, "<<< FigCPECryptorRemote >>>", 0xA5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t cryptorRemote_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5AuLL, "<<< FigCPECryptorRemote >>>", 0xA6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t cryptorRemote_GetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0xA4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t cryptorRemote_ensureStateUpdatedFromServer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5BuLL, "<<< FigCPECryptorRemote >>>", 0x311, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t cryptorRemote_ensureStateUpdatedFromServer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5AuLL, "<<< FigCPECryptorRemote >>>", 0x312, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMetricEventClassInstallEventDeserializeHandler(uint64_t a1, uint64_t a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  SInt64 = FigCFNumberCreateSInt64(AllocatorForMedia, a1);
  if (!a2)
  {
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDA0, 0xFFFFB3FCuLL, "metricevent", 0xA0, v2, v6, v7);
    goto LABEL_12;
  }

  if (qword_1ED4CC540 != -1)
  {
    dispatch_once(&qword_1ED4CC540, &__block_literal_global_12);
  }

  v9 = dword_1ED4CC534;
  if (!dword_1ED4CC534)
  {
    FigGetAllocatorForMedia();
    v15 = xmmword_1E749EE00;
    if (qword_1ED4CC548 != -1)
    {
      dispatch_once_f(&qword_1ED4CC548, &v15, metutil_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    v13 = Instance;
    if (Instance)
    {
      *(Instance + 16) = a2;
    }

    else
    {
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDA0, 0xFFFFB3FBuLL, "metricevent", 0x90, v2, v11, v12);
      if (v9)
      {
        goto LABEL_12;
      }
    }

    os_unfair_lock_lock(&_MergedGlobals_15);
    FigCFDictionarySetValue(qword_1ED4CC538, SInt64, v13);
    os_unfair_lock_unlock(&_MergedGlobals_15);
    if (v13)
    {
      CFRelease(v13);
    }

    v9 = 0;
  }

LABEL_12:
  if (SInt64)
  {
    CFRelease(SInt64);
  }

  return v9;
}

size_t FigMetricEventDeserializeEventAndCopy(void *a1, CFTypeRef *a2)
{
  cf = 0;
  int64 = xpc_dictionary_get_int64(a1, "EventID");
  AllocatorForMedia = FigGetAllocatorForMedia();
  SInt64 = FigCFNumberCreateSInt64(AllocatorForMedia, int64);
  if (qword_1ED4CC538)
  {
    os_unfair_lock_lock(&_MergedGlobals_15);
    Value = FigCFDictionaryGetValue(qword_1ED4CC538);
    os_unfair_lock_unlock(&_MergedGlobals_15);
    if (Value)
    {
      v11 = Value[2];
      if (v11)
      {
        v12 = v11(a1, &cf);
        if (!v12)
        {
          *a2 = cf;
          cf = 0;
        }

        if (SInt64)
        {
          goto LABEL_7;
        }

        goto LABEL_8;
      }
    }

    v14 = qword_1EAF1CDA0;
    v15 = v2;
    v16 = 4294947834;
    v17 = 194;
  }

  else
  {
    v14 = qword_1EAF1CDA0;
    v15 = v2;
    v16 = 4294947833;
    v17 = 186;
  }

  v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v16, "metricevent", v17, v15, v7, v8);
  if (SInt64)
  {
LABEL_7:
    CFRelease(SInt64);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

size_t FigMetricMockEventForTestCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDA0, 0xFFFFB3FCuLL, "metricevent", 0x134, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t __ensureGlobalDeserializeRegister_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDA0, 0xFFFFB3FBuLL, "metricevent", 0x5B, v8, a7, a8);
  dword_1ED4CC534 = result;
  return result;
}

size_t CMByteStreamCreateCompositeForRead(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t *a4, uint64_t *a5, CFTypeRef *a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a2 >= 1 && (v9 = a3) != 0 && (v10 = a4) != 0 && (v11 = a5) != 0 && a6)
  {
    cf = 0;
    ClassID = CMByteStreamGetClassID();
    v20 = CMDerivedObjectCreate(a1, &kFigCompositeByteStreamVTable, ClassID, &cf, v16, v17, v18, v19);
    if (v20)
    {
      return v20;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    *DerivedStorage = a2;
    DerivedStorage[2] = 0;
    v22 = malloc_type_malloc(32 * a2, 0x1020040B07D1DCCuLL);
    DerivedStorage[1] = v22;
    if (v22)
    {
      v25 = -16;
      v26 = a2;
      do
      {
        v27 = CFRetain(*v9);
        v28 = DerivedStorage[1];
        v29 = (v28 + v25);
        v30 = *v10++;
        v29[2] = v27;
        v29[3] = v30;
        v31 = *v11++;
        v29[5] = v31;
        if (v25 == -16)
        {
          *(v28 + 16) = 0;
        }

        else
        {
          v29[4] = v29[1] + *v29;
        }

        v25 += 32;
        ++v9;
        --v26;
      }

      while (v26);
      DerivedStorage[3] = *(v28 + 32 * a2 - 8) + *(v28 + 32 * a2 - 16);
      *a6 = cf;
    }

    else
    {
      v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0x19F, v8, v23, v24);
      CFRelease(cf);
    }

    return v26;
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCDB8uLL, "(Fig)", 0x194, v8, a7, a8);
  }
}

size_t FigCompositeByteStreamGetAvailableLengthAtOffset_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCDB8uLL, "(Fig)", 0x116, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMByteStreamCreateForBlockBuffer(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_0_22();

    return FigSignalErrorAtGM(v4, v5, v6, v7, 0x228, v8, v9, v10);
  }

  else
  {
    v22 = 0;
    ClassID = CMByteStreamGetClassID();
    result = CMDerivedObjectCreate(a1, &kFigBBufByteStreamVTable, ClassID, &v22, v16, v17, v18, v19);
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(v22);
      if (a2)
      {
        v21 = CFRetain(a2);
      }

      else
      {
        v21 = 0;
      }

      result = 0;
      *DerivedStorage = v21;
      *a4 = v22;
    }
  }

  return result;
}

size_t FigBBufByteStreamWrite(uint64_t a1, size_t a2, size_t a3, char *a4, size_t *a5)
{
  CMBaseObject = CMByteStreamGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(CMBaseObject);
  DataLength = CMBlockBufferGetDataLength(*DerivedStorage);
  if (!*(DerivedStorage + 40))
  {
    v26 = v5;
    v27 = "%s signalled err=%d at <>:%d";
    v28 = "(Fig)";
    v29 = 0;
    v30 = 4294954419;
    v31 = 258;
LABEL_42:
    result = FigSignalErrorAtGM(v27, v29, v30, v28, v31, v26, v13, v14);
    goto LABEL_43;
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_0_22();
    v31 = 259;
    goto LABEL_42;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_0_22();
    v31 = 260;
    goto LABEL_42;
  }

  if (!a2)
  {
    goto LABEL_35;
  }

  v15 = DataLength;
  if (DataLength <= a3)
  {
    v18 = a2;
  }

  else
  {
    if (DataLength - a3 >= a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = DataLength - a3;
    }

    result = CMBlockBufferReplaceDataBytes(a4, *DerivedStorage, a3, v16);
    if (result)
    {
      goto LABEL_43;
    }

    v18 = a2 - v16;
    if (a2 == v16)
    {
      goto LABEL_35;
    }

    a3 += v16;
    a4 += v16;
  }

  if (a3 >= v15)
  {
    v19 = a3 - v15;
  }

  else
  {
    v19 = 0;
  }

  v21 = (DerivedStorage + 104);
  v20 = *(DerivedStorage + 104);
  if (v20)
  {
    if (a3 <= v15)
    {
LABEL_23:
      if (v18 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v18;
      }

      memcpy(*(DerivedStorage + 96), a4, v23);
      v18 -= v23;
      ConsumeSomeBacking(DerivedStorage, v23);
      if (!v18)
      {
LABEL_35:
        result = 0;
        if (!a5)
        {
          return result;
        }

        goto LABEL_36;
      }

      v19 = 0;
      a4 += v23;
      goto LABEL_28;
    }

    if (v19 >= v20)
    {
      v22 = *(DerivedStorage + 104);
    }

    else
    {
      v22 = v19;
    }

    bzero(*(DerivedStorage + 96), v22);
    ConsumeSomeBacking(DerivedStorage, v22);
    v19 -= v22;
    if (!v19)
    {
      v20 = *v21;
      if (*v21)
      {
        goto LABEL_23;
      }

      v19 = 0;
    }
  }

LABEL_28:
  v24 = CMBlockBufferGetDataLength(*(DerivedStorage + 40));
  if (*(DerivedStorage + 92))
  {
    v25 = (DerivedStorage + 64);
  }

  else
  {
    v25 = 0;
  }

  result = CMBlockBufferAppendMemoryBlock(*(DerivedStorage + 40), 0, (v19 + v18 + 0x3FFF) & 0xFFFFFFFFFFFFC000, *(DerivedStorage + 56), v25, 0, (v19 + v18 + 0x3FFF) & 0xFFFFFFFFFFFFC000, 1u);
  if (!result)
  {
    CMBlockBufferGetDataPointer(*(DerivedStorage + 40), v24, (DerivedStorage + 104), 0, (DerivedStorage + 96));
    if (v19)
    {
      bzero(*(DerivedStorage + 96), v19);
    }

    memcpy((*(DerivedStorage + 96) + v19), a4, v18);
    ConsumeSomeBacking(DerivedStorage, v19 + v18);
    goto LABEL_35;
  }

LABEL_43:
  a2 = 0;
  if (!a5)
  {
    return result;
  }

LABEL_36:
  *a5 = a2;
  return result;
}

size_t CMByteStreamCreateWritableForBlockBuffer_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v3, v4, v5, v6, v7, v8, v9, v10);
  *a2 = result;
  return result;
}

size_t FigBBufByteStreamSetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x192, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigBBufByteStreamSetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x19B, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigBBufByteStreamSetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1A4, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigBBufByteStreamSetProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1AE, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigBBufByteStreamRead_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xD2, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigBBufByteStreamReadAndCreateBlockBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1DB, v6, v7, v8);
  *a1 = result;
  return result;
}

CFIndex FigCaptionDynamicStyleGetKeyFrameCount(CFIndex result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (!v2)
    {
      fcds_initializeSortedKeyFrameValues(v1);
      v2 = *(v1 + 24);
    }

    return CFArrayGetCount(v2);
  }

  return result;
}

size_t FigCaptionDynamicStyleCopyKeyFrameValueAtIndex(CFIndex a1, CFIndex a2, void *a3, void *a4)
{
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(a1);
  if (a1)
  {
    if (a2 < 0)
    {
      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_0_2();
      v20 = 352;
    }

    else
    {
      if (KeyFrameCount > a2)
      {
        v9 = *(a1 + 24);
        if (!v9)
        {
          fcds_initializeSortedKeyFrameValues(a1);
          v9 = *(a1 + 24);
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v9, a2);
        if (a3)
        {
          *a3 = *ValueAtIndex;
        }

        if (a4)
        {
          v11 = ValueAtIndex[1];
          if (v11)
          {
            v11 = CFRetain(v11);
          }

          *a4 = v11;
        }

        return 0;
      }

      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_0_2();
      v20 = 353;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_2();
    v20 = 351;
  }

  return FigSignalErrorAtGM(v13, v14, v15, v16, v20, v17, v18, v19);
}

size_t FigCaptionDynamicStyleCopyKeyFrameValueAtRelativeTime(CFIndex a1, void *a2, void *a3, double a4)
{
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(a1);
  if (a1)
  {
    v9 = KeyFrameCount;
    if (KeyFrameCount > 0)
    {
      v10 = *(a1 + 24);
      if (!v10)
      {
        fcds_initializeSortedKeyFrameValues(a1);
        v10 = *(a1 + 24);
      }

      v27[0] = a4;
      v27[1] = 0.0;
      v29.location = 0;
      v29.length = v9;
      v11 = CFArrayBSearchValues(v10, v29, v27, fcds_compareRelativeTime, 0);
      if (v11 >= v9)
      {
        v15 = v9 - 1;
      }

      else
      {
        v12 = v11;
        if (v11)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v11);
          v14 = v27[0] > *ValueAtIndex || v27[0] < *ValueAtIndex;
          v15 = v12 - v14;
        }

        else
        {
          v15 = 0;
        }
      }

      v16 = CFArrayGetValueAtIndex(*(a1 + 24), v15);
      if (a2)
      {
        *a2 = *v16;
      }

      if (a3)
      {
        v17 = v16[1];
        if (v17)
        {
          v17 = CFRetain(v17);
        }

        *a3 = v17;
      }

      return 0;
    }

    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_2();
    v26 = 381;
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_2();
    v26 = 380;
  }

  return FigSignalErrorAtGM(v19, v20, v21, v22, v26, v23, v24, v25);
}

CFTypeRef *fcds_Equal(CFTypeRef *result, CFTypeRef *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    OUTLINED_FUNCTION_0_23(&sRegisterFigCaptionDynamicStyleTypeOnce);
    result = 0;
    if (a2)
    {
      if (v4 == sFigCaptionDynamicStyleID)
      {
        v5 = CFGetTypeID(a2);
        OUTLINED_FUNCTION_0_23(&sRegisterFigCaptionDynamicStyleTypeOnce);
        if (v5 == sFigCaptionDynamicStyleID)
        {
          return (CFEqual(v3[2], a2[2]) != 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t fcds_Hash(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  OUTLINED_FUNCTION_0_23(&sRegisterFigCaptionDynamicStyleTypeOnce);
  if (v2 != sFigCaptionDynamicStyleID)
  {
    return 0;
  }

  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(a1);
  if (!KeyFrameCount)
  {
    return 0;
  }

  v4 = KeyFrameCount;
  v5 = 0;
  v6 = 0;
  v8 = 0.0;
  do
  {
    if (FigCaptionDynamicStyleCopyKeyFrameValueAtIndex(a1, v5, &v8, 0))
    {
      break;
    }

    v6 ^= (v8 * 1000.0);
    ++v5;
  }

  while (v4 != v5);
  return v6;
}

__CFString *fcds_CopyDebugDesc(CFIndex a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(a1);
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"FigCaptionDynamicStyle (number of values = %ld)\n", KeyFrameCount);
  if (KeyFrameCount)
  {
    v4 = 0;
    v7 = 0;
    while (!FigCaptionDynamicStyleCopyKeyFrameValueAtIndex(a1, v4, &v7, &cf))
    {
      CFStringAppendFormat(Mutable, 0, @"  %3.2f : %@\n", v7, cf);
      if (KeyFrameCount - 1 == v4)
      {
        break;
      }

      ++v4;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return Mutable;
}

size_t FigCaptionDynamicStyleCreateMutable_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x106, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleCreateMutable_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x105, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleAddKeyFrameValue_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0x13B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleAddKeyFrameValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x138, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleAddKeyFrameValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x137, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleAddKeyFrameValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x136, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x122, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigEndpointXPCDemuxCreate_cold_2(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<< FigEndpointXPCDemux >>", 0x1DB, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t FigEndpointXPCDemuxCreate_cold_3(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<< FigEndpointXPCDemux >>", 0x1DA, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t FigSecCopyOutmostBundleSignedWithSameCertificateAsCodeAtURL(const __CFURL *a1, CFURLRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cf[128] = *MEMORY[0x1E69E9840];
  staticCode = 0;
  cf[0] = 0;
  v10 = FigCFURLCopyCanonicalPath(a1, cf, a3, a4, a5, a6, a7, a8);
  v11 = MEMORY[0x1E695E480];
  if (v10)
  {
    v16 = v10;
    v15 = 0;
  }

  else
  {
    v12 = *MEMORY[0x1E695E480];
    v13 = cf[0];
    v14 = CFURLHasDirectoryPath(a1);
    v15 = CFURLCreateWithFileSystemPath(v12, v13, kCFURLPOSIXPathStyle, v14);
    v16 = SecStaticCodeCreateWithPath(v15, 0, &staticCode);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    v45 = 0;
    v18 = 0;
    goto LABEL_89;
  }

  cf[0] = 0;
  v16 = SecCodeCopyPath(staticCode, 0, cf);
  v70 = a2;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    if (CFURLHasDirectoryPath(cf[0]))
    {
      if (!cf[0])
      {
        v18 = 0;
        goto LABEL_20;
      }

      PathComponent = CFRetain(cf[0]);
    }

    else
    {
      PathComponent = CFURLCreateCopyDeletingLastPathComponent(*v11, cf[0]);
    }

    v18 = PathComponent;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v16)
  {
    v45 = 0;
    goto LABEL_89;
  }

  if (v18)
  {
    v19 = CFRetain(v18);
    goto LABEL_21;
  }

LABEL_20:
  v19 = 0;
LABEL_21:
  requirement = 0;
  errors = 0;
  cf[0] = 0;
  v20 = SecCodeCopySigningInformation(staticCode, 2u, cf);
  if (!v20)
  {
    if (cf[0])
    {
      Value = CFDictionaryGetValue(cf[0], *MEMORY[0x1E697B040]);
      if (Value && (v22 = Value, CFArrayGetCount(Value) > 0))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
        if (ValueAtIndex)
        {
          v24 = ValueAtIndex;
          v25 = CFGetTypeID(ValueAtIndex);
          if (v25 == SecCertificateGetTypeID())
          {
            CFRetain(v24);
            v26 = 0;
            goto LABEL_31;
          }
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_3();
        v31 = 127;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_3();
        v31 = 123;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_3();
      v31 = 120;
    }

    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFBB2CuLL, "<<<< FigSecurityUtilities >>>>", v31, v28, v29, v30);
  }

  v26 = v20;
  v24 = 0;
LABEL_31:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v26)
  {
    v45 = 0;
    if (!v24)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v32 = SecCertificateCopyData(v24);
  v33 = v32;
  if (v32)
  {
    v34 = CFGetTypeID(v32);
    if (v34 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v33);
      if (HIDWORD(Length))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_3();
        v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, 0xFFFFBB2CuLL, "<<<< FigSecurityUtilities >>>>", 0x95, v67, v68, v69);
        Mutable = 0;
      }

      else
      {
        v36 = Length;
        Mutable = CFDataCreateMutable(*v11, 20);
        CFDataSetLength(Mutable, 20);
        BytePtr = CFDataGetBytePtr(v33);
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        CC_SHA1(BytePtr, v36, MutableBytePtr);
        v26 = 0;
      }

      goto LABEL_38;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_3();
  v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, 0xFFFFBB2CuLL, "<<<< FigSecurityUtilities >>>>", 0x92, v63, v64, v65);
  Mutable = 0;
  v40 = 0;
  if (v33)
  {
LABEL_38:
    CFRelease(v33);
    v40 = Mutable;
  }

  if (v26)
  {
    v41 = 0;
    if (v40)
    {
LABEL_44:
      CFRelease(v40);
    }
  }

  else
  {
    v41 = CFStringCreateMutable(*v11, 0);
    v42 = CFDataGetBytePtr(v40);
    if (CFDataGetLength(v40) >= 1)
    {
      v43 = 0;
      do
      {
        CFStringAppendFormat(v41, 0, @"%02x", v42[v43++]);
      }

      while (CFDataGetLength(v40) > v43);
    }

    if (v40)
    {
      goto LABEL_44;
    }
  }

  if (v26)
  {
    v44 = 0;
    v45 = requirement;
  }

  else
  {
    v44 = CFStringCreateWithFormat(*v11, 0, @"certificate leaf = H%@", v41);
    v26 = SecRequirementCreateWithStringAndErrors(v44, 0, &errors, &requirement);
    v45 = requirement;
    if (!v26)
    {
      requirement = 0;
      goto LABEL_48;
    }
  }

  if (v45)
  {
    CFRelease(v45);
    v45 = 0;
  }

LABEL_48:
  if (v41)
  {
    CFRelease(v41);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (!v24)
  {
    goto LABEL_54;
  }

LABEL_53:
  CFRelease(v24);
LABEL_54:
  if (errors)
  {
    CFRelease(errors);
  }

  if (!v26)
  {
    v46 = *v11;
    while (1)
    {
      v47 = CFURLCopyPath(v18);
      v54 = CFEqual(v47, @"/");
      if (v47)
      {
        CFRelease(v47);
      }

      if (v54)
      {
        break;
      }

      requirement = 0;
      errors = 0;
      string = 0;
      v55 = FigCFURLCopyCanonicalPath(v18, &string, v48, v49, v50, v51, v52, v53);
      if (v55)
      {
        v56 = v55;
      }

      else
      {
        CFStringGetFileSystemRepresentation(string, cf, 1023);
        if (access(cf, 4))
        {
          v56 = -17621;
        }

        else
        {
          v56 = SecStaticCodeCreateWithPath(v18, 0, &errors);
          v57 = errors;
          if (!v56)
          {
            v56 = SecStaticCodeCheckValidityWithErrors(errors, 0, v45, &requirement);
            v57 = errors;
          }

          if (v57)
          {
            CFRelease(v57);
          }
        }
      }

      if (requirement)
      {
        CFRelease(requirement);
      }

      if (string)
      {
        CFRelease(string);
      }

      if (v56)
      {
        v58 = v19;
      }

      else
      {
        if (v18)
        {
          CFRetain(v18);
        }

        v58 = v18;
        if (v19)
        {
          CFRelease(v19);
          v58 = v18;
        }
      }

      v59 = CFURLCreateCopyDeletingLastPathComponent(v46, v18);
      if (v18)
      {
        CFRelease(v18);
      }

      v60 = v56 == -67062 || v56 == -67028;
      v18 = v59;
      v19 = v58;
      if (!v60)
      {
        v18 = v59;
        v19 = v58;
        if (v56)
        {
          goto LABEL_88;
        }
      }
    }
  }

  v59 = v18;
  v58 = v19;
LABEL_88:
  v16 = 0;
  *v70 = v58;
  v18 = v59;
LABEL_89:
  if (staticCode)
  {
    CFRelease(staticCode);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

void EstablishOutmostContainerURLOfMainBundle()
{
  MainBundle = CFBundleGetMainBundle();
  v1 = CFBundleCopyExecutableURL(MainBundle);
  _MergedGlobals_16 = FigSecCopyOutmostBundleSignedWithSameCertificateAsCodeAtURL(v1, &qword_1ED4CC560, v2, v3, v4, v5, v6, v7);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t CMByteStreamWriteBlockBuffer()
{
  v1 = MEMORY[0x1EEE9AC00]();
  v7 = v6;
  v26 = *MEMORY[0x1E69E9840];
  if (v4)
  {
    v8 = v5;
    v9 = v4;
    v10 = v3;
    v11 = v2;
    v12 = v1;
    dataPointerOut = 0;
    v13 = 0;
    v23 = 0;
    lengthAtOffsetOut = 0;
    while (1)
    {
      result = CMBlockBufferGetDataPointer(v11, v13 + v10, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (result)
      {
        break;
      }

      v15 = lengthAtOffsetOut;
      if (lengthAtOffsetOut >= v9 - v13)
      {
        lengthAtOffsetOut = v9 - v13;
        v15 = v9 - v13;
      }

      else if (!(lengthAtOffsetOut >> 14))
      {
        if (v9 - v13 >= 0x4000)
        {
          v16 = 0x4000;
        }

        else
        {
          v16 = v9 - v13;
        }

        lengthAtOffsetOut = v16;
        result = CMBlockBufferCopyDataBytes(v11, v13 + v10, v16, destination);
        if (result)
        {
          break;
        }

        dataPointerOut = destination;
        v15 = lengthAtOffsetOut;
      }

      v17 = dataPointerOut;
      v18 = *(*(CMBaseObjectGetVTable(v12) + 16) + 16);
      if (!v18)
      {
        result = 4294954514;
        if (v7)
        {
          goto LABEL_22;
        }

        return result;
      }

      result = v18(v12, v15, v13 + v8, v17, &v23);
      if (result)
      {
        break;
      }

      if (!v23)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDB7uLL, "<<<< FigByteStream >>>>", 0x180, v0, v20, v21);
        if (v7)
        {
          goto LABEL_22;
        }

        return result;
      }

      v13 += v23;
      if (v13 >= v9)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v13 = 0;
LABEL_20:
    result = 0;
  }

  if (v7)
  {
LABEL_22:
    *v7 = v13;
  }

  return result;
}

uint64_t CMByteStreamAppend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable(a1) + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = 0;
  result = v8(a1, 0, &v12);
  if (result)
  {
    return result;
  }

  v10 = v12;
  v11 = *(*(CMBaseObjectGetVTable(a1) + 16) + 16);
  if (v11)
  {
    return v11(a1, a2, v10, a3, a4);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t CMByteStreamAppendBlockBuffer(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable(a1) + 16) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  v4 = 0;
  result = v2(a1, 0, &v4);
  if (!result)
  {
    return CMByteStreamWriteBlockBuffer();
  }

  return result;
}

CFDictionaryRef FigByteStreamStatsCreateStatsDictionary(const __CFAllocator *a1, const void *a2, const __CFURL *a3, uint64_t a4)
{
  __dst[13] = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E749EF30, 0x68uLL);
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  *values = 0u;
  v66 = 0u;
  if (a4 && (v8 = *a4) != 0)
  {
    if (a3)
    {
      a3 = CFURLGetString(a3);
      v8 = *a4;
    }

    FigSimpleMutexLock(v8);
    v9 = *(a4 + 8);
    if (v9)
    {
      v10 = (*(a4 + 32) / v9);
    }

    else
    {
      v10 = 0.0;
    }

    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = @"UNKNOWN";
    }

    values[0] = CFRetain(v11);
    v12 = *MEMORY[0x1E695E480];
    v13 = OUTLINED_FUNCTION_1_12();
    values[1] = CFNumberCreate(v13, v14, (a4 + 8));
    *&v66 = CFNumberCreate(v12, kCFNumberSInt64Type, (a4 + 16));
    v15 = OUTLINED_FUNCTION_1_12();
    *(&v66 + 1) = CFNumberCreate(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_1_12();
    *&v67 = CFNumberCreate(v18, v19, v20);
    v21 = OUTLINED_FUNCTION_1_12();
    *(&v67 + 1) = CFNumberCreate(v21, v22, v23);
    *&v68 = OUTLINED_FUNCTION_0_24(SDWORD2(v67), v24, v25, v26, v27, v28, v29, v30, *(a4 + 32) / 1000000.0, 0);
    *(&v68 + 1) = OUTLINED_FUNCTION_0_24(v68, v31, v32, v33, v34, v35, v36, v37, *(a4 + 40) / 1000000.0, v62);
    *&v69 = OUTLINED_FUNCTION_0_24(SDWORD2(v68), v38, v39, v40, v41, v42, v43, v44, *(a4 + 48) / 1000000.0, v63);
    *(&v69 + 1) = OUTLINED_FUNCTION_0_24(v69, v45, v46, v47, v48, v49, v50, v51, v10 / 1000000.0, v64);
    v52 = OUTLINED_FUNCTION_1_12();
    *&v70 = CFNumberCreate(v52, v53, v54);
    v55 = OUTLINED_FUNCTION_1_12();
    *(&v70 + 1) = CFNumberCreate(v55, v56, v57);
    v71 = CFRetain(a2);
    FigSimpleMutexUnlock(*a4);
    v58 = CFDictionaryCreate(a1, __dst, values, 13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v58 = 0;
  }

  for (i = 0; i != 13; ++i)
  {
    v60 = values[i];
    if (v60)
    {
      CFRelease(v60);
    }
  }

  return v58;
}

size_t CMCreateContiguousBlockBufferFromStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFF94uLL, "<<<< FigByteStream >>>>", 0x13F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigByteStreamCopySHA1Digest_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigByteStream >>>>", 0x2AE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigByteStreamCopySHA1Digest_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigByteStream >>>>", 0x2A8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t frb_FigCFRingBufferGetSize(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  CFStringGetTypeID();
  if (v1 == OUTLINED_FUNCTION_1_13())
  {

    return CFStringGetLength(a1);
  }

  CFNumberGetTypeID();
  if (v1 == OUTLINED_FUNCTION_1_13())
  {

    return CFNumberGetByteSize(a1);
  }

  CFDataGetTypeID();
  if (v1 == OUTLINED_FUNCTION_1_13())
  {

    return CFDataGetLength(a1);
  }

  CMBlockBufferGetTypeID();
  if (v1 != OUTLINED_FUNCTION_1_13())
  {
    return 0;
  }

  return CMBlockBufferGetDataLength(a1);
}

uint64_t FigRingBufferAppendValueAndEvictBuffer(uint64_t a1, const void *a2, __CFArray *a3)
{
  if (!a1)
  {
    return 4294950815;
  }

  if (!*(a1 + 8))
  {
    return 4294950813;
  }

  if (!a2)
  {
    return 4294950814;
  }

  Count = CFArrayGetCount(*a1);
  v7 = (*(*(a1 + 8) + 8))(a2);
  if (!Count)
  {
    v22 = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_0_25();
  if (!v9(Count + 1, v8 + v7))
  {
LABEL_34:
    v22 = *(a1 + 32);
    goto LABEL_36;
  }

  v10 = 0;
  do
  {
    if (Count < 1)
    {
      return 4294950816;
    }

    v11 = *(a1 + 32);
    if (v11 == *(a1 + 48))
    {
      if (a3 && !v10)
      {
LABEL_24:
        while (v11 < CFArrayGetCount(*a1))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*a1, v11);
          CFArrayAppendValue(a3, ValueAtIndex);
          ++v11;
        }

        v11 = *(a1 + 32);
        if (v11 >= 1)
        {
          for (i = 0; i < v11; ++i)
          {
            v16 = CFArrayGetValueAtIndex(*a1, i);
            CFArrayAppendValue(a3, v16);
            v11 = *(a1 + 32);
          }
        }
      }

      v10 = 1;
      goto LABEL_29;
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = (*(a1 + 56) + v7) > *(a1 + 24);
    }

    v13 = !v12;
    if (!v13)
    {
      v10 = 1;
    }

    if ((v13 & 1) == 0 && a3)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (v11 >= Count)
    {
      v11 = 0;
      *(a1 + 32) = 0;
    }

    v17 = *(*(a1 + 8) + 8);
    v18 = CFArrayGetValueAtIndex(*a1, v11);
    *(a1 + 16) -= v17(v18);
    CFArrayRemoveValueAtIndex(*a1, *(a1 + 32));
    OUTLINED_FUNCTION_0_25();
  }

  while (v20(Count--, v19 + v7));
  if (!v10)
  {
    goto LABEL_34;
  }

  v22 = *(a1 + 32);
  *(a1 + 48) = v22;
  *(a1 + 56) = 0;
LABEL_36:
  CFArrayInsertValueAtIndex(*a1, v22, a2);
  result = 0;
  ++*(a1 + 32);
  *(a1 + 16) += v7;
  *(a1 + 56) += v7;
  return result;
}

void FigRingBufferFlush(uint64_t a1, __CFArray *a2)
{
  if (a1)
  {
    if (a2)
    {
      for (i = *(a1 + 32); i < CFArrayGetCount(*a1); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        CFArrayAppendValue(a2, ValueAtIndex);
      }

      if (*(a1 + 32) >= 1)
      {
        v6 = 0;
        do
        {
          v7 = CFArrayGetValueAtIndex(*a1, v6);
          CFArrayAppendValue(a2, v7);
          ++v6;
        }

        while (v6 < *(a1 + 32));
      }
    }

    CFArrayRemoveAllValues(*a1);
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }
}

void FigRingBufferRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFArrayRemoveAllValues(v2);
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      if (*a1)
      {
        CFRelease(*a1);
      }

      free(a1);
    }
  }
}

CFIndex FigRingBufferGetCount(const __CFArray **a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

void FigRingBufferGetEntries(uint64_t a1, __CFArray *a2)
{
  if (a1)
  {
    if (a2)
    {
      for (i = *(a1 + 32); i < CFArrayGetCount(*a1); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        CFArrayAppendValue(a2, ValueAtIndex);
      }

      if (*(a1 + 32) >= 1)
      {
        v6 = 0;
        do
        {
          v7 = CFArrayGetValueAtIndex(*a1, v6);
          CFArrayAppendValue(a2, v7);
          ++v6;
        }

        while (v6 < *(a1 + 32));
      }
    }
  }
}

size_t CMByteStreamCreateForFileURL(uint64_t a1, const void *a2, unsigned int a3, CFTypeRef *a4)
{
  cf = 0;
  ClassID = CMByteStreamGetClassID();
  v13 = CMDerivedObjectCreate(a1, &kFigFileByteStreamVTable, ClassID, &cf, v9, v10, v11, v12);
  if (v13)
  {
    return v13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  v15 = CFRetain(a2);
  *DerivedStorage = v15;
  *(DerivedStorage + 4216) = -1;
  *(DerivedStorage + 4220) = 1;
  *(DerivedStorage + 16) = a3;
  v16 = FigFileForkOpenMainByCFURL(v15, a3, (DerivedStorage + 8));
  if (v16)
  {
    Buffer = v16;
LABEL_9:
    CFRelease(cf);
    return Buffer;
  }

  FigByteStreamStatsSetupWorker((DerivedStorage + 4152));
  Buffer = fbs_SetupSmallReadBuffer(DerivedStorage + 24, a3);
  if (Buffer)
  {
    FigFileForkClose(*(DerivedStorage + 8));
    goto LABEL_9;
  }

  *a4 = cf;
  return Buffer;
}

uint64_t FigFileByteStreamWriteBlockBufferOptimized(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, size_t a4, off_t a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v43 = 0;
  lengthAtOffsetOut = 0;
  if (a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = a4;
    v13 = a3;
    do
    {
      if (v11 == 0x7FFFFFFF)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v34 = 4294954422;
        v35 = 551;
        goto LABEL_25;
      }

      DataPointer = CMBlockBufferGetDataPointer(a2, v13, &lengthAtOffsetOut, 0, 0);
      if (DataPointer)
      {
        goto LABEL_26;
      }

      v15 = lengthAtOffsetOut;
      if (v12 < lengthAtOffsetOut)
      {
        v15 = v12;
      }

      v13 += v15;
      ++v11;
      v10 += 16;
      v12 -= v15;
    }

    while (v12);
    OUTLINED_FUNCTION_1_14();
    v17 = malloc_type_malloc(v10, v16);
    if (!v17)
    {
      goto LABEL_29;
    }

    v18 = v17;
    v19 = v11 + 1;
    v20 = v17 + 1;
    v21 = a4;
    while (1)
    {
      dataPointerOut = 0;
      if (!--v19)
      {
        break;
      }

      v22 = CMBlockBufferGetDataPointer(a2, a3, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (v22)
      {
        goto LABEL_28;
      }

      v23 = lengthAtOffsetOut;
      if (v21 < lengthAtOffsetOut)
      {
        v23 = v21;
      }

      *(v20 - 1) = dataPointerOut;
      *v20 = v23;
      v20 += 2;
      a3 += v23;
      v21 -= v23;
      if (!v21)
      {
        goto LABEL_18;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, 0xFFFFCDB6uLL, "<<< FigByteStream_File >>>", 0x23D, v37, v38, v39);
LABEL_28:
    v27 = v22;
    v28 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_14();
    v25 = malloc_type_malloc(0, v24);
    if (v25)
    {
      v18 = v25;
      LODWORD(v11) = 0;
LABEL_18:
      v26 = FigFileForkWriteIOVecArray(*(DerivedStorage + 8), *(DerivedStorage + 4216), v18, v11, a5, &v43);
      v27 = v26;
      v28 = v43;
      if (a6 && !v26)
      {
        *a6 = v43;
      }
    }

    else
    {
LABEL_29:
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v34 = 4294954420;
      v35 = 565;
LABEL_25:
      DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v34, "<<< FigByteStream_File >>>", v35, v31, v32, v33);
LABEL_26:
      v27 = DataPointer;
      v28 = 0;
      v18 = 0;
    }
  }

  free(v18);
  if (v28 == a4)
  {
    return 0;
  }

  else
  {
    return v27;
  }
}

size_t fbs_SetupSmallReadBuffer_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0EuLL, "<<< FigByteStream_File >>>", 0x135, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t FigFileByteStreamGetAvailableLengthAtOffset_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDB8uLL, "<<< FigByteStream_File >>>", 0x2F2, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t PeruseActivatedEndpoints(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  cf = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = FigEndpointManagerCopyActivatedEndpoints(*(DerivedStorage + 64), *MEMORY[0x1E695E480], &cf);
  if (v5)
  {
    goto LABEL_22;
  }

  MutableCopy = FigCFArrayCreateMutableCopy(v4, cf);
  if (!MutableCopy)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBE06uLL, "<<< StdHALPlugin >>>", 0x163, v1, v36, v37);
LABEL_22:
    v33 = v5;
    goto LABEL_18;
  }

  v7 = MutableCopy;
  v8 = *(DerivedStorage + 72);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 72), v11);
        v39.length = CFArrayGetCount(v7);
        v39.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v39, ValueAtIndex);
        if (FirstIndexOfValue == -1)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_1_15();
          CMNotificationCenterRemoveListener(v14, v15, v16, v17, v18);
          CFArrayRemoveValueAtIndex(*(DerivedStorage + 72), v11);
          --v10;
        }

        else
        {
          CFArrayRemoveValueAtIndex(v7, FirstIndexOfValue);
          ++v11;
        }
      }

      while (v11 < v10);
    }
  }

  v19 = CFArrayGetCount(v7);
  if (v19 >= 1)
  {
    v20 = v19;
    for (i = 0; i != v20; ++i)
    {
      v22 = CFArrayGetValueAtIndex(v7, i);
      CFArrayAppendValue(*(DerivedStorage + 72), v22);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_15();
      CMNotificationCenterAddListener(v23, v24, v25, v26, v27);
    }
  }

  v28 = *(DerivedStorage + 72);
  if (v28)
  {
    v29 = CFArrayGetCount(v28);
    if (v29 >= 1)
    {
      v30 = v29;
      for (j = 0; j != v30; ++j)
      {
        v32 = CFArrayGetValueAtIndex(*(DerivedStorage + 72), j);
        PeruseAudioStreamsForEndpoint(a1, v32);
      }
    }
  }

  CFRelease(v7);
  v33 = 0;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v33;
}

size_t plugin_CreateStandardPluginObjectInternal_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBE06uLL, "<<< StdHALPlugin >>>", a1, v5, v6, v7);
  *a2 = result;
  return result;
}

size_t plugin_GetPropertyData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< StdHALPlugin >>>", 0x293, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t plugin_GetPropertyData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< StdHALPlugin >>>", 0x294, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t plugin_GetPropertyData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< StdHALPlugin >>>", 0x292, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t PeruseAudioStreamsForEndpoint_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE06uLL, "<<< StdHALPlugin >>>", 0x118, v1, v2, v3);
}

void FigMachPortHolderCreateWithMachSendRight_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFB30AuLL, "(Fig)", 0xA5, v5, v6, v7);

  CFRelease(a1);
}

size_t FigMachPortHolderCreateWithMachSendRight_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB30BuLL, "(Fig)", 0xA2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMachPortHolderCreateWithMachSendRight_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB30CuLL, "(Fig)", 0x9F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMachPortHolderCreateWithMachSendRight_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB30CuLL, "(Fig)", 0x9E, v3, v4, v5);
  *a1 = result;
  return result;
}

void *fnh_getFirstRequestEntryAfterTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  CMBaseObjectGetDerivedStorage(a1);
  OUTLINED_FUNCTION_9_3();
  if (v5 != v6)
  {
    return 0;
  }

  for (result = *(DerivedStorage + 48); result; result = result[10])
  {
    if (*result >= a2)
    {
      break;
    }
  }

  return result;
}

uint64_t FigNetworkHistorySetRequestSentTimestamp()
{
  OUTLINED_FUNCTION_11_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  if (*(DerivedStorage + 41) && FigNetworkHistoryGetGlobal() != v2)
  {
    Global = FigNetworkHistoryGetGlobal();
    FigNetworkHistorySetRequestSentTimestamp(Global, *(v1 + 64), v0);
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    v6 = *(v1 + 72);
    if (v6)
    {
      FigNetworkHistorySetRequestSentTimestamp(v5, v6, v0);
    }
  }

  FigSimpleMutexLock(*DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage(v2);
  if (*(v7 + 136))
  {
    v8 = *(v7 + 160);
    if (v8)
    {
      while (v8[7] != v1)
      {
        v8 = v8[11];
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      v8[1] = v0;
    }

    else
    {
LABEL_11:
      OUTLINED_FUNCTION_2_11();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0xD97, v10, v11, v12);
    }
  }

  v13 = OUTLINED_FUNCTION_7_4();
  FigSimpleMutexUnlock(*DerivedStorage);
  return v13;
}

uint64_t FigNetworkHistorySetRequestLatency(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 41) && FigNetworkHistoryGetGlobal() != a1)
  {
    Global = FigNetworkHistoryGetGlobal();
    FigNetworkHistorySetRequestLatency(Global, *(a2 + 64), a3, a4);
  }

  v10 = *(DerivedStorage + 32);
  if (v10)
  {
    v11 = *(a2 + 72);
    if (v11)
    {
      FigNetworkHistorySetRequestLatency(v10, v11, a3, a4);
    }
  }

  FigSimpleMutexLock(*DerivedStorage);
  v12 = CMBaseObjectGetDerivedStorage(a1);
  for (i = *(v12 + 160); i; i = i[11])
  {
    if (i[7] == a2)
    {
      break;
    }
  }

  if (*(v12 + 136))
  {
    if (i)
    {
      i[2] = a3;
      i[6] = a4;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0xDA6, v4, v13, v14);
    }
  }

  v16 = fnh_runOrEnqueueCommand(a1, fnh_setRequestLatencyCommand, a2, a3, 0, 0, a4);
  FigSimpleMutexUnlock(*DerivedStorage);
  return v16;
}

uint64_t FigNetworkHistoryRequestReceivedBytes(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 41) && FigNetworkHistoryGetGlobal() != a1)
  {
    Global = FigNetworkHistoryGetGlobal();
    FigNetworkHistoryRequestReceivedBytes(Global, *(a2 + 64), a3, a4, a5);
  }

  v12 = *(DerivedStorage + 32);
  if (v12)
  {
    v13 = *(a2 + 72);
    if (v13)
    {
      FigNetworkHistoryRequestReceivedBytes(v12, v13, a3, a4, a5);
    }
  }

  FigSimpleMutexLock(*DerivedStorage);
  v14 = CMBaseObjectGetDerivedStorage(a1);
  v27 = 0;
  if (*(v14 + 136))
  {
    v17 = v14;
    v18 = *(v14 + 160);
    if (v18)
    {
      while (v18[7] != a2)
      {
        v18 = v18[11];
        if (!v18)
        {
          goto LABEL_11;
        }
      }

      v19 = CFGetAllocator(a1);
      if (!fnh_createBytesReceivedEntry(v19, a4, &v27))
      {
        v20 = v27;
        v21 = v27;
        *(v27 + 48) = 0;
        v22 = v18[9];
        v23 = v18[10];
        *(v20 + 56) = v22;
        *v22 = v20;
        *(v20 + 24) = a3;
        *v20 = a4;
        *(v20 + 40) = a5;
        v18[5] += a3;
        v18[9] = v21 + 48;
        v18[10] = v23 + 1;
        ++*(v17 + 156);
      }
    }

    else
    {
LABEL_11:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0xDB7, v5, v15, v16);
    }
  }

  v24 = fnh_runOrEnqueueCommand(a1, fnh_requestReceivedBytesCommand, a2, a4, a3, a5, 0);
  FigSimpleMutexUnlock(*DerivedStorage);
  return v24;
}

size_t fnh_requestReceivedBytesCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (*(v9 + 32) > v10)
  {
    v20 = qword_1EAF1CDC0;
    v21 = v8;
    v22 = 1111;
  }

  else
  {
    v11 = *(v9 + 16);
    if (v11 > v10)
    {
      v20 = qword_1EAF1CDC0;
      v21 = v8;
      v22 = 1112;
    }

    else
    {
      if (v11 > 0)
      {
        v12 = *a1;
        v13 = *(a1 + 24);
        v14 = *(a1 + 40);
        CMBaseObjectGetDerivedStorage(*a1);
        if (*(v9 + 56) < v14)
        {
          *(v9 + 56) = v14;
        }

        BytesSentTimestampForRequestEntry = *(v9 + 32);
        if (!BytesSentTimestampForRequestEntry)
        {
          BytesSentTimestampForRequestEntry = fnh_firstBytesSentTimestampForRequestEntry(v9, v10);
          *(v9 + 32) = BytesSentTimestampForRequestEntry;
        }

        result = fnh_addBytesToBytesReceivedEntriesBetweenTimestamps(v12, v13, BytesSentTimestampForRequestEntry, v10, v10);
        if (!result)
        {
          if ((v17 = *(v9 + 56), v18 = *(v9 + 48), !v17) && !v18 || (result = fnh_addRTTToBytesReceivedEntriesBetweenTimestamps(v12, v17, v18, *(v9 + 16), *(v9 + 32), v10, v10), !result))
          {
            v19 = *(v9 + 40) + v13;
            *(v9 + 32) = v10;
            *(v9 + 40) = v19;
          }
        }

        return result;
      }

      v20 = qword_1EAF1CDC0;
      v21 = v8;
      v22 = 1113;
    }
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", v22, v21, a7, a8);
}

uint64_t FigNetworkHistoryRequestBecameInactive()
{
  OUTLINED_FUNCTION_11_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  if (*(DerivedStorage + 41) && FigNetworkHistoryGetGlobal() != v2)
  {
    Global = FigNetworkHistoryGetGlobal();
    FigNetworkHistoryRequestBecameInactive(Global, *(v1 + 64), v0);
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    v6 = *(v1 + 72);
    if (v6)
    {
      FigNetworkHistoryRequestBecameInactive(v5, v6, v0);
    }
  }

  FigSimpleMutexLock(*DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage(v2);
  if (*(v7 + 136))
  {
    v8 = *(v7 + 160);
    if (v8)
    {
      while (*(v8 + 56) != v1)
      {
        v8 = *(v8 + 88);
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      *(v8 + 24) = v0;
      v13 = (v8 + 88);
      v14 = *(v8 + 88);
      v15 = *(v8 + 96);
      v16 = (v7 + 168);
      if (v14)
      {
        v16 = (v14 + 96);
      }

      *v16 = v15;
      *v15 = v14;
      --*(v7 + 176);
      *v13 = 0;
      v17 = *(v7 + 192);
      *(v8 + 96) = v17;
      *v17 = v8;
      *(v7 + 192) = v13;
      ++*(v7 + 200);
      v18 = *(v8 + 80);
      v19 = *(v7 + 152) + v18;
      v20 = *(v7 + 156) - v18;
      *(v7 + 152) = v19;
      *(v7 + 156) = v20;
    }

    else
    {
LABEL_11:
      OUTLINED_FUNCTION_2_11();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0xDD1, v10, v11, v12);
    }
  }

  v21 = OUTLINED_FUNCTION_7_4();
  FigSimpleMutexUnlock(*DerivedStorage);
  return v21;
}

uint64_t fnh_requestBecameInactiveCommand(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  if (v6 < v5)
  {
    *(v2 + 48) = v5;
  }

  *(v2 + 24) = v3;
  if (*v2 > v3)
  {
    OUTLINED_FUNCTION_2_11();
    v17 = 1205;
  }

  else
  {
    if (*(v2 + 16) <= v3)
    {
      CMBaseObjectGetDerivedStorage(v1);
      fnh_purgeExpiredListEntriesOnQueue(v1, v3);
      fnh_updateEarliestActiveRequestFirstBytesSentTimestamp(v1, v3);
      BytesSentTimestampForRequestEntry = fnh_firstBytesSentTimestampForRequestEntry(v2, v3);
      if (BytesSentTimestampForRequestEntry == 0x7FFFFFFFFFFFFFFFLL || (result = fnh_addBytesToBytesReceivedEntriesBetweenTimestamps(v1, 0, BytesSentTimestampForRequestEntry, *(v2 + 24), v3), !result))
      {
        if (v6 >= v5 || (result = fnh_addRTTToBytesReceivedEntriesBetweenTimestamps(v1, *(v2 + 56), *(v2 + 48), *(v2 + 16), BytesSentTimestampForRequestEntry, *(v2 + 24), v3), !result))
        {
          result = CMBaseObjectGetDerivedStorage(v1);
          if (*(result + 80) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v9 = *(DerivedStorage + 8);
            DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

            return FigDispatchAsyncPostNotification(v9, DefaultLocalCenter, @"NetworkHistoryNotification_NetworkBecameInactive", v1, 0, 0, v11, v12);
          }
        }
      }

      return result;
    }

    OUTLINED_FUNCTION_2_11();
    v17 = 1206;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", v17, v14, v15, v16);
}

uint64_t fnh_getFirstBytesReceivedEntryAfterTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v11 = CMBaseObjectGetDerivedStorage(a1);
  result = 0;
  if (a4 && *(v11 + 112) >= 1)
  {
    updated = fnh_updateEarliestActiveRequestFirstBytesSentTimestamp(a1, a3);
    if (updated <= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = updated;
    }

    if (updated == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    result = *(DerivedStorage + 64);
    if (result)
    {
      if (a5)
      {
        v15 = **(*(DerivedStorage + 72) + 8);
        do
        {
          result = v15;
          v15 = **(*(v15 + 56) + 8);
        }

        while (v15 && *(v15 + 8) >= a2);
      }

      else
      {
        do
        {
          if (*(result + 8) >= a2)
          {
            break;
          }

          result = *(result + 48);
        }

        while (result);
      }
    }

    *a4 = v14;
  }

  return result;
}

uint64_t fnh_populateBandwidthSampleFromBytesReceivedEntryAndActiveRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CMBaseObjectGetDerivedStorage(a1);
  OUTLINED_FUNCTION_9_3();
  if (v11 != v12 || !a2 && !a3)
  {
    return 0;
  }

  *(a6 + 64) = 0;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  if (!a2)
  {
    *a6 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a3)
    {
      return 1;
    }

    v21 = a4 + a3 / a4 * a4;
    if (v21 >= a5)
    {
      v19 = 0;
    }

    else
    {
      v19 = a4 + a3 / a4 * a4;
    }

    if (v21 >= a5)
    {
      v18 = a5;
    }

    else
    {
      v18 = a4 + a3 / a4 * a4;
    }

    goto LABEL_27;
  }

  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = v14 - 1;
  if (v14 - 1 <= *a2)
  {
    v15 = *a2;
  }

  v16 = a4 + v15 / a4 * a4;
  if (v14 > v16)
  {
    return 0;
  }

  *a6 = 0x7FFFFFFFFFFFFFFFLL;
  if (!a3)
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
LABEL_29:
    v20 = v14 <= v17;
    v22 = v14 > v17;
    if (v20)
    {
      *(a6 + 56) = a3;
      *(a6 + 64) = a2;
    }

    *a6 = v13;
    do
    {
      v23 = *(a2 + 8);
      if (v23 > v16)
      {
        break;
      }

      v24 = *(a2 + 16);
      v25 = *(a6 + 16);
      v26 = *(a2 + 32);
      if (v26 <= *(a6 + 32))
      {
        v26 = *(a6 + 32);
      }

      *(a6 + 24) += *(a2 + 24);
      *(a6 + 32) = v26;
      v27 = *(a2 + 40);
      if (v27 <= *(a6 + 40))
      {
        v27 = *(a6 + 40);
      }

      *(a6 + 40) = v27;
      *(a6 + 48) += v23 - *a2;
      v28 = v24 <= v25 ? v25 : v24;
      *(a6 + 8) = v23;
      *(a6 + 16) = v28;
      a2 = *(a2 + 48);
      *(a6 + 64) = a2;
    }

    while (a2);
    goto LABEL_42;
  }

  v17 = a3 / a4 * a4;
  v18 = v17 + a4;
  if (v17 + a4 >= a5)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17 + a4;
  }

  if (v17 + a4 >= a5)
  {
    v18 = a5;
  }

  v20 = v14 <= v17 || v14 <= v18;
  if (v20)
  {
    goto LABEL_29;
  }

  if (v18 <= v13)
  {
    *(a6 + 64) = a2;
  }

LABEL_27:
  v22 = 1;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_42:
  result = 1;
  if (a3 && v22)
  {
    if (v13 >= a3)
    {
      v13 = a3;
    }

    *a6 = v13;
    *(a6 + 8) = v18;
    *(a6 + 16) = a5;
    *(a6 + 48) = v18 - v13;
    *(a6 + 56) = v19;
  }

  return result;
}

uint64_t FigNetworkHistoryGetNextBandwidthSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  active = fnh_populateBandwidthSampleFromBytesReceivedEntryAndActiveRange(a1, a2, *(a5 + 56), a3, a4, a5);
  FigSimpleMutexUnlock(*DerivedStorage);
  return active;
}

uint64_t FigNetworkHistoryGetFirstLatencySampleAfterTime(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v9 = OUTLINED_FUNCTION_19_0(DerivedStorage);
  FigSimpleMutexLock(v9);
  CMBaseObjectGetDerivedStorage(a1);
  OUTLINED_FUNCTION_9_3();
  if (v10 != v11 || (FirstRequestEntryAfterTime = fnh_getFirstRequestEntryAfterTime(a1, a2)) == 0)
  {
    v14 = 0;
  }

  else
  {
    while (1)
    {
      v13 = FirstRequestEntryAfterTime[2];
      if (v13 >= 1)
      {
        break;
      }

      v14 = 0;
      FirstRequestEntryAfterTime = FirstRequestEntryAfterTime[10];
      if (!FirstRequestEntryAfterTime)
      {
        goto LABEL_8;
      }
    }

    v15 = FirstRequestEntryAfterTime[5];
    *a4 = v13 - *FirstRequestEntryAfterTime;
    a4[1] = v15;
    a4[2] = FirstRequestEntryAfterTime[10];
    v14 = 1;
  }

LABEL_8:
  FigSimpleMutexUnlock(*v4);
  return v14;
}

uint64_t FigNetworkHistoryGetLastActiveTimestamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v6 = OUTLINED_FUNCTION_19_0(DerivedStorage);
  FigSimpleMutexLock(v6);
  CMBaseObjectGetDerivedStorage(a1);
  OUTLINED_FUNCTION_9_3();
  if (v7 != v8)
  {
    goto LABEL_5;
  }

  if (*(CMBaseObjectGetDerivedStorage(a1) + 80) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = **(*(v2 + 72) + 8);
    if (v9)
    {
      a2 = *(v9 + 8);
      goto LABEL_6;
    }

LABEL_5:
    a2 = 0;
  }

LABEL_6:
  FigSimpleMutexUnlock(*v2);
  return a2;
}

size_t FigNetworkHistoryCopySharedPredictor(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  cf = 0;
  FigSimpleMutexLock(*DerivedStorage);
  v11 = *(DerivedStorage + 104);
  if (v11)
  {
    v12 = FigCFWeakReferenceHolderCopyReferencedObject(v11);
    cf = v12;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v13 = FigNetworkHistoricalPredictorCreate(*MEMORY[0x1E695E480], a1, v6, &cf, v7, v8, v9, v10);
  if (!v13)
  {
    v14 = *(DerivedStorage + 104);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = FigCFWeakReferenceHolderCreateWithReferencedObject(cf);
    *(DerivedStorage + 104) = v15;
    if (v15)
    {
      v12 = cf;
LABEL_8:
      v18 = 0;
      *a2 = v12;
      cf = 0;
      goto LABEL_9;
    }

    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x679, v2, v16, v17);
  }

  v18 = v13;
LABEL_9:
  FigSimpleMutexUnlock(*DerivedStorage);
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t FigNetworkHistoryGetSerializedRecordByteDataSize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = OUTLINED_FUNCTION_19_0(DerivedStorage);
  FigSimpleMutexLock(v3);
  if (*(v1 + 136))
  {
    v4 = (12 * (*(v1 + 156) + *(v1 + 152)) + 24 * (*(v1 + 176) + *(v1 + 200)) + 24);
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexUnlock(*v1);
  return v4;
}

size_t fnh_addBytesToBytesReceivedEntriesBetweenTimestamps(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a4 - 2 * *(DerivedStorage + 16) > a3)
  {
    a3 = a4 - 2 * *(DerivedStorage + 16);
  }

  v11 = (DerivedStorage + 64);
  v12 = (DerivedStorage + 72);
  v13 = **(*(DerivedStorage + 72) + 8);
  v82 = 0;
  v83 = v13;
  if (!v13)
  {
    v14 = CFGetAllocator(a1);
    result = fnh_createBytesReceivedEntry(v14, a4, &v83);
    if (result)
    {
      return result;
    }

    v13 = v83;
    OUTLINED_FUNCTION_3_6(*v11);
    if (v54)
    {
      v18 = v12;
    }

    else
    {
      v18 = v17;
    }

    *v18 = v16;
    *v11 = v13;
    v13[7] = v11;
  }

  v77 = a4 - a3;
  while (*v13 > a4)
  {
    v13 = **(v13[7] + 8);
    if (!v13)
    {
      v83 = 0;
      v19 = CFGetAllocator(a1);
      result = fnh_createBytesReceivedEntry(v19, a4, &v83);
      if (result)
      {
        return result;
      }

      v13 = v83;
      OUTLINED_FUNCTION_3_6(*v11);
      if (v54)
      {
        v22 = v12;
      }

      else
      {
        v22 = v21;
      }

      *v22 = v20;
      *v11 = v13;
LABEL_24:
      v13[7] = v11;
      goto LABEL_25;
    }
  }

  if (a3 > v13[1] || (OUTLINED_FUNCTION_4_6(), v23 < a4))
  {
    v24 = CFGetAllocator(a1);
    result = fnh_createBytesReceivedEntry(v24, a4, &v82);
    if (result)
    {
      return result;
    }

    v26 = v13[6];
    v25 = v13 + 6;
    v11 = v25;
    OUTLINED_FUNCTION_15_0(v26);
    if (v54)
    {
      v30 = v12;
    }

    else
    {
      v30 = v29;
    }

    *v30 = v28;
    *v25 = v27;
    v13 = v27;
    goto LABEL_24;
  }

LABEL_25:
  OUTLINED_FUNCTION_1_16();
  if (v35 != v36)
  {
    v37 = 0;
    v38 = a2;
    v39 = v13;
    while (1)
    {
      v40 = v32 / v33 * v33;
      if (a3 <= v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = a3;
      }

      if (v34 >= a4)
      {
        v42 = a4;
      }

      else
      {
        v42 = v34;
      }

      if (v77 < 1)
      {
        v43 = 1.0;
      }

      else
      {
        v43 = (v42 - v41) / v77;
      }

      v44 = (v43 * v38);
      v80 = 0u;
      v81 = 0u;
      __s1 = 0u;
      v79 = 0u;
      v45 = *v39;
      v46 = *(v39 + 1);
      v47 = *(v39 + 3);
      v80 = *(v39 + 2);
      v81 = v47;
      __s1 = v45;
      v79 = v46;
      if (v32 >= v41)
      {
        v32 = v41;
      }

      *v39 = v32;
      if (v31 <= v42)
      {
        v31 = v42;
      }

      *v12 = v31;
      v39[3] += v44;
      if (!v37 && !memcmp(&__s1, v39, 0x40uLL))
      {
        v37 = 0;
        v76 = 1;
      }

      else
      {
        v76 = 0;
        v39[2] = a5;
        v37 = 1;
      }

      v48 = CMBaseObjectGetDerivedStorage(a1);
      v49 = **(v39[7] + 8);
      if (v49)
      {
        v50 = v48;
        do
        {
          v51 = *v39;
          v53 = *v49;
          v52 = v49[1];
          v54 = *v39 < v52 || v51 == v53;
          if (!v54)
          {
            break;
          }

          if (v51 >= v53)
          {
            v51 = *v49;
          }

          *v39 = v51;
          if (*v12 > v52)
          {
            v52 = *v12;
          }

          *v12 = v52;
          v39[3] += v49[3];
          v56 = v49[6];
          v55 = v49[7];
          v57 = **(v55 + 8);
          if (v56)
          {
            *(v56 + 56) = v55;
            v55 = v49[7];
          }

          else
          {
            *(v50 + 72) = v55;
          }

          *v55 = v56;
          v58 = CFGetAllocator(a1);
          CFAllocatorDeallocate(v58, v49);
          v49 = v57;
        }

        while (v57);
      }

      CMBaseObjectGetDerivedStorage(a1);
      if (a3 >= *v39)
      {
        break;
      }

      v59 = CMBaseObjectGetDerivedStorage(a1);
      v60 = *v39 - 1;
      v84 = **(v39[7] + 8);
      v13 = v84;
      if (v84)
      {
        if (v60 > v84[1])
        {
          v61 = CFGetAllocator(a1);
          result = fnh_createBytesReceivedEntry(v61, v60, &v84);
          if (result)
          {
            return result;
          }

          v62 = v39[7];
          v13 = v84;
          v84[7] = v62;
          v13[6] = v39;
          *v62 = v13;
          v39[7] = (v13 + 6);
        }
      }

      else
      {
        v63 = v59;
        v64 = CFGetAllocator(a1);
        result = fnh_createBytesReceivedEntry(v64, v60, &v84);
        if (result)
        {
          return result;
        }

        v66 = *(v63 + 64);
        v65 = (v63 + 64);
        v13 = v84;
        v67 = v84;
        v84[6] = v66;
        v68 = v67 + 6;
        v69 = (v66 + 56);
        if (v66)
        {
          v70 = v69;
        }

        else
        {
          v70 = v65 + 1;
        }

        *v70 = v68;
        *v65 = v13;
        v13[7] = v65;
      }

      v71 = v13[6];
      if (v71 && v13[1] > *v71)
      {
        OUTLINED_FUNCTION_0_27();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, 0xFFFFBABCuLL, "<<<< FigNetworkHistory >>>>", 0x3A1, v73, v74, v75);
        v13 = v39;
        if (result)
        {
          return result;
        }
      }

      else
      {
        v39 = v13;
      }

      OUTLINED_FUNCTION_1_16();
      if (v35 == v36)
      {
        goto LABEL_77;
      }
    }
  }

  else
  {
    v76 = 1;
LABEL_77:
    if ((v76 & 1) == 0)
    {
      do
      {
        v13[2] = a5;
        v13 = v13[6];
      }

      while (v13);
    }
  }

  return 0;
}

uint64_t fnh_addRTTToBytesReceivedEntriesBetweenTimestamps(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v15 = DerivedStorage;
  if (a6 - 2 * *(DerivedStorage + 16) > a4)
  {
    a4 = a6 - 2 * *(DerivedStorage + 16);
  }

  v16 = (DerivedStorage + 64);
  v17 = *(DerivedStorage + 72);
  v43 = (DerivedStorage + 72);
  v44 = 0;
  v18 = **(v17 + 8);
  v45 = v18;
  if (v18)
  {
LABEL_8:
    while (*v18 > a6)
    {
      v18 = **(*(v18 + 56) + 8);
      if (!v18)
      {
        v45 = 0;
        v25 = CFGetAllocator(a1);
        result = fnh_createBytesReceivedEntry(v25, a6, &v45);
        if (result)
        {
          return result;
        }

        v18 = v45;
        OUTLINED_FUNCTION_3_6(*v16);
        v28 = v43;
        if (!v24)
        {
          v28 = v27;
        }

        *v28 = v26;
        *v16 = v18;
LABEL_20:
        *(v18 + 56) = v16;
        goto LABEL_21;
      }
    }

    if (a4 > *(v18 + 8) || (OUTLINED_FUNCTION_4_6(), v29 < a6))
    {
      v30 = CFGetAllocator(a1);
      result = fnh_createBytesReceivedEntry(v30, a6, &v44);
      if (result)
      {
        return result;
      }

      v32 = *(v18 + 48);
      v31 = (v18 + 48);
      v16 = v31;
      OUTLINED_FUNCTION_15_0(v32);
      v36 = v43;
      if (!v24)
      {
        v36 = v35;
      }

      *v36 = v34;
      *v31 = v33;
      v18 = v33;
      goto LABEL_20;
    }

    do
    {
LABEL_21:
      v37 = *(v18 + 8) - 1;
      if (v37 <= *v18)
      {
        v37 = *v18;
      }

      if (a4 >= *(v15 + 24) + v37 / *(v15 + 24) * *(v15 + 24))
      {
        break;
      }

      v38 = *(v18 + 40);
      if (v38)
      {
        if (*v18 < a5 || v38 >= a2)
        {
          goto LABEL_37;
        }
      }

      *(v18 + 40) = a2;
      *(v18 + 16) = a7;
      CMBaseObjectGetDerivedStorage(a1);
      v40 = *(v18 + 32);
      if (v40)
      {
        v41 = *v18;
        if (v40 >= a3 || v41 < a5)
        {
          goto LABEL_37;
        }
      }

      *(v18 + 32) = a3;
      *(v18 + 16) = a7;
      CMBaseObjectGetDerivedStorage(a1);
      v41 = *v18;
LABEL_37:
      if (a4 >= v41)
      {
        break;
      }

      v18 = **(*(v18 + 56) + 8);
    }

    while (v18);
    return 0;
  }

  else
  {
    v19 = CFGetAllocator(a1);
    result = fnh_createBytesReceivedEntry(v19, a6, &v45);
    if (!result)
    {
      v18 = v45;
      OUTLINED_FUNCTION_3_6(*v16);
      v23 = v43;
      if (!v24)
      {
        v23 = v22;
      }

      *v23 = v21;
      *v16 = v18;
      *(v18 + 56) = v16;
      goto LABEL_8;
    }
  }

  return result;
}

void fnhp_makePrediction()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v253 = *MEMORY[0x1E69E9840];
  v224 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage(v8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  FigNetworkHistoryBeginImmutabilty(*DerivedStorage);
  v12 = &off_197165000;
  v228 = v7;
  switch(*v5)
  {
    case 0:
      OUTLINED_FUNCTION_6_6(__dst);
      v37 = v224;
      v38 = CMBaseObjectGetDerivedStorage(v224);
      v248 = 0;
      v39 = CMBaseObjectGetDerivedStorage(*v38);
      v40 = *(v39 + 24);
      v48 = OUTLINED_FUNCTION_8_3(v39, v41, v42, v43, v44, v45, v46, v47, v175, v179, v183, v190, v197, v205, v210, v215, v220, v224, v7, v232, v236, v240, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, 0, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
      memcpy(v48, v49, 0xE0uLL);
      fnhp_medianAlgorithmForLatency(v37, v7, v251, v40, (v3 + 32), (v3 + 40), &v248);
      v50 = v248;
      *&__src[0] = 0;
      v249 = 0;
      v250[0] = 0.0;
      *&v246 = 0;
      v251[0] = __dst[0];
      v251[1] = __dst[1];
      memcpy(&v251[2] + 8, &__dst[2] + 8, 0xB8uLL);
      *&v251[2] = 0;
      fnhp_constantLatencyTimeWeightedAlgorithmForBandwidth(v37, 0, v7, v251, fnhp_constantWeightForBandwidthSample, 0, __src, &v246, &v249, v250);
      v25 = v51;
      if (!v51)
      {
        v59 = *&v250[0] + v50 / 2;
        if (v59 < 1)
        {
          v60 = 0.0;
        }

        else
        {
          v60 = *&__src[0] + (v50 / 2) / v59 * (0.0 - *&__src[0]);
        }

        v12 = &off_197165000;
        *v3 = llround(v60);
        v61 = v249;
        *(v3 + 8) = v246;
        *(v3 + 16) = v61;
        *(v3 + 48) = v59;
        goto LABEL_25;
      }

      v12 = &off_197165000;
      goto LABEL_27;
    case 1:
      OUTLINED_FUNCTION_6_6(v251);
      v30 = fnhp_constantLatencyPredictionAlgorithm(v224, v7, v251, v3);
      goto LABEL_12;
    case 2:
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_6(v251);
      v36 = fnhp_linearTimeWeightForBandwidthSample;
      goto LABEL_24;
    case 3:
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_6(v251);
      v36 = fnhp_quadraticTimeWeightForBandwidthSample;
      goto LABEL_24;
    case 4:
      v246 = *v5;
      v31 = *(v5 + 16);
      memcpy(__dst, (v5 + 24), 0xC8uLL);
      v32 = CMBaseObjectGetDerivedStorage(v224);
      v33 = *(CMBaseObjectGetDerivedStorage(*v32) + 24);
      v250[0] = v31 / 1000000000.0 * (v31 / 1000000000.0) * 0.01 / (v33 / 1000000000.0 * (v33 / 1000000000.0));
      *&v250[1] = v33;
      v251[0] = v246;
      *&v251[1] = v31;
      memcpy(&v251[1] + 8, __dst, 0xC8uLL);
      fnhp_timeWeightedConstantLatencyPredictionAlgorithm(v224, fnhp_quadraticTimeWeightWithHighPassUtilizationFilterForBandwidthSample, v250, v7, v251, v3);
      v25 = v34;
      if (!v34)
      {
        v251[0] = v246;
        *&v251[1] = v31;
        memcpy(&v251[1] + 8, __dst, 0xC8uLL);
        memcpy(__src, v3, 0x58uLL);
        fnhp_makeSafeBandwidthMultiplier(v251, __src);
        *(v3 + 24) = v35;
      }

      goto LABEL_27;
    case 5:
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_6(v251);
      v36 = fnhp_logisticTimeWeightForBandwidthSample;
LABEL_24:
      fnhp_timeWeightedConstantLatencyPredictionAlgorithm(v224, v36, 0, v7, v251, v3);
      v25 = v51;
      if (v51)
      {
        goto LABEL_27;
      }

LABEL_25:
      v62 = OUTLINED_FUNCTION_8_3(v51, v52, v53, v54, v55, v56, v57, v58, v175, v179, v183, v190, v197, v205, v210, v215, v220, v224, v228, v232, v236, v240, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
      memcpy(v62, v63, 0xE0uLL);
      memcpy(__src, v3, 0x58uLL);
      v64 = __src;
      break;
    case 6:
      OUTLINED_FUNCTION_6_6(__src);
      OUTLINED_FUNCTION_5_6();
      v112 = v5;
      OUTLINED_FUNCTION_6_6(v251);
      v113 = CMBaseObjectGetDerivedStorage(v224);
      StartTimestamp = fnhp_getStartTimestamp(v224, v7, v251, 1);
      memset(v251, 0, 24);
      if (FigNetworkHistoryGetFirstLatencySampleAfterTime(*v113, StartTimestamp, v115, v251))
      {
        v117 = 0;
        v118 = 0;
        v119 = 0.0;
        v120 = 0.0;
        do
        {
          ++v117;
          v118 += *&v251[0];
          v121 = *&v251[0] - v120;
          v120 = v120 + 1.0 / v117 * v121;
          v119 = v119 + v121 * (*&v251[0] - v120);
        }

        while (FigNetworkHistoryGetNextValidLatencySample(*v113, *&v251[1], v116, v251));
        v122 = v118 / v117;
        if (v119 <= 2.22044605e-16)
        {
          v123 = 0.0;
        }

        else
        {
          v123 = sqrt(v119 / v117);
        }

        v5 = v112;
        *(v3 + 40) = v123;
      }

      else
      {
        v122 = 0;
        v123 = *(v3 + 40);
      }

      *(v3 + 32) = v122;
      fnhp_constantLatencyTimeWeightedAlgorithmForBandwidth(v224, (v123 + v122), v7, __dst, fnhp_logisticTimeWeightForBandwidthSample, 0, v3, v3 + 8, v3 + 16, v3 + 48);
      v25 = v124;
      if (v124)
      {
        goto LABEL_27;
      }

      memcpy(v251, __src, sizeof(v251));
      memcpy(v250, v3, sizeof(v250));
      v64 = v250;
      break;
    case 7:
      memcpy(__dst, v5, 0xB9uLL);
      v13 = *(v5 + 185);
      v14 = *(v5 + 186);
      LODWORD(v250[0]) = *(v5 + 187);
      BYTE4(v250[0]) = *(v5 + 191);
      v216 = *(v5 + 192);
      v221 = *(v5 + 200);
      v15 = *(v5 + 208);
      v16 = CMBaseObjectGetDerivedStorage(v224);
      v24 = v14;
      memset(__src, 0, 88);
      if (!v13 && (v14 & 1) != 0)
      {
        if (v15)
        {
          v28 = v221;
          if (v15 <= (v7 - v221))
          {
            v15 = v7 - v221;
          }
        }

        else
        {
          v16 = CMBaseObjectGetDerivedStorage(*v16);
          v15 = v7 - v16[2];
          v28 = v221;
        }

        v165 = OUTLINED_FUNCTION_8_3(v16, v17, v18, v19, v20, v21, v22, v23, v175, v179, v183, v190, v197, v205, v210, v216, v221, v224, v7, v232, v236, v240, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
        v167 = memcpy(v165, v166, 0xB9uLL);
        BYTE9(v251[11]) = 0;
        BYTE10(v251[11]) = v14;
        *(&v251[11] + 11) = LODWORD(v250[0]);
        HIBYTE(v251[11]) = BYTE4(v250[0]);
        *&v251[12] = v219;
        *(&v251[12] + 1) = v28;
        *&v251[13] = v15;
        v25 = OUTLINED_FUNCTION_12_1(v167, v168, v169, v170, v171, v172, v173, v174, v178, v182, v189, v196, v204, v209, v214, v219, v223, v227, v231, v235, v239, v244, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
        v27 = *(__src + 1);
        v26 = *&__src[0];
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = 1.0;
        if (v24 & 1) != 0 && (v13)
        {
          v211 = __PAIR64__(v24, v13);
          v185 = v5;
          v192 = v3;
          v125 = 0.0;
          v241 = -3000000000;
          v126 = 4000000000;
          v127 = 3000000000;
          v200 = DerivedStorage;
          v206 = v221;
          do
          {
            if (v127 + v15 + 1000000000 >= v7)
            {
              v147 = 0.0;
            }

            else
            {
              HIDWORD(v236) = 0;
              v128 = 0.0;
              v232 = v126;
              do
              {
                v129 = v7;
                v130 = OUTLINED_FUNCTION_8_3(v16, v17, v18, v19, v20, v21, v22, v23, v175, v179, v185, v192, v200, v206, v211, v216, v221, v224, v228, v232, v236, v241, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
                memcpy(v130, v131, 0xB9uLL);
                v133 = v212;
                v132 = BYTE4(v212);
                BYTE9(v251[11]) = v212;
                BYTE10(v251[11]) = BYTE4(v212);
                *(&v251[11] + 11) = LODWORD(v250[0]);
                HIBYTE(v251[11]) = BYTE4(v250[0]);
                v134 = v217;
                v251[12] = v217;
                *&v251[13] = v127 + v15;
                *(&v251[13] + 1) = 3000000000;
                v135 = v225;
                v136 = fnhp_constantLatencyPredictionAlgorithm(v225, v7, v251, __src);
                v137 = *&__src[0];
                v145 = OUTLINED_FUNCTION_8_3(v136, v138, v139, v140, v141, v142, v143, v144, v176, v180, v186, v193, v201, v207, v212, v217, *(&v217 + 1), v225, v229, v233, v237, v242, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
                memcpy(v145, v146, 0xB9uLL);
                BYTE9(v251[11]) = v133;
                BYTE10(v251[11]) = v132;
                *(&v251[11] + 11) = LODWORD(v250[0]);
                HIBYTE(v251[11]) = BYTE4(v250[0]);
                v251[12] = v134;
                *&v251[13] = v15;
                *(&v251[13] + 1) = v127;
                v16 = fnhp_constantLatencyPredictionAlgorithm(v135, v129, v251, __src);
                if (v137 && *&__src[0])
                {
                  v128 = v128 + (v137 - *&__src[0]) * (v137 - *&__src[0]);
                  ++HIDWORD(v236);
                }

                v7 = v228;
                v126 = v232;
                v15 += v127;
              }

              while (v232 + v15 < v228);
              v15 += v241;
              if (HIDWORD(v236))
              {
                v147 = v128 / SHIDWORD(v236);
              }

              else
              {
                v147 = 0.0;
              }
            }

            if (v125 == 0.0)
            {
              v206 = v127;
            }

            else
            {
              v148 = v147 < v125;
              v149 = v147 != 0.0;
              v150 = !v148 || !v149;
              if (!v148 || !v149)
              {
                v147 = v125;
              }

              v151 = v206;
              if (!v150)
              {
                v151 = v127;
              }

              v206 = v151;
            }

            v241 -= 2000000000;
            v126 += 2000000000;
            v125 = v147;
            v152 = v127 >= 0x3F5476A00;
            v127 += 2000000000;
          }

          while (!v152);
          v28 = v206;
          v153 = v216;
          if (v206)
          {
            v154 = v206;
          }

          else
          {
            v154 = v216;
          }

          v155 = OUTLINED_FUNCTION_8_3(v16, v17, v18, v19, v20, v21, v22, v23, v175, v179, v185, v192, v200, v206, v211, v216, v221, v224, v228, v232, v236, v241, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
          v157 = memcpy(v155, v156, 0xB9uLL);
          BYTE9(v251[11]) = v213;
          BYTE10(v251[11]) = BYTE4(v213);
          *(&v251[11] + 11) = LODWORD(v250[0]);
          HIBYTE(v251[11]) = BYTE4(v250[0]);
          *&v251[12] = v153;
          *(&v251[12] + 1) = v154;
          *&v251[13] = v7 - v154;
          v25 = OUTLINED_FUNCTION_12_1(v157, v158, v159, v160, v161, v162, v163, v164, v177, v181, v187, v194, v202, v208, v213, v218, v222, v226, v230, v234, v238, v243, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
          v27 = *(__src + 1);
          v26 = *&__src[0];
          v3 = v195;
          DerivedStorage = v203;
          v12 = &off_197165000;
          v5 = v188;
        }

        else
        {
          v28 = v221;
        }
      }

      if (v27 <= 0.0)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 1.0 / v27;
      }

      *&__src[5] = v29;
      *&__src[4] = v28;
      *(&__src[4] + 1) = v26;
      memcpy(v3, __src, 0x58uLL);
      goto LABEL_27;
    default:
      v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBAB9uLL, "<<<< FigNetworkHistory >>>>", 0xC95, v1, v10, v11);
LABEL_12:
      v25 = v30;
      goto LABEL_27;
  }

  fnhp_makeSafeBandwidthMultiplier(v251, v64);
  *(v3 + 24) = v65;
LABEL_27:
  if (v25)
  {
    goto LABEL_73;
  }

  if ((*(v5 + 8) & 1) == 0 || *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 42))
  {
    goto LABEL_71;
  }

  v184 = v5;
  v66 = CMBaseObjectGetDerivedStorage(v224);
  v67 = *(CMBaseObjectGetDerivedStorage(*v66) + 24);
  OUTLINED_FUNCTION_14_0();
  FigNetworkHistoryBeginImmutabilty(*v66);
  OUTLINED_FUNCTION_13_1();
  if (!FigNetworkHistoryGetFirstBandwidthSampleAfterTime(*v66, v68 / v67 * v67, v67, v69, v251))
  {
    FigNetworkHistoryEndImmutability(*v66);
    goto LABEL_70;
  }

  v198 = DerivedStorage;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = v67 / v12[179];
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  do
  {
    v77 = *(&v251[1] + 1);
    v78 = *&v251[3];
    NextBandwidthSample = FigNetworkHistoryGetNextBandwidthSample(*v66, *&v251[4], v67, v228, v251);
    if (v67 != v78)
    {
      goto LABEL_43;
    }

    v76 = v76 + 1.0;
    v80 = (8 * v77) / v73;
    v81 = v80 - v75;
    if (v76 <= 2.22044605e-16)
    {
      v74 = v74 + v81 * v80;
      v75 = 0.0;
    }

    else
    {
      v75 = v75 + 1.0 / v76 * v81;
      v74 = v74 + v81 * (v80 - v75);
      if (v74 > 2.22044605e-16)
      {
        v82 = sqrt(v74 / v76);
        goto LABEL_36;
      }
    }

    v82 = 0.0;
LABEL_36:
    ++v71;
    if (v82 / v75 > 0.05)
    {
      v70 = 0;
      goto LABEL_43;
    }

    v83 = v70 + 1;
    if (v70 <= 1)
    {
      ++v70;
LABEL_43:
      if (v70)
      {
        v83 = v70;
      }

      else
      {
        v83 = 0;
      }

      if (v70)
      {
        v84 = v76;
      }

      else
      {
        v84 = 0.0;
      }

      if (v70)
      {
        v85 = v75;
      }

      else
      {
        v85 = 0.0;
      }

      if (v70)
      {
        v86 = v74;
      }

      else
      {
        v86 = 0.0;
      }

      if (v70)
      {
        v87 = v71;
      }

      else
      {
        v87 = 0;
      }

      if (v71 >= 1)
      {
        v76 = v84;
        v75 = v85;
      }

      else
      {
        v83 = v70;
      }

      if (v71 >= 1)
      {
        v74 = v86;
        v71 = v87;
      }

      goto LABEL_63;
    }

    if (v80 < v72)
    {
      v80 = v72;
    }

    v72 = v80;
LABEL_63:
    v70 = v83;
  }

  while (NextBandwidthSample);
  FigNetworkHistoryEndImmutability(*v66);
  DerivedStorage = v198;
  if (v72 >= 1 && v72 < *v3)
  {
    *v3 = v72;
    *(v3 + 24) = 0x3FEE666666666666;
  }

LABEL_70:
  v5 = v184;
LABEL_71:
  if ((*(v5 + 8) & 2) == 0 || *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 42))
  {
    goto LABEL_73;
  }

  v191 = v3;
  v199 = DerivedStorage;
  v88 = CMBaseObjectGetDerivedStorage(v224);
  v89 = *(CMBaseObjectGetDerivedStorage(*v88) + 24);
  OUTLINED_FUNCTION_14_0();
  FigNetworkHistoryBeginImmutabilty(*v88);
  OUTLINED_FUNCTION_13_1();
  if (!FigNetworkHistoryGetFirstBandwidthSampleAfterTime(*v88, v90 / v89 * v89, v89, v91, v251))
  {
    FigNetworkHistoryEndImmutability(*v88);
    goto LABEL_142;
  }

  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = v89 / v12[179];
  v98 = 0.0;
  v99 = 0.0;
  v100 = 0.0;
  while (1)
  {
LABEL_76:
    v101 = *(&v251[1] + 1);
    v102 = *&v251[3];
    v103 = FigNetworkHistoryGetNextBandwidthSample(*v88, *&v251[4], v89, v228, v251);
    if (v89 == v102 && v101 >= 1 && v93 <= 10)
    {
      ++v93;
      v94 += v101;
LABEL_95:
      if (!v103)
      {
        goto LABEL_101;
      }

      continue;
    }

    if (v93 < 1)
    {
      goto LABEL_95;
    }

    if (v93 >= 3)
    {
      break;
    }

    v94 = 0;
    v93 = 0;
    if (!v103)
    {
      goto LABEL_101;
    }
  }

  v100 = v100 + 1.0;
  v106 = (8 * v94 / v93) / v97;
  v107 = v106 - v99;
  if (v100 <= 2.22044605e-16)
  {
    v98 = v98 + v107 * v106;
    v99 = 0.0;
  }

  else
  {
    v99 = v99 + 1.0 / v100 * v107;
    v98 = v98 + v107 * (v106 - v99);
    if (v98 > 2.22044605e-16)
    {
      v108 = sqrt(v98 / v100);
      goto LABEL_88;
    }
  }

  v108 = 0.0;
LABEL_88:
  v94 = 0;
  v93 = 0;
  v109 = v92 > 1;
  v110 = v108 / v99 <= 0.05;
  v111 = v96;
  if (v99 >= v96)
  {
    v111 = v99;
  }

  ++v92;
  if (v109 && v110)
  {
    v96 = v111;
    v95 = 1;
  }

  if (v103)
  {
    goto LABEL_76;
  }

LABEL_101:
  FigNetworkHistoryEndImmutability(*v88);
  if (v95)
  {
    *v191 = v96;
    v191[3] = 0x3FEE666666666666;
  }

LABEL_142:
  DerivedStorage = v199;
LABEL_73:
  FigNetworkHistoryEndImmutability(*DerivedStorage);
  OUTLINED_FUNCTION_20_0();
}

uint64_t fnhp_constantLatencyPredictionAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_11_1();
  memcpy(__dst, v7, sizeof(__dst));
  fnhp_timeWeightedConstantLatencyPredictionAlgorithm(v5, fnhp_constantWeightForBandwidthSample, 0, v4, __dst, a4);
  v9 = v8;
  if (!v8)
  {
    OUTLINED_FUNCTION_6_6(__dst);
    memcpy(v12, a4, sizeof(v12));
    fnhp_makeSafeBandwidthMultiplier(__dst, v12);
    a4[3] = v10;
  }

  return v9;
}

void fnhp_medianAlgorithmForLatency(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void *a5, double *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v17 = OUTLINED_FUNCTION_19_0(DerivedStorage);
  v18 = CMBaseObjectGetDerivedStorage(v17);
  memcpy(__dst, a3, 0xE0uLL);
  StartTimestamp = fnhp_getStartTimestamp(a1, a2, __dst, a4);
  memset(__dst, 0, 24);
  FigSimpleMutexLock(*(v7 + 8));
  v23 = malloc_type_calloc(*(v18 + 88), 8uLL, 0x100004000313F17uLL);
  if (v23)
  {
    if (FigNetworkHistoryGetFirstLatencySampleAfterTime(*v7, StartTimestamp, v20, __dst))
    {
      v24 = *v7;
      v25 = CMBaseObjectGetDerivedStorage(*v7);
      FigSimpleMutexLock(*v25);
      CMBaseObjectGetDerivedStorage(v24);
      OUTLINED_FUNCTION_9_3();
      if (v26 != v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = *(v25 + 96);
      }

      FigSimpleMutexUnlock(*v25);
      v29 = __dst[2];
      v30 = CMBaseObjectGetDerivedStorage(a1);
      if (v29 != *(v30 + 32) || *(v30 + 24) != v28)
      {
        v32 = 0;
        v33 = 0;
        *(v7 + 32) = v29;
        v34 = 0.0;
        v35 = 0.0;
        do
        {
          v36 = __dst[0];
          v37 = __dst[2];
          v23[v32++] = __dst[0];
          v33 += v36;
          v38 = v32;
          v39 = v36 - v35;
          v35 = v35 + 1.0 / v32 * v39;
          v34 = v34 + v39 * (v36 - v35);
        }

        while (FigNetworkHistoryGetNextValidLatencySample(*v7, v37, v31, __dst));
        *(v7 + 24) = v28;
        v40 = malloc_type_calloc(v32, 8uLL, 0x10040436913F5uLL);
        v41 = v40;
        if (v40)
        {
          v42 = vdupq_n_s64(v32 - 1);
          v43 = ((v32 - 1) & 0xFFFFFFFFFFFFFFFELL) + 2;
          v44 = xmmword_197165580;
          v45 = v40 + 1;
          v46 = vdupq_n_s64(2uLL);
          v47 = v23;
          do
          {
            v48 = vmovn_s64(vcgeq_u64(v42, v44));
            if (v48.i8[0])
            {
              *(v45 - 1) = v47;
            }

            if (v48.i8[4])
            {
              *v45 = v47 + 1;
            }

            v44 = vaddq_s64(v44, v46);
            v45 += 2;
            v47 += 2;
            v43 -= 2;
          }

          while (v43);
          FigGetMedianValueOfCArray(v40, v32, fnhp_compareInt64, fnhp_averageInt64, 8uLL);
          v50 = v49;
          if (v49)
          {
            v51 = *v49;
          }

          else
          {
            v51 = 0;
          }
        }

        else
        {
          v51 = 0;
          v50 = 0;
        }

        free(v41);
        free(v50);
        *(v7 + 40) = v51;
        if (v34 <= 2.22044605e-16)
        {
          v52 = 0;
        }

        else
        {
          v52 = sqrt(v34 / v38);
        }

        *(v7 + 48) = v52;
        *(v7 + 56) = v33;
      }

      if (a5)
      {
        *a5 = *(v7 + 40);
      }

      if (a6)
      {
        *a6 = *(v7 + 48);
      }

      if (a7)
      {
        *a7 = *(v7 + 56);
      }
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x8C6, v8, v21, v22);
  }

  FigSimpleMutexUnlock(*(v7 + 8));

  free(v23);
}

void *fnhp_averageInt64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (result)
  {
    *result = v3 + v2 + v2 / -2 + v3 / -2;
  }

  return result;
}

void fnhp_constantLatencyTimeWeightedAlgorithmForBandwidth(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v14 = *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 24);
  v31 = 0;
  memcpy(__dst, a4, sizeof(__dst));
  OUTLINED_FUNCTION_18_0();
  fnhp_constantLatencyTimeWeightedAlgorithmForBandwidthHelper(v15, v16, v17, v18, v19, v20, 0, v14, &v31, 0, 0, a10, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19]);
  if (!v21)
  {
    if (v14 <= 0x3B9ACA00)
    {
      v14 = 1000000000;
    }

    memcpy(__dst, a4, sizeof(__dst));
    OUTLINED_FUNCTION_18_0();
    fnhp_constantLatencyTimeWeightedAlgorithmForBandwidthHelper(v22, v23, v24, v25, v26, v27, v28, v14, 0, a8, a9, 0, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19]);
    if (!v29)
    {
      *a7 = v31;
    }
  }
}

void fnhp_constantLatencyTimeWeightedAlgorithmForBandwidthHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, double *a30, double *a31, void *a32)
{
  OUTLINED_FUNCTION_21_0();
  v149 = v36;
  v212 = v37;
  v201 = v38;
  v200 = v39;
  v207 = v40;
  v208 = v41;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  DerivedStorage = CMBaseObjectGetDerivedStorage(v48);
  StartTimestamp = v43[26];
  if (!StartTimestamp)
  {
    OUTLINED_FUNCTION_10_2();
    StartTimestamp = fnhp_getStartTimestamp(v49, v45, __dst, v212);
  }

  WindowSize = fnhp_getWindowSize(v49, v43[2]);
  v53 = v45 - StartTimestamp;
  if (WindowSize > v45 - StartTimestamp)
  {
    v53 = fnhp_getWindowSize(v49, v43[2]);
  }

  if (v43[27])
  {
    v54 = v43[27];
  }

  else
  {
    v54 = v53;
  }

  v229 = 0uLL;
  v228 = 0;
  *v226 = 0u;
  v227 = 0u;
  *v224 = 0u;
  v225 = 0u;
  v223[1] = 0;
  v223[0] = 0;
  v55 = v43[4];
  v221[1] = 0;
  v221[0] = 0;
  memset(v220, 0, sizeof(v220));
  FigSimpleMutexLock(*(DerivedStorage + 8));
  FirstLatencySampleAfterTime = FigNetworkHistoryGetFirstLatencySampleAfterTime(*DerivedStorage, StartTimestamp, v56, v220);
  v58 = v220[0];
  if (!FirstLatencySampleAfterTime)
  {
    v58 = 0;
  }

  v154 = v58;
  if (!v43[2])
  {
    v43[2] = *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 16);
  }

  OUTLINED_FUNCTION_10_2();
  v59 = CMBaseObjectGetDerivedStorage(v49);
  BandwidthPredictionCacheKey = fnhp_createBandwidthPredictionCacheKey(__dst, v212);
  v210 = DerivedStorage;
  if (!BandwidthPredictionCacheKey || (v61 = BandwidthPredictionCacheKey, Value = CFDictionaryGetValue(*(v59 + 16), BandwidthPredictionCacheKey), CFRelease(v61), !Value))
  {
    v172 = 0;
    v173 = 0;
    v167 = 0;
    v170 = 0;
    v179 = 0;
    v180 = 0;
    v177 = 0;
    v178 = 0;
    v176 = 0;
    v163 = 0;
    v164 = 0.0;
    v171 = 0;
    v222[1] = 0;
    v222[0] = 0;
    v168 = 0;
    v169 = 0.0;
    v165 = 0;
    v166 = 0.0;
    v174 = 0.0;
    v175 = 0.0;
    goto LABEL_18;
  }

  v171 = *Value;
  v63 = *(Value + 3);
  v172 = *(Value + 4);
  v173 = *(Value + 2);
  v170 = *(Value + 5);
  v168 = *(Value + 6);
  v169 = *(Value + 1);
  v165 = *(Value + 8);
  v166 = *(Value + 7);
  v174 = *(Value + 10);
  v175 = *(Value + 9);
  v179 = *(Value + 11);
  v180 = *(Value + 12);
  v177 = *(Value + 14);
  v178 = *(Value + 13);
  *v222 = *(Value + 120);
  v176 = *(Value + 17);
  v163 = *(Value + 19);
  v164 = *(Value + 18);
  v64 = CMBaseObjectGetDerivedStorage(v49);
  memset(__dst, 0, 72);
  v167 = v63;
  if (v63 != StartTimestamp)
  {
LABEL_18:
    OUTLINED_FUNCTION_10_2();
    v68 = CMBaseObjectGetDerivedStorage(v49);
    v69 = fnhp_createBandwidthPredictionCacheKey(__dst, v212);
    if (v69)
    {
      v70 = v69;
      CFDictionaryRemoveValue(*(v68 + 16), v69);
      CFRelease(v70);
    }

    else
    {
      OUTLINED_FUNCTION_0_27();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v145, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x808, v146, v147, v148);
    }

    v213 = 0;
    v214 = 0;
    v35 = 0.0;
    v204 = 1;
    v209 = 0.0;
    v34 = 0.0;
    v33 = 0.0;
    v32 = 0.0;
    goto LABEL_21;
  }

  v65 = *v64;
  v66 = CMBaseObjectGetDerivedStorage(*v64);
  v230 = 0;
  FigSimpleMutexLock(*v66);
  FirstBytesReceivedEntryAfterTime = fnh_getFirstBytesReceivedEntryAfterTime(v65, v180 - v212 + 1, v45, &v230, 1);
  if (!FirstBytesReceivedEntryAfterTime)
  {
    FigSimpleMutexUnlock(*v66);
    goto LABEL_18;
  }

  active = fnh_populateBandwidthSampleFromBytesReceivedEntryAndActiveRange(v65, FirstBytesReceivedEntryAfterTime, v230, v212, v45, __dst);
  FigSimpleMutexUnlock(*v66);
  if (!active)
  {
    goto LABEL_18;
  }

  v128 = v179 == *&__dst[0] && v180 == *(&__dst[0] + 1);
  v129 = v128 && v177 == *(&__dst[1] + 1);
  v130 = v129 && v176 == *&__dst[3];
  v131 = v130 && v178 == *&__dst[1];
  if (!v131 || v200 && v174 < vabdd_f64(v175, *&v201))
  {
    goto LABEL_18;
  }

  *(&v227 + 1) = v172;
  v132 = OUTLINED_FUNCTION_16();
  v204 = 0;
  if (FigNetworkHistoryGetNextBandwidthSample(v132, v133, v134, v135, v136))
  {
    OUTLINED_FUNCTION_2_12(v137, v138, v139, v140, v141, v142, v143, v144, *&v149, v150, v152, *&v154, v155, v156, v157, v158, v159, v161, *&v163, v164, *&v165);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_2_12(v137, v138, v139, v140, v141, v142, v143, v144, *&v149, v150, v152, *&v154, v155, v156, v157, v158, v159, v161, *&v163, v164, *&v165);
LABEL_21:
  v71 = OUTLINED_FUNCTION_16();
  if (!FigNetworkHistoryGetFirstBandwidthSampleAfterTime(v71, v72, v73, v74, v75))
  {
    goto LABEL_93;
  }

LABEL_22:
  v160 = v49;
  v162 = StartTimestamp;
  __src = v43;
  v151 = v47 / 2;
  v153 = 8 * v55;
  v203 = v45;
  LastActiveTimestamp = FigNetworkHistoryGetLastActiveTimestamp(*DerivedStorage, v45);
  v219 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v197 = 0;
  v198 = 0;
  v195 = 0;
  v196 = 0;
  v199 = 0;
  v202 = 0;
  v190 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v80 = 0;
  v81 = 0.0;
  v82 = 0;
  v83 = 0;
  v193 = 0.0;
  v194 = 0;
  v192 = 0;
  v205 = LastActiveTimestamp - v54;
  v206 = LastActiveTimestamp;
  v186 = 0.0;
  v187 = 0.0;
  v184 = 0.0;
  v185 = 0;
  v182 = 0.0;
  v183 = 0;
  v181 = 0;
  do
  {
    v84 = v79;
    *v223 = v229;
    v85 = *(&v225 + 1);
    v229 = *v226;
    v86 = v227;
    v87 = v228;
    v218 = v224[0];
    __dst[0] = *v224;
    v216 = v225;
    v217 = v224[1];
    __dst[1] = v225;
    __dst[2] = *v226;
    __dst[3] = v227;
    v215 = *(&v227 + 1);
    *&__dst[4] = v228;
    v88 = v207(__dst, v205, v206, __src, v208);
    if (v88 < 0.0)
    {
      OUTLINED_FUNCTION_0_27();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, 0xFFFFBAB9uLL, "<<<< FigNetworkHistory >>>>", 0xA28, v124, v125, v126);
      goto LABEL_93;
    }

    v89 = v88;
    NextBandwidthSample = FigNetworkHistoryGetNextBandwidthSample(*v210, v87, v212, v203, v224);
    if (v204)
    {
      if (NextBandwidthSample && v219)
      {
        if (v199)
        {
          v202 = 1;
          v171 = v181;
          *v222 = *v221;
          v167 = v189;
          v172 = v191;
          v173 = v188;
          v170 = v190;
          v168 = v183;
          v169 = v182;
          v165 = v185;
          v166 = v184;
          v174 = v187;
          v175 = v186;
          v179 = v198;
          v180 = v197;
          v177 = v195;
          v178 = v196;
          v176 = v192;
          v163 = v194;
          v164 = v193;
        }

        if (v32 <= 2.22044605e-16 || v34 <= 2.22044605e-16)
        {
          v92 = 0.0;
        }

        else
        {
          v92 = sqrt(v34 / v32);
        }

        v187 = v92;
        v199 = 1;
        *v221 = *v223;
        v197 = v78;
        v198 = v84;
        v195 = v83;
        v196 = v77;
        v192 = v82;
        v193 = v81;
        v194 = v80;
        v181 = *&v33;
        v182 = v32;
        v188 = v214;
        v189 = v162;
        v190 = v213;
        v191 = *(&v227 + 1);
        v183 = *&v34;
        v184 = v35;
        v185 = *&v209;
        v186 = *&v201;
      }

      else if (v202)
      {
        v93 = NextBandwidthSample;
        memcpy(__dst, __src, 0xE0uLL);
        v94 = CMBaseObjectGetDerivedStorage(v160);
        v95 = fnhp_createBandwidthPredictionCacheKey(__dst, v212);
        v96 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10200408655B868uLL);
        if (v95)
        {
          if (v96)
          {
            *v96 = v171;
            *(v96 + 1) = v169;
            *(v96 + 2) = v173;
            *(v96 + 3) = v167;
            *(v96 + 4) = v172;
            *(v96 + 5) = v170;
            *(v96 + 6) = v168;
            *(v96 + 7) = v166;
            *(v96 + 8) = v165;
            *(v96 + 9) = v175;
            *(v96 + 10) = v174;
            *(v96 + 11) = v179;
            *(v96 + 12) = v180;
            *(v96 + 13) = v178;
            *(v96 + 14) = v177;
            *(v96 + 120) = *v222;
            *(v96 + 17) = v176;
            *(v96 + 18) = v164;
            *(v96 + 19) = v163;
            CFDictionarySetValue(*(v94 + 16), v95, v96);
            v97 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_0_27();
            v97 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x7F9, v110, v111, v112);
          }

          CFRelease(v95);
        }

        else
        {
          OUTLINED_FUNCTION_0_27();
          v97 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v105, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x7F8, v106, v107, v108);
        }

        if (v97)
        {
          goto LABEL_93;
        }

        NextBandwidthSample = v93;
        v202 = 1;
      }

      else
      {
        v202 = 0;
      }
    }

    if (v86 < 1)
    {
      v81 = v215;
    }

    else
    {
      v98 = v89 * v86;
      v32 = v32 + v98;
      v99 = (8 * v85) / (v86 / 1000000000.0);
      v100 = v99 - v33;
      if (v32 <= 2.22044605e-16)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v33 + v98 / v32 * (v99 - v33);
      }

      if (v200)
      {
        v101 = NextBandwidthSample;
        v102 = v200((8 * v85) / (v86 / 1000000000.0), *&v201);
        NextBandwidthSample = v101;
        v103 = v209 + v98 / v32 * (v102 - v209);
        if (v32 <= 2.22044605e-16)
        {
          v103 = 0.0;
        }

        v104 = v98 * (v102 - v209);
        v209 = v103;
        v35 = v35 + v104 * (v102 - v103);
      }

      v34 = v34 + v100 * v98 * (v99 - v33);
      v213 += v85;
      v81 = v215;
      v214 += v86;
    }

    --v219;
    v77 = v216;
    v78 = v217;
    v79 = v218;
    v80 = v87;
    v82 = v86;
    v83 = v85;
  }

  while (NextBandwidthSample);
  if (__src[4])
  {
    v33 = v153 / (v151 / 1000000000.0 + v153 / v33);
  }

  v113 = 0.0;
  v114 = v32 <= 2.22044605e-16 || v34 <= 2.22044605e-16;
  v115 = 0.0;
  if (!v114)
  {
    v115 = sqrt(v34 / v32);
  }

  if (v32 > 2.22044605e-16 && v35 > 2.22044605e-16)
  {
    v113 = sqrt(v35 / v32);
  }

  v118 = __src[7];
  v117 = __src[8];
  v120 = v118 > 0 && v118 <= v213;
  if (v118)
  {
    v121 = v120;
  }

  else
  {
    v121 = v117 == 0;
  }

  if (v117 < 1)
  {
    if (!v121)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v122 = v117 <= v214 - v154 || v121;
    if ((v122 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  if (a29)
  {
    *a29 = llround(v33);
  }

  if (a30)
  {
    *a30 = v115;
  }

  if (a31)
  {
    *a31 = v113;
  }

  if (a32)
  {
    *a32 = v214;
  }

LABEL_93:
  FigSimpleMutexUnlock(*(v210 + 8));
  OUTLINED_FUNCTION_20_0();
}

void fnhp_timeWeightedConstantLatencyPredictionAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v16 = 0;
  v13 = *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 24);
  memcpy(__dst, a5, sizeof(__dst));
  fnhp_medianAlgorithmForLatency(a1, a4, __dst, v13, &v16, (a6 + 40), 0);
  v14 = v16;
  *(a6 + 32) = v16;
  memcpy(__dst, a5, sizeof(__dst));
  fnhp_constantLatencyTimeWeightedAlgorithmForBandwidth(a1, v14, a4, __dst, a2, a3, a6, a6 + 8, a6 + 16, a6 + 48);
}

size_t FigNetworkHistoryEndImmutability_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0x207, v8, a7, a8);
  *a1 = result;
  return result;
}

BOOL FigNetworkHistoryRequestBecameActive_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x2BC, v8, a7, a8);
  *a1 = v10;
  return v10 == 0;
}

void *FigNetworkHistoryRequestBecameActive_cold_3(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[7] = a2;
  *result = a3;
  v4 = *(a4 + 144);
  if (v4 >= a3)
  {
    v4 = a3;
  }

  *(a4 + 144) = v4;
  result[11] = 0;
  v5 = *(a4 + 168);
  result[12] = v5;
  *v5 = result;
  *(a4 + 168) = result + 11;
  ++*(a4 + 176);
  return result;
}

void FigNetworkHistoryGetGlobal_cold_2()
{
  v20 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    v2 = *MEMORY[0x1E695E4C0];
    CFDictionarySetValue(Mutable, @"NetworkHistoryCreateOption_EnableLogging", *MEMORY[0x1E695E4C0]);
    CFDictionarySetValue(v1, @"NetworkHistoryCreateOption_ContributesToGlobalHistory", v2);
    FigCFDictionarySetInt64(v1, @"NetworkHistoryCreateOption_MaxWindowSize", 600000000000, v3, v4, v5, v6, v7);
    FigCFDictionarySetInt64(v1, @"NetworkHistoryCreateOption_BytesReceivedMaxResolution", 5000000000, v8, v9, v10, v11, v12);
    AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
    FigNetworkHistoryCreate(AllocatorForPermanentAllocations, v1, &v20, v14, v15, v16, v17, v18);
    CFRelease(v1);
    v19 = v20;
  }

  else
  {
    v19 = 0;
  }

  gNetworkHistory = v19;
}

size_t fnh_runOrEnqueueCommand_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x1E5, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoricalPredictorCreate_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0xD15, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoricalPredictorCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0xD12, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoricalPredictorCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBAB9uLL, "<<<< FigNetworkHistory >>>>", 0xD08, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryCreate_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x71F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x71C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0x712, v8, a7, a8);
  *a1 = result;
  return result;
}

void FigNetworkHistoryCopySerializedRecordData_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_11_1();
  *a4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0xE64, v8, v9, v10);
  FigSimpleMutexUnlock(*v6);

  CFAllocatorDeallocate(v5, v4);
}

size_t FigNetworkHistoryCopySerializedRecordData_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0xE3D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t fnh_createBytesReceivedEntry_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x254, v8, a7, a8);
  *a1 = result;
  return result;
}

void __FigTransportConnectionXPCSetCurrentConnection_block_invoke(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3)
{
  v5 = *(a1 + 32);
  xdict = 0;
  FigSimpleMutexLock(*(v5 + 24));
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = xpc_retain(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = _Block_copy(v8);
  }

  else
  {
    v9 = 0;
  }

  FigSimpleMutexUnlock(*(v5 + 24));
  if (v7)
  {
    if (!FigXPCCreateBasicMessage(0x656D7367u, 0, &xdict))
    {
      xpc_dictionary_set_int64(xdict, kNeroTransportConnectionEventHandler_Type, a2);
      if (!FigXPCMessageSetBlockBuffer(xdict, kNeroTransportConnectionEventHandler_BBuf, a3))
      {
        xpc_connection_send_message(v7, xdict);
      }
    }
  }

  if (v9)
  {
    v9[2](v9, a2, a3);
    _Block_release(v9);
  }

  FigXPCRelease(v7);
  FigXPCRelease(xdict);
}

uint64_t ntcxpc_handleClientMessage(void *a1, void *a2)
{
  theBuffer[16] = *MEMORY[0x1E69E9840];
  v24 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v24);
  if (OpCode)
  {
    return OpCode;
  }

  if (v24 != 1701736821)
  {
    if (v24 != 1718383464)
    {
      if (v24 == 1768843636)
      {
        if (_MergedGlobals_17 != -1)
        {
          dispatch_once(&_MergedGlobals_17, &__block_literal_global_15);
        }

        FigSimpleMutexLock(qword_1ED4CC590);
        v5 = qword_1ED4CC580;
        if (qword_1ED4CC580)
        {
          qword_1ED4CC580 = 0;
          xpc_release(v5);
        }

        qword_1ED4CC580 = xpc_retain(a1);
        dword_1ED4CC598 = xpc_connection_get_pid(a1);
        v26 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v26, &type);
        v7 = v26;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v9 = v7;
        }

        else
        {
          v9 = v7 & 0xFFFFFFFE;
        }

        if (v9)
        {
          *length = 136315394;
          *&length[4] = "ntcxpc_handleInit";
          v28 = 1024;
          v29 = dword_1ED4CC598;
          v10 = _os_log_send_and_compose_impl();
          LOBYTE(v7) = v26;
        }

        else
        {
          v10 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v10, v10 != theBuffer, v7, 0, v8);
        FigSimpleMutexUnlock(qword_1ED4CC590);
      }

      return 0;
    }

    if (_MergedGlobals_17 != -1)
    {
      dispatch_once(&_MergedGlobals_17, &__block_literal_global_15);
    }

    int64 = xpc_dictionary_get_int64(a2, "flushPendingPackage");
    FigSimpleMutexLock(qword_1ED4CC590);
    if (qword_1ED4CC578)
    {
      v12 = FigCFWeakReferenceHolderCopyReferencedObject(qword_1ED4CC578);
      FigSimpleMutexUnlock(qword_1ED4CC590);
      if (v12)
      {
        v13 = *(*(CMBaseObjectGetVTable(v12) + 16) + 40);
        if (v13)
        {
          v14 = v13(v12, int64);
        }

        else
        {
          v14 = 4294954514;
        }

LABEL_43:
        CFRelease(v12);
        return v14;
      }
    }

    else
    {
      FigSimpleMutexUnlock(qword_1ED4CC590);
    }

    return 4294955265;
  }

  if (_MergedGlobals_17 != -1)
  {
    dispatch_once(&_MergedGlobals_17, &__block_literal_global_15);
  }

  theBuffer[0] = 0;
  *length = 0;
  data = xpc_dictionary_get_data(a2, "enqueuePkgHeader", length);
  if (!data)
  {
    goto LABEL_46;
  }

  v16 = data;
  BlockBufferData = FigXPCMessageCreateBlockBufferData(*MEMORY[0x1E695E480], a2, "enqueuePackage", theBuffer);
  if (BlockBufferData)
  {
    v14 = BlockBufferData;
    v12 = 0;
    goto LABEL_40;
  }

  v18 = *length;
  if (*length < 8uLL || (v19 = *v16, CMBlockBufferGetDataLength(theBuffer[0]) + v18 != v19) || *v16 < 8u)
  {
LABEL_46:
    v12 = 0;
    v14 = 4294954516;
    goto LABEL_40;
  }

  v20 = xpc_dictionary_get_int64(a2, "enqueuePriority");
  FigSimpleMutexLock(qword_1ED4CC590);
  if (!qword_1ED4CC578)
  {
    FigSimpleMutexUnlock(qword_1ED4CC590);
    v12 = 0;
    goto LABEL_39;
  }

  v12 = FigCFWeakReferenceHolderCopyReferencedObject(qword_1ED4CC578);
  FigSimpleMutexUnlock(qword_1ED4CC590);
  if (!v12)
  {
LABEL_39:
    v14 = 4294955265;
    goto LABEL_40;
  }

  v21 = theBuffer[0];
  v22 = *(*(CMBaseObjectGetVTable(v12) + 16) + 32);
  if (v22)
  {
    v14 = v22(v12, v16, v21, v20);
  }

  else
  {
    v14 = 4294954514;
  }

LABEL_40:
  if (theBuffer[0])
  {
    CFRelease(theBuffer[0]);
  }

  if (v12)
  {
    goto LABEL_43;
  }

  return v14;
}

uint64_t FigReadSchedulerExpediteRequest(dispatch_queue_t *a1, uint64_t a2, int a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3468;
LABEL_14:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<< FigReadScheduler >>", v20, v16, v17, v18);
    goto LABEL_15;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3469;
    goto LABEL_14;
  }

  v6 = CFGetAllocator(a1);
  v7 = rsBatch_Create(v6, &cf);
  if (v7)
  {
LABEL_15:
    v13 = v7;
    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_4_7(v7, v8, 0x14030ADEu);
  if (!v9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949516;
    v20 = 3477;
    goto LABEL_14;
  }

  v10 = v9;
  *v9 = CFRetain(a1);
  v10[1] = a2;
  v11 = cf;
  v12 = CFRetain(cf);
  v10[2] = v12;
  *(v12 + 13) = 1;
  dispatch_group_enter(*(v12 + 5));
  dispatch_async_f(a1[8], v10, readScheduler_HandleExpediteSingleRequestJob);
  if (a3)
  {
    dispatch_group_wait(v11[5], 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t FigReadSchedulerCancelAllClientRequests(dispatch_queue_t *a1, uint64_t a2, int a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3526;
LABEL_14:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<< FigReadScheduler >>", v20, v16, v17, v18);
    goto LABEL_15;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3527;
    goto LABEL_14;
  }

  v6 = CFGetAllocator(a1);
  v7 = rsBatch_Create(v6, &cf);
  if (v7)
  {
LABEL_15:
    v13 = v7;
    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_4_7(v7, v8, 0x62D53EE8u);
  if (!v9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949516;
    v20 = 3535;
    goto LABEL_14;
  }

  v10 = v9;
  *v9 = CFRetain(a1);
  v11 = cf;
  v12 = CFRetain(cf);
  v10[1] = v12;
  v10[2] = a2;
  *(v12 + 13) = 1;
  dispatch_group_enter(*(v12 + 5));
  dispatch_async_f(a1[8], v10, readScheduler_HandleCancelAllClientRequestsJob);
  if (a3)
  {
    dispatch_group_wait(v11[5], 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t FigReadSchedulerExpediteAllClientRequests(dispatch_queue_t *a1, uint64_t a2, int a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3562;
LABEL_14:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<< FigReadScheduler >>", v20, v16, v17, v18);
    goto LABEL_15;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3563;
    goto LABEL_14;
  }

  v6 = CFGetAllocator(a1);
  v7 = rsBatch_Create(v6, &cf);
  if (v7)
  {
LABEL_15:
    v13 = v7;
    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_4_7(v7, v8, 0x62D53EE8u);
  if (!v9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949516;
    v20 = 3571;
    goto LABEL_14;
  }

  v10 = v9;
  *v9 = CFRetain(a1);
  v11 = cf;
  v12 = CFRetain(cf);
  v10[1] = v12;
  v10[2] = a2;
  *(v12 + 13) = 1;
  dispatch_group_enter(*(v12 + 5));
  dispatch_async_f(a1[8], v10, readScheduler_HandleExpediteAllClientRequestsJob);
  if (a3)
  {
    dispatch_group_wait(v11[5], 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void FigReadSchedulerCopyForByteStream_cold_3(const CMBlockBufferCustomBlockSource *a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", a1, v7, v8, v9);
  CFRelease(a2);
}

size_t FigReadSchedulerCopyForByteStream_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0x242, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCopyForByteStream_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xBF2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCopyForByteStream_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xBD9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCopyForByteStream_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xBD8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCreateBatch_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC20, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCreateBatch_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC1F, v3, v4, v5);
  *a1 = result;
  return result;
}

void rsBatch_Create_cold_2(const CMBlockBufferCustomBlockSource *a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", a1, v7, v8, v9);

  CFRelease(a2);
}

size_t rsBatch_Create_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0x3C6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA89uLL, "<< FigReadScheduler >>", 0xC3B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC41, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC3E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC3D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC3C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC37, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t rsRequest_Create_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0x361, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA89uLL, "<< FigReadScheduler >>", 0xC5F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC65, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC62, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC61, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC60, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC5B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCommit_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xC8B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCommit_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC86, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCommit_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC7F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCancel_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xCAC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCancel_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xCA7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCancel_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xCA0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchExpedite_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xCD3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchExpedite_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xCCE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchExpedite_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xCC7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t readScheduler_HandleCommittedBatchExpedite_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xB86, v1, v2, v3);
}

size_t FigReadSchedulerBatchAwaitCompletion_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA87uLL, "<< FigReadScheduler >>", 0xD13, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAwaitCompletion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA88uLL, "<< FigReadScheduler >>", 0xD0C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAwaitCompletion_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD06, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerGetNewClientID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD2A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerGetNewClientID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD29, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigReadSchedulerRequestReadWithDeadline_cold_1(void *a1, CFTypeRef cf, void *a3)
{
  if (a1)
  {
    *a1 = a3[4];
  }

  CFRetain(cf);
  CFRetain(a3);
  v4 = OUTLINED_FUNCTION_3_7();

  dispatch_async_f(v4, v5, v6);
}

size_t FigReadSchedulerRequestReadWithDeadline_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD3A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestReadWithDeadline_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD39, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestReadWithDeadline_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD38, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestReadWithDeadline_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD37, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestBackgroundRead_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD5D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestBackgroundRead_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD5C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestBackgroundRead_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD5B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestBackgroundRead_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD5A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCancelRequest_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xD7B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCancelRequest_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD76, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCancelRequest_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD75, v3, v4, v5);
  *a1 = result;
  return result;
}

void readScheduler_IngestRequest_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0x303, v5, v6, v7);

  CFRelease(a1);
}

size_t readScheduler_IngestRequest_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0x300, v3, v4, v5);
  *a1 = result;
  return result;
}

void figNTPClient_addressInfoCallBack(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, uint64_t a8)
{
  if (a4)
  {
    v13 = qword_1EAF1CDE0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFC1FEuLL, "<<<< FigNTP >>>>", 0xD2, v8, a7, a8);
  }

  else if (a1 && a6)
  {
    if ((a2 & 2) != 0 && *(a6 + 1) == 2)
    {
      UInt32 = FigCFNumberCreateUInt32(*MEMORY[0x1E695E480], *(a6 + 4));
      CFArrayAppendValue(*(a8 + 72), UInt32);
      if (UInt32)
      {
        CFRelease(UInt32);
      }

      *(a8 + 64) = 1;
    }

    if ((a2 & 1) == 0)
    {
      v12 = *(a8 + 48);

      dispatch_semaphore_signal(v12);
    }
  }
}

size_t FigSandboxRegistrationRemoteCreate(int a1, const char *a2, const void *a3, const void *a4, NSObject *a5, void *a6)
{
  xdict = 0;
  *v34 = 0;
  v13 = *MEMORY[0x1E695E480];
  if (qword_1ED4CC5E8 != -1)
  {
    OUTLINED_FUNCTION_0_29();
    dispatch_once_f(v25, v26, v27);
  }

  Instance = _CFRuntimeCreateInstance();
  v15 = Instance;
  if (!Instance)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v31 = v6;
    v32 = 185;
LABEL_20:
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBA3uLL, "<<<< SandboxRegRemote(XPC) >>>>", v32, v31, v29, v30);
LABEL_21:
    v23 = v16;
    goto LABEL_14;
  }

  v16 = remoteSandboxReg_copyRemoteClientForProcess(a1, (Instance + 56));
  if (v16)
  {
    goto LABEL_21;
  }

  v15[2] = CFRetain(a3);
  v17 = CFRetain(a4);
  v15[3] = a5;
  v15[4] = v17;
  dispatch_retain(a5);
  v16 = FigXPCCreateBasicMessage(0x63726538u, 0, v34);
  if (v16)
  {
    goto LABEL_21;
  }

  v18 = strlen(a2);
  v19 = CFDataCreate(v13, a2, v18 + 1);
  if (!v19)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v31 = v6;
    v32 = 200;
    goto LABEL_20;
  }

  v20 = v19;
  v21 = FigXPCMessageSetCFData(*v34, "ExtensionTokenData", v19);
  if (v21)
  {
    goto LABEL_17;
  }

  if (FigIsItOKToLogURLs())
  {
    FigXPCMessageSetCFString(*v34, "ExtensionPath", a3);
  }

  v21 = FigXPCRemoteClientSendSyncMessageCreatingReply(v15[7], *v34, &xdict);
  if (v21)
  {
LABEL_17:
    v23 = v21;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
    v23 = FigXPCRemoteClientAssociateObject(v15[7], v15, uint64);
    if (!v23)
    {
      v15[5] = uint64;
      *a6 = v15;
      v15 = 0;
    }
  }

  CFRelease(v20);
LABEL_14:
  FigXPCRelease(*v34);
  FigXPCRelease(xdict);
  if (v15)
  {
    CFRelease(v15);
  }

  return v23;
}

uint64_t remoteSandboxReg_copyRemoteClientForProcess(int a1, void *a2)
{
  if (a1 == 2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __remoteSandboxReg_copyRemoteClientForProcess_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_11_0;
    v7 = 2;
    if (qword_1ED4CC608 != -1)
    {
      dispatch_once(&qword_1ED4CC608, v6);
    }

    result = dword_1ED4CC5E4;
    if (!dword_1ED4CC5E4)
    {
      v4 = qword_1ED4CC610;
      if (qword_1ED4CC610)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else if (a1 == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __remoteSandboxReg_copyRemoteClientForProcess_block_invoke;
    block[3] = &__block_descriptor_tmp_10;
    v9 = 1;
    if (qword_1ED4CC5F8 != -1)
    {
      dispatch_once(&qword_1ED4CC5F8, block);
    }

    result = _MergedGlobals_19;
    if (!_MergedGlobals_19)
    {
      v4 = qword_1ED4CC600;
      if (qword_1ED4CC600)
      {
LABEL_7:
        v5 = CFRetain(v4);
LABEL_13:
        result = 0;
        *a2 = v5;
        return result;
      }

LABEL_12:
      v5 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

size_t FigSandboxRegistrationRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegRemote(XPC) >>>>", 0xED, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigSandboxRegistrationRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegRemote(XPC) >>>>", 0xEC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigSandboxRegistrationRemoteGetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegRemote(XPC) >>>>", 0xEB, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t FigExternalSphericalBridge_ParseV2SphericalBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  v10 = *a4;
  v11 = a7;
  if (!a6)
  {
    return 0;
  }

  memset(v12, 0, sizeof(v12));
  result = FigAtomStreamInitWithMemoryBlockAndReporter(a5, a6, 0, 0, a7, v12);
  if (!result)
  {
    result = parseSphericalChildBoxes(v12, parseSphericalVideoBox_atomDispatch, v9);
    if (!result)
    {
      *a4 = v10;
    }
  }

  return result;
}

uint64_t FigExternalSphericalBridge_ParseV2StereoModeBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v19[0] = a2;
    v19[1] = a3;
    v20 = *a4;
    v21 = 0;
    if (a6 == 5)
    {
      v10 = 0;
      v11 = 1;
      v12 = 1;
      switch(*(a5 + 4))
      {
        case 0:
          goto LABEL_14;
        case 1:
          goto LABEL_7;
        case 2:
          v11 = 0;
          goto LABEL_6;
        case 4:
          v11 = 0;
          v12 = 0;
LABEL_6:
          v10 = 1;
LABEL_7:
          v13 = *MEMORY[0x1E695E4D0];
          svReader_appendKeyAndValue(v19, @"HasLeftStereoEyeView", *MEMORY[0x1E695E4D0]);
          svReader_appendKeyAndValue(v19, @"HasRightStereoEyeView", v13);
          if (v10)
          {
            if (v11)
            {
              goto LABEL_12;
            }

            v14 = kFigFormatDescriptionViewPackingKind_SideBySide;
          }

          else
          {
            v14 = kFigFormatDescriptionViewPackingKind_OverUnder;
          }

          svReader_appendKeyAndValue(v19, @"ViewPackingKind", *v14);
LABEL_12:
          if ((v12 & 1) == 0)
          {
            svReader_appendKeyAndValue(v19, @"HasEyeViewsReversed", v13);
          }

LABEL_14:
          *a4 = v20;
          break;
        default:
          strcpy(v22, "The spherical stereo mode box contains an unrecognized value.");
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0, "<<<< SphericalBridge >>>>", 0x1B6, v7, v17, v18);
          figBridge_ReportParsingFailureMessage(a7, v22);
          goto LABEL_14;
      }
    }
  }

  return 0;
}

void figBridge_ReportParsingFailureMessage(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = CFStringCreateMutable(v4, 0);
      if (v7)
      {
        v8 = v7;
        CFStringAppendFormat(v7, 0, @" %s.", a2);
        FigCFDictionarySetInt64(v6, @"MessageType", 4, v9, v10, v11, v12, v13);
        CFDictionarySetValue(v6, @"DiagnosticInformation", v8);
        FigCFDictionarySetInt32(v6, @"AnalysisType", 1836019574, v14, v15, v16, v17, v18);
        FigAssetAnalysisReporterAddMessage(a1, v6);
        CFRelease(v8);
      }

      CFRelease(v6);
    }
  }
}

uint64_t parseSphericalHeaderBox(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_18(a1, *MEMORY[0x1E69E9840], v10, v12, SHIDWORD(v12));
  if (v4)
  {
    return v4;
  }

  if (v11 > 4)
  {
    return 0;
  }

  strcpy(v13, "Invalid size of spherical header box.");
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v5 = 4294954584;
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0x13B, v2, v8, v9);
  figBridge_ReportParsingFailureMessage(*(a2 + 24), v13);
  return v5;
}

uint64_t parseSphericalProjectionBox(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &v7, &v6);
  if (!result)
  {
    result = FigAtomStreamInitWithParent(a1, 0, v5);
    if (!result)
    {
      return parseSphericalChildBoxes(v5, parseSphericalProjectionBox_atomDispatch, a2);
    }
  }

  return result;
}

uint64_t parseProjectionHeaderBox(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_18(a1, *MEMORY[0x1E69E9840], v10, v12, SHIDWORD(v12));
  if (v4)
  {
    return v4;
  }

  if (v11 == 16)
  {
    return 0;
  }

  strcpy(v13, "Unrecognized size of spherical projection header box.");
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v5 = 4294954584;
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0xDB, v2, v8, v9);
  figBridge_ReportParsingFailureMessage(*(a2 + 24), v13);
  return v5;
}

uint64_t parseEquirectangularProjectionBox(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &v19, &v18);
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  if (v18 != 20)
  {
    strcpy(v20, "Unrecognized size of spherical equirectangular projection box.");
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v7 = 4294954584;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0xF5, v2, v10, v11);
    figBridge_ReportParsingFailureMessage(a2[3], v20);
    v12 = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0xF7, v2, v13, v14);
    return v7;
  }

  CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData(a1, 0, 20, &v15);
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  if (bswap32(v17) + bswap32(HIDWORD(v16)) < 0x7FFFFFFF)
  {
    v6 = kFigFormatDescriptionProjectionKind_Equirectangular;
  }

  else
  {
    v6 = kFigFormatDescriptionProjectionKind_HalfEquirectangular;
  }

  svReader_appendKeyAndValue(a2, @"ProjectionKind", *v6);
  return 0;
}

size_t FigExternalSphericalBridge_ParseVersion1Properties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< SphericalBridge >>>>", 0x1EE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigExternalSphericalBridge_ParseVersion1Properties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< SphericalBridge >>>>", 0x1E9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigExternalSphericalBridge_ParseVersion1Properties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0x1E0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigExternalSphericalBridge_ParseVersion1Properties_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0x1DF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t parseSphericalChildBoxes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< SphericalBridge >>>>", 0xAD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutableCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x30C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutableCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x328, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutableCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x2E2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutableCopy_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x2DF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutableCopy_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x2DE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_createStylePropertyRunIDKey_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0xEA, v1, v2, v3);
}

size_t FigCaptionDataCreateMutable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x356, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutable_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x353, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutable_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x350, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutable_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x344, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_Equal_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x157, v1, v2, v3);
}

size_t fmcd_Equal_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x158, v1, v2, v3);
}

size_t fmcd_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x11C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x10C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x193, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_CopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x199, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_CopyProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x180, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_CopyProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x17F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1BA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1B8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1C3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1C2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1C9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1CA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1D0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1CF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1DA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1D6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1D5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1DF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1DE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1E4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1E3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1E8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1EE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1ED, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_19(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1F4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_20(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1F3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_21(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1F9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_22(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1F8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_23(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1FE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_24(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1FD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_25(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x203, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_26(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x202, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_27(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x207, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_28(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x206, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_29(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1B4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_30(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1B3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_GetCaptionText_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE10uLL, "<<<< FigMutableCaptionData >>>>", 0x131, v1, v2, v3);
}

size_t fmcd_GetCaptionText_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x130, v1, v2, v3);
}

size_t fmcd_SetCaptionText_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x145, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetCaptionText_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x142, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_CopyStylePropertyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x23B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_CopyStylePropertyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x239, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetStylePropertyInRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x275, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetStylePropertyInRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x277, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetStylePropertyInRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x273, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetStylePropertyInRange_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x272, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_SetStylePropertyInRange_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x271, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_RemoveStylePropertyInRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x298, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_RemoveStylePropertyInRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x29A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fmcd_RemoveStylePropertyInRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x296, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t remoteFigVirtualCaptureCard_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v6 = 0;
  FigXPCRemoteClientDisassociateObject(gFigVirtualCaptureCardRemoteClient, *DerivedStorage);
  if (*(DerivedStorage + 9))
  {
    v2 = 0;
  }

  else
  {
    v3 = FigXPCCreateBasicMessage(0x64697370u, *DerivedStorage, &v6);
    v2 = v6;
    if (!v3)
    {
      FigXPCRemoteClientSendAsyncMessage(gFigVirtualCaptureCardRemoteClient, v6);
      v2 = v6;
    }
  }

  FigXPCRelease(v2);
  return OUTLINED_FUNCTION_1_19(gFigVirtualCaptureCardRemoteClient, v4, "remoteFigVirtualCaptureCard_Finalize");
}

size_t remoteFigVirtualCaptureCard_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = 0;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v18 = 180;
LABEL_8:
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFBCC6uLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", v18, v15, v16, v17);
    goto LABEL_5;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v18 = 181;
    goto LABEL_8;
  }

  *a4 = 0;
  ObjectID = remoteVirtualCaptureCardClient_GetObjectID(a1, &v19);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdCopyPropertyMessage(gFigVirtualCaptureCardRemoteClient, v19, a2, a4, v8, v9, v10, v11);
  }

LABEL_5:
  v12 = ObjectID;
  OUTLINED_FUNCTION_1_19(gFigVirtualCaptureCardRemoteClient, v7, "remoteFigVirtualCaptureCard_CopyProperty");
  return v12;
}

size_t remoteFigVirtualCaptureCard_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  if (a2)
  {
    ObjectID = remoteVirtualCaptureCardClient_GetObjectID(a1, &v16);
    if (!ObjectID)
    {
      ObjectID = FigXPCSendStdSetPropertyMessage(gFigVirtualCaptureCardRemoteClient, v16, a2, a3, v7, v8, v9, v10);
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCC6uLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0xD0, v3, v14, v15);
  }

  v11 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout(gFigVirtualCaptureCardRemoteClient, ObjectID, "remoteFigVirtualCaptureCard_SetProperty", 0);
  return v11;
}

uint64_t remoteFigVirtualCaptureCard_showSystemUserInterface(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  ObjectID = remoteVirtualCaptureCardClient_GetObjectID(a1, &v6);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage(0x73686F77u, v6, &v5);
    if (!ObjectID)
    {
      ObjectID = FigXPCRemoteClientSendSyncMessage(gFigVirtualCaptureCardRemoteClient, v5);
    }
  }

  v3 = ObjectID;
  OUTLINED_FUNCTION_1_19(gFigVirtualCaptureCardRemoteClient, v2, "remoteFigVirtualCaptureCard_showSystemUserInterface");
  FigXPCRelease(v5);
  return v3;
}

size_t remoteFigVirtualCaptureCard_reserveForCaptureToFile(uint64_t a1, const __CFURL *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  xdict = 0;
  v11 = 0;
  ObjectID = remoteVirtualCaptureCardClient_GetObjectID(a1, &v11);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage(0x72657376u, v11, &xdict);
    if (!ObjectID)
    {
      if (CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
      {
        xpc_dictionary_set_string(xdict, "FileURL", buffer);
        ObjectID = FigXPCRemoteClientSendSyncMessage(gFigVirtualCaptureCardRemoteClient, xdict);
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBCBEuLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0x100, v5, v6, v7);
      }
    }
  }

  v8 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout(gFigVirtualCaptureCardRemoteClient, ObjectID, "remoteFigVirtualCaptureCard_reserveForCaptureToFile", 0);
  FigXPCRelease(xdict);
  return v8;
}

uint64_t remoteFigVirtualCaptureCard_saveCapture(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  ObjectID = remoteVirtualCaptureCardClient_GetObjectID(a1, &v6);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage(0x73617665u, v6, &v5);
    if (!ObjectID)
    {
      ObjectID = FigXPCRemoteClientSendSyncMessage(gFigVirtualCaptureCardRemoteClient, v5);
    }
  }

  v3 = ObjectID;
  OUTLINED_FUNCTION_1_19(gFigVirtualCaptureCardRemoteClient, v2, "remoteFigVirtualCaptureCard_saveCapture");
  FigXPCRelease(v5);
  return v3;
}

size_t remoteVirtualCaptureCardClient_EnsureClientEstablished_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBCC3uLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0x6F, v5, v6, v7);
  *a2 = result;
  *(*a1 + 24) = result;
  return result;
}

size_t remoteVirtualCaptureCardClient_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0FuLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0x43, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t remoteVirtualCaptureCardClient_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0FuLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0x44, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t remoteVirtualCaptureCardClient_GetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0FuLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0x42, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAV1Bridge_parseav1c(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7, unsigned int *a8)
{
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v18 = 3127;
LABEL_28:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", v18, v15, v16, v17);
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v18 = 3128;
    goto LABEL_28;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v18 = 3129;
    goto LABEL_28;
  }

  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v18 = 3130;
    goto LABEL_28;
  }

  if (!a8)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v18 = 3131;
    goto LABEL_28;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v8 = *a1;
  if ((v8 & 0x80000000) == 0)
  {
    return 4294954582;
  }

  if ((v8 & 0x7F) != 1)
  {
    return 4294954579;
  }

  v9 = a1[1];
  *a8 = v9 >> 5;
  if (v9 > 0x5F)
  {
    return 4294954582;
  }

  a8[1] = a1[1] & 0x1F;
  a8[2] = a1[2] >> 7;
  v11 = a1[2];
  a8[4] = (v11 >> 4) & 1;
  a8[5] = (a1[2] >> 3) & 1;
  a8[6] = (a1[2] >> 2) & 1;
  a8[7] = a1[2] & 3;
  if ((v11 & 0x40) != 0)
  {
    v12 = 10;
  }

  else
  {
    v12 = 8;
  }

  if ((v11 & 0x20) != 0)
  {
    v13 = 12;
  }

  else
  {
    v13 = v12;
  }

  a8[3] = v13;
  if (a7)
  {
    *a7 |= 0x20u;
  }

  if (a2 >= 5)
  {
    return FigAV1Bridge_parseOBU((a1 + 4), a2 - 4, 0, a3, a4, a5, 0, 2, 1, a6, a7);
  }

  else
  {
    return 0;
  }
}

uint64_t FigAV1Bridge_parseOBU(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v2177 = *MEMORY[0x1E69E9840];
  v2169 = 0u;
  v2170 = 0u;
  v2168 = 0u;
  if (a2 <= 2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v1321 = 2860;
LABEL_810:
    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1317, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", v1321, v1318, v1319, v1320);
    v91 = 0;
    v88 = 0;
    LODWORD(v87) = 0;
    goto LABEL_838;
  }

  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v1321 = 2861;
    goto LABEL_810;
  }

  v13 = a4;
  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v1321 = 2862;
    goto LABEL_810;
  }

  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v1321 = 2863;
    goto LABEL_810;
  }

  if (!a6)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v1321 = 2864;
    goto LABEL_810;
  }

  v15 = a8;
  v2168 = 0uLL;
  *(&v2169 + 1) = a1;
  *&v2170 = a1;
  *(&v2170 + 1) = a1 + a2;
  LODWORD(v2169) = 0;
  v19 = OUTLINED_FUNCTION_5_7(a1, a2, a3, a4, a5, a6, a7, a8, v1352, v1432, v1512, v1592, v1673, v1754, v1833, v1881, v1923, v1964, v2005, v2047, v2087, a5, 0);
  bits = av1_get_bits(v19, v20);
  v29 = v2168;
  if (v2168)
  {
    return v29;
  }

  v30 = OUTLINED_FUNCTION_14_1(bits, v22, v23, v24, v25, v26, v27, v28, v1353, v1433, v1513, v1593, v1674, v1755);
  HIDWORD(v2088) = v30;
  v38 = OUTLINED_FUNCTION_5_7(v30, v31, v32, v33, v34, v35, v36, v37, v1354, v1434, v1514, v1594, v1675, v1756, v1834, v1882, v11, v1965, v2006, v2048, v2088, v2129, 0);
  v40 = av1_get_bits(v38, v39);
  v29 = v2168;
  if (v2168)
  {
    return v29;
  }

  v48 = v40;
  v49 = OUTLINED_FUNCTION_5_7(v40, v41, v42, v43, v44, v45, v46, v47, v1355, v1435, v1515, v1595, v1676, v1757, v1835, v1883, v1924, a3, v2007, v2049, v2089, v2130, 0);
  v51 = av1_get_bits(v49, v50);
  v29 = v2168;
  if (v2168)
  {
    return v29;
  }

  v59 = v51;
  v60 = OUTLINED_FUNCTION_5_7(v51, v52, v53, v54, v55, v56, v57, v58, v1356, v1436, v1516, v1596, v1677, v1758, v1836, v1884, v1925, v1966, v2008, v2050, v2090, v2131, 0);
  uleb128 = av1_get_bits(v60, v61);
  v29 = v2168;
  if (v2168)
  {
    return v29;
  }

  if (!v48)
  {
    v71 = 0;
    HIDWORD(v2009) = 0;
    if (v59)
    {
      goto LABEL_12;
    }

LABEL_15:
    v87 = (~v48 + a2);
    goto LABEL_16;
  }

  v70 = OUTLINED_FUNCTION_10_3(uleb128, v63, v64, v65, v66, v67, v68, v69, v1357, v1437, v1517, v1597, v1678, v1759);
  v71 = v70;
  v79 = OUTLINED_FUNCTION_8_4(v70, v72, v73, v74, v75, v76, v77, v78, v1358, v1438, v1518, v1598, v1679, v1760);
  HIDWORD(v2009) = v79;
  uleb128 = OUTLINED_FUNCTION_10_3(v79, v80, v81, v82, v83, v84, v85, v86, v1359, v1439, v1519, v1599, v1680, v1761);
  if (!v59)
  {
    goto LABEL_15;
  }

LABEL_12:
  uleb128 = av1_get_uleb128(&v2168);
  v29 = v2168;
  if (v2168)
  {
    return v29;
  }

  v87 = uleb128;
LABEL_16:
  v88 = 8 * (DWORD2(v2169) - v2170) - v2169;
  if ((v88 & 7) != 0)
  {
    return 4294954582;
  }

  v2051 = a7;
  v89 = v88 >> 3;
  if (v89 > a2)
  {
    return 4294954582;
  }

  if ((HIDWORD(v2091) - 3) <= 0xFFFFFFFD)
  {
    if (v48)
    {
      v90 = *(v13 + 6052);
      if (v90)
      {
        if ((((1 << (BYTE4(v2009) + 8)) | (1 << v71)) & ~v90) != 0)
        {
          v91 = 0;
          v29 = 0;
          goto LABEL_838;
        }
      }
    }
  }

  v91 = 0;
  v29 = 0;
  switch(HIDWORD(v2091))
  {
    case 1:
      v99 = 8 * (DWORD2(v2169) - v2170) - v2169;
      v100 = OUTLINED_FUNCTION_10_3(uleb128, v63, v64, v65, v66, v67, v68, v69, v1357, v1437, v1517, v1597, v1678, v1759);
      v108 = v2132;
      *v2132 = v100;
      if (v100 > 1)
      {
        v1766 = v13;
        v212 = 1118;
LABEL_72:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_20();
        v219 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v215, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", v212, v216, v217, v218);
        if (v219)
        {
          return v219;
        }

        goto LABEL_781;
      }

      v109 = v100;
      v110 = OUTLINED_FUNCTION_5_7(v100, v101, v102, v103, v104, v105, v106, v107, v1360, v1440, v1520, v1600, v1681, v1762, v1837, v1885, v1926, v1967, v2009, v2051, v2091, v2132, v2168);
      v112 = OUTLINED_FUNCTION_9_4(v110, v111);
      v108[235] = v112;
      v120 = OUTLINED_FUNCTION_5_7(v112, v113, v114, v115, v116, v117, v118, v119, v1361, v1441, v1521, v1601, v1682, v1763, v1839, v1886, v1927, v1968, v2010, v2052, v2092, v2133, v2168);
      v122 = av1_get_bits(v120, v121);
      v108[236] = v122;
      if (v122)
      {
        if (!a1)
        {
          return 4294954584;
        }

        v108[237] = 0;
        v108[242] = 0;
        v108[247] = 0;
        v108[10] = 1;
        v108[14] = 0;
        v130 = OUTLINED_FUNCTION_10_3(v122, v123, v124, v125, v126, v127, v128, v129, v1362, v1442, v1522, v1602, v1683, v13);
        v108[11] = v130;
        v138 = OUTLINED_FUNCTION_8_4(v130, v131, v132, v133, v134, v135, v136, v137, v1363, v1443, v1523, v1603, v1684, v1765);
        v108[12] = v138;
        *(v108 + 8) = 0;
        v108[15] = 0;
LABEL_681:
        v970 = OUTLINED_FUNCTION_14_1(v138, v139, v140, v141, v142, v143, v144, v145, v1364, v1444, v1524, v1604, v1685, v1766);
        v971 = v970 + 1;
        v108[248] = v970 + 1;
        v979 = OUTLINED_FUNCTION_14_1(v970, v972, v973, v974, v975, v976, v977, v978, v1405, v1485, v1565, v1646, v1726, v1806);
        v980 = v979 + 1;
        v108[249] = v979 + 1;
        v108[1] = OUTLINED_FUNCTION_28_0(v979, v981, v982, v983, v984, v985, v986, v987, v1406, v1486, v1566, v1647, v1727, v1807) + 1;
        v988 = av1_get_bits(&v2168, v980);
        v108[2] = v988 + 1;
        v996 = v108[236];
        if (v996)
        {
          v997 = 0;
          v998 = 250;
        }

        else
        {
          v999 = OUTLINED_FUNCTION_5_7(v988, v989, v990, v991, v992, v993, v994, v995, v1407, v1487, v1567, v1648, v1728, v1808, v1840, v1887, v1928, v1969, v2011, v2051, v2093, v2132, v2168);
          v988 = av1_get_bits(v999, v1000);
          v108[250] = v988;
          if (!v988)
          {
            goto LABEL_686;
          }

          v1001 = OUTLINED_FUNCTION_9_4(&v2168, 4u);
          v108[251] = v1001 + 2;
          v988 = OUTLINED_FUNCTION_10_3(v1001, v1002, v1003, v1004, v1005, v1006, v1007, v1008, v1407, v1487, v1567, v1648, v1728, v1808);
          v997 = v971 + v988 + 3;
          v998 = 252;
        }

        v108[v998] = v997;
LABEL_686:
        v1009 = OUTLINED_FUNCTION_5_7(v988, v989, v990, v991, v992, v993, v994, v995, v1407, v1487, v1567, v1648, v1728, v1808, v1840, v1887, v1928, v1969, v2011, v2051, v2093, v2132, v2168);
        v1011 = av1_get_bits(v1009, v1010);
        v108[253] = v1011;
        v1019 = OUTLINED_FUNCTION_5_7(v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1408, v1488, v1568, v1649, v1729, v1809, v1865, v1907, v1948, v1989, v2031, v2071, v2113, v2152, v2168);
        v1021 = av1_get_bits(v1019, v1020);
        v108[254] = v1021;
        v1029 = OUTLINED_FUNCTION_5_7(v1021, v1022, v1023, v1024, v1025, v1026, v1027, v1028, v1409, v1489, v1569, v1650, v1730, v1810, v1866, v1908, v1949, v1990, v2032, v2072, v2114, v2153, v2168);
        v1031 = av1_get_bits(v1029, v1030);
        v108[255] = v1031;
        if (v996)
        {
          v108[265] = 0;
          *(v108 + 128) = 0;
          *(v108 + 130) = 0;
          *(v108 + 129) = 0;
          v1039 = 2;
          v1040 = 264;
          *(v108 + 131) = 0x200000000;
          goto LABEL_699;
        }

        v1041 = OUTLINED_FUNCTION_5_7(v1031, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1410, v1490, v1570, v1651, v1731, v1811, v1867, v1909, v1950, v1991, v2033, v2073, v2115, v2154, v2168);
        v1043 = av1_get_bits(v1041, v1042);
        v108[256] = v1043;
        v1051 = OUTLINED_FUNCTION_5_7(v1043, v1044, v1045, v1046, v1047, v1048, v1049, v1050, v1411, v1491, v1571, v1652, v1732, v1812, v1868, v1910, v1951, v1992, v2034, v2074, v2116, v2155, v2168);
        v1053 = av1_get_bits(v1051, v1052);
        v108[257] = v1053;
        v1061 = OUTLINED_FUNCTION_5_7(v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1412, v1492, v1572, v1653, v1733, v1813, v1869, v1911, v1952, v1993, v2035, v2075, v2117, v2156, v2168);
        v1063 = av1_get_bits(v1061, v1062);
        v108[258] = v1063;
        v1071 = OUTLINED_FUNCTION_5_7(v1063, v1064, v1065, v1066, v1067, v1068, v1069, v1070, v1413, v1493, v1573, v1654, v1734, v1814, v1870, v1912, v1953, v1994, v2036, v2076, v2118, v2157, v2168);
        v1073 = av1_get_bits(v1071, v1072);
        v108[259] = v1073;
        v1081 = OUTLINED_FUNCTION_5_7(v1073, v1074, v1075, v1076, v1077, v1078, v1079, v1080, v1414, v1494, v1574, v1655, v1735, v1815, v1871, v1913, v1954, v1995, v2037, v2077, v2119, v2158, v2168);
        v1083 = OUTLINED_FUNCTION_9_4(v1081, v1082);
        v108[260] = v1083;
        if (v1083)
        {
          v1091 = OUTLINED_FUNCTION_5_7(v1083, v1084, v1085, v1086, v1087, v1088, v1089, v1090, v1415, v1495, v1575, v1656, v1736, v1816, v1872, v1914, v1955, v1996, v2038, v2078, v2120, v2159, v2168);
          v1093 = av1_get_bits(v1091, v1092);
          v108[261] = v1093;
          v1101 = OUTLINED_FUNCTION_5_7(v1093, v1094, v1095, v1096, v1097, v1098, v1099, v1100, v1416, v1496, v1576, v1657, v1737, v1817, v1873, v1915, v1956, v1997, v2039, v2079, v2121, v2160, v2168);
          v1083 = av1_get_bits(v1101, v1102);
        }

        else
        {
          v108[261] = 0;
          v108[265] = 0;
        }

        v108[262] = v1083;
        v1103 = OUTLINED_FUNCTION_5_7(v1083, v1084, v1085, v1086, v1087, v1088, v1089, v1090, v1415, v1495, v1575, v1656, v1736, v1816, v1872, v1914, v1955, v1996, v2038, v2078, v2120, v2159, v2168);
        v1105 = av1_get_bits(v1103, v1104);
        if (v1105)
        {
          v108[263] = 2;
        }

        else
        {
          v1106 = OUTLINED_FUNCTION_5_7(v1105, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1410, v1490, v1570, v1651, v1731, v1811, v1867, v1909, v1950, v1991, v2033, v2073, v2115, v2154, v2168);
          v1105 = av1_get_bits(v1106, v1107);
          v108[263] = v1105;
          if (!v1105)
          {
            goto LABEL_695;
          }
        }

        v1108 = OUTLINED_FUNCTION_5_7(v1105, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1410, v1490, v1570, v1651, v1731, v1811, v1867, v1909, v1950, v1991, v2033, v2073, v2115, v2154, v2168);
        v1110 = av1_get_bits(v1108, v1109);
        if (!v1110)
        {
          v1111 = OUTLINED_FUNCTION_5_7(v1110, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1410, v1490, v1570, v1651, v1731, v1811, v1867, v1909, v1950, v1991, v2033, v2073, v2115, v2154, v2168);
          v1031 = av1_get_bits(v1111, v1112);
          goto LABEL_697;
        }

LABEL_695:
        v1031 = 2;
LABEL_697:
        v108[264] = v1031;
        if (!v971)
        {
          goto LABEL_700;
        }

        v1031 = OUTLINED_FUNCTION_10_3(v1031, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1410, v1490, v1570, v1651, v1731, v1811);
        v1039 = v1031 + 1;
        v1040 = 265;
LABEL_699:
        v108[v1040] = v1039;
LABEL_700:
        v1113 = OUTLINED_FUNCTION_5_7(v1031, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1410, v1490, v1570, v1651, v1731, v1811, v1867, v1909, v1950, v1991, v2033, v2073, v2115, v2154, v2168);
        v1115 = av1_get_bits(v1113, v1114);
        v108[266] = v1115;
        v1123 = OUTLINED_FUNCTION_5_7(v1115, v1116, v1117, v1118, v1119, v1120, v1121, v1122, v1417, v1497, v1577, v1658, v1738, v1818, v1874, v1916, v1957, v1998, v2040, v2080, v2122, v2161, v2168);
        v1125 = av1_get_bits(v1123, v1124);
        v108[267] = v1125;
        v1133 = OUTLINED_FUNCTION_5_7(v1125, v1126, v1127, v1128, v1129, v1130, v1131, v1132, v1418, v1498, v1578, v1659, v1739, v1819, v1875, v1917, v1958, v1999, v2041, v2081, v2123, v2162, v2168);
        v1135 = av1_get_bits(v1133, v1134);
        v108[268] = v1135;
        v1143 = OUTLINED_FUNCTION_5_7(v1135, v1136, v1137, v1138, v1139, v1140, v1141, v1142, v1419, v1499, v1579, v1660, v1740, v1820, v1876, v1918, v1959, v2000, v2042, v2082, v2124, v2163, v2168);
        v1145 = OUTLINED_FUNCTION_9_4(v1143, v1144);
        v108[8] = v1145;
        if (v109 == 1)
        {
          v1153 = 0;
        }

        else
        {
          v1154 = OUTLINED_FUNCTION_5_7(v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1420, v1500, v1580, v1661, v1741, v1821, v1877, v1919, v1960, v2001, v2043, v2083, v2125, v2164, v2168);
          v1145 = av1_get_bits(v1154, v1155);
          v1153 = v1145;
        }

        v108[271] = v1153;
        v1156 = OUTLINED_FUNCTION_5_7(v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1420, v1500, v1580, v1661, v1741, v1821, v1877, v1919, v1960, v2001, v2043, v2083, v2125, v2164, v2168);
        v1158 = av1_get_bits(v1156, v1157);
        v108[272] = v1158;
        if (v1158)
        {
          v1166 = OUTLINED_FUNCTION_11_2(v1158, v1159, v1160, v1161, v1162, v1163, v1164, v1165, v1421, v1501, v1581, v1662, v1742, v1822);
          v1167 = v1166;
          v108[4] = v1166;
          v1175 = OUTLINED_FUNCTION_11_2(v1166, v1168, v1169, v1170, v1171, v1172, v1173, v1174, v1422, v1502, v1582, v1663, v1743, v1823);
          v1176 = v108;
          v1177 = v1175;
          v1176[5] = v1175;
          v1158 = OUTLINED_FUNCTION_11_2(v1175, v1178, v1179, v1180, v1181, v1182, v1183, v1184, v1423, v1503, v1583, v1664, v1744, v1824);
          v1176[6] = v1158;
          if (!v1153)
          {
            v1185 = v1167 == 1 && v1177 == 13;
            if (v1185 && !v1158)
            {
              OUTLINED_FUNCTION_23_0();
              v1176[9] = 1;
              if (v109 != 1)
              {
                return 4294954584;
              }

              goto LABEL_777;
            }

LABEL_715:
            v1198 = OUTLINED_FUNCTION_5_7(v1158, v1159, v1160, v1161, v1162, v1163, v1164, v1165, v1421, v1501, v1581, v1662, v1742, v1822, v1878, v1920, v1961, v2002, v2044, v2084, v2126, v2165, v2168);
            v1200 = av1_get_bits(v1198, v1199);
            v1176[9] = v1200;
            if (v109)
            {
              if (v109 == 1)
              {
                OUTLINED_FUNCTION_23_0();
LABEL_774:
                v1197 = 7;
LABEL_775:
                v1176[v1197] = v1196;
                if (v1176[271])
                {
                  v1289 = 0;
LABEL_780:
                  v1176[273] = v1289;
                  v1290 = OUTLINED_FUNCTION_5_7(v1196, v1188, v1189, v1190, v1191, v1192, v1193, v1194, v1421, v1501, v1581, v1662, v1742, v1822, v1878, v1920, v1961, v2002, v2044, v2084, v2126, v2165, v2168);
                  v1292 = av1_get_bits(v1290, v1291);
                  v1176[274] = v1292;
                  v1300 = OUTLINED_FUNCTION_5_7(v1292, v1293, v1294, v1295, v1296, v1297, v1298, v1299, v1430, v1510, v1590, v1671, v1751, v1831, v1880, v1922, v1963, v2004, v2046, v2086, v2128, v2167, v2168);
                  av1_get_bits(v1300, v1301);
LABEL_781:
                  v219 = check_for_overrun(&v2168, v99, v87);
                  if (v219)
                  {
                    return v219;
                  }

                  v13 = v1766;
                  *(v1766 + 3312) = v2132;
                  if (v2169 <= 7)
                  {
                    v29 = 0;
                  }

                  else
                  {
                    v29 = 4294954584;
                  }

                  v91 = 2;
                  v88 = v99;
                  goto LABEL_829;
                }

LABEL_777:
                v1196 = OUTLINED_FUNCTION_4_8(&v2168);
                v1289 = !v332;
                goto LABEL_780;
              }

              if (v1176[269] != 1 || v1176[270] != 1)
              {
                v1196 = 0;
                goto LABEL_774;
              }
            }

            else
            {
              v1176[3] = 1;
              *(v1176 + 269) = 0x100000001;
            }

            v1196 = OUTLINED_FUNCTION_8_4(v1200, v1188, v1189, v1190, v1191, v1192, v1193, v1194, v1421, v1501, v1581, v1662, v1742, v1822);
            goto LABEL_774;
          }
        }

        else
        {
          *(v108 + 2) = 0x200000002;
          v108[6] = 2;
          v1176 = v108;
          if (!v1153)
          {
            goto LABEL_715;
          }
        }

        v1186 = OUTLINED_FUNCTION_5_7(v1158, v1159, v1160, v1161, v1162, v1163, v1164, v1165, v1421, v1501, v1581, v1662, v1742, v1822, v1878, v1920, v1961, v2002, v2044, v2084, v2126, v2165, v2168);
        v1195 = av1_get_bits(v1186, v1187);
        v1196 = 0;
        v1176[9] = v1195;
        v1176[3] = 0;
        *(v1176 + 269) = 0x100000001;
        v1176[7] = 0;
        v1197 = 273;
        goto LABEL_775;
      }

      v183 = OUTLINED_FUNCTION_5_7(v122, v123, v124, v125, v126, v127, v128, v129, v1362, v1442, v1522, v1602, v1683, v1764, v1840, v1887, v1928, v1969, v2011, v2051, v2093, v2132, v2168);
      v185 = av1_get_bits(v183, v184);
      v108[237] = v185;
      v1767 = v13;
      if (!v185)
      {
        v353 = 0;
        v354 = 242;
        goto LABEL_662;
      }

      v108[238] = av1_get_bits(&v2168, 0x20u);
      v193 = av1_get_bits(&v2168, 0x20u);
      v108[239] = v193;
      v201 = OUTLINED_FUNCTION_5_7(v193, v194, v195, v196, v197, v198, v199, v200, v1365, v1445, v1525, v1605, v1686, v13, v1841, v1888, v1929, v1970, v2012, v2053, v2094, v2134, v2168);
      v203 = av1_get_bits(v201, v202);
      v108[240] = v203;
      if (!v203)
      {
        goto LABEL_660;
      }

      v211 = 0;
      v212 = 1153;
      while (1)
      {
        v213 = OUTLINED_FUNCTION_5_7(v203, v204, v205, v206, v207, v208, v209, v210, v1366, v1446, v1526, v1606, v1687, v1766, v1842, v1889, v1930, v1971, v2013, v2051, v2095, v2132, v2168);
        v203 = av1_get_bits(v213, v214);
        if (v203)
        {
          break;
        }

        if (++v211 == 32)
        {
          goto LABEL_72;
        }
      }

      if (v211)
      {
        v203 = av1_get_bits(&v2168, v211);
        v497 = v203 + ~(-1 << v211);
        if (v497 == -1)
        {
          v212 = 1153;
          goto LABEL_72;
        }
      }

      else
      {
        v497 = 0;
      }

      v29 = v2168;
      if (!v2168)
      {
        v108 = v2132;
        v2132[241] = v497 + 1;
LABEL_660:
        v897 = OUTLINED_FUNCTION_5_7(v203, v204, v205, v206, v207, v208, v209, v210, v1366, v1446, v1526, v1606, v1687, v1766, v1842, v1889, v1930, v1971, v2013, v2051, v2095, v2132, v2168);
        v185 = av1_get_bits(v897, v898);
        v108[242] = v185;
        if (!v185)
        {
LABEL_663:
          v915 = OUTLINED_FUNCTION_5_7(v185, v186, v187, v188, v189, v190, v191, v192, v1365, v1445, v1525, v1605, v1686, v1767, v1841, v1888, v1929, v1970, v2012, v2053, v2094, v2134, v2168);
          v917 = av1_get_bits(v915, v916);
          v108[247] = v917;
          v138 = OUTLINED_FUNCTION_27_0(v917, v918, v919, v920, v921, v922, v923, v924, v1401, v1481, v1561, v1642, v1722, v1802);
          v925 = (v138 + 1);
          v108[10] = v925;
          if (v138 > 0x7FFFFFFE)
          {
            goto LABEL_681;
          }

          v926 = v108 + 11;
          v927 = v108 + 277;
          while (1)
          {
            v928 = av1_get_bits(&v2168, 0xCu);
            v926[3] = v928;
            if (v928 && (!v928 || (v928 & 0xF00) == 0))
            {
              goto LABEL_781;
            }

            v936 = OUTLINED_FUNCTION_10_3(v928, v929, v930, v931, v932, v933, v934, v935, v1364, v1444, v1524, v1604, v1685, v1766);
            v937 = v936 + 2;
            *v926 = v936 + 2;
            v945 = OUTLINED_FUNCTION_8_4(v936, v938, v939, v940, v941, v942, v943, v944, v1402, v1482, v1562, v1643, v1723, v1803);
            v926[1] = v945;
            if (v937 < 4)
            {
              v138 = 0;
            }

            else
            {
              v946 = OUTLINED_FUNCTION_5_7(v945, v139, v140, v141, v142, v143, v144, v145, v1364, v1444, v1524, v1604, v1685, v1766, v1840, v1887, v1928, v1969, v2011, v2051, v2093, v2132, v2168);
              v138 = av1_get_bits(v946, v947);
            }

            v108 = v2132;
            v926[4] = v138;
            if (v2132[242])
            {
              v138 = OUTLINED_FUNCTION_3_8(&v2168);
              v926[5] = v948;
              if (v138)
              {
                v949 = OUTLINED_FUNCTION_28_0(v138, v139, v140, v141, v142, v143, v144, v145, v1364, v1444, v1524, v1604, v1685, v1766);
                *(v927 - 2) = v949;
                v957 = OUTLINED_FUNCTION_28_0(v949, v950, v951, v952, v953, v954, v955, v956, v1403, v1483, v1563, v1644, v1724, v1804);
                *(v927 - 1) = v957;
                v965 = OUTLINED_FUNCTION_5_7(v957, v958, v959, v960, v961, v962, v963, v964, v1404, v1484, v1564, v1645, v1725, v1805, v1840, v1887, v1928, v1969, v2011, v2051, v2093, v2132, v2168);
                v138 = av1_get_bits(v965, v966);
                *v927 = v138;
              }
            }

            else
            {
              v926[5] = 0;
            }

            v967 = v108[247];
            if (!v967)
            {
              break;
            }

            v138 = OUTLINED_FUNCTION_3_8(&v2168);
            v926[6] = v968;
            if (v138)
            {
              v138 = OUTLINED_FUNCTION_14_1(v138, v139, v140, v141, v142, v143, v144, v145, v1364, v1444, v1524, v1604, v1685, v1766);
              v967 = v138 + 1;
              v969 = 2;
LABEL_679:
              v926[v969] = v967;
            }

            v926 += 7;
            v927 += 3;
            if (!--v925)
            {
              goto LABEL_681;
            }
          }

          v969 = 6;
          goto LABEL_679;
        }

        v108[243] = OUTLINED_FUNCTION_27_0(v185, v186, v187, v188, v189, v190, v191, v192, v1365, v1445, v1525, v1605, v1686, v1767) + 1;
        v899 = av1_get_bits(&v2168, 0x20u);
        v108[244] = v899;
        v907 = OUTLINED_FUNCTION_27_0(v899, v900, v901, v902, v903, v904, v905, v906, v1399, v1479, v1559, v1640, v1720, v1800);
        v108[245] = v907 + 1;
        v185 = OUTLINED_FUNCTION_27_0(v907, v908, v909, v910, v911, v912, v913, v914, v1400, v1480, v1560, v1641, v1721, v1801);
        v353 = v185 + 1;
        v354 = 246;
LABEL_662:
        v108[v354] = v353;
        goto LABEL_663;
      }

      return v29;
    case 2:
    case 0xF:
      goto LABEL_829;
    case 3:
    case 6:
      if ((v15 & 4) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 4:
      goto LABEL_551;
    case 5:
      if ((v15 & 0x10) == 0)
      {
LABEL_28:
        v91 = 0;
        goto LABEL_552;
      }

      LODWORD(v1885) = 8 * (DWORD2(v2169) - v2170) - v2169;
      v157 = v87;
      v2172 = v2169;
      v2173 = v2170;
      v2171 = v2168;
      v158 = DWORD2(v2169);
      v159 = v2170;
      v160 = v2169;
      v161 = av1_get_uleb128(&v2171);
      v29 = v2171;
      if (v2171)
      {
        goto LABEL_820;
      }

      v88 = v1885;
      v170 = v87 - ((8 * (v158 - v159) - v160 - v1885) >> 3);
      if ((v170 + v89) > a2)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_20();
        v1330 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1326, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xAE5, v1327, v1328, v1329);
        v88 = v1885;
        v29 = v1330;
        v91 = 0;
        goto LABEL_829;
      }

      if (v170 < 1)
      {
        goto LABEL_57;
      }

      while (!*(a1 + (v89 - 1 + v170)))
      {
        v171 = __OFSUB__(v170--, 1);
        if ((v170 < 0) ^ v171 | (v170 == 0))
        {
          v170 = 0;
          break;
        }
      }

LABEL_57:
      switch(v161)
      {
        case 1:
          if (v170 <= 5)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_20();
            v1335 = 2816;
            goto LABEL_818;
          }

          OUTLINED_FUNCTION_20_1(v161, v162, v163, v164, v165, v166, v167, v168, v1357, v1437, v1517, v1597, v1678, v1759, v1837, v1885, v1926, v1967, v2009, v2051, v2091, v2132, v2168, *(&v2168 + 1), v2169, *(&v2169 + 1), v2170, *(&v2170 + 1), v2171, v2172, v169);
          v369 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
          *(v13 + 3344) = v369;
          if (v369)
          {
            v370 = v369;
            *v369 = OUTLINED_FUNCTION_15_1();
            v371 = OUTLINED_FUNCTION_15_1();
            v370[1] = v371;
            if (!OUTLINED_FUNCTION_6_7(v371, v372, v373, v374, v375, v376, v377, v378, v1370, v1450, v1530, v1611, v1691, v1771, v1845, v1885))
            {
              if ((v15 & 0x100) == 0)
              {
                v379 = *(v13 + 3344);
                if (v379)
                {
                  *(v13 + 3344) = 0;
                  free(v379);
                }
              }

              v29 = 0;
              v182 = 256;
              goto LABEL_827;
            }

            v1336 = *(v13 + 3344);
            if (v1336)
            {
              *(v13 + 3344) = 0;
              goto LABEL_825;
            }
          }

          break;
        case 2:
          if (v170 <= 25)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_20();
            v1335 = 2823;
            goto LABEL_818;
          }

          OUTLINED_FUNCTION_20_1(v161, v162, v163, v164, v165, v166, v167, v168, v1357, v1437, v1517, v1597, v1678, v1759, v1837, v1885, v1926, v1967, v2009, v2051, v2091, v2132, v2168, *(&v2168 + 1), v2169, *(&v2169 + 1), v2170, *(&v2170 + 1), v2171, v2172, v169);
          v356 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL);
          *(v13 + 3360) = v356;
          if (v356)
          {
            v357 = v356;
            v358 = v356 + 2;
            v359 = 3;
            do
            {
              *(v358 - 1) = OUTLINED_FUNCTION_15_1();
              *v358 = OUTLINED_FUNCTION_15_1();
              v358 += 2;
              --v359;
            }

            while (v359);
            *(v357 + 6) = OUTLINED_FUNCTION_15_1();
            *(v357 + 7) = OUTLINED_FUNCTION_15_1();
            *(v357 + 4) = av1_get_bits(&v2174, 0x20u);
            v360 = av1_get_bits(&v2174, 0x20u);
            *(v357 + 5) = v360;
            if (!OUTLINED_FUNCTION_6_7(v360, v361, v362, v363, v364, v365, v366, v367, v1369, v1449, v1529, v1610, v1690, v1770, v1844, v1885))
            {
              if ((v15 & 0x200) == 0)
              {
                v368 = *(v13 + 3360);
                if (v368)
                {
                  *(v13 + 3360) = 0;
                  free(v368);
                }
              }

              v29 = 0;
              v182 = 512;
              goto LABEL_827;
            }

            v1336 = *(v13 + 3360);
            if (v1336)
            {
              *(v13 + 3360) = 0;
LABEL_825:
              free(v1336);
            }
          }

          break;
        case 4:
          if (v170 > 7)
          {
            v172 = av1_get_bits(&v2171, 8u);
            *(v13 + 3376) = v172;
            if (v172 == -1)
            {
              *(v13 + 3377) = av1_get_bits(&v2171, 8u);
            }

            v173 = check_for_overrun(&v2171, v1885, v87);
            if (!v173)
            {
              if ((v15 & 0x40) == 0)
              {
                v88 = v1885;
                if ((v15 & 0x80) == 0)
                {
                  goto LABEL_66;
                }

                OUTLINED_FUNCTION_20_1(v87, v174, v175, v176, v177, v178, v179, v180, v1357, v1437, v1517, v1597, v1678, v1759, v1837, v1885, v1926, v1967, v2009, v2051, v2091, v2132, v2168, *(&v2168 + 1), v2169, *(&v2169 + 1), v2170, *(&v2170 + 1), v2171, v2172, v181);
                LODWORD(v87) = v875;
                if (*(v13 + 3376) != 181)
                {
                  v29 = 0;
LABEL_802:
                  v1316 = *(v13 + 3400);
                  if (v1316)
                  {
                    *(v13 + 3400) = 0;
                    free(v1316);
                    v88 = v1885;
                    LODWORD(v87) = v157;
                  }

                  v182 = 0;
                  goto LABEL_828;
                }

                v876 = v875 - ((8 * (DWORD2(v2175) - v2176) - (v2175 + v88)) >> 3);
                v877 = (v876 + 1);
                if (v876 == -1)
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1344 = 2646;
                }

                else
                {
                  if (v877 < 0x201)
                  {
                    if (v877 > 7)
                    {
                      v878 = malloc_type_malloc((v876 + 1), 0xC58E25C6uLL);
                      *(v13 + 3400) = v878;
                      if (v878)
                      {
                        *v878 = *(v13 + 3376);
                        v879 = OUTLINED_FUNCTION_15_1();
                        *(v13 + 3378) = v879;
                        *(*(v13 + 3400) + 1) = HIBYTE(v879);
                        *(*(v13 + 3400) + 2) = *(v13 + 3378);
                        v880 = OUTLINED_FUNCTION_15_1();
                        *(v13 + 3380) = v880;
                        *(*(v13 + 3400) + 3) = HIBYTE(v880);
                        *(*(v13 + 3400) + 4) = *(v13 + 3380);
                        if (*(v13 + 3378) == 60 && *(v13 + 3380) == 1)
                        {
                          v881 = OUTLINED_FUNCTION_12_2();
                          *(v882 + 5) = v881;
                          if (v881 == 4)
                          {
                            v883 = OUTLINED_FUNCTION_12_2();
                            *(v884 + 6) = v883;
                            if (v883 == 1)
                            {
                              v885 = OUTLINED_FUNCTION_12_2();
                              *(v886 + 7) = v885;
                              if ((*(*(v13 + 3400) + 7) & 0xC0) == 0x40)
                              {
                                if (v877 != 8)
                                {
                                  for (i = 8; i != v877; ++i)
                                  {
                                    v888 = OUTLINED_FUNCTION_12_2();
                                    *(v896 + i) = v888;
                                  }

                                  v29 = OUTLINED_FUNCTION_6_7(v888, v889, v890, v891, v892, v893, v894, v895, v1398, v1478, v1558, v1639, v1719, v1799, v1864, v1885);
                                  if (!v29)
                                  {
                                    *(v13 + 3384) = v877;
                                    v182 = 128;
LABEL_827:
                                    LODWORD(v87) = v157;
                                    v88 = v1885;
                                    goto LABEL_828;
                                  }

                                  goto LABEL_801;
                                }

                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_1_20();
                                v1350 = 4294954579;
                                v1351 = 2685;
                              }

                              else
                              {
                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_1_20();
                                v1350 = 4294954579;
                                v1351 = 2684;
                              }
                            }

                            else
                            {
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_1_20();
                              v1350 = 4294954579;
                              v1351 = 2679;
                            }
                          }

                          else
                          {
                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_1_20();
                            v1350 = 4294954579;
                            v1351 = 2675;
                          }

                          goto LABEL_850;
                        }

                        v29 = 0;
                      }

                      else
                      {
                        v29 = 4294954584;
                      }

LABEL_801:
                      LODWORD(v87) = v157;
                      v88 = v1885;
                      goto LABEL_802;
                    }

                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_1_20();
                    v1350 = 4294954584;
                    v1351 = 2648;
LABEL_850:
                    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1346, v1350, "<<<< AV1Bridge >>>>", v1351, v1347, v1348, v1349);
                    goto LABEL_801;
                  }

                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1344 = 2647;
                }

                v1345 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1340, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", v1344, v1341, v1342, v1343);
                v88 = v1885;
                LODWORD(v87) = v157;
                v29 = v1345;
                goto LABEL_802;
              }

              v2175 = v2172;
              v2176 = v2173;
              v2174 = v2171;
              if (v87 - ((8 * (DWORD2(v2172) - v2173) - (v2172 + v1885)) >> 3) + 1 <= 6)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_1_20();
                v1286 = 4294954584;
                v1287 = 2528;
              }

              else
              {
                v498 = OUTLINED_FUNCTION_15_1();
                v499 = v498;
                *(v13 + 3378) = v498;
                v500 = av1_get_bits(&v2174, 0x20u);
                v29 = 0;
                *(v13 + 3380) = v500;
                if (v499 != 59 || v500 != 2048)
                {
                  goto LABEL_765;
                }

                v501 = OUTLINED_FUNCTION_9_4(&v2174, 2u);
                v509 = OUTLINED_FUNCTION_6_7(v501, v502, v503, v504, v505, v506, v507, v508, v1357, v1437, v1517, v1597, v1678, v1759, v1837, v1885);
                if (v509)
                {
                  goto LABEL_764;
                }

                if (a1 || av1_get_bits(&v2174, 3u) != 6 || OUTLINED_FUNCTION_26_0() != 31 || OUTLINED_FUNCTION_26_0() != 6 || OUTLINED_FUNCTION_16_0() != 1 || OUTLINED_FUNCTION_26_0() != 1 || OUTLINED_FUNCTION_16_0())
                {
                  v29 = 0;
LABEL_765:
                  v1288 = *(v13 + 3400);
                  if (v1288)
                  {
                    *(v13 + 3400) = 0;
                    free(v1288);
                  }

                  v182 = 0;
                  goto LABEL_827;
                }

                if (OUTLINED_FUNCTION_16_0())
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1286 = 4294954579;
                  v1287 = 2561;
                }

                else if (OUTLINED_FUNCTION_16_0())
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1286 = 4294954579;
                  v1287 = 2563;
                }

                else if (OUTLINED_FUNCTION_16_0())
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1286 = 4294954579;
                  v1287 = 2565;
                }

                else if (OUTLINED_FUNCTION_16_0())
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1286 = 4294954579;
                  v1287 = 2567;
                }

                else
                {
                  if (OUTLINED_FUNCTION_16_0() != 1)
                  {
                    v29 = 4294954584;
                    goto LABEL_765;
                  }

                  v1272 = 0;
                  do
                  {
                    v1273 = av1_get_bits(&v2174, 8u);
                    v1274 = OUTLINED_FUNCTION_9_4(&v2174, 1u);
                    if (OUTLINED_FUNCTION_6_7(v1274, v1275, v1276, v1277, v1278, v1279, v1280, v1281, v1377, v1457, v1537, v1618, v1698, v1778, v1851, v1885))
                    {
                      break;
                    }

                    v1272 = ((v1273 + v1272) << 8) + 256;
                  }

                  while (!v2174);
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1286 = 4294954582;
                  v1287 = 2573;
                }
              }

              v509 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1282, v1286, "<<<< AV1Bridge >>>>", v1287, v1283, v1284, v1285);
LABEL_764:
              v29 = v509;
              goto LABEL_765;
            }

            goto LABEL_819;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_20();
          v1335 = 2798;
LABEL_818:
          v173 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1331, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", v1335, v1332, v1333, v1334);
LABEL_819:
          v29 = v173;
LABEL_820:
          v91 = 0;
          goto LABEL_547;
        default:
LABEL_66:
          v182 = 0;
          v29 = 0;
LABEL_828:
          v91 = v182 | 0x10;
          goto LABEL_829;
      }

      v182 = 0;
      v29 = 0;
      goto LABEL_827;
    case 7:
      v91 = 0;
      if ((v15 & 4) == 0)
      {
        v29 = 0;
        goto LABEL_829;
      }

      v29 = 0;
      if (*(v13 + 3328))
      {
        goto LABEL_829;
      }

LABEL_31:
      v1517 = v88 >> 3;
      v29 = 4294954584;
      v92 = v2051;
      if (!v2051)
      {
        return v29;
      }

      v93 = *(v13 + 3312);
      if (!v93)
      {
        return v29;
      }

      HIDWORD(v1437) = v15;
      v94 = v2132;
      LODWORD(v1885) = 8 * (DWORD2(v2169) - v2170) - v2169;
      HIDWORD(v1885) = v71;
      HIDWORD(v1678) = v87;
      if (v2132[236])
      {
        v95 = 0;
        *(a6 + 232) = 0;
        *(a6 + 260) = 0;
        v1838 = a6 + 232;
        *(a6 + 276) = 1;
        v96 = (a6 + 276);
        goto LABEL_35;
      }

      v146 = OUTLINED_FUNCTION_3_8(&v2168);
      *(a6 + 260) = v154;
      if (!v146)
      {
        v95 = OUTLINED_FUNCTION_8_4(v146, v147, v148, v149, v150, v151, v152, v153, v1357, v1437, v1517, v1597, v1678, v1759);
        *(a6 + 232) = v95;
        v97 = 1;
        uleb128 = OUTLINED_FUNCTION_3_8(&v2168);
        v96 = (a6 + 276);
        v1838 = a6 + 232;
        *(a6 + 276) = v220;
        if (!uleb128)
        {
          v98 = 280;
          goto LABEL_77;
        }

LABEL_35:
        if (!v2132[242] || v2132[240])
        {
          goto LABEL_78;
        }

        v97 = v2132[246];
        v98 = 272;
LABEL_77:
        uleb128 = av1_get_bits(&v2168, v97);
        *(a6 + v98) = uleb128;
        v95 = *(a6 + 232);
LABEL_78:
        v1607 = v96;
        if (v95 == 3 || !v95 && *v96 || v2132[236])
        {
          v221 = 1;
        }

        else
        {
          uleb128 = OUTLINED_FUNCTION_4_8(&v2168);
          v221 = !v332;
        }

        *(a6 + 284) = v221;
        v222 = OUTLINED_FUNCTION_5_7(uleb128, v63, v64, v65, v66, v67, v68, v69, v1357, v1437, v1517, v1607, v1678, v1759, v1838, v1885, v1926, v1967, v2009, v2051, v2091, v2132, v2168);
        *(a6 + 288) = av1_get_bits(v222, v223);
        v231 = v94[263];
        if (v231 == 2)
        {
          v232 = OUTLINED_FUNCTION_5_7(v231, v224, v225, v226, v227, v228, v229, v230, v1367, v1447, v1527, v1608, v1688, v1768, v1843, v1890, v1931, v1972, v2014, v2054, v2096, v2135, v2168);
          LODWORD(v231) = av1_get_bits(v232, v233);
        }

        *(a6 + 292) = v231;
        if (v231)
        {
          v231 = v94[264];
          if (v231 == 2)
          {
            v234 = OUTLINED_FUNCTION_5_7(v231, v224, v225, v226, v227, v228, v229, v230, v1367, v1447, v1527, v1608, v1688, v1768, v1843, v1890, v1931, v1972, v2014, v2054, v2096, v2135, v2168);
            LODWORD(v231) = av1_get_bits(v234, v235);
          }
        }

        if (*(a6 + 232))
        {
          v236 = v231;
        }

        else
        {
          v236 = 1;
        }

        *(a6 + 296) = v236;
        if (v94[250])
        {
          *(a6 + 268) = av1_get_bits(&v2168, v94[252]);
        }

        if (v94[236])
        {
          v237 = v13;
          v238 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_24_0();
          v237 = v13;
          if (v240 == 3)
          {
            v238 = 1;
          }

          else
          {
            v241 = OUTLINED_FUNCTION_5_7(v239, v224, v225, v226, v227, v228, v229, v230, v1367, v1447, v1527, v1608, v1688, v1768, v1843, v1890, v1931, v1972, v2014, v2054, v2096, v2135, v2168);
            v238 = av1_get_bits(v241, v242);
          }
        }

        *(a6 + 300) = v238;
        v243 = v2135[260];
        if (v243)
        {
          OUTLINED_FUNCTION_9_4(&v2168, v2135[265]);
        }

        else
        {
          v95 = 0;
        }

        *(a6 + 248) = v95;
        LODWORD(v1447) = v238;
        if (!v221 && (OUTLINED_FUNCTION_18_1(), (v245 & 1) != 0))
        {
          v246 = OUTLINED_FUNCTION_10_3(v244, v224, v225, v226, v227, v228, v229, v230, v1367, v1447, v1527, v1608, v1688, v1768);
        }

        else
        {
          v246 = 7;
        }

        *(a6 + 304) = v246;
        if (v2135[242])
        {
          v247 = OUTLINED_FUNCTION_5_7(v246, v224, v225, v226, v227, v228, v229, v230, v1367, v1447, v1527, v1608, v1688, v1768, v1843, v1890, v1931, v1972, v2014, v2054, v2096, v2135, v2168);
          v249 = av1_get_bits(v247, v248);
          *(a6 + 308) = v249;
          if (v249)
          {
            v250 = *(v93 + 40);
            if (v250 >= 1)
            {
              v251 = 0;
              v252 = v2135 + 16;
              do
              {
                if (*v252)
                {
                  v253 = *(v252 - 2);
                  if (!v253 || (((1 << (*(a6 + 256) + 8)) | (1 << *(a6 + 252))) & ~v253) == 0)
                  {
                    *(a6 + 312 + 4 * v251) = av1_get_bits(&v2168, v2135[245]);
                    v250 = *(v93 + 40);
                  }
                }

                ++v251;
                v252 += 7;
              }

              while (v251 < v250);
            }
          }
        }

        OUTLINED_FUNCTION_24_0();
        if ((v262 & 1) == 0)
        {
          if (v262 || !*v1608)
          {
            v263 = OUTLINED_FUNCTION_11_2(v254, v255, v256, v257, v258, v259, v260, v261, v1367, v1447, v1527, v1608, v1688, v1768);
            *(a6 + 440) = v263;
            if (v243 && v221 && v263 != 255)
            {
              v271 = 8;
              do
              {
                v263 = OUTLINED_FUNCTION_28_0(v263, v264, v265, v266, v267, v268, v269, v270, v1367, v1447, v1527, v1608, v1688, v1768);
                --v271;
              }

              while (v271);
            }
          }

          else
          {
            *(a6 + 440) = 255;
          }

          v291 = v237;
          v343 = v237;
          v298 = v2135;
          frame_size = read_frame_size(v343, &v2168, a6, v2135, 0);
          if (*(a6 + 292) && !*(a6 + 456))
          {
            frame_size = OUTLINED_FUNCTION_4_8(&v2168);
            v352 = !v332;
          }

          else
          {
            v352 = 0;
          }

          v355 = 0;
          *(a6 + 464) = v352;
LABEL_254:
          *(a6 + 512) = v355;
          if (v298[236] || *(a6 + 288))
          {
            v393 = 0;
          }

          else
          {
            frame_size = OUTLINED_FUNCTION_4_8(&v2168);
            v393 = v332;
          }

          *(a6 + 516) = v393;
          v394 = OUTLINED_FUNCTION_5_7(frame_size, v345, v346, v347, v348, v349, v350, v351, v1367, v1447, v1527, v1608, v1688, v1768, v1843, v1890, v1931, v1972, v2014, v2054, v2096, v2135, v2168);
          uniform = av1_get_bits(v394, v395);
          *(a6 + 520) = uniform;
          v404 = v298[253];
          v405 = (64 << v404) - 1;
          v406 = v404 + 6;
          LODWORD(v407) = (v405 + *(a6 + 236)) >> v406;
          v408 = *(a6 + 244);
          v409 = 0x1000u >> v406;
          v410 = -1;
          do
          {
            ++v410;
          }

          while ((v409 << v410) < v407);
          *(a6 + 528) = v410;
          if (v407 >= 64)
          {
            v411 = 64;
          }

          else
          {
            v411 = v407;
          }

          v412 = -1;
          do
          {
            ++v412;
          }

          while (1 << v412 < v411);
          v413 = (v408 + v405) >> v406;
          *(a6 + 532) = v412;
          if (v413 >= 64)
          {
            v414 = 64;
          }

          else
          {
            v414 = (v408 + v405) >> v406;
          }

          v415 = -1;
          do
          {
            ++v415;
          }

          while (1 << v415 < v414);
          v1773 = v291;
          v416 = 0x900000u >> (2 * v406);
          *(a6 + 548) = v415;
          v417 = v407 * v413;
          v418 = -1;
          do
          {
            ++v418;
          }

          while ((v416 << v418) < v417);
          v419 = v410;
          if (v418 > v410)
          {
            v419 = -1;
            do
            {
              ++v419;
            }

            while ((v416 << v419) < v417);
          }

          if (uniform)
          {
            while (1)
            {
              *(a6 + 536) = v410;
              if (v410 >= v412)
              {
                break;
              }

              v420 = OUTLINED_FUNCTION_5_7(uniform, v397, v398, v399, v400, v401, v402, v403, v1372, v1452, v1532, v1613, v1693, v1773, v1847, v1892, v1933, v1974, v2016, v2056, v2098, v2137, v2168);
              uniform = av1_get_bits(v420, v421);
              if (!uniform)
              {
                break;
              }

              ++v410;
            }

            if (v407 < 1)
            {
              LODWORD(v423) = 0;
              v92 = v2056;
            }

            else
            {
              v422 = 0;
              v423 = 0;
              v92 = v2056;
              do
              {
                *(a6 + 560 + 2 * v423++) = v422;
                v422 += ((v407 - 1) >> v410) + 1;
              }

              while (v422 < v407);
            }

            *(a6 + 540) = v423;
            v429 = (v419 - v410) & ~((v419 - v410) >> 31);
            *(a6 + 544) = v429;
            while (1)
            {
              *(a6 + 552) = v429;
              if (v429 >= v415)
              {
                break;
              }

              v430 = OUTLINED_FUNCTION_5_7(uniform, v397, v398, v399, v400, v401, v402, v403, v1372, v1452, v1532, v1613, v1693, v1773, v1847, v1892, v1933, v1974, v2016, v2056, v2098, v2137, v2168);
              uniform = av1_get_bits(v430, v431);
              if (!uniform)
              {
                break;
              }

              ++v429;
            }

            if (v413 < 1)
            {
              LODWORD(v433) = 0;
            }

            else
            {
              v432 = 0;
              v433 = 0;
              do
              {
                *(a6 + 690 + 2 * v433++) = v432;
                v432 += ((v413 - 1) >> v429) + 1;
              }

              while (v432 < v413);
            }

            *(a6 + 556) = v433;
          }

          else
          {
            *(a6 + 540) = 0;
            if (v407 < 1)
            {
              LODWORD(v423) = 0;
              v425 = 0;
            }

            else
            {
              v424 = 0;
              v425 = 0;
              v426 = 0;
              do
              {
                if (v407 - v426 >= v409)
                {
                  v397 = v409;
                }

                else
                {
                  v397 = (v407 - v426);
                }

                if (v397 < 2)
                {
                  v427 = 1;
                }

                else
                {
                  uniform = av1_get_uniform(&v2168, v397);
                  v427 = uniform + 1;
                }

                *(a6 + 560 + 2 * v424) = v426;
                v426 += v427;
                if (v425 <= v427)
                {
                  v425 = v427;
                }

                *(a6 + 540) = v424 + 1;
                v300 = v424++ > 0x3E;
              }

              while (!v300 && v426 < v407);
              LODWORD(v423) = v424;
            }

            v410 = -1;
            v92 = v2056;
            do
            {
              ++v410;
            }

            while (1 << v410 < v423);
            *(a6 + 536) = v410;
            if (v419)
            {
              v434 = v419 + 1;
            }

            else
            {
              v434 = 0;
            }

            v435 = v417 >> v434;
            if (v425 <= 1)
            {
              v436 = 1;
            }

            else
            {
              v436 = v425;
            }

            v437 = v435 / v436;
            if (v437 <= 1)
            {
              v438 = 1;
            }

            else
            {
              v438 = v437;
            }

            *(a6 + 556) = 0;
            if (v413 < 1)
            {
              LODWORD(v433) = 0;
            }

            else
            {
              v433 = 0;
              v439 = 0;
              do
              {
                if (v413 - v439 >= v438)
                {
                  v397 = v438;
                }

                else
                {
                  v397 = (v413 - v439);
                }

                if (v397 < 2)
                {
                  v440 = 1;
                }

                else
                {
                  uniform = av1_get_uniform(&v2168, v397);
                  v440 = uniform + 1;
                }

                *(a6 + 690 + 2 * v433) = v439;
                v439 += v440;
                *(a6 + 556) = v433 + 1;
                v300 = v433++ > 0x3E;
              }

              while (!v300 && v439 < v413);
            }

            v429 = -1;
            do
            {
              ++v429;
            }

            while (1 << v429 < v433);
            *(a6 + 552) = v429;
          }

          *(a6 + 2 * v423 + 560) = v407;
          *(a6 + 2 * v433 + 690) = v413;
          v442 = v410 | v429;
          if (v410 | v429)
          {
            v443 = av1_get_bits(&v2168, v410 + v429);
            *(a6 + 820) = v443;
            if (v443 >= v433 * v423)
            {
              return 4294954584;
            }

            uniform = OUTLINED_FUNCTION_8_4(v443, v444, v445, v446, v447, v448, v449, v450, v1372, v1452, v1532, v1613, v1693, v1773);
            v442 = uniform + 1;
          }

          else
          {
            *(a6 + 820) = 0;
          }

          *(a6 + 524) = v442;
          v451 = OUTLINED_FUNCTION_11_2(uniform, v397, v398, v399, v400, v401, v402, v403, v1372, v1452, v1532, v1613, v1693, v1773);
          *(a6 + 824) = v451;
          v459 = OUTLINED_FUNCTION_5_7(v451, v452, v453, v454, v455, v456, v457, v458, v1373, v1453, v1533, v1614, v1694, v1774, v1847, v1892, v1933, v1974, v2016, v2056, v2098, v2137, v2168);
          v461 = av1_get_bits(v459, v460);
          v469 = v1775;
          if (v461)
          {
            v461 = OUTLINED_FUNCTION_13_2(v461, v462, v463, v464, v465, v466, v467, v468, v1374, v1454, v1534, v1615, v1695, v1775);
            v470 = (v461 << 25) >> 25;
          }

          else
          {
            v470 = 0;
          }

          *(a6 + 828) = v470;
          if (!*(v2138 + 1084))
          {
            if (*(v2138 + 1092))
            {
              v461 = OUTLINED_FUNCTION_4_8(&v2168);
              v471 = v332;
            }

            else
            {
              v471 = 1;
            }

            v473 = OUTLINED_FUNCTION_5_7(v461, v462, v463, v464, v465, v466, v467, v468, v1374, v1454, v1534, v1615, v1695, v1775, v1848, v1893, v1934, v1975, v2017, v2057, v2099, v2138, v2168);
            v475 = av1_get_bits(v473, v474);
            if (v475)
            {
              v475 = OUTLINED_FUNCTION_13_2(v475, v476, v477, v478, v479, v480, v481, v482, v1375, v1455, v1535, v1616, v1696, v1776);
              LODWORD(v407) = (v475 << 25) >> 25;
            }

            else
            {
              LODWORD(v407) = 0;
            }

            *(a6 + 832) = v407;
            v483 = OUTLINED_FUNCTION_5_7(v475, v476, v477, v478, v479, v480, v481, v482, v1375, v1455, v1535, v1616, v1696, v1776, v1849, v1894, v1935, v1976, v2018, v2058, v2100, v2139, v2168);
            v461 = av1_get_bits(v483, v484);
            if (v461)
            {
              v461 = OUTLINED_FUNCTION_7_5(&v2168);
            }

            else
            {
              v485 = 0;
            }

            *(a6 + 836) = v485;
            if (v471)
            {
              *(a6 + 840) = v407;
            }

            else
            {
              v486 = OUTLINED_FUNCTION_5_7(v461, v462, v463, v464, v465, v466, v467, v468, v1374, v1454, v1534, v1615, v1695, v1775, v1848, v1893, v1934, v1975, v2017, v2057, v2099, v2138, v2168);
              v488 = av1_get_bits(v486, v487);
              if (v488)
              {
                v488 = OUTLINED_FUNCTION_7_5(&v2168);
              }

              else
              {
                v496 = 0;
              }

              *(a6 + 840) = v496;
              v510 = OUTLINED_FUNCTION_5_7(v488, v489, v490, v491, v492, v493, v494, v495, v1376, v1456, v1536, v1617, v1697, v1777, v1850, v1895, v1936, v1977, v2019, v2059, v2101, v2140, v2168);
              v461 = av1_get_bits(v510, v511);
              if (v461)
              {
                v461 = OUTLINED_FUNCTION_7_5(&v2168);
              }

              else
              {
                v485 = 0;
              }
            }

            *(a6 + 844) = v485;
          }

          v512 = OUTLINED_FUNCTION_5_7(v461, v462, v463, v464, v465, v466, v467, v468, v1374, v1454, v1534, v1615, v1695, v1775, v1848, v1893, v1934, v1975, v2017, v2057, v2099, v2138, v2168);
          v514 = av1_get_bits(v512, v513);
          *(a6 + 848) = v514;
          if (v514)
          {
            v522 = OUTLINED_FUNCTION_14_1(v514, v515, v516, v517, v518, v519, v520, v521, v1378, v1458, v1538, v1619, v1699, v1779);
            *(a6 + 852) = v522;
            v514 = OUTLINED_FUNCTION_14_1(v522, v523, v524, v525, v526, v527, v528, v529, v1379, v1459, v1539, v1620, v1700, v1780);
            *(a6 + 856) = v514;
            if (*(v2141 + 1092))
            {
              v514 = OUTLINED_FUNCTION_14_1(v514, v515, v516, v517, v518, v519, v520, v521, v1378, v1458, v1538, v1619, v1699, v1779);
            }

            *(a6 + 860) = v514;
          }

          v530 = OUTLINED_FUNCTION_5_7(v514, v515, v516, v517, v518, v519, v520, v521, v1378, v1458, v1538, v1619, v1699, v1779, v1852, v1896, v1937, v1978, v2020, v2060, v2102, v2141, v2168);
          v532 = OUTLINED_FUNCTION_9_4(v530, v531);
          *(a6 + 864) = v532;
          if (v532)
          {
            v540 = *(a6 + 304);
            if (v540 == 7)
            {
              *(a6 + 868) = 1;
              *(a6 + 872) = 0x100000000;
            }

            else
            {
              v542 = OUTLINED_FUNCTION_5_7(v532, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
              v544 = av1_get_bits(v542, v543);
              *(a6 + 868) = v544;
              if (v544)
              {
                v552 = OUTLINED_FUNCTION_5_7(v544, v545, v546, v547, v548, v549, v550, v551, v1381, v1461, v1541, v1622, v1702, v1782, v1854, v1898, v1939, v1980, v2022, v2062, v2104, v2143, v2168);
                v544 = av1_get_bits(v552, v553);
              }

              *(a6 + 872) = v544;
              v554 = OUTLINED_FUNCTION_5_7(v544, v545, v546, v547, v548, v549, v550, v551, v1381, v1461, v1541, v1622, v1702, v1782, v1854, v1898, v1939, v1980, v2022, v2062, v2104, v2143, v2168);
              v532 = av1_get_bits(v554, v555);
              *(a6 + 876) = v532;
              if (!v532)
              {
                v653 = *(v469 + 328 * *(a6 + 4 * v540 + 472) + 3432);
                if (!v653)
                {
                  return 4294954584;
                }

                v532 = memcpy((a6 + 880), (v653 + 880), 0x108uLL);
                if (v451)
                {
LABEL_419:
                  v636 = OUTLINED_FUNCTION_5_7(v532, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                  v638 = av1_get_bits(v636, v637);
                  *(a6 + 1208) = v638;
                  v639 = v1781;
                  if (v638)
                  {
                    *(a6 + 1212) = OUTLINED_FUNCTION_8_4(v638, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781);
                    if (!*(a6 + 464))
                    {
                      v640 = OUTLINED_FUNCTION_3_8(&v2168);
                      *(a6 + 1216) = v641;
                      if (v640)
                      {
                        v642 = OUTLINED_FUNCTION_8_4(v640, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781);
                        *(a6 + 1220) = v642;
                        v650 = OUTLINED_FUNCTION_5_7(v642, v643, v644, v645, v646, v647, v648, v649, v1389, v1469, v1549, v1630, v1710, v1790, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                        v652 = av1_get_bits(v650, v651);
                        goto LABEL_429;
                      }

LABEL_428:
                      v652 = 0;
                      *(a6 + 1220) = 0;
LABEL_429:
                      *(a6 + 1224) = v652;
                      v654 = !v470 && !*(a6 + 832) && !*(a6 + 836) && !*(a6 + 840) && *(a6 + 844) == 0;
                      *(a6 + 1228) = 1;
                      v655 = 880;
                      v656 = 1176;
                      do
                      {
                        v657 = v451;
                        if (v407)
                        {
                          v658 = *(a6 + v655) + v451;
                          if (v658 >= 0xFF)
                          {
                            v659 = 255;
                          }

                          else
                          {
                            v659 = *(a6 + v655) + v451;
                          }

                          if (v658 >= 0)
                          {
                            v657 = v659;
                          }

                          else
                          {
                            v657 = 0;
                          }
                        }

                        *(a6 + v656) = v657;
                        v660 = v657 == 0 && v654;
                        *(a6 + v656 - 32) = v660;
                        v661 = *(a6 + 1228) & v660;
                        *(a6 + 1228) = v661;
                        v655 += 32;
                        v656 += 4;
                      }

                      while (v655 != 1136);
                      if (v661 || *(a6 + 464))
                      {
                        *(a6 + 1296) = 0;
                        *(a6 + 1232) = 0u;
                        *(a6 + 1248) = 0x100000001;
                        *(a6 + 1256) = default_mode_ref_deltas;
                        *(a6 + 1272) = unk_197165640;
                        *(a6 + 1288) = -1;
                        v662 = v2142;
                      }

                      else
                      {
                        v805 = OUTLINED_FUNCTION_9_4(&v2168, 6u);
                        *(a6 + 1232) = v805;
                        v813 = OUTLINED_FUNCTION_19_1(v805, v806, v807, v808, v809, v810, v811, v812, v1380, v1460, v1540, v1621, v1701, v1781);
                        *(a6 + 1236) = v813;
                        v662 = v2142;
                        if (!*(v2142 + 1084) && v407 | v813)
                        {
                          v821 = OUTLINED_FUNCTION_19_1(v813, v814, v815, v816, v817, v818, v819, v820, v1393, v1473, v1553, v1634, v1714, v1794);
                          *(a6 + 1240) = v821;
                          v813 = OUTLINED_FUNCTION_19_1(v821, v822, v823, v824, v825, v826, v827, v828, v1394, v1474, v1554, v1635, v1715, v1795);
                          *(a6 + 1244) = v813;
                        }

                        v829 = OUTLINED_FUNCTION_10_3(v813, v814, v815, v816, v817, v818, v819, v820, v1393, v1473, v1553, v1634, v1714, v1794);
                        *(a6 + 1296) = v829;
                        v837 = OUTLINED_FUNCTION_5_7(v829, v830, v831, v832, v833, v834, v835, v836, v1395, v1475, v1555, v1636, v1716, v1796, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                        v652 = av1_get_bits(v837, v838);
                        *(a6 + 1248) = v652;
                        if (!v652 || (v839 = OUTLINED_FUNCTION_5_7(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168), v652 = av1_get_bits(v839, v840), (*(a6 + 1252) = v652) == 0))
                        {
LABEL_447:
                          if (v662[267] && !*(a6 + 464))
                          {
                            v848 = OUTLINED_FUNCTION_8_4(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781);
                            *(a6 + 1300) = v848 + 3;
                            v652 = OUTLINED_FUNCTION_8_4(v848, v849, v850, v851, v852, v853, v854, v855, v1396, v1476, v1556, v1637, v1717, v1797);
                            *(a6 + 1304) = v652;
                            if (v652 == 31)
                            {
LABEL_452:
                              if (v662[268] && !*(a6 + 464))
                              {
                                v652 = OUTLINED_FUNCTION_8_4(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781);
                                v735 = v652;
                                *(a6 + 1372) = v652;
                                if (v662[271])
                                {
                                  LODWORD(v407) = 0;
                                  *(a6 + 1376) = 0;
                                  v736 = 1;
                                }

                                else
                                {
                                  v857 = OUTLINED_FUNCTION_8_4(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781);
                                  v858 = v857;
                                  *(a6 + 1376) = v857;
                                  v652 = OUTLINED_FUNCTION_8_4(v857, v859, v860, v861, v862, v863, v864, v865, v1397, v1477, v1557, v1638, v1718, v1798);
                                  LODWORD(v407) = v652;
                                  v736 = v858 == 0;
                                }

                                *(a6 + 1380) = v407;
                                if (v735 || !v736 || v407)
                                {
                                  v866 = v662[253];
                                  v867 = v866 + 6;
                                  *(a6 + 1384) = v866 + 6;
                                  v868 = OUTLINED_FUNCTION_5_7(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                                  v652 = av1_get_bits(v868, v869);
                                  if (v652)
                                  {
                                    v867 = v866 + 7;
                                    *(a6 + 1384) = v866 + 7;
                                    if (!v662[253])
                                    {
                                      v870 = OUTLINED_FUNCTION_5_7(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                                      v652 = av1_get_bits(v870, v871);
                                      v867 += v652;
                                      *(a6 + 1384) = v867;
                                    }
                                  }

                                  *(a6 + 1388) = v867;
                                  if (v407)
                                  {
                                    v872 = 0;
                                  }

                                  else
                                  {
                                    v872 = v736;
                                  }

                                  v71 = HIDWORD(v1897);
                                  if (!v872 && v662[269] == 1 && v662[270] == 1)
                                  {
                                    v873 = OUTLINED_FUNCTION_5_7(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                                    v652 = av1_get_bits(v873, v874);
                                    *(a6 + 1388) = v867 - v652;
                                  }

LABEL_456:
                                  if (v661)
                                  {
                                    v663 = 0;
                                  }

                                  else
                                  {
                                    v652 = OUTLINED_FUNCTION_4_8(&v2168);
                                    if (v332)
                                    {
                                      v663 = 1;
                                    }

                                    else
                                    {
                                      v663 = 2;
                                    }

                                    v71 = HIDWORD(v1897);
                                  }

                                  *(a6 + 1392) = v663;
                                  if (*(a6 + 232))
                                  {
                                    v665 = OUTLINED_FUNCTION_5_7(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                                    v664 = av1_get_bits(v665, v666);
                                    *(a6 + 1396) = v664;
                                    if (v664)
                                    {
                                      OUTLINED_FUNCTION_18_1();
                                      if ((v667 & 1) == 0 || !v662[260])
                                      {
                                        goto LABEL_498;
                                      }

                                      v668 = 0;
                                      v669 = 0;
                                      v670 = 0;
                                      v671 = *(a6 + 248);
                                      v672 = v639 + 3424;
                                      v673 = a6 + 472;
                                      v674 = v662[265];
                                      v675 = 1 << (v674 - 1);
                                      v676 = v675 - 1;
                                      v677 = 0xFFFFFFFFLL;
                                      v533 = 328;
                                      v678 = -1;
                                      do
                                      {
                                        if (v674)
                                        {
                                          v534 = *(v672 + 328 * *(v673 + 4 * v668) + 16);
                                          v536 = (v534 - v671) & v676;
                                          v535 = v536 - ((v534 - v671) & v675);
                                          if (v535 < 1)
                                          {
                                            if ((v535 & 0x80000000) != 0)
                                            {
                                              if (v678 == -1 || (v536 = (v534 - v678) & v676, v535 = (v534 - v678) & v675, v536 > v535))
                                              {
                                                v678 = *(v672 + 328 * *(v673 + 4 * v668) + 16);
                                                v670 = v668;
                                              }
                                            }
                                          }

                                          else if (v677 == -1 || (v536 = (v677 - v534) & v676, v535 = (v677 - v534) & v675, v536 > v535))
                                          {
                                            v677 = *(v672 + 328 * *(v673 + 4 * v668) + 16);
                                            v669 = v668;
                                          }
                                        }

                                        ++v668;
                                      }

                                      while (v668 != 7);
                                      if (v678 != -1 && v677 != -1)
                                      {
                                        goto LABEL_492;
                                      }

                                      if (v678 == -1)
                                      {
                                        goto LABEL_498;
                                      }

                                      v680 = 0;
                                      v669 = 0;
                                      v681 = -1;
                                      v677 = 328;
                                      do
                                      {
                                        if (v674)
                                        {
                                          v533 = *(v672 + 328 * *(v673 + 4 * v680) + 16);
                                          v535 = (v533 - v678) & v676;
                                          v534 = (v533 - v678) & v675;
                                          if (v535 < v534)
                                          {
                                            if (v681 == -1 || (v535 = (v533 - v681) & v676, v534 = (v533 - v681) & v675, v535 > v534))
                                            {
                                              v681 = *(v672 + 328 * *(v673 + 4 * v680) + 16);
                                              v669 = v680;
                                            }
                                          }
                                        }

                                        ++v680;
                                      }

                                      while (v680 != 7);
                                      if (v681 == -1)
                                      {
LABEL_498:
                                        v664 = 0;
                                      }

                                      else
                                      {
LABEL_492:
                                        if (v670 >= v669)
                                        {
                                          v682 = v669;
                                        }

                                        else
                                        {
                                          v682 = v670;
                                        }

                                        *(a6 + 1408) = v682;
                                        if (v670 <= v669)
                                        {
                                          v670 = v669;
                                        }

                                        *(a6 + 1412) = v670;
                                        *(a6 + 1400) = 1;
                                        v683 = OUTLINED_FUNCTION_5_7(v677, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                                        v664 = av1_get_bits(v683, v684);
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v664 = 0;
                                    *(a6 + 1396) = 0;
                                  }

                                  *(a6 + 1404) = v664;
                                  if (!*(a6 + 284) && (OUTLINED_FUNCTION_18_1(), (v685 & 1) != 0))
                                  {
                                    v686 = v662[258];
                                    if (v686)
                                    {
                                      v664 = OUTLINED_FUNCTION_3_8(&v2168);
                                    }
                                  }

                                  else
                                  {
                                    v686 = 0;
                                  }

                                  *(a6 + 1416) = v686;
                                  v687 = OUTLINED_FUNCTION_5_7(v664, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                                  *(a6 + 1420) = av1_get_bits(v687, v688);
                                  for (j = 1424; j != 1676; j += 36)
                                  {
                                    v690 = a6 + j;
                                    *v690 = dav1d_default_wm_params;
                                    *(v690 + 16) = *&dword_197165668;
                                    *(v690 + 32) = 0;
                                  }

                                  OUTLINED_FUNCTION_18_1();
                                  if (v699)
                                  {
                                    v700 = v1759 + 3424;
                                    v701 = (a6 + 1448);
                                    v702 = 1424;
                                    while (1)
                                    {
                                      v703 = OUTLINED_FUNCTION_5_7(bits_subexp, v692, v693, v694, v695, v696, v697, v698, v1357, v1437, v1517, v1597, v1678, v1759, v1837, v1885, v1926, v1967, v2009, v2051, v2091, v2132, v2168);
                                      bits_subexp = av1_get_bits(v703, v704);
                                      if (bits_subexp)
                                      {
                                        break;
                                      }

                                      *(v701 - 6) = 0;
LABEL_529:
                                      v701 += 9;
                                      v702 += 36;
                                      if (v702 == 1676)
                                      {
                                        goto LABEL_530;
                                      }
                                    }

                                    v705 = OUTLINED_FUNCTION_5_7(bits_subexp, v692, v693, v694, v695, v696, v697, v698, v1357, v1437, v1517, v1597, v1678, v1759, v1837, v1885, v1926, v1967, v2009, v2051, v2091, v2132, v2168);
                                    if (av1_get_bits(v705, v706))
                                    {
                                      v707 = 2;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_4_8(&v2168);
                                      if (v332)
                                      {
                                        v707 = 3;
                                      }

                                      else
                                      {
                                        v707 = 1;
                                      }
                                    }

                                    *(v701 - 6) = v707;
                                    v708 = *(a6 + 304);
                                    v709 = &dav1d_default_wm_params;
                                    if (v708 != 7)
                                    {
                                      v710 = *(v700 + 328 * *(a6 + 472 + 4 * v708) + 8);
                                      if (!v710)
                                      {
                                        return 4294954584;
                                      }

                                      v709 = (v710 + v702);
                                    }

                                    if (v707 <= 1)
                                    {
                                      if (*(a6 + 500))
                                      {
                                        LODWORD(v407) = 9;
                                      }

                                      else
                                      {
                                        LODWORD(v407) = 8;
                                      }

                                      if (*(a6 + 500))
                                      {
                                        v713 = 13;
                                      }

                                      else
                                      {
                                        v713 = 14;
                                      }

                                      v711 = *(v701 - 3);
                                      v712 = *(v701 - 2);
                                    }

                                    else
                                    {
                                      LODWORD(v407) = 12;
                                      v711 = 2 * av1_get_bits_subexp(&v2168, (v709[3] - 0x10000) >> 1, 12) + 0x10000;
                                      *(v701 - 3) = v711;
                                      v712 = 2 * OUTLINED_FUNCTION_21_1(v709[4], v1357, v1437, v1517, v1597, v1678, v1759, v1837, v1885, v1926, v1967, v2009, v2051, v2091, v2132);
                                      *(v701 - 2) = v712;
                                      if (v707 == 3)
                                      {
                                        *(v701 - 1) = 2 * OUTLINED_FUNCTION_21_1(v709[5], v1357, v1437, v1517, v1597, v1678, v1759, v1837, v1885, v1926, v1967, v2009, v2051, v2091, v2132);
                                        v711 = 2 * OUTLINED_FUNCTION_21_1(v709[6] - 0x10000, v1390, v1470, v1550, v1631, v1711, v1791, v1862, v1906, v1947, v1988, v2030, v2070, v2112, v2151) + 0x10000;
                                        v713 = 10;
LABEL_528:
                                        *v701 = v711;
                                        *(v701 - 5) = av1_get_bits_subexp(&v2168, v709[1] >> v713, v407) << v713;
                                        bits_subexp = av1_get_bits_subexp(&v2168, v709[2] >> v713, v407);
                                        *(v701 - 4) = bits_subexp << v713;
                                        v92 = v2051;
                                        v71 = HIDWORD(v1885);
                                        goto LABEL_529;
                                      }

                                      v713 = 10;
                                    }

                                    *(v701 - 1) = -v712;
                                    goto LABEL_528;
                                  }

LABEL_530:
                                  v714 = v2132;
                                  if (v2132[274] && (*v1597 || *(a6 + 280)))
                                  {
                                    v715 = OUTLINED_FUNCTION_3_8(&v2168);
                                    *(a6 + 224) = v716;
                                    v13 = v1759;
                                    if (v715)
                                    {
                                      OUTLINED_FUNCTION_9_4(&v2168, 0x10u);
                                      OUTLINED_FUNCTION_24_0();
                                      if (v725 == 1)
                                      {
                                        v717 = OUTLINED_FUNCTION_3_8(&v2168);
                                        *(a6 + 228) = v726;
                                        if (!v717)
                                        {
                                          v727 = OUTLINED_FUNCTION_10_3(v717, v718, v719, v720, v721, v722, v723, v724, v1357, v1437, v1517, v1597, v1678, v1759);
                                          v728 = 472;
                                          v29 = 4294954584;
                                          while (*(a6 + v728) != v727)
                                          {
                                            v728 += 4;
                                            if (v728 == 500)
                                            {
                                              return v29;
                                            }
                                          }

                                          v1271 = *(v13 + 328 * v727 + 3432);
                                          if (!v1271)
                                          {
                                            return 4294954584;
                                          }

                                          uleb128 = memcpy(a6, v1271, 0xE0uLL);
                                          *a6 = v407;
                                          goto LABEL_542;
                                        }
                                      }

                                      else
                                      {
                                        *(a6 + 228) = 1;
                                      }

                                      *a6 = v407;
                                      v786 = OUTLINED_FUNCTION_14_1(v717, v718, v719, v720, v721, v722, v723, v724, v1357, v1437, v1517, v1597, v1678, v1759);
                                      *(a6 + 4) = v786;
                                      if (v786 > 14)
                                      {
                                        return 4294954584;
                                      }

                                      v794 = v786;
                                      if (v786 >= 1)
                                      {
                                        v795 = 0;
                                        v796 = (a6 + 9);
                                        do
                                        {
                                          v797 = OUTLINED_FUNCTION_11_2(v786, v787, v788, v789, v790, v791, v792, v793, v1391, v1471, v1551, v1632, v1712, v1792);
                                          *(v796 - 1) = v797;
                                          if (v795)
                                          {
                                            if (*(v796 - 3) >= v797)
                                            {
                                              return 4294954584;
                                            }
                                          }

                                          v786 = OUTLINED_FUNCTION_11_2(v797, v798, v799, v800, v801, v802, v803, v804, v1392, v1472, v1552, v1633, v1713, v1793);
                                          *v796 = v786;
                                          v796 += 2;
                                        }

                                        while (v794 != ++v795);
                                      }

                                      if (v2132[271])
                                      {
                                        *(a6 + 36) = 0;
                                        v1863 = a6 + 36;
                                      }

                                      else
                                      {
                                        v786 = OUTLINED_FUNCTION_3_8(&v2168);
                                        *(a6 + 36) = v1201;
                                        v1863 = a6 + 36;
                                        if (!v786 && (v2132[270] != 1 || v794 || v2132[269] != 1))
                                        {
                                          v1302 = 0;
                                          v1303 = 1;
                                          while (1)
                                          {
                                            v1304 = v1303;
                                            v786 = OUTLINED_FUNCTION_14_1(v786, v787, v788, v789, v790, v791, v792, v793, v1391, v1471, v1551, v1632, v1712, v1792);
                                            *(a6 + 40 + 4 * v1302) = v786;
                                            if (v786 > 10)
                                            {
                                              return 4294954584;
                                            }

                                            if (v786 >= 1)
                                            {
                                              break;
                                            }

LABEL_797:
                                            v1303 = 0;
                                            v1302 = 1;
                                            if ((v1304 & 1) == 0)
                                            {
                                              v714 = v2132;
                                              goto LABEL_721;
                                            }
                                          }

                                          v1305 = 0;
                                          v1306 = v786;
                                          v1307 = (a6 + 49 + 20 * v1302);
                                          while (1)
                                          {
                                            v1308 = OUTLINED_FUNCTION_11_2(v786, v787, v788, v789, v790, v791, v792, v793, v1391, v1471, v1551, v1632, v1712, v1792);
                                            *(v1307 - 1) = v1308;
                                            if (v1305)
                                            {
                                              if (*(v1307 - 3) >= v1308)
                                              {
                                                return 4294954584;
                                              }
                                            }

                                            v786 = OUTLINED_FUNCTION_11_2(v1308, v1309, v1310, v1311, v1312, v1313, v1314, v1315, v1431, v1511, v1591, v1672, v1752, v1832);
                                            *v1307 = v786;
                                            v1307 += 2;
                                            if (++v1305 >= v1306)
                                            {
                                              goto LABEL_797;
                                            }
                                          }
                                        }
                                      }

                                      *(a6 + 40) = 0;
LABEL_721:
                                      if (v714[269] == 1 && v714[270] == 1 && (*(a6 + 40) != 0) == (*(a6 + 44) == 0))
                                      {
                                        return 4294954584;
                                      }

                                      v1202 = OUTLINED_FUNCTION_8_4(v786, v787, v788, v789, v790, v791, v792, v793, v1391, v1471, v1551, v1632, v1712, v1792);
                                      *(a6 + 88) = v1202 + 8;
                                      v1210 = OUTLINED_FUNCTION_8_4(v1202, v1203, v1204, v1205, v1206, v1207, v1208, v1209, v1424, v1504, v1584, v1665, v1745, v1825);
                                      *(a6 + 92) = v1210;
                                      v1218 = v1210 + v1210 * v1210;
                                      v1219 = 2 * v1218;
                                      if (v794 && v1219 >= 1)
                                      {
                                        v1220 = (a6 + 96);
                                        v1221 = (2 * v1218);
                                        do
                                        {
                                          v1210 = OUTLINED_FUNCTION_11_2(v1210, v1211, v1212, v1213, v1214, v1215, v1216, v1217, v1425, v1505, v1585, v1666, v1746, v1826);
                                          *v1220++ = v1210 ^ 0x80;
                                          --v1221;
                                        }

                                        while (v1221);
                                      }

                                      v1222 = 0;
                                      v1223 = a6 + 40;
                                      v1224 = a6 + 120;
                                      v1225 = 1;
                                      do
                                      {
                                        v1226 = v1225;
                                        if (*(v1223 + 4 * v1222) || (OUTLINED_FUNCTION_24_0(), v1227))
                                        {
                                          v1228 = *(a6 + 4);
                                          if (v1228)
                                          {
                                            v1229 = (v1219 + 1);
                                          }

                                          else
                                          {
                                            v1229 = v1219;
                                          }

                                          if (v1229 >= 1)
                                          {
                                            v1230 = (v1224 + 28 * v1222);
                                            v1231 = v1229;
                                            do
                                            {
                                              v1210 = OUTLINED_FUNCTION_11_2(v1210, v1211, v1212, v1213, v1214, v1215, v1216, v1217, v1425, v1505, v1585, v1666, v1746, v1826);
                                              *v1230++ = v1210 ^ 0x80;
                                              --v1231;
                                            }

                                            while (v1231);
                                          }

                                          if (!v1228)
                                          {
                                            *(v1224 + 28 * v1222 + v1229) = 0;
                                          }
                                        }

                                        v1225 = 0;
                                        v1222 = 1;
                                      }

                                      while ((v1226 & 1) != 0);
                                      v1232 = OUTLINED_FUNCTION_8_4(v1210, v1211, v1212, v1213, v1214, v1215, v1216, v1217, v1425, v1505, v1585, v1666, v1746, v1826);
                                      *(a6 + 176) = (v1232 + 6);
                                      v1240 = OUTLINED_FUNCTION_8_4(v1232, v1233, v1234, v1235, v1236, v1237, v1238, v1239, v1426, v1506, v1586, v1667, v1747, v1827);
                                      v1248 = 0;
                                      *(a6 + 184) = v1240;
                                      v1249 = 1;
                                      v13 = v1828;
                                      v92 = v2051;
                                      do
                                      {
                                        v1250 = v1249;
                                        if (*(v1223 + 4 * v1248))
                                        {
                                          v1251 = OUTLINED_FUNCTION_11_2(v1240, v1241, v1242, v1243, v1244, v1245, v1246, v1247, v1427, v1507, v1587, v1668, v1748, v1828);
                                          *(a6 + 188 + 4 * v1248) = v1251 - 128;
                                          *(a6 + 196 + 4 * v1248) = OUTLINED_FUNCTION_11_2(v1251, v1252, v1253, v1254, v1255, v1256, v1257, v1258, v1428, v1508, v1588, v1669, v1749, v1829) - 128;
                                          v1240 = av1_get_bits(&v2168, 9u);
                                          *(a6 + 204 + 4 * v1248) = v1240 - 256;
                                        }

                                        v1249 = 0;
                                        v1248 = 1;
                                      }

                                      while ((v1250 & 1) != 0);
                                      v1259 = OUTLINED_FUNCTION_5_7(v1240, v1241, v1242, v1243, v1244, v1245, v1246, v1247, v1427, v1507, v1587, v1668, v1748, v1828, v1863, v1885, v1926, v1967, v2009, v2051, v2091, v2132, v2168);
                                      v1261 = av1_get_bits(v1259, v1260);
                                      *(a6 + 212) = v1261;
                                      v1269 = OUTLINED_FUNCTION_5_7(v1261, v1262, v1263, v1264, v1265, v1266, v1267, v1268, v1429, v1509, v1589, v1670, v1750, v1830, v1879, v1921, v1962, v2003, v2045, v2085, v2127, v2166, v2168);
                                      uleb128 = av1_get_bits(v1269, v1270);
                                      *(a6 + 216) = uleb128;
                                      v71 = HIDWORD(v1885);
LABEL_542:
                                      *(v13 + 3328) = a6;
                                      *(a6 + 252) = v71;
                                      *(a6 + 256) = HIDWORD(v2009);
                                      *(v92 + 12) = 0;
                                      *(v92 + 16) = 0;
                                      if (HIDWORD(v2091) != 6)
                                      {
                                        v729 = OUTLINED_FUNCTION_5_7(uleb128, v63, v155, v65, v66, v67, v68, v69, v1357, v1437, v1517, v1597, v1678, v1759, v1837, v1885, v1926, v1967, v2009, v2051, v2091, v2132, v2168);
                                        av1_get_bits(v729, v730);
                                        v29 = check_for_overrun(&v2168, v1885, v1753);
                                        if (v29)
                                        {
                                          return v29;
                                        }

                                        v91 = 0;
                                        LODWORD(v87) = v1753;
LABEL_547:
                                        v88 = v1885;
LABEL_829:
                                        if (!*(v13 + 3312))
                                        {
                                          goto LABEL_838;
                                        }

                                        v1337 = *(v13 + 3328);
                                        if (!v1337)
                                        {
                                          goto LABEL_838;
                                        }

                                        if (!v1337[65])
                                        {
                                          if (*(v2051 + 16) != v1337[139] * v1337[135])
                                          {
                                            goto LABEL_838;
                                          }

                                          if (!*(v2051 + 12))
                                          {
                                            v91 |= 0x40000000u;
                                            goto LABEL_838;
                                          }

                                          if (a9 == 1)
                                          {
                                            v1338 = v88;
                                            dav1d_submit_frame(v13);
                                            v88 = v1338;
                                          }
                                        }

                                        *(v13 + 3328) = 0;
LABEL_838:
                                        if (*(&v2169 + 1) && !v29)
                                        {
                                          if (a10)
                                          {
                                            *a10 = v87 + (v88 >> 3);
                                          }

                                          v29 = 0;
                                          if (a11)
                                          {
                                            *a11 |= v91;
                                          }
                                        }

                                        return v29;
                                      }

                                      if (*(a6 + 260))
                                      {
                                        v91 = 0;
                                        v29 = 0;
                                        *(v13 + 3328) = 0;
                                        LODWORD(v87) = HIDWORD(v1678);
                                        v88 = v1885;
                                        goto LABEL_838;
                                      }

                                      v731 = v2169;
                                      LODWORD(v2169) = 0;
                                      *(&v2168 + 1) = 0;
                                      v87 = HIDWORD(v1678);
                                      v88 = v1885;
                                      if (v731 <= 7)
                                      {
                                        LOBYTE(v15) = BYTE4(v1437);
                                        LODWORD(v89) = v1517;
                                        if (*(a6 + 556) * *(a6 + 540))
                                        {
                                          v91 = 4;
LABEL_551:
                                          if ((v15 & 4) == 0)
                                          {
LABEL_552:
                                            v29 = 0;
                                            goto LABEL_829;
                                          }

                                          v732 = *(v13 + 3328);
                                          if (v732)
                                          {
                                            v733 = *(v2051 + 12);
                                            if (v733)
                                            {
                                              v734 = v88;
                                            }

                                            else
                                            {
                                              v734 = v88;
                                              if (*(v2051 + 8) < 1)
                                              {
                                                uleb128 = malloc_type_realloc(*v2051, 0x48uLL, 0x1070040C633F987uLL);
                                                if (!uleb128)
                                                {
                                                  return 4294954584;
                                                }

                                                *v2051 = uleb128;
                                                v737 = uleb128 + 72 * *(v2051 + 12);
                                                *(v737 + 64) = 0;
                                                *(v737 + 32) = 0u;
                                                *(v737 + 48) = 0u;
                                                *v737 = 0u;
                                                *(v737 + 16) = 0u;
                                                v733 = *(v2051 + 12);
                                                *(v2051 + 8) = v733 + 1;
                                                v732 = *(v13 + 3328);
                                                if (!v732)
                                                {
                                                  return 4294954584;
                                                }
                                              }

                                              else
                                              {
                                                v733 = 0;
                                              }
                                            }

                                            v738 = v732[139] * v732[135];
                                            v739 = v738 - 1;
                                            if (v738 > 1 && (v740 = OUTLINED_FUNCTION_5_7(uleb128, v63, v87, v65, v66, v67, v68, v69, v1357, v1437, v1517, v1597, v1678, v1759, v1837, v1885, v1926, v1967, v2009, v2051, v2091, v2132, v2168), v742 = v741, LODWORD(v87) = v741, av1_get_bits(v740, v743)))
                                            {
                                              v744 = v732[134];
                                              v745 = v732[138];
                                              v746 = av1_get_bits(&v2168, v745 + v744);
                                              v747 = *v2051;
                                              v748 = v733;
                                              v749 = *v2051 + 72 * v733;
                                              *(v749 + 64) = v746;
                                              LODWORD(v87) = v742;
                                              *(v749 + 68) = av1_get_bits(&v2168, v745 + v744);
                                            }

                                            else
                                            {
                                              v747 = *v2051;
                                              v748 = v733;
                                              v750 = *v2051 + 72 * v733;
                                              *(v750 + 64) = 0;
                                              *(v750 + 68) = v739;
                                            }

                                            v751 = &v747[72 * v748];
                                            v752 = *(v751 + 16);
                                            if (v752 > *(v751 + 17) || v752 != *(v2051 + 16))
                                            {
                                              *(v2051 + 12) = 0;
                                              *(v2051 + 16) = 0;
                                            }

                                            v753 = v2169;
                                            LODWORD(v2169) = 0;
                                            *(&v2168 + 1) = 0;
                                            if (v753 <= 7)
                                            {
                                              v219 = check_for_overrun(&v2168, v734, v87);
                                              if (v219)
                                              {
                                                return v219;
                                              }

                                              v754 = 8 * (DWORD2(v2169) - v2170) - v2169;
                                              if (v89 + v87 < v754 >> 3)
                                              {
                                                fig_log_get_emitter("com.apple.coremedia", "");
                                                OUTLINED_FUNCTION_1_20();
                                                v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1322, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xBC5, v1323, v1324, v1325);
                                                v88 = v734;
                                                goto LABEL_838;
                                              }

                                              v755 = *v2051;
                                              v756 = *(v2051 + 12);
                                              v757 = v756.i32[0];
                                              v758 = *v2051 + 72 * v756.i32[0];
                                              v759 = v754 >> 3;
                                              v760 = *(v758 + 68) - *(v758 + 64) + 1;
                                              *v758 = *(&v2169 + 1);
                                              *(v758 + 8) = v89 + v87 - v759;
                                              v761.i32[0] = 1;
                                              v761.i32[1] = v760;
                                              v762 = vadd_s32(v761, v756);
                                              *(v2051 + 12) = v762;
                                              if (v757 < 0)
                                              {
LABEL_597:
                                                v29 = 0;
                                                v91 |= 8u;
                                                v88 = v734;
                                                goto LABEL_829;
                                              }

                                              v763 = 0;
                                              v764 = v2051 + 536;
                                              v765 = v759 + v1967;
                                              v766 = v2051 + 24;
                                              while (1)
                                              {
                                                v767 = &v755[9 * v763];
                                                v768 = *(v767 + 16);
                                                v769 = *(v767 + 17);
                                                if (v768 <= v769)
                                                {
                                                  break;
                                                }

LABEL_596:
                                                if (++v763 == v762.u32[0])
                                                {
                                                  goto LABEL_597;
                                                }
                                              }

                                              v771 = *v767;
                                              v770 = v755[9 * v763 + 1];
                                              while (1)
                                              {
                                                v772 = 8 * v768;
                                                if (v768 == v769)
                                                {
                                                  *(v764 + 8 * v769) = v770;
                                                  v771 += v770;
                                                  if (v768 < 1)
                                                  {
                                                    v770 = 0;
                                                    v775 = *(v13 + 3328);
LABEL_594:
                                                    v785 = (v765 + *(v775 + 524));
                                                    goto LABEL_595;
                                                  }

                                                  v770 = 0;
                                                  v773 = 0;
                                                  v774 = *(v764 + v772 - 8) + *(v766 + v772 - 8);
                                                }

                                                else
                                                {
                                                  v775 = *(v13 + 3328);
                                                  v776 = *(v775 + 524);
                                                  v777 = v770 >= v776;
                                                  v778 = v770 - v776;
                                                  if (!v777)
                                                  {
                                                    return 4294954584;
                                                  }

                                                  if (v776)
                                                  {
                                                    v779 = 0;
                                                    v780 = 0;
                                                    v781 = (v776 - 1);
                                                    v782 = v771;
                                                    do
                                                    {
                                                      v783 = *v782++;
                                                      v780 |= (v783 << v779);
                                                      v779 += 8;
                                                      LODWORD(v776) = v776 - 1;
                                                    }

                                                    while (v776);
                                                    v771 += v781 + 1;
                                                    v784 = v780 + 1;
                                                  }

                                                  else
                                                  {
                                                    v784 = 1;
                                                  }

                                                  v777 = v778 >= v784;
                                                  v770 = v778 - v784;
                                                  if (!v777)
                                                  {
                                                    return 4294954584;
                                                  }

                                                  *(v764 + 8 * v768) = v784;
                                                  v771 += v784;
                                                  if (v768 <= 0)
                                                  {
                                                    goto LABEL_594;
                                                  }

                                                  v774 = *(v764 + v772 - 8) + *(v766 + v772 - 8);
                                                  v773 = *(v775 + 524);
                                                }

                                                v785 = v774 + v773;
LABEL_595:
                                                *(v766 + 8 * v768++) = v785;
                                                if (v769 + 1 == v768)
                                                {
                                                  goto LABEL_596;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }

                                      return 4294954584;
                                    }
                                  }

                                  else
                                  {
                                    *(a6 + 224) = 0;
                                    v13 = v1759;
                                  }

                                  bzero(a6, 0xE0uLL);
                                  goto LABEL_542;
                                }

                                *(a6 + 1384) = 8;
LABEL_455:
                                v71 = HIDWORD(v1897);
                                goto LABEL_456;
                              }

LABEL_454:
                              *(a6 + 1372) = 0;
                              *(a6 + 1376) = 0;
                              goto LABEL_455;
                            }

                            v856 = (a6 + 1340);
                            v407 = (1 << v652);
                            do
                            {
                              v652 = OUTLINED_FUNCTION_19_1(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781);
                              *(v856 - 8) = v652;
                              if (!v662[271])
                              {
                                v652 = OUTLINED_FUNCTION_19_1(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781);
                                *v856 = v652;
                              }

                              ++v856;
                              --v407;
                            }

                            while (v407);
LABEL_450:
                            if (v661 && !*(a6 + 456))
                            {
                              goto LABEL_454;
                            }

                            goto LABEL_452;
                          }

LABEL_449:
                          *(a6 + 1304) = 0;
                          *(a6 + 1340) = 0;
                          goto LABEL_450;
                        }

                        v841 = 8;
                        do
                        {
                          v842 = OUTLINED_FUNCTION_5_7(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                          v652 = av1_get_bits(v842, v843);
                          if (v652)
                          {
                            v652 = OUTLINED_FUNCTION_13_2(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781);
                          }

                          --v841;
                        }

                        while (v841);
                        v844 = 1;
                        do
                        {
                          v845 = v844;
                          v846 = OUTLINED_FUNCTION_5_7(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
                          v652 = av1_get_bits(v846, v847);
                          if (v652)
                          {
                            v652 = OUTLINED_FUNCTION_13_2(v652, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781);
                          }

                          v844 = 0;
                        }

                        while ((v845 & 1) != 0);
                      }

                      if (v661)
                      {
                        goto LABEL_449;
                      }

                      goto LABEL_447;
                    }

LABEL_427:
                    *(a6 + 1216) = 0;
                    goto LABEL_428;
                  }

LABEL_426:
                  *(a6 + 1212) = 0;
                  goto LABEL_427;
                }

LABEL_425:
                *(a6 + 1208) = 0;
                v639 = v1781;
                goto LABEL_426;
              }
            }

            v556 = 0;
            *(a6 + 1136) = 0xFFFFFFFF00000000;
            v557 = (a6 + 908);
            do
            {
              v558 = OUTLINED_FUNCTION_5_7(v532, v533, v534, v535, v536, v537, v538, v539, v1380, v1460, v1540, v1621, v1701, v1781, v1853, v1897, v1938, v1979, v2021, v2061, v2103, v2142, v2168);
              v560 = av1_get_bits(v558, v559);
              if (v560)
              {
                v560 = av1_get_bits(&v2168, 9u);
                v568 = (v560 << 23) >> 23;
                *(a6 + 1140) = v556;
              }

              else
              {
                v568 = 0;
              }

              *(v557 - 7) = v568;
              v569 = OUTLINED_FUNCTION_5_7(v560, v561, v562, v563, v564, v565, v566, v567, v1382, v1462, v1542, v1623, v1703, v1783, v1855, v1899, v1940, v1981, v2023, v2063, v2105, v2144, v2168);
              v571 = av1_get_bits(v569, v570);
              if (v571)
              {
                v571 = OUTLINED_FUNCTION_7_5(&v2168);
                *(a6 + 1140) = v556;
              }

              else
              {
                v579 = 0;
              }

              *(v557 - 6) = v579;
              v580 = OUTLINED_FUNCTION_5_7(v571, v572, v573, v574, v575, v576, v577, v578, v1383, v1463, v1543, v1624, v1704, v1784, v1856, v1900, v1941, v1982, v2024, v2064, v2106, v2145, v2168);
              v582 = av1_get_bits(v580, v581);
              if (v582)
              {
                v582 = OUTLINED_FUNCTION_7_5(&v2168);
                *(a6 + 1140) = v556;
              }

              else
              {
                v590 = 0;
              }

              *(v557 - 5) = v590;
              v591 = OUTLINED_FUNCTION_5_7(v582, v583, v584, v585, v586, v587, v588, v589, v1384, v1464, v1544, v1625, v1705, v1785, v1857, v1901, v1942, v1983, v2025, v2065, v2107, v2146, v2168);
              v593 = av1_get_bits(v591, v592);
              if (v593)
              {
                v593 = OUTLINED_FUNCTION_7_5(&v2168);
                *(a6 + 1140) = v556;
              }

              else
              {
                v601 = 0;
              }

              *(v557 - 4) = v601;
              v602 = OUTLINED_FUNCTION_5_7(v593, v594, v595, v596, v597, v598, v599, v600, v1385, v1465, v1545, v1626, v1706, v1786, v1858, v1902, v1943, v1984, v2026, v2066, v2108, v2147, v2168);
              v604 = av1_get_bits(v602, v603);
              if (v604)
              {
                v604 = OUTLINED_FUNCTION_7_5(&v2168);
                *(a6 + 1140) = v556;
              }

              else
              {
                v612 = 0;
              }

              *(v557 - 3) = v612;
              v613 = OUTLINED_FUNCTION_5_7(v604, v605, v606, v607, v608, v609, v610, v611, v1386, v1466, v1546, v1627, v1707, v1787, v1859, v1903, v1944, v1985, v2027, v2067, v2109, v2148, v2168);
              v615 = av1_get_bits(v613, v614);
              if (v615)
              {
                v623 = OUTLINED_FUNCTION_10_3(v615, v616, v617, v618, v619, v620, v621, v622, v1387, v1467, v1547, v1628, v1708, v1788);
                *(a6 + 1140) = v556;
                *(a6 + 1136) = 1;
              }

              else
              {
                v623 = 0xFFFFFFFFLL;
              }

              *(v557 - 2) = v623;
              v624 = OUTLINED_FUNCTION_5_7(v623, v616, v617, v618, v619, v620, v621, v622, v1387, v1467, v1547, v1628, v1708, v1788, v1860, v1904, v1945, v1986, v2028, v2068, v2110, v2149, v2168);
              v626 = av1_get_bits(v624, v625);
              *(v557 - 1) = v626;
              if (v626)
              {
                *(a6 + 1140) = v556;
                *(a6 + 1136) = 1;
              }

              v634 = OUTLINED_FUNCTION_5_7(v626, v627, v628, v629, v630, v631, v632, v633, v1388, v1468, v1548, v1629, v1709, v1789, v1861, v1905, v1946, v1987, v2029, v2069, v2111, v2150, v2168);
              v532 = av1_get_bits(v634, v635);
              *v557 = v532;
              if (v532)
              {
                *(a6 + 1140) = v556;
                *(a6 + 1136) = 1;
              }

              ++v556;
              v557 += 8;
            }

            while (v556 != 8);
          }

          else
          {
            bzero((a6 + 880), 0x108uLL);
            for (k = 0; k != 256; k += 32)
            {
              *(a6 + 900 + k) = -1;
            }
          }

          if (v451)
          {
            goto LABEL_419;
          }

          goto LABEL_425;
        }

        *(a6 + 464) = 0;
        if (v262 == 3)
        {
          v272 = 255;
        }

        else
        {
          v272 = OUTLINED_FUNCTION_11_2(v254, v255, v256, v257, v258, v259, v260, v261, v1367, v1447, v1527, v1608, v1688, v1768);
        }

        *(a6 + 440) = v272;
        if (v221)
        {
          if (!v243)
          {
            goto LABEL_199;
          }

          v273 = v2135[265];
          v274 = 8;
          do
          {
            v272 = av1_get_bits(&v2168, v273);
            --v274;
          }

          while (v274);
        }

        if (v243)
        {
          v275 = 1;
          v272 = OUTLINED_FUNCTION_3_8(&v2168);
          *(a6 + 468) = v276;
          if (v272)
          {
            v277 = OUTLINED_FUNCTION_10_3(v272, v255, v256, v257, v258, v259, v260, v261, v1367, v1447, v1527, v1608, v1688, v1768);
            v278 = v277;
            v279 = a6 + 472;
            *(a6 + 472) = v277;
            *(a6 + 476) = -1;
            v287 = OUTLINED_FUNCTION_10_3(v277, v280, v281, v282, v283, v284, v285, v286, v1368, v1448, v1528, v1609, v1689, v1769);
            v288 = 0;
            *(a6 + 484) = v287;
            *(a6 + 496) = -1;
            *(a6 + 488) = -1;
            v289 = v2135[265];
            v290 = 1 << (v289 - 1);
            v291 = v237;
            v292 = (v237 + 3440);
            do
            {
              if (!*(v292 - 1))
              {
                return 4294954584;
              }

              if (v289)
              {
                v293 = ((*v292 - v95) & (v290 - 1)) - ((*v292 - v95) & v290);
              }

              else
              {
                v293 = 0;
              }

              *(&v2174 + v288) = v293 + v290;
              v288 += 4;
              v292 += 82;
            }

            while (v288 != 32);
            v294 = 0;
            v2171 = 0u;
            v2172 = 0u;
            v295 = &v2171;
            *(&v2171 + v278) = 1;
            *(&v2171 + v287) = 1;
            v296 = &v2174;
            v297 = -1;
            v298 = v2135;
            do
            {
              v299 = *(v296 + v294);
              if (*(v295 + v294))
              {
                v300 = 1;
              }

              else
              {
                v300 = v299 < v290;
              }

              if (!v300 && v299 >= v297)
              {
                *(a6 + 496) = v294;
              }

              OUTLINED_FUNCTION_25_0();
            }

            while (!v332);
            if (v297 != -1)
            {
              *(&v2171 + v302) = 1;
            }

            OUTLINED_FUNCTION_17_0();
            do
            {
              v308 = *(v306 + 4 * v304);
              if (*(v307 + 4 * v304))
              {
                v309 = 1;
              }

              else
              {
                v309 = v308 < v303;
              }

              if (!v309 && v308 < v305)
              {
                *(a6 + 488) = v304;
              }

              OUTLINED_FUNCTION_25_0();
            }

            while (!v332);
            if (v305 != 0x7FFFFFFF)
            {
              *(&v2171 + v311) = 1;
            }

            OUTLINED_FUNCTION_17_0();
            do
            {
              v317 = *(v315 + 4 * v313);
              if (*(v316 + 4 * v313))
              {
                v318 = 1;
              }

              else
              {
                v318 = v317 < v312;
              }

              if (!v318 && v317 < v314)
              {
                *(a6 + 492) = v313;
              }

              OUTLINED_FUNCTION_25_0();
            }

            while (!v332);
            if (v314 != 0x7FFFFFFF)
            {
              *(&v2171 + v320) = 1;
            }

            for (m = 1; m != 7; ++m)
            {
              v322 = *(v279 + 4 * m);
              if (v322 < 0)
              {
                v323 = 0;
                v324 = -1;
                do
                {
                  v325 = *(&v2174 + v323);
                  if (*(&v2171 + v323))
                  {
                    v326 = 0;
                  }

                  else
                  {
                    v326 = v325 < v312;
                  }

                  if (v326 && v325 >= v324)
                  {
                    *(v279 + 4 * m) = v323;
                    v322 = v323;
                    v324 = v325;
                  }

                  ++v323;
                }

                while (v323 != 8);
                if (v324 != -1)
                {
                  *(&v2171 + v322) = 1;
                }
              }
            }

            do
            {
              OUTLINED_FUNCTION_25_0();
            }

            while (!v332);
            for (n = 0; n != 28; n += 4)
            {
              if ((*(v279 + n) & 0x80000000) != 0)
              {
                *(v279 + n) = v328;
              }
            }

            v275 = 0;
LABEL_201:
            for (ii = 472; ii != 500; ii += 4)
            {
              if (v275)
              {
                v272 = OUTLINED_FUNCTION_10_3(v272, v255, v256, v257, v258, v259, v260, v261, v1367, v1447, v1527, v1608, v1688, v1768);
                *(a6 + ii) = v272;
              }

              if (v298[250])
              {
                v272 = av1_get_bits(&v2168, v298[251]);
                v331 = *(v291 + 3424 + 328 * *(a6 + ii) + 8);
                if (!v331 || *(v331 + 268) != ((*(a6 + 268) + (1 << v298[252]) + ~v272) & ((1 << v298[252]) - 1)))
                {
                  return 4294954584;
                }
              }
            }

            if (v221)
            {
              v332 = 1;
            }

            else
            {
              v332 = v1447 == 0;
            }

            v333 = !v332;
            v334 = read_frame_size(v291, &v2168, a6, v298, v333);
            if (*(a6 + 296))
            {
              v342 = 0;
            }

            else
            {
              v334 = OUTLINED_FUNCTION_4_8(&v2168);
              v342 = !v332;
            }

            *(a6 + 500) = v342;
            v380 = OUTLINED_FUNCTION_5_7(v334, v335, v336, v337, v338, v339, v340, v341, v1367, v1447, v1527, v1608, v1688, v1768, v1843, v1890, v1931, v1972, v2014, v2054, v2096, v2135, v2168);
            v382 = av1_get_bits(v380, v381);
            if (v382)
            {
              v390 = 4;
            }

            else
            {
              v390 = OUTLINED_FUNCTION_8_4(v382, v383, v384, v385, v386, v387, v388, v389, v1371, v1451, v1531, v1612, v1692, v1772);
            }

            *(a6 + 504) = v390;
            v391 = OUTLINED_FUNCTION_5_7(v390, v383, v384, v385, v386, v387, v388, v389, v1371, v1451, v1531, v1612, v1692, v1772, v1846, v1891, v1932, v1973, v2015, v2055, v2097, v2136, v2168);
            frame_size = av1_get_bits(v391, v392);
            *(a6 + 508) = frame_size;
            if (!*(a6 + 284))
            {
              v355 = v298[262];
              if (!v355)
              {
                goto LABEL_254;
              }

              v355 = v298[260];
              if (!v355)
              {
                goto LABEL_254;
              }

              OUTLINED_FUNCTION_18_1();
              if (v472)
              {
                frame_size = OUTLINED_FUNCTION_3_8(&v2168);
                goto LABEL_254;
              }
            }

            v355 = 0;
            goto LABEL_254;
          }

LABEL_200:
          v291 = v237;
          v298 = v2135;
          goto LABEL_201;
        }

LABEL_199:
        *(a6 + 468) = 0;
        v275 = 1;
        goto LABEL_200;
      }

      uleb128 = OUTLINED_FUNCTION_9_4(&v2168, 3u);
      *(a6 + 264) = uleb128;
      if (v2132[242] && !v2132[240])
      {
        uleb128 = av1_get_bits(&v2168, v2132[246]);
        *(a6 + 272) = uleb128;
      }

      if (!v2132[250])
      {
        goto LABEL_542;
      }

      uleb128 = av1_get_bits(&v2168, v2132[252]);
      *(a6 + 268) = uleb128;
      v156 = *(v13 + 328 * a1 + 3432);
      if (v156)
      {
        if (*(v156 + 268) == uleb128)
        {
          goto LABEL_542;
        }
      }

      return v29;
    default:
      v29 = 0;
      v91 = 0x40000000;
      goto LABEL_829;
  }
}